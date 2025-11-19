uint64_t sub_10002AA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000032C4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10002AACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100009A00();
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000075C4(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002AB74()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_10002ABD4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

uint64_t sub_10002AC08@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = sub_10006FC00(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10002AC38()
{
  v1 = *(v0 + 24);

  sub_100004DD8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10002AC6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100004DD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002ACD4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002AD70()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002ADB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002AE00()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002AE38()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_10002AE80()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002EB80(&qword_10019A838, &unk_10014F590);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10002AED8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AF10()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AF48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AF80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002AFE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    v9 = a1 + *(a3 + 24);

    return sub_1000032C4(v9, a2, v8);
  }
}

uint64_t sub_10002B074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    v8 = v5 + *(a4 + 24);

    return sub_1000075C4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002B100()
{
  v1 = type metadata accessor for Logger();
  sub_100002978(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  sub_1000034F8((v0 + v5));
  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v7 + 9, v3 | 7);
}

uint64_t sub_10002B1BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002B1FC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002B244()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002B2E0()
{
  v1 = type metadata accessor for Logger();
  sub_100002978(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002B35C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002B408()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = sub_100029498();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10002B448()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = sub_1000046B8();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10002B48C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000046B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002B52C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002B5C8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002B610()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002B6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000032C4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10002B76C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000075C4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002B874()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B8AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_10000EEA4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002B8E4()
{
  v1 = type metadata accessor for URL();
  sub_10000482C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002B964()
{
  _Block_release(*(v0 + 24));

  sub_100012A08();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002B9A8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002BA50()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002BB24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002BB5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002BBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002EB80(&qword_10019BA18, &qword_100150EB8);
  v7 = sub_1000FDA70(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_1000032C4(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_10002BC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10002EB80(&qword_10019BA18, &qword_100150EB8);
  result = sub_1000FDA70(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_1000075C4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_10002BD44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = sub_1000131F0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10002BD7C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = sub_1000131F0();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10002BDBC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = sub_100029498();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10002BE00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = sub_10000EEA4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002BE3C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000046B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002BE80()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002BEE4()
{
  _Block_release(*(v0 + 40));

  v1 = sub_100029498();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002BF30()
{
  v1 = v0[2];

  sub_1000034F8(v0 + 3);
  if (v0[11])
  {
    sub_1000034F8(v0 + 8);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10002BF80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = sub_1000131F0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002BFB8()
{
  v1 = *(v0 + 24);

  v2 = sub_1000131F0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10002BFF0()
{
  swift_unknownObjectWeakDestroy();
  sub_1000FD988();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002C024()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = sub_1000046B8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002C064()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = sub_100029498();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002C190()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002C240()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C278()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002C33C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C378()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  sub_100003A98();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_10002C410(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    v9 = a1 + *(a3 + 20);

    return sub_1000032C4(v9, a2, v8);
  }
}

uint64_t sub_10002C4A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    v8 = v5 + *(a4 + 20);

    return sub_1000075C4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002C540()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002C5DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10002C66C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002EB80(&qword_10019C460, &qword_100152008);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10002C6B0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  sub_100003A98();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_10002C748()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  sub_100003A98();

  return _swift_deallocObject(v10, v11, v12);
}

void sub_10002C834(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_10002C84C(a1, a2 & 1);
  }
}

void sub_10002C84C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10002C934()
{

  return sub_100007A28();
}

uint64_t sub_10002C978()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10002CAE4()
{
  v1 = *(v0 + 24);

  sub_100004DD8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10002CB7C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_10002CCB8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

uint64_t sub_10002CCE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002CD10(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

char *sub_10002CD38(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

__n128 sub_10002CDB4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002CDC0(uint64_t a1, int a2)
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

uint64_t sub_10002CDE0(uint64_t result, int a2, int a3)
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

uint64_t sub_10002CE20()
{
  v1 = v0;
  v2 = [v0 bundleIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 95;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5 = [v1 actionIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v3;
}

uint64_t sub_10002CF60()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013EBC(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000019, 0x8000000100154560, v0, v1);
}

uint64_t sub_10002CFFC()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013EBC(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10002D098()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013EBC(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000019, 0x8000000100154540, v0, v1);
}

uint64_t sub_10002D134@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100198070 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019D708, sizeof(__dst));
  memcpy(v29, &unk_10019D708, sizeof(v29));
  if (qword_100198080 != -1)
  {
    swift_once();
  }

  memcpy(v23, __dst, sizeof(v23));
  QueryType.namespace<A>(_:)(qword_10019D7D0, *algn_10019D7D8, qword_10019D7E0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v2, v3, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v27 = v10;
  v28 = &protocol witness table for Expression<A>;
  v24 = v5;
  v25 = v7;
  v26 = v9;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014BC40;
  if (qword_100198078 != -1)
  {
    swift_once();
  }

  memcpy(v23, __dst, sizeof(v23));
  QueryType.namespace<A>(_:)(qword_10019D7B8, unk_10019D7C0, qword_10019D7C8, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v12, v13, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10]);
  *(v11 + 56) = v10;
  *(v11 + 64) = &protocol witness table for Expression<A>;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v16;
  if (qword_100198088 != -1)
  {
    swift_once();
  }

  memcpy(v23, __dst, sizeof(v23));
  QueryType.namespace<A>(_:)(qword_10019D7E8, unk_10019D7F0, qword_10019D7F8, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v17, v18, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10]);
  *(v11 + 96) = v10;
  *(v11 + 104) = &protocol witness table for Expression<A>;
  *(v11 + 72) = v19;
  *(v11 + 80) = v20;
  *(v11 + 88) = v21;
  a1[3] = &type metadata for Table;
  a1[4] = &protocol witness table for Table;
  *a1 = swift_allocObject();
  SchemaType.select(_:_:)(&v24, v11, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  return sub_1000034F8(&v24);
}

void sub_10002D41C(uint64_t a1)
{
  sub_10002D134(v33);
  sub_100013334(v33, v30);
  v25 = v32;
  v26 = v31;
  sub_1000034B4(v30, v31);
  v34 = a1;
  v2 = sub_1000232F4(a1);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v2;
    *&v27 = _swiftEmptyArrayStorage;
    sub_100011438(0, v2 & ~(v2 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    v5 = 0;
    v3 = v27;
    v6 = v34 & 0xC000000000000001;
    do
    {
      if (v6)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v34 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_10002CE20();
      v11 = v10;

      *&v27 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_100011438(v12 > 1, v13 + 1, 1);
        v3 = v27;
      }

      ++v5;
      v3[2] = v13 + 1;
      v14 = &v3[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
    }

    while (v4 != v5);
  }

  *&v27 = v3;
  if (qword_100198078 != -1)
  {
    sub_100007DB8();
  }

  v15 = qword_10019D7B8;
  v16 = unk_10019D7C0;
  v17 = qword_10019D7C8;
  v18 = sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  v19 = sub_100013EBC(&qword_100198790, &unk_10019ACC0, &qword_1001507B0);
  v20 = Collection<>.contains(_:)(v15, v16, v17, v18, v19, &protocol witness table for String);
  v22 = v21;
  v24 = v23;

  v28 = v26;
  v29 = v25;
  sub_100013234(&v27);
  QueryType.filter(_:)(v20, v22, v24, v26, v25);

  sub_1000034F8(v33);
  sub_10001A798(&v27, v33);
  sub_1000034F8(v30);
  sub_10002D6AC(v33);
  sub_1000034F8(v33);
}

uint64_t sub_10002D6AC(void *a1)
{
  v3 = Connection.prepareRowIterator(_:)(a1);
  if (!v1)
  {
    __chkstk_darwin(v3);

    RowIterator.compactMap<A>(_:)();
    v2 = v5;
  }

  return v2;
}

id sub_10002D7B8()
{
  if (qword_100198080 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198088 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_10002EDF8();
  v0 = static LNAssistantSuggestionPhrase.fromJSON(_:)();

  v1 = [v0 phraseMetadata];
  v2 = [v1 actionIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = objc_allocWithZone(LNAssistantSuggestionPhraseQuery);
  return sub_100083984();
}

uint64_t sub_10002D998(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CodingUserInfoKey();
  sub_10002EB80(&unk_100198750, &unk_1001518C0);
  v5 = Dictionary.init(dictionaryLiteral:)();
  countAndFlagsBits = LNAssistantSuggestionPhrase.asJson(userInfo:)(v5)._countAndFlagsBits;
  if (v7)
  {
  }

  v22 = countAndFlagsBits;

  if (qword_100198070 != -1)
  {
    swift_once();
  }

  v27 = a3;
  memcpy(__dst, &unk_10019D708, sizeof(__dst));
  memcpy(__src, &unk_10019D708, sizeof(__src));
  sub_1000196B0(__dst, v23);
  if (qword_100198080 != -1)
  {
    swift_once();
  }

  v9 = [a1 bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  <- infix<A>(_:_:)();

  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  *(swift_initStackObject() + 16) = xmmword_10014BC40;
  if (qword_100198078 != -1)
  {
    sub_100007DB8();
  }

  sub_10002CE20();
  <- infix<A>(_:_:)();

  if (qword_100198088 != -1)
  {
    swift_once();
  }

  <- infix<A>(_:_:)();

  v10 = QueryType.insert(_:_:)(v23);
  v12 = v11;
  v14 = v13;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v23);
  memcpy(v26, __src, 0xB0uLL);
  sub_10001970C(v26);
  v28.template._countAndFlagsBits = v10;
  v28.template._object = v12;
  v28.bindings._rawValue = v14;
  Connection.run(_:)(v28);
  if (!v15)
  {
  }

  v23[0] = v15;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (swift_dynamicCast())
  {

    v16 = __src[1];
    v17 = __src[2];
    v18 = __src[3];
    if (LODWORD(__src[2]) == 19)
    {
      type metadata accessor for Schema.RuntimeError();
      sub_10002E890(&qword_100198770, type metadata accessor for Schema.RuntimeError);
      swift_allocError();
      *v19 = 0xD00000000000007FLL;
      v19[1] = 0x80000001001544C0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v20 = __src[0];
      sub_10002EC1C();
      swift_allocError();
      *v21 = v20;
      *(v21 + 8) = v16;
      *(v21 + 16) = v17;
      *(v21 + 24) = v18;
      swift_willThrow();
    }
  }
}

uint64_t sub_10002DE40()
{
  v0 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  Data.hash(into:)();

  return sub_100009B18(v0, v2);
}

uint64_t sub_10002DEA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = a2();
  sub_100009B18(v3, v5);
  return v6;
}

uint64_t sub_10002DEF8(uint64_t a1, id *a2)
{
  result = static Data._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10002DF88(uint64_t a1, id *a2)
{
  v3 = static Data._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

Class sub_10002E028()
{
  v0 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100009B18(v0, v2);
  return isa;
}

uint64_t sub_10002E084@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10002E0B8(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_10002E0C8@<X0>(_WORD *a1@<X8>)
{
  result = static Int64.fromDatatypeValue(_:)(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10002E0FC@<X0>(uint64_t *a1@<X8>)
{
  result = _s17AppIntents_SQLite9StatementC6handle33_E09230218008A0440B080F1AB3693645LLs13OpaquePointerVSgvpfi_0();
  *a1 = result;
  return result;
}

uint64_t sub_10002E124(uint64_t *a1)
{
  v2 = sub_100002920(a1);
  result = sub_1000B6308(v2, v3);
  *v1 = result;
  return result;
}

Class sub_10002E198@<X0>(Class *a1@<X8>)
{
  result = sub_10002E028();
  *a1 = result;
  return result;
}

uint64_t sub_10002E1C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000A1030();
}

uint64_t sub_10002E1CC@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of Statement.handle();
  *a1 = result;
  return result;
}

uint64_t sub_10002E214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10002ECB8();
}

uint64_t sub_10002E220@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002E258@<X0>(uint64_t *a1@<X0>, Class *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_100009B18(v3, v4);
  *a2 = isa;
  return result;
}

uint64_t sub_10002E2A4()
{
  sub_10000707C();
  result = j___s10Foundation4DataV36_unconditionallyBridgeFromObjectiveCyACSo6NSDataCSgFZ();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_10002E2D8(uint64_t a1)
{
  v2 = sub_10002E890(&qword_100198970, type metadata accessor for LNSystemProtocolIdentifier);
  v3 = sub_10002E890(&qword_100198978, type metadata accessor for LNSystemProtocolIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002E394(uint64_t a1)
{
  v2 = sub_10002E890(&qword_100198910, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v3 = sub_10002E890(&qword_100198918, type metadata accessor for LNSystemEntityProtocolIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002E450(uint64_t a1)
{
  v2 = sub_10002E890(&qword_100198940, type metadata accessor for LNPlatformName);
  v3 = sub_10002E890(&qword_100198948, type metadata accessor for LNPlatformName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002E50C(uint64_t a1)
{
  v2 = sub_10002E890(&qword_100198950, type metadata accessor for LNValueTypeSpecificMetadataKey);
  v3 = sub_10002E890(&qword_100198958, type metadata accessor for LNValueTypeSpecificMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002E5C8(uint64_t a1)
{
  v2 = sub_10002E890(&qword_100198920, type metadata accessor for LNActionTypeSpecificMetadataKey);
  v3 = sub_10002E890(&qword_100198928, type metadata accessor for LNActionTypeSpecificMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002E684(uint64_t a1)
{
  v2 = sub_10002E890(&qword_100198930, type metadata accessor for LNSuggestedActionDialogParameterKey);
  v3 = sub_10002E890(&qword_100198938, type metadata accessor for LNSuggestedActionDialogParameterKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002E740(uint64_t a1)
{
  v2 = sub_10002E890(&qword_1001986D8, type metadata accessor for LSPersistentIdentifier);
  v3 = sub_10002E890(&unk_1001986E0, type metadata accessor for LSPersistentIdentifier);
  v4 = sub_10002EB2C();

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, v4);
}

uint64_t sub_10002E890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002E920@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10002E968(uint64_t a1)
{
  v2 = sub_10002E890(&qword_100198960, type metadata accessor for URLResourceKey);
  v3 = sub_10002E890(&qword_100198968, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002EA64()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10002EAB8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

unint64_t sub_10002EB2C()
{
  result = qword_100199C80;
  if (!qword_100199C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199C80);
  }

  return result;
}

uint64_t sub_10002EB80(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10002EC1C()
{
  result = qword_10019AAF0;
  if (!qword_10019AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AAF0);
  }

  return result;
}

uint64_t sub_10002EC70(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10002ECB8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10002ED3C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10002EDC4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

unint64_t sub_10002EDF8()
{
  result = qword_100198798;
  if (!qword_100198798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100198798);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Cursor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002EE48(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002EE88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10002EF1C(uint64_t a1, int a2)
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

uint64_t sub_10002EF3C(uint64_t result, int a2, int a3)
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

uint64_t sub_10002F87C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10002F8B4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

NSString sub_10002F92C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_10002F9C4()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019D800);
  sub_10000347C(v0, qword_10019D800);
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002FA78(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = objc_opt_self();
  v13 = String._bridgeToObjectiveC()();
  aBlock[0] = 0;
  v14 = [v12 sourceIdentifierWithValue:v13 error:aBlock];

  v15 = aBlock[0];
  if (v14)
  {
    v24 = objc_opt_self();
    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    sub_100012A08();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10014CE80;
    *(v16 + 32) = v14;
    sub_100003D44(0, &qword_100198B78, CCSetDescriptor_ptr);
    v17 = v15;
    v23 = v14;
    sub_1000066C0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    *(v19 + 32) = a6;
    *(v19 + 40) = a3;
    *(v19 + 48) = a1;
    *(v19 + 56) = a2;
    aBlock[4] = sub_1000379C4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002FFF8;
    aBlock[3] = &unk_10018BB20;
    v20 = _Block_copy(aBlock);

    v21 = a5;

    [v24 deleteSetWithItemType:a3 descriptors:isa completion:v20];
    _Block_release(v20);
  }

  else
  {
    v22 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_10002FCF8()
{
  if ([objc_opt_self() isLowPowerDeviceEnabled])
  {
    v0 = [objc_opt_self() sharedVocabulary];
    sub_1000066C0();
    v1 = String._bridgeToObjectiveC()();
    [v0 removeAllVocabularyStringsOnBehalfOf:v1];
  }
}

void sub_10002FDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100198090 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000347C(v9, qword_10019D800);
    swift_errorRetain();

    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315650;
      sub_1000379D8();
      v12 = BinaryInteger.description.getter();
      v14 = sub_100004C50(v12, v13, &v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_100004C50(a6, a7, &v19);
      *(v11 + 22) = 2080;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = sub_100004C50(v15, v16, &v19);

      *(v11 + 24) = v17;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Could not clear Cascade donations for itemType: %s bundleId: %s. Error: %s", v11, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10002FFF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100030064()
{
  v62 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = sub_1000232F4(v1);
  v4 = 0;
  v59 = v1 & 0xFFFFFFFFFFFFFF8;
  v60 = v1 & 0xC000000000000001;
  v58 = v1 + 32;
  v57 = v0;
  while (v3 != v4)
  {
    if (v60)
    {
      v36 = *(v0 + 144);
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v59 + 16))
      {
        goto LABEL_29;
      }

      v5 = *(v58 + 8 * v4);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v7 = [v5 bundleIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!*(v2 + 16) || (v11 = *(v0 + 120), v12 = sub_10000C2A0(v8, v10), (v13 & 1) == 0))
    {

LABEL_16:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v35 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_17;
    }

    v14 = *(*(v2 + 56) + 8 * v12);

    v15 = [v6 actionIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    LOBYTE(v15) = sub_1000445F8(v16, v18, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_100198090 != -1)
    {
      sub_100002930();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000347C(v19, qword_10019D800);
    v20 = v6;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_1000063EC();
      v61[0] = sub_100004B3C();
      *v23 = 136315394;
      v24 = v3;
      v25 = [v20 actionIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_100004C50(v26, v28, v61);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v30 = [v20 bundleIdentifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_100004C50(v31, v33, v61);
      v3 = v24;
      v0 = v57;

      *(v23 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s in %s is denylisted, skipping donation.", v23, 0x16u);
      swift_arrayDestroy();
      sub_100004D8C();
      sub_1000036AC();
    }

LABEL_17:
    ++v4;
  }

  v37 = *(v0 + 144);

  *(v0 + 160) = _swiftEmptyArrayStorage;
  if (sub_1000232F4(_swiftEmptyArrayStorage))
  {
    v38 = swift_task_alloc();
    *(v0 + 168) = v38;
    *v38 = v0;
    v38[1] = sub_100030540;
    v39 = *(v0 + 112);
    v40 = *(v0 + 120);
    v41 = *(v0 + 104);
    v42 = *(v0 + 64);

    sub_100031014(v42, _swiftEmptyArrayStorage);
  }

  else
  {
    v43 = *(v0 + 152);
    v44 = *(v0 + 112);
    v45 = *(v0 + 120);
    v46 = *(v0 + 104);
    v47 = *(v0 + 64);

    v48 = v47[3];
    sub_1000034B4(v47, v48);
    sub_1000039EC();
    v50 = v49(v48);
    v52 = v51;
    sub_10002FA78(v50, v51, 0x2EEAu, v46, v44, v45);
    if (!v43)
    {
      sub_10002FA78(v50, v52, 0x1E8Eu, *(v0 + 104), *(v0 + 112), *(v0 + 120));
      v53 = *(v0 + 112);
      v54 = *(v0 + 120);
      v55 = *(v0 + 104);
      sub_10002FCF8();
    }

    sub_100003A00();

    v56();
  }
}

uint64_t sub_100030540()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  sub_100007A64();
  *v7 = v6;
  *(v8 + 176) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10003063C()
{
  sub_1000036C4();
  v2 = *(v0 + 176);
  if ([objc_opt_self() isLowPowerDeviceEnabled])
  {
    v3 = *(v0 + 120);
    sub_10003131C(*(v0 + 64), *(v0 + 160), *(v0 + 96), *(v0 + 104), *(v0 + 112));
    v4 = *(v0 + 160);

    if (v2)
    {
      if (qword_100198090 != -1)
      {
        sub_100002930();
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000347C(v5, qword_10019D800);
      sub_10001A5F8();
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        sub_100007764();
        v8 = sub_100005D18();
        *v1 = 138412290;
        swift_errorRetain();
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v1 + 4) = v9;
        *v8 = v9;
        sub_10000795C(&_mh_execute_header, v10, v7, "Failed to donate AppShortcut phrases to SiriServer: %@");
        sub_100003E9C(v8, &unk_10019A260, &unk_10014D030);
        sub_100004D70();
        sub_100004D8C();
      }

      else
      {
      }
    }
  }

  else
  {
    v11 = *(v0 + 160);
  }

  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v13 = sub_100003668(v12);

  return sub_1000317E4(v13, v14);
}

uint64_t sub_1000307F0()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_100007A64();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000308EC()
{
  sub_1000036C4();
  if (qword_100198160 != -1)
  {
    sub_1000074B8();
  }

  v2 = *(v0 + 64);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000034B4(v2, v3);
  sub_10001D55C();
  v5 = v1(v3, v4);
  v7 = v6;
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  sub_1000B53A4(inited);
  sub_1000356F4(v9);

  sub_100003A00();

  return v10();
}

uint64_t sub_1000309F4()
{
  if (qword_100198090 != -1)
  {
    sub_100002930();
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = type metadata accessor for Logger();
  sub_10000347C(v2, qword_10019D800);
  sub_10001A5F8();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  if (v5)
  {
    v7 = sub_100007764();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to donate Auto Shortcuts to Cascade: %@", v7, 0xCu);
    sub_100003E9C(v8, &unk_10019A260, &unk_10014D030);
    sub_100003A0C();
    sub_100004D70();
  }

  else
  {
    v10 = *(v0 + 176);
  }

  if ([objc_opt_self() isLowPowerDeviceEnabled])
  {
    v11 = *(v0 + 120);
    sub_10003131C(*(v0 + 64), *(v0 + 160), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  v12 = *(v0 + 160);

  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  sub_100003668(v13);
  sub_10000C08C();

  return sub_1000317E4(v14, v15);
}

uint64_t sub_100030CB4()
{
  sub_1000036C4();
  if (qword_100198090 != -1)
  {
    sub_100002930();
    swift_once();
  }

  v3 = *(v0 + 192);
  v4 = type metadata accessor for Logger();
  sub_10000347C(v4, qword_10019D800);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = sub_100012824();
  v8 = *(v0 + 192);
  if (v7)
  {
    sub_100007764();
    v9 = sub_100005D18();
    *v1 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v9 = v10;
    sub_10000795C(&_mh_execute_header, v11, v6, "Failed to donate AppShortcut spans to Cascade: %@");
    sub_100003E9C(v9, &unk_10019A260, &unk_10014D030);
    sub_100004D70();
    sub_100004D8C();
  }

  else
  {
    v12 = *(v0 + 192);
  }

  if (qword_100198160 != -1)
  {
    sub_1000074B8();
  }

  v13 = *(v0 + 64);
  v14 = v13[3];
  v15 = v13[4];
  sub_1000034B4(v13, v14);
  sub_10001D55C();
  v16 = v2(v14, v15);
  v18 = v17;
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  sub_1000B53A4(inited);
  sub_1000356F4(v20);

  sub_100003A00();

  return v21();
}

uint64_t sub_100030EAC()
{
  v1 = v0[13];
  v2 = v0[9];
  v0[14] = sub_10004E130((v0 + 2), v0[10], v0[11]);
  v0[15] = v1;
  v3 = v0[11];

  if (!v1)
  {
    sub_1000034F8(v0 + 2);
  }

  sub_100009990();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100030F4C()
{
  sub_1000036A0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_100030FB0()
{
  sub_1000036A0();

  sub_1000034F8((v0 + 16));
  v1 = *(v0 + 120);
  sub_100003A00();

  return v2();
}

uint64_t sub_100031014(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_100031034, 0, 0);
}

uint64_t sub_100031034()
{
  v24 = v0;
  if (qword_100198090 != -1)
  {
    sub_100002930();
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_10000347C(v2, qword_10019D800);
  sub_100013334(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100007764();
    v6 = sub_1000056E4();
    v23 = v6;
    *v5 = 136315138;
    v7 = v0[5];
    sub_1000034B4(v0 + 2, v7);
    sub_1000039EC();
    v9 = v8(v7);
    v11 = v10;
    sub_1000034F8(v0 + 2);
    v12 = sub_100004C50(v9, v11, &v23);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Donating Auto Shortcuts to Cascade for %s", v5, 0xCu);
    sub_1000034F8(v6);
    sub_100004D70();
    sub_100011FBC();
  }

  else
  {

    sub_1000034F8(v0 + 2);
  }

  sub_100107644(1000, v0[8]);
  v0[9] = v13;
  if (sub_1000232F4(v13))
  {
    if (qword_100198098 != -1)
    {
      swift_once();
    }

    v15 = v0[7];
    v0[10] = qword_100198A40;
    v16 = v15[3];
    sub_1000034B4(v15, v16);
    sub_1000039EC();
    v0[11] = v17(v16);
    v0[12] = v18;
    v19 = sub_100019CD0();

    return _swift_task_switch(v19, v20, 0);
  }

  else
  {
    v21 = v0[9];

    sub_100003A00();

    return v22();
  }
}

uint64_t sub_1000312A8()
{
  sub_1000036A0();
  v1 = v0[10];
  sub_100032768(v0[11], v0[12], v0[9]);

  v2 = v0[9];

  sub_100003A00();

  return v3();
}

void sub_10003131C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a1[3];
  v10 = a1[4];
  sub_1000034B4(a1, v11);
  v12 = (*(*(v10 + 8) + 8))(v11);
  v14 = sub_1000343F0(v12, v13, a2, a3);
  if (v5)
  {
  }

  else
  {
    v15 = v14;

    if (sub_1000232F4(v15))
    {
      if (qword_100198090 != -1)
      {
        swift_once();
      }

      v46 = a5;
      v16 = type metadata accessor for Logger();
      sub_10000347C(v16, qword_10019D800);
      sub_100013334(a1, v47);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v50 = v20;
        *v19 = 136446210;
        v22 = v48;
        v21 = v49;
        sub_1000034B4(v47, v48);
        v23 = (*(*(v21 + 8) + 8))(v22);
        v25 = v24;
        sub_1000034F8(v47);
        v26 = sub_100004C50(v23, v25, &v50);

        *(v19 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "Calling INVocabulary to sync App Shortcuts to Siri server for %{public}s", v19, 0xCu);
        sub_1000034F8(v20);
      }

      else
      {

        sub_1000034F8(v47);
      }

      sub_100003D44(0, &qword_100198B88, NSOrderedSet_ptr);
      sub_10006DB9C(v15);

      v39 = sub_100034D2C();
      v41 = a1[3];
      v40 = a1[4];
      sub_1000034B4(a1, v41);
      (*(*(v40 + 8) + 8))(v41);
      v42 = String._bridgeToObjectiveC()();

      v43 = v46;
    }

    else
    {

      if (qword_100198090 != -1)
      {
        swift_once();
      }

      v27 = a5;
      v28 = type metadata accessor for Logger();
      sub_10000347C(v28, qword_10019D800);
      sub_100013334(a1, v47);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v50 = v32;
        *v31 = 136446210;
        v34 = v48;
        v33 = v49;
        sub_1000034B4(v47, v48);
        v35 = (*(*(v33 + 8) + 8))(v34);
        v37 = v36;
        sub_1000034F8(v47);
        v38 = sub_100004C50(v35, v37, &v50);

        *(v31 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v29, v30, "No App Shortcuts to sync to server using INVocabulary %{public}s", v31, 0xCu);
        sub_1000034F8(v32);
      }

      else
      {

        sub_1000034F8(v47);
      }

      v39 = [objc_allocWithZone(NSOrderedSet) init];
      v45 = a1[3];
      v44 = a1[4];
      sub_1000034B4(a1, v45);
      (*(*(v44 + 8) + 8))(v45);
      v42 = String._bridgeToObjectiveC()();

      v43 = v27;
    }

    [v43 setVocabulary:v39 ofType:50003 onBehalfOf:{v42, v46}];
  }
}

uint64_t sub_1000317E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;

  return _swift_task_switch(sub_100031874, 0, 0);
}

uint64_t sub_100031874()
{
  v63 = v0;
  v1 = *(v0[20] + 16);
  if (!v1)
  {
    if (qword_100198090 != -1)
    {
      sub_100002930();
      swift_once();
    }

    v8 = v0[19];
    v9 = type metadata accessor for Logger();
    sub_10000347C(v9, qword_10019D800);
    v10 = sub_1000066C0();
    sub_100013334(v10, v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_100007764();
      v15 = sub_1000056E4();
      v62 = v15;
      *v14 = 136315138;
      v16 = v0[13];
      sub_1000034B4(v0 + 10, v16);
      sub_1000039EC();
      v18 = v17(v16);
      v20 = v19;
      sub_1000034F8(v0 + 10);
      v21 = sub_100004C50(v18, v20, &v62);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Empty spans, will not donate for %s", v14, 0xCu);
      sub_1000034F8(v15);
      sub_100003A0C();
      sub_100004D8C();
    }

    else
    {

      sub_1000034F8(v0 + 10);
    }

    goto LABEL_18;
  }

  if (qword_100198090 != -1)
  {
    sub_100002930();
    swift_once();
    v61 = v0[20];
  }

  v2 = type metadata accessor for Logger();
  v0[21] = sub_10000347C(v2, qword_10019D800);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = sub_100007764();
    *v7 = 134217984;
    *(v7 + 4) = v1;

    _os_log_impl(&_mh_execute_header, v3, v4, "Donating %ld AppShortcuts spans to Cascade", v7, 0xCu);
    sub_100003A0C();
  }

  else
  {
    v22 = v0[20];
  }

  sub_100003D44(0, &qword_10019A770, AFPreferences_ptr);
  v23 = sub_100027D40();
  if (!v24)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (!sub_100024814(v35))
    {
LABEL_16:

LABEL_18:
      sub_100003A00();
      goto LABEL_19;
    }

    v36 = sub_100011344();
    sub_100004814(v36);
    v39 = "Cannot get Siri language to register app entity span data.";
LABEL_15:
    sub_100011578(&_mh_execute_header, v37, v38, v39);
    sub_100011FBC();
    goto LABEL_16;
  }

  v25 = v23;
  v26 = v24;
  v28 = v0[19];
  v27 = v0[20];
  v29 = v28[3];
  sub_1000034B4(v28, v29);
  sub_1000039EC();
  v30(v29);
  v33 = sub_100032494(v25, v26, v31, v32, v27);
  v0[22] = v33;

  v42 = sub_1000232F4(v33);
  v0[23] = v42;
  if (!v42)
  {

    v34 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (!sub_100024814(v58))
    {
      goto LABEL_16;
    }

    v59 = sub_100011344();
    sub_100004814(v59);
    v39 = "Spans produced no ccItems, exiting early.";
    goto LABEL_15;
  }

  v43 = v0[19];
  v44 = objc_opt_self();
  v45 = v28[3];
  v46 = v28[4];
  sub_1000034B4(v43, v45);
  (*(*(v46 + 8) + 8))(v45);
  v47 = String._bridgeToObjectiveC()();

  v0[10] = 0;
  v48 = [v44 sourceIdentifierWithValue:v47 error:v0 + 10];
  v0[24] = v48;

  v49 = v0[10];
  if (v48)
  {
    v50 = objc_opt_self();
    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    sub_100012A08();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10014CE80;
    *(v51 + 32) = v48;
    sub_100003D44(0, &qword_100198B78, CCSetDescriptor_ptr);
    v52 = v49;
    v53 = v48;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[25] = isa;

    sub_10001059C();
    v0[2] = v55;
    v0[7] = v0 + 18;
    v0[3] = sub_100031E78;
    v56 = swift_continuation_init();
    v57 = sub_10002EB80(&unk_100198BE0, &unk_10014D070);
    sub_100007A44(v57);
    v0[11] = 1107296256;
    v0[12] = sub_10003260C;
    v0[13] = &unk_10018BBC0;
    v0[14] = v56;
    [v50 fullSetDonationWithItemType:7822 descriptors:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  v60 = v49;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100003A00();
LABEL_19:

  return v40();
}

uint64_t sub_100031E78()
{
  sub_1000036A0();
  v1 = *v0;
  sub_1000050EC();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 208) = v5;
  if (v5)
  {
    v6 = *(v2 + 176);
  }

  sub_100009990();

  return _swift_task_switch(v7, v8, v9);
}

void sub_100031FAC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  if (v1 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(v0 + 176);
    v7 = v6 & 0xC000000000000001;
    v52 = v6 + 32;
    v8 = &TableBuilder;
    *&v3 = 138412546;
    v50 = v3;
    v51 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v9 = *(v0 + 176);
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v52 + 8 * v5);
      }

      v11 = v10;
      *(v0 + 80) = 0;
      v12 = [v2 *&v8[33].ivar:v10 base:{v0 + 80, v50}size];
      v13 = *(v0 + 80);
      if (v12)
      {
        v14 = v13;

        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          break;
        }
      }

      else
      {
        v16 = *(v0 + 168);
        v17 = v13;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v18 = v11;
        swift_errorRetain();
        v19 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v11))
        {
          v20 = sub_1000063EC();
          v21 = v2;
          v22 = swift_slowAlloc();
          *v20 = v50;
          *(v20 + 4) = v18;
          *v22 = v18;
          *(v20 + 12) = 2112;
          v23 = v18;
          swift_errorRetain();
          v24 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 14) = v24;
          v22[1] = v24;
          _os_log_impl(&_mh_execute_header, v19, v11, "Cannot register %@ with Cascade. Error: %@", v20, 0x16u);
          sub_10002EB80(&unk_10019A260, &unk_10014D030);
          swift_arrayDestroy();
          v2 = v21;
          v7 = v51;
          sub_1000036AC();
          sub_100003A0C();
        }

        else
        {
        }

        v8 = &TableBuilder;
      }

      if (++v5 == *(v0 + 184))
      {
        *(v0 + 80) = 0;
        v25 = [v2 finish:v0 + 80];
        v26 = *(v0 + 80);
        if (v25)
        {
          v27 = *(v0 + 168);
          v28 = *(v0 + 176);
          sub_100013334(*(v0 + 152), v0 + 80);
          v29 = v26;

          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.debug.getter();
          v32 = os_log_type_enabled(v30, v31);
          v33 = *(v0 + 192);
          v34 = *(v0 + 176);
          if (v32)
          {
            sub_1000056E4();
            v35 = sub_10000EE1C();
            v53 = v35;
            *v11 = 134218498;
            *(v11 + 1) = v4;
            *(v11 + 6) = 2048;
            v36 = v2;
            v37 = sub_1000232FC(v34);

            *(v11 + 14) = v37;

            *(v11 + 11) = 2082;
            v38 = *(v0 + 104);
            sub_1000034B4((v0 + 80), v38);
            sub_1000039EC();
            v40 = v39(v38);
            v42 = v41;
            sub_1000034F8((v0 + 80));
            v43 = sub_100004C50(v40, v42, &v53);

            *(v11 + 3) = v43;
            _os_log_impl(&_mh_execute_header, v30, v31, "Completed Cascade %ld of %ld span donations for %{public}s.", v11, 0x20u);
            sub_1000034F8(v35);
            sub_100003A0C();
            sub_100004D70();
          }

          else
          {
            v47 = *(v0 + 176);
            swift_bridgeObjectRelease_n();

            sub_1000034F8((v0 + 80));
          }

          sub_100003A00();
        }

        else
        {
          v44 = *(v0 + 192);
          v45 = *(v0 + 176);
          v46 = v26;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100003A00();
        }

        sub_1000381A8();

        __asm { BRAA            X1, X16 }
      }
    }
  }

  __break(1u);
}

uint64_t sub_1000323F8()
{
  sub_1000036C4();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[26];
  sub_100003A00();

  return v5();
}

void *sub_100032494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v22 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = 0;
    for (i = a5 + 32; ; i += 104)
    {
      sub_100011278(v15);
      sub_100011278(&v20);
      sub_100011278(v16);
      sub_100011278(v18);
      v17 = v9;
      v19 = v9;
      sub_100037C7C(v15, v14);
      sub_100037C7C(v16, v14);
      sub_100003E9C(&v19, &unk_100198BF0, &unk_10014D080);
      memcpy(__dst, v18, 0x68uLL);
      sub_100035160(v17, __dst, a1, a2);
      sub_100003E9C(&v17, &unk_100198BF0, &unk_10014D080);
      if (v5)
      {
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = v22[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 - 1 == v9)
      {
        break;
      }

      ++v9;
    }

    return v22;
  }

  return result;
}

uint64_t *sub_10003260C(uint64_t a1, void *a2, void *a3)
{
  result = sub_1000034B4((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_100032678(v6, a3);
  }

  if (a2)
  {
    return sub_1000326E4(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100032678(uint64_t a1, uint64_t a2)
{
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_100032704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  return _swift_continuation_throwingResume();
}

uint64_t sub_100032728()
{
  v0 = type metadata accessor for AppShortcutDonator.CascadeSyncManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100034350();
  qword_100198A40 = result;
  return result;
}

uint64_t sub_100032768(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - v10;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_100004C50(a1, a2, &v31);
    _os_log_impl(&_mh_execute_header, v12, v13, "[Cascade] queueing %{public}s", v14, 0xCu);
    sub_1000034F8(v15);
  }

  v16 = OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_workQueue;
  swift_beginAccess();

  sub_1000F5064();
  v17 = *(*(v4 + v16) + 16);
  sub_1000F50F0(v17);
  v18 = *(v4 + v16);
  *(v18 + 16) = v17 + 1;
  v19 = (v18 + 24 * v17);
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  *(v4 + v16) = v18;
  result = swift_endAccess();
  v21 = OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask;
  if (!*(v4 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask))
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "[Cascade] Creating processing task", v24, 2u);
    }

    v25 = type metadata accessor for TaskPriority();
    sub_1000075C4(v11, 1, 1, v25);
    v26 = sub_100037C04(&qword_100198C28, type metadata accessor for AppShortcutDonator.CascadeSyncManager);
    v27 = swift_allocObject();
    v27[2] = v4;
    v27[3] = v26;
    v27[4] = v4;
    swift_retain_n();
    v28 = sub_10003A6C0(0, 0, v11, &unk_10014D0A0, v27);
    v29 = *(v4 + v21);
    *(v4 + v21) = v28;
  }

  return result;
}

uint64_t sub_100032A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 176) = a4;

  return _swift_task_switch(sub_100032B10, a4, 0);
}

uint64_t sub_100032B10()
{
  v50 = v2;
  isa = v2[22].super.isa;
  v8 = OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_logger;
  v2[23].super.isa = OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_workQueue;
  v2[24].super.isa = v8;
  swift_beginAccess();
  while (1)
  {
    sub_100002668();
    if (!v10)
    {
      v28 = v2[24].super.isa + v9;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (sub_100024814(v30))
      {
        v31 = sub_100011344();
        sub_100004814(v31);
        sub_100011578(&_mh_execute_header, v32, v33, "[Cascade] processing task idle, exiting");
        sub_100011FBC();
      }

      v34 = v2[22].super.isa;

      v35 = *(v34 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask);
      *(v34 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask) = 0;

      sub_100003A00();
      sub_1000381A8();

      __asm { BRAA            X1, X16 }
    }

    sub_100012F30();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000F5194(v0);
      v0 = v27;
    }

    if (!v0[2].isa)
    {
      __break(1u);
    }

    v12 = v2[23].super.isa;
    v11 = v2[24].super.isa;
    v13 = sub_100011734();
    sub_10001A830(v13);
    v0[2].isa = v5;
    *(v12 + v4) = v0;
    swift_endAccess();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      sub_100007764();
      v16 = sub_10000EE1C();
      v49 = v16;
      *v3 = 136446210;

      v17 = sub_100004C50(v1, v6, &v49);

      *(v3 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v14, v15, "[Cascade] Processing %{public}s", v3, 0xCu);
      sub_1000034F8(v16);
      sub_1000036AC();
      sub_100004D70();
    }

    objc_opt_self();
    sub_10001A5F8();
    v18 = String._bridgeToObjectiveC()();
    v2[10].super.isa = 0;
    v19 = [v14 sourceIdentifierWithValue:v18 error:&v2[10]];
    v2[28].super.isa = v19;

    v4 = v2[10].super.isa;
    if (v19)
    {
      break;
    }

    v20 = v4;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100021584();

    swift_errorRetain();
    v0 = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();

    v21 = sub_100012824();
    v3 = v2[26].super.isa;
    v5 = v2[27].super.isa;
    if (v21)
    {
      v22 = v2[25].super.isa;
      v23 = sub_1000063EC();
      v4 = sub_100004B3C();
      v49 = v4;
      *v23 = 136446466;

      v24 = sub_100004C50(v22, v3, &v49);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2080;
      v2[10].super.isa = v6;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v25 = String.init<A>(describing:)();
      v3 = sub_100004C50(v25, v26, &v49);

      *(v23 + 14) = v3;
      _os_log_impl(&_mh_execute_header, v0, v1, "Failed to register %{public}s with Cascade with error: %s.\nContinuing donation.", v23, 0x16u);
      swift_arrayDestroy();
      sub_1000036AC();
      sub_100003A0C();
    }

    else
    {
    }
  }

  objc_opt_self();
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10014CE80;
  *(v38 + 32) = v19;
  sub_100003D44(0, &qword_100198B78, CCSetDescriptor_ptr);
  v39 = v4;
  v40 = v19;
  v2[29].super.isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10001059C();
  v2[2].super.isa = v41;
  v2[7].super.isa = &v2[21];
  v42 = sub_100009960();
  v43 = sub_10002EB80(&unk_100198BE0, &unk_10014D070);
  sub_100007A44(v43);
  v2[11].super.isa = 1107296256;
  v2[12].super.isa = sub_10003260C;
  v2[13].super.isa = &unk_10018BC88;
  v2[14].super.isa = v42;
  v44 = sub_100011AA8();
  [v44 v45];
  sub_1000381A8();

  return _swift_continuation_await(v46);
}

uint64_t sub_10003306C()
{
  sub_1000036A0();
  v1 = *v0;
  sub_1000050EC();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 240) = v5;
  v6 = *(v4 + 176);
  if (v5)
  {
    v7 = sub_100033B9C;
  }

  else
  {
    v7 = sub_1000331AC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000331AC()
{
  v106 = v2;
  v4 = *(v2 + 168);
  v5 = (v2 + 80);
  v6 = *(v2 + 216);

  v95 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_30:
    v48 = *(v2 + 216);
    if (v6 < 0)
    {
      v49 = *(v2 + 216);
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v5;
  if (!v7)
  {
    v3 = 0;
    goto LABEL_20;
  }

  if (v7 >= 1)
  {
    v94 = v6;
    v8 = v6 & 0xC000000000000001;
    v96 = *(v2 + 216) + 32;

    v6 = 0;
    v3 = 0;
    v9 = &TableBuilder;
    v100 = v7;
    v101 = v4;
    v99 = v8;
    while (1)
    {
      if (v8)
      {
        v10 = *(v2 + 216);
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v96 + 8 * v6);
      }

      v0 = v11;
      *v5 = 0;
      v12 = [v4 *&v9[33].ivar:v11 base:v5size];
      v1 = *v5;
      if (v12)
      {
        v13 = v1;

        if (__OFADD__(v3++, 1))
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        v104 = v3;
        v15 = *(v2 + 192);
        v16 = *(v2 + 176);
        v17 = v1;
        v18 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v19 = v0;
        swift_errorRetain();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = sub_1000063EC();
          swift_slowAlloc();
          v97 = sub_10000EE1C();
          v105[0] = v97;
          *v22 = 138412546;
          *(v22 + 4) = v19;
          *v16 = v19;
          *(v22 + 12) = 2080;
          *v103 = v18;
          v98 = v19;
          swift_errorRetain();
          sub_10002EB80(&unk_100198760, &qword_10014F3C0);
          v23 = String.init<A>(describing:)();
          v25 = sub_100004C50(v23, v24, v105);
          v5 = v103;

          *(v22 + 14) = v25;
          _os_log_impl(&_mh_execute_header, v20, v21, "Failed to register %@ with Cascade with error: %s.\nContinuing donation.", v22, 0x16u);
          sub_100003E9C(v16, &unk_10019A260, &unk_10014D030);
          sub_100004D70();
          sub_1000034F8(v97);
          sub_1000036AC();
          sub_100011FBC();
        }

        else
        {

          v5 = v103;
        }

        v7 = v100;
        v4 = v101;
        v3 = v104;
        v8 = v99;
        v9 = &TableBuilder;
      }

      if (v7 == ++v6)
      {
        v26 = *(v2 + 216);

        v6 = v94;
LABEL_20:
        *v5 = 0;
        v27 = [v4 finish:v5];
        v28 = *v5;
        if ((v27 & 1) == 0)
        {
          v38 = *(v2 + 224);
          v39 = v28;
          v40 = _convertNSErrorToError(_:)();

          swift_willThrow();
          goto LABEL_40;
        }

        v29 = *(v2 + 208);
        v30 = *(v2 + 216);
        v31 = *(v2 + 192);
        v32 = *(v2 + 176);

        v33 = v28;
        v0 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v0, v34))
        {
          v35 = v6;
          v1 = sub_1000056E4();
          v36 = sub_1000056E4();
          *v5 = v36;
          *v1 = 134218498;
          *(v1 + 1) = v3;
          *(v1 + 6) = 2048;
          v102 = v4;
          if (v95)
          {
            v43 = *(v2 + 216);
            if (v35 < 0)
            {
              v44 = *(v2 + 216);
            }

            v37 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v46 = *(v2 + 216);
          v45 = *(v2 + 224);
          v3 = *(v2 + 200);
          v4 = *(v2 + 208);
          *(v1 + 14) = v37;

          *(v1 + 11) = 2082;

          v47 = sub_100004C50(v3, v4, v5);

          *(v1 + 3) = v47;
          _os_log_impl(&_mh_execute_header, v0, v34, "[Cascade] Successfully registered %ld of %ld CCItems for application %{public}s", v1, 0x20u);
          sub_1000034F8(v36);
          sub_100003A0C();
          sub_100011FBC();
        }

        else
        {
          v1 = *(v2 + 216);
          v41 = *(v2 + 224);
          v42 = *(v2 + 208);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        goto LABEL_43;
      }
    }
  }

  __break(1u);
  while (1)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_53;
    }

    while (!v0[2].isa)
    {
      __break(1u);
LABEL_53:
      sub_1000F5194(v0);
      v0 = v93;
    }

    v51 = *(v2 + 184);
    v50 = *(v2 + 192);
    v52 = sub_100011734();
    isa = v0[5].isa;
    *(v2 + 208) = isa;
    *(v2 + 216) = v0[6];
    memmove(v52, &v0[7], 24 * v3);
    v0[2].isa = v3;
    *&v4[v51] = v0;
    swift_endAccess();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = sub_100007764();
      v57 = sub_1000056E4();
      v105[0] = v57;
      *v56 = 136446210;

      v58 = sub_100004C50(v1, isa, v105);

      *(v56 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v54, v55, "[Cascade] Processing %{public}s", v56, 0xCu);
      sub_1000034F8(v57);
      sub_1000036AC();
      sub_100003A0C();
    }

    objc_opt_self();
    sub_10001A5F8();
    v59 = String._bridgeToObjectiveC()();
    *(v2 + 80) = 0;
    v60 = [v54 sourceIdentifierWithValue:v59 error:v5];
    *(v2 + 224) = v60;

    v61 = *(v2 + 80);
    if (v60)
    {
      break;
    }

    v62 = v61;
    v40 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_40:
    v64 = *(v2 + 208);
    v63 = *(v2 + 216);
    v65 = *(v2 + 192);
    v66 = *(v2 + 176);

    swift_errorRetain();
    v0 = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();

    v67 = sub_100012824();
    v4 = *(v2 + 208);
    v3 = *(v2 + 216);
    if (v67)
    {
      v68 = *(v2 + 200);
      v69 = sub_1000063EC();
      v105[0] = sub_100004B3C();
      *v69 = 136446466;

      v70 = v68;
      v5 = v103;
      v71 = sub_100004C50(v70, v4, v105);

      *(v69 + 4) = v71;
      *(v69 + 12) = 2080;
      *(v2 + 80) = v40;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v72 = String.init<A>(describing:)();
      v4 = v73;
      v3 = sub_100004C50(v72, v73, v105);

      *(v69 + 14) = v3;
      _os_log_impl(&_mh_execute_header, v0, v1, "Failed to register %{public}s with Cascade with error: %s.\nContinuing donation.", v69, 0x16u);
      swift_arrayDestroy();
      sub_100003A0C();
      sub_100004D8C();
    }

    else
    {
    }

LABEL_43:
    sub_100002668();
    if (!v75)
    {
      v76 = v74 + *(v2 + 192);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();
      if (sub_100024814(v78))
      {
        v79 = sub_100011344();
        sub_100004814(v79);
        sub_100011578(&_mh_execute_header, v80, v81, "[Cascade] processing task idle, exiting");
        sub_100011FBC();
      }

      v82 = *(v2 + 176);

      v83 = *(v82 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask);
      *(v82 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask) = 0;

      sub_100003A00();

      return v84();
    }
  }

  objc_opt_self();
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_10014CE80;
  *(v86 + 32) = v60;
  sub_100003D44(0, &qword_100198B78, CCSetDescriptor_ptr);
  v87 = v61;
  v88 = v60;
  *(v2 + 232) = Array._bridgeToObjectiveC()();

  sub_10001059C();
  *(v2 + 16) = v89;
  *(v2 + 56) = v2 + 168;
  *(v2 + 24) = sub_10003306C;
  v90 = swift_continuation_init();
  *(v2 + 136) = sub_10002EB80(&unk_100198BE0, &unk_10014D070);
  *(v2 + 80) = _NSConcreteStackBlock;
  *(v2 + 88) = 1107296256;
  *(v2 + 96) = sub_10003260C;
  *(v2 + 104) = &unk_10018BC88;
  *(v2 + 112) = v90;
  v91 = sub_100011AA8();
  [v91 v92];

  return _swift_continuation_await(v2 + 16);
}

uint64_t sub_100033B9C()
{
  v48 = v0;
  isa = v0[29].super.isa;
  v3 = v0[30].super.isa;
  v4 = v0[28].super.isa;
  swift_willThrow();

  v5 = v0[30].super.isa;
  while (1)
  {
    sub_100021584();

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = sub_100012824();
    v9 = v0[26].super.isa;
    v10 = v0[27].super.isa;
    if (v8)
    {
      v11 = v0[25].super.isa;
      v12 = sub_1000063EC();
      v1 = sub_100004B3C();
      v47 = v1;
      *v12 = 136446466;

      v13 = sub_100004C50(v11, v9, &v47);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      v0[10].super.isa = v5;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v14 = String.init<A>(describing:)();
      v9 = sub_100004C50(v14, v15, &v47);

      *(v12 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to register %{public}s with Cascade with error: %s.\nContinuing donation.", v12, 0x16u);
      swift_arrayDestroy();
      sub_100004D70();
      sub_100004D8C();
    }

    else
    {
    }

    sub_100002668();
    if (!v17)
    {
      break;
    }

    sub_100012F30();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000F5194(v6);
      v6 = v28;
    }

    if (!v6[2].isa)
    {
      __break(1u);
    }

    v19 = v0[23].super.isa;
    v18 = v0[24].super.isa;
    v20 = sub_100011734();
    sub_10001A830(v20);
    v6[2].isa = v10;
    *(v19 + v9) = v6;
    swift_endAccess();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      sub_100007764();
      v23 = sub_10000EE1C();
      v47 = v23;
      *v1 = 136446210;

      v24 = sub_100004C50(v7, v5, &v47);

      *(v1 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, v22, "[Cascade] Processing %{public}s", v1, 0xCu);
      sub_1000034F8(v23);
      sub_1000036AC();
      sub_100004D70();
    }

    objc_opt_self();
    sub_10001A5F8();
    v25 = String._bridgeToObjectiveC()();
    v0[10].super.isa = 0;
    v26 = [v21 sourceIdentifierWithValue:v25 error:&v0[10]];
    v0[28].super.isa = v26;

    v1 = v0[10].super.isa;
    if (v26)
    {
      objc_opt_self();
      sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
      sub_100012A08();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_10014CE80;
      *(v39 + 32) = v26;
      sub_100003D44(0, &qword_100198B78, CCSetDescriptor_ptr);
      v40 = v1;
      v41 = v26;
      v0[29].super.isa = Array._bridgeToObjectiveC()().super.isa;

      sub_10001059C();
      v0[2].super.isa = v42;
      v0[7].super.isa = &v0[21];
      v43 = sub_100009960();
      v44 = sub_10002EB80(&unk_100198BE0, &unk_10014D070);
      sub_100007A44(v44);
      v0[11].super.isa = 1107296256;
      v0[12].super.isa = sub_10003260C;
      v0[13].super.isa = &unk_10018BC88;
      v0[14].super.isa = v43;
      v45 = sub_100011AA8();
      [v45 v46];

      return _swift_continuation_await(&v0[2]);
    }

    v27 = v1;
    v5 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v29 = v0[24].super.isa + v16;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (sub_100024814(v31))
  {
    v32 = sub_100011344();
    sub_100004814(v32);
    sub_100011578(&_mh_execute_header, v33, v34, "[Cascade] processing task idle, exiting");
    sub_100011FBC();
  }

  v35 = v0[22].super.isa;

  v36 = *(v35 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask);
  *(v35 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask) = 0;

  sub_100003A00();

  return v37();
}

uint64_t sub_1000340F8()
{
  v1 = OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask);

  v4 = *(v0 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_workQueue);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100034180()
{
  v0 = sub_1000340F8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AppShortcutDonator.CascadeSyncManager()
{
  result = qword_100198A88;
  if (!qword_100198A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000341FC()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000342B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000342F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100034350()
{
  swift_defaultActor_initialize();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    *(v0 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_processingTask) = 0;
    *(v0 + OBJC_IVAR____TtCV10LinkDaemon18AppShortcutDonatorP33_E0E56694824394ED529B7CEA22C2882218CascadeSyncManager_workQueue) = _swiftEmptyArrayStorage;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000343F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = sub_1000232F4(a4);
  v6 = 0;
  v84 = a4;
  v86 = a4 & 0xC000000000000001;
  v82 = a4 & 0xFFFFFFFFFFFFFF8;
  v7 = &_swiftEmptyDictionarySingleton;
  v8 = &qword_100198B90;
  while (1)
  {
    if (v91 == v6)
    {
      v99[0] = _swiftEmptyArrayStorage;
      v31 = sub_1000232F4(a3);
      v32 = 0;
      v92 = LNSystemProtocolIdentifierConditionallyEnabled;
      v95 = v31;
      while (v31 != v32)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_95;
          }

          v33 = *(a3 + 8 * v32 + 32);
        }

        v34 = v33;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_94;
        }

        v35 = [v33 actionIdentifier];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        if (v7[2])
        {
          v39 = sub_10000C2A0(v36, v38);
          v41 = v40;

          if (v41)
          {
            v42 = *(v7[7] + 8 * v39);
            v43 = [v42 systemProtocolMetadata];
            type metadata accessor for LNSystemProtocolIdentifier(0);
            sub_10002EB80(&qword_1001990B0, &qword_10014D050);
            sub_100037C04(&qword_100198970, type metadata accessor for LNSystemProtocolIdentifier);
            v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v4 + 16))
            {
              sub_10004B2BC(v92);
              if (v44)
              {

                v31 = v95;
                goto LABEL_32;
              }
            }

            v4 = [v42 openAppWhenRun];

            v31 = v95;
            if (v4)
            {

              goto LABEL_32;
            }
          }
        }

        else
        {
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v45 = *(v99[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v99;
        specialized ContiguousArray._endMutation()();
LABEL_32:
        ++v32;
      }

      v81 = v99[0];
      v83 = sub_1000232F4(v99[0]);
      v46 = 0;
      v47 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v46 == v83)
        {

          return v47;
        }

        if ((v81 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v46 >= *(v81 + 16))
          {
            goto LABEL_97;
          }

          v48 = *(v81 + 32 + 8 * v46);
        }

        v49 = v48;
        v29 = __OFADD__(v46++, 1);
        if (v29)
        {
          goto LABEL_96;
        }

        v50 = [v48 actionIdentifier];
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v53 = [v49 orderedPhrases];
        sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
        v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v54 >> 62)
        {
          v55 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v90 = v46;
        if (v55)
        {
          v99[0] = _swiftEmptyArrayStorage;
          v4 = v99;
          specialized ContiguousArray.reserveCapacity(_:)();
          if (v55 < 0)
          {
            goto LABEL_101;
          }

          v87 = v47;
          v56 = 0;
          while (1)
          {
            v57 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              break;
            }

            if ((v54 & 0xC000000000000001) != 0)
            {
              v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_90;
              }

              v58 = *(v54 + 8 * v56 + 32);
            }

            v4 = v58;
            v100 = v58;
            sub_100034DA4(&v101, &v100, v96, v52);
            if (v98)
            {
              goto LABEL_106;
            }

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v59 = *(v99[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v4 = v99;
            specialized ContiguousArray._endMutation()();
            ++v56;
            if (v57 == v55)
            {

              v4 = v99[0];
              v47 = v87;
              v46 = v90;
              goto LABEL_54;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v4 = _swiftEmptyArrayStorage;
LABEL_54:
        if (v4 >> 62)
        {
          v60 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v60 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v61 = v47 >> 62;
        if (v47 >> 62)
        {
          v62 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v62 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v63 = v62 + v60;
        if (__OFADD__(v62, v60))
        {
          goto LABEL_98;
        }

        v97 = v60;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v61)
        {
          goto LABEL_66;
        }

        v64 = v47 & 0xFFFFFFFFFFFFFF8;
        if (v63 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_65;
        }

LABEL_68:
        v66 = *(v64 + 16);
        v67 = (*(v64 + 24) >> 1) - v66;
        v68 = v64 + 8 * v66;
        v93 = v64;
        if (v4 >> 62)
        {
          v70 = _CocoaArrayWrapper.endIndex.getter();
          if (!v70)
          {
            goto LABEL_82;
          }

          v71 = v70;
          v72 = _CocoaArrayWrapper.endIndex.getter();
          if (v67 < v72)
          {
            goto LABEL_103;
          }

          if (v71 < 1)
          {
            goto LABEL_105;
          }

          v85 = v72;
          v88 = v47;
          v73 = v68 + 32;
          sub_100013EBC(&unk_100198BB0, &qword_100198BA8, &qword_10014D058);
          for (i = 0; i != v71; ++i)
          {
            sub_10002EB80(&qword_100198BA8, &qword_10014D058);
            v75 = sub_100037A94(v99, i, v4);
            v77 = *v76;
            (v75)(v99, 0);
            *(v73 + 8 * i) = v77;
          }

          v47 = v88;
          v46 = v90;
          v69 = v85;
LABEL_78:

          if (v69 < v97)
          {
            goto LABEL_99;
          }

          if (v69 > 0)
          {
            v78 = *(v93 + 16);
            v29 = __OFADD__(v78, v69);
            v79 = v78 + v69;
            if (v29)
            {
              goto LABEL_102;
            }

            *(v93 + 16) = v79;
          }
        }

        else
        {
          v69 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v69)
          {
            if (v67 < v69)
            {
              goto LABEL_104;
            }

            sub_100003D44(0, &qword_100198BA0, INSpeakableString_ptr);
            swift_arrayInitWithCopy();
            goto LABEL_78;
          }

LABEL_82:

          if (v97 > 0)
          {
            goto LABEL_99;
          }
        }
      }

      if (v61)
      {
LABEL_66:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v64 = v47 & 0xFFFFFFFFFFFFFF8;
LABEL_65:
        v65 = *(v64 + 16);
      }

      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v64 = v47 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_68;
    }

    if (v86)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v82 + 16))
      {
        goto LABEL_92;
      }

      v9 = *(v84 + 8 * v6 + 32);
    }

    v4 = v9;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_91;
    }

    v94 = v6;
    v10 = [v9 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v7;
    v4 = v7;
    v16 = sub_10000C2A0(v11, v13);
    v18 = v7[2];
    v19 = (v17 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    v22 = v17;
    sub_10002EB80(v8, &unk_10014D040);
    v4 = v99;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20))
    {
      v4 = v99[0];
      v23 = sub_10000C2A0(v11, v13);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_107;
      }

      v21 = v23;
    }

    if (v22)
    {

      v7 = v99[0];
      v25 = *(v99[0] + 56);
      v4 = v8;
      v26 = *(v25 + 8 * v21);
      *(v25 + 8 * v21) = v14;

      v8 = v4;
    }

    else
    {
      v7 = v99[0];
      *(v99[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v27 = (v7[6] + 16 * v21);
      *v27 = v11;
      v27[1] = v13;
      *(v7[7] + 8 * v21) = v14;

      v28 = v7[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_100;
      }

      v7[2] = v30;
    }

    v6 = v94 + 1;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:

  __break(1u);
LABEL_107:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100034D2C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithArray:isa];

  return v2;
}

Swift::Int PrimaryKey.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10003510C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100035160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = *(a2 + 96);
  v7 = *(v6 + 16);
  if (v7)
  {
    sub_100011438(0, v7, 0);
    v8 = (v6 + 64);
    v38 = a4;
    do
    {
      v9 = *(v8 - 3);
      v11 = *(v8 - 1);
      v10 = *v8;

      v12 = v10;
      if (a4)
      {
        v13 = String._bridgeToObjectiveC()();
      }

      else
      {
        v13 = 0;
      }

      v14 = [v12 localizedStringForLocaleIdentifier:v13];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        sub_100011438(v18 > 1, v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      v20 = &_swiftEmptyArrayStorage[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v8 += 5;
      --v7;
      a4 = v38;
    }

    while (v7);
    v5 = a2;
  }

  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v22 = [*(v5 + 32) localizedStringForLocaleIdentifier:v21];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = *v5;
  v26 = *(v5 + 8);
  v27 = *(v5 + 72);
  v28 = *(v5 + 80);
  v29 = *(v5 + 56);
  v30 = *(v5 + 64);
  objc_allocWithZone(CCAppShortcutEntityContent);
  swift_bridgeObjectRetain_n();

  v31 = sub_10003761C(v39, v24, v25, v26, v27, v28, v29, v30, _swiftEmptyArrayStorage);
  if (v37)
  {
  }

  else
  {
    v32 = v31;
    v33 = objc_allocWithZone(CCAppShortcutEntityMetaContent);
    v34 = sub_1000377E0();
    v35 = objc_allocWithZone(CCItemInstance);
    sub_1000378AC(v32, v34);
  }
}

uint64_t sub_100035408(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100027678();
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10003550C(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr);
    sub_100037D98();
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_100014464();
      return;
    }

    while (1)
    {
      sub_100048264(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1000356F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100002944(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002958();
  v28 = type metadata accessor for DispatchQoS();
  v8 = sub_100002944(v28);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002958();
  v15 = v14 - v13;
  v16 = v2 + *(*v2 + 144);
  os_unfair_lock_lock(v16);
  if (!*(v16 + 8))
  {
    *(v16 + 8) = os_transaction_create();
  }

  os_unfair_lock_unlock(v16);
  v17 = *(v2 + qword_10019E590);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = a1;
  sub_100013400(v18);
  sub_10000774C(COERCE_DOUBLE(1107296256));
  v30 = v19;
  v31 = &unk_10018BB70;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_1000069C8();
  sub_100037C04(v21, v22);
  sub_10002EB80(&qword_100198BC8, &qword_10014D068);
  sub_10001105C();
  sub_100013EBC(v23, v24, &qword_10014D068);
  sub_1000126F4();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  v25 = sub_100038194();
  v26(v25);
  (*(v10 + 8))(v15, v28);
}

uint64_t sub_10003597C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100002944(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002958();
  v30 = type metadata accessor for DispatchQoS();
  v10 = sub_100002944(v30);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002958();
  v17 = v16 - v15;
  v18 = v3 + *(*v3 + 144);
  os_unfair_lock_lock(v18);
  if (!*(v18 + 8))
  {
    *(v18 + 8) = os_transaction_create();
  }

  os_unfair_lock_unlock(v18);
  v19 = *(v3 + qword_10019E590);
  sub_100012A08();
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a1;
  v20[4] = a2;
  sub_100013400(v20);
  sub_10000774C(COERCE_DOUBLE(1107296256));
  v32 = v21;
  v33 = &unk_10018BC10;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_1000069C8();
  sub_100037C04(v23, v24);
  sub_10002EB80(&qword_100198BC8, &qword_10014D068);
  sub_10001105C();
  sub_100013EBC(v25, v26, &qword_10014D068);
  sub_1000126F4();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  v27 = sub_100038194();
  v28(v27);
  (*(v12 + 8))(v17, v30);
}

uint64_t sub_100035C10(void *a1, uint64_t a2)
{
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for DispatchTime();
  v57 = *(v59 - 8);
  v11 = *(v57 + 64);
  v12 = __chkstk_darwin(v59);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v49 - v14;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v51 = v7;
    v52 = v6;
    v17 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v17 = 136446466;
    if (qword_100198168 != -1)
    {
      swift_once();
    }

    v18 = qword_10019DB70;
    v19 = *algn_10019DB78;

    v20 = sub_100004C50(v18, v19, &v60);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    aBlock = 0x676E697461647075;
    v62 = 0xEA0000000000203ALL;
    v21._countAndFlagsBits = Set.description.getter();
    String.append(_:)(v21);

    v22 = sub_100004C50(aBlock, v62, &v60);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Queuing notification for %{public}s %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    v7 = v51;
    v6 = v52;
  }

  else
  {
  }

  v23 = *a1;
  v24 = *(*a1 + 136);
  v53 = v24;
  if (*(a1 + v24))
  {
    v25 = *(a1 + v24);

    dispatch thunk of DispatchWorkItem.cancel()();

    v23 = *a1;
  }

  v26 = *(v23 + 128);
  v27 = *(a1 + v26);
  if (v27)
  {
    v28 = *(a1 + v26);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v50 = a2;
      v51 = v7;
      v52 = v6;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136315138;
      if (qword_100198168 != -1)
      {
        swift_once();
      }

      v33 = qword_10019DB70;
      v34 = *algn_10019DB78;

      v35 = sub_100004C50(v33, v34, &aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Existing notification for %s, merging", v31, 0xCu);
      sub_1000034F8(v32);

      v7 = v51;
      v6 = v52;
      a2 = v50;
    }

    else
    {
    }

    v36 = sub_100035408(v27, a2);
    v37 = *(a1 + v26);
    *(a1 + v26) = v36;
  }

  else
  {
    *(a1 + v26) = a2;
  }

  v38 = v54;
  static DispatchTime.now()();
  *v10 = a1[2];
  (*(v7 + 104))(v10, enum case for DispatchTimeInterval.milliseconds(_:), v6);
  v39 = v55;
  + infix(_:_:)();
  (*(v7 + 8))(v10, v6);
  v40 = *(v57 + 8);
  v41 = v59;
  v40(v38, v59);
  v65 = sub_100037C4C;
  v66 = a1;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_10000C13C;
  v64 = &unk_10018BB98;
  _Block_copy(&aBlock);
  v60 = _swiftEmptyArrayStorage;
  sub_100037C04(&qword_100198BC0, &type metadata accessor for DispatchWorkItemFlags);

  sub_10002EB80(&qword_100198BC8, &qword_10014D068);
  sub_100013EBC(&qword_100198BD0, &qword_100198BC8, &qword_10014D068);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v42 = type metadata accessor for DispatchWorkItem();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = DispatchWorkItem.init(flags:block:)();

  v46 = *(a1 + v53);
  *(a1 + v53) = v45;

  v47 = *(a1 + qword_10019E590);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v40)(v39, v41);
}

uint64_t sub_10003635C(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v72 = *(v74 - 8);
  v13 = *(v72 + 64);
  __chkstk_darwin(v74);
  v69 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = &v63 - v16;
  v17 = qword_10019E588;

  v65 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v75 = a2;
  v76 = a3;
  if (v20)
  {
    v66 = v12;
    v67 = v9;
    v21 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v21 = 136446466;
    if (qword_1001982B0 != -1)
    {
      swift_once();
    }

    v22 = qword_10019DEB8;
    v23 = qword_10019DEC0;

    v24 = sub_100004C50(v22, v23, aBlock);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v25 = sub_10009FC20();
    v27 = v26;

    v28 = sub_100004C50(v25, v27, aBlock);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Queuing notification for %{public}s %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    v12 = v66;
    v9 = v67;
  }

  else
  {
  }

  v29 = *a1;
  v30 = *(*a1 + 136);
  v68 = v30;
  if (*(a1 + v30))
  {
    v31 = *(a1 + v30);

    dispatch thunk of DispatchWorkItem.cancel()();

    v29 = *a1;
  }

  v32 = (a1 + *(v29 + 128));
  v33 = *v32;
  if (*v32)
  {
    v64 = v8;
    v34 = v32[1];

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v66 = v12;
      v67 = v9;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      if (qword_1001982B0 != -1)
      {
        swift_once();
      }

      v39 = qword_10019DEB8;
      v40 = qword_10019DEC0;

      v41 = sub_100004C50(v39, v40, aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Existing notification for %s, merging", v37, 0xCu);
      sub_1000034F8(v38);

      v12 = v66;
      v9 = v67;
    }

    else
    {
    }

    v43 = v76;

    v44 = sub_1000C53B4(v43, v33);
    v45 = v75;

    v47 = sub_100035408(v46, v44);

    v48 = sub_1000C53B4(v45, v34);
    v49 = sub_100035408(v43, v48);

    v50 = *v32;
    v51 = v32[1];
    *v32 = v47;
    v32[1] = v49;
    sub_100037D58(v50);
    v8 = v64;
  }

  else
  {
    v42 = v76;
    *v32 = v75;
    v32[1] = v42;
  }

  v52 = v69;
  static DispatchTime.now()();
  *v12 = a1[2];
  (*(v9 + 104))(v12, enum case for DispatchTimeInterval.milliseconds(_:), v8);
  v53 = v70;
  + infix(_:_:)();
  (*(v9 + 8))(v12, v8);
  v54 = *(v72 + 8);
  v55 = v74;
  v54(v52, v74);
  aBlock[4] = sub_100037D54;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  aBlock[3] = &unk_10018BC38;
  _Block_copy(aBlock);
  v77 = _swiftEmptyArrayStorage;
  sub_100037C04(&qword_100198BC0, &type metadata accessor for DispatchWorkItemFlags);

  sub_10002EB80(&qword_100198BC8, &qword_10014D068);
  sub_100013EBC(&qword_100198BD0, &qword_100198BC8, &qword_10014D068);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v56 = type metadata accessor for DispatchWorkItem();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = DispatchWorkItem.init(flags:block:)();

  v60 = *(a1 + v68);
  *(a1 + v68) = v59;

  v61 = *(a1 + qword_10019E590);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v54)(v53, v55);
}

void sub_100036B18()
{
  v1 = v0;
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + qword_10019E590);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v17 = *(*v1 + 128);
    if (*(v1 + v17))
    {
      v46 = *(*v1 + 128);

      v19 = sub_100065560(v18);

      v20 = 0;
      v55 = v19[2];
      v51 = v3 + 16;
      v52 = qword_10019E588;
      *&v21 = 136315138;
      v47 = v21;
      v50 = (v3 + 8);
      v48 = v3;
      v49 = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = v56;
      v53 = v19;
      v54 = v8;
      while (v55 != v20)
      {
        if (v20 >= v19[2])
        {
          __break(1u);
          goto LABEL_15;
        }

        v23 = v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20;
        v24 = *(v3 + 16);
        v24(v8, v23, v2);
        v24(v22, v8, v2);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v57 = v28;
          *v27 = v47;
          v29 = Notification.description.getter();
          v30 = v1;
          v32 = v31;
          v33 = *v50;
          (*v50)(v56, v2);
          v34 = sub_100004C50(v29, v32, &v57);
          v1 = v30;
          v3 = v48;

          *(v27 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v25, v26, "Sending notification %s", v27, 0xCu);
          sub_1000034F8(v28);

          v22 = v56;
        }

        else
        {

          v33 = *v50;
          (*v50)(v22, v2);
        }

        v35 = v1[3];
        v8 = v54;
        isa = Notification._bridgeToObjectiveC()().super.isa;
        [v35 postNotification:isa];

        v33(v8, v2);
        ++v20;
        v19 = v53;
      }

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v37, v38, "Sent %ld notifications", v39, 0xCu);
      }

      v17 = v46;
    }

    v40 = *(v1 + v17);
    *(v1 + v17) = 0;

    v41 = *(*v1 + 136);
    v42 = *(v1 + v41);
    *(v1 + v41) = 0;

    v43 = (v1 + *(*v1 + 144));
    os_unfair_lock_lock(v43);
    v44 = *&v43[2]._os_unfair_lock_opaque;
    swift_unknownObjectRelease();
    *&v43[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v43);
  }

  else
  {
LABEL_15:
    __break(1u);
  }
}

void sub_100037028()
{
  v1 = v0;
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + qword_10019E590);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v17 = (v1 + *(*v1 + 128));
    v18 = *v17;
    if (*v17)
    {
      v48 = (v1 + *(*v1 + 128));
      v19 = v17[1];

      v20 = sub_10009F7A8(v18, v19);

      v21 = 0;
      v57 = v20[2];
      v53 = v3 + 16;
      v54 = qword_10019E588;
      *&v22 = 136315138;
      v49 = v22;
      v52 = (v3 + 8);
      v50 = v3;
      v51 = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23 = v58;
      v55 = v20;
      v56 = v8;
      while (v57 != v21)
      {
        if (v21 >= v20[2])
        {
          __break(1u);
          goto LABEL_15;
        }

        v24 = v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21;
        v25 = *(v3 + 16);
        v25(v8, v24, v2);
        v25(v23, v8, v2);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v59 = v29;
          *v28 = v49;
          v30 = Notification.description.getter();
          v31 = v1;
          v33 = v32;
          v34 = *v52;
          (*v52)(v58, v2);
          v35 = sub_100004C50(v30, v33, &v59);
          v1 = v31;
          v3 = v50;

          *(v28 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v26, v27, "Sending notification %s", v28, 0xCu);
          sub_1000034F8(v29);

          v23 = v58;
        }

        else
        {

          v34 = *v52;
          (*v52)(v23, v2);
        }

        v36 = v1[3];
        v8 = v56;
        isa = Notification._bridgeToObjectiveC()().super.isa;
        [v36 postNotification:isa];

        v34(v8, v2);
        ++v21;
        v20 = v55;
      }

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v38, v39, "Sent %ld notifications", v40, 0xCu);
      }

      v17 = v48;
    }

    v41 = *v17;
    v42 = v17[1];
    *v17 = 0;
    v17[1] = 0;
    sub_100037D58(v41);
    v43 = *(*v1 + 136);
    v44 = *(v1 + v43);
    *(v1 + v43) = 0;

    v45 = (v1 + *(*v1 + 144));
    os_unfair_lock_lock(v45);
    v46 = *&v45[2]._os_unfair_lock_opaque;
    swift_unknownObjectRelease();
    *&v45[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v45);
  }

  else
  {
LABEL_15:
    __break(1u);
  }
}

id sub_100037558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  if (a6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithVocabularyIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

id sub_10003761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

  if (a6)
  {
LABEL_4:
    v15 = String._bridgeToObjectiveC()();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8)
  {
    v16 = String._bridgeToObjectiveC()();

    if (a9)
    {
LABEL_10:
      v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    if (a9)
    {
      goto LABEL_10;
    }
  }

  v17.super.isa = 0;
LABEL_13:
  v22 = 0;
  v18 = [v9 initWithEntityTitle:v13 entityInstanceIdentifier:v14 entityTypeIdentifier:v15 providerClass:v16 entitySynonyms:v17.super.isa error:&v22];

  if (v18)
  {
    v19 = v22;
  }

  else
  {
    v20 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v18;
}

id sub_1000377E0()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithSourceItemIdentifier:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_1000378AC(void *a1, void *a2)
{
  v3 = v2;
  v10 = 0;
  v6 = [v3 initWithContent:a1 metaContent:a2 error:&v10];
  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100037980(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000379A0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000379D8()
{
  result = qword_100198B80;
  if (!qword_100198B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198B80);
  }

  return result;
}

uint64_t sub_100037A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007088(a1, a2, a3);
  v6 = sub_100071694(v5);
  sub_1000066A0(v6);
  if (v4)
  {
    v7 = sub_10000C8B0();
  }

  else
  {
    sub_10001A998();
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v7;
  return sub_100019CD0();
}

uint64_t (*sub_100037A94(void *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_100071694(a3);
  sub_1000379A0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_100038170;
}

uint64_t sub_100037B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007088(a1, a2, a3);
  v6 = sub_100071694(v5);
  sub_1000066A0(v6);
  if (v4)
  {
    v7 = sub_10000C8B0();
  }

  else
  {
    sub_10001A998();
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v7;
  return sub_100019CD0();
}

uint64_t sub_100037B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037C04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100037CD8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100037D58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100037D98()
{
  result = qword_10019B340;
  if (!qword_10019B340)
  {
    sub_100003D44(255, &unk_100198C10, LNAppNotificationEvent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B340);
  }

  return result;
}

uint64_t sub_100037E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100037EB4;

  return sub_100032A80(a1, v4, v5, v6);
}

uint64_t sub_100037EB4()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100007A64();
  *v4 = v3;

  sub_100003A00();

  return v5();
}

uint64_t getEnumTagSinglePayload for DonationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DonationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100038104()
{
  result = qword_100198C30;
  if (!qword_100198C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198C30);
  }

  return result;
}

uint64_t sub_1000381C4(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 executionUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_1000382C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000F294(a1);
  if (!v8)
  {
    return 0;
  }

  if (v7 == a2 && v8 == a3)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10003835C(a4);
  return v12 & 1;
}

void sub_10003835C(void *a1)
{
  v2 = [v1 resolvedAction];
  v3 = [v2 parameters];

  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1000232F4(v4);
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v9 = v8;
    v10 = [v9 value];
    if (v10)
    {
      v11 = v10;
      v12 = [v11 value];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100004D14(v25, &v28);
      sub_1000034F8(v25);

      v26 = v28;
      v27 = v29;
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
    }

    if (*(&v27 + 1))
    {
      sub_1000398F4(&v26, &v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = v7[2];
        sub_10006FFAC();
        v7 = v15;
      }

      v13 = v7[2];
      if (v13 >= v7[3] >> 1)
      {
        sub_10006FFAC();
        v7 = v16;
      }

      v7[2] = v13 + 1;
      sub_1000398F4(&v28, &v7[4 * v13 + 4]);
    }

    else
    {
      sub_100039B5C(&v26, &qword_1001992F0, &qword_10014E000);
    }

    ++v6;
  }

  v17 = v7[2];
  if (!v17)
  {
LABEL_28:

    return;
  }

  v18 = 0;
  v19 = (v7 + 4);
  while (v18 < v7[2])
  {
    sub_100004D14(v19, &v28);
    sub_100004D14(&v28, &v26);
    sub_100003D44(0, &qword_100198C40, LNEntity_ptr);
    if (swift_dynamicCast() && (v20 = v25[0], v21 = [v25[0] identifier], v20, v21))
    {
      sub_100003D44(0, qword_100198C48, LNEntityIdentifier_ptr);
      v22 = a1;
      v23 = static NSObject.== infix(_:_:)();
      sub_1000034F8(&v28);

      if (v23)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1000034F8(&v28);
    }

    ++v18;
    v19 += 32;
    if (v17 == v18)
    {
      goto LABEL_28;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1000386C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10000F294(a1);
  if (!v13)
  {
    return 0;
  }

  if (v12 == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = [a1 resolvedAction];
  v17 = [v16 identifier];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == a4 && v20 == a5)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10003835C(a6);
  return v24 & 1;
}

uint64_t sub_1000387F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000F294(a1);
  if (!v10)
  {
    return 0;
  }

  if (v9 == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100038898(a4, a5);
  return v14 & 1;
}

void sub_100038898(uint64_t a1, uint64_t a2)
{
  v3 = [v2 resolvedAction];
  v4 = [v3 parameters];

  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_1000232F4(v5);
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      v13 = sub_1000232F4(_swiftEmptyArrayStorage);
      for (i = 0; ; ++i)
      {
        if (v13 == i)
        {
LABEL_29:

          return;
        }

        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v15 = _swiftEmptyArrayStorage[i + 4];
        }

        v16 = v15;
        if (__OFADD__(i, 1))
        {
          goto LABEL_33;
        }

        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 identifier];
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          if (v19 == a1 && v21 == a2)
          {

            return;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }
      }
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v9 = v8;
    v10 = [v9 value];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 valueType];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v7;
    }

    else
    {

      ++v7;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100038B70(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002EB80(&qword_10019AD20, &qword_10014D1D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v30 - v19;
  __chkstk_darwin(v18);
  v22 = &v30 - v21;
  v23 = [a1 executionUUID];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_1000075C4(v22, v25, 1, v4);
  (*(v5 + 16))(v20, a2, v4);
  sub_1000075C4(v20, 0, 1, v4);
  v26 = *(v9 + 48);
  sub_100039AEC(v22, v12);
  sub_100039AEC(v20, &v12[v26]);
  if (sub_1000032C4(v12, 1, v4) != 1)
  {
    sub_100039AEC(v12, v17);
    if (sub_1000032C4(&v12[v26], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v12[v26], v4);
      sub_100039BB0();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v5 + 8);
      v28(v8, v4);
      sub_100039B5C(v20, &qword_100199C90, &qword_10014D060);
      sub_100039B5C(v22, &qword_100199C90, &qword_10014D060);
      v28(v17, v4);
      sub_100039B5C(v12, &qword_100199C90, &qword_10014D060);
      return v27 & 1;
    }

    sub_100039B5C(v20, &qword_100199C90, &qword_10014D060);
    sub_100039B5C(v22, &qword_100199C90, &qword_10014D060);
    (*(v5 + 8))(v17, v4);
    goto LABEL_9;
  }

  sub_100039B5C(v20, &qword_100199C90, &qword_10014D060);
  sub_100039B5C(v22, &qword_100199C90, &qword_10014D060);
  if (sub_1000032C4(&v12[v26], 1, v4) != 1)
  {
LABEL_9:
    sub_100039B5C(v12, &qword_10019AD20, &qword_10014D1D8);
    v27 = 0;
    return v27 & 1;
  }

  sub_100039B5C(v12, &qword_100199C90, &qword_10014D060);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_100038F64(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000F2A0(a1, &selRef_bundleID);
  if (!v8)
  {
    return 0;
  }

  if (v7 == a2 && v8 == a3)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100039000(a4);
  return v12 & 1;
}

void sub_100039000(void *a1)
{
  v2 = [v1 resolvedAction];
  if (v2)
  {
    v3 = v2;
    v4 = BMAppIntentInvocationAction.convertToLNAction(_:)();

    if (v4)
    {
      v5 = [v4 parameters];

      sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_1000232F4(v6);
      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      while (v7 != v8)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v11 = v10;
        v12 = [v11 value];
        if (v12)
        {
          v13 = v12;
          v14 = [v13 value];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100004D14(v27, &v30);
          sub_1000034F8(v27);

          v28 = v30;
          v29 = v31;
        }

        else
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
        }

        if (*(&v29 + 1))
        {
          sub_1000398F4(&v28, &v30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = v9[2];
            sub_10006FFAC();
            v9 = v17;
          }

          v15 = v9[2];
          if (v15 >= v9[3] >> 1)
          {
            sub_10006FFAC();
            v9 = v18;
          }

          v9[2] = v15 + 1;
          sub_1000398F4(&v30, &v9[4 * v15 + 4]);
        }

        else
        {
          sub_100039B5C(&v28, &qword_1001992F0, &qword_10014E000);
        }

        ++v8;
      }

      v19 = v9[2];
      if (!v19)
      {
LABEL_31:

        return;
      }

      v20 = 0;
      v21 = (v9 + 4);
      while (v20 < v9[2])
      {
        sub_100004D14(v21, &v30);
        sub_100004D14(&v30, &v28);
        sub_100003D44(0, &qword_100198C40, LNEntity_ptr);
        if (swift_dynamicCast() && (v22 = v27[0], v23 = [v27[0] identifier], v22, v23))
        {
          sub_100003D44(0, qword_100198C48, LNEntityIdentifier_ptr);
          v24 = a1;
          v25 = static NSObject.== infix(_:_:)();
          sub_1000034F8(&v30);

          if (v25)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1000034F8(&v30);
        }

        ++v20;
        v21 += 32;
        if (v19 == v20)
        {
          goto LABEL_31;
        }
      }

LABEL_34:
      __break(1u);
    }
  }
}

uint64_t sub_100039394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10000F2A0(a1, &selRef_bundleID);
  if (!v13)
  {
    return 0;
  }

  if (v12 == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = [a1 resolvedAction];
  if (!v16)
  {
    return 0;
  }

  v17 = sub_10000F4A0(v16);
  if (!v18)
  {
    return 0;
  }

  if (v17 == a4 && v18 == a5)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100039000(a6);
  return v22 & 1;
}

uint64_t sub_1000394A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000F2A0(a1, &selRef_bundleID);
  if (!v10)
  {
    return 0;
  }

  if (v9 == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10003954C(a4, a5);
  return v14 & 1;
}

void sub_10003954C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 resolvedAction];
  if (v5)
  {
    v6 = v5;
    v7 = BMAppIntentInvocationAction.convertToLNAction(_:)();

    if (v7)
    {
      v8 = [v7 parameters];

      sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = sub_1000232F4(v9);
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {

          v17 = sub_1000232F4(_swiftEmptyArrayStorage);
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              return;
            }

            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v19 = _swiftEmptyArrayStorage[i + 4];
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              goto LABEL_37;
            }

            objc_opt_self();
            v21 = swift_dynamicCastObjCClass();
            if (v21)
            {
              v22 = [v21 identifier];
              v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v25 = v24;

              if (v23 == a1 && v25 == a2)
              {

                return;
              }

              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v27)
              {

                return;
              }
            }

            else
            {
            }
          }
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        if (__OFADD__(v11, 1))
        {
          break;
        }

        v13 = v12;
        v14 = [v13 value];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 valueType];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          ++v11;
        }

        else
        {

          ++v11;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }
}

unint64_t sub_100039858()
{
  result = qword_100199C40;
  if (!qword_100199C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199C40);
  }

  return result;
}

_OWORD *sub_1000398F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100039910()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100039988()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000399D4()
{
  v1 = type metadata accessor for UUID();
  sub_100002978(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100039A68(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100039AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039B5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002EB80(a2, a3);
  sub_100002978(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_100039BB0()
{
  result = qword_1001992E0;
  if (!qword_1001992E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001992E0);
  }

  return result;
}

void sub_100039C68(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = *(*v1 + 80);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  __chkstk_darwin(a1);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Optional();
  v8 = type metadata accessor for CheckedContinuation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v19 - v12;
  v14 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v16 = &v19 - v15;
  v17 = *(v2 + 16);
  os_unfair_lock_lock(v17 + 4);
  swift_beginAccess();
  v21 = *(v2 + 24);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    if (*(v2 + 40) == 1)
    {
      sub_1000075C4(v16, 1, 1, v3);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      (*(v9 + 16))(v13, v20, v8);
      swift_beginAccess();
      type metadata accessor for Array();
      Array.append(_:)();
      swift_endAccess();
    }

    os_unfair_lock_unlock(v17 + 4);
  }

  else
  {
    swift_beginAccess();
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    swift_endAccess();
    os_unfair_lock_unlock(v17 + 4);
    v18 = v19;
    (*(v19 + 16))(v16, v6, v3);
    sub_1000075C4(v16, 0, 1, v3);
    CheckedContinuation.resume(returning:)();
    (*(v18 + 8))(v6, v3);
  }
}

uint64_t sub_100039FB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100039FD4, 0, 0);
}

uint64_t sub_100039FD4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = *(v2 + 16);
  v3[3] = *(v2 + 24);
  v3[4] = v1;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for Optional();
  *v5 = v0;
  v5[1] = sub_10003A0D8;
  v7 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v7, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_10003A660, v3, v6);
}

