uint64_t sub_1001CF7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_10004CE88(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_100004B58(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_100089EBC();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_10004BF8C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1001CF8F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000516B4(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_10004D368(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1000516C4(a2);
    *v2 = v7;
  }

  else
  {
    sub_1000097E8(a1, &unk_100339680, &qword_100278390);
    sub_1001D0AB4(a2, v8);
    sub_1000516C4(a2);
    return sub_1000097E8(v8, &unk_100339680, &qword_100278390);
  }

  return result;
}

uint64_t sub_1001CF9B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1000097E8(a1, &qword_10033C280, &qword_100272A80);
    sub_1001D0B58(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1000097E8(v8, &qword_10033C280, &qword_100272A80);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10004D910(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001CFBE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v10 = *(*(active - 8) + 64);
  __chkstk_darwin(active);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1000097E8(a1, &qword_10034B6B0, &qword_1002967F0);
    sub_1001D0CF8(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1000097E8(v8, &qword_10034B6B0, &qword_1002967F0);
  }

  else
  {
    sub_10008CD9C(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10004DB14(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001CFDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10004DCFC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100004B58(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10008B984();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_10004CE10(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t *sub_1001CFEE4()
{
  v2 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100274B30;
  AnyHashable.init<A>(_:)();
  v4 = type metadata accessor for UUID();
  *(inited + 96) = v4;
  v5 = sub_10000F798((inited + 72));
  (*(*(v4 - 8) + 16))(v5, v2, v4);
  AnyHashable.init<A>(_:)();
  v6 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v7 = (v2 + v6[5]);
  v9 = *v7;
  v8 = v7[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v9;
  *(inited + 152) = v8;

  AnyHashable.init<A>(_:)();
  v10 = v2 + v6[6];
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 240) = &type metadata for Double;
  *(inited + 216) = v11;
  AnyHashable.init<A>(_:)();
  v12 = *(v2 + v6[7]);
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v12;
  AnyHashable.init<A>(_:)();
  v21 = *(v2 + v6[8]);
  v13 = type metadata accessor for JSONEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100035D04(&qword_10034B690, &qword_100289B48);
  sub_1001D087C();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;

  if (v1)
  {
    sub_1000516C4(inited + 320);
    v19 = &qword_100344038;
    sub_1000097E8(inited + 248, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 176, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 104, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
  }

  else
  {
    *(inited + 384) = &type metadata for Data;
    *(inited + 360) = v16;
    *(inited + 368) = v18;
    v19 = sub_10024D824(inited);
  }

  swift_setDeallocating();
  sub_100035D04(&qword_100344038, qword_100279DB0);
  swift_arrayDestroy();
  return v19;
}

unint64_t sub_1001D023C()
{
  v1 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002725A0;
  AnyHashable.init<A>(_:)();
  v3 = type metadata accessor for UUID();
  *(inited + 96) = v3;
  v4 = sub_10000F798((inited + 72));
  (*(*(v3 - 8) + 16))(v4, v1, v3);
  AnyHashable.init<A>(_:)();
  v5 = (v1 + *(type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 152) = v6;

  v8 = sub_10024D824(inited);
  swift_setDeallocating();
  sub_100035D04(&qword_100344038, qword_100279DB0);
  swift_arrayDestroy();
  return v8;
}

uint64_t *sub_1001D03E0()
{
  v2 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100278930;
  v27 = 25705;
  v28 = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  v4 = type metadata accessor for UUID();
  *(inited + 96) = v4;
  v5 = sub_10000F798((inited + 72));
  (*(*(v4 - 8) + 16))(v5, v2, v4);
  v27 = 0x496E6F6973736573;
  v28 = 0xE900000000000044;
  AnyHashable.init<A>(_:)();
  v6 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v7 = (v2 + v6[5]);
  v9 = *v7;
  v8 = v7[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v9;
  *(inited + 152) = v8;
  v27 = 0x6D617473656D6974;
  v28 = 0xE900000000000070;

  AnyHashable.init<A>(_:)();
  v10 = v2 + v6[6];
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 240) = &type metadata for Double;
  *(inited + 216) = v11;
  v27 = 0x74757074756FLL;
  v28 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  LOBYTE(v27) = *(v2 + v6[7]);
  v12 = type metadata accessor for JSONEncoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001D0EC0();
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v17 = v16;

  if (v1)
  {
    sub_1000516C4(inited + 248);
    v18 = &qword_100344038;
    sub_1000097E8(inited + 176, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 104, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 312) = &type metadata for Data;
    *(inited + 288) = v15;
    *(inited + 296) = v17;
    v18 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
    v19 = (v2 + v6[8]);
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;

      AnyHashable.init<A>(_:)();
      v26 = &type metadata for String;
      *&v25 = v21;
      *(&v25 + 1) = v20;
      sub_1000516B4(&v25, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v18;
      sub_10004D368(v24, &v27, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(&v27);
      return v29;
    }
  }

  return v18;
}

unint64_t sub_1001D0760()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  AnyHashable.init<A>(_:)();
  v5 = sub_1001F7300(v1, v2, v3);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  v7 = sub_10024D824(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
  return v7;
}

unint64_t sub_1001D087C()
{
  result = qword_10034B698;
  if (!qword_10034B698)
  {
    sub_100035D4C(&qword_10034B690, &qword_100289B48);
    sub_1001D0900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B698);
  }

  return result;
}

unint64_t sub_1001D0900()
{
  result = qword_10034B6A0;
  if (!qword_10034B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B6A0);
  }

  return result;
}

uint64_t sub_1001D0954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100019110(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100089CDC();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_100051968(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1001D0A1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100004B58(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10008A2E8();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100005840(v7, v10);
  *v3 = v10;
  return v12;
}

double sub_1001D0AB4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000851E8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10008A458();
      v11 = v13;
    }

    sub_1000516C4(*(v11 + 48) + 40 * v8);
    sub_1000516B4((*(v11 + 56) + 32 * v8), a2);
    sub_10004C45C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001D0B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100019110(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10008ADDC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_10004C770(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1001D0CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100019110(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10008B130();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
    v22 = *(active - 8);
    sub_10008CD9C(v14 + *(v22 + 72) * v8, a2);
    sub_10004C788(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = active;
  }

  else
  {
    v20 = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_1001D0EC0()
{
  result = qword_10034B6A8;
  if (!qword_10034B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B6A8);
  }

  return result;
}

uint64_t sub_1001D0F80()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001D1008(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001D1144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_1001D1288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  type metadata accessor for UUID();
  if (v6 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v7 <= 0x3F)
    {
      sub_1001D1348(319, a5);
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001D1348(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1001D1394(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001D13B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001D13F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001D1684(void *a1)
{
  v2 = v1;
  v69 = sub_100035D04(&qword_10034B920, &qword_100289E48);
  v68 = *(v69 - 8);
  v4 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v63 - v5;
  v6 = sub_100035D04(&qword_10034B928, &qword_100289E50);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  __chkstk_darwin(v6);
  v83 = &v63 - v8;
  v66 = sub_100035D04(&qword_10034B930, &qword_100289E58);
  v65 = *(v66 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = &v63 - v10;
  v72 = sub_100035D04(&qword_10034B938, &qword_100289E60);
  v71 = *(v72 - 8);
  v11 = *(v71 + 64);
  __chkstk_darwin(v72);
  v70 = &v63 - v12;
  v75 = sub_100035D04(&qword_10034B940, &qword_100289E68);
  v74 = *(v75 - 8);
  v13 = *(v74 + 64);
  __chkstk_darwin(v75);
  v73 = &v63 - v14;
  v15 = sub_100035D04(&qword_10034B948, &qword_100289E70);
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = *(v81 + 64);
  __chkstk_darwin(v15);
  v80 = &v63 - v17;
  v18 = sub_100035D04(&qword_10034B950, &qword_100289E78);
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = *(v78 + 64);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = sub_100035D04(&qword_10034B958, &qword_100289E80);
  v76 = *(v22 - 8);
  v77 = v22;
  v23 = *(v76 + 64);
  __chkstk_darwin(v22);
  v25 = &v63 - v24;
  v26 = sub_100035D04(&qword_10034B960, &qword_100289E88);
  v27 = *(v26 - 8);
  v87 = v26;
  v88 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v63 - v29;
  v31 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001D3938();
  v86 = v30;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v32 = *v2;
  v33 = *(v2 + 8);
  v34 = *(v2 + 16);
  v35 = *(v2 + 24);
  v36 = *(v2 + 32);
  v37 = *(v2 + 40);
  v38 = *(v2 + 56);
  if (v38 <= 1)
  {
    v84 = *(v2 + 48);
    v85 = v32;
    if (!v38)
    {
      LOBYTE(v89) = 1;
      sub_1001D3B84();
      v40 = v86;
      v39 = v87;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v89 = v85;
      v90 = v33;
      v91 = v34;
      v92 = v35;
      v93 = v36;
      v94 = v37;
      v95 = v84;
      sub_10010B950();
      v41 = v79;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v78 + 8))(v21, v41);
      return (*(v88 + 8))(v40, v39);
    }

    LOBYTE(v89) = 2;
    sub_1001D3B30();
    v47 = v80;
    v45 = v86;
    v44 = v87;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v89 = v85;
    v90 = v33;
    v91 = v34;
    v92 = v35;
    v93 = v36;
    v94 = v37;
    v95 = v84;
    sub_10010B950();
    v48 = v82;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v81 + 8))(v47, v48);
    goto LABEL_7;
  }

  if (v38 == 2)
  {
    LOBYTE(v89) = 6;
    sub_1001D39E0();
    v43 = v83;
    v45 = v86;
    v44 = v87;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v46 = v85;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v84 + 8))(v43, v46);
LABEL_7:
    v49 = *(v88 + 8);
    v50 = v45;
    return v49(v50, v44);
  }

  v51 = v36 | v37 | *(v2 + 48);
  if (!(v34 | v33 | v32 | v35 | v51))
  {
    LOBYTE(v89) = 0;
    sub_1001D3BD8();
    v56 = v86;
    v55 = v87;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v76 + 8))(v25, v77);
    return (*(v88 + 8))(v56, v55);
  }

  v52 = v34 | v33 | v35 | v51;
  if (v32 != 1 || v52)
  {
    if (v32 != 2 || v52)
    {
      if (v32 != 3 || v52)
      {
        LOBYTE(v89) = 7;
        sub_1001D398C();
        v62 = v67;
        v54 = v86;
        v44 = v87;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v58 = *(v68 + 8);
        v59 = v62;
        v60 = &v97;
      }

      else
      {
        LOBYTE(v89) = 5;
        sub_1001D3A34();
        v61 = v64;
        v54 = v86;
        v44 = v87;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v58 = *(v65 + 8);
        v59 = v61;
        v60 = &v96;
      }
    }

    else
    {
      LOBYTE(v89) = 4;
      sub_1001D3A88();
      v57 = v70;
      v54 = v86;
      v44 = v87;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = *(v71 + 8);
      v59 = v57;
      v60 = &v98;
    }

    v58(v59, *(v60 - 32));
  }

  else
  {
    LOBYTE(v89) = 3;
    sub_1001D3ADC();
    v53 = v73;
    v54 = v86;
    v44 = v87;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v74 + 8))(v53, v75);
  }

  v49 = *(v88 + 8);
  v50 = v54;
  return v49(v50, v44);
}

uint64_t sub_1001D1FC0()
{
  v1 = *v0;
  v2 = 0x6576697463616E69;
  v3 = 0x65646E6570737573;
  if (v1 != 6)
  {
    v3 = 0x6E65707375736E75;
  }

  v4 = 0x676E696E6E7572;
  if (v1 != 4)
  {
    v4 = 0x676E69646E6570;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 2)
  {
    v5 = 0x646573756170;
  }

  if (*v0)
  {
    v2 = 0x6164696C61766E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001D20C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D2908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D20F4(uint64_t a1)
{
  v2 = sub_1001D3938();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2130(uint64_t a1)
{
  v2 = sub_1001D3938();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D216C(uint64_t a1)
{
  v2 = sub_1001D3B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D21A8(uint64_t a1)
{
  v2 = sub_1001D3B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D21E4(uint64_t a1)
{
  v2 = sub_1001D3BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2220(uint64_t a1)
{
  v2 = sub_1001D3BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D225C(uint64_t a1)
{
  v2 = sub_1001D3B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2298(uint64_t a1)
{
  v2 = sub_1001D3B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D22D4(uint64_t a1)
{
  v2 = sub_1001D3ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2310(uint64_t a1)
{
  v2 = sub_1001D3ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D234C(uint64_t a1)
{
  v2 = sub_1001D3A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2388(uint64_t a1)
{
  v2 = sub_1001D3A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D23C4(uint64_t a1)
{
  v2 = sub_1001D3A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2400(uint64_t a1)
{
  v2 = sub_1001D3A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D243C(uint64_t a1)
{
  v2 = sub_1001D39E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2478(uint64_t a1)
{
  v2 = sub_1001D39E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D24B4(uint64_t a1)
{
  v2 = sub_1001D398C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D24F0(uint64_t a1)
{
  v2 = sub_1001D398C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001D252C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1001D2BAC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1001D2594(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1001D25F0(v5, v7) & 1;
}

uint64_t sub_1001D25F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v8 = a1[6];
  v10 = *(a1 + 56);
  if (v10 <= 1)
  {
    if (v10)
    {
      if (*(a2 + 56) != 1 || v3 != *a2)
      {
        return 0;
      }

      v16 = *(a2 + 24);
      v17 = *(a2 + 32);
      v18 = *(a2 + 40);
      v13 = *(a2 + 48);
      if ((v4 != *(a2 + 8) || v5 != *(a2 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if ((v6 != v16 || v7 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        if (v13)
        {
          if (v9 == v18 && v8 == v13)
          {
            return 1;
          }

          return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
        }

        return 0;
      }
    }

    else
    {
      if (*(a2 + 56) || v3 != *a2)
      {
        return 0;
      }

      v11 = *(a2 + 24);
      v12 = *(a2 + 32);
      v14 = *(a2 + 40);
      v13 = *(a2 + 48);
      if ((v4 != *(a2 + 8) || v5 != *(a2 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if ((v6 != v11 || v7 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        if (v13)
        {
          if (v9 == v14 && v8 == v13)
          {
            return 1;
          }

          return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
        }

        return 0;
      }
    }

    return !v13;
  }

  if (v10 != 2)
  {
    v19 = v5 | v4;
    v20 = v7 | v9 | v8;
    if (!(v19 | v3 | v6 | v20))
    {
      if (*(a2 + 56) != 3)
      {
        return 0;
      }

      v22 = vorrq_s8(*(a2 + 24), *(a2 + 40));
      return !(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *(a2 + 16) | *(a2 + 8) | *a2);
    }

    v21 = v19 | v6 | v20;
    if (v3 != 1 || v21)
    {
      if (v3 != 2 || v21)
      {
        if (v3 != 3 || v21)
        {
          if (*(a2 + 56) != 3 || *a2 != 4)
          {
            return 0;
          }
        }

        else if (*(a2 + 56) != 3 || *a2 != 3)
        {
          return 0;
        }
      }

      else if (*(a2 + 56) != 3 || *a2 != 2)
      {
        return 0;
      }
    }

    else if (*(a2 + 56) != 3 || *a2 != 1)
    {
      return 0;
    }

    v23 = vorrq_s8(*(a2 + 24), *(a2 + 40));
    return !(*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | *(a2 + 16) | *(a2 + 8));
  }

  if (*(a2 + 56) != 2)
  {
    return 0;
  }

  if (v3 == *a2 && v4 == *(a2 + 8))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001D2908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646E6570737573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E65707375736E75 && a2 == 0xEB00000000646564)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

double sub_1001D2BAC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v81 = sub_100035D04(&qword_10034B890, &qword_100289DF8);
  v78 = *(v81 - 8);
  v3 = *(v78 + 64);
  __chkstk_darwin(v81);
  v88 = &v63 - v4;
  v80 = sub_100035D04(&qword_10034B898, &qword_100289E00);
  v79 = *(v80 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v80);
  v83 = &v63 - v6;
  v77 = sub_100035D04(&qword_10034B8A0, &qword_100289E08);
  v76 = *(v77 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v77);
  v87 = &v63 - v8;
  v74 = sub_100035D04(&qword_10034B8A8, &qword_100289E10);
  v75 = *(v74 - 8);
  v9 = *(v75 + 64);
  __chkstk_darwin(v74);
  v86 = &v63 - v10;
  v70 = sub_100035D04(&qword_10034B8B0, &qword_100289E18);
  v71 = *(v70 - 8);
  v11 = *(v71 + 64);
  __chkstk_darwin(v70);
  v82 = &v63 - v12;
  v73 = sub_100035D04(&qword_10034B8B8, &qword_100289E20);
  v72 = *(v73 - 8);
  v13 = *(v72 + 64);
  __chkstk_darwin(v73);
  v85 = &v63 - v14;
  v69 = sub_100035D04(&qword_10034B8C0, &qword_100289E28);
  v68 = *(v69 - 8);
  v15 = *(v68 + 64);
  __chkstk_darwin(v69);
  v17 = &v63 - v16;
  v18 = sub_100035D04(&qword_10034B8C8, &qword_100289E30);
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = sub_100035D04(&qword_10034B8D0, &unk_100289E38);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v63 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v100 = a1;
  sub_10000EBC0(a1, v28);
  sub_1001D3938();
  v29 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v30 = v29;
  if (v29)
  {
    goto LABEL_10;
  }

  v65 = v21;
  v64 = v18;
  v66 = v17;
  v32 = v85;
  v31 = v86;
  v33 = v87;
  v34 = v88;
  *&v89 = v23;
  v35 = KeyedDecodingContainer.allKeys.getter();
  v36 = (2 * *(v35 + 16)) | 1;
  v96 = v35;
  v97 = v35 + 32;
  v98 = 0;
  v99 = v36;
  v37 = sub_100218024();
  if (v37 == 8 || v98 != v99 >> 1)
  {
    v45 = v26;
    v46 = type metadata accessor for DecodingError();
    swift_allocError();
    v48 = v47;
    v49 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v48 = &type metadata for RangingSessionState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v46 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v46);
    swift_willThrow();
    (*(v89 + 8))(v45, v22);
    swift_unknownObjectRelease();
LABEL_10:
    sub_10000903C(v100);
    return result;
  }

  if (v37 > 3u)
  {
    v44 = v84;
    if (v37 > 5u)
    {
      v54 = v84;
      v55 = v89;
      if (v37 == 6)
      {
        LOBYTE(v90) = 6;
        sub_1001D39E0();
        v56 = v83;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v57 = v26;
        v42 = v80;
        v30 = 0;
        v39 = KeyedDecodingContainer.decode(_:forKey:)();
        v40 = v61;
        v69 = 0;
        (*(v79 + 8))(v56, v42);
        v62 = *(v55 + 8);
        v41 = v55 + 8;
        v62(v57, v22);
        swift_unknownObjectRelease();
        v43 = 2;
      }

      else
      {
        LOBYTE(v90) = 7;
        sub_1001D398C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v69 = 0;
        (*(v78 + 8))(v34, v81);
        (*(v55 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v89 = 0u;
        v43 = 3;
        v39 = 4;
      }

      v44 = v54;
    }

    else
    {
      v51 = v89;
      if (v37 == 4)
      {
        LOBYTE(v90) = 4;
        sub_1001D3A88();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v69 = 0;
        (*(v75 + 8))(v31, v74);
        (*(v51 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v89 = 0u;
        v43 = 3;
        v39 = 2;
      }

      else
      {
        LOBYTE(v90) = 5;
        sub_1001D3A34();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v69 = 0;
        (*(v76 + 8))(v33, v77);
        (*(v51 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v89 = 0u;
        v39 = 3;
        v43 = 3;
      }
    }
  }

  else if (v37 > 1u)
  {
    v52 = v89;
    if (v37 == 2)
    {
      LOBYTE(v90) = 2;
      sub_1001D3B30();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v84;
      sub_10010B758();
      v53 = v73;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v69 = 0;
      (*(v72 + 8))(v32, v53);
      (*(v52 + 8))(v26, v22);
      swift_unknownObjectRelease();
      v39 = v90;
      v40 = v91;
      v30 = v92;
      v41 = v93;
      v42 = v94;
      v43 = 1;
      v89 = v95;
    }

    else
    {
      LOBYTE(v90) = 3;
      sub_1001D3ADC();
      v59 = v82;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v84;
      v69 = 0;
      (*(v71 + 8))(v59, v70);
      (*(v52 + 8))(v26, v22);
      swift_unknownObjectRelease();
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v89 = 0u;
      v43 = 3;
      v39 = 1;
    }
  }

  else
  {
    if (v37)
    {
      LOBYTE(v90) = 1;
      sub_1001D3B84();
      v58 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10010B758();
      v60 = v69;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v68 + 8))(v58, v60);
      (*(v89 + 8))(v26, v22);
      swift_unknownObjectRelease();
      v69 = 0;
      v43 = 0;
      v39 = v90;
      v40 = v91;
      v30 = v92;
      v41 = v93;
      v42 = v94;
      v89 = v95;
    }

    else
    {
      LOBYTE(v90) = 0;
      sub_1001D3BD8();
      v38 = v65;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = 0;
      (*(v67 + 8))(v38, v64);
      (*(v89 + 8))(v26, v22);
      swift_unknownObjectRelease();
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v89 = 0u;
      v43 = 3;
    }

    v44 = v84;
  }

  sub_10000903C(v100);
  *v44 = v39;
  *(v44 + 8) = v40;
  *(v44 + 16) = v30;
  *(v44 + 24) = v41;
  *(v44 + 32) = v42;
  result = *&v89;
  *(v44 + 40) = v89;
  *(v44 + 56) = v43;
  return result;
}

unint64_t sub_1001D3938()
{
  result = qword_10034B8D8;
  if (!qword_10034B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8D8);
  }

  return result;
}

unint64_t sub_1001D398C()
{
  result = qword_10034B8E0;
  if (!qword_10034B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8E0);
  }

  return result;
}

unint64_t sub_1001D39E0()
{
  result = qword_10034B8E8;
  if (!qword_10034B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8E8);
  }

  return result;
}

unint64_t sub_1001D3A34()
{
  result = qword_10034B8F0;
  if (!qword_10034B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8F0);
  }

  return result;
}

unint64_t sub_1001D3A88()
{
  result = qword_10034B8F8;
  if (!qword_10034B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8F8);
  }

  return result;
}

unint64_t sub_1001D3ADC()
{
  result = qword_10034B900;
  if (!qword_10034B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B900);
  }

  return result;
}

unint64_t sub_1001D3B30()
{
  result = qword_10034B908;
  if (!qword_10034B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B908);
  }

  return result;
}

unint64_t sub_1001D3B84()
{
  result = qword_10034B910;
  if (!qword_10034B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B910);
  }

  return result;
}

unint64_t sub_1001D3BD8()
{
  result = qword_10034B918;
  if (!qword_10034B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B918);
  }

  return result;
}

unint64_t sub_1001D3CC0()
{
  result = qword_10034B968;
  if (!qword_10034B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B968);
  }

  return result;
}

unint64_t sub_1001D3D18()
{
  result = qword_10034B970;
  if (!qword_10034B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B970);
  }

  return result;
}

unint64_t sub_1001D3D70()
{
  result = qword_10034B978;
  if (!qword_10034B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B978);
  }

  return result;
}

unint64_t sub_1001D3DC8()
{
  result = qword_10034B980;
  if (!qword_10034B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B980);
  }

  return result;
}

unint64_t sub_1001D3E20()
{
  result = qword_10034B988;
  if (!qword_10034B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B988);
  }

  return result;
}

unint64_t sub_1001D3E78()
{
  result = qword_10034B990;
  if (!qword_10034B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B990);
  }

  return result;
}

unint64_t sub_1001D3ED0()
{
  result = qword_10034B998;
  if (!qword_10034B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B998);
  }

  return result;
}

unint64_t sub_1001D3F28()
{
  result = qword_10034B9A0;
  if (!qword_10034B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9A0);
  }

  return result;
}

unint64_t sub_1001D3F80()
{
  result = qword_10034B9A8;
  if (!qword_10034B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9A8);
  }

  return result;
}

unint64_t sub_1001D3FD8()
{
  result = qword_10034B9B0;
  if (!qword_10034B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9B0);
  }

  return result;
}

unint64_t sub_1001D4030()
{
  result = qword_10034B9B8;
  if (!qword_10034B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9B8);
  }

  return result;
}

unint64_t sub_1001D4088()
{
  result = qword_10034B9C0;
  if (!qword_10034B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9C0);
  }

  return result;
}

unint64_t sub_1001D40E0()
{
  result = qword_10034B9C8;
  if (!qword_10034B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9C8);
  }

  return result;
}

unint64_t sub_1001D4138()
{
  result = qword_10034B9D0;
  if (!qword_10034B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9D0);
  }

  return result;
}

unint64_t sub_1001D4190()
{
  result = qword_10034B9D8;
  if (!qword_10034B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9D8);
  }

  return result;
}

unint64_t sub_1001D41E8()
{
  result = qword_10034B9E0;
  if (!qword_10034B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9E0);
  }

  return result;
}

unint64_t sub_1001D4240()
{
  result = qword_10034B9E8;
  if (!qword_10034B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9E8);
  }

  return result;
}

unint64_t sub_1001D4298()
{
  result = qword_10034B9F0;
  if (!qword_10034B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9F0);
  }

  return result;
}

unint64_t sub_1001D42F0()
{
  result = qword_10034B9F8;
  if (!qword_10034B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9F8);
  }

  return result;
}

unint64_t sub_1001D4348()
{
  result = qword_10034BA00;
  if (!qword_10034BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BA00);
  }

  return result;
}

unint64_t sub_1001D43A0()
{
  result = qword_10034BA08;
  if (!qword_10034BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BA08);
  }

  return result;
}

unint64_t sub_1001D43F8()
{
  result = qword_10034BA10;
  if (!qword_10034BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BA10);
  }

  return result;
}

id sub_1001D444C()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 200.0, 200.0}];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithScale:3];
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  [v2 setImage:v5 forState:0];
  v6 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v6];

  return v2;
}

uint64_t type metadata accessor for ClassicCardViewServiceContext()
{
  result = qword_10034BA70;
  if (!qword_10034BA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D4614()
{
  type metadata accessor for ActivityDisplayContext(319);
  if (v0 <= 0x3F)
  {
    sub_1001D46D8();
    if (v1 <= 0x3F)
    {
      _s8CardInfoOMa();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PCActivityAssetType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001D46D8()
{
  if (!qword_10034BA80)
  {
    sub_100151930();
    v0 = type metadata accessor for NSCodingCodableOptional();
    if (!v1)
    {
      atomic_store(v0, &qword_10034BA80);
    }
  }
}

uint64_t sub_1001D4730(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034BAF8, &qword_10028A860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001D52F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for ActivityDisplayContext(0);
  sub_1001D551C(&qword_10034BB00, type metadata accessor for ActivityDisplayContext);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for ClassicCardViewServiceContext();
    LOBYTE(v14) = *(v3 + v11[5]);
    v15 = 1;
    sub_10010BAF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + v11[6]);
    v15 = 2;
    sub_100035D04(&qword_10034B658, &qword_100289998);
    sub_1001CF424(&qword_10034B670);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + v11[7]);
    v15 = 3;
    sub_1001D54C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v11[8];
    LOBYTE(v14) = 4;
    _s8CardInfoOMa();
    sub_1001D551C(&qword_10034BB10, _s8CardInfoOMa);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + v11[9]);
    v15 = 5;
    type metadata accessor for PCActivityAssetType(0);
    sub_1001D551C(&qword_100346538, type metadata accessor for PCActivityAssetType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1001D4AAC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = _s8CardInfoOMa();
  v3 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityDisplayContext(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v25 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100035D04(&qword_10034BAD0, &unk_10028A850);
  v24 = *(v27 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v27);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ClassicCardViewServiceContext();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001D52F4();
  v26 = v11;
  v17 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_10000903C(a1);
  }

  else
  {
    v28 = v5;
    v18 = v24;
    LOBYTE(v29) = 0;
    sub_1001D551C(&qword_10034BAE0, type metadata accessor for ActivityDisplayContext);
    v19 = v25;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001D539C(v19, v15, type metadata accessor for ActivityDisplayContext);
    v30 = 1;
    sub_10010BAA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15[v12[5]] = v29;
    sub_100035D04(&qword_10034B658, &qword_100289998);
    v30 = 2;
    sub_1001CF424(&qword_10034B660);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v15[v12[6]] = v29;
    v30 = 3;
    sub_1001D5348();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v15[v12[7]] = v29;
    LOBYTE(v29) = 4;
    sub_1001D551C(&qword_10034BAF0, _s8CardInfoOMa);
    v20 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001D539C(v20, &v15[v12[8]], _s8CardInfoOMa);
    type metadata accessor for PCActivityAssetType(0);
    v30 = 5;
    sub_1001D551C(&qword_100346508, type metadata accessor for PCActivityAssetType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v26, v27);
    *&v15[v12[9]] = v29;
    sub_1001D5404(v15, v22);
    sub_10000903C(a1);
    sub_1001D5468(v15, type metadata accessor for ClassicCardViewServiceContext);
  }
}

unint64_t sub_1001D50A4()
{
  v1 = *v0;
  v2 = 0x436C616974696E69;
  v3 = 0xD00000000000001ALL;
  v4 = 0x6F666E4964726163;
  if (v1 != 4)
  {
    v4 = 0x7341656369766564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001DLL;
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

uint64_t sub_1001D5184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D567C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D51AC(uint64_t a1)
{
  v2 = sub_1001D52F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D51E8(uint64_t a1)
{
  v2 = sub_1001D52F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D5270(uint64_t a1)
{
  *(a1 + 8) = sub_1001D551C(&qword_10034BAC0, type metadata accessor for ClassicCardViewServiceContext);
  result = sub_1001D551C(&qword_10034BAC8, type metadata accessor for ClassicCardViewServiceContext);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001D52F4()
{
  result = qword_10034BAD8;
  if (!qword_10034BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BAD8);
  }

  return result;
}

unint64_t sub_1001D5348()
{
  result = qword_10034BAE8;
  if (!qword_10034BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BAE8);
  }

  return result;
}

uint64_t sub_1001D539C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D5404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassicCardViewServiceContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D5468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001D54C8()
{
  result = qword_10034BB08;
  if (!qword_10034BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB08);
  }

  return result;
}

uint64_t sub_1001D551C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001D5578()
{
  result = qword_10034BB18;
  if (!qword_10034BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB18);
  }

  return result;
}

unint64_t sub_1001D55D0()
{
  result = qword_10034BB20;
  if (!qword_10034BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB20);
  }

  return result;
}

unint64_t sub_1001D5628()
{
  result = qword_10034BB28;
  if (!qword_10034BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB28);
  }

  return result;
}

uint64_t sub_1001D567C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001DLL && 0x80000001002A4850 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436C616974696E69 && a2 == 0xEF65646F4D647261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002A4870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001002A4890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E4964726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7341656369766564 && a2 == 0xEF65707954746573)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1001D5894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001D58AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 56))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D5900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 7;
    }
  }

  return result;
}

