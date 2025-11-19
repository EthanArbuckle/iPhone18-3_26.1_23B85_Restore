double sub_1001753DC@<D0>(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  v7[88] = 0;
  v8 = xmmword_100282980;
  *&v9 = Error.localizedDescription.getter();
  *(&v9 + 1) = v2;
  v10 = 0uLL;
  *&v11 = 0x3FF8000000000000;
  WORD4(v11) = 256;
  *&v12 = _swiftEmptyArrayStorage;
  *(&v12 + 1) = sub_10016F694;
  v13 = 0;
  v14 = xmmword_100282980;
  v15 = v9;
  v16 = v2;
  v17 = 0;
  v18 = 0;
  v19 = 0x3FF8000000000000;
  v20 = 256;
  v21 = _swiftEmptyArrayStorage;
  v22 = sub_10016F694;
  v23 = 0;
  sub_100009848(&v8, v7, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(&v14, &qword_100348BF8, &unk_100283030);
  v3 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v3;
  *(a1 + 64) = v12;
  v4 = v13;
  result = *&v8;
  v6 = v9;
  *a1 = v8;
  *(a1 + 16) = v6;
  *(a1 + 80) = v4;
  *(a1 + 88) = sub_100176980;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_1001754F0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) = v4;
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = sub_100035D04(&qword_100348BD0, &qword_100283008);
      v8 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
      *&v6 = swift_allocObject();
      sub_1001721F4(v6 + 16);
    }

    else
    {
      v7 = sub_100035D04(&qword_100348BD0, &qword_100283008);
      v8 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
      *&v6 = swift_allocObject();
      sub_100175684(v6 + 16);
    }
  }

  else
  {
    v7 = sub_100035D04(&qword_100348C08, &qword_100283050);
    v8 = sub_10000E244(&qword_100348C10, &qword_100348C08, &qword_100283050);
    *&v6 = swift_allocObject();
    sub_100172318(v6 + 16);
  }

  result = sub_10000E754(&v6, a3);
  *(a3 + 40) = 1;
  return result;
}

double sub_100175684@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  *&v7 = 0xD00000000000001DLL;
  *(&v7 + 1) = 0x80000001002A2C50;
  *v9 = 0;
  v8 = 0uLL;
  *&v9[8] = xmmword_100282990;
  *&v9[24] = 257;
  *&v10 = &off_100301898;
  *(&v10 + 1) = sub_10016F694;
  v11 = 0;
  v12[0] = 0xD00000000000001DLL;
  v12[1] = 0x80000001002A2C50;
  memset(&v12[2], 0, 24);
  v13 = xmmword_100282990;
  v14 = 257;
  v15 = &off_100301898;
  v16 = sub_10016F694;
  v17 = 0;
  sub_100009848(&v7, v6, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v12, &qword_100348BF8, &unk_100283030);
  v2 = *&v9[16];
  *(a1 + 32) = *v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v10;
  v3 = v11;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_100178784;
  *(a1 + 96) = 0;
  return result;
}

double sub_10017579C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v9[88] = 1;
  *&v10 = 0xD00000000000001BLL;
  *(&v10 + 1) = 0x80000001002A2C70;
  *&v11 = 0xD000000000000020;
  *(&v11 + 1) = 0x80000001002A2C90;
  *&v13 = 0;
  v12 = 0uLL;
  WORD4(v13) = 257;
  *&v14 = &off_1003018C8;
  *(&v14 + 1) = sub_10016F694;
  v15 = 0;
  v16[0] = 0xD00000000000001BLL;
  v16[1] = 0x80000001002A2C70;
  v16[2] = 0xD000000000000020;
  v16[3] = 0x80000001002A2C90;
  memset(&v16[4], 0, 24);
  v17 = 257;
  v18 = &off_1003018C8;
  v19 = sub_10016F694;
  v20 = 0;
  sub_100009848(&v10, v9, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v16, &qword_100348BF8, &unk_100283030);
  v4 = swift_allocObject();
  *(v4 + 16) = 19279;
  *(v4 + 24) = 0xE200000000000000;
  *(v4 + 32) = a1;
  v5 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v5;
  *(a2 + 64) = v14;
  v6 = v15;
  result = *&v10;
  v8 = v11;
  *a2 = v10;
  *(a2 + 16) = v8;
  *(a2 + 80) = v6;
  *(a2 + 88) = sub_100178430;
  *(a2 + 96) = v4;
  return result;
}

uint64_t sub_1001758EC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem) = v4;
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
      v11 = sub_100035D04(&qword_100348C38, &qword_1002830B8);
      v12 = sub_10000E244(&qword_100348C40, &qword_100348C38, &qword_1002830B8);
      *&v10 = swift_allocObject();
      v6 = v10 + 16;
      v7 = 1;
      goto LABEL_10;
    }

    v8 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
    v11 = sub_100035D04(&qword_100348C48, &qword_1002830C0);
    v12 = sub_10000E244(&qword_100348C50, &qword_100348C48, &qword_1002830C0);
    *&v10 = swift_allocObject();
    sub_100175D28(0, v8, v10 + 16);
  }

  else
  {
    if (v4 == 2)
    {
      v5 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
      v11 = sub_100035D04(&qword_100348C38, &qword_1002830B8);
      v12 = sub_10000E244(&qword_100348C40, &qword_100348C38, &qword_1002830B8);
      *&v10 = swift_allocObject();
      v6 = v10 + 16;
      v7 = 2;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
      v11 = sub_100035D04(&qword_100348C38, &qword_1002830B8);
      v12 = sub_10000E244(&qword_100348C40, &qword_100348C38, &qword_1002830B8);
      *&v10 = swift_allocObject();
      v6 = v10 + 16;
      v7 = 3;
LABEL_10:
      sub_100175BCC(v7, v5, v6);
      goto LABEL_11;
    }

    v11 = sub_100035D04(&qword_100348BD0, &qword_100283008);
    v12 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
    *&v10 = swift_allocObject();
    sub_10017579C(5, v10 + 16);
  }

LABEL_11:
  result = sub_10000E754(&v10, a3);
  *(a3 + 40) = 1;
  return result;
}

double sub_100175BCC@<D0>(char a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v11[88] = 1;
  *&v12 = 0xD000000000000014;
  *(&v12 + 1) = 0x80000001002A2F10;
  *&v13 = 0xD00000000000001BLL;
  *(&v13 + 1) = 0x80000001002A2F30;
  *&v15 = 0;
  v14 = 0uLL;
  WORD4(v15) = 257;
  if (a2 - 3 >= 5)
  {
    v5 = &off_100301908;
  }

  else
  {
    v5 = &off_100301930;
  }

  *&v16 = v5;
  *(&v16 + 1) = sub_100178058;
  v17 = 0;
  v18[0] = 0xD000000000000014;
  v18[1] = 0x80000001002A2F10;
  v18[2] = 0xD00000000000001BLL;
  v18[3] = 0x80000001002A2F30;
  memset(&v18[4], 0, 24);
  v19 = 257;
  v20 = v5;
  v21 = sub_100178058;
  v22 = 0;
  sub_100009848(&v12, v11, &qword_100348C60, &qword_1002830D0);
  sub_1000097E8(v18, &qword_100348C60, &qword_1002830D0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  v8 = v17;
  result = *&v12;
  v10 = v13;
  *a3 = v12;
  *(a3 + 16) = v10;
  *(a3 + 80) = v8;
  *(a3 + 88) = sub_1001784AC;
  *(a3 + 96) = v6;
  return result;
}

double sub_100175D28@<D0>(char a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = 0x646F50656D6F48;
  v5 = 0xE700000000000000;
  v6 = a2 - 3;
  if (a2 >= 3u)
  {
    v4 = 0x3E6563697665643CLL;
    v5 = 0xE800000000000000;
  }

  if (v6 >= 4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656E6F685069;
  }

  if (v6 >= 4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v10._object = 0x80000001002A2ED0;
  v10._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v7;
  v11._object = v8;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 63;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v18[88] = 1;
  v19 = xmmword_1002829A0;
  v20 = v25[0];
  *&v22 = 0;
  v21 = 0uLL;
  WORD4(v22) = 257;
  *&v23 = &off_100301958;
  *(&v23 + 1) = sub_100178100;
  v24 = 0;
  v25[0] = xmmword_1002829A0;
  v25[1] = v20;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 257;
  v30 = &off_100301958;
  v31 = sub_100178100;
  v32 = 0;
  sub_100009848(&v19, v18, &qword_100348C58, &qword_1002830C8);
  sub_1000097E8(v25, &qword_100348C58, &qword_1002830C8);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = v22;
  *(a3 + 32) = v21;
  *(a3 + 48) = v14;
  *(a3 + 64) = v23;
  v15 = v24;
  result = *&v19;
  v17 = v20;
  *a3 = v19;
  *(a3 + 16) = v17;
  *(a3 + 80) = v15;
  *(a3 + 88) = sub_1001784A4;
  *(a3 + 96) = v13;
  return result;
}

void sub_100175EF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = (a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments);
  v6 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments + 8);
  *v5 = *(a2 + 16);
  v5[1] = v4;

  *(a3 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
  *(a3 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
  v7 = swift_allocObject();
  *a3 = v7;
  sub_10017579C(5, v7 + 16);
  *(a3 + 40) = 1;
}

uint64_t sub_100175FC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a3;
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_intent) = *a2;
  v7 = sub_100035D04(&qword_100348BD0, &qword_100283008);
  v8 = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
  v9 = swift_allocObject();
  v10 = v9 + 16;
  if (v6 == 3)
  {
    sub_1001760B0(3u, v10);
  }

  else
  {
    sub_10017579C(a3, v10);
  }

  v13 = v7;
  v14 = v8;
  *&v12 = v9;
  result = sub_10000E754(&v12, a4);
  *(a4 + 40) = 1;
  return result;
}

double sub_1001760B0@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x8000000100297570;
      v6 = 0xD000000000000011;
    }

    else if (a1 == 4)
    {
      v5 = 0xE800000000000000;
      v6 = 0x2E2E2E726568744FLL;
    }

    else
    {
      v5 = 0x80000001002A2EB0;
      v6 = 0xD000000000000010;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v4 = "Handoff didn't work";
    }

    else
    {
      v4 = "Unexpected behavior";
    }

    v5 = (v4 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x8000000100297510;
    v6 = 0xD000000000000015;
  }

  v12[88] = 1;
  *&v13 = v6;
  *(&v13 + 1) = v5;
  *&v14 = 0xD000000000000022;
  *(&v14 + 1) = 0x80000001002A2F50;
  v15 = xmmword_100278910;
  *&v16 = 0;
  WORD4(v16) = 257;
  *&v17 = &off_100301980;
  *(&v17 + 1) = sub_10016F694;
  v18 = 0;
  v19[0] = v6;
  v19[1] = v5;
  v19[2] = 0xD000000000000022;
  v19[3] = 0x80000001002A2F50;
  v20 = xmmword_100278910;
  v21 = 0;
  v22 = 257;
  v23 = &off_100301980;
  v24 = sub_10016F694;
  v25 = 0;
  sub_100009848(&v13, v12, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v19, &qword_100348BF8, &unk_100283030);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v8;
  *(a2 + 64) = v17;
  v9 = v18;
  result = *&v13;
  v11 = v14;
  *a2 = v13;
  *(a2 + 16) = v11;
  *(a2 + 80) = v9;
  *(a2 + 88) = sub_1001784B4;
  *(a2 + 96) = v7;
  return result;
}

void sub_100176298(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity) = *a2;
  *(a4 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
  *(a4 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
  v6 = swift_allocObject();
  *a4 = v6;
  sub_10017579C(a3, v6 + 16);
  *(a4 + 40) = 1;
}

void sub_10017634C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 24);
  v7 = (a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation);
  v8 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation + 8);
  *v7 = *(a2 + 16);
  v7[1] = v6;

  *(a4 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
  *(a4 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
  v9 = swift_allocObject();
  *a4 = v9;
  sub_10017579C(a3, v9 + 16);
  *(a4 + 40) = 1;
}

void sub_100176418(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *a2 == a3 && a2[1] == a4;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (((1 << a5) & 0x16) != 0)
    {
      *(a6 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
      *(a6 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
      v10 = swift_allocObject();
      *a6 = v10;
      sub_1001767C0(v10 + 16);
      *(a6 + 40) = 1;
      return;
    }

    if (((1 << a5) & 0x28) == 0 && (*(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity) & 0xFE) != 2)
    {
      v13 = *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice);
      *(a6 + 24) = sub_100035D04(&qword_100348BD0, &qword_100283008);
      *(a6 + 32) = sub_10000E244(&qword_100348BD8, &qword_100348BD0, &qword_100283008);
      v14 = swift_allocObject();
      *a6 = v14;
      sub_1001765CC(v13, v14 + 16);
      v12 = 1;
      goto LABEL_12;
    }

    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  *a6 = v11;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  v12 = 3;
LABEL_12:
  *(a6 + 40) = v12;
}

double sub_1001765CC@<D0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v3 = 0x646F50656D6F48;
  v4 = 0xE700000000000000;
  v5 = a1 - 3;
  if (a1 >= 3u)
  {
    v3 = 0x3E6563697665643CLL;
    v4 = 0xE800000000000000;
  }

  if (v5 >= 4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656E6F685069;
  }

  if (v5 >= 4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(270);
  v8._countAndFlagsBits = 0xD0000000000000C6;
  v8._object = 0x80000001002A2CC0;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v6;
  v9._object = v7;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000046;
  v10._object = 0x80000001002A2D90;
  String.append(_:)(v10);
  v16[88] = 1;
  *&v17 = 0xD000000000000019;
  *(&v17 + 1) = 0x80000001002A2B90;
  v18 = v23[0];
  *&v20 = 0;
  v19 = 0uLL;
  WORD4(v20) = 257;
  *&v21 = &off_1003019B0;
  *(&v21 + 1) = sub_10016F694;
  v22 = 0;
  *&v23[0] = 0xD000000000000019;
  *(&v23[0] + 1) = 0x80000001002A2B90;
  v23[1] = v18;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 257;
  v28 = &off_1003019B0;
  v29 = sub_10016F694;
  v30 = 0;
  sub_100009848(&v17, v16, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(v23, &qword_100348BF8, &unk_100283030);
  v11 = swift_allocObject();
  *(v11 + 16) = 19279;
  *(v11 + 24) = 0xE200000000000000;
  v12 = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = v12;
  *(a2 + 64) = v21;
  v13 = v22;
  result = *&v17;
  v15 = v18;
  *a2 = v17;
  *(a2 + 16) = v15;
  *(a2 + 80) = v13;
  *(a2 + 88) = sub_10017843C;
  *(a2 + 96) = v11;
  return result;
}

double sub_1001767C0@<D0>(uint64_t a1@<X8>)
{
  v6[88] = 1;
  v7 = xmmword_1002829B0;
  *&v8 = 0xD00000000000008CLL;
  *(&v8 + 1) = 0x80000001002A2DE0;
  *&v10 = 0;
  v9 = 0uLL;
  WORD4(v10) = 257;
  *&v11 = &off_1003019F0;
  *(&v11 + 1) = sub_10016F694;
  v12 = 0;
  v13 = xmmword_1002829B0;
  v14 = 0xD00000000000008CLL;
  v15 = 0x80000001002A2DE0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 257;
  v20 = &off_1003019F0;
  v21 = sub_10016F694;
  v22 = 0;
  sub_100009848(&v7, v6, &qword_100348BF8, &unk_100283030);
  sub_1000097E8(&v13, &qword_100348BF8, &unk_100283030);
  v2 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v11;
  v3 = v12;
  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = sub_1001768D4;
  *(a1 + 96) = 0;
  return result;
}

double sub_1001768D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_includeDetailsTemplate) = 1;
  *a2 = 4;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 3;
  return result;
}

double sub_100176904@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2 == a3 && a2[1] == a4;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(a1 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_photoExpected) = 1;
  }

  *a5 = 4;
  result = 0.0;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 3;
  return result;
}

double sub_100176980@<D0>(uint64_t a1@<X8>)
{
  *a1 = 5;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 3;
  return result;
}

uint64_t sub_1001769AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for PCUserAlertDefinition();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_100176A18()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_100176A48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v25 - v6;
  v8 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_deviceID;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 56);
  v10(v2 + v8, 1, 1, v9);
  v11 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_appleDevice) = 7;
  v12 = (v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sessionReport);
  *v12 = 0;
  v12[1] = 0;
  static Date.now.getter();
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sentiment) = 3;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problem) = 5;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_proximity) = 3;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_intent) = 5;
  v13 = (v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_includeDetailsTemplate) = 0;
  *(v2 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_photoExpected) = 2;
  if (a1)
  {
    v15 = *(a1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_1000BC398(v7);
  }

  else
  {
    v10(v7, 1, 1, v9);
  }

  swift_beginAccess();
  sub_1001783C0(v7, v2 + v8);
  swift_endAccess();
  if (a1)
  {
    v16 = *(a1 + 24);
    LODWORD(v17) = *(v16 + 16);
    if (v17 == 7)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v17 = sub_10000A0B4();
      v19 = v18;

      if (v19)
      {
        LOBYTE(v17) = sub_100011F00(v17, v19);
      }

      else
      {
        LOBYTE(v17) = 7;
      }

      if ((*(v16 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_isMock) & 1) == 0)
      {
        *(v16 + 16) = v17;
      }
    }

    *(v2 + v11) = v17;

    sub_10008D594(v25);

    v20 = sub_10022B95C();
    v21 = v22;

    sub_100098354(v25);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    *(v2 + v11) = 7;
  }

  v23 = v12[1];
  *v12 = v20;
  v12[1] = v21;

  return v2;
}

uint64_t sub_100176DA4(char a1)
{
  if (a1 == 2)
  {
    v4._countAndFlagsBits = 7496006;
    v4._object = 0xE300000000000000;
    String.append(_:)(v4);
    v3 = 1952854846;
LABEL_6:
    v2 = 0xE400000000000000;
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    v3 = 1952854332;
    v5._countAndFlagsBits = 0x74616964656D6D49;
    v5._object = 0xE900000000000065;
    String.append(_:)(v5);
    goto LABEL_6;
  }

  v1._countAndFlagsBits = 0x79627261654ELL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  v2 = 0xE500000000000000;
  v3 = 0x7466332D31;
LABEL_7:

  v6._countAndFlagsBits = 10272;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v3;
  v7._object = v2;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

uint64_t sub_100176EC0()
{
  sub_1000097E8(v0 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_deviceID, &unk_100348F30, &unk_100272540);
  v1 = *(v0 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_sessionReport + 8);

  v2 = OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_timestamp;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_problemExplanation + 8);

  v5 = *(v0 + OBJC_IVAR____TtCO17proximitycontrold15HandoffFeedback6Report_comments + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100176FE0()
{
  sub_1001770EC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001770EC()
{
  if (!qword_100348A80)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100348A80);
    }
  }
}

uint64_t sub_100177194(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1001771B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001771EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100177238(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1001772B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1685024583;
  if (v2 != 1)
  {
    v4 = 0x2E2E2E726568744FLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6578498;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1685024583;
  if (*a2 != 1)
  {
    v8 = 0x2E2E2E726568744FLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6578498;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001773A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177434()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001774B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100177544@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100178108(*a1);
  *a2 = result;
  return result;
}

void sub_100177574(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1685024583;
  if (v2 != 1)
  {
    v5 = 0x2E2E2E726568744FLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6578498;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1001775D8()
{
  result = qword_100348B68;
  if (!qword_100348B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348B68);
  }

  return result;
}

Swift::Int sub_10017767C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177768()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100177840()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100177928@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100178154(*a1);
  *a2 = result;
  return result;
}

void sub_100177958(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x2E2E2E726568744FLL;
  if (v2 == 3)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000100297570;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000100297550;
  }

  v5 = 0x8000000100297510;
  v6 = 0xD000000000000015;
  if (*v1)
  {
    v6 = 0xD000000000000013;
    v5 = 0x8000000100297530;
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100177A14()
{
  result = qword_100348B80;
  if (!qword_100348B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348B80);
  }

  return result;
}

Swift::Int sub_100177A74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177B64()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100177C40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100177D2C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001781A0(*a1);
  *a2 = result;
  return result;
}

void sub_100177D5C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x2E2E2E726568744FLL;
  if (v2 == 3)
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x80000001002975F0;
  }

  if (v2 == 2)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001002975D0;
  }

  v5 = 0xD000000000000012;
  v6 = 0x8000000100297590;
  if (*v1)
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001002975B0;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v6;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100177E78()
{
  result = qword_100348B98;
  if (!qword_100348B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348B98);
  }

  return result;
}

unint64_t sub_100177F14()
{
  result = qword_100348BB0;
  if (!qword_100348BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348BB0);
  }

  return result;
}

uint64_t sub_100177F68(_BYTE *a1)
{
  v1 = 1685024583;
  if (*a1 != 1)
  {
    v1 = 0x2E2E2E726568744FLL;
  }

  if (*a1)
  {
    return v1;
  }

  else
  {
    return 6578498;
  }
}