uint64_t sub_10003A0D8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_10003A1E0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  sub_100039C68(a1);
}

uint64_t sub_10003A228(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003A2D0;

  return sub_100039FB0(a1, a2);
}

uint64_t sub_10003A2D0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000298C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10003A3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10003A48C;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6);
}

uint64_t sub_10003A48C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000298C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void *sub_10003A588()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_10003A5B8()
{
  sub_10003A588();

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t sub_10003A620@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_10003A580();

  *a1 = v3;
  return result;
}

uint64_t sub_10003A660(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10003A1E0(a1, *(v1 + 32));
}

uint64_t sub_10003A66C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10003A6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_10003CC10(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_1000032C4(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1000075EC(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      sub_100004DD8();
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000075EC(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000075EC(a3);
  sub_100004DD8();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void static Daemon.main()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v80 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100002944(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100002944(v13);
  v73 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v72 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v62 - v22;
  v79 = a1;
  v24 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = type metadata accessor for Logger();
  v77 = sub_100002944(v25);
  v78 = v26;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v77);
  v76 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v62 - v30;
  aBlock = v3;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (!LNLogSubsystem)
  {
    __break(1u);
  }

  v68 = v8;
  v75 = v5;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v31;
  v67 = v12;
  v74 = v13;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_100004C50(0xD000000000000024, 0x8000000100154730, &aBlock);
    _os_log_impl(&_mh_execute_header, v32, v33, "%s launched, checking in", v36, 0xCu);
    sub_1000034F8(v37);
    sub_1000036AC();
    v35 = v31;
    sub_1000036AC();
  }

  v69 = v35;
  v39 = v79;
  v38 = v80;
  (*(v80 + 16))(v79, v80);
  v40 = (*(v38 + 8))(v39, v38);
  v41 = type metadata accessor for TaskPriority();
  sub_1000075C4(v23, 1, 1, v41);
  v42 = v77;
  v43 = v78;
  v44 = *(v78 + 16);
  v70 = v78 + 16;
  v71 = v44;
  v45 = v76;
  v44(v76, v35, v77);
  v46 = *(v43 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 4) = v40;
  v62 = v40;
  v48 = *(v43 + 32);
  v48(&v47[(v46 + 40) & ~v46], v45, v42);
  v78 = v43 + 32;
  v64 = v48;

  sub_10003A6C0(0, 0, v23, &unk_10014D370, v47);

  v49 = SIG_IGN.getter();
  signal(15, v49);
  v65 = sub_10003B510();
  static OS_dispatch_source.makeSignalSource(signal:queue:)();
  swift_getObjectType();
  v71(v45, v69, v42);
  v66 = ((v46 + 32) & ~v46) + v28;
  v63 = (v46 + 32) & ~v46;
  v50 = (v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v80;
  *(v51 + 16) = v79;
  *(v51 + 24) = v52;
  v48((v51 + ((v46 + 32) & ~v46)), v45, v42);
  *(v51 + v50) = v62;
  v85 = sub_10003B950;
  v86 = v51;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v62 = &v83;
  v83 = sub_10000C13C;
  v84 = &unk_10018BFD8;
  v53 = _Block_copy(&aBlock);
  v54 = v72;
  static DispatchQoS.unspecified.getter();
  v55 = v67;
  sub_10003BF4C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v53);
  v68 = *(v68 + 8);
  (v68)(v55, v75);
  v73 = *(v73 + 8);
  (v73)(v54, v74);

  OS_dispatch_source.activate()();
  v56 = SIG_IGN.getter();
  signal(31, v56);
  static OS_dispatch_source.makeSignalSource(signal:queue:)();
  swift_getObjectType();
  v58 = v76;
  v57 = v77;
  v71(v76, v69, v77);
  v59 = swift_allocObject();
  v60 = v80;
  *(v59 + 16) = v79;
  *(v59 + 24) = v60;
  v64(v59 + v63, v58, v57);
  v85 = sub_10003C158;
  v86 = v59;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_10000C13C;
  v84 = &unk_10018C028;
  v61 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_10003BF4C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v61);
  (v68)(v55, v75);
  (v73)(v54, v74);

  OS_dispatch_source.activate()();
  dispatch_main();
}

uint64_t sub_10003B144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10003B164, 0, 0);
}

