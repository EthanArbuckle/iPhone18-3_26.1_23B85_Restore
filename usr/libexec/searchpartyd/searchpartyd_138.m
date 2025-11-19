uint64_t sub_100E680DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100E5FBBC(v2, v3);
}

uint64_t sub_100E68184()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1001C3380(v2, v3);
}

uint64_t sub_100E68220()
{
  v1 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8);
  v56 = *(v8 + 80);
  v9 = (v7 + v56 + 8) & ~v56;
  v57 = *(v8 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = v0 + v2;
  v12 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v12 - 1) + 48))(v0 + v2, 1, v12))
  {
    goto LABEL_22;
  }

  v53 = v7;
  v54 = v6;
  v55 = (v7 + v56 + 8) & ~v56;
  sub_100016590(*v11, *(v11 + 8));
  v13 = v12[5];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v17 = (v11 + v12[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v16(v17, v14);
        v22 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v23 = *(v17 + v22[12] + 8);

        v24 = *(v17 + v22[16] + 8);

        v25 = *(v17 + v22[20] + 8);

        v26 = v22[28];
        break;
      case 3:
        v16(v17, v14);
        v27 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v28 = *(v17 + v27[12] + 8);

        v29 = *(v17 + v27[16] + 8);

        v26 = v27[20];
        break;
      case 4:
        goto LABEL_10;
      default:
        goto LABEL_15;
    }

    v21 = (v17 + v26 + 8);
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_10:
    v21 = v17 + 1;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v19 = v17[1];

    v20 = v17[3];

    v21 = v17 + 5;
LABEL_14:
    v30 = *v21;
  }

LABEL_15:
  v31 = v12[7];
  if (!(*(v15 + 48))(v11 + v31, 1, v14))
  {
    v16(v11 + v31, v14);
  }

  v32 = v12[8];
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 8))(v11 + v32, v33);
  sub_100016590(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v34 = (v11 + v12[10]);
  v35 = v34[1];
  if (v35 >> 60 != 15)
  {
    sub_100016590(*v34, v35);
  }

  v36 = (v11 + v12[11]);
  v37 = v36[1];
  v9 = v55;
  if (v37 >> 60 != 15)
  {
    sub_100016590(*v36, v37);
  }

  sub_100016590(*(v11 + v12[12]), *(v11 + v12[12] + 8));
  sub_100016590(*(v11 + v12[13]), *(v11 + v12[13] + 8));
  v38 = *(v11 + v12[14] + 8);

  v39 = *(v11 + v12[15] + 8);

  v7 = v53;
  v6 = v54;
LABEL_22:
  v40 = *(v5 + 8);
  v40(v0 + v6, v4);
  v41 = *(v0 + v7);

  v42 = v0 + v9;
  v43 = type metadata accessor for OwnedBeaconGroup(0);
  if (!(*(*(v43 - 1) + 48))(v0 + v9, 1, v43))
  {
    sub_100016590(*v42, *(v42 + 8));
    v44 = v9;
    v45 = v43[6];
    v46 = type metadata accessor for UUID();
    v47 = v42 + v45;
    v9 = v44;
    (*(*(v46 - 8) + 8))(v47, v46);
    v40(v42 + v43[7], v4);
    v48 = *(v42 + v43[9] + 8);

    v49 = *(v42 + v43[10]);
  }

  v50 = (v9 + v57) & 0xFFFFFFFFFFFFFFF8;
  v51 = *(v0 + v50 + 8);

  return _swift_deallocObject(v0, v50 + 16);
}

uint64_t sub_100E6880C(uint64_t a1)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E54140(a1, v4, v5);
}

uint64_t sub_100E68880()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  v8 = (v0 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100E5AF24(v7, v0 + v4, v0 + v6, v9, v10);
}

uint64_t sub_100E68A0C()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v4 + v5) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for AirPodsLEAccessory(0) - 8);
  v8 = (v6 + *(v7 + 80) + 17) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v3 + v8) & ~v3;
  v10 = (v9 + v5) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = v0 + v6;
  v13 = *(v0 + v6);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v0 + v10);
  v17 = swift_task_alloc();
  *(v1 + 16) = v17;
  *v17 = v1;
  v17[1] = sub_100014650;

  return sub_100E54460(v20, v11, v0 + v4, v13, v14, v15, v0 + v8, v0 + v9);
}

uint64_t sub_100E68BC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100E582F8(a1, v9, v10, v11, v12, v1 + v7, v1 + v8);
}

uint64_t sub_100E68D58()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100E57748();
}

uint64_t sub_100E68E04()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100B9ED14(v0);
}

uint64_t sub_100E68E94()
{
  v1 = type metadata accessor for AccessoryPairingAnalytics();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = v1[5];
  if (!(*(v6 + 48))(v0 + v2 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  sub_100016590(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v9 = *(v4 + v1[8] + 8);

  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[12];
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = *(v4 + v1[13] + 8);

  v14 = v1[14];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v4 + v14, v15);

  return _swift_deallocObject(v0, v2 + v17);
}

uint64_t sub_100E690DC()
{
  v2 = *(type metadata accessor for AccessoryPairingAnalytics() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100B9EC58(v4, v0 + v3);
}

void sub_100E691FC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  Transaction.capture()();
  sub_100E5FD24(v2);
}

uint64_t sub_100E692F4()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100E52024(v4, v0 + v3);
}

void sub_100E693D4()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v3 = *(v0 + 16);
  sub_100E533EC(v2, 0, 0);
}

uint64_t sub_100E69470()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100E695E8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return Data.hexString.getter();
}

uint64_t sub_100E695F0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  return Data.hexString.getter();
}

uint64_t sub_100E695F8()
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

uint64_t sub_100E696FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return Data.hexString.getter();
}

uint64_t sub_100E69768()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return Data.hexString.getter();
}

uint64_t sub_100E69770()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return Data.hexString.getter();
}

uint64_t sub_100E69778()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return Data.hexString.getter();
}

uint64_t sub_100E69780()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  return Data.hexString.getter();
}

uint64_t sub_100E69790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_100E697E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return Data.hexString.getter();
}

uint64_t sub_100E697F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return Data.hexString.getter();
}

uint64_t sub_100E69820()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = v2;
  v11 = *(v0 + 96);
  v3 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = v3;
  v8 = v1;
  sub_100E6987C(v0 + 16, v5);
  return String.init<A>(describing:)();
}

uint64_t sub_100E698D8@<X0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 32);
  *a1 = v4;
  return sub_1005C61E8(&v4, &v3);
}

uint64_t sub_100E69928()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return Data.hexString.getter();
}

uint64_t sub_100E69930()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return Data.hexString.getter();
}

uint64_t sub_100E69938()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return Data.hexString.getter();
}

uint64_t sub_100E699E0()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryProductInfo();
  v42 = *(*(v2 - 1) + 64);
  v43 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v3 = v0 + v43;
  v4 = v2[5];
  v5 = type metadata accessor for ServerStatusCode();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v3 + v2[9] + 8);

  v7 = *(v3 + v2[13] + 8);

  v8 = *(v3 + v2[14] + 8);

  v9 = *(v3 + v2[16] + 8);

  v10 = v2[17];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v14 = v2[18];
  if (!v13(v3 + v14, 1, v11))
  {
    (*(v12 + 8))(v3 + v14, v11);
  }

  v15 = *(v3 + v2[19] + 8);

  v16 = (v3 + v2[21]);
  v17 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v41 = v1;
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

    v1 = v41;
  }

  v28 = *(v3 + v2[23]);

  v29 = (v3 + v2[24]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = (v3 + v2[25]);
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    sub_100016590(*v31, v32);
  }

  v33 = *(v12 + 8);
  v33(v3 + v2[26], v11);
  v33(v3 + v2[27], v11);
  v33(v3 + v2[28], v11);
  v33(v3 + v2[29], v11);
  v33(v3 + v2[30], v11);
  v33(v3 + v2[31], v11);
  v34 = *(v3 + v2[32] + 8);

  v35 = *(v3 + v2[33]);

  v36 = *(v3 + v2[34] + 8);

  v37 = *(v3 + v2[35]);

  v33(v3 + v2[38], v11);
  v33(v3 + v2[39], v11);
  v33(v3 + v2[40], v11);
  v33(v3 + v2[41], v11);
  v33(v3 + v2[42], v11);
  v33(v3 + v2[43], v11);
  v38 = *(v3 + v2[47] + 8);

  v39 = *(v3 + v2[48] + 8);

  return _swift_deallocObject(v1, v43 + v42);
}

uint64_t sub_100E69EF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessoryProductInfo() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100E69F64@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_100017D5C(v2, v3);
}

uint64_t sub_100E69F8C()
{
  if (*(v0 + 24) >> 60 == 15)
  {
    return 0;
  }

  v2 = *(v0 + 16);
  return Data.hexString.getter();
}

uint64_t sub_100E69FC8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 56), *(v0 + 64));
  sub_100016590(*(v0 + 72), *(v0 + 80));
  sub_100016590(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100E6A020@<X0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  *a1 = v4;
  return sub_1001022C4(&v4, &v3);
}

uint64_t sub_100E6A05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E6A0C4(void (*a1)(_BYTE *))
{
  sub_100101AA8(v1 + 16, v4);
  v4[41] = 1;
  a1(v4);
  return sub_10000B3A8(v4, &qword_1016BCD38, &qword_1013EAD40);
}

uint64_t sub_100E6A1C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100E4FD64(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100E6A21C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_100E3465C(a1, v4);
  *a2 = result;
  return result;
}

unint64_t sub_100E6A25C()
{
  result = qword_1016BCE30;
  if (!qword_1016BCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE30);
  }

  return result;
}

unint64_t sub_100E6A2B0()
{
  result = qword_1016BCE40;
  if (!qword_1016BCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE40);
  }

  return result;
}

uint64_t sub_100E6A324()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100E2C468(v0);
}

uint64_t sub_100E6A3B4()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100E2C508(v7, v0 + v3, v8, v0 + v6, v9);
}

uint64_t sub_100E6A560()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100E25900(v3, v4, (v0 + v2), v6, v7);
}

uint64_t sub_100E6A5F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100E2876C(v0);
}

uint64_t sub_100E6A684()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v0 + v3);
  v10 = *(v0 + v6);
  v11 = (v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_100E28D68(v0 + v2, v9, v0 + v5, v10, v0 + v8, v12, v13);
}

uint64_t sub_100E6A804()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100E29318(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_100E6A94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E6A9B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E6AA14()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100E29D50(v4, v5, v6, v0 + v3);
}

uint64_t sub_100E6AB00()
{
  v2 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100E28904(v4, v5, v0 + v3);
}

uint64_t sub_100E6ABE4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 + 16);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_100E6ACB0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100E2AFF4(a1, v6, v1 + v5);
}

uint64_t sub_100E6ADA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E6AE0C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = *(v0 + 16);

  sub_1000BB584(*(v0 + 24), *(v0 + 32));
  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v9(v0 + v6 + v5[8], v1);
  v10 = v5[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v0 + v6 + v10, v11);
  v12 = *(v0 + v6 + v5[11] + 8);

  v13 = *(v0 + v6 + v5[12]);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100E6AFC8()
{
  v2 = *(type metadata accessor for MACAddress() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100E24920(v4, v5, v0 + v3);
}

uint64_t sub_100E6B0DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1001C3380(v2, v3);
}

unint64_t sub_100E6B1AC()
{
  result = qword_1016BCE60;
  if (!qword_1016BCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE60);
  }

  return result;
}

unint64_t sub_100E6B200()
{
  result = qword_1016BCE68;
  if (!qword_1016BCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE68);
  }

  return result;
}

unint64_t sub_100E6B388(uint64_t a1)
{
  *(a1 + 8) = sub_100E6B3B8();
  result = sub_10030FE24();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100E6B3B8()
{
  result = qword_1016BCE70;
  if (!qword_1016BCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCE70);
  }

  return result;
}

void sub_100E6B40C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v93 = a2;
  v92 = a1;
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v120 = &v83 - v8;
  v112 = type metadata accessor for URL();
  v115 = *(v112 - 8);
  v9 = *(v115 + 64);
  __chkstk_darwin(v112);
  v103 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v106 = &v83 - v13;
  v122 = type metadata accessor for DirectorySequence();
  v119 = *(v122 - 8);
  v14 = *(v119 + 64);
  __chkstk_darwin(v122);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016B5CA0, &qword_1013D7328);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v104 = &v83 - v22;
  v116 = sub_1000BC4D4(&qword_1016B5CA8, &unk_1013D7330);
  v118 = *(v116 - 8);
  v23 = *(v118 + 64);
  v24 = __chkstk_darwin(v116);
  v108 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v107 = &v83 - v26;
  v27 = sub_1000BC4D4(&qword_1016A7838, &unk_1013EB250);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v83 - v29;
  v31 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v121 = &v83 - v34;
  v35 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v96 = &v83 - v37;
  v95 = type metadata accessor for OwnerSharingCircle();
  v38 = *(v95 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v95);
  v90 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v91 = &v83 - v42;
  sub_1000D2A70(v5, v30, &qword_1016A7838, &unk_1013EB250);
  v43 = *(v32 + 48);
  v97 = v30;
  v89 = v32 + 48;
  v88 = v43;
  v44 = v43(v30, 1, v31);
  v83 = v38;
  if (v44 == 1)
  {
    v94 = _swiftEmptyArrayStorage;
    v45 = v97;
LABEL_3:
    sub_10000B3A8(v45, &qword_1016A7838, &unk_1013EB250);
    v46 = v96;
    (*(v83 + 56))(v96, 1, 1, v95);
LABEL_4:
    sub_10000B3A8(v5, &qword_1016A7830, &unk_1013D69E0);
    sub_10000B3A8(v46, &unk_1016AFA00, &qword_10138C4D0);
    return;
  }

  v117 = (v119 + 48);
  v114 = (v119 + 32);
  v111 = (v115 + 48);
  v101 = (v115 + 32);
  v110 = (v119 + 8);
  v100 = (v115 + 8);
  v99 = (v119 + 56);
  v105 = (v118 + 56);
  v109 = (v118 + 48);
  v86 = (v38 + 56);
  v84 = (v32 + 56);
  v85 = (v38 + 48);
  v94 = _swiftEmptyArrayStorage;
  v47 = &unk_1013D7330;
  v48 = v104;
  v45 = v97;
  v87 = v5;
  v102 = v21;
  v98 = v31;
  while (1)
  {
    v118 = v4;
    v49 = v121;
    sub_1000D2AD8(v45, v121, &qword_1016A7828, &unk_1013D7340);
    v119 = *(v31 + 40);
    v50 = v106;
    sub_1000D2A70(v49 + v119, v106, &qword_1016A5970, &unk_1013B3470);
    v115 = *v117;
    if ((v115)(v50, 1, v122) != 1)
    {
      break;
    }

    v51 = v116;
    v52 = v48;
LABEL_18:
    sub_10000B3A8(v50, &qword_1016A5970, &unk_1013B3470);
    (*v105)(v52, 1, 1, v51);
    v4 = v118;
    v69 = v52;
LABEL_20:
    sub_10000B3A8(v121, &qword_1016A7828, &unk_1013D7340);
    v48 = v69;
    sub_10000B3A8(v69, &qword_1016B5CA0, &qword_1013D7328);
    v5 = v87;
    sub_10000B3A8(v87, &qword_1016A7838, &unk_1013EB250);
    v70 = 1;
    (*v84)(v5, 1, 1, v98);
    v46 = v96;
LABEL_21:
    v71 = v70;
    v72 = v95;
    (*v86)(v46, v71, 1, v95);
    if ((*v85)(v46, 1, v72) == 1)
    {
      goto LABEL_4;
    }

    v73 = v46;
    v74 = v91;
    sub_100E768B0(v73, v91, type metadata accessor for OwnerSharingCircle);
    v75 = v92(v74);
    if (v4)
    {
      sub_100E76918(v74, type metadata accessor for OwnerSharingCircle);
      sub_10000B3A8(v5, &qword_1016A7830, &unk_1013D69E0);

      return;
    }

    if (v75)
    {
      sub_100E768B0(v74, v90, type metadata accessor for OwnerSharingCircle);
      v76 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101123FE4(0, v76[2] + 1, 1);
        v76 = v123;
      }

      v78 = v83;
      v80 = v76[2];
      v79 = v76[3];
      v81 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        sub_101123FE4(v79 > 1, v80 + 1, 1);
        v81 = v80 + 1;
        v76 = v123;
      }

      v76[2] = v81;
      v82 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v94 = v76;
      sub_100E768B0(v90, v76 + v82 + *(v78 + 72) * v80, type metadata accessor for OwnerSharingCircle);
      v48 = v104;
    }

    else
    {
      sub_100E76918(v74, type metadata accessor for OwnerSharingCircle);
    }

    v45 = v97;
    sub_1000D2A70(v5, v97, &qword_1016A7838, &unk_1013EB250);
    v31 = v98;
    if (v88(v45, 1, v98) == 1)
    {
      goto LABEL_3;
    }
  }

  v113 = *v114;
  v52 = v48;
  while (1)
  {
    v53 = v47;
    v113(v16, v50, v122);
    DirectorySequence.next()();
    v54 = v120;
    v55 = v112;
    v56 = v16;
    if ((*v111)(v120, 1, v112) == 1)
    {
      v57 = v122;
      (*v110)(v16, v122);
      sub_10000B3A8(v54, &unk_101696AC0, &qword_101390A60);
      v58 = v121;
      v59 = v119;
      sub_10000B3A8(v121 + v119, &qword_1016A5970, &unk_1013B3470);
      (*v99)(v58 + v59, 1, 1, v57);
      v51 = v116;
      (*v105)(v52, 1, 1, v116);
      v16 = v56;
      goto LABEL_15;
    }

    v60 = v122;
    v61 = v103;
    (*v101)(v103, v54, v55);
    v62 = objc_autoreleasePoolPush();
    v63 = v102;
    v64 = v118;
    sub_1012C44E4(v61, v121, v102);
    v118 = v64;
    if (v64)
    {
      break;
    }

    objc_autoreleasePoolPop(v62);
    (*v110)(v56, v60);
    v52 = v104;
    sub_1000D2AD8(v63, v104, &qword_1016B5CA0, &qword_1013D7328);
    v16 = v56;
    (*v100)(v61, v55);
    v50 = v106;
    v51 = v116;
LABEL_15:
    if ((*v109)(v52, 1, v51) == 1)
    {
      v4 = v118;
      v69 = v52;
      v47 = v53;
      goto LABEL_20;
    }

    v48 = v52;
    v65 = v52;
    v66 = v107;
    v47 = v53;
    sub_1000D2AD8(v65, v107, &qword_1016B5CA8, v53);
    v67 = v66;
    v68 = v108;
    sub_1000D2AD8(v67, v108, &qword_1016B5CA8, v53);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000B3A8(v121, &qword_1016A7828, &unk_1013D7340);
      v46 = v96;
      sub_100E768B0(v68, v96, type metadata accessor for OwnerSharingCircle);
      v70 = 0;
      v4 = v118;
      v5 = v87;
      goto LABEL_21;
    }

    sub_10000B3A8(v68, &qword_1016B5CA8, v53);
    sub_1000D2A70(v121 + v119, v50, &qword_1016A5970, &unk_1013B3470);
    v52 = v48;
    if ((v115)(v50, 1, v122) == 1)
    {
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v62);
  __break(1u);
}