unint64_t sub_100177FB4(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0x2E2E2E726568744FLL;
  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000015;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  if (*a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100178058(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0x2E2E2E726568744FLL;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000012;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  if (*a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100178108(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301A30, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100178154(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301A98, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001781A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301B30, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100178224(uint64_t a1)
{
  v2 = *(*(sub_100035D04(&qword_100348BE0, &unk_100283010) - 8) + 80);

  return sub_100172D1C(a1);
}

unint64_t sub_1001782A0()
{
  result = qword_100348C00;
  if (!qword_100348C00)
  {
    type metadata accessor for HandoffFeedbackManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348C00);
  }

  return result;
}

uint64_t sub_1001782F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009D6D4;

  return sub_100172E20(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001783C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100178444()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1001784BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E6584;

  return sub_10016FD04(a1, v4, v5, v6);
}

uint64_t sub_100178570()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001785B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009D6D4;

  return sub_100170140(a1, v4, v5, v6);
}

uint64_t sub_100178664()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1001786A0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001786CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100178714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001787A0()
{
  result = qword_100348D20;
  if (!qword_100348D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348D20);
  }

  return result;
}

uint64_t sub_1001787F4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_100178854(v0);
    v2 = *(v0 + 56);
    *(v0 + 56) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_100178854(uint64_t a1)
{
  v41 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  __chkstk_darwin(v1);
  v43 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v42 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v36 - v16;
  v18 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = sub_10017906C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001790C0(&qword_100348E58, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100035D04(&qword_100348E60, qword_100283350);
  sub_100179108(&qword_100348E68, &qword_100348E60, qword_100283350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v41;
  v24 = *(v41 + 48);
  v25 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v19 + 8))(v22, v18);
  swift_getObjectType();
  static DispatchTime.now()();
  v26 = *(v23 + 32);
  + infix(_:_:)();
  v27 = v38;
  v28 = *(v37 + 8);
  v28(v15, v38);
  *v10 = 0;
  v30 = v39;
  v29 = v40;
  (*(v39 + 104))(v10, enum case for DispatchTimeInterval.nanoseconds(_:), v40);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  (*(v30 + 8))(v10, v29);
  v28(v17, v27);
  v31 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001790B8;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030D118;
  v32 = _Block_copy(aBlock);

  v33 = v42;
  static DispatchQoS.unspecified.getter();
  v34 = v43;
  sub_100178E34();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v32);
  (*(v46 + 8))(v34, v47);
  (*(v44 + 8))(v33, v45);

  return v25;
}

uint64_t sub_100178DB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    sub_10009D4E0(v1);

    if (v1)
    {
      v1(result);
      return sub_10002689C(v1);
    }
  }

  return result;
}

uint64_t sub_100178E34()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1001790C0(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_100179108(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100178F0C()
{
  v1 = v0;
  sub_1001787F4();
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    v2 = *(v0 + 56);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_10002689C(v3);
  v5 = *(v1 + 24);
  sub_10002689C(*(v1 + 16));

  v6 = *(v1 + 56);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100178FAC()
{
  sub_100178F0C();

  return swift_deallocClassInstance();
}

unint64_t sub_100179018()
{
  result = qword_100348E48;
  if (!qword_100348E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348E48);
  }

  return result;
}

unint64_t sub_10017906C()
{
  result = qword_100348E50;
  if (!qword_100348E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100348E50);
  }

  return result;
}

uint64_t sub_1001790C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100179108(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017915C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100348E70);
  sub_100003078(v0, qword_100348E70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001791D4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 nsuuid];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100179278(uint64_t a1, void **a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10017B154(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setNSUUID:isa];
}

uint64_t sub_1001793A4()
{
  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100348E70);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activate", v3, 2u);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_1001794E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue);
    v25 = v11;
    v19 = Strong;

    v24 = v18;

    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = sub_1000FBAA8;
    v20[4] = v16;
    aBlock[4] = sub_10017B13C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_10030D208;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_10007E5B8();
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v25);
  }

  else
  {
  }
}

void sub_100179814(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_allocWithZone(IDSService);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithService:v6];

    if (v7)
    {
      sub_10017A3A0();
      v8 = *&v4[OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service];
      *&v4[OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service] = v7;
      v9 = v7;

      [v9 addDelegate:v4 queue:*&v4[OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue]];
      sub_100179AA4();
      if (qword_1003390F8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100003078(v10, qword_100348E70);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Activated", v13, 2u);
      }

      (a2)(0, 0);
    }

    else
    {
      sub_10001618C();
      swift_allocError();
      *v15 = 0xD00000000000001BLL;
      *(v15 + 8) = 0x80000001002A3050;
      *(v15 + 16) = 0;
      a2();
    }
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v14 = 0x666C6573206C696ELL;
    *(v14 + 8) = 0xE800000000000000;
    *(v14 + 16) = 9;
    a2();
  }
}

void sub_100179AA4()
{
  v1 = v0;
  v51 = type metadata accessor for UUID();
  isa = v51[-1].isa;
  v3 = *(isa + 8);
  __chkstk_darwin(v51);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v45 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service);
  if (!v9)
  {
    if (qword_1003390F8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003078(v25, qword_100348E70);
    v51 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v51, v26, "### Unable to update IDS cache: no IDS Service?", v27, 2u);
    }

    v28 = v51;
    goto LABEL_26;
  }

  v47 = v9;
  v10 = [v47 devices];
  if (!v10)
  {
    if (qword_1003390F8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003078(v30, qword_100348E70);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "No IDS devices to update", v33, 2u);
    }

    v28 = v47;
LABEL_26:

    return;
  }

  v11 = v10;
  sub_10017B028();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = _swiftEmptyArrayStorage;
  if (v12 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v46 = v1;
    v14 = 0;
    v49 = v12 & 0xFFFFFFFFFFFFFF8;
    v50 = v12 & 0xC000000000000001;
    v1 = (isa + 32);
    v15 = (isa + 56);
    while (1)
    {
      if (v50)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v49 + 16))
        {
          goto LABEL_30;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = [v16 nsuuid];
      if (v19)
      {
        v20 = v12;
        v21 = v48;
        v22 = v19;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v51;
        (*v1)(v8, v21, v51);
        (*v15)(v8, 0, 1, v23);
        sub_100057640(v8);
        isa = &v52;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = v52[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v12 = v20;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {

        (*v15)(v8, 1, 1, v51);
        sub_100057640(v8);
      }

      ++v14;
      if (v18 == i)
      {
        v29 = v52;
        v1 = v46;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_33:

  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100003078(v34, qword_100348E70);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    if ((v29 & 0x8000000000000000) != 0 || (v29 & 0x4000000000000000) != 0)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *(v29 + 16);
    }

    *(v37 + 4) = v38;

    _os_log_impl(&_mh_execute_header, v35, v36, "IDS update cache (%ld)", v37, 0xCu);
  }

  else
  {
  }

  v39 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices);
  v40 = v39 + qword_100346AF8;

  os_unfair_lock_lock(v40);
  v41 = *(v40 + 8);
  v42 = *(v39 + 16);

  v44 = sub_1001C2B08(v43, v29);

  *(v40 + 8) = v44;

  os_unfair_lock_unlock(v40);

  sub_1001C33A0(v41, v44);
}

id sub_10017A0D4()
{
  v1 = v0;
  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348E70);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10017A26C();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for IDSProxy();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10017A26C()
{
  v1 = v0;
  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348E70);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service);
  if (v7)
  {
    [v7 removeDelegate:v1];
    v8 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices);

  sub_1001AC478();
}

uint64_t sub_10017A3A0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100035D04(&qword_100348F48, &unk_100283390);
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v44);
  v7 = v31 - v6;
  v43 = v0;
  v41 = OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices;
  v45 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices) + 32);
  v8 = sub_100035D04(&unk_100348F50, &qword_100272B30);
  v39 = sub_10000E244(&qword_100346A58, &unk_100348F50, &qword_100272B30);
  v40 = v8;
  v9 = Publisher.eraseToAnyPublisher()();
  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v10 = sub_100003078(v1, qword_100348E70);
  v37 = v10;
  v11 = static os_log_type_t.info.getter();
  v45 = v9;
  v12 = *(v2 + 16);
  v36 = v2 + 16;
  v38 = v12;
  v12(v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v1);
  v13 = v1;
  v32 = v1;
  v14 = *(v2 + 80);
  v35 = (v14 + 64) & ~v14;
  v31[2] = v9;
  v15 = v35 + v3;
  v33 = v35 + v3;
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = 0x20444E554F46;
  *(v16 + 5) = 0xE600000000000000;
  *(v16 + 6) = 0;
  *(v16 + 7) = 0xE000000000000000;
  v17 = *(v2 + 32);
  v31[4] = v2 + 32;
  v34 = v17;
  v17(&v16[(v14 + 64) & ~v14], v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v16[v15] = v11;
  v18 = sub_100035D04(&unk_100348F60, &unk_1002833A0);
  v31[6] = sub_10017B028();
  v19 = sub_10000E244(&qword_100346A60, &unk_100348F60, &unk_1002833A0);
  v31[1] = v18;
  v31[3] = v19;
  Publisher.map<A>(_:)();

  v31[5] = sub_10000E244(&unk_100348F70, &qword_100348F48, &unk_100283390);
  v20 = v44;
  v21 = Publisher.eraseToAnyPublisher()();

  v42 = *(v42 + 8);
  (v42)(v7, v20);
  v45 = v21;
  Publisher<>.sink(receiveValue:)();

  v22 = v43;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v45 = *(*(v22 + v41) + 48);
  v23 = Publisher.eraseToAnyPublisher()();
  LOBYTE(v21) = static os_log_type_t.info.getter();
  v45 = v23;
  v24 = v4;
  v25 = v32;
  v38(v4, v37, v32);
  v26 = v33;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = 0x2054534F4CLL;
  *(v27 + 5) = 0xE500000000000000;
  *(v27 + 6) = 0;
  *(v27 + 7) = 0xE000000000000000;
  v34(&v27[v35], v24, v25);
  v27[v26] = v21;
  Publisher.map<A>(_:)();

  v28 = v44;
  v29 = Publisher.eraseToAnyPublisher()();

  (v42)(v7, v28);
  v45 = v29;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10017ABB4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1003390F8 == -1)
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
  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_100348E70);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = a1;
    v20 = v15;
    *v14 = 136315138;

    sub_100035D04(&qword_100348F40, &qword_100283388);
    v16 = String.init<A>(describing:)();
    v18 = sub_100017494(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Active accounts changed: %s", v14, 0xCu);
    sub_10000903C(v15);
  }

  sub_100179AA4();
}

void sub_10017AE1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1003390F8 == -1)
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
  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_100348E70);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_7;
  }

  v14 = swift_slowAlloc();
  *v14 = 134217984;
  if (a1)
  {
    *(v14 + 4) = *(a1 + 16);
    v15 = v14;

    _os_log_impl(&_mh_execute_header, v12, v13, "Devices changed (%ld devices)", v15, 0xCu);

LABEL_7:
    sub_100179AA4();
    return;
  }

  __break(1u);
}

unint64_t sub_10017B028()
{
  result = qword_10033B5F0;
  if (!qword_10033B5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033B5F0);
  }

  return result;
}

id sub_10017B078@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = sub_1001CE3F8(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = v7;

  return v7;
}

uint64_t sub_10017B154(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NIDistanceMeasurementQuality.shortDescription.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1919905648;
      }

      goto LABEL_8;
    }

    return 0x2820657372616F63;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x77752820656E6966;
      }

LABEL_8:
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 0x206E776F6E6B6E55;
    }

    return 0x6669636570736E75;
  }
}

id sub_10017B360()
{
  v0 = [objc_allocWithZone(NSMeasurementFormatter) init];
  [v0 setUnitStyle:1];
  result = [v0 setUnitOptions:1];
  qword_100348F90 = v0;
  return result;
}

uint64_t sub_10017B3C4()
{
  NINearbyObject.direction.getter();
  if (v0)
  {
    return 0;
  }

  sub_1000CDF40(0, 3, 0);
  v2 = Float.description.getter();
  v5 = _swiftEmptyArrayStorage[2];
  v4 = _swiftEmptyArrayStorage[3];
  if (v5 >= v4 >> 1)
  {
    v35 = v2;
    v36 = v3;
    sub_1000CDF40((v4 > 1), v5 + 1, 1);
    v3 = v36;
    v2 = v35;
  }

  _swiftEmptyArrayStorage[2] = v5 + 1;
  v6 = &_swiftEmptyArrayStorage[2 * v5];
  v6[4] = v2;
  v6[5] = v3;
  v7 = Float.description.getter();
  v10 = _swiftEmptyArrayStorage[2];
  v9 = _swiftEmptyArrayStorage[3];
  if (v10 >= v9 >> 1)
  {
    v37 = v7;
    v38 = v8;
    sub_1000CDF40((v9 > 1), v10 + 1, 1);
    v8 = v38;
    v7 = v37;
  }

  _swiftEmptyArrayStorage[2] = v10 + 1;
  v11 = &_swiftEmptyArrayStorage[2 * v10];
  v11[4] = v7;
  v11[5] = v8;
  v12 = Float.description.getter();
  v15 = _swiftEmptyArrayStorage[2];
  v14 = _swiftEmptyArrayStorage[3];
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    v39 = v12;
    v40 = v13;
    sub_1000CDF40((v14 > 1), v15 + 1, 1);
    v13 = v40;
    v12 = v39;
  }

  _swiftEmptyArrayStorage[2] = v16;
  v17 = &_swiftEmptyArrayStorage[2 * v15];
  v17[4] = v12;
  v17[5] = v13;
  sub_1000CE020(0, v15 + 1, 0);
  v18 = &_swiftEmptyArrayStorage[5];
  do
  {
    if ((*v18 & 0x2000000000000000) == 0)
    {
      v19 = *(v18 - 1);
    }

    *v18;
    *(v18 - 1);

    String.index(_:offsetBy:limitedBy:)();
    v20 = String.subscript.getter();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v28 = _swiftEmptyArrayStorage[2];
    v27 = _swiftEmptyArrayStorage[3];
    if (v28 >= v27 >> 1)
    {
      sub_1000CE020((v27 > 1), v28 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v28 + 1;
    v29 = &_swiftEmptyArrayStorage[4 * v28];
    v29[4] = v20;
    v29[5] = v22;
    v29[6] = v24;
    v29[7] = v26;
    v18 += 2;
    --v16;
  }

  while (v16);

  sub_100035D04(&qword_100348FA0, &qword_1002834A0);
  sub_10000E244(&qword_100348FA8, &qword_100348FA0, &qword_1002834A0);
  sub_10017C330();
  v30 = Sequence<>.joined(separator:)();
  v32 = v31;

  v33._countAndFlagsBits = v30;
  v33._object = v32;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 41;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  return 40;
}

uint64_t sub_10017B724()
{
  v0 = sub_100035D04(&qword_100348FB8, &qword_1002834A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  if ((NINearbyObject.distance.getter() & 0x100000000) != 0)
  {
    return 0;
  }

  v8 = [objc_opt_self() meters];
  sub_100003118(0, &qword_100348FC0, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  (*(v1 + 32))(v7, v5, v0);
  if (qword_100339100 != -1)
  {
    swift_once();
  }

  v9 = NSMeasurementFormatter.string<A>(from:)();
  (*(v1 + 8))(v7, v0);
  return v9;
}

uint64_t NINearbyObjectRemovalReason.description.getter(uint64_t a1)
{
  v1 = 63;
  if (a1 == 1)
  {
    v1 = 0x65646E4572656570;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x74756F656D6974;
  }
}

uint64_t sub_10017C1C8()
{
  v1 = 63;
  if (*v0 == 1)
  {
    v1 = 0x65646E4572656570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74756F656D6974;
  }
}

uint64_t NINearbyObjectUpdateRate.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1701736302;
      }

      goto LABEL_8;
    }

    return 0x65746E4972657375;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7962646E617473;
      }

LABEL_8:
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x3A6E776F6E6B6E75;
    }

    return 0x64656375646572;
  }
}

unint64_t sub_10017C330()
{
  result = qword_100348FB0;
  if (!qword_100348FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348FB0);
  }

  return result;
}

uint64_t sub_10017C384(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

void sub_10017C3C4(void (*a1)(void ***), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_10024D824(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = swift_allocObject();
    *(v7 + 16) = sub_10017C5A8;
    *(v7 + 24) = v4;
    v15 = sub_10017C794;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_10017C6E8;
    v14 = &unk_10030D290;
    v8 = _Block_copy(&aBlock);

    [Strong _createUserActivityDataWithOptions:isa completionHandler:v8];
    _Block_release(v8);
  }

  else
  {

    sub_10001618C();
    v9 = swift_allocError();
    *v10 = 0x666C6573206C696ELL;
    *(v10 + 8) = 0xE800000000000000;
    *(v10 + 16) = 9;
    aBlock = v9;
    v12 = 0;
    LOBYTE(v13) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_10017C5A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_10017C5E8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      swift_errorRetain();
      v6 = a3;
    }

    else
    {
      sub_10001618C();
      v6 = swift_allocError();
      *v10 = 0xD00000000000001BLL;
      *(v10 + 8) = 0x80000001002A3090;
      *(v10 + 16) = 9;
    }

    a4(v6, 0, 1);
  }

  else
  {
    sub_10006DA04(a1, a2);
    a4(a1, a2, 0);

    return sub_10006DB04(a1, a2);
  }
}

uint64_t sub_10017C6E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_10006DB04(v4, v9);
}

uint64_t sub_10017C79C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10017C7F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100348FC8);
  sub_100003078(v0, qword_100348FC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10017C870()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10017C8E8()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter);
  }

  else
  {
    v3 = v0;
    v4 = sub_10017C974();
    type metadata accessor for RemoteFollowerNoticePresenter();
    swift_allocObject();
    v2 = sub_10011DB50(v4);
    v5 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_10017C974()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for RemoteFollowerNoticePresenterModel();
    v2 = swift_allocObject();
    v2[2] = sub_100184370;
    v2[3] = v3;
    v2[4] = sub_100184378;
    v2[5] = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10017CA60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 32);
  swift_unownedRetainStrong();

  v2 = sub_100142E20();

  v3 = v2[4];
  v4 = v3;

  if (v3)
  {
    sub_100183744(&qword_10033E808, type metadata accessor for RapportProxy);
  }

  return v3;
}

uint64_t sub_10017CB34(uint64_t *a1, uint64_t a2, unint64_t a3, void **a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001808DC(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_10017CBD8(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10017D29C(a1, a2);
  }

  return result;
}

uint64_t sub_10017CC4C(uint64_t *a1)
{
  v1 = *a1;
  sub_1000938C4();

  sub_100035D04(&qword_100349280, &qword_1002835F0);
  sub_100035D04(&qword_100349288, &qword_1002835F8);
  sub_10000E244(&qword_100349290, &qword_100349280, &qword_1002835F0);
  Publisher.map<A>(_:)();
}

uint64_t sub_10017CD48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10017E350(a1, a2);
  }

  return result;
}

uint64_t sub_10017CDBC(uint64_t *a1)
{
  v1 = *a1;
  sub_100093E5C();

  sub_100035D04(&qword_100349270, &qword_1002835E8);
  sub_100035D04(&qword_100349268, &qword_1002835E0);
  sub_10000E244(&qword_100349278, &qword_100349270, &qword_1002835E8);
  Publisher.map<A>(_:)();
}

uint64_t sub_10017CEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_100035D04(&qword_100349268, &qword_1002835E0) + 48);
  sub_100183B28(a1, a3, type metadata accessor for NoticeEffect);
  *(a3 + v6) = a2;
}

uint64_t sub_10017CF38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10017E924(a1, a2);
  }

  return result;
}

uint64_t sub_10017CFAC()
{
  v1 = v0;
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348FC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 32);
  swift_unownedRelease();
  v7 = OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter__keepAliveMessage;
  v8 = sub_100035D04(&qword_100349220, &unk_1002835C0);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter);

  v10 = *(v1 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel);

  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask);

  v12 = *(v1 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_tasks);

  return v1;
}

