uint64_t sub_1010ADCF0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v78 = sub_1000BC4D4(&qword_1016C6A00, &qword_101401F30);
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v78);
  v8 = &v34 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010AE4A4();
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
  sub_1010AE4F8(&v55, v65);
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
  result = sub_1010AE530(v65);
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

unint64_t sub_1010AE4A4()
{
  result = qword_1016C6A08;
  if (!qword_1016C6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A08);
  }

  return result;
}

unint64_t sub_1010AE560()
{
  result = qword_1016C6A18;
  if (!qword_1016C6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A18);
  }

  return result;
}

unint64_t sub_1010AE708()
{
  result = qword_1016C6A20;
  if (!qword_1016C6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A20);
  }

  return result;
}

unint64_t sub_1010AE760()
{
  result = qword_1016C6A28;
  if (!qword_1016C6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A28);
  }

  return result;
}

unint64_t sub_1010AE7B8()
{
  result = qword_1016C6A30;
  if (!qword_1016C6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A30);
  }

  return result;
}

unint64_t sub_1010AE810()
{
  result = qword_1016C6A38;
  if (!qword_1016C6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A38);
  }

  return result;
}

unint64_t sub_1010AE868()
{
  result = qword_1016C6A40;
  if (!qword_1016C6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A40);
  }

  return result;
}

unint64_t sub_1010AE8C0()
{
  result = qword_1016C6A48;
  if (!qword_1016C6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A48);
  }

  return result;
}

unint64_t sub_1010AE918()
{
  result = qword_1016C6A50;
  if (!qword_1016C6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A50);
  }

  return result;
}

unint64_t sub_1010AE970()
{
  result = qword_1016C6A58;
  if (!qword_1016C6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A58);
  }

  return result;
}

unint64_t sub_1010AE9C8()
{
  result = qword_1016C6A60;
  if (!qword_1016C6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A60);
  }

  return result;
}

unint64_t sub_1010AEA20()
{
  result = qword_1016C6A68;
  if (!qword_1016C6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A68);
  }

  return result;
}

unint64_t sub_1010AEA78()
{
  result = qword_1016C6A70;
  if (!qword_1016C6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A70);
  }

  return result;
}

unint64_t sub_1010AEAD0()
{
  result = qword_1016C6A78;
  if (!qword_1016C6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A78);
  }

  return result;
}

unint64_t sub_1010AEB28()
{
  result = qword_1016C6A80;
  if (!qword_1016C6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A80);
  }

  return result;
}

unint64_t sub_1010AEB80()
{
  result = qword_1016C6A88;
  if (!qword_1016C6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A88);
  }

  return result;
}

unint64_t sub_1010AEBD8()
{
  result = qword_1016C6A90;
  if (!qword_1016C6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A90);
  }

  return result;
}

unint64_t sub_1010AEC30()
{
  result = qword_1016C6A98;
  if (!qword_1016C6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A98);
  }

  return result;
}

unint64_t sub_1010AEC88()
{
  result = qword_1016C6AA0;
  if (!qword_1016C6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AA0);
  }

  return result;
}

unint64_t sub_1010AECE0()
{
  result = qword_1016C6AA8;
  if (!qword_1016C6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AA8);
  }

  return result;
}

unint64_t sub_1010AED38()
{
  result = qword_1016C6AB0;
  if (!qword_1016C6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AB0);
  }

  return result;
}

unint64_t sub_1010AED90()
{
  result = qword_1016C6AB8;
  if (!qword_1016C6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AB8);
  }

  return result;
}

unint64_t sub_1010AEDE8()
{
  result = qword_1016C6AC0;
  if (!qword_1016C6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AC0);
  }

  return result;
}

unint64_t sub_1010AEE40()
{
  result = qword_1016C6AC8;
  if (!qword_1016C6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AC8);
  }

  return result;
}

unint64_t sub_1010AEE98()
{
  result = qword_1016C6AD0;
  if (!qword_1016C6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AD0);
  }

  return result;
}

unint64_t sub_1010AEEF0()
{
  result = qword_1016C6AD8;
  if (!qword_1016C6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AD8);
  }

  return result;
}

unint64_t sub_1010AEF48()
{
  result = qword_1016C6AE0;
  if (!qword_1016C6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AE0);
  }

  return result;
}

unint64_t sub_1010AEFA0()
{
  result = qword_1016C6AE8;
  if (!qword_1016C6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AE8);
  }

  return result;
}

unint64_t sub_1010AEFF8()
{
  result = qword_1016C6AF0;
  if (!qword_1016C6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AF0);
  }

  return result;
}

unint64_t sub_1010AF050()
{
  result = qword_1016C6AF8;
  if (!qword_1016C6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AF8);
  }

  return result;
}

unint64_t sub_1010AF0A8()
{
  result = qword_1016C6B00;
  if (!qword_1016C6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B00);
  }

  return result;
}

unint64_t sub_1010AF100()
{
  result = qword_1016C6B08;
  if (!qword_1016C6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B08);
  }

  return result;
}

unint64_t sub_1010AF158()
{
  result = qword_1016C6B10;
  if (!qword_1016C6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B10);
  }

  return result;
}

unint64_t sub_1010AF1B0()
{
  result = qword_1016C6B18;
  if (!qword_1016C6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B18);
  }

  return result;
}

unint64_t sub_1010AF208()
{
  result = qword_1016C6B20;
  if (!qword_1016C6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B20);
  }

  return result;
}

unint64_t sub_1010AF260()
{
  result = qword_1016C6B28;
  if (!qword_1016C6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B28);
  }

  return result;
}

unint64_t sub_1010AF2B8()
{
  result = qword_1016C6B30;
  if (!qword_1016C6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B30);
  }

  return result;
}

unint64_t sub_1010AF310()
{
  result = qword_1016C6B38;
  if (!qword_1016C6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B38);
  }

  return result;
}

unint64_t sub_1010AF368()
{
  result = qword_1016C6B40;
  if (!qword_1016C6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B40);
  }

  return result;
}

unint64_t sub_1010AF3C0()
{
  result = qword_1016C6B48;
  if (!qword_1016C6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B48);
  }

  return result;
}

unint64_t sub_1010AF418()
{
  result = qword_1016C6B50;
  if (!qword_1016C6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B50);
  }

  return result;
}

unint64_t sub_1010AF470()
{
  result = qword_1016C6B58;
  if (!qword_1016C6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B58);
  }

  return result;
}

unint64_t sub_1010AF4C8()
{
  result = qword_1016C6B60;
  if (!qword_1016C6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B60);
  }

  return result;
}

unint64_t sub_1010AF520()
{
  result = qword_1016C6B68;
  if (!qword_1016C6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B68);
  }

  return result;
}

unint64_t sub_1010AF578()
{
  result = qword_1016C6B70;
  if (!qword_1016C6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B70);
  }

  return result;
}

unint64_t sub_1010AF5D0()
{
  result = qword_1016C6B78;
  if (!qword_1016C6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B78);
  }

  return result;
}

unint64_t sub_1010AF628()
{
  result = qword_1016C6B80;
  if (!qword_1016C6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B80);
  }

  return result;
}

unint64_t sub_1010AF680()
{
  result = qword_1016C6B88;
  if (!qword_1016C6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B88);
  }

  return result;
}

unint64_t sub_1010AF6D8()
{
  result = qword_1016C6B90;
  if (!qword_1016C6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B90);
  }

  return result;
}

unint64_t sub_1010AF730()
{
  result = qword_1016C6B98;
  if (!qword_1016C6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B98);
  }

  return result;
}

unint64_t sub_1010AF788()
{
  result = qword_1016C6BA0;
  if (!qword_1016C6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BA0);
  }

  return result;
}

unint64_t sub_1010AF7E0()
{
  result = qword_1016C6BA8;
  if (!qword_1016C6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BA8);
  }

  return result;
}

unint64_t sub_1010AF838()
{
  result = qword_1016C6BB0;
  if (!qword_1016C6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BB0);
  }

  return result;
}

unint64_t sub_1010AF890()
{
  result = qword_1016C6BB8;
  if (!qword_1016C6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BB8);
  }

  return result;
}

unint64_t sub_1010AF8E8()
{
  result = qword_1016C6BC0;
  if (!qword_1016C6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BC0);
  }

  return result;
}

unint64_t sub_1010AF940()
{
  result = qword_1016C6BC8;
  if (!qword_1016C6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BC8);
  }

  return result;
}

unint64_t sub_1010AF998()
{
  result = qword_1016C6BD0;
  if (!qword_1016C6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BD0);
  }

  return result;
}

unint64_t sub_1010AF9F0()
{
  result = qword_1016C6BD8;
  if (!qword_1016C6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BD8);
  }

  return result;
}

unint64_t sub_1010AFA48()
{
  result = qword_1016C6BE0;
  if (!qword_1016C6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BE0);
  }

  return result;
}

unint64_t sub_1010AFAA0()
{
  result = qword_1016C6BE8;
  if (!qword_1016C6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BE8);
  }

  return result;
}

unint64_t sub_1010AFAF8()
{
  result = qword_1016C6BF0;
  if (!qword_1016C6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BF0);
  }

  return result;
}

uint64_t sub_1010AFB60(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C6E48, &qword_1014035F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010B306C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1008CDBB0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(type metadata accessor for ShareAttemptTracker.AttemptKey(0) + 20);
    v13[13] = 1;
    type metadata accessor for UUID();
    sub_10000984C(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1010AFD30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for UUID();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&qword_1016C6E58, &qword_1014035F8);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1010B306C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_1008CDB5C();
    v18 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_10000984C(&qword_101698300, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v6, v17);
    sub_1010B30C0(v19, v25);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_1010B0038()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 0x546567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1010B0080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_1010B0168(uint64_t a1)
{
  v2 = sub_1010B306C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010B01A4(uint64_t a1)
{
  v2 = sub_1010B306C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1010B0210(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_101403718[*v1]);
  v3 = *(a1 + 20);
  type metadata accessor for UUID();
  sub_10000984C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1010B02C8(uint64_t a1, uint64_t a2)
{
  Hasher._combine(_:)(dword_101403718[*v2]);
  v4 = *(a2 + 20);
  type metadata accessor for UUID();
  sub_10000984C(&qword_1016967B0, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1010B0368(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_101403718[*v2]);
  v4 = *(a2 + 20);
  type metadata accessor for UUID();
  sub_10000984C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1010B041C(char *a1, char *a2, uint64_t a3)
{
  if (dword_101403718[*a1] != dword_101403718[*a2])
  {
    return 0;
  }

  v3 = *(a3 + 20);
  return static UUID.== infix(_:_:)();
}

uint64_t sub_1010B0454()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_1016C6BF8);
  sub_1000076D4(v0, qword_1016C6BF8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

void *sub_1010B05B0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL, v1);
  v13 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = Data.init(contentsOf:options:)();
    v18 = v17;
    v19 = type metadata accessor for PropertyListDecoder();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000BC4D4(&qword_1016C6D88, &unk_101403518);
    sub_1010B2E20();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v2 + 8))(v5, v1);

    sub_100016590(v16, v18);
    return v27[2];
  }

  static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  v23 = URL.path.getter();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  os_log(_:dso:log:_:_:)();

  (*(v2 + 8))(v5, v1);
  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1010B0AC0(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - v9;
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 24);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
    v20 = v4[2];
    v50 = OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL;
    v51 = v1;
    v53 = v20;
    v20(v10, v1 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL, v3);
    URL.deletingLastPathComponent()();
    v21 = v3;
    v22 = v4[1];
    v22(v10, v3);
    static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
    v22(v12, v3);
    v23 = type metadata accessor for PropertyListEncoder();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = PropertyListEncoder.init()();
    v54 = a1;
    sub_1000BC4D4(&qword_1016C6D88, &unk_101403518);
    sub_1010B2D34();
    v27 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v29 = v28;

    v48 = v12;
    v49 = v26;
    v30 = v29;
    v32 = v50;
    v31 = v51;
    v33 = v52;
    v53(v52, v51 + v50, v21);
    Data.write(to:excludeFromBackup:options:)();
    v46 = v27;
    v47 = v30;
    v38 = v22;
    v22(v33, v21);
    LODWORD(v52) = static os_log_type_t.info.getter();
    v39 = v21;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101385D80;
    v41 = v48;
    v53(v48, v31 + v32, v21);
    sub_10000984C(&qword_1016B14E0, &type metadata accessor for URL);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v38(v41, v39);
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_100008C00();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    os_log(_:dso:log:_:_:)();

    sub_100016590(v46, v47);
  }

  else
  {
    __break(1u);
    swift_once();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    v54 = v13;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100008C00();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1010B1080(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for URL();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  __chkstk_darwin(v3);
  v49 = v5;
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v48 = &v44 - v8;
  v9 = sub_1000BC4D4(&qword_1016C2F20, &qword_1013F7790);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v50 = &v44 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v19 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v20 = sub_101074748(v58);

  *(v2 + 16) = v20 * 60.0;
  v21 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v58 = _swiftEmptyArrayStorage;
  sub_10000984C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  v22 = v2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v46 + 104))(v45, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v47);
  v46 = v21;
  *(v2 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v47 = OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_systemClockChangedSubscription;
  *(v2 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_systemClockChangedSubscription) = 0;
  v23 = OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_automaticTimeEnabled;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v24 = qword_10177CEA0;
  v25 = *(qword_10177CEA0 + 48);

  AnyCurrentValuePublisher.value.getter();

  *(v2 + v23) = v58;
  v27 = v54;
  v26 = v55;
  v45 = *(v54 + 16);
  (v45)(v2 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL, v56, v55);
  v28 = *(v24 + 48);

  v29 = AnyCurrentValuePublisher.publisher.getter();

  v58 = v29;
  v57 = *(v2 + 24);
  v30 = v57;
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = v48;
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  v44 = v30;
  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  v33 = v22;
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
  sub_1004682F0();
  v34 = v50;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v32, &unk_1016B0FE0, &unk_101391980);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v51;
  v37 = v56;
  (v45)(v51, v56, v26);
  v38 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  (*(v27 + 32))(v39 + v38, v36, v26);
  sub_1000041A4(&unk_1016B1070, &qword_1016C2F20, &qword_1013F7790);
  v40 = v53;
  v41 = Publisher<>.sink(receiveValue:)();

  (*(v27 + 8))(v37, v26);
  (*(v52 + 8))(v34, v40);
  v42 = *(v33 + v47);
  *(v33 + v47) = v41;

  return v33;
}

uint64_t sub_1010B17E4(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1 == *(result + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_automaticTimeEnabled))
    {
    }

    else
    {
      *(result + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_automaticTimeEnabled) = v1;
      v3 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v4);
      v6 = v5;
      v14 = 0;
      v7 = [v3 removeItemAtURL:v5 error:&v14];

      if (v7)
      {
        v8 = v14;
      }

      else
      {
        v9 = v14;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_101385D80;
      type metadata accessor for URL();
      sub_10000984C(&qword_1016B14E0, &type metadata accessor for URL);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100008C00();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      os_log(_:dso:log:_:_:)();
    }
  }

  return result;
}

uint64_t sub_1010B1A34@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v27 - v8;
  v10 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 28);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 16))(&v14[v15], a2, v16);
  *v14 = a1;
  v17 = sub_1010B05B0();
  if (v17[2] && (v18 = sub_100772DDC(v14), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = v17[7];
    v22 = type metadata accessor for Date();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v9, v21 + *(v23 + 72) * v20, v22);
    sub_1010B2B9C(v14);

    (*(v23 + 56))(v9, 0, 1, v22);
    return (*(v23 + 32))(a3, v9, v22);
  }

  else
  {

    sub_1010B2B9C(v14);
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v9, 1, 1, v25);
    static Date.distantPast.getter();
    result = (*(v26 + 48))(v9, 1, v25);
    if (result != 1)
    {
      return sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
    }
  }

  return result;
}

uint64_t sub_1010B1D04(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v20 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 24);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, v20, v5);
  v13 = (*(v10 + 80) + 25) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v21;
  (*(v10 + 32))(v15 + v13, v12, v9);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1010B2C60;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101665318;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v22, v17);
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010B2004(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v18 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 28);
  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 16))(&v22[v23], a3, v24);
  *v22 = a2;
  (*(v7 + 16))(v17, v30, v6);
  (*(v7 + 56))(v17, 0, 1, v6);
  v32 = sub_1010B05B0();
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
    sub_1001E6014(v22, v15);
    sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
    sub_1010B2B9C(v22);
    v25 = v32;
  }

  else
  {
    (*(v7 + 32))(v10, v17, v6);
    v26 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v26;
    sub_101002A7C(v10, v22, isUniquelyReferenced_nonNull_native);
    sub_1010B2B9C(v22);
    v25 = v31;
  }

  return sub_1010B0AC0(v25);
}

uint64_t sub_1010B22E4(uint64_t a1, char a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *(v2 + 24);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 25) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = a2;
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1010B2BF8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_1016652A0;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010B2510(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17 - v12;
  v14 = *(v6 + 28);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(&v9[v14], a3, v15);
  *v9 = a2;
  v18 = sub_1010B05B0();
  sub_1007AA39C(v9, v13);
  sub_1010B2B9C(v9);
  sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
  return sub_1010B0AC0(v18);
}

uint64_t sub_1010B2678(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v9);
  Date.timeIntervalSince(_:)();
  v11 = v10;
  (*(v6 + 8))(v9, v5);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  if (a2 > 5u)
  {
    if (a2 - 10 >= 4 && a2 != 6)
    {
      goto LABEL_17;
    }

LABEL_11:

    v17 = *(v3 + 16);
    goto LABEL_12;
  }

  if (a2 < 2u)
  {
    goto LABEL_11;
  }

  if (a2 != 5)
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = v27;
  v14 = sub_101073EC0(v27);
  v15 = sub_101073EDC(v13);

  v16 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v16 * 60) >> 64 != (60 * v16) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = (60 * v16);
LABEL_12:
  static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10138BBE0;
  v19 = Double.description.getter();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  v22 = sub_100008C00();
  *(v18 + 64) = v22;
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  v23 = Double.description.getter();
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v22;
  *(v18 + 72) = v23;
  *(v18 + 80) = v24;
  os_log(_:dso:log:_:_:)();

  return v17 < v11;
}

uint64_t sub_1010B29E0()
{
  v1 = OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_systemClockChangedSubscription);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1010B2ABC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1010B2B9C(uint64_t a1)
{
  v2 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1010B2BF8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return sub_1010B2510(v2, v3, v4);
}

uint64_t sub_1010B2C60()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1010B2004(v5, v6, v0 + v2, v7);
}

unint64_t sub_1010B2D34()
{
  result = qword_1016C6D90;
  if (!qword_1016C6D90)
  {
    sub_1000BC580(&qword_1016C6D88, &unk_101403518);
    sub_10000984C(&qword_1016C6D98, type metadata accessor for ShareAttemptTracker.AttemptKey);
    sub_10000984C(&unk_101697F60, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6D90);
  }

  return result;
}