double sub_1001D5968(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001D59A8()
{
  v1 = *(v0 + 2);
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        return 0x636F6C6E55746F6ELL;
      }

      if (v1 == 7)
      {
        return 0x7373657270707573;
      }

      goto LABEL_18;
    }

    if (v1 == 4)
    {
      return 0x6C6F736552746F6ELL;
    }

    else
    {
      return 0x6F70707553746F6ELL;
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        return 0x6C69617641746F6ELL;
      }

      if (v1 == 1)
      {
        return 0x6C6F726E45746F6ELL;
      }

LABEL_18:
      v3._countAndFlagsBits = 0x28726F727265;
      v3._object = 0xE600000000000000;
      String.append(_:)(v3);
      v5 = *v0;
      v6 = *(v0 + 24);
      v7 = *(v0 + 40);
      _print_unlocked<A, B>(_:_:)();
      v4._countAndFlagsBits = 41;
      v4._object = 0xE100000000000000;
      String.append(_:)(v4);
      return 0;
    }

    if (v1 == 2)
    {
      return 0x6572696150746F6ELL;
    }

    else
    {
      return 0x676F636552746F6ELL;
    }
  }
}

uint64_t sub_1001D5BA4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726F727265;
    v6 = 0x6C6F726E45746F6ELL;
    if (a1 != 2)
    {
      v6 = 0x6572696150746F6ELL;
    }

    if (a1)
    {
      v5 = 0x6C69617641746F6ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F70707553746F6ELL;
    v2 = 0x636F6C6E55746F6ELL;
    if (a1 != 7)
    {
      v2 = 0x7373657270707573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676F636552746F6ELL;
    if (a1 != 4)
    {
      v3 = 0x6C6F736552746F6ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1001D5CF0(void *a1)
{
  v2 = sub_100035D04(&qword_10034BBD0, &qword_10028AB08);
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  __chkstk_darwin(v2);
  v69 = &v49 - v4;
  v5 = sub_100035D04(&qword_10034BBD8, &qword_10028AB10);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  __chkstk_darwin(v5);
  v66 = &v49 - v7;
  v8 = sub_100035D04(&qword_10034BBE0, &qword_10028AB18);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  __chkstk_darwin(v8);
  v63 = &v49 - v10;
  v11 = sub_100035D04(&qword_10034BBE8, &qword_10028AB20);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  __chkstk_darwin(v11);
  v60 = &v49 - v13;
  v59 = sub_100035D04(&qword_10034BBF0, &qword_10028AB28);
  v58 = *(v59 - 8);
  v14 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = &v49 - v15;
  v56 = sub_100035D04(&qword_10034BBF8, &qword_10028AB30);
  v55 = *(v56 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v56);
  v54 = &v49 - v17;
  v53 = sub_100035D04(&qword_10034BC00, &qword_10028AB38);
  v51 = *(v53 - 8);
  v18 = *(v51 + 64);
  __chkstk_darwin(v53);
  v20 = &v49 - v19;
  v21 = sub_100035D04(&qword_10034BC08, &qword_10028AB40);
  v50 = *(v21 - 8);
  v22 = *(v50 + 64);
  __chkstk_darwin(v21);
  v24 = &v49 - v23;
  v25 = sub_100035D04(&qword_10034BC10, &qword_10028AB48);
  v52 = *(v25 - 8);
  v26 = *(v52 + 64);
  __chkstk_darwin(v25);
  v28 = &v49 - v27;
  v29 = sub_100035D04(&qword_10034BC18, &qword_10028AB50);
  v30 = *(v29 - 8);
  v73 = v29;
  v74 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v49 - v32;
  v34 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001D7EEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v35 = v72;
  v36 = *(v72 + 16);
  if (v36 > 3)
  {
    if (v36 > 5)
    {
      if (v36 == 6)
      {
        LOBYTE(v75) = 7;
        sub_1001D7F94();
        v41 = v66;
        v37 = v73;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v67;
        v42 = v68;
      }

      else
      {
        if (v36 != 7)
        {
          goto LABEL_21;
        }

        LOBYTE(v75) = 8;
        sub_1001D7F40();
        v41 = v69;
        v37 = v73;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v70;
        v42 = v71;
      }
    }

    else if (v36 == 4)
    {
      LOBYTE(v75) = 5;
      sub_1001D803C();
      v41 = v60;
      v37 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v61;
      v42 = v62;
    }

    else
    {
      LOBYTE(v75) = 6;
      sub_1001D7FE8();
      v41 = v63;
      v37 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v64;
      v42 = v65;
    }

    v38 = *(v43 + 8);
    v39 = v41;
    goto LABEL_20;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      LOBYTE(v75) = 3;
      sub_1001D80E4();
      v47 = v54;
      v37 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = *(v55 + 8);
      v39 = v47;
      v40 = &v80;
    }

    else
    {
      LOBYTE(v75) = 4;
      sub_1001D8090();
      v44 = v57;
      v37 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = *(v58 + 8);
      v39 = v44;
      v40 = &v81;
    }

    goto LABEL_17;
  }

  if (!v36)
  {
    LOBYTE(v75) = 1;
    sub_1001D818C();
    v45 = v73;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v50 + 8))(v24, v21);
    return (*(v74 + 8))(v33, v45);
  }

  if (v36 == 1)
  {
    LOBYTE(v75) = 2;
    sub_1001D8138();
    v37 = v73;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = *(v51 + 8);
    v39 = v20;
    v40 = &v79;
LABEL_17:
    v42 = *(v40 - 32);
LABEL_20:
    v38(v39, v42);
    return (*(v74 + 8))(v33, v37);
  }

LABEL_21:
  LOBYTE(v75) = 0;
  sub_1001D81E0();
  v48 = v73;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v75 = *v35;
  v76 = v36;
  v77 = *(v35 + 24);
  v78 = *(v35 + 40);
  sub_10010B950();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v52 + 8))(v28, v25);
  return (*(v74 + 8))(v33, v48);
}