uint64_t sub_10017D120()
{
  sub_10017CFAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteFollowerPresenter()
{
  result = qword_100349038;
  if (!qword_100349038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017D1CC()
{
  sub_1001825CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10017D29C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&unk_100349050, &qword_100283530);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v85 - v11;
  v12 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v96 = &v85 - v14;
  v97 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v95 = *(v97 - 8);
  v15 = *(v95 + 64);
  __chkstk_darwin(v97);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100035D04(&qword_1003492C8, &qword_100283738);
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  __chkstk_darwin(v18);
  v21 = &v85 - v20;
  v22 = sub_100035D04(&qword_1003492D0, &qword_100283740);
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = *(v93 + 64);
  __chkstk_darwin(v22);
  v90 = &v85 - v24;
  v25 = sub_100035D04(&qword_1003492D8, &qword_100283748);
  v99 = *(v25 - 8);
  v100 = v25;
  v26 = *(v99 + 64);
  __chkstk_darwin(v25);
  v98 = &v85 - v27;
  v28 = type metadata accessor for RemoteFollowerMessage();
  v101 = *(v28 - 8);
  v29 = *(v101 + 64);
  __chkstk_darwin(v28);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100003078(v32, qword_100348FC8);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v104 = v3;
  v105 = a2;
  v103 = v28;
  if (v35)
  {
    v86 = v34;
    v87 = v10;
    v88 = v17;
    v89 = v31;
    v36 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v36 = 136315650;
    *(v36 + 4) = sub_100017494(0xD000000000000016, 0x800000010029F5B0, &v106);
    *(v36 + 12) = 2080;
    if (a1)
    {
      v107 = 60;
      v108 = 0xE100000000000000;
      UUID.uuidString.getter();
      sub_10000B584(8);

      v37 = static String._fromSubstring(_:)();
      v39 = v38;

      v40._countAndFlagsBits = v37;
      v40._object = v39;
      String.append(_:)(v40);

      v41._countAndFlagsBits = 32;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      v42 = *(a1 + 3);
      v43._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 62;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v45 = v107;
      v46 = v108;
    }

    else
    {
      v46 = 0xE300000000000000;
      v45 = 7104878;
    }

    v48 = sub_100017494(v45, v46, &v106);

    *(v36 + 14) = v48;
    *(v36 + 22) = 2080;
    v49 = v105;
    if (v105)
    {
      v107 = 60;
      v108 = 0xE100000000000000;
      UUID.uuidString.getter();
      sub_10000B584(8);
      v85 = v21;
      v50 = v49;

      v51 = static String._fromSubstring(_:)();
      v53 = v52;

      v54._countAndFlagsBits = v51;
      v54._object = v53;
      String.append(_:)(v54);

      v55._countAndFlagsBits = 32;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = *(v50 + 24);
      v21 = v85;
      v57._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v57);

      v58._countAndFlagsBits = 62;
      v58._object = 0xE100000000000000;
      String.append(_:)(v58);
      v59 = v107;
      v60 = v108;
      v31 = v89;
      v28 = v103;
      v17 = v88;
    }

    else
    {
      v60 = 0xE300000000000000;
      v31 = v89;
      v28 = v103;
      v17 = v88;
      v59 = 7104878;
    }

    v61 = sub_100017494(v59, v60, &v106);

    *(v36 + 24) = v61;
    _os_log_impl(&_mh_execute_header, v33, v86, "%s: session=%s, oldSession=%s", v36, 0x20u);
    swift_arrayDestroy();

    v47 = v104;
    v10 = v87;
    if (a1)
    {
      goto LABEL_13;
    }

LABEL_22:
    v82 = *(v47 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask);
    *(v47 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask) = 0;

    v83 = v102;
    (*(v101 + 56))(v102, 1, 1, v28);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100009848(v83, v10, &unk_100349050, &qword_100283530);

    static Published.subscript.setter();
    result = sub_1000097E8(v83, &unk_100349050, &qword_100283530);
    if (!v105)
    {
      return result;
    }

    goto LABEL_23;
  }

  v47 = v3;
  if (!a1)
  {
    goto LABEL_22;
  }

LABEL_13:

  if ((sub_100092F70() & 1) == 0)
  {
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v62 = *(qword_10038B0B8 + 112);
    v63 = sub_1000031CC();

    if ((v63 & 1) == 0)
    {

      goto LABEL_22;
    }
  }

  UUID.init()();
  v64 = &v31[*(v28 + 20)];
  *v64 = 0x401C000000000000;
  v64[8] = 0;
  sub_10008D35C();
  sub_100151F24(v31);

  swift_beginAccess();
  sub_100035D04(&qword_100349220, &unk_1002835C0);
  Published.projectedValue.getter();
  swift_endAccess();
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v102 = a1;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v65 = qword_10038B5B8;
  v107 = qword_10038B5B8;
  v66 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v67 = v96;
  (*(*(v66 - 8) + 56))(v96, 1, 1, v66);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_1003492E0, &qword_1003492C8, &qword_100283738);
  sub_1000513CC();
  v68 = v65;
  v69 = v90;
  v70 = v92;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000097E8(v67, &qword_10034C680, &qword_100270390);

  (*(v95 + 8))(v17, v97);
  (*(v91 + 8))(v21, v70);
  sub_10000E244(&qword_1003492E8, &qword_1003492D0, &qword_100283740);
  v71 = v98;
  v72 = v94;
  v73 = v103;
  Publisher.compactMap<A>(_:)();
  (*(v93 + 8))(v69, v72);
  v74 = swift_allocObject();
  v75 = v104;
  swift_weakInit();
  v76 = swift_allocObject();
  v77 = v102;
  *(v76 + 16) = v74;
  *(v76 + 24) = v77;
  sub_10000E244(&qword_1003492F0, &qword_1003492D8, &qword_100283748);

  v78 = v100;
  v79 = Publisher<>.sink(receiveValue:)();

  (*(v99 + 8))(v71, v78);
  sub_100183D58(v31, type metadata accessor for RemoteFollowerMessage);
  v80 = *(v75 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask);
  *(v75 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask) = v79;

  v28 = v73;
  if (v105)
  {
LABEL_23:

    if (sub_100092F70())
    {
      UUID.init()();
      v84 = &v31[*(v28 + 20)];
      *v84 = 0;
      v84[8] = 2;
      sub_10008D35C();
      sub_100151F24(v31);

      return sub_100183D58(v31, type metadata accessor for RemoteFollowerMessage);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10017DF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100035D04(&unk_100349050, &qword_100283530);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for RemoteFollowerMessage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v37 = result;
    if (qword_100339108 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003078(v21, qword_100348FC8);
    sub_100183B28(a1, v19, type metadata accessor for RemoteFollowerMessage);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34 = v13;
      v25 = v24;
      v26 = swift_slowAlloc();
      v36 = a3;
      v27 = v26;
      v38 = v26;
      *v25 = 136315138;
      sub_100183B28(v19, v17, type metadata accessor for RemoteFollowerMessage);
      v28 = String.init<A>(describing:)();
      v35 = v12;
      v29 = a1;
      v30 = v9;
      v32 = v31;
      sub_100183D58(v19, type metadata accessor for RemoteFollowerMessage);
      v33 = sub_100017494(v28, v32, &v38);
      v9 = v30;
      a1 = v29;
      v12 = v35;

      *(v25 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Sending Keep Alive message: %s", v25, 0xCu);
      sub_10000903C(v27);

      v13 = v34;
    }

    else
    {

      sub_100183D58(v19, type metadata accessor for RemoteFollowerMessage);
    }

    sub_10008D35C();
    sub_100151F24(a1);

    sub_100183B28(a1, v11, type metadata accessor for RemoteFollowerMessage);
    (*(v13 + 56))(v11, 0, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100009848(v11, v9, &unk_100349050, &qword_100283530);
    static Published.subscript.setter();
    return sub_1000097E8(v11, &unk_100349050, &qword_100283530);
  }

  return result;
}

uint64_t sub_10017E350(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v4 = sub_100035D04(&unk_100349050, &qword_100283530);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = type metadata accessor for RemoteFollowerMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_100348FC8);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v42 = v12;
    v44 = v10;
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v19 = 136315650;
    *(v19 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v51);
    *(v19 + 12) = 2080;
    v45 = v8;
    v46 = v2;
    v43 = v11;
    if (v47 == 2)
    {
      v20 = 0xE500000000000000;
      v21 = 0x6D6F6F6C62;
    }

    else if (v47 == 3)
    {
      v20 = 0xE400000000000000;
      v21 = 1886352499;
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      v22._countAndFlagsBits = 0x2D776F6C67;
      v22._object = 0xE500000000000000;
      String.append(_:)(v22);
      v48 = v47 & 1;
      _print_unlocked<A, B>(_:_:)();
      v21 = v49;
      v20 = v50;
    }

    v23 = sub_100017494(v21, v20, &v51);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v49 = 60;
    v50 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v24 = static String._fromSubstring(_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = *(a2 + 24);
    v30._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 62;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v32 = sub_100017494(v49, v50, &v51);

    *(v19 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: effect=%s, session=%s", v19, 0x20u);
    swift_arrayDestroy();

    v8 = v45;
    v11 = v43;
    v10 = v44;
    v12 = v42;
  }

  else
  {
  }

  result = sub_100092F70();
  if (result)
  {
    if (v47 == 2)
    {
      v34 = v47;
    }

    else
    {
      if (v47 != 3)
      {
        v35 = (v47 & 1) << 8;
        v34 = 1;
        goto LABEL_18;
      }

      v34 = 0;
    }

    v35 = 512;
LABEL_18:
    v36 = v34 | v35;
    UUID.init()();
    v37 = &v15[*(v11 + 20)];
    *v37 = v36;
    v37[8] = 1;
    sub_10008D35C();
    sub_100151F24(v15);

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v38 = *(qword_10038B0B8 + 688);
    v39 = sub_1000031CC();

    if ((v39 & 1) == 0)
    {
      sub_100183B28(v15, v10, type metadata accessor for RemoteFollowerMessage);
      (*(v12 + 56))(v10, 0, 1, v11);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100009848(v10, v8, &unk_100349050, &qword_100283530);

      static Published.subscript.setter();
      sub_1000097E8(v10, &unk_100349050, &qword_100283530);
    }

    return sub_100183D58(v15, type metadata accessor for RemoteFollowerMessage);
  }

  return result;
}

uint64_t sub_10017E924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v123 = *(v6 - 8);
  v7 = *(v123 + 8);
  v8 = __chkstk_darwin(v6);
  v111 = &v107[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v110 = &v107[-v10];
  v11 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v107[-v13];
  v15 = sub_100035D04(&qword_1003492A0, &qword_1002836F0);
  v115 = *(v15 - 8);
  v16 = *(v115 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v107[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = v18;
  __chkstk_darwin(v17);
  v21 = &v107[-v20];
  v22 = type metadata accessor for NoticeContext(0);
  v113 = *(v22 - 8);
  v114 = v22;
  v23 = *(v113 + 64);
  __chkstk_darwin(v22);
  v25 = &v107[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = type metadata accessor for NoticeEffect();
  v26 = *(*(v118 - 1) + 64);
  v27 = __chkstk_darwin(v118);
  v119 = &v107[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v30 = &v107[-v29];
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003078(v31, qword_100348FC8);
  v120 = a1;
  sub_100183B28(a1, v30, type metadata accessor for NoticeEffect);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v112 = v6;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v121 = v14;
    v36 = v35;
    v109 = swift_slowAlloc();
    v126[0] = v109;
    *v36 = 136315650;
    v37 = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, v126);
    *(v36 + 4) = v37;
    v122 = v21;
    *(v36 + 12) = 2080;
    v108 = v33;
    v38 = sub_1001AF844(v37);
    v117 = v19;
    v40 = v39;
    sub_100183D58(v30, type metadata accessor for NoticeEffect);
    v41 = sub_100017494(v38, v40, v126);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2080;
    v124 = 60;
    v125 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v42 = static String._fromSubstring(_:)();
    v44 = v43;

    v45._countAndFlagsBits = v42;
    v45._object = v44;
    String.append(_:)(v45);
    v19 = v117;

    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v47 = *(a2 + 24);
    v48._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v48);

    v49._countAndFlagsBits = 62;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    v50 = sub_100017494(v124, v125, v126);

    *(v36 + 24) = v50;
    v21 = v122;
    _os_log_impl(&_mh_execute_header, v32, v108, "%s: effect=%s, session=%s", v36, 0x20u);
    swift_arrayDestroy();

    v14 = v121;
  }

  else
  {

    sub_100183D58(v30, type metadata accessor for NoticeEffect);
  }

  result = sub_100093088();
  v52 = v123;
  if (result)
  {
    v53 = v119;
    sub_100183B28(v120, v119, type metadata accessor for NoticeEffect);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v66 = type metadata accessor for NoticeEffect;
        v67 = v53;
      }

      else
      {
        v119 = v3;
        v120 = a2;
        v117 = v19;
        v121 = v14;
        v122 = v21;
        v81 = v110;
        UUID.init()();
        v118 = UUID.uuidString.getter();
        v109 = v82;
        v83 = *(v52 + 8);
        v84 = v112;
        v83(v81, v112);
        if (qword_100338F18 != -1)
        {
          swift_once();
        }

        v85 = *(qword_10038B0B8 + 72);
        v86 = sub_1000610A0();

        v87 = v114;
        v88 = *(v114 + 24);
        type metadata accessor for NoticeTapAction(0);
        swift_storeEnumTagMultiPayload();
        v89 = v25;
        v90 = &v25[*(v87 + 32)];
        v91 = v111;
        UUID.init()();
        v92 = UUID.uuidString.getter();
        v94 = v93;
        v83(v91, v84);
        *v90 = v92;
        *(v90 + 1) = v94;
        strcpy(v90 + 16, "Handoff Hint");
        v90[29] = 0;
        *(v90 + 15) = -5120;
        type metadata accessor for NoticeContent(0);
        swift_storeEnumTagMultiPayload();
        v95 = v109;
        *v89 = v118;
        *(v89 + 8) = v95;
        *(v89 + 16) = v86 & 1;
        *(v89 + *(v87 + 28)) = 0;
        v96 = v122;
        sub_100183B28(v89, v122, type metadata accessor for NoticeContext);
        (*(v113 + 56))(v96, 0, 1, v87);
        v97 = type metadata accessor for TaskPriority();
        (*(*(v97 - 8) + 56))(v121, 1, 1, v97);
        v98 = v119;
        v123 = v119[4];
        swift_unownedRetainStrong();
        sub_100009848(v96, v117, &qword_1003492A0, &qword_1002836F0);
        v99 = qword_1003391F0;
        v100 = v120;

        if (v99 != -1)
        {
          swift_once();
        }

        v101 = qword_10038B5C0;
        v102 = sub_100183744(&qword_1003492A8, type metadata accessor for WorkActor);
        v103 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v104 = (v116 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
        v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
        v106 = swift_allocObject();
        *(v106 + 16) = v101;
        *(v106 + 24) = v102;
        sub_100183B90(v117, v106 + v103);
        *(v106 + v104) = v100;
        *(v106 + v105) = v98;
        *(v106 + ((v105 + 15) & 0xFFFFFFFFFFFFFFF8)) = v123;

        sub_100240220(0, 0, v121, &unk_100283700, v106);

        sub_1000097E8(v122, &qword_1003492A0, &qword_1002836F0);
        v66 = type metadata accessor for NoticeContext;
        v67 = v89;
      }

      return sub_100183D58(v67, v66);
    }

    v121 = v14;
    v122 = v21;
    if (!EnumCaseMultiPayload)
    {
      sub_100183F10(v53, v25, type metadata accessor for NoticeContext);
      sub_100183B28(v25, v21, type metadata accessor for NoticeContext);
      (*(v113 + 56))(v21, 0, 1, v114);
      v55 = type metadata accessor for TaskPriority();
      (*(*(v55 - 8) + 56))(v14, 1, 1, v55);
      v56 = v3[4];
      swift_unownedRetainStrong();
      sub_100009848(v21, v19, &qword_1003492A0, &qword_1002836F0);
      v57 = qword_1003391F0;

      v58 = a2;
      v119 = v3;
      v59 = v19;
      v123 = v25;
      if (v57 != -1)
      {
        swift_once();
      }

      v60 = qword_10038B5C0;
      v61 = sub_100183744(&qword_1003492A8, type metadata accessor for WorkActor);
      v62 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v63 = (v116 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      *(v65 + 16) = v60;
      *(v65 + 24) = v61;
      sub_100183B90(v59, v65 + v62);
      *(v65 + v63) = v58;
      *(v65 + v64) = v119;
      *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v56;

      sub_100240220(0, 0, v121, &unk_100283710, v65);

      sub_1000097E8(v122, &qword_1003492A0, &qword_1002836F0);
      v66 = type metadata accessor for NoticeContext;
      v67 = v123;
      return sub_100183D58(v67, v66);
    }

    v68 = *v53;
    v69 = v53[1];
    v118 = v53[2];
    v119 = v68;
    v123 = v69;
    sub_10017F688(v68, v69, v118, v21);
    v70 = type metadata accessor for TaskPriority();
    (*(*(v70 - 8) + 56))(v14, 1, 1, v70);
    v71 = v3[4];
    swift_unownedRetainStrong();
    sub_100009848(v21, v19, &qword_1003492A0, &qword_1002836F0);
    v72 = qword_1003391F0;
    v120 = a2;

    v73 = v3;
    v74 = v19;
    if (v72 != -1)
    {
      swift_once();
    }

    v75 = qword_10038B5C0;
    v76 = sub_100183744(&qword_1003492A8, type metadata accessor for WorkActor);
    v77 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v78 = (v116 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    *(v80 + 16) = v75;
    *(v80 + 24) = v76;
    sub_100183B90(v74, v80 + v77);
    *(v80 + v78) = v120;
    *(v80 + v79) = v73;
    *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v71;

    sub_100240220(0, 0, v121, &unk_100283708, v80);

    sub_100077374(v119, v123, v118);
    return sub_1000097E8(v122, &qword_1003492A0, &qword_1002836F0);
  }

  return result;
}

uint64_t sub_10017F688@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LeaderNoticeTapAction(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 1)
  {
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v13 + 8))(v16, v12);
    v20 = type metadata accessor for NoticeContext(0);
    v21 = v20[6];
    type metadata accessor for NoticeTapAction(0);
    swift_storeEnumTagMultiPayload();
    v22 = (a4 + v20[8]);
    v23 = [objc_opt_self() localizedStringForKey:3];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *v22 = 0;
    v22[1] = 0xE000000000000000;
    v22[2] = v24;
    v22[3] = v26;
    type metadata accessor for NoticeContent(0);
    swift_storeEnumTagMultiPayload();
    *a4 = v17;
    *(a4 + 8) = v19;
LABEL_6:
    *(a4 + 16) = 0;
    *(a4 + v20[7]) = 1;
    return (*(*(v20 - 1) + 56))(a4, 0, 1, v20);
  }

  if ((a2 & 1) == 0)
  {
    UUID.init()();
    v38 = UUID.uuidString.getter();
    v40 = v39;
    (*(v13 + 8))(v16, v12);
    swift_storeEnumTagMultiPayload();
    v20 = type metadata accessor for NoticeContext(0);
    sub_10021CC90((a4 + v20[6]));
    sub_100183D58(v11, type metadata accessor for LeaderNoticeTapAction);
    v41 = (a4 + v20[8]);
    *v41 = 0;
    v41[1] = 0xE000000000000000;
    v41[2] = 0x414944454DLL;
    v41[3] = 0xE500000000000000;
    type metadata accessor for NoticeContent(0);
    swift_storeEnumTagMultiPayload();
    *a4 = v38;
    *(a4 + 8) = v40;
    *(a4 + 16) = 0;
    *(a4 + v20[7]) = 1;
    return (*(*(v20 - 1) + 56))(a4, 0, 1, v20);
  }

  v27 = a1;
  v28 = [v27 callUUID];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    UUID.init()();
    v33 = UUID.uuidString.getter();
    v50 = v34;
    (*(v13 + 8))(v16, v12);
    *v11 = v30;
    v11[1] = v32;
    swift_storeEnumTagMultiPayload();
    v20 = type metadata accessor for NoticeContext(0);
    sub_10021CC90((a4 + v20[6]));
    sub_100183D58(v11, type metadata accessor for LeaderNoticeTapAction);
    v35 = v20[8];

    v36 = (a4 + v35);
    *v36 = 0;
    v36[1] = 0xE000000000000000;
    v36[2] = 1280065859;
    v36[3] = 0xE400000000000000;
    type metadata accessor for NoticeContent(0);
    swift_storeEnumTagMultiPayload();
    v37 = v50;
    *a4 = v33;
    *(a4 + 8) = v37;
    goto LABEL_6;
  }

  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100003078(v43, qword_100348FC8);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "### No callUUID", v46, 2u);
  }

  v47 = type metadata accessor for NoticeContext(0);
  v48 = *(*(v47 - 8) + 56);

  return v48(a4, 1, 1, v47);
}