unint64_t sub_1010B2E20()
{
  result = qword_1016C6DA0;
  if (!qword_1016C6DA0)
  {
    sub_1000BC580(&qword_1016C6D88, &unk_101403518);
    sub_10000984C(&qword_1016C6DA8, type metadata accessor for ShareAttemptTracker.AttemptKey);
    sub_10000984C(&qword_101697F40, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6DA0);
  }

  return result;
}

uint64_t sub_1010B2F0C(unsigned __int8 *a1)
{
  v3 = *(*(type metadata accessor for URL() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_1010B17E4(a1);
}

uint64_t sub_1010B2FA8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1010B306C()
{
  result = qword_1016C6E50;
  if (!qword_1016C6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6E50);
  }

  return result;
}

uint64_t sub_1010B30C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1010B3138()
{
  result = qword_1016C6E60;
  if (!qword_1016C6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6E60);
  }

  return result;
}

unint64_t sub_1010B3190()
{
  result = qword_1016C6E68;
  if (!qword_1016C6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6E68);
  }

  return result;
}

unint64_t sub_1010B31E8()
{
  result = qword_1016C6E70;
  if (!qword_1016C6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6E70);
  }

  return result;
}

uint64_t sub_1010B3244()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C5F8);
  sub_1000076D4(v0, qword_10177C5F8);
  return Logger.init(subsystem:category:)();
}

void *sub_1010B32C8(uint64_t a1)
{
  v15 = a1;
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
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = sub_1000BC488();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1010B4310(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[3] = 0xD000000000000012;
  v1[4] = 0x8000000101351C20;
  v1[5] = 47;
  v1[6] = 0xE100000000000000;
  v11 = v15;
  sub_1010B358C(v15);
  v12 = type metadata accessor for FMNAccountType();
  (*(*(v12 - 8) + 8))(v11, v12);
  return v1;
}

uint64_t sub_1010B358C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMNAccountType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v20[1] = *(v2 + 16);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v13 + 32))(v17 + v16, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_1010B39F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101665470;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1010B4310(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v7, v4);
  (*(v21 + 8))(v11, v22);
}

uint64_t sub_1010B3940(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1010B3A58(a2);
    v7 = v6;
    v9 = v8;
    v10 = v4[4];
    v4[3] = v5;
    v4[4] = v11;

    v12 = v4[6];
    v4[5] = v7;
    v4[6] = v9;
  }

  return result;
}

uint64_t sub_1010B39F4()
{
  v1 = *(type metadata accessor for FMNAccountType() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1010B3940(v2, v3);
}

unint64_t sub_1010B3A58(uint64_t a1)
{
  v2 = type metadata accessor for FMNAccountType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v77 = &v67[-v9];
  __chkstk_darwin(v8);
  v11 = &v67[-v10];
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v67[-v14];
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v78 = &v67[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v22 = &v67[-v21];
  type metadata accessor for FMNAuthenticationProvider();
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1002815B4(v15);
LABEL_9:
    if (qword_101695220 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177C5F8);
    (*(v3 + 16))(v7, a1, v2);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v3;
      v44 = swift_slowAlloc();
      v79 = v44;
      *v42 = 136446210;
      sub_1010B4310(&qword_1016C6F68, &type metadata accessor for FMNAccountType);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v43 + 8))(v7, v2);
      v48 = sub_1000136BC(v45, v47, &v79);

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "AccountURL[%{public}s]: Fallback to hard-coded host name.", v42, 0xCu);
      sub_100007BAC(v44);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    return 0xD000000000000012;
  }

  (*(v17 + 32))(v22, v15, v16);
  v23 = URL.host.getter();
  if (!v24)
  {
    (*(v17 + 8))(v22, v16);
    goto LABEL_9;
  }

  v75 = v23;
  v76 = v24;
  if (qword_101695220 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000076D4(v25, qword_10177C5F8);
  v71 = *(v3 + 16);
  v71(v11, a1, v2);
  v72 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v74 = v3;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v69 = v27;
    v31 = v30;
    v70 = swift_slowAlloc();
    v79 = v70;
    *v31 = 136446210;
    sub_1010B4310(&qword_1016C6F68, &type metadata accessor for FMNAccountType);
    v68 = v28;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v3;
    v35 = v34;
    v73 = *(v33 + 8);
    v73(v11, v2);
    v36 = sub_1000136BC(v32, v35, &v79);

    v37 = v31;
    *(v31 + 4) = v36;
    v38 = v69;
    _os_log_impl(&_mh_execute_header, v69, v68, "AccountURL[%{public}s]: Using host name and path from authenticated setup bag.", v37, 0xCu);
    sub_100007BAC(v70);
  }

  else
  {

    v73 = *(v3 + 8);
    v73(v11, v2);
  }

  v50 = v77;
  v71(v77, a1, v2);
  v51 = v78;
  (*(v17 + 16))(v78, v22, v16);
  v52 = v76;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = v50;
    v56 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v79 = v72;
    *v56 = 136446722;
    sub_1010B4310(&qword_1016C6F68, &type metadata accessor for FMNAccountType);
    LODWORD(v71) = v54;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    v73(v55, v2);
    v60 = sub_1000136BC(v57, v59, &v79);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_1000136BC(v75, v52, &v79);
    *(v56 + 22) = 2080;
    v61 = v78;
    v62 = URL.path.getter();
    v64 = v63;
    v65 = *(v17 + 8);
    v65(v61, v16);
    v66 = sub_1000136BC(v62, v64, &v79);

    *(v56 + 24) = v66;
    _os_log_impl(&_mh_execute_header, v53, v71, "AccountURL[%{public}s]: hostName: [%s] path: [%s].", v56, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v65 = *(v17 + 8);
    v65(v51, v16);
    v73(v50, v2);
  }

  URL.path.getter();
  v65(v22, v16);
  return v75;
}

uint64_t sub_1010B4310(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1010B4358()
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
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12searchpartyd14NetworkMonitor____lazy_storage___callbackQueue;
  v12 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor____lazy_storage___callbackQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor____lazy_storage___callbackQueue);
  }

  else
  {
    v14 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v19[1] = "$__lazy_storage_$_callbackQueue";
    v19[2] = v14;
    (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
    static DispatchQoS.unspecified.getter();
    v19[3] = _swiftEmptyArrayStorage;
    sub_100003D24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

uint64_t NetworkMonitor.startMonitoring(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v21);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v3 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  v15 = *(v3 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  v16 = *(v3 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock + 8);
  *v14 = a1;
  v14[1] = a2;

  sub_1000BB27C(v15);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1010B4AAC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016654C0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v22 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v21);
}

uint64_t sub_1010B4900()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() sharedDefaultEvaluator];
    v3 = *&v1[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator];
    *&v1[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator] = v2;

    if (v2)
    {
      v4 = v2;
      v5 = String._bridgeToObjectiveC()();
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v12 = sub_1010B5364;
      v13 = v6;
      *&v10 = _NSConcreteStackBlock;
      *(&v10 + 1) = 1107296256;
      *&v11 = sub_1010B5064;
      *(&v11 + 1) = &unk_101665510;
      v7 = _Block_copy(&v10);
      v8 = v1;

      v9 = [v4 addKVOBlockForKeyPath:v5 options:5 handler:v7];

      _Block_release(v7);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    return sub_1004AB638(&v10);
  }

  return result;
}

void sub_1010B4AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v40 = *(v41 - 8);
  v18 = *(v40 + 64);
  v19 = __chkstk_darwin(a1);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19 == 1752457584 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v38 = v9;
    v39 = v8;
    v22 = *&a5[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator];
    v37 = v14;
    if (v22)
    {
      v23 = [v22 path];
      v24 = [v23 status];

      v25 = v24 == 1;
    }

    else
    {
      v25 = 0;
    }

    static os_log_type_t.info.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    v27 = sub_100008C00();
    v28 = 1314344772;
    if (v25)
    {
      v28 = 20565;
    }

    v29 = 0xE400000000000000;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v27;
    if (v25)
    {
      v29 = 0xE200000000000000;
    }

    *(v26 + 32) = v28;
    *(v26 + 40) = v29;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v30 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v31 = sub_1010B4358();
    v32 = swift_allocObject();
    *(v32 + 16) = a5;
    *(v32 + 24) = v25;
    v45 = sub_1010B536C;
    v46 = v32;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v44 = sub_100006684;
    *(&v44 + 1) = &unk_101665560;
    v33 = _Block_copy(&aBlock);
    v34 = a5;
    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v37 + 8))(v17, v13);
    (*(v40 + 8))(v21, v41);

    v35 = [objc_opt_self() defaultCenter];
    String._bridgeToObjectiveC()();
    aBlock = 0u;
    v44 = 0u;
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v12, v39);
    [v35 postNotification:isa];
  }
}

uint64_t sub_1010B4FE8(uint64_t result, char a2)
{
  v2 = *(result + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  if (v2)
  {
    v4 = *(result + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock + 8);

    v2(a2 & 1);

    return sub_1000BB27C(v2);
  }

  return result;
}

uint64_t sub_1010B5064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v11[3] = swift_getObjectType();
  v11[0] = a3;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v5(v6, v8, v11, v9);

  return sub_100007BAC(v11);
}

Swift::Void __swiftcall NetworkMonitor.stopMonitoring()()
{
  v1 = (v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_1000BB27C(v2);
  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator);
  *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator) = 0;
}

Swift::Bool __swiftcall NetworkMonitor.isNetworkUp()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator);
  if (v1)
  {
    v2 = [v1 path];
    v3 = [v2 status];

    LOBYTE(v1) = ((v3 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return v1;
}

id NetworkMonitor.init()()
{
  v1 = &v0[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator] = 0;
  *&v0[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor____lazy_storage___callbackQueue] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NetworkMonitor();
  return objc_msgSendSuper2(&v3, "init");
}

id NetworkMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1010B5388()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C610 = result;
  return result;
}

uint64_t sub_1010B53F8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1010B7964;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_100012908(v3);
}

uint64_t sub_1010B5474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_100012908(a2);
  return sub_1000BB27C(v3);
}

void *sub_1010B54C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v33[2] = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v4[6] = v15;
  v44 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v45 = v4;
  v34 = "Removing key a: %@ s: %@";
  v4[7] = 0;
  v4[8] = 0;
  v16 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v42 = *(v11 + 104);
  v35 = v11 + 104;
  v43 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v42(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  v40 = sub_1010B79B8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v17 = sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45[9] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34 = "com.apple.searchpartyd.cryptor";
  v18 = v16;
  v20 = v41;
  v19 = v42;
  v42(v14, v18, v41);
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  v33[0] = v5;
  v33[1] = v17;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45[10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v34 = "partyd.cryptor.purge";
  v19(v14, v43, v20);
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v14;
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = v45;
  v45[11] = v22;
  v42(v21, v43, v41);
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23[12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = type metadata accessor for PropertyListEncoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v23[13] = PropertyListEncoder.init()();
  v27 = type metadata accessor for PropertyListDecoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v23[14] = PropertyListDecoder.init()();
  *(v23 + 15) = xmmword_10138BBF0;
  v30 = v37;
  v23[2] = v36;
  v23[3] = v30;
  v31 = v39;
  v23[4] = v38;
  v23[5] = v31;
  return v23;
}

uint64_t sub_1010B59A4(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695228 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(a1 + 48);
  sub_1000BC4D4(&qword_1016C7138, &qword_101403808);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v4)
  {
    v4(result);
    return sub_1000BB27C(v4);
  }

  return result;
}

void sub_1010B5B7C(void *a1)
{
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &aBlock - v8;
  if (a1[16] >> 60 == 15)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v26 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v31)
    {
      v10 = a1[10];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1010B7A78;
      *(v11 + 24) = a1;
      v29 = sub_10040B9F8;
      v30 = v11;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_10013FE14;
      v28 = &unk_101665600;
      v12 = _Block_copy(&aBlock);

      dispatch_sync(v10, v12);
      _Block_release(v12);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if ((v10 & 1) == 0)
      {
        sub_1010B6ADC();
        return;
      }

      __break(1u);
      goto LABEL_17;
    }

    static SystemInfo.lockState.getter();
    (*(v3 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
    sub_1010B79B8(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v13 = *(v3 + 8);
    v13(v7, v2);
    v13(v9, v2);
    if (aBlock == v31)
    {
      static os_log_type_t.default.getter();
      if (qword_101695228 == -1)
      {
LABEL_9:
        os_log(_:dso:log:_:_:)();
        return;
      }

LABEL_17:
      swift_once();
      goto LABEL_9;
    }

    v14 = a1[2];
    v15 = a1[3];
    v16 = a1[4];
    v17 = a1[5];
    v18 = static Keychain.data(account:service:)();
    if (v19 >> 60 == 15)
    {
      v20 = a1[10];
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1010B7940;
      *(v21 + 24) = a1;
      v29 = sub_1000D2FB0;
      v30 = v21;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_10013FE14;
      v28 = &unk_1016655B0;
      v22 = _Block_copy(&aBlock);

      dispatch_sync(v20, v22);
      _Block_release(v22);
      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      if (v20)
      {
        __break(1u);
      }

      else
      {
        sub_1010B6ADC();
        static os_log_type_t.default.getter();
        if (qword_101695228 == -1)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_17;
    }

    v23 = a1[15];
    v24 = a1[16];
    a1[15] = v18;
    a1[16] = v19;
    sub_100006654(v23, v24);
  }
}

uint64_t sub_1010B621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1010B798C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101665678;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1010B79B8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v9, v6);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_1010B64F4()
{
  Transaction.capture()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1010B6ADC();
  }

  return result;
}

uint64_t sub_1010B6554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1010B79B0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101665718;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1010B79B8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v9, v6);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_1010B682C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    Transaction.capture()();
    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
      v2 = v1[2];
      v3 = v1[3];
      v5 = v1[4];
      v4 = v1[5];

      static Keychain.deleteData(account:service:)();
    }

    v6 = v1[15];
    v7 = v1[16];
    *(v1 + 15) = xmmword_10138BBF0;
    sub_100006654(v6, v7);
    static os_log_type_t.default.getter();
    if (qword_101695228 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10138BBE0;
    v10 = v1[2];
    v9 = v1[3];
    *(v8 + 56) = &type metadata for String;
    v11 = sub_100008C00();
    *(v8 + 64) = v11;
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;
    v12 = v1[4];
    v13 = v1[5];
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v11;
    *(v8 + 72) = v12;
    *(v8 + 80) = v13;

    os_log(_:dso:log:_:_:)();

    v14 = v1[10];
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1010B7A78;
    *(v15 + 24) = v1;
    v17[4] = sub_10040B9F8;
    v17[5] = v15;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10013FE14;
    v17[3] = &unk_101665768;
    v16 = _Block_copy(v17);

    dispatch_sync(v14, v16);
    _Block_release(v16);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1010B6ADC()
{
  v1 = type metadata accessor for HashAlgorithm();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v0[9];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (static SystemInfo.underTest.getter())
    {
      v13 = String.utf8Data.getter();
      v15 = v14;
      (*(v2 + 104))(v5, enum case for HashAlgorithm.sha256(_:), v1);
      v16 = Data.hash(algorithm:)();
      v18 = v17;
      sub_100016590(v13, v15);
      (*(v2 + 8))(v5, v1);
      v19 = v0[15];
      v20 = v0[16];
      v0[15] = v16;
      v0[16] = v18;
      sub_100006654(v19, v20);
    }

    else if (v0[16] >> 60 == 15)
    {
      v21 = objc_autoreleasePoolPush();
      sub_1010B6D28(v0);
      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1010B6D28(void *a1)
{
  v3 = type metadata accessor for Keychain.DataProtectionClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v19[0] = a1[5];
  v19[1] = v8;
  v11 = static Keychain.data(account:service:)();
  if (v1)
  {
  }

  else
  {
    v13 = v12;
    if (v12 >> 60 != 15)
    {
      v14 = v11;
      goto LABEL_5;
    }
  }

  v14 = static Data.random(bytes:)();
  v13 = v15;
  v19[2] = v14;
  v19[3] = v15;
  (*(v4 + 104))(v7, enum case for Keychain.DataProtectionClass.c(_:), v3);
  sub_1000E0A3C();
  static Keychain.set<A>(data:account:service:dataProtectionClass:)();
  (*(v4 + 8))(v7, v3);
LABEL_5:
  v16 = a1[15];
  v17 = a1[16];
  a1[15] = v14;
  a1[16] = v13;
  return sub_100006654(v16, v17);
}

uint64_t sub_1010B6FB0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = type metadata accessor for EncryptedData();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a3 & 1) == 0)
  {
    v12 = v5[6];
    sub_1000BC4D4(&qword_1016C7138, &qword_101403808);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (aBlock)
    {
      sub_1000BB27C(aBlock);
      sub_1010B78EC();
      swift_allocError();
      v14 = 1;
      goto LABEL_7;
    }
  }

  v28 = v8;
  v12 = v5[9];
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10088FFBC;
  *(v15 + 24) = v5;
  v26 = sub_10040B9F8;
  v27 = v15;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10013FE14;
  v25 = &unk_1016656C8;
  v16 = _Block_copy(&aBlock);

  dispatch_sync(v12, v16);
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
    OS_dispatch_queue.sync<A>(execute:)();
    v18 = v23;
    if (v23 >> 60 != 15)
    {
      v19 = aBlock;
      v20 = Data.spEncrypt(key:ivLength:)();
      if (v4)
      {
        sub_100006654(v19, v18);
      }

      else
      {
        v21 = v5[11];
        __chkstk_darwin(v20);
        *(&aBlock - 2) = v5;
        *(&aBlock - 1) = v11;
        OS_dispatch_queue.sync<A>(execute:)();
        sub_100006654(v19, v18);
        v12 = aBlock;
        (*(v28 + 8))(v11, v7);
      }

      return v12;
    }

    sub_1010B78EC();
    swift_allocError();
    v14 = 3;
LABEL_7:
    *v13 = v14;
    swift_willThrow();
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1010B738C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 104);
  type metadata accessor for EncryptedData();
  sub_1010B79B8(&qword_1016B9AF0, &type metadata accessor for EncryptedData);
  result = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

void sub_1010B7424(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  sub_1010B74AC(a1, &v5, a2);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1010B74AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v26 = a3;
  v6 = type metadata accessor for EncryptedData();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 72);
  sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = v28;
  if (v28 >> 60 == 15)
  {
    sub_1010B78EC();
    v12 = swift_allocError();
    *v13 = 3;
    swift_willThrow();
  }

  else
  {
    v25 = a2;
    v14 = v27;
    v15 = *(a1 + 112);
    sub_1010B79B8(&qword_10169C990, &type metadata accessor for EncryptedData);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v12 = v3;
    if (!v3)
    {
      v20 = EncryptedData.decrypt(key:)();
      v22 = v21;
      (*(v29 + 8))(v9, v6);
      result = sub_100006654(v14, v11);
      v24 = v26;
      *v26 = v20;
      v24[1] = v22;
      return result;
    }

    sub_100006654(v14, v11);
    a2 = v25;
  }

  static os_log_type_t.error.getter();
  if (qword_101695228 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v27 = v12;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)();

  result = swift_willThrow();
  *a2 = v12;
  return result;
}