void sub_100E6C1A4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v93 = a2;
  v92 = a1;
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v120 = &v83 - v8;
  v112 = type metadata accessor for URL();
  v115 = *(v112 - 8);
  v9 = *(v115 + 64);
  __chkstk_darwin(v112);
  v103 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v106 = &v83 - v13;
  v122 = type metadata accessor for DirectorySequence();
  v119 = *(v122 - 8);
  v14 = *(v119 + 64);
  __chkstk_darwin(v122);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016B5CB0, &unk_1013D7350);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v104 = &v83 - v22;
  v116 = sub_1000BC4D4(&qword_1016B5CB8, &unk_1013EB240);
  v118 = *(v116 - 8);
  v23 = *(v118 + 64);
  v24 = __chkstk_darwin(v116);
  v108 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v107 = &v83 - v26;
  v27 = sub_1000BC4D4(&qword_1016A5988, &qword_1013B3490);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v83 - v29;
  v31 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v121 = &v83 - v34;
  v35 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v96 = &v83 - v37;
  v95 = type metadata accessor for MemberSharingCircle();
  v38 = *(v95 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v95);
  v90 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v91 = &v83 - v42;
  sub_1000D2A70(v5, v30, &qword_1016A5988, &qword_1013B3490);
  v43 = *(v32 + 48);
  v97 = v30;
  v89 = v32 + 48;
  v88 = v43;
  v44 = v43(v30, 1, v31);
  v83 = v38;
  if (v44 == 1)
  {
    v94 = _swiftEmptyArrayStorage;
    v45 = v97;
LABEL_3:
    sub_10000B3A8(v45, &qword_1016A5988, &qword_1013B3490);
    v46 = v96;
    (*(v83 + 56))(v96, 1, 1, v95);
LABEL_4:
    sub_10000B3A8(v5, &qword_1016A5980, &unk_1013B3480);
    sub_10000B3A8(v46, &unk_101698BC0, &qword_10138C440);
    return;
  }

  v117 = (v119 + 48);
  v114 = (v119 + 32);
  v111 = (v115 + 48);
  v101 = (v115 + 32);
  v110 = (v119 + 8);
  v100 = (v115 + 8);
  v99 = (v119 + 56);
  v105 = (v118 + 56);
  v109 = (v118 + 48);
  v86 = (v38 + 56);
  v84 = (v32 + 56);
  v85 = (v38 + 48);
  v94 = _swiftEmptyArrayStorage;
  v47 = &unk_1013EB240;
  v48 = v104;
  v45 = v97;
  v87 = v5;
  v102 = v21;
  v98 = v31;
  while (1)
  {
    v118 = v4;
    v49 = v121;
    sub_1000D2AD8(v45, v121, &qword_1016A5978, &qword_101410D20);
    v119 = *(v31 + 40);
    v50 = v106;
    sub_1000D2A70(v49 + v119, v106, &qword_1016A5970, &unk_1013B3470);
    v115 = *v117;
    if ((v115)(v50, 1, v122) != 1)
    {
      break;
    }

    v51 = v116;
    v52 = v48;
LABEL_18:
    sub_10000B3A8(v50, &qword_1016A5970, &unk_1013B3470);
    (*v105)(v52, 1, 1, v51);
    v4 = v118;
    v69 = v52;
LABEL_20:
    sub_10000B3A8(v121, &qword_1016A5978, &qword_101410D20);
    v48 = v69;
    sub_10000B3A8(v69, &qword_1016B5CB0, &unk_1013D7350);
    v5 = v87;
    sub_10000B3A8(v87, &qword_1016A5988, &qword_1013B3490);
    v70 = 1;
    (*v84)(v5, 1, 1, v98);
    v46 = v96;
LABEL_21:
    v71 = v70;
    v72 = v95;
    (*v86)(v46, v71, 1, v95);
    if ((*v85)(v46, 1, v72) == 1)
    {
      goto LABEL_4;
    }

    v73 = v46;
    v74 = v91;
    sub_100E768B0(v73, v91, type metadata accessor for MemberSharingCircle);
    v75 = v92(v74);
    if (v4)
    {
      sub_100E76918(v74, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v5, &qword_1016A5980, &unk_1013B3480);

      return;
    }

    if (v75)
    {
      sub_100E768B0(v74, v90, type metadata accessor for MemberSharingCircle);
      v76 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101123FA0(0, v76[2] + 1, 1);
        v76 = v123;
      }

      v78 = v83;
      v80 = v76[2];
      v79 = v76[3];
      v81 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        sub_101123FA0(v79 > 1, v80 + 1, 1);
        v81 = v80 + 1;
        v76 = v123;
      }

      v76[2] = v81;
      v82 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v94 = v76;
      sub_100E768B0(v90, v76 + v82 + *(v78 + 72) * v80, type metadata accessor for MemberSharingCircle);
      v48 = v104;
    }

    else
    {
      sub_100E76918(v74, type metadata accessor for MemberSharingCircle);
    }

    v45 = v97;
    sub_1000D2A70(v5, v97, &qword_1016A5988, &qword_1013B3490);
    v31 = v98;
    if (v88(v45, 1, v98) == 1)
    {
      goto LABEL_3;
    }
  }

  v113 = *v114;
  v52 = v48;
  while (1)
  {
    v53 = v47;
    v113(v16, v50, v122);
    DirectorySequence.next()();
    v54 = v120;
    v55 = v112;
    v56 = v16;
    if ((*v111)(v120, 1, v112) == 1)
    {
      v57 = v122;
      (*v110)(v16, v122);
      sub_10000B3A8(v54, &unk_101696AC0, &qword_101390A60);
      v58 = v121;
      v59 = v119;
      sub_10000B3A8(v121 + v119, &qword_1016A5970, &unk_1013B3470);
      (*v99)(v58 + v59, 1, 1, v57);
      v51 = v116;
      (*v105)(v52, 1, 1, v116);
      v16 = v56;
      goto LABEL_15;
    }

    v60 = v122;
    v61 = v103;
    (*v101)(v103, v54, v55);
    v62 = objc_autoreleasePoolPush();
    v63 = v102;
    v64 = v118;
    sub_1012C4440(v61, v121, v102);
    v118 = v64;
    if (v64)
    {
      break;
    }

    objc_autoreleasePoolPop(v62);
    (*v110)(v56, v60);
    v52 = v104;
    sub_1000D2AD8(v63, v104, &qword_1016B5CB0, &unk_1013D7350);
    v16 = v56;
    (*v100)(v61, v55);
    v50 = v106;
    v51 = v116;
LABEL_15:
    if ((*v109)(v52, 1, v51) == 1)
    {
      v4 = v118;
      v69 = v52;
      v47 = v53;
      goto LABEL_20;
    }

    v48 = v52;
    v65 = v52;
    v66 = v107;
    v47 = v53;
    sub_1000D2AD8(v65, v107, &qword_1016B5CB8, v53);
    v67 = v66;
    v68 = v108;
    sub_1000D2AD8(v67, v108, &qword_1016B5CB8, v53);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000B3A8(v121, &qword_1016A5978, &qword_101410D20);
      v46 = v96;
      sub_100E768B0(v68, v96, type metadata accessor for MemberSharingCircle);
      v70 = 0;
      v4 = v118;
      v5 = v87;
      goto LABEL_21;
    }

    sub_10000B3A8(v68, &qword_1016B5CB8, v53);
    sub_1000D2A70(v121 + v119, v50, &qword_1016A5970, &unk_1013B3470);
    v52 = v48;
    if ((v115)(v50, 1, v122) == 1)
    {
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v62);
  __break(1u);
}

uint64_t sub_100E6CF3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 128) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *a2 = v5;
  return result;
}

uint64_t sub_100E6CFC4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100E6CFE4, v1, 0);
}

uint64_t sub_100E6D00C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100E6D104;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100E6D104()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100274F20;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = Database.await(state:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E6D220@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*(a1 + 128) + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v4 = *(v6 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();

  *a2 = v6;
  return result;
}

uint64_t sub_100E6D310@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100AAF7D8();
  *a2 = result;
  return result;
}

uint64_t sub_100E6D33C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100AB035C();
  *a2 = result;
  return result;
}

uint64_t sub_100E6D39C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for StableIdentifier();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = (a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v17 = *(a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  if (v17 >> 60 == 15)
  {
    goto LABEL_22;
  }

  v50 = *(a1 + 128);
  v18 = *v16;
  sub_100017D5C(*v16, v17);
  v19 = Data.hexString.getter();
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v49 = a2;
    v22 = (a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v23 = *(a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
    if (v23 >> 60 != 15)
    {
      v24 = v19;
      v46 = a4;
      v48 = v20;
      v25 = *v22;
      sub_100017D5C(*v22, v23);
      v26 = Data.hexString.getter();
      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v47 = v25;
        v29 = (a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
        v30 = *(a3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
        if (v30 >> 60 != 15)
        {
          v42 = v26;
          v44 = v27;
          v45 = v30;
          v32 = *v29;
          sub_100017D5C(*v29, v30);
          static String.Encoding.utf8.getter();
          v43 = v32;
          v33 = String.init(data:encoding:)();
          if (v34)
          {
            v35 = HIBYTE(v34) & 0xF;
            if ((v34 & 0x2000000000000000) == 0)
            {
              v35 = v33 & 0xFFFFFFFFFFFFLL;
            }

            v36 = v47;
            if (v35)
            {
              v37 = v48;
              *v13 = v24;
              v13[1] = v37;
              v38 = v44;
              v13[2] = v42;
              v13[3] = v38;
              v13[4] = v33;
              v13[5] = v34;
              swift_storeEnumTagMultiPayload();
              sub_10012B4BC(v49, a3, v46, v13, a5);
              sub_100006654(v18, v17);
              sub_100006654(v36, v23);
              sub_100006654(v43, v45);
              return sub_100E76918(v13, type metadata accessor for StableIdentifier);
            }

            sub_100006654(v43, v45);

            v31 = v36;
            goto LABEL_20;
          }

          sub_100006654(v43, v45);
        }

        v31 = v47;
      }

      else
      {

        v31 = v25;
      }

LABEL_20:
      sub_100006654(v31, v23);
    }
  }

  sub_100006654(v18, v17);
LABEL_22:
  v40 = type metadata accessor for OwnedBeaconRecord();
  return (*(*(v40 - 8) + 56))(a5, 1, 1, v40);
}

uint64_t sub_100E6D6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60);
  v13 = *(a1 + 128);
  sub_100B8BFA0(a6, a6 + *(v12 + 48), a2, a3, 0, 0xE000000000000000, a4, a5);
  v14 = *(*(v12 - 8) + 56);

  return v14(a6, 0, 1, v12);
}

uint64_t sub_100E6D7E0()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BA08);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136C7D0, &v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s called", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_1008CE048(0, 0, v5, &unk_1013EB280, v12);

  return sub_10000B3A8(v5, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_100E6DA3C()
{
  v1 = *(*(v0 + 16) + 128);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100E6DB20;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v1, &type metadata for () + 8);
}

uint64_t sub_100E6DB20()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100E6DC1C, 0, 0);
}

uint64_t sub_100E6DC1C()
{
  v14 = v0;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136C7D0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s starting since beacon store is available.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 16);
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136C7D0, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s completed.", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100E6DEC4()
{
  v1 = *(v0 + 16);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100E6DF9C;
  v4 = *(v0 + 16);

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x80000001013EB120, sub_100E767F4, v4, &type metadata for () + 8);
}

uint64_t sub_100E6DF9C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100014748, 0, 0);
}

uint64_t sub_100E6E0B4@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v45 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v5;
  v6 = sub_1000BC4D4(&qword_1016B5540, &qword_1013EB270);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v42 = &v36 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = sub_1000BC4D4(&qword_1016B5548, &unk_1013D6A20);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v41 = (&v36 - v21);
  v22 = *(*(a1 + 128) + 168);
  if (qword_101694568 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v9, qword_10177A918);
  v24 = v10[2];
  v39 = v18;
  v24(v18, v23, v9);
  v24(v16, v18, v9);
  v25 = *(v6 + 40);
  v38 = v25;
  v36 = type metadata accessor for DirectorySequence();
  v26 = *(*(v36 - 8) + 56);
  v37 = v6;
  v27 = &v42[v25];
  v28 = v42;
  v26(v27, 1, 1, v36);
  v24(v28, v16, v9);
  *(v28 + *(v6 + 36)) = v22;
  v24(v40, v16, v9);

  v29 = v43;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v30 = v10[1];
  v30(v16, v9);
  v30(v39, v9);
  v26(v29, 0, 1, v36);
  sub_10062BF70(v29, v28 + v38);
  v31 = *(v44 + 56);
  v32 = v41;
  v33 = v37;
  v31(v41, 1, 1, v37);
  sub_10000B3A8(v32, &qword_1016B5550, &qword_1013D73D0);
  sub_1000D2AD8(v28, v32, &qword_1016B5540, &qword_1013EB270);
  v31(v32, 0, 1, v33);
  v34 = sub_100B35CB8(v32);
  result = sub_10000B3A8(v32, &qword_1016B5548, &unk_1013D6A20);
  *v45 = v34;
  return result;
}

uint64_t sub_100E6E528@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v45 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v5;
  v6 = sub_1000BC4D4(&qword_1016B5558, &unk_1013D6A30);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v42 = &v36 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = sub_1000BC4D4(&qword_1016B5560, &unk_1013D73F0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v41 = (&v36 - v21);
  v22 = *(*(a1 + 128) + 168);
  if (qword_101694F30 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v9, qword_10177C1D0);
  v24 = v10[2];
  v39 = v18;
  v24(v18, v23, v9);
  v24(v16, v18, v9);
  v25 = *(v6 + 40);
  v38 = v25;
  v36 = type metadata accessor for DirectorySequence();
  v26 = *(*(v36 - 8) + 56);
  v37 = v6;
  v27 = &v42[v25];
  v28 = v42;
  v26(v27, 1, 1, v36);
  v24(v28, v16, v9);
  *(v28 + *(v6 + 36)) = v22;
  v24(v40, v16, v9);

  v29 = v43;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v30 = v10[1];
  v30(v16, v9);
  v30(v39, v9);
  v26(v29, 0, 1, v36);
  sub_10062BF70(v29, v28 + v38);
  v31 = *(v44 + 56);
  v32 = v41;
  v33 = v37;
  v31(v41, 1, 1, v37);
  sub_10000B3A8(v32, &qword_1016B5568, &unk_1013D6A40);
  sub_1000D2AD8(v28, v32, &qword_1016B5558, &unk_1013D6A30);
  v31(v32, 0, 1, v33);
  v34 = sub_100B36A6C(v32);
  result = sub_10000B3A8(v32, &qword_1016B5560, &unk_1013D73F0);
  *v45 = v34;
  return result;
}

void *sub_100E6E9EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100AB0A80();
  *a2 = result;
  return result;
}

void *sub_100E6EA18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100AB1A78();
  *a2 = result;
  return result;
}

uint64_t sub_100E6EA44@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v45 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v5;
  v6 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v42 = &v36 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v41 = (&v36 - v21);
  v22 = *(*(a1 + 128) + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v9, qword_10177C0D8);
  v24 = v10[2];
  v39 = v18;
  v24(v18, v23, v9);
  v24(v16, v18, v9);
  v25 = *(v6 + 40);
  v38 = v25;
  v36 = type metadata accessor for DirectorySequence();
  v26 = *(*(v36 - 8) + 56);
  v37 = v6;
  v27 = &v42[v25];
  v28 = v42;
  v26(v27, 1, 1, v36);
  v24(v28, v16, v9);
  *(v28 + *(v6 + 36)) = v22;
  v24(v40, v16, v9);

  v29 = v43;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v30 = v10[1];
  v30(v16, v9);
  v30(v39, v9);
  v26(v29, 0, 1, v36);
  sub_10062BF70(v29, v28 + v38);
  v31 = *(v44 + 56);
  v32 = v41;
  v33 = v37;
  v31(v41, 1, 1, v37);
  sub_10000B3A8(v32, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v28, v32, &qword_1016A7828, &unk_1013D7340);
  v31(v32, 0, 1, v33);
  v34 = sub_100B34BBC(v32);
  result = sub_10000B3A8(v32, &qword_1016A7830, &unk_1013D69E0);
  *v45 = v34;
  return result;
}