uint64_t sub_10017FB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7[20] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v10 = type metadata accessor for ExperienceEvent(0);
  v7[22] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v12 = *(*(sub_100035D04(&qword_1003492A0, &qword_1002836F0) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v13 = type metadata accessor for NoticeContext(0);
  v7[25] = v13;
  v14 = *(v13 - 8);
  v7[26] = v14;
  v15 = *(v14 + 64) + 15;
  v7[27] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  v7[28] = qword_10038B5C0;
  type metadata accessor for WorkActor();
  v7[29] = sub_100183744(&qword_1003492A8, type metadata accessor for WorkActor);
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[30] = v17;
  v7[31] = v16;

  return (_swift_task_switch)(sub_10017FD90, v17, v16);
}

uint64_t sub_10017FD90()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  sub_100009848(*(v0 + 128), v3, &qword_1003492A0, &qword_1002836F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100035D04(&qword_1003492B0, &unk_100283718);
    sub_10000E244(&qword_1003492B8, &qword_1003492B0, &unk_100283718);
    v4 = swift_allocError();
    *v5 = 0xD000000000000010;
    v5[1] = 0x80000001002A32D0;
    swift_willThrow();
LABEL_8:
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v23 = *(v0 + 160);
    v22 = *(v0 + 168);
    v41 = *(v0 + 152);
    v24 = *(v0 + 136);
    swift_errorRetain();
    sub_10014FEEC(v4, (v0 + 16));
    v39 = *(v0 + 32);
    v40 = *(v0 + 16);
    v38 = *(v0 + 48);
    v25 = *(v0 + 64);
    v26 = UUID.uuidString.getter();
    v28 = v27;
    *v20 = v40;
    *(v20 + 16) = v39;
    *(v20 + 32) = v38;
    *(v20 + 48) = v25;
    *(v20 + 56) = 2;
    swift_storeEnumTagMultiPayload();
    v29 = *(v41 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v30 = (v22 + *(v23 + 48));
    v31 = (v22 + *(v23 + 64));
    sub_100183B28(v20, v22, type metadata accessor for ExperienceEvent);
    *v30 = v26;
    v30[1] = v28;
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    sub_100184230(v0 + 16, v0 + 72);
    PassthroughSubject.send(_:)();
    sub_10018428C(v0 + 16);

    sub_1000097E8(v22, &unk_10034C700, &qword_100273D30);
    sub_100183D58(v20, type metadata accessor for ExperienceEvent);
    v32 = *(v0 + 216);
    v33 = *(v0 + 184);
    v34 = *(v0 + 192);
    v35 = *(v0 + 168);

    v36 = *(v0 + 8);

    return v36();
  }

  v6 = *(v0 + 136);
  sub_100183F10(*(v0 + 192), *(v0 + 216), type metadata accessor for NoticeContext);
  v7 = *(v6 + 24);
  v8 = sub_100070D94();
  *(v0 + 256) = v8;
  if (!v8)
  {
    v18 = *(v0 + 216);
    sub_100035D04(&qword_100346AD0, &qword_10027E290);
    sub_10000E244(&qword_100346AD8, &qword_100346AD0, &qword_10027E290);
    v4 = swift_allocError();
    *v19 = 0xD000000000000018;
    v19[1] = 0x80000001002A32F0;
    swift_willThrow();
    sub_100183D58(v18, type metadata accessor for NoticeContext);
    goto LABEL_8;
  }

  v9 = v8;
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = swift_task_alloc();
  *(v0 + 264) = v15;
  v15[2] = v13;
  v15[3] = v12;
  v15[4] = v14;
  v15[5] = v9;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  *(v0 + 272) = v17;
  *v17 = v0;
  v17[1] = sub_1001801DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, v11, v10, 0xD000000000000025, 0x80000001002A3310, sub_1001842E0, v15, &type metadata for () + 8);
}

uint64_t sub_1001801DC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_1001804C4;
  }

  else
  {
    v7 = sub_100180318;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_100180318()
{
  v1 = v0[32];
  v20 = v0[27];
  v21 = v0[33];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[17] + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v8 = UUID.uuidString.getter();
  v10 = v9;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = 3;
  swift_storeEnumTagMultiPayload();
  v11 = *(v6 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v12 = (v5 + *(v4 + 48));
  v13 = (v5 + *(v4 + 64));
  sub_100183B28(v2, v5, type metadata accessor for ExperienceEvent);
  *v12 = v8;
  v12[1] = v10;
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  PassthroughSubject.send(_:)();

  sub_1000097E8(v5, &unk_10034C700, &qword_100273D30);
  sub_100183D58(v2, type metadata accessor for ExperienceEvent);
  sub_100183D58(v20, type metadata accessor for NoticeContext);

  v14 = v0[27];
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001804C4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);

  sub_100183D58(v2, type metadata accessor for NoticeContext);
  v3 = *(v0 + 280);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v25 = *(v0 + 152);
  v8 = *(v0 + 136);
  swift_errorRetain();
  sub_10014FEEC(v3, (v0 + 16));
  v23 = *(v0 + 32);
  v24 = *(v0 + 16);
  v22 = *(v0 + 48);
  v9 = *(v0 + 64);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  *v4 = v24;
  *(v4 + 16) = v23;
  *(v4 + 32) = v22;
  *(v4 + 48) = v9;
  *(v4 + 56) = 2;
  swift_storeEnumTagMultiPayload();
  v13 = *(v25 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v14 = (v6 + *(v7 + 48));
  v15 = (v6 + *(v7 + 64));
  sub_100183B28(v4, v6, type metadata accessor for ExperienceEvent);
  *v14 = v10;
  v14[1] = v12;
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  sub_100184230(v0 + 16, v0 + 72);
  PassthroughSubject.send(_:)();
  sub_10018428C(v0 + 16);

  sub_1000097E8(v6, &unk_10034C700, &qword_100273D30);
  sub_100183D58(v4, type metadata accessor for ExperienceEvent);
  v16 = *(v0 + 216);
  v17 = *(v0 + 184);
  v18 = *(v0 + 192);
  v19 = *(v0 + 168);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001806C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = a5;
  v7 = sub_100035D04(&qword_1003492C0, &unk_100283728);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_10017C8E8();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v11, v7);
  sub_10011DD84(a3, v12, v14, v19, sub_1001842EC, v16);
}

uint64_t sub_100180868(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100035D04(&qword_1003492C0, &unk_100283728);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100035D04(&qword_1003492C0, &unk_100283728);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001808DC(uint64_t *a1, uint64_t a2, unint64_t a3, void **a4, uint64_t a5, uint64_t a6)
{
  v107 = a6;
  v120 = a4;
  v116 = a2;
  v8 = a1;
  v9 = *a1;
  v113 = a1[1];
  v114 = v9;
  v10 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v104 = &v100 - v12;
  v109 = type metadata accessor for URL();
  v106 = *(v109 - 8);
  v13 = *(v106 + 64);
  v14 = __chkstk_darwin(v109);
  v105 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v108 = &v100 - v16;
  v115 = type metadata accessor for LeaderNoticeTapAction(0);
  v17 = *(*(v115 - 8) + 64);
  v18 = __chkstk_darwin(v115);
  v110 = (&v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v112 = &v100 - v21;
  __chkstk_darwin(v20);
  v111 = &v100 - v22;
  v23 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v100 - v25;
  v117 = type metadata accessor for ExperienceEvent(0);
  v27 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v29 = (&v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100003078(v30, qword_100348FC8);
  sub_1001835CC(v8, &aBlock);

  v118 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  sub_100183628(v8);

  if (os_log_type_enabled(v32, v33))
  {
    v102 = v23;
    v34 = swift_slowAlloc();
    v101 = a3;
    v35 = v34;
    v121[0] = swift_slowAlloc();
    *v35 = 136315906;
    *(v35 + 4) = sub_100017494(0xD00000000000003BLL, 0x80000001002A3290, v121);
    *(v35 + 12) = 2080;
    v103 = v8;
    v36 = sub_1001AFCB8();
    v38 = sub_100017494(v36, v37, v121);

    *(v35 + 14) = v38;
    *(v35 + 22) = 2080;
    *(v35 + 24) = sub_100017494(v116, v101, v121);
    *(v35 + 32) = 2080;
    if (a5)
    {
      aBlock = v120;
      v123 = a5;

      v39 = String.init<A>(describing:)();
      v41 = v40;
    }

    else
    {
      v41 = 0xE300000000000000;
      v39 = 7104878;
    }

    v52 = sub_100017494(v39, v41, v121);

    *(v35 + 34) = v52;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s: event=%s, contextID=%s, sessionID=%s", v35, 0x2Au);
    swift_arrayDestroy();

    v8 = v103;
    v23 = v102;
    if (!a5)
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (!a5)
    {
LABEL_12:
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "### No sessionID", v55, 2u);
      }

      return;
    }
  }

  v42 = *(v119 + 32);
  swift_unownedRetainStrong();
  v43 = *(v8 + 16);
  *v29 = *v8;
  v29[1] = v43;
  v29[2] = *(v8 + 32);
  *(v29 + 41) = *(v8 + 41);
  swift_storeEnumTagMultiPayload();
  v44 = *(v42 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v45 = &v26[*(v23 + 48)];
  v46 = &v26[*(v23 + 64)];
  sub_100183B28(v29, v26, type metadata accessor for ExperienceEvent);
  *v45 = v120;
  v45[1] = a5;
  *v46 = 0xD000000000000014;
  *(v46 + 1) = 0x80000001002A3270;
  sub_1001835CC(v8, &aBlock);

  PassthroughSubject.send(_:)();
  sub_1000097E8(v26, &unk_10034C700, &qword_100273D30);
  sub_100183D58(v29, type metadata accessor for ExperienceEvent);

  if (*(v8 + 56) != 1 || *(v8 + 8) >> 60 == 15)
  {
    return;
  }

  v47 = *v8;
  v48 = type metadata accessor for JSONDecoder();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_10006DADC(v114, v113);
  JSONDecoder.init()();
  sub_100183744(&qword_100349298, type metadata accessor for LeaderNoticeTapAction);
  v51 = v112;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v56 = v111;
  sub_100183F10(v51, v111, type metadata accessor for LeaderNoticeTapAction);
  v57 = v110;
  sub_100183B28(v56, v110, type metadata accessor for LeaderNoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v70 = v106;
    v71 = v108;
    v72 = v109;
    (*(v106 + 32))(v108, v57, v109);
    v73 = v105;
    (*(v70 + 16))(v105, v71, v72);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = v70;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock = v78;
      *v77 = 136315138;
      sub_100183744(&qword_100343268, &type metadata accessor for URL);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v82 = v73;
      v83 = *(v76 + 8);
      v83(v82, v109);
      v56 = v111;
      v84 = sub_100017494(v79, v81, &aBlock);

      *(v77 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v74, v75, "Opening url: %s", v77, 0xCu);
      sub_10000903C(v78);
      v72 = v109;
    }

    else
    {

      v91 = v73;
      v83 = *(v70 + 8);
      v83(v91, v72);
    }

    v92 = [objc_opt_self() sharedApplication];
    v93 = v108;
    URL._bridgeToObjectiveC()(&v128);
    v95 = v94;
    v126 = nullsub_1;
    v127 = 0;
    aBlock = _NSConcreteStackBlock;
    v123 = 1107296256;
    v124 = sub_10017C79C;
    v125 = &unk_10030D380;
    v96 = _Block_copy(&aBlock);
    [v92 openURL:v95 withCompletionHandler:v96];
    _Block_release(v96);

    sub_100183628(v8);
    v83(v93, v72);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v60 = *v57;
    v59 = v57[1];
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Transfering call", v63, 2u);
    }

    v64 = *(v119 + 32);
    swift_unownedRetainStrong();
    v65 = *(v64 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);

    v66 = sub_1001817B0(v107);

    if (v66)
    {
      v67 = type metadata accessor for TaskPriority();
      v68 = v104;
      (*(*(v67 - 8) + 56))(v104, 1, 1, v67);
      v69 = swift_allocObject();
      v69[2] = 0;
      v69[3] = 0;
      v69[4] = v60;
      v69[5] = v59;
      v69[6] = v66;

      sub_100240220(0, 0, v68, &unk_100283658, v69);
      sub_100183628(v8);

LABEL_36:
      sub_100183D58(v56, type metadata accessor for LeaderNoticeTapAction);
      return;
    }

LABEL_33:
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "### No mapping device", v99, 2u);
    }

    sub_100183628(v8);

    goto LABEL_36;
  }

  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v85, v86, "Transfering media", v87, 2u);
  }

  v88 = *(v119 + 32);
  swift_unownedRetainStrong();
  v89 = *(v88 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);

  v90 = sub_1001817B0(v107);

  if (!v90)
  {
    goto LABEL_33;
  }

  if (qword_100338F98 != -1)
  {
    swift_once();
  }

  sub_1001FAF20(v90);
  sub_100183D58(v56, type metadata accessor for LeaderNoticeTapAction);
  sub_100183628(v8);
}

uint64_t sub_1001817B0(uint64_t a1)
{
  v2 = v1;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v4;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v5 = sub_1000851E8(&v29), (v6 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v5, &v30);
    sub_1000516C4(&v29);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v27[0];
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v27[1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_1000516C4(&v29);
    v8 = 0;
    v9 = 0;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v10;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v11 = sub_1000851E8(&v29), (v12 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v11, &v30);
    sub_1000516C4(&v29);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v27[0];
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v27[1];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_1000516C4(&v29);
    v14 = 0;
    v15 = 0;
  }

  strcpy(v27, "rangingToken");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  v28 = 0;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v16 = sub_1000851E8(&v29), (v17 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v16, &v30);
    sub_1000516C4(&v29);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
      v19 = sub_10017B1C8();
      v18 = sub_100010708(v27[0], v27[1]);
      v28 = v19;
      goto LABEL_25;
    }
  }

  else
  {
    v18 = sub_1000516C4(&v29);
  }

  v19 = 0;
LABEL_25:
  __chkstk_darwin(v18);
  type metadata accessor for HandoffDevice();
  type metadata accessor for UUID();
  sub_100183744(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v20 = v2 + qword_100346AF8;
  os_unfair_lock_lock(v20);
  v29 = *(v20 + 8);

  swift_getAtKeyPath();

  v21 = v30;
  os_unfair_lock_unlock(v20);

  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_28:

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v23 = sub_100009194(*(v21 + 16), 0);
  v24 = sub_100009A04(&v29, v23 + 4, v22);
  sub_100004F98();
  if (v24 != v22)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_29:

  v25 = sub_10018378C(v23, v8, v9, v14, v15, &v28);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v25;
}

uint64_t sub_100181BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return (_swift_task_switch)(sub_100181BE0, 0, 0);
}

uint64_t sub_100181BE0()
{
  v29 = v0;
  if (qword_100339180 != -1)
  {
    swift_once();
  }

  v1 = *(*(qword_10038B4E8 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state) + 16);
  v2 = *(v1 + 24);

  CurrentValueSubject.value.getter();
  v3 = *(v0 + 40);
  if (v3 == 254)
  {
    v4 = *(v1 + 16);
    CurrentValueSubject.value.getter();

    v5 = *(v0 + 16);
    v3 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 32);
  }

  *(v0 + 72) = v5;
  *(v0 + 25) = v3;
  if (v3 == 255)
  {
    goto LABEL_9;
  }

  if (v3)
  {
LABEL_8:
    sub_100036718(v5, v3);
LABEL_9:
    if (qword_100339108 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 56);
    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_100348FC8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 48);
      v10 = *(v0 + 56);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100017494(v11, v10, &v28);
      _os_log_impl(&_mh_execute_header, v8, v9, "### Active call doesn't match uuid: %s", v12, 0xCu);
      sub_10000903C(v13);
    }

    v14 = *(v0 + 8);

    return v14();
  }

  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  v18 = [v5 callUUID];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == v17 && v21 == v16)
  {
  }

  else
  {
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v25 = qword_10038B4E8;
  *(v0 + 80) = qword_10038B4E8;
  v25;
  v26 = swift_task_alloc();
  *(v0 + 88) = v26;
  *v26 = v0;
  v26[1] = sub_100181F44;
  v27 = *(v0 + 64);

  return sub_1001FB388(v27, v5);
}

uint64_t sub_100181F44()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1001820C4;
  }

  else
  {

    v4 = sub_100182060;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_100182060()
{
  sub_100036718(*(v0 + 72), *(v0 + 25));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001820C4()
{
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348FC8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 25);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "### Failed to transfer call: %@", v9, 0xCu);
    sub_1000097E8(v10, &qword_100339940, &unk_100272C50);

    sub_100036718(v7, v8);
  }

  else
  {
    sub_100036718(*(v0 + 72), *(v0 + 25));
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100182298()
{
  v0 = type metadata accessor for RemoteFollowerMessage();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  v8 = sub_100035D04(&unk_100349050, &qword_100283530);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(90);
  v15._countAndFlagsBits = 0xD000000000000030;
  v15._object = 0x80000001002A31F0;
  String.append(_:)(v15);
  Double.write<A>(to:)();
  v16._object = 0x80000001002A3230;
  v16._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v16);
  Double.write<A>(to:)();
  v17._object = 0x80000001002A3250;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100009848(v14, v12, &unk_100349050, &qword_100283530);
  if ((*(v1 + 48))(v12, 1, v0) == 1)
  {
    v18 = 0xE300000000000000;
    v19 = 7104878;
  }

  else
  {
    sub_100183F10(v12, v7, type metadata accessor for RemoteFollowerMessage);
    sub_100183B28(v7, v5, type metadata accessor for RemoteFollowerMessage);
    v19 = String.init<A>(describing:)();
    v18 = v20;
    sub_100183D58(v7, type metadata accessor for RemoteFollowerMessage);
  }

  sub_1000097E8(v14, &unk_100349050, &qword_100283530);
  v21._countAndFlagsBits = v19;
  v21._object = v18;
  String.append(_:)(v21);

  return v23[0];
}

void sub_1001825CC()
{
  if (!qword_100349048)
  {
    sub_100035D4C(&unk_100349050, &qword_100283530);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100349048);
    }
  }
}

uint64_t sub_100182654(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1001826D0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100035D04(&unk_100349050, &qword_100283530);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_100009848(a1, &v13 - v9, &unk_100349050, &qword_100283530);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100009848(v10, v8, &unk_100349050, &qword_100283530);

  static Published.subscript.setter();
  return sub_1000097E8(v10, &unk_100349050, &qword_100283530);
}

uint64_t sub_100182800(uint64_t a1)
{
  v2 = v1;
  v82 = a1;
  v3 = sub_100035D04(&qword_100349200, &qword_100283590);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  __chkstk_darwin(v3);
  v75 = v62 - v5;
  v6 = sub_100035D04(&qword_100349208, &unk_100283598);
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v78 = v62 - v8;
  v9 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 64);
  __chkstk_darwin(v9);
  v72 = v62 - v11;
  v12 = sub_100035D04(&qword_100349210, &qword_1002835A8);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  __chkstk_darwin(v12);
  v66 = v62 - v14;
  v15 = sub_100035D04(&qword_100349218, &unk_1002835B0);
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  __chkstk_darwin(v15);
  v69 = v62 - v17;
  v65 = sub_100035D04(&qword_10033B298, &qword_100271E18);
  v64 = *(v65 - 8);
  v18 = *(v64 + 64);
  __chkstk_darwin(v65);
  v63 = v62 - v19;
  v20 = sub_100035D04(&qword_100349220, &unk_1002835C0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v62 - v23;
  v25 = sub_100035D04(&unk_100349050, &qword_100283530);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v29 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = v62 - v30;
  *(v2 + 16) = xmmword_1002834B0;
  v32 = OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter__keepAliveMessage;
  v33 = type metadata accessor for RemoteFollowerMessage();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  sub_100009848(v31, v29, &unk_100349050, &qword_100283530);
  Published.init(initialValue:)();
  sub_1000097E8(v31, &unk_100349050, &qword_100283530);
  (*(v21 + 32))(v2 + v32, v24, v20);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_presentingNotice) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask) = 0;
  v81 = v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_tasks;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_tasks) = &_swiftEmptySetSingleton;
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100003078(v34, qword_100348FC8);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Init", v37, 2u);
  }

  *(v2 + 32) = v82;
  v38 = swift_unownedRetain();
  v85 = sub_100140E18();
  v83 = 0;
  v84 = 0;
  v39 = sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  sub_100035D04(&qword_10033B3D0, &qword_100271F60);
  v40 = sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0);
  v41 = v63;
  v62[2] = v39;
  v62[1] = v40;
  Publisher.scan<A>(_:_:)();
  sub_10000E244(&qword_10033B3D8, &qword_10033B298, &qword_100271E18);
  v42 = v65;
  v43 = Publisher.eraseToAnyPublisher()();

  (*(v64 + 8))(v41, v42);
  v83 = v43;
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_100183520;
  *(v45 + 24) = v44;

  sub_100035D04(&qword_10033B3E0, &qword_100271F68);
  sub_10000E244(&qword_10033B3E8, &qword_10033B3E0, &qword_100271F68);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v65 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher;
  v83 = *(v38 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  v64 = type metadata accessor for HandoffSession();

  v46 = v72;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100349228, &qword_1002835D0);
  v47 = v66;
  v48 = v74;
  Publishers.CompactMap.map<A>(_:)();
  v62[0] = v2;
  v73 = *(v73 + 8);
  (v73)(v46, v48);
  v63 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10000E244(&qword_100349230, &qword_100349210, &qword_1002835A8);
  sub_10000E244(&qword_100349238, &qword_100349228, &qword_1002835D0);
  v49 = v68;
  v50 = v69;
  Publisher<>.switchToLatest()();
  (*(v67 + 8))(v47, v49);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_100183530;
  *(v52 + 24) = v51;
  sub_10000E244(&qword_100349240, &qword_100349218, &unk_1002835B0);
  v53 = v71;
  Publisher<>.sink(receiveValue:)();

  (*(v70 + 8))(v50, v53);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v83 = *(v82 + v65);

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100349248, &qword_1002835D8);
  v54 = v75;
  Publishers.CompactMap.map<A>(_:)();
  (v73)(v46, v48);
  sub_10000E244(&qword_100349250, &qword_100349200, &qword_100283590);
  sub_10000E244(&qword_100349258, &qword_100349248, &qword_1002835D8);
  v55 = v77;
  v56 = v78;
  Publisher<>.switchToLatest()();
  (*(v76 + 8))(v54, v55);
  v57 = swift_allocObject();
  v58 = v62[0];
  swift_weakInit();

  v59 = swift_allocObject();
  *(v59 + 16) = sub_100183568;
  *(v59 + 24) = v57;
  sub_10000E244(&qword_100349260, &qword_100349208, &unk_100283598);
  v60 = v80;
  Publisher<>.sink(receiveValue:)();

  (*(v79 + 8))(v56, v60);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v58;
}

