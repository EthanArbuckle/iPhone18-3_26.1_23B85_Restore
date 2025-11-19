void sub_1001D4750(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x65C]) = v2;
  JUMPOUT(0x1000B1508);
}

uint64_t sub_1001D4838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x3F0] = v3;
  STACK[0x500] = *(v4 + 8 * a3);
  return sub_100194D78(a1, a2);
}

void sub_1001D48FC(uint64_t a1)
{
  v1 = *(a1 + 4) - 2048652491 * ((2 * (a1 & 0x54A06222) - a1 + 727686621) ^ 0x9AEE0AD8);
  v3[1] = v1 - 33731311 * (((v3 | 0xEFE0B918) - (v3 & 0xEFE0B918)) ^ 0xD616733B) + 1934669966;
  v2 = *(&off_100477F30 + v1 - 6185) - 8;
  (*&v2[8 * (v1 ^ 0x3CD7)])(v3);
  __asm { BRAA            X8, X17 }
}

void sub_1001D4A34()
{
  STACK[0x310] = STACK[0x4E0] + 24;
  v0 = LOWORD(STACK[0x9BE]);
  LODWORD(STACK[0x2C0]) = v0;
  LODWORD(STACK[0x2B0]) = v0 ^ 0xFFFFA60A;
  v1 = STACK[0x9C0];
  LODWORD(STACK[0x2D0]) = 197499223;
  LODWORD(STACK[0x220]) = LODWORD(STACK[0x9C4]) ^ 0xD6A561FA;
  STACK[0x300] = STACK[0x820] + 24;
  v2 = LOWORD(STACK[0x9F6]);
  LODWORD(STACK[0x2A0]) = v2;
  LODWORD(STACK[0x290]) = v2 ^ 0x4CF9;
  v3 = STACK[0x9F8];
  LODWORD(STACK[0x210]) = LODWORD(STACK[0x9FC]) ^ 0xD6A561FA;
  STACK[0x2F0] = STACK[0x6F0] + 24;
  STACK[0x2E0] = STACK[0x470] + 24;
  LODWORD(STACK[0x240]) = v1;
  LODWORD(STACK[0x280]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x230]) = v3;
  LODWORD(STACK[0x270]) = v3 ^ 0xD6A561FA;
  LODWORD(STACK[0x260]) = LODWORD(STACK[0x51C]) ^ 0xD6A561FA;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x8F4]) - ((2 * LODWORD(STACK[0x8F4])) & 0xBAC1F152) - 580847447;
  JUMPOUT(0x1000454E8);
}

void sub_1001D4BFC()
{
  LODWORD(STACK[0x5D4]) = v1;
  STACK[0x688] = STACK[0x350];
  STACK[0x7D8] = *(v2 + 8 * (v0 - 5025));
  JUMPOUT(0x1001D4C24);
}

uint64_t sub_1001D4CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = 1317436891 * (((&a19 ^ 0x402030 | 0xF610124F) + (&a19 ^ 0x50101201 | 0x9EFEDB0)) ^ 0xE053AA46) + 8154;
  a19 = &a12;
  v23 = (*(v21 + 77096))(&a19);
  return (*(v21 + 8 * ((13233 * (a20 == ((v22 + 1199) ^ 0xBB1))) ^ 0x1102u)))(v23);
}