uint64_t sub_100E6EEB8@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v45 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v5;
  v6 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v42 = &v36 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v41 = (&v36 - v21);
  v22 = *(*(a1 + 128) + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v9, qword_10177AC60);
  v24 = v10[2];
  v39 = v18;
  v24(v18, v23, v9);
  v24(v16, v18, v9);
  v25 = *(v6 + 40);
  v38 = v25;
  v36 = type metadata accessor for DirectorySequence();
  v26 = *(*(v36 - 8) + 56);
  v37 = v6;
  v27 = &v42[v25];
  v28 = v42;
  v26(v27, 1, 1, v36);
  v24(v28, v16, v9);
  *(v28 + *(v6 + 36)) = v22;
  v24(v40, v16, v9);

  v29 = v43;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v30 = v10[1];
  v30(v16, v9);
  v30(v39, v9);
  v26(v29, 0, 1, v36);
  sub_10062BF70(v29, v28 + v38);
  v31 = *(v44 + 56);
  v32 = v41;
  v33 = v37;
  v31(v41, 1, 1, v37);
  sub_10000B3A8(v32, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v28, v32, &qword_1016A5978, &qword_101410D20);
  v31(v32, 0, 1, v33);
  v34 = sub_100B33E08(v32);
  result = sub_10000B3A8(v32, &qword_1016A5980, &unk_1013B3480);
  *v45 = v34;
  return result;
}

void sub_100E6F32C(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v51 = a3;
  v52 = a2;
  v53 = a4;
  v5 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v41 - v7;
  v8 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v45 = &v41 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v41 - v17;
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  v21 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v48 = &v41 - v23;
  v46 = *(*(a1 + 128) + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000076D4(v11, qword_10177C0D8);
  v25 = v12[2];
  v25(v20, v24, v11);
  v25(v18, v20, v11);
  v26 = *(v8 + 40);
  v44 = v26;
  v27 = type metadata accessor for DirectorySequence();
  v41 = v20;
  v42 = v27;
  v28 = v18;
  v29 = *(*(v27 - 8) + 56);
  v30 = v8;
  v43 = v8;
  v31 = v45;
  v29(&v45[v26], 1, 1, v27);
  v25(v31, v28, v11);
  v32 = v47;
  *(v31 + *(v30 + 36)) = v46;
  v25(v32, v28, v11);

  v33 = v49;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v34 = v12[1];
  v34(v28, v11);
  v34(v41, v11);
  v29(v33, 0, 1, v42);
  sub_10062BF70(v33, v31 + v44);
  v35 = *(v50 + 56);
  v36 = v48;
  v37 = v43;
  v35(v48, 1, 1, v43);
  sub_10000B3A8(v36, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v31, v36, &qword_1016A7828, &unk_1013D7340);
  v38 = (v35)(v36, 0, 1, v37);
  __chkstk_darwin(v38);
  v39 = v52;
  *(&v41 - 2) = v51;
  *(&v41 - 1) = v39;
  sub_100E6B40C(sub_10071F7A0, (&v41 - 4));
  *v53 = v40;
}

uint64_t sub_100E6F814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v49 = a3;
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v46 = &v39 - v6;
  v7 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v45 = &v39 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - v16;
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v20 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v44 = &v39 - v22;
  v23 = *(*(a1 + 128) + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v24 = sub_1000076D4(v10, qword_10177AC60);
  v25 = v11[2];
  v42 = v19;
  v25(v19, v24, v10);
  v25(v17, v19, v10);
  v26 = v17;
  v27 = *(v7 + 40);
  v41 = v27;
  v39 = type metadata accessor for DirectorySequence();
  v28 = *(*(v39 - 8) + 56);
  v40 = v7;
  v29 = &v45[v27];
  v30 = v45;
  v28(v29, 1, 1, v39);
  v25(v30, v26, v10);
  *&v30[*(v7 + 36)] = v23;
  v31 = v30;
  v25(v43, v26, v10);

  v32 = v46;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v33 = v11[1];
  v33(v26, v10);
  v33(v42, v10);
  v28(v32, 0, 1, v39);
  sub_10062BF70(v32, &v30[v41]);
  v34 = *(v47 + 56);
  v35 = v44;
  v36 = v40;
  v34(v44, 1, 1, v40);
  sub_10000B3A8(v35, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v31, v35, &qword_1016A5978, &qword_101410D20);
  v37 = (v34)(v35, 0, 1, v36);
  __chkstk_darwin(v37);
  *(&v39 - 2) = v48;
  sub_1012BC940(sub_100E75AA0, (&v39 - 4), v49);
  return sub_10000B3A8(v35, &qword_1016A5980, &unk_1013B3480);
}

void sub_100E6FCC4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v48 = &v39 - v6;
  v7 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v7);
  v44 = &v39 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - v16;
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v20 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v47 = &v39 - v22;
  v45 = *(*(a1 + 128) + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v10, qword_10177AC60);
  v24 = v11[2];
  v24(v19, v23, v10);
  v24(v17, v19, v10);
  v25 = v17;
  v26 = *(v7 + 40);
  v43 = v26;
  v27 = type metadata accessor for DirectorySequence();
  v40 = v19;
  v41 = v27;
  v28 = *(*(v27 - 8) + 56);
  v29 = v7;
  v42 = v7;
  v30 = v44;
  v28(&v44[v26], 1, 1, v27);
  v24(v30, v25, v10);
  v31 = v46;
  *(v30 + *(v29 + 36)) = v45;
  v24(v31, v25, v10);

  v32 = v48;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v33 = v11[1];
  v33(v25, v10);
  v33(v40, v10);
  v28(v32, 0, 1, v41);
  sub_10062BF70(v32, v30 + v43);
  v34 = *(v49 + 56);
  v35 = v47;
  v36 = v42;
  v34(v47, 1, 1, v42);
  sub_10000B3A8(v35, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v30, v35, &qword_1016A5978, &qword_101410D20);
  v37 = (v34)(v35, 0, 1, v36);
  __chkstk_darwin(v37);
  *(&v39 - 2) = v50;
  sub_100E6C1A4(sub_10062BFE0, (&v39 - 4));
  *v51 = v38;
}

void sub_100E70190(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v51 = a3;
  v50 = a2;
  v52 = a4;
  v5 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v48 = &v40 - v7;
  v8 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v44 = &v40 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v40 - v17;
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  v21 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v47 = &v40 - v23;
  v45 = *(*(a1 + 128) + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000076D4(v11, qword_10177C0D8);
  v25 = v12[2];
  v25(v20, v24, v11);
  v25(v18, v20, v11);
  v26 = *(v8 + 40);
  v43 = v26;
  v27 = type metadata accessor for DirectorySequence();
  v40 = v20;
  v41 = v27;
  v28 = v18;
  v29 = *(*(v27 - 8) + 56);
  v30 = v8;
  v42 = v8;
  v31 = v44;
  v29(&v44[v26], 1, 1, v27);
  v25(v31, v28, v11);
  v32 = v46;
  *(v31 + *(v30 + 36)) = v45;
  v25(v32, v28, v11);

  v33 = v48;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v34 = v12[1];
  v34(v28, v11);
  v34(v40, v11);
  v29(v33, 0, 1, v41);
  sub_10062BF70(v33, v31 + v43);
  v35 = *(v49 + 56);
  v36 = v47;
  v37 = v42;
  v35(v47, 1, 1, v42);
  sub_10000B3A8(v36, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v31, v36, &qword_1016A7828, &unk_1013D7340);
  v38 = (v35)(v36, 0, 1, v37);
  __chkstk_darwin(v38);
  *(&v40 - 2) = v50;
  *(&v40 - 8) = v51 & 1;
  sub_100E6B40C(sub_100B25D9C, (&v40 - 4));
  *v52 = v39;
}

uint64_t sub_100E70638@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v53 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v51 = v43 - v5;
  v6 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v50 = v43 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v48 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v43 - v15;
  __chkstk_darwin(v14);
  v18 = v43 - v17;
  v19 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v49 = v43 - v21;
  v46 = *(*(a1 + 128) + 168);
  if (qword_101694E90 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177C090);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  v22 = v18;
  v47 = v18;
  v23 = v10[2];
  v24 = v16;
  v23(v16, v22, v9);
  v25 = *(v6 + 40);
  v45 = v25;
  v26 = type metadata accessor for DirectorySequence();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v43[1] = v27 + 56;
  v44 = v6;
  v29 = v50;
  v28(&v50[v25], 1, 1, v26);
  v23(v29, v24, v9);
  *(v29 + *(v6 + 36)) = v46;
  v23(v48, v24, v9);

  v30 = v51;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v31 = v10[1];
  v31(v24, v9);
  v31(v47, v9);
  v28(v30, 0, 1, v26);
  sub_10062BF70(v30, v29 + v45);
  v32 = *(v52 + 56);
  v33 = v49;
  v34 = v44;
  v32(v49, 1, 1, v44);
  sub_10000B3A8(v33, &qword_1016B5520, &qword_1013D69F0);
  sub_1000D2AD8(v29, v33, &qword_1016B5510, &unk_1013D73B0);
  v32(v33, 0, 1, v34);
  v35 = sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  sub_1000D2AD8(v33, v38 + *(*v38 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  v39 = sub_100B38FD8((v38 + *(*v38 + class metadata base offset for _SequenceBox + 16)));
  swift_setDeallocating();
  sub_10000B3A8(v38 + *(*v38 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  v40 = *(*v38 + 48);
  v41 = *(*v38 + 52);
  result = swift_deallocClassInstance();
  *v53 = v39;
  return result;
}

uint64_t sub_100E70BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v5 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v53 = v44 - v7;
  v8 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v52 = v44 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v49 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v44 - v17;
  __chkstk_darwin(v16);
  v20 = v44 - v19;
  v21 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v51 = v44 - v23;
  v47 = *(*(a1 + 128) + 168);
  if (qword_101694E90 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177C090);
  UUID.uuidString.getter();
  v50 = a2;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = v20;
  v48 = v20;
  v25 = v12[2];
  v26 = v18;
  v25(v18, v24, v11);
  v27 = *(v8 + 40);
  v46 = v27;
  v28 = type metadata accessor for DirectorySequence();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v44[1] = v29 + 56;
  v45 = v8;
  v31 = v52;
  v30(&v52[v27], 1, 1, v28);
  v25(v31, v26, v11);
  *(v31 + *(v8 + 36)) = v47;
  v25(v49, v26, v11);

  v32 = v53;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v33 = v12[1];
  v33(v26, v11);
  v33(v48, v11);
  v30(v32, 0, 1, v28);
  sub_10062BF70(v32, v31 + v46);
  v34 = *(v54 + 56);
  v35 = v51;
  v36 = v45;
  v34(v51, 1, 1, v45);
  sub_10000B3A8(v35, &qword_1016B5520, &qword_1013D69F0);
  sub_1000D2AD8(v31, v35, &qword_1016B5510, &unk_1013D73B0);
  v34(v35, 0, 1, v36);
  v37 = sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v41 = sub_1000D2AD8(v35, v40 + *(*v40 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  __chkstk_darwin(v41);
  v44[-2] = v50;
  v42 = sub_1005C84F0(sub_100E76818, &v44[-4]);

  *v55 = v42;
  return result;
}

size_t sub_100E7116C@<X0>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v7 = v6[20];
  v8 = v6[24];
  v9 = *(a1 + 128);
  result = sub_100AB4508(a3, a3 + v6[12], a3 + v6[16], a2);
  *(a3 + v7) = result;
  *(a3 + v8) = v11;
  return result;
}

size_t sub_100E711E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v11 = *(a1 + 128);
  result = sub_100AB5A14(a4, a2, a3);
  *(a4 + v9) = result;
  *(a4 + v10) = v13;
  return result;
}

char *sub_100E71264@<X0>(uint64_t a1@<X0>, size_t a2@<X1>, char **a3@<X8>)
{
  v4 = *(a1 + 128);
  result = sub_100AB6CE8(a2);
  *a3 = result;
  return result;
}

void *sub_100E71320@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100025044();
  *a2 = result;
  return result;
}

void *sub_100E7134C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100008CA0();
  *a2 = result;
  return result;
}

char *sub_100E71378@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100030068();
  *a2 = result;
  return result;
}

void *sub_100E713A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100007F54();
  *a2 = result;
  return result;
}

void *sub_100E713F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 128);
  result = sub_100AA56A8(a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E714C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for DirectorySequence();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v42 = *(*(a1 + 128) + 168);
  v19 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v19);
  v43 = _swiftEmptyArrayStorage;
  v44 = _swiftEmptyArrayStorage;
  v20 = [objc_opt_self() defaultManager];
  v38 = v18;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v40 = v12;
  v21 = *(v12 + 48);
  if (v21(v6, 1, v11) != 1)
  {
    v41 = *(v40 + 32);
    v22 = (v40 + 8);
    do
    {
      v41(v16, v6, v11);
      v23 = v21;
      v24 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v16, v42, &v44, &v43);
      v25 = v24;
      v21 = v23;
      objc_autoreleasePoolPop(v25);
      (*v22)(v16, v11);
      DirectorySequence.next()();
    }

    while (v23(v6, 1, v11) != 1);
  }

  (*(v36 + 8))(v10, v37);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v26 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10138BBE0;
  v28 = v44;
  v29 = v44[2];
  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = v29;
  sub_100E76668(&qword_1016B14E0, 255, &type metadata accessor for URL);

  v30 = v38;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v32;
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = sub_100008C00();
  *(v27 + 72) = v31;
  *(v27 + 80) = v33;
  os_log(_:dso:log:_:_:)();

  (*(v40 + 8))(v30, v11);

  *v39 = v28;
  return result;
}

uint64_t sub_100E719EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t, void **, void **, char *)@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v51 = a5;
  v47 = a6;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for DirectorySequence();
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = *(v44 + 64);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v44 - v24;
  v26 = *(*(a1 + 128) + 168);
  if (*a2 != -1)
  {
    swift_once();
  }

  v27 = sub_1000076D4(v18, a3);
  (*(v19 + 16))(v25, v27, v18);
  v53 = _swiftEmptyArrayStorage;
  v54 = _swiftEmptyArrayStorage;
  v28 = [objc_opt_self() defaultManager];
  v46 = v25;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v48 = v19;
  v29 = *(v19 + 48);
  v30 = v29(v13, 1, v18);
  v50 = a4;
  v51 = v17;
  v49 = v26;
  if (v30 != 1)
  {
    v31 = *(v48 + 32);
    v32 = (v48 + 8);
    do
    {
      v31(v23, v13, v18);
      v33 = v29;
      v34 = objc_autoreleasePoolPush();
      v50(v23, v49, &v54, &v53, v52);
      objc_autoreleasePoolPop(v34);
      (*v32)(v23, v18);
      DirectorySequence.next()();
      v29 = v33;
    }

    while (v33(v13, 1, v18) != 1);
  }

  (*(v44 + 8))(v51, v45);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v35 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10138BBE0;
  v37 = v54;
  v38 = v54[2];
  *(v36 + 56) = &type metadata for Int;
  *(v36 + 64) = &protocol witness table for Int;
  *(v36 + 32) = v38;
  sub_100E76668(&qword_1016B14E0, 255, &type metadata accessor for URL);

  v39 = v46;
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v41;
  *(v36 + 96) = &type metadata for String;
  *(v36 + 104) = sub_100008C00();
  *(v36 + 72) = v40;
  *(v36 + 80) = v42;
  os_log(_:dso:log:_:_:)();

  (*(v48 + 8))(v39, v18);

  *v47 = v37;
  return result;
}

uint64_t sub_100E71E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = *(a1 + 128);
  sub_100AC6DA0(a2, &v15 - v8);
  v11 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_10000B3A8(v9, &qword_10169DBD0, &unk_1013D6790);
    v12 = 1;
  }

  else
  {
    sub_100E768B0(v9, a3, type metadata accessor for BeaconStatus);
    v12 = 0;
  }

  v13 = type metadata accessor for BeaconStatus(0);
  return (*(*(v13 - 8) + 56))(a3, v12, 1, v13);
}

uint64_t *sub_100E71FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t **a5@<X8>)
{
  v6 = *(a1 + 128);
  result = sub_100ABE3A4(a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_100E72034(uint64_t a1)
{
  v1 = *(a1 + 128);
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
}

void *sub_100E72100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100AC2088();
  *a2 = result;
  return result;
}

uint64_t sub_100E72298@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v6 = *(*(a1 + 128) + 168);
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for URL();
  v8 = sub_1000076D4(v7, a3);
  v9 = *(v6 + 16);
  __chkstk_darwin(v8);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a4 = v11;
  return result;
}

void *sub_100E72364@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_100AA5C88();
  *a2 = result;
  return result;
}

void *sub_100E72390@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_10002F740();
  *a2 = result;
  return result;
}

void *sub_100E723E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 128);
  result = sub_10002F458(a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E72414(uint64_t a1)
{
  v1 = *(*(a1 + 128) + 168);
  if (qword_101694550 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000076D4(v2, qword_10177A8D0);
  v4 = *(v1 + 16);
  __chkstk_darwin(v3);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100E72518@<X0>(uint64_t a1@<X8>)
{
  sub_1000BC4D4(&qword_1016ACED8, &unk_10140CFA0);
  unsafeFromAsyncTask<A>(_:)();
  sub_1012BC6C4(sub_1008B3F78, v3, a1);
}

uint64_t sub_100E725BC(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 32) = a2;
  *(v6 + 40) = v5;
  *(v6 + 226) = a5;
  *(v6 + 225) = a4;
  *(v6 + 224) = a3;
  *(v6 + 24) = a1;
  v7 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v8 = type metadata accessor for KeyGenerationBeaconInfo();
  *(v6 + 56) = v8;
  v9 = *(v8 - 8);
  *(v6 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  v11 = type metadata accessor for BeaconIdentifier();
  *(v6 + 80) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100E726F4, v5, 0);
}

uint64_t sub_100E726F4()
{
  v1 = *(v0 + 40);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100E727D4;
  v5 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x80000001013EB120, sub_1000D27E4, v5, v4);
}

uint64_t sub_100E727D4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100E728EC, v2, 0);
}