uint64_t sub_10003B164()
{
  sub_1000036A0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_10014D418;
  v2[4] = 0;
  v3 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10003B240;
  sub_100003A28();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10003B240()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  return _swift_task_switch(sub_10003B348, 0, 0);
}

uint64_t sub_10003B348()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Finished checking in %ld entry points", v7, 0xCu);
    sub_1000036AC();
  }

  else
  {
    v8 = *(v0 + 16);
  }

  sub_100003A00();

  return v9();
}

uint64_t sub_10003B434()
{
  sub_1000036C4();
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_100004DC8(v6);
  *v7 = v8;
  v7[1] = sub_10000BFAC;
  v9 = sub_100018384();

  return sub_10003B144(v9, v10, v11, v12, v13);
}

unint64_t sub_10003B510()
{
  result = qword_100198D50;
  if (!qword_100198D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100198D50);
  }

  return result;
}

uint64_t sub_10003B574()
{
  sub_1000036C4();
  v1 = *(v0 + 16);
  v2 = v1[4];
  sub_1000034B4(v1, v1[3]);
  v3 = *(v2 + 8);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v6 = sub_10001176C(v5);

  return v7(v6);
}

uint64_t sub_10003B684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = type metadata accessor for Logger();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v33);
  v10 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v32 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = a2;
    v19 = v18;
    v34 = v18;
    *v17 = 136315138;
    v20 = _typeName(_:qualified:)();
    v29 = a3;
    v22 = sub_100004C50(v20, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s received SIGTERM, shutting down gracefully", v17, 0xCu);
    sub_1000034F8(v19);
    a2 = v31;

    a4 = v30;

    v23 = v29;
  }

  else
  {

    v23 = a3;
  }

  static TaskPriority.userInitiated.getter();
  v24 = type metadata accessor for TaskPriority();
  sub_1000075C4(v13, 0, 1, v24);
  v25 = v33;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v33);
  v26 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v23;
  *(v27 + 5) = a4;
  *(v27 + 6) = a2;
  (*(v8 + 32))(&v27[v26], &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25);

  sub_10003A6C0(0, 0, v13, &unk_10014D3C0, v27);
}