uint64_t sub_1001D665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D6DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D6684(uint64_t a1)
{
  v2 = sub_1001D7EEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D66C0(uint64_t a1)
{
  v2 = sub_1001D7EEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D66FC(uint64_t a1)
{
  v2 = sub_1001D81E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6738(uint64_t a1)
{
  v2 = sub_1001D81E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6774(uint64_t a1)
{
  v2 = sub_1001D818C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D67B0(uint64_t a1)
{
  v2 = sub_1001D818C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D67EC(uint64_t a1)
{
  v2 = sub_1001D8138();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6828(uint64_t a1)
{
  v2 = sub_1001D8138();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6864(uint64_t a1)
{
  v2 = sub_1001D80E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D68A0(uint64_t a1)
{
  v2 = sub_1001D80E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D68DC(uint64_t a1)
{
  v2 = sub_1001D8090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6918(uint64_t a1)
{
  v2 = sub_1001D8090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6954(uint64_t a1)
{
  v2 = sub_1001D803C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6990(uint64_t a1)
{
  v2 = sub_1001D803C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D69CC(uint64_t a1)
{
  v2 = sub_1001D7FE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6A08(uint64_t a1)
{
  v2 = sub_1001D7FE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6A44(uint64_t a1)
{
  v2 = sub_1001D7F94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6A80(uint64_t a1)
{
  v2 = sub_1001D7F94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D6ABC(uint64_t a1)
{
  v2 = sub_1001D7F40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D6AF8(uint64_t a1)
{
  v2 = sub_1001D7F40();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001D6B34@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001D70CC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1001D6BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1001D6BFC(v5, v7) & 1;
}

uint64_t sub_1001D6BFC(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        if (a2[2] != 4)
        {
          return 0;
        }
      }

      else if (a2[2] != 5)
      {
        return 0;
      }

      return 1;
    }

    if (v6 == 6)
    {
      return a2[2] == 6;
    }

    if (v6 == 7)
    {
      return a2[2] == 7;
    }

LABEL_26:
    v12 = a2[2];
    if (v12 < 8 || v5 != *a2)
    {
      return 0;
    }

    v13 = a2[3];
    v14 = a2[4];
    v16 = a2[5];
    v15 = a2[6];
    if ((v4 != a2[1] || v6 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if ((v7 != v13 || v9 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v10)
    {
      return v15 && (v8 == v16 && v10 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v15;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (a2[2] != 2)
      {
        return 0;
      }
    }

    else if (a2[2] != 3)
    {
      return 0;
    }

    return 1;
  }

  if (!v6)
  {
    return !a2[2];
  }

  if (v6 != 1)
  {
    goto LABEL_26;
  }

  return a2[2] == 1;
}

uint64_t sub_1001D6DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69617641746F6ELL && a2 == 0xEC000000656C6261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F726E45746F6ELL && a2 == 0xEB0000000064656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572696150746F6ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F636552746F6ELL && a2 == 0xED000064657A696ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F736552746F6ELL && a2 == 0xEB00000000646576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636F6C6E55746F6ELL && a2 == 0xEB0000000064656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7373657270707573 && a2 == 0xEA00000000006465)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1001D70CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v94 = a2;
  v85 = sub_100035D04(&qword_10034BB30, &qword_10028AAB0);
  v84 = *(v85 - 8);
  v3 = *(v84 + 64);
  __chkstk_darwin(v85);
  v88 = &v66 - v4;
  v83 = sub_100035D04(&qword_10034BB38, &qword_10028AAB8);
  v82 = *(v83 - 8);
  v5 = *(v82 + 64);
  __chkstk_darwin(v83);
  v89 = &v66 - v6;
  v81 = sub_100035D04(&qword_10034BB40, &qword_10028AAC0);
  v80 = *(v81 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v81);
  v93 = &v66 - v8;
  v78 = sub_100035D04(&qword_10034BB48, &qword_10028AAC8);
  v79 = *(v78 - 8);
  v9 = *(v79 + 64);
  __chkstk_darwin(v78);
  v92 = &v66 - v10;
  v91 = sub_100035D04(&qword_10034BB50, &qword_10028AAD0);
  v77 = *(v91 - 8);
  v11 = *(v77 + 64);
  __chkstk_darwin(v91);
  v90 = &v66 - v12;
  v76 = sub_100035D04(&qword_10034BB58, &qword_10028AAD8);
  v75 = *(v76 - 8);
  v13 = *(v75 + 64);
  __chkstk_darwin(v76);
  v87 = &v66 - v14;
  v74 = sub_100035D04(&qword_10034BB60, &qword_10028AAE0);
  v73 = *(v74 - 8);
  v15 = *(v73 + 64);
  __chkstk_darwin(v74);
  v86 = &v66 - v16;
  v72 = sub_100035D04(&qword_10034BB68, &qword_10028AAE8);
  v71 = *(v72 - 8);
  v17 = *(v71 + 64);
  __chkstk_darwin(v72);
  v19 = &v66 - v18;
  v20 = sub_100035D04(&qword_10034BB70, &qword_10028AAF0);
  v70 = *(v20 - 8);
  v21 = *(v70 + 64);
  __chkstk_darwin(v20);
  v23 = &v66 - v22;
  v24 = sub_100035D04(&qword_10034BB78, &unk_10028AAF8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v66 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v95 = a1;
  sub_10000EBC0(a1, v29);
  sub_1001D7EEC();
  v31 = v107;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v32 = v31;
  if (v31)
  {
    return sub_10000903C(v95);
  }

  v68 = v23;
  v69 = v19;
  v67 = v20;
  v33 = v90;
  v34 = v91;
  v36 = v92;
  v35 = v93;
  v107 = v25;
  v37 = v94;
  v38 = KeyedDecodingContainer.allKeys.getter();
  v39 = (2 * *(v38 + 16)) | 1;
  v103 = v38;
  v104 = v38 + 32;
  v105 = 0;
  v106 = v39;
  v40 = sub_10021801C();
  if (v40 == 9 || v105 != v106 >> 1)
  {
    v49 = type metadata accessor for DecodingError();
    swift_allocError();
    v51 = v50;
    v52 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v51 = &type metadata for HandoffNotPermittedReason;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v51, enum case for DecodingError.typeMismatch(_:), v49);
    swift_willThrow();
    (*(v107 + 8))(v28, v24);
    swift_unknownObjectRelease();
    return sub_10000903C(v95);
  }

  if (v40 <= 3u)
  {
    if (v40 > 1u)
    {
      if (v40 == 2)
      {
        LOBYTE(v96) = 2;
        sub_1001D8138();
        v56 = v86;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v57 = v107;
        v70 = 0;
        (*(v73 + 8))(v56, v74);
        (*(v57 + 8))(v28, v24);
        swift_unknownObjectRelease();
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 1;
      }

      else
      {
        LOBYTE(v96) = 3;
        sub_1001D80E4();
        v62 = v87;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v63 = v107;
        v70 = 0;
        (*(v75 + 8))(v62, v76);
        (*(v63 + 8))(v28, v24);
        swift_unknownObjectRelease();
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 2;
      }
    }

    else if (v40)
    {
      LOBYTE(v96) = 1;
      sub_1001D818C();
      v61 = v69;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v70 = 0;
      (*(v71 + 8))(v61, v72);
      (*(v107 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v48 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
    }

    else
    {
      LOBYTE(v96) = 0;
      sub_1001D81E0();
      v54 = v68;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10010B758();
      v55 = v67;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v70 + 8))(v54, v55);
      (*(v107 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v70 = 0;
      v43 = v96;
      v44 = v97;
      v48 = v98;
      v45 = v99;
      v32 = v100;
      v46 = v101;
      v47 = v102;
    }
  }

  else if (v40 <= 5u)
  {
    if (v40 == 4)
    {
      LOBYTE(v96) = 4;
      sub_1001D8090();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = v107;
      v70 = 0;
      (*(v77 + 8))(v33, v34);
      (*(v58 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 3;
    }

    else
    {
      LOBYTE(v96) = 5;
      sub_1001D803C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v65 = v107;
      v70 = 0;
      (*(v79 + 8))(v36, v78);
      (*(v65 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 4;
    }
  }

  else if (v40 == 6)
  {
    LOBYTE(v96) = 6;
    sub_1001D7FE8();
    v59 = v35;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v60 = v107;
    v70 = 0;
    (*(v80 + 8))(v59, v81);
    (*(v60 + 8))(v28, v24);
    swift_unknownObjectRelease();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 5;
  }

  else
  {
    v41 = v107;
    if (v40 == 7)
    {
      LOBYTE(v96) = 7;
      sub_1001D7F94();
      v42 = v89;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v70 = 0;
      (*(v82 + 8))(v42, v83);
      (*(v41 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 6;
    }

    else
    {
      LOBYTE(v96) = 8;
      sub_1001D7F40();
      v64 = v88;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v70 = 0;
      (*(v84 + 8))(v64, v85);
      (*(v41 + 8))(v28, v24);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 7;
    }
  }

  result = sub_10000903C(v95);
  *v37 = v43;
  v37[1] = v44;
  v37[2] = v48;
  v37[3] = v45;
  v37[4] = v32;
  v37[5] = v46;
  v37[6] = v47;
  return result;
}

unint64_t sub_1001D7EEC()
{
  result = qword_10034BB80;
  if (!qword_10034BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB80);
  }

  return result;
}

unint64_t sub_1001D7F40()
{
  result = qword_10034BB88;
  if (!qword_10034BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB88);
  }

  return result;
}

unint64_t sub_1001D7F94()
{
  result = qword_10034BB90;
  if (!qword_10034BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB90);
  }

  return result;
}

unint64_t sub_1001D7FE8()
{
  result = qword_10034BB98;
  if (!qword_10034BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BB98);
  }

  return result;
}

unint64_t sub_1001D803C()
{
  result = qword_10034BBA0;
  if (!qword_10034BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBA0);
  }

  return result;
}

unint64_t sub_1001D8090()
{
  result = qword_10034BBA8;
  if (!qword_10034BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBA8);
  }

  return result;
}

unint64_t sub_1001D80E4()
{
  result = qword_10034BBB0;
  if (!qword_10034BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBB0);
  }

  return result;
}

unint64_t sub_1001D8138()
{
  result = qword_10034BBB8;
  if (!qword_10034BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBB8);
  }

  return result;
}

unint64_t sub_1001D818C()
{
  result = qword_10034BBC0;
  if (!qword_10034BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBC0);
  }

  return result;
}

unint64_t sub_1001D81E0()
{
  result = qword_10034BBC8;
  if (!qword_10034BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BBC8);
  }

  return result;
}

unint64_t sub_1001D82D8()
{
  result = qword_10034BC20;
  if (!qword_10034BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC20);
  }

  return result;
}

unint64_t sub_1001D8330()
{
  result = qword_10034BC28;
  if (!qword_10034BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC28);
  }

  return result;
}

unint64_t sub_1001D8388()
{
  result = qword_10034BC30;
  if (!qword_10034BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC30);
  }

  return result;
}

unint64_t sub_1001D83E0()
{
  result = qword_10034BC38;
  if (!qword_10034BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC38);
  }

  return result;
}

unint64_t sub_1001D8438()
{
  result = qword_10034BC40;
  if (!qword_10034BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC40);
  }

  return result;
}

unint64_t sub_1001D8490()
{
  result = qword_10034BC48;
  if (!qword_10034BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC48);
  }

  return result;
}

unint64_t sub_1001D84E8()
{
  result = qword_10034BC50;
  if (!qword_10034BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC50);
  }

  return result;
}

unint64_t sub_1001D8540()
{
  result = qword_10034BC58;
  if (!qword_10034BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC58);
  }

  return result;
}

unint64_t sub_1001D8598()
{
  result = qword_10034BC60;
  if (!qword_10034BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC60);
  }

  return result;
}

unint64_t sub_1001D85F0()
{
  result = qword_10034BC68;
  if (!qword_10034BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC68);
  }

  return result;
}

unint64_t sub_1001D8648()
{
  result = qword_10034BC70;
  if (!qword_10034BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC70);
  }

  return result;
}

unint64_t sub_1001D86A0()
{
  result = qword_10034BC78;
  if (!qword_10034BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC78);
  }

  return result;
}

unint64_t sub_1001D86F8()
{
  result = qword_10034BC80;
  if (!qword_10034BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC80);
  }

  return result;
}

unint64_t sub_1001D8750()
{
  result = qword_10034BC88;
  if (!qword_10034BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC88);
  }

  return result;
}

unint64_t sub_1001D87A8()
{
  result = qword_10034BC90;
  if (!qword_10034BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC90);
  }

  return result;
}

unint64_t sub_1001D8800()
{
  result = qword_10034BC98;
  if (!qword_10034BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BC98);
  }

  return result;
}

unint64_t sub_1001D8858()
{
  result = qword_10034BCA0;
  if (!qword_10034BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCA0);
  }

  return result;
}

unint64_t sub_1001D88B0()
{
  result = qword_10034BCA8;
  if (!qword_10034BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCA8);
  }

  return result;
}

unint64_t sub_1001D8908()
{
  result = qword_10034BCB0;
  if (!qword_10034BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCB0);
  }

  return result;
}

unint64_t sub_1001D8960()
{
  result = qword_10034BCB8;
  if (!qword_10034BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCB8);
  }

  return result;
}

unint64_t sub_1001D89B8()
{
  result = qword_10034BCC0;
  if (!qword_10034BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCC0);
  }

  return result;
}

unint64_t sub_1001D8A10()
{
  result = qword_10034BCC8;
  if (!qword_10034BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BCC8);
  }

  return result;
}

uint64_t sub_1001D8A64()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034BCD0);
  sub_100003078(v0, qword_10034BCD0);
  return Logger.init(subsystem:category:)();
}

void sub_1001D8AE4()
{
  v1 = v0;
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BCD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_published;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_published) & 1) == 0)
  {
    sub_1001DAFAC(v13);
    sub_10011727C();
    sub_1001DC378(v13);
    *(v0 + v7) = 1;
    v11 = *(v0 + 16);
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Attempted double-publish", v10, 2u);
  }

  v11 = *(v1 + 16);
  if (v11)
  {
LABEL_11:
    v12 = *(v1 + 24);

    v11(v1);
    sub_10002689C(v11);
  }
}

uint64_t sub_1001D8D14()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_10034BCD0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[0] = v8;
    v17 = v3;
    v18 = v1;
    v19 = v7;
    v20 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100017494(0xD000000000000015, 0x80000001002A49D0, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_10000903C(v20);
    v7 = v19;
    v1 = v18;
    v3 = v17;
    v8 = v23[0];
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1001DC430;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100311540;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23[1] = _swiftEmptyArrayStorage;
  sub_1001DC434(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

void sub_1001D90FC()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_10034BCD0);

  v31 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v18))
  {
    v28 = v9;
    v29 = v7;
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v19 = 136315394;
    *(v19 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A49B0, &v32);
    *(v19 + 12) = 2080;
    v20 = v2;
    v21 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v1 + v21, v16, &qword_100342A10, &qword_100278A10);
    sub_100009848(v16, v14, &qword_100342A10, &qword_100278A10);
    if ((*(v3 + 48))(v14, 1, v20) == 1)
    {
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v25 = v28;
      sub_1001DC3CC(v14, v28);
      sub_10007E658(v25, v29);
      v23 = String.init<A>(describing:)();
      v22 = v26;
      sub_10007E6BC(v25);
    }

    sub_1000097E8(v16, &qword_100342A10, &qword_100278A10);
    v27 = sub_100017494(v23, v22, &v32);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v31, v18, "%s: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v31;
  }
}

uint64_t sub_1001D94C4()
{
  v1 = sub_100035D04(&qword_100345620, &unk_10027C940);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ExperienceEvent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v0 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed);
  swift_beginAccess();
  v15 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) || !v14[1])
  {
    v16 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v0 + v16, v8, &qword_100342A10, &qword_100278A10);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000097E8(v8, &qword_100342A10, &qword_100278A10);
      v17 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_sessionEnded;
      swift_beginAccess();
      sub_100009848(v0 + v17, v4, &qword_100345620, &unk_10027C940);
      v18 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
      v19 = (*(*(v18 - 8) + 48))(v4, 1, v18);
      sub_1000097E8(v4, &qword_100345620, &unk_10027C940);
      if (v19 == 1)
      {
        return 0;
      }

      else
      {
        return 0x206E6F6973736553;
      }
    }

    else
    {
      v21 = sub_1001DC3CC(v8, v13);
      v20 = sub_100243F84(v21);
      sub_10007E6BC(v13);
    }
  }

  else
  {
    v20 = *v14;
    v22 = v14[1];
  }

  return v20;
}

uint64_t sub_1001D9800()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed;
  swift_beginAccess();
  v2 = sub_100035D04(&unk_100345508, &qword_10027C860);
  if ((*(*(v2 - 8) + 48))(v0 + v1, 1, v2))
  {
    v3 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
    swift_beginAccess();
    v4 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    if ((*(*(v4 - 8) + 48))(v0 + v3, 1, v4) || !*(v0 + v3))
    {
      return 0;
    }
  }

  else
  {
    v6 = *(v0 + v1);
  }

  swift_errorRetain();
  swift_getErrorValue();
  v7 = sub_100140158(v9);
  [v7 code];

  v8 = dispatch thunk of CustomStringConvertible.description.getter();

  return v8;
}