uint64_t sub_100E728EC()
{
  v0[13] = v0[2];
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_100E72984;

  return daemon.getter();
}

uint64_t sub_100E72984(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100E76668(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E76668(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100E72B68;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E72B68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *v2;
  *(*v2 + 136) = a1;

  v6 = *(v3 + 120);
  if (v1)
  {

    v7 = sub_100E72EC8;
  }

  else
  {

    v7 = sub_100E72CB8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100E72CB8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[3];
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = v3[3];
  v6 = v3[4];
  sub_1000035D0(v3, v5);
  v7 = v1 + *(v2 + 20);
  (*(*(*(v6 + 8) + 8) + 32))(v5);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_100E72DB4;
  v9 = v0[17];
  v10 = v0[11];
  v11 = v0[6];

  return sub_10098F404(v11, v10);
}

uint64_t sub_100E72DB4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100E73360;
  }

  else
  {
    v3 = sub_100E730D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E72EC8()
{
  if (qword_101694A18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B538);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconKeyService.", v4, 2u);
  }

  v5 = v0[13];

  v6 = type metadata accessor for Daemon.Error();
  sub_100E76668(&qword_101697368, 255, &type metadata accessor for Daemon.Error);
  swift_allocError();
  *v7 = 0xD000000000000010;
  v7[1] = 0x8000000101351540;
  (*(*(v6 - 8) + 104))(v7, enum case for Daemon.Error.missingService(_:), v6);
  swift_willThrow();

  v8 = v0[11];
  v9 = v0[9];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E730D0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  if ((*(*(v0 + 64) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    goto LABEL_7;
  }

  v3 = *(v0 + 72);
  sub_100E768B0(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = *(v3 + *(v1 + 28));
  sub_100E76918(v3, type metadata accessor for KeyGenerationBeaconInfo);
  if (v4 != 3)
  {
LABEL_7:
    if (*(v0 + 224))
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v18 = sub_100A848EC;
        v12 = swift_task_alloc();
        *(v0 + 176) = v12;
        *v12 = v0;
        v13 = sub_100E735C8;
LABEL_12:
        v12[1] = v13;
        v14 = *(v0 + 104);
        v15 = *(v0 + 225);
        v17 = *(v0 + 24);
        v16 = *(v0 + 32);

        return v18(v17, v16, v15);
      }
    }

    else
    {
    }

    v18 = sub_100A83E64;
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v13 = sub_100E73418;
    goto LABEL_12;
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 104);

  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  sub_100E76918(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v9 = *(v0 + 8);

  return v9(0, 0, 3);
}

uint64_t sub_100E73360()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];

  sub_100E76918(v3, type metadata accessor for BeaconIdentifier);
  v4 = v0[19];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100E73418(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100E73778, 0, 0);
  }

  else
  {
    v9 = *(v6 + 224);
    v10 = swift_task_alloc();
    *(v6 + 192) = v10;
    *v10 = v8;
    v10[1] = sub_100E73830;
    v11 = *(v6 + 104);
    v12 = *(v6 + 226);
    v13 = *(v6 + 24);

    return sub_100731BF4(v13, a1, a2, v9 & 1, v12, 0);
  }
}

uint64_t sub_100E735C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100E73AF8, 0, 0);
  }

  else
  {
    v9 = *(v6 + 224);
    v10 = swift_task_alloc();
    *(v6 + 192) = v10;
    *v10 = v8;
    v10[1] = sub_100E73830;
    v11 = *(v6 + 104);
    v12 = *(v6 + 226);
    v13 = *(v6 + 24);

    return sub_100731BF4(v13, a1, a2, v9 & 1, v12, 0);
  }
}

uint64_t sub_100E73778()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];

  sub_100E76918(v3, type metadata accessor for BeaconIdentifier);
  v4 = v0[21];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100E73830(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 192);
  v10 = *v4;
  *(*v4 + 200) = v3;

  if (v3)
  {
    v11 = sub_100E73A40;
  }

  else
  {
    *(v8 + 227) = a3;
    *(v8 + 208) = a2;
    *(v8 + 216) = a1;
    v11 = sub_100E7396C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100E7396C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);

  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 227);
  sub_100E76918(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v8 = *(v0 + 8);

  return v8(v4, v3, v7);
}

uint64_t sub_100E73A40()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];

  sub_100E76918(v3, type metadata accessor for BeaconIdentifier);
  v4 = v0[25];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100E73AF8()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];

  sub_100E76918(v3, type metadata accessor for BeaconIdentifier);
  v4 = v0[23];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100E73BD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(*(a1 + 128) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  sub_1000BC4D4(a3, a4);
  return QueueSynchronizer.conditionalSync<A>(_:)();
}

uint64_t sub_100E73C44(uint64_t a1)
{
  v1 = *(a1 + 128);
  sub_100030068();

  v2 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  return QueueSynchronizer.conditionalSync<A>(_:)();
}

uint64_t sub_100E73CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = *(sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0) + 48);
  v9 = *(a1 + 128);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v10 = sub_100035730(a2, 0, 0);
  v11 = sub_10003ABC0(&a4[v8], a2, v10, a3 & 1);

  *a4 = v11 & 1;
  return result;
}

uint64_t sub_100E73E24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 128);
  result = sub_100A8B080(a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E73E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 128);
  result = sub_100A8F20C(a2);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_100E73F30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v13 = a1;

  v8 = *(sub_10013CF58(sub_10071EA10, v12, a2) + 16);

  v11[2] = a1;

  v9 = *(sub_10013CEF0(sub_10062BFE0, v11, a3) + 16);

  if (__OFADD__(v8, v9))
  {
    __break(1u);
  }

  else
  {
    *a4 = v8 + v9;
  }

  return result;
}

uint64_t sub_100E73FF0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_100B0E4A8(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100E74048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for DirectorySequence();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v42 = *(*(a1 + 128) + 168);
  v19 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177BF38);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v19);
  v43 = _swiftEmptyArrayStorage;
  v44 = _swiftEmptyArrayStorage;
  v20 = [objc_opt_self() defaultManager];
  v38 = v18;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v40 = v12;
  v21 = *(v12 + 48);
  if (v21(v6, 1, v11) != 1)
  {
    v41 = *(v40 + 32);
    v22 = (v40 + 8);
    do
    {
      v41(v16, v6, v11);
      v23 = v21;
      v24 = objc_autoreleasePoolPush();
      sub_1006011CC(v16, v42, &v44, &v43);
      v25 = v24;
      v21 = v23;
      objc_autoreleasePoolPop(v25);
      (*v22)(v16, v11);
      DirectorySequence.next()();
    }

    while (v23(v6, 1, v11) != 1);
  }

  (*(v36 + 8))(v10, v37);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v26 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10138BBE0;
  v28 = v44;
  v29 = v44[2];
  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = v29;
  sub_100E76668(&qword_1016B14E0, 255, &type metadata accessor for URL);

  v30 = v38;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v32;
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = sub_100008C00();
  *(v27 + 72) = v31;
  *(v27 + 80) = v33;
  os_log(_:dso:log:_:_:)();

  (*(v40 + 8))(v30, v11);

  *v39 = v28;
  return result;
}

void sub_100E74508(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 128);
  sub_100AC26E0(a2);
  *a3 = v5;
}

id sub_100E74538@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 128);
  v5 = a2[3];
  v6 = a2[4];
  v7 = sub_1000035D0(a2, v5);
  result = sub_100B005BC(v7, v4, v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_100E74614@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X8>)
{
  v126 = a2;
  *&v118 = a1;
  v117 = a3;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v110 - v8;
  v10 = type metadata accessor for Date();
  v111 = *(v10 - 8);
  v11 = *(v111 + 64);
  __chkstk_darwin(v10);
  v121 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedDeviceKeyRecord();
  v130 = *(v13 - 8);
  v131 = v13;
  v14 = *(v130 + 64);
  __chkstk_darwin(v13);
  v16 = (&v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v125 = &v110 - v19;
  v20 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v128 = (&v110 - v22);
  v23 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v129 = *(v23 - 8);
  v24 = v129[8];
  __chkstk_darwin(v23);
  v124 = &v110 - v25;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v123 = (&v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __chkstk_darwin(v29);
  v116 = &v110 - v32;
  __chkstk_darwin(v31);
  v34 = &v110 - v33;
  v35 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v127 = &v110 - v37;
  if (qword_101694E50 != -1)
  {
    swift_once();
  }

  v122 = v10;
  v120 = v9;
  v119 = v7;
  v38 = *(qword_10177C010 + 16);

  OS_dispatch_queue.sync<A>(execute:)();
  v110 = 0;

  v39 = v132[3];

  *&v118 = *(*(v118 + 128) + 168);
  if (qword_101695268 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v26, qword_10177C680);
  UUID.uuidString.getter();
  v40 = v34;
  v115 = v34;
  URL.appendingPathComponent(_:isDirectory:)();

  v41 = v27[2];
  v42 = v116;
  v41(v116, v40, v26);
  v43 = *(v23 + 40);
  v126 = v43;
  v112 = type metadata accessor for DirectorySequence();
  v44 = *(v112 - 8);
  v45 = *(v44 + 56);
  v114 = v23;
  v113 = v44 + 56;
  v46 = v124;
  v45(v43 + v124, 1, 1, v112);
  v41(v46, v42, v26);
  *(v46 + *(v23 + 36)) = v118;
  v41(v123, v42, v26);

  v47 = v128;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v48 = v27[1];
  v48(v42, v26);
  v48(v115, v26);
  v45(v47, 0, 1, v112);
  sub_10062BF70(v47, v126 + v46);
  v49 = v129[7];
  v50 = v127;
  v51 = v114;
  v49(v127, 1, 1, v114);
  sub_10000B3A8(v50, &qword_1016A78B8, &unk_1013D6710);
  sub_1000D2AD8(v46, v50, &qword_1016A78A8, &unk_1013D66E0);
  v49(v50, 0, 1, v51);
  v52 = sub_1000BC4D4(&qword_1016A78C0, &qword_1013EB2B0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  sub_1000D2AD8(v50, &v55[*(*v55 + class metadata base offset for _SequenceBox + 16)], &qword_1016A78B0, &unk_1013EB2A0);
  v56 = *(*v55 + class metadata base offset for _SequenceBox + 16);
  v57 = sub_1000BC4D4(&qword_1016A78D8, &unk_1013D6720);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v60 = swift_allocObject();
  v61 = *(*v60 + class metadata base offset for _IteratorBox + 16);
  v116 = v55;
  sub_1000D2A70(&v55[v56], v60 + v61, &qword_1016A78B0, &unk_1013EB2A0);
  v62 = *(*v60 + class metadata base offset for _IteratorBox + 16);
  v129 = v60;
  v127 = v62;
  v63 = v125;
  sub_100AF5B10(v125);
  v64 = *(v130 + 48);
  v130 += 48;
  v126 = v64;
  if (v64(v63, 1, v131) != 1)
  {
    v124 = v111 + 56;
    v128 = (v111 + 48);
    v115 = (v111 + 32);
    v65 = _swiftEmptyArrayStorage;
    v123 = (v111 + 8);
    v118 = xmmword_101385D80;
    v73 = v120;
    v74 = v122;
    v75 = v121;
    while (1)
    {
      sub_100E768B0(v63, v16, type metadata accessor for OwnedDeviceKeyRecord);
      v79 = objc_autoreleasePoolPush();
      v80 = *v16;
      v81 = v16[1];
      v82 = v81 >> 62;
      if ((v81 >> 62) > 1)
      {
        if (v82 != 2 || *(v80 + 16) == *(v80 + 24))
        {
          goto LABEL_26;
        }
      }

      else if (v82)
      {
        if (v80 == v80 >> 32)
        {
          goto LABEL_26;
        }
      }

      else if ((v81 & 0xFF000000000000) == 0)
      {
        goto LABEL_26;
      }

      v83 = objc_autoreleasePoolPush();
      v84 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v80, v81);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v132[0] = 0;
      v86 = [v84 initForReadingFromData:isa error:v132];

      if (!v86)
      {
        break;
      }

      v87 = v132[0];
      sub_100016590(v80, v81);
      [v86 _enableStrictSecureDecodingMode];
      v88 = [objc_allocWithZone(CKRecord) initWithCoder:v86];
      if (!v88)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v99 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

LABEL_25:
        v73 = v120;
        v75 = v121;

        objc_autoreleasePoolPop(v83);
        v74 = v122;
        v63 = v125;
LABEL_26:
        (*v124)(v73, 1, 1, v74);
LABEL_27:
        Date.init()();
        if ((*v128)(v73, 1, v74) != 1)
        {
          sub_10000B3A8(v73, &unk_101696900, &unk_10138B1E0);
        }

        goto LABEL_29;
      }

      v89 = v88;

      objc_autoreleasePoolPop(v83);
      v90 = [v89 creationDate];

      v73 = v120;
      v75 = v121;
      if (v90)
      {
        v91 = v119;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v92 = 0;
      }

      else
      {
        v92 = 1;
        v91 = v119;
      }

      v74 = v122;
      v63 = v125;
      (*v124)(v91, v92, 1, v122);
      sub_1000D2AD8(v91, v73, &unk_101696900, &unk_10138B1E0);
      if ((*v128)(v73, 1, v74) == 1)
      {
        goto LABEL_27;
      }

      (*v115)(v75, v73, v74);
LABEL_29:
      objc_autoreleasePoolPop(v79);
      Date.timeIntervalSinceNow.getter();
      v101 = v100;
      (*v123)(v75, v74);
      if (fabs(v101) < *&v39)
      {
        v102 = *(v131 + 32);
        v103 = (v16 + *(v131 + 28));
        v105 = *v103;
        v104 = v103[1];
        v107 = *(v16 + v102);
        v106 = *(v16 + v102 + 8);
        sub_100017D5C(*v103, v104);
        sub_100017D5C(v107, v106);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_100A5D350(0, v65[2] + 1, 1, v65);
        }

        v109 = v65[2];
        v108 = v65[3];
        if (v109 >= v108 >> 1)
        {
          v65 = sub_100A5D350((v108 > 1), v109 + 1, 1, v65);
        }

        v65[2] = v109 + 1;
        *&v76 = v105;
        *(&v76 + 1) = v104;
        v77 = &v65[4 * v109];
        *&v78 = v107;
        *(&v78 + 1) = v106;
        *(v77 + 2) = v76;
        *(v77 + 3) = v78;
        v74 = v122;
        v75 = v121;
        v63 = v125;
      }

      sub_100E76918(v16, type metadata accessor for OwnedDeviceKeyRecord);
      sub_100AF5B10(v63);
      if (v126(v63, 1, v131) == 1)
      {
        goto LABEL_7;
      }
    }

    v93 = v132[0];
    v94 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v80, v81);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v95 = swift_allocObject();
    *(v95 + 16) = v118;
    v132[0] = v94;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v96 = String.init<A>(describing:)();
    v98 = v97;
    *(v95 + 56) = &type metadata for String;
    *(v95 + 64) = sub_100008C00();
    *(v95 + 32) = v96;
    *(v95 + 40) = v98;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v86 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    goto LABEL_25;
  }

  v65 = _swiftEmptyArrayStorage;
LABEL_7:
  v66 = v116;
  swift_setDeallocating();
  sub_10000B3A8(&v66[*(*v66 + class metadata base offset for _SequenceBox + 16)], &qword_1016A78B0, &unk_1013EB2A0);
  v67 = *(*v66 + 48);
  v68 = *(*v66 + 52);
  swift_deallocClassInstance();
  v69 = v129;
  swift_setDeallocating();
  sub_10000B3A8(v69 + *(*v69 + class metadata base offset for _IteratorBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  v70 = *(*v69 + 48);
  v71 = *(*v69 + 52);
  result = swift_deallocClassInstance();
  *v117 = v65;
  return result;
}

uint64_t sub_100E75644(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100E756EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for BeaconStoreActor();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100E757B0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100E75858(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100E75900(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100E759A8()
{
  v1 = *v0;
  type metadata accessor for BeaconStoreActor();
  sub_100E76668(&qword_101698D20, v2, type metadata accessor for BeaconStoreActor);
  return ActorServiceProtocol.description.getter();
}

void sub_100E75AC0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v48 = a3;
  v49 = a4;
  v6 = type metadata accessor for OwnedBeaconRecord();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v45 = v8;
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SystemInfo.DeviceLockState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v46 = *(a1 + 128);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  v42 = xmmword_101385D80;
  *(v17 + 16) = xmmword_101385D80;
  v18 = *(v6 + 20);
  v19 = type metadata accessor for UUID();
  sub_100E76668(&qword_101696930, 255, &type metadata accessor for UUID);
  v50 = a2;
  v43 = v18;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100008C00();
  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v10 + 104))(v14, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v9);
  sub_100E76668(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v23 = *(v10 + 8);
  v23(v14, v9);
  v23(v16, v9);
  v25 = v48;
  v24 = v49;
  if (v52 == v51)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v26 = 0;
    v25();
  }

  v27 = dispatch_group_create();
  dispatch_group_enter(v27);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v28 = *(v19 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v42;
  v32 = v50;
  (*(v28 + 16))(v31 + v30, v50 + v43, v19);
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  v34 = v27;
  v35 = v46;
  sub_1009C99C0(v31, sub_10040616C, v33);

  OS_dispatch_group.wait()();
  v36 = v47;
  sub_100A51D68(v32, v47);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = (v45 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100E768B0(v36, v39 + v37, type metadata accessor for OwnedBeaconRecord);
  v40 = (v39 + v38);
  *v40 = v25;
  v40[1] = v24;
  v41 = v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v41 = v35;
  *(v41 + 8) = 257;

  sub_100AAA40C(v32, sub_10040AE98, v39);
}

uint64_t sub_100E760A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60);
  v17 = *(a1 + 128);
  return sub_100B8BFA0(a8, a8 + *(v16 + 48), a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100E76144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_10025DCD4(a3, sub_100E76834, v11);
}

uint64_t sub_100E76290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[5] = a3;
  v4[6] = a4;
  v8 = sub_1000280DC(v4 + 2);
  (*(*(a3 - 8) + 16))(v8, a1, a3);

  return _swift_task_switch(sub_100E76344, a2, 0);
}

uint64_t sub_100E76344()
{
  v1 = *(v0 + 104);
  sub_10001F280(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  *(v0 + 112) = v2;
  *(v2 + 16) = v1;
  sub_100031694((v0 + 56), v2 + 24);
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  v5 = sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  *v4 = v0;
  v4[1] = sub_100E76478;

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x80000001013EB120, sub_100E7660C, v2, v5);
}

uint64_t sub_100E76478()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_100E765A4, v3, 0);
}