uint64_t sub_1010B77F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);
  sub_1000BB27C(*(v0 + 56));

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  sub_100006654(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t sub_1010B7864()
{
  sub_1010B77F4();

  return swift_deallocClassInstance();
}

uint64_t sub_1010B78BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  return sub_10002E98C(v2, v3);
}

unint64_t sub_1010B78EC()
{
  result = qword_1016C7130;
  if (!qword_1016C7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7130);
  }

  return result;
}

uint64_t sub_1010B7964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1010B798C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1010B64F4();
}

uint64_t sub_1010B79B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1010B682C();
}

uint64_t sub_1010B79B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1010B7A14()
{
  result = qword_1016C7140;
  if (!qword_1016C7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7140);
  }

  return result;
}

uint64_t sub_1010B7ABC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v22 - v11;
  __chkstk_darwin(v10);
  v13 = *(v5 + 16);
  v13(v22 - v14, v2, a1);
  if (swift_dynamicCast())
  {
    v15 = 0x7972616D6972702ELL;
    v16 = 0xE900000000000028;
  }

  else
  {
    v13(v12, v2, a1);
    if (swift_dynamicCast())
    {
      v23[0] = 0;
      v23[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v23, ".primaryWild(");
      HIWORD(v23[1]) = -4864;
      v18 = *(a2 + 56);
      goto LABEL_6;
    }

    v13(v9, v2, a1);
    if (!swift_dynamicCast())
    {
      return 7104878;
    }

    v15 = 0x61646E6F6365732ELL;
    v16 = 0xEB00000000287972;
  }

  v23[0] = v15;
  v23[1] = v16;
  v17 = *(a2 + 56);
LABEL_6:
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22[0] = v22[1];
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return v23[0];
}

uint64_t sub_1010B7D4C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a4;
  *(v4 + 256) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  *(v4 + 96) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v4 + 112) = v7;
  v8 = *(v7 - 8);
  *(v4 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v10 = type metadata accessor for KeySyncMetadata();
  *(v4 + 136) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v12 = type metadata accessor for Date();
  *(v4 + 152) = v12;
  v13 = *(v12 - 8);
  *(v4 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1010B7EDC, 0, 0);
}

uint64_t sub_1010B7EDC()
{
  v33 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[10];
  static Date.trustedNow.getter(v1);
  sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date);
  LOBYTE(v4) = dispatch thunk of static Comparable.< infix(_:_:)();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {
    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[19];
    v9 = v0[10];
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C618);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[21];
    v15 = v0[19];
    if (v13)
    {
      v16 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v16 = 136446210;
      sub_1010BD720(&qword_1016969A0, &type metadata accessor for Date);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v5(v14, v15);
      v20 = sub_1000136BC(v17, v19, &v32);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Incoming date %{public}s is in the future. Ignoring it.", v16, 0xCu);
      sub_100007BAC(v31);
    }

    else
    {

      v5(v14, v15);
    }

    sub_1010BD6AC();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    v25 = v0[21];
    v24 = v0[22];
    v26 = v0[18];
    v27 = v0[16];
    v28 = v0[13];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v21 = async function pointer to daemon.getter[1];
    v22 = swift_task_alloc();
    v0[23] = v22;
    *v22 = v0;
    v22[1] = sub_1010B8260;

    return daemon.getter();
  }
}

uint64_t sub_1010B8260(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v12 = *v1;
  *(v3 + 192) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 200) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1010BD720(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1010BD720(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1010B843C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1010B843C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v8 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = sub_1010B8C40;
  }

  else
  {
    v6 = v3[24];

    v5 = sub_1010B8558;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1010B8558()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 256);
  v3 = v1[3];
  v4 = v1[4];
  sub_1000035D0(v1, v3);
  v5 = (*(v4 + 88))(v3, v4);
  v6 = *(v0 + 96);
  if (v2 & 0x100) != 0 || (v5)
  {
    v14 = (*(v0 + 72) + *(v6 + 20));
    v15 = v14[3];
    v16 = v14[4];
    sub_1000035D0(v14, v15);
    if (sub_10002BD40(v15, v16))
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        v18 = 5;
      }

      else
      {
        v18 = 6;
      }
    }

    else
    {

      v18 = 5;
    }

    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 80);
    (*(*(v0 + 120) + 16))(v21, *(v0 + 72), *(v0 + 112));
    sub_10001F280(v14, v21 + v22[6]);
    (*(v20 + 16))(v21 + v22[7], v23, v19);
    *(v21 + v22[5]) = v18;
    v24 = swift_task_alloc();
    *(v0 + 240) = v24;
    *v24 = v0;
    v24[1] = sub_1010B8A6C;
    v25 = *(v0 + 208);
    v26 = *(v0 + 144);

    return sub_1010CDAC4(v26);
  }

  else
  {
    v7 = *(v0 + 72);
    v8 = *(v6 + 20);
    v9 = *(v0 + 256);
    v10 = swift_task_alloc();
    *(v0 + 224) = v10;
    *v10 = v0;
    v10[1] = sub_1010B87BC;
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);

    return sub_1010B950C(v7 + v8, v9, v11, v12);
  }
}

uint64_t sub_1010B87BC()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1010B8CE8;
  }

  else
  {
    v3 = sub_1010B88D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010B88D0()
{
  v1 = (v0[9] + *(v0[12] + 20));
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if (sub_10002BD40(v2, v3))
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }
  }

  else
  {

    v5 = 5;
  }

  v6 = v0[19];
  v7 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[10];
  (*(v0[15] + 16))(v8, v0[9], v0[14]);
  sub_10001F280(v1, v8 + v9[6]);
  (*(v7 + 16))(v8 + v9[7], v10, v6);
  *(v8 + v9[5]) = v5;
  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_1010B8A6C;
  v12 = v0[26];
  v13 = v0[18];

  return sub_1010CDAC4(v13);
}

uint64_t sub_1010B8A6C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1010B911C;
  }

  else
  {
    v3 = sub_1010B8B80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010B8B80()
{
  v1 = v0[26];
  v2 = v0[18];

  sub_1010BD64C(v2, type metadata accessor for KeySyncMetadata);
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1010B8C40()
{
  v1 = v0[24];

  v2 = v0[27];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1010B8CE8()
{
  v39 = v0;
  *(v0 + 64) = *(v0 + 232);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 259) == 1)
  {
    v1 = *(v0 + 232);

    v2 = *(v0 + 64);
  }

  else
  {
    v3 = (v0 + 16);
    v4 = *(v0 + 64);

    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C618);
    sub_10001F280(v5, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 232);
    if (v9)
    {
      v12 = *(v0 + 120);
      v11 = *(v0 + 128);
      v13 = *(v0 + 112);
      v37 = *(v0 + 256);
      v14 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v14 = 141558531;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      sub_1000035D0(v3, v16);
      (*(*(*(v15 + 8) + 8) + 32))(v16);
      sub_1010BD720(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v12 + 8))(v11, v13);
      sub_100007BAC(v3);
      v20 = sub_1000136BC(v17, v19, &v38);

      *(v14 + 14) = v20;
      *(v14 + 22) = 258;
      *(v14 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update metadata for: %{private,mask.hash}s, hint: %{public}hhu.", v14, 0x19u);
      sub_100007BAC(v36);
    }

    else
    {
      v21 = *(v0 + 232);

      sub_100007BAC(v3);
    }
  }

  v22 = (*(v0 + 72) + *(*(v0 + 96) + 20));
  v23 = v22[3];
  v24 = v22[4];
  sub_1000035D0(v22, v23);
  if (sub_10002BD40(v23, v24))
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      v26 = 5;
    }

    else
    {
      v26 = 6;
    }
  }

  else
  {

    v26 = 5;
  }

  v27 = *(v0 + 152);
  v28 = *(v0 + 160);
  v30 = *(v0 + 136);
  v29 = *(v0 + 144);
  v31 = *(v0 + 80);
  (*(*(v0 + 120) + 16))(v29, *(v0 + 72), *(v0 + 112));
  sub_10001F280(v22, v29 + v30[6]);
  (*(v28 + 16))(v29 + v30[7], v31, v27);
  *(v29 + v30[5]) = v26;
  v32 = swift_task_alloc();
  *(v0 + 240) = v32;
  *v32 = v0;
  v32[1] = sub_1010B8A6C;
  v33 = *(v0 + 208);
  v34 = *(v0 + 144);

  return sub_1010CDAC4(v34);
}

uint64_t sub_1010B911C()
{
  v38 = v0;
  *(v0 + 56) = *(v0 + 248);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 258) == 1)
  {
    v1 = *(v0 + 248);
    v2 = *(v0 + 208);
    sub_1010BD64C(*(v0 + 144), type metadata accessor for KeySyncMetadata);

    v3 = *(v0 + 56);
  }

  else
  {
    v4 = *(v0 + 56);

    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 248);
    v6 = *(v0 + 104);
    v7 = *(v0 + 72);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C618);
    sub_1010BD810(v7, v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 248);
    v13 = *(v0 + 208);
    v14 = *(v0 + 144);
    if (v11)
    {
      v35 = *(v0 + 208);
      v36 = *(v0 + 144);
      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_1010BD720(&qword_101696930, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_1010BD64C(v16, type metadata accessor for BeaconKeyManager.IndexInformation);
      v23 = sub_1000136BC(v20, v22, &v37);

      *(v17 + 14) = v23;
      *(v17 + 22) = 2112;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v24;
      *v18 = v24;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to update metadata for: %{private,mask.hash}s, error: %@.", v17, 0x20u);
      sub_10000B3A8(v18, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v19);

      v25 = v36;
    }

    else
    {
      v26 = *(v0 + 104);
      v27 = *(v0 + 208);

      sub_1010BD64C(v26, type metadata accessor for BeaconKeyManager.IndexInformation);
      v25 = v14;
    }

    sub_1010BD64C(v25, type metadata accessor for KeySyncMetadata);
  }

  v29 = *(v0 + 168);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v31 = *(v0 + 128);
  v32 = *(v0 + 104);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1010B950C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = a4;
  *(v4 + 561) = a2;
  *(v4 + 248) = a1;
  v5 = type metadata accessor for KeySyncMetadata();
  *(v4 + 272) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016C7150, &qword_1014038E0) - 8) + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  updated = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
  *(v4 + 296) = updated;
  v9 = *(updated - 8);
  *(v4 + 304) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 312) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v4 + 320) = v11;
  v12 = *(v11 - 8);
  *(v4 + 328) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 336) = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8) + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  v15 = type metadata accessor for Date();
  *(v4 + 352) = v15;
  v16 = *(v15 - 8);
  *(v4 + 360) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();

  return _swift_task_switch(sub_1010B9738, 0, 0);
}

uint64_t sub_1010B9738()
{
  v35 = v0;
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[32];
  static Date.trustedNow.getter(v1);
  sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date);
  LOBYTE(v4) = dispatch thunk of static Comparable.< infix(_:_:)();
  v5 = *(v3 + 8);
  v0[48] = v5;
  v0[49] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4)
  {
    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[44];
    v9 = v0[32];
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C618);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[46];
    v15 = v0[44];
    if (v13)
    {
      v16 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v16 = 136446210;
      sub_1010BD720(&qword_1016969A0, &type metadata accessor for Date);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v5(v14, v15);
      v20 = sub_1000136BC(v17, v19, &v34);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Incoming date %{public}s is in the future. Ignoring it.", v16, 0xCu);
      sub_100007BAC(v33);
    }

    else
    {

      v5(v14, v15);
    }

    sub_1010BD6AC();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    v25 = v0[46];
    v24 = v0[47];
    v27 = v0[42];
    v26 = v0[43];
    v28 = v0[39];
    v30 = v0[35];
    v29 = v0[36];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v21 = async function pointer to daemon.getter[1];
    v22 = swift_task_alloc();
    v0[50] = v22;
    *v22 = v0;
    v22[1] = sub_1010B9AD8;

    return daemon.getter();
  }
}

uint64_t sub_1010B9AD8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v12 = *v1;
  v3[51] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[52] = v6;
  v7 = type metadata accessor for Daemon();
  v3[53] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1010BD720(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[54] = v9;
  v10 = sub_1010BD720(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1010B9CB8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1010B9CB8(uint64_t a1)
{
  v3 = *(*v2 + 416);
  v4 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1010BB53C, 0, 0);
  }

  else
  {
    v5 = v4[51];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[57] = v7;
    *v7 = v4;
    v7[1] = sub_1010B9E2C;

    return daemon.getter();
  }
}

uint64_t sub_1010B9E2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 456);
  v5 = *v1;
  v3[58] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[59] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1010BD720(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v7 = v5;
  v7[1] = sub_1010B9FE0;
  v10 = v3[54];
  v11 = v3[53];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1010B9FE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 472);
  v8 = *v2;
  v3[60] = a1;
  v3[61] = v1;

  if (v1)
  {
    v5 = sub_1010BB5FC;
  }

  else
  {
    v6 = v3[58];

    v5 = sub_1010BA0FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1010BA0FC()
{
  v1 = v0[47];
  v2 = v0[42];
  v3 = v0[33];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(v7 + 192))(v6, v7);
  v8 = swift_task_alloc();
  v0[62] = v8;
  *v8 = v0;
  v8[1] = sub_1010BA220;
  v9 = v0[60];
  v10 = v0[47];
  v12 = v0[42];
  v11 = v0[43];

  return sub_1010CD424(v11, v12, v10);
}

uint64_t sub_1010BA220()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 384);
  v5 = *(*v0 + 376);
  v6 = *(*v0 + 352);
  v7 = *(*v0 + 336);
  v8 = *(*v0 + 328);
  v9 = *(*v0 + 320);
  v12 = *v0;

  v4(v5, v6);
  v10 = *(v8 + 8);
  *(v1 + 504) = v10;
  *(v1 + 512) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v9);

  return _swift_task_switch(sub_1010BA3F0, 0, 0);
}

uint64_t sub_1010BA3F0()
{
  v57 = v0;
  sub_10001F280(*(v0 + 248), v0 + 16);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  if ((swift_dynamicCast() & 1) != 0 || (sub_10001F280(*(v0 + 248), v0 + 56), swift_dynamicCast()))
  {
    v1 = *(v0 + 440);

    return _swift_task_switch(sub_1010BAA80, v1, 0);
  }

  else
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 304);
    v4 = *(v0 + 288);
    sub_1010BBB98(*(v0 + 264), *(v0 + 344), *(v0 + 256), *(v0 + 248), _swiftEmptyArrayStorage, v4);

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v5 = *(v0 + 344);
      sub_10000B3A8(*(v0 + 288), &qword_1016C7150, &qword_1014038E0);
      sub_1010BD6AC();
      v6 = swift_allocError();
      *v7 = 5;
      swift_willThrow();
      sub_10000B3A8(v5, &unk_1016C8FC0, &unk_10139D7D0);
      *(v0 + 232) = v6;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      if (swift_dynamicCast() && *(v0 + 560) == 1)
      {
        v8 = *(v0 + 480);
        v9 = *(v0 + 440);

        sub_10022A59C();
        swift_allocError();
        *v10 = 1;
        swift_willThrow();

        v11 = *(v0 + 232);
      }

      else
      {
        v26 = *(v0 + 232);

        if (qword_101695230 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 264);
        v28 = type metadata accessor for Logger();
        sub_1000076D4(v28, qword_10177C618);
        sub_10001F280(v27, v0 + 96);
        swift_errorRetain();
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v53 = *(v0 + 504);
          v54 = *(v0 + 512);
          v31 = *(v0 + 336);
          v32 = *(v0 + 320);
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v56 = v55;
          *v33 = 141558531;
          *(v33 + 4) = 1752392040;
          *(v33 + 12) = 2081;
          v36 = *(v0 + 120);
          v35 = *(v0 + 128);
          sub_1000035D0((v0 + 96), v36);
          (*(*(*(v35 + 8) + 8) + 32))(v36);
          sub_1010BD720(&qword_101696930, &type metadata accessor for UUID);
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = v38;
          v53(v31, v32);
          sub_100007BAC((v0 + 96));
          v40 = sub_1000136BC(v37, v39, &v56);

          *(v33 + 14) = v40;
          *(v33 + 22) = 2114;
          swift_errorRetain();
          v41 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 24) = v41;
          *v34 = v41;
          _os_log_impl(&_mh_execute_header, v29, v30, "Failed to update key sync with hint for beacon %{private,mask.hash}s %{public}@.", v33, 0x20u);
          sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

          sub_100007BAC(v55);
        }

        else
        {

          sub_100007BAC((v0 + 96));
        }

        v42 = *(v0 + 480);
        v43 = *(v0 + 440);
        swift_willThrow();
      }

      v45 = *(v0 + 368);
      v44 = *(v0 + 376);
      v47 = *(v0 + 336);
      v46 = *(v0 + 344);
      v48 = *(v0 + 312);
      v50 = *(v0 + 280);
      v49 = *(v0 + 288);

      v51 = *(v0 + 8);

      return v51();
    }

    else
    {
      v12 = *(v0 + 352);
      v13 = *(v0 + 360);
      v14 = *(v0 + 312);
      v15 = *(v0 + 296);
      v17 = *(v0 + 272);
      v16 = *(v0 + 280);
      v18 = *(v0 + 264);
      sub_1010BE08C(*(v0 + 288), v14, type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
      v19 = v18[3];
      v20 = v18[4];
      sub_1000035D0(v18, v19);
      (*(*(*(v20 + 8) + 8) + 32))(v19);
      v21 = *(v14 + *(v15 + 20));
      v22 = (v16 + v17[6]);
      v22[3] = &type metadata for PrimaryIndex;
      v22[4] = sub_10002A2B8();
      *v22 = v21;
      (*(v13 + 16))(v16 + v17[7], v14, v12);
      *(v16 + v17[5]) = 7;
      v23 = swift_task_alloc();
      *(v0 + 544) = v23;
      *v23 = v0;
      v23[1] = sub_1010BB308;
      v24 = *(v0 + 480);
      v25 = *(v0 + 280);

      return sub_1010CDAC4(v25);
    }
  }
}

uint64_t sub_1010BAA80()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 561);
  v3 = *(v0 + 248);
  sub_10001F280(*(v0 + 264), v0 + 136);
  sub_10001F280(v3, v0 + 176);
  v4 = swift_allocObject();
  *(v0 + 520) = v4;
  *(v4 + 16) = v1;
  sub_10000A748((v0 + 136), v4 + 24);
  sub_10000A748((v0 + 176), v4 + 64);
  *(v4 + 104) = v2;
  v5 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v6 = swift_task_alloc();
  *(v0 + 528) = v6;
  v7 = sub_1000BC4D4(&qword_1016C7158, &qword_1014038E8);
  *v6 = v0;
  v6[1] = sub_1010BABD4;

  return unsafeBlocking<A>(context:_:)(v0 + 240, 0xD000000000000010, 0x800000010134A8C0, sub_1010BD768, v4, v7);
}

uint64_t sub_1010BABD4()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 440);
  v5 = *v0;

  return _swift_task_switch(sub_1010BAD00, v3, 0);
}