uint64_t sub_1001D9988()
{
  v1 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  __chkstk_darwin(v1);
  v4 = &v40 - v3;
  v5 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v40 - v10;
  v11 = type metadata accessor for Date();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v23 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded;
  swift_beginAccess();
  if ((*(v19 + 48))(v0 + v23, 1, v18))
  {
    return 0;
  }

  v40 = v15;
  v25 = v9;
  sub_100009848(v0 + v23, v22, &qword_1003454F8, &unk_10028B580);
  v26 = v45;
  v27 = *(v44 + 32);
  v27(v17, v22, v45);
  v28 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardRequested;
  swift_beginAccess();
  v29 = 1;
  v30 = (*(v42 + 48))(v0 + v28, 1, v43);
  v31 = v41;
  if (!v30)
  {
    sub_100009848(v0 + v28, v4, &qword_10034BD38, &qword_10028B418);
    v27(v31, v4, v26);
    v29 = 0;
  }

  v32 = v44;
  (*(v44 + 56))(v31, v29, 1, v26);
  sub_100009848(v31, v25, &qword_10033C280, &qword_100272A80);
  v33 = (*(v32 + 48))(v25, 1, v26);
  v34 = v32;
  if (v33 == 1)
  {
    sub_1000097E8(v31, &qword_10033C280, &qword_100272A80);
    (*(v32 + 8))(v17, v45);
    sub_1000097E8(v25, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v35 = v40;
    v36 = v45;
    v27(v40, v25, v45);
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = *(v34 + 8);
    v39(v35, v36);
    sub_1000097E8(v31, &qword_10033C280, &qword_100272A80);
    v39(v17, v36);
    return v38;
  }
}

uint64_t sub_1001D9E24()
{
  v1 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  __chkstk_darwin(v1);
  v4 = &v40 - v3;
  v5 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v40 - v10;
  v11 = type metadata accessor for Date();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v23 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting;
  swift_beginAccess();
  if ((*(v19 + 48))(v0 + v23, 1, v18))
  {
    return 0;
  }

  v40 = v15;
  v25 = v9;
  sub_100009848(v0 + v23, v22, &qword_10034BD38, &qword_10028B418);
  v26 = v45;
  v27 = *(v44 + 32);
  v27(v17, v22, v45);
  v28 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded;
  swift_beginAccess();
  v29 = 1;
  v30 = (*(v42 + 48))(v0 + v28, 1, v43);
  v31 = v41;
  if (!v30)
  {
    sub_100009848(v0 + v28, v4, &qword_1003454F8, &unk_10028B580);
    v27(v31, v4, v26);
    v29 = 0;
  }

  v32 = v44;
  (*(v44 + 56))(v31, v29, 1, v26);
  sub_100009848(v31, v25, &qword_10033C280, &qword_100272A80);
  v33 = (*(v32 + 48))(v25, 1, v26);
  v34 = v32;
  if (v33 == 1)
  {
    sub_1000097E8(v31, &qword_10033C280, &qword_100272A80);
    (*(v32 + 8))(v17, v45);
    sub_1000097E8(v25, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v35 = v40;
    v36 = v45;
    v27(v40, v25, v45);
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = *(v34 + 8);
    v39(v35, v36);
    sub_1000097E8(v31, &qword_10033C280, &qword_100272A80);
    v39(v17, v36);
    return v38;
  }
}

uint64_t sub_1001DA2C0()
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = &v40 - v5;
  v47 = type metadata accessor for Date();
  v45 = *(v47 - 8);
  v6 = *(v45 + 64);
  v7 = __chkstk_darwin(v47);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertActivated;
  swift_beginAccess();
  v21 = *(v13 + 48);
  if (v21(v0 + v20, 1, v12))
  {
    return 0;
  }

  v40 = v17;
  v42 = v9;
  sub_100009848(v0 + v20, v19, &qword_1003454F8, &unk_10028B580);
  v23 = v45;
  v24 = *(v45 + 32);
  v43 = v11;
  v25 = v47;
  v41 = v24;
  v24(v11, v19, v47);
  v26 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertRequested;
  swift_beginAccess();
  v27 = 1;
  v28 = v21(v0 + v26, 1, v12);
  v29 = v46;
  if (!v28)
  {
    v30 = v0 + v26;
    v31 = v40;
    sub_100009848(v30, v40, &qword_1003454F8, &unk_10028B580);
    v41(v29, v31, v25);
    v27 = 0;
  }

  (*(v23 + 56))(v29, v27, 1, v25);
  v32 = v44;
  sub_100009848(v29, v44, &qword_10033C280, &qword_100272A80);
  v33 = (*(v23 + 48))(v32, 1, v25);
  v34 = v42;
  if (v33 == 1)
  {
    sub_1000097E8(v29, &qword_10033C280, &qword_100272A80);
    (*(v23 + 8))(v43, v25);
    sub_1000097E8(v32, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v41(v42, v32, v25);
    v35 = v25;
    v36 = v43;
    Date.timeIntervalSince(_:)();
    v38 = v37;
    v39 = *(v23 + 8);
    v39(v34, v35);
    sub_1000097E8(v29, &qword_10033C280, &qword_100272A80);
    v39(v36, v35);
    return v38;
  }
}

uint64_t sub_1001DA728()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v41 - v6;
  v46 = type metadata accessor for Date();
  v48 = *(v46 - 8);
  v7 = *(v48 + 64);
  v8 = __chkstk_darwin(v46);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  v21 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcConnected;
  v22 = *(v14 + 48);
  v47 = v1;
  if (v22(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcConnected, 1, v13))
  {
    return 0;
  }

  v42 = v10;
  v24 = v47;
  sub_100009848(v47 + v21, v20, &qword_1003454F8, &unk_10028B580);
  v25 = *(v48 + 32);
  v43 = v12;
  v26 = v12;
  v27 = v25;
  v28 = v46;
  v25(v26, v20, v46);
  v29 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcRequested;
  v30 = 1;
  v31 = v22(v24 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcRequested, 1, v13);
  v32 = v44;
  if (!v31)
  {
    sub_100009848(v47 + v29, v18, &qword_1003454F8, &unk_10028B580);
    v27(v32, v18, v28);
    v30 = 0;
  }

  v33 = v48;
  (*(v48 + 56))(v32, v30, 1, v28);
  v34 = v45;
  sub_100009848(v32, v45, &qword_10033C280, &qword_100272A80);
  v35 = (*(v33 + 48))(v34, 1, v28);
  v36 = v42;
  if (v35 == 1)
  {
    sub_1000097E8(v32, &qword_10033C280, &qword_100272A80);
    (*(v33 + 8))(v43, v28);
    sub_1000097E8(v34, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v27(v42, v34, v28);
    v37 = v43;
    Date.timeIntervalSince(_:)();
    v39 = v38;
    v40 = *(v33 + 8);
    v40(v36, v28);
    sub_1000097E8(v32, &qword_10033C280, &qword_100272A80);
    v40(v37, v28);
    return v39;
  }
}

uint64_t sub_1001DAB60()
{
  v1 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v5 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Date();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v35 = v0;
  v19 = v0 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed;
  swift_beginAccess();
  v20 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    return 0;
  }

  v32 = v16;
  v22 = v36;
  (*(v36 + 16))(v18, v19 + *(v20 + 28), v12);
  v23 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting;
  v24 = v35;
  swift_beginAccess();
  v25 = 1;
  if (!(*(v33 + 48))(v24 + v23, 1, v34))
  {
    sub_100009848(v24 + v23, v4, &qword_10034BD38, &qword_10028B418);
    (*(v22 + 32))(v11, v4, v12);
    v25 = 0;
  }

  (*(v22 + 56))(v11, v25, 1, v12);
  sub_100009848(v11, v9, &qword_10033C280, &qword_100272A80);
  v26 = (*(v22 + 48))(v9, 1, v12);
  v27 = v32;
  if (v26 == 1)
  {
    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    (*(v22 + 8))(v18, v12);
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    (*(v22 + 32))(v32, v9, v12);
    Date.timeIntervalSince(_:)();
    v29 = v28;
    v30 = *(v22 + 8);
    v30(v27, v12);
    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    v30(v18, v12);
    return v29;
  }
}

void sub_1001DAFAC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100035D04(&qword_10034BE70, &unk_10028B4C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v116 = &v102 - v7;
  v8 = sub_100035D04(&qword_100345618, &qword_10027C938);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v127 = &v102 - v10;
  v11 = sub_100035D04(&qword_10034BD38, &qword_10028B418);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v102 - v14;
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_10034BCD0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v135 = v15;
    v150[0] = v134;
    *v19 = 136315394;
    *(v19 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v150);
    *(v19 + 12) = 2080;
    v136[3] = v4;
    v136[0] = v2;

    v20 = sub_100057F14(v136);
    v21 = v12;
    v22 = v11;
    v24 = v23;
    sub_10000903C(v136);
    v25 = sub_100017494(v20, v24, v150);
    v11 = v22;
    v12 = v21;

    *(v19 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: self=%s", v19, 0x16u);
    swift_arrayDestroy();
    v15 = v135;
  }

  v26 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting;
  swift_beginAccess();
  v27 = (*(v12 + 48))(v2 + v26, 1, v11);
  v28 = 0.0;
  if (!v27)
  {
    sub_100009848(v2 + v26, v15, &qword_10034BD38, &qword_10028B418);
    v29 = *(sub_100035D04(&qword_10034BE78, &unk_10028B4D0) + 28);
    Date.timeIntervalSince(_:)();
    v28 = v30;
    v31 = type metadata accessor for Date();
    (*(*(v31 - 8) + 8))(v15, v31);
  }

  v32 = sub_1001D9988();
  v34 = v33;
  v35 = sub_1001D9E24();
  LODWORD(v135) = v36;
  v37 = sub_1001DA2C0();
  LODWORD(v134) = v38;
  v128 = v34;
  if (v34)
  {
    v39 = _swiftEmptyArrayStorage;
    if (v135)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = sub_1000AFCBC(0, 1, 1, _swiftEmptyArrayStorage);
    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = sub_1000AFCBC((v40 > 1), v41 + 1, 1, v39);
    }

    *(v39 + 2) = v41 + 1;
    *&v39[8 * v41 + 32] = v32;
    if (v135)
    {
LABEL_9:
      if (v134)
      {
        goto LABEL_10;
      }

LABEL_20:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1000AFCBC(0, *(v39 + 2) + 1, 1, v39);
      }

      v45 = *(v39 + 2);
      v44 = *(v39 + 3);
      if (v45 >= v44 >> 1)
      {
        v39 = sub_1000AFCBC((v44 > 1), v45 + 1, 1, v39);
      }

      *(v39 + 2) = v45 + 1;
      *&v39[8 * v45 + 32] = v37;
      if (v45 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_1000AFCBC(0, *(v39 + 2) + 1, 1, v39);
  }

  v43 = *(v39 + 2);
  v42 = *(v39 + 3);
  if (v43 >= v42 >> 1)
  {
    v39 = sub_1000AFCBC((v42 > 1), v43 + 1, 1, v39);
  }

  *(v39 + 2) = v43 + 1;
  *&v39[8 * v43 + 32] = v35;
  if ((v134 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (*(v39 + 2) != 3)
  {
    goto LABEL_26;
  }

LABEL_25:
  if (v27)
  {
LABEL_26:

    v126 = 1;
    v46 = 0.0;
    goto LABEL_27;
  }

  v101 = *(v39 + 4) + 0.0 + *(v39 + 5) + *(v39 + 6);

  v126 = 0;
  v46 = v28 - v101;
LABEL_27:
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014B688();
  v47 = sub_10014C668(1);
  v124 = 0;
  v125 = v47;

  sub_10014B688();
  v48 = sub_10014C668(28);
  v120 = 0;
  v123 = v48;

  v121 = *(v2 + 32);
  sub_10014B688();
  v49 = sub_10014C668(7);
  v131 = v35;
  v132 = v32;
  v130 = v37;
  LODWORD(v129) = v27;
  v117 = 0;
  v122 = v49;

  v50 = sub_1001D94C4();
  v118 = v51;
  v119 = v50;
  v52 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed;
  swift_beginAccess();
  v53 = v127;
  sub_100009848(v2 + v52, v127, &qword_100345618, &qword_10027C938);
  v54 = sub_100035D04(&unk_100345508, &qword_10027C860);
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  v133 = 1;
  v57 = v56;
  v113 = v55 + 48;
  v58 = v56(v53, 1, v54);
  sub_1000097E8(v53, &qword_100345618, &qword_10027C938);
  if (v58 == 1)
  {
    v59 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
    swift_beginAccess();
    v60 = v2 + v59;
    v61 = v116;
    sub_100009848(v60, v116, &qword_10034BE70, &unk_10028B4C0);
    v62 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    v133 = (*(*(v62 - 8) + 48))(v61, 1, v62) != 1;
    sub_1000097E8(v61, &qword_10034BE70, &unk_10028B4C0);
  }

  v127 = sub_1001D9800();
  v116 = v63;
  if (v57(v2 + v52, 1, v54))
  {
    v64 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
    swift_beginAccess();
    v65 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    if ((*(*(v65 - 8) + 48))(v2 + v64, 1, v65) || !*(v2 + v64))
    {
      v114 = 0;
      v115 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v66 = *(v2 + v52);
  }

  swift_errorRetain();
  swift_getErrorValue();
  v67 = sub_100140158(v136[5]);

  v68 = [v67 domain];

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v70;
  v115 = v69;

LABEL_37:
  if (v57(v2 + v52, 1, v54))
  {
    v71 = OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed;
    swift_beginAccess();
    v72 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    v73 = &OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand;
    if ((*(*(v72 - 8) + 48))(v2 + v71, 1, v72) || !*(v2 + v71))
    {
      v112 = 0;
      v113 = 0;
      goto LABEL_44;
    }

    v75 = *(v2 + v71);
    swift_errorRetain();
  }

  else
  {
    v74 = *(v2 + v52);
    swift_errorRetain();
    v73 = &OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand;
  }

  swift_getErrorValue();
  v76 = Error.localizedDescription.getter();
  v112 = v77;
  v113 = v76;

LABEL_44:
  v109 = *(v2 + 56);
  v78 = *(v2 + 48);
  v108 = *(v2 + 40);

  v111 = sub_1001DA728();
  v104 = v79;
  v110 = sub_1001DAB60();
  v103 = v80;
  v81 = v2 + v73[158];
  v82 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  v83 = v81 + *(v82 + 32);
  v107 = *v83;
  v84 = *(v83 + 4);
  v85 = sub_100243F84(v82);
  v105 = v86;
  v106 = v85;
  if (qword_100338F10 != -1)
  {
    swift_once();
  }

  v87 = v117 != 0;
  v88 = v120 != 0;
  v89 = v124 != 0;
  v90 = v129 != 0;
  v91 = *(qword_10038B0B0 + 80);
  v129 = sub_10005FFC0();
  v93 = v92;

  v146 = v87;
  v144 = v126;
  v141 = v90;
  v138 = v84;
  *a1 = v125;
  *(a1 + 16) = v123;
  *(a1 + 32) = v121;
  v149 = v89;
  v148 = v88;
  v147 = 0;
  v145 = v128 & 1;
  v143 = v135 & 1;
  v142 = v134 & 1;
  v140 = v104 & 1;
  v139 = v103 & 1;
  v137 = v93 & 1;
  *(a1 + 8) = v89;
  *(a1 + 24) = v88;
  *(a1 + 40) = 0;
  *(a1 + 48) = v122;
  *(a1 + 56) = v146;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v94 = v118;
  *(a1 + 80) = v119;
  *(a1 + 88) = v94;
  *(a1 + 96) = v133;
  v96 = v115;
  v95 = v116;
  *(a1 + 104) = v127;
  *(a1 + 112) = v95;
  v98 = v113;
  v97 = v114;
  *(a1 + 120) = v96;
  *(a1 + 128) = v97;
  v99 = v112;
  *(a1 + 136) = v98;
  *(a1 + 144) = v99;
  *(a1 + 152) = v109;
  *(a1 + 160) = v108;
  *(a1 + 168) = v78;
  *(a1 + 176) = v132;
  *(a1 + 184) = v145;
  *(a1 + 192) = v46;
  *(a1 + 200) = v144;
  *(a1 + 208) = v131;
  *(a1 + 216) = v143;
  *(a1 + 224) = v130;
  *(a1 + 232) = v142;
  *(a1 + 240) = v28;
  *(a1 + 248) = v141;
  *(a1 + 256) = v111;
  *(a1 + 264) = v140;
  *(a1 + 272) = v110;
  *(a1 + 280) = v139;
  *(a1 + 284) = v107;
  *(a1 + 288) = v138;
  v100 = v105;
  *(a1 + 296) = v106;
  *(a1 + 304) = v100;
  *(a1 + 312) = v129;
  *(a1 + 320) = v137;
}

uint64_t *sub_1001DBC40()
{
  v1 = v0;
  if (qword_100339188 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BCD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[3];
  sub_10002689C(v1[2]);
  v7 = v1[6];

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_presentEffect, &qword_10034BE78, &unk_10028B4D0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertRequested, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertActivated, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_remoteAlertFailed, &qword_100345618, &qword_10027C938);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardRequested, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardLoaded, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardPresenting, &qword_10034BE80, &unk_10028B4E0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_cardFailed, &qword_10034BE70, &unk_10028B4C0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcRequested, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_xpcConnected, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissed, &qword_10034BE88, &unk_10028B620);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_sessionEnded, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold22CardPresentationRecord_dismissEffectTrigger, &qword_100342A10, &qword_100278A10);
  return v1;
}

uint64_t sub_1001DBEB8()
{
  sub_1001DBC40();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardPresentationRecord()
{
  result = qword_10034BD18;
  if (!qword_10034BD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001DBF64()
{
  sub_1001DC23C(319, &qword_10034BD28, type metadata accessor for StateUpdateWithDistance);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_10011CC54(319, &qword_100345500, &unk_100345508, &qword_10027C860);
      if (v6 <= 0x3F)
      {
        v16 = *(v5 - 8) + 64;
        sub_10011CC54(319, &qword_10034BD30, &qword_10034BD38, &qword_10028B418);
        if (v8 <= 0x3F)
        {
          v17 = *(v7 - 8) + 64;
          sub_10011CC54(319, &qword_10034BD40, &qword_10034BD48, &unk_10028B420);
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            sub_10011CC54(319, &qword_10034BD50, &qword_10034BD58, &unk_1002960A0);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              sub_1001DC23C(319, &unk_10034BD60, &type metadata accessor for Optional);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001DC23C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ExperienceEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1001DC29C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001DC2C8(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100057F14(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_1001DC320(uint64_t a1)
{
  result = sub_1001DC434(&qword_10034BE68, type metadata accessor for CardPresentationRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001DC3CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExperienceEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DC434(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DC47C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034BE90);
  sub_100003078(v0, qword_10034BE90);
  return Logger.init(subsystem:category:)();
}

void sub_1001DC4FC()
{
  v1 = v0;
  if (qword_100339190 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BE90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_published;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_published) & 1) == 0)
  {
    sub_1001DD9B8(v13);
    sub_1001176EC();
    sub_1001DE8F4(v13);
    *(v0 + v7) = 1;
    v11 = *(v0 + 16);
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Attempted double-publish", v10, 2u);
  }

  v11 = *(v1 + 16);
  if (v11)
  {
LABEL_11:
    v12 = *(v1 + 24);

    v11(v1);
    sub_10002689C(v11);
  }
}

void sub_1001DC72C()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  if (qword_100339190 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_10034BE90);

  v31 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v18))
  {
    v28 = v9;
    v29 = v7;
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v19 = 136315394;
    *(v19 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A49B0, &v32);
    *(v19 + 12) = 2080;
    v20 = v2;
    v21 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v1 + v21, v16, &qword_100342A10, &qword_100278A10);
    sub_100009848(v16, v14, &qword_100342A10, &qword_100278A10);
    if ((*(v3 + 48))(v14, 1, v20) == 1)
    {
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v25 = v28;
      sub_1001DC3CC(v14, v28);
      sub_10007E658(v25, v29);
      v23 = String.init<A>(describing:)();
      v22 = v26;
      sub_10007E6BC(v25);
    }

    sub_1000097E8(v16, &qword_100342A10, &qword_100278A10);
    v27 = sub_100017494(v23, v22, &v32);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v31, v18, "%s: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v31;
  }
}

uint64_t sub_1001DCAF4()
{
  v1 = sub_100035D04(&qword_100345620, &unk_10027C940);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v23[-v3];
  v5 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23[-v7];
  v9 = type metadata accessor for ExperienceEvent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed);
  swift_beginAccess();
  v15 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) || !v14[1])
  {
    v16 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger;
    swift_beginAccess();
    sub_100009848(v0 + v16, v8, &qword_100342A10, &qword_100278A10);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000097E8(v8, &qword_100342A10, &qword_100278A10);
      sub_100009848(v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_sessionEnded, v4, &qword_100345620, &unk_10027C940);
      v17 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
      v18 = (*(*(v17 - 8) + 48))(v4, 1, v17);
      sub_1000097E8(v4, &qword_100345620, &unk_10027C940);
      if (v18 == 1)
      {
        return 0;
      }

      else
      {
        return 0x206E6F6973736553;
      }
    }

    else
    {
      v20 = sub_1001DC3CC(v8, v13);
      v19 = sub_100243F84(v20);
      sub_10007E6BC(v13);
    }
  }

  else
  {
    v19 = *v14;
    v21 = v14[1];
  }

  return v19;
}

uint64_t sub_1001DCE1C()
{
  v1 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v64 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v63 = &v56 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - v8;
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v65 = type metadata accessor for Date();
  v12 = *(v65 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v65);
  v60 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v62 = &v56 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v56 - v19;
  __chkstk_darwin(v18);
  v22 = &v56 - v21;
  v23 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v61 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v56 - v28;
  v30 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented;
  swift_beginAccess();
  v66 = *(v24 + 48);
  if (!v66(v0 + v30, 1, v23))
  {
    v57 = v20;
    v59 = v9;
    sub_100009848(v0 + v30, v29, &qword_1003454F8, &unk_10028B580);
    v31 = v65;
    v58 = *(v12 + 32);
    v58(v22, v29, v65);
    v32 = v12;
    v33 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
    swift_beginAccess();
    v34 = 1;
    if (!v66(v0 + v33, 1, v23))
    {
      v35 = v61;
      sub_100009848(v0 + v33, v61, &qword_1003454F8, &unk_10028B580);
      v58(v11, v35, v31);
      v34 = 0;
    }

    (*(v32 + 56))(v11, v34, 1, v31);
    v36 = v59;
    sub_100009848(v11, v59, &qword_10033C280, &qword_100272A80);
    v12 = v32;
    if ((*(v32 + 48))(v36, 1, v31) != 1)
    {
      v49 = v57;
      v58(v57, v36, v31);
      Date.timeIntervalSince(_:)();
      v51 = v50;
      v52 = *(v12 + 8);
      v52(v49, v31);
      sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
      v53 = v22;
      goto LABEL_14;
    }

    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    (*(v32 + 8))(v22, v31);
    sub_1000097E8(v36, &qword_10033C280, &qword_100272A80);
  }

  v37 = v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
  swift_beginAccess();
  v38 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    return 0;
  }

  v40 = v37 + *(v38 + 28);
  v41 = v62;
  v31 = v65;
  (*(v12 + 16))(v62, v40, v65);
  v42 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
  swift_beginAccess();
  v43 = 1;
  v44 = v66(v0 + v42, 1, v23);
  v45 = v63;
  if (!v44)
  {
    v46 = v0 + v42;
    v47 = v61;
    sub_100009848(v46, v61, &qword_1003454F8, &unk_10028B580);
    (*(v12 + 32))(v45, v47, v31);
    v43 = 0;
  }

  (*(v12 + 56))(v45, v43, 1, v31);
  v48 = v64;
  sub_100009848(v45, v64, &qword_10033C280, &qword_100272A80);
  if ((*(v12 + 48))(v48, 1, v31) == 1)
  {
    sub_1000097E8(v45, &qword_10033C280, &qword_100272A80);
    (*(v12 + 8))(v41, v31);
    sub_1000097E8(v48, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  v54 = v60;
  (*(v12 + 32))(v60, v48, v31);
  Date.timeIntervalSince(_:)();
  v51 = v55;
  v52 = *(v12 + 8);
  v52(v54, v31);
  sub_1000097E8(v45, &qword_10033C280, &qword_100272A80);
  v53 = v41;
LABEL_14:
  v52(v53, v31);
  return v51;
}

uint64_t sub_1001DD56C()
{
  v1 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v5 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Date();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v35 = v0;
  v19 = v0 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed;
  swift_beginAccess();
  v20 = sub_100035D04(&qword_10034BD58, &unk_1002960A0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    return 0;
  }

  v32 = v16;
  v22 = v36;
  (*(v36 + 16))(v18, v19 + *(v20 + 28), v12);
  v23 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented;
  v24 = v35;
  swift_beginAccess();
  v25 = 1;
  if (!(*(v33 + 48))(v24 + v23, 1, v34))
  {
    sub_100009848(v24 + v23, v4, &qword_1003454F8, &unk_10028B580);
    (*(v22 + 32))(v11, v4, v12);
    v25 = 0;
  }

  (*(v22 + 56))(v11, v25, 1, v12);
  sub_100009848(v11, v9, &qword_10033C280, &qword_100272A80);
  v26 = (*(v22 + 48))(v9, 1, v12);
  v27 = v32;
  if (v26 == 1)
  {
    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    (*(v22 + 8))(v18, v12);
    sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    (*(v22 + 32))(v32, v9, v12);
    Date.timeIntervalSince(_:)();
    v29 = v28;
    v30 = *(v22 + 8);
    v30(v27, v12);
    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    v30(v18, v12);
    return v29;
  }
}

uint64_t sub_1001DD9B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100035D04(&qword_10034BE70, &unk_10028B4C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v87[-v7];
  v9 = sub_100035D04(&qword_100345618, &qword_10027C938);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v87[-v11];
  v13 = sub_100035D04(&qword_100345620, &unk_10027C940);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v108 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v107 = &v87[-v18];
  __chkstk_darwin(v17);
  v20 = &v87[-v19];
  if (qword_100339190 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003078(v21, qword_10034BE90);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v105 = v23;
    v25 = v24;
    v106 = swift_slowAlloc();
    v112[0] = v106;
    *v25 = 136315394;
    *(v25 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v112);
    *(v25 + 12) = 2080;
    v109[3] = v4;
    v109[0] = v2;

    v26 = sub_100057F8C(v109);
    v27 = v20;
    v28 = v12;
    v29 = v8;
    v31 = v30;
    sub_10000903C(v109);
    v32 = sub_100017494(v26, v31, v112);
    v8 = v29;
    v12 = v28;
    v20 = v27;

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v105, "%s: self=%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  v106 = sub_1001DD56C();
  v105 = v33;
  v34 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented;
  swift_beginAccess();
  sub_100009848(v2 + v34, v20, &qword_100345620, &unk_10027C940);
  v35 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = 1;
  v102 = v35;
  v99 = v36 + 48;
  v100 = v37;
  v98 = (v37)(v20, 1);
  sub_1000097E8(v20, &qword_100345620, &unk_10027C940);
  v39 = sub_1001DCAF4();
  v103 = v40;
  v104 = v39;
  v41 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_remoteAlertFailed;
  swift_beginAccess();
  sub_100009848(v2 + v41, v12, &qword_100345618, &qword_10027C938);
  v42 = sub_100035D04(&unk_100345508, &qword_10027C860);
  LODWORD(v41) = (*(*(v42 - 8) + 48))(v12, 1, v42);
  sub_1000097E8(v12, &qword_100345618, &qword_10027C938);
  if (v41 == 1)
  {
    v43 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed;
    swift_beginAccess();
    sub_100009848(v2 + v43, v8, &qword_10034BE70, &unk_10028B4C0);
    v44 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
    v38 = (*(*(v44 - 8) + 48))(v8, 1, v44) != 1;
    sub_1000097E8(v8, &qword_10034BE70, &unk_10028B4C0);
  }

  v101 = v38;
  v45 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed;
  swift_beginAccess();
  v46 = sub_100035D04(&qword_10034BD48, &unk_10028B420);
  v47 = *(*(v46 - 8) + 48);
  if (v47(v2 + v45, 1, v46) || !*(v2 + v45))
  {
    v96 = 0;
    v97 = 0;
  }

  else
  {
    v48 = *(v2 + v45);
    swift_getErrorValue();
    v49 = v109[5];
    v97 = v109[4];
    swift_errorRetain();
    v50 = sub_100140158(v49);
    v51 = [v50 code];

    v111 = v51;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v96 = v53;
    v97 = v52;
  }

  if (v47(v2 + v45, 1, v46) || !*(v2 + v45))
  {
    v94 = 0;
    v95 = 0;
  }

  else
  {
    v54 = *(v2 + v45);
    swift_getErrorValue();
    v55 = v109[9];
    v95 = v109[8];
    swift_errorRetain();
    v56 = sub_100140158(v55);

    v57 = [v56 domain];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v59;
    v95 = v58;
  }

  if (v47(v2 + v45, 1, v46) || !*(v2 + v45))
  {
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v60 = *(v2 + v45);
    swift_getErrorValue();
    swift_errorRetain();
    v61 = Error.localizedDescription.getter();
    v92 = v62;
    v93 = v61;
  }

  v90 = v98 != 1;
  v98 = *(v2 + 56);
  v91 = sub_1001DCE1C();
  v89 = v63;
  v64 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented;
  swift_beginAccess();
  v65 = v2 + v64;
  v66 = v107;
  sub_100009848(v65, v107, &qword_100345620, &unk_10027C940);
  v67 = v102;
  v68 = v100;
  v88 = (v100)(v66, 1, v102) != 1;
  sub_1000097E8(v66, &qword_100345620, &unk_10027C940);
  v69 = *(v2 + 48);
  v107 = *(v2 + 40);
  v70 = OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_subtitleSwipedBack;
  swift_beginAccess();
  v71 = v108;
  sub_100009848(v2 + v70, v108, &qword_100345620, &unk_10027C940);
  v72 = v68(v71, 1, v67) != 1;
  v73 = v69;

  sub_1000097E8(v71, &qword_100345620, &unk_10027C940);
  v74 = v2 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_presentEffect;
  v75 = sub_100035D04(&qword_10034BE78, &unk_10028B4D0);
  v76 = v74 + *(v75 + 32);
  v77 = *v76;
  v78 = *(v76 + 4);
  result = sub_100243F84(v75);
  v80 = v105 & 1;
  v81 = v89 & 1;
  v110 = v78;
  *a1 = v106;
  *(a1 + 8) = v80;
  *(a1 + 9) = v90;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v82 = v103;
  *(a1 + 32) = v104;
  *(a1 + 40) = v82;
  *(a1 + 48) = v101;
  v83 = v96;
  *(a1 + 56) = v97;
  *(a1 + 64) = v83;
  v84 = v94;
  *(a1 + 72) = v95;
  *(a1 + 80) = v84;
  v85 = v92;
  *(a1 + 88) = v93;
  *(a1 + 96) = v85;
  *(a1 + 104) = v98;
  *(a1 + 112) = v91;
  *(a1 + 120) = v81;
  *(a1 + 121) = v88;
  *(a1 + 128) = v107;
  *(a1 + 136) = v73;
  *(a1 + 144) = v72;
  *(a1 + 148) = v77;
  *(a1 + 152) = v110;
  *(a1 + 160) = result;
  *(a1 + 168) = v86;
  return result;
}

uint64_t *sub_1001DE2F0()
{
  v1 = v0;
  if (qword_100339190 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BE90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[3];
  sub_10002689C(v1[2]);
  v7 = v1[6];

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_presentEffect, &qword_10034BE78, &unk_10028B4D0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_remoteAlertFailed, &qword_100345618, &qword_10027C938);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_cardFailed, &qword_10034BE70, &unk_10028B4C0);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_hintPresented, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_subtitleSwipedBack, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_completedPresented, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissed, &qword_10034BE88, &unk_10028B620);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_sessionEnded, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold27EducationPresentationRecord_dismissEffectTrigger, &qword_100342A10, &qword_100278A10);
  return v1;
}

