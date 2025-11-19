uint64_t sub_100067888()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = (v0 + v3);
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

  v17 = *(v0 + v4 + 8);

  v18 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_100067A60()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100067AA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067AD8()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = v11[1];

  sub_100007BAC(v11 + 3);
  v14 = v1[10];
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  v16 = *(v11 + v1[11]);

  v17 = *(v11 + v1[12]);

  v18 = *(v11 + v1[13]);

  v19 = *(v11 + v1[14]);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100067C94()
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

uint64_t sub_100067D58(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100067E04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void **sub_100067EFC@<X0>(void **result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    result = v3;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100067F50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067F88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067FC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100068010()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100068060()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1000680B4()
{
  v1 = *(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_1000681E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068218()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006829C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100068354(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
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

uint64_t sub_1000683F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100068470()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000684B0()
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

uint64_t sub_100068574()
{
  v1 = type metadata accessor for PairingSuccessResult();
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

uint64_t sub_10006864C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_10006870C(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

_BYTE *sub_100068810@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[41] = 0;
  return result;
}

uint64_t sub_100068834()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068870()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);
  v9 = (v6 + v1[8]);
  v10 = v9[5];
  sub_10067B5AC(*v9, v9[1], v9[2], v9[3], v9[4]);
  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000689B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100068ABC()
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

  return _swift_deallocObject(v0, v8 + 16, v4 | 7);
}

uint64_t sub_100068B90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068BE0()
{
  v1 = v0[2];

  sub_100016590(v0[4], v0[5]);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100068C20()
{
  sub_10067F4FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), sub_100016590);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100068C74()
{
  v1 = v0[2];

  sub_10067F4FC(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], sub_100016590);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100068CD8()
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

uint64_t sub_100068DE8()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64) + v3;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);
  v9 = (v6 + v1[8]);
  v10 = v9[5];
  sub_10067B5AC(*v9, v9[1], v9[2], v9[3], v9[4]);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_100068F18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068F50()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (type metadata accessor for AccessoryCommand() - 8);
  v8 = *(*v7 + 80);
  v9 = (v6 + v5 + v8) & ~v8;
  v21 = v3 | v8;
  v10 = (*(*v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  v12 = *(v0 + 24);

  v13 = *(v2 + 8);
  v13(v0 + v4, v1);
  v13(v0 + v6, v1);
  v13(v0 + v9, v1);
  v13(v0 + v9 + v7[7], v1);
  v14 = (v0 + v9 + v7[8]);
  v15 = v14[5];
  sub_10067B5AC(*v14, v14[1], v14[2], v14[3], v14[4]);
  v16 = *(v0 + v10);

  v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17);

  return _swift_deallocObject(v0, v17 + 8, v21 | 7);
}

uint64_t sub_100069148()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (type metadata accessor for AccessoryCommand() - 8);
  v8 = *(*v7 + 80);
  v9 = (v6 + v5 + v8) & ~v8;
  v19 = v3 | v8;
  v10 = (*(*v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  v12 = *(v0 + 24);

  v13 = *(v2 + 8);
  v13(v0 + v4, v1);
  v13(v0 + v6, v1);
  v13(v0 + v9, v1);
  v13(v0 + v9 + v7[7], v1);
  v14 = (v0 + v9 + v7[8]);
  v15 = v14[5];
  sub_10067B5AC(*v14, v14[1], v14[2], v14[3], v14[4]);
  v16 = *(v0 + v10);

  v17 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v17 + 8, v19 | 7);
}

uint64_t sub_100069328()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  v9 = v0 + v3;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v11(v9 + v1[7], v10);
  v12 = (v9 + v1[8]);
  v13 = v12[5];
  sub_10067B5AC(*v12, v12[1], v12[2], v12[3], v12[4]);
  v14 = *(v0 + v4);

  v15 = *(v0 + v6);

  v16 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16, v2 | 7);
}

uint64_t sub_1000694B0()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  sub_10067FBEC(*(v0 + 24), *(v0 + 32));
  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);
  v9 = (v6 + v1[8]);
  v10 = v9[5];
  sub_10067B5AC(*v9, v9[1], v9[2], v9[3], v9[4]);
  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000695F4()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  sub_10067FBEC(*(v0 + 16), *(v0 + 24));
  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[7], v6);
  v8 = (v0 + v3 + v1[8]);
  v9 = v8[5];
  sub_10067B5AC(*v8, v8[1], v8[2], v8[3], v8[4]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100069728()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v20 = v2 | v7;
  v10 = (v9 + v7 + v8) & ~v7;
  v11 = (v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  v13 = *(v0 + 24);

  v14 = v0 + v3;
  v15 = *(v6 + 8);
  v15(v14, v5);
  v15(v14 + v1[7], v5);
  v16 = (v14 + v1[8]);
  v17 = v16[5];
  sub_10067B5AC(*v16, v16[1], v16[2], v16[3], v16[4]);
  v18 = *(v0 + v4 + 8);

  v15(v0 + v8, v5);
  v15(v0 + v10, v5);

  return _swift_deallocObject(v0, v11 + 8, v20 | 7);
}

uint64_t sub_100069908()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069944()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006997C()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v9 + v7 + v8) & ~v7;
  v12 = *(v0 + 2);

  v13 = *(v0 + 3);

  v14 = *(v0 + 5);

  v15 = &v0[v3];
  v16 = *(v6 + 8);
  v16(v15, v5);
  v16(&v15[v1[7]], v5);
  v17 = &v15[v1[8]];
  v18 = v17[5];
  sub_10067B5AC(*v17, v17[1], v17[2], v17[3], v17[4]);
  v16(&v0[v8], v5);
  v16(&v0[v11], v5);

  return _swift_deallocObject(v0, v11 + v9, v10 | 7);
}

uint64_t sub_100069B44()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[7], v7);
  v9 = (v0 + v3 + v1[8]);
  v10 = v9[5];
  sub_10067B5AC(*v9, v9[1], v9[2], v9[3], v9[4]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100069C74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100069D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_101124F50(0, v1, 0);
  v2 = a1 + 56;
  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v2 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v6 + 36);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    result = **(&off_10162F760 + *(*(v6 + 48) + v5));
    if (v11 >= v12 >> 1)
    {
      v20 = v12 > 1;
      v21 = result;
      sub_101124F50(v20, v11 + 1, 1);
      result = v21;
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    _swiftEmptyArrayStorage[v11 + 4] = result;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v2 = a1 + 56;
    v13 = *(a1 + 56 + 8 * v10);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v8 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v23;
    }

    else
    {
      v15 = v10 << 6;
      v16 = v10 + 1;
      v17 = (a1 + 64 + 8 * v10);
      v9 = v23;
      while (v16 < (v8 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_1000BB408(v5, v24, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v5, v24, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100069F5C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 17, v3 | 7);
}

uint64_t sub_10006A02C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A064()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A0A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006A0F4()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v22 = v2 | v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  v12 = *(v0 + 24);

  v13 = v0 + v3;
  sub_100016590(*v13, *(v13 + 8));
  v14 = *(v6 + 8);
  v14(v13 + v1[8], v5);
  v15 = v1[9];
  v16 = type metadata accessor for MACAddress();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);
  v17 = *(v13 + v1[11] + 8);

  v18 = *(v13 + v1[12]);

  v14(v0 + v8, v5);
  v19 = *(v0 + v9);

  v20 = *(v0 + v10);

  return _swift_deallocObject(v0, v10 + 8, v22 | 7);
}

uint64_t sub_10006A2E8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[11] + 8);

  v11 = *(v5 + v1[12]);

  v12 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10006A444()
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

uint64_t sub_10006A5A4()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v20 = *(*v1 + 64);
  v19 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  v18 = *(*(v7 - 8) + 8);
  v18(v5 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v11 = *(v5 + v1[11] + 8);

  v12 = *(v5 + v1[12]);

  v13 = *(v0 + v19);

  v14 = (v2 + v19 + 8) & ~v2;
  sub_100016590(*(v0 + v14), *(v0 + v14 + 8));
  v18(v0 + v14 + v1[8], v7);
  v10(v0 + v14 + v1[9], v9);
  v15 = *(v0 + v14 + v1[11] + 8);

  v16 = *(v0 + v14 + v1[12]);

  return _swift_deallocObject(v0, v14 + v20, v2 | 7);
}