uint64_t sub_100E765A4()
{
  v1 = v0[12];
  sub_100007BAC(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

id sub_100E7660C@<X0>(void *a1@<X8>)
{
  v3 = *(v1[2] + 128);
  v4 = v1[6];
  v5 = v1[7];
  v6 = sub_1000035D0(v1 + 3, v4);
  result = sub_100B005BC(v6, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t sub_100E76668(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100E766B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100E6DA1C(a1, v4, v5, v6);
}

uint64_t sub_100E76764()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100E6DEA4(v0);
}

uint64_t sub_100E76834(uint64_t a1)
{
  v2 = *(*(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8) + 80);

  return sub_10077C388(a1);
}

uint64_t sub_100E768B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E76918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E76978(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100E76990(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF1 && *(a1 + 8))
  {
    return (*a1 + 2147483633);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 14;
  if (v4 >= 0x10)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100E769EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF1)
  {
    *result = 0;
    *result = a2 - 2147483633;
    if (a3 >= 0x7FFFFFF1)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF1)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 14;
    }
  }

  return result;
}

unint64_t sub_100E76A5C(char a1)
{
  result = 0x4449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6564496C65646F6DLL;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x56746375646F7270;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x65636976726573;
      break;
    case 8:
      result = 0x6C6C61636F4C7369;
      break;
    case 9:
      result = 0x6576697463417369;
      break;
    case 10:
      result = 0x79627261654E7369;
      break;
    case 11:
      result = 0x63656E6E6F437369;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100E76BF0()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  v9 = v0[8];
  v10 = v0[9];
  String.hash(into:)();
  v11 = v0[10];
  v12 = v0[11];
  String.hash(into:)();
  v13 = v0[12];
  v14 = v0[13];
  String.hash(into:)();
  v15 = v0[14];
  v16 = v0[15];
  String.hash(into:)();
  Hasher._combine(_:)(v0[16] & 1);
  Hasher._combine(_:)(*(v0 + 129) & 1);
  Hasher._combine(_:)(*(v0 + 130) & 1);
  Hasher._combine(_:)(*(v0 + 131) & 1);
  v18 = v0[18];
  v17 = v0[19];
  Hasher._combine(_:)(*(v0 + 136));

  return String.hash(into:)();
}

uint64_t sub_100E76CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100E77404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E76D00(uint64_t a1)
{
  v2 = sub_100E77FF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E76D3C(uint64_t a1)
{
  v2 = sub_100E77FF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100E76D78()
{
  Hasher.init(_seed:)();
  sub_100E76BF0();
  return Hasher._finalize()();
}

Swift::Int sub_100E76DBC()
{
  Hasher.init(_seed:)();
  sub_100E76BF0();
  return Hasher._finalize()();
}

double sub_100E76DF8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100E7783C(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

BOOL sub_100E76E54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return sub_100E76F88(v13, v14);
}

uint64_t sub_100E76EDC()
{
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[5];
  v8 = *v0;
  v9 = v0[1];
  v1 = *(v0 + 12);
  v2 = *(v0 + 13);
  v14 = v0[7];
  v15 = v0[8];
  v16 = v0[9];
  v3._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8250;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 60;
}

BOOL sub_100E76F88(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  result = (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)) && (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (*(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && ((*(a1 + 128) ^ *(a2 + 128)) & 1) == 0 && ((*(a1 + 129) ^ *(a2 + 129)) & 1) == 0 && ((*(a1 + 130) ^ *(a2 + 130)) & 1) == 0 && ((*(a1 + 131) ^ *(a2 + 131)) & 1) == 0 && *(a1 + 136) == *(a2 + 136) && (*(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  return result;
}

void sub_100E77148(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uniqueID];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 uniqueIDOverride];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [a1 modelIdentifier];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [a1 productName];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v22;

  v23 = [a1 productVersion];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v26;
  v62 = v25;

  v27 = [a1 productBuildVersion];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v30;
  v60 = v29;

  v31 = [a1 name];
  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = v31;
  v57 = v21;
  v58 = v18;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v34;
  v56 = v33;

  v35 = [a1 service];
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  v52 = v16;
  v53 = v13;
  v54 = v11;
  v37 = v8;
  v38 = v6;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v40;
  v51 = v39;

  v41 = [a1 isLocallyPaired];
  v42 = [a1 isActive];
  v43 = [a1 isNearby];
  v44 = [a1 isConnected];
  v45 = IDSCopyIDForDevice();
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *a2 = v38;
    *(a2 + 8) = v37;
    *(a2 + 16) = v54;
    *(a2 + 24) = v53;
    *(a2 + 32) = v52;
    *(a2 + 40) = v58;
    *(a2 + 48) = v57;
    *(a2 + 56) = v63;
    *(a2 + 64) = v62;
    *(a2 + 72) = v61;
    *(a2 + 80) = v60;
    *(a2 + 88) = v59;
    *(a2 + 96) = v56;
    *(a2 + 104) = v55;
    *(a2 + 112) = v51;
    *(a2 + 120) = v50;
    *(a2 + 128) = v41;
    *(a2 + 129) = v42;
    *(a2 + 130) = v43;
    *(a2 + 131) = v44;
    *(a2 + 136) = 3;
    *(a2 + 144) = v47;
    *(a2 + 152) = v49;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100E77404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001013723F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56746375646F7270 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101372410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6C61636F4C7369 && a2 == 0xEF64657269615079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x79627261654E7369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x63656E6E6F437369 && a2 == 0xEB00000000646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001013669F0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_100E7783C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v78 = sub_1000BC4D4(&qword_1016BD288, &qword_1013EB470);
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v78);
  v8 = &v34 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100E77FF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v10 = v5;
  v54 = a2;
  LOBYTE(v65[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v53 = v12;
  LOBYTE(v65[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v52 = v14;
  v45 = v13;
  LOBYTE(v65[0]) = 2;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  v51 = v15;
  LOBYTE(v65[0]) = 3;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v50 = v16;
  LOBYTE(v65[0]) = 4;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v17;
  LOBYTE(v65[0]) = 5;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v18;
  LOBYTE(v65[0]) = 6;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v19;
  LOBYTE(v65[0]) = 7;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v20;
  LOBYTE(v65[0]) = 8;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v65[0]) = 9;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v65[0]) = 10;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v65[0]) = 11;
  LODWORD(v37) = KeyedDecodingContainer.decode(_:forKey:)();
  v74 = 12;
  sub_100157E1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 &= 1u;
  v36 = v21 & 1;
  v23 = v22 & 1;
  HIDWORD(v34) = v37 & 1;
  (*(v10 + 8))(v8, v78);
  v35 = v75;
  v37 = *(&v76 + 1);
  v78 = v76;
  v24 = v52;
  *&v55 = v11;
  *(&v55 + 1) = v53;
  *&v56 = v45;
  *(&v56 + 1) = v52;
  v26 = v50;
  v25 = v51;
  *&v57 = v44;
  *(&v57 + 1) = v51;
  *&v58 = v43;
  *(&v58 + 1) = v50;
  *&v59 = v42;
  *(&v59 + 1) = v49;
  *&v60 = v41;
  *(&v60 + 1) = v48;
  *&v61 = v40;
  *(&v61 + 1) = v47;
  *&v62 = v39;
  *(&v62 + 1) = v46;
  LOBYTE(v63) = v38;
  BYTE1(v63) = v36;
  BYTE2(v63) = v23;
  LOBYTE(v10) = BYTE4(v34);
  BYTE3(v63) = BYTE4(v34);
  BYTE8(v63) = v75;
  v64 = v76;
  sub_10013CD18(&v55, v65);
  sub_100007BAC(a1);
  v65[0] = v11;
  v65[1] = v53;
  v65[2] = v45;
  v65[3] = v24;
  v65[4] = v44;
  v65[5] = v25;
  v65[6] = v43;
  v65[7] = v26;
  v65[8] = v42;
  v65[9] = v49;
  v65[10] = v41;
  v65[11] = v48;
  v65[12] = v40;
  v65[13] = v47;
  v65[14] = v39;
  v65[15] = v46;
  v66 = v38;
  v67 = v36;
  v68 = v23;
  v69 = v10;
  v70 = v35;
  *v71 = v77[0];
  *&v71[3] = *(v77 + 3);
  v72 = v78;
  v73 = v37;
  result = sub_10013CDDC(v65);
  v28 = v62;
  v29 = v54;
  v54[6] = v61;
  v29[7] = v28;
  v30 = v64;
  v29[8] = v63;
  v29[9] = v30;
  v31 = v58;
  v29[2] = v57;
  v29[3] = v31;
  v32 = v60;
  v29[4] = v59;
  v29[5] = v32;
  v33 = v56;
  *v29 = v55;
  v29[1] = v33;
  return result;
}

unint64_t sub_100E77FF0()
{
  result = qword_1016BD290;
  if (!qword_1016BD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD290);
  }

  return result;
}

unint64_t sub_100E78058()
{
  result = qword_1016BD298;
  if (!qword_1016BD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD298);
  }

  return result;
}

unint64_t sub_100E780B0()
{
  result = qword_1016BD2A0;
  if (!qword_1016BD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD2A0);
  }

  return result;
}

unint64_t sub_100E78108()
{
  result = qword_1016BD2A8;
  if (!qword_1016BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD2A8);
  }

  return result;
}

void sub_100E7815C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v68 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v74 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v75 = &v68 - v16;
  if (CKRecord.recordType.getter() == 0x65646F4D74736F4CLL && v17 == 0xEE0064726F636552)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      sub_100E7A05C();
      swift_allocError();
      *v36 = 0;
      goto LABEL_18;
    }
  }

  v71 = v2;
  v19 = [a1 recordID];
  v20 = [v19 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v21 = v12[6];
  if (v21(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    sub_100E7A05C();
    swift_allocError();
    *v22 = 1;
LABEL_18:
    swift_willThrow();

    return;
  }

  v70 = v12;
  v23 = v11;
  v24 = v12[4];
  v72 = v23;
  v24(v75, v10);
  v25 = [a1 encryptedValues];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 objectForKeyedSubscript:v26];

  if (!v27 || (v78 = v27, v28 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    *(v33 + 56) = sub_100E7A0B0();
    *(v33 + 64) = sub_100E7AB14(&qword_101697F90, sub_100E7A0B0);
    *(v33 + 32) = a1;
    v34 = a1;
    os_log(_:dso:log:_:_:)();

    sub_100E7A05C();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();

    goto LABEL_16;
  }

  v69 = v25;
  UUID.init(uuidString:)();

  v29 = v72;
  if (v21(v8, 1, v72) == 1)
  {
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    *(v30 + 56) = sub_100E7A0B0();
    *(v30 + 64) = sub_100E7AB14(&qword_101697F90, sub_100E7A0B0);
    *(v30 + 32) = a1;
    v31 = a1;
    os_log(_:dso:log:_:_:)();

    sub_100E7A05C();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();

LABEL_16:
    swift_unknownObjectRelease();
    (v70[1])(v75, v72);
    return;
  }

  v68 = v28;
  (v24)(v74, v8, v29);
  v37 = objc_autoreleasePoolPush();
  v38 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v38];
  [v38 finishEncoding];
  v39 = [v38 encodedData];
  v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  objc_autoreleasePoolPop(v37);
  v43 = v73;
  *v73 = v40;
  v43[1] = v42;
  v44 = v43;
  v45 = type metadata accessor for LostModeRecord();
  v46 = v70;
  v47 = v70[2];
  v47(v44 + v45[5], v75, v29);
  v47(v44 + v45[6], v74, v29);
  v48 = String._bridgeToObjectiveC()();
  v49 = [v69 objectForKeyedSubscript:v48];

  if (v49)
  {
    v78 = v49;
    v50 = swift_dynamicCast();
    v51 = v76;
    v52 = v77;
    if (!v50)
    {
      v51 = 0;
      v52 = 0;
    }
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v53 = (v44 + v45[7]);
  *v53 = v51;
  v53[1] = v52;
  v54 = String._bridgeToObjectiveC()();
  v55 = v69;
  v56 = [v69 objectForKeyedSubscript:v54];

  if (v56)
  {
    v78 = v56;
    v57 = swift_dynamicCast();
    v58 = v76;
    v59 = v77;
    if (!v57)
    {
      v58 = 0;
      v59 = 0;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v60 = (v44 + v45[8]);
  *v60 = v58;
  v60[1] = v59;
  v61 = String._bridgeToObjectiveC()();
  v62 = [v55 objectForKeyedSubscript:v61];

  swift_unknownObjectRelease();
  v63 = v46[1];
  v63(v74, v29);
  v63(v75, v29);
  if (v62)
  {
    v78 = v62;
    v64 = swift_dynamicCast();
    v65 = v76;
    v66 = v77;
    if (!v64)
    {
      v65 = 0;
      v66 = 0;
    }
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v67 = (v44 + v45[9]);
  *v67 = v65;
  v67[1] = v66;
}

id sub_100E78AA8()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25[-v4];
  v6 = type metadata accessor for LostModeRecord();
  v7 = (v1 + v6[9]);
  v8 = *v7;
  v9 = v7[1];
  v10 = (v1 + v6[7]);
  v11 = *v10;
  v12 = v10[1];
  v13 = (v1 + v6[8]);
  v14 = *v13;
  v15 = v13[1];
  v16 = objc_autoreleasePoolPush();
  sub_100E7A0FC(v1, v5);
  objc_autoreleasePoolPop(v16);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v5, 0, 1, v17);
  if (v9)
  {
    v19 = String._bridgeToObjectiveC()();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v19 = 0;
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = String._bridgeToObjectiveC()();
  if (v15)
  {
LABEL_4:
    v21 = String._bridgeToObjectiveC()();
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v18 + 8))(v5, v17);
  }

  v23 = [objc_allocWithZone(SPLostModeInfo) initWithMessage:v19 email:v20 phoneNumber:v21 timestamp:isa];

  return v23;
}

uint64_t sub_100E78CC4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C140);
  sub_1000076D4(v0, qword_10177C140);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