uint64_t sub_1010BAD24()
{
  v57 = v0;
  if (!*(v0 + 536))
  {
    v4 = *(v0 + 344);
    v5 = 4;
LABEL_5:
    sub_1010BD6AC();
    v6 = swift_allocError();
    *v7 = v5;
    swift_willThrow();
    sub_10000B3A8(v4, &unk_1016C8FC0, &unk_10139D7D0);
    *(v0 + 232) = v6;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v0 + 560) == 1)
    {
      v8 = *(v0 + 480);
      v9 = *(v0 + 440);

      sub_10022A59C();
      swift_allocError();
      *v10 = 1;
      swift_willThrow();

      v11 = *(v0 + 232);
    }

    else
    {
      v12 = *(v0 + 232);

      if (qword_101695230 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 264);
      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177C618);
      sub_10001F280(v13, v0 + 96);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v53 = *(v0 + 504);
        v54 = *(v0 + 512);
        v17 = *(v0 + 336);
        v18 = *(v0 + 320);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v55;
        *v19 = 141558531;
        *(v19 + 4) = 1752392040;
        *(v19 + 12) = 2081;
        v22 = *(v0 + 120);
        v21 = *(v0 + 128);
        sub_1000035D0((v0 + 96), v22);
        (*(*(*(v21 + 8) + 8) + 32))(v22);
        sub_1010BD720(&qword_101696930, &type metadata accessor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v53(v17, v18);
        sub_100007BAC((v0 + 96));
        v26 = sub_1000136BC(v23, v25, &v56);

        *(v19 + 14) = v26;
        *(v19 + 22) = 2114;
        swift_errorRetain();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 24) = v27;
        *v20 = v27;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to update key sync with hint for beacon %{private,mask.hash}s %{public}@.", v19, 0x20u);
        sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v55);
      }

      else
      {

        sub_100007BAC((v0 + 96));
      }

      v43 = *(v0 + 480);
      v44 = *(v0 + 440);
      swift_willThrow();
    }

    v46 = *(v0 + 368);
    v45 = *(v0 + 376);
    v48 = *(v0 + 336);
    v47 = *(v0 + 344);
    v49 = *(v0 + 312);
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);

    v52 = *(v0 + 8);

    return v52();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  sub_1010BBB98(*(v0 + 264), *(v0 + 344), *(v0 + 256), *(v0 + 248), *(v0 + 536), v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 344);
    sub_10000B3A8(*(v0 + 288), &qword_1016C7150, &qword_1014038E0);
    v5 = 5;
    goto LABEL_5;
  }

  v28 = *(v0 + 352);
  v29 = *(v0 + 360);
  v30 = *(v0 + 312);
  v31 = *(v0 + 296);
  v33 = *(v0 + 272);
  v32 = *(v0 + 280);
  v34 = *(v0 + 264);
  sub_1010BE08C(*(v0 + 288), v30, type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
  v35 = v34[3];
  v36 = v34[4];
  sub_1000035D0(v34, v35);
  (*(*(*(v36 + 8) + 8) + 32))(v35);
  v37 = *(v30 + *(v31 + 20));
  v38 = (v32 + v33[6]);
  v38[3] = &type metadata for PrimaryIndex;
  v38[4] = sub_10002A2B8();
  *v38 = v37;
  (*(v29 + 16))(v32 + v33[7], v30, v28);
  *(v32 + v33[5]) = 7;
  v39 = swift_task_alloc();
  *(v0 + 544) = v39;
  *v39 = v0;
  v39[1] = sub_1010BB308;
  v40 = *(v0 + 480);
  v41 = *(v0 + 280);

  return sub_1010CDAC4(v41);
}

uint64_t sub_1010BB308()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_1010BB6C8;
  }

  else
  {
    v3 = sub_1010BB41C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010BB41C()
{
  v1 = v0[60];
  v2 = v0[55];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];

  sub_1010BD64C(v7, type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
  sub_10000B3A8(v5, &unk_1016C8FC0, &unk_10139D7D0);
  sub_1010BD64C(v9, type metadata accessor for KeySyncMetadata);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1010BB53C()
{
  v1 = v0[51];

  v2 = v0[56];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1010BB5FC()
{
  v1 = v0[58];
  v2 = v0[55];

  v3 = v0[61];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[39];
  v10 = v0[35];
  v9 = v0[36];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1010BB6C8()
{
  v39 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 280);
  sub_1010BD64C(*(v0 + 312), type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
  sub_10000B3A8(v1, &unk_1016C8FC0, &unk_10139D7D0);
  sub_1010BD64C(v2, type metadata accessor for KeySyncMetadata);
  *(v0 + 232) = *(v0 + 552);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 560) == 1)
  {
    v3 = *(v0 + 480);
    v4 = *(v0 + 440);

    sub_10022A59C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    v6 = *(v0 + 232);
  }

  else
  {
    v7 = (v0 + 96);
    v8 = *(v0 + 232);

    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 264);
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C618);
    sub_10001F280(v9, v7);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v34 = *(v0 + 504);
      v35 = *(v0 + 512);
      v13 = *(v0 + 336);
      v14 = *(v0 + 320);
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v15 = 141558531;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      v17 = *(v0 + 120);
      v16 = *(v0 + 128);
      sub_1000035D0(v7, v17);
      (*(*(*(v16 + 8) + 8) + 32))(v17);
      sub_1010BD720(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v34(v13, v14);
      sub_100007BAC(v7);
      v21 = sub_1000136BC(v18, v20, &v38);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2114;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v22;
      *v36 = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to update key sync with hint for beacon %{private,mask.hash}s %{public}@.", v15, 0x20u);
      sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v37);
    }

    else
    {

      sub_100007BAC(v7);
    }

    v23 = *(v0 + 480);
    v24 = *(v0 + 440);
    swift_willThrow();
  }

  v26 = *(v0 + 368);
  v25 = *(v0 + 376);
  v28 = *(v0 + 336);
  v27 = *(v0 + 344);
  v29 = *(v0 + 312);
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1010BBB14()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C618);
  sub_1000076D4(v0, qword_10177C618);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010BBB98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a2;
  v98 = a1;
  v10 = sub_1000BC4D4(&qword_1016C7150, &qword_1014038E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v88 - v12;
  v14 = type metadata accessor for UUID();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = *(v95 + 64);
  __chkstk_darwin(v14);
  v94 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RecordUpdateMaker.RecordUpdateContext(0);
  v23 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v25 = (v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = a4;
  sub_10001F280(a4, v104);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  if (swift_dynamicCast())
  {
    v26 = v101[0];
    v27 = *(sub_1000BC4D4(&qword_1016C7168, &qword_1014038F8) + 48);
    *v25 = v26;
    (*(v18 + 16))(v25 + v27, a3, v17);
    swift_storeEnumTagMultiPayload();
    sub_100007BAC(v104);
    goto LABEL_21;
  }

  v91 = v17;
  if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast())
  {
    v30 = a6;
    if (qword_101695230 == -1)
    {
LABEL_30:
      v76 = type metadata accessor for Logger();
      sub_1000076D4(v76, qword_10177C618);
      sub_10001F280(v97, v101);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v100 = v80;
        *v79 = 136446210;
        v81 = v102;
        v82 = v103;
        sub_1000035D0(v101, v102);
        v83 = sub_1010B7ABC(v81, v82);
        v85 = v84;
        sub_100007BAC(v101);
        v86 = sub_1000136BC(v83, v85, &v100);

        *(v79 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v77, v78, "Unsupported index type for KeySyncRecord change!\nReceived %{public}s", v79, 0xCu);
        sub_100007BAC(v80);
      }

      else
      {

        sub_100007BAC(v101);
      }

      v87 = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
      (*(*(v87 - 8) + 56))(v30, 1, 1, v87);
      return sub_100007BAC(v104);
    }

LABEL_43:
    swift_once();
    goto LABEL_30;
  }

  v88[1] = updated;
  v89 = a5;
  v92 = a6;
  sub_100007BAC(v104);
  v90 = *v93;
  v28 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
  v29 = a3;
  v30 = v98[3];
  v31 = v98[4];
  sub_1000035D0(v98, v30);
  v32 = *(v31 + 112);
  v33 = v31;
  v34 = v29;
  v35 = 0.0;
  if (v32(v30, v33))
  {
    Date.timeIntervalSince(_:)();
  }

  Date.timeIntervalSince(_:)();
  if (v36 >= 0.0)
  {
    v35 = v36;
  }

  v37 = v91;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v38 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v39 = sub_101073524(v104[0]);

  if ((v39 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (!is_mul_ok(v39, 0x3CuLL))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v40 = v35 / (60 * v39);
  if (COERCE__INT64(fabs(v40)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v40 <= -1.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v40 >= 1.84467441e19)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v30 = v90 + v40;
  if (__CFADD__(v90, v40))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  Date.addingTimeInterval(_:)();
  v42 = v98[3];
  v41 = v98[4];
  sub_1000035D0(v98, v42);
  v43 = v94;
  (*(*(*(v41 + 8) + 8) + 32))(v42);
  v44 = sub_10088756C(v43, v21, v34, 0);
  (*(v95 + 8))(v43, v96);
  (*(v18 + 8))(v21, v37);
  v45 = v30 - v44;
  if (v30 < v44)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v46 = __CFADD__(v30, v44);
  v47 = v30 + v44;
  if (v46)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v47 < v45)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v48 = sub_1000BC4D4(&qword_1016C7160, &qword_1014038F0);
  v49 = v48[12];
  v50 = v25 + v48[16];
  v51 = v48[20];
  sub_10001F280(v97, v25);
  (*(v18 + 16))(v25 + v49, v34, v37);
  *v50 = v45;
  *(v50 + 1) = v47;
  v50[16] = 0;
  *(v25 + v51) = v89;
  swift_storeEnumTagMultiPayload();

  a6 = v92;
LABEL_21:
  sub_1010BCDB4(v25, v13);
  v52 = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v13, 1, v52) == 1)
  {
    sub_10000B3A8(v13, &qword_1016C7150, &qword_1014038E0);
    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C618);
    sub_10001F280(v98, v104);
    sub_10001F280(v97, v101);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      LODWORD(v97) = v56;
      v58 = a6;
      v59 = v57;
      v98 = swift_slowAlloc();
      v100 = v98;
      *v59 = 141558787;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      v92 = v58;
      v61 = v105;
      v60 = v106;
      sub_1000035D0(v104, v105);
      v62 = v94;
      (*(*(*(v60 + 8) + 8) + 32))(v61);
      sub_1010BD720(&qword_101696930, &type metadata accessor for UUID);
      v63 = v96;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (*(v95 + 8))(v62, v63);
      sub_100007BAC(v104);
      v67 = sub_1000136BC(v64, v66, &v100);

      *(v59 + 14) = v67;
      *(v59 + 22) = 2048;
      v68 = v103;
      sub_1000035D0(v101, v102);
      v69 = *(v68 + 56);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v70 = v99;
      sub_100007BAC(v101);
      *(v59 + 24) = v70;
      *(v59 + 32) = 2082;
      v71 = Array.description.getter();
      v73 = sub_1000136BC(v71, v72, &v100);

      *(v59 + 34) = v73;
      v74 = v92;
      _os_log_impl(&_mh_execute_header, v55, v97, "Ignore updateKeySyncRecord for %{private,mask.hash}s.\nindexObserved %llu,\nhintBasedIndexes = %{public}s.", v59, 0x2Au);
      swift_arrayDestroy();

      a6 = v74;

      sub_1010BD64C(v25, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
    }

    else
    {
      sub_100007BAC(v101);

      sub_1010BD64C(v25, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
      sub_100007BAC(v104);
    }

    return (*(v53 + 56))(a6, 1, 1, v52);
  }

  else
  {
    sub_1010BD64C(v25, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
    sub_1010BE08C(v13, a6, type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
    return (*(v53 + 56))(a6, 0, 1, v52);
  }
}

uint64_t sub_1010BC708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeySyncMetadata();
  v5 = (a2 + *(v4 + 24));
  v6 = v5[4];
  sub_1000035D0(v5, v5[3]);
  v7 = *(v6 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = (a1 + *(v4 + 24));
  v9 = v8[4];
  sub_1000035D0(v8, v8[3]);
  v10 = *(v9 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20 >= v21)
  {
    v13 = v5[4];
    sub_1000035D0(v5, v5[3]);
    v14 = *(v13 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v15 = v8[4];
    sub_1000035D0(v8, v8[3]);
    v16 = *(v15 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v21 == v20)
    {
      v17 = a2 + *(v4 + 28);
      Date.timeIntervalSince(_:)();
      v12 = v18 >= 900.0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = *(v4 + 28);
    type metadata accessor for Date();
    sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date);
    v12 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_1010BCDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RecordUpdateMaker.RecordUpdateContext(0);
  v10 = *(*(updated - 8) + 64);
  v11 = __chkstk_darwin(updated);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v75 - v14);
  sub_1010BD810(a1, &v75 - v14, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = *v15;
    v32 = sub_1000BC4D4(&qword_1016C7168, &qword_1014038F8);
    (*(v5 + 32))(a2, v15 + *(v32 + 48), v4);
    v33 = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
    *(a2 + *(v33 + 20)) = v31;
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  v77 = updated;
  v78 = v13;
  v16 = sub_1000BC4D4(&qword_1016C7160, &qword_1014038F0);
  v17 = v16[12];
  v18 = v15 + v16[16];
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = v18[16];
  v22 = *(v15 + v16[20]);
  sub_10000A748(v15, v88);
  v79 = v8;
  v80 = v5;
  v23 = *(v5 + 32);
  v81 = v4;
  v23(v8, v15 + v17, v4);
  v24 = *(v22 + 16);
  if (v24)
  {
    v76 = a2;
    v25 = _swiftEmptyArrayStorage;
    v26 = 32;
    do
    {
      if ((v21 & 1) == 0)
      {
        v4 = *(v22 + v26);
        if (v4 >= v20 && v19 >= v4)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85[0] = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1011246BC(0, v25[2] + 1, 1);
            v25 = v85[0];
          }

          v28 = v25[2];
          v27 = v25[3];
          if (v28 >= v27 >> 1)
          {
            sub_1011246BC((v27 > 1), v28 + 1, 1);
            v25 = v85[0];
          }

          v25[2] = v28 + 1;
          v25[v28 + 4] = v4;
        }
      }

      v26 += 8;
      --v24;
    }

    while (v24);
    v35 = *(v22 + 16);
    if (v35 == 1)
    {

      a2 = v76;
      if (*(v22 + 16))
      {
        v36 = *(v22 + 32);

LABEL_27:
        v49 = v80;
        v48 = v81;
        v50 = v79;
        v51 = *(sub_1000BC4D4(&qword_1016C7168, &qword_1014038F8) + 48);
        v52 = v78;
        *v78 = v36;
        (*(v49 + 16))(v52 + v51, v50, v48);
        swift_storeEnumTagMultiPayload();
        sub_1010BCDB4(v52);
        sub_1010BD64C(v52, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
        (*(v49 + 8))(v50, v48);
        return sub_100007BAC(v88);
      }

      __break(1u);
    }

    else
    {
      a2 = v76;
      if (v25[2] != 1)
      {

        if (v35)
        {
          v85[0] = _swiftEmptyArrayStorage;
          sub_101123BF8(0, v35, 0);
          v53 = v85[0];
          v54 = *(v85[0] + 16);
          v55 = 32;
          do
          {
            v56 = *(v22 + v55);
            v85[0] = v53;
            v57 = *(v53 + 24);
            if (v54 >= v57 >> 1)
            {
              sub_101123BF8((v57 > 1), v54 + 1, 1);
              v53 = v85[0];
            }

            *(v53 + 16) = v54 + 1;
            *(v53 + 8 * v54 + 32) = v56;
            v55 += 8;
            ++v54;
            --v35;
          }

          while (v35);

          a2 = v76;
        }

        else
        {
        }

        v24 = Array.description.getter();
        v4 = v58;

        if (qword_101695230 == -1)
        {
          goto LABEL_37;
        }

        goto LABEL_45;
      }

      if (v25[2])
      {
        v36 = v25[4];

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
LABEL_37:
    v59 = type metadata accessor for Logger();
    sub_1000076D4(v59, qword_10177C618);
    sub_10001F280(v88, v85);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84 = v78;
      *v62 = 136446722;
      LODWORD(v77) = v61;
      v63 = v86;
      v64 = v87;
      sub_1000035D0(v85, v86);
      v65 = sub_1010B7ABC(v63, v64);
      v67 = v66;
      sub_100007BAC(v85);
      v68 = sub_1000136BC(v65, v67, &v84);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2082;
      v82[0] = v20;
      v82[1] = v19;
      v83 = v21;
      sub_1000BC4D4(&qword_1016C7170, &unk_101403900);
      v69 = String.init<A>(describing:)();
      v71 = sub_1000136BC(v69, v70, &v84);

      *(v62 + 14) = v71;
      *(v62 + 22) = 2082;
      v72 = sub_1000136BC(v24, v4, &v84);

      *(v62 + 24) = v72;
      _os_log_impl(&_mh_execute_header, v60, v77, "Ambiguous primary index for %{public}s\nmodelIndexRange = %{public}s,\nhintBasedIndexes = %{public}s.", v62, 0x20u);
      swift_arrayDestroy();

      goto LABEL_39;
    }

LABEL_41:
    (*(v80 + 8))(v79, v81);
    sub_100007BAC(v88);
    v73 = v85;
    goto LABEL_42;
  }

  if (qword_101695230 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177C618);
  sub_10001F280(v88, v85);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v38, v39))
  {

    goto LABEL_41;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v82[0] = v41;
  *v40 = 136446210;
  v42 = v86;
  v43 = v87;
  sub_1000035D0(v85, v86);
  v44 = sub_1010B7ABC(v42, v43);
  v46 = v45;
  sub_100007BAC(v85);
  v47 = sub_1000136BC(v44, v46, v82);

  *(v40 + 4) = v47;
  _os_log_impl(&_mh_execute_header, v38, v39, "Empty hintBasedIndexes array for %{public}s", v40, 0xCu);
  sub_100007BAC(v41);

LABEL_39:
  (*(v80 + 8))(v79, v81);
  v73 = v88;
LABEL_42:
  sub_100007BAC(v73);
  v74 = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
  return (*(*(v74 - 8) + 56))(a2, 1, 1, v74);
}

uint64_t sub_1010BD64C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1010BD6AC()
{
  result = qword_1016C7148;
  if (!qword_1016C7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7148);
  }

  return result;
}

uint64_t sub_1010BD720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1010BD79C(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
  v5 = *(result + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  v8 = v7 - v6;
  if (v7 >= v6)
  {
    if ((v7 - v6) >= 0)
    {
      return v8 == 0;
    }
  }

  else
  {
    if ((v6 - v7) >= 0)
    {
      v8 = v7 - v6;
      return v8 == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010BD810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010BD878(uint64_t a1)
{
  v2 = type metadata accessor for KeySyncMetadata();
  if (*(a1 + *(v2 + 20)) > 3u)
  {
    *(a1 + *(v2 + 20));
LABEL_4:
    sub_10001F280(a1 + *(v2 + 24), v7);
    sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
LABEL_5:
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }

    sub_1010BD6AC();
    swift_allocError();
    v5 = 2;
    goto LABEL_9;
  }

  if (*(a1 + *(v2 + 20)) - 1 < 2)
  {
    goto LABEL_4;
  }

  if (!*(a1 + *(v2 + 20)))
  {
    sub_1010BD6AC();
    swift_allocError();
    v5 = 0;
LABEL_9:
    *v4 = v5;
    return swift_willThrow();
  }

  v6 = *(v2 + 24);
  sub_10001F280(a1 + v6, v7);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_10001F280(a1 + v6, v7);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1010BDA5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_1016C8FF0, &qword_101393148);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for KeySyncMetadata();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + *(v12 + 20)))
  {
    sub_1010BD6AC();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    return v8 & 1;
  }

  sub_1010BD878(a1);
  if (v2)
  {
    return v8 & 1;
  }

  sub_1010BE01C(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &unk_1016C8FF0, &qword_101393148);
    LOBYTE(v8) = 1;
    return v8 & 1;
  }

  sub_1010BE08C(v8, v14, type metadata accessor for KeySyncMetadata);
  v8 = *(v9 + 24);
  sub_10001F280(&v14[v8], v29);
  sub_10001F280(a1 + v8, v30);
  LOBYTE(v8) = sub_1000BC4D4(&qword_1016C7178, &qword_101403910);
  sub_1000BC4D4(&qword_1016C7180, &qword_101403918);
  if (swift_dynamicCast() || (sub_1000BC4D4(&qword_1016C7188, &qword_101403920), swift_dynamicCast()) || (sub_1000BC4D4(&qword_1016C7190, &qword_101403928), swift_dynamicCast()) || (sub_1000BC4D4(&qword_1016C7198, &qword_101403930), swift_dynamicCast()) || (sub_1000BC4D4(&qword_1016C71A0, &qword_101403938), swift_dynamicCast()))
  {
    LOBYTE(v8) = sub_1010BC708(v14, a1);
LABEL_13:
    sub_1010BD64C(v14, type metadata accessor for KeySyncMetadata);
LABEL_14:
    sub_10000B3A8(v29, &qword_1016C7178, &qword_101403910);
    return v8 & 1;
  }

  sub_1000BC4D4(&qword_1016C71A8, &qword_101403940);
  result = swift_dynamicCast();
  if (!result)
  {
    sub_1000BC4D4(&qword_1016C71B0, &qword_101403948);
    if (!swift_dynamicCast())
    {
      sub_1010BD6AC();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
      sub_1010BD64C(v14, type metadata accessor for KeySyncMetadata);
      sub_100007BAC(v30);
      sub_100007BAC(v29);
      return v8 & 1;
    }

    v18 = v28;
    if (v27)
    {
      v19 = v27 / 0x60 + 1;
      if (v19 >= v28)
      {
LABEL_27:
        v20 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v19 = 0;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

    v23 = *(v9 + 28);
    type metadata accessor for Date();
    sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date);
    v20 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
LABEL_32:
    v24 = *(v9 + 28);
    v25 = static Date.> infix(_:_:)();
    result = sub_1010BD64C(v14, type metadata accessor for KeySyncMetadata);
    if (v25)
    {
      v26 = v19 - v18;
      if (v19 >= v18)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if ((v18 - v19) < 0)
        {
          goto LABEL_44;
        }

        if ((v20 & 1) == 0)
        {
          v26 = v19 - v18;
LABEL_41:
          LOBYTE(v8) = v26 == 0;
          goto LABEL_14;
        }
      }
    }

    else if ((v20 & 1) == 0)
    {
      LOBYTE(v8) = 0;
      goto LABEL_14;
    }

    LOBYTE(v8) = 1;
    goto LABEL_14;
  }

  if (!v27)
  {
    goto LABEL_28;
  }

  if (is_mul_ok(v27, 0x60uLL))
  {
    v17 = 96 * v27 - 96;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    if (96 * v27 - 1 >= v17)
    {
      if (v28 < v17)
      {
        LOBYTE(v8) = 0;
        goto LABEL_13;
      }

LABEL_28:
      v21 = *(v9 + 28);
      type metadata accessor for Date();
      sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date);
      LOBYTE(v8) = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1010BE01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016C8FF0, &qword_101393148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1010BE08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1010BE0F4()
{
  sub_1010BE168();
  if (v0 <= 0x3F)
  {
    sub_1010BE1D4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1010BE168()
{
  if (!qword_1016C7238)
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016C7238);
    }
  }
}

void sub_1010BE1D4(uint64_t a1)
{
  if (!qword_1016C7240)
  {
    __chkstk_darwin(a1);
    sub_1000BC580(&qword_1016A5938, &qword_1013B3440);
    type metadata accessor for Date();
    sub_1000BC580(&qword_1016C7170, &unk_101403900);
    sub_1000BC580(&unk_1016C7248, &qword_101403968);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016C7240);
    }
  }
}