uint64_t sub_10003B950()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003B684(v0 + v4, v5, v1, v2);
}

uint64_t sub_10003B9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10003BA1C, 0, 0);
}

uint64_t sub_10003BA1C()
{
  sub_1000036A0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_10014D3C8;
  v2[4] = 0;
  v3 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10003BAF8;
  sub_100003A28();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10003BAF8()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  return _swift_task_switch(sub_10003BC00, 0, 0);
}

uint64_t sub_10003BC00()
{
  v13 = v0;
  v1 = *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100004C50(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s successfully shut down, terminating", v5, 0xCu);
    sub_1000034F8(v6);
    sub_1000036AC();
    sub_1000036AC();
  }

  xpc_transaction_exit_clean();
  sub_100003A00();

  return v10();
}

uint64_t sub_10003BD50()
{
  sub_1000036C4();
  v1 = *(v0 + 16);
  v2 = v1[4];
  sub_1000034B4(v1, v1[3]);
  v3 = *(v2 + 16);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v6 = sub_10001176C(v5);

  return v7(v6);
}

uint64_t sub_10003BE60()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = *(v2 + 24);
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;

  if (v0)
  {
  }

  sub_100003A00();

  return v6();
}

uint64_t sub_10003BF4C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10003C914();
  sub_10002EB80(&qword_100198BC8, &qword_10014D068);
  sub_10003C96C();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10003BFD4()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v10 = v3;
    *v2 = 136315138;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100004C50(v4, v5, &v10);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v0, v1, "%s received SIGUSR2, dumping state", v2, 0xCu);
    sub_1000034F8(v3);
  }

  if (qword_1001980A8 != -1)
  {
    swift_once();
  }

  v7 = *(qword_10019D818 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));
  sub_10003FBB4(v8);
}