uint64_t sub_1001DE4F0()
{
  sub_1001DE2F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EducationPresentationRecord()
{
  result = qword_10034BED8;
  if (!qword_10034BED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001DE59C()
{
  sub_1001DC23C(319, &qword_10034BD28, type metadata accessor for StateUpdateWithDistance);
  if (v1 <= 0x3F)
  {
    v13 = *(v0 - 8) + 64;
    sub_10011CC54(319, &qword_100345500, &unk_100345508, &qword_10027C860);
    if (v3 <= 0x3F)
    {
      v14 = *(v2 - 8) + 64;
      sub_10011CC54(319, &qword_10034BD40, &qword_10034BD48, &unk_10028B420);
      if (v5 <= 0x3F)
      {
        v15 = *(v4 - 8) + 64;
        sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_10011CC54(319, &qword_10034BD50, &qword_10034BD58, &unk_1002960A0);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            sub_1001DC23C(319, &unk_10034BD60, &type metadata accessor for Optional);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001DE81C(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100057F8C(v5);
  sub_10000903C(v5);
  return v3;
}

unint64_t sub_1001DE874(uint64_t a1)
{
  result = sub_1001DE89C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001DE89C()
{
  result = qword_10034BFC8;
  if (!qword_10034BFC8)
  {
    type metadata accessor for EducationPresentationRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BFC8);
  }

  return result;
}

uint64_t sub_1001DE948()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034BFD0);
  sub_100003078(v0, qword_10034BFD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001DE9C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4872616C75676572;
  }

  else
  {
    v4 = 0x6F69746163756465;
  }

  if (v3)
  {
    v5 = 0xED0000746E69486ELL;
  }

  else
  {
    v5 = 0xEB00000000746E69;
  }

  if (*a2)
  {
    v6 = 0x4872616C75676572;
  }

  else
  {
    v6 = 0x6F69746163756465;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746E69;
  }

  else
  {
    v7 = 0xED0000746E69486ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001DEA80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DEB18()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001DEB9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DEC30@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100300020, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001DEC90(uint64_t *a1@<X8>)
{
  v2 = 0x6F69746163756465;
  if (*v1)
  {
    v2 = 0x4872616C75676572;
  }

  v3 = 0xED0000746E69486ELL;
  if (*v1)
  {
    v3 = 0xEB00000000746E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001DEDA4()
{
  if (*v0)
  {
    result = 0x4872616C75676572;
  }

  else
  {
    result = 0x6F69746163756465;
  }

  *v0;
  return result;
}

uint64_t sub_1001DEDF4()
{
  if (qword_100339198 != -1)
  {
LABEL_26:
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034BFD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v32 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0xD000000000000027, 0x80000001002A4AD0, &v32);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  v5 = [objc_opt_self() sharedLocalEndpoint];
  v6 = [v5 outputDevices];

  if (v6)
  {
    sub_1001E03E0();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
LABEL_9:
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v13 = [v10 deviceType];
        v14 = [v11 deviceSubtype] & 0xFFFFFFFE;
        if (v13 == 1 || v14 == 12)
        {
          break;
        }

        ++v9;
        if (v12 == v8)
        {
          goto LABEL_28;
        }
      }

      v16 = v11;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "Output device ineligible for Education Flow: %@", v19, 0xCu);
        sub_1000097E8(v20, &qword_100339940, &unk_100272C50);

        v17 = v21;
      }

      else
      {
      }

      goto LABEL_37;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_9;
    }
  }

LABEL_28:

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
    v24 = v23;

    if (v23)
    {
      v25 = [v24 selectedDeviceState];

      if (v25)
      {
        v26 = [v25 playerPath];

        if (v26)
        {
          v27 = [v26 origin];

          if (v27)
          {
            v28 = [v27 isLocal];

            if (v28)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  v17 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v17, v30, "Player path is not local", v31, 2u);
  }

LABEL_37:

  return 0;
}

uint64_t sub_1001DF2A4()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 408);
  v1 = sub_10005EB78();

  if (v1 == 2)
  {
    if (qword_100338E18 != -1)
    {
      swift_once();
    }

    v2 = *(qword_10038AE70 + 16);
    v4 = v2[3];
    v3 = v2[4];
    v5 = v2[2];

    v6 = String._bridgeToObjectiveC()();
    LOBYTE(v3) = [v3 BOOLForKey:v6];

    if (v3)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_1001DF6B0() ^ 1;
    }
  }

  else
  {
    if (qword_100339198 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034BFD0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      if (v1)
      {
        v12 = 0x4872616C75676572;
      }

      else
      {
        v12 = 0x6F69746163756465;
      }

      if (v1)
      {
        v13 = 0xEB00000000746E69;
      }

      else
      {
        v13 = 0xED0000746E69486ELL;
      }

      v14 = sub_100017494(v12, v13, &v23);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Forcing HintPolicyType: %s", v10, 0xCu);
      sub_10000903C(v11);
    }
  }

  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_10034BFD0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_100017494(0x696C6F50746E6968, 0xEA00000000007963, &v23);
    *(v18 + 12) = 2080;
    if (v1)
    {
      v19 = 0x4872616C75676572;
    }

    else
    {
      v19 = 0x6F69746163756465;
    }

    if (v1)
    {
      v20 = 0xEB00000000746E69;
    }

    else
    {
      v20 = 0xED0000746E69486ELL;
    }

    v21 = sub_100017494(v19, v20, &v23);

    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  return v1 & 1;
}

uint64_t sub_1001DF6B0()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 448);
  v1 = sub_1000031CC();

  if (v1)
  {
    if (qword_100339198 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034BFD0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Forcing EducationCompletedView", v5, 2u);
    }

    v6 = 1;
  }

  else
  {
    if (qword_100338E18 != -1)
    {
      swift_once();
    }

    v7 = *(qword_10038AE70 + 24);
    v9 = v7[3];
    v8 = v7[4];
    v10 = v7[2];

    v11 = String._bridgeToObjectiveC()();
    LOBYTE(v8) = [v8 BOOLForKey:v11];

    if ((v8 & 1) == 0 && (sub_1001DFDD8() & 1) == 0 && (sub_1001E0034() & 1) == 0)
    {
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        v14 = sub_10009F1DC(Strong, &off_100300190);
        if (v16 == 1 || (v17 = v14, v18 = sub_10009FF24(v14, v15 & 1, v16, v13), v17, , !v18))
        {
        }

        else
        {
          v19 = sub_1001DEDF4();

          if (v19)
          {
            v6 = 1;
            goto LABEL_26;
          }
        }
      }

      else
      {
        if (qword_100339198 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100003078(v20, qword_10034BFD0);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "### No delegate?", v23, 2u);
        }
      }
    }

    v6 = 0;
  }

LABEL_26:
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003078(v24, qword_10034BFD0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_100017494(0xD00000000000001FLL, 0x80000001002A4AB0, &v30);
    *(v27 + 12) = 1024;
    *(v27 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s: %{BOOL}d", v27, 0x12u);
    sub_10000903C(v28);
  }

  return v6;
}

uint64_t sub_1001DFAD8()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1001DFB44(uint64_t a1)
{
  result = sub_1001DFB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001DFB6C()
{
  result = qword_10034C0D8;
  if (!qword_10034C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C0D8);
  }

  return result;
}

unint64_t sub_1001DFBC4()
{
  result = qword_10034C0E0;
  if (!qword_10034C0E0)
  {
    sub_100035D4C(&qword_10034C0E8, qword_10028B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C0E0);
  }

  return result;
}

unint64_t sub_1001DFC2C()
{
  result = qword_10034C0F0;
  if (!qword_10034C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C0F0);
  }

  return result;
}