uint64_t sub_1010BE34C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1010BE3D4()
{
  result = qword_1016C7308;
  if (!qword_1016C7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7308);
  }

  return result;
}

uint64_t sub_1010BE428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 65))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1010BE484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1010BE4F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 0:
      v3 = *(v2 + 16);
      goto LABEL_21;
    case 1:
      v4 = *(v2 + 16);
      v5 = 1;
      goto LABEL_17;
    case 2:
      v4 = *(v2 + 16);
      v5 = 2;
      goto LABEL_17;
    case 3:
      v4 = *(v2 + 16);
      v5 = 3;
      goto LABEL_17;
    case 4:
      v4 = *(v2 + 16);
      v5 = 4;
      goto LABEL_17;
    case 5:
      v4 = *(v2 + 16);
      v5 = 5;
      goto LABEL_17;
    case 6:
      v4 = *(v2 + 16);
      v5 = 6;
LABEL_17:
      result = sub_1010BE640(v5, v4);
      *a2 = result & 1;
      *(a2 + 40) = 0;
      return result;
    case 7:
      v3 = *(v2 + 18);
      goto LABEL_21;
    case 8:
      goto LABEL_20;
    case 9:
      v3 = *(v2 + 32);
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_20:
      v3 = *(v2 + 24);
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
      break;
    case 10:
      v3 = *(v2 + 40);
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_6:
      v3 = *(v2 + 52);
LABEL_21:
      *a2 = v3;
      *(a2 + 41) = 1;
      break;
    case 11:
      v3 = *(v2 + 48);
      goto LABEL_21;
    case 12:
      goto LABEL_6;
    case 13:
      v3 = *(v2 + 56);
      goto LABEL_21;
    case 14:
      v3 = *(v2 + 60);
      goto LABEL_21;
    case 16:
      v3 = *(v2 + 64);
      goto LABEL_21;
    default:
      sub_1010BF130();
      swift_allocError();
      return swift_willThrow();
  }

  return result;
}

uint64_t sub_1010BE640(unsigned __int8 a1, char a2)
{
  v4 = type metadata accessor for Bit();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v15[-v10];
  v15[15] = a2;
  sub_1000198E8();
  result = FixedWidthInteger.bits()();
  v13 = 7 - a1;
  if (v13 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 16))(v11, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);

    (*(v5 + 104))(v9, enum case for Bit.one(_:), v4);
    sub_100019DF0();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v14 = *(v5 + 8);
    v14(v9, v4);
    v14(v11, v4);
    return v15[14] == v15[13];
  }

  return result;
}

uint64_t sub_1010BE81C(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Endianness();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = qword_101403E80[a1];
  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
LABEL_12:
      sub_1010BF0DC();
      swift_allocError();
      *v19 = 0;
      return swift_willThrow();
    }

    v15 = *(a2 + 16);
    v14 = *(a2 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (!v16)
    {
      if (v17 <= v12)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!v13)
  {
    if (BYTE6(a3) <= v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    goto LABEL_15;
  }

  if (HIDWORD(a2) - a2 <= v12)
  {
    goto LABEL_12;
  }

LABEL_11:
  v18 = result;
  Data._Representation.subscript.getter();
  (*(v7 + 104))(v11, enum case for Endianness.little(_:), v18);
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v20[15])
  {
    goto LABEL_12;
  }

  return v20[14];
}

uint64_t sub_1010BE9F0(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Endianness();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_101403E80[a1];
  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
LABEL_12:
      sub_1010BF0DC();
      swift_allocError();
      *v19 = 0;
      return swift_willThrow();
    }

    v16 = *(a2 + 16);
    v15 = *(a2 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a3);
    goto LABEL_10;
  }

  LODWORD(v14) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    return result;
  }

  v14 = v14;
LABEL_10:
  if (v14 < v12 + 2)
  {
    goto LABEL_12;
  }

  v18 = result;
  Data._Representation.subscript.getter();
  (*(v7 + 104))(v11, enum case for Endianness.little(_:), v18);
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v21)
  {
    goto LABEL_12;
  }

  return v20[6];
}

uint64_t sub_1010BEBB0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
LABEL_12:
      sub_1010BED08();
      swift_allocError();
      return swift_willThrow();
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!v7)
  {
    if (BYTE6(a2) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_15;
  }

  if (HIDWORD(a1) - a1 != 1)
  {
    goto LABEL_12;
  }

LABEL_11:
  sub_100017D5C(a1, a2);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v13 == 1)
  {
    goto LABEL_12;
  }

  return v12;
}

unint64_t sub_1010BED08()
{
  result = qword_1016C7310;
  if (!qword_1016C7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7310);
  }

  return result;
}

uint64_t sub_1010BED5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v14 = *(a1 + 16);
      v13 = *(a1 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v16 == 19)
      {
        goto LABEL_8;
      }
    }

LABEL_13:
    sub_1010BF0DC();
    swift_allocError();
    *v21 = 0;
LABEL_14:
    swift_willThrow();
    return sub_100016590(a1, a2);
  }

  if (!v12)
  {
    if (BYTE6(a2) != 19)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(a1) - a1 != 19)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = a3;
  v17 = sub_1010BE81C(0, a1, a2);
  if (v4)
  {
    return sub_100016590(a1, a2);
  }

  if (v17 != 18)
  {
    sub_1010BF0DC();
    swift_allocError();
    *v23 = 1;
    goto LABEL_14;
  }

  LOBYTE(v34[0]) = sub_1010BE81C(1, a1, a2);
  sub_1000198E8();
  v18 = FixedWidthInteger.data.getter();
  v20 = v19;
  v3 = sub_1010BEBB0(v18, v19);
  sub_100016590(v18, v20);
  sub_100017D5C(a1, a2);
  v8 = sub_1010BE81C(3, a1, a2);
  v5 = sub_1010BE9F0(4, a1, a2);
  v6 = sub_1010BE9F0(5, a1, a2);
  v7 = sub_1010BE9F0(6, a1, a2);
  v46 = sub_1010BE9F0(7, a1, a2);
  v45 = sub_1010BE9F0(8, a1, a2);
  v27 = sub_1010BE9F0(9, a1, a2);
  v26 = sub_1010BE9F0(10, a1, a2);
LABEL_19:
  sub_100016590(a1, a2);
  *&v29 = a1;
  *(&v29 + 1) = a2;
  LOBYTE(v30) = v3;
  WORD1(v30) = v8;
  *(&v30 + 1) = v5;
  *&v31 = v6;
  *(&v31 + 1) = v7;
  LODWORD(v32) = v46;
  DWORD1(v32) = v45;
  DWORD2(v32) = v27;
  HIDWORD(v32) = v26;
  v33 = 1;
  v34[0] = a1;
  v34[1] = a2;
  v35 = v3;
  v36 = v8;
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v40 = v46;
  v41 = v45;
  v42 = v27;
  v43 = v26;
  v44 = 1;
  sub_100766AC0(&v29, v28);
  result = sub_100766C08(v34);
  v24 = v32;
  *(v9 + 32) = v31;
  *(v9 + 48) = v24;
  *(v9 + 64) = v33;
  v25 = v30;
  *v9 = v29;
  *(v9 + 16) = v25;
  return result;
}

unint64_t sub_1010BF0DC()
{
  result = qword_1016C7318;
  if (!qword_1016C7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7318);
  }

  return result;
}

unint64_t sub_1010BF130()
{
  result = qword_1016C7320;
  if (!qword_1016C7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7320);
  }

  return result;
}

unint64_t sub_1010BF1C8()
{
  result = qword_1016C7328;
  if (!qword_1016C7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7328);
  }

  return result;
}

unint64_t sub_1010BF220()
{
  result = qword_1016C7330;
  if (!qword_1016C7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7330);
  }

  return result;
}

unint64_t sub_1010BF278()
{
  result = qword_1016C7338;
  if (!qword_1016C7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7338);
  }

  return result;
}

uint64_t sub_1010BF2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessoryCommand();
  v4 = (v1 + *(v3 + 24));
  v5 = v4[1];
  v6 = v4[4];
  v7 = (v6 >> 59) & 6 | ((v5 & 0x2000000000000000) != 0);
  if (v7 <= 1)
  {
    if (!v7)
    {
      v12 = *(v1 + *(v3 + 28));
      v9 = type metadata accessor for ConnectUseCase();
      v10 = *(*(v9 - 8) + 104);
      if (v12 == 1)
      {
        v11 = &enum case for ConnectUseCase.unpairHELE(_:);
      }

      else
      {
        v11 = &enum case for ConnectUseCase.unpair(_:);
      }

      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if ((v7 - 2) >= 2)
  {
    if (v7 == 4)
    {
      goto LABEL_9;
    }

    v17 = *v4;
    v18 = v4[5];
    v19 = v4[2] | v4[3];
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v6 == 0x2000000000000000;
    }

    if (!v20 || v5 != 0x2000000000000000 || (v19 | v17) != 0)
    {
      v23 = !v18 && v6 == 0x2000000000000000;
      v24 = v23 && v5 == 0x2000000000000000;
      v25 = v24 && v17 == 1;
      if (!v25 || v19 != 0)
      {
        if (!v18 && v6 == 0x2000000000000000 && v5 == 0x2000000000000000 && v17 == 2 && !v19 || !v18 && v6 == 0x2000000000000000 && v5 == 0x2000000000000000 && v17 == 3 && !v19 || !v18 && v6 == 0x2000000000000000 && v5 == 0x2000000000000000 && v17 == 4 && !v19)
        {
          goto LABEL_3;
        }

LABEL_9:
        v13 = enum case for ConnectUseCase.findMyUTTransient(_:);
        v14 = type metadata accessor for ConnectUseCase();
        v10 = *(*(v14 - 8) + 104);
        v9 = v14;
        v15 = a1;
        v16 = v13;
        goto LABEL_40;
      }
    }

LABEL_35:
    v27 = *(v1 + *(v3 + 28));
    v9 = type metadata accessor for ConnectUseCase();
    v10 = *(*(v9 - 8) + 104);
    if (v27 == 1)
    {
      v11 = &enum case for ConnectUseCase.playSoundHELE(_:);
    }

    else
    {
      v11 = &enum case for ConnectUseCase.playSound(_:);
    }

    goto LABEL_39;
  }

LABEL_3:
  v8 = *(v1 + *(v3 + 28));
  v9 = type metadata accessor for ConnectUseCase();
  v10 = *(*(v9 - 8) + 104);
  if (v8 == 1)
  {
    v11 = &enum case for ConnectUseCase.findMyActionHELETransient(_:);
  }

  else
  {
    v11 = &enum case for ConnectUseCase.findMyActionTransient(_:);
  }

LABEL_39:
  v16 = *v11;
  v15 = a1;
LABEL_40:

  return v10(v15, v16, v9);
}

void sub_1010BF57C(unint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccessoryCommand() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[4];
  v7 = (v6 >> 59) & 6 | ((v4 & 0x2000000000000000) != 0);
  if (v7 > 2)
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v3[5];
    if (v7 == 3)
    {
      v21 = v6 & 0xCFFFFFFFFFFFFFFFLL;
      v11 = v4 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      v12 = v6 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      sub_100017D5C(*v3, v4 & 0xDFFFFFFFFFFFFFFFLL);
      sub_100017D5C(v9, v21);
      goto LABEL_44;
    }

    if (v7 != 4)
    {
      v13 = v9 | v8;
      v14 = !v10 && v6 == 0x2000000000000000;
      v15 = v14 && v4 == 0x2000000000000000;
      if (!v15 || (v9 | v8 | v5) != 0)
      {
        v11 = 0x2000000000000000;
        if (v10)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 == 0x2000000000000000;
        }

        if (v17 && v4 == 0x2000000000000000 && v5 == 1 && v13 == 0)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 1;
          v12 = 0x2000000000000000;
          goto LABEL_44;
        }

        if (!v10 && v6 == 0x2000000000000000 && v4 == 0x2000000000000000 && v5 == 2 && !v13)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 4;
          v12 = 0x2000000000000000;
          goto LABEL_44;
        }

        if (!v10 && v6 == 0x2000000000000000 && v4 == 0x2000000000000000 && v5 == 3 && !v13)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 5;
          v12 = 0x2000000000000000;
          goto LABEL_44;
        }

        if (!v10 && v6 == 0x2000000000000000 && v4 == 0x2000000000000000 && v5 == 4 && !v13)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 7;
          v12 = 0x2000000000000000;
          goto LABEL_44;
        }
      }
    }

    goto LABEL_43;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      v8 = 0;
      v9 = 0;
      v12 = 0;
      v10 = 0;
      v5 = v5;
      v11 = 0x2000000000000000;
      goto LABEL_44;
    }

    if (v5 < 6)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = qword_101404140[v5];
      v5 = qword_101404110[v5];
      v12 = v11;
      goto LABEL_44;
    }

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177B048);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected play sound context %ld", v25, 0xCu);
    }

LABEL_43:
    v5 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x3000000000000000;
    v12 = 0x3000000000000000;
    goto LABEL_44;
  }

  if (v5)
  {
    v11 = 0;
    v8 = 0;
    v9 = 0;
    v12 = 0;
    v10 = 0;
    v5 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x2000000000000000;
    v5 = 2;
    v12 = 0x2000000000000000;
  }

LABEL_44:
  *a1 = v5;
  a1[1] = v11;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v12;
  a1[5] = v10;
}

uint64_t sub_1010BF910()
{
  v1 = 65560;
  v2 = type metadata accessor for AccessoryCommand();
  v3 = (v0 + *(v2 + 24));
  v4 = v3[1];
  v5 = v3[4];
  v6 = (v5 >> 59) & 6 | ((v4 & 0x2000000000000000) != 0);
  if (v6 <= 1)
  {
    if (!v6)
    {
      v8 = *(v0 + *(v2 + 28)) == 0;
      v7 = -5;
      goto LABEL_34;
    }

LABEL_33:
    v8 = *(v0 + *(v2 + 28)) == 0;
    v7 = -3;
LABEL_34:
    if (!v8)
    {
      ++v7;
    }

    return (v7 + 65560);
  }

  if ((v6 - 2) < 2)
  {
LABEL_3:
    if (*(v0 + *(v2 + 28)))
    {
      v7 = -18;
    }

    else
    {
      v7 = -20;
    }

    return (v7 + 65560);
  }

  if (v6 != 4)
  {
    v9 = *v3;
    v10 = v3[5];
    v11 = v3[2] | v3[3];
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v5 == 0x2000000000000000;
    }

    if (!v12 || v4 != 0x2000000000000000 || (v11 | v9) != 0)
    {
      v15 = !v10 && v5 == 0x2000000000000000;
      v16 = v15 && v4 == 0x2000000000000000;
      v17 = v16 && v9 == 1;
      if (!v17 || v11 != 0)
      {
        if (!v10 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v9 == 2 && !v11 || !v10 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v9 == 3 && !v11 || !v10 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v9 == 4 && !v11)
        {
          goto LABEL_3;
        }

        return v1;
      }
    }

    goto LABEL_33;
  }

  return v1;
}