uint64_t sub_10003C158()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for Logger() - 8) + 80);

  return sub_10003BFD4();
}

uint64_t sub_10003C1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v6 = *(*(sub_10002EB80(&qword_100198C20, &qword_10014D090) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_10003C280, 0, 0);
}

uint64_t sub_10003C280()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = type metadata accessor for TaskPriority();
    do
    {
      v6 = *(v0 + 144);
      v5 = *(v0 + 152);
      v8 = *(v0 + 128);
      v7 = *(v0 + 136);
      sub_1000075C4(v5, 1, 1, v4);
      sub_100013334(v3, v0 + 16);
      v9 = swift_allocObject();
      v9[2] = 0;
      v10 = v9 + 2;
      v9[3] = 0;
      v9[4] = v8;
      v9[5] = v7;
      sub_10001A798((v0 + 16), (v9 + 6));
      sub_10003CC10(v5, v6);
      LODWORD(v6) = sub_1000032C4(v6, 1, v4);

      v11 = *(v0 + 144);
      if (v6 == 1)
      {
        sub_1000075EC(*(v0 + 144));
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v4 - 8) + 8))(v11, v4);
      }

      if (*v10)
      {
        v12 = v9[3];
        v13 = *v10;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = dispatch thunk of Actor.unownedExecutor.getter();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      sub_100004DD8();
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_10014D3E8;
      *(v17 + 24) = v9;
      v18 = v16 | v14;
      if (v16 | v14)
      {
        v18 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v14;
        *(v0 + 80) = v16;
      }

      v19 = *(v0 + 152);
      *(v0 + 88) = 1;
      *(v0 + 96) = v18;
      *(v0 + 104) = v25;
      swift_task_create();

      sub_1000075EC(v19);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v20 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
  v21 = swift_task_alloc();
  *(v0 + 160) = v21;
  v22 = sub_10002EB80(&qword_100198D60, &qword_10014D3F8);
  *v21 = v0;
  v21[1] = sub_10003C564;
  v23 = *(v0 + 112);

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v22);
}