uint64_t sub_100183538(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1));
}

uint64_t sub_100183570(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_100035D04(&qword_100349268, &qword_1002835E0);
  return v4(a1, *(a1 + *(v5 + 48)));
}

uint64_t sub_10018367C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E6584;

  return sub_100181BBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100183744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018378C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  if (a1 >> 62)
  {
LABEL_40:
    v33 = a1;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v33;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
      v39 = a1 & 0xC000000000000001;
      v37 = a1 + 32;
      v35 = v9;
      while (1)
      {
        if (v39)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = __OFADD__(v10++, 1);
          if (v12)
          {
LABEL_36:
            __break(1u);
LABEL_37:

            return v11;
          }
        }

        else
        {
          if (v10 >= *(v38 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v11 = *(v37 + 8 * v10);

          v12 = __OFADD__(v10++, 1);
          if (v12)
          {
            goto LABEL_36;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v13 = sub_1000BCFD0();

        if (a3)
        {
          if (v13[2])
          {
            v14 = v13[5];
            Hasher.init(_seed:)();
            String.hash(into:)();
            v15 = Hasher._finalize()();
            v16 = -1 << *(v13 + 32);
            v17 = v15 & ~v16;
            if ((*(v13 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17))
            {
              v18 = ~v16;
              do
              {
                v19 = (v13[6] + 16 * v17);
                v20 = *v19 == a2 && v19[1] == a3;
                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_37;
                }

                v17 = (v17 + 1) & v18;
              }

              while (((*(v13 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) != 0);
            }
          }
        }

        if (a5)
        {
          if (v13[2])
          {
            v21 = v13[5];
            Hasher.init(_seed:)();
            String.hash(into:)();
            v22 = Hasher._finalize()();
            v23 = -1 << *(v13 + 32);
            v24 = v22 & ~v23;
            if ((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24))
            {
              v25 = ~v23;
              do
              {
                v26 = (v13[6] + 16 * v24);
                v27 = *v26 == a4 && v26[1] == a5;
                if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_37;
                }

                v24 = (v24 + 1) & v25;
              }

              while (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24) & 1) != 0);
            }
          }
        }

        v28 = *a6;
        if (*a6)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v29 = v28;
          static Published.subscript.getter();

          v30 = *(v40 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID);
          v31 = v30;

          if (!v30)
          {

            goto LABEL_32;
          }

          v32 = [v29 isEqual:v31];

          if (v32)
          {
            return v11;
          }
        }

LABEL_32:
        if (v10 == v35)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100183B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100183B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_1003492A0, &qword_1002836F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100183C00(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100035D04(&qword_1003492A0, &qword_1002836F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000E6584;

  return sub_10017FB94(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_100183D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100183DB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100035D04(&qword_1003492A0, &qword_1002836F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10009D6D4;

  return sub_10017FB94(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_100183F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100183F78()
{
  v1 = *(sub_100035D04(&qword_1003492A0, &qword_1002836F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for NoticeContext(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = *(v6 + 8);

    v9 = v6 + *(v7 + 24);
    type metadata accessor for NoticeTapAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 8))(v9, v11);
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_100010708(*v9, *(v9 + 8));
    }

    v12 = v6 + *(v7 + 32);
    type metadata accessor for NoticeContent(0);
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        if (v13 != 3)
        {
          goto LABEL_16;
        }

        v14 = *(v12 + 8);

        v15 = type metadata accessor for ShareableContentExposedContext(0);
        v16 = v12 + *(v15 + 20);
        v17 = *(v16 + 8);

        v18 = *(type metadata accessor for ShareableContent(0) + 20);
        v19 = type metadata accessor for URL();
        v20 = *(v19 - 8);
        if (!(*(v20 + 48))(v16 + v18, 1, v19))
        {
          (*(v20 + 8))(v16 + v18, v19);
        }

        v21 = (v12 + *(v15 + 24) + 8);
        goto LABEL_15;
      }
    }

    else if (v13 >= 2)
    {
      goto LABEL_16;
    }

    v22 = *(v12 + 8);

    v21 = (v12 + 24);
LABEL_15:
    v23 = *v21;
  }

LABEL_16:
  v24 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v0 + v24);

  v28 = *(v0 + v25);

  v29 = *(v0 + v26);

  return _swift_deallocObject(v0, v26 + 8, v2 | 7);
}

uint64_t sub_1001842EC(uint64_t a1)
{
  v2 = *(*(sub_100035D04(&qword_1003492C0, &unk_100283728) - 8) + 80);

  return sub_100180868(a1);
}

uint64_t sub_1001843C8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for HandoffTargetStatus();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&unk_100349338, &qword_1002837E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v18[-1] - v10);
  sub_100009848(v2, &v18[-1] - v10, &unk_100349338, &qword_1002837E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    v18[4] = v12;
    sub_100035D04(&unk_100346020, &qword_100271A00);
    _print_unlocked<A, B>(_:_:)();

    return v18[0];
  }

  else
  {
    sub_10018C7B8(v11, v7);
    v18[3] = v4;
    v14 = sub_10000F798(v18);
    sub_10018C81C(v7, v14, type metadata accessor for HandoffTargetStatus);
    if (a1 == 2 || (a1 & 1) == 0)
    {
      v15 = sub_1000CF5E0(v18);
    }

    else
    {
      v15 = sub_100057AD4(v18);
    }

    v16 = v15;
    sub_10018C9D0(v7, type metadata accessor for HandoffTargetStatus);
    sub_10000903C(v18);
    return v16;
  }
}

uint64_t sub_1001845C0()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_device);

  swift_weakDestroy();
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus, &qword_100349620, &qword_1002838B8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1001846C4()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1001847E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001847E4()
{
  if (!qword_100349330)
  {
    sub_100035D4C(&unk_100349338, &qword_1002837E0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100349330);
    }
  }
}

uint64_t sub_100184848()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);
  v2 = *(v1 + 24);

  CurrentValueSubject.value.getter();
  v3 = v6;
  if ((~v6 & 0xFEFE) != 0)
  {
  }

  else
  {
    v4 = *(v1 + 16);
    CurrentValueSubject.value.getter();

    return v7;
  }

  return v3;
}

void sub_1001848C4(void (*a1)(void, void, void))
{
  v3 = type metadata accessor for UUID();
  v291 = *(v3 - 8);
  v292 = v3;
  v4 = *(v291 + 64);
  __chkstk_darwin(v3);
  v290 = &v288 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_100349620, &qword_1002838B8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v296 = &v288 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v289 = (&v288 - v10);
  v11 = type metadata accessor for OSSignpostID();
  v297 = *(v11 - 8);
  *&v298 = v11;
  v12 = *(v297 + 64);
  __chkstk_darwin(v11);
  v299 = &v288 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = type metadata accessor for ExperienceEffect(0);
  v14 = *(*(v301 - 8) + 64);
  __chkstk_darwin(v301);
  v300 = (&v288 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ExperienceEvent(0);
  v305 = *(v16 - 8);
  v17 = *(v305 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v288 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v295 = (&v288 - v22);
  v23 = __chkstk_darwin(v21);
  v294 = &v288 - v24;
  v25 = __chkstk_darwin(v23);
  v293 = &v288 - v26;
  v27 = __chkstk_darwin(v25);
  v302 = &v288 - v28;
  v29 = __chkstk_darwin(v27);
  v306 = (&v288 - v30);
  v31 = __chkstk_darwin(v29);
  *&v303 = &v288 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v288 - v34;
  __chkstk_darwin(v33);
  v37 = &v288 - v36;
  sub_10018C81C(a1, &v288 - v36, type metadata accessor for ExperienceEvent);
  v307 = v1;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v310 = v16;
  *&v304 = v20;
  if (v40)
  {
    v41 = a1;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v324[0] = v43;
    *v42 = 136315138;
    v44 = sub_100243F84(v43);
    v46 = v45;
    sub_10018C9D0(v37, type metadata accessor for ExperienceEvent);
    v47 = sub_100017494(v44, v46, v324);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "⬆️ Send: %s", v42, 0xCu);
    sub_10000903C(v43);

    a1 = v41;
  }

  else
  {

    sub_10018C9D0(v37, type metadata accessor for ExperienceEvent);
  }

  v48 = v307;
  v308 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state;
  v49 = *(v307 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);
  v50 = *(v49 + 24);

  CurrentValueSubject.value.getter();
  v51 = v321[0];
  v52 = v306;
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    v53 = *(v49 + 16);
    CurrentValueSubject.value.getter();

    v51 = v324[0];
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v309 = qword_10038B0B8;
  v54 = *(qword_10038B0B8 + 96);
  v55 = sub_1000031CC();

  if (v55 & 1) != 0 && (v51 & 0xE000) == 0 && (v51)
  {
    sub_10018C81C(a1, v35, type metadata accessor for ExperienceEvent);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_10018C9D0(v35, type metadata accessor for ExperienceEvent);
      goto LABEL_22;
    }

    v56 = *v35;
    if (v56 != 1)
    {
      if (v56 != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v57 = *(*(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_device);
    sub_10006F838();
    v58 = sub_1001DF2A4();

    if ((v58 & 1) == 0)
    {

      goto LABEL_21;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v59)
    {
LABEL_21:
      sub_100187320(a1);
    }
  }

LABEL_22:
  v60 = v308;
  v61 = *(v48 + v308);
  v62 = *(v61 + 24);

  CurrentValueSubject.value.getter();
  v63 = LOWORD(v321[0]);
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    v64 = *(v61 + 16);
    CurrentValueSubject.value.getter();

    v63 = LOWORD(v324[0]);
  }

  v65 = v309[16];
  v66 = sub_1000031CC();

  if ((v66 & 1) != 0 && (v63 >> 13 < 2 || v63 >> 13 == 4 && v63 == 32769))
  {
    v67 = v303;
    sub_10018C81C(a1, v303, type metadata accessor for ExperienceEvent);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (*v67 == 3)
      {
        sub_100187BF4(a1);
      }
    }

    else
    {
      sub_10018C9D0(v67, type metadata accessor for ExperienceEvent);
    }
  }

  v68 = *(v48 + v60);
  v69 = *(v68 + 24);

  CurrentValueSubject.value.getter();
  v70 = LOWORD(v321[0]);
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    v71 = *(v68 + 16);
    CurrentValueSubject.value.getter();

    v70 = LOWORD(v324[0]);
  }

  v72 = v309[16];
  v73 = sub_1000031CC();

  if ((v73 & 1) == 0 && !(v70 >> 14))
  {
    *v52 = 3;
    swift_storeEnumTagMultiPayload();
    v74 = sub_1002454A4(a1, v52);
    sub_10018C9D0(v52, type metadata accessor for ExperienceEvent);
    if (v74)
    {
      goto LABEL_98;
    }

    *v52 = xmmword_100278920;
    v52[16] = 4;
    swift_storeEnumTagMultiPayload();
    v75 = sub_1002454A4(a1, v52);
    sub_10018C9D0(v52, type metadata accessor for ExperienceEvent);
    if (v75)
    {
      goto LABEL_98;
    }
  }

  v76 = *(v48 + v60);
  v77 = *(v76 + 24);

  CurrentValueSubject.value.getter();
  v78 = LOWORD(v321[0]);
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {

    if (v78 >> 13)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v79 = *(v76 + 16);
    CurrentValueSubject.value.getter();

    if (LOWORD(v324[0]) >> 13)
    {
      goto LABEL_47;
    }
  }

  *v52 = 2;
  swift_storeEnumTagMultiPayload();
  v80 = sub_1002454A4(a1, v52);
  sub_10018C9D0(v52, type metadata accessor for ExperienceEvent);
  if (v80)
  {
    v81 = v300;
    *v300 = xmmword_100271890;
    *(v81 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v81, a1);
    sub_10018C9D0(v81, type metadata accessor for ExperienceEffect);
    *v81 = 0;
    *(v81 + 8) = 0;
    *(v81 + 16) = -125;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v81, a1);
    sub_10018C9D0(v81, type metadata accessor for ExperienceEffect);
  }

LABEL_47:
  v82 = *(v48 + v60);
  v83 = *(v82 + 24);

  CurrentValueSubject.value.getter();
  v84 = v321[0];
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    v85 = *(v82 + 16);
    CurrentValueSubject.value.getter();

    v84 = v324[0];
  }

  if ((v84 & 0xE000) == 0x2000 && (v84 & 1) == 0)
  {
    sub_100035D04(&qword_10033F058, &unk_1002789B0);
    v86 = *(v305 + 72);
    v87 = (*(v305 + 80) + 32) & ~*(v305 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1002727F0;
    v89 = v88 + v87;
    v303 = xmmword_100271890;
    *v89 = xmmword_100271890;
    *(v89 + 16) = 4;
    swift_storeEnumTagMultiPayload();
    v90 = v89 + v86;
    *v90 = v303;
    *(v90 + 16) = -124;
    swift_storeEnumTagMultiPayload();
    *(v89 + 2 * v86) = 0;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v86) = sub_1000D0DB0(a1, v88);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v86)
    {
      sub_100187688(a1);
      return;
    }
  }

  v91 = *(v48 + v60);
  v92 = *(v91 + 24);

  CurrentValueSubject.value.getter();
  v93 = LOWORD(v321[0]);
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {

    if (v93 != 0x8000)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v94 = *(v91 + 16);
    CurrentValueSubject.value.getter();

    if (LOWORD(v324[0]) != 0x8000)
    {
      goto LABEL_102;
    }
  }

  v95 = v302;
  sub_10018C81C(a1, v302, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 8:
      sub_10018C81C(v95, v295, type metadata accessor for ExperienceEvent);
      type metadata accessor for TransferEvent();
      v107 = swift_getEnumCaseMultiPayload();
      if (v107 != 6)
      {
        if (v107 == 5)
        {
          v108 = *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
          v109 = v289;
          *v289 = *v295;
          v110 = sub_100035D04(&unk_100349338, &qword_1002837E0);
        }

        else
        {
          if (v107 != 4)
          {
            sub_10018C9D0(v295, type metadata accessor for TransferEvent);
            break;
          }

          v108 = *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
          v109 = v289;
          sub_10018C7B8(v295, v289);
          v110 = sub_100035D04(&unk_100349338, &qword_1002837E0);
        }

        swift_storeEnumTagMultiPayload();
        (*(*(v110 - 8) + 56))(v109, 0, 1, v110);
        v111 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus;
        swift_beginAccess();
        v112 = v108 + v111;
        v95 = v302;
        sub_1000369A4(v109, v112, &qword_100349620, &qword_1002838B8);
        swift_endAccess();
        break;
      }

      v113 = *v295;
      v114 = *v295 >> 62;
      if (v114)
      {
        if (v114 != 2 || v113 != 0x8000000000000000)
        {
          sub_1000D680C(v113);
          break;
        }
      }

      else
      {
        sub_1000D680C(v113);
      }

      v105 = *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
      v106 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_isShareableContentLocalResolved;
      goto LABEL_88;
    case 3:
      v102 = v294;
      sub_10018C81C(v95, v294, type metadata accessor for ExperienceEvent);
      v103 = *v102;
      if (v103 == 8)
      {
        v105 = *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
        v106 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellTimedOut;
      }

      else
      {
        if (v103 != 7)
        {
          break;
        }

        v104 = v299;
        static OSSignpostID.exclusive.getter();
        static os_signpost_type_t.begin.getter();
        if (qword_100338F20 != -1)
        {
          swift_once();
          v95 = v302;
        }

        os_signpost(_:dso:log:name:signpostID:_:_:)();
        (*(v297 + 8))(v104, v298);
        v105 = *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
        v106 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellExpired;
      }

LABEL_88:
      *(v105 + v106) = 1;
      break;
    case 0:
      v97 = v293;
      sub_10018C81C(v95, v293, type metadata accessor for ExperienceEvent);
      v98 = *v97;
      v99 = *(v97 + 8);
      v100 = *(v97 + 16);
      if (v100 < 0 && (v100 & 0x7F) == 4 && v98 == 2 && !v99)
      {
        v101 = v299;
        static OSSignpostID.exclusive.getter();
        static os_signpost_type_t.end.getter();
        if (qword_100338F20 != -1)
        {
          swift_once();
          v95 = v302;
        }

        os_signpost(_:dso:log:name:signpostID:_:_:)();
        (*(v297 + 8))(v101, v298);
      }

      else
      {
        sub_1000D65DC(v98, v99, v100);
      }

      break;
  }

  sub_10018C9D0(v95, type metadata accessor for ExperienceEvent);
  v115 = *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
  if (*(v115 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellExpired) != 1)
  {
    goto LABEL_102;
  }

  v116 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus;
  swift_beginAccess();
  v117 = v296;
  sub_100009848(v115 + v116, v296, &qword_100349620, &qword_1002838B8);
  v118 = sub_100035D04(&unk_100349338, &qword_1002837E0);
  LODWORD(v116) = (*(*(v118 - 8) + 48))(v117, 1, v118);
  sub_1000097E8(v117, &qword_100349620, &qword_1002838B8);
  if (v116 != 1 && ((*(v115 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_isShareableContentLocalResolved) & 1) != 0 || (*(v115 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellWaitsForLocalShareableContent) & 1) == 0))
  {
LABEL_98:
    sub_1001897C4(a1);
    return;
  }

  v119 = *(v115 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellTimedOut);
  static OSSignpostID.exclusive.getter();
  v48 = v307;
  if (v119 == 1)
  {
    static os_signpost_type_t.end.getter();
    if (qword_100338F20 != -1)
    {
      swift_once();
    }

    v120 = v299;
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    (*(v297 + 8))(v120, v298);
    goto LABEL_98;
  }

  static os_signpost_type_t.begin.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  v121 = v299;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v297 + 8))(v121, v298);