uint64_t sub_10006A7A4()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v38 = *(*(v1 - 1) + 64);

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
      v37 = (v2 + 24) & ~v2;
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
      v37 = (v2 + 24) & ~v2;
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

  v30 = (v38 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v32 = *(v4 + v1[14] + 8);

  v33 = *(v4 + v1[15] + 8);

  v34 = *(v0 + v30);

  v35 = *(v0 + v31);

  return _swift_deallocObject(v0, v31 + 8, v2 | 7);
}

uint64_t sub_10006AB38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006AB70()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
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
  v10 = *(v6 + v1[10] + 8);

  v11 = *(v6 + v1[11] + 8);

  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10006ACC4()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v17 = *(*v1 + 64);
  v4 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 8) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v10(v7 + v1[8], v9);
  v11 = *(v7 + v1[10] + 8);

  v12 = *(v7 + v1[11] + 8);

  v13 = *(v0 + v4);

  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v10(v0 + v5 + v1[7], v9);
  v10(v0 + v5 + v1[8], v9);
  v14 = *(v0 + v5 + v1[10] + 8);

  v15 = *(v0 + v5 + v1[11] + 8);

  return _swift_deallocObject(v0, v5 + v17, v2 | 7);
}

uint64_t sub_10006AEA4()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v66 = *(*(v1 - 1) + 80);
  v2 = (v66 + 24) & ~v66;
  v63 = *(*(v1 - 1) + 64);
  v3 = (v63 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v64 = v0;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v65 = *(v8 + 8);
  v65(v5 + v6, v7);
  v9 = (v5 + v1[6]);
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
      v65(v9, v7);
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v65(v9, v7);
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
  v23 = v3;
  v24 = v1[7];
  v61 = *(v8 + 48);
  if (!v61(v5 + v24, 1, v7))
  {
    v65(v5 + v24, v7);
  }

  v25 = v66 + v3 + 8;
  v26 = v1[8];
  v27 = type metadata accessor for Date();
  v28 = (*(v27 - 8) + 8);
  v60 = *v28;
  (*v28)(v5 + v26, v27);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v29 = (v5 + v1[10]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = v25 & ~v66;
  v32 = (v5 + v1[11]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_100016590(*v32, v33);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v34 = *(v5 + v1[14] + 8);

  v35 = *(v5 + v1[15] + 8);

  v36 = *(v64 + v23);

  v62 = v31;
  v37 = v64 + v31;
  sub_100016590(*v37, *(v37 + 8));
  v65(v64 + v31 + v1[5], v7);
  v38 = (v64 + v31 + v1[6]);
  v39 = swift_getEnumCaseMultiPayload();
  if (v39 <= 1)
  {
    if (v39)
    {
      if (v39 != 1)
      {
        goto LABEL_33;
      }

      v40 = v38[1];

      v41 = v38[3];

      v42 = v38 + 5;
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  switch(v39)
  {
    case 2:
      v65(v38, v7);
      v43 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v44 = *(v38 + v43[12] + 8);

      v45 = *(v38 + v43[16] + 8);

      v46 = *(v38 + v43[20] + 8);

      v47 = v43[28];
LABEL_31:
      v42 = (v38 + v47 + 8);
      goto LABEL_32;
    case 3:
      v65(v38, v7);
      v48 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v49 = *(v38 + v48[12] + 8);

      v50 = *(v38 + v48[16] + 8);

      v47 = v48[20];
      goto LABEL_31;
    case 4:
LABEL_28:
      v42 = v38 + 1;
LABEL_32:
      v51 = *v42;

      break;
  }

LABEL_33:
  v52 = v1[7];
  if (!v61(v37 + v52, 1, v7))
  {
    v65(v37 + v52, v7);
  }

  v60(v37 + v1[8], v27);
  sub_100016590(*(v37 + v1[9]), *(v37 + v1[9] + 8));
  v53 = (v37 + v1[10]);
  v54 = v53[1];
  if (v54 >> 60 != 15)
  {
    sub_100016590(*v53, v54);
  }

  v55 = (v37 + v1[11]);
  v56 = v55[1];
  if (v56 >> 60 != 15)
  {
    sub_100016590(*v55, v56);
  }

  sub_100016590(*(v37 + v1[12]), *(v37 + v1[12] + 8));
  sub_100016590(*(v37 + v1[13]), *(v37 + v1[13] + 8));
  v57 = *(v37 + v1[14] + 8);

  v58 = *(v37 + v1[15] + 8);

  return _swift_deallocObject(v64, v62 + v63, v66 | 7);
}

uint64_t sub_10006B4A4()
{
  v1 = (type metadata accessor for OwnedDeviceKeyRecord() - 8);
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
  sub_100016590(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  sub_100016590(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10006B5F8()
{
  v1 = (type metadata accessor for OwnedDeviceKeyRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v14 = *(*v1 + 64);
  v4 = (v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 8) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v10(v7 + v1[8], v9);
  sub_100016590(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  sub_100016590(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  v11 = *(v0 + v4);

  v12 = v0 + v5;
  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v10(v0 + v5 + v1[7], v9);
  v10(v0 + v5 + v1[8], v9);
  sub_100016590(*(v12 + v1[9]), *(v12 + v1[9] + 8));
  sub_100016590(*(v12 + v1[10]), *(v12 + v1[10] + 8));

  return _swift_deallocObject(v0, v5 + v14, v2 | 7);
}

uint64_t sub_10006B7C0()
{
  v1 = (type metadata accessor for KeyAlignmentRecord() - 8);
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
  v10 = v1[10];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10006B930()
{
  v1 = (type metadata accessor for KeyAlignmentRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v17 = *(*v1 + 64);
  v16 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  v9 = v1[10];
  v10 = type metadata accessor for Date();
  v14 = *(*(v10 - 8) + 8);
  v14(v5 + v9, v10);
  v11 = *(v15 + v16);

  v12 = (v2 + v16 + 8) & ~v2;
  sub_100016590(*(v15 + v12), *(v15 + v12 + 8));
  v8(v15 + v12 + v1[7], v7);
  v8(v15 + v12 + v1[8], v7);
  v14(v15 + v12 + v1[10], v10);

  return _swift_deallocObject(v15, v12 + v17);
}

uint64_t sub_10006BB30()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[6], v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v2 + v8, v9);
  v12 = v1[8];
  if (!(*(v10 + 48))(v0 + v2 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = (v18 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[9] + 16);

  v15 = *(v4 + v1[10] + 8);

  v16 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_10006BD24()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v25 = *(*(v1 - 1) + 64);
  v23 = (v25 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v2 + v23 + 8) & ~v2;
  v4 = *(v0 + 16);

  v24 = v0;
  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[6], v7);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v5 + v9, v10);
  v13 = v1[8];
  v22 = *(v11 + 48);
  if (!v22(v5 + v13, 1, v10))
  {
    v12(v5 + v13, v10);
  }

  v14 = *(v5 + v1[9] + 16);

  v15 = *(v5 + v1[10] + 8);

  v16 = *(v24 + v23);

  v17 = v24 + v26;
  sub_100016590(*v17, *(v17 + 8));
  v8(v24 + v26 + v1[5], v7);
  v8(v24 + v26 + v1[6], v7);
  v12(v24 + v26 + v1[7], v10);
  v18 = v1[8];
  if (!v22(v24 + v26 + v18, 1, v10))
  {
    v12(v17 + v18, v10);
  }

  v19 = *(v17 + v1[9] + 16);

  v20 = *(v17 + v1[10] + 8);

  return _swift_deallocObject(v24, v26 + v25);
}

uint64_t sub_10006BFF0()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v44 = *(*(v1 - 1) + 80);
  v2 = (v44 + 24) & ~v44;
  v43 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v42 = *(v4 + 80);
  v41 = *(v4 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v40 = *(v6 + 80);
  v39 = *(v6 + 64);
  v7 = *(v0 + 16);

  v45 = v0;
  v8 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v9 = *(v4 + 8);
  v9(v8 + v1[5], v3);
  v10 = (v8 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = v9;
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
      v9(v10, v3);
      v15 = (v44 + 24) & ~v44;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v10 + v16[12] + 8);

      v18 = *(v10 + v16[16] + 8);

      v19 = *(v10 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v2 = v15;
      v9 = v46;
      v14 = (v10 + v20 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v3);
      v15 = (v44 + 24) & ~v44;
      v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v22 = *(v10 + v21[12] + 8);

      v23 = *(v10 + v21[16] + 8);

      v20 = v21[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v24 = *v14;

      break;
  }

LABEL_14:
  v25 = v1[7];
  if (!(*(v4 + 48))(v8 + v25, 1, v3))
  {
    v9(v8 + v25, v3);
  }

  v26 = *(v6 + 8);
  v26(v8 + v1[8], v5);
  sub_100016590(*(v8 + v1[9]), *(v8 + v1[9] + 8));
  v27 = (v8 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = v5;
  v30 = (v8 + v1[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (((v43 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v42 + 8) & ~v42;
  v33 = (v32 + v41 + v40) & ~v40;
  v34 = (v39 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v8 + v1[12]), *(v8 + v1[12] + 8));
  sub_100016590(*(v8 + v1[13]), *(v8 + v1[13] + 8));
  v35 = *(v8 + v1[14] + 8);

  v36 = *(v8 + v1[15] + 8);

  v46(v45 + v32, v3);
  v26(v45 + v33, v29);
  v37 = *(v45 + v34 + 8);

  return _swift_deallocObject(v45, v34 + 16);
}

uint64_t sub_10006C45C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v44 = *(*(v1 - 1) + 80);
  v2 = (v44 + 32) & ~v44;
  v43 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v42 = *(v4 + 80);
  v41 = *(v4 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v40 = *(v6 + 80);
  v39 = *(v6 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v45 = v0;
  v8 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v9 = *(v4 + 8);
  v9(v8 + v1[5], v3);
  v10 = (v8 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = v9;
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
      v9(v10, v3);
      v15 = (v44 + 32) & ~v44;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v10 + v16[12] + 8);

      v18 = *(v10 + v16[16] + 8);

      v19 = *(v10 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v2 = v15;
      v9 = v46;
      v14 = (v10 + v20 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v3);
      v15 = (v44 + 32) & ~v44;
      v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v22 = *(v10 + v21[12] + 8);

      v23 = *(v10 + v21[16] + 8);

      v20 = v21[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v24 = *v14;

      break;
  }

LABEL_14:
  v25 = v1[7];
  if (!(*(v4 + 48))(v8 + v25, 1, v3))
  {
    v9(v8 + v25, v3);
  }

  v26 = *(v6 + 8);
  v26(v8 + v1[8], v5);
  sub_100016590(*(v8 + v1[9]), *(v8 + v1[9] + 8));
  v27 = (v8 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = v5;
  v30 = (v8 + v1[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v2 + v43 + v42) & ~v42;
  v33 = (((v41 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + v40 + 8) & ~v40;
  v34 = (v39 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v8 + v1[12]), *(v8 + v1[12] + 8));
  sub_100016590(*(v8 + v1[13]), *(v8 + v1[13] + 8));
  v35 = *(v8 + v1[14] + 8);

  v36 = *(v8 + v1[15] + 8);

  v46(v45 + v32, v3);
  v26(v45 + v33, v29);
  v37 = *(v45 + v34 + 8);

  return _swift_deallocObject(v45, v34 + 16);
}

uint64_t sub_10006C8D8()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v45 = *(*(v1 - 1) + 80);
  v2 = (v45 + 24) & ~v45;
  v3 = *(*(v1 - 1) + 64);
  v44 = type metadata accessor for ShareRecord();
  v47 = *(*(v44 - 1) + 80);
  v43 = *(*(v44 - 1) + 64);
  v4 = *(v0 + 16);

  v46 = v0;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = (v0 + v2 + v1[6]);
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

  v42 = v9;
  v25 = v2 + v3 + v47;
  v26 = v1[8];
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v41 = *(v28 + 8);
  v41(v5 + v26, v27);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v29 = (v5 + v1[10]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = v25 & ~v47;
  v32 = (v5 + v1[11]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_100016590(*v32, v33);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v34 = *(v5 + v1[14] + 8);

  v35 = *(v5 + v1[15] + 8);

  v36 = v0 + v31;
  sub_100016590(*(v0 + v31), *(v0 + v31 + 8));
  v42(v0 + v31 + v44[5], v7);
  v42(v0 + v31 + v44[6], v7);
  v41(v0 + v31 + v44[7], v27);
  v37 = v44[8];
  if (!(*(v28 + 48))(v46 + v31 + v37, 1, v27))
  {
    v41(v36 + v37, v27);
  }

  v38 = *(v36 + v44[9] + 16);

  v39 = *(v36 + v44[10] + 8);

  return _swift_deallocObject(v46, v31 + v43);
}

uint64_t sub_10006CDAC()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[6], v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v2 + v8, v9);
  v12 = v1[8];
  if (!(*(v10 + 48))(v0 + v2 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = *(v4 + v1[9] + 16);

  v14 = *(v4 + v1[10] + 8);

  return _swift_deallocObject(v0, v2 + v16);
}

uint64_t sub_10006CF88()
{
  v1 = type metadata accessor for ShareRecord();
  v19 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[6], v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v2 + v7, v8);
  v11 = v1[8];
  if (!(*(v9 + 48))(v0 + v2 + v11, 1, v8))
  {
    v10(v3 + v11, v8);
  }

  v12 = (v19 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v3 + v1[9] + 16);

  v15 = *(v3 + v1[10] + 8);

  v16 = *(v0 + v12);

  v17 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_10006D1AC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006D1E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006D21C()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10006D334()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006D3B0()
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

  return _swift_deallocObject(v0, v13 + 41);
}

uint64_t sub_10006D58C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10006D6F0()
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

uint64_t sub_10006D848()
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

uint64_t sub_10006D9C0()
{
  v1 = *(v0 + 32);

  sub_100007BAC((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10006DA14()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
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
  v9 = *(v5 + v1[10] + 8);

  v10 = *(v5 + v1[11] + 8);

  v11 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10006DB7C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006DBB4()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v36 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

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

uint64_t sub_10006DF28()
{
  v1 = *(type metadata accessor for TimeBasedKeysCriteria() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(v0 + v2);
  }

  else if (!EnumCaseMultiPayload)
  {
    v9 = type metadata accessor for DateInterval();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v6 + 8) & ~v6;
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v11);

  (*(v5 + 8))(v0 + v12, v4);
  v15 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_10006E0E0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10006E230()
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

  return _swift_deallocObject(v0, ((v36 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10006E5B8()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10006E64C()
{
  v1 = (type metadata accessor for LeashRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[8]);

  v9 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006E760()
{
  v1 = (type metadata accessor for LeashRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v15 = *(*v1 + 64);
  v4 = (v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 8) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v11 = *(v7 + v1[8]);

  v12 = *(v0 + v4);

  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v10(v0 + v5 + v1[7], v9);
  v13 = *(v0 + v5 + v1[8]);

  return _swift_deallocObject(v0, v5 + v15);
}

uint64_t sub_10006E8D0()
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

  v10 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006E9F4()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v17 = *(*v1 + 64);
  v4 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 8) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v11 = *(v7 + v1[9] + 8);

  v12 = *(v7 + v1[15]);

  v13 = *(v0 + v4);

  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v10(v0 + v5 + v1[7], v9);
  v14 = *(v0 + v5 + v1[9] + 8);

  v15 = *(v0 + v5 + v1[15]);

  return _swift_deallocObject(v0, v5 + v17);
}

uint64_t sub_10006EB84()
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

uint64_t sub_10006EE18()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(v1 - 1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v34 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v2 + 64);
  v5 = *(v0 + 16);

  v36 = v0;
  v6 = v0 + v4;
  sub_100016590(*v6, *(v6 + 8));
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
  v33 = *(*(v16 - 8) + 8);
  v33(v6 + v15, v16);
  v17 = v1[19];
  v37 = *(v9 + 48);
  if (!v37(v6 + v17, 1, v8))
  {
    v10(v6 + v17, v8);
  }

  v38 = (v3 + v34 + 8) & ~v3;
  v18 = v6 + v1[20];
  v19 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v20 = (*(v19 - 8) + 48);
  v32 = *v20;
  if (!(*v20)(v18, 1, v19))
  {
    v21 = *(v19 + 20);
    if (!v37(v18 + v21, 1, v8))
    {
      v10(v18 + v21, v8);
    }
  }

  v22 = *(v36 + v34);

  v23 = v36 + v38;
  sub_100016590(*v23, *(v23 + 8));
  v10(v36 + v38 + v1[5], v8);
  v10(v36 + v38 + v1[6], v8);
  v24 = *(v36 + v38 + v1[7] + 16);

  v25 = *(v36 + v38 + v1[8] + 8);

  v26 = *(v36 + v38 + v1[9] + 8);

  v27 = *(v36 + v38 + v1[10] + 8);

  v33(v36 + v38 + v1[18], v16);
  v28 = v1[19];
  if (!v37(v36 + v38 + v28, 1, v8))
  {
    v10(v23 + v28, v8);
  }

  v29 = v23 + v1[20];
  if (!v32(v29, 1, v19))
  {
    v30 = *(v19 + 20);
    if (!v37(v29 + v30, 1, v8))
    {
      v10(v29 + v30, v8);
    }
  }

  return _swift_deallocObject(v36, v38 + v35);
}

uint64_t sub_10006F214()
{
  v1 = (type metadata accessor for LostModeRecord() - 8);
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
  v9 = *(v5 + v1[9] + 8);

  v10 = *(v5 + v1[10] + 8);

  v11 = *(v5 + v1[11] + 8);

  v12 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10006F378()
{
  v1 = (type metadata accessor for LostModeRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v19 = *(*v1 + 64);
  v4 = (v19 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 8) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v10(v7 + v1[8], v9);
  v11 = *(v7 + v1[9] + 8);

  v12 = *(v7 + v1[10] + 8);

  v13 = *(v7 + v1[11] + 8);

  v14 = *(v0 + v4);

  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v10(v0 + v5 + v1[7], v9);
  v10(v0 + v5 + v1[8], v9);
  v15 = *(v0 + v5 + v1[9] + 8);

  v16 = *(v0 + v5 + v1[10] + 8);

  v17 = *(v0 + v5 + v1[11] + 8);

  return _swift_deallocObject(v0, v5 + v19);
}

uint64_t sub_10006F560()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006F5A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10006F5D8()
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

uint64_t sub_10006F6B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10006F790()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10006F7C8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
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

  v12 = *(v0 + v3 + 8);

  v13 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10006F938()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 17) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[8];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v1[9];
  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = *(v0 + v2 + v1[11] + 8);

  v9 = *(v0 + v2 + v1[12]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10006FA80()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 32);

  v5 = *(v0 + 40);

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

uint64_t sub_10006FBD8()
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

uint64_t sub_10006FD28()
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

uint64_t sub_10006FFE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_10007008C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100070130()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000701FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100070234()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10007027C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000702B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100070364()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100070410(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000704E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000705AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DateInterval();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100070658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100070700()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100070738()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100070780()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000707B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100070864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100070908(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000709D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100070A88(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_100070BA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100070CC0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100070D08(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ServerStatusCode();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_100070E8C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ServerStatusCode();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100071010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007107C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000710EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000711A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100071358()
{
  v1 = (type metadata accessor for BeaconObservation() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = *(v0 + v3);

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10007148C()
{
  v1 = (type metadata accessor for BeaconObservation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1000715D0()
{
  v1 = (type metadata accessor for BeaconObservation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v0 + v3);

  return _swift_deallocObject(v0, ((((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100071730()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1000717F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100071890()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[5];
  if (v6 >> 60 != 15)
  {
    sub_100016590(v0[4], v6);
  }

  v7 = (v3 + 152) & ~v3;
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100007BAC(v0 + 13);
  v9 = v0[18];

  (*(v2 + 8))(v0 + v7, v1);
  v10 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_100071990()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100071A84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
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

uint64_t sub_100071B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100071CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100071D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100071DF4()
{
  type metadata accessor for BluetoothCommunicationCoordinator.Error();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100071E44()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100071E84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100071EC0()
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

  return _swift_deallocObject(v1, ((v66 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100072798()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000727D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100072810()
{
  v35 = type metadata accessor for UUID();
  v1 = *(v35 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v37 = (*(v9 + 64) + v6 + v10) & ~v6;
  v36 = (v37 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  v12 = *(v1 + 8);
  v12(v0 + v2, v35);
  v13 = *(v0 + v3);

  v14 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  v15 = *(v5 + 8);
  v38 = v4;
  v15(v0 + v7, v4);
  v16 = v0 + v10;
  v17 = type metadata accessor for SharedBeaconRecord(0);
  if (!(*(*(v17 - 1) + 48))(v0 + v10, 1, v17))
  {
    sub_100016590(*v16, *(v16 + 8));
    v12(v16 + v17[5], v35);
    v12(v16 + v17[6], v35);
    v18 = *(v16 + v17[7] + 16);

    v19 = *(v16 + v17[8] + 8);

    v20 = *(v16 + v17[9] + 8);

    v21 = *(v16 + v17[10] + 8);

    v22 = v17[18];
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 8))(v16 + v22, v23);
    v24 = v17[19];
    v34 = *(v1 + 48);
    if (!v34(v16 + v24, 1, v35))
    {
      v12(v16 + v24, v35);
    }

    v25 = v16 + v17[20];
    v26 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v27 = *(v26 + 20);
      if (!v34(v25 + v27, 1, v35))
      {
        v12(v25 + v27, v35);
      }
    }
  }

  v15(v0 + v37, v38);
  v28 = *(v0 + ((v37 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  v29 = *(v0 + v36 + 8);
  if (((v29 >> 60) | 4) != 0xF)
  {
    sub_100016590(*(v0 + v36), v29);
  }

  v30 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = *(v0 + v30 + 8);

  return _swift_deallocObject(v0, v31 + 8);
}

uint64_t sub_100072C8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v43 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v36 = (*(v2 + 64) + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = type metadata accessor for MACAddress();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 8 + v36) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v38 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v5 + 8 + v38) & ~v5;
  v11 = v2;
  v39 = v10;
  v12 = v10 + v7;
  v40 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);

  v14 = *(v2 + 8);
  v14(v0 + v43, v1);
  v15 = *(v0 + v36);

  v44 = v3;
  v37 = *(v4 + 8);
  v37(v0 + v6, v3);
  v16 = v0 + v9;
  v17 = type metadata accessor for SharedBeaconRecord(0);
  if (!(*(*(v17 - 1) + 48))(v0 + v9, 1, v17))
  {
    sub_100016590(*v16, *(v16 + 8));
    v14(v16 + v17[5], v1);
    v35 = v14;
    v14(v16 + v17[6], v1);
    v18 = *(v16 + v17[7] + 16);

    v19 = *(v16 + v17[8] + 8);

    v20 = *(v16 + v17[9] + 8);

    v21 = *(v16 + v17[10] + 8);

    v22 = v17[18];
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 8))(v16 + v22, v23);
    v24 = v17[19];
    v25 = *(v11 + 48);
    if (!v25(v16 + v24, 1, v1))
    {
      v35(v16 + v24, v1);
    }

    v26 = v16 + v17[20];
    v27 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
    {
      v28 = *(v27 + 20);
      if (!v25(v26 + v28, 1, v1))
      {
        v35(v26 + v28, v1);
      }
    }
  }

  v37(v0 + v39, v44);
  v29 = *(v0 + v40);

  v30 = *(v0 + v41);

  v31 = *(v0 + v42 + 8);
  if (((v31 >> 60) | 4) != 0xF)
  {
    sub_100016590(*(v0 + v42), v31);
  }

  v32 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = *(v0 + v32 + 8);

  return _swift_deallocObject(v0, v32 + 16);
}

uint64_t sub_100073114()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000731C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100073200()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100073238()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100073278()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  if (v0[5])
  {
    v4 = v0[6];
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000732D0()
{
  v1 = (type metadata accessor for BeaconObservation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v0 + v3);

  if (*(v0 + v4))
  {
    v11 = *(v0 + v4 + 8);
  }

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100073420()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100073468()
{
  v1 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for BeaconObservation() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  v9 = v5[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100073610()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100073648()
{
  v1 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100073718()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000737A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007380C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000738C8()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100073914()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v10 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_100073A88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100073AC0()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100073B00()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100073BA0()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100073C54()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100073D54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100073E00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100073EA4(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_100073F50(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100073FFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100074064(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
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
      v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100074194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
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
      v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000742C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_100074370(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100074414()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007444C()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100074488()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 1);
}

uint64_t sub_100074550()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000745D8()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  sub_100007BAC((v0 + 24));
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

uint64_t sub_1000747A8()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000747EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100007BAC((v0 + 32));
  sub_100007BAC((v0 + 72));

  return _swift_deallocObject(v0, 120);
}

uint64_t sub_100074844()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10007489C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000748EC()
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

uint64_t sub_100074A2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100074A6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100074ABC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v5 + 16);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 32);

  v11 = *(v0 + v5 + 48);

  v12 = *(v0 + v5 + 64);

  return _swift_deallocObject(v0, v5 + 89);
}

uint64_t sub_100074BD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100074CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100074DC4()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v27 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v22 = *(v3 + 80);
  v23 = *(v3 + 64);
  v4 = *(v0 + 16);

  v28 = v0;
  v26 = (v27 + 24) & ~v27;
  v5 = v0 + v26;
  sub_100016590(*(v0 + v26), *(v0 + v26 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v26 + v6, v7);
  v9(v0 + v26 + v1[6], v7);
  v10 = *(v0 + v26 + v1[7] + 16);

  v11 = *(v0 + v26 + v1[8] + 8);

  v12 = *(v0 + v26 + v1[9] + 8);

  v13 = *(v0 + v26 + v1[10] + 8);

  v14 = *(v3 + 8);
  v25 = v2;
  v14(v0 + v26 + v1[18], v2);
  v15 = v1[19];
  v16 = *(v8 + 48);
  if (!v16(v5 + v15, 1, v7))
  {
    v9(v5 + v15, v7);
  }

  v17 = v5 + v1[20];
  v18 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    if (!v16(v17 + v19, 1, v7))
    {
      v9(v17 + v19, v7);
    }
  }

  v20 = (v26 + v24 + v22) & ~v22;
  v14(v28 + v20, v25);

  return _swift_deallocObject(v28, v20 + v23);
}

uint64_t sub_1000750B8()
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

uint64_t sub_100075370(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 28));
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

uint64_t sub_100075494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
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

uint64_t sub_1000755BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + 16 + v8) & ~v4;
  v3(v0 + v5, v1);

  v10 = *(v0 + v8 + 8);

  v3(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v6);
}

uint64_t sub_1000756AC()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v2;
  sub_100016590(*v8, *(v8 + 8));
  v9 = *(v5 + 8);
  v9(v8 + v1[8], v4);
  v10 = v1[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = *(v8 + v1[11] + 8);

  v13 = *(v8 + v1[12]);

  v9(v0 + v6, v4);
  v14 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1000758A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);
  swift_unknownObjectRelease();
  v10 = *(v2 + 8);
  v10(v0 + v3, v1);
  v11 = *(v0 + v4);

  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v10(v0 + v6 + v5[8], v1);
  v12 = v5[9];
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 8))(v0 + v6 + v12, v13);
  v14 = *(v0 + v6 + v5[11] + 8);

  v15 = *(v0 + v6 + v5[12]);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100075A88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  v9 = *(v0 + v4);

  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[8], v1);
  v10 = v5[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v0 + v6 + v10, v11);
  v12 = *(v0 + v6 + v5[11] + 8);

  v13 = *(v0 + v6 + v5[12]);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100075C70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100075CA8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100075D44()
{
  v1 = type metadata accessor for WildModeAssociationRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v78 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v77 = *(v4 + 80);
  v76 = *(v4 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);
  v81 = *(v4 + 8);
  v81(v6, v3);
  v7 = v1[5];
  if (!(*(v4 + 48))(v6 + v7, 1, v3))
  {
    v81(v6 + v7, v3);
  }

  v8 = v1[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v6 + v1[8]);

  v11 = v1[10];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v80 = *(v13 + 8);
  v80(v6 + v11, v12);
  v14 = v1[11];
  v74 = *(v13 + 48);
  if (!v74(v6 + v14, 1, v12))
  {
    v80(v6 + v14, v12);
  }

  v75 = v12;
  v15 = *(v6 + v1[12] + 16);

  v16 = v6 + v1[14];
  v17 = type metadata accessor for AccessoryMetadata(0);
  v79 = (v2 + 32) & ~v2;
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v73 = v3;
    v81(v16, v3);
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

    v3 = v73;
  }

  v24 = v6 + v1[15];
  v25 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v25 - 1) + 48))(v24, 1, v25))
  {
    v71 = v1;
    v72 = v0;
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

      v44 = v39[11];
      if (!v35(&v38[v44], 1, v33))
      {
        (*(v34 + 8))(&v38[v44], v33);
      }

      v45 = v39[12];
      if (!v35(&v38[v45], 1, v33))
      {
        (*(v34 + 8))(&v38[v45], v33);
      }

      v46 = *&v38[v39[15] + 8];

      v47 = *&v38[v39[16]];

      v48 = *&v38[v39[17] + 8];

      v49 = *&v38[v39[18]];
    }

    v50 = *(v24 + v25[23]);

    v51 = (v24 + v25[24]);
    v52 = v51[1];
    if (v52 >> 60 != 15)
    {
      sub_100016590(*v51, v52);
    }

    v53 = (v24 + v25[25]);
    v54 = v53[1];
    v0 = v72;
    v1 = v71;
    if (v54 >> 60 != 15)
    {
      sub_100016590(*v53, v54);
    }

    v55 = *(v34 + 8);
    v55(v24 + v25[26], v33);
    v55(v24 + v25[27], v33);
    v55(v24 + v25[28], v33);
    v55(v24 + v25[29], v33);
    v55(v24 + v25[30], v33);
    v55(v24 + v25[31], v33);
    v56 = *(v24 + v25[32] + 8);

    v57 = *(v24 + v25[33]);

    v58 = *(v24 + v25[34] + 8);

    v59 = *(v24 + v25[35]);

    v55(v24 + v25[38], v33);
    v55(v24 + v25[39], v33);
    v55(v24 + v25[40], v33);
    v55(v24 + v25[41], v33);
    v55(v24 + v25[42], v33);
    v55(v24 + v25[43], v33);
    v60 = *(v24 + v25[47] + 8);

    v61 = *(v24 + v25[48] + 8);
  }

  v62 = v0;
  v63 = *(v6 + v1[17]);

  v64 = v1[18];
  if (!v74(v6 + v64, 1, v75))
  {
    v80(v6 + v64, v75);
  }

  v65 = v1[19];
  if (!v74(v6 + v65, 1, v75))
  {
    v80(v6 + v65, v75);
  }

  v66 = (v6 + v1[20]);
  v67 = v66[1];
  if (((v67 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v66, v67);
  }

  v68 = (v79 + v78 + v77) & ~v77;
  v69 = (v76 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81(v62 + v68, v3);

  return _swift_deallocObject(v62, ((v69 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100076688()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000766C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000767A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000767D8()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
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

uint64_t sub_100076928()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = *(v4 + v1[11] + 8);

  v10 = *(v4 + v1[12]);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100076A8C()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v2;
  sub_100016590(*v8, *(v8 + 8));
  v9 = *(v5 + 8);
  v9(v8 + v1[8], v4);
  v10 = v1[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = *(v8 + v1[11] + 8);

  v13 = *(v8 + v1[12]);

  v9(v0 + v6, v4);
  v14 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100076C7C()
{
  sub_10083303C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100076CB8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v4 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v3 + v7 + 8) & ~v3;
  v9 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v10 = (v5 + *(*v9 + 80) + v8) & ~*(*v9 + 80);
  v21 = (((*(*v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  v12 = *(v0 + 24);
  swift_unknownObjectRelease();
  v13 = *(v2 + 8);
  v13(v0 + v4, v1);
  v14 = *(v0 + v6);

  v13(v0 + v8, v1);
  v15 = v0 + v10;
  sub_100016590(*v15, *(v15 + 8));
  v13(v15 + v9[8], v1);
  v16 = v9[9];
  v17 = type metadata accessor for MACAddress();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);
  v18 = *(v15 + v9[11] + 8);

  v19 = *(v15 + v9[12]);

  return _swift_deallocObject(v0, v21 + 8);
}

uint64_t sub_100076EDC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (*(*v5 + 80) + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(*v5 + 80);
  v7 = *(*v5 + 64) + v6;
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  v10 = *(v2 + 8);
  v10(v0 + v3, v1);
  v11 = *(v0 + v4);

  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v10(v0 + v6 + v5[8], v1);
  v12 = v5[9];
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 8))(v0 + v6 + v12, v13);
  v14 = *(v0 + v6 + v5[11] + 8);

  v15 = *(v0 + v6 + v5[12]);

  return _swift_deallocObject(v0, v7 + 1);
}

uint64_t sub_1000770BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (((*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v8(v0 + v6 + v5[8], v1);
  v9 = v5[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v0 + v6 + v9, v10);
  v11 = *(v0 + v6 + v5[11] + 8);

  v12 = *(v0 + v6 + v5[12]);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100077280()
{
  sub_100007BAC(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000772CC()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v8 = (v5 + v1[8]);
  v9 = v8[5];
  sub_10067B5AC(*v8, v8[1], v8[2], v8[3], v8[4]);
  v10 = *(v0 + v3);

  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100077414()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000774FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000775EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v3 + ((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v7 = (((v5 + v6) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);
  v9 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_1000776FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v3 + ((((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v3;
  v7 = (v5 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  v11 = *(v0 + v7);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100077814()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100077918()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 16) & ~v3;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v10 = *(v0 + v6 + 8);

  v9(v0 + v7, v1);

  return _swift_deallocObject(v0, v7 + v5);
}

uint64_t sub_100077A24()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v36 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v35 = *(v4 + 64);

  v6 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v6, *(v6 + 8));
  v7 = *(v4 + 8);
  v7(v6 + v1[5], v3);
  v8 = (v6 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v7;
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
      v7(v8, v3);
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *(v8 + v13[12] + 8);

      v15 = *(v8 + v13[16] + 8);

      v16 = *(v8 + v13[20] + 8);

      v17 = v13[28];
LABEL_12:
      v7 = v37;
      v12 = (v8 + v17 + 8);
      goto LABEL_13;
    case 3:
      v7(v8, v3);
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
  if (!(*(v4 + 48))(v6 + v22, 1, v3))
  {
    v7(v6 + v22, v3);
  }

  v23 = v1[8];
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 8))(v6 + v23, v24);
  sub_100016590(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  v25 = (v6 + v1[10]);
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_100016590(*v25, v26);
  }

  v27 = (v6 + v1[11]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (((v2 + 24) & ~v2) + v36 + v5) & ~v5;
  v30 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v31 = *(v6 + v1[14] + 8);

  v32 = *(v6 + v1[15] + 8);

  v37(v0 + v29, v3);
  v33 = *(v0 + v30 + 8);

  return _swift_deallocObject(v0, v30 + 16);
}

uint64_t sub_100077DF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100077F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceVersion();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100077FF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DeviceVersion();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000780EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[15];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[19];
    goto LABEL_11;
  }

  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[22];

  return v18(v19, a2, v17);
}

uint64_t sub_1000782C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[15];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[19];
    goto LABEL_9;
  }

  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[22];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100078560(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10007861C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000786D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100078798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100078858(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_100078904(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000789A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100078A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100078A84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100078B4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100078BFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100078C3C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100078C74()
{
  v1 = sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100078D4C()
{
  v1 = sub_1000BC4D4(&qword_1016AB2D8, &qword_1013BF218);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100078DF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100078E38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100078E70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100078EB0()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100078F44()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 8);

  sub_100007BAC((v0 + v2 + 24));
  v8 = v1[10];
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = *(v0 + v2 + v1[11]);

  v11 = *(v0 + v2 + v1[12]);

  v12 = *(v0 + v2 + v1[13]);

  v13 = *(v0 + v2 + v1[14]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007908C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 1);
}

uint64_t sub_100079154()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_100007BAC((v0 + 16));
  v5 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100079220()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000792C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10007937C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100079434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeaconIdentifier();
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
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000794EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BeaconIdentifier();
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

uint64_t sub_1000795F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for BeaconIdentifier() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v6, v8);
  v9(v0 + v6 + v5[7], v8);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_100079778()
{
  v1 = (type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v8 = type metadata accessor for BeaconIdentifier();
  v7(v0 + v2 + *(v8 + 20), v6);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  v11 = (v0 + v2 + v1[8]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100016590(*v11, v12);
    sub_100016590(v11[2], v11[3]);
    v13 = v11[5];
    if (v13 >> 60 != 15)
    {
      sub_100016590(v11[4], v13);
    }
  }

  return _swift_deallocObject(v0, ((((((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100079940()
{
  v1 = (type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v7 = type metadata accessor for BeaconIdentifier();
  v6(v0 + v2 + *(v7 + 20), v5);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = (v0 + v2 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100016590(*v10, v11);
    sub_100016590(v10[2], v10[3]);
    v12 = v10[5];
    if (v12 >> 60 != 15)
    {
      sub_100016590(v10[4], v12);
    }
  }

  return _swift_deallocObject(v0, ((((((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100079B00()
{
  v1 = (type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v8 = type metadata accessor for BeaconIdentifier();
  v7(v0 + v2 + *(v8 + 20), v6);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  v11 = (v0 + v2 + v1[8]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100016590(*v11, v12);
    sub_100016590(v11[2], v11[3]);
    v13 = v11[5];
    if (v13 >> 60 != 15)
    {
      sub_100016590(v11[4], v13);
    }
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100079CB0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v6, v9);
  v11 = type metadata accessor for BeaconIdentifier();
  v10(v0 + v6 + *(v11 + 20), v9);
  v12 = v5[7];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v0 + v6 + v12, v13);
  v14 = (v0 + v6 + v5[8]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
    sub_100016590(v14[2], v14[3]);
    v16 = v14[5];
    if (v16 >> 60 != 15)
    {
      sub_100016590(v14[4], v16);
    }
  }

  return _swift_deallocObject(v0, ((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100079ECC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = (*(v2 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v3 = *(v16 - 8);
  v4 = (v13 + *(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for BeaconIdentifier() - 8);
  v7 = (v5 + *(*v6 + 80) + 8) & ~*(*v6 + 80);
  v14 = *(*v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v15, v1);
  v10 = *(v0 + v13 + 8);

  (*(v3 + 8))(v0 + v4, v16);
  v11 = *(v0 + v5);

  v9(v0 + v7, v1);
  v9(v0 + v7 + v6[7], v1);

  return _swift_deallocObject(v0, v7 + v14);
}

uint64_t sub_10007A104()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007A198()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007A1F0()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10007A230()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007A268()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007A2A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007A318()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v5 + 8);

  sub_100007BAC((v5 + 24));
  v8 = v1[10];
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[11]);

  v11 = *(v5 + v1[12]);

  v12 = *(v5 + v1[13]);

  v13 = *(v5 + v1[14]);

  v14 = *(v0 + v3);

  v15 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10007A478()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007A4B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007A598()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007A5D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10007A6F4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007A74C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1008A88A0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56), *(v0 + v4 + 64), *(v0 + v4 + 65));

  return _swift_deallocObject(v0, v4 + 66);
}

uint64_t sub_10007A84C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 82) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1008A88A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 81));
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007A9A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_10007AA98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007AB5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007AB94(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10007AC40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10007ACE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10007AD9C(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007AE48(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_10007AEF4(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10007AF9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007AFD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007B02C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10007B080()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007B0B8()
{
  v1 = (type metadata accessor for LostModeRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v7 = *(v0 + v2 + v1[9] + 8);

  v8 = *(v0 + v2 + v1[10] + 8);

  v9 = *(v0 + v2 + v1[11] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007B1FC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007B24C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007B284()
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

uint64_t sub_10007B480(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
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
    v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[22];
      goto LABEL_5;
    }

    v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[31];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10007B664(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
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

  v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[22];
    goto LABEL_5;
  }

  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[31];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_10007B848()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10007B910()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007B9E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007BA20()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007BAE8()
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

uint64_t sub_10007BBC0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007BC84()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10007BD74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 24) + 8) >> 60;
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

uint64_t sub_10007BE48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v13[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10007BF14(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10007BFD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10007C118()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007C158()
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

uint64_t sub_10007C2F8()
{
  v1 = sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
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

uint64_t sub_10007C3E4()
{
  v1 = sub_1000BC4D4(&qword_1016ADB38, &unk_1013C4EA8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007C4C8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_10007C5B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10007C6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10007CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 64);
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
    v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 240);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 244);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10007CC20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 64) = a2;
  }

  else
  {
    v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 240);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 244);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10007CD5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007CD94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007CE68()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10007CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10007CF70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10007D02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
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

uint64_t sub_10007D104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
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

uint64_t sub_10007D1CC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for StableIdentifier();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[24];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ProductInfoState(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[26];

  return v15(v16, a2, v14);
}

uint64_t sub_10007D344(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for StableIdentifier();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[24];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ProductInfoState(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[26];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10007D4BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10007D5EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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
      v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10007DA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007DABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10007DB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10007DC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10007DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 1);
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
    v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007DE28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 1) = a2 + 2;
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007DEF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  v5 = *(v0 + 232);

  v6 = *(v0 + 248);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 240), v6);
  }

  v7 = *(v0 + 256);

  v8 = *(v0 + 280);

  v9 = *(v0 + 288);

  return _swift_deallocObject(v0, 296);
}

uint64_t sub_10007DFC8()
{
  v1 = type metadata accessor for AirPodsSWPairingLockAckResponse();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 24);

  v5 = (v0 + v2);
  v6 = *(v0 + v2 + 8);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*v5, v6);
  }

  v7 = v5[3];
  if (v7 >> 60 != 15)
  {
    sub_100016590(v5[2], v7);
  }

  v8 = *(v1 + 24);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007E13C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 72);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 64), v2);
  }

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  sub_100016590(*(v0 + 136), *(v0 + 144));
  sub_100016590(*(v0 + 152), *(v0 + 160));
  sub_100016590(*(v0 + 168), *(v0 + 176));
  v6 = *(v0 + 200);

  v7 = *(v0 + 208);

  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  sub_100016590(*(v0 + 288), *(v0 + 296));
  sub_100016590(*(v0 + 304), *(v0 + 312));
  sub_100016590(*(v0 + 320), *(v0 + 328));
  v8 = *(v0 + 344);

  v9 = *(v0 + 360);
  if (v9 >> 60 != 15)
  {
    sub_100016590(*(v0 + 352), v9);
  }

  v10 = *(v0 + 376);

  v11 = *(v0 + 384);

  v12 = *(v0 + 408);

  v13 = *(v0 + 416);

  return _swift_deallocObject(v0, 440);
}

uint64_t sub_10007E25C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007E298()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_100016590(*(v0 + 56), *(v0 + 64));
  sub_100016590(*(v0 + 72), *(v0 + 80));
  v3 = *(v0 + 96);
  if (v3 >> 60 != 15)
  {
    sub_100016590(*(v0 + 88), v3);
  }

  v4 = *(v0 + 120);

  v5 = *(v0 + 136);

  v6 = *(v0 + 152);

  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  v7 = *(v0 + 224);

  v8 = *(v0 + 232);

  sub_100016590(*(v0 + 248), *(v0 + 256));
  sub_100016590(*(v0 + 264), *(v0 + 272));
  sub_100016590(*(v0 + 280), *(v0 + 288));
  sub_100016590(*(v0 + 296), *(v0 + 304));
  sub_100016590(*(v0 + 312), *(v0 + 320));
  sub_100016590(*(v0 + 328), *(v0 + 336));
  sub_100016590(*(v0 + 344), *(v0 + 352));
  v9 = *(v0 + 368);

  v10 = *(v0 + 384);
  if (v10 >> 60 != 15)
  {
    sub_100016590(*(v0 + 376), v10);
  }

  return _swift_deallocObject(v0, 400);
}

uint64_t sub_10007E3B8()
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
  sub_100016590(v0[36], v0[37]);
  sub_100016590(v0[38], v0[39]);
  v7 = v0[41];

  v8 = v0[43];
  if (v8 >> 60 != 15)
  {
    sub_100016590(v0[42], v8);
  }

  return _swift_deallocObject(v0, 352);
}

uint64_t sub_10007E4A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  v5 = *(v0 + 200);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v0 + 192), v5);
  }

  v6 = *(v0 + 216);

  v7 = *(v0 + 232);
  if (v7 >> 60 != 15)
  {
    sub_100016590(*(v0 + 224), v7);
  }

  v8 = *(v0 + 240);

  v9 = *(v0 + 264);

  v10 = *(v0 + 272);

  return _swift_deallocObject(v0, 280);
}

uint64_t sub_10007E588()
{
  v1 = (type metadata accessor for AirPodsPairingLockAckResponse() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  sub_100016590(*(v5 + 16), *(v5 + 24));
  sub_100016590(*(v5 + 32), *(v5 + 40));
  v6 = v1[9];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007E688()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 72);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 64), v2);
  }

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  sub_100016590(*(v0 + 136), *(v0 + 144));
  sub_100016590(*(v0 + 152), *(v0 + 160));
  sub_100016590(*(v0 + 168), *(v0 + 176));
  v6 = *(v0 + 200);

  v7 = *(v0 + 208);

  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  sub_100016590(*(v0 + 288), *(v0 + 296));
  v8 = *(v0 + 312);
  if (v8 >> 60 != 15)
  {
    sub_100016590(*(v0 + 304), v8);
  }

  v9 = *(v0 + 328);

  v10 = *(v0 + 344);
  if (v10 >> 60 != 15)
  {
    sub_100016590(*(v0 + 336), v10);
  }

  v11 = *(v0 + 360);

  v12 = *(v0 + 368);

  v13 = *(v0 + 392);

  v14 = *(v0 + 400);

  return _swift_deallocObject(v0, 416);
}

uint64_t sub_10007E7B0()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 48), v1);
  }

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  sub_100016590(*(v0 + 120), *(v0 + 128));
  sub_100016590(*(v0 + 136), *(v0 + 144));
  sub_100016590(*(v0 + 152), *(v0 + 160));
  v5 = *(v0 + 184);

  v6 = *(v0 + 192);

  sub_100016590(*(v0 + 208), *(v0 + 216));
  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  v7 = *(v0 + 296);
  if (v7 >> 60 != 15)
  {
    sub_100016590(*(v0 + 288), v7);
  }

  v8 = *(v0 + 312);

  v9 = *(v0 + 328);
  if (v9 >> 60 != 15)
  {
    sub_100016590(*(v0 + 320), v9);
  }

  v10 = *(v0 + 336);

  v11 = *(v0 + 360);

  return _swift_deallocObject(v0, 376);
}

uint64_t sub_10007E8C0()
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

  return _swift_deallocObject(v0, 336);
}

uint64_t sub_10007E9B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007EA00()
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

uint64_t sub_10007EB08()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007EB48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  v5 = *(v0 + 232);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v0 + 224), v5);
  }

  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  v6 = *(v0 + 280);

  v7 = *(v0 + 296);
  if (v7 >> 60 != 15)
  {
    sub_100016590(*(v0 + 288), v7);
  }

  sub_100016590(*(v0 + 304), *(v0 + 312));
  v8 = *(v0 + 320);

  v9 = *(v0 + 344);

  v10 = *(v0 + 352);

  return _swift_deallocObject(v0, 360);
}

uint64_t sub_10007EC50()
{
  v1 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 24);

  v5 = (v0 + v2);
  v6 = *(v0 + v2 + 8);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*v5, v6);
  }

  v7 = v5[3];
  if (v7 >> 60 != 15)
  {
    sub_100016590(v5[2], v7);
  }

  v8 = v5[5];
  if (v8 >> 60 != 15)
  {
    sub_100016590(v5[4], v8);
  }

  v9 = *(v1 + 28);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007EDDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 72);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 64), v2);
  }

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  sub_100016590(*(v0 + 136), *(v0 + 144));
  sub_100016590(*(v0 + 152), *(v0 + 160));
  sub_100016590(*(v0 + 168), *(v0 + 176));
  v6 = *(v0 + 200);

  v7 = *(v0 + 208);

  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  sub_100016590(*(v0 + 288), *(v0 + 296));
  v8 = *(v0 + 312);
  if (v8 >> 60 != 15)
  {
    sub_100016590(*(v0 + 304), v8);
  }

  v9 = *(v0 + 328);

  v10 = *(v0 + 344);
  if (v10 >> 60 != 15)
  {
    sub_100016590(*(v0 + 336), v10);
  }

  sub_100016590(*(v0 + 352), *(v0 + 360));
  sub_100016590(*(v0 + 368), *(v0 + 376));
  v11 = *(v0 + 392);

  sub_100016590(*(v0 + 400), *(v0 + 408));
  v12 = *(v0 + 416);

  v13 = *(v0 + 440);

  v14 = *(v0 + 448);

  return _swift_deallocObject(v0, 472);
}

uint64_t sub_10007EF1C()
{
  v1 = *(v0 + 32);

  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 88);
  if (v2 >> 60 != 15)
  {
    sub_100016590(*(v0 + 80), v2);
  }

  v3 = *(v0 + 112);

  v4 = *(v0 + 128);

  v5 = *(v0 + 144);

  sub_100016590(*(v0 + 152), *(v0 + 160));
  sub_100016590(*(v0 + 168), *(v0 + 176));
  sub_100016590(*(v0 + 184), *(v0 + 192));
  v6 = *(v0 + 216);

  v7 = *(v0 + 224);

  sub_100016590(*(v0 + 240), *(v0 + 248));
  sub_100016590(*(v0 + 256), *(v0 + 264));
  sub_100016590(*(v0 + 272), *(v0 + 280));
  sub_100016590(*(v0 + 288), *(v0 + 296));
  sub_100016590(*(v0 + 304), *(v0 + 312));
  v8 = *(v0 + 328);
  if (v8 >> 60 != 15)
  {
    sub_100016590(*(v0 + 320), v8);
  }

  v9 = *(v0 + 344);

  v10 = *(v0 + 360);
  if (v10 >> 60 != 15)
  {
    sub_100016590(*(v0 + 352), v10);
  }

  sub_100016590(*(v0 + 368), *(v0 + 376));
  sub_100016590(*(v0 + 384), *(v0 + 392));
  v11 = *(v0 + 400);

  return _swift_deallocObject(v0, 416);
}

uint64_t sub_10007F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
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

uint64_t sub_10007F118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
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

uint64_t sub_10007F2C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007F310()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007F350()
{
  v1 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v4 + 41);
}

uint64_t sub_10007F3F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007F458()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007F4C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10007F590()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10007F69C()
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

uint64_t sub_10007F794()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

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

uint64_t sub_10007F8E4()
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

uint64_t sub_10007FC8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007FCC4()
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

uint64_t sub_10007FDD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007FE10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007FE50()
{
  v1 = sub_1000BC4D4(&qword_1016AF990, &qword_1013CAEB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = *(v0 + 56);

  v9 = *(v0 + 72);

  v10 = *(v0 + 80);

  v11 = *(v0 + 88);

  v12 = *(v0 + 96);

  (*(v2 + 8))(v0 + v3, v1);
  v13 = *(v0 + v4);

  v14 = *(v0 + v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10007FF84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100080024()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000800DC()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100080234()
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

uint64_t sub_1000803D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100080408()
{
  v1 = sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000804E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24) + 24);
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
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008060C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100080734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000807A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100080810(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000808D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10008099C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000809DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
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
    if (v12 >= 0x13)
    {
      return v12 - 18;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100080AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&qword_1016B0478, &unk_1013CDC10);
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
    *(a1 + *(a4 + 24)) = a2 + 18;
  }

  return result;
}

double sub_100080B6C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10138BBF0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  return result;
}

uint64_t sub_100080B94()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100080BE4()
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

uint64_t sub_100080C84()
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

uint64_t sub_100080D1C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100080D74()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100080DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100080E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100080E90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BC4D4(&qword_1016B0878, &qword_1013CF3B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 96);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100080F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016B0878, &qword_1013CF3B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 96);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100081480()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000814B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100081524()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008155C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000815A4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000815EC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10008164C(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1000816F8(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10008185C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100081898()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = *(v0 + v2 + v1[9] + 8);

  v8 = *(v0 + v2 + v1[15]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000819AC()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[9] + 8);

  v9 = *(v5 + v1[15]);

  v10 = *(v0 + v3);

  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100081AE0()
{
  v1 = (type metadata accessor for LeashRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = *(v0 + v2 + v1[8]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100081BE4()
{
  v1 = (type metadata accessor for LeashRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[8]);

  v9 = *(v0 + v3);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100081D0C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100081D50()
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

uint64_t sub_100081E60()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (v2 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[9] + 8);

  v9 = *(v5 + v1[15]);

  v10 = *(v0 + v3 + 16);

  return _swift_deallocObject(v0, v3 + 24);
}

uint64_t sub_100081F80()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  sub_100016590(*v6, *(v6 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v1[9] + 8);

  v10 = *(v6 + v1[15]);

  v11 = *(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000820B8()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 17) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v1[9] + 8);

  v10 = *(v6 + v1[15]);

  v11 = *(v0 + v3 + 8);

  v12 = *(v0 + v4);

  v13 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_100082208()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_100408170(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100082254()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for SafeLocation() - 8);
  v7 = (v5 + *(*v6 + 80) + 8) & ~*(*v6 + 80);
  v8 = (*(*v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  v10 = *(v0 + v4 + 8);

  v11 = *(v0 + v5);

  sub_100016590(*(v0 + v7), *(v0 + v7 + 8));
  v9(v0 + v7 + v6[7], v1);
  v12 = *(v0 + v7 + v6[9] + 8);

  v13 = *(v0 + v7 + v6[15]);

  v14 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10008241C()
{
  v1 = (type metadata accessor for LeashRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = *(v0 + v2 + v1[8]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100082518()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100082550()
{
  v1 = (type metadata accessor for LeashRecord() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[4];

  v7 = v0[5];

  v8 = v0 + v2;
  sub_100016590(*v8, *(v8 + 1));
  v9 = v1[7];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(&v8[v9], v10);
  v11 = *&v8[v1[8]];

  v12 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100082694()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000826E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100082724()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 96);

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100082784()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
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

uint64_t sub_100082AF8()
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

uint64_t sub_100082F10()
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