unint64_t CBUseCase.description.getter(int a1)
{
  if (a1 <= 65554)
  {
    switch(a1)
    {
      case 65536:
        goto LABEL_12;
      case 65540:
        _StringGuts.grow(_:)(36);

        v5 = 0xD000000000000021;
        goto LABEL_16;
      case 65542:
        _StringGuts.grow(_:)(40);

        v5 = 0xD000000000000025;
        goto LABEL_16;
    }
  }

  else
  {
    if (a1 <= 65556)
    {
      if (a1 != 65555)
      {
        _StringGuts.grow(_:)(31);

        v5 = 0xD00000000000001CLL;
LABEL_16:
        v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v2);

        v3._countAndFlagsBits = 41;
        v3._object = 0xE100000000000000;
        String.append(_:)(v3);
        return v5;
      }

LABEL_12:
      _StringGuts.grow(_:)(27);

      v5 = 0xD000000000000018;
      goto LABEL_16;
    }

    if (a1 == 65557)
    {
      _StringGuts.grow(_:)(30);

      v5 = 0xD00000000000001BLL;
      goto LABEL_16;
    }

    if (a1 == 65558)
    {
      _StringGuts.grow(_:)(34);

      v5 = 0xD00000000000001FLL;
      goto LABEL_16;
    }
  }

  v5 = 0x7361436573554243;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v5;
}

void sub_1010BFE0C(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccessoryCommand() + 24));
  v4 = v3[1];
  v5 = v3[4];
  v6 = (v5 >> 59) & 6 | ((v4 & 0x2000000000000000) != 0);
  v7 = v6 == 4;
  if (v6 >= 4)
  {
    v13 = *v3;
    if (v7)
    {
      v14 = 0;
      v15 = v13;
      v16 = 0x1000000000000000;
    }

    else
    {
      v18 = v3[5];
      v19 = v3[2] | v3[3];
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v5 == 0x2000000000000000;
      }

      if (v20 && v4 == 0x2000000000000000 && (v19 | v13) == 0)
      {
        goto LABEL_2;
      }

      v23 = !v18 && v5 == 0x2000000000000000;
      v24 = v23 && v4 == 0x2000000000000000;
      v25 = v24 && v13 == 1;
      if (v25 && v19 == 0)
      {
        goto LABEL_2;
      }

      v27 = !v18 && v5 == 0x2000000000000000;
      v28 = v27 && v4 == 0x2000000000000000;
      v29 = v28 && v13 == 2;
      v30 = v29 && v19 == 0;
      if (v30 || !v18 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v13 == 3 && !v19 || !v18 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v13 == 4 && !v19)
      {
        goto LABEL_2;
      }

      if (!v18 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v13 == 5 && !v19)
      {
        v31 = 0;
LABEL_68:
        *(a1 + 24) = &type metadata for AccessoryOwnerCommand;
        *(a1 + 32) = sub_100EDE524();
        *(a1 + 40) = sub_100DDA200();
        v32 = swift_allocObject();
        *a1 = v32;
        *(v32 + 16) = v31;
        *(v32 + 24) = 0;
        *(v32 + 32) = 0;
        *(v32 + 40) = 0;
        *(v32 + 48) = 2;
        return;
      }

      if (!v18 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v13 == 6 && !v19)
      {
        v31 = 1;
        goto LABEL_68;
      }

      if (!v18 && (v16 = 0x2000000000000000, v5 == 0x2000000000000000) && v4 == 0x2000000000000000 && v13 == 7 && !v19)
      {
        v14 = 1;
        v15 = 3;
      }

      else
      {
        v15 = v13 != 8;
        v14 = 1;
        v16 = 0x2000000000000000;
      }
    }

    *(a1 + 24) = &type metadata for AccessoryNonOwnerCommand;
    *(a1 + 32) = sub_10038BDD8();
    *(a1 + 40) = sub_10038BD74();
    v17 = swift_allocObject();
    *a1 = v17;
    *(v17 + 16) = v15;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 40) = v16;
    *(v17 + 48) = v14;
    return;
  }

LABEL_2:
  sub_1010BF57C(&v33);
  v8 = v34;
  v9 = v36;
  if ((~(v34 & v36) & 0x3000000000000000) != 0)
  {
    v10 = v33;
    v11 = v37;
    *(a1 + 24) = &type metadata for AccessoryConfigCommand;
    *(a1 + 32) = sub_10067C180();
    *(a1 + 40) = sub_10067C1D4();
    v12 = swift_allocObject();
    *a1 = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v8;
    *(v12 + 32) = v35;
    *(v12 + 48) = v9;
    *(v12 + 56) = v11;
  }

  else
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

uint64_t type metadata accessor for AccessoryCommand()
{
  result = qword_1016C7398;
  if (!qword_1016C7398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1010C0720()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1010C07A8(uint64_t a1)
{
  v1 = (*(a1 + 32) >> 59) & 6 | ((*(a1 + 8) & 0x2000000000000000) != 0);
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1010C07D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 48))
  {
    return (*a1 + 11);
  }

  v3 = ((((*(a1 + 32) >> 58) & 0xC | (*(a1 + 8) >> 60) & 2) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 8) & 0x1000000000000000) != 0))) ^ 0xF;
  if (v3 >= 0xA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1010C083C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 & 8) != 0) | ((2 * (-a2 & 0xF)) & 3)) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 3) & 1 | (2 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_1010C08A8(uint64_t result)
{
  v1 = *(result + 32) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 8) &= ~0x2000000000000000uLL;
  *(result + 32) = v1;
  return result;
}

void *sub_1010C08C4(void *result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = result[4] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 3) << 60);
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    result[4] = v2;
  }

  else
  {
    *result = a2 - 5;
    result[1] = 0x2000000000000000;
    result[2] = 0;
    result[3] = 0;
    *(result + 2) = xmmword_10139BF70;
  }

  return result;
}

uint64_t sub_1010C0920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 200))
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

uint64_t sub_1010C0974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
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
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1010C0A04(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v18 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v18, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v6, *(&v6 + 1));
    v17 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v17, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v16 = v1[5];
    v6 = v1[5];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v16, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v15 = v1[6];
    v6 = v1[6];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v15, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v14 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v14, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v13 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v13, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v12 = v1[7];
    v6 = v1[7];
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

__n128 sub_1010C0E3C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1010C0F5C(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_1010C0ED8(uint64_t a1)
{
  *(a1 + 8) = sub_1010C0F08();
  result = sub_100A22174();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1010C0F08()
{
  result = qword_1016C73E0;
  if (!qword_1016C73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C73E0);
  }

  return result;
}

uint64_t sub_1010C0F5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v77, v78);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
LABEL_22:
    sub_100007BAC(v77);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v77, v78);
  v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v80 = v11;
  sub_10015049C(v77, v78);
  v75 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v76 = v12;
  sub_10015049C(v77, v78);
  v73 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v74 = v13;
  v14 = v79;
  sub_10015049C(v77, v78);
  v15 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v17 = v16;
  v18 = static MACAddress.length.getter();
  if ((v18 * 3) >> 64 != (3 * v18) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  v71 = v15;
  v72 = v17;
  if (__OFADD__(3 * v18, 60))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    if (qword_1016950D0 == -1)
    {
LABEL_19:
      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177C418);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v38, v39, "Invalid beaconPartId %ld!", v40, 0xCu);
      }

      v41 = type metadata accessor for BinaryDecodingError();
      sub_100247A38();
      swift_allocError();
      (*(*(v41 - 8) + 104))(v42, enum case for BinaryDecodingError.decodingError(_:), v41);
      swift_willThrow();
      sub_100016590(v51, v14);
      sub_100016590(v52, v53);
      sub_100016590(v54, v55);
      sub_100016590(v56, v57);
      sub_100016590(v58, v59);
      sub_100016590(v60, v61);
      sub_100016590(v62, v63);
      sub_100016590(v64, v65);
      sub_100016590(v67, v68);
      sub_100016590(v69, v70);
      sub_100016590(v71, v72);
      sub_100016590(v73, v74);
      sub_100016590(v75, v76);
      sub_100016590(v10, v80);
      sub_100016590(v8, v9);
      goto LABEL_22;
    }