LABEL_102:
  v122 = v304;
  sub_10018C81C(a1, v304, type metadata accessor for ExperienceEvent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10018C9D0(v122, type metadata accessor for ExperienceEvent);
    goto LABEL_116;
  }

  v123 = *v122;
  if ((v123 - 5) < 5)
  {
    goto LABEL_116;
  }

  if (v123 == 4)
  {
    v124 = 0;
  }

  else
  {
    v124 = *v122;
  }

  v125 = *(v48 + v60);
  v126 = *(v125 + 24);

  CurrentValueSubject.value.getter();
  v127 = LOWORD(v321[0]);
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {

    v129 = v127 >> 13;
    if (v127 >> 13)
    {
LABEL_109:
      if (v129 == 1)
      {
        if (v124 <= 1 && (v127 & 0x100) == 0)
        {
          goto LABEL_193;
        }
      }

      else if (v129 == 4 && v124 <= 2 && v127 == 0x8000 && (*(*(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellExpired) & 1) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_116;
    }
  }

  else
  {
    v128 = *(v125 + 16);
    CurrentValueSubject.value.getter();

    v127 = LOWORD(v324[0]);
    v129 = LOWORD(v324[0]) >> 13;
    if (v129)
    {
      goto LABEL_109;
    }
  }

  v224 = *(*(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_device);
  sub_10006F838();
  v225 = sub_1001DF2A4();

  if (v225)
  {
    if (v124 < 2)
    {
      goto LABEL_193;
    }
  }

  else if (!v124)
  {
    goto LABEL_193;
  }

LABEL_116:
  v130 = *(v48 + v60);
  v131 = *(v130 + 24);

  CurrentValueSubject.value.getter();
  v132 = LOWORD(v321[0]);
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    v133 = *(v130 + 16);
    CurrentValueSubject.value.getter();

    v132 = LOWORD(v324[0]);
  }

  if (v132 >> 13 != 1)
  {
    if (v132 >> 13 != 4 || v132 != 0x8000)
    {
      goto LABEL_133;
    }

    goto LABEL_124;
  }

  if ((v132 & 0x100) != 0)
  {
    sub_100035D04(&qword_10033F058, &unk_1002789B0);
    v160 = *(v305 + 72);
    v161 = (*(v305 + 80) + 32) & ~*(v305 + 80);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_100283750;
    v163 = v162 + v161;
    v303 = xmmword_100278910;
    *v163 = xmmword_100278910;
    *(v163 + 56) = 0;
    swift_storeEnumTagMultiPayload();
    v164 = v162 + v161 + v160;
    sub_10001618C();
    *&v304 = a1;
    v165 = swift_allocError();
    *v166 = 0;
    *(v166 + 8) = 0xE000000000000000;
    *(v166 + 16) = 11;
    sub_10014FEEC(v165, v315);
    v167 = v316;
    v168 = v315[1];
    *v164 = v315[0];
    *(v164 + 16) = v168;
    *(v164 + 32) = v167;
    *(v164 + 40) = v317;
    *(v164 + 56) = 32;
    swift_storeEnumTagMultiPayload();
    v169 = v163 + 2 * v160;
    *v169 = v303;
    *(v169 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    v170 = v163 + 3 * v160;
    *v170 = v303;
    *(v170 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v171 = v163 + 4 * v160;
    *v171 = v303;
    *(v171 + 16) = 3;
    swift_storeEnumTagMultiPayload();
    v172 = v163 + 5 * v160;
    v173 = swift_allocError();
    *v174 = 0;
    *(v174 + 8) = 0xE000000000000000;
    *(v174 + 16) = 11;
    *v172 = v173;
    *(v172 + 8) = 0;
    *(v172 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    v175 = v163 + 6 * v160;
    *v175 = v303;
    *(v175 + 16) = -127;
    swift_storeEnumTagMultiPayload();
    v176 = v163 + 7 * v160;
    *v176 = v303;
    *(v176 + 16) = -126;
    swift_storeEnumTagMultiPayload();
    v177 = v163 + 8 * v160;
    *v177 = v303;
    *(v177 + 16) = -125;
    swift_storeEnumTagMultiPayload();
    v178 = v163 + 9 * v160;
    a1 = v304;
    v52 = v306;
    v179 = swift_allocError();
    *v180 = 0;
    *(v180 + 8) = 0xE000000000000000;
    v60 = v308;
    *(v180 + 16) = 11;
    *v178 = v179;
    *(v178 + 8) = 0;
    *(v178 + 16) = 0x80;
    swift_storeEnumTagMultiPayload();
    *(v163 + 10 * v160) = 3;
    swift_storeEnumTagMultiPayload();
    *(v163 + 11 * v160) = 0;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v178) = sub_1000D0DB0(a1, v162);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v178 & 1) == 0)
    {
      goto LABEL_133;
    }

LABEL_193:
    v233 = a1;
    v234 = 0;
    goto LABEL_199;
  }

LABEL_124:
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v134 = *(v305 + 72);
  v135 = (*(v305 + 80) + 32) & ~*(v305 + 80);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_100283760;
  v137 = v136 + v135;
  v304 = xmmword_100278910;
  *v137 = xmmword_100278910;
  *(v137 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v138 = v136 + v135 + v134;
  *v138 = v304;
  *(v138 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v139 = v136 + v135 + 2 * v134;
  *v139 = v304;
  *(v139 + 16) = 3;
  swift_storeEnumTagMultiPayload();
  v140 = v136 + v135 + 3 * v134;
  sub_10001618C();
  v141 = swift_allocError();
  *v142 = 0;
  *(v142 + 8) = 0xE000000000000000;
  *(v142 + 16) = 11;
  *v140 = v141;
  *(v140 + 8) = 0;
  *(v140 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v143 = v137 + 4 * v134;
  v303 = xmmword_100274290;
  *v143 = xmmword_100274290;
  *(v143 + 16) = 4;
  swift_storeEnumTagMultiPayload();
  v144 = v137 + 5 * v134;
  *v144 = v304;
  *(v144 + 16) = -127;
  swift_storeEnumTagMultiPayload();
  v145 = v137 + 6 * v134;
  *v145 = v304;
  *(v145 + 16) = -126;
  swift_storeEnumTagMultiPayload();
  v146 = v137 + 7 * v134;
  *v146 = v304;
  *(v146 + 16) = -125;
  swift_storeEnumTagMultiPayload();
  v147 = v137 + 8 * v134;
  v52 = v306;
  v148 = swift_allocError();
  *v149 = 0;
  *(v149 + 8) = 0xE000000000000000;
  *(v149 + 16) = 11;
  v60 = v308;
  *v147 = v148;
  *(v147 + 8) = 0;
  *(v147 + 16) = 0x80;
  swift_storeEnumTagMultiPayload();
  v48 = v307;
  v150 = v137 + 9 * v134;
  *v150 = v303;
  *(v150 + 16) = -124;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v147) = sub_1000D0DB0(a1, v136);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v147)
  {
    goto LABEL_193;
  }

  v151 = v309[129];
  v152 = sub_1000031CC();

  if (v152)
  {
    *v52 = 1;
    v52[8] = 1;
    swift_storeEnumTagMultiPayload();
    v153 = sub_1002454A4(a1, v52);
    sub_10018C9D0(v52, type metadata accessor for ExperienceEvent);
    if (v153)
    {
      goto LABEL_193;
    }
  }

  v154 = v309[127];
  v155 = sub_1000031CC();

  if (v155)
  {
    *v52 = 1;
    v52[8] = 0;
    swift_storeEnumTagMultiPayload();
    v156 = sub_1002454A4(a1, v52);
    sub_10018C9D0(v52, type metadata accessor for ExperienceEvent);
    if (v156)
    {
      goto LABEL_193;
    }
  }

  v157 = v309[128];
  v158 = sub_1000031CC();

  if (v158)
  {
    *v52 = 0;
    v52[8] = 0;
    swift_storeEnumTagMultiPayload();
    v159 = sub_1002454A4(a1, v52);
    sub_10018C9D0(v52, type metadata accessor for ExperienceEvent);
    if (v159)
    {
      goto LABEL_193;
    }
  }

LABEL_133:
  v181 = *(v48 + v60);
  v182 = *(v181 + 24);

  CurrentValueSubject.value.getter();
  v183 = LOWORD(v321[0]);
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    v184 = *(v181 + 16);
    CurrentValueSubject.value.getter();

    v183 = LOWORD(v324[0]);
  }

  if ((v183 & 0xFFFFC001) == 0x4000)
  {
    sub_100035D04(&qword_10033F058, &unk_1002789B0);
    v185 = *(v305 + 72);
    v186 = (*(v305 + 80) + 32) & ~*(v305 + 80);
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_1002725A0;
    v188 = (v187 + v186);
    *v188 = 0;
    swift_storeEnumTagMultiPayload();
    v188[v185] = 1;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v185) = sub_1000D0DB0(a1, v187);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v185)
    {
      sub_10018B0B0(a1);
      return;
    }
  }

  v189 = *(v48 + v60);
  v190 = *(v189 + 24);

  CurrentValueSubject.value.getter();
  v191 = LOWORD(v321[0]);
  if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    v192 = *(v189 + 16);
    CurrentValueSubject.value.getter();

    v191 = LOWORD(v324[0]);
  }

  if ((v191 >> 13) - 2 < 2 || v191 >> 13 == 4 && v191 == 32769)
  {
    v193 = sub_100035D04(&qword_10033F058, &unk_1002789B0);
    v194 = *(v305 + 72);
    v195 = *(v305 + 80);
    v196 = (v195 + 32) & ~v195;
    v296 = 2 * v194;
    v302 = v195;
    *&v303 = v193;
    v197 = swift_allocObject();
    *(v197 + 16) = xmmword_1002725A0;
    v198 = a1;
    v199 = v197 + v196;
    *v199 = 1;
    *(v199 + 40) = 0u;
    *(v199 + 24) = 0u;
    *(v199 + 8) = 0u;
    *(v199 + 56) = 0x80;
    swift_storeEnumTagMultiPayload();
    v200 = v197 + v196 + v194;
    v295 = sub_10001618C();
    v201 = swift_allocError();
    *v202 = 0;
    *(v202 + 8) = 0xE000000000000000;
    *(v202 + 16) = 11;
    sub_10014FEEC(v201, v318);
    v203 = v319;
    v204 = v318[1];
    *v200 = v318[0];
    *(v200 + 16) = v204;
    *(v200 + 32) = v203;
    *(v200 + 40) = v320;
    *(v200 + 56) = 32;
    swift_storeEnumTagMultiPayload();
    *&v304 = v198;
    LOBYTE(v200) = sub_1000D0DB0(v198, v197);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v200)
    {
      v205 = v290;
      v206 = v291;
      v207 = v292;
      (*(v291 + 16))(v290, *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID, v292);
      sub_10001B7F4();
      v208 = v299;
      OSSignpostID.init(_:)();
      (*(v206 + 8))(v205, v207);
      static os_signpost_type_t.end.getter();
      if (qword_100338F20 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:_:_:)();
      (*(v297 + 8))(v208, v298);
    }

    v209 = *(v48 + v308);
    v210 = *(v209 + 24);

    CurrentValueSubject.value.getter();
    v211 = v321[0];
    if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
    {
    }

    else
    {
      v212 = *(v209 + 16);
      CurrentValueSubject.value.getter();

      v211 = v324[0];
    }

    v213 = v296;
    v299 = (4 * v194);
    v214 = v304;
    if ((v211 & 0xE000) != 0x4000)
    {
      goto LABEL_156;
    }

    v215 = swift_allocObject();
    *(v215 + 16) = xmmword_1002727F0;
    v216 = v215 + v196;
    *v216 = 0u;
    *(v216 + 16) = 0u;
    *(v216 + 32) = 0u;
    *(v216 + 48) = 0;
    *(v216 + 56) = 0x80;
    swift_storeEnumTagMultiPayload();
    v217 = v215 + v196 + v194;
    *v217 = 3;
    *(v217 + 8) = 0u;
    *(v217 + 24) = 0u;
    *(v217 + 40) = 0u;
    *(v217 + 56) = 66;
    swift_storeEnumTagMultiPayload();
    *(v216 + v213) = 2;
    swift_storeEnumTagMultiPayload();
    v218 = sub_1000D0DB0(v214, v215);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v218)
    {
      v219 = v300;
      *v300 = xmmword_100271890;
      *(v219 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v219, v214);
      sub_10018C9D0(v219, type metadata accessor for ExperienceEffect);
      *v219 = 0;
      *(v219 + 8) = 0;
      *(v219 + 16) = -125;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v219, v214);
      sub_10018C9D0(v219, type metadata accessor for ExperienceEffect);
    }

    else
    {
LABEL_156:
      v220 = *(v48 + v308);
      v221 = *(v220 + 24);

      CurrentValueSubject.value.getter();
      v222 = v321[0];
      if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
      {
      }

      else
      {
        v223 = *(v220 + 16);
        CurrentValueSubject.value.getter();

        v222 = v324[0];
      }

      if ((v222 & 0xE000) == 0x6000)
      {
        v226 = v299;
        v227 = swift_allocObject();
        *(v227 + 16) = xmmword_100274B30;
        v228 = v227 + v196;
        v298 = xmmword_100278910;
        *v228 = xmmword_100278910;
        *(v228 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v229 = v227 + v196 + v194;
        *v229 = v298;
        *(v229 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        v230 = v227 + v196 + v213;
        *v230 = v298;
        *(v230 + 16) = -126;
        swift_storeEnumTagMultiPayload();
        v231 = v227 + v196 + 3 * v194;
        *v231 = v298;
        *(v231 + 16) = -125;
        swift_storeEnumTagMultiPayload();
        v226[v228] = 2;
        swift_storeEnumTagMultiPayload();
        v232 = sub_1000D0DB0(v304, v227);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v232)
        {
          v233 = v304;
          v234 = 0;
          goto LABEL_199;
        }
      }

      v235 = *(v48 + v308);
      v236 = *(v235 + 24);

      CurrentValueSubject.value.getter();
      v237 = LOWORD(v321[0]);
      if ((~LOWORD(v321[0]) & 0xFEFE) != 0)
      {
      }

      else
      {
        v238 = *(v235 + 16);
        CurrentValueSubject.value.getter();

        v237 = LOWORD(v324[0]);
      }

      v214 = v304;
      if (v237 == 32769)
      {
        v239 = swift_allocObject();
        *(v239 + 16) = xmmword_1002727F0;
        v240 = v239 + v196;
        v298 = xmmword_100278910;
        *v240 = xmmword_100278910;
        *(v240 + 16) = -126;
        swift_storeEnumTagMultiPayload();
        v241 = v239 + v196 + v194;
        *v241 = v298;
        *(v241 + 16) = -125;
        swift_storeEnumTagMultiPayload();
        *(v240 + v213) = 9;
        swift_storeEnumTagMultiPayload();
        v242 = sub_1000D0DB0(v214, v239);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v242)
        {
          v233 = v214;
          v234 = 0;
          goto LABEL_199;
        }
      }
    }

    v243 = v306;
    *v306 = 1;
    *(v243 + 8) = 0u;
    *(v243 + 24) = 0u;
    *(v243 + 40) = 0u;
    *(v243 + 56) = 66;
    swift_storeEnumTagMultiPayload();
    v244 = sub_1002454A4(v214, v243);
    sub_10018C9D0(v243, type metadata accessor for ExperienceEvent);
    if (v244)
    {
      v245 = v300;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v245, v214);
      sub_10018C9D0(v245, type metadata accessor for ExperienceEffect);
    }

    *&v298 = 3 * v194;
    v246 = swift_allocObject();
    *(v246 + 16) = xmmword_1002727F0;
    v247 = v246 + v196;
    *v247 = 5;
    *(v247 + 40) = 0u;
    *(v247 + 24) = 0u;
    *(v247 + 8) = 0u;
    *(v247 + 56) = 66;
    swift_storeEnumTagMultiPayload();
    v248 = v246 + v196 + v194;
    *v248 = 2;
    *(v248 + 8) = 0u;
    *(v248 + 24) = 0u;
    *(v248 + 40) = 0u;
    *(v248 + 56) = 2;
    swift_storeEnumTagMultiPayload();
    *(v247 + v213) = 1;
    swift_storeEnumTagMultiPayload();
    v249 = sub_1000D0DB0(v214, v246);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v249)
    {
      v250 = v300;
      *v300 = 0;
      *(v250 + 8) = 0;
      *(v250 + 16) = 0;
      *(v250 + 24) = 4;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v250, v214);
      sub_10018C9D0(v250, type metadata accessor for ExperienceEffect);
    }

    v297 = 8 * v194;
    v251 = swift_allocObject();
    *(v251 + 16) = xmmword_100278900;
    v252 = v251 + v196;
    v253 = swift_allocError();
    *v254 = 0;
    *(v254 + 8) = 0xE000000000000000;
    *(v254 + 16) = 11;
    sub_10014FEEC(v253, v321);
    v255 = v322;
    v256 = v321[1];
    *v252 = v321[0];
    *(v252 + 16) = v256;
    *(v252 + 32) = v255;
    *(v252 + 40) = v323;
    *(v252 + 56) = 64;
    swift_storeEnumTagMultiPayload();
    v257 = v252 + v194;
    *v257 = xmmword_100278910;
    *(v257 + 56) = 0;
    swift_storeEnumTagMultiPayload();
    v258 = v252 + v296;
    v259 = swift_allocError();
    *v260 = 0;
    *(v260 + 8) = 0xE000000000000000;
    *(v260 + 16) = 11;
    sub_10014FEEC(v259, v324);
    v261 = v325;
    v262 = v324[1];
    *v258 = v324[0];
    *(v258 + 16) = v262;
    *(v258 + 32) = v261;
    *(v258 + 40) = v326;
    *(v258 + 56) = 32;
    swift_storeEnumTagMultiPayload();
    v263 = v252 + v298;
    *v263 = 3;
    *(v263 + 8) = 0u;
    *(v263 + 24) = 0u;
    *(v263 + 40) = 0u;
    *(v263 + 56) = 2;
    swift_storeEnumTagMultiPayload();
    v264 = v299;
    v265 = &v299[v252];
    *v265 = 0;
    *(v265 + 1) = 0xE000000000000000;
    v266 = v312;
    *(v265 + 1) = v311;
    *(v265 + 2) = v266;
    *(v265 + 6) = v313;
    v265[56] = 0;
    swift_storeEnumTagMultiPayload();
    *&v264[v194 + v252] = 2;
    type metadata accessor for TransferEvent();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *(v252 + 6 * v194) = 3;
    swift_storeEnumTagMultiPayload();
    a1 = v304;
    *(v252 + v297 - v194) = 0;
    swift_storeEnumTagMultiPayload();
    v267 = sub_1000D0DB0(a1, v251);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v267)
    {
      v233 = a1;
      v234 = 0;
      goto LABEL_199;
    }

    v52 = v306;
    v48 = v307;
    v60 = v308;
  }

  v268 = *(v48 + v60);
  v269 = *(v268 + 24);

  CurrentValueSubject.value.getter();
  v270 = v314;
  if ((~v314 & 0xFEFE) != 0)
  {
  }

  else
  {
    v271 = *(v268 + 16);
    CurrentValueSubject.value.getter();

    v270 = v311;
  }

  if (v270 & 0xE000) == 0x4000 && (v270 & 0x100) != 0 && (v270)
  {
    v272 = v309[49];
    v273 = sub_1000031CC();

    if (v273)
    {
      *v52 = 0;
      v52[56] = 96;
      swift_storeEnumTagMultiPayload();
      v274 = sub_1002454A4(a1, v52);
      sub_10018C9D0(v52, type metadata accessor for ExperienceEvent);
      if (v274)
      {
        goto LABEL_196;
      }
    }

    v275 = v309[60];
    v276 = sub_10005F4F0();

    if (v276)
    {
    }

    else
    {
      v277 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v277 & 1) == 0)
      {
        goto LABEL_197;
      }
    }

    *v52 = 1;
    v52[56] = 96;
    swift_storeEnumTagMultiPayload();
    v278 = sub_1002454A4(a1, v52);
    sub_10018C9D0(v52, type metadata accessor for ExperienceEvent);
    if (v278)
    {
LABEL_196:
      v279 = *(v48 + v60);

      sub_1001C049C(16385);

      v280 = v300;
      *v300 = 3;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v280, a1);
      sub_10018C9D0(v280, type metadata accessor for ExperienceEffect);
      *v280 = xmmword_100271890;
      *(v280 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v280, a1);
      sub_10018C9D0(v280, type metadata accessor for ExperienceEffect);
      *v280 = 0;
      *(v280 + 8) = 0;
      *(v280 + 16) = -125;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v280, a1);
      sub_10018C9D0(v280, type metadata accessor for ExperienceEffect);
    }
  }

LABEL_197:
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v281 = *(v305 + 72);
  v282 = (*(v305 + 80) + 32) & ~*(v305 + 80);
  v283 = swift_allocObject();
  *(v283 + 16) = xmmword_100278930;
  v284 = (v283 + v282);
  *v284 = 6;
  swift_storeEnumTagMultiPayload();
  v285 = &v284[v281];
  *v285 = 0;
  v285[8] = 2;
  swift_storeEnumTagMultiPayload();
  v286 = &v284[2 * v281];
  *v286 = 0;
  v286[8] = 4;
  swift_storeEnumTagMultiPayload();
  v287 = &v284[3 * v281];
  *v287 = 0;
  v287[8] = 6;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v281) = sub_1000D0DB0(a1, v283);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v281 & 1) == 0)
  {
    return;
  }

  v233 = a1;
  v234 = 1;
LABEL_199:
  sub_10018B868(v233, v234);
}

void sub_100187320(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100017494(0x5F28746E69486F74, 0xEA0000000000293ALL, &v21);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000903C(v11);
  }

  v12 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
  v13 = *(v12 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_device);
  sub_10006F838();
  v14 = sub_1001DF2A4();

  v15 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);

  if (v14)
  {
    v16 = 0x2000;
  }

  else
  {
    v16 = 8448;
  }

  sub_1001C049C(v16);

  v17 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintBannerType;
  if (*(v12 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintBannerType))
  {
    if (*(v12 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintBannerType) == 1)
    {
      *v7 = 0;
      *(v7 + 1) = 0;
      v7[16] = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 1) = 0;
      v7[16] = -124;
    }

    swift_storeEnumTagMultiPayload();
    sub_10018C018(v7, a1);
    sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  }

  if (*(v12 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintNoticeEnabled) == 1)
  {
    type metadata accessor for NoticeEffect();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v7, a1);
    sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  }

  v18 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintShockwaveEnabled;
  if (*(v12 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintShockwaveEnabled) == 1)
  {
    *v7 = 0;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v7, a1);
    sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  }

  if (!*(v12 + v17))
  {

LABEL_19:
    if ((*(v12 + v18) & 1) == 0)
    {
      sub_100187688(a1);
    }

    return;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_19;
  }
}