unint64_t sub_1001DFC80()
{
  result = qword_10034C0F8;
  if (!qword_10034C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C0F8);
  }

  return result;
}

uint64_t sub_1001DFCD4()
{
  v1 = v0;
  swift_weakInit();
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034BFD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Init", v5, 2u);
  }

  swift_weakAssign();
  return v1;
}

uint64_t sub_1001DFDD8()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 424);
  v1 = sub_1000177F8();

  if (v1 == 2)
  {
    if (qword_100339180 != -1)
    {
      swift_once();
    }

    v2 = *(qword_10038B4E8 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeAudioCall);
    v3 = *(v2 + 24);
    v4 = qword_10038B4E8;

    CurrentValueSubject.value.getter();
    v5 = v15;
    if (v15 == 1)
    {
      v6 = *(v2 + 16);
      CurrentValueSubject.value.getter();

      v5 = v16;
      if (v16)
      {
LABEL_8:

LABEL_17:
        v1 = 1;
        return v1 & 1;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_8;
      }
    }

    v11 = *&v4[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeVideoCall];
    v12 = *(v11 + 24);

    CurrentValueSubject.value.getter();
    if (v15 == 1)
    {
      v13 = *(v11 + 16);
      CurrentValueSubject.value.getter();

      v5 = v16;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v1 = 0;
    return v1 & 1;
  }

  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034BFD0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Forced forcedIsLocalCallActive: %{BOOL}d", v10, 8u);
  }

  return v1 & 1;
}

uint64_t sub_1001E0034()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 416);
  v1 = sub_1000177F8();

  if (v1 == 2)
  {
    v3 = 0xD00000000000001CLL;
    v2 = "com.apple.MediaRemoteUI";
    v4 = qword_100338F70;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = *(qword_10038B100 + 32);

    v6 = sub_1000E9168(0xD00000000000001CLL, "com.apple.MediaRemoteUI");

    if (v6)
    {
      goto LABEL_10;
    }

    v3 = 0xD000000000000018;
    v2 = "com.apple.sidecar";
    v7 = qword_100338F70;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = *(qword_10038B100 + 32);

    v9 = sub_1000E9168(0xD000000000000018, "com.apple.sidecar");

    if (v9)
    {
LABEL_10:
      swift_arrayDestroy();
      if (qword_100339198 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100003078(v10, qword_10034BFD0);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v21 = v14;
        *v13 = 136315138;
        v15 = sub_100017494(v3, v2, &v21);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v11, v12, "Blocking education - Found active app: %s", v13, 0xCu);
        sub_10000903C(v14);
      }

      else
      {
      }

      v1 = 1;
    }

    else
    {

      swift_arrayDestroy();
      v1 = 0;
    }
  }

  else
  {
    if (qword_100339198 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_10034BFD0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v1 & 1;
      _os_log_impl(&_mh_execute_header, v17, v18, "Forced forcedIsEducationBlockingAppActive: %{BOOL}d", v19, 8u);
    }
  }

  return v1 & 1;
}

unint64_t sub_1001E03E0()
{
  result = qword_10034C100;
  if (!qword_10034C100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10034C100);
  }

  return result;
}

void sub_1001E042C()
{
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034BFD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0xD000000000000019, 0x80000001002A4B40, &v10);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  if (qword_100338E18 != -1)
  {
    swift_once();
  }

  v5 = *(qword_10038AE70 + 16);
  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[2];

  v9 = String._bridgeToObjectiveC()();
  [v6 setBool:1 forKey:v9];
}

uint64_t sub_1001E05F4()
{
  v0 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034BFD0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100017494(0xD00000000000001ALL, 0x80000001002A4B20, &v23);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000903C(v11);
  }

  if (qword_100338E18 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10038AE70 + 24);
  v14 = v12[3];
  v13 = v12[4];
  v15 = v12[2];

  v16 = String._bridgeToObjectiveC()();
  [v13 setBool:1 forKey:v16];

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v17 = qword_10038B0B8;
  Date.init()();
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
  v19 = *(v17 + 600);
  sub_10006C4AC(v6, v4);
  v20 = v19;
  sub_100259E18(v4);

  return sub_1000097E8(v6, &qword_10033C280, &qword_100272A80);
}

void sub_1001E08E0()
{
  if (qword_100339198 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034BFD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v33 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A4B00, &v33);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  if (qword_100338E18 != -1)
  {
    swift_once();
  }

  v5 = qword_10038AE70;
  v6 = *(qword_10038AE70 + 16);
  v8 = v6[3];
  v7 = v6[4];
  v9 = v6[2];

  v10 = String._bridgeToObjectiveC()();
  [v7 setBool:0 forKey:v10];

  v11 = *(v5 + 24);
  v13 = v11[3];
  v12 = v11[4];
  v14 = v11[2];

  v15 = String._bridgeToObjectiveC()();
  [v12 setBool:0 forKey:v15];

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v16 = qword_10038B0B8;
  v17 = *(qword_10038B0B8 + 600);
  v18 = swift_isaMask;
  v19 = *(v17 + *((swift_isaMask & *v17) + 0x70));
  if (v19)
  {
    v20 = (v17 + *((swift_isaMask & *v17) + 0x68));
    v21 = *v20;
    v22 = v20[1];
    v23 = v17;
    v24 = String._bridgeToObjectiveC()();
    [v19 removeObjectForKey:v24];

    v18 = swift_isaMask;
  }

  v25 = *(v16 + 608);
  v26 = *(v25 + *((v18 & *v25) + 0x70));
  if (v26)
  {
    v27 = (v25 + *((v18 & *v25) + 0x68));
    v28 = *v27;
    v29 = v27[1];
    v32 = v25;
    v30 = v26;
    v31 = String._bridgeToObjectiveC()();
    [v30 setInteger:0 forKey:v31];
  }
}

uint64_t sub_1001E0C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  dispatch thunk of Identifiable.id.getter();
  dispatch thunk of Identifiable.id.getter();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v6 + 8);
  v15(v10, AssociatedTypeWitness);
  v15(v12, AssociatedTypeWitness);
  return v14 & 1;
}

void sub_1001E0E70()
{
  sub_10012C2F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ShareableContentType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001E0F1C()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1001E0F74(void *a1)
{
  v2 = sub_100035D04(&qword_10034C2A8, &qword_10028BA58);
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v27 = &v26 - v4;
  v5 = sub_100035D04(&qword_10034C2B0, &qword_10028BA60);
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v30 = &v26 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v34 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShareableContentType(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100035D04(&qword_10034C2B8, &qword_10028BA68);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v21 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001E2ABC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001E29F4(v33, v15, type metadata accessor for ShareableContentType);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    v36 = 1;
    sub_1001E2B10();
    v22 = v27;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v22, v29);
  }

  else
  {
    (*(v9 + 32))(v34, v15, v8);
    v35 = 0;
    sub_1001E2B64();
    v24 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1001E25B4(&qword_100348538, &type metadata accessor for URL);
    v25 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v31 + 8))(v24, v25);
    (*(v9 + 8))(v34, v8);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1001E13EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_100035D04(&qword_10034C278, &qword_10028BA38);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  __chkstk_darwin(v3);
  v47 = &v42 - v5;
  v43 = sub_100035D04(&qword_10034C280, &qword_10028BA40);
  v46 = *(v43 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v43);
  v8 = &v42 - v7;
  v9 = sub_100035D04(&qword_10034C288, &unk_10028BA48);
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = type metadata accessor for ShareableContentType(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v51 = a1;
  sub_10000EBC0(a1, v21);
  sub_1001E2ABC();
  v22 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v42 = v17;
    v50 = v19;
    v23 = v47;
    v24 = v48;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = (2 * *(v25 + 16)) | 1;
    v52 = v25;
    v53 = v25 + 32;
    v54 = 0;
    v55 = v26;
    v27 = sub_10021800C();
    v28 = v9;
    if (v27 == 2 || v54 != v55 >> 1)
    {
      v33 = type metadata accessor for DecodingError();
      swift_allocError();
      v35 = v34;
      v36 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v35 = v13;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
      swift_willThrow();
      (*(v49 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        v56 = 1;
        sub_1001E2B10();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v29 = v49;
        v30 = v24;
        (*(v44 + 8))(v23, v45);
        (*(v29 + 8))(v12, v28);
        swift_unknownObjectRelease();
        v31 = type metadata accessor for URL();
        v32 = v50;
        (*(*(v31 - 8) + 56))(v50, 1, 1, v31);
      }

      else
      {
        v56 = 0;
        sub_1001E2B64();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v49;
        v30 = v24;
        v39 = type metadata accessor for URL();
        sub_1001E25B4(&qword_100348498, &type metadata accessor for URL);
        v41 = v42;
        v40 = v43;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v46 + 8))(v8, v40);
        (*(v38 + 8))(v12, v28);
        swift_unknownObjectRelease();
        (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
        v32 = v50;
        sub_1001E2990(v41, v50);
      }

      sub_1001E2990(v32, v30);
    }
  }

  return sub_10000903C(v51);
}

uint64_t sub_1001E19DC()
{
  if (*v0)
  {
    result = 1701736302;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1001E1A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
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

uint64_t sub_1001E1AE4(uint64_t a1)
{
  v2 = sub_1001E2ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E1B20(uint64_t a1)
{
  v2 = sub_1001E2ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E1B5C(uint64_t a1)
{
  v2 = sub_1001E2B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E1B98(uint64_t a1)
{
  v2 = sub_1001E2B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E1BD4(uint64_t a1)
{
  v2 = sub_1001E2B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E1C10(uint64_t a1)
{
  v2 = sub_1001E2B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E1C7C(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E29F4(v1, v4, type metadata accessor for ShareableContentType);
  v5 = type metadata accessor for URL();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    return 1701736302;
  }

  sub_1001E2A5C(v4, type metadata accessor for ShareableContentType);
  return 0x6C72753C286C7275;
}

uint64_t sub_1001E1D84(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034C268, &qword_10028BA30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001E293C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for ShareableContent(0) + 20);
    v15[14] = 1;
    type metadata accessor for ShareableContentType(0);
    sub_1001E25B4(&qword_10034C270, type metadata accessor for ShareableContentType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001E1F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = type metadata accessor for ShareableContentType(0);
  v4 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100035D04(&qword_10034C250, &qword_10028BA28);
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v29);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ShareableContent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001E293C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v25 = v10;
  v15 = v27;
  v31 = 0;
  v16 = v29;
  *v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13[1] = v17;
  v23 = v13;
  v24 = v17;
  v30 = 1;
  sub_1001E25B4(&qword_10034C260, type metadata accessor for ShareableContentType);
  v18 = v16;
  v19 = v6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 8))(v9, v18);
  v20 = v23;
  sub_1001E2990(v19, v23 + *(v25 + 20));
  sub_1001E29F4(v20, v26, type metadata accessor for ShareableContent);
  sub_10000903C(a1);
  return sub_1001E2A5C(v20, type metadata accessor for ShareableContent);
}

uint64_t sub_1001E2230()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x4449656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_1001E226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1001E2348(uint64_t a1)
{
  v2 = sub_1001E293C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E2384(uint64_t a1)
{
  v2 = sub_1001E293C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E23F0(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      if (*a1 == *a2 && v4 == v5)
      {
        goto LABEL_8;
      }

      v7 = a1;
      v8 = a2;
      v9 = a3;
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v9;
      a2 = v8;
      v11 = v10;
      a1 = v7;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v12 = *(a3 + 20);
  v13 = a1 + v12;
  v14 = a2 + v12;

  return sub_1001E25FC(v13, v14);
}

uint64_t sub_1001E2494(uint64_t a1)
{
  v5[3] = a1;
  v2 = sub_10000F798(v5);
  sub_1001E29F4(v1, v2, type metadata accessor for ShareableContent);
  v3 = sub_1000CF374(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_1001E2504(uint64_t a1)
{
  result = sub_1001E25B4(&qword_10034C238, type metadata accessor for ShareableContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E255C(uint64_t a1)
{
  result = sub_1001E25B4(&qword_10034C240, type metadata accessor for ShareableContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E25B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E25FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShareableContentType(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100035D04(&qword_10034C248, &qword_10028BA20);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1001E29F4(a1, &v23 - v16, type metadata accessor for ShareableContentType);
  sub_1001E29F4(a2, &v17[v18], type metadata accessor for ShareableContentType);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1001E29F4(v17, v12, type metadata accessor for ShareableContentType);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = static URL.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1001E2A5C(v17, type metadata accessor for ShareableContentType);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1001E28D4(v17);
    v20 = 0;
    return v20 & 1;
  }

  sub_1001E2A5C(v17, type metadata accessor for ShareableContentType);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1001E28D4(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10034C248, &qword_10028BA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001E293C()
{
  result = qword_10034C258;
  if (!qword_10034C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C258);
  }

  return result;
}

uint64_t sub_1001E2990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareableContentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E29F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E2A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001E2ABC()
{
  result = qword_10034C290;
  if (!qword_10034C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C290);
  }

  return result;
}

unint64_t sub_1001E2B10()
{
  result = qword_10034C298;
  if (!qword_10034C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C298);
  }

  return result;
}

unint64_t sub_1001E2B64()
{
  result = qword_10034C2A0;
  if (!qword_10034C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2A0);
  }

  return result;
}

unint64_t sub_1001E2BFC()
{
  result = qword_10034C2C0;
  if (!qword_10034C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2C0);
  }

  return result;
}

unint64_t sub_1001E2C54()
{
  result = qword_10034C2C8;
  if (!qword_10034C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2C8);
  }

  return result;
}

unint64_t sub_1001E2CAC()
{
  result = qword_10034C2D0;
  if (!qword_10034C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2D0);
  }

  return result;
}

unint64_t sub_1001E2D04()
{
  result = qword_10034C2D8;
  if (!qword_10034C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2D8);
  }

  return result;
}

unint64_t sub_1001E2D5C()
{
  result = qword_10034C2E0;
  if (!qword_10034C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2E0);
  }

  return result;
}

unint64_t sub_1001E2DB4()
{
  result = qword_10034C2E8;
  if (!qword_10034C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2E8);
  }

  return result;
}

unint64_t sub_1001E2E0C()
{
  result = qword_10034C2F0;
  if (!qword_10034C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2F0);
  }

  return result;
}

unint64_t sub_1001E2E64()
{
  result = qword_10034C2F8;
  if (!qword_10034C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C2F8);
  }

  return result;
}

unint64_t sub_1001E2EBC()
{
  result = qword_10034C300;
  if (!qword_10034C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C300);
  }

  return result;
}

unint64_t sub_1001E2F14()
{
  result = qword_10034C308;
  if (!qword_10034C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C308);
  }

  return result;
}

unint64_t sub_1001E2F6C()
{
  result = qword_10034C310;
  if (!qword_10034C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C310);
  }

  return result;
}

__n128 sub_1001E2FC0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1001E2FF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001E3050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1001E30E0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034C320);
  sub_100003078(v0, qword_10034C320);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001E3164(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001E34BC(a1);
  }

  return result;
}

char *sub_1001E31C4()
{
  v1 = v0;
  if (qword_1003391A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034C320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 2);

  v7 = *(v1 + 3);

  v8 = *(v1 + 4);

  v9 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel__isModulating;
  v10 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  (*(*(v10 - 8) + 8))(&v1[v9], v10);
  v11 = *&v1[OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher];

  v12 = *&v1[OBJC_IVAR____TtC17proximitycontrold13HintViewModel_popSubject];

  v13 = *&v1[OBJC_IVAR____TtC17proximitycontrold13HintViewModel__subtitle];

  v14 = *&v1[OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher];

  return v1;
}