_BYTE *sub_1001D4DCC(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_1001D4F84()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D4FC4()
{
  sub_100003894(v0 + 16);

  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001D5010()
{
  sub_100003894(v0 + 16);
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D505C()
{
  sub_100003894(v0 + 16);
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D5130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributionCandidate(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ExpiringAttributionToken();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1001D5220(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributionCandidate(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ExpiringAttributionToken();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1001D531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001E27A8(&qword_1004D6250);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributionCandidate.Provenance(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for AppSpecifier(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1001D5468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001E27A8(&qword_1004D6250);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for AttributionCandidate.Provenance(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for AppSpecifier(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1001D55E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100397748();
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

uint64_t sub_1001D569C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100397748();
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

uint64_t sub_1001D5754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100398C18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100398BD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1001D5844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100398C18();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100398BD8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1001D5940()
{
  v1 = (type metadata accessor for SignpostInterval() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for AttributionSignposts(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v2 | v6;
  v9 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v10 = v0 + v3;

  v11 = v1[8];
  v12 = sub_100398C18();
  v13 = *(*(v12 - 8) + 8);
  v13(v10 + v11, v12);
  v13(v0 + v7, v12);
  v14 = v5[7];
  v15 = sub_100398BD8();
  (*(*(v15 - 8) + 8))(v0 + v7 + v14, v15);

  return _swift_deallocObject(v0, v9 + 16, v8 | 7);
}

uint64_t sub_1001D5B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003974E8();
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
    v11 = sub_1001E27A8(&qword_1004D4CE0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001D5C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1003974E8();
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
    v11 = sub_1001E27A8(&qword_1004D4CE0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1001D5D80()
{
  v1 = (type metadata accessor for AttributionPayloadDTO(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  sub_1001EFA90(*(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = v1[8];
  v6 = sub_1003974E8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001D5E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001E27A8(&qword_1004D6CD8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 11)
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

  else
  {
    v13 = sub_1003979F8();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001D5FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001E27A8(&qword_1004D6CD8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 11)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v12 = sub_1003979F8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1001D610C()
{
  v1 = *(type metadata accessor for ComputedAttributions(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_100397748();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001D623C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100397C68();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D62E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_100397C68();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D638C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WinningAttribution(0);
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

uint64_t sub_1001D6448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WinningAttribution(0);
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

uint64_t sub_1001D6500()
{
  v1 = type metadata accessor for AttributionCandidate(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = sub_100397748();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = sub_1001E27A8(&qword_1004D6250);
  v7(v0 + v3 + *(v8 + 36), v6);
  v9 = *(v1 + 20);
  type metadata accessor for AttributionCandidate.Provenance(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v10 = sub_1001E27A8(&unk_1004D70A0);
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  v11 = v5 + *(v1 + 24);

  v12 = *(type metadata accessor for AppSpecifier(0) + 20);
  v13 = sub_1003981B8();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001D66E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D6718()
{
  v1 = sub_100397748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001D67E8()
{
  v1 = sub_100397748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ProductionAppSpecifier(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100003894(v0 + 40);
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[7];
  v12 = sub_1003981B8();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v10 + 16, v9 | 7);
}

uint64_t sub_1001D698C()
{
  v1 = sub_100397748();
  v2 = *(v1 - 8);
  v37 = *(v2 + 80);
  v3 = (v37 + 80) & ~v37;
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for ProductionAppSpecifier(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = *(sub_1001E27A8(&unk_1004D70F8) - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v36 = *(v9 + 64);

  sub_100003894(v0 + 40);
  v35 = *(v2 + 8);
  v35(v0 + v3, v1);
  v12 = v0 + v7;

  v13 = v5[7];
  v14 = sub_1003981B8();
  v15 = *(*(v14 - 8) + 8);
  v15(v12 + v13, v14);
  v16 = v0 + v11;
  v17 = type metadata accessor for WinningAttribution(0);
  v18 = (*(*(v17 - 8) + 48))(v0 + v11, 1, v17);
  v19 = v36;
  v20 = v37;
  if (!v18)
  {
    v33 = v11;
    v34 = v10;
    v35(v0 + v11, v1);
    v21 = sub_1001E27A8(&qword_1004D6250);
    v35(v16 + *(v21 + 36), v1);
    v22 = type metadata accessor for AttributionCandidate(0);
    v23 = *(v22 + 20);
    type metadata accessor for AttributionCandidate.Provenance(0);
    if (swift_getEnumCaseMultiPayload() <= 1)
    {
      v24 = sub_1001E27A8(&unk_1004D70A0);
      (*(*(v24 - 8) + 8))(v16 + v23, v24);
    }

    v25 = v16 + *(v22 + 24);

    v26 = type metadata accessor for AppSpecifier(0);
    v15(v25 + *(v26 + 20), v14);
    v27 = v16 + *(v17 + 20);
    sub_1001EFA90(*v27, *(v27 + 8));
    sub_1001EFA90(*(v27 + 16), *(v27 + 24));

    sub_1001EFA90(*(v27 + 56), *(v27 + 64));

    v28 = *(type metadata accessor for ExpiringAttributionToken() + 20);
    v29 = sub_100397C68();
    (*(*(v29 - 8) + 8))(v27 + v28, v29);
    v19 = v36;
    v20 = v37;
    v10 = v34;
    v11 = v33;
  }

  v30 = (v19 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v20 | v6 | v10;

  return _swift_deallocObject(v0, v30 + 16, v31 | 7);
}

uint64_t sub_1001D6D78()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D6DE4()
{
  swift_unknownObjectRelease();
  sub_100003894(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001D6E24()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D6E5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D6E98()
{

  sub_100003894(v0 + 24);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001D6EE0()
{
  if (*v0)
  {
    return 0x656D75736E6F63;
  }

  else
  {
    return 0x65726975716361;
  }
}

uint64_t sub_1001D6F1C()
{
  v1 = *(type metadata accessor for AttributionSignerWorkerTask(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  sub_1001EFA90(*(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = *(type metadata accessor for AttributionPayloadDTO(0) + 24);
  v6 = sub_1003974E8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001D702C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D7064()
{
  v1 = *(type metadata accessor for AttributionCoordinator.Operation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(type metadata accessor for ProductionAppSpecifier(0) + 20);
    v8 = sub_1003981B8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
    v9 = sub_1001E27A8(&qword_1004D68F0);
    sub_100003894(v5 + *(v9 + 48));
  }

  else
  {
    v10 = *(type metadata accessor for AppSpecifier(0) + 20);
    v11 = sub_1003981B8();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
    v12 = sub_1001E27A8(&qword_1004D73E8);
    sub_100003894(v5 + *(v12 + 48));
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001D7230()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D7270()
{

  sub_100003894(v0 + 64);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1001D72D0()
{
  v1 = 0x726564616568;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x6449656C646E7562;
  }

  if (*v0)
  {
    v1 = 2036625250;
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

uint64_t sub_1001D7338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10025C5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D737C()
{
  v1 = (type metadata accessor for SignpostInterval() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_100398C18();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001D747C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1003981B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D7528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1003981B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D75CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_1003981B8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1001D7684(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1003981B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D7728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SignedAttributionPayloadDTO(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001D77EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SignedAttributionPayloadDTO(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1001D78A4()
{
  v1 = *(type metadata accessor for AttributionDeliveryWorkerTask(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  sub_1001EFA90(*(v5 + 8), *(v5 + 16));
  v6 = *(type metadata accessor for SignedAttributionPayloadDTO(0) + 24);
  v7 = sub_1003974E8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001D79C4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D7A04()
{
  v1 = (type metadata accessor for TokenSignpostInterval(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_100398C18();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 24, v2 | 7);
}

uint64_t sub_1001D7B10()
{
  v1 = sub_100398668();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_100003894(v0 + v5);
  sub_100003894(v0 + v6);

  return _swift_deallocObject(v0, ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1001D7C1C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D7C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributionCandidate(0);
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
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001D7D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributionCandidate(0);
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

uint64_t sub_1001D7DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100398C18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100398BD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1001D7EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100398C18();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100398BD8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1001D7FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100398C18();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D805C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100398C18();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D8100(uint64_t a1, uint64_t a2)
{
  v4 = sub_100398BD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001D816C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100398BD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001D81DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100398C18();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D8288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100398C18();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D8330()
{
  if (*(v0 + 40))
  {
    sub_100003894(v0 + 16);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D8380(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributionNetworkRequestData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1001D842C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributionNetworkRequestData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D84D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1003974E8();
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
    v13 = type metadata accessor for AttributionPerfMetrics(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001D85FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1003974E8();
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
    v13 = type metadata accessor for AttributionPerfMetrics(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1001D8728(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100397748();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001D87D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100397748();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D8878()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001D88B8()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001D8908()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D8940()
{
  v1 = type metadata accessor for AttributionNetworkRequestData(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 16);
  if (v6 >> 60 != 15)
  {
    sub_1001EFA90(*(v5 + 8), v6);
  }

  v7 = *(v1 + 24);
  v8 = sub_1003974E8();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v5 + *(v1 + 36);

  v10 = type metadata accessor for AttributionPerfMetrics(0);
  v11 = v10[6];
  v12 = sub_100397748();
  v13 = *(*(v12 - 8) + 8);
  v13(v9 + v11, v12);
  v13(v9 + v10[7], v12);
  v13(v9 + v10[8], v12);
  v13(v9 + v10[9], v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001D8B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributionPayloadDTO(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001D8BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributionPayloadDTO(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1001D8C9C()
{
  v1 = *(type metadata accessor for AttributionSignerWorkerTask(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  sub_1001EFA90(*(v5 + 8), *(v5 + 16));
  v6 = *(type metadata accessor for AttributionPayloadDTO(0) + 24);
  v7 = sub_1003974E8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001D8DBC()
{
  v1 = *(type metadata accessor for AttributionSignerWorkerTask(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  sub_1001EFA90(*(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = *(type metadata accessor for AttributionPayloadDTO(0) + 24);
  v6 = sub_1003974E8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001D8ED4()
{
  v1 = *(type metadata accessor for AttributionDeliveryWorkerTask(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  sub_1001EFA90(*(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = *(type metadata accessor for SignedAttributionPayloadDTO(0) + 24);
  v6 = sub_1003974E8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001D98AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimeRange();
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

uint64_t sub_1001D996C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TimeRange();
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

uint64_t sub_1001D9A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DA2D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001D9AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DA2D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001D9B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100397748();
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

uint64_t sub_1001D9BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100397748();
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

uint64_t sub_1001D9C94()
{
  sub_100003894(v0 + 16);

  sub_100003894(v0 + 72);
  sub_100003894(v0 + 112);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1001D9CEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D9D24()
{
  v1 = sub_100397748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001D9DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100397748();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1003980E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1001D9ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100397748();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1003980E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1001D9FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservabilitySignal();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001DA040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservabilitySignal();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001DA0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100397748();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001DA1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100397748();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001DA278()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001DA2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100397AA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001DA32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100397AA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001DA39C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001DA3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtcDate();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001DA440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtcDate();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001DA4B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UtcDate();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1001DA554(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for UtcDate();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001DA5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100397748();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001DA660(uint64_t a1, uint64_t a2)
{
  v4 = sub_100397748();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001DA6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100397748();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001DA73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100397748();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001DCA50(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 hasPrefix:@"__"] && objc_msgSend(v5, "conformsToProtocol:", &OBJC_PROTOCOL___APMetricPropertySupportedTypes))
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

uint64_t sub_1001DDDFC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1001DDE50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001EFA90(a1, a2);
  }

  return a1;
}

uint64_t sub_1001DDE64@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

void sub_1001DE38C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001DE3B0(uint64_t a1)
{
  v2 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v3 = [v2 enableAggregatedTimespent];

  if (v3)
  {
    v4 = [v2 enableAggregatedTimespent];
    v5 = [v4 BOOLValue];

    objc_copyWeak(&to, (a1 + 48));
    if ((v5 & 1) == 0)
    {
      v6 = objc_loadWeakRetained(&to);
      [v6 isCancelled];

      if (!+[_TtC16promotedcontentd26AggregatedTimeSpentAdapter removeAllAggregatedTimespentEntries])
      {
        v7 = APLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to remove all entries", v14, 2u);
        }
      }

      [*(a1 + 40) setDidFinishAggregateTimeSpentActivity:1];
      [*(a1 + 40) markActivityAsFinished:*(a1 + 32)];
      goto LABEL_16;
    }
  }

  else
  {
    objc_copyWeak(&to, (a1 + 48));
  }

  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Starting Aggregated Time Spent Report activity.", buf, 2u);
  }

  v9 = +[_TtC16promotedcontentd26AggregatedTimeSpentAdapter retrieveAggregatedTimespentEntries];
  v10 = [v9 mutableCopy];

  v11 = objc_loadWeakRetained(&to);
  v12 = v11;
  if (v10)
  {
    [v11 makeAggregatedTimeSpentRequests:v10 activity:*(a1 + 32)];
  }

  else
  {
    v13 = [v11 isCancelled];

    if ((v13 & 1) == 0)
    {
      [*(a1 + 40) setDidFinishAggregateTimeSpentActivity:1];
      [*(a1 + 40) markActivityAsFinished:*(a1 + 32)];
    }
  }

LABEL_16:
  objc_destroyWeak(&to);
}

void sub_1001DE86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DE890(uint64_t a1, char a2)
{
  objc_copyWeak(&to, (a1 + 56));
  if ((a2 & 1) == 0)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) debugDescription];
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Aggregated Time Spent metric failed for some reason for componentData %{public}@", buf, 0xCu);
    }
  }

  [*(a1 + 40) removeLastObject];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_loadWeakRetained(&to);
  [v7 makeAggregatedTimeSpentRequests:*(a1 + 40) activity:*(a1 + 48)];

  objc_autoreleasePoolPop(v6);
  objc_destroyWeak(&to);
}

uint64_t sub_1001DEAB8(uint64_t a1)
{
  [*(a1 + 32) setAggregatedTimeSpentLegacyInterface:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001DEBE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001DEC00(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained fetchSponsorshipAdsWithActivity:*(a1 + 32)];
  }

  else
  {
    [WeakRetained setDidFinishFetchingSponsorshipAdsActivity:1];
    [v5 markActivityAsFinished:*(a1 + 32)];
  }
}

void sub_1001DEF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DEF50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained promotedContentsReceived];
  [v4 addObjectsFromArray:v3];
}

void sub_1001DEFBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) promotedContentsReceived];
  v4 = *(a1 + 40);
  v10 = 0;
  v5 = [_TtC16promotedcontentd26SponsorshipAdFetchActivity saveWithItems:v3 fetchedUsingContext:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 debugDescription];
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Saving sponsorship ads failed with error: %{public}@", buf, 0xCu);
    }
  }

  [WeakRetained setDidFinishFetchingSponsorshipAdsActivity:1];
  [WeakRetained markActivityAsFinished:*(a1 + 48)];
}

void sub_1001E05A8()
{
  bzero(v0, 0x400uLL);
  if ((!_set_user_dir_suffix() || !confstr(65537, v0, 0x400uLL)) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100393818();
  }
}

void start()
{
  signal(15, 1);
  v0 = dispatch_get_global_queue(21, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);
  dispatch_source_set_event_handler(v1, &stru_1004640D0);
  dispatch_activate(v1);
  v2 = objc_autoreleasePoolPush();
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting up the daemon.", &v10, 2u);
  }

  sub_1001E05A8();
  v4 = objc_alloc_init(APDaemonInstanceWrapper);
  [[[_TtC16promotedcontentd21PromotedContentDaemon alloc] initWithInstanceWrapper:v4] boot];
  v5 = [[APPromotedContentDaemon alloc] initWithInstanceWrapper:v4];
  v6 = [(APDaemonInstanceWrapper *)v4 migrationContext];
  [v6 done];

  v7 = APLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(APPromotedContentDaemon *)v5 status];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Daemon Status:\n%@", &v10, 0xCu);
  }

  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initiating main queue.", &v10, 2u);
  }

  objc_autoreleasePoolPop(v2);
  dispatch_main();
}

void sub_1001E0CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Config System Background Task Started.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [APConfigurationRequester alloc];
  v7 = [WeakRetained _storefront];
  v8 = [v6 initWithStorefront:v7];

  *buf = 0;
  v22 = buf;
  v23 = 0x2020000000;
  v24 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001E0F58;
  v17[3] = &unk_100464108;
  v20 = buf;
  v9 = v8;
  v18 = v9;
  v10 = WeakRetained;
  v19 = v10;
  [v3 setExpirationHandler:v17];
  if (v22[24])
  {
    [v10 _expireTask:v3];
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Config System Background Task Expired before request.", v16, 2u);
    }
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E0FF8;
    v12[3] = &unk_100464130;
    v15 = buf;
    v13 = v10;
    v14 = v3;
    [v9 requestConfigurationWithCompletionHandler:v12];

    v11 = v13;
  }

  _Block_object_dispose(buf, 8);
}

void sub_1001E0F58(uint64_t a1)
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Config System Background Task Asked to Expire.", v4, 2u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) cancelRequest];
  v3 = [*(a1 + 40) configurationStorage];
  [v3 cancelConfigurationUpdate];
}

uint64_t sub_1001E0FF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v6 = [*(a1 + 32) configurationStorage];
    v7 = [v6 updateConfigurationSystemWithData:v5];

    if (v7)
    {
      +[APFeatureFlagsProcessRestarter restartIfNeeded];
      a2 = 1;
    }

    else
    {
      a2 = 0;
    }
  }

  v8 = *(*(*(a1 + 48) + 8) + 24);
  if (v8)
  {
    [*(a1 + 32) _expireTask:*(a1 + 40)];
  }

  else
  {
    [*(a1 + 40) setTaskCompleted];
  }

  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Error";
    if (v8)
    {
      v10 = @"Expired";
    }

    if (a2)
    {
      v10 = @"Success";
    }

    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Config System Background Task Completed With: %@.", &v12, 0xCu);
  }

  return a2;
}

void sub_1001E18E4(uint64_t a1, int a2)
{
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"completed";
    if (a2)
    {
      v5 = @"cancelled";
    }

    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Cache GC activity %{public}@.", &v6, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) finished];
  }
}

void sub_1001E1B38(void *a1, uint64_t a2)
{
  v4 = sub_100398CB8();
  if (xpc_dictionary_get_string(a1, v4) && (v5 = sub_100398F18(), v6))
  {
    if (v5 == *(a2 + 16) && v6 == *(a2 + 24))
    {
    }

    else
    {
      v10 = sub_1003999B8();

      if ((v10 & 1) == 0)
      {
        return;
      }
    }

    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v11 = sub_100398CA8();
    sub_10000351C(v11, qword_1004DDA10);
    v12 = sub_100398C88();
    v13 = sub_1003993C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[NotifyDMatchingHandler] Storefront Notification recieved.", v14, 2u);
    }

    sub_1001E1D58();
  }

  else
  {
    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v7 = sub_100398CA8();
    sub_10000351C(v7, qword_1004DDA10);
    oslog = sub_100398C88();
    v8 = sub_1003993C8();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "[NotifyDMatchingHandler] Error extracting notification name from XPC event.", v9, 2u);
    }
  }
}

uint64_t sub_1001E1D58()
{
  v1 = v0;
  v2 = sub_1001E27A8(&qword_1004D4CE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v23[-v6];
  v8 = sub_100397748();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v23[-v13];
  sub_100397738();
  v15 = OBJC_IVAR____TtC16promotedcontentd22NotifyDMatchingHandler_lastStorefrontNotificationTime;
  swift_beginAccess();
  sub_1001E2838(v1 + v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1001E28A8(v7);
LABEL_10:
    sub_1001E20AC();
    (*(v9 + 32))(v5, v14, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    swift_beginAccess();
    sub_1001E2910(v5, v1 + v15);
    return swift_endAccess();
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_100397668();
  if (v16 >= 3.0)
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_10;
  }

  if (qword_1004D3EC8 != -1)
  {
    swift_once();
  }

  v17 = sub_100398CA8();
  sub_10000351C(v17, qword_1004DDA10);
  v18 = sub_100398C88();
  v19 = sub_1003993C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "[NotifyDMatchingHandler] Ignoring storefront change duplicate notification.", v20, 2u);
  }

  v21 = *(v9 + 8);
  v21(v12, v8);
  return (v21)(v14, v8);
}

uint64_t sub_1001E20AC()
{
  v20 = sub_100398DA8();
  v22 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100398DD8();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100398DF8();
  v18 = v5;
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v16 = *(v0 + 32);
  sub_100398DE8();
  sub_100398E38();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001E27A0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001F77E8;
  aBlock[3] = &unk_100464440;
  v13 = _Block_copy(aBlock);

  sub_100398DC8();
  v23 = _swiftEmptyArrayStorage;
  sub_1001E31C0(&qword_1004D40A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001E27A8(&unk_1004DC400);
  sub_100004380(&qword_1004D40B0, &unk_1004DC400);
  v14 = v20;
  sub_100399658();
  sub_100399448();
  _Block_release(v13);
  (*(v22 + 8))(v2, v14);
  (*(v19 + 8))(v4, v21);
  v17(v11, v18);
}

uint64_t sub_1001E246C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 40) request];
  }

  return result;
}

uint64_t sub_1001E24D4()
{

  sub_1001E28A8(v0 + OBJC_IVAR____TtC16promotedcontentd22NotifyDMatchingHandler_lastStorefrontNotificationTime);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotifyDMatchingHandler()
{
  result = qword_1004D3F50;
  if (!qword_1004D3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E25AC()
{
  sub_1001E2664();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001E2664()
{
  if (!qword_1004D3F60)
  {
    sub_100397748();
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D3F60);
    }
  }
}

__n128 sub_1001E26C0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001E26CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E26EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_1001E272C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001E2740(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E2760(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1001E27A8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001E27F0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001E2838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D4CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E28A8(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D4CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001E2910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D4CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E2980(uint64_t a1)
{
  v2 = sub_1001E31C0(&qword_1004D40F8, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001E29EC(uint64_t a1)
{
  v2 = sub_1001E31C0(&qword_1004D40F8, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001E2A58(uint64_t a1)
{
  v2 = sub_1001E31C0(&qword_1004D4130, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001E2AE4(uint64_t a1)
{
  v2 = sub_1001E31C0(&qword_1004D4130, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001E2B50(uint64_t a1)
{
  v2 = sub_1001E31C0(&qword_1004D4130, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001E2BBC(void *a1, uint64_t a2)
{
  v4 = sub_1001E31C0(&qword_1004D4130, type metadata accessor for BGSystemTaskSchedulerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001E2C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E31C0(&qword_1004D4130, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001E2CEC()
{
  sub_100399B58();
  sub_100398EC8();
  return sub_100399B88();
}

void *sub_1001E2D4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1001E2D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001E31C0(&qword_1004D4130, type metadata accessor for BGSystemTaskSchedulerError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001E2E00(void *a1)
{
  v2 = v1;
  v18 = a1;
  v17 = sub_100399468();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100399438();
  __chkstk_darwin(v6);
  v7 = sub_100398DD8();
  __chkstk_darwin(v7 - 8);
  *(v1 + 16) = 0xD000000000000043;
  *(v1 + 24) = 0x80000001004288F0;
  v8 = sub_1001E3174();
  v16[0] = "dChangeNotification";
  v16[1] = v8;
  sub_100398DC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001E31C0(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_100004380(&qword_1004D40D8, &qword_1004D40D0);
  sub_100399658();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v9 = sub_100399488();
  *(v2 + 32) = v9;
  v10 = OBJC_IVAR____TtC16promotedcontentd22NotifyDMatchingHandler_lastStorefrontNotificationTime;
  v11 = sub_100397748();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC16promotedcontentd22NotifyDMatchingHandler_storefrontDebounceInterval) = 0x4008000000000000;
  v12 = v18;
  *(v2 + 40) = v18;
  aBlock[4] = sub_1001E3208;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000067D0;
  aBlock[3] = &unk_100464468;
  v13 = _Block_copy(aBlock);
  v14 = v12;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v9, v13);
  _Block_release(v13);
  return v2;
}

unint64_t sub_1001E3174()
{
  result = qword_1004D40C0;
  if (!qword_1004D40C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D40C0);
  }

  return result;
}

uint64_t sub_1001E31C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001E33A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1001E3438()
{
  result = qword_1004D4120;
  if (!qword_1004D4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D4120);
  }

  return result;
}

id MigrationContext.__allocating_init(storage:currentVersion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1001E4C54(a1, a2, a3, a4);

  return v10;
}

id MigrationContext.init(storage:currentVersion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001E4C54(a1, a2, a3, a4);

  return v5;
}

Swift::Bool __swiftcall MigrationContext.hasOSVersionChanged()()
{
  v1 = (v0 + OBJC_IVAR___APMigrationContext_previousVersion);
  if (*(v0 + OBJC_IVAR___APMigrationContext_previousVersion + 24))
  {
    return 1;
  }

  return *v1 != *(v0 + OBJC_IVAR___APMigrationContext_currentVersion) || v1[1] != *(v0 + OBJC_IVAR___APMigrationContext_currentVersion + 8) || v1[2] != *(v0 + OBJC_IVAR___APMigrationContext_currentVersion + 16);
}

Swift::Void __swiftcall MigrationContext.done()()
{
  v1 = *(v0 + OBJC_IVAR___APMigrationContext_storage);
  sub_1001E37D4();
  v2 = sub_100398F28();

  v3 = sub_100398F28();
  [v1 setObject:v2 forKey:v3];
}

uint64_t sub_1001E37D4()
{
  v1 = sub_100399998();
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_100399068(v2);
  v3._countAndFlagsBits = sub_100399998();
  sub_100399068(v3);

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  sub_100399068(v4);
  v5._countAndFlagsBits = sub_100399998();
  sub_100399068(v5);

  return v1;
}

id ExperimentationReportTelemetryDelivery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MigrationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1001E3A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001E27A8(&qword_1004D41E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unsigned __int8 *sub_1001E3B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1001E4DE8();

  result = sub_1003990F8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001E40F4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100399768();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1001E40F4()
{
  v0 = sub_100399108();
  v4 = sub_1001E4174(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1001E4174(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100399608();
    if (!v9 || (v10 = v9, v11 = sub_1001EAB38(v9, 0), v12 = sub_1001E42CC(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100398FF8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100398FF8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100399768();
LABEL_4:

  return sub_100398FF8();
}

unint64_t sub_1001E42CC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1001E44EC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1003990B8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100399768();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1001E44EC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_100399088();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1001E44EC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1003990C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100399098();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1001E4568(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1001E44EC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1003990A8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1001E44EC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1001E44EC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1003990A8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1001E49D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v29 = a1;
    v30 = a2;
    sub_1001E4D94();
    v2 = sub_100399638();
    v3 = *(v2 + 16);
    if (!v3)
    {
      v5 = _swiftEmptyArrayStorage;
      goto LABEL_26;
    }

    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v6 = (v2 + 56 + 32 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          swift_bridgeObjectRetain_n();

          __break(1u);
          return result;
        }

        v8 = *(v6 - 3);
        v9 = *(v6 - 2);
        if (!((v9 ^ v8) >> 14))
        {
          goto LABEL_13;
        }

        v10 = *(v6 - 1);
        v11 = *v6;
        if ((*v6 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v11 & 0x2000000000000000) != 0)
        {
          v29 = *(v6 - 1);
          v30 = v11 & 0xFFFFFFFFFFFFFFLL;
          v12 = &v29;
        }

        else if ((v10 & 0x1000000000000000) != 0)
        {
          v12 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v26 = *(v6 - 3);
          v28 = *(v6 - 2);
          v18 = *(v6 - 1);
          v12 = sub_100399768();
          v10 = v18;
          v8 = v26;
          v9 = v28;
        }

        v13 = sub_1001E4568(v12, v8, v9, v10, v11, 10);
        if ((v14 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_13:
        ++v7;
        v6 += 4;
        if (v3 == v7)
        {
          goto LABEL_26;
        }
      }

      v25 = *(v6 - 1);
      v27 = *(v6 - 2);
      v15 = *(v6 - 3);

      v16 = sub_1001E3B5C(v15, v27, v25, v11, 10);
      LOBYTE(v27) = v17;

      if (v27)
      {
        goto LABEL_13;
      }

      v13 = v16;
LABEL_18:
      v19 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1001E3A58(0, *(v5 + 2) + 1, 1, v5);
      }

      v20 = v19;
      v22 = *(v5 + 2);
      v21 = *(v5 + 3);
      if (v22 >= v21 >> 1)
      {
        v5 = sub_1001E3A58((v21 > 1), v22 + 1, 1, v5);
        v20 = v19;
      }

      v4 = v7 + 1;
      *(v5 + 2) = v22 + 1;
      *&v5[8 * v22 + 32] = v20;
      if (v3 - 1 == v7)
      {
LABEL_26:

        if (*(v5 + 2) == 3)
        {
          v23 = *(v5 + 4);
        }

        else
        {
          v23 = 0;
        }

        return v23;
      }
    }
  }

  return 0;
}

id sub_1001E4C54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___APMigrationContext_storage] = a1;
  v5 = &v4[OBJC_IVAR___APMigrationContext_currentVersion];
  *v5 = a2;
  *(v5 + 1) = a3;
  *(v5 + 2) = a4;
  v6 = a1;
  v7 = sub_100398F28();
  v8 = [v6 stringForKey:v7];

  if (v8)
  {
    v9 = sub_100398F58();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_1001E49D4(v9, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = &v4[OBJC_IVAR___APMigrationContext_previousVersion];
  *v19 = v12;
  *(v19 + 1) = v14;
  *(v19 + 2) = v16;
  v19[24] = v18 & 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for MigrationContext();
  return objc_msgSendSuper2(&v21, "init");
}

unint64_t sub_1001E4D94()
{
  result = qword_1004DA490;
  if (!qword_1004DA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA490);
  }

  return result;
}

unint64_t sub_1001E4DE8()
{
  result = qword_1004D41E8;
  if (!qword_1004D41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D41E8);
  }

  return result;
}

id sub_1001E4E3C()
{
  ObjectType = swift_getObjectType();
  v10 = sub_100399468();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100399438();
  __chkstk_darwin(v4);
  v5 = sub_100398DD8();
  __chkstk_darwin(v5 - 8);
  v6 = &v0[OBJC_IVAR___APClientConfigurationXPCListener_queueLabel];
  *v6 = 0xD000000000000033;
  *(v6 + 1) = 0x8000000100428AD0;
  *&v0[OBJC_IVAR___APClientConfigurationXPCListener_listener] = 0;
  sub_1001E3174();
  sub_100398DC8();
  v13 = _swiftEmptyArrayStorage;
  sub_100004260(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_1001E54D4();
  sub_100399658();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *&v0[OBJC_IVAR___APClientConfigurationXPCListener_queue] = sub_100399488();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, "init");
  sub_1001E50DC();

  return v7;
}

uint64_t sub_1001E50DC()
{
  v1 = sub_1003984F8();
  __chkstk_darwin(v1);
  v2 = sub_100398CE8();
  __chkstk_darwin(v2 - 8);
  sub_1003984D8();
  v3 = *(v0 + OBJC_IVAR___APClientConfigurationXPCListener_queue);
  sub_100398CD8();
  sub_100398D38();
  swift_allocObject();
  *(v0 + OBJC_IVAR___APClientConfigurationXPCListener_listener) = sub_100398D28();
}

uint64_t sub_1001E5324()
{
  type metadata accessor for ClientConfigurationXPCReceiver();
  sub_100004260(&qword_1004D4238, type metadata accessor for ClientConfigurationXPCReceiver);
  return sub_100398D08();
}

uint64_t sub_1001E53B8@<X0>(void *a1@<X8>)
{
  type metadata accessor for ClientConfigurationXPCReceiver();
  swift_allocObject();

  v3 = sub_1001F9648(v2);

  *a1 = v3;
  return result;
}

id _s31PromotedContentControllerDaemon20PCIdentifierProviderCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001E54D4()
{
  result = qword_1004D40D8;
  if (!qword_1004D40D8)
  {
    sub_1001E27F0(&qword_1004D40D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D40D8);
  }

  return result;
}

uint64_t sub_1001E5538(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D4230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PromotedContentDaemon.__allocating_init(instanceWrapper:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1001E6118();

  return v4;
}

id PromotedContentDaemon.init(instanceWrapper:)(void *a1)
{
  v2 = sub_1001E6118();

  return v2;
}

Swift::Void __swiftcall PromotedContentDaemon.boot()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16promotedcontentd21PromotedContentDaemon_factory);
  sub_100003554(v1 + 16, v9);
  if (qword_1004D3F00 != -1)
  {
    swift_once();
  }

  sub_100003554(v9, &v6);
  swift_beginAccess();
  v2 = *(&v7 + 1);
  if (!qword_1004D4E18)
  {
    if (*(&v7 + 1))
    {
      goto LABEL_5;
    }

LABEL_7:
    xmmword_1004D4E00 = v6;
    unk_1004D4E10 = v7;
    qword_1004D4E20 = v8;
    goto LABEL_8;
  }

  sub_100003894(&xmmword_1004D4E00);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_100004A68(&v6, &xmmword_1004D4E00);
LABEL_8:
  swift_endAccess();
  v3 = sub_1003981D8();
  __chkstk_darwin(v3);
  v5[2] = v9;
  v4 = sub_1001E5D38(sub_1001E68C8, v5, v3);

  qword_1004D4DF8 = v4;

  sub_100003894(v9);
  sub_1003983A8();
  sub_100003554(v1 + 16, v9);
  sub_100398328();
  sub_100003894(v9);
  type metadata accessor for APAMSNetworkFacade();
  sub_100003554(v1 + 56, v9);
  static APAMSNetworkFacade.configure(fetcherProviderSource:)(v9);
  sub_100003894(v9);
  sub_1001E68E8();
}

id PromotedContentDaemon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotedContentDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E592C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_100003554(a3, v23);
  sub_1001E27A8(&qword_1004D42A8);
  swift_allocObject();
  sub_1003982E8();
  sub_100003554(a1, v23);
  v9 = sub_100398008();
  swift_allocObject();
  v10 = sub_100397FF8();
  v24 = v9;
  v25 = &protocol witness table for CohortCandidateKeyValueStore;
  v23[0] = v10;
  sub_100397FC8();
  swift_allocObject();
  sub_100397FB8();
  sub_100397FE8();
  swift_allocObject();
  sub_100397FD8();
  sub_1000035B8(a3, a3[3]);
  if (sub_100397ED8())
  {
    sub_100003554(a4, v23);
    sub_1001E6C28(&qword_1004D42B0, &qword_1004D42A8);
    v11 = &qword_1004D42B8;
    v12 = sub_1001E27A8(&qword_1004D42B8);
    swift_allocObject();

    v13 = sub_1003983F8();

    v14 = &unk_1004D42C0;
  }

  else
  {
    sub_100003554(a2, v23);
    v15 = sub_100398318();
    swift_allocObject();
    v16 = sub_100398308();
    v24 = v15;
    v25 = &protocol witness table for KeyValueFFIFSource;
    v23[0] = v16;
    v17 = sub_100398418();
    swift_allocObject();

    v18 = sub_100398408();
    v24 = v17;
    v25 = &protocol witness table for FFIFFeatureAbilitySource;
    v23[0] = v18;
    sub_1001E6C28(&qword_1004D42B0, &qword_1004D42A8);
    v19 = sub_1001E27A8(&qword_1004D42C8);
    swift_allocObject();

    v20 = sub_1003982D8();
    v24 = v19;
    v25 = sub_1001E6C28(&qword_1004D42D0, &qword_1004D42C8);
    v23[0] = v20;
    v11 = &qword_1004D42D8;
    v12 = sub_1001E27A8(&qword_1004D42D8);
    swift_allocObject();

    v13 = sub_1003982A8();

    v14 = &unk_1004D42E0;
  }

  result = sub_1001E6C28(v14, v11);
  a5[3] = v12;
  a5[4] = result;
  *a5 = v13;
  return result;
}

uint64_t sub_1001E5D38(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for FeatureFlagsProcessRestarter.FeatureState(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_1001E5F20(0, v10, 0);
  v11 = v21;
  v12 = *(sub_1003981E8() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_1001E5F20(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_1001E6ACC(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

size_t sub_1001E5F20(size_t a1, int64_t a2, char a3)
{
  result = sub_1001E5F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001E5F40(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001E27A8(&qword_1004D4288);
  v10 = *(type metadata accessor for FeatureFlagsProcessRestarter.FeatureState(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FeatureFlagsProcessRestarter.FeatureState(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id sub_1001E6118()
{
  v1 = v0;
  v2 = sub_1003974E8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v55 - v8;
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = DaemonInstanceWrapper.configSystemRequestTask.getter();
  type metadata accessor for NotifyDMatchingHandler();
  swift_allocObject();
  v13 = sub_1001E2E00(v12);

  v56 = v1;
  *&v1[OBJC_IVAR____TtC16promotedcontentd21PromotedContentDaemon_notifydEventHandler] = v13;
  v14 = DaemonInstanceWrapper.migrationContext.getter();
  v15 = v14;
  v16 = &v14[OBJC_IVAR___APMigrationContext_previousVersion];
  if (v14[OBJC_IVAR___APMigrationContext_previousVersion + 24])
  {
    v55 = v14;

    swift_unknownObjectRelease();
    sub_100397468();
    sub_100397448();
    v17 = *(v3 + 8);
    v17(v6, v2);
    sub_100397448();
    v17(v9, v2);
    v18 = objc_opt_self();
    v19 = [v18 defaultManager];
    sub_100397498();
    v20 = sub_100398F28();

    v21 = [v19 fileExistsAtPath:v20];

    if (v21)
    {
      v22 = [v18 defaultManager];
      sub_100397438(v23);
      v25 = v24;
      v68[0] = 0;
      v26 = [v22 removeItemAtURL:v24 error:v68];

      if (v26)
      {
        v27 = v68[0];
      }

      else
      {
        v30 = v68[0];
        sub_1003973E8();

        swift_willThrow();
      }
    }

    v17(v11, v2);
    v15 = v55;
    goto LABEL_16;
  }

  if (*v16 != *&v14[OBJC_IVAR___APMigrationContext_currentVersion] || *(v16 + 1) != *&v14[OBJC_IVAR___APMigrationContext_currentVersion + 8] || *(v16 + 2) != *&v14[OBJC_IVAR___APMigrationContext_currentVersion + 16])
  {
LABEL_16:
    v31 = [objc_allocWithZone(APStorageManager) initWithPathPrefix:@"m"];
    v68[0] = 0;
    v32 = [v31 removeObjectAtPath:@"w" error:v68];

    if (v32)
    {
      v33 = v68[0];
    }

    else
    {
      v34 = v68[0];
      sub_1003973E8();

      swift_willThrow();
    }

    v35 = DaemonInstanceWrapper.configurationStorage.getter();
    [v35 resetConfigurationSystem];

    sub_100397D48();
    sub_100398B88();
    swift_allocObject();
    sub_100398B78();
    sub_100398B68();
  }

  sub_1001E6B30();
  sub_100399418();
  v36 = sub_100397F88();
  swift_allocObject();
  v37 = sub_100397F78();
  v38 = sub_100397FA8();
  swift_allocObject();

  v39 = sub_100397F98();
  v40 = sub_1003984E8();
  v69 = v40;
  v70 = sub_1001E6BE0(&qword_1004D4298, &type metadata accessor for Configuration);
  v41 = sub_1001E6B7C(v68);
  (*(*(v40 - 8) + 104))(v41, enum case for Configuration.featureFlag(_:), v40);
  v42 = sub_100398568();
  v63 = v42;
  v64 = &protocol witness table for ConfigurationDirectoryURLBuilder;
  v43 = sub_1001E6B7C(v62);
  (*(*(v42 - 8) + 104))(v43, enum case for ConfigurationDirectoryURLBuilder.serverDownloaded(_:), v42);
  v66 = sub_100398548();
  v67 = &protocol witness table for ConfigurationNodeReader;
  sub_1001E6B7C(v65);
  sub_100398528();
  v44 = sub_100398518();
  swift_allocObject();
  v45 = sub_100398508();
  v69 = v44;
  v70 = sub_1001E6BE0(&qword_1004D42A0, &type metadata accessor for ConfigurableJSONSource);
  v68[0] = v45;
  v46 = sub_100397E58();
  swift_allocObject();
  v47 = sub_100397E48();
  v48 = type metadata accessor for AdServicesFetcherFactory();
  swift_allocObject();

  v49 = AdServicesFetcherFactory.init()();
  v69 = v36;
  v70 = &protocol witness table for UserDefaultsKeyValueStore;
  v68[0] = v37;
  v66 = v38;
  v67 = &protocol witness table for DeviceExecutionEnvironment;
  v65[0] = v39;
  v63 = v46;
  v64 = &protocol witness table for JSONKeyValueSource;
  v62[0] = v47;
  v61[3] = v36;
  v61[4] = &protocol witness table for UserDefaultsKeyValueStore;
  v61[0] = v37;
  v60 = &protocol witness table for AdServicesFetcherFactory;
  v59 = v48;
  *&v58 = v49;
  type metadata accessor for DaemonFactory();
  v50 = swift_allocObject();
  sub_1001E592C(v68, v62, v65, v61, (v50 + 16));
  sub_100003894(v61);
  sub_100003894(v62);
  sub_100003894(v65);
  sub_100003894(v68);
  sub_100004A68(&v58, v50 + 56);
  v51 = v56;
  *&v56[OBJC_IVAR____TtC16promotedcontentd21PromotedContentDaemon_factory] = v50;
  v52 = type metadata accessor for PromotedContentDaemon();
  v57.receiver = v51;
  v57.super_class = v52;
  v53 = objc_msgSendSuper2(&v57, "init");

  return v53;
}

uint64_t sub_1001E68E8()
{
  if (qword_1004D3EE8 != -1)
  {
    swift_once();
  }

  type metadata accessor for PostInstallBackgroundTask();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000029;
  *(v0 + 24) = 0x8000000100428BB0;
  v1 = v0 + OBJC_IVAR____TtC16promotedcontentd25PostInstallBackgroundTask_mode;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = enum case for BackgroundTaskMode.nonRepeating(_:);
  v3 = sub_100397E28();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v7[5] = v0;
  v4 = type metadata accessor for PostInstallBackgroundTask.Handler();
  v5 = swift_allocObject();
  v7[3] = v4;
  v7[4] = sub_1001E6BE0(&qword_1004D4278, type metadata accessor for PostInstallBackgroundTask.Handler);
  v7[0] = v5;
  sub_1001E6BE0(&qword_1004D4280, type metadata accessor for PostInstallBackgroundTask);
  sub_100397F48();

  return sub_100003894(v7);
}

uint64_t sub_1001E6ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureFlagsProcessRestarter.FeatureState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001E6B30()
{
  result = qword_1004D4290;
  if (!qword_1004D4290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D4290);
  }

  return result;
}

uint64_t *sub_1001E6B7C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1001E6BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E6C28(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001E6C70(uint64_t a1)
{
  v2 = sub_1003982F8();
  __chkstk_darwin(v2);
  v3 = sub_100398D88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1001E7DC4();
  sub_100398D78();
  v6 = v11[7];
  v11[0] = *(v11[1] + 80);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  (*(v4 + 32))(v9 + v8, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_100398D58();
}

void sub_1001E6F3C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001E704C();
    sub_1001E27A8(&qword_1004D43B8);
    sub_1001E7E7C();
    sub_100398D68();
  }

  else
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v0 = sub_1003995B8();
    sub_100398B98();
  }
}

uint64_t sub_1001E704C()
{
  v1 = sub_1003982F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001E71C0(v0[6], v0[7], v0[8], v0[9]);
  if (v6 && (sub_1001E7820(v5), v8 = v7, , (v8 & 1) == 0))
  {
    sub_1001E729C();
    v10 = sub_100398438();

    return v10;
  }

  else
  {
    (*(v2 + 104))(v4, enum case for IDManagerErrorType.xpcFetchFailed(_:), v1);
    sub_100398278();
    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

SecTaskRef sub_1001E71C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  result = SecTaskCreateWithAuditToken(0, &token);
  if (result)
  {
    v5 = result;
    v6 = sub_100398F28();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7 && (swift_dynamicCast() & 1) != 0)
    {
      return *token.val;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E729C()
{
  sub_1003996F8(23);
  v0 = sub_100399998();

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_100399068(v2);
  v3._countAndFlagsBits = sub_100399998();
  sub_100399068(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_100399068(v4);
  v5._countAndFlagsBits = sub_100399998();
  sub_100399068(v5);

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_100399068(v6);
  v7._countAndFlagsBits = sub_100399998();
  sub_100399068(v7);

  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  sub_100399068(v8);
  v9._countAndFlagsBits = sub_100399998();
  sub_100399068(v9);

  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  sub_100399068(v10);
  v11._countAndFlagsBits = sub_100399998();
  sub_100399068(v11);

  v12._countAndFlagsBits = 45;
  v12._object = 0xE100000000000000;
  sub_100399068(v12);
  v13._countAndFlagsBits = sub_100399998();
  sub_100399068(v13);

  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  sub_100399068(v14);
  v15._countAndFlagsBits = sub_100399998();
  sub_100399068(v15);

  return v0;
}

uint64_t sub_1001E74E8()
{

  return swift_deallocClassInstance();
}

void *sub_1001E7584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v19 = a6;
  v20 = sub_100399468();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100399438();
  __chkstk_darwin(v13);
  v14 = sub_100398DD8();
  __chkstk_darwin(v14 - 8);
  v6[2] = 0xD000000000000030;
  v6[3] = 0x8000000100428CF0;
  v6[4] = a1;

  v6[5] = sub_100002E80();
  v6[6] = a3;
  v16 = v18;
  v15 = v19;
  v6[7] = a4;
  v6[8] = v16;
  v6[9] = v15;
  v19 = sub_100004218(0, &qword_1004D40C0);

  sub_100398DC8();
  v21 = _swiftEmptyArrayStorage;
  sub_1001E8074(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_1001E54D4();
  sub_100399658();
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  v6[10] = sub_100399488();
  return v6;
}

uint64_t sub_1001E7820(uint64_t a1)
{
  v18[1] = a1;
  v18[0] = sub_1003982F8();
  v1 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100398268();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1003981B8();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100398238();
  v10 = __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v18 - v13;

  sub_100398198();
  sub_100398228();
  sub_1001E7FB4(v14, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v18[0];
    (*(v1 + 104))(v3, enum case for IDManagerErrorType.unknownEventSource(_:), v18[0]);
    sub_100398278();
    (*(v1 + 8))(v3, v15);
    sub_1001E8018(v14);
    v16 = 0;
    v14 = v12;
  }

  else
  {
    (*(v5 + 32))(v7, v12, v4);
    v16 = sub_100398258();
    (*(v5 + 8))(v7, v4);
  }

  sub_1001E8018(v14);
  return v16;
}

void sub_1001E7B18(uint64_t a1)
{
  v2 = sub_100398D48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003993C8();
  sub_100004218(0, &qword_1004D5D30);
  v7 = sub_1003995B8();
  v8 = *(v3 + 16);
  v8(v5, a1, v2);
  if (os_log_type_enabled(v7, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_1001E8074(&qword_1004D43A8, &type metadata accessor for XPCRichError);
    swift_allocError();
    v8(v11, v5, v2);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v6, "[RotatingIdentifierXPCReceiver] Client cancelled connection. Reason: %@", v9, 0xCu);
    sub_1001E7D5C(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1001E7D5C(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D8610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001E7DC4()
{
  result = qword_1004D43B0;
  if (!qword_1004D43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D43B0);
  }

  return result;
}

void sub_1001E7E18()
{
  sub_100398D88();

  sub_1001E6F3C();
}

unint64_t sub_1001E7E7C()
{
  result = qword_1004D43C0;
  if (!qword_1004D43C0)
  {
    sub_1001E27F0(&qword_1004D43B8);
    sub_1001E7F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D43C0);
  }

  return result;
}

unint64_t sub_1001E7F00()
{
  result = qword_1004D43C8;
  if (!qword_1004D43C8)
  {
    sub_1001E27F0(&qword_1004D43D0);
    sub_1001E8074(&qword_1004D43D8, &type metadata accessor for RotatingIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D43C8);
  }

  return result;
}

uint64_t sub_1001E7FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100398238();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E8018(uint64_t a1)
{
  v2 = sub_100398238();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001E8074(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001E80E4()
{
  v0 = sub_100397798();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397788();
  sub_1001E27A8(&unk_1004D43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000100428D50;
  sub_100004218(0, &qword_1004D4900);
  *(inited + 48) = sub_100399578();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000100428D70;
  *(inited + 72) = sub_100399578();
  *(inited + 80) = 0xD000000000000025;
  *(inited + 88) = 0x8000000100428D90;
  sub_100004218(0, &qword_1004D43F0);
  *(inited + 96) = sub_100399558(1);
  sub_1001EC30C(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DABD0);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(APContext);
  isa = sub_100397768().super.isa;
  sub_1001E27A8(&unk_1004D4400);
  v7 = sub_100398E48().super.isa;

  v8 = [v5 initWithIdentifier:isa maxSize:0 requestedAdIdentifier:0 currentContent:0 adjacentContent:v7 supplementalContext:{200.0, 50.0}];

  (*(v1 + 8))(v3, v0);
  return v8;
}

id sub_1001E8660(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001E86BC()
{
  v0 = sub_100397748();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainDatabase];
  if (v4)
  {
    v5 = v4;
    [objc_opt_self() midnightUTCOfCurrentDay];
    sub_1003976D8();
    v6 = objc_allocWithZone(type metadata accessor for AggregatedTimeSpentStoreDatabase());
    v7 = v5;
    v8 = AggregatedTimeSpentStoreDatabase.init(database:)(v7);
    v9 = (*((swift_isaMask & *v8) + 0x60))(v3);

    if (v9)
    {
      v30 = v7;
      v33 = _swiftEmptyArrayStorage;
      v7 = *(v9 + 16);
      if (v7)
      {
        v10 = 0;
        v31 = _swiftEmptyArrayStorage;
        v26 = v7 - 1;
        v27 = v3;
        v28 = v1;
        v29 = v0;
        while (1)
        {
          v3 = v10;
          while (1)
          {
            if (v3 >= *(v9 + 16))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v11 = *(v9 + 32 + 8 * v3);
            if (v11 >> 62)
            {
              if (!sub_1003997F8())
              {
                goto LABEL_6;
              }
            }

            else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_6;
            }

            if ((v11 & 0xC000000000000001) != 0)
            {

              v13 = sub_100399708();
            }

            else
            {
              if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v12 = *(v11 + 32);

              v13 = v12;
            }

            v14 = v13;
            v15 = *&v13[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier];
            v0 = *&v13[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier + 8];
            v1 = type metadata accessor for AggregatedTimeSpentStorageAdapter();
            v16 = objc_allocWithZone(v1);
            v17 = &v16[OBJC_IVAR____TtC16promotedcontentd33AggregatedTimeSpentStorageAdapter_clientIdentifier];
            *v17 = v15;
            *(v17 + 1) = v0;
            *&v16[OBJC_IVAR____TtC16promotedcontentd33AggregatedTimeSpentStorageAdapter_aggregatedTimeSpentEntries] = v11;
            v32.receiver = v16;
            v32.super_class = v1;

            v18 = objc_msgSendSuper2(&v32, "init");

            if (v18)
            {
              break;
            }

LABEL_6:
            if (v7 == ++v3)
            {
              v1 = v28;
              v0 = v29;
              v3 = v27;
              goto LABEL_28;
            }
          }

          sub_100399168();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1003991B8();
          }

          v10 = (v3 + 1);
          sub_1003991E8();
          v31 = v33;
          v19 = v26 == v3;
          v1 = v28;
          v0 = v29;
          v3 = v27;
          if (v19)
          {
            goto LABEL_28;
          }
        }
      }

      v31 = _swiftEmptyArrayStorage;
LABEL_28:

      (*(v1 + 1))(v3, v0);
      return v31;
    }

    else
    {
      if (qword_1004D3EC8 != -1)
      {
LABEL_33:
        swift_once();
      }

      v20 = sub_100398CA8();
      sub_10000351C(v20, qword_1004DDA10);
      v21 = sub_100398C88();
      v22 = sub_1003993F8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "[AggregatedTimeSpentUtilities] Failed to retrieve time spent entries.", v23, 2u);
      }

      else
      {
      }

      (*(v1 + 1))(v3, v0);
      return 0;
    }
  }

  else
  {
    result = sub_1003997E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E8B3C()
{
  v0 = [objc_opt_self() mainDatabase];
  if (v0)
  {
    v1 = v0;
    v2 = objc_allocWithZone(type metadata accessor for AggregatedTimeSpentStoreDatabase());
    v3 = v1;
    v4 = AggregatedTimeSpentStoreDatabase.init(database:)(v3);
    v5 = (*((swift_isaMask & *v4) + 0x80))();

    if ((v5 & 1) == 0)
    {
      if (qword_1004D3EC8 != -1)
      {
        swift_once();
      }

      v6 = sub_100398CA8();
      sub_10000351C(v6, qword_1004DDA10);
      v7 = sub_100398C88();
      v8 = sub_1003993F8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "[AggregatedTimeSpentUtilities] Failed to remove all time spent entries.", v9, 2u);
      }
    }

    return v5 & 1;
  }

  else
  {
    result = sub_1003997E8();
    __break(1u);
  }

  return result;
}

id sub_1001E8D00(void *a1)
{
  ObjectType = swift_getObjectType();
  v12 = sub_100399468();
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100399438();
  __chkstk_darwin(v6);
  v7 = sub_100398DD8();
  __chkstk_darwin(v7 - 8);
  v8 = &v1[OBJC_IVAR___APRotatingIdentifierXPCListener_queueLabel];
  *v8 = 0xD000000000000030;
  *(v8 + 1) = 0x8000000100429030;
  *&v1[OBJC_IVAR___APRotatingIdentifierXPCListener_listener] = 0;
  *&v1[OBJC_IVAR___APRotatingIdentifierXPCListener_providerFactory] = a1;
  sub_100004218(0, &qword_1004D40C0);
  v11 = a1;
  sub_100398DC8();
  v15 = _swiftEmptyArrayStorage;
  sub_1000042A8(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_1001E54D4();
  sub_100399658();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *&v1[OBJC_IVAR___APRotatingIdentifierXPCListener_queue] = sub_100399488();
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v14, "init");
  sub_1001E8FD0();

  return v9;
}

uint64_t sub_1001E8FD0()
{
  v1 = sub_1003982F8();
  __chkstk_darwin(v1);
  v2 = sub_100398CE8();
  __chkstk_darwin(v2 - 8);
  sub_100398458();
  v3 = *&v0[OBJC_IVAR___APRotatingIdentifierXPCListener_queue];
  *(swift_allocObject() + 16) = v0;
  v4 = v3;
  v5 = v0;
  sub_100398CD8();
  sub_100398D38();
  swift_allocObject();
  *&v5[OBJC_IVAR___APRotatingIdentifierXPCListener_listener] = sub_100398D28();
}

uint64_t sub_1001E922C()
{
  sub_1003993C8();
  sub_100004218(0, &qword_1004D5D30);
  v0 = sub_1003995B8();
  sub_100398B98();

  sub_100398D18();
  return sub_100398CF8();
}

uint64_t sub_1001E9300()
{
  type metadata accessor for RotatingIdentifierXPCReceiver();
  sub_1000042A8(&qword_1004D44B8, type metadata accessor for RotatingIdentifierXPCReceiver);
  return sub_100398D08();
}

void sub_1001E93C8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v11 = *(a1 + OBJC_IVAR___APRotatingIdentifierXPCListener_providerFactory);
  type metadata accessor for RotatingIdentifierXPCReceiver();
  swift_allocObject();
  v12 = v11;

  v14 = sub_1001E7584(v13, v12, a2, a3, a4, a5);

  *a6 = v14;
}

uint64_t sub_1001E9570()
{

  v1 = OBJC_IVAR____TtC16promotedcontentd25PostInstallBackgroundTask_mode;
  v2 = sub_100397E28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostInstallBackgroundTask()
{
  result = qword_1004D44E8;
  if (!qword_1004D44E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E9668()
{
  result = sub_100397E28();
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

uint64_t sub_1001E9704@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16promotedcontentd25PostInstallBackgroundTask_mode;
  v5 = sub_100397E28();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_1001E9780(void *a1)
{
  [a1 setPriority:2];
  [a1 setRequiresExternalPower:0];
  [a1 setRequiresInexpensiveNetworkConnectivity:1];
  [a1 setRequiresUserInactivity:1];
  [a1 setRequiresBuddyComplete:1];
  [a1 setRequiresProtectionClass:4];

  return a1;
}

uint64_t sub_1001E9828@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1001E9874()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C50;

  return sub_1001E9980();
}

unint64_t sub_1001E9928()
{
  result = qword_1004D4610;
  if (!qword_1004D4610)
  {
    type metadata accessor for PostInstallBackgroundTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D4610);
  }

  return result;
}

uint64_t sub_1001E999C()
{
  if (qword_1004D3EC8 != -1)
  {
    swift_once();
  }

  v1 = sub_100398CA8();
  sub_10000351C(v1, qword_1004DDA10);
  v2 = sub_100398C88();
  v3 = sub_1003993C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PostInstall Signal Received", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001E9AFC()
{
  v0 = [objc_opt_self() mainDatabase];
  if (v0)
  {
    v1 = v0;
    sub_1001E9D84();
    v2 = swift_allocObject();
    v2[2] = 0xD000000000000010;
    v2[3] = 0x8000000100429270;
    v2[4] = 0xD000000000000015;
    v2[5] = 0x8000000100429290;
    v3 = objc_allocWithZone(APLegacyFeatureFlags);
    v4 = v1;
    [v3 init];
    sub_100398298();
    swift_allocObject();
    sub_100398288();
    sub_100398478();
    swift_allocObject();

    sub_100398468();
    v5 = objc_allocWithZone(sub_100398448());
    v6 = sub_100398428();

    return v6;
  }

  else
  {
    result = sub_1003997E8();
    __break(1u);
  }

  return result;
}

id sub_1001E9D1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RotatingIdentifierProviderFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001E9D84()
{
  result = qword_1004D46B0;
  if (!qword_1004D46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D46B0);
  }

  return result;
}

uint64_t sub_1001E9DD8()
{
  v0 = sub_100398CA8();
  sub_1001EB3CC(v0, qword_1004DD9E0);
  sub_10000351C(v0, qword_1004DD9E0);
  return sub_100398C98();
}

uint64_t sub_1001E9E5C(double a1)
{
  v2 = v1;
  v4 = sub_100397E28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 56);
  v8 = OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_lock;
  sub_100003554(v1 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_lock, v17);
  sub_1000035B8(v17, v18);
  sub_1003980F8();
  sub_100003894(v17);
  v9 = OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_fetchDelay;
  *(v1 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_fetchDelay) = a1;
  *v7 = a1;
  (*(v5 + 104))(v7, enum case for BackgroundTaskMode.repeating(_:), v4);
  v10 = OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_mode;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v10, v7, v4);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {
    v17[0] = v2;
    sub_1001EB384(&qword_1004D4810, type metadata accessor for PeriodicFetchBackgroundTask);
    sub_100397F58();
  }

  if (qword_1004D3EC0 != -1)
  {
    swift_once();
  }

  v11 = sub_100398CA8();
  sub_10000351C(v11, qword_1004DD9E0);

  v12 = sub_100398C88();
  v13 = sub_1003993E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v2 + v9);
    _os_log_impl(&_mh_execute_header, v12, v13, "[PCPF] scheduled a periodic fetching task with delay %f", v14, 0xCu);
  }

  sub_100003554(v2 + v8, v17);
  sub_1000035B8(v17, v18);
  sub_100398108();
  return sub_100003894(v17);
}

uint64_t sub_1001EA4A0()
{

  v1 = OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_mode;
  v2 = sub_100397E28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();
  sub_100003894(v0 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_lock);
  sub_100003894(v0 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_placementTask);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeriodicFetchBackgroundTask()
{
  result = qword_1004D4758;
  if (!qword_1004D4758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001EA5C8()
{
  result = sub_100397E28();
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

uint64_t sub_1001EA688@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_mode;
  swift_beginAccess();
  v5 = sub_100397E28();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

id sub_1001EA714(void *a1)
{
  [a1 setPriority:1];
  [a1 setRequiresExternalPower:0];
  [a1 setRequiresInexpensiveNetworkConnectivity:1];
  [a1 setRequiresUserInactivity:0];
  [a1 setRequiresBuddyComplete:1];
  [a1 setRequiresProtectionClass:4];

  return a1;
}

uint64_t sub_1001EA7BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C50;

  return sub_1001EC514();
}

char *sub_1001EA8D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1001EA91C(a1, a2);
  sub_1001EAA4C(&off_100464218);
  return v3;
}

char *sub_1001EA91C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1001EAB38(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100399768();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100399078();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001EAB38(v10, 0);
        result = sub_1003996E8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001EAA4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1001EABAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1001EAB38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1001E27A8(&unk_1004D7E50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1001EABAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001E27A8(&unk_1004D7E50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1001EACA0()
{
  v1 = v0;
  v2 = sub_100397E28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1004D3EC0 != -1)
  {
    swift_once();
  }

  v6 = sub_100398CA8();
  sub_10000351C(v6, qword_1004DD9E0);
  v7 = sub_100398C88();
  v8 = sub_1003993E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[PCPF] Completed periodic fetch task", v9, 2u);
  }

  if (sub_1001ECE50())
  {
    result = sub_1001ED080();
    if ((v11 & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_fetchDelay) = result;
      *v5 = result;
      (*(v3 + 104))(v5, enum case for BackgroundTaskMode.repeating(_:), v2);
      v12 = OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_mode;
      swift_beginAccess();
      (*(v3 + 40))(v1 + v12, v5, v2);
      swift_endAccess();
      v13 = sub_100398C88();
      v14 = sub_1003993E8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "[PCPF] the periodic delay has been updated, attempting to reschedule.", v15, 2u);
      }

      result = swift_weakLoadStrong();
      if (result)
      {
        v22 = v1;
        sub_1001EB384(&qword_1004D4810, type metadata accessor for PeriodicFetchBackgroundTask);
        sub_100397F38();
      }
    }
  }

  else
  {
    v16 = sub_100398C88();
    v17 = sub_1003993E8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[PCPF] Periodic fetch task no longer meets the continuation criteria. canceling and removing task.", v18, 2u);
    }

    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = *(v1 + 16);
      v20 = *(v1 + 24);

      v24._countAndFlagsBits = v19;
      v24._object = v20;
      LOBYTE(v19) = sub_100397F08(v24);

      if (v19)
      {
        v22 = v1;
        sub_1001EB384(&qword_1004D4810, type metadata accessor for PeriodicFetchBackgroundTask);
        sub_100397F28();
      }
    }
  }

  return result;
}

uint64_t sub_1001EB384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1001EB3CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001EB430(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000035B8((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_1001EB788();
    v4 = sub_100399198();
  }

  **(*(v3 + 64) + 40) = v4;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1001EB4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1001EB4CC, 0, 0);
}

uint64_t sub_1001EB4CC()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(APMediaServiceRequest) init];
  v0[22] = v2;
  v3 = sub_100398F28();
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001EB638;
  v4 = swift_continuation_init();
  v0[17] = sub_1001E27A8(&qword_1004D4820);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001EB430;
  v0[13] = &unk_100464578;
  v0[14] = v4;
  [v2 runWithParameters:v1 endpoint:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001EB638()
{

  return _swift_task_switch(sub_1001EB718, 0, 0);
}

uint64_t sub_1001EB718()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_1001EB788()
{
  result = qword_1004D4828;
  if (!qword_1004D4828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D4828);
  }

  return result;
}

uint64_t sub_1001EB7D4()
{
  sub_100003894(v0 + 16);
  sub_100003894(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EB838()
{
  v0 = sub_100398CA8();
  sub_1001EB3CC(v0, qword_1004DDA10);
  sub_10000351C(v0, qword_1004DDA10);
  return sub_100398C98();
}

id sub_1001EB8AC(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = a1;
  v50 = sub_100397798();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100397748();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100397818();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100397838();
  v6 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001E27A8(&qword_1004D48F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = [objc_allocWithZone(APMediaServiceRequestParameters) init];
  sub_100398F58();
  v13 = objc_allocWithZone(NSUserDefaults);
  v14 = sub_100398F28();

  v15 = [v13 initWithSuiteName:v14];

  if (v15)
  {
    v16 = v15;
    v17 = v15;
    v18 = sub_100398F28();
    v19 = [v17 objectForKey:v18];

    if (v19)
    {
      sub_100399648();
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0u;
      v51 = 0u;
    }

    v53 = v51;
    v54 = v52;
    v15 = v16;
    if (*(&v52 + 1))
    {
      sub_100004218(0, &qword_1004D48F8);
      if (swift_dynamicCast())
      {
        v20 = v51;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  sub_1001ED244(&v53, &qword_1004D5D40);
  v20 = 0;
LABEL_11:
  sub_1001E27A8(&unk_1004D43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C95F0;
  *(inited + 32) = 0x6F724665726F7473;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = sub_100398F28();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000001004293C0;
  sub_1003977F8();
  sub_100397828();
  (*(v6 + 8))(v8, v40);
  sub_100397808();
  (*(v41 + 8))(v5, v42);
  v22 = sub_1003977C8();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    sub_1001ED244(v11, &qword_1004D48F0);
  }

  else
  {
    sub_1003977B8();
    (*(v23 + 8))(v11, v22);
  }

  v24 = sub_100398F28();

  *(inited + 72) = v24;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001004293E0;
  if (v20)
  {
    v25 = v20;
  }

  else
  {
    sub_100004218(0, &qword_1004D48F8);
    v25 = sub_1003993B8();
  }

  *(inited + 96) = v25;
  *(inited + 104) = 0x5474736575716572;
  *(inited + 112) = 0xEB00000000656D69;
  v26 = v20;
  v27 = v45;
  sub_100397718();
  isa = sub_100397688().super.isa;
  (*(v46 + 8))(v27, v47);
  *(inited + 120) = isa;
  *(inited + 128) = 0x5474736575716552;
  *(inited + 136) = 0xEB00000000657079;
  sub_100004218(0, &qword_1004D4900);
  *(inited + 144) = sub_100399578();
  sub_1001EC30C(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DABD0);
  swift_arrayDestroy();
  v29 = v48;
  sub_100397788();
  v30 = objc_allocWithZone(APContext);
  v31 = sub_100397768().super.isa;
  sub_1001E27A8(&unk_1004D4400);
  v32 = sub_100398E48().super.isa;

  v33 = [v30 initWithIdentifier:v31 maxSize:0 requestedAdIdentifier:0 currentContent:0 adjacentContent:v32 supplementalContext:{0.0, 0.0}];

  v34 = *(v49 + 8);
  v35 = v50;
  v34(v29, v50);
  [v12 setContext:v33];
  [v12 setPlacement:7005];
  [v12 setIdAccount:{objc_msgSend(objc_opt_self(), "privateUserAccount")}];
  swift_unknownObjectRelease();
  sub_100397788();
  v36 = sub_100397768().super.isa;
  v34(v29, v35);
  [v12 setRequestID:v36];

  [v12 setDeliverEntireBatch:1];
  [v12 setPersonalizedAdsEnabled:0];
  v37 = [objc_allocWithZone(APLegacyFeatureFlags) init];
  [v12 setFeatureFlagProvider:v37];

  [v12 setRotatingIdentifiers:0];
  return v12;
}

uint64_t sub_1001EC1D0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_1001EC1DC(uint64_t a1, uint64_t a2)
{
  sub_100399B58();
  sub_100399018();
  v4 = sub_100399B88();

  return sub_1001EC254(a1, a2, v4);
}

unint64_t sub_1001EC254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1003999B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1001EC30C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&unk_1004D6910);
    v3 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1001EC1DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EC410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&qword_1004D4910);
    v3 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1001EC1DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001EC530()
{
  if (qword_1004D3EC0 != -1)
  {
    swift_once();
  }

  v1 = sub_100398CA8();
  v0[6] = sub_10000351C(v1, qword_1004DD9E0);
  v2 = sub_100398C88();
  v3 = sub_1003993C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PCPF] Requesting SLP ad through periodic fetch", v4, 2u);
  }

  v5 = objc_opt_self();
  sub_100004218(0, &unk_1004D48E0);
  v0[7] = [v5 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = objc_opt_self(), swift_unknownObjectRetain(), v8 = [objc_msgSend(v7 "privateUserAccount")], swift_unknownObjectRelease(), v8))
  {
    v9 = sub_100398F58();
    v11 = v10;

    v12 = [v6 pcpfRequestUrl];
    swift_unknownObjectRelease();
    if (v12)
    {
      v13 = sub_100398F58();
      v15 = v14;

      v0[8] = v15;
      v16 = sub_1001EB8AC(v9, v11);
      v0[9] = v16;

      v17 = swift_task_alloc();
      v0[10] = v17;
      *v17 = v0;
      v17[1] = sub_1001EC8EC;

      return (sub_1001EB4A8)(v16, v13, v15);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (qword_1004D3EC8 != -1)
  {
    swift_once();
  }

  sub_10000351C(v1, qword_1004DDA10);
  v19 = sub_100398C88();
  v20 = sub_1003993E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[PCPF] Unable to access config or idAccountDelegate", v21, 2u);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001EC8EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1001ECB78;
  }

  else
  {
    v4 = sub_1001ECA20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001ECA20()
{
  if (*(v0 + 88))
  {
    sub_1001F9C80(*(v0 + 88));

    v1 = sub_100398C88();
    v2 = sub_1003993C8();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 72);
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "[PCPF] Recieved ad through periodic fetch";
  }

  else
  {
    v1 = sub_100398C88();
    v2 = sub_1003993C8();
    v7 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 72);
    if (!v7)
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "[PCPF] Recieved ads was nil";
  }

  _os_log_impl(&_mh_execute_header, v1, v2, v6, v5, 2u);

LABEL_7:
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001ECB78()
{
  v13 = v0;
  swift_errorRetain();
  v1 = sub_100398C88();
  v2 = sub_1003993C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 72);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_100399AC8();
    v8 = sub_100005700(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "[PCPF] Issue requesting ad: %s", v4, 0xCu);
    sub_100003894(v5);

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = *(v0 + 72);
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001ECD28()
{
  v0 = [objc_msgSend(objc_opt_self() "privateUserAccount")];
  swift_unknownObjectRelease();
  if (v0)
  {
    sub_100398F58();

    sub_1001E4D94();
    v1 = sub_100399638();

    if (*(v1 + 16))
    {

      v2 = sub_100398FE8();

      return v2;
    }
  }

  return 0;
}

uint64_t sub_1001ECE50()
{
  v0 = objc_opt_self();
  sub_100004218(0, &unk_1004D48E0);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 pcpfEnabledStorefronts];
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_14:
    if (qword_1004D3EC8 != -1)
    {
      swift_once();
    }

    v14 = sub_100398CA8();
    sub_10000351C(v14, qword_1004DDA10);
    v15 = sub_100398C88();
    v16 = sub_1003993F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "[PCPF] Unable to access config for pcpf", v17, 2u);
    }

    goto LABEL_19;
  }

  v5 = v4;
  v6 = sub_100399198();

  v7 = sub_1001ECD28();
  v9 = v8;
  swift_unknownObjectRelease();
  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = (v6 + 40);
  v11 = *(v6 + 16) + 1;
  while (--v11)
  {
    if (*(v10 - 1) != v7 || v9 != *v10)
    {
      v10 += 2;
      if ((sub_1003999B8() & 1) == 0)
      {
        continue;
      }
    }

    swift_unknownObjectRelease();

    return 1;
  }

LABEL_19:
  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1001ED080()
{
  v0 = objc_opt_self();
  sub_100004218(0, &unk_1004D48E0);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v4 = [v3 pcpfDelay];
    if (v4)
    {
      v5 = v4;
      [v4 integerValue];

      sub_100399388();
      v7 = v6;
      swift_unknownObjectRelease_n();
      return v7;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1004D3EC8 != -1)
  {
    swift_once();
  }

  v9 = sub_100398CA8();
  sub_10000351C(v9, qword_1004DDA10);
  v10 = sub_100398C88();
  v11 = sub_1003993F8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[PCPF] Unable to access config for pcpf", v12, 2u);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1001ED244(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001E27A8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for ObservabilityErrorBucket(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1001ED2B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001ED2F8(uint64_t result, int a2, int a3)
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

unint64_t sub_1001ED344(uint64_t a1)
{
  result = sub_1001ED36C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001ED36C()
{
  result = qword_1004D4918;
  if (!qword_1004D4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D4918);
  }

  return result;
}

uint64_t sub_1001ED3C0()
{
  v0 = sub_100398CA8();
  sub_1001EB3CC(v0, qword_1004DDA28);
  sub_10000351C(v0, qword_1004DDA28);
  return sub_100398C98();
}

uint64_t sub_1001ED440()
{
  sub_100399368();
  v1 = v0;
  type metadata accessor for JetPackCacheBackgroundTask(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16promotedcontentd26JetPackCacheBackgroundTask_mode;
  *(v2 + OBJC_IVAR____TtC16promotedcontentd26JetPackCacheBackgroundTask_mode) = v1;
  v4 = enum case for BackgroundTaskMode.repeating(_:);
  v5 = sub_100397E28();
  result = (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  v7 = (v2 + OBJC_IVAR____TtC16promotedcontentd26JetPackCacheBackgroundTask_id);
  *v7 = 0xD000000000000031;
  v7[1] = 0x8000000100429540;
  qword_1004DDA40 = v2;
  return result;
}

uint64_t sub_1001ED514()
{
  v1 = OBJC_IVAR____TtC16promotedcontentd26JetPackCacheBackgroundTask_mode;
  v2 = sub_100397E28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001ED5EC()
{
  result = sub_100397E28();
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

uint64_t sub_1001ED684@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16promotedcontentd26JetPackCacheBackgroundTask_mode;
  v5 = sub_100397E28();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_1001ED700(void *a1)
{
  v1 = sub_1001EDF34(a1);

  return v1;
}

uint64_t sub_1001ED72C@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC16promotedcontentd26JetPackCacheBackgroundTask_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_1001ED748(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000035B8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1001E27A8(&qword_1004D4818);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001ED820()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  result = swift_dynamicCastUnknownClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_1001ED88C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v56 = a5;
  v8 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_1003974E8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DefaultJetPackCacheBackgroundTaskConfiguration(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v54 = v18;
    v19 = [a1 urlPaths];
    if (v19)
    {
      v52 = v14;
      v53 = v12;
      v20 = v19;
      sub_100398E68();

      if (qword_1004D3ED0 != -1)
      {
        swift_once();
      }

      v21 = sub_100398CA8();
      sub_10000351C(v21, qword_1004DDA28);

      v22 = sub_100398C88();
      v23 = sub_1003993D8();

      v51 = v23;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v50 = a4;
        v25 = v24;
        v49 = swift_slowAlloc();
        v57 = v49;
        *v25 = 136315138;
        v26 = sub_100398E78();
        v28 = sub_100005700(v26, v27, &v57);
        v48 = v22;
        v29 = v11;
        v30 = v16;
        v31 = a1;
        v32 = v10;
        v33 = a2;
        v34 = v15;
        v35 = v28;

        *(v25 + 4) = v35;
        v15 = v34;
        a2 = v33;
        v10 = v32;
        a1 = v31;
        v16 = v30;
        v11 = v29;
        v36 = v48;
        _os_log_impl(&_mh_execute_header, v48, v51, "Loaded JetPack configuration with URLs: %s", v25, 0xCu);
        sub_100003894(v49);

        a4 = v50;
      }

      else
      {
      }

      sub_100398578();

      v40 = sub_100398598();
      (*(*(v40 - 8) + 8))(a2, v40);
      v41 = v53;
      if ((*(v53 + 48))(v10, 1, v11) == 1)
      {
        sub_1001EFA90(v55, a4);
        sub_1001ED244(v10, &qword_1004D4AB8);
        v38 = 1;
      }

      else
      {
        v42 = *(v41 + 32);
        v43 = v52;
        v42(v52, v10, v11);
        v44 = v54;
        v42(v54, v43, v11);
        v45 = (v44 + *(v15 + 20));
        v46 = v56;
        *v45 = v55;
        v45[1] = a4;
        sub_1001EF934(v44, v46);
        v38 = 0;
      }
    }

    else
    {
      v39 = sub_100398598();
      (*(*(v39 - 8) + 8))(a2, v39);
      sub_1001EFA90(v55, a4);

      v38 = 1;
    }
  }

  else
  {
    v37 = sub_100398598();
    (*(*(v37 - 8) + 8))(a2, v37);
    sub_1001EFA90(v55, a4);
    v38 = 1;
  }

  return (*(v16 + 56))(v56, v38, 1, v15);
}

uint64_t sub_1001EDDA4()
{
  sub_1001ED244(v0 + 16, &qword_1004D4AA0);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EDE40()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C50;

  return sub_1001EE048(v2 + 16);
}

void *sub_1001EDF34(void *a1)
{
  [a1 setPriority:1];
  [a1 setRequiresExternalPower:0];
  [a1 setRequiresInexpensiveNetworkConnectivity:1];
  [a1 setRequiresUserInactivity:1];
  [a1 setRequiresBuddyComplete:1];
  [a1 setRequiresProtectionClass:4];
  isa = sub_100399178().super.isa;
  [a1 setInvolvedProcesses:isa];

  v3 = sub_100398F28();
  [a1 setGroupName:v3];

  [a1 setGroupConcurrencyLimit:1];
  return a1;
}

uint64_t sub_1001EE048(uint64_t a1)
{
  v1[54] = a1;
  v2 = sub_100399238();
  v1[55] = v2;
  v1[56] = *(v2 - 8);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v3 = sub_100398608();
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();
  v4 = sub_100398628();
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v1[64] = swift_task_alloc();
  sub_100398BD8();
  v1[65] = swift_task_alloc();
  sub_100398598();
  v1[66] = swift_task_alloc();
  sub_1001E27A8(&qword_1004D4A80);
  v1[67] = swift_task_alloc();
  v5 = type metadata accessor for DefaultJetPackCacheBackgroundTaskConfiguration(0);
  v1[68] = v5;
  v1[69] = *(v5 - 8);
  v1[70] = swift_task_alloc();

  return _swift_task_switch(sub_1001EE2B8, 0, 0);
}

uint64_t sub_1001EE2B8()
{
  sub_100399278();
  v0[71] = 0;
  v1 = [objc_opt_self() adprivacydBag];
  v0[72] = v1;
  v0[2] = v0;
  v0[7] = v0 + 52;
  v0[3] = sub_1001EE4B8;
  v2 = swift_continuation_init();
  v0[25] = sub_1001E27A8(&qword_1004D4A88);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001EFB88;
  v0[21] = &unk_100464650;
  v0[22] = v2;
  [v1 createSnapshotWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001EE4B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 584) = v1;
  if (v1)
  {
    v2 = sub_1001EF15C;
  }

  else
  {
    v2 = sub_1001EE5C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EE5C8()
{
  v1 = v0[72];
  v2 = v0[52];
  v3 = [v2 compile];
  v0[74] = v3;

  v0[10] = v0;
  v0[15] = v0 + 51;
  v0[11] = sub_1001EE718;
  v4 = swift_continuation_init();
  v0[33] = sub_1001E27A8(&qword_1004D4A90);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1001EFB88;
  v0[29] = &unk_100464678;
  v0[30] = v4;
  [v3 resultWithCompletion:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1001EE718()
{
  v1 = *(*v0 + 112);
  *(*v0 + 600) = v1;
  if (v1)
  {
    v2 = sub_1001EF240;
  }

  else
  {
    v2 = sub_1001EE828;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EE828()
{
  v1 = v0[74];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[51];
  v0[76] = v6;

  sub_1001EF878();
  v7 = sub_1001ED820();
  sub_100398588();
  v8 = v6;
  v9 = sub_100397558();
  v11 = v10;

  sub_1001ED88C(v7, v5, v9, v11, v4);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v12 = v0[54];
    sub_1001ED244(v0[67], &qword_1004D4A80);
    sub_1001EF8C4(v12, (v0 + 34));
    if (v0[37])
    {
      v14 = v0[60];
      v13 = v0[61];
      v15 = v0[59];
      sub_1000035B8(v0 + 34, v0[37]);
      (*(v14 + 104))(v13, enum case for JetServiceTelemetryErrorCode.configMissing(_:), v15);
      sub_100398618();
      (*(v14 + 8))(v13, v15);
      sub_100003894((v0 + 34));
    }

    else
    {
      sub_1001ED244((v0 + 34), &qword_1004D4AA0);
    }

    if (qword_1004D3ED0 != -1)
    {
      swift_once();
    }

    v18 = sub_100398CA8();
    sub_10000351C(v18, qword_1004DDA28);
    v19 = sub_100398C88();
    v20 = sub_1003993C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Skipping update. No configuration available.", v21, 2u);
    }

    v17 = v0[1];
    goto LABEL_12;
  }

  v16 = v0[71];
  sub_1001EF934(v0[67], v0[70]);
  sub_100399278();
  if (v16)
  {
    sub_1001EF998(v0[70]);

    v17 = v0[1];
LABEL_12:

    return v17();
  }

  v23 = v0[70];
  v24 = v0[68];
  v26 = v0[63];
  v25 = v0[64];
  v37 = v0[62];
  sub_1003983A8();
  sub_100398358();
  sub_100398BC8();
  sub_100397DF8();
  swift_allocObject();
  sub_100397DE8();
  sub_1003985B8();
  swift_allocObject();
  v0[77] = sub_1003985A8();
  v27 = sub_1001E27A8(&qword_1004D4AA8);
  v28 = (v25 + *(v27 + 48));
  v29 = *(v27 + 64);
  v30 = sub_1003974E8();
  (*(*(v30 - 8) + 16))(v25, v23, v30);
  v31 = (v23 + *(v24 + 20));
  v32 = *v31;
  v33 = v31[1];
  *v28 = *v31;
  v28[1] = v33;
  *(v25 + v29) = 1;
  (*(*(v27 - 8) + 56))(v25, 0, 2, v27);
  (*(v26 + 104))(v25, enum case for IntentMessage.jetPackAssetCache(_:), v37);
  sub_100398708();
  swift_allocObject();
  sub_1001EF9F4(v32, v33);
  v34 = sub_1003986F8();
  v0[78] = v34;
  v38 = &async function pointer to dispatch thunk of JetServiceRequester.dispatch<A>(message:options:) + async function pointer to dispatch thunk of JetServiceRequester.dispatch<A>(message:options:);
  v35 = swift_task_alloc();
  v0[79] = v35;
  *v35 = v0;
  v35[1] = sub_1001EEDD0;
  v36 = v0[64];

  return (v38)(v0 + 49, v36, v34, &type metadata for String, &protocol witness table for String);
}

uint64_t sub_1001EEDD0()
{
  v2 = *v1;
  v2[80] = v0;

  v3 = v2[64];
  v4 = v2[63];
  v5 = v2[62];
  if (v0)
  {
    (*(v4 + 8))(v2[64], v2[62]);

    v6 = sub_1001EF324;
  }

  else
  {

    (*(v4 + 8))(v3, v5);

    v6 = sub_1001EEFB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001EEFB8()
{
  if (qword_1004D3ED0 != -1)
  {
    swift_once();
  }

  v1 = sub_100398CA8();
  sub_10000351C(v1, qword_1004DDA28);
  v2 = sub_100398C88();
  v3 = sub_1003993C8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[76];
  v6 = v0[70];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully completed JetPack cache update.", v7, 2u);

    v8 = v2;
  }

  else
  {
    v8 = v0[76];
    v5 = v2;
  }

  sub_1001EF998(v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001EF15C()
{
  v1 = *(v0 + 576);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EF240()
{
  v1 = *(v0 + 592);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EF324()
{
  v0[53] = v0[80];
  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818);
  if (swift_dynamicCast())
  {
    v1 = v0[57];
    v2 = v0[58];
    v3 = v0[55];
    v4 = v0[56];
    v5 = v0[54];

    (*(v4 + 32))(v1, v2, v3);
    sub_1001EF8C4(v5, (v0 + 44));
    if (v0[47])
    {
      v7 = v0[60];
      v6 = v0[61];
      v8 = v0[59];
      sub_1000035B8(v0 + 44, v0[47]);
      (*(v7 + 104))(v6, enum case for JetServiceTelemetryErrorCode.deferred(_:), v8);
      sub_100398618();
      (*(v7 + 8))(v6, v8);
      sub_100003894((v0 + 44));
    }

    else
    {
      sub_1001ED244((v0 + 44), &qword_1004D4AA0);
    }

    v13 = v0[76];
    v14 = v0[70];
    v16 = v0[56];
    v15 = v0[57];
    v17 = v0[55];
    sub_1001EFA48(&qword_1004D4AB0, &type metadata accessor for CancellationError);
    swift_allocError();
    (*(v16 + 16))(v18, v15, v17);
    swift_willThrow();

    (*(v16 + 8))(v15, v17);
    sub_1001EF998(v14);

    v19 = v0[1];
  }

  else
  {
    v9 = v0[54];

    sub_1001EF8C4(v9, (v0 + 39));
    if (v0[42])
    {
      v11 = v0[60];
      v10 = v0[61];
      v12 = v0[59];
      sub_1000035B8(v0 + 39, v0[42]);
      (*(v11 + 104))(v10, enum case for JetServiceTelemetryErrorCode.updateFailed(_:), v12);
      sub_100398618();
      (*(v11 + 8))(v10, v12);
      sub_100003894((v0 + 39));
    }

    else
    {
      sub_1001ED244((v0 + 39), &qword_1004D4AA0);
    }

    if (qword_1004D3ED0 != -1)
    {
      swift_once();
    }

    v20 = sub_100398CA8();
    sub_10000351C(v20, qword_1004DDA28);
    swift_errorRetain();
    v21 = sub_100398C88();
    v22 = sub_1003993E8();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[76];
    v25 = v0[70];
    if (v23)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to check for a new JetPack. %@", v26, 0xCu);
      sub_1001ED244(v27, &qword_1004D8610);

      v29 = v21;
    }

    else
    {
      v29 = v0[76];
      v24 = v21;
    }

    sub_1001EF998(v25);

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_1001EF840(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001EF878()
{
  result = qword_1004D4A98;
  if (!qword_1004D4A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D4A98);
  }

  return result;
}

uint64_t sub_1001EF8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D4AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EF934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultJetPackCacheBackgroundTaskConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EF998(uint64_t a1)
{
  v2 = type metadata accessor for DefaultJetPackCacheBackgroundTaskConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001EF9F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001EFA48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001EFA90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001EFB0C()
{
  result = sub_1003974E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static DaemonSwiftBridge.postInitInternal()()
{
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    sub_1003983A8();
    result = sub_100398338();
    if (result)
    {

      return [v0 setupJetServiceTestRig];
    }
  }

  return result;
}

id DaemonSwiftBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonSwiftBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id DaemonSwiftBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonSwiftBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001EFCF8()
{
  result = sub_1001EFD18();
  qword_1004D4B50 = result;
  return result;
}

id sub_1001EFD18()
{
  v0 = sub_100397838();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001E27A8(&qword_1004D4B98);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100397848();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100397918();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSDateFormatter) init];
  v15 = sub_100398F28();
  [v14 setDateFormat:v15];

  (*(v7 + 104))(v9, enum case for Calendar.Identifier.iso8601(_:), v6);
  sub_100397858();
  (*(v7 + 8))(v9, v6);
  isa = sub_100397898().super.isa;
  (*(v11 + 8))(v13, v10);
  [v14 setCalendar:isa];

  sub_100397948();
  v17 = sub_100397968();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v5, 1, v17) != 1)
  {
    v19 = sub_100397958().super.isa;
    (*(v18 + 8))(v5, v17);
  }

  [v14 setTimeZone:{v19, v22, v23}];

  sub_1003977A8();
  v20 = sub_1003977D8().super.isa;
  (*(v22 + 8))(v2, v23);
  [v14 setLocale:v20];

  return v14;
}

void sub_1001F00F4()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100398F28();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1001F3404;
    *(v6 + 24) = v5;
    v18 = sub_1001F3488;
    v19 = v6;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1001F0460;
    v17 = &unk_1004648B8;
    v7 = _Block_copy(&v14);

    [v3 subscribeForMessage:v4 handler:v7];
    _Block_release(v7);
  }

  v8 = [v1 sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = sub_100398F28();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1001F33B8;
    *(v12 + 24) = v11;
    v18 = sub_1001F33E4;
    v19 = v12;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1001F0460;
    v17 = &unk_100464840;
    v13 = _Block_copy(&v14);

    [v9 subscribeForMessage:v10 handler:v13];
    _Block_release(v13);
  }
}

uint64_t sub_1001F0358(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100398F58();
  v4 = v3;

  v1(v2, v4);
}

uint64_t sub_1001F03C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  a4(a1, sub_1001F3438, v8);
}

uint64_t sub_1001F0460(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_100399198();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v4(v5, sub_1001F3430, v7);
}

void sub_1001F0524(uint64_t a1, NSString a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_100398F28();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void sub_1001F0580(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  isa = sub_100399178().super.isa;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001F0358;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  [a4 *a6];
  _Block_release(v12);
}

uint64_t sub_1001F0680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_100398FA8();
  v7[9] = swift_task_alloc();
  v8 = sub_100398628();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  sub_100398BD8();
  v7[13] = swift_task_alloc();
  v9 = sub_100397078();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001F07F8, 0, 0);
}

uint64_t sub_1001F07F8()
{
  sub_1003970B8();
  swift_allocObject();
  v0[17] = sub_1003970A8();
  if (qword_1004D3EE0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = qword_1004D4B50;
  *v2 = qword_1004D4B50;
  (*(v1 + 104))(v2, enum case for JSONDecoder.DateDecodingStrategy.formatted(_:), v3);
  v5 = v4;
  sub_100397088();
  sub_1003983A8();
  sub_100398358();
  sub_100398BC8();
  sub_100397DF8();
  swift_allocObject();
  sub_100397DE8();
  sub_1003985B8();
  swift_allocObject();
  v0[18] = sub_1003985A8();
  sub_1001F3360();
  sub_100397098();
  sub_100398708();
  swift_allocObject();
  v6 = sub_1003986F8();
  v0[19] = v6;
  v10 = (&async function pointer to dispatch thunk of JetServiceRequester.dispatchRaw(message:options:) + async function pointer to dispatch thunk of JetServiceRequester.dispatchRaw(message:options:));
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1001F0B38;
  v8 = v0[12];

  return v10(v8, v6);
}

uint64_t sub_1001F0B38(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = sub_1001F0DEC;
  }

  else
  {
    *(v6 + 176) = a2;
    *(v6 + 184) = a1;
    v7 = sub_1001F0C80;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001F0C80()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  sub_100398F98();
  v6._countAndFlagsBits = sub_100398F78();
  if (v6._object)
  {
    object = v6._object;
  }

  else
  {
    v6._countAndFlagsBits = 0x3E6C696E3CLL;
    object = 0xE500000000000000;
  }

  v6._object = object;
  sub_100399068(v6);

  sub_1001EFA90(v1, v2);

  (*(v4 + 8))(v3, v5);
  (*(v0 + 56))(0x65736E6F70736552, 0xEA0000000000203ALL);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001F0DEC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 168);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v8._countAndFlagsBits = 0x203A726F727245;
  v8._object = 0xE700000000000000;
  sub_100399068(v8);
  *(v0 + 32) = v4;
  sub_1001E27A8(&qword_1004D4818);
  sub_1003997C8();

  (*(v0 + 56))(*(v0 + 16), *(v0 + 24));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001F0F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001F2B74(a3, v25 - v10);
  v12 = sub_100399268();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1001ED244(v11, &qword_1004D70F0);
  }

  else
  {
    sub_100399258();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100399228();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100398FD8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1001ED244(a3, &qword_1004D70F0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001ED244(a3, &qword_1004D70F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001F12A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[42] = a5;
  v6[43] = a6;
  v6[41] = a4;
  v7 = sub_100398628();
  v6[44] = v7;
  v6[45] = *(v7 - 8);
  v6[46] = swift_task_alloc();
  sub_100398BD8();
  v6[47] = swift_task_alloc();
  sub_1001E27A8(&qword_1004D4B80);
  v6[48] = swift_task_alloc();
  v8 = sub_1003985D8();
  v6[49] = v8;
  v6[50] = *(v8 - 8);
  v6[51] = swift_task_alloc();

  return _swift_task_switch(sub_1001F142C, 0, 0);
}

uint64_t sub_1001F142C()
{
  v1 = [objc_opt_self() adprivacydBag];
  v0[52] = v1;
  v0[2] = v0;
  v0[7] = v0 + 39;
  v0[3] = sub_1001F156C;
  v2 = swift_continuation_init();
  v0[25] = sub_1001E27A8(&qword_1004D4A88);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001EFB88;
  v0[21] = &unk_100464750;
  v0[22] = v2;
  [v1 createSnapshotWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001F156C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_1001F1E30;
  }

  else
  {
    v2 = sub_1001F167C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F167C()
{
  v1 = v0[52];
  v2 = v0[39];
  v3 = [v2 compile];
  v0[54] = v3;

  v0[10] = v0;
  v0[15] = v0 + 38;
  v0[11] = sub_1001F17CC;
  v4 = swift_continuation_init();
  v0[33] = sub_1001E27A8(&qword_1004D4A90);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1001EFB88;
  v0[29] = &unk_100464778;
  v0[30] = v4;
  [v3 resultWithCompletion:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1001F17CC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_1001F1F54;
  }

  else
  {
    v2 = sub_1001F18DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F18DC()
{
  v1 = v0[54];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[48];
  v5 = v0[41];
  v6 = v0[38];
  v0[56] = v6;

  v7 = v6;
  v8 = sub_100397558();
  v10 = v9;

  sub_1001F21BC(v5, v8, v10, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v11 = v0[42];
    sub_1001ED244(v0[48], &qword_1004D4B80);
    v11(0x2064696C61766E49, 0xEE006E6F69746361);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[51];
    v16 = v0[45];
    v15 = v0[46];
    v17 = v0[44];
    sub_1001F2F54(v0[48], v14, &type metadata accessor for JetPackAssetCacheAction);
    sub_1003983A8();
    sub_100398358();
    sub_100398BC8();
    sub_100397DF8();
    swift_allocObject();
    sub_100397DE8();
    sub_1003985B8();
    swift_allocObject();
    v0[57] = sub_1003985A8();
    sub_1001F2E8C(v14, v15);
    (*(v16 + 104))(v15, enum case for IntentMessage.jetPackAssetCache(_:), v17);
    sub_100398708();
    swift_allocObject();
    v18 = sub_1003986F8();
    v0[58] = v18;
    v21 = &async function pointer to dispatch thunk of JetServiceRequester.dispatch<A>(message:options:) + async function pointer to dispatch thunk of JetServiceRequester.dispatch<A>(message:options:);
    v19 = swift_task_alloc();
    v0[59] = v19;
    *v19 = v0;
    v19[1] = sub_1001F1BD0;
    v20 = v0[46];

    return (v21)(v0 + 36, v20, v18, &type metadata for String, &protocol witness table for String);
  }
}

uint64_t sub_1001F1BD0()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  (*(v2[45] + 8))(v2[46], v2[44]);

  if (v0)
  {
    v3 = sub_1001F2078;
  }

  else
  {
    v3 = sub_1001F1D54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F1D54()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 408);
  (*(v0 + 336))(*(v0 + 288), *(v0 + 296));

  sub_1001F2FBC(v2, &type metadata accessor for JetPackAssetCacheAction);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F1E30()
{
  v1 = v0[52];
  swift_willThrow();

  v2 = v0[53];
  v3 = v0[42];
  v0[34] = 0;
  v0[35] = 0xE000000000000000;
  v7._countAndFlagsBits = 0x203A726F727245;
  v7._object = 0xE700000000000000;
  sub_100399068(v7);
  v0[40] = v2;
  sub_1001E27A8(&qword_1004D4818);
  sub_1003997C8();
  v3(v0[34], v0[35]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001F1F54()
{
  v1 = v0[54];
  swift_willThrow();

  v2 = v0[55];
  v3 = v0[42];
  v0[34] = 0;
  v0[35] = 0xE000000000000000;
  v7._countAndFlagsBits = 0x203A726F727245;
  v7._object = 0xE700000000000000;
  sub_100399068(v7);
  v0[40] = v2;
  sub_1001E27A8(&qword_1004D4818);
  sub_1003997C8();
  v3(v0[34], v0[35]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001F2078()
{
  v1 = v0[56];
  v2 = v0[51];

  sub_1001F2FBC(v2, &type metadata accessor for JetPackAssetCacheAction);
  v3 = v0[60];
  v4 = v0[42];
  v0[34] = 0;
  v0[35] = 0xE000000000000000;
  v8._countAndFlagsBits = 0x203A726F727245;
  v8._object = 0xE700000000000000;
  sub_100399068(v8);
  v0[40] = v3;
  sub_1001E27A8(&qword_1004D4818);
  sub_1003997C8();
  v4(v0[34], v0[35]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001F21BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100398598();
  __chkstk_darwin(v8 - 8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D4A80);
  __chkstk_darwin(v10 - 8);
  v57 = &v51 - v11;
  v12 = type metadata accessor for DefaultJetPackCacheBackgroundTaskConfiguration(0);
  v55 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - v15;
  v17 = sub_1003974E8();
  v58 = *(v17 - 8);
  v59 = v17;
  __chkstk_darwin(v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1003985D8();
  v20 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_1001E27A8(&unk_1004D9A20);
  sub_1001F2EF0();
  if ((sub_100399398() & 1) == 0)
  {
    sub_1001EFA90(a2, a3);

    goto LABEL_9;
  }

  v51 = a2;
  v52 = a3;
  v53 = a4;
  v22 = a1[2];
  if (!v22)
  {
    sub_1001EFA90(v51, v52);

    v27 = 1;
    a4 = v53;
    return (*(v20 + 56))(a4, v27, 1, v61);
  }

  v24 = a1[4];
  v23 = a1[5];
  if ((v24 != 0x7261656C63 || v23 != 0xE500000000000000) && (sub_1003999B8() & 1) == 0)
  {
    if ((v24 != 0x6863746566 || v23 != 0xE500000000000000) && (sub_1003999B8() & 1) == 0)
    {

      if (v24 == 0x6E6F6973726576 && v23 == 0xE700000000000000)
      {
        sub_1001EFA90(v51, v52);

        a4 = v53;
      }

      else
      {
        v49 = sub_1003999B8();
        sub_1001EFA90(v51, v52);

        a4 = v53;
        if ((v49 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v50 = sub_1001E27A8(&qword_1004D4AA8);
      v26 = v60;
      (*(*(v50 - 8) + 56))(v60, 2, 2, v50);
      goto LABEL_7;
    }

    if (v22 == 1)
    {

      a4 = v53;
    }

    else
    {

      sub_1003974B8();

      v30 = v58;
      v29 = v59;
      v31 = (*(v58 + 48))(v16, 1, v59);
      a4 = v53;
      if (v31 != 1)
      {
        v42 = *(v30 + 32);
        v42(v19, v16, v29);
        v43 = sub_1001E27A8(&qword_1004D4AA8);
        v44 = v29;
        v45 = v43;
        v26 = v60;
        v46 = &v60[*(v43 + 48)];
        v47 = *(v43 + 64);
        v42(v60, v19, v44);
        v48 = v52;
        *v46 = v51;
        *(v46 + 1) = v48;
        *(v26 + v47) = 0;
        (*(*(v45 - 8) + 56))(v26, 0, 2, v45);
        goto LABEL_7;
      }

      sub_1001ED244(v16, &qword_1004D4AB8);
    }

    v32 = v51;
    sub_1001EF878();
    v33 = sub_1001ED820();
    v34 = v56;
    sub_100398588();
    v35 = v52;
    sub_1001EF9F4(v32, v52);
    v36 = v57;
    sub_1001ED88C(v33, v34, v32, v35, v57);
    if ((*(v55 + 48))(v36, 1, v12) != 1)
    {
      v37 = v54;
      sub_1001F2F54(v36, v54, type metadata accessor for DefaultJetPackCacheBackgroundTaskConfiguration);
      v38 = sub_1001E27A8(&qword_1004D4AA8);
      v39 = v60;
      v40 = &v60[*(v38 + 48)];
      v41 = *(v38 + 64);
      (*(v58 + 16))(v60, v37, v59);
      sub_1001F2FBC(v37, type metadata accessor for DefaultJetPackCacheBackgroundTaskConfiguration);
      *v40 = v32;
      v40[1] = v35;
      v26 = v39;
      v39[v41] = 0;
      (*(*(v38 - 8) + 56))(v39, 0, 2, v38);
      goto LABEL_7;
    }

    sub_1001EFA90(v32, v35);
    sub_1001ED244(v36, &qword_1004D4A80);
LABEL_9:
    v27 = 1;
    return (*(v20 + 56))(a4, v27, 1, v61);
  }

  sub_1001EFA90(v51, v52);

  v25 = sub_1001E27A8(&qword_1004D4AA8);
  v26 = v60;
  (*(*(v25 - 8) + 56))(v60, 1, 2, v25);
  a4 = v53;
LABEL_7:
  sub_1001F2F54(v26, a4, &type metadata accessor for JetPackAssetCacheAction);
  v27 = 0;
  return (*(v20 + 56))(a4, v27, 1, v61);
}

uint64_t sub_1001F2AAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C50;

  return sub_1001F12A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001F2B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D70F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F2BE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001F2CDC;

  return v6(a1);
}

uint64_t sub_1001F2CDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001F2DD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C50;

  return sub_1001F2BE4(a1, v4);
}

uint64_t sub_1001F2E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003985D8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F2EF0()
{
  result = qword_1004D4B88;
  if (!qword_1004D4B88)
  {
    sub_1001E27F0(&unk_1004D9A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D4B88);
  }

  return result;
}

uint64_t sub_1001F2F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F2FBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001F301C(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  if (*(a1 + 16) == 1)
  {
    _Block_copy(a2);

    v8 = sub_100397508();
    v10 = v9;

    if (v10 >> 60 != 15)
    {
      v11 = sub_100399268();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v8;
      v12[5] = v10;
      v12[6] = sub_1001F3484;
      v12[7] = v7;

      sub_1001F0F40(0, 0, v6, &unk_1003C98F0, v12);

      return;
    }
  }

  else
  {
    _Block_copy(a2);
  }

  v15 = sub_100398F28();
  (a2)[2](a2, v15);

  v13 = v15;
}

void sub_1001F3234()
{
  v1 = *(v0 + 16);
  v2 = sub_100398F28();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1001F328C(uint64_t a1)
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
  v10[1] = sub_1001F3474;

  return sub_1001F0680(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1001F3360()
{
  result = qword_1004D4B90;
  if (!qword_1004D4B90)
  {
    sub_100398628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D4B90);
  }

  return result;
}

uint64_t sub_1001F33EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001F3544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DevicePipelinesHousekeepingAdapter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F359C()
{
  sub_1001F35E8();
  sub_100397F68();
  swift_allocObject();
  result = sub_100397F18();
  qword_1004DDA68 = result;
  return result;
}

uint64_t sub_1001F35E8()
{
  v8 = sub_100399468();
  v0 = *(v8 - 8);
  __chkstk_darwin(v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100398DD8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100399438();
  __chkstk_darwin(v4);
  v7[1] = sub_1001E3174();
  sub_1001E27A8(&qword_1004D4C08);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1003C9930;
  sub_100399428();
  v9 = v5;
  sub_1001F5504(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_100004380(&qword_1004D40D8, &qword_1004D40D0);
  sub_100399658();
  sub_100398DC8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return sub_100399488();
}

uint64_t sub_1001F38AC()
{
  sub_1003985F8();
  swift_allocObject();
  result = sub_1003985E8();
  qword_1004DDA70 = result;
  return result;
}

uint64_t sub_1001F3B44()
{
  if (qword_1004D3EC8 != -1)
  {
    swift_once();
  }

  v1 = sub_100398CA8();
  sub_10000351C(v1, qword_1004DDA10);
  v2 = sub_100398C88();
  v3 = sub_1003993C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OS update detected, attempting to download new JetPack...", v4, 2u);
  }

  if (qword_1004D3EF0 != -1)
  {
    swift_once();
  }

  v5 = qword_1004DDA70;
  v0[5] = sub_1003985F8();
  v0[6] = &protocol witness table for JetServiceTelemetryRecorder;
  v0[2] = v5;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1001F3D04;

  return sub_1001EE048((v0 + 2));
}

uint64_t sub_1001F3D04()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001F3E50, 0, 0);
  }

  else
  {
    sub_1001ED244(v2 + 16, &qword_1004D4AA0);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001F3E50()
{
  sub_1001ED244(v0 + 16, &qword_1004D4AA0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F3EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1001F2B74(a3, v22 - v9);
  v11 = sub_100399268();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1001ED244(v10, &qword_1004D70F0);
  }

  else
  {
    sub_100399258();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100399228();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100398FD8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_1001F41AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlobalState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *sub_1001F4208(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = sub_1003979C8();
  __chkstk_darwin(v10);
  v36 = &type metadata for SLPFetchPlacementTask;
  v37 = sub_1001F5460();
  v35[0] = a2;
  v35[1] = a3;
  swift_weakInit();
  swift_weakAssign();
  sub_100003554(v35, a5 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_placementTask);
  v32[0] = _swiftEmptyArrayStorage;
  sub_1001F5504(&qword_1004D4C18, &type metadata accessor for UnfairLock.Options);
  sub_1001E27A8(&qword_1004D4C20);
  sub_100004380(&qword_1004D4C28, &qword_1004D4C20);
  sub_100399658();
  v11 = sub_1003979E8();
  swift_allocObject();
  v12 = sub_1003979D8();
  v13 = (a5 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_lock);
  v13[3] = v11;
  v13[4] = &protocol witness table for UnfairLock;
  *v13 = v12;
  sub_100399368();
  *(a5 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_fetchDelay) = v14;
  v15 = OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_mode;
  *(a5 + OBJC_IVAR____TtC16promotedcontentd27PeriodicFetchBackgroundTask_mode) = v14;
  v16 = enum case for BackgroundTaskMode.repeating(_:);
  v17 = sub_100397E28();
  (*(*(v17 - 8) + 104))(a5 + v15, v16, v17);
  sub_1003996F8(46);

  v32[0] = 0xD00000000000002CLL;
  v32[1] = 0x8000000100429730;
  v18 = sub_1000035B8(v35, v36);
  v19 = *v18;
  v20 = v18[1];

  v38._countAndFlagsBits = v19;
  v38._object = v20;
  sub_100399068(v38);

  a5[2] = 0xD00000000000002CLL;
  a5[3] = 0x8000000100429730;
  if (a4)
  {
    if (qword_1004D3EC0 != -1)
    {
      swift_once();
    }

    v21 = sub_100398CA8();
    sub_10000351C(v21, qword_1004DD9E0);
    sub_100003554(v35, v32);
    v22 = sub_100398C88();
    v23 = sub_1003993E8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      v26 = sub_1000035B8(v32, v33);
      v27 = *v26;
      v28 = v26[1];

      sub_100003894(v32);
      v29 = sub_100005700(v27, v28, &v31);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "[PCPF] attempting to a register periodic fetch %s background task", v24, 0xCu);
      sub_100003894(v25);
    }

    else
    {

      sub_100003894(v32);
    }

    v31 = a5;
    v33 = v9;
    v34 = sub_1001F5504(&unk_1004D4C30, type metadata accessor for PeriodicFetchBackgroundTask);
    v32[0] = a5;
    sub_1001F5504(&qword_1004D4810, type metadata accessor for PeriodicFetchBackgroundTask);

    sub_100397F48();

    sub_100003894(v32);
  }

  else
  {
  }

  sub_100003894(v35);
  return a5;
}

uint64_t sub_1001F46D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v56 = &type metadata for SLPFetchPlacementTask;
  v8 = sub_1001F5460();
  v57 = v8;
  v55[0] = a1;
  v55[1] = a2;
  if (swift_weakLoadStrong())
  {
    sub_100003554(v55, v53);
    v9 = sub_1001F54B4(v53, v54);
    __chkstk_darwin(v9);
    v11 = (&v52[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = v11[1];
    v52[3] = &type metadata for SLPFetchPlacementTask;
    v52[4] = v8;
    v52[0] = v13;
    v52[1] = v14;
    type metadata accessor for PeriodicFetchBackgroundTask();
    v15 = swift_allocObject();
    v16 = sub_1001F54B4(v52, &type metadata for SLPFetchPlacementTask);
    __chkstk_darwin(v16);
    v18 = (&v52[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v21 = v18[1];

    v23 = sub_1001F4208(v22, v20, v21, 1, v15);
    sub_100003894(v52);
    sub_100003894(v53);
    v24 = sub_1000035B8(v55, v56);
    v25 = *v24;
    v26 = v24[1];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1001F74FC(v23, v25, v26, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v52[0];
    swift_endAccess();
    if ((a3 & 1) == 0)
    {
      goto LABEL_18;
    }

    v28 = v23[2];
    v29 = v23[3];

    v58._countAndFlagsBits = v28;
    v58._object = v29;
    LOBYTE(v28) = sub_100397F08(v58);

    if (v28)
    {
      if (qword_1004D3EC0 != -1)
      {
        swift_once();
      }

      v30 = sub_100398CA8();
      sub_10000351C(v30, qword_1004DD9E0);
      sub_100003554(v55, v53);
      v31 = sub_100398C88();
      v32 = sub_1003993E8();
      if (!os_log_type_enabled(v31, v32))
      {

        sub_100003894(v53);
        return sub_100003894(v55);
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52[0] = v34;
      *v33 = 136315138;
      v35 = sub_1000035B8(v53, v54);
      v36 = *v35;
      v37 = v35[1];

      sub_100003894(v53);
      v38 = sub_100005700(v36, v37, v52);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "[PCPF] did not schedule task %s, task already is scheduled", v33, 0xCu);
      sub_100003894(v34);

      goto LABEL_19;
    }

    v44 = sub_1000035B8(v55, v56);
    if (*(*(a4 + 16) + 16))
    {
      v46 = *v44;
      v45 = v44[1];

      sub_1001EC1DC(v46, v45);
      if ((v47 & 1) == 0)
      {

        return sub_100003894(v55);
      }

      v48 = sub_1001ED080();
      if ((v49 & 1) == 0)
      {
        sub_1001E9E5C(*&v48);
      }
    }

    else
    {
LABEL_18:
    }

LABEL_19:

    return sub_100003894(v55);
  }

  v39 = qword_1004D3EC0;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = sub_100398CA8();
  sub_10000351C(v40, qword_1004DD9E0);
  v41 = sub_100398C88();
  v42 = sub_1003993E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "[PCPF] could not schedule period fetch task because BackgroundTaskScheduler does not exist", v43, 2u);
  }

  return sub_100003894(v55);
}

uint64_t sub_1001F4C8C(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for ObservabilityManager();
  v14[3] = type metadata accessor for ObservabilityXPCTimerActivity();
  v14[4] = &off_100464A28;
  v14[0] = a1;
  v6 = a1;
  v7 = static ObservabilityManager.create(with:database:)(v14, a2);
  sub_100003894(v14);
  qword_1004DDA58 = v7;

  sub_100397DB8();
  qword_1004DDA60 = sub_100397D88();

  if (qword_1004D3EC8 != -1)
  {
    swift_once();
  }

  v8 = sub_100398CA8();
  sub_10000351C(v8, qword_1004DDA10);
  v9 = sub_100398C88();
  v10 = sub_1003993D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109632;
    sub_1003983A8();
    *(v11 + 4) = sub_100398378() & 1;
    *(v11 + 8) = 1024;
    *(v11 + 10) = sub_100398388() & 1;
    *(v11 + 14) = 1024;
    *(v11 + 16) = sub_100398398() & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "ODCA P0 enabled: %{BOOL}d, ODCA P1 enabled: %{BOOL}d, ODCA P0_1 enabled: %{BOOL}d", v11, 0x14u);
  }

  sub_1003983A8();
  result = sub_100398368();
  if (result)
  {
    type metadata accessor for DevicePipelinesModule();
    swift_allocObject();
    v13 = a2;
    swift_unknownObjectRetain();
    off_1004D4BC8 = DevicePipelinesModule.init(database:signing:)(v13, a3);
  }

  return result;
}

uint64_t sub_1001F5070(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  sub_1003983A8();
  result = sub_100398338();
  if ((result & 1) != 0 && off_1004D4BC8)
  {
    if (qword_1004D3EE8 != -1)
    {
      swift_once();
    }

    if (qword_1004D3ED8 != -1)
    {
      swift_once();
    }

    v15[5] = qword_1004DDA40;
    v6 = qword_1004D3EF0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_1004DDA70;
    v8 = sub_1003985F8();
    v9 = type metadata accessor for JetPackCacheBackgroundTask.Handler();
    v10 = swift_allocObject();
    v10[2] = v7;
    v10[5] = v8;
    v10[6] = &protocol witness table for JetServiceTelemetryRecorder;
    v15[3] = v9;
    v15[4] = sub_1001F5504(&qword_1004D4BF8, type metadata accessor for JetPackCacheBackgroundTask.Handler);
    v15[0] = v10;
    type metadata accessor for JetPackCacheBackgroundTask(0);
    sub_1001F5504(&qword_1004D4C00, type metadata accessor for JetPackCacheBackgroundTask);

    sub_100397F48();

    result = sub_100003894(v15);
    if (a1)
    {
      v11 = (a1 + OBJC_IVAR___APMigrationContext_previousVersion);
      if ((*(a1 + OBJC_IVAR___APMigrationContext_previousVersion + 24) & 1) != 0 || (v14 = a1 + OBJC_IVAR___APMigrationContext_currentVersion, *v11 != *(a1 + OBJC_IVAR___APMigrationContext_currentVersion)) || v11[1] != *(v14 + 8) || v11[2] != *(v14 + 16))
      {
        v12 = sub_100399268();
        (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        sub_1001F3EC4(0, 0, v4, &unk_1003C9970, v13);

        return sub_1001ED244(v4, &qword_1004D70F0);
      }
    }
  }

  return result;
}

uint64_t sub_1001F53B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C50;

  return sub_1001F3B28();
}

unint64_t sub_1001F5460()
{
  result = qword_1004D4C10;
  if (!qword_1004D4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D4C10);
  }

  return result;
}

uint64_t sub_1001F54B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1001F5504(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1001F554C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}