uint64_t sub_10003C564()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = *v0;
  sub_10000298C();
  *v6 = v5;

  sub_100003A00();

  return v7();
}

uint64_t sub_10003C67C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10000BEC4;

  return v11(a6);
}

uint64_t sub_10003C774()
{
  sub_1000036A0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_10003A95C();
}

char *sub_10003C820(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002EB80(&qword_100198D58, &unk_100152B60);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_10003C914()
{
  result = qword_100198BC0;
  if (!qword_100198BC0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198BC0);
  }

  return result;
}

unint64_t sub_10003C96C()
{
  result = qword_100198BD0;
  if (!qword_100198BD0)
  {
    sub_10002EC70(&qword_100198BC8, &qword_10014D068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198BD0);
  }

  return result;
}

uint64_t sub_10003C9D0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = swift_task_alloc();
  v11 = sub_100004DC8(v10);
  *v11 = v12;
  v11[1] = sub_10000BEC4;

  return sub_10003B9F8(a1, v7, v8, v9, v1 + v6, v3);
}

uint64_t sub_10003CAD4()
{
  sub_1000036C4();
  sub_10000777C();
  v0 = swift_task_alloc();
  v1 = sub_100004DC8(v0);
  *v1 = v2;
  v3 = sub_10000511C(v1);

  return sub_10003C1D4(v3, v4, v5, v6, v7);
}