void sub_100E78E28()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  Data.hash(into:)();
  v4 = type metadata accessor for LostModeRecord();
  v5 = v4[5];
  type metadata accessor for UUID();
  sub_100E7AB14(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v6 = v1 + v4[6];
  dispatch thunk of Hashable.hash(into:)();
  v7 = (v1 + v4[7]);
  if (v7[1])
  {
    v8 = *v7;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = (v1 + v4[8]);
  if (v9[1])
  {
    v10 = *v9;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = (v1 + v4[9]);
  if (v11[1])
  {
    v12 = *v11;
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

unint64_t sub_100E78FC0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C69616D65;
  v4 = 0x6D754E656E6F6870;
  if (v1 != 4)
  {
    v4 = 0x6567617373656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100E7908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100E7A8FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100E790B4(uint64_t a1)
{
  v2 = sub_100E7A410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E790F0(uint64_t a1)
{
  v2 = sub_100E7A410();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100E7912C()
{
  Hasher.init(_seed:)();
  sub_100E78E28();
  return Hasher._finalize()();
}

Swift::Int sub_100E79170()
{
  Hasher.init(_seed:)();
  sub_100E78E28();
  return Hasher._finalize()();
}

uint64_t sub_100E791B0(id *a1)
{
  v2 = v1;
  [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for LostModeRecord();
  v4 = v3[6];
  v5 = UUID.uuidString.getter();
  if (!v25)
  {

    goto LABEL_9;
  }

  if (v24 == v5 && v25 == v6)
  {

    goto LABEL_11;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_9:
    v24 = UUID.uuidString.getter();
    v25 = v9;
    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  v10 = (v1 + v3[7]);
  v12 = *v10;
  v11 = v10[1];
  if (!v25)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v24 = v12;
    v25 = v11;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_21;
  }

  if (!v11)
  {

    v12 = 0;
    goto LABEL_20;
  }

  if (v24 == v12 && v25 == v11)
  {

    goto LABEL_21;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v14 = (v2 + v3[8]);
  v16 = *v14;
  v15 = v14[1];
  if (!v25)
  {
    if (!v15)
    {
      goto LABEL_31;
    }

LABEL_30:
    v24 = v16;
    v25 = v15;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_31;
  }

  if (!v15)
  {

    v16 = 0;
    goto LABEL_30;
  }

  if (v24 == v16 && v25 == v15)
  {

    goto LABEL_31;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  CKRecordKeyValueSetting.subscript.getter();
  v18 = (v2 + v3[9]);
  v19 = v18[1];
  if (!v25)
  {
    if (!v19)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_40;
  }

  if (!v19)
  {

LABEL_40:

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v24 == *v18 && v25 == v19)
  {
    swift_unknownObjectRelease();
  }

  v21 = *v18;
  v22 = v18[1];
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v23 & 1) == 0)
  {
    goto LABEL_40;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100E795F4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BD2E0, &qword_1013EB628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100E7A410();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v25 = *v3;
  v26 = v11;
  v27 = 0;
  sub_100017D5C(v25, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v25, v26);
  }

  else
  {
    sub_100016590(v25, v26);
    v12 = type metadata accessor for LostModeRecord();
    v13 = v12[5];
    LOBYTE(v25) = 1;
    type metadata accessor for UUID();
    sub_100E7AB14(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v12[7]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v12[8]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + v12[9]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100E798B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for UUID();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = sub_1000BC4D4(&qword_1016BD2D0, &qword_1013EB620);
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for LostModeRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v54 = a1;
  sub_1000035D0(a1, v19);
  sub_100E7A410();
  v21 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_100007BAC(v54);
  }

  else
  {
    v22 = v7;
    v56 = 0;
    sub_1000E307C();
    v23 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v18 = v55;
    LOBYTE(v55) = 1;
    sub_100E7AB14(&qword_101698300, &type metadata accessor for UUID);
    v24 = v9;
    v25 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53 = v15;
    v26 = *(v15 + 20);
    v27 = *(v49 + 32);
    v47 = v18;
    v28 = v24;
    v29 = v27;
    v27(&v18[v26], v28, v25);
    LOBYTE(v55) = 2;
    v30 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v47;
    v29(&v47[*(v53 + 24)], v30, v25);
    LOBYTE(v55) = 3;
    v46 = 0;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v53;
    v34 = (v31 + *(v53 + 28));
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v55) = 4;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = (v31 + *(v33 + 32));
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v55) = 5;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v39;
    v40 = (v31 + *(v33 + 36));
    (*(v52 + 8))(v14, v23);
    v41 = v45;
    *v40 = v44;
    v40[1] = v41;
    sub_100E7A464(v31, v48);
    sub_100007BAC(v54);
    return sub_100E7A4C8(v31);
  }
}

uint64_t sub_100E79E5C(uint64_t a1)
{
  if (qword_101694EF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();
  sub_1000076D4(v3, qword_10177C140);
  v4 = v1 + *(a1 + 24);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100E79F34(uint64_t a1)
{
  *(a1 + 8) = sub_100E7AB14(&unk_1016BD2B0, type metadata accessor for LostModeRecord);
  result = sub_100E7AB14(&qword_1016B15E8, type metadata accessor for LostModeRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for LostModeRecord()
{
  result = qword_1016BD340;
  if (!qword_1016BD340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E7A004(uint64_t a1)
{
  result = sub_100E7AB14(&qword_1016B15E0, type metadata accessor for LostModeRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100E7A05C()
{
  result = qword_1016BD2C0;
  if (!qword_1016BD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD2C0);
  }

  return result;
}

unint64_t sub_100E7A0B0()
{
  result = qword_101698150;
  if (!qword_101698150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101698150);
  }

  return result;
}

void sub_100E7A0FC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v12 + 16) == *(v12 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v14)
  {
    if (v12 == v12 >> 32)
    {
LABEL_13:
      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
      goto LABEL_14;
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v15 = objc_autoreleasePoolPush();
  sub_101122FBC(v12, v13, &v21);
  if (v2)
  {
    objc_autoreleasePoolPop(v15);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v15);
  v16 = v21;
  if (!v21)
  {
    goto LABEL_13;
  }

  v17 = [v21 creationDate];

  if (v17)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  }

  else
  {
    v18 = type metadata accessor for Date();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  }

  sub_1001578A0(v9, v11);
  type metadata accessor for Date();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) != 1)
  {
    (*(v19 + 32))(a2, v11, v18);
    return;
  }

LABEL_14:
  Date.init()();
  type metadata accessor for Date();
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) != 1)
  {
    sub_10000B3A8(v11, &unk_101696900, &unk_10138B1E0);
  }
}

unint64_t sub_100E7A410()
{
  result = qword_1016BD2D8;
  if (!qword_1016BD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD2D8);
  }

  return result;
}

uint64_t sub_100E7A464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E7A4C8(uint64_t a1)
{
  v2 = type metadata accessor for LostModeRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100E7A56C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000E3404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100E7A654()
{
  result = qword_1016BD398;
  if (!qword_1016BD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD398);
  }

  return result;
}

unint64_t sub_100E7A6AC()
{
  result = qword_1016BD3A0;
  if (!qword_1016BD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD3A0);
  }

  return result;
}

unint64_t sub_100E7A704()
{
  result = qword_1016BD3A8;
  if (!qword_1016BD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD3A8);
  }

  return result;
}

unint64_t sub_100E7A75C()
{
  result = qword_1016BD3B0;
  if (!qword_1016BD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD3B0);
  }

  return result;
}

uint64_t sub_100E7A7B0(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LostModeRecord();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = *v14 == *v16 && v15 == v17;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v19 = v4[9];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (v23 && (*v20 == *v22 && v21 == v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v23)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100E7A8FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100E7AB14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100E7AB74()
{
  v0 = type metadata accessor for URL();
  sub_100044B3C(v0, qword_10177C158);
  v1 = sub_1000076D4(v0, qword_10177C158);
  if (qword_101694F08 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_1016BD3B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100E7AC3C()
{
  v0 = type metadata accessor for URL();
  sub_100044B3C(v0, qword_1016BD3B8);
  sub_1000076D4(v0, qword_1016BD3B8);
  return sub_100E7AC88();
}

uint64_t sub_100E7AC88()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:5 inDomains:1];

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v10 + 16))
  {
    (*(v1 + 16))(v5, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v7, v5, v0);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v1 + 8))(v7, v0);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100E7AEB4(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return v9(v4, v5);
}

uint64_t sub_100E7AFB0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C170);
  sub_1000076D4(v0, qword_10177C170);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100E7B030()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C188);
  v1 = sub_1000076D4(v0, qword_10177C188);
  if (qword_101694F10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C170);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100E7B118()
{
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C188);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "inside startup() function", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100990614;
  v6 = *(v0 + 16);

  return sub_100E7C6F8();
}

uint64_t sub_100E7B264(Swift::Int a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  swift_beginAccess();

  v11 = sub_100DE9538(v38, a1, a2);
  swift_endAccess();
  v12 = v38[1];
  if (v11)
  {
    v13 = v38[0];
    swift_beginAccess();
    if (!*(v3[26] + 16) || (v14 = v3[26], , sub_100771D58(a1, a2), v16 = v15, , (v16 & 1) == 0))
    {
      v24 = sub_1000BC4D4(&qword_1016BD5D8, &qword_1013EBA90);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = AsyncStreamProvider.init()();
      swift_beginAccess();

      v28 = v3[26];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v3[26];
      v3[26] = 0x8000000000000000;
      sub_100FFBBDC(v27, a1, a2, isUniquelyReferenced_nonNull_native);

      v3[26] = v37;
      swift_endAccess();
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
      v32 = sub_100E7FD78(&qword_1016BD5C0, v31, type metadata accessor for APSNotificationService);
      v33 = swift_allocObject();
      v34 = v13;
      v35 = v33;
      *(v33 + 16) = v3;
      *(v33 + 24) = v32;
      *(v33 + 32) = v3;
      *(v33 + 40) = a1;
      *(v33 + 48) = a2;
      *(v33 + 56) = v27;
      *(v33 + 64) = 1;
      *(v33 + 72) = v34;
      *(v33 + 80) = v12;
      *(v33 + 88) = v6;
      swift_retain_n();

      sub_10025EDD4(0, 0, v10, &unk_1013EBAD8, v35);

      goto LABEL_8;
    }
  }

  result = swift_beginAccess();
  v18 = v3[26];
  if (*(v18 + 16))
  {
    v19 = v3[26];

    v20 = sub_100771D58(a1, a2);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v18 + 56) + 8 * v20);

LABEL_8:
      AsyncStreamProvider.stream(initialEvents:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100E7B5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = v9;
  v7[10] = v10;
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_100E7B5FC, a4, 0);
}

uint64_t sub_100E7B5FC()
{
  v1 = v0[8];
  v2 = *(v0[5] + 200);
  v0[11] = v2;

  return _swift_task_switch(sub_100E7B674, v2, 0);
}

uint64_t sub_100E7B674()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1013EBAE8;
  *(v5 + 24) = v2;
  swift_beginAccess();

  v6 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_100FFEE4C(&unk_1013EBAF0, v5, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v13;
  swift_endAccess();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100E7B7F4;
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  return sub_100E7DE18(v10, v9, 500000000000000000, 0);
}

uint64_t sub_100E7B7F4(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;

  v9 = *(v6 + 40);
  if (v2)
  {

    v10 = sub_100E805F4;
  }

  else
  {
    sub_100016590(a1, a2);
    v10 = sub_100E7B948;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100E7B948()
{
  v21 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C188);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000136BC(v6, v5, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting enabled push topic: %{public}s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v9 = v0[5];
  v10 = *(v9 + 152);
  v0[13] = v10;
  if (v10)
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = *(v9 + 160);
    ObjectType = swift_getObjectType();
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v15 = swift_allocObject();
    v0[14] = v15;
    *(v15 + 16) = xmmword_101385D80;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    v16 = async function pointer to dispatch thunk of APNSConnector.set(enabledTopics:)[1];
    swift_unknownObjectRetain();

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_100E7BBBC;

    return dispatch thunk of APNSConnector.set(enabledTopics:)(v15, ObjectType, v13);
  }

  else
  {
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100E7BBBC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v6 = *v0;

  swift_unknownObjectRelease();

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100E7BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100E7BD0C, 0, 0);
}

uint64_t sub_100E7BD0C()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 32);
  AsyncStreamProvider.yield(value:transaction:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E7BD7C(Swift::Int a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  swift_beginAccess();

  v11 = sub_100DE9538(v38, a1, a2);
  swift_endAccess();
  v12 = v38[1];
  if (v11)
  {
    v13 = v38[0];
    swift_beginAccess();
    if (!*(v3[26] + 16) || (v14 = v3[26], , sub_100771D58(a1, a2), v16 = v15, , (v16 & 1) == 0))
    {
      v24 = sub_1000BC4D4(&qword_1016BD5D8, &qword_1013EBA90);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = AsyncStreamProvider.init()();
      swift_beginAccess();

      v28 = v3[26];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v3[26];
      v3[26] = 0x8000000000000000;
      sub_100FFBBDC(v27, a1, a2, isUniquelyReferenced_nonNull_native);

      v3[26] = v37;
      swift_endAccess();
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
      v32 = sub_100E7FD78(&qword_1016BD5C0, v31, type metadata accessor for APSNotificationService);
      v33 = swift_allocObject();
      v34 = v13;
      v35 = v33;
      *(v33 + 16) = v3;
      *(v33 + 24) = v32;
      *(v33 + 32) = v3;
      *(v33 + 40) = a1;
      *(v33 + 48) = a2;
      *(v33 + 56) = v27;
      *(v33 + 64) = 1;
      *(v33 + 72) = v34;
      *(v33 + 80) = v12;
      *(v33 + 88) = v6;
      swift_retain_n();

      sub_10025EDD4(0, 0, v10, &unk_1013EBAA0, v35);

      goto LABEL_8;
    }
  }

  result = swift_beginAccess();
  v18 = v3[26];
  if (*(v18 + 16))
  {
    v19 = v3[26];

    v20 = sub_100771D58(a1, a2);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v18 + 56) + 8 * v20);

LABEL_8:
      AsyncStreamProvider.stream(initialEvents:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100E7C0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = v9;
  v7[10] = v10;
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_100E7C114, a4, 0);
}

uint64_t sub_100E7C114()
{
  v1 = v0[8];
  v2 = *(v0[5] + 200);
  v0[11] = v2;

  return _swift_task_switch(sub_100E7C18C, v2, 0);
}

uint64_t sub_100E7C18C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1013EBAB0;
  *(v5 + 24) = v2;
  swift_beginAccess();

  v6 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_100FFEE4C(&unk_1013EBAC0, v5, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v13;
  swift_endAccess();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100E7C30C;
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  return sub_100E7DE18(v10, v9, 500000000000000000, 0);
}

uint64_t sub_100E7C30C(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;

  v9 = *(v6 + 40);
  if (v2)
  {

    v10 = sub_100E805F8;
  }

  else
  {
    sub_100016590(a1, a2);
    v10 = sub_100E7C460;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100E7C460()
{
  v21 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C188);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000136BC(v6, v5, &v20);
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting opportunistic push topic: %{public}s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v9 = v0[5];
  v10 = *(v9 + 152);
  v0[13] = v10;
  if (v10)
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = *(v9 + 160);
    ObjectType = swift_getObjectType();
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v15 = swift_allocObject();
    v0[14] = v15;
    *(v15 + 16) = xmmword_101385D80;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    v16 = async function pointer to dispatch thunk of APNSConnector.set(opportunisticTopics:)[1];
    swift_unknownObjectRetain();

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_100E80600;

    return dispatch thunk of APNSConnector.set(opportunisticTopics:)(v15, ObjectType, v13);
  }

  else
  {
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100E7C6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100E805FC, 0, 0);
}

uint64_t sub_100E7C6F8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_100E7C740, v0, 0);
}

uint64_t sub_100E7C740()
{
  v1 = v0[2];
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = *(v1 + 160);
    v4 = qword_101694F18;
    swift_unknownObjectRetain_n();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C188);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "APNSManager exists already. No need to create one", v8, 2u);
    }

    v0[6] = v2;
    v0[7] = v3;
    v9 = v0[2];
    v10 = v0[3];

    ObjectType = swift_getObjectType();
    v0[8] = ObjectType;
    v12 = swift_allocObject();
    v0[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = async function pointer to dispatch thunk of APNSConnector.setDidReceive(block:)[1];
    swift_unknownObjectRetain_n();

    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_100E7CCC4;

    return dispatch thunk of APNSConnector.setDidReceive(block:)(&unk_1013EBA68, v12, ObjectType, v3);
  }

  else
  {
    type metadata accessor for APNSManager();
    v15 = async function pointer to APNSManager.__allocating_init(environmentName:delegatePort:)[1];
    v16 = swift_task_alloc();
    v0[4] = v16;
    *v16 = v0;
    v16[1] = sub_100E7C9D4;

    return APNSManager.__allocating_init(environmentName:delegatePort:)(0x69746375646F7270, 0xEA00000000006E6FLL, 0xD000000000000021, 0x80000001013725D0);
  }
}

uint64_t sub_100E7C9D4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100E7CAEC, v3, 0);
}

uint64_t sub_100E7CAEC()
{
  v1 = v0[5];
  v2 = qword_101694F18;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C188);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "APNSManager created", v8, 2u);
  }

  v0[6] = v7;
  v0[7] = &protocol witness table for APNSManager;
  v9 = v0[2];
  v10 = v0[3];

  ObjectType = swift_getObjectType();
  v0[8] = ObjectType;
  v12 = swift_allocObject();
  v0[9] = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  v13 = async function pointer to dispatch thunk of APNSConnector.setDidReceive(block:)[1];
  swift_unknownObjectRetain_n();

  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_100E7CCC4;

  return dispatch thunk of APNSConnector.setDidReceive(block:)(&unk_1013EBA68, v12, ObjectType, &protocol witness table for APNSManager);
}

uint64_t sub_100E7CCC4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 16);
  v6 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100E7CE14, v4, 0);
}

uint64_t sub_100E7CE14()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = async function pointer to dispatch thunk of APNSConnector.setDidReceivePublicToken(block:)[1];
  swift_unknownObjectRetain();

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100E7CF08;
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  return dispatch thunk of APNSConnector.setDidReceivePublicToken(block:)(&unk_1013EBA78, v4, v7, v8);
}

uint64_t sub_100E7CF08()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 16);
  v6 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100E7D058, v4, 0);
}

uint64_t sub_100E7D058()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to dispatch thunk of APNSConnector.setDidReceiveTokenForTopic(block:)[1];

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100E7D140;
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  return dispatch thunk of APNSConnector.setDidReceiveTokenForTopic(block:)(&unk_1013EBA88, v3, v6, v7);
}

uint64_t sub_100E7D140()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 16);
  v6 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100E7D290, v4, 0);
}

uint64_t sub_100E7D290()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v1 + 152);
  *(v1 + 152) = v5;
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E7D30C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for APNSManager.IncomingMessage();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100E7D3CC, 0, 0);
}

uint64_t sub_100E7D3CC()
{
  v23 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C188);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    sub_100E7FD78(&qword_1016BD5D0, 255, &type metadata accessor for APNSManager.IncomingMessage);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Did receive push: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_100D926B4;
  v19 = v0[2];
  v20 = v0[3];

  return sub_100E7ECB0(v19);
}

uint64_t sub_100E7D640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100E7D664, 0, 0);
}

uint64_t sub_100E7D664()
{
  v16 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C188);
  sub_100017D5C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = Data.hexString.getter();
    v12 = sub_1000136BC(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did receive APS public token: %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  v13 = v0[4];

  return _swift_task_switch(sub_100E7D820, v13, 0);
}

uint64_t sub_100E7D820()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = *(v2 + 168);
  v4 = *(v2 + 176);
  *(v2 + 168) = v3;
  *(v2 + 176) = v1;
  sub_100017D5C(v3, v1);
  sub_100006654(v5, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100E7D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100E7D8C0, 0, 0);
}

uint64_t sub_100E7D8C0()
{
  v18 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C188);
  sub_100017D5C(v3, v2);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100016590(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[4];
    v7 = v0[5];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v12 = Data.hexString.getter();
    v14 = sub_1000136BC(v12, v13, &v17);

    *(v11 + 14) = v14;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_1000136BC(v8, v7, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "Did receive APS topic token: %{private,mask.hash}s, topic: %{public}s.", v11, 0x20u);
    swift_arrayDestroy();
  }

  v15 = v0[6];

  return _swift_task_switch(sub_100E7DAC8, v15, 0);
}

uint64_t sub_100E7DAC8()
{
  v1 = v0[6];
  sub_100E7DB38(0, 0xF000000000000000, v0[4], v0[5], v0[2], v0[3]);
  v2 = v0[1];

  return v2();
}