LABEL_49:
    swift_once();
    goto LABEL_19;
  }

  sub_10015049C(v77, v78);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v20 = v19;
  LOBYTE(v66) = sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  v23 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  result = static MACAddress.length.getter();
  v22 = result + 20;
  if (__OFADD__(result, 20))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23 * v22;
  v22 = (v23 * v22) >> 64;
  if (v22 != v24 >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v24 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v69 = v14;
  v70 = v20;
  v67 = Data.subdata(in:)();
  v68 = v25;
  sub_10015049C(v77, v78);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v27 = v26;
  result = DataProtocol.intValue.getter();
  v22 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = 21 * v22;
  v22 = (v22 * 21) >> 64;
  if (v22 != v28 >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v28 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v64 = v14;
  v65 = v27;
  v62 = Data.subdata(in:)();
  v63 = v29;
  sub_10015049C(v77, v78);
  v60 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v61 = v30;
  sub_10015049C(v77, v78);
  v58 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v59 = v31;
  sub_10015049C(v77, v78);
  v56 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v57 = v32;
  sub_10015049C(v77, v78);
  v54 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v55 = v33;
  sub_10015049C(v77, v78);
  v52 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v53 = v34;
  v66 = DataProtocol.intValue.getter();
  sub_10015049C(v77, v78);
  v51 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v14 = v35;
  if (v66 > 3)
  {
    goto LABEL_18;
  }

  sub_100016590(v52, v53);
  sub_100016590(v64, v27);
  result = sub_100016590(v69, v70);
  if (v66 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v22 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v22)
    {
      v36 = BYTE6(v9);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_30:
  if (v22 != 2)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v43 = *(v8 + 16);
  v44 = *(v8 + 24);
  v45 = __OFSUB__(v44, v43);
  v36 = v44 - v43;
  if (v45)
  {
    __break(1u);
LABEL_34:
    LODWORD(v36) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v36 = v36;
  }

LABEL_36:
  if (v36 != 32)
  {
    goto LABEL_52;
  }

  v46 = v72 >> 62;
  if ((v72 >> 62) <= 1)
  {
    if (!v46)
    {
      v47 = BYTE6(v72);
      goto LABEL_46;
    }

LABEL_44:
    LODWORD(v47) = HIDWORD(v71) - v71;
    if (!__OFSUB__(HIDWORD(v71), v71))
    {
      v47 = v47;
      goto LABEL_46;
    }

    goto LABEL_51;
  }

  if (v46 != 2)
  {
    goto LABEL_53;
  }

  v49 = *(v71 + 16);
  v48 = *(v71 + 24);
  v45 = __OFSUB__(v48, v49);
  v47 = v48 - v49;
  if (v45)
  {
    __break(1u);
    goto LABEL_44;
  }

LABEL_46:
  if (v47 == 1)
  {
    sub_100007BAC(v77);
    result = sub_100007BAC(a1);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v71;
    *(a2 + 24) = v72;
    v50 = v80;
    *(a2 + 32) = v10;
    *(a2 + 40) = v50;
    *(a2 + 48) = v67;
    *(a2 + 56) = v68;
    *(a2 + 64) = v62;
    *(a2 + 72) = v63;
    *(a2 + 80) = v75;
    *(a2 + 88) = v76;
    *(a2 + 96) = v73;
    *(a2 + 104) = v74;
    *(a2 + 112) = v60;
    *(a2 + 120) = v61;
    *(a2 + 128) = v58;
    *(a2 + 136) = v59;
    *(a2 + 144) = v56;
    *(a2 + 152) = v57;
    *(a2 + 160) = v54;
    *(a2 + 168) = v55;
    *(a2 + 176) = v66;
    *(a2 + 184) = v51;
    *(a2 + 192) = v14;
    return result;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1010C16DC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C218;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 isInternalBuild];

  if (v6 && (v7 = String._bridgeToObjectiveC()(), v8 = [v4 BOOLForKey:v7], v7, (v8 & 1) != 0))
  {
    v9 = &enum case for FMNAccountType.none(_:);
  }

  else if (a1 == 2)
  {
    v9 = &enum case for FMNAccountType.thirdPartyAccessory(_:);
  }

  else
  {
    v9 = &enum case for FMNAccountType.accessory(_:);
  }

  v10 = *v9;
  v11 = type metadata accessor for FMNAccountType();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t type metadata accessor for AccessoryInfoEndPoint()
{
  result = qword_1016C7440;
  if (!qword_1016C7440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1010C18AC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLComponents();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FMNAccountType();
  v6 = *(v46 - 8);
  v7 = *(v6 + 8);
  v8 = __chkstk_darwin(v46);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v38 - v14;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C218;
  v17 = objc_opt_self();
  v18 = [v17 sharedInstance];
  v19 = [v18 isInternalBuild];

  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = [v16 BOOLForKey:v20];

    if (v21)
    {
      URLComponents.init(string:)();
      v6 = v15;
      if ((*(v3 + 48))(v15, 1, v2) != 1)
      {
        return (*(v3 + 32))(a1, v6, v2);
      }

      __break(1u);
    }
  }

  v41 = v17;
  v42 = v16;
  v43 = v3;
  v44 = v2;
  v39 = a1;
  v22 = v6;
  v40 = *(v6 + 2);
  v23 = v48;
  v24 = v46;
  v40(v11, v48, v46);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  v25 = sub_1010B32C8(v11);
  v26 = v25[2];
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  v38 = v25;
  OS_dispatch_queue.sync<A>(execute:)();
  v6 = v47;
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v27 = v45;
  v40(v45, v23, v24);
  if ((*(v22 + 11))(v27, v24) == enum case for FMNAccountType.thirdPartyAccessory(_:))
  {
    v28 = URLComponents.path.modify();
    v29._object = 0x800000010137ADC0;
    v29._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v29);
    v28(&v49, 0);
  }

  else
  {
    URLComponents.path.setter();
    (*(v22 + 1))(v27, v24);
  }

  v30 = [v41 sharedInstance];
  v31 = [v30 isInternalBuild];

  v3 = v43;
  v2 = v44;
  v32 = v42;
  if (v31)
  {
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 stringForKey:v33];

    if (v34)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v36 = result;
    v37 = [result aa_primaryAppleAccount];

    if (v37)
    {
    }

    else
    {
      URLComponents.host.setter();
    }

    a1 = v39;
    return (*(v3 + 32))(a1, v6, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010C1E70(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1000BC4D4(&qword_1016C7478, &qword_1014047B8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v98 = &v86 - v10;
  updated = type metadata accessor for UpdateDeviceState();
  v93 = *(updated - 8);
  v11 = *(v93 + 64);
  v12 = __chkstk_darwin(updated);
  v102 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v87 = &v86 - v15;
  __chkstk_darwin(v14);
  v86 = &v86 - v16;
  v100 = type metadata accessor for UUID();
  v104 = *(v100 - 8);
  v17 = *(v104 + 64);
  v18 = __chkstk_darwin(v100);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v96 = &v86 - v21;
  v22 = *(v3 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v23 = sub_100034838(v105);

  v24 = sub_1010C6214(v23, 9, a1);
  v25 = sub_1010C3744(v23, a2);
  sub_1010C6C3C(v23, a2, a3);

  v27 = sub_1010C7B3C(v26, v4);
  v101 = v4;

  v28 = *(v25 + 16);
  v29 = v24[2];
  v88 = 0;
  if (v28 > v29 >> 3)
  {
    v30 = sub_100610BC8(v25, v24);
  }

  else
  {
    v105 = v24;
    sub_10087D5B4(v25);
    v30 = v105;
  }

  if (*(v27 + 16) <= v30[2] >> 3)
  {
    v105 = v30;
    sub_10087D5B4(v27);
    v99 = v105;
  }

  else
  {
    v99 = sub_100610BC8(v27, v30);
  }

  v95 = v27;
  v103 = v25;
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v31 = qword_10177C400;
  v32 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  v94 = xmmword_101385D80;
  *(v33 + 16) = xmmword_101385D80;
  v91 = sub_1010C8B3C(&qword_1016967B0, &type metadata accessor for UUID);
  v34 = Set.description.getter();
  v36 = v35;

  *(v33 + 56) = &type metadata for String;
  v37 = sub_100008C00();
  *(v33 + 64) = v37;
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v92 = v31;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v38 = swift_allocObject();
  *(v38 + 16) = v94;
  v39 = Set.description.getter();
  v41 = v40;

  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = v37;
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v42 = swift_allocObject();
  *(v42 + 16) = v94;
  v43 = Set.description.getter();
  v45 = v44;

  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v37;
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v90 = v32;
  v46 = swift_allocObject();
  *(v46 + 16) = v94;
  v47 = v99;
  v48 = Set.description.getter();
  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = v37;
  v89 = v37;
  *(v46 + 32) = v48;
  *(v46 + 40) = v49;
  os_log(_:dso:log:_:_:)();

  v50 = v47 + 7;
  v51 = 1 << *(v47 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v47[7];
  v54 = (v51 + 63) >> 6;
  v103 = (v104 + 16);
  v95 = v104 + 8;
  v55 = (v93 + 48);
  swift_retain_n();

  v56 = 0;
  v91 = _swiftEmptyArrayStorage;
  v57 = v20;
LABEL_11:
  v58 = v56;
  v59 = v98;
  if (!v53)
  {
    goto LABEL_13;
  }

  do
  {
    v56 = v58;
LABEL_16:
    v60 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v61 = v100;
    v62 = v104;
    v63 = v96;
    (*(v104 + 16))(v96, v99[6] + *(v104 + 72) * (v60 | (v56 << 6)), v100);
    sub_1010C4828(v63, v59);
    v59 = v98;
    (*(v62 + 8))(v63, v61);
    if ((*v55)(v59, 1, updated) != 1)
    {
      v64 = v86;
      sub_100029488(v59, v86, type metadata accessor for UpdateDeviceState);
      sub_100029488(v64, v87, type metadata accessor for UpdateDeviceState);
      v65 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_100A5C4A8(0, v65[2] + 1, 1, v65);
      }

      v20 = v57;
      v91 = v65;
      v67 = v65[2];
      v66 = v65[3];
      if (v67 >= v66 >> 1)
      {
        v91 = sub_100A5C4A8(v66 > 1, v67 + 1, 1, v91);
      }

      v68 = v91;
      v91[2] = v67 + 1;
      sub_100029488(v87, v68 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v67, type metadata accessor for UpdateDeviceState);
      goto LABEL_11;
    }

    sub_10000B3A8(v59, &qword_1016C7478, &qword_1014047B8);
    v58 = v56;
    v20 = v57;
  }

  while (v53);
  while (1)
  {
LABEL_13:
    v56 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v56 >= v54)
    {
      break;
    }

    v53 = v50[v56];
    ++v58;
    if (v53)
    {
      goto LABEL_16;
    }
  }

  v105 = v91;

  v69 = v88;
  sub_1010C369C(&v105);
  if (v69)
  {

    __break(1u);
  }

  else
  {

    v70 = v105;
    v71 = v105[2];
    v72 = v100;
    v73 = v93;
    if (v71)
    {
      v105 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v71, 0);
      v74 = v105;
      v75 = *(v73 + 80);
      v99 = v70;
      v76 = v70 + ((v75 + 32) & ~v75);
      v77 = *(v73 + 72);
      do
      {
        v78 = v102;
        sub_10003500C(v76, v102, type metadata accessor for UpdateDeviceState);
        (*v103)(v20, v78, v72);
        sub_1010C8B84(v78, type metadata accessor for UpdateDeviceState);
        v105 = v74;
        v80 = v74[2];
        v79 = v74[3];
        if (v80 >= v79 >> 1)
        {
          sub_101123D4C(v79 > 1, v80 + 1, 1);
          v74 = v105;
        }

        v74[2] = v80 + 1;
        (*(v104 + 32))(v74 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v80, v20, v72);
        v76 += v77;
        --v71;
      }

      while (v71);
    }

    else
    {

      v74 = _swiftEmptyArrayStorage;
    }

    static os_log_type_t.default.getter();
    v81 = swift_allocObject();
    *(v81 + 16) = v94;
    v82 = Array.description.getter();
    v83 = v89;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 64) = v83;
    *(v81 + 32) = v82;
    *(v81 + 40) = v84;
    os_log(_:dso:log:_:_:)();

    return v74;
  }

  return result;
}

uint64_t sub_1010C294C(double a1)
{
  v3 = type metadata accessor for BeaconObservation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v70 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v63 - v9;
  v11 = __chkstk_darwin(v8);
  v73 = v63 - v12;
  __chkstk_darwin(v11);
  v14 = v63 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v16 = sub_100034838(v75);

  v17 = *(v16 + 16);

  v74 = v3;
  if (v17)
  {
    v19 = 0;
    v71 = _swiftEmptyArrayStorage;
    while (v19 < *(v16 + 16))
    {
      v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v21 = *(v4 + 72);
      sub_10003500C(v16 + v20 + v21 * v19, v14, type metadata accessor for BeaconObservation);
      v22 = v14[*(v3 + 24)];
      if ((v22 - 12) < 0x20 || ((1 << v22) & 0x67F) != 0)
      {
        result = sub_1010C8B84(v14, type metadata accessor for BeaconObservation);
      }

      else
      {
        sub_100029488(v14, v73, type metadata accessor for BeaconObservation);
        v23 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124308(0, *(v23 + 16) + 1, 1);
          v23 = v75;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v72 = v26 + 1;
          sub_101124308(v25 > 1, v26 + 1, 1);
          v27 = v72;
          v23 = v75;
        }

        *(v23 + 16) = v27;
        v71 = v23;
        result = sub_100029488(v73, v23 + v20 + v26 * v21, type metadata accessor for BeaconObservation);
        v3 = v74;
      }

      if (v17 == ++v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v71 = _swiftEmptyArrayStorage;
LABEL_15:

    v73 = *(v16 + 16);
    if (!v73)
    {
LABEL_32:

      return 0;
    }

    v28 = 0;
    v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v72 = v16 + v29;
    v30 = -a1;
    v67 = v71 + v29;
    v68 = xmmword_10138B360;
    while (v28 < *(v16 + 16))
    {
      v31 = *(v4 + 72);
      sub_10003500C(v72 + v31 * v28, v10, type metadata accessor for BeaconObservation);
      v32 = v10[*(v3 + 24)];
      if ((v32 - 10) >= 0x22 && ((1 << v32) & 0x1BF) == 0)
      {
        v33 = &v10[*(v74 + 20)];
        Date.timeIntervalSinceNow.getter();
        if (v34 >= v30)
        {
          v65 = static os_log_type_t.default.getter();
          if (qword_1016950B8 != -1)
          {
            swift_once();
          }

          v66 = qword_10177C400;
          v63[3] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v35 = swift_allocObject();
          *(v35 + 16) = v68;
          v36 = UUID.uuidString.getter();
          v38 = v37;
          *(v35 + 56) = &type metadata for String;
          v39 = sub_100008C00();
          *(v35 + 64) = v39;
          *(v35 + 32) = v36;
          *(v35 + 40) = v38;
          v40 = sub_10091E6AC(v32);
          *(v35 + 96) = &type metadata for String;
          *(v35 + 104) = v39;
          *(v35 + 72) = v40;
          *(v35 + 80) = v41;
          v42 = *(v74 + 20);
          v43 = type metadata accessor for Date();
          v44 = sub_1010C8B3C(&qword_1016969A0, &type metadata accessor for Date);
          v69 = v42;
          v63[1] = v44;
          v63[2] = v43;
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          *(v35 + 136) = &type metadata for String;
          *(v35 + 144) = v39;
          v64 = v39;
          *(v35 + 112) = v45;
          *(v35 + 120) = v46;
          os_log(_:dso:log:_:_:)();

          result = v71;
          v47 = v71[2];
          if (!v47)
          {
LABEL_33:

            static os_log_type_t.default.getter();
            v55 = swift_allocObject();
            *(v55 + 16) = v68;
            v56 = UUID.uuidString.getter();
            v57 = v64;
            *(v55 + 56) = &type metadata for String;
            *(v55 + 64) = v57;
            *(v55 + 32) = v56;
            *(v55 + 40) = v58;
            v59 = sub_10091E6AC(v32);
            *(v55 + 96) = &type metadata for String;
            *(v55 + 104) = v57;
            *(v55 + 72) = v59;
            *(v55 + 80) = v60;
            v61 = dispatch thunk of CustomStringConvertible.description.getter();
            *(v55 + 136) = &type metadata for String;
            *(v55 + 144) = v57;
            *(v55 + 112) = v61;
            *(v55 + 120) = v62;
            os_log(_:dso:log:_:_:)();

            sub_1010C8B84(v10, type metadata accessor for BeaconObservation);
            return 1;
          }

          v48 = 0;
          v49 = v67;
          while (v48 < *(result + 16))
          {
            v50 = v70;
            sub_10003500C(v49, v70, type metadata accessor for BeaconObservation);
            if (static UUID.== infix(_:_:)())
            {
              v51 = v50 + *(v74 + 20);
              v52 = static Date.> infix(_:_:)();
              v53 = v50;
              v54 = v52;
              sub_1010C8B84(v53, type metadata accessor for BeaconObservation);
              if (v54)
              {
                goto LABEL_17;
              }
            }

            else
            {
              sub_1010C8B84(v50, type metadata accessor for BeaconObservation);
            }

            ++v48;
            v49 += v31;
            result = v71;
            if (v47 == v48)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_36;
        }
      }

LABEL_17:
      ++v28;
      result = sub_1010C8B84(v10, type metadata accessor for BeaconObservation);
      v3 = v74;
      if (v28 == v73)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

char *sub_1010C3064(unsigned __int8 a1, uint64_t a2)
{
  v64 = a2;
  v4 = a1;
  v61 = type metadata accessor for UUID();
  v66 = *(v61 - 8);
  v5 = *(v66 + 64);
  __chkstk_darwin(v61);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for BeaconObservation();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  v9 = __chkstk_darwin(v60);
  v65 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v62 = &v55 - v12;
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = type metadata accessor for DateInterval();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  OS_dispatch_queue.sync<A>(execute:)();
  v21 = sub_100034838(v67);

  if (v4 == 44)
  {

    return _swiftEmptyArrayStorage;
  }

  v23 = a1;
  v55 = v7;
  v56 = v16;
  v24 = *(v16 + 16);
  v57 = v15;
  result = v24(v19, v64, v15);
  v26 = *(v21 + 16);
  v59 = v19;
  if (!v26)
  {
    v63 = _swiftEmptyArrayStorage;
    v29 = v61;
    v31 = v58;
LABEL_16:

    v39 = v63[2];
    if (v39)
    {
      v67 = _swiftEmptyArrayStorage;
      v40 = v63;
      sub_101123D4C(0, v39, 0);
      v41 = v40 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v42 = *(v31 + 72);
      v43 = v67;
      v44 = (v66 + 16);
      v45 = v55;
      do
      {
        v46 = v65;
        sub_10003500C(v41, v65, type metadata accessor for BeaconObservation);
        (*v44)(v45, v46, v29);
        sub_1010C8B84(v46, type metadata accessor for BeaconObservation);
        v67 = v43;
        v47 = v29;
        v49 = v43[2];
        v48 = v43[3];
        if (v49 >= v48 >> 1)
        {
          sub_101123D4C(v48 > 1, v49 + 1, 1);
          v43 = v67;
        }

        v43[2] = v49 + 1;
        (*(v66 + 32))(v43 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v49, v45, v47);
        v41 += v42;
        --v39;
        v29 = v47;
      }

      while (v39);
    }

    else
    {

      v43 = _swiftEmptyArrayStorage;
    }

    v50 = sub_10000954C(v43);

    v51 = *(v50 + 16);
    v53 = v56;
    v52 = v57;
    if (v51)
    {
      v22 = sub_1003A85FC(*(v50 + 16), 0);
      v54 = sub_1003A9D58(&v67, &v22[(*(v66 + 80) + 32) & ~*(v66 + 80)], v51, v50);
      sub_1000128F8();
      if (v54 == v51)
      {
LABEL_27:
        (*(v53 + 8))(v59, v52);
        return v22;
      }

      __break(1u);
    }

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v27 = v26;
  v28 = 0;
  v64 = v23;
  v63 = _swiftEmptyArrayStorage;
  v30 = v60;
  v29 = v61;
  v31 = v58;
  while (v28 < *(v21 + 16))
  {
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = *(v31 + 72);
    sub_10003500C(v21 + v32 + v33 * v28, v14, type metadata accessor for BeaconObservation);
    if (qword_1014047C0[v14[*(v30 + 24)]] == qword_1014047C0[v64] && (v34 = *(v30 + 20), (DateInterval.contains(_:)() & 1) != 0))
    {
      sub_100029488(v14, v62, type metadata accessor for BeaconObservation);
      v35 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101124308(0, v35[2] + 1, 1);
        v35 = v67;
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        sub_101124308(v37 > 1, v38 + 1, 1);
        v35 = v67;
      }

      v35[2] = v38 + 1;
      v63 = v35;
      result = sub_100029488(v62, v35 + v32 + v38 * v33, type metadata accessor for BeaconObservation);
      v30 = v60;
      v29 = v61;
    }

    else
    {
      result = sub_1010C8B84(v14, type metadata accessor for BeaconObservation);
    }

    if (v27 == ++v28)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1010C369C(void **a1)
{
  v2 = *(type metadata accessor for UpdateDeviceState() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3205C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1010C4FD0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1010C3744(uint64_t a1, double a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v130 = &v129 - v6;
  v7 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v139 = &v129 - v9;
  v143 = type metadata accessor for Date();
  v148 = *(v143 - 8);
  v10 = *(v148 + 64);
  v11 = __chkstk_darwin(v143);
  v131 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v129 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v129 - v16;
  __chkstk_darwin(v15);
  v142 = &v129 - v17;
  v18 = type metadata accessor for UUID();
  v158 = *(v18 - 8);
  v19 = *(v158 + 64);
  v20 = __chkstk_darwin(v18);
  v150 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v149 = &v129 - v23;
  __chkstk_darwin(v22);
  v25 = &v129 - v24;
  v152 = 0;
  v162 = type metadata accessor for BeaconObservation();
  v26 = *(v162 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v162);
  v160 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v157 = &v129 - v31;
  v32 = __chkstk_darwin(v30);
  v155 = &v129 - v33;
  v34 = __chkstk_darwin(v32);
  v161 = &v129 - v35;
  v36 = __chkstk_darwin(v34);
  v137 = &v129 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v129 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v129 - v42;
  __chkstk_darwin(v41);
  v45 = &v129 - v44;
  v46 = *(a1 + 16);

  v154 = v18;
  v159 = v26;
  v147 = a1;
  if (v46)
  {
    v47 = *(v26 + 72);
    v156 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v48 = a1 + v156;
    v49 = -a2;
    v153 = _swiftEmptyArrayStorage;
    v50 = v25;
    do
    {
      sub_10003500C(v48, v45, type metadata accessor for BeaconObservation);
      if (v45[*(v162 + 24)] == 6 && (v51 = &v45[*(v162 + 20)], Date.timeIntervalSinceNow.getter(), v52 >= v49))
      {
        sub_100029488(v45, v43, type metadata accessor for BeaconObservation);
        v53 = v153;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124308(0, v53[2] + 1, 1);
          v53 = v163;
        }

        v56 = v53[2];
        v55 = v53[3];
        if (v56 >= v55 >> 1)
        {
          sub_101124308(v55 > 1, v56 + 1, 1);
          v53 = v163;
        }

        v53[2] = v56 + 1;
        v153 = v53;
        sub_100029488(v43, v53 + v156 + v56 * v47, type metadata accessor for BeaconObservation);
        v18 = v154;
        v25 = v50;
      }

      else
      {
        sub_1010C8B84(v45, type metadata accessor for BeaconObservation);
      }

      v48 += v47;
      --v46;
    }

    while (v46);
  }

  else
  {
    v153 = _swiftEmptyArrayStorage;
  }

  v57 = v153[2];
  if (v57)
  {
    v163 = _swiftEmptyArrayStorage;
    v58 = v153;
    sub_101123D4C(0, v57, 0);
    v59 = v163;
    v60 = v58 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
    v156 = *(v159 + 72);
    v61 = (v158 + 16);
    do
    {
      sub_10003500C(v60, v40, type metadata accessor for BeaconObservation);
      (*v61)(v25, v40, v18);
      sub_1010C8B84(v40, type metadata accessor for BeaconObservation);
      v163 = v59;
      v62 = v18;
      v64 = v59[2];
      v63 = v59[3];
      if (v64 >= v63 >> 1)
      {
        sub_101123D4C(v63 > 1, v64 + 1, 1);
        v59 = v163;
      }

      v59[2] = v64 + 1;
      (*(v158 + 32))(v59 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v64, v25, v62);
      v60 += v156;
      --v57;
      v18 = v62;
    }

    while (v57);
  }

  else
  {

    v59 = _swiftEmptyArrayStorage;
  }

  v65 = v148;
  v66 = sub_10000954C(v59);

  v164 = v66;
  v67 = v66 + 56;
  v68 = 1 << *(v66 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v66 + 56);
  v153 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
  v71 = (v68 + 63) >> 6;
  v148 = v158 + 16;
  v147 = v158 + 32;
  v136 = (v65 + 16);
  v135 = (v65 + 32);
  v134 = (v159 + 48);
  v133 = (v65 + 8);
  v144 = (v158 + 8);
  v156 = v66;

  v73 = 0;
  v129 = xmmword_101385D80;
  v74 = v152;
  v75 = v150;
  v76 = v160;
  v146 = v66 + 56;
  v145 = v71;
  while (1)
  {
    if (!v70)
    {
      while (1)
      {
        v77 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_68;
        }

        if (v77 >= v71)
        {

          return v164;
        }

        v70 = *(v67 + 8 * v77);
        ++v73;
        if (v70)
        {
          v73 = v77;
          break;
        }
      }
    }

    v78 = v158;
    v79 = v149;
    v80 = v154;
    (*(v158 + 16))(v149, *(v156 + 48) + *(v158 + 72) * (__clz(__rbit64(v70)) | (v73 << 6)), v154);
    (*(v78 + 32))(v75, v79, v80);
    v81 = objc_autoreleasePoolPush();
    v82 = *(v153 + v151);
    sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
    OS_dispatch_queue.sync<A>(execute:)();
    v83 = v163;
    v84 = v163[2];
    v152 = v74;
    if (v84)
    {
      break;
    }

    v92 = _swiftEmptyArrayStorage;
    v86 = v159;
LABEL_50:
    v70 &= v70 - 1;
    objc_autoreleasePoolPop(v81);
    v102 = v92[2];
    if (v102)
    {
      v103 = v92 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
      result = sub_10003500C(v103, v161, type metadata accessor for BeaconObservation);
      v104 = v162;
      if (v102 != 1)
      {
        v115 = 1;
        while (v115 < v92[2])
        {
          sub_10003500C(v103 + *(v86 + 72) * v115, v76, type metadata accessor for BeaconObservation);
          v116 = *(v104 + 20);
          v117 = v161;
          if (static Date.< infix(_:_:)())
          {
            sub_1010C8B84(v117, type metadata accessor for BeaconObservation);
            v76 = v160;
            result = sub_100029488(v160, v117, type metadata accessor for BeaconObservation);
          }

          else
          {
            result = sub_1010C8B84(v76, type metadata accessor for BeaconObservation);
          }

          if (v102 == ++v115)
          {
            goto LABEL_52;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_52:

      v105 = v104;
      v106 = v137;
      sub_100029488(v161, v137, type metadata accessor for BeaconObservation);
      v107 = v106 + *(v105 + 20);
      v108 = v138;
      v109 = v143;
      v140 = *v136;
      v140(v138, v107, v143);
      sub_1010C8B84(v106, type metadata accessor for BeaconObservation);
      v110 = v150;
      v111 = v142;
      v141 = *v135;
      (v141)(v142, v108, v109);
      v112 = swift_allocObject();
      *(v112 + 16) = &off_1016084E8;
      v113 = sub_100035730(v110, sub_1010C8BF0, v112);

      v114 = v139;
      sub_1012BB138(v113, v139);

      if ((*v134)(v114, 1, v105) == 1)
      {
        (*v133)(v111, v109);
        (*v144)(v110, v154);
        result = sub_10000B3A8(v114, &qword_1016A42E0, &qword_1013B0010);
        v75 = v110;
        goto LABEL_65;
      }

      v140(v131, v114 + *(v105 + 20), v109);
      sub_1010C8B84(v114, type metadata accessor for BeaconObservation);
      v118 = v132;
      v141();
      if (static Date.< infix(_:_:)())
      {
        static os_log_type_t.debug.getter();
        v71 = v145;
        if (qword_1016950B8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v119 = swift_allocObject();
        *(v119 + 16) = v129;
        v120 = v150;
        v121 = UUID.uuidString.getter();
        v123 = v122;
        *(v119 + 56) = &type metadata for String;
        *(v119 + 64) = sub_100008C00();
        *(v119 + 32) = v121;
        *(v119 + 40) = v123;
        v75 = v120;
        os_log(_:dso:log:_:_:)();

        v124 = v130;
        sub_1010F6584(v120, v130);
        sub_10000B3A8(v124, &qword_1016980D0, &unk_10138F3B0);
        v125 = *v133;
        v126 = v143;
        (*v133)(v132, v143);
        v125(v142, v126);
        result = (*v144)(v75, v154);
        v76 = v160;
        v67 = v146;
        v74 = v152;
      }

      else
      {
        v127 = v118;
        v128 = *v133;
        (*v133)(v127, v109);
        v128(v111, v109);
        v75 = v150;
        result = (*v144)(v150, v154);
LABEL_65:
        v76 = v160;
        v67 = v146;
        v71 = v145;
        v74 = v152;
      }
    }

    else
    {

      result = (*v144)(v75, v154);
      v67 = v146;
      v71 = v145;
    }
  }

  v85 = sub_1000210EC(v75);
  v86 = v159;
  if ((v87 & 1) == 0)
  {

    v92 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  v88 = *(v83[7] + 8 * v85);

  v89 = *(v88 + 16);
  if (v89)
  {
    v90 = sub_100034824(*(v88 + 16), 0);
    v91 = sub_1000364B4(&v163, v90 + 4, v89, v88);
    result = sub_1000128F8();
    if (v91 != v89)
    {
      goto LABEL_70;
    }
  }

  else
  {

    v90 = _swiftEmptyArrayStorage;
  }

  v141 = v81;
  v93 = sub_100034838(v90);

  v94 = *(v93 + 16);
  v95 = v155;
  if (!v94)
  {
    v92 = _swiftEmptyArrayStorage;
LABEL_49:

    v74 = v152;
    v75 = v150;
    v86 = v159;
    v76 = v160;
    v81 = v141;
    goto LABEL_50;
  }

  v96 = 0;
  v92 = _swiftEmptyArrayStorage;
  while (v96 < *(v93 + 16))
  {
    v97 = (*(v159 + 80) + 32) & ~*(v159 + 80);
    v98 = *(v159 + 72);
    sub_10003500C(v93 + v97 + v98 * v96, v95, type metadata accessor for BeaconObservation);
    if (*(v95 + *(v162 + 24)) == 6)
    {
      sub_100029488(v95, v157, type metadata accessor for BeaconObservation);
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v163 = v92;
      if ((v99 & 1) == 0)
      {
        sub_101124308(0, v92[2] + 1, 1);
        v92 = v163;
      }

      v101 = v92[2];
      v100 = v92[3];
      if (v101 >= v100 >> 1)
      {
        sub_101124308(v100 > 1, v101 + 1, 1);
        v92 = v163;
      }

      v92[2] = v101 + 1;
      result = sub_100029488(v157, v92 + v97 + v101 * v98, type metadata accessor for BeaconObservation);
      v95 = v155;
    }

    else
    {
      result = sub_1010C8B84(v95, type metadata accessor for BeaconObservation);
    }

    if (v94 == ++v96)
    {
      goto LABEL_49;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1010C4828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v54 - v8;
  v9 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v61 = &v54 - v14;
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v65 = a1;
  v25 = sub_100035730(a1, sub_1010C4F44, 0);
  sub_1012BB138(v25, v16);

  v26 = type metadata accessor for BeaconObservation();
  v27 = *(*(v26 - 8) + 48);
  if (v27(v16, 1, v26) == 1)
  {
    sub_10000B3A8(v16, &qword_1016A42E0, &qword_1013B0010);
    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v29 = UUID.uuidString.getter();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)();

    updated = type metadata accessor for UpdateDeviceState();
    return (*(*(updated - 8) + 56))(a2, 1, 1, updated);
  }

  else
  {
    v60 = a2;
    v34 = &v16[*(v26 + 20)];
    v55 = v18[2];
    v55(v22, v34, v17);
    sub_1010C8B84(v16, type metadata accessor for BeaconObservation);
    v58 = v18;
    v59 = v24;
    v56 = v18[4];
    v57 = v18 + 4;
    v56(v24, v22, v17);
    v35 = swift_allocObject();
    *(v35 + 16) = 9;
    v36 = sub_100035730(v65, sub_1010C8BE4, v35);

    v37 = v61;
    sub_1012BB138(v36, v61);

    v38 = v27(v37, 1, v26);
    v54 = v18 + 2;
    if (v38 == 1)
    {
      sub_10000B3A8(v37, &qword_1016A42E0, &qword_1013B0010);
      v39 = 1;
      v40 = v63;
    }

    else
    {
      v40 = v63;
      v55(v63, (v37 + *(v26 + 20)), v17);
      sub_1010C8B84(v37, type metadata accessor for BeaconObservation);
      v39 = 0;
    }

    v41 = v17;
    v42 = v58[7];
    v42(v40, v39, 1, v17);
    v43 = swift_allocObject();
    *(v43 + 16) = 6;
    v44 = v65;
    v45 = sub_100035730(v65, sub_1010C8C0C, v43);

    v46 = v62;
    sub_1012BB138(v45, v62);

    if (v27(v46, 1, v26) == 1)
    {
      sub_10000B3A8(v46, &qword_1016A42E0, &qword_1013B0010);
      v47 = 1;
      v48 = v64;
    }

    else
    {
      v48 = v64;
      v55(v64, (v46 + *(v26 + 20)), v41);
      sub_1010C8B84(v46, type metadata accessor for BeaconObservation);
      v47 = 0;
    }

    v49 = v41;
    v50 = v59;
    v42(v48, v47, 1, v49);
    v51 = type metadata accessor for UUID();
    v52 = v60;
    (*(*(v51 - 8) + 16))(v60, v44, v51);
    v53 = type metadata accessor for UpdateDeviceState();
    v56((v52 + v53[5]), v50, v49);
    sub_1001578A0(v40, v52 + v53[6]);
    sub_1001578A0(v48, v52 + v53[7]);
    return (*(*(v53 - 1) + 56))(v52, 0, 1, v53);
  }
}

BOOL sub_1010C4F88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for BeaconObservation() + 24));

  return sub_1005C8B3C(v3, a2);
}

Swift::Int sub_1010C4FD0(uint64_t *a1)
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
        type metadata accessor for UpdateDeviceState();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UpdateDeviceState() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1010C5344(v8, v9, a1, v4);
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
    return sub_1010C50FC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1010C50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  updated = type metadata accessor for UpdateDeviceState();
  v8 = *(*(updated - 8) + 64);
  v9 = __chkstk_darwin(updated);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = updated;
    while (1)
    {
      sub_10003500C(v24, v18, type metadata accessor for UpdateDeviceState);
      sub_10003500C(v21, v14, type metadata accessor for UpdateDeviceState);
      v26 = *(v25 + 20);
      v27 = static Date.> infix(_:_:)();
      sub_1010C8B84(v14, type metadata accessor for UpdateDeviceState);
      result = sub_1010C8B84(v18, type metadata accessor for UpdateDeviceState);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_100029488(v24, v11, type metadata accessor for UpdateDeviceState);
      v25 = updated;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100029488(v11, v21, type metadata accessor for UpdateDeviceState);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1010C5344(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  updated = type metadata accessor for UpdateDeviceState();
  v116 = *(updated - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(updated);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1010C5C70(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = updated;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_10003500C(v114 + v25 * v24, v19, type metadata accessor for UpdateDeviceState);
      v27 = v26 + v25 * v21;
      v28 = v120;
      sub_10003500C(v27, v120, type metadata accessor for UpdateDeviceState);
      v29 = *(updated + 20);
      LODWORD(v115) = static Date.> infix(_:_:)();
      sub_1010C8B84(v28, type metadata accessor for UpdateDeviceState);
      result = sub_1010C8B84(v19, type metadata accessor for UpdateDeviceState);
      v106 = v21;
      v30 = v21 + 2;
      v117 = v25;
      v31 = v114 + v25 * (v21 + 2);
      while (v20 != v30)
      {
        sub_10003500C(v31, v19, type metadata accessor for UpdateDeviceState);
        v32 = v120;
        sub_10003500C(v5, v120, type metadata accessor for UpdateDeviceState);
        v33 = *(v121 + 20);
        v34 = static Date.> infix(_:_:)() & 1;
        sub_1010C8B84(v32, type metadata accessor for UpdateDeviceState);
        result = sub_1010C8B84(v19, type metadata accessor for UpdateDeviceState);
        ++v30;
        v31 += v117;
        v5 += v117;
        if ((v115 & 1) != v34)
        {
          v20 = v30 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      updated = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v35 = v117 * (v20 - 1);
          v36 = v20;
          v37 = v20 * v117;
          v115 = v20;
          v38 = v106;
          v39 = v106;
          v40 = v106 * v117;
          do
          {
            if (v38 != --v36)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_100029488(v41 + v40, v111, type metadata accessor for UpdateDeviceState);
              if (v40 < v35 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100029488(v111, v41 + v35, type metadata accessor for UpdateDeviceState);
            }

            ++v38;
            v35 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v38 < v36);
          v6 = v105;
          a4 = v107;
          updated = v121;
          v23 = v39;
          v20 = v115;
        }
      }
    }

    v42 = v118[1];
    if (v20 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v42)
    {
      v43 = v118[1];
    }

    else
    {
      v43 = v23 + a4;
    }

    if (v43 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v43)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v88 = v20;
    v89 = v23;
    v90 = *v118;
    v91 = *(v116 + 72);
    v92 = *v118 + v91 * (v20 - 1);
    v93 = -v91;
    v106 = v89;
    v94 = v89 - v20;
    v115 = v88;
    v109 = v91;
    v110 = v43;
    v5 = v90 + v88 * v91;
LABEL_86:
    v113 = v5;
    v114 = v94;
    v117 = v92;
LABEL_87:
    a4 = type metadata accessor for UpdateDeviceState;
    sub_10003500C(v5, v19, type metadata accessor for UpdateDeviceState);
    v95 = v120;
    sub_10003500C(v92, v120, type metadata accessor for UpdateDeviceState);
    v96 = *(updated + 20);
    v97 = static Date.> infix(_:_:)();
    sub_1010C8B84(v95, type metadata accessor for UpdateDeviceState);
    result = sub_1010C8B84(v19, type metadata accessor for UpdateDeviceState);
    if (v97)
    {
      break;
    }

    updated = v121;
LABEL_85:
    v21 = v110;
    v92 = v117 + v109;
    v94 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v44 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      result = sub_100A5B430((v44 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v45 = &v22[16 * a4];
    *(v45 + 4) = v23;
    *(v45 + 5) = v21;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v22[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_111;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_114;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v63 >= v55)
          {
            v81 = &v22[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_121;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_113;
            }

            v64 = &v22[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_116;
            }

            v70 = &v22[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_120;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v22 + 4);
            v49 = *(v22 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_115;
          }

          v77 = &v22[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v85 = v22;
        v86 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v47 + 40];
        sub_1010C5C70(*v118 + *(v116 + 72) * v86, *v118 + *(v116 + 72) * *&v22[16 * v47 + 32], *v118 + *(v116 + 72) * v5, v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_100B31E68(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v85;
        result = sub_100B31DDC(v47);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    updated = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v90)
  {
    a4 = type metadata accessor for UpdateDeviceState;
    v98 = v119;
    sub_100029488(v5, v119, type metadata accessor for UpdateDeviceState);
    updated = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_100029488(v98, v92, type metadata accessor for UpdateDeviceState);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1010C5C70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  updated = type metadata accessor for UpdateDeviceState();
  v8 = *(*(updated - 8) + 64);
  v9 = __chkstk_darwin(updated);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v46 = &v38 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v42 = a1;
      v43 = a4;
      v41 = -v14;
      do
      {
        v39 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v44 = v28;
        v45 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v39;
            goto LABEL_59;
          }

          v40 = v25;
          v31 = updated;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v46;
          sub_10003500C(v33, v46, type metadata accessor for UpdateDeviceState);
          v35 = v47;
          sub_10003500C(v29, v47, type metadata accessor for UpdateDeviceState);
          v36 = *(v31 + 20);
          LOBYTE(v31) = static Date.> infix(_:_:)();
          sub_1010C8B84(v35, type metadata accessor for UpdateDeviceState);
          sub_1010C8B84(v34, type metadata accessor for UpdateDeviceState);
          if (v31)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v37 = a3 == v27;
            a3 = v32;
            a1 = v42;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v44;
          v30 = v33 > v43;
          v29 = v45;
          v26 = v41;
          if (!v30)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (a3 < v44 || v32 >= v44)
        {
          a3 = v32;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v41;
          a1 = v42;
          v25 = v40;
        }

        else
        {
          v37 = a3 == v44;
          a3 = v32;
          a2 = v45;
          v26 = v41;
          a1 = v42;
          v25 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v43);
    }

LABEL_58:
    v51 = a2;
    v49 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v46;
        sub_10003500C(a2, v46, type metadata accessor for UpdateDeviceState);
        v22 = v47;
        sub_10003500C(a4, v47, type metadata accessor for UpdateDeviceState);
        v23 = *(updated + 20);
        v24 = static Date.> infix(_:_:)();
        sub_1010C8B84(v22, type metadata accessor for UpdateDeviceState);
        sub_1010C8B84(v21, type metadata accessor for UpdateDeviceState);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AAFC(&v51, &v50, &v49);
  return 1;
}

unint64_t *sub_1010C6178(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1010C70E4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1010C6214(uint64_t a1, char a2, double a3)
{
  v97 = type metadata accessor for UUID();
  v80 = *(v97 - 8);
  v6 = *(v80 + 64);
  __chkstk_darwin(v97);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A9620, &qword_1013BB5A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v78 = &v76 - v11;
  v77 = type metadata accessor for TimeZone();
  v83 = *(v77 - 8);
  v12 = *(v83 + 64);
  __chkstk_darwin(v77);
  v91 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Date();
  v88 = *(v93 - 8);
  v14 = *(v88 + 64);
  __chkstk_darwin(v93);
  v92 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for BeaconObservation();
  v16 = *(v99 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v99);
  v79 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v90 = &v76 - v21;
  v22 = __chkstk_darwin(v20);
  v95 = &v76 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v76 - v25;
  __chkstk_darwin(v24);
  v28 = &v76 - v27;
  v29 = *(a1 + 16);

  v81 = v8;
  v96 = v16;
  v89 = a1;
  if (v29)
  {
    v30 = *(v16 + 72);
    v98 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v31 = a1 + v98;
    v32 = a2;
    v33 = _swiftEmptyArrayStorage;
    do
    {
      sub_10003500C(v31, v28, type metadata accessor for BeaconObservation);
      if (qword_1014047C0[v28[*(v99 + 24)]] == qword_1014047C0[v32] && (v34 = &v28[*(v99 + 20)], Date.timeIntervalSinceNow.getter(), v35 >= -a3))
      {
        sub_100029488(v28, v26, type metadata accessor for BeaconObservation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100[0] = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124308(0, v33[2] + 1, 1);
          v33 = v100[0];
        }

        v38 = v33[2];
        v37 = v33[3];
        v39 = v33;
        if (v38 >= v37 >> 1)
        {
          sub_101124308(v37 > 1, v38 + 1, 1);
          v39 = v100[0];
        }

        *(v39 + 16) = v38 + 1;
        sub_100029488(v26, v39 + v98 + v38 * v30, type metadata accessor for BeaconObservation);
        v8 = v81;
        v33 = v39;
      }

      else
      {
        sub_1010C8B84(v28, type metadata accessor for BeaconObservation);
      }

      v31 += v30;
      --v29;
    }

    while (v29);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v40 = v97;
  v41 = v33;
  v89 = v33[2];
  if (v89)
  {
    result = objc_opt_self();
    v43 = 0;
    v44 = v96;
    v45 = v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v87 = (v83 + 48);
    v88 += 8;
    v84 = (v83 + 32);
    v85 = result;
    v83 += 8;
    *&v46 = 141558531;
    v76 = v46;
    v47 = v78;
    v48 = v77;
    v49 = v95;
    v94 = v33;
    v86 = v45;
    do
    {
      if (v43 >= v41[2])
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v82 = *(v44 + 72);
      sub_10003500C(v45 + v82 * v43, v49, type metadata accessor for BeaconObservation);
      v51 = v49 + *(v99 + 20);
      v52 = v92;
      Date.addingTimeInterval(_:)();
      v53.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*v88)(v52, v93);
      TimeZone.init(secondsFromGMT:)();
      result = (*v87)(v47, 1, v48);
      if (result == 1)
      {
        goto LABEL_32;
      }

      v54 = v91;
      (*v84)(v91, v47, v48);
      isa = TimeZone._bridgeToObjectiveC()().super.isa;
      (*v83)(v54, v48);
      v56 = [v85 stringFromDate:v53.super.isa timeZone:isa formatOptions:1907];

      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = static os_log_type_t.default.getter();
      if (qword_1016950B8 != -1)
      {
        swift_once();
      }

      v60 = qword_10177C400;
      v61 = v90;
      sub_10003500C(v49, v90, type metadata accessor for BeaconObservation);
      if (os_log_type_enabled(v60, v59))
      {
        v62 = swift_slowAlloc();
        v100[0] = swift_slowAlloc();
        *v62 = v76;
        *(v62 + 4) = 1752392040;
        *(v62 + 12) = 2081;
        sub_1010C8B3C(&qword_101696930, &type metadata accessor for UUID);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        sub_1010C8B84(v61, type metadata accessor for BeaconObservation);
        v66 = sub_1000136BC(v63, v65, v100);

        *(v62 + 14) = v66;
        v48 = v77;
        *(v62 + 22) = 2082;
        v67 = sub_1000136BC(v98, v58, v100);

        *(v62 + 24) = v67;
        v47 = v78;
        _os_log_impl(&_mh_execute_header, v60, v59, "Beacon %{private,mask.hash}s next eligible: %{public}s", v62, 0x20u);
        swift_arrayDestroy();
        v40 = v97;

        v8 = v81;

        v50 = v95;
        v49 = v95;
      }

      else
      {

        sub_1010C8B84(v61, type metadata accessor for BeaconObservation);
        v50 = v49;
      }

      result = sub_1010C8B84(v50, type metadata accessor for BeaconObservation);
      v44 = v96;
      ++v43;
      v41 = v94;
      v45 = v86;
    }

    while (v89 != v43);
    v68 = v94[2];
    if (!v68)
    {
      goto LABEL_29;
    }

    v100[0] = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v68, 0);
    v69 = v100[0];
    v70 = (v80 + 16);
    v71 = v82;
    do
    {
      v72 = v79;
      sub_10003500C(v45, v79, type metadata accessor for BeaconObservation);
      (*v70)(v8, v72, v40);
      sub_1010C8B84(v72, type metadata accessor for BeaconObservation);
      v100[0] = v69;
      v74 = v69[2];
      v73 = v69[3];
      if (v74 >= v73 >> 1)
      {
        sub_101123D4C(v73 > 1, v74 + 1, 1);
        v69 = v100[0];
      }

      v69[2] = v74 + 1;
      (*(v80 + 32))(v69 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v74, v8, v40);
      v45 += v71;
      --v68;
    }

    while (v68);
  }

  else
  {
LABEL_29:

    v69 = _swiftEmptyArrayStorage;
  }

  v75 = sub_10000954C(v69);

  return v75;
}