uint64_t sub_10003CB68()
{
  sub_1000036C4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100004DC8(v5);
  *v6 = v7;
  v6[1] = sub_10000BEC4;
  v8 = sub_100018384();

  return sub_10003C67C(v8, v9, v10, v11, v4, v12);
}

uint64_t sub_10003CC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CC80()
{
  sub_1000070C8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v6 = sub_1000070A8(v4);

  return v7(v6);
}

void *sub_10003CD1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v2 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = *(v7 + 8);
  v16(v10, v6);
  v17 = [v11 ln_uniqueBundleWithURL:v15];

  if (v17)
  {
    v18 = sub_10003CFE8(a1, a2);
  }

  else
  {
    if (qword_100198300 != -1)
    {
      sub_10000299C();
    }

    v19 = type metadata accessor for Logger();
    sub_10000347C(v19, qword_10019E038);
    v20 = v3;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      v25 = [v20 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10003D5E8();
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v16(v10, v6);
      v29 = sub_100004C50(v26, v28, &v32);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to load bundle at %s while fetching SiriKit alternative app names", v23, 0xCu);
      sub_1000034F8(v24);
    }

    return _swiftEmptyArrayStorage;
  }

  return v18;
}

void *sub_10003CFE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10003D640(v2);
  if (!v3)
  {
    v81 = 0u;
    v82 = 0u;
    goto LABEL_23;
  }

  sub_1000A0C5C(0xD000000000000015, 0x80000001001547A0, v3, &v81);

  if (!*(&v82 + 1))
  {
LABEL_23:
    sub_10003D580(&v81);
LABEL_24:
    if (qword_100198300 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_25;
  }

  v4 = sub_10002EB80(&unk_100198D70, qword_10014D448);
  sub_100007DF4(v4, v5, v6, v4, v7, v8, v9, v10, v64, v66, v69, a1, a2, v76, v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = 0;
  v12 = v79;
  v13 = *(v79 + 16);
  v70 = "INAlternativeAppName";
  v14 = _swiftEmptyArrayStorage;
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v15 = *(v12 + 8 * v11 + 32);
    if (*(v15 + 16))
    {
      v16 = *(v12 + 8 * v11 + 32);

      v17 = sub_10000C2A0(0xD000000000000014, 0x80000001001547C0);
      if ((v18 & 1) == 0 || (v19 = sub_100004D14(*(v15 + 56) + 32 * v17, &v81), sub_100007DF4(v19, v20, v21, v22, v23, v24, v25, v26, v65, v67, v70, v73, v75, v77, v79), (swift_dynamicCast() & 1) == 0))
      {

        goto LABEL_11;
      }

      v65 = v80;
      v67 = v79;
      if (*(v15 + 16) && (v27 = sub_10000C2A0(0xD00000000000001ALL, v70 | 0x8000000000000000), (v28 & 1) != 0) && (v29 = sub_100004D14(*(v15 + 56) + 32 * v27, &v81), sub_100007DF4(v29, v30, v31, v32, v33, v34, v35, v36, v80, v79, v70, v73, v75, v77, v79), (swift_dynamicCast() & 1) != 0))
      {
        v37 = v79;
      }

      else
      {

        v37 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = v14[2];
        sub_1000701AC();
        v14 = v43;
      }

      v38 = v14;
      v39 = v14[2];
      v40 = v38;
      if (v39 >= v38[3] >> 1)
      {
        sub_1000701AC();
        v40 = v44;
      }

      ++v11;
      v40[2] = v39 + 1;
      v41 = &v40[3 * v39];
      v14 = v40;
      v41[4] = v67;
      v41[5] = v65;
      *(v41 + 48) = v37;
    }

    else
    {
LABEL_11:
      ++v11;
    }
  }

  v51 = v14[2];
  if (!v51)
  {

    return _swiftEmptyArrayStorage;
  }

  *&v81 = _swiftEmptyArrayStorage;
  sub_1000B34CC();
  v49 = v81;
  v68 = v51;
  v71 = objc_opt_self();
  v52 = 0;
  v53 = v14 + 6;
  while (v52 < v14[2])
  {
    v54 = v14;
    v56 = *(v53 - 2);
    v55 = *(v53 - 1);
    v57 = *v53;

    result = [v71 sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v58 = result;
    v59 = sub_10003D6AC(v56, v55, 0x73696C506F666E49, 0xE900000000000074, v77, v73, v75, result);
    v61 = v60;

    if (v61)
    {

      v56 = v59;
      v55 = v61;
    }

    *&v81 = v49;
    v62 = *(v49 + 16);
    v14 = v54;
    if (v62 >= *(v49 + 24) >> 1)
    {
      sub_1000B34CC();
      v49 = v81;
    }

    ++v52;
    *(v49 + 16) = v62 + 1;
    v63 = v49 + 24 * v62;
    *(v63 + 32) = v56;
    *(v63 + 40) = v55;
    *(v63 + 48) = v57;
    v53 += 24;
    if (v68 == v52)
    {

      return v49;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  sub_10000299C();
LABEL_25:
  v45 = type metadata accessor for Logger();
  sub_10000347C(v45, qword_10019E038);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "App declares no INAlternativeAppNames", v48, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10003D4E8()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = [v0 localizedNameWithPreferredLocalizations:isa];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t sub_10003D580(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_1001992F0, &qword_10014E000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003D5E8()
{
  result = qword_100198D68;
  if (!qword_100198D68)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198D68);
  }

  return result;
}

uint64_t sub_10003D640(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10003D6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v14;
}

uint64_t sub_10003D78C()
{
  v0 = [objc_allocWithZone(type metadata accessor for ObservationStatusRegistry()) init];
  sub_10002EB80(&qword_100198E88, &qword_10014D568);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_100198D80 = result;
  return result;
}

uint64_t sub_10003D870(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000100154580 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49737365636F7270 && a2 == 0xE900000000000044)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10003D950(char a1)
{
  if (a1)
  {
    return 0x49737365636F7270;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10003D998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003D870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003D9E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10003D948();
  *a1 = result;
  return result;
}

uint64_t sub_10003DA08(uint64_t a1)
{
  v2 = sub_100040884();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003DA44(uint64_t a1)
{
  v2 = sub_100040884();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10003DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004DF0();
  a22 = v24;
  a23 = v25;
  a10 = v26;
  v28 = v27;
  v29 = sub_10002EB80(&unk_100198FC0, &qword_10014DA28);
  sub_100002944(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  sub_100003A54();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  v37 = v28[4];
  sub_1000034B4(v28, v28[3]);
  sub_100040884();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a13 = 0;
  sub_10001AAA4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v23)
  {
    sub_10000999C();
    sub_10001AAA4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v31 + 8))(v36, v29);
  sub_100004674();
}

uint64_t sub_10003DBC8(uint64_t *a1)
{
  v4 = sub_10002EB80(&qword_100198FB0, &qword_10014DA20);
  sub_100002944(v4);
  v6 = *(v5 + 64);
  sub_100003A54();
  __chkstk_darwin(v7);
  sub_100013424();
  sub_100040884();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v2 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000999C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v9 = sub_100011784();
    v10(v9);
  }

  sub_1000034F8(a1);
  return v2;
}

uint64_t sub_10003DD70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003DBC8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10003DDC0()
{
  type metadata accessor for UUID();
  sub_100007E04();
  sub_1000409EC(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v6 = *(v0 + *(type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener() + 20));
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  return 32;
}

uint64_t sub_10003DEA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001001549D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49737365636F7270 && a2 == 0xE900000000000044)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10003DF78(char a1)
{
  if (a1)
  {
    return 0x49737365636F7270;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10003DFB8(void *a1)
{
  v3 = v1;
  v5 = sub_10002EB80(&qword_100198FE8, &qword_10014DA38);
  sub_100002944(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003A54();
  __chkstk_darwin(v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  sub_1000034B4(a1, a1[3]);
  sub_1000408D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = 0;
  type metadata accessor for UUID();
  sub_100007E04();
  sub_1000409EC(v14);
  sub_10001AAA4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener() + 20));
    sub_10000999C();
    sub_10001AAA4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_10003E144()
{
  sub_100004DF0();
  v2 = v1;
  v27 = v3;
  v30 = type metadata accessor for UUID();
  v4 = sub_100002944(v30);
  v28 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002EB80(&qword_100198FD0, &qword_10014DA30);
  sub_100002944(v31);
  v29 = v10;
  v12 = *(v11 + 64);
  sub_100003A54();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2[4];
  sub_1000034B4(v2, v2[3]);
  sub_1000408D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_1000034F8(v2);
  }

  else
  {
    v26 = v17;
    v19 = v28;
    sub_100007E04();
    sub_1000409EC(v20);
    v21 = v30;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v26;
    (*(v19 + 32))(v26, v9, v21);
    sub_10000999C();
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = sub_10000513C();
    v25(v24);
    *(v22 + *(v14 + 20)) = v23;
    sub_10004092C(v22, v27);
    sub_1000034F8(v2);
    sub_100040990(v22);
  }

  sub_100004674();
}

uint64_t sub_10003E424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003DEA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003E44C(uint64_t a1)
{
  v2 = sub_1000408D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003E488(uint64_t a1)
{
  v2 = sub_1000408D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003E4F8()
{
  sub_100007E1C();
  _StringGuts.grow(_:)(57);
  sub_100007790();
  v0._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v0);
  v1._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v1);

  sub_100007790();
  String.append(_:)(v2);
  type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  v3._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v3);

  return v5;
}

uint64_t sub_10003E5CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73694C746E657665 && a2 == 0xEE007372656E6574;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001001549A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10003E6A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0x73694C746E657665;
  }
}

void sub_10003E6EC()
{
  sub_100004DF0();
  v2 = v1;
  v3 = sub_10002EB80(&qword_100198F80, &qword_10014DA18);
  sub_100002944(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003A54();
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  v11 = v2[4];
  sub_1000034B4(v2, v2[3]);
  sub_100040628();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  sub_10002EB80(&qword_100198F50, &qword_10014DA08);
  sub_100040768(&unk_100198F88);
  sub_1000036F0();
  if (!v0)
  {
    v13 = 1;
    sub_10002EB80(&qword_100198F68, &qword_10014DA10);
    sub_1000406D0(&unk_100198F98);
    sub_1000036F0();
  }

  (*(v5 + 8))(v10, v3);
  sub_100004674();
}

uint64_t sub_10003E8D4(uint64_t *a1)
{
  v4 = sub_10002EB80(&qword_100198F40, &qword_10014DA00);
  sub_100002944(v4);
  v6 = *(v5 + 64);
  sub_100003A54();
  __chkstk_darwin(v7);
  sub_100013424();
  sub_100040628();
  sub_100011078();
  if (!v1)
  {
    sub_10002EB80(&qword_100198F50, &qword_10014DA08);
    sub_100040768(&unk_100198F58);
    sub_100007A88();
    v2 = v11;
    sub_10002EB80(&qword_100198F68, &qword_10014DA10);
    sub_1000406D0(&unk_100198F70);
    sub_100007A88();
    v9 = sub_1000066E0();
    v10(v9);
  }

  sub_1000034F8(a1);
  return v2;
}

uint64_t sub_10003EADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003E5CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003EB04(uint64_t a1)
{
  v2 = sub_100040628();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003EB40(uint64_t a1)
{
  v2 = sub_100040628();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003EB7C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_10003E4F8();
}

uint64_t sub_10003EB84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003E8D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_10003EBB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10003E6EC();
}

uint64_t sub_10003EBCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000100154960 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000100154980 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_10003ECA0(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000017;
  }
}

void sub_10003ECD8()
{
  sub_100004DF0();
  v18 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10002EB80(&qword_100198E58, &qword_10014D550);
  sub_100002944(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_100003A54();
  __chkstk_darwin(v13);
  v15 = &v17 - v14;
  v16 = v7[4];
  sub_1000034B4(v7, v7[3]);
  sub_10004013C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v5;
  v20 = v3;
  sub_1000401E4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v19 = v18;
    sub_10002EB80(&qword_100198E48, &qword_10014D548);
    sub_100040238(&unk_100198E68);
    sub_1000036F0();
  }

  (*(v10 + 8))(v15, v8);
  sub_100004674();
}

uint64_t sub_10003EE94(uint64_t *a1)
{
  v4 = sub_10002EB80(&qword_100198E30, &qword_10014D540);
  sub_100002944(v4);
  v6 = *(v5 + 64);
  sub_100003A54();
  __chkstk_darwin(v7);
  sub_100013424();
  sub_10004013C();
  sub_100011078();
  if (!v1)
  {
    sub_100040190();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v2 = v11;
    sub_10002EB80(&qword_100198E48, &qword_10014D548);
    sub_100040238(&unk_100198E50);
    sub_100007A88();
    v9 = sub_1000066E0();
    v10(v9);
  }

  sub_1000034F8(a1);
  return v2;
}

uint64_t sub_10003F078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003EBCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003F0A0(uint64_t a1)
{
  v2 = sub_10004013C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003F0DC(uint64_t a1)
{
  v2 = sub_10004013C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003F118@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003EE94(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_10003F148()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_10003ECD8();
}

uint64_t sub_10003F168()
{
  if (qword_1001980A0 != -1)
  {
    swift_once();
  }

  v0 = off_100198D80;

  os_unfair_lock_lock(v0 + 6);
  v1 = *(v0 + 2);
  os_unfair_lock_unlock(v0 + 6);

  qword_10019D818 = v1;
  return result;
}

id sub_10003F1F0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier;
  sub_10002EB80(&qword_100198E78, &qword_10014D558);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  *&v0[v2] = v3;
  v4 = OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_persistOperationQueued;
  sub_10002EB80(&qword_100198E80, &qword_10014D560);
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_1000BFA0C();

  return v6;
}

id _LNMetadataProviderDirect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003F3A0(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000270C0();
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v6 = sub_100003D84(v2, v4, isa);

  if (v6)
  {
    [a1 resume];
  }

  else
  {
    v7 = sub_10000B484();
    v9 = v8;
    if (qword_100198308 != -1)
    {
      sub_1000029BC();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000347C(v10, qword_10019E050);

    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v7;
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v15 = 136315650;
      if (v9)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x646E7542206C696ELL;
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = 0xED0000444920656CLL;
      }

      v18 = sub_100004C50(v16, v17, &v24);

      *(v15 + 4) = v18;
      *(v15 + 12) = 1024;
      v19 = [v11 processIdentifier];

      *(v15 + 14) = v19;
      *(v15 + 18) = 2080;
      v23[0] = 0;
      v23[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v20._object = 0x80000001001548A0;
      v20._countAndFlagsBits = 0xD00000000000003DLL;
      String.append(_:)(v20);
      v21._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.append(_:)(v21);

      sub_100004C50(0, 0xE000000000000000, &v24);
      sub_100008840();

      *(v15 + 20) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s with PID %d attempting access to observationStatus registry: %s", v15, 0x1Cu);
      swift_arrayDestroy();
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {
    }
  }

  return v6 & 1;
}

unint64_t sub_10003F684(char a1)
{
  v1 = 0xD00000000000002BLL;
  if ((a1 & 1) == 0)
  {
    sub_100007E1C();
    _StringGuts.grow(_:)(63);
    sub_100007790();
    String.append(_:)(v2);
    v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v3);

    return v5;
  }

  return v1;
}

uint64_t sub_10003F754()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019D820 = result;
  *algn_10019D828 = v1;
  return result;
}

uint64_t sub_10003F784(char a1)
{
  if (a1)
  {
    return 11002;
  }

  else
  {
    return 11004;
  }
}

uint64_t sub_10003F798(char a1)
{
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = sub_10003F684(a1 & 1);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v13 = &type metadata for String;
    *&v12 = v5;
    *(&v12 + 1) = v6;
    sub_1000398F4(&v12, v11);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100068968(v11, v7, v9);
  }

  return v2;
}

uint64_t sub_10003F87C()
{
  if (qword_1001980B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10019D820;

  return v0;
}

uint64_t sub_10003F8F4(uint64_t a1)
{
  v2 = sub_100040830();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10003F930(uint64_t a1)
{
  v2 = sub_100040830();

  return Error<>._code.getter(a1, v2);
}

void sub_10003F974(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void (**a6)(void, void), char a7)
{
  v13 = [objc_opt_self() currentConnection];
  if (v13)
  {
    v14 = v13;
    sub_10000B484();
    if (v15)
    {
      [v14 processIdentifier];
      sub_1001134E4(a1, a2, a3, a4, a7 & 1);

      a6[2](a6, 0);

      goto LABEL_6;
    }
  }

  sub_100040304();
  swift_allocError();
  *v16 = 1;
  v17 = _convertErrorToNSError(_:)();
  (a6)[2](a6, v17);

LABEL_6:

  _Block_release(a6);
}

uint64_t sub_10003FAD4(void *a1, int a2, int a3, unint64_t a4, void *aBlock, char a6)
{
  _Block_copy(aBlock);
  sub_100008840();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v14;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v6);
  v15 = a1;
  sub_10003F974(v10, v12, v13, a4, v15, v6, a6 & 1);
  _Block_release(v6);
}

void sub_10003FBB4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v47 = v5;
  v48 = v1;
  if (v4)
  {
LABEL_5:
    v7 = v6;
LABEL_9:
    v50 = v7;
    v8 = __clz(__rbit64(v4)) | (v7 << 6);
    v9 = (*(a1 + 48) + 16 * v8);
    v11 = *v9;
    v10 = v9[1];
    v12 = (*(a1 + 56) + 24 * v8);
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = qword_100198308;

    if (v16 != -1)
    {
      sub_1000029BC();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000347C(v17, qword_10019E050);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v52 = v15;

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = sub_100004C50(v11, v10, &v54);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;

      v22 = sub_10003E4F8();
      v24 = v23;

      v25 = sub_100004C50(v22, v24, &v54);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: %s", v20, 0x16u);
      swift_arrayDestroy();
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {
    }

    v51 = (v4 - 1) & v4;

    v26 = 0;
    v27 = v52;
    v28 = 1 << *(v52 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v52 + 64);
    v31 = (v28 + 63) >> 6;
    while (v30)
    {
      v32 = v26;
LABEL_23:
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v34 = (v32 << 10) | (16 * v33);
      v35 = (*(v27 + 48) + v34);
      v37 = *v35;
      v36 = v35[1];
      v38 = (*(v27 + 56) + v34);
      v39 = *v38;
      v40 = v38[1];

      v41 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v53))
      {
        v42 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v42 = 136315394;
        sub_100004C50(v37, v36, &v56);
        sub_100008840();

        *(v42 + 4) = v41;
        *(v42 + 12) = 2080;
        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        v43._object = 0x8000000100154910;
        v43._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v43);
        v44._countAndFlagsBits = Array.description.getter();
        String.append(_:)(v44);

        v45._countAndFlagsBits = 0xD000000000000024;
        v45._object = 0x8000000100154930;
        String.append(_:)(v45);
        type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
        v46._countAndFlagsBits = Array.description.getter();
        String.append(_:)(v46);

        sub_100004C50(v54, v55, &v56);
        sub_100008840();

        *(v42 + 14) = &v54;
        _os_log_impl(&_mh_execute_header, v41, v53, "    %s: %s", v42, 0x16u);
        swift_arrayDestroy();
        sub_100004DE4();

        v27 = v52;
        sub_100004DE4();
      }

      else
      {
      }

      v26 = v32;
    }

    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        v6 = v50;
        v4 = v51;
        v5 = v47;
        v1 = v48;
        if (!v51)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v30 = *(v52 + 64 + 8 * v32);
      ++v26;
      if (v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
}

unint64_t sub_10004013C()
{
  result = qword_100198E38;
  if (!qword_100198E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198E38);
  }

  return result;
}

unint64_t sub_100040190()
{
  result = qword_100198E40;
  if (!qword_100198E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198E40);
  }

  return result;
}

unint64_t sub_1000401E4()
{
  result = qword_100198E60;
  if (!qword_100198E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198E60);
  }

  return result;
}

unint64_t sub_100040238(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v4 = v3;
    sub_10002EC70(&qword_100198E48, &qword_10014D548);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener()
{
  result = qword_100198EE8;
  if (!qword_100198EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100040304()
{
  result = qword_100198E70;
  if (!qword_100198E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198E70);
  }

  return result;
}

__n128 sub_100040368(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004037C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}