void sub_100E7DB38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (a2 >> 60 != 15)
  {
    v12 = v6[21];
    v13 = v7[22];
    v7[21] = a1;
    v7[22] = a2;
    sub_100017D5C(a1, a2);
    sub_100006654(v12, v13);
  }

  if (a4)
  {
    sub_100E7FAA8(a3, a4, a5, a6);

    sub_100017D5C(a5, a6);
    sub_100016590(a5, a6);

    sub_100017D5C(a5, a6);

    swift_beginAccess();
    v14 = v7[24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v7[24];
    v7[24] = 0x8000000000000000;
    sub_1010018BC(a5, a6, a3, a4, isUniquelyReferenced_nonNull_native);

    v7[24] = v27;
    swift_endAccess();

    sub_100017D5C(a5, a6);
    sub_100016590(a5, a6);
    swift_beginAccess();
    v16 = v7[16];
    if (*(v16 + 16) && (v17 = v7[16], , v18 = sub_100771D58(a3, a4), v20 = v19, , (v20 & 1) != 0))
    {
      v21 = *(*(v16 + 56) + 8 * v18);

      v26 = a3;
      if (v21 >> 62)
      {
        goto LABEL_20;
      }

      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        while (1)
        {
          v23 = 0;
          a3 = v21 & 0xFFFFFFFFFFFFFF8;
          while ((v21 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
LABEL_16:
              __break(1u);
              goto LABEL_17;
            }

LABEL_12:
            OnceCheckedContinuation.resume(returning:)();

            ++v23;
            if (v25 == v22)
            {
              goto LABEL_21;
            }
          }

          if (v23 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_20:
          v22 = _CocoaArrayWrapper.endIndex.getter();
          if (!v22)
          {
            goto LABEL_21;
          }
        }

        v24 = *(v21 + 8 * v23 + 32);

        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_21:

      a3 = v26;
    }

    else
    {
LABEL_17:
    }

    sub_100017D5C(a5, a6);
    sub_100016590(a5, a6);
    swift_beginAccess();
    sub_1001E156C(0, a3, a4);
    swift_endAccess();
    sub_100E7FAF4(a3, a4, a5, a6);
  }
}

uint64_t sub_100E7DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_100E7DE40, v4, 0);
}

uint64_t sub_100E7DE40()
{
  v19 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C188);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000136BC(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch APS topic token: %{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v9 = v0[8];
  v11 = v0[4];
  v10 = v0[5];
  v12 = swift_allocObject();
  v0[9] = v12;
  v12[2] = v9;
  v12[3] = v11;
  v12[4] = v10;
  v13 = async function pointer to withTimeout<A>(_:block:)[1];

  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_100E7E068;
  v15 = v0[6];
  v16 = v0[7];

  return withTimeout<A>(_:block:)(v0 + 2, v15, v16, &unk_1013EBA48, v12, &type metadata for Data);
}

uint64_t sub_100E7E068()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_100E7E1A8;
  }

  else
  {
    v7 = *(v2 + 64);
    v6 = *(v2 + 72);

    v5 = sub_100E7E18C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100E7E1A8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_100E7E20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100E7E230, 0, 0);
}

uint64_t sub_100E7E230()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100E7E330;
  v5 = *(v0 + 16);

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v5, 0xD00000000000001DLL, 0x80000001013725B0, sub_100E7F9C8, v2, &type metadata for Data);
}

uint64_t sub_100E7E330()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008EE2C4, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100E7E46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a1;

  sub_10025EDD4(0, 0, v11, &unk_1013EBA58, v13);
}

uint64_t sub_100E7E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100014744;

  return sub_100E7E654(a5, a6, a7);
}

uint64_t sub_100E7E654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return _swift_task_switch(sub_100E7E678, v3, 0);
}

uint64_t sub_100E7E678()
{
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = *(v1 + 128);

    v6 = sub_100771D58(v4, v3);
    if (v7)
    {
      v8 = v0[15];
      v9 = *(*(v2 + 56) + 8 * v6);

      v49 = v9;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v11 = v0[14];
      v10 = v0[15];
      v12 = v0[13];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_beginAccess();

      v13 = *(v1 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v1 + 128);
      *(v1 + 128) = 0x8000000000000000;
      sub_1010018A8(v49, v12, v11, isUniquelyReferenced_nonNull_native);

      *(v1 + 128) = v50;
      swift_endAccess();
      goto LABEL_19;
    }
  }

  v15 = v0[16];
  v16 = *(v15 + 152);
  v0[17] = v16;
  if (!v16)
  {
    v35 = v0[15];
    sub_100E7F8C0();
    v36 = swift_allocError();
    *v37 = 0;
    v0[11] = v36;
    OnceCheckedContinuation.resume(throwing:)();
LABEL_18:

LABEL_19:
    v45 = v0[1];

    return v45();
  }

  v17 = *(v15 + 160);
  v18 = objc_opt_self();
  swift_unknownObjectRetain();
  v19 = [v18 mainBundle];
  v20 = [v19 bundleIdentifier];

  if (!v20)
  {
    if (qword_101694F18 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177C188);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Cannot read bundle identifier to fetch token", v41, 2u);
    }

    v42 = v0[15];

    sub_100E7F8C0();
    v43 = swift_allocError();
    *v44 = 1;
    v0[12] = v43;
    OnceCheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v21 = v0[14];
  v22 = v0[15];
  v48 = v17;
  v23 = v0[13];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v0[18] = v26;
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10138C320;
  *(v27 + 32) = v22;
  swift_beginAccess();

  v28 = *(v1 + 128);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v1 + 128);
  *(v1 + 128) = 0x8000000000000000;
  sub_1010018A8(v27, v23, v21, v29);

  *(v1 + 128) = v51;
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v31 = async function pointer to dispatch thunk of APNSConnector.requestToken(for:identifier:)[1];
  v32 = swift_task_alloc();
  v0[19] = v32;
  *v32 = v0;
  v32[1] = sub_100E7EB24;
  v34 = v0[13];
  v33 = v0[14];

  return dispatch thunk of APNSConnector.requestToken(for:identifier:)(v34, v33, v24, v26, ObjectType, v48);
}

uint64_t sub_100E7EB24()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 128);
  v5 = *v0;

  return _swift_task_switch(sub_100E7EC50, v3, 0);
}

uint64_t sub_100E7EC50()
{
  v1 = *(v0 + 136);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E7ECB0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for APNSManager.IncomingMessage();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100E7EDD4, v1, 0);
}

uint64_t sub_100E7EDD4()
{
  v48 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C188);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1000136BC(0x5041656C646E6168, 0xED0000293A5F2853, &v47);
    *(v12 + 12) = 2080;
    v13 = APNSManager.IncomingMessage.topic.getter();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_1000136BC(v13, v15, &v47);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s topic: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = *(v0 + 32);
  v18 = objc_opt_self();
  APNSManager.IncomingMessage.userInfo.getter();
  sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v20 = [v18 dataWithJSONObject:isa options:0 error:v0 + 16];

  v21 = *(v0 + 16);
  if (v20)
  {
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    v24 = *(v0 + 32);
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = *(v23 + 200);
    v29 = APNSManager.IncomingMessage.topic.getter();
    v31 = v30;
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v22, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v28;
    v33[5] = v29;
    v33[6] = v31;
    v33[7] = v25;
    v33[8] = v27;

    sub_10025F6E0(0, 0, v22, &unk_1013EBA30, v33);
  }

  else
  {
    v34 = v21;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136446210;
      *(v0 + 24) = v35;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v40 = String.init<A>(describing:)();
      v42 = sub_1000136BC(v40, v41, &v47);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to decode APS message due to %{public}s", v38, 0xCu);
      sub_100007BAC(v39);
    }

    else
    {
    }
  }

  v43 = *(v0 + 72);
  v44 = *(v0 + 48);

  v45 = *(v0 + 8);

  return v45();
}

void *sub_100E7F2E4()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];
  swift_unknownObjectRelease();
  sub_100006654(v0[21], v0[22]);
  v6 = v0[23];

  v7 = v0[24];

  v8 = v0[25];

  v9 = v0[26];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100E7F354()
{
  sub_100E7F2E4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100E7F3A4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for APSNotificationService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100E7F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for APSNotificationService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100E7F510(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for APSNotificationService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100E7F5B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100E7B0F8();
}

uint64_t sub_100E7F644(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for APSNotificationService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100E7F6EC()
{
  v1 = *v0;
  type metadata accessor for APSNotificationService();
  sub_100E7FD78(&qword_101698D40, v2, type metadata accessor for APSNotificationService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100E7F7E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_10062CFD0(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_100E7F8C0()
{
  result = qword_1016BD5C8;
  if (!qword_1016BD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD5C8);
  }

  return result;
}

uint64_t sub_100E7F914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100E7E20C(a1, v4, v5, v6);
}

uint64_t sub_100E7F9D4(uint64_t a1)
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

  return sub_100E7E5A0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100E7FAA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100017D5C(a3, a4);
  }
}

void sub_100E7FAF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100016590(a3, a4);
  }
}

uint64_t sub_100E7FB40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100E7D30C(a1, v5);
}

uint64_t sub_100E7FBE8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100E7D640(a1, a2, v7);
}

uint64_t sub_100E7FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100014744;

  return sub_100E7D898(a1, a2, a3, a4, a5, a6, v15);
}

uint64_t sub_100E7FD78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100E7FDC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014744;

  return sub_100E7C0E4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100E7FEC0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100E7C6D4(a1, a2, v2);
}

uint64_t sub_100E7FF68(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100E7AEB4(a1, a2, v7);
}

uint64_t sub_100E80030()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100E80088(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014744;

  return sub_100E7B5CC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100E80188(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100E7BCE8(a1, a2, v2);
}

uint64_t sub_100E80230(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_100E7AEB4(a1, a2, v7);
}

void *sub_100E802F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  swift_defaultActor_initialize();
  v2[14] = 0xD000000000000016;
  v2[15] = 0x80000001013EB8F0;
  v2[16] = _swiftEmptyDictionarySingleton;
  v2[17] = &_swiftEmptySetSingleton;
  v2[18] = &_swiftEmptySetSingleton;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  v2[22] = 0xF000000000000000;
  type metadata accessor for WorkItemQueue();
  v12 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  UUID.init()();
  v2[23] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v2[24] = _swiftEmptyDictionarySingleton;
  type metadata accessor for APSNotificationMessageRouter();
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = _swiftEmptyDictionarySingleton;
  v3[25] = v13;
  v3[26] = _swiftEmptyDictionarySingleton;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C188);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "init(apnsManager:) called", v17, 2u);
  }

  v18 = v3[19];
  v3[19] = a1;
  v3[20] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v3;
}

unint64_t sub_100E805A0()
{
  result = qword_1016BD5E0;
  if (!qword_1016BD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD5E0);
  }

  return result;
}

uint64_t sub_100E80604(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for CorrelationIdentifierMap();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for Destination();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100E80758, 0, 0);
}

uint64_t sub_100E80758()
{
  v33 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[11] = sub_1000076D4(v2, qword_10177C1A0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_1000136BC(v8, v9, &v32);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating map for %s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[3];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v0[9];
    v14 = (v13 + 48);
    v31 = v13;
    v15 = (v13 + 32);
    v16 = (v11 + 48);
    v17 = _swiftEmptyArrayStorage;
    do
    {
      v19 = v0[7];
      v18 = v0[8];
      v21 = *(v16 - 1);
      v20 = *v16;

      Destination.init(stringRepresentation:)();
      if ((*v14)(v19, 1, v18) == 1)
      {
        sub_10000B3A8(v0[7], &qword_1016A2928, &unk_1013EBDE0);
      }

      else
      {
        v22 = *v15;
        (*v15)(v0[10], v0[7], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100A5C1A8(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_100A5C1A8(v23 > 1, v24 + 1, 1, v17);
        }

        v25 = v0[10];
        v26 = v0[8];
        *(v17 + 2) = v24 + 1;
        v22(&v17[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v24], v25, v26);
      }

      v16 += 3;
      --v12;
    }

    while (v12);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v27 = async function pointer to CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)[1];
  v28 = swift_task_alloc();
  v0[12] = v28;
  *v28 = v0;
  v28[1] = sub_100E80ABC;
  v29 = v0[6];

  return CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)(v29, 0xD00000000000001BLL, 0x800000010134CCA0, v17, sub_1004EEDDC, 0);
}

uint64_t sub_100E80ABC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100E80C8C;
  }

  else
  {
    v3 = sub_100E80BD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E80BD0()
{
  (*(v0[5] + 32))(v0[2], v0[6], v0[4]);
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  (*(v0[5] + 56))(v0[2], 0, 1, v0[4]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100E80C8C()
{
  v1 = v0[13];
  v2 = v0[11];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Map creation error: %{public}@.", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[10];
  v12 = v0[6];
  v11 = v0[7];
  (*(v0[5] + 56))(v0[2], 1, 1, v0[4]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100E80E2C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C1A0);
  v1 = sub_1000076D4(v0, qword_10177C1A0);
  if (qword_101694F28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C1B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100E80EF4()
{
  v1[7] = v0;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v1[11] = v6;
  *v6 = v1;
  v6[1] = sub_100E80FE4;

  return daemon.getter();
}

uint64_t sub_100E80FE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v9 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E9056C(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v6 = v12;
  v6[1] = sub_100E811C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E811C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v10 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_100E81528;
  }

  else
  {
    v7 = v3[12];
    v8 = v3[7];

    v6 = sub_100E812F0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100E812F0()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for PeerTrustService();
  v0[6] = sub_100E9056C(&qword_1016BD748, v2, type metadata accessor for PeerTrustService);
  v0[2] = v1;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100E813EC;
  v4 = v0[14];
  v5 = v0[10];

  return sub_100D1C654(v5, (v0 + 2));
}

uint64_t sub_100E813EC()
{
  v2 = *v1;
  v3 = (*v1)[16];
  v8 = *v1;
  (*v1)[17] = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_100E816DC;
  }

  else
  {
    v6 = v2[7];
    (*(v2[9] + 8))(v2[10], v2[8]);
    sub_100007BAC(v2 + 2);
    v5 = sub_100D272FC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100E81528()
{
  v1 = v0[12];

  v2 = v0[15];
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C1A0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to subscribe to IDSTransportService_ItemSharingCrossAccount %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E816DC()
{
  v1 = v0[14];

  sub_100007BAC(v0 + 2);
  v2 = v0[17];
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C1A0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to subscribe to IDSTransportService_ItemSharingCrossAccount %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E81898(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_100E818B8, a1, 0);
}

uint64_t sub_100E818B8()
{
  v1 = *(v0 + 48);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v3 = v0;
  v3[1] = sub_100E819A4;
  v5 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100E90620, v5, v4);
}

uint64_t sub_100E819A4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100E81ABC, v2, 0);
}

uint64_t sub_100E81ABC()
{
  v1 = v0[7];
  v0[9] = v0[2];
  return _swift_task_switch(sub_100E81AE0, v1, 0);
}

uint64_t sub_100E81AE0()
{
  v0[10] = *(v0[9] + 16);

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0[11] = qword_10177B348;

  return _swift_task_switch(sub_100E81B8C, 0, 0);
}

uint64_t sub_100E81B8C()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_100E81C50;
  v4 = *(v0 + 88);

  return unsafeBlocking<A>(_:)(v0 + 24, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_100E81C50()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100E81D68, 0, 0);
}

uint64_t sub_100E81D68()
{
  v1 = v0[7];
  v0[13] = v0[3];
  return _swift_task_switch(sub_100E81D8C, v1, 0);
}

uint64_t sub_100E81D8C()
{
  v1 = v0[10];
  v2 = sub_101074A58(v0[13]);

  if (v1 >= v2)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[10];
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v7;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v5, v6, "BeaconSharingService: cannot create new peer trust. existingTrusts: %ld >= maxShareMembers: %lu.", v8, 0x16u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[5] = 9;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100E9056C(&qword_101696340, 255, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = v0[4];
    swift_willThrow();
    v3 = v0[1];
  }

  else
  {
    v3 = v0[1];
  }

  return v3();
}

uint64_t sub_100E81F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for PeerCommunicationIdentifier();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100E82070, v3, 0);
}

uint64_t sub_100E82070()
{
  v1 = v0[3];
  sub_100EB3858();
  v5 = sub_100EB3708(v2, v3, v4);

  v6 = [v5 destination];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [v6 _stripPotentialTokenURIWithToken:0];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v0[11] = v8;
    v0[12] = v10;

    _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
    v0[13] = v12;
    v0[14] = v13;
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v0[15] = v11;
      v16 = swift_task_alloc();
      v0[16] = v16;
      *v16 = v0;
      v16[1] = sub_100E82260;
      v17 = v0[5];

      return sub_100E86158(v16, v14, v15);
    }
  }

  sub_100E8FB24();
  swift_allocError();
  *v19 = 3;
  swift_willThrow();
  v20 = v0[10];
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100E82260(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {
    v6 = v3[14];
    v7 = v3[12];

    v8 = v3[10];
    v9 = v3[7];

    v10 = *(v5 + 8);

    return v10();
  }

  else
  {
    v12 = v3[5];

    return _swift_task_switch(sub_100E823D0, v12, 0);
  }
}