uint64_t sub_1001E3348()
{
  sub_1001E31C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HintViewModel()
{
  result = qword_10034C3B0;
  if (!qword_10034C3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E33F4()
{
  sub_10010E478();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001E34BC(uint64_t a1)
{
  v2 = v1;
  v82 = *v1;
  v4 = sub_100035D04(&qword_10034C7B8, &qword_10028C088);
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v4);
  v73 = &v70 - v6;
  v7 = sub_100035D04(&unk_10034C7C0, &unk_10028C090);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v70 - v9;
  v81 = sub_100035D04(&qword_100346630, &qword_10027D3D0);
  v79 = *(v81 - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(v81);
  v78 = &v70 - v12;
  v13 = sub_100035D04(&qword_10034C7D0, &qword_10028C0A0);
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = *(v83 + 64);
  __chkstk_darwin(v13);
  v80 = &v70 - v15;
  v16 = sub_100035D04(&qword_10034C7D8, &qword_10028C0A8);
  v86 = *(v16 - 8);
  v17 = *(v86 + 64);
  __chkstk_darwin(v16);
  v85 = &v70 - v18;
  v19 = type metadata accessor for ActivityDisplayContext(0);
  v75 = *(v19 - 8);
  v20 = *(v75 + 64);
  v21 = __chkstk_darwin(v19);
  v76 = v22;
  v77 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v70 - v23;
  if (qword_1003391A0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003078(v25, qword_10034C320);
  sub_1001E9020(a1, v24, type metadata accessor for ActivityDisplayContext);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v72 = v10;
    v29 = v28;
    v70 = swift_slowAlloc();
    v87[0] = v70;
    *v29 = 136315394;
    v30 = sub_100017494(0xD000000000000023, 0x80000001002A4E60, v87);
    *(v29 + 4) = v30;
    *(v29 + 12) = 2080;
    v31 = sub_10012C5E0(v30);
    v71 = v19;
    v32 = v4;
    v33 = a1;
    v34 = v2;
    v35 = v16;
    v37 = v36;
    sub_1001E9088(v24, type metadata accessor for ActivityDisplayContext);
    v38 = sub_100017494(v31, v37, v87);
    v16 = v35;
    v2 = v34;
    a1 = v33;
    v4 = v32;
    v19 = v71;

    *(v29 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s: activityDisplayContext=%s", v29, 0x16u);
    swift_arrayDestroy();

    v10 = v72;
  }

  else
  {

    sub_1001E9088(v24, type metadata accessor for ActivityDisplayContext);
  }

  v39 = v2[3];
  v2[3] = 0;

  if (*(a1 + 8))
  {
    goto LABEL_7;
  }

  if (*a1 < 2uLL)
  {
    v64 = a1 + *(v19 + 36);
    v87[0] = sub_10012CA5C();
    sub_100035D04(&qword_10034C7E0, &unk_10028C0B0);
    sub_10000E244(&qword_10034C7E8, &qword_10034C7E0, &unk_10028C0B0);
    v65 = v73;
    Publisher.map<A>(_:)();

    sub_10000E244(&unk_10034C7F0, &qword_10034C7B8, &qword_10028C088);
    v66 = Publisher.eraseToAnyPublisher()();
    (*(v74 + 8))(v65, v4);
    v87[0] = v66;
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_100345068, &unk_10027C110);
    sub_10000E244(&unk_10034C7A0, &qword_100345068, &unk_10027C110);
    v67 = Publisher<>.sink(receiveValue:)();

    v68 = v2[3];
    v2[3] = v67;
  }

  if ((*a1 - 3) > 1)
  {
LABEL_7:
    if (qword_1003391B0 != -1)
    {
      swift_once();
    }

    v40 = *algn_10034C358;
    v41 = *(v2 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel__subtitle);
    v42 = *(v41 + 32);
    *(v41 + 24) = qword_10034C350;
    *(v41 + 32) = v40;

    sub_10005EAD4();
    v43 = *(v41 + 32);
    v87[0] = *(v41 + 24);
    v87[1] = v43;

    CurrentValueSubject.send(_:)();
  }

  else
  {
    v44 = swift_allocObject();
    *(v44 + 16) = 1;
    sub_100003118(0, &qword_100346640, NSTimer_ptr);
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v45 = *(qword_10038B0B8 + 1264);
    sub_10005F4E4();

    v46 = [objc_opt_self() mainRunLoop];
    v47 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v47 - 8) + 56))(v10, 1, 1, v47);
    v48 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000097E8(v10, &unk_10034C7C0, &unk_10028C090);
    v87[0] = v48;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1001E90E8();
    v49 = ConnectablePublisher.autoconnect()();

    v87[0] = v49;
    sub_100035D04(&qword_1003425A0, &qword_100278410);
    v50 = *(type metadata accessor for Date() - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    *(swift_allocObject() + 16) = xmmword_10026F050;
    Date.init()();
    sub_100035D04(&unk_10034C810, &qword_10028C0C0);
    sub_10000E244(&qword_100346648, &unk_10034C810, &qword_10028C0C0);
    v53 = v78;
    Publisher.prepend(_:)();

    v54 = v77;
    sub_1001E9020(a1, v77, type metadata accessor for ActivityDisplayContext);
    v55 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v56 = (v76 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 16) = v44;
    sub_1001E9140(v54, v57 + v55);
    *(v57 + v56) = v82;

    sub_100035D04(&qword_100345068, &unk_10027C110);
    sub_10000E244(&qword_10034C820, &qword_100346630, &qword_10027D3D0);
    v59 = v80;
    v58 = v81;
    Publisher.map<A>(_:)();

    (*(v79 + 8))(v53, v58);
    sub_10000E244(&qword_10034C828, &qword_10034C7D0, &qword_10028C0A0);
    sub_10000E244(&unk_10034C7A0, &qword_100345068, &unk_10027C110);
    v60 = v84;
    v61 = v85;
    Publisher<>.switchToLatest()();
    (*(v83 + 8))(v59, v60);
    swift_allocObject();
    swift_weakInit();
    sub_10000E244(&qword_10034C830, &qword_10034C7D8, &qword_10028C0A8);
    v62 = Publisher<>.sink(receiveValue:)();

    (*(v86 + 8))(v61, v16);
    v63 = v2[3];
    v2[3] = v62;
  }
}

uint64_t sub_1001E4174@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v5 = sub_100035D04(&qword_10034C838, &qword_10028C0C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = sub_100035D04(&qword_10034C7B8, &qword_10028C088);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  if (qword_1003391A0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_10034C320);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v14;
    v19 = v9;
    v20 = v10;
    v21 = v5;
    v22 = v11;
    v23 = v6;
    v24 = a3;
    v25 = v18;
    *v18 = 67109120;
    swift_beginAccess();
    *(v25 + 1) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v16, v17, "Timer fired: currentSubtitleIsInstructionText=%{BOOL}d", v25, 8u);
    a3 = v24;
    v6 = v23;
    v11 = v22;
    v5 = v21;
    v10 = v20;
    v9 = v19;
    v14 = v30;
  }

  else
  {
  }

  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    swift_beginAccess();
    *(a1 + 16) = 0;
    v26 = v31 + *(type metadata accessor for ActivityDisplayContext(0) + 36);
    v32 = sub_10012CA5C();
    sub_100035D04(&qword_10034C7E0, &unk_10028C0B0);
    sub_10000E244(&qword_10034C7E8, &qword_10034C7E0, &unk_10028C0B0);
    Publisher.map<A>(_:)();

    sub_10000E244(&unk_10034C7F0, &qword_10034C7B8, &qword_10028C088);
    v27 = Publisher.eraseToAnyPublisher()();
    result = (*(v11 + 8))(v14, v10);
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_1003391B0 != -1)
    {
      swift_once();
    }

    v32 = qword_10034C350;
    v33 = *algn_10034C358;

    Just.init(_:)();
    sub_10000E244(&unk_10034C840, &qword_10034C838, &qword_10028C0C8);
    v27 = Publisher.eraseToAnyPublisher()();
    result = (*(v6 + 8))(v9, v5);
  }

  *a3 = v27;
  return result;
}

uint64_t sub_1001E4604(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC17proximitycontrold13HintViewModel__subtitle);
    v5 = *(v4 + 32);
    *(v4 + 24) = v2;
    *(v4 + 32) = v1;

    sub_10005EAD4();
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1001E46CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001E4740()
{
  v1 = sub_100035D04(&qword_100344FE0, &qword_10027C080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher);
  }

  else
  {
    swift_beginAccess();
    sub_100035D04(&qword_100345038, &qword_10027C0E8);
    v8 = v0;
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10000E244(&qword_10034C7B0, &qword_100344FE0, &qword_10027C080);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_1001E48DC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel__subtitle);

    v4 = v0;
    sub_10005EAD4();
    sub_100035D04(&qword_10033C2F0, &qword_100272AF0);
    sub_10000E244(&unk_10034C790, &qword_10033C2F0, &qword_100272AF0);
    Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_100345068, &unk_10027C110);
    sub_10000E244(&unk_10034C7A0, &qword_100345068, &unk_10027C110);
    v2 = Publisher.eraseToAnyPublisher()();

    v5 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001E4A78()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034C338);
  sub_100003078(v0, qword_10034C338);
  return Logger.init(subsystem:category:)();
}

void sub_1001E4AF8(uint64_t a1)
{
  v2 = v1;
  v65 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v63 = *(v65 - 8);
  v4 = *(v63 + 64);
  __chkstk_darwin(v65);
  v62 = v54 - v5;
  v67 = sub_100035D04(&qword_10034C668, &qword_10028BF88);
  v66 = *(v67 - 8);
  v6 = *(v66 + 64);
  __chkstk_darwin(v67);
  v64 = v54 - v7;
  v70 = sub_100035D04(&qword_10034C670, &qword_10028BF90);
  v69 = *(v70 - 8);
  v8 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = v54 - v9;
  v10 = sub_100035D04(&qword_10034C678, &unk_10028BF98);
  v72 = *(v10 - 8);
  v11 = *(v72 + 64);
  __chkstk_darwin(v10);
  v71 = v54 - v12;
  v13 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v61 = v54 - v15;
  v60 = sub_100035D04(&qword_10034C688, &qword_10028BFA8);
  v59 = *(v60 - 8);
  v16 = *(v59 + 64);
  __chkstk_darwin(v60);
  v18 = v54 - v17;
  v19 = OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureBannerUserInfo;
  sub_100035D04(&unk_10034C690, &qword_10028BFB0);
  inited = swift_initStackObject();
  v58 = xmmword_10026F050;
  *(inited + 16) = xmmword_10026F050;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v21;
  sub_100003118(0, &qword_10034B560, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
  v22 = sub_10024D3B8(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &unk_10034C6A0, &unk_10028BFB8);
  *&v2[v19] = v22;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v23 = *(qword_10038B0B8 + 704);
  v24 = sub_1000031CC();

  if (v24)
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = v58;
    *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v25 + 40) = v26;
    *(v25 + 48) = NSNumber.init(BOOLeanLiteral:)(1);
    v27 = sub_10024D3B8(v25);
    swift_setDeallocating();
    sub_1000097E8(v25 + 32, &unk_10034C6A0, &unk_10028BFB8);
  }

  else
  {
    v27 = sub_10024D3B8(_swiftEmptyArrayStorage);
  }

  *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerUserInfo] = v27;
  static String._fromUTF8Repairing(_:)();
  v28 = String._bridgeToObjectiveC()();

  v29 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v28];

  if (v29)
  {
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerSource] = v29;
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel] = 0;
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom] = 0;
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController] = 0;
    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_tasks] = &_swiftEmptySetSingleton;
    if (qword_1003391A8 != -1)
    {
      swift_once();
    }

    *&v58 = v10;
    v30 = type metadata accessor for Logger();
    sub_100003078(v30, qword_10034C338);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Init", v33, 2u);
    }

    *&v2[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment] = a1;
    v34 = type metadata accessor for ClassicBannerPresenter();
    v75.receiver = v2;
    v75.super_class = v34;

    v35 = objc_msgSendSuper2(&v75, "init");
    v36 = *&v35[OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerSource];
    v37 = v35;
    [v36 setDelegate:v37];
    v38 = sub_100140E18();
    v54[3] = a1;
    v73 = v38;
    v54[1] = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v39 = static OS_dispatch_queue.main.getter();
    v74 = v39;
    v56 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v40 = *(v56 - 8);
    v55 = *(v40 + 56);
    v57 = v40 + 56;
    v41 = v61;
    v55(v61, 1, 1, v56);
    sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
    sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0);
    v54[2] = sub_1000513CC();
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v41, &qword_10034C680, &qword_100270390);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v54[4] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000E244(&qword_10034C6B8, &qword_10034C688, &qword_10028BFA8);
    v42 = v60;
    Publisher<>.sink(receiveValue:)();

    (*(v59 + 8))(v18, v42);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v73 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
    type metadata accessor for HandoffSession();

    v43 = v62;
    Publisher.compactMap<A>(_:)();

    sub_100035D04(&qword_10034C6C0, &qword_10028BFC8);
    v44 = v64;
    v45 = v65;
    Publishers.CompactMap.map<A>(_:)();
    (*(v63 + 8))(v43, v45);
    sub_10000E244(&qword_10034C6C8, &qword_10034C668, &qword_10028BF88);
    sub_10000E244(&qword_10034C6D0, &qword_10034C6C0, &qword_10028BFC8);
    v46 = v68;
    v47 = v67;
    Publisher<>.switchToLatest()();
    (*(v66 + 8))(v44, v47);
    v48 = static OS_dispatch_queue.main.getter();
    v73 = v48;
    v55(v41, 1, 1, v56);
    sub_10000E244(&qword_10034C6D8, &qword_10034C670, &qword_10028BF90);
    v49 = v71;
    v50 = v70;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v41, &qword_10034C680, &qword_100270390);

    (*(v69 + 8))(v46, v50);
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v52 = swift_allocObject();
    *(v52 + 16) = sub_1001E870C;
    *(v52 + 24) = v51;
    sub_10000E244(&qword_10034C6E0, &qword_10034C678, &unk_10028BF98);
    v53 = v58;
    Publisher<>.sink(receiveValue:)();

    (*(v72 + 8))(v49, v53);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001E5764(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001E592C(v1);
  }
}

uint64_t sub_1001E57C0(uint64_t *a1)
{
  v1 = *a1;
  sub_100093240();

  sub_100035D04(&qword_10034C6E8, &qword_10028BFD0);
  sub_100035D04(&qword_10034C6F0, &qword_10028BFD8);
  sub_10000E244(&qword_10034C6F8, &qword_10034C6E8, &qword_10028BFD0);
  Publisher.map<A>(_:)();
}

void sub_1001E58BC(unsigned __int8 a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001E62B8(a1, a2);
  }
}

void sub_1001E592C(uint64_t a1)
{
  v2 = v1;
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034C338);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000014, 0x80000001002A21B0, &v24);
    *(v7 + 12) = 2080;
    if (a1)
    {
      UUID.uuidString.getter();
      sub_10000B584(8);

      v8 = static String._fromSubstring(_:)();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v2 = v1;
      v11._object = v10;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = *(a1 + 24);
      v14._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 62;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16 = 60;
      v17 = 0xE100000000000000;
    }

    else
    {
      v17 = 0xE300000000000000;
      v16 = 7104878;
    }

    v18 = sub_100017494(v16, v17, &v24);

    *(v7 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: session=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
  if (v19)
  {
    v20 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
  }

  else
  {
    v21 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController);
    if (!v21)
    {
      return;
    }

    v22 = v21;
    v19 = 0;
  }

  v23 = v19;
  swift_unknownObjectRelease();

  sub_1001E5C54(0x206E6F6973736553, 0xEF6465676E616863, 0);
}

void sub_1001E5C54(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v46 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003078(v12, qword_10034C338);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45[1] = v13;
    v17 = v16;
    v47 = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_100017494(0xD000000000000016, 0x80000001002A4DC0, &v47);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_100017494(v46, a2, &v47);
    *(v17 + 22) = 1024;
    *(v17 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: reason=%s, force=%{BOOL}d", v17, 0x1Cu);
    swift_arrayDestroy();
  }

  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v18 & 1) == 0)
  {
    __break(1u);
  }

  v19 = OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom;
  v20 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
  if (v20)
  {
    v21 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
  }

  else
  {
    v22 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController);
    if (!v22)
    {
      goto LABEL_13;
    }

    v21 = v22;
    v20 = 0;
  }

  v23 = v20;
  v24 = [v21 requestIdentifier];
  swift_unknownObjectRelease();
  if (!v24)
  {
LABEL_13:
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### No presentable to dismiss", v29, 2u);
    }

    goto LABEL_21;
  }

  v25 = OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel;
  if (*(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v47) = 0;

    static Published.subscript.setter();
    v26 = *(v4 + v25);
  }

  *(v4 + v25) = 0;

  v30 = *(v4 + v19);
  *(v4 + v19) = 0;

  v31 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController);
  *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController) = 0;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Revoking presentable...", v34, 2u);
  }

  v35 = *(v4 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerSource);
  v36 = String._bridgeToObjectiveC()();
  sub_10024D3B8(_swiftEmptyArrayStorage);
  sub_100035D04(&qword_10033B118, qword_100271BF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v47 = 0;
  v38 = [v35 revokePresentableWithRequestIdentifier:v24 reason:v36 animated:1 userInfo:isa error:&v47];

  if (v38)
  {
    v39 = v47;

    return;
  }

  v40 = v47;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    swift_errorRetain();
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 4) = v44;
    *v43 = v44;
    _os_log_impl(&_mh_execute_header, v27, v41, "### Error revoking presentable: %@", v42, 0xCu);
    sub_1000097E8(v43, &qword_100339940, &unk_100272C50);

LABEL_21:

    return;
  }
}

void sub_1001E62B8(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034C338);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v28);
    *(v9 + 12) = 2080;
    v27 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v10 = 0x7373696D736964;
      }

      else
      {
        v10 = 7368560;
      }

      if (a1 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      v10 = 0x746E6573657270;
    }

    v17 = sub_100017494(v10, v11, &v28);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v18 = static String._fromSubstring(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = *(a2 + 24);
    v24._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 62;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = sub_100017494(60, 0xE100000000000000, &v28);

    *(v9 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: effect=%s, session=%s", v9, 0x20u);
    swift_arrayDestroy();

    v12 = v27;
    if (!v27)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v12 = a1;
    if (!a1)
    {
LABEL_22:

      sub_1001E66BC(a2);
      return;
    }
  }

  if (v12 == 1)
  {

    sub_1001E5C54(0xD000000000000014, 0x80000001002A4D30, 0);
  }

  else
  {
    v13 = OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel;
    v14 = *(v3 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel);
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel_popSubject);
      v16 = *(v3 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel);

      PassthroughSubject.send(_:)();

      if (*(v3 + v13))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
      }
    }
  }
}