void sub_100187688(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for ExperienceEffect(0);
  v4 = *(*(v42 - 8) + 64);
  v5 = __chkstk_darwin(v42);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = type metadata accessor for ExperienceEvent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018C81C(a1, v13, type metadata accessor for ExperienceEvent);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = a1;
    v17 = v16;
    v40 = swift_slowAlloc();
    v44 = v40;
    *v17 = 136315394;
    v18 = sub_100017494(0xD000000000000017, 0x80000001002A3580, &v44);
    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    v19 = sub_100243F84(v18);
    v21 = v20;
    sub_10018C9D0(v13, type metadata accessor for ExperienceEvent);
    v22 = sub_100017494(v19, v21, &v44);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: event=%s", v17, 0x16u);
    swift_arrayDestroy();

    a1 = v41;
  }

  else
  {

    sub_10018C9D0(v13, type metadata accessor for ExperienceEvent);
  }

  v23 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state;
  v24 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);
  v25 = *(v24 + 24);

  CurrentValueSubject.value.getter();
  v26 = v45;
  if ((~v45 & 0xFEFE) != 0)
  {
  }

  else
  {
    v27 = *(v24 + 16);
    CurrentValueSubject.value.getter();

    v26 = v44;
  }

  if ((v26 & 0xE000) == 0x2000)
  {
    v28 = *(v2 + v23);

    sub_1001C049C(v26 & 0x100 | 0x2001);

    if ((v26 & 0x100) != 0)
    {
      *v9 = 0;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v9, a1);
      sub_10018C9D0(v9, type metadata accessor for ExperienceEffect);
    }

    if ((*(*(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintShockwaveEnabled) & 1) == 0)
    {
      *v9 = 0;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v9, a1);
      sub_10018C9D0(v9, type metadata accessor for ExperienceEffect);
      *v9 = 4;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v9, a1);
      sub_10018C9D0(v9, type metadata accessor for ExperienceEffect);
    }

    *v7 = (v26 & 0x100) == 0;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v7, a1);
    sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  }

  else
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315138;
      v33 = *(v2 + v23);
      v34 = *(v33 + 24);

      CurrentValueSubject.value.getter();
      v35 = v43;
      if ((~v43 & 0xFEFE) != 0)
      {
      }

      else
      {
        v36 = *(v33 + 16);
        CurrentValueSubject.value.getter();

        v35 = v45;
      }

      v37 = sub_100243CA8(v35);
      v39 = sub_100017494(v37, v38, &v44);

      *(v31 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "### Invalid state: %s", v31, 0xCu);
      sub_10000903C(v32);
    }
  }
}

uint64_t sub_100187BF4(void (*a1)(void, void, void))
{
  v2 = v1;
  v119 = a1;
  v3 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v123 = &v110[-v5];
  v116 = type metadata accessor for ContinuousClock.Instant();
  v122 = *(v116 - 8);
  v6 = *(v122 + 64);
  v7 = __chkstk_darwin(v116);
  v9 = &v110[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v120 = &v110[-v11];
  v12 = __chkstk_darwin(v10);
  v114 = &v110[-v13];
  v14 = __chkstk_darwin(v12);
  v126 = &v110[-v15];
  v16 = __chkstk_darwin(v14);
  v127 = &v110[-v17];
  v115 = v18;
  __chkstk_darwin(v16);
  v125 = &v110[-v19];
  v20 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v118 = &v110[-v22];
  v117 = type metadata accessor for ExperienceEffect(0);
  v23 = *(*(v117 - 1) + 64);
  __chkstk_darwin(v117);
  v25 = &v110[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_100035D04(&qword_100349620, &qword_1002838B8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v110[-v28];
  v30 = type metadata accessor for OSSignpostID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v110[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_log;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v121 = v9;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v128[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_100017494(0x286C6C6577446F74, 0xEB00000000293A5FLL, v128);
    _os_log_impl(&_mh_execute_header, v35, v36, "%s", v38, 0xCu);
    sub_10000903C(v39);
  }

  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.begin.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v31 + 8))(v34, v30);
  v40 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
  *(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellExpired) = 0;
  *(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellTimedOut) = 0;
  v41 = sub_100035D04(&unk_100349338, &qword_1002837E0);
  v42 = *(*(v41 - 8) + 56);
  v42(v29, 1, 1, v41);
  v43 = v2;
  v44 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus;
  swift_beginAccess();
  sub_1000369A4(v29, v40 + v44, &qword_100349620, &qword_1002838B8);
  swift_endAccess();
  v45 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_isShareableContentLocalResolved;
  *(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_isShareableContentLocalResolved) = 0;
  v124 = v43;
  v46 = *(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);

  sub_1001C049C(0x8000);

  *v29 = xmmword_100270E80;
  v47 = type metadata accessor for HandoffTargetStatus();
  *(v29 + 3) = 0;
  *(v29 + 4) = 0;
  *(v29 + 2) = 0;
  v29[40] = 0;
  v48 = *(v47 + 20);
  v49 = type metadata accessor for ShareableContent(0);
  (*(*(v49 - 8) + 56))(&v29[v48], 1, 1, v49);
  *&v29[*(v47 + 24)] = 0;
  swift_storeEnumTagMultiPayload();
  v42(v29, 0, 1, v41);
  swift_beginAccess();
  sub_1000369A4(v29, v40 + v44, &qword_100349620, &qword_1002838B8);
  swift_endAccess();
  *(v40 + v45) = 1;
  v50 = *(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellBannerType);
  if (*(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellBannerType))
  {
    v52 = v125;
    v51 = v126;
    v53 = v127;
    v54 = v119;
    *v25 = 0;
    *(v25 + 1) = 0;
    if (v50 == 1)
    {
      v25[16] = 0;
      swift_storeEnumTagMultiPayload();
      v55 = v124;
      sub_10018C018(v25, v54);
      sub_10018C9D0(v25, type metadata accessor for ExperienceEffect);
      *v25 = 0;
      *(v25 + 1) = 0;
      v25[16] = -125;
    }

    else
    {
      v25[16] = -124;
      swift_storeEnumTagMultiPayload();
      v55 = v124;
      sub_10018C018(v25, v54);
      sub_10018C9D0(v25, type metadata accessor for ExperienceEffect);
      *v25 = *(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellAnimationDuration);
      *(v25 + 1) = 0;
      v25[16] = 0x80;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v25, v54);
      sub_10018C9D0(v25, type metadata accessor for ExperienceEffect);
      *v25 = xmmword_100271890;
      v25[16] = 0;
    }
  }

  else
  {
    *v25 = xmmword_100271890;
    v25[16] = 0;
    swift_storeEnumTagMultiPayload();
    v54 = v119;
    v55 = v124;
    sub_10018C018(v25, v119);
    sub_10018C9D0(v25, type metadata accessor for ExperienceEffect);
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = -125;
    v52 = v125;
    v51 = v126;
    v53 = v127;
  }

  swift_storeEnumTagMultiPayload();
  sub_10018C018(v25, v54);
  sub_10018C9D0(v25, type metadata accessor for ExperienceEffect);
  if (*(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellNoticeEnabled) == 1)
  {
    type metadata accessor for NoticeEffect();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v25, v54);
    sub_10018C9D0(v25, type metadata accessor for ExperienceEffect);
  }

  if (*(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellShockwaveEnabled) != 1)
  {
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v58 = *(qword_10038B0B8 + 192);
    v59 = sub_1000031CC();

    if ((v59 & 1) == 0)
    {
      *v25 = 0;
      goto LABEL_22;
    }

LABEL_20:
    *v25 = 3;
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v25, v54);
    sub_10018C9D0(v25, type metadata accessor for ExperienceEffect);
    goto LABEL_23;
  }

  *v25 = 0;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v25, v54);
  sub_10018C9D0(v25, type metadata accessor for ExperienceEffect);
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v56 = *(qword_10038B0B8 + 208);
  v57 = sub_1000031CC();

  if (v57)
  {
    goto LABEL_20;
  }

LABEL_23:
  v60 = v118;
  static Date.now.getter();
  v61 = type metadata accessor for Date();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  v62 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellStartTime;
  swift_beginAccess();
  sub_1000369A4(v60, v55 + v62, &qword_10033C280, &qword_100272A80);
  swift_endAccess();
  v63 = *(v55 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID);
  v64 = __OFADD__(v63, 1);
  v65 = v63 + 1;
  if (v64)
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_28;
  }

  v112 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID;
  *(v55 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID) = v65;
  static ContinuousClock.Instant.now.getter();
  v66 = *(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellMinDuration);
  static Duration.seconds(_:)();
  ContinuousClock.Instant.advanced(by:)();
  v67 = v122;
  v68 = v51;
  v69 = (v122 + 8);
  v70 = *(v122 + 8);
  v71 = v116;
  (v70)(v53, v116);
  static ContinuousClock.Instant.now.getter();
  v72 = *(v40 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellMaxDuration);
  static Duration.seconds(_:)();
  ContinuousClock.Instant.advanced(by:)();
  (v70)(v53, v71);
  v73 = v68;
  v74 = *(v67 + 16);
  v75 = v114;
  v76 = v52;
  v74(v114, v52, v71);
  v77 = v120;
  v119 = v74;
  v74(v120, v73, v71);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v128[0] = v113;
    *v80 = 136315394;
    v81 = v119;
    v119(v127, v75, v71);
    v82 = String.init<A>(describing:)();
    v111 = v79;
    v83 = v82;
    v85 = v84;
    (v70)(v75, v71);
    v86 = sub_100017494(v83, v85, v128);

    *(v80 + 4) = v86;
    *(v80 + 12) = 2080;
    v87 = v120;
    v81(v127, v120, v71);
    v88 = String.init<A>(describing:)();
    v90 = v89;
    (v70)(v87, v71);
    v91 = sub_100017494(v88, v90, v128);

    *(v80 + 14) = v91;
    v92 = v127;
    _os_log_impl(&_mh_execute_header, v78, v111, "Scheduling dwellExpired:%s dwellTimeout:%s", v80, 0x16u);
    swift_arrayDestroy();
    v93 = v125;

    v94 = v123;
  }

  else
  {

    (v70)(v77, v71);
    (v70)(v75, v71);
    v94 = v123;
    v93 = v76;
    v92 = v127;
  }

  v117 = v70;
  v118 = v69;
  v95 = type metadata accessor for TaskPriority();
  (*(*(v95 - 8) + 56))(v94, 1, 1, v95);
  v60 = swift_allocObject();
  v96 = v124;
  swift_weakInit();
  v124 = *(v96 + v112);
  v97 = v119;
  v119(v92, v93, v71);
  v97(v121, v126, v71);
  v98 = qword_1003391F0;

  v53 = v71;
  if (v98 != -1)
  {
    goto LABEL_30;
  }

LABEL_28:
  v99 = qword_10038B5C0;
  v100 = sub_10018C5EC(&qword_1003492A8, type metadata accessor for WorkActor);
  v101 = v122;
  v102 = *(v122 + 80);
  v103 = (v102 + 32) & ~v102;
  v104 = (v115 + v102 + v103) & ~v102;
  v105 = (v115 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  *(v106 + 16) = v99;
  *(v106 + 24) = v100;
  v107 = *(v101 + 32);
  v107(v106 + v103, v127, v53);
  v107(v106 + v104, v121, v53);
  *(v106 + v105) = v60;
  *(v106 + ((v105 + 15) & 0xFFFFFFFFFFFFFFF8)) = v124;

  sub_1000DBA98(0, 0, v123, &unk_1002838C8, v106);

  v108 = v117;
  (v117)(v126, v53);
  return v108(v125, v53);
}

uint64_t sub_100188B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v7[14] = v10;
  v11 = *(v10 - 8);
  v7[15] = v11;
  v12 = *(v11 + 64) + 15;
  v7[16] = swift_task_alloc();
  v13 = type metadata accessor for ExperienceEvent(0);
  v7[17] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v15 = type metadata accessor for ContinuousClock();
  v7[19] = v15;
  v16 = *(v15 - 8);
  v7[20] = v16;
  v17 = *(v16 + 64) + 15;
  v7[21] = swift_task_alloc();
  v18 = sub_100035D04(&qword_100349628, &qword_1002838D0);
  v7[22] = v18;
  v19 = *(v18 - 8);
  v7[23] = v19;
  v20 = *(v19 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_10018C5EC(&qword_1003492A8, type metadata accessor for WorkActor);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[27] = v22;
  v7[28] = v21;

  return (_swift_task_switch)(sub_100188E08, v22, v21);
}

uint64_t sub_100188E08()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 72);
  v30 = *(v0 + 80);
  v4 = *(v0 + 64);
  sub_100035D04(&qword_100349630, qword_1002838D8);
  v5 = *(v1 + 72);
  *(v0 + 232) = v5;
  v6 = *(v1 + 80);
  *(v0 + 288) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 240) = v8;
  *(v8 + 16) = xmmword_1002725A0;
  v9 = v8 + v7;
  v10 = *(v2 + 48);
  v11 = type metadata accessor for ContinuousClock.Instant();
  *(v0 + 248) = v11;
  v12 = *(v11 - 8);
  *(v0 + 256) = v12;
  v13 = *(v12 + 16);
  v13(v9, v4, v11);
  *(v9 + v10) = 7;
  v14 = v9 + v5;
  v15 = *(v2 + 48);
  v13(v14, v3, v11);
  *(v14 + v15) = 8;
  swift_beginAccess();
  *(v0 + 264) = 0;
  v16 = *(v0 + 248);
  v17 = *(v0 + 256);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 168);
  v21 = *(v0 + 176);
  sub_100009848(*(v0 + 240) + ((*(v0 + 288) + 32) & ~*(v0 + 288)), v18, &qword_100349628, &qword_1002838D0);
  v22 = *(v21 + 48);
  LOBYTE(v5) = *(v18 + v22);
  (*(v17 + 32))(v19, v18, v16);
  *(v19 + v22) = v5;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  static Clock<>.continuous.getter();
  v23 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v24 = swift_task_alloc();
  *(v0 + 272) = v24;
  v25 = sub_10018C5EC(&qword_100349618, &type metadata accessor for ContinuousClock);
  *v24 = v0;
  v24[1] = sub_100189088;
  v26 = *(v0 + 200);
  v27 = *(v0 + 168);
  v28 = *(v0 + 152);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v26, v0 + 40, v27, v28, v25);
}

uint64_t sub_100189088()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v11 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 240);
    v5 = *(v2 + 288);
    v6 = *(v2 + 176);
    (*(*(v2 + 160) + 8))(*(v2 + 168), *(v2 + 152));
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v7 = *(v2 + 216);
    v8 = *(v2 + 224);
    v9 = sub_1001896E8;
  }

  else
  {
    (*(*(v2 + 160) + 8))(*(v2 + 168), *(v2 + 152));
    v7 = *(v2 + 216);
    v8 = *(v2 + 224);
    v9 = sub_10018920C;
  }

  return (_swift_task_switch)(v9, v7, v8);
}

uint64_t sub_10018920C()
{
  v1 = *(v0 + 80);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1000097E8(*(v0 + 200), &qword_100349628, &qword_1002838D0);
LABEL_12:
    v25 = *(v0 + 240);
    v26 = *(v0 + 200);
    v27 = *(v0 + 208);
    v28 = *(v0 + 192);
    v29 = *(v0 + 168);
    v30 = *(v0 + 144);
    v31 = *(v0 + 128);
    v32 = *(v0 + 104);

    v33 = *(v0 + 8);

    return v33();
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);
  v5 = *(v4 + 24);

  CurrentValueSubject.value.getter();
  v6 = *(v0 + 59);
  if ((~v6 & 0xFEFE) != 0)
  {

    if (v6 != 0x8000)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *(v4 + 16);
    CurrentValueSubject.value.getter();

    if (*(v0 + 57) != 0x8000)
    {
LABEL_4:
      v8 = *(v0 + 200);

      sub_1000097E8(v8, &qword_100349628, &qword_1002838D0);
      goto LABEL_11;
    }
  }

  if (*(v3 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID) == *(v0 + 88) && (v9 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model, v10 = *(v3 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model), (v11 = swift_weakLoadStrong()) != 0))
  {
    v56 = *(v0 + 256);
    v57 = *(v0 + 248);
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    v14 = *(v0 + 144);
    v49 = *(v0 + 176);
    v50 = *(v0 + 136);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 104);
    v53 = *(v0 + 96);
    v54 = v12;
    v51 = *(v0 + 112);
    v52 = *(v11 + 16);

    v55 = v13;
    sub_100009848(v12, v13, &qword_100349628, &qword_1002838D0);
    *v14 = *(v13 + *(v49 + 48));
    swift_storeEnumTagMultiPayload();
    (*(v16 + 16))(v15, *(v3 + v9) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID, v51);
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v16 + 8))(v15, v51);
    v21 = *(v52 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v22 = (v17 + *(v53 + 48));
    v23 = (v17 + *(v53 + 64));
    sub_10018C81C(v14, v17, type metadata accessor for ExperienceEvent);
    *v22 = v18;
    v22[1] = v20;
    *v23 = 0;
    v23[1] = 0xE000000000000000;
    PassthroughSubject.send(_:)();
    sub_1000097E8(v17, &unk_10034C700, &qword_100273D30);
    sub_10018C9D0(v14, type metadata accessor for ExperienceEvent);
    sub_1000097E8(v54, &qword_100349628, &qword_1002838D0);

    (*(v56 + 8))(v55, v57);
  }

  else
  {
    sub_1000097E8(*(v0 + 200), &qword_100349628, &qword_1002838D0);
  }

LABEL_11:
  v24 = *(v0 + 264) + 1;
  if (*(v0 + 264) == 1)
  {
    goto LABEL_12;
  }

  *(v0 + 264) = v24;
  v35 = *(v0 + 248);
  v36 = *(v0 + 256);
  v38 = *(v0 + 200);
  v37 = *(v0 + 208);
  v39 = *(v0 + 168);
  v40 = *(v0 + 176);
  sub_100009848(*(v0 + 240) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 232) * v24, v37, &qword_100349628, &qword_1002838D0);
  v41 = *(v40 + 48);
  v42 = *(v37 + v41);
  (*(v36 + 32))(v38, v37, v35);
  *(v38 + v41) = v42;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  static Clock<>.continuous.getter();
  v43 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v44 = swift_task_alloc();
  *(v0 + 272) = v44;
  v45 = sub_10018C5EC(&qword_100349618, &type metadata accessor for ContinuousClock);
  *v44 = v0;
  v44[1] = sub_100189088;
  v46 = *(v0 + 200);
  v47 = *(v0 + 168);
  v48 = *(v0 + 152);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v46, v0 + 40, v47, v48, v45);
}

uint64_t sub_1001896E8()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  sub_1000097E8(v0[25], &qword_100349628, &qword_1002838D0);

  v7 = v0[1];
  v8 = v0[35];

  return v7();
}

uint64_t sub_10018A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v6[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v11 = *(v10 + 64) + 15;
  v6[15] = swift_task_alloc();
  v12 = type metadata accessor for ExperienceEvent(0);
  v6[16] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock();
  v6[18] = v14;
  v15 = *(v14 - 8);
  v6[19] = v15;
  v16 = *(v15 + 64) + 15;
  v6[20] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_10018C5EC(&qword_1003492A8, type metadata accessor for WorkActor);
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[21] = v18;
  v6[22] = v17;

  return (_swift_task_switch)(sub_10018AB18, v18, v17);
}

uint64_t sub_10018AB18()
{
  v1 = *(v0 + 160);
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  static Clock<>.continuous.getter();
  v2 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_10018C5EC(&qword_100349618, &type metadata accessor for ContinuousClock);
  *v3 = v0;
  v3[1] = sub_10018AC10;
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 64);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v7, v0 + 40, v5, v6, v4);
}

uint64_t sub_10018AC10()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  v11 = *v1;
  *(*v1 + 192) = v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 168);
  v8 = *(v2 + 176);
  if (v0)
  {
    v9 = sub_10018B020;
  }

  else
  {
    v9 = sub_10018AD88;
  }

  return (_swift_task_switch)(v9, v7, v8);
}