uint64_t sub_100E823D0()
{
  v1 = v0[17];
  if (*(v1 + 16))
  {
    v2 = v0[14];
    v3 = v0[12];

    if (*(v1 + 16))
    {
      v5 = v0[10];
      v6 = v0[2];
      v7 = *(v0[9] + 80);
      sub_100E90330(v0[17] + ((v7 + 32) & ~v7), v5, type metadata accessor for OwnerPeerTrust);

      sub_100E90504(v5, v6, type metadata accessor for OwnerPeerTrust);
      v8 = v0[10];
      v9 = v0[7];

      v10 = v0[1];

      return v10();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = v0[17];

    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_100E8254C;
    v13 = v0[4];
    v14 = v0[5];

    return sub_100E81898(v13);
  }

  return result;
}

uint64_t sub_100E8254C()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  *(v3 + 152) = v0;

  if (v0)
  {
    v4 = *(v3 + 40);

    return _swift_task_switch(sub_100E82DBC, v4, 0);
  }

  else
  {
    v5 = *(v3 + 112);
    v6 = *(v3 + 120);
    v7 = swift_task_alloc();
    *(v3 + 160) = v7;
    *v7 = v3;
    v7[1] = sub_100E826E8;
    v8 = *(v3 + 104);

    return sub_100D4E560(v6, v8, v5);
  }
}

uint64_t sub_100E826E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 160);
  v7 = *v3;
  v5[21] = a1;
  v5[22] = a2;
  v5[23] = v2;

  v8 = v4[5];
  if (v2)
  {
    v9 = sub_100E829FC;
  }

  else
  {
    v9 = sub_100E82820;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100E82820()
{
  if (v0[22])
  {

    return _swift_task_switch(sub_100E8291C, 0, 0);
  }

  else
  {
    v1 = v0[14];
    v2 = v0[12];

    sub_100E8FB24();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = v0[10];
    v5 = v0[7];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100E8291C()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_100E82A80;
  v4 = *(v0 + 104);

  return sub_101269AA4(v2, v4, v1);
}

uint64_t sub_100E829FC()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[23];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100E82A80(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 192);
  v6 = *v3;
  v4[25] = a1;
  v4[26] = a2;

  if (v2)
  {
    v7 = v4[22];
    v8 = v4[14];
    v9 = v4[12];

    v10 = v4[10];
    v11 = v4[7];

    v12 = *(v6 + 8);

    return v12();
  }

  else
  {
    v14 = v4[5];

    return _swift_task_switch(sub_100E82BFC, v14, 0);
  }
}

uint64_t sub_100E82BFC()
{
  v25 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 176);
    v4 = *(v0 + 120);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = *(v0 + 16);
    *v9 = *(v0 + 168);
    *(v9 + 8) = v3;
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;
    *(v9 + 40) = v2;
    *(v9 + 48) = v1;
    swift_storeEnumTagMultiPayload();
    v12 = v11 + v8[5];
    UUID.init()();
    sub_100E90330(v9, v11 + v8[7], type metadata accessor for PeerCommunicationIdentifier);
    sub_1005CAD68(v24);
    sub_100E90398(v9, type metadata accessor for PeerCommunicationIdentifier);
    *v11 = xmmword_10138C660;
    *(v11 + v8[6]) = 1;
    v13 = (v11 + v8[8]);
    *v13 = v7;
    v13[1] = v6;
    *(v11 + v8[9]) = *v24;
    *(v11 + v8[10]) = 0;
    v14 = *(v0 + 80);
    v15 = *(v0 + 56);
  }

  else
  {
    v17 = *(v0 + 176);
    v18 = *(v0 + 112);
    v19 = *(v0 + 96);

    sub_100E8FB24();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    v21 = *(v0 + 80);
    v22 = *(v0 + 56);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100E82DBC()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[19];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100E82E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for PeerCommunicationIdentifier();
  v4[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust();
  v4[16] = v7;
  v8 = *(v7 - 8);
  v4[17] = v8;
  v9 = *(v8 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100E82F34, v3, 0);
}

uint64_t sub_100E82F34()
{
  v1 = v0[11];
  sub_100EB3858();
  v5 = sub_100EB3708(v2, v3, v4);

  v6 = [v5 destination];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [v6 _stripPotentialTokenURIWithToken:0];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v0[19] = v8;
    v0[20] = v10;

    _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
    v0[21] = v12;
    v0[22] = v13;
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v0[23] = v11;
      v16 = swift_task_alloc();
      v0[24] = v16;
      *v16 = v0;
      v16[1] = sub_100E83124;
      v17 = v0[13];

      return sub_100E86158(v16, v14, v15);
    }
  }

  sub_100E8FB24();
  swift_allocError();
  *v19 = 3;
  swift_willThrow();
  v20 = v0[18];
  v21 = v0[15];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100E83124(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {
    v6 = v3[22];
    v7 = v3[20];

    v8 = v3[18];
    v9 = v3[15];

    v10 = *(v5 + 8);

    return v10();
  }

  else
  {
    v12 = v3[13];

    return _swift_task_switch(sub_100E83294, v12, 0);
  }
}

uint64_t sub_100E83294()
{
  v1 = v0[25];
  if (*(v1 + 16))
  {
    v2 = v0[22];
    v3 = v0[20];

    if (*(v1 + 16))
    {
      v5 = v0[18];
      v6 = v0[10];
      v7 = *(v0[17] + 80);
      sub_100E90330(v0[25] + ((v7 + 32) & ~v7), v5, type metadata accessor for OwnerPeerTrust);

      sub_100E90504(v5, v6, type metadata accessor for OwnerPeerTrust);
      v8 = v0[18];
      v9 = v0[15];

      v10 = v0[1];

      return v10();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = v0[25];

    v12 = swift_task_alloc();
    v0[26] = v12;
    *v12 = v0;
    v12[1] = sub_100E83410;
    v13 = v0[12];
    v14 = v0[13];

    return sub_100E81898(v13);
  }

  return result;
}

uint64_t sub_100E83410()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_100E83DD0;
  }

  else
  {
    v5 = sub_100E8352C;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100E8352C()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  *(v0 + 224) = qword_101699690;
  v2 = *(v0 + 184);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_100E83610;
  v4 = *(v0 + 168);

  return sub_101269AA4(v2, v4, v1);
}

uint64_t sub_100E83610(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[2] = v3;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v2;
  v7 = v5[29];
  v8 = *v3;
  v6[30] = v2;

  if (v2)
  {
    v9 = sub_100E83918;
    v10 = 0;
  }

  else
  {
    v10 = v6[13];
    v6[31] = a2;
    v9 = sub_100E8374C;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100E8374C()
{
  v22 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    *v6 = *(v0 + 184);
    *(v6 + 8) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v1;
    swift_storeEnumTagMultiPayload();
    v10 = v9 + v7[5];
    UUID.init()();
    sub_100E90330(v6, v9 + v7[7], type metadata accessor for PeerCommunicationIdentifier);
    sub_1005CAD68(v21);
    sub_100E90398(v6, type metadata accessor for PeerCommunicationIdentifier);
    *v9 = xmmword_10138C660;
    *(v9 + v7[6]) = 1;
    v11 = (v9 + v7[8]);
    *v11 = v5;
    v11[1] = v4;
    *(v9 + v7[9]) = *v21;
    *(v9 + v7[10]) = 0;
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v18 = swift_task_alloc();
    *(v0 + 256) = v18;
    *v18 = v0;
    v18[1] = sub_100E83A00;
    v19 = *(v0 + 224);
    v20 = *(v0 + 168);

    return sub_101269EA4(v17, v20, v16);
  }
}

uint64_t sub_100E83918()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[13];

  return _swift_task_switch(sub_100E83990, v3, 0);
}

uint64_t sub_100E83990()
{
  v1 = v0[30];
  v2 = v0[18];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100E83A00(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[6] = v3;
  v6[7] = a1;
  v6[8] = a2;
  v6[9] = v2;
  v7 = v5[32];
  v8 = *v3;
  v6[33] = v2;

  if (v2)
  {
    v9 = sub_100E83CE8;
    v10 = 0;
  }

  else
  {
    v10 = v6[13];
    v6[34] = a2;
    v9 = sub_100E83B3C;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100E83B3C()
{
  v22 = v0;
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    *v6 = *(v0 + 184);
    *(v6 + 8) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v1;
    swift_storeEnumTagMultiPayload();
    v10 = v9 + v7[5];
    UUID.init()();
    sub_100E90330(v6, v9 + v7[7], type metadata accessor for PeerCommunicationIdentifier);
    sub_1005CAD68(v21);
    sub_100E90398(v6, type metadata accessor for PeerCommunicationIdentifier);
    *v9 = xmmword_10138C660;
    *(v9 + v7[6]) = 1;
    v11 = (v9 + v7[8]);
    *v11 = v5;
    v11[1] = v4;
    *(v9 + v7[9]) = *v21;
    *(v9 + v7[10]) = 0;
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
  }

  else
  {
    v15 = *(v0 + 176);
    v16 = *(v0 + 160);

    sub_100E8FB24();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100E83CE8()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[13];

  return _swift_task_switch(sub_100E83D60, v3, 0);
}

uint64_t sub_100E83D60()
{
  v1 = v0[33];
  v2 = v0[18];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100E83DD0()
{
  v1 = v0[22];
  v2 = v0[20];

  v3 = v0[27];
  v4 = v0[18];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100E83E54(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 96) = v14;
  *(v8 + 104) = v7;
  *(v8 + 80) = a7;
  *(v8 + 88) = v13;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 232) = a2;
  *(v8 + 40) = a1;
  v9 = type metadata accessor for PeerCommunicationIdentifier();
  *(v8 + 112) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100E83F04, v7, 0);
}

uint64_t sub_100E83F04()
{
  v24 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v3 _stripPotentialTokenURIWithToken:0];

  if (v4 && (static String._unconditionallyBridgeFromObjectiveC(_:)(), v4, _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(), *(v0 + 128) = v6, (*(v0 + 136) = v7) != 0))
  {
    *(v0 + 144) = v5;

    return _swift_task_switch(sub_100E841A0, 0, 0);
  }

  else
  {
    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 96);
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C1A0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = *(v0 + 232);
      v15 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_1000136BC(v13, v12, v23);
      *(v15 + 12) = 2080;
      v16 = sub_1008BA9C0(v14);
      v18 = sub_1000136BC(v16, v17, v23);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid messaging destination: %s for share type %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    sub_100E8FB24();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
    v20 = *(v0 + 120);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100E841A0()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_100E84280;
  v4 = *(v0 + 128);

  return sub_101269AA4(v2, v4, v1);
}

uint64_t sub_100E84280(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 152);
  v6 = *v3;
  v4[20] = a1;
  v4[21] = a2;

  if (v2)
  {
    v7 = v4[17];

    v8 = v4[15];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[13];

    return _swift_task_switch(sub_100E843D8, v11, 0);
  }
}

uint64_t sub_100E843D8()
{
  v50 = v0;
  v1 = *(v0 + 168);
  if (!v1)
  {
    v10 = *(v0 + 136);

    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 96);
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C1A0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 88);
      v15 = *(v0 + 96);
      v17 = *(v0 + 232);
      v18 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1000136BC(v16, v15, v49);
      *(v18 + 12) = 2080;
      v19 = sub_1008BA9C0(v17);
      v21 = sub_1000136BC(v19, v20, v49);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Invalid messaging destination: %s for share type %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    sub_100E8FB24();
    swift_allocError();
    v23 = 3;
    goto LABEL_19;
  }

  v2 = *(v0 + 232);
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      v3 = *(v0 + 160);
      v4 = *(v0 + 128);
      v5 = *(v0 + 112);
      v6 = *(v0 + 120);
      *v6 = *(v0 + 144);
      *(v6 + 8) = v4;
      *(v6 + 24) = v3;
      *(v6 + 32) = v1;
      swift_storeEnumTagMultiPayload();
      v7 = *(v0 + 136);
      v8 = qword_101694558;

      if (v8 != -1)
      {
        swift_once();
      }

      if (qword_10177A8F0 == *(v0 + 56) && qword_10177A8F8 == *(v0 + 64))
      {
        v9 = *(v0 + 136);
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v9 = *(v0 + 136);
        if ((v30 & 1) == 0)
        {
          v36 = *(v0 + 64);
          v37 = *(v0 + 136);

          v33 = *(v0 + 56);
          v35 = *(v0 + 64);
          goto LABEL_26;
        }
      }

      v31 = sub_100EB3708(*(v0 + 144), *(v0 + 128), v9);

      v32 = [v31 destination];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

LABEL_26:
      v38 = *(v0 + 120);
      v40 = *(v0 + 72);
      v39 = *(v0 + 80);
      v42 = *(v0 + 40);
      v41 = *(v0 + 48);
      v43 = type metadata accessor for MemberPeerTrust();
      v44 = v43[5];
      v45 = type metadata accessor for UUID();
      (*(*(v45 - 8) + 16))(&v42[v44], v41, v45);
      sub_100E90504(v38, &v42[v43[7]], type metadata accessor for PeerCommunicationIdentifier);
      *v42 = xmmword_10138C660;
      v42[v43[6]] = 1;
      v46 = &v42[v43[8]];
      *v46 = v33;
      v46[1] = v35;
      v47 = &v42[v43[9]];
      *v47 = v40;
      v47[1] = v39;
      sub_100017D5C(v40, v39);

      v29 = *(v0 + 8);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v2 != 4)
  {
LABEL_18:
    v27 = *(v0 + 136);

    sub_100E8FB24();
    swift_allocError();
    v23 = 5;
LABEL_19:
    *v22 = v23;
    swift_willThrow();
    v28 = *(v0 + 120);

    v29 = *(v0 + 8);
LABEL_20:

    return v29();
  }

  v24 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v25 = swift_task_alloc();
  *(v0 + 176) = v25;
  v26 = sub_1000BC4D4(&qword_1016BA708, &qword_1013EBDD0);
  *(v0 + 184) = v26;
  *v25 = v0;
  v25[1] = sub_100E848E4;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x80000001013EBBC0, sub_100E85014, 0, v26);
}

uint64_t sub_100E848E4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[21];
    v5 = v2[17];
    v6 = v2[13];

    v7 = sub_100E84F44;
    v8 = v6;
  }

  else
  {
    v8 = v2[13];
    v7 = sub_100E84A18;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100E84A18()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[2];
  v0[25] = v3;
  v0[4] = v3;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = async function pointer to Sequence.asyncFirst(where:)[1];
  v6 = swift_task_alloc();
  v0[27] = v6;
  v7 = sub_100E904A0();
  *v6 = v0;
  v6[1] = sub_100E84B04;
  v8 = v0[23];

  return Sequence.asyncFirst(where:)(v0 + 3, &unk_1013EBE18, v4, v8, v7);
}

uint64_t sub_100E84B04()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v12 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[21];
    v6 = v2[17];
    v7 = v2[13];

    v8 = sub_100E84FA8;
  }

  else
  {
    v9 = v2[25];
    v10 = v2[26];
    v7 = v2[13];

    v8 = sub_100E84C58;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100E84C58()
{
  v1 = *(v0 + 24);
  if (!v1 || (v2 = [*(v0 + 24) altDSID], v1, !v2))
  {
    v14 = *(v0 + 168);
    v15 = *(v0 + 136);

    sub_100E8FB24();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    v17 = *(v0 + 120);

    v18 = *(v0 + 8);
    goto LABEL_13;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v38 = *(v0 + 128);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *v6 = v8;
  *(v6 + 8) = v10;
  *(v6 + 16) = v5;
  *(v6 + 24) = v38;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
  swift_storeEnumTagMultiPayload();
  v11 = *(v0 + 136);
  v12 = qword_101694558;

  if (v12 != -1)
  {
    swift_once();
  }

  if (qword_10177A8F0 == *(v0 + 56) && qword_10177A8F8 == *(v0 + 64))
  {
    v13 = *(v0 + 136);
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = *(v0 + 136);
    if ((v19 & 1) == 0)
    {
      v25 = *(v0 + 64);
      v26 = *(v0 + 136);

      v22 = *(v0 + 56);
      v24 = *(v0 + 64);
      goto LABEL_12;
    }
  }

  v20 = sub_100EB3708(*(v0 + 144), *(v0 + 128), v13);

  v21 = [v20 destination];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

LABEL_12:
  v27 = *(v0 + 120);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);
  v31 = *(v0 + 40);
  v30 = *(v0 + 48);
  v32 = type metadata accessor for MemberPeerTrust();
  v33 = v32[5];
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 16))(&v31[v33], v30, v34);
  sub_100E90504(v27, &v31[v32[7]], type metadata accessor for PeerCommunicationIdentifier);
  *v31 = xmmword_10138C660;
  v31[v32[6]] = 1;
  v35 = &v31[v32[8]];
  *v35 = v22;
  v35[1] = v24;
  v36 = &v31[v32[9]];
  *v36 = v29;
  v36[1] = v28;
  sub_100017D5C(v29, v28);

  v18 = *(v0 + 8);
LABEL_13:

  return v18();
}

uint64_t sub_100E84F44()
{
  v1 = v0[24];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100E84FA8()
{
  v1 = v0[25];

  v2 = v0[28];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100E85040(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return _swift_task_switch(sub_100E85068, 0, 0);
}

uint64_t sub_100E85068()
{
  v1 = [*(v0 + 32) appleID];
  if (v1 && (v2 = v1, static String._unconditionallyBridgeFromObjectiveC(_:)(), v2, _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(), (*(v0 + 40) = v5) != 0))
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    if (qword_1016944B8 != -1)
    {
      swift_once();
    }

    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    *v9 = v0;
    v9[1] = sub_100E851CC;

    return sub_101269AA4(v6, v7, v8);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_100E851CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 48);
  v5 = *(*v3 + 40);
  v6 = *v3;
  v6[7] = a1;
  v6[8] = a2;

  if (v2)
  {
    v7 = v6[1];

    return v7(0);
  }

  else
  {

    return _swift_task_switch(sub_100E85324, 0, 0);
  }
}

uint64_t sub_100E85324()
{
  v1 = v0[8];
  if (v1)
  {
    if (v0[7] == v0[2] && v1 == v0[3])
    {
      v4 = 1;
    }

    else
    {
      v3 = v0[8];
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_100E853C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 208) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = type metadata accessor for UUID();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v9 = *(*(type metadata accessor for PeerTrustAckEnvelopeV1(0) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100E854E0, v4, 0);
}