uint64_t sub_1001E66BC(uint64_t a1)
{
  v2 = v1;
  v125 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v4 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v6 = &v115 - v5;
  v124 = type metadata accessor for ExperienceEvent(0);
  v7 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v9 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v118 = &v115 - v12;
  v13 = sub_100035D04(&qword_10034C710, &qword_10028C028);
  v121 = *(v13 - 8);
  v122 = v13;
  v14 = *(v121 + 64);
  __chkstk_darwin(v13);
  v120 = &v115 - v15;
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100003078(v16, qword_10034C338);

  v128 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v129 = a1;
  v126 = v9;
  v127 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_100017494(0xD000000000000011, 0x80000001002A4D70, &v132);
    *(v21 + 12) = 2080;
    v130 = 60;
    v131 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v22 = v129;
    v23 = static String._fromSubstring(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28 = *(v22 + 24);
    v29._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 62;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v31 = sub_100017494(v130, v131, &v132);

    *(v21 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: session=%s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v119 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v116 = UUID.uuidString.getter();
  v117 = v32;
  v33 = type metadata accessor for HintViewModel();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();

  v37 = sub_1001E875C(v36);

  v38 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_viewModel) = v37;

  if (qword_100338E90 != -1)
  {
    swift_once();
  }

  v123 = v37;
  if (byte_10038AFB0 != 1)
  {
    goto LABEL_11;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v39 = *(qword_10038B0B8 + 888);
  v40 = sub_10005F4D0();

  if ((v40 & 1) == 0)
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Posting HintViewControllerDynamicIsland...", v63, 2u);
    }

    v64 = objc_allocWithZone(type metadata accessor for HintViewControllerDynamicIsland());

    v66 = sub_100202F68(v65);
    *&v66[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_delegate + 8] = &off_100311990;
    swift_unknownObjectWeakAssign();
    v130 = sub_100202E8C();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v67 = qword_10038B5B8;
    v132 = qword_10038B5B8;
    v68 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v69 = v118;
    (*(*(v68 - 8) + 56))(v118, 1, 1, v68);
    v70 = v67;
    sub_100035D04(&qword_10034C718, &unk_10028C030);
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_10034C720, &qword_10034C718, &unk_10028C030);
    sub_1000513CC();
    v71 = v120;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v69, &qword_10034C680, &qword_100270390);

    v72 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = swift_allocObject();
    v75 = v116;
    v74 = v117;
    v73[2] = v72;
    v73[3] = v75;
    v73[4] = v74;
    sub_10000E244(&qword_10034C728, &qword_10034C710, &qword_10028C028);
    v76 = v122;
    Publisher<>.sink(receiveValue:)();

    (*(v121 + 8))(v71, v76);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v77 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom);
    *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureViewControllerCustom) = v66;
    v78 = v66;

    v59 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_apertureBannerUserInfo);

    v60 = v78;
  }

  else
  {
LABEL_11:
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Posting HintViewControllerBanner...", v43, 2u);
    }

    v44 = objc_allocWithZone(type metadata accessor for HintViewControllerBanner());

    v46 = sub_10010E74C(v45);

    *&v46[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_delegate + 8] = &off_100311990;
    swift_unknownObjectWeakAssign();
    v130 = sub_10010C9B8();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v47 = qword_10038B5B8;
    v132 = qword_10038B5B8;
    v48 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v49 = v118;
    (*(*(v48 - 8) + 56))(v118, 1, 1, v48);
    v50 = v47;
    sub_100035D04(&qword_10034C718, &unk_10028C030);
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_10034C720, &qword_10034C718, &unk_10028C030);
    sub_1000513CC();
    v51 = v120;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v49, &qword_10034C680, &qword_100270390);

    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = swift_allocObject();
    v55 = v116;
    v54 = v117;
    v53[2] = v52;
    v53[3] = v55;
    v53[4] = v54;
    sub_10000E244(&qword_10034C728, &qword_10034C710, &qword_10028C028);
    v56 = v122;
    Publisher<>.sink(receiveValue:)();

    (*(v121 + 8))(v51, v56);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v57 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController);
    *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_pillViewController) = v46;
    v58 = v46;

    v59 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerUserInfo);
    v60 = v58;
  }

  v79 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_bannerSource);
  if (v59)
  {
    sub_100035D04(&qword_10033B118, qword_100271BF0);
    v80.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v80.super.isa = 0;
  }

  v130 = 0;
  v81 = [v79 postPresentable:v60 options:1 userInfo:v80.super.isa error:&v130];
  swift_unknownObjectRelease();

  if (v81)
  {
    v82 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment);
    v83 = v130;

    v84 = UUID.uuidString.getter();
    v129 = v85;
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    v86._countAndFlagsBits = 0x20646574736F50;
    v86._object = 0xE700000000000000;
    String.append(_:)(v86);
    v132 = v60;
    sub_100035D04(&unk_10034C730, &unk_10028C040);
    _print_unlocked<A, B>(_:_:)();
    v87._object = 0x80000001002A4D50;
    v87._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v87);
    v88 = v130;
    v89 = v131;
    v90 = v126;
    *v126 = 0;
    *(v90 + 8) = 0;
    *(v90 + 16) = 4;
    swift_storeEnumTagMultiPayload();
    v91 = *(v82 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v92 = v127;
    v93 = &v127[*(v125 + 48)];
    v94 = &v127[*(v125 + 64)];
    sub_1001E9020(v90, v127, type metadata accessor for ExperienceEvent);
    *v93 = v84;
    v95 = v92;
    v93[1] = v129;
    *v94 = v88;
    v94[1] = v89;
    PassthroughSubject.send(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v96 = v130;
    v97 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      swift_errorRetain();
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v100 + 4) = v102;
      *v101 = v102;
      _os_log_impl(&_mh_execute_header, v98, v99, "### Error posting presentable: %@", v100, 0xCu);
      sub_1000097E8(v101, &qword_100339940, &unk_100272C50);
    }

    v103 = *(v2 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment);
    swift_errorRetain();

    v104 = UUID.uuidString.getter();
    v128 = v105;
    v129 = v104;
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    v106._countAndFlagsBits = 0x742064656C696146;
    v106._object = 0xEF2074736F70206FLL;
    String.append(_:)(v106);
    v132 = v60;
    sub_100035D04(&unk_10034C730, &unk_10028C040);
    _print_unlocked<A, B>(_:_:)();
    v107._object = 0x80000001002A4D50;
    v107._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v107);
    v108 = v130;
    v109 = v131;
    v90 = v126;
    *v126 = v97;
    *(v90 + 8) = 0;
    *(v90 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    v110 = *(v103 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v95 = v127;
    v111 = &v127[*(v125 + 48)];
    v112 = &v127[*(v125 + 64)];
    sub_1001E9020(v90, v127, type metadata accessor for ExperienceEvent);
    v113 = v128;
    *v111 = v129;
    v111[1] = v113;
    *v112 = v108;
    v112[1] = v109;
    swift_errorRetain();
    PassthroughSubject.send(_:)();
    swift_unknownObjectRelease();
  }

  sub_1000097E8(v95, &unk_10034C700, &qword_100273D30);
  sub_1001E9088(v90, type metadata accessor for ExperienceEvent);
}

void sub_1001E7714()
{
  swift_unknownObjectRelease();
}

id sub_1001E7770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassicBannerPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E7874(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v27[-v8];
  v10 = type metadata accessor for ExperienceEvent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_10034C338);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = a1;
    v18 = v17;
    v29 = swift_slowAlloc();
    v31 = v29;
    *v18 = 136315650;
    *(v18 + 4) = sub_100017494(0xD00000000000002BLL, 0x80000001002A4D90, &v31);
    *(v18 + 12) = 2080;
    v19 = String.init<A>(describing:)();
    v28 = v16;
    v21 = sub_100017494(v19, v20, &v31);

    *(v18 + 14) = v21;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_100017494(v30, a2, &v31);
    _os_log_impl(&_mh_execute_header, v15, v28, "%s: event=%s, sessionID=%s", v18, 0x20u);
    swift_arrayDestroy();

    a1 = v30;
  }

  v22 = *(v3 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment);
  *v13 = xmmword_100278920;
  v13[16] = 4;
  swift_storeEnumTagMultiPayload();
  v23 = *(v22 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v24 = &v9[*(v6 + 48)];
  v25 = &v9[*(v6 + 64)];
  sub_1001E9020(v13, v9, type metadata accessor for ExperienceEvent);
  *v24 = a1;
  v24[1] = a2;
  *v25 = 0x707061546C6C6970;
  v25[1] = 0xEA00000000006465;

  PassthroughSubject.send(_:)();
  sub_1000097E8(v9, &unk_10034C700, &qword_100273D30);
  sub_1001E9088(v13, type metadata accessor for ExperienceEvent);
}

void sub_1001E7BDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1001E7874(a3, a4);
  }
}

void sub_1001E7C4C(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v10 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v86 = &v82 - v12;
  v13 = type metadata accessor for ExperienceEvent(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v87 = (&v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100003078(v16, qword_10034C338);
  v18 = a1;
  sub_1001E8744(a2, a3, a4);
  v85 = v17;
  v19 = Logger.logObject.getter();
  v20 = a4;
  v21 = static os_log_type_t.default.getter();

  sub_1000D6794(a2, a3, v20);
  v22 = os_log_type_enabled(v19, v21);
  LODWORD(v88) = v20;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v84 = v10;
    v24 = v23;
    v25 = swift_slowAlloc();
    v83 = v13;
    v26 = v25;
    v82 = swift_slowAlloc();
    v89 = v82;
    *v24 = 136315650;
    *(v24 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A4D00, &v89);
    *(v24 + 12) = 2112;
    *(v24 + 14) = v18;
    *v26 = v18;
    *(v24 + 22) = 2080;
    v27 = v18;
    v28 = sub_10007EBCC(a2, a3, v20);
    v30 = sub_100017494(v28, v29, &v89);

    *(v24 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v19, v21, "%s: viewController=%@, event=%s", v24, 0x20u);
    sub_1000097E8(v26, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();

    v10 = v84;
  }

  v91 = &OBJC_PROTOCOL___BNPresentable;
  v31 = swift_dynamicCastObjCProtocolConditional();
  if (!v31)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "### viewController not a BNPresentable?", v48, 2u);
    }

    goto LABEL_12;
  }

  v32 = v31;
  v33 = v18;
  v34 = [v32 requestIdentifier];
  if (!v34)
  {
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = v88;
  if (v88 > 1u)
  {
    if (v88 == 2)
    {
      v85 = *(v5 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment);

      v49._countAndFlagsBits = sub_10007EBCC(a2, a3, 2u);
      v88 = v33;
      v89 = 0xD000000000000014;
      v90 = 0x80000001002A4CE0;
      String.append(_:)(v49);

      v83 = v90;
      v84 = v89;
      v50 = v87;
      *v87 = a2;
      *(v50 + 8) = a3;
      *(v50 + 16) = 3;
      swift_storeEnumTagMultiPayload();
      v51 = v86;
      v52 = *(v85 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
      v53 = (v86 + *(v10 + 48));
      v54 = (v86 + *(v10 + 64));
      sub_1001E9020(v50, v86, type metadata accessor for ExperienceEvent);
      *v53 = v36;
      v53[1] = v38;
      v55 = v83;
      *v54 = v84;
      v54[1] = v55;

      PassthroughSubject.send(_:)();

      sub_1000097E8(v51, &unk_10034C700, &qword_100273D30);
      sub_1001E9088(v50, type metadata accessor for ExperienceEvent);

      return;
    }

    if (a2 <= 2)
    {
      if (a2 | a3 && a2 ^ 1 | a3)
      {
        v84 = v38;
        v62 = *(v5 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment);

        v63._countAndFlagsBits = sub_10007EBCC(a2, a3, 3u);
        v89 = 0xD000000000000014;
        v90 = 0x80000001002A4CE0;
        String.append(_:)(v63);

        v64 = v90;
        v88 = v89;
        v65 = v87;
        *v87 = xmmword_100271890;
        *(v65 + 16) = 4;
        swift_storeEnumTagMultiPayload();
        v66 = *(v62 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
        v67 = v86;
        v68 = (v86 + *(v10 + 48));
        v69 = (v86 + *(v10 + 64));
        sub_1001E9020(v65, v86, type metadata accessor for ExperienceEvent);
        v70 = v84;
        *v68 = v36;
        v68[1] = v70;
        *v69 = v88;
        v69[1] = v64;
        PassthroughSubject.send(_:)();

        sub_1000097E8(v67, &unk_10034C700, &qword_100273D30);
        sub_1001E9088(v65, type metadata accessor for ExperienceEvent);

        return;
      }

      goto LABEL_22;
    }

    if (a2 ^ 3 | a3)
    {
LABEL_22:

      return;
    }

    v84 = v38;
    v71 = *(v5 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment);

    v72._countAndFlagsBits = sub_10007EBCC(a2, a3, 3u);
    v89 = 0xD000000000000014;
    v90 = 0x80000001002A4CE0;
    String.append(_:)(v72);

    v73 = v90;
    v88 = v89;
    v74 = v87;
    *v87 = xmmword_10026F060;
    *(v74 + 16) = 4;
    swift_storeEnumTagMultiPayload();
    v75 = *(v71 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v76 = v86;
    v77 = (v86 + *(v10 + 48));
    v78 = (v86 + *(v10 + 64));
    sub_1001E9020(v74, v86, type metadata accessor for ExperienceEvent);
    v79 = v84;
    *v77 = v36;
    v77[1] = v79;
    *v78 = v88;
    v78[1] = v73;
    PassthroughSubject.send(_:)();
    sub_1000097E8(v76, &unk_10034C700, &qword_100273D30);
    sub_1001E9088(v74, type metadata accessor for ExperienceEvent);

    v46 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v46, v80, "@KPI NearbyInteraction.hint-ui-did-appear", v81, 2u);
    }

LABEL_12:
    return;
  }

  v84 = v38;
  v85 = v36;
  v88 = v33;
  v40 = *(v5 + OBJC_IVAR____TtC17proximitycontrold22ClassicBannerPresenter_environment);
  if (v39)
  {

    v56._countAndFlagsBits = sub_10007EBCC(a2, a3, 1u);
    v89 = 0xD000000000000014;
    v90 = 0x80000001002A4CE0;
    String.append(_:)(v56);

    v42 = v89;
    v43 = v90;
    v44 = v87;
    *v87 = a2;
    *(v44 + 8) = a3;
    v45 = 2;
  }

  else
  {

    v41._countAndFlagsBits = sub_10007EBCC(a2, a3, 0);
    v89 = 0xD000000000000014;
    v90 = 0x80000001002A4CE0;
    String.append(_:)(v41);

    v42 = v89;
    v43 = v90;
    v44 = v87;
    *v87 = a2;
    *(v44 + 8) = a3;
    v45 = 1;
  }

  *(v44 + 16) = v45;
  swift_storeEnumTagMultiPayload();
  v57 = *(v40 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v58 = v86;
  v59 = (v86 + *(v10 + 48));
  v60 = (v86 + *(v10 + 64));
  sub_1001E9020(v44, v86, type metadata accessor for ExperienceEvent);
  v61 = v84;
  *v59 = v85;
  v59[1] = v61;
  *v60 = v42;
  v60[1] = v43;

  PassthroughSubject.send(_:)();

  sub_1000097E8(v58, &unk_10034C700, &qword_100273D30);
  sub_1001E9088(v44, type metadata accessor for ExperienceEvent);
}

void sub_1001E85A8()
{
  v0 = [objc_opt_self() localizedStringForKey:16];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  qword_10034C350 = v1;
  *algn_10034C358 = v3;
}

uint64_t sub_1001E8610@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1001E8690(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001E8714(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1));
}

uint64_t sub_1001E8744(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void *sub_1001E875C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_10034C740, &qword_10028C050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v45[-v7];
  v9 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v45[-v12];
  v2[3] = 0;
  v2[4] = &_swiftEmptySetSingleton;
  v50 = v2 + 4;
  v14 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel__isModulating;
  LOBYTE(v52) = 1;
  Published.init(initialValue:)();
  (*(v10 + 32))(v2 + v14, v13, v9);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___isModulatingPublisher) = 0;
  v15 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel_popSubject;
  v16 = sub_100035D04(&qword_10034C750, &unk_100287670);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v2 + v15) = PassthroughSubject.init()();
  v19 = OBJC_IVAR____TtC17proximitycontrold13HintViewModel__subtitle;
  sub_100035D04(&qword_10034C758, &qword_10028C058);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = 0xE000000000000000;
  *(v2 + v19) = v20;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel____lazy_storage___subtitlePublisher) = 0;
  if (qword_1003391A0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003078(v21, qword_10034C320);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v49 = v5;
    v25 = v24;
    v47 = v24;
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136315138;
    v51 = v26;
    v52 = 60;
    v53 = 0xE100000000000000;
    v46 = v23;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v27 = static String._fromSubstring(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);

    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v32 = *(a1 + 24);
    v33._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 62;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35 = sub_100017494(v52, v53, &v51);

    v36 = v47;
    *(v47 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v22, v46, "Init: session=%s", v36, 0xCu);
    sub_10000903C(v48);

    v5 = v49;
  }

  v2[2] = a1;

  v52 = sub_10008CECC();
  sub_100035D04(&unk_10034C760, qword_10028C060);
  v37 = *(type metadata accessor for ActivityDisplayContext(0) - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10026F050;
  v41 = *(a1 + 24);
  v42 = *&v41[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity];
  v43 = sub_1001F00B0();
  sub_100249BE4(v41, v43, (v40 + v39));
  swift_unknownObjectRelease();
  sub_100035D04(&qword_10033B5C0, &qword_100272060);
  sub_10000E244(&qword_10034C770, &qword_10033B5C0, &qword_100272060);
  Publisher.prepend(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10034C778, &unk_10034C740, &qword_10028C050);
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_1001E8DC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1001E8E10(uint64_t a1)
{
  if (qword_1003391A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034C338);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A4E40, &v10);
    *(v5 + 12) = 2080;
    if (a1)
    {
      swift_unknownObjectRetain();
      sub_100035D04(&unk_10034C780, &unk_10028C078);
      v6 = String.init<A>(describing:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    v9 = sub_100017494(v6, v8, &v10);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: bannerSource=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001E9020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E9088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001E90E8()
{
  result = qword_10034C800;
  if (!qword_10034C800)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034C800);
  }

  return result;
}