uint64_t sub_10018AD88()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);
    v5 = *(v4 + 24);

    CurrentValueSubject.value.getter();
    v6 = *(v0 + 59);
    if ((~v6 & 0xFEFE) != 0)
    {
    }

    else
    {
      v7 = *(v4 + 16);
      CurrentValueSubject.value.getter();

      v6 = *(v0 + 57);
    }

    if (v6 == 32769 && *(v3 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID) == *(v0 + 80))
    {
      v8 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model;
      v9 = *(v3 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
      v10 = swift_weakLoadStrong();
      if (v10)
      {
        v11 = *(v0 + 128);
        v12 = *(v0 + 136);
        v13 = *(v0 + 112);
        v14 = *(v0 + 120);
        v15 = *(v0 + 96);
        v16 = *(v0 + 104);
        v29 = *(v10 + 16);
        v30 = *(v0 + 88);

        *v12 = 9;
        swift_storeEnumTagMultiPayload();
        (*(v13 + 16))(v14, *(v3 + v8) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID, v16);
        v17 = UUID.uuidString.getter();
        v19 = v18;
        (*(v13 + 8))(v14, v16);
        v20 = *(v29 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
        v21 = (v15 + *(v30 + 48));
        v22 = (v15 + *(v30 + 64));
        sub_10018C81C(v12, v15, type metadata accessor for ExperienceEvent);
        *v21 = v17;
        v21[1] = v19;
        *v22 = 0;
        v22[1] = 0xE000000000000000;
        PassthroughSubject.send(_:)();
        sub_1000097E8(v15, &unk_10034C700, &qword_100273D30);
        sub_10018C9D0(v12, type metadata accessor for ExperienceEvent);
      }
    }
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  v25 = *(v0 + 120);
  v26 = *(v0 + 96);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10018B020()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

void sub_10018B0B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ExperienceEffect(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ExperienceEvent(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OSSignpostID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.end.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  v60 = qword_10038B0C8;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v20 = *(v16 + 8);
  v62 = v16 + 8;
  v59 = v20;
  v20(v19, v15);
  v21 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_log;
  sub_10018C81C(a1, v14, type metadata accessor for ExperienceEvent);
  *&v58 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v63 = v15;
  v61 = v19;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v68 = v57;
    *v25 = 136315394;
    v26 = sub_100017494(0xD00000000000001BLL, 0x80000001002A34E0, &v68);
    *(v25 + 4) = v26;
    *(v25 + 12) = 2080;
    v27 = sub_100243F84(v26);
    v28 = v10;
    v29 = v2;
    v30 = a1;
    v32 = v31;
    sub_10018C9D0(v14, type metadata accessor for ExperienceEvent);
    v33 = sub_100017494(v27, v32, &v68);
    a1 = v30;
    v2 = v29;
    v10 = v28;

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: event=%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018C9D0(v14, type metadata accessor for ExperienceEvent);
  }

  v34 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state;
  v35 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);
  v36 = *(v35 + 24);

  CurrentValueSubject.value.getter();
  v37 = v69;
  if ((~v69 & 0xFEFE) != 0)
  {
  }

  else
  {
    v38 = *(v35 + 16);
    CurrentValueSubject.value.getter();

    v37 = v68;
  }

  if (v37 >> 13 == 3)
  {
    v44 = *(v2 + v34);

    sub_1001C049C(24577);
  }

  else if (v37 >> 13 == 2)
  {
    v39 = *(v2 + v34);

    sub_1001C049C(v37 & 0x100 | 0x4001);

    v58 = xmmword_100271890;
    *v10 = xmmword_100271890;
    v10[16] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v10, a1);
    sub_10018C9D0(v10, type metadata accessor for ExperienceEffect);
    *v10 = v58;
    v10[16] = -125;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v10, a1);
    sub_10018C9D0(v10, type metadata accessor for ExperienceEffect);
    v40 = v64;
    v41 = v65;
    v42 = v66;
    (*(v65 + 16))(v64, *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID, v66);
    sub_10001B7F4();
    v43 = v61;
    OSSignpostID.init(_:)();
    (*(v41 + 8))(v40, v42);
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v59(v43, v63);
    if ((v37 & 0x100) != 0)
    {
      *v10 = 2;
    }

    else
    {
      *v10 = 3;
    }

    swift_storeEnumTagMultiPayload();
    sub_10018C018(v10, a1);
    sub_10018C9D0(v10, type metadata accessor for ExperienceEffect);
  }

  else
  {

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v68 = v48;
      *v47 = 136315138;
      v49 = *(v2 + v34);
      v50 = *(v49 + 24);

      CurrentValueSubject.value.getter();
      v51 = v67;
      if ((~v67 & 0xFEFE) != 0)
      {
      }

      else
      {
        v52 = *(v49 + 16);
        CurrentValueSubject.value.getter();

        v51 = v69;
      }

      v53 = sub_100243CA8(v51);
      v55 = sub_100017494(v53, v54, &v68);

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "### Invalid state: %s", v47, 0xCu);
      sub_10000903C(v48);
    }
  }
}

uint64_t sub_10018B868(uint64_t a1, int a2)
{
  v3 = v2;
  v70 = type metadata accessor for ExperienceEffect(0);
  v6 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v67 = &v62[-v11];
  v12 = type metadata accessor for Date();
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  __chkstk_darwin(v12);
  v64 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = type metadata accessor for ExperienceEvent(0);
  v15 = *(*(v65 - 8) + 64);
  v16 = __chkstk_darwin(v65);
  v18 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v62[-v19];
  v69 = a1;
  sub_10018C81C(a1, &v62[-v19], type metadata accessor for ExperienceEvent);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v68 = v12;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v63 = a2;
    v25 = v24;
    v71[0] = swift_slowAlloc();
    *v25 = 136315650;
    v26 = sub_100017494(0xD00000000000001ALL, 0x80000001002A34C0, v71);
    *(v25 + 4) = v26;
    *(v25 + 12) = 2080;
    v27 = sub_100243F84(v26);
    v29 = v28;
    sub_10018C9D0(v20, type metadata accessor for ExperienceEvent);
    v30 = sub_100017494(v27, v29, v71);

    *(v25 + 14) = v30;
    *(v25 + 22) = 1024;
    v31 = v63;
    *(v25 + 24) = v63 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: event=%s, forceFinish=%{BOOL}d", v25, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018C9D0(v20, type metadata accessor for ExperienceEvent);
    v31 = a2;
  }

  v32 = v69;
  sub_10018C81C(v69, v18, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v66;
  if (EnumCaseMultiPayload == 7)
  {
    if (v18[8] == 1)
    {
      sub_100037298(8);
    }
  }

  else
  {
    sub_10018C9D0(v18, type metadata accessor for ExperienceEvent);
  }

  v35 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state;
  v36 = *(v3 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);
  v37 = *(v36 + 24);

  CurrentValueSubject.value.getter();
  v38 = v72;
  if ((~v72 & 0xFEFE) != 0)
  {
  }

  else
  {
    v39 = *(v36 + 16);
    CurrentValueSubject.value.getter();

    v38 = LOWORD(v71[0]);
  }

  v40 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellStartTime;
  swift_beginAccess();
  v41 = v3 + v40;
  v42 = v67;
  sub_100009848(v41, v67, &qword_10033C280, &qword_100272A80);
  v43 = v68;
  if ((*(v34 + 48))(v42, 1, v68) == 1)
  {
    sub_1000097E8(v42, &qword_10033C280, &qword_100272A80);
    if (v31)
    {
      goto LABEL_20;
    }

LABEL_15:
    v51 = *(v3 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
    v52 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_device;
    v53 = *(v51 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_device);
    v54 = sub_100070EF4();
    if (v54 == 4)
    {
      v55 = 0;
    }

    else
    {
      v55 = v54;
    }

    v56 = *(v51 + v52);
    sub_10006F838();
    v57 = sub_1001DF2A4();

    if (v57)
    {
      if (v55 < 2u)
      {
        goto LABEL_20;
      }
    }

    else if (!v55)
    {
      goto LABEL_20;
    }

    v58 = 0;
    goto LABEL_23;
  }

  v44 = v32;
  v45 = v3;
  v46 = v38;
  v47 = v35;
  v48 = v31;
  v49 = v64;
  (*(v34 + 32))(v64, v42, v43);
  Date.timeIntervalSinceNow.getter();
  v50 = v49;
  LOBYTE(v49) = v48;
  v35 = v47;
  v38 = v46;
  v3 = v45;
  v32 = v44;
  (*(v34 + 8))(v50, v43);
  if ((v49 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  v58 = -32512;
LABEL_23:
  v59 = *(v3 + v35);

  sub_1001C049C(v58);

  *v8 = 5;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v8, v32);
  sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
  *v8 = xmmword_100271890;
  v8[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v8, v32);
  sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
  v60 = (v38 >> 13) - 2 < 2 || v38 >> 13 == 4 && v38 == 32769;
  *v8 = v60;
  *(v8 + 1) = 0;
  v8[16] = -125;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v8, v32);
  sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
  *v8 = 5;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v8, v32);
  sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
  *v8 = 3;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v8, v32);
  sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 2;
  v8[24] = 4;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v8, v32);
  sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
  *v8 = 2;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v8, v32);
  sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v8[24] = 3;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v8, v32);
  return sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
}

uint64_t sub_10018C018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&qword_10033B530, &unk_1002783D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ExperienceEffect(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018C81C(a1, v13, type metadata accessor for ExperienceEffect);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    v19 = sub_100244CC4();
    v29 = v6;
    v20 = a1;
    v21 = a2;
    v23 = v22;
    sub_10018C9D0(v13, type metadata accessor for ExperienceEffect);
    v24 = sub_100017494(v19, v23, &v30);
    a2 = v21;
    a1 = v20;
    v6 = v29;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "⭐️ Emit: %s", v17, 0xCu);
    sub_10000903C(v18);

    v3 = v28;
  }

  else
  {

    sub_10018C9D0(v13, type metadata accessor for ExperienceEffect);
  }

  v25 = *(v3 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_outputEventContextSubject);
  sub_10018C81C(a1, v9, type metadata accessor for ExperienceEffect);
  sub_10018C81C(a2, &v9[*(v6 + 36)], type metadata accessor for ExperienceEvent);
  PassthroughSubject.send(_:)();
  return sub_1000097E8(v9, &qword_10033B530, &unk_1002783D0);
}

uint64_t sub_10018C2CC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);

  v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);

  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_outputEventContextSubject);

  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellStartTime, &qword_10033C280, &qword_100272A80);
  v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_tasks);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10018C3F0()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10018C4E8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018C4E8()
{
  if (!qword_10033CCC0)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10033CCC0);
    }
  }
}

uint64_t sub_10018C540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_10018C594(uint64_t a1)
{
  result = sub_10018C5EC(&qword_100349610, type metadata accessor for HandoffStateMachine);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10018C5EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018C634(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10009D6D4;

  return sub_10018A900(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_10018C76C()
{
  result = qword_10033D520;
  if (!qword_10033D520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033D520);
  }

  return result;
}

uint64_t sub_10018C7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffTargetStatus();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018C81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018C884(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000E6584;

  return sub_100188B70(a1, v11, v12, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_10018C9D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018CA40(char a1, char a2)
{
  if (a1 == a2)
  {
    v2 = 0;
    return v2 ^ 1u;
  }

  sub_100035D04(&qword_100349650, qword_100283A18);
  if (!a1 || !a2)
  {
    v5 = a1 == 0;
    goto LABEL_18;
  }

  if (a1 == 4 || a2 == 4)
  {
    v5 = a1 == 4;
    goto LABEL_18;
  }

  if (a1 == 1 || a2 == 1)
  {
    v5 = a1 == 1;
    goto LABEL_18;
  }

  if (a1 == 2 || a2 == 2)
  {
    v5 = a1 == 2;
LABEL_18:
    v2 = v5;
    return v2 ^ 1u;
  }

  if (a1 == 3 || a2 == 3)
  {
    v5 = a1 == 3;
    goto LABEL_18;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10018CB34(char a1, char a2)
{
  if (a2 == a1)
  {
    return 0;
  }

  sub_100035D04(&qword_100349650, qword_100283A18);
  if (a1 && a2)
  {
    if (a1 == 4 || a2 == 4)
    {
      return a2 == 4;
    }

    else if (a1 == 1 || a2 == 1)
    {
      return a2 == 1;
    }

    else if (a1 == 2 || a2 == 2)
    {
      return a2 == 2;
    }

    else
    {
      if (a1 != 3 && a2 != 3)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      return a2 == 3;
    }
  }

  else
  {
    return a2 == 0;
  }
}

uint64_t sub_10018CC34(char a1, char a2)
{
  if (a2 == a1)
  {
    v2 = 0;
    return v2 ^ 1u;
  }

  sub_100035D04(&qword_100349650, qword_100283A18);
  if (!a1 || !a2)
  {
    v5 = a2 == 0;
    goto LABEL_18;
  }

  if (a1 == 4 || a2 == 4)
  {
    v5 = a2 == 4;
    goto LABEL_18;
  }

  if (a1 == 1 || a2 == 1)
  {
    v5 = a2 == 1;
    goto LABEL_18;
  }

  if (a1 == 2 || a2 == 2)
  {
    v5 = a2 == 2;
LABEL_18:
    v2 = v5;
    return v2 ^ 1u;
  }

  if (a1 == 3 || a2 == 3)
  {
    v5 = a2 == 3;
    goto LABEL_18;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_10018CD4C()
{
  result = qword_100349638;
  if (!qword_100349638)
  {
    sub_100035D4C(&qword_100349640, qword_100283928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349638);
  }

  return result;
}

unint64_t sub_10018CDB0()
{
  result = qword_100349648;
  if (!qword_100349648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349648);
  }

  return result;
}

unint64_t sub_10018CE34()
{
  v1 = *v0;
  v2 = 0x41746E6572727563;
  v3 = 0x4D746E6572727563;
  v4 = 0x43746E6572727563;
  if (v1 != 3)
  {
    v4 = 0x54746E6572727563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_10018CEF4(char a1, char a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  sub_100035D04(&qword_100349650, qword_100283A18);
  if (a1 && a2)
  {
    if (a1 == 4 || a2 == 4)
    {
      return a1 == 4;
    }

    else if (a1 == 1 || a2 == 1)
    {
      return a1 == 1;
    }

    else if (a1 == 2 || a2 == 2)
    {
      return a1 == 2;
    }

    else
    {
      if (a1 != 3 && a2 != 3)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      return a1 == 3;
    }
  }

  else
  {
    return a1 == 0;
  }
}

uint64_t sub_10018CFE4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 == 0xD000000000000029 && 0x800000010029F040 == a2)
  {
    goto LABEL_3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return v2;
  }

  v2 = 1;
  if (a1 == 0xD00000000000002FLL && 0x800000010029F010 == a2)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v2;
  }

  v2 = 2;
  if (a1 == 0xD000000000000029 && 0x800000010029EFE0 == a2)
  {
    goto LABEL_3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return v2;
  }

  v2 = 3;
  if (a1 == 0xD000000000000028 && 0x800000010029EFB0 == a2)
  {
    goto LABEL_3;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return v2;
  }

  v2 = 4;
  if (a1 == 0xD000000000000029 && 0x800000010029EF80 == a2)
  {
LABEL_3:
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return v2;
}

uint64_t sub_10018D360()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B420);
  sub_100003078(v0, qword_10038B420);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10018D3E0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100349658);
  v1 = sub_100003078(v0, qword_100349658);
  if (qword_100339110 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B420);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10018D4A8()
{
  v1 = v0;
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10018EFC8();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RapportProxy();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10018D6E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100349658);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activate", v6, 2u);
  }

  sub_10018DEAC();
  sub_10018E4F4();
  v7 = [objc_allocWithZone(RPCompanionLinkClient) init];
  [v7 setControlFlags:6];
  [v7 setDispatchQueue:*&v1[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_dispatchQueue]];
  [v7 setFlags:1];
  v9 = *&v1[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject];
  v8 = *&v1[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 8];
  v10 = *&v1[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 16];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = v10;
  v11[5] = ObjectType;
  v46 = sub_100192E04;
  v47 = v11;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100002B88;
  v45 = &unk_10030D610;
  v12 = _Block_copy(&aBlock);

  [v7 setDeviceFoundHandler:v12];
  _Block_release(v12);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v8;
  v13[4] = v10;
  v13[5] = ObjectType;
  v46 = sub_100192E58;
  v47 = v13;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100002B88;
  v45 = &unk_10030D660;
  v14 = _Block_copy(&aBlock);

  [v7 setDeviceLostHandler:v14];
  _Block_release(v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = ObjectType;
  v46 = sub_100005D88;
  v47 = v16;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100005D14;
  v45 = &unk_10030D6D8;
  v17 = _Block_copy(&aBlock);

  [v7 setDeviceChangedHandler:v17];
  _Block_release(v17);
  sub_100035D04(&qword_1003496F0, &qword_100283AE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v19;
  *(inited + 48) = 1;
  v20 = sub_10024DF3C(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_1003496F8, &unk_100283AF0);
  v21 = String._bridgeToObjectiveC()();
  sub_10011A938(v20);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  v46 = sub_100192E64;
  v47 = v23;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10018E988;
  v45 = &unk_10030D728;
  v24 = _Block_copy(&aBlock);
  v25 = v1;

  [v7 registerEventID:v21 options:isa handler:v24];
  _Block_release(v24);

  v26 = String._bridgeToObjectiveC()();
  sub_10011A938(v20);
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v46 = sub_100192E88;
  v47 = v28;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10018EA48;
  v45 = &unk_10030D778;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  [v7 registerRequestID:v26 options:v27 handler:v29];
  _Block_release(v29);

  v31 = String._bridgeToObjectiveC()();
  sub_10011A938(v20);

  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  v46 = sub_100192EAC;
  v47 = v33;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10018EA48;
  v45 = &unk_10030D7C8;
  v34 = _Block_copy(&aBlock);
  v35 = v30;

  [v7 registerRequestID:v31 options:v32 handler:v34];
  _Block_release(v34);

  v36 = *&v35[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient];
  *&v35[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient] = v7;
  v37 = v7;

  *(swift_allocObject() + 16) = v37;
  v38 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_10018DEAC()
{
  v1 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_100349700, &qword_100283B00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = sub_100035D04(&qword_100349708, &qword_100283B08);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = sub_100035D04(&qword_100349710, &qword_100283B10);
  v14 = *(v13 - 8);
  v32 = v13;
  v33 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v18 = sub_100035D04(&qword_100349718, &qword_100283B18);
  v19 = *(v18 - 8);
  v35 = v18;
  v36 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v29 - v21;
  v23 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 8);
  v39 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject);
  v40 = v23;

  sub_100035D04(&qword_100346A10, &qword_100283B20);
  sub_10000E244(&qword_100346A18, &qword_100346A10, &qword_100283B20);
  Publishers.Merge.init(_:_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100035D04(&qword_100349720, &unk_100283B28);
  sub_10000E244(&qword_100349728, &qword_100349700, &qword_100283B00);
  Publisher.compactMap<A>(_:)();

  (*(v5 + 8))(v8, v4);
  sub_10000E244(&qword_100349730, &qword_100349708, &qword_100283B08);
  sub_100192EF8();
  v24 = v31;
  Publisher<>.removeDuplicates()();
  (*(v30 + 8))(v12, v24);
  v25 = v34;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v39 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_dispatchQueue);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_100349740, &qword_100349710, &qword_100283B10);
  sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr);
  v26 = v32;
  Publisher.throttle<A>(for:scheduler:latest:)();
  (*(v37 + 8))(v25, v38);
  (*(v33 + 8))(v17, v26);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E244(&qword_100349748, &qword_100349718, &qword_100283B18);
  v27 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v22, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10018E4F4()
{
  v1 = v0;
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 7 || DeviceClass == 4)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_airplayPrefs);
    if (v3)
    {
      v4 = qword_100339118;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_100349658);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Start observing AirPlay settings", v9, 2u);
      }

      v10 = String._bridgeToObjectiveC()();
      [v5 addObserver:v1 forKeyPath:v10 options:1 context:0];

      v11 = String._bridgeToObjectiveC()();
      [v5 addObserver:v1 forKeyPath:v11 options:1 context:0];
    }
  }
}

uint64_t sub_10018E6B8(void *a1)
{
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "FOUND %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
  }

  result = sub_10019278C(v3);
  if ((result & 1) == 0)
  {
    return PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10018E820(void *a1)
{
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "LOST %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
  }

  result = sub_10019278C(v3);
  if ((result & 1) == 0)
  {
    return PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10018E988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v6, a3);
}

uint64_t sub_10018EA48(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_100192EE0, v10);
}

void sub_10018EB54(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

void sub_10018EC3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000FBAA8;
  *(v7 + 24) = v6;
  v9[4] = sub_100192ED8;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100124498;
  v9[3] = &unk_10030D868;
  v8 = _Block_copy(v9);

  [a3 activateWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_10018ED4C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_100349658);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Activated %@", v7, 0xCu);
      sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100349658);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Activated", v14, 2u);
    }

    return (a2)(0, 0);
  }
}

void sub_10018EFC8()
{
  v1 = v0;
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  sub_10018F0DC();
}

void sub_10018F0DC()
{
  v1 = v0;
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 7 || DeviceClass == 4)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_airplayPrefs);
    if (v3)
    {
      v4 = qword_100339118;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_100349658);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Stop observing AirPlay settings", v9, 2u);
      }

      v10 = String._bridgeToObjectiveC()();
      [v5 removeObserver:v1 forKeyPath:v10];

      v11 = String._bridgeToObjectiveC()();
      [v5 removeObserver:v1 forKeyPath:v11];
    }
  }
}

uint64_t sub_10018F290(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v2;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v3 = sub_1000851E8(v21), (v4 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v3, &v22);
    sub_1000516C4(v21);
    swift_dynamicCast();
  }

  else
  {
    sub_1000516C4(v21);
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v5;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v6 = sub_1000851E8(v21), (v7 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v6, &v22);
    sub_1000516C4(v21);
    swift_dynamicCast();
  }

  else
  {
    sub_1000516C4(v21);
  }

  strcpy(v19, "rangingToken");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v20 = 0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v8 = sub_1000851E8(v21), (v9 & 1) == 0))
  {
    sub_1000516C4(v21);
    goto LABEL_15;
  }

  sub_10001766C(*(a1 + 56) + 32 * v8, &v22);
  sub_1000516C4(v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
  v10 = sub_10017B1C8();
  sub_100010708(v19[0], v19[1]);
  v20 = v10;
LABEL_16:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = __chkstk_darwin(Strong);
    v13 = *(*(v12 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8;
    v14 = v12;

    os_unfair_lock_lock(v13);
    v15 = *(v13 + 8);

    v17 = sub_1001A9BF0(v16, sub_100192DF4);

    os_unfair_lock_unlock(v13);

    v10 = v20;
  }

  else
  {

    v17 = 0;
  }

  return v17;
}