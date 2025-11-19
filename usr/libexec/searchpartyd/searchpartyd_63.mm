uint64_t sub_100691CBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v28 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694648 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v13, qword_10177AB70);
  Row.subscript.getter();
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    UUID.init()();
    if (v14(v7, 1, v8) != 1)
    {
      sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v15, qword_10177AB88);
  v16 = type metadata accessor for SharingCircleSecret();
  v17 = &a2[v16[6]];
  Row.subscript.getter();
  if (qword_101694638 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v18, qword_10177AB40);
  Row.subscript.getter();
  v19 = v28[2];
  v20 = v28[3];
  if (qword_101694640 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v21, qword_10177AB58);
  Row.subscript.getter();
  v22 = type metadata accessor for Row();
  (*(*(v22 - 8) + 8))(a1, v22);
  v23 = v28[0];
  v24 = v28[1];
  *a2 = xmmword_10138C660;
  result = (*(v9 + 32))(&a2[v16[5]], v12, v8);
  v26 = &a2[v16[8]];
  *v26 = v19;
  *(v26 + 1) = v20;
  v27 = &a2[v16[7]];
  *v27 = v23;
  *(v27 + 1) = v24;
  return result;
}

uint64_t sub_10069208C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1006921A8, v1, 0);
}

uint64_t sub_1006921A8()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = v0[8];
      v6 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      v22 = v8;
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[2];
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret);
      v13 = swift_task_alloc();
      v13[2] = v12;
      v13[3] = v6;
      v13[4] = v5;
      (*(v11 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v10);
      Connection.transaction(_:block:)();
      (*(v11 + 8))(v9, v10);

      (*(v7 + 8))(v6, v22);
      v14 = v0[9];
      v15 = v0[6];

      v16 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  v19 = v0[9];
  v20 = v0[6];

  v16 = v0[1];
LABEL_7:

  return v16();
}

uint64_t sub_1006923E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a2;
  v61 = a3;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v59 = &v48 - v8;
  v9 = type metadata accessor for OnConflict();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Insert();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v58);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SharingCircleSecret();
  v19 = *(*(v18 - 1) + 64);
  result = __chkstk_darwin(v18);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (v24)
  {
    v52 = (v10 + 8);
    v53 = (v10 + 104);
    v49 = (v14 + 8);
    v25 = *(v21 + 80);
    v51 = enum case for OnConflict.ignore(_:);
    result = a1 + ((v25 + 32) & ~v25);
    v48 = *(v21 + 72);
    v50 = xmmword_101391790;
    v56 = v13;
    v57 = v9;
    v54 = v18;
    v55 = v17;
    while (1)
    {
      v62 = result;
      v63 = v24;
      v68 = v4;
      sub_100694B20(result, v23, type metadata accessor for SharingCircleSecret);
      v26 = v18[8];
      v27 = &v23[v18[7]];
      v28 = *v27;
      v64 = *(v27 + 1);
      v30 = *&v23[v26];
      v29 = *&v23[v26 + 8];
      (*v53)(v13, v51, v9);
      sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
      v31 = *(type metadata accessor for Setter() - 8);
      v32 = *(v31 + 72);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v50;
      if (qword_101694638 != -1)
      {
        v47 = v34;
        swift_once();
        v34 = v47;
      }

      v65 = v34;
      v35 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
      sub_1000076D4(v35, qword_10177AB40);
      v66 = v30;
      v67 = v29;
      <- infix<A>(_:_:)();
      if (qword_101694640 != -1)
      {
        swift_once();
      }

      v36 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
      sub_1000076D4(v36, qword_10177AB58);
      v66 = v28;
      v67 = v64;
      <- infix<A>(_:_:)();
      if (qword_101694648 != -1)
      {
        swift_once();
      }

      v37 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
      sub_1000076D4(v37, qword_10177AB70);
      v18 = v54;
      v38 = v54[5];
      v39 = type metadata accessor for UUID();
      v40 = *(v39 - 8);
      v41 = &v23[v38];
      v42 = v59;
      (*(v40 + 16))(v59, v41, v39);
      (*(v40 + 56))(v42, 0, 1, v39);
      <- infix<A>(_:_:)();
      sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694650 != -1)
      {
        swift_once();
      }

      v43 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v43, qword_10177AB88);
      v44 = &v23[v18[6]];
      <- infix<A>(_:_:)();
      type metadata accessor for Table();
      v45 = v55;
      v13 = v56;
      QueryType.insert(or:_:)();

      v9 = v57;
      (*v52)(v13, v57);
      v46 = v68;
      Connection.run(_:)();
      v4 = v46;
      if (v46)
      {
        break;
      }

      (*v49)(v45, v58);
      sub_100694BEC(v23, type metadata accessor for SharingCircleSecret);
      result = v62 + v48;
      v24 = v63 - 1;
      if (v63 == 1)
      {
        return result;
      }
    }

    (*v49)(v45, v58);
    return sub_100694BEC(v23, type metadata accessor for SharingCircleSecret);
  }

  return result;
}

uint64_t sub_100692A94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100692BB0, v1, 0);
}

uint64_t sub_100692BB0()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);

    v4 = sub_1002072CC();
    if (v4)
    {
      v5 = v4;
      v7 = v0[8];
      v6 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      v22 = v8;
      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[2];
      (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret);
      v13 = swift_task_alloc();
      v13[2] = v6;
      v13[3] = v12;
      v13[4] = v5;
      (*(v11 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v10);
      Connection.transaction(_:block:)();
      (*(v11 + 8))(v9, v10);

      (*(v7 + 8))(v6, v22);
      v14 = v0[9];
      v15 = v0[6];

      v16 = v0[1];
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  v19 = v0[9];
  v20 = v0[6];

  v16 = v0[1];
LABEL_7:

  return v16();
}

uint64_t sub_100692E28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a6;
  v23[1] = a2;
  v23[3] = a3;
  v23[2] = a1;
  v25 = type metadata accessor for Delete();
  v24 = *(v25 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v25);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v23 - v14;
  v16 = type metadata accessor for Table();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a4 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v21, a5);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v12 + 8))(v15, v11);
  QueryType.delete()();
  Connection.run(_:)();
  (*(v24 + 8))(v10, v25);
  return (*(v17 + 8))(v20, v16);
}

double sub_100693158@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for Row();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  if (*a2 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v13, a3);
  Row.subscript.getter();
  (*(v9 + 8))(v12, v8);
  result = *&v15;
  *a4 = v15;
  return result;
}

uint64_t sub_1006932B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100690004(a1, a2);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v4 = v5;
  }

  return result;
}

uint64_t sub_100693310()
{
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v0, qword_10177A948);
  type metadata accessor for UUID();
  return Row.subscript.getter();
}

uint64_t sub_1006933B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Row();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return sub_100691CBC(v7, a2);
}

uint64_t sub_10069348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Row();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if (qword_101694618 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v9, qword_10177AAE0);
  type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_101694620 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177AAF8);
  v10 = a2 + *(type metadata accessor for KeyDropLostItemDates(0) + 20);
  Row.subscript.getter();
  return (*(v5 + 8))(v8, v4);
}

__n128 sub_100693668@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Row();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  sub_100694218(v8, v14);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_allocError();
    *v11 = v2;
  }

  else
  {
    v12 = v14[3];
    *(a2 + 32) = v14[2];
    *(a2 + 48) = v12;
    *(a2 + 64) = v15;
    result = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10069379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Row();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  sub_100694218(v8, v17);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v11 = v2;
  }

  else
  {
    v12 = a2 + *(sub_1000BC4D4(&qword_101697708, &qword_10138C3C0) + 48);
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    v13 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v13, qword_10177A948);
    type metadata accessor for UUID();
    result = Row.subscript.getter();
    v14 = v17[3];
    *(v12 + 32) = v17[2];
    *(v12 + 48) = v14;
    *(v12 + 64) = v18;
    v15 = v17[1];
    *v12 = v17[0];
    *(v12 + 16) = v15;
  }

  return result;
}

double sub_10069396C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for Row();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  sub_100694708(v8, v14);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_allocError();
    *v11 = v2;
  }

  else
  {
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
    result = *&v15;
    v13 = v16;
    a2[2] = v15;
    a2[3] = v13;
  }

  return result;
}

uint64_t sub_100693A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Row();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  result = sub_1006944BC(v8);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v14 = v2;
  }

  else
  {
    *a2 = result & 1;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
  }

  return result;
}

double sub_100693BAC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Row();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if (qword_1016945B0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v9, qword_10177A9A8);
  Row.subscript.getter();
  (*(v5 + 8))(v8, v4);
  result = *&v11;
  *a2 = v11;
  return result;
}

uint64_t sub_100693D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Row();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if (qword_101694618 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v9, qword_10177AAE0);
  type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_101694620 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177AAF8);
  v10 = type metadata accessor for DelegatedBeaconLostDates(0);
  v11 = a2 + *(v10 + 20);
  Row.subscript.getter();
  if (qword_101694628 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177AB10);
  v12 = a2 + *(v10 + 24);
  Row.subscript.getter();
  return (*(v5 + 8))(v8, v4);
}

double sub_100693F50@<D0>(_OWORD *a1@<X8>)
{
  if (qword_101694670 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v2, qword_10177ABE8);
  Row.subscript.getter();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_100693FFC()
{
  swift_defaultActor_initialize();
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  v1 = type metadata accessor for ItemSharingKeyDatabase();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 112) = sub_10031C764(v5);
  return v0;
}

__n128 sub_100694218@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1016945C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v4, qword_10177A9D8);
  Row.subscript.getter();
  if (qword_1016945C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v5, qword_10177A9F0);
  Row.subscript.getter();
  if (qword_1016945D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v6, qword_10177AA08);
  Row.subscript.getter();
  if (qword_1016945D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v4, qword_10177AA20);
  Row.subscript.getter();
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v6, qword_10177AA38);
  Row.subscript.getter();
  v7 = type metadata accessor for Row();
  (*(*(v7 - 8) + 8))(a1, v7);
  result = v9;
  *a2 = v9;
  *(a2 + 16) = v9.n128_u64[0];
  *(a2 + 24) = v9;
  *(a2 + 40) = v9;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_1006944BC(uint64_t a1)
{
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v3 = sub_1000076D4(v2, qword_10177A978);
  sub_100028088();
  Row.subscript.getter();
  if (v10 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (v10)
    {
      sub_10022A480();
      swift_allocError();
      *v7 = 0;
      swift_willThrow();
      v8 = type metadata accessor for Row();
      (*(*(v8 - 8) + 8))(a1, v8);
      return v3;
    }

    v3 = 0;
  }

  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v4, qword_10177A960);
  sub_100029580();
  Row.subscript.getter();
  if (qword_101694630 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v5, qword_10177AB28);
  Row.subscript.getter();
  v6 = type metadata accessor for Row();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v3;
}

uint64_t sub_100694708@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v4, qword_10177AA38);
  Row.subscript.getter();
  if (*(&v19[0] + 1))
  {
    if (qword_101694658 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v4, qword_10177ABA0);
    Row.subscript.getter();
    if (*(&v20 + 1))
    {
      v21 = *&v19[0];
      if (qword_101694660 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v4, qword_10177ABB8);
      Row.subscript.getter();
      v5 = v19[0];
      if (qword_101694668 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v4, qword_10177ABD0);
      Row.subscript.getter();
      v6 = type metadata accessor for Row();
      (*(*(v6 - 8) + 8))(a1, v6);
      *&v15 = v21;
      *(&v15 + 1) = *(&v19[0] + 1);
      v16 = v20;
      v17 = v19[0];
      v18 = v19[0];
      *&v19[0] = v21;
      v19[1] = v20;
      v19[2] = v5;
      v19[3] = v18;
      sub_1006941BC(&v15, v14);
      result = sub_100694A6C(v19);
      v8 = v16;
      *a2 = v15;
      a2[1] = v8;
      v9 = v18;
      a2[2] = v17;
      a2[3] = v9;
    }

    else
    {
      sub_10020223C();
      swift_allocError();
      *v12 = 5;
      *(v12 + 4) = 1;
      swift_willThrow();
      v13 = type metadata accessor for Row();
      (*(*(v13 - 8) + 8))(a1, v13);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v10 = 5;
    *(v10 + 4) = 1;
    swift_willThrow();
    v11 = type metadata accessor for Row();
    return (*(*(v11 - 8) + 8))(a1, v11);
  }

  return result;
}

uint64_t sub_100694B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100694B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedBeaconLostDates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100694BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100694C6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1006898E8();
}

uint64_t sub_100694CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697700, &unk_10139FB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100694DE4(void *a1, unsigned int a2)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v6 = sub_10098E0F0(a2);
  v7 = v4;
  sub_10015049C(v8, v8[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, v7);
  return sub_100007BAC(v8);
}

uint64_t sub_100694E9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100694F78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
  }

  return result;
}

unint64_t sub_100694EF4(uint64_t a1)
{
  *(a1 + 8) = sub_100694F24();
  result = sub_10059BE50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100694F24()
{
  result = qword_1016A77E0;
  if (!qword_1016A77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A77E0);
  }

  return result;
}

uint64_t sub_100694F78(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = v11[4];
  sub_10015049C(v11, v11[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
    goto LABEL_5;
  }

  v7 = v5;
  v8 = v6;
  sub_100017D5C(v5, v6);
  v4 = sub_10098E844(v7, v8);
  sub_100016590(v7, v8);
  if ((v4 & 0x100000000) != 0)
  {
    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
LABEL_5:
    sub_100007BAC(v11);
    sub_100007BAC(a1);
    return v4;
  }

  sub_100016590(v7, v8);
  sub_100007BAC(v11);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_100695108(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016A77E8, &unk_1013C53B0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

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
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_10004D07C((v28 + 8), v26);
    sub_10004D07C(v26, v28);
    v16 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_10004D07C(v28, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1006953B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&unk_1016B1490, &unk_1013C5310);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_10004D07C(&v27, v29);
        sub_10004D07C(v29, v30);
        sub_10004D07C(v30, &v28);
        result = sub_100771D58(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100007BAC(v12);
          result = sub_10004D07C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_10004D07C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100695608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&qword_1016A0B08, &unk_1013C5390);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        swift_dynamicCast();
        sub_10004D07C(&v27, v29);
        sub_10004D07C(v29, v30);
        sub_10004D07C(v30, &v28);
        result = sub_100771D58(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100007BAC(v12);
          result = sub_10004D07C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_10004D07C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100695894(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(_OWORD *, _BYTE *))
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(a2, a3);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = (v6 + 8);

  v13 = 0;
  while (v9)
  {
LABEL_15:
    v17 = __clz(__rbit64(v9)) | (v13 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_100013894(*(a1 + 56) + 32 * v17, v39);
    *&v38 = v20;
    *(&v38 + 1) = v19;
    v36[2] = v38;
    v37[0] = v39[0];
    v37[1] = v39[1];
    v36[0] = v38;

    swift_dynamicCast();
    a4(v37, v31);
    v32 = v28;
    v33 = v29;
    v34 = v30;
    a4(v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    a4(v35, v36);
    result = AnyHashable._rawHashValue(seed:)(v6[5]);
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*&v11[8 * (v22 >> 6)]) == 0)
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      while (++v23 != v25 || (v24 & 1) == 0)
      {
        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *&v11[8 * v23];
        if (v27 != -1)
        {
          v14 = __clz(__rbit64(~v27)) + (v23 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v14 = __clz(__rbit64((-1 << v22) & ~*&v11[8 * (v22 >> 6)])) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v9 &= v9 - 1;
    *&v11[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
    v15 = v6[6] + 40 * v14;
    *v15 = v28;
    *(v15 + 16) = v29;
    *(v15 + 32) = v30;
    result = (a4)(v36, v6[7] + 32 * v14);
    ++v6[2];
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      return v6;
    }

    v9 = *(a1 + 64 + 8 * v16);
    ++v13;
    if (v9)
    {
      v13 = v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100695B6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000BC4D4(&unk_1016B1490, &unk_1013C5310);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_100013894(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_10004D07C(v29, &v24);

        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        swift_dynamicCast();
        sub_10004D07C(&v25, v27);
        sub_10004D07C(v27, v28);
        sub_10004D07C(v28, &v26);
        result = sub_100771D58(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100007BAC(v12);
          result = sub_10004D07C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_10004D07C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100695DF8()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v14[2] = v14[3];
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100150AB8();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:v14];

  v11 = v14[0];
  if (!v10)
  {
    v13 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v5, v7);

    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100016590(v5, v7);
    return 0;
  }

  v12 = sub_100695894(v14[0], &unk_1016C3040, &qword_1013B6518, sub_1001E6224);

  sub_100016590(v5, v7);

  return v12;
}

unint64_t sub_10069609C(uint64_t a1)
{
  *(a1 + 8) = sub_1006960CC();
  result = sub_10059BFA0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1006960CC()
{
  result = qword_1016A77F8;
  if (!qword_1016A77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A77F8);
  }

  return result;
}

uint64_t sub_100696120()
{
  v1 = v0;
  _StringGuts.grow(_:)(21);
  type metadata accessor for UUID();
  sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();

  v13 = v2;
  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4 = type metadata accessor for KeySyncMetadataDisplay();
  String.append(_:)(*(v1 + v4[5]));
  v5._countAndFlagsBits = 773860640;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v1 + v4[7]));
  v6._countAndFlagsBits = 40;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v12 = *(v1 + v4[6]);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 539828265;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  v9 = v4[8];
  type metadata accessor for Date();
  sub_100003E8C(&qword_1016969A0, &type metadata accessor for Date);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  return v13;
}

uint64_t sub_1006962EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 104) = a3;
  *(v4 + 56) = a1;
  return _swift_task_switch(sub_100696314, 0, 0);
}

uint64_t sub_100696314()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 104);
  v4 = *(v0 + 56);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v4, v0 + 16);
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  sub_10000A748((v0 + 16), v6 + 16);
  *(v6 + 56) = v5;
  *(v6 + 64) = v2;
  *(v6 + 72) = v3 & 1;
  v7 = async function pointer to withTimeout<A>(_:block:)[1];
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_100696458;

  return withTimeout<A>(_:block:)(v8, 0x40AAD21B3B700000, 3, &unk_101390908, v6, &type metadata for () + 8);
}

uint64_t sub_100696458()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100696574;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = Database.await(state:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100696574()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

id sub_1006965D8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v201 = a3;
  v202 = a2;
  v208 = a1;
  v174 = type metadata accessor for StableIdentifier();
  v4 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v175 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v181 = *(v188 - 8);
  v6 = *(v181 + 64);
  __chkstk_darwin(v188);
  v180 = &v172 - v7;
  v8 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v179 = (&v172 - v10);
  v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v187 = &v172 - v13;
  v186 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v178 = *(v186 - 8);
  v14 = *(v178 + 64);
  __chkstk_darwin(v186);
  v176 = &v172 - v15;
  v16 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v177 = (&v172 - v18);
  v19 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v183 = &v172 - v21;
  v192 = type metadata accessor for OwnedBeaconRecord();
  v182 = *(v192 - 8);
  v22 = *(v182 + 64);
  __chkstk_darwin(v192);
  v191 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v195 = &v172 - v26;
  v27 = type metadata accessor for ShareRecord();
  v190 = *(v27 - 8);
  v28 = *(v190 + 64);
  __chkstk_darwin(v27 - 8);
  v189 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v198 = &v172 - v32;
  v33 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v172 - v35;
  v203 = type metadata accessor for DirectorySequence();
  v207 = *(v203 - 8);
  v37 = *(v207 + 64);
  __chkstk_darwin(v203);
  v39 = &v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for URL();
  v206 = *(v210 - 8);
  v40 = *(v206 + 8);
  v41 = __chkstk_darwin(v210);
  v185 = &v172 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v184 = &v172 - v44;
  v45 = __chkstk_darwin(v43);
  v200 = &v172 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v172 - v48;
  __chkstk_darwin(v47);
  v205 = &v172 - v50;
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v204 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v51 = swift_allocObject();
  v196 = xmmword_10138BBE0;
  *(v51 + 16) = xmmword_10138BBE0;
  v214 = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v52 = String.init<A>(describing:)();
  v54 = v53;
  *(v51 + 56) = &type metadata for String;
  v55 = sub_100008C00();
  *(v51 + 32) = v52;
  *(v51 + 40) = v54;
  *(v51 + 96) = &type metadata for String;
  *(v51 + 104) = v55;
  v197 = v55;
  *(v51 + 64) = v55;
  *(v51 + 72) = 0xD000000000000017;
  *(v51 + 80) = 0x800000010135D780;
  os_log(_:dso:log:_:_:)();

  v199 = v3;
  v56 = v3[35];
  sub_100025020(v208, &v212);
  if (!v213)
  {
    sub_10000B3A8(&v212, &qword_101696920, &unk_10138B200);
    return (v202)(0);
  }

  v173 = v49;
  v194 = v36;
  sub_10000A748(&v212, &v214);
  v57 = *(v56 + 168);
  v58 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v59 = v210;
  sub_1000076D4(v210, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v58);
  v211 = _swiftEmptyArrayStorage;
  *&v212 = _swiftEmptyArrayStorage;
  v60 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v61 = v194;
  DirectorySequence.next()();
  v62 = v59;
  v63 = v206;
  v64 = *(v206 + 6);
  v65 = v64(v61, 1, v62);
  v193 = v56;
  if (v65 != 1)
  {
    v209 = v64;
    v67 = *(v63 + 4);
    v68 = v194;
    v69 = v173;
    do
    {
      v67(v69, v68, v62);
      v70 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v69, v57, &v212, &v211);
      objc_autoreleasePoolPop(v70);
      (*(v63 + 1))(v69, v210);
      DirectorySequence.next()();
      v62 = v210;
    }

    while (v209(v68, 1, v210) != 1);
  }

  (*(v207 + 8))(v39, v203);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v71 = static OS_os_log.default.getter();
  v72 = swift_allocObject();
  *(v72 + 16) = v196;
  v73 = v212;
  v74 = *(v212 + 16);
  *(v72 + 56) = &type metadata for Int;
  *(v72 + 64) = &protocol witness table for Int;
  *(v72 + 32) = v74;
  sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL);

  v75 = v205;
  v76 = dispatch thunk of CustomStringConvertible.description.getter();
  v77 = v197;
  *(v72 + 96) = &type metadata for String;
  *(v72 + 104) = v77;
  *(v72 + 72) = v76;
  *(v72 + 80) = v78;
  os_log(_:dso:log:_:_:)();

  v79 = *(v206 + 1);
  v197 = v206 + 8;
  *&v196 = v79;
  v79(v75, v62);

  v80 = *(v73 + 16);
  if (v80)
  {
    *&v212 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v81 = v73 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
    v82 = *(v190 + 72);
    v83 = v199;
    v84 = v189;
    do
    {
      sub_100721C9C(v81, v84, type metadata accessor for ShareRecord);
      sub_100156F5C();
      sub_100721D04(v84, type metadata accessor for ShareRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v85 = *(v212 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v81 += v82;
      --v80;
    }

    while (v80);

    v86 = v212;
  }

  else
  {

    v86 = _swiftEmptyArrayStorage;
    v83 = v199;
  }

  sub_10112A654(v86);

  v87 = v215;
  v88 = v216;
  v89 = sub_1000035D0(&v214, v215);
  v90 = sub_100B005BC(v89, v193, v87, v88);
  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v90 setShares:isa];

  v92 = v208;
  v93 = v200;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v94 = sub_1011A30E0(v92);
  [v90 setSeparationState:v94];

  v95 = type metadata accessor for UUID();
  v96 = *(v95 - 8);
  v97 = v198;
  v96[2](v198, v92, v95);
  v194 = v96;
  v98 = v96[7];
  v205 = v95;
  (v98)(v97, 0, 1, v95);
  v99 = sub_1009C75D0(4, v97);
  sub_10000B3A8(v97, &qword_1016980D0, &unk_10138F3B0);
  sub_10112A684(v99);

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  v209 = v90;
  sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
  v100 = v209;
  v101 = Set._bridgeToObjectiveC()().super.isa;

  [v100 setSafeLocations:v101];

  v102 = v215;
  v103 = v216;
  v104 = sub_1000035D0(&v214, v215);
  [v100 setCanBeLeashedByHost:{sub_100A05A00(v104, v83, v102, v103) & 1}];
  result = [v100 setBeaconSeparationState:sub_1009C7E64(v92)];
  v105 = *(v83 + 40);
  v106 = v207;
  if (v105)
  {
    v107 = *(v105 + 280);
    v108 = *(v83 + 40);

    static os_log_type_t.info.getter();
    v109 = v195;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_101385D80;
    *(v110 + 56) = &type metadata for Bool;
    *(v110 + 64) = &protocol witness table for Bool;
    *(v110 + 32) = v107;
    os_log(_:dso:log:_:_:)();

    v111 = v209;
    [v209 setConnectionAllowed:v107];
    sub_10001F280(&v214, &v212);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v112 = type metadata accessor for SharedBeaconRecord(0);
    v113 = swift_dynamicCast();
    v114 = *(*(v112 - 8) + 56);
    if (v113)
    {
      v114(v109, 0, 1, v112);
      sub_10000B3A8(v109, &unk_101698C30, &unk_101392630);
      [v111 setConnectableDeviceCount:0];
LABEL_37:
      v170 = v202;
      v171 = v111;
      v170(v111);

      return sub_100007BAC(&v214);
    }

    v114(v109, 1, 1, v112);
    sub_10000B3A8(v109, &unk_101698C30, &unk_101392630);
    sub_10001F280(&v214, &v212);
    v115 = v183;
    v116 = v192;
    v117 = swift_dynamicCast();
    v118 = *(v182 + 56);
    if ((v117 & 1) == 0)
    {
      v118(v115, 1, 1, v116);
      sub_10000B3A8(v115, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_37;
    }

    v118(v115, 0, 1, v116);
    sub_10002AB74(v115, v191, type metadata accessor for OwnedBeaconRecord);
    v119 = *(v193 + 168);
    if (qword_101694EB8 != -1)
    {
      swift_once();
    }

    v120 = v210;
    v121 = sub_1000076D4(v210, qword_10177C0D8);
    v122 = *(v206 + 2);
    v122(v93, v121, v120);
    v123 = v184;
    v122(v184, v93, v120);
    v124 = v186;
    v198 = *(v186 + 40);
    v125 = *(v106 + 56);
    v126 = v106 + 56;
    v127 = v176;
    v125(&v176[v198], 1, 1, v203);
    v122(v127, v123, v120);
    *(v127 + *(v124 + 36)) = v119;
    v204 = v122;
    v122(v185, v123, v120);

    v128 = v187;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v129 = v196;
    (v196)(v123, v120);
    v129(v200, v120);
    v206 = v125;
    v207 = v126;
    v125(v128, 0, 1, v203);
    sub_10002311C(v128, v127 + v198, &qword_1016A5970, &unk_1013B3470);
    v130 = *(v178 + 56);
    v131 = v177;
    v132 = v186;
    v130(v177, 1, 1, v186);
    sub_10000B3A8(v131, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v127, v131, &qword_1016A7828, &unk_1013D7340);
    v130(v131, 0, 1, v132);
    v198 = sub_100B34BBC(v131);
    sub_10000B3A8(v131, &qword_1016A7830, &unk_1013D69E0);
    v193 = *(v193 + 168);
    if (qword_101694680 != -1)
    {
      swift_once();
    }

    v133 = sub_1000076D4(v120, qword_10177AC60);
    v134 = v200;
    v135 = v204;
    v204(v200, v133, v120);
    v136 = v184;
    v135(v184, v134, v120);
    v195 = *(v188 + 40);
    v137 = v188;
    v138 = v180;
    v206((v180 + v195), 1, 1, v203);
    v135(v138, v136, v120);
    *(v138 + *(v137 + 36)) = v193;
    v135(v185, v136, v120);

    v139 = v187;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v140 = v196;
    (v196)(v136, v120);
    v140(v134, v120);
    v206(v139, 0, 1, v203);
    sub_10002311C(v139, v138 + v195, &qword_1016A5970, &unk_1013B3470);
    v141 = *(v181 + 56);
    v142 = v179;
    v143 = v188;
    v141(v179, 1, 1, v188);
    sub_10000B3A8(v142, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v138, v142, &qword_1016A5978, &qword_101410D20);
    v141(v142, 0, 1, v143);
    v144 = sub_100B33E08(v142);
    v145 = sub_10000B3A8(v142, &qword_1016A5980, &unk_1013B3480);
    __chkstk_darwin(v145);
    v146 = v208;
    *(&v172 - 2) = v208;
    v147 = *(sub_10013CF58(sub_100721E70, (&v172 - 4), v198) + 16);

    __chkstk_darwin(v148);
    *(&v172 - 2) = v146;
    v149 = *(sub_10013CEF0(sub_10062CF74, (&v172 - 4), v144) + 16);

    v150 = v147 + v149;
    if (__OFADD__(v147, v149))
    {
      __break(1u);
    }

    else
    {
      v151 = *(v199 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);
      CurrentValueSubject.value.getter();
      v152 = v212;
      result = sub_10069CA80(v146, v212);
      v153 = v175;
      v111 = v209;
      if (!__OFADD__(v152, v150))
      {
        [v209 setConnectableDeviceCount:v152 + v150];
        sub_100721C9C(v191 + *(v192 + 24), v153, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 2)
        {
          v162 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v163 = *(v153 + v162[12] + 8);

          v164 = *(v153 + v162[16] + 8);

          v165 = (v153 + v162[20]);
          v166 = *v165;
          v167 = v165[1];
          v168 = *(v153 + v162[28] + 8);

          v169 = String._bridgeToObjectiveC()();

          [v111 setSerialNumber:v169];

          sub_100721D04(v191, type metadata accessor for OwnedBeaconRecord);
          (*(v194 + 1))(v153, v205);
        }

        else
        {
          if (EnumCaseMultiPayload == 1)
          {
            v155 = v153[1];
            v156 = v153[3];
            v157 = v153[4];
            v158 = v153[5];

            v159 = String._bridgeToObjectiveC()();

            [v111 setSerialNumber:v159];

            v160 = type metadata accessor for OwnedBeaconRecord;
            v161 = v191;
          }

          else
          {
            [v111 setSerialNumber:0];
            sub_100721D04(v191, type metadata accessor for OwnedBeaconRecord);
            v160 = type metadata accessor for StableIdentifier;
            v161 = v153;
          }

          sub_100721D04(v161, v160);
        }

        goto LABEL_37;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100697FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a3;
  v24 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = 0xD000000000000022;
  *(v12 + 80) = 0x800000010135CC20;
  os_log(_:dso:log:_:_:)();

  v17 = v3[7];
  v18 = swift_allocObject();
  v20 = v24;
  v19 = v25;
  v18[2] = v3;
  v18[3] = v20;
  v18[4] = v26;
  v18[5] = v19;
  aBlock[4] = sub_10071F068;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E748;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v29 + 8))(v7, v4);
  (*(v27 + 8))(v11, v28);
}

uint64_t sub_1006983B8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B060);
  sub_1000076D4(v0, qword_10177B060);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100698438(int a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t (*a4)(uint64_t a1))
{
  v55 = a4;
  v54 = a3;
  LODWORD(v58) = a1;
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v9 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C418);
  v13 = a2;
  sub_100721C9C(a2, v11, type metadata accessor for OwnedBeaconGroup);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v57 = v6;
    v17 = v7;
    v18 = v16;
    v19 = v9;
    v20 = swift_slowAlloc();
    v59 = v20;
    *v18 = 136315138;
    v21 = sub_10051F7B0(v20);
    v23 = v22;
    sub_100721D04(v11, type metadata accessor for OwnedBeaconGroup);
    v24 = sub_1000136BC(v21, v23, &v59);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "updateFindMyNetwork for %s", v18, 0xCu);
    sub_100007BAC(v20);
    v9 = v19;

    v7 = v17;
    v6 = v57;
  }

  else
  {

    sub_100721D04(v11, type metadata accessor for OwnedBeaconGroup);
  }

  v53 = v7;
  v25 = v56;
  v26 = v56[35];
  v27 = v13;
  sub_100721C9C(v13, v9, type metadata accessor for OwnedBeaconGroup);
  v28 = *(v6 + 80);
  v57 = ~v28;
  v29 = swift_allocObject();
  v30 = v58 & 1;
  *(v29 + 16) = v58 & 1;
  v58 = v29;
  sub_10002AB74(v9, v29 + ((v28 + 17) & ~v28), type metadata accessor for OwnedBeaconGroup);
  sub_100721C9C(v13, v9, type metadata accessor for OwnedBeaconGroup);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v32 = v55;
  *(v31 + 24) = v54;
  *(v31 + 32) = v32;
  *(v31 + 40) = v25;
  sub_10002AB74(v9, v31 + ((v28 + 48) & ~v28), type metadata accessor for OwnedBeaconGroup);

  static os_log_type_t.default.getter();
  v33 = v9;
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_101385D80;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_100008C00();
  *(v34 + 32) = 0x65736C6166;
  *(v34 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v35 = objc_autoreleasePoolPush();
  sub_1011218E0(v27);
  v37 = v36;
  v56 = v36;
  objc_autoreleasePoolPop(v35);
  v38 = *(v26 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  v52 = v26;
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v55 = type metadata accessor for OwnedBeaconGroup;
  sub_100721C9C(v27, v33, type metadata accessor for OwnedBeaconGroup);
  v51 = v27;
  v39 = v57;
  v40 = v33;
  v41 = (v28 + 32) & v57;
  v42 = v53;
  v43 = swift_allocObject();
  v44 = v58;
  *(v43 + 16) = sub_100721A9C;
  *(v43 + 24) = v44;
  v54 = type metadata accessor for OwnedBeaconGroup;
  sub_10002AB74(v40, v43 + v41, type metadata accessor for OwnedBeaconGroup);

  sub_100FDCA40(v37, sub_100721B8C, v43);

  v45 = swift_allocObject();
  *(v45 + 16) = sub_100721B10;
  *(v45 + 24) = v31;

  Future.addFailure(block:)();

  sub_100721C9C(v51, v40, v55);
  v46 = (v28 + 16) & v39;
  v47 = (v42 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_10002AB74(v40, v48 + v46, v54);
  *(v48 + v47) = v52;
  v49 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v49 = sub_100721B10;
  v49[1] = v31;

  Future.addSuccess(block:)();
}

void sub_100698AE4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a3);
}

uint64_t sub_100698B50(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + *(result + 32)) = a2;
  if ((a2 & 1) == 0)
  {
    sub_100721C9C(a3, v10, type metadata accessor for OwnedBeaconGroup);
    sub_100522190();
    v11 = *&v10[*(v6 + 40)];

    sub_100721D04(v10, type metadata accessor for OwnedBeaconGroup);
    v12 = *(v6 + 40);
    v13 = *(a1 + v12);

    *(a1 + v12) = v11;
  }

  return result;
}

uint64_t sub_100698C48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a5;
  v79 = a6;
  v89 = a3;
  v90 = a4;
  v80 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v7 - 8);
  v88 = v7;
  v8 = *(v87 + 64);
  __chkstk_darwin(v7);
  v84 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = *(v85 + 64);
  __chkstk_darwin(v10);
  v83 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  __chkstk_darwin(v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OwnedBeaconGroup(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v77 - v23;
  __chkstk_darwin(v22);
  v26 = &v77 - v25;
  v27 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v77 - v29);
  sub_1000D2A70(a1, &v77 - v29, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177C418);
    sub_100721C9C(v79, v21, type metadata accessor for OwnedBeaconGroup);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136315394;
      v37 = sub_10051F7B0(v36);
      v39 = v38;
      sub_100721D04(v21, type metadata accessor for OwnedBeaconGroup);
      v40 = sub_1000136BC(v37, v39, &aBlock);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      v91 = v31;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v41 = String.init<A>(describing:)();
      v43 = sub_1000136BC(v41, v42, &aBlock);

      *(v35 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to set FMN status for %s. Error %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v21, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v63 = v81;
    v62 = v82;
    (*(v81 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v82);
    v64 = static OS_dispatch_queue.global(qos:)();
    (*(v63 + 8))(v16, v62);
    v65 = swift_allocObject();
    v66 = v90;
    v65[2] = v89;
    v65[3] = v66;
    v65[4] = v31;
    v96 = sub_1002EF79C;
    v97 = v65;
    aBlock = _NSConcreteStackBlock;
    v93 = 1107296256;
    v94 = sub_100006684;
    v95 = &unk_10162F670;
    v67 = _Block_copy(&aBlock);

    swift_errorRetain();
    v68 = v83;
    static DispatchQoS.unspecified.getter();
    v91 = _swiftEmptyArrayStorage;
    sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v69 = v84;
    v70 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v67);

    (*(v87 + 8))(v69, v70);
    (*(v85 + 8))(v68, v86);
  }

  sub_10002AB74(v30, v26, type metadata accessor for OwnedBeaconGroup);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000076D4(v44, qword_10177C418);
  sub_100721C9C(v26, v24, type metadata accessor for OwnedBeaconGroup);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136315138;
    v49 = sub_10051F7B0(v48);
    v51 = v50;
    sub_100721D04(v24, type metadata accessor for OwnedBeaconGroup);
    v52 = sub_1000136BC(v49, v51, &aBlock);

    *(v47 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v45, v46, "Successfully set FMN status for %s", v47, 0xCu);
    sub_100007BAC(v48);

    if ((v80 & 1) == 0)
    {
LABEL_10:
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v54 = v81;
      v53 = v82;
      (*(v81 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v82);
      v55 = static OS_dispatch_queue.global(qos:)();
      (*(v54 + 8))(v16, v53);
      v56 = swift_allocObject();
      v57 = v90;
      *(v56 + 16) = v89;
      *(v56 + 24) = v57;
      v96 = sub_100470308;
      v97 = v56;
      aBlock = _NSConcreteStackBlock;
      v93 = 1107296256;
      v94 = sub_100006684;
      v95 = &unk_10162F6C0;
      v58 = _Block_copy(&aBlock);

      v59 = v83;
      static DispatchQoS.unspecified.getter();
      v91 = _swiftEmptyArrayStorage;
      sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v60 = v84;
      v61 = v88;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v58);

      (*(v87 + 8))(v60, v61);
      (*(v85 + 8))(v59, v86);
      sub_100721D04(v26, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {

    sub_100721D04(v24, type metadata accessor for OwnedBeaconGroup);
    if ((v80 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v72 = *(v78 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator);
  v73 = *(v17 + 28);
  v74 = swift_allocObject();
  v75 = v90;
  *(v74 + 16) = v89;
  *(v74 + 24) = v75;
  v76 = *(v72 + 24);

  sub_1013273F4(&v26[v73], v76, sub_100721C94, v74);

  return sub_100721D04(v26, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_10069978C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v39 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v36 = v6;
    swift_errorRetain();
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C418);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = a2;
      v22 = v21;
      v34 = swift_slowAlloc();
      v41 = a1;
      aBlock[0] = v34;
      *v22 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v23 = String.init<A>(describing:)();
      v33 = v20;
      v25 = a3;
      v26 = sub_1000136BC(v23, v24, aBlock);

      *(v22 + 4) = v26;
      a3 = v25;
      _os_log_impl(&_mh_execute_header, v19, v33, "fakeClassicPairing failed due to %{public}s", v22, 0xCu);
      sub_100007BAC(v34);

      a2 = v35;
    }

    else
    {
    }

    v6 = v36;
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v27 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  aBlock[4] = sub_10041ABC0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162F738;
  v29 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v30 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v40 + 8))(v30, v6);
  (*(v37 + 8))(v12, v38);
}

uint64_t sub_100699CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_100699DB8;

  return daemon.getter();
}

uint64_t sub_100699DB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  v3[10] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[11] = v6;
  v7 = type metadata accessor for Daemon();
  v3[12] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100699F98;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100699F98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {
    v7 = v4[10];

    v4[19] = v1;
    v8 = sub_10069A3F8;
    v9 = 0;
  }

  else
  {
    v8 = sub_10069A0D4;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10069A0D4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  sub_1003A8474();
  v0[15] = v5;
  v0[16] = v2;
  sub_100003E8C(&qword_1016969E0, &type metadata accessor for Daemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10069A37C;
  }

  else
  {
    v8 = sub_10069A1B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10069A1B4()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_10069A268;
  v4 = v0[15];
  v5 = v0[8];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_100659D60(v5, v8, v6, v7);
}

uint64_t sub_10069A268()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10069A634;
  }

  else
  {
    v3 = sub_10069A494;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10069A37C()
{
  v1 = v0[13];
  v2 = v0[10];

  v0[19] = v0[16];

  return _swift_task_switch(sub_10069A3F8, 0, 0);
}

uint64_t sub_10069A3F8()
{
  v1 = v0[19];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(v1);

  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10069A494()
{
  v1 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 64), v1, &qword_1016A7258, &qword_1013B6050);
  v2 = type metadata accessor for OwnerCommandManager.Error();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 56);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 56), &qword_1016A7258, &qword_1013B6050);
    v5 = 0;
  }

  else
  {
    sub_100003E8C(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    v5 = swift_allocError();
    sub_10002AB74(v4, v6, type metadata accessor for OwnerCommandManager.Error);
  }

  v7 = *(v0 + 120);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  (*(v0 + 40))(v5);

  sub_10000B3A8(v8, &qword_1016A7258, &qword_1013B6050);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10069A634()
{
  v1 = v0[15];

  v2 = v0[18];
  v4 = v0[5];
  v3 = v0[6];
  swift_errorRetain();
  v4(v2);

  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10069A6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_10069A7B4;

  return daemon.getter();
}

uint64_t sub_10069A7B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  v3[8] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[9] = v6;
  v7 = type metadata accessor for Daemon();
  v3[10] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_10069A994;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10069A994(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {
    v7 = v4[8];

    v4[17] = v1;
    v8 = sub_10069ADF0;
    v9 = 0;
  }

  else
  {
    v8 = sub_10069AAD0;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10069AAD0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  sub_1003A8474();
  v0[13] = v5;
  v0[14] = v2;
  sub_100003E8C(&qword_1016969E0, &type metadata accessor for Daemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10069AD74;
  }

  else
  {
    v8 = sub_10069ABB0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10069ABB0()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10069AC60;
  v4 = v0[13];
  v5 = v0[6];
  v6 = v0[2];

  return sub_10065C190(v5, v6);
}

uint64_t sub_10069AC60()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10069B02C;
  }

  else
  {
    v3 = sub_10069AE8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10069AD74()
{
  v1 = v0[11];
  v2 = v0[8];

  v0[17] = v0[14];

  return _swift_task_switch(sub_10069ADF0, 0, 0);
}

uint64_t sub_10069ADF0()
{
  v1 = v0[17];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v3(v1);

  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10069AE8C()
{
  v1 = *(v0 + 40);
  sub_1000D2A70(*(v0 + 48), v1, &qword_1016A7258, &qword_1013B6050);
  v2 = type metadata accessor for OwnerCommandManager.Error();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 40);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 40), &qword_1016A7258, &qword_1013B6050);
    v5 = 0;
  }

  else
  {
    sub_100003E8C(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error);
    v5 = swift_allocError();
    sub_10002AB74(v4, v6, type metadata accessor for OwnerCommandManager.Error);
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  (*(v0 + 24))(v5);

  sub_10000B3A8(v8, &qword_1016A7258, &qword_1013B6050);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10069B02C()
{
  v1 = v0[13];

  v2 = v0[16];
  v4 = v0[3];
  v3 = v0[4];
  swift_errorRetain();
  v4(v2);

  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10069B0D0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 64) = v15;
  *(v11 + 72) = 0xD00000000000001DLL;
  *(v11 + 80) = 0x800000010135CCF0;
  os_log(_:dso:log:_:_:)();

  v16 = v2[6];
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = v21;
  v17[3] = v18;
  v17[4] = v2;
  aBlock[4] = sub_10071F144;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E888;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v6, v3);
  (*(v23 + 8))(v10, v24);
}

uint64_t sub_10069B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for UUID();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v6[10] = v11;
  *v11 = v6;
  v11[1] = sub_10069B5D4;

  return daemon.getter();
}

uint64_t sub_10069B5D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager);
  *v6 = v12;
  v6[1] = sub_10069B7B0;

  return ActorServiceDaemon.getService<A>()(v7, found, v9, v10);
}

uint64_t sub_10069B7B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(*v2 + 104) = a1;

  v6 = *(v3 + 88);
  if (v1)
  {

    v7 = sub_10069B900;
  }

  else
  {

    v7 = sub_10069BA34;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10069B900()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing NotifyWhenFoundManager.", v4, 2u);
  }

  v5 = v0[3];
  v6 = v0[4];

  v5(0);
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10069BA34()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 112) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_10069BB34;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_10069BB34()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_10069BC4C, 0, 0);
}

uint64_t sub_10069BC4C()
{
  v32 = v0;
  v1 = sub_101074630(*(v0 + 16));

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_10069C018;
    v3 = *(v0 + 104);
    v4 = *(v0 + 40);

    return sub_10034F730(v4);
  }

  else
  {
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AC78);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Server configured: allowing both local and online NWF notifications.", v9, 2u);
    }

    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = *(v0 + 40);
    sub_1000076D4(v6, qword_10177AC78);
    (*(v12 + 16))(v10, v13, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 72);
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 141558531;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v19 + 8))(v17, v18);
      v25 = sub_1000136BC(v22, v24, &v31);

      *(v20 + 14) = v25;
      *(v20 + 22) = 1024;
      *(v20 + 24) = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Posted local NWF notification for beacon %{private,mask.hash}s %{BOOL}d.", v20, 0x1Cu);
      sub_100007BAC(v21);
    }

    else
    {

      (*(v19 + 8))(v17, v18);
    }

    v26 = *(v0 + 104);
    v27 = *(v0 + 32);
    (*(v0 + 24))(0);

    v29 = *(v0 + 64);
    v28 = *(v0 + 72);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_10069C018(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_10069C3C8;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v7 = sub_10069C144;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10069C144()
{
  v26 = v0;
  v1 = *(v0 + 144);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AC78);
  (*(v3 + 16))(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 72);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 14) = v17;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Posted local NWF notification for beacon %{private,mask.hash}s %{BOOL}d.", v13, 0x1Cu);
    sub_100007BAC(v24);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = *(v0 + 104);
  v19 = *(v0 + 32);
  (*(v0 + 24))(v1);

  v21 = *(v0 + 64);
  v20 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10069C3C8()
{
  v46 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v44 = type metadata accessor for Logger();
  sub_1000076D4(v44, qword_10177AC78);
  (*(v2 + 16))(v3, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 136);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v45);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v42 = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error reading posted state for %{private,mask.hash}s, %{public}@.", v13, 0x20u);
    sub_10000B3A8(v42, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v43);
  }

  else
  {
    v19 = *(v0 + 136);

    (*(v11 + 8))(v10, v12);
  }

  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  v23 = *(v0 + 40);
  sub_1000076D4(v44, qword_10177AC78);
  (*(v22 + 16))(v20, v23, v21);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 72);
  v28 = *(v0 + 48);
  v29 = *(v0 + 56);
  if (v26)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 141558531;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v29 + 8))(v27, v28);
    v35 = sub_1000136BC(v32, v34, &v45);

    *(v30 + 14) = v35;
    *(v30 + 22) = 1024;
    *(v30 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Posted local NWF notification for beacon %{private,mask.hash}s %{BOOL}d.", v30, 0x1Cu);
    sub_100007BAC(v31);
  }

  else
  {

    (*(v29 + 8))(v27, v28);
  }

  v36 = *(v0 + 104);
  v37 = *(v0 + 32);
  (*(v0 + 24))(0);

  v39 = *(v0 + 64);
  v38 = *(v0 + 72);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10069C89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = UUID.uuidString.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)();

  v11 = *(v3 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  sub_100891C74(a1);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  Future.addSuccess(block:)();

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  Future.addFailure(block:)();
}

uint64_t sub_10069CA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v63 - v10;
  __chkstk_darwin(v9);
  v13 = &v63 - v12;
  v14 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v63 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v63 - v22;
  __chkstk_darwin(v21);
  v25 = &v63 - v24;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v26 = qword_10177B2E8;
  v68 = a1;
  v27 = sub_100035730(a1, sub_10069D268, 0);
  sub_1012BB138(v27, v25);

  v67 = v5;
  v28 = v25;
  v29 = v25;
  v30 = *(v5 + 48);
  v31 = v30(v29, 1, v4);
  if (a2 < 2)
  {
    v40 = v11;
    v32 = v28;
    if (v31 != 1)
    {
      sub_1000D2A70(v28, v20, &qword_1016A42E0, &qword_1013B0010);
      if (v30(v20, 1, v4) == 1)
      {
        sub_10000B3A8(v20, &qword_1016A42E0, &qword_1013B0010);
        return sub_10000B3A8(v32, &qword_1016A42E0, &qword_1013B0010);
      }

      v55 = v20[*(v4 + 24)];
      sub_100721D04(v20, type metadata accessor for BeaconObservation);
      if (v55 != 30)
      {
        return sub_10000B3A8(v32, &qword_1016A42E0, &qword_1013B0010);
      }
    }

    v63 = v30;
    v41 = type metadata accessor for UUID();
    v42 = v68;
    (*(*(v41 - 8) + 16))(v40, v68, v41);
    v43 = v40 + *(v4 + 20);
    Date.init()();
    *(v40 + *(v4 + 24)) = 31;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v44 = *(v67 + 72);
    v45 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_101385D80;
    sub_100721C9C(v40, v46 + v45, type metadata accessor for BeaconObservation);
    v47 = type metadata accessor for Transaction();
    __chkstk_darwin(v47);
    *(&v63 - 4) = v26;
    *(&v63 - 3) = v46;
    *(&v63 - 2) = 0;
    *(&v63 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    v48 = *(v65 + 280);
    sub_100025020(v42, &v69);
    if (v70)
    {
      sub_10000A748(&v69, v71);
      v49 = v72;
      v50 = v73;
      v51 = sub_1000035D0(v71, v72);
      v52 = sub_100B005BC(v51, v48, v49, v50);
      sub_100007BAC(v71);
      v53 = v52;
    }

    else
    {
      sub_10000B3A8(&v69, &qword_101696920, &unk_10138B200);
      v52 = 0;
    }

    v56 = v66;
    sub_1000D2A70(v32, v66, &qword_1016A42E0, &qword_1013B0010);
    if (v63(v56, 1, v4) == 1)
    {
      sub_10000B3A8(v56, &qword_1016A42E0, &qword_1013B0010);
      v57 = 0.0;
    }

    else
    {
      v58 = v64;
      sub_10002AB74(v56, v64, type metadata accessor for BeaconObservation);
      v59 = v58 + *(v4 + 20);
      Date.timeIntervalSinceNow.getter();
      v57 = fabs(v60);
      sub_100721D04(v58, type metadata accessor for BeaconObservation);
    }

    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    *(v61 + 24) = v52;
    static Transaction.asyncTask(name:block:)();

    v39 = v40;
    goto LABEL_22;
  }

  v32 = v28;
  if (v31 == 1)
  {
LABEL_5:
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 16))(v13, v68, v33);
    v34 = &v13[*(v4 + 20)];
    Date.init()();
    v13[*(v4 + 24)] = 30;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v35 = *(v67 + 72);
    v36 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    sub_100721C9C(v13, v37 + v36, type metadata accessor for BeaconObservation);
    v38 = type metadata accessor for Transaction();
    __chkstk_darwin(v38);
    *(&v63 - 4) = v26;
    *(&v63 - 3) = v37;
    *(&v63 - 2) = 0;
    *(&v63 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    v39 = v13;
LABEL_22:
    sub_100721D04(v39, type metadata accessor for BeaconObservation);
    return sub_10000B3A8(v32, &qword_1016A42E0, &qword_1013B0010);
  }

  sub_1000D2A70(v28, v23, &qword_1016A42E0, &qword_1013B0010);
  if (v30(v23, 1, v4) != 1)
  {
    v54 = v23[*(v4 + 24)];
    sub_100721D04(v23, type metadata accessor for BeaconObservation);
    if (v54 != 31)
    {
      return sub_10000B3A8(v32, &qword_1016A42E0, &qword_1013B0010);
    }

    goto LABEL_5;
  }

  sub_10000B3A8(v23, &qword_1016A42E0, &qword_1013B0010);
  return sub_10000B3A8(v32, &qword_1016A42E0, &qword_1013B0010);
}

uint64_t sub_10069D268(uint64_t a1)
{
  v2 = sub_10112ADD0(&off_101609B00);
  v3 = type metadata accessor for BeaconObservation();
  LOBYTE(a1) = sub_101120594(*(a1 + *(v3 + 24)), v2);

  return a1 & 1;
}

uint64_t sub_10069D2C0(uint64_t a1, double a2)
{
  *(v2 + 24) = a1;
  *(v2 + 16) = a2;
  return _swift_task_switch(sub_10069D2E4, 0, 0);
}

uint64_t sub_10069D2E4()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for AnalyticsEvent(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  swift_defaultActor_initialize();
  *(v5 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(*(v7 - 8) + 56);
  v8(&v5[v6], 1, 1, v7);
  v8(&v5[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v7);
  *(v5 + 15) = 0xD00000000000003DLL;
  *(v5 + 16) = 0x800000010135CA50;
  v9 = v1;

  return _swift_task_switch(sub_10069D440, v5, 0);
}

uint64_t sub_10069D440()
{
  sub_101172B1C(*(v0 + 32), *(v0 + 24), *(v0 + 16));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 40) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10069D520;
  v2 = *(v0 + 32);

  return sub_101163F78(v2);
}

uint64_t sub_10069D520()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10069D638, 0, 0);
}

uint64_t sub_10069D638()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

id sub_10069D698(void *a1, double a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000010135CA90;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6E6F697461727564;
  *(inited + 72) = 0xE800000000000000;
  v10 = objc_allocWithZone(NSNumber);
  v11 = a1;
  *(inited + 80) = [v10 initWithDouble:a2];
  *(inited + 88) = 0;
  v12 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (!a1)
  {
    return v12;
  }

  result = [v11 systemVersion];
  if (result)
  {
    v14 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v12;
    sub_100FFC418(v14, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
    v16 = v47;
    result = [v11 systemVersion];
    if (result)
    {
      v17 = result;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v16;
      sub_100FFC418(v17, 0, 0xD00000000000001BLL, 0x8000000101356E90, v18);
      v19 = v47;
      v20 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v11, "batteryLevel")}];
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v19;
      sub_100FFC418(v20, 0, 0x4C79726574746162, 0xEC0000006C657665, v21);
      v22 = v47;
      v23 = [v11 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v24 + 16) && (v25 = sub_100777014(SPBeaconTaskNameBeginLeashing), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + 8 * v25);

        v28 = [v27 state];

        v29 = v28 == 0;
      }

      else
      {

        v29 = 0;
      }

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v22;
      sub_100FFC418(v29, 1, 0x6563697665447369, 0xEF6465687361654CLL, v30);
      v31 = v47;
      v32 = [v11 connected];
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v31;
      sub_100FFC418(v32, 1, 0xD000000000000011, 0x8000000101350630, v33);
      v12 = v47;
      v34 = [v11 role];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 role];

        if (!v36)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = String._bridgeToObjectiveC()();
        }

        v37 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v12;
        sub_100FFC418(v36, 0, 1701605234, 0xE400000000000000, v37);
        v12 = v47;
      }

      v38 = [objc_opt_self() sharedInstance];
      v39 = [v38 isInternalBuild];

      if (!v39)
      {
        goto LABEL_15;
      }

      v40 = [v11 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      (*(v5 + 8))(v8, v4);
      v41 = String._bridgeToObjectiveC()();

      v42 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v12;
      sub_100FFC418(v41, 0, 0x6544646572696170, 0xEE00444965636976, v42);
      v12 = v47;
      v43 = [v11 serialNumber];
      if (v43)
      {
        v44 = v43;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v12;
        sub_100FFC418(v44, 0, 0xD000000000000018, 0x8000000101350650, v45);

        return v47;
      }

      else
      {
LABEL_15:
      }

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10069DCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v29);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = 0xD00000000000001FLL;
  *(v12 + 80) = 0x800000010135D810;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  *(v17 + 56) = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  *(v17 + 64) = sub_1000041A4(&qword_1016A78E8, &unk_1016BF350, &unk_1013E4AF0);
  *(v17 + 32) = a1;

  os_log(_:dso:log:_:_:)();

  v18 = v4[14];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v4;
  v20 = v26;
  v19[4] = v25;
  v19[5] = v20;
  aBlock[4] = sub_10072142C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162F2B0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v22 = v28;
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v22, v23);
  (*(v27 + 8))(v11, v29);
}

size_t sub_10069E1E0(uint64_t a1, unint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v102 = a4;
  v103 = a3;
  v4 = a2;
  v99 = a2;
  v101 = type metadata accessor for SharedBeaconRecord(0);
  v115 = *(v101 - 8);
  v6 = *(v115 + 64);
  v7 = __chkstk_darwin(v101);
  v114 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v97 - v9;
  v10 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v97 - v12;
  v119 = type metadata accessor for WildModeAssociationRecord(0);
  v14 = *(v119 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v119);
  v107 = (&v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v111 = &v97 - v19;
  v20 = __chkstk_darwin(v18);
  v110 = &v97 - v21;
  v22 = __chkstk_darwin(v20);
  v117 = (&v97 - v23);
  __chkstk_darwin(v22);
  v116 = (&v97 - v24);
  v25 = type metadata accessor for UUID();
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v98 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v100 = &v97 - v30;
  v31 = __chkstk_darwin(v29);
  v34 = &v97 - v33;
  v122 = _swiftEmptyArrayStorage;
  v35 = *(a1 + 16);
  v36 = *(v4 + 280);
  v108 = v14;
  v109 = v31;
  v104 = v32;
  v118 = v36;
  if (v35)
  {
    v4 = v32 + 16;
    v37 = *(v32 + 16);
    v38 = a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v112 = *(v32 + 72);
    v113 = v37;
    v39 = (v14 + 48);
    v40 = (v32 + 8);
    v41 = _swiftEmptyArrayStorage;
    v105 = v32 + 16;
    v37(v34, v38, v25);
    while (1)
    {
      sub_100023184(v34, v13);
      if ((*v39)(v13, 1, v119) == 1)
      {
        (*v40)(v34, v25);
        sub_10000B3A8(v13, &unk_1016C7C90, &qword_1013BB4B0);
      }

      else
      {
        v42 = v116;
        sub_10002AB74(v13, v116, type metadata accessor for WildModeAssociationRecord);
        sub_100721C9C(v42, v117, type metadata accessor for WildModeAssociationRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100A5D218(0, v41[2] + 1, 1, v41);
        }

        v44 = v41[2];
        v43 = v41[3];
        if (v44 >= v43 >> 1)
        {
          v41 = sub_100A5D218(v43 > 1, v44 + 1, 1, v41);
        }

        sub_100721D04(v116, type metadata accessor for WildModeAssociationRecord);
        v25 = v109;
        (*v40)(v34, v109);
        v41[2] = v44 + 1;
        sub_10002AB74(v117, v41 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v44, type metadata accessor for WildModeAssociationRecord);
        v122 = v41;
        v4 = v105;
      }

      v38 += v112;
      if (!--v35)
      {
        break;
      }

      v113(v34, v38, v25);
    }
  }

  else
  {
    v122 = sub_10125E224();
  }

  v45 = *(v118 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v46 = v121;
  v47 = sub_100030068();
  v48 = *(v47 + 2);
  if (v48)
  {
    v49 = 0;
    v50 = _swiftEmptyArrayStorage;
    v51 = v101;
    v4 = v106;
    while (v49 < *(v47 + 2))
    {
      v52 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v53 = *(v115 + 72);
      sub_100721C9C(&v47[v52 + v53 * v49], v4, type metadata accessor for SharedBeaconRecord);
      if (*(v4 + *(v51 + 64)) == 5)
      {
        sub_10002AB74(v4, v114, type metadata accessor for SharedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112421C(0, v50[2] + 1, 1);
          v50 = v121;
        }

        v56 = v50[2];
        v55 = v50[3];
        if (v56 >= v55 >> 1)
        {
          sub_10112421C(v55 > 1, v56 + 1, 1);
          v50 = v121;
        }

        v50[2] = v56 + 1;
        sub_10002AB74(v114, v50 + v52 + v56 * v53, type metadata accessor for SharedBeaconRecord);
        v4 = v106;
      }

      else
      {
        sub_100721D04(v4, type metadata accessor for SharedBeaconRecord);
      }

      if (v48 == ++v49)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
LABEL_25:

    v57 = swift_allocObject();
    *(v57 + 16) = v50;
    *(v57 + 24) = v46;

    sub_1000BC4D4(&qword_1016A78F0, &qword_1013DBEC0);
    unsafeFromAsyncTask<A>(_:)();

    sub_10039A050(v121);
    v58 = v122;
    v59 = v122[2];
    if (!v59)
    {
      v103(_swiftEmptyArrayStorage);
    }

    v117 = v46;
    v49 = 0;
    v60 = _swiftEmptyArrayStorage;
    v61 = v108;
    while (v49 < v58[2])
    {
      v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v63 = *(v61 + 72);
      v4 = v110;
      sub_100721C9C(v58 + v62 + v63 * v49, v110, type metadata accessor for WildModeAssociationRecord);
      v64 = *(v4 + *(v119 + 64));
      if (v64 == 8 || (v64 & 0xFA) == 0)
      {
        sub_100721D04(v4, type metadata accessor for WildModeAssociationRecord);
      }

      else
      {
        sub_10002AB74(v4, v111, type metadata accessor for WildModeAssociationRecord);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v121 = v60;
        if ((v66 & 1) == 0)
        {
          sub_101124B2C(0, v60[2] + 1, 1);
          v61 = v108;
          v60 = v121;
        }

        v68 = v60[2];
        v67 = v60[3];
        v4 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          sub_101124B2C(v67 > 1, v68 + 1, 1);
          v61 = v108;
          v60 = v121;
        }

        v60[2] = v4;
        sub_10002AB74(v111, v60 + v62 + v68 * v63, type metadata accessor for WildModeAssociationRecord);
      }

      if (v59 == ++v49)
      {
        v69 = v60[2];
        if (v69)
        {
          v119 = v58;
          v121 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v70 = v60 + v62;
          v71 = v107;
          do
          {
            sub_100721C9C(v70, v71, type metadata accessor for WildModeAssociationRecord);
            v72 = sub_10125EC08(v71);
            sub_1006A35F4(v71);
            type metadata accessor for SPBeaconTaskName(0);
            sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
            sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
            v71 = v107;
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v72 setTaskInformation:isa];

            sub_100721D04(v71, type metadata accessor for WildModeAssociationRecord);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v74 = v121[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v70 += v63;
            --v69;
          }

          while (v69);

          v4 = v121;
        }

        else
        {

          v4 = _swiftEmptyArrayStorage;
        }

        v49 = v100;
        if (qword_101694910 != -1)
        {
          goto LABEL_70;
        }

        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_70:
  swift_once();
LABEL_46:
  v76 = type metadata accessor for Logger();
  sub_1000076D4(v76, qword_10177B2D0);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v77, v78))
  {

LABEL_67:
    v103(v4);
  }

  v79 = swift_slowAlloc();
  v118 = swift_slowAlloc();
  v121 = v118;
  *v79 = 134218242;
  if (v4 >> 62)
  {
    v80 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v80 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v79 + 4) = v80;

  *(v79 + 12) = 2082;
  if (v4 >> 62)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v119) = v78;
  if (!v81)
  {
LABEL_66:
    v93 = Array.description.getter();
    v95 = v94;

    v96 = sub_1000136BC(v93, v95, &v121);

    *(v79 + 14) = v96;
    _os_log_impl(&_mh_execute_header, v77, v119, "unknownBeacons[%ld]: %{public}s ", v79, 0x16u);
    sub_100007BAC(v118);

    goto LABEL_67;
  }

  v120 = _swiftEmptyArrayStorage;
  result = sub_101123D4C(0, v81 & ~(v81 >> 63), 0);
  if ((v81 & 0x8000000000000000) == 0)
  {
    v115 = v79;
    v116 = v77;
    v82 = v120;
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v81; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v84 = [swift_unknownObjectRetain() identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease_n();

        v120 = v82;
        v86 = v82[2];
        v85 = v82[3];
        if (v86 >= v85 >> 1)
        {
          sub_101123D4C(v85 > 1, v86 + 1, 1);
          v82 = v120;
        }

        v82[2] = v86 + 1;
        (*(v104 + 32))(v82 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v86, v49, v109);
      }
    }

    else
    {
      v87 = (v4 + 32);
      v88 = v98;
      do
      {
        v89 = *v87;
        v90 = [v89 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v120 = v82;
        v92 = v82[2];
        v91 = v82[3];
        if (v92 >= v91 >> 1)
        {
          sub_101123D4C(v91 > 1, v92 + 1, 1);
          v82 = v120;
        }

        v82[2] = v92 + 1;
        (*(v104 + 32))(v82 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v92, v88, v109);
        ++v87;
        --v81;
      }

      while (v81);
    }

    v77 = v116;
    v79 = v115;
    goto LABEL_66;
  }

  __break(1u);
  return result;
}

uint64_t sub_10069F014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10069F038, 0, 0);
}

uint64_t sub_10069F038()
{
  v0[2] = v0[4];
  v1 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  v5 = sub_1000041A4(&qword_1016A78F8, &qword_101697720, &unk_101392640);
  *v2 = v0;
  v2[1] = sub_10069F160;
  v6 = v0[5];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013B6910, v6, v3, v4, v5);
}

uint64_t sub_10069F160(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_10069F29C, 0, 0);
  }
}

uint64_t sub_10069F2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v13 = type metadata accessor for WildModeAssociationRecord(0);
  v3[18] = v13;
  v14 = *(v13 - 8);
  v3[19] = v14;
  v15 = *(v14 + 64) + 15;
  v3[20] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v17 = type metadata accessor for MACAddress();
  v3[27] = v17;
  v18 = *(v17 - 8);
  v3[28] = v18;
  v19 = *(v18 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v20 = type metadata accessor for ObservedAdvertisement(0);
  v3[34] = v20;
  v21 = *(v20 - 8);
  v3[35] = v21;
  v22 = *(v21 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v23 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v24 = type metadata accessor for BeaconIdentifier();
  v3[42] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v26 = type metadata accessor for UUID();
  v3[45] = v26;
  v27 = *(v26 - 8);
  v3[46] = v27;
  v28 = *(v27 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v29 = async function pointer to daemon.getter[1];
  v30 = swift_task_alloc();
  v3[50] = v30;
  *v30 = v3;
  v30[1] = sub_10069F7C0;

  return daemon.getter();
}

uint64_t sub_10069F7C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v12 = *v1;
  *(v3 + 408) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 416) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_10069F99C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10069F99C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v5 = *v2;
  *(*v2 + 424) = a1;

  v6 = *(v3 + 408);
  if (v1)
  {

    v7 = sub_10069FAEC;
  }

  else
  {

    v7 = sub_10069FFA4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10069FAEC()
{
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100003E8C(&qword_101697368, &type metadata accessor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000017;
  v6[1] = 0x800000010134D340;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v1, qword_10177AE40);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to create unknownBeacon from wild mode advt: %@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v13 = v0[48];
  v12 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  v18 = v0[40];
  v17 = v0[41];
  v19 = v0[38];
  v20 = v0[39];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[31];
  v28 = v0[30];
  v29 = v0[29];
  v30 = v0[26];
  v31 = v0[25];
  v32 = v0[24];
  v33 = v0[23];
  v34 = v0[22];
  v35 = v0[21];
  v36 = v0[20];
  v37 = v0[17];
  v38 = v0[16];
  v39 = v0[13];
  v40 = v0[12];
  v41 = v0[11];
  v42 = v0[10];
  v43 = v0[9];
  v44 = v0[8];
  v45 = v0[7];
  v46 = v0[6];
  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10069FFA4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  if (*(v2 + v1[11]) == 76)
  {
    v3 = *(v2 + v1[12]);
    v4 = HIDWORD(v3) == 0;
    v5 = v3 == 21760;
    v6 = v3 == 22034;
    v7 = v3 == 22034;
    if (v6)
    {
      v5 = 1;
    }

    if (v4 && v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = v4 && v7;
    if (v9)
    {
      v10 = 4;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    v10 = 2;
  }

  *(v0 + 589) = v9 & 1;
  *(v0 + 588) = v10;
  v11 = *(v0 + 392);
  *(v0 + 432) = *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v12 = v1[5];
  *(v0 + 584) = v12;
  v13 = getuid();
  sub_1000294F0(v13);
  v14 = swift_task_alloc();
  *(v0 + 440) = v14;
  *v14 = v0;
  v14[1] = sub_1006A00F0;
  v15 = *(v0 + 392);

  return sub_100686048(v15, v2 + v12, 0);
}

uint64_t sub_1006A00F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 440);
  v6 = *(*v3 + 392);
  v7 = *(*v3 + 368);
  v8 = *(*v3 + 360);
  v12 = *v3;
  v4[56] = a1;
  v4[57] = a2;
  v4[58] = v2;

  v9 = *(v7 + 8);
  v4[59] = v9;
  v4[60] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  if (v2)
  {
    v10 = sub_1006A2820;
  }

  else
  {
    v10 = sub_1006A027C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1006A027C()
{
  v1 = *(v0 + 584);
  if (*(v0 + 456) >> 60 == 15)
  {
    v2 = *(v0 + 376);
    v3 = *(v0 + 24);
    v4 = getuid();
    sub_1000294F0(v4);
    v5 = swift_task_alloc();
    *(v0 + 520) = v5;
    *v5 = v0;
    v5[1] = sub_1006A130C;
    v6 = *(v0 + 432);
    v7 = *(v0 + 376);

    return sub_100686048(v7, v3 + v1, 1);
  }

  else
  {
    v9 = *(v0 + 360);
    v10 = *(v0 + 368);
    v11 = *(v0 + 352);
    v12 = *(v0 + 336);
    v13 = *(v0 + 24);
    v14 = getuid();
    sub_1000294F0(v14);
    v15 = *(v12 + 20);
    v16 = *(v10 + 16);
    *(v0 + 488) = v16;
    *(v0 + 496) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v11 + v15, v13 + v1, v9);
    v17 = swift_task_alloc();
    *(v0 + 504) = v17;
    *v17 = v0;
    v17[1] = sub_1006A0418;
    v18 = *(v0 + 424);
    v19 = *(v0 + 352);
    v20 = *(v0 + 328);

    return sub_1010CE088(v20, v19);
  }
}

uint64_t sub_1006A0418()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_1006A2B7C;
  }

  else
  {
    v3 = sub_1006A052C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006A052C()
{
  v147 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_1000D2A70(*(v0 + 328), v1, &unk_10169BB50, &unk_101395760);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 320), &unk_10169BB50, &unk_101395760);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 64);
    v5 = *(v0 + 24);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AE40);
    sub_100721C9C(v5, v4, type metadata accessor for SharedBeaconRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    if (v9)
    {
      v12 = *(v0 + 360);
      v139 = *(v0 + 328);
      v142 = *(v0 + 352);
      v13 = *(v0 + 64);
      v14 = *(v0 + 40);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v146[0] = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      v17 = *(v14 + 20);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_100721D04(v13, type metadata accessor for SharedBeaconRecord);
      v21 = sub_1000136BC(v18, v20, v146);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "latest observation for primary sequence not found in Observations / Beacon Info DB for imported beacon %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v16);

      sub_100006654(v11, v10);
      sub_10000B3A8(v139, &unk_10169BB50, &unk_101395760);
      v22 = v142;
    }

    else
    {
      v24 = *(v0 + 352);
      v25 = *(v0 + 328);
      v26 = *(v0 + 64);

      sub_100006654(v11, v10);
      sub_100721D04(v26, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v25, &unk_10169BB50, &unk_101395760);
      v22 = v24;
    }

    sub_100721D04(v22, type metadata accessor for BeaconIdentifier);
    v27 = *(v0 + 584);
    v28 = *(v0 + 376);
    v29 = *(v0 + 24);
    v30 = getuid();
    sub_1000294F0(v30);
    v31 = swift_task_alloc();
    *(v0 + 520) = v31;
    *v31 = v0;
    v31[1] = sub_1006A130C;
    v32 = *(v0 + 432);
    v33 = *(v0 + 376);

    return sub_100686048(v33, v29 + v27, 1);
  }

  v23 = *(v0 + 589);
  sub_10002AB74(*(v0 + 320), *(v0 + 296), type metadata accessor for ObservedAdvertisement);
  if (v23 & 1) != 0 || (*(*(v0 + 296) + *(*(v0 + 272) + 56)))
  {
    v111 = 0;
    v140 = 0xB000000000000000;
  }

  else
  {
    sub_100017D5C(*(v0 + 448), *(v0 + 456));
    v140 = *(v0 + 456);
    v111 = *(v0 + 448);
  }

  v35 = *(v0 + 448);
  v36 = *(v0 + 456);
  v37 = *(v0 + 216);
  v38 = *(v0 + 224);
  v39 = *(v0 + 200);
  sub_100017D5C(v35, v36);
  v40 = static MACAddress.length.getter();
  sub_10002EA98(v40, v35, v36, v146);
  MACAddress.init(data:type:)();
  v143 = *(v38 + 48);
  result = v143(v39, 1, v37);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v41 = *(v0 + 256);
  v42 = *(v0 + 216);
  v43 = *(v0 + 224);
  v44 = *(v0 + 208);
  v45 = *(v43 + 32);
  v45(v41, *(v0 + 200), v42);
  MACAddress.data.getter();
  v108 = *(v43 + 8);
  v108(v41, v42);
  MACAddress.init(addressToSanitize:type:)();
  v46 = v143(v44, 1, v42);
  v47 = *(v0 + 216);
  if (v46 == 1)
  {
    v49 = *(v0 + 448);
    v48 = *(v0 + 456);
    v50 = *(v0 + 192);
    sub_100017D5C(v49, v48);
    v51 = static MACAddress.length.getter();
    sub_10002EA98(v51, v49, v48, v146);
    MACAddress.init(data:type:)();
    result = v143(v50, 1, v47);
    if (result != 1)
    {
      v52 = *(v0 + 208);
      v53 = *(v0 + 216);
      v45(*(v0 + 264), *(v0 + 192), v53);
      if (v143(v52, 1, v53) != 1)
      {
        sub_10000B3A8(*(v0 + 208), &qword_1016A40D0, &unk_10138BE70);
      }

      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v45(*(v0 + 264), *(v0 + 208), *(v0 + 216));
LABEL_20:
  v117 = *(v0 + 488);
  v99 = *(v0 + 472);
  v100 = *(v0 + 480);
  v96 = *(v0 + 448);
  v97 = *(v0 + 456);
  v93 = *(v0 + 588);
  v95 = *(v0 + 424);
  v133 = *(v0 + 384);
  v54 = *(v0 + 368);
  v115 = *(v0 + 360);
  v102 = *(v0 + 328);
  v104 = *(v0 + 352);
  v98 = *(v0 + 296);
  v135 = *(v0 + 264);
  v55 = *(v0 + 248);
  v56 = *(v0 + 216);
  v144 = *(v0 + 224);
  v129 = v55;
  v57 = *(v0 + 160);
  v59 = *(v0 + 136);
  v58 = *(v0 + 144);
  v60 = *(v0 + 120);
  v61 = *(v0 + 128);
  v126 = v60;
  v113 = *(v0 + 112);
  v120 = *(v0 + 104);
  v137 = *(v0 + 96);
  v94 = *(v0 + 88);
  v122 = *(v0 + 80);
  v124 = *(v0 + 72);
  v106 = *(v0 + 16);
  v62 = *(v0 + 24) + *(v0 + 584);
  v117();
  v91 = *(v54 + 56);
  v91(v59, 1, 1, v115);
  v88 = *(v144 + 16);
  v88(v55, v135, v56);
  static Date.trustedNow.getter(v61);
  v63 = *(v60 + 56);
  v63(v120, 1, 1, v113);
  v64 = type metadata accessor for AccessoryMetadata(0);
  v87 = *(*(v64 - 8) + 56);
  v87(v122, 1, 1, v64);
  v65 = type metadata accessor for AccessoryProductInfo();
  v85 = *(*(v65 - 8) + 56);
  v85(v124, 1, 1, v65);
  v63(v137, 1, 1, v113);
  v80 = v58[5];
  v91(v57 + v80, 1, 1, v115);
  v81 = v58[6];
  v83 = v58[11];
  v63(v57 + v83, 1, 1, v113);
  v82 = (v57 + v58[12]);
  v84 = v58[14];
  v87(v57 + v84, 1, 1, v64);
  v66 = v58[15];
  v85(v57 + v66, 1, 1, v65);
  v67 = v58[17];
  v86 = v58[16];
  *(v57 + v67) = sub_100908B38(_swiftEmptyArrayStorage);
  v68 = v58[18];
  static Date.trustedNow.getter(v57 + v68);
  v63(v57 + v68, 0, 1, v113);
  v89 = v58[19];
  v63(v57 + v89, 1, 1, v113);
  v90 = v58[21];
  v92 = v58[22];
  (v117)(v57, v133, v115);
  sub_1001DA61C(v59, v57 + v80, &qword_1016980D0, &unk_10138F3B0);
  *(v57 + v81) = 0;
  v88(v57 + v58[7], v129, v56);
  *(v57 + v58[8]) = _swiftEmptyArrayStorage;
  *(v57 + v58[9]) = 3;
  (*(v126 + 16))(v57 + v58[10], v61, v113);
  sub_1001DA61C(v120, v57 + v83, &unk_101696900, &unk_10138B1E0);
  v82[1] = 0;
  v82[2] = 0;
  *v82 = 0;
  *(v57 + v58[13]) = v93;
  sub_1001DA61C(v122, v57 + v84, &qword_1016A62A0, &unk_101396E10);
  sub_1001DA61C(v124, v57 + v66, &qword_101697268, &qword_101394FE0);
  *(v57 + v86) = 7;
  static Date.trustedNow.getter(v94);
  v63(v94, 0, 1, v113);
  sub_10002311C(v94, v57 + v68, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v57 + v68, v94, &unk_101696900, &unk_10138B1E0);
  sub_1001DE1F0(v94, 7);

  sub_100006654(v96, v97);
  sub_10000B3A8(v124, &qword_101697268, &qword_101394FE0);
  sub_10000B3A8(v122, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v120, &unk_101696900, &unk_10138B1E0);
  (*(v126 + 8))(v61, v113);
  v108(v129, v56);
  sub_10000B3A8(v59, &qword_1016980D0, &unk_10138F3B0);
  v99(v133, v115);
  v108(v135, v56);
  sub_100721D04(v98, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v102, &unk_10169BB50, &unk_101395760);
  sub_100721D04(v104, type metadata accessor for BeaconIdentifier);
  sub_10002311C(v137, v57 + v89, &unk_101696900, &unk_10138B1E0);
  v69 = (v57 + v58[20]);
  *v69 = v111;
  v69[1] = v140;
  *(v57 + v90) = v140 >> 60 == 11;
  *(v57 + v92) = 256;
  sub_10002AB74(v57, v106, type metadata accessor for WildModeAssociationRecord);
  v71 = *(v0 + 384);
  v70 = *(v0 + 392);
  v72 = *(v0 + 376);
  v74 = *(v0 + 344);
  v73 = *(v0 + 352);
  v76 = *(v0 + 320);
  v75 = *(v0 + 328);
  v77 = *(v0 + 304);
  v78 = *(v0 + 312);
  v101 = *(v0 + 296);
  v103 = *(v0 + 288);
  v105 = *(v0 + 264);
  v107 = *(v0 + 256);
  v109 = *(v0 + 248);
  v110 = *(v0 + 240);
  v112 = *(v0 + 232);
  v114 = *(v0 + 208);
  v116 = *(v0 + 200);
  v118 = *(v0 + 192);
  v119 = *(v0 + 184);
  v121 = *(v0 + 176);
  v123 = *(v0 + 168);
  v125 = *(v0 + 160);
  v127 = *(v0 + 136);
  v128 = *(v0 + 128);
  v130 = *(v0 + 104);
  v131 = *(v0 + 96);
  v132 = *(v0 + 88);
  v134 = *(v0 + 80);
  v136 = *(v0 + 72);
  v138 = *(v0 + 64);
  v141 = *(v0 + 56);
  v145 = *(v0 + 48);
  (*(*(v0 + 152) + 56))(*(v0 + 16), 0, 1, *(v0 + 144));

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_1006A130C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 520);
  v6 = *(*v3 + 480);
  v7 = *(*v3 + 472);
  v8 = *(*v3 + 376);
  v9 = *(*v3 + 360);
  v12 = *v3;
  v4[66] = a1;
  v4[67] = a2;
  v4[68] = v2;

  v7(v8, v9);
  if (v2)
  {
    v10 = sub_1006A2F08;
  }

  else
  {
    v10 = sub_1006A1498;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1006A1498()
{
  v69 = v0;
  if (*(v0 + 536) >> 60 == 15)
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 48);
    v2 = *(v0 + 24);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AE40);
    sub_100721C9C(v2, v1, type metadata accessor for SharedBeaconRecord);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 424);
    if (v6)
    {
      v8 = *(v0 + 360);
      v9 = *(v0 + 40);
      v10 = *(v0 + 48);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v68 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v13 = *(v9 + 20);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_100721D04(v10, type metadata accessor for SharedBeaconRecord);
      v17 = sub_1000136BC(v14, v16, &v68);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "maxAdvertisement for secondary sequence not found in ItemSharingKeys DB for imported beacon %{private,mask.hash}s", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {
      v32 = *(v0 + 48);
      v33 = *(v0 + 424);

      sub_100721D04(v32, type metadata accessor for SharedBeaconRecord);
    }

    v35 = *(v0 + 384);
    v34 = *(v0 + 392);
    v36 = *(v0 + 376);
    v38 = *(v0 + 344);
    v37 = *(v0 + 352);
    v40 = *(v0 + 320);
    v39 = *(v0 + 328);
    v41 = *(v0 + 304);
    v42 = *(v0 + 312);
    v44 = *(v0 + 296);
    v45 = *(v0 + 288);
    v46 = *(v0 + 264);
    v47 = *(v0 + 256);
    v48 = *(v0 + 248);
    v49 = *(v0 + 240);
    v50 = *(v0 + 232);
    v51 = *(v0 + 208);
    v52 = *(v0 + 200);
    v53 = *(v0 + 192);
    v54 = *(v0 + 184);
    v55 = *(v0 + 176);
    v56 = *(v0 + 168);
    v57 = *(v0 + 160);
    v58 = *(v0 + 136);
    v59 = *(v0 + 128);
    v60 = *(v0 + 104);
    v61 = *(v0 + 96);
    v62 = *(v0 + 88);
    v63 = *(v0 + 80);
    v64 = *(v0 + 72);
    v65 = *(v0 + 64);
    v66 = *(v0 + 56);
    v67 = *(v0 + 48);
    (*(*(v0 + 152) + 56))(*(v0 + 16), 1, 1, *(v0 + 144));

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    v18 = *(v0 + 584);
    v19 = *(v0 + 360);
    v20 = *(v0 + 368);
    v22 = *(v0 + 336);
    v21 = *(v0 + 344);
    v23 = *(v0 + 24);
    v24 = getuid();
    sub_1000294F0(v24);
    v25 = *(v22 + 20);
    v26 = *(v20 + 16);
    *(v0 + 552) = v26;
    *(v0 + 560) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v21 + v25, v23 + v18, v19);
    v27 = swift_task_alloc();
    *(v0 + 568) = v27;
    *v27 = v0;
    v27[1] = sub_1006A198C;
    v28 = *(v0 + 424);
    v29 = *(v0 + 344);
    v30 = *(v0 + 312);

    return sub_1010CE088(v30, v29);
  }
}

uint64_t sub_1006A198C()
{
  v2 = *(*v1 + 568);
  v5 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = sub_1006A3264;
  }

  else
  {
    v3 = sub_1006A1AA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006A1AA0()
{
  v144 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_1000D2A70(*(v0 + 312), v1, &unk_10169BB50, &unk_101395760);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 304), &unk_10169BB50, &unk_101395760);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 56);
    v5 = *(v0 + 24);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AE40);
    sub_100721C9C(v5, v4, type metadata accessor for SharedBeaconRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    v12 = *(v0 + 424);
    if (v9)
    {
      v133 = *(v0 + 536);
      v13 = *(v0 + 360);
      v136 = *(v0 + 312);
      v139 = *(v0 + 344);
      v14 = *(v0 + 56);
      v15 = *(v0 + 40);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v143[0] = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      v18 = *(v15 + 20);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_100721D04(v14, type metadata accessor for SharedBeaconRecord);
      v22 = sub_1000136BC(v19, v21, v143);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v7, v8, "latest observation for secondary sequence not found in Observations / Beacon Info DB for imported beacon %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v17);

      sub_100006654(v11, v133);
      sub_10000B3A8(v136, &unk_10169BB50, &unk_101395760);
      v23 = v139;
    }

    else
    {
      v25 = *(v0 + 344);
      v26 = *(v0 + 312);
      v27 = *(v0 + 56);
      v28 = *(v0 + 424);

      sub_100006654(v11, v10);
      sub_100721D04(v27, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v26, &unk_10169BB50, &unk_101395760);
      v23 = v25;
    }

    sub_100721D04(v23, type metadata accessor for BeaconIdentifier);
    v29 = 1;
    goto LABEL_19;
  }

  v24 = *(v0 + 589);
  sub_10002AB74(*(v0 + 304), *(v0 + 288), type metadata accessor for ObservedAdvertisement);
  if (v24 & 1) != 0 || (*(*(v0 + 288) + *(*(v0 + 272) + 56)))
  {
    v107 = 0;
    v137 = 0xB000000000000000;
  }

  else
  {
    sub_100017D5C(*(v0 + 528), *(v0 + 536));
    v137 = *(v0 + 536);
    v107 = *(v0 + 528);
  }

  v30 = *(v0 + 536);
  v31 = *(v0 + 528);
  v32 = *(v0 + 216);
  v33 = *(v0 + 224);
  v34 = *(v0 + 176);
  sub_100017D5C(v31, v30);
  v35 = static MACAddress.length.getter();
  sub_10002EA98(v35, v31, v30, v143);
  MACAddress.init(data:type:)();
  v140 = *(v33 + 48);
  result = v140(v34, 1, v32);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v38 = *(v0 + 224);
  v37 = *(v0 + 232);
  v39 = *(v0 + 216);
  v40 = *(v0 + 184);
  v41 = *(v38 + 32);
  v41(v37, *(v0 + 176), v39);
  MACAddress.data.getter();
  v104 = *(v38 + 8);
  v104(v37, v39);
  MACAddress.init(addressToSanitize:type:)();
  v42 = v140(v40, 1, v39);
  v43 = *(v0 + 216);
  if (v42 == 1)
  {
    v44 = *(v0 + 536);
    v45 = *(v0 + 528);
    v46 = *(v0 + 168);
    sub_100017D5C(v45, v44);
    v47 = static MACAddress.length.getter();
    sub_10002EA98(v47, v45, v44, v143);
    MACAddress.init(data:type:)();
    result = v140(v46, 1, v43);
    if (result != 1)
    {
      v48 = *(v0 + 216);
      v49 = *(v0 + 184);
      v41(*(v0 + 240), *(v0 + 168), v48);
      if (v140(v49, 1, v48) != 1)
      {
        sub_10000B3A8(*(v0 + 184), &qword_1016A40D0, &unk_10138BE70);
      }

      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v41(*(v0 + 240), *(v0 + 184), *(v0 + 216));
LABEL_18:
  v113 = *(v0 + 552);
  v92 = *(v0 + 528);
  v93 = *(v0 + 536);
  v94 = *(v0 + 472);
  v95 = *(v0 + 480);
  v89 = *(v0 + 588);
  v91 = *(v0 + 424);
  v129 = *(v0 + 384);
  v50 = *(v0 + 368);
  v111 = *(v0 + 360);
  v98 = *(v0 + 312);
  v100 = *(v0 + 344);
  v96 = *(v0 + 288);
  v51 = *(v0 + 248);
  v131 = *(v0 + 240);
  v52 = *(v0 + 216);
  v141 = *(v0 + 224);
  v125 = v51;
  v53 = *(v0 + 160);
  v55 = *(v0 + 136);
  v54 = *(v0 + 144);
  v56 = *(v0 + 120);
  v57 = *(v0 + 128);
  v122 = v56;
  v109 = *(v0 + 112);
  v116 = *(v0 + 104);
  v134 = *(v0 + 96);
  v90 = *(v0 + 88);
  v118 = *(v0 + 80);
  v120 = *(v0 + 72);
  v102 = *(v0 + 16);
  v58 = *(v0 + 24) + *(v0 + 584);
  v113();
  v87 = *(v50 + 56);
  v87(v55, 1, 1, v111);
  v84 = *(v141 + 16);
  v84(v51, v131, v52);
  static Date.trustedNow.getter(v57);
  v59 = *(v56 + 56);
  v59(v116, 1, 1, v109);
  v60 = type metadata accessor for AccessoryMetadata(0);
  v83 = *(*(v60 - 8) + 56);
  v83(v118, 1, 1, v60);
  v61 = type metadata accessor for AccessoryProductInfo();
  v81 = *(*(v61 - 8) + 56);
  v81(v120, 1, 1, v61);
  v59(v134, 1, 1, v109);
  v76 = v54[5];
  v87(v53 + v76, 1, 1, v111);
  v77 = v54[6];
  v79 = v54[11];
  v59(v53 + v79, 1, 1, v109);
  v78 = (v53 + v54[12]);
  v80 = v54[14];
  v83(v53 + v80, 1, 1, v60);
  v62 = v54[15];
  v81(v53 + v62, 1, 1, v61);
  v63 = v54[17];
  v82 = v54[16];
  *(v53 + v63) = sub_100908B38(_swiftEmptyArrayStorage);
  v64 = v54[18];
  static Date.trustedNow.getter(v53 + v64);
  v59(v53 + v64, 0, 1, v109);
  v85 = v54[19];
  v59(v53 + v85, 1, 1, v109);
  v86 = v54[21];
  v88 = v54[22];
  (v113)(v53, v129, v111);
  sub_1001DA61C(v55, v53 + v76, &qword_1016980D0, &unk_10138F3B0);
  *(v53 + v77) = 0;
  v84(v53 + v54[7], v125, v52);
  *(v53 + v54[8]) = _swiftEmptyArrayStorage;
  *(v53 + v54[9]) = 3;
  (*(v122 + 16))(v53 + v54[10], v57, v109);
  sub_1001DA61C(v116, v53 + v79, &unk_101696900, &unk_10138B1E0);
  v78[1] = 0;
  v78[2] = 0;
  *v78 = 0;
  *(v53 + v54[13]) = v89;
  sub_1001DA61C(v118, v53 + v80, &qword_1016A62A0, &unk_101396E10);
  sub_1001DA61C(v120, v53 + v62, &qword_101697268, &qword_101394FE0);
  *(v53 + v82) = 7;
  static Date.trustedNow.getter(v90);
  v59(v90, 0, 1, v109);
  sub_10002311C(v90, v53 + v64, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v53 + v64, v90, &unk_101696900, &unk_10138B1E0);
  sub_1001DE1F0(v90, 7);

  sub_100006654(v92, v93);
  sub_10000B3A8(v120, &qword_101697268, &qword_101394FE0);
  sub_10000B3A8(v118, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v116, &unk_101696900, &unk_10138B1E0);
  (*(v122 + 8))(v57, v109);
  v104(v125, v52);
  sub_10000B3A8(v55, &qword_1016980D0, &unk_10138F3B0);
  v94(v129, v111);
  v104(v131, v52);
  sub_100721D04(v96, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v98, &unk_10169BB50, &unk_101395760);
  sub_100721D04(v100, type metadata accessor for BeaconIdentifier);
  sub_10002311C(v134, v53 + v85, &unk_101696900, &unk_10138B1E0);
  v65 = (v53 + v54[20]);
  *v65 = v107;
  v65[1] = v137;
  *(v53 + v86) = v137 >> 60 == 11;
  *(v53 + v88) = 256;
  sub_10002AB74(v53, v102, type metadata accessor for WildModeAssociationRecord);
  v29 = 0;
LABEL_19:
  v67 = *(v0 + 384);
  v66 = *(v0 + 392);
  v68 = *(v0 + 376);
  v70 = *(v0 + 344);
  v69 = *(v0 + 352);
  v72 = *(v0 + 320);
  v71 = *(v0 + 328);
  v73 = *(v0 + 304);
  v74 = *(v0 + 312);
  v97 = *(v0 + 296);
  v99 = *(v0 + 288);
  v101 = *(v0 + 264);
  v103 = *(v0 + 256);
  v105 = *(v0 + 248);
  v106 = *(v0 + 240);
  v108 = *(v0 + 232);
  v110 = *(v0 + 208);
  v112 = *(v0 + 200);
  v114 = *(v0 + 192);
  v115 = *(v0 + 184);
  v117 = *(v0 + 176);
  v119 = *(v0 + 168);
  v121 = *(v0 + 160);
  v123 = *(v0 + 136);
  v124 = *(v0 + 128);
  v126 = *(v0 + 104);
  v127 = *(v0 + 96);
  v128 = *(v0 + 88);
  v130 = *(v0 + 80);
  v132 = *(v0 + 72);
  v135 = *(v0 + 64);
  v138 = *(v0 + 56);
  v142 = *(v0 + 48);
  (*(*(v0 + 152) + 56))(*(v0 + 16), v29, 1, *(v0 + 144));

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_1006A2820()
{
  v1 = v0[53];

  v2 = v0[58];
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create unknownBeacon from wild mode advt: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[48];
  v9 = v0[49];
  v11 = v0[47];
  v13 = v0[43];
  v12 = v0[44];
  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[38];
  v17 = v0[39];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[22];
  v32 = v0[21];
  v33 = v0[20];
  v34 = v0[17];
  v35 = v0[16];
  v36 = v0[13];
  v37 = v0[12];
  v38 = v0[11];
  v39 = v0[10];
  v40 = v0[9];
  v41 = v0[8];
  v42 = v0[7];
  v43 = v0[6];
  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1006A2B7C()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[53];
  v4 = v0[44];

  sub_100006654(v1, v2);
  sub_100721D04(v4, type metadata accessor for BeaconIdentifier);
  v5 = v0[64];
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE40);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to create unknownBeacon from wild mode advt: %@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v13 = v0[48];
  v12 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  v18 = v0[40];
  v17 = v0[41];
  v19 = v0[38];
  v20 = v0[39];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[31];
  v28 = v0[30];
  v29 = v0[29];
  v30 = v0[26];
  v31 = v0[25];
  v32 = v0[24];
  v33 = v0[23];
  v34 = v0[22];
  v35 = v0[21];
  v36 = v0[20];
  v37 = v0[17];
  v38 = v0[16];
  v39 = v0[13];
  v40 = v0[12];
  v41 = v0[11];
  v42 = v0[10];
  v43 = v0[9];
  v44 = v0[8];
  v45 = v0[7];
  v46 = v0[6];
  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1006A2F08()
{
  v1 = v0[53];

  v2 = v0[68];
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create unknownBeacon from wild mode advt: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[48];
  v9 = v0[49];
  v11 = v0[47];
  v13 = v0[43];
  v12 = v0[44];
  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[38];
  v17 = v0[39];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[22];
  v32 = v0[21];
  v33 = v0[20];
  v34 = v0[17];
  v35 = v0[16];
  v36 = v0[13];
  v37 = v0[12];
  v38 = v0[11];
  v39 = v0[10];
  v40 = v0[9];
  v41 = v0[8];
  v42 = v0[7];
  v43 = v0[6];
  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1006A3264()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[53];
  v4 = v0[43];

  sub_100006654(v2, v1);
  sub_100721D04(v4, type metadata accessor for BeaconIdentifier);
  v5 = v0[72];
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE40);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to create unknownBeacon from wild mode advt: %@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v13 = v0[48];
  v12 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  v18 = v0[40];
  v17 = v0[41];
  v19 = v0[38];
  v20 = v0[39];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[31];
  v28 = v0[30];
  v29 = v0[29];
  v30 = v0[26];
  v31 = v0[25];
  v32 = v0[24];
  v33 = v0[23];
  v34 = v0[22];
  v35 = v0[21];
  v36 = v0[20];
  v37 = v0[17];
  v38 = v0[16];
  v39 = v0[13];
  v40 = v0[12];
  v41 = v0[11];
  v42 = v0[10];
  v43 = v0[9];
  v44 = v0[8];
  v45 = v0[7];
  v46 = v0[6];
  (*(v0[19] + 56))(v0[2], 1, 1, v0[18]);

  v21 = v0[1];

  return v21();
}

void *sub_1006A35F4(NSObject *a1)
{
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v118 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v117 = &v112 - v11;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v112 - v18;
  __chkstk_darwin(v17);
  v129 = &v112 - v20;
  v115 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v21 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v114 = &v112 - v22;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v122 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v141 = &v112 - v28;
  v121 = v1;
  v29 = *(v1 + 280);
  v132 = a1;
  v30 = sub_10125F790(a1);
  v31 = sub_1010D7CD4(v30);
  v33 = v31[2];
  if (!v33)
  {

    v34 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
    return *&v34;
  }

  v140 = 0;
  v113 = (v24 + 48);
  v124 = (v24 + 32);
  v133 = (v24 + 8);
  v34 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
  v35 = 32;
  v126 = SPBeaconTaskNamePlaySound;
  v119 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
  v123 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  *&v32 = 136315394;
  v116 = v32;
  v125 = v6;
  v128 = v16;
  v120 = v19;
  v36 = v129;
  v134 = v23;
  v127 = v31;
  do
  {
    v137 = v34;
    v138 = v35;
    v139 = v33;
    v40 = qword_101694FA8;
    v41 = *(v31 + v35);
    if (v40 != -1)
    {
      swift_once();
    }

    v146 = 7.45683732e247;
    v147 = -5.98008217e197;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v150 == 1)
    {
      v42 = [objc_opt_self() sharedInstance];
      v43 = [v42 isInternalBuild];

      if (v43)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v44 = sub_1000076D4(v115, qword_101696A00);
        swift_beginAccess();
        v45 = v44;
        v46 = v114;
        sub_1000D2A70(v45, v114, &unk_101696900, &unk_10138B1E0);
        if ((*v113)(v46, 1, v23) != 1)
        {
          (*v124)(v141, v46, v23);
          goto LABEL_30;
        }

        sub_10000B3A8(v46, &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    v148 = My;
    v149 = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v48 = sub_1000280DC(&v146);
    (*(*(My - 8) + 104))(v48, v123, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&v146);
    if (My)
    {
      sub_100F0FDBC();
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      v50 = v140;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v51 = v118;
      if (Current - v146 - v147 <= 86400.0)
      {
        v140 = v50;
      }

      else
      {
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v140 = v50;
        v52 = type metadata accessor for TaskPriority();
        v53 = *(v52 - 8);
        v54 = v117;
        (*(v53 + 56))(v117, 1, 1, v52);
        v55 = swift_allocObject();
        *(v55 + 16) = 0;
        *(v55 + 24) = 0;
        sub_1000D2A70(v54, v51, &qword_101698C00, &qword_10138B570);
        v56 = v51;
        v57 = (*(v53 + 48))(v51, 1, v52);

        if (v57 == 1)
        {
          sub_10000B3A8(v56, &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v53 + 8))(v56, v52);
        }

        v59 = *(v55 + 16);
        v58 = *(v55 + 24);
        swift_unknownObjectRetain();

        v36 = v129;
        if (v59)
        {
          swift_getObjectType();
          v60 = dispatch thunk of Actor.unownedExecutor.getter();
          v62 = v61;
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0;
          v62 = 0;
        }

        sub_10000B3A8(v117, &qword_101698C00, &qword_10138B570);
        v63 = swift_allocObject();
        *(v63 + 16) = &unk_10138B610;
        *(v63 + 24) = v55;
        if (v62 | v60)
        {
          v142 = 0;
          v143 = 0;
          v144 = v60;
          v145 = v62;
        }

        swift_task_create();

        v6 = v125;
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

LABEL_30:
    v64 = type metadata accessor for UUID();
    v136 = *(v64 - 8);
    v65 = *(v136 + 56);
    v66 = v136 + 56;
    v65(v36, 1, 1, v64);
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;
    if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
    {
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v72 & 1) == 0)
      {
        v101 = 0;
        v96 = 2;
        v94 = v128;
        goto LABEL_44;
      }
    }

    v131 = v65;
    v73 = *(*(v121 + v119) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
    __chkstk_darwin(v71);
    *(&v112 - 2) = v74;
    *(&v112 - 1) = v132;
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    v75 = v140;
    OS_dispatch_queue.sync<A>(execute:)();
    v140 = v75;
    v76 = v146;
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v135 = v64;
    v77 = type metadata accessor for Logger();
    sub_1000076D4(v77, qword_10177B380);
    sub_100721C9C(v132, v6, type metadata accessor for WildModeAssociationRecord);
    v78 = *&v76;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();

    v81 = os_log_type_enabled(v79, v80);
    v130 = v66;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v146 = COERCE_DOUBLE(swift_slowAlloc());
      *v82 = v116;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v41;
      v86 = v85;
      sub_100721D04(v125, type metadata accessor for WildModeAssociationRecord);
      v87 = sub_1000136BC(v83, v86, &v146);

      *(v82 + 4) = v87;
      *(v82 + 12) = 2080;
      v88 = [v78 debugDescription];
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      v92 = v89;
      v41 = v84;
      v6 = v125;
      v93 = sub_1000136BC(v92, v91, &v146);

      *(v82 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v79, v80, "UT Play taskInfo for %s: %s", v82, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v6, type metadata accessor for WildModeAssociationRecord);
    }

    v94 = v128;
    v95 = v120;
    v96 = [v78 state];
    v97 = [v78 lastUpdated];
    v98 = v122;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v99 = v141;
    v100 = v134;
    (*v133)(v141, v134);
    (*v124)(v99, v98, v100);
    v101 = [v78 error];
    v102 = [v78 commandIdentifier];
    if (v102)
    {
      v103 = v102;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v104 = v129;
      sub_10000B3A8(v129, &qword_1016980D0, &unk_10138F3B0);
      v105 = 0;
    }

    else
    {
      v104 = v129;
      sub_10000B3A8(v129, &qword_1016980D0, &unk_10138F3B0);

      v105 = 1;
    }

    v64 = v135;
    v131(v95, v105, 1, v135);
    sub_1000D2AD8(v95, v104, &qword_1016980D0, &unk_10138F3B0);
    v36 = v104;
LABEL_44:
    v106 = v41;
    swift_errorRetain();
    v107.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (v101)
    {
      v108 = _convertErrorToNSError(_:)();
    }

    else
    {
      v108 = 0;
    }

    v109 = v136;
    v110 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v106 lastUpdated:v107.super.isa error:v108 state:v96];

    sub_1000D2A70(v36, v94, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v109 + 48))(v94, 1, v64) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v109 + 8))(v94, v64);
    }

    [v110 setCommandIdentifier:isa];

    v38 = v137;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v38;
    sub_100FFF5A8(v110, v106, isUniquelyReferenced_nonNull_native);

    v34 = v146;
    sub_10000B3A8(v36, &qword_1016980D0, &unk_10138F3B0);
    v23 = v134;
    (*v133)(v141, v134);
    v35 = v138 + 8;
    v33 = v139 - 1;
    v31 = v127;
  }

  while (v139 != 1);

  return *&v34;
}

uint64_t sub_1006A4634(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1006A46C8;

  return daemon.getter();
}

uint64_t sub_1006A46C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1006A48A4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006A48A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;

  v7 = v4[5];
  if (v1)
  {

    return _swift_task_switch(sub_1006A4BE0, 0, 0);
  }

  else
  {

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_1006A4A58;

    return sub_1012247BC();
  }
}

uint64_t sub_1006A4A58()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1006A4D64;
  }

  else
  {
    v3 = sub_1006A4B6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006A4B6C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  (*(v0 + 16))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006A4BE0()
{
  v10 = v0;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000035, 0x800000010135D8A0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Missing OwnerCommandService!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 24);
  (*(v0 + 16))(0);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1006A4D64()
{
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B2D0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error stop fetching encrypted serial number %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[9];
  v10 = v0[7];
  v12 = v0[2];
  v11 = v0[3];

  v12(0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1006A4F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v36 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v30[-v11];
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B2D0);
  v35 = *(v8 + 16);
  v35(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v9;
    v17 = v16;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v17 = 136446466;
    *(v17 + 4) = sub_1000136BC(0xD000000000000030, 0x800000010135D960, &v38);
    *(v17 + 12) = 2082;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v32 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v15;
    v19 = a1;
    v20 = a3;
    v21 = v4;
    v23 = v22;
    (*(v8 + 8))(v12, v7);
    v24 = sub_1000136BC(v18, v23, &v38);
    v4 = v21;
    a3 = v20;
    a1 = v19;

    *(v17 + 14) = v24;
    v25 = v32;
    _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s identifier: %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    v9 = v34;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  type metadata accessor for Transaction();
  v26 = v36;
  v35(v36, a1, v7);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v37;
  *(v28 + 24) = a3;
  (*(v8 + 32))(v28 + v27, v26, v7);
  *(v28 + ((v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1006A52F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for WildModeAssociationRecord(0);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v4[15] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v15 = type metadata accessor for LocalFindableAccessoryRecord();
  v4[17] = v15;
  v16 = *(v15 - 8);
  v4[18] = v16;
  v17 = *(v16 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v4[21] = v18;
  v19 = *(v18 - 8);
  v4[22] = v19;
  v4[23] = *(v19 + 64);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v20 = async function pointer to daemon.getter[1];
  v21 = swift_task_alloc();
  v4[31] = v21;
  *v21 = v4;
  v21[1] = sub_1006A5610;

  return daemon.getter();
}

uint64_t sub_1006A5610(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  v3[32] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[33] = v6;
  v7 = type metadata accessor for Daemon();
  v3[34] = v7;
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[35] = v9;
  v10 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1006A57F0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006A57F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 288) = a1;

  v7 = *(v3 + 256);
  if (v1)
  {

    return _swift_task_switch(sub_1006A599C, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 296) = v9;
    *v9 = v6;
    v9[1] = sub_1006A5BBC;

    return daemon.getter();
  }
}

uint64_t sub_1006A599C()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandService to fetchUnauthorizedEncryptedPayload!", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v9 = v0[2];
  v8 = v0[3];

  (*(v6 + 56))(v7, 1, 1, v5);
  v9(v7);
  sub_10000B3A8(v7, &unk_101696AC0, &qword_101390A60);
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[16];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1006A5BBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v5 = *v1;
  v3[38] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[39] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100003E8C(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1006A5D70;
  v10 = v3[35];
  v11 = v3[34];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1006A5D70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v5 = *v2;
  *(*v2 + 320) = a1;

  v6 = *(v3 + 304);
  if (v1)
  {

    v7 = sub_1006A71BC;
  }

  else
  {

    v7 = sub_1006A5EC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1006A5EC0()
{
  v36 = v0;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[41] = sub_1000076D4(v5, qword_10177B2D0);
  v6 = *(v3 + 16);
  v0[42] = v6;
  v0[43] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v12 = v0[21];
  v11 = v0[22];
  if (v9)
  {
    v34 = v8;
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD000000000000030, 0x800000010135D960, &v35);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_1000136BC(v19, v17, &v35);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, log, v34, "%{public}s Checking LocalFindableRecord: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  v0[44] = v18;
  v21 = v0[40];
  v22 = v0[29];
  v24 = v0[22];
  v23 = v0[23];
  v25 = v0[21];
  v6(v22, v0[4], v25);
  v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v0[45] = v27;
  *(v27 + 16) = v21;
  (*(v24 + 32))(v27 + v26, v22, v25);
  v28 = async function pointer to withTimeout<A>(_:block:)[1];

  v29 = swift_task_alloc();
  v0[46] = v29;
  *v29 = v0;
  v29[1] = sub_1006A6254;
  v31 = v0[15];
  v30 = v0[16];

  return withTimeout<A>(_:block:)(v30, 5000000000000000000, 0, &unk_1013B6950, v27, v31);
}

uint64_t sub_1006A6254()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_1006A77C8;
  }

  else
  {
    v5 = *(v2 + 360);

    v4 = sub_1006A6370;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006A6370()
{
  v85 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    v2 = v0[40];

    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    v6 = *(v0[5] + 280);
    sub_100023184(v0[4], v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_10000B3A8(v0[6], &unk_1016C7C90, &qword_1013BB4B0);
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v7 = v0[27];
      v8 = v0[21];
      v9 = v0[22];
      v10 = v0[4];
      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177B2D0);
      (*(v9 + 16))(v7, v10, v8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = v0[27];
      v16 = v0[21];
      v17 = v0[22];
      if (v14)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v84 = v19;
        *v18 = 141558275;
        *(v18 + 4) = 1752392040;
        *(v18 + 12) = 2081;
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        (*(v17 + 8))(v15, v16);
        v23 = sub_1000136BC(v20, v22, &v84);

        *(v18 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v12, v13, "No wildModeAssociationRecord for %{private,mask.hash}s", v18, 0x16u);
        sub_100007BAC(v19);
      }

      else
      {

        (*(v17 + 8))(v15, v16);
      }

      v59 = v0[36];
      v60 = v0[10];
      v62 = v0[2];
      v61 = v0[3];
      (*(v0[12] + 56))(v60, 1, 1, v0[11]);
      v62(v60);

      sub_10000B3A8(v60, &unk_101696AC0, &qword_101390A60);
      v64 = v0[29];
      v63 = v0[30];
      v66 = v0[27];
      v65 = v0[28];
      v68 = v0[25];
      v67 = v0[26];
      v69 = v0[24];
      v71 = v0[19];
      v70 = v0[20];
      v72 = v0[16];
      v78 = v0[14];
      v79 = v0[13];
      v80 = v0[10];
      v81 = v0[9];
      v83 = v0[6];

      v73 = v0[1];

      return v73();
    }

    else
    {
      sub_10002AB74(v0[6], v0[9], type metadata accessor for WildModeAssociationRecord);
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v36 = v0[28];
      v37 = v0[21];
      v38 = v0[22];
      v39 = v0[4];
      v40 = type metadata accessor for Logger();
      v0[50] = sub_1000076D4(v40, qword_10177B2D0);
      v41 = *(v38 + 16);
      v0[51] = v41;
      v0[52] = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v41(v36, v39, v37);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v0[28];
      v46 = v0[21];
      v47 = v0[22];
      if (v44)
      {
        v48 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v84 = v82;
        *v48 = 136446210;
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v52 = *(v47 + 8);
        v52(v45, v46);
        v53 = sub_1000136BC(v49, v51, &v84);

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v42, v43, "Fetching encrypted serial number for %{public}s", v48, 0xCu);
        sub_100007BAC(v82);
      }

      else
      {

        v52 = *(v47 + 8);
        v52(v45, v46);
      }

      v0[53] = v52;
      v74 = swift_task_alloc();
      v0[54] = v74;
      *v74 = v0;
      v74[1] = sub_1006A6ED4;
      v75 = v0[36];
      v76 = v0[13];
      v77 = v0[9];

      return sub_1012226E0(v76, v77);
    }
  }

  else
  {
    v24 = v0[41];
    v26 = v0[19];
    v25 = v0[20];
    sub_10002AB74(v1, v25, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100721C9C(v25, v26, type metadata accessor for LocalFindableAccessoryRecord);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[19];
    if (v29)
    {
      v31 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_1000136BC(0xD000000000000030, 0x800000010135D960, &v84);
      *(v31 + 12) = 2080;
      v32 = sub_100158AA8();
      v34 = v33;
      sub_100721D04(v30, type metadata accessor for LocalFindableAccessoryRecord);
      v35 = sub_1000136BC(v32, v34, &v84);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s Found LocalFindableRecord: %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v30, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v54 = swift_task_alloc();
    v0[48] = v54;
    *v54 = v0;
    v54[1] = sub_1006A6BDC;
    v55 = v0[36];
    v56 = v0[20];
    v57 = v0[14];

    return sub_101216C8C(v57, v56);
  }
}

uint64_t sub_1006A6BDC()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1006A7FD4;
  }

  else
  {
    v3 = sub_1006A6CF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006A6CF0()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[20];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v9 = v0[2];
  v8 = v0[3];
  (*(v6 + 16))(v7, v4, v5);
  (*(v6 + 56))(v7, 0, 1, v5);
  v9(v7);

  sub_10000B3A8(v7, &unk_101696AC0, &qword_101390A60);
  (*(v6 + 8))(v4, v5);
  sub_100721D04(v3, type metadata accessor for LocalFindableAccessoryRecord);
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[16];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1006A6ED4()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_1006A8370;
  }

  else
  {
    v3 = sub_1006A6FE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006A6FE8()
{
  v1 = v0[36];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v8 = v0[2];
  v7 = v0[3];
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v8(v5);

  sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  (*(v3 + 8))(v2, v4);
  sub_100721D04(v6, type metadata accessor for WildModeAssociationRecord);
  v10 = v0[29];
  v9 = v0[30];
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[16];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[10];
  v24 = v0[9];
  v25 = v0[6];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1006A71BC()
{
  v67 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(v0[5] + 280);
  sub_100023184(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[6], &unk_1016C7C90, &qword_1013BB4B0);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v5 = v0[27];
    v6 = v0[21];
    v7 = v0[22];
    v8 = v0[4];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B2D0);
    (*(v7 + 16))(v5, v8, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[27];
    v14 = v0[21];
    v15 = v0[22];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v66 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = sub_1000136BC(v18, v20, &v66);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "No wildModeAssociationRecord for %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    v40 = v0[36];
    v41 = v0[10];
    v43 = v0[2];
    v42 = v0[3];
    (*(v0[12] + 56))(v41, 1, 1, v0[11]);
    v43(v41);

    sub_10000B3A8(v41, &unk_101696AC0, &qword_101390A60);
    v45 = v0[29];
    v44 = v0[30];
    v47 = v0[27];
    v46 = v0[28];
    v49 = v0[25];
    v48 = v0[26];
    v50 = v0[24];
    v52 = v0[19];
    v51 = v0[20];
    v53 = v0[16];
    v60 = v0[14];
    v61 = v0[13];
    v62 = v0[10];
    v63 = v0[9];
    v65 = v0[6];

    v54 = v0[1];

    return v54();
  }

  else
  {
    sub_10002AB74(v0[6], v0[9], type metadata accessor for WildModeAssociationRecord);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v22 = v0[28];
    v23 = v0[21];
    v24 = v0[22];
    v25 = v0[4];
    v26 = type metadata accessor for Logger();
    v0[50] = sub_1000076D4(v26, qword_10177B2D0);
    v27 = *(v24 + 16);
    v0[51] = v27;
    v0[52] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v27(v22, v25, v23);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[28];
    v32 = v0[21];
    v33 = v0[22];
    if (v30)
    {
      v34 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66 = v64;
      *v34 = 136446210;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v38 = *(v33 + 8);
      v38(v31, v32);
      v39 = sub_1000136BC(v35, v37, &v66);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Fetching encrypted serial number for %{public}s", v34, 0xCu);
      sub_100007BAC(v64);
    }

    else
    {

      v38 = *(v33 + 8);
      v38(v31, v32);
    }

    v0[53] = v38;
    v56 = swift_task_alloc();
    v0[54] = v56;
    *v56 = v0;
    v56[1] = sub_1006A6ED4;
    v57 = v0[36];
    v58 = v0[13];
    v59 = v0[9];

    return sub_1012226E0(v58, v59);
  }
}

uint64_t sub_1006A77C8()
{
  v91 = v0;
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[26];
  v6 = v0[21];
  v7 = v0[4];

  v3(v5, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[47];
  v12 = v0[44];
  v13 = v0[40];
  v14 = v0[26];
  v16 = v0[21];
  v15 = v0[22];
  if (v10)
  {
    v87 = v0[40];
    v84 = v0[44];
    v17 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v17 = 136446723;
    *(v17 + 4) = sub_1000136BC(0xD000000000000030, 0x800000010135D960, &v90);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v84(v14, v16);
    v21 = sub_1000136BC(v18, v20, &v90);

    *(v17 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s No LocalFindableRecord: %{private,mask.hash}s", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[40];

    v12(v14, v16);
  }

  v23 = v0[7];
  v24 = v0[8];
  v25 = v0[6];
  v26 = *(v0[5] + 280);
  sub_100023184(v0[4], v25);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    sub_10000B3A8(v0[6], &unk_1016C7C90, &qword_1013BB4B0);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v27 = v0[27];
    v28 = v0[21];
    v29 = v0[22];
    v30 = v0[4];
    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177B2D0);
    (*(v29 + 16))(v27, v30, v28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[27];
    v36 = v0[21];
    v37 = v0[22];
    if (v34)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v90 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v37 + 8))(v35, v36);
      v43 = sub_1000136BC(v40, v42, &v90);

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v32, v33, "No wildModeAssociationRecord for %{private,mask.hash}s", v38, 0x16u);
      sub_100007BAC(v39);
    }

    else
    {

      (*(v37 + 8))(v35, v36);
    }

    v62 = v0[36];
    v63 = v0[10];
    v65 = v0[2];
    v64 = v0[3];
    (*(v0[12] + 56))(v63, 1, 1, v0[11]);
    v65(v63);

    sub_10000B3A8(v63, &unk_101696AC0, &qword_101390A60);
    v67 = v0[29];
    v66 = v0[30];
    v69 = v0[27];
    v68 = v0[28];
    v71 = v0[25];
    v70 = v0[26];
    v72 = v0[24];
    v74 = v0[19];
    v73 = v0[20];
    v75 = v0[16];
    v82 = v0[14];
    v83 = v0[13];
    v85 = v0[10];
    v86 = v0[9];
    v89 = v0[6];

    v76 = v0[1];

    return v76();
  }

  else
  {
    sub_10002AB74(v0[6], v0[9], type metadata accessor for WildModeAssociationRecord);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v44 = v0[28];
    v45 = v0[21];
    v46 = v0[22];
    v47 = v0[4];
    v48 = type metadata accessor for Logger();
    v0[50] = sub_1000076D4(v48, qword_10177B2D0);
    v49 = *(v46 + 16);
    v0[51] = v49;
    v0[52] = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v49(v44, v47, v45);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[28];
    v54 = v0[21];
    v55 = v0[22];
    if (v52)
    {
      v56 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v90 = v88;
      *v56 = 136446210;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = *(v55 + 8);
      v60(v53, v54);
      v61 = sub_1000136BC(v57, v59, &v90);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v50, v51, "Fetching encrypted serial number for %{public}s", v56, 0xCu);
      sub_100007BAC(v88);
    }

    else
    {

      v60 = *(v55 + 8);
      v60(v53, v54);
    }

    v0[53] = v60;
    v78 = swift_task_alloc();
    v0[54] = v78;
    *v78 = v0;
    v78[1] = sub_1006A6ED4;
    v79 = v0[36];
    v80 = v0[13];
    v81 = v0[9];

    return sub_1012226E0(v80, v81);
  }
}

uint64_t sub_1006A7FD4()
{
  v48 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  (*(v0 + 336))(*(v0 + 200), *(v0 + 32), *(v0 + 168));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v43 = *(v0 + 352);
    v45 = *(v0 + 392);
    v6 = *(v0 + 200);
    v7 = *(v0 + 168);
    v41 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v8 = 136446466;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v43(v6, v7);
    v14 = sub_1000136BC(v11, v13, &v47);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 352);
    v17 = *(v0 + 200);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);

    v16(v17, v18);
  }

  v20 = *(v0 + 392);
  v21 = *(v0 + 320);
  v22 = *(v0 + 288);
  v23 = *(v0 + 160);
  v24 = *(v0 + 80);
  v26 = *(v0 + 16);
  v25 = *(v0 + 24);
  (*(*(v0 + 96) + 56))(v24, 1, 1, *(v0 + 88));
  v26(v24);

  sub_10000B3A8(v24, &unk_101696AC0, &qword_101390A60);
  sub_100721D04(v23, type metadata accessor for LocalFindableAccessoryRecord);
  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  v30 = *(v0 + 216);
  v29 = *(v0 + 224);
  v32 = *(v0 + 200);
  v31 = *(v0 + 208);
  v33 = *(v0 + 192);
  v35 = *(v0 + 152);
  v34 = *(v0 + 160);
  v36 = *(v0 + 128);
  v39 = *(v0 + 112);
  v40 = *(v0 + 104);
  v42 = *(v0 + 80);
  v44 = *(v0 + 72);
  v46 = *(v0 + 48);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1006A8370()
{
  v47 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  (*(v0 + 408))(*(v0 + 192), *(v0 + 32), *(v0 + 168));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v42 = *(v0 + 424);
    v44 = *(v0 + 440);
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    v40 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v8 = 136446466;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v42(v6, v7);
    v14 = sub_1000136BC(v11, v13, &v46);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 424);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);

    v16(v17, v18);
  }

  v20 = *(v0 + 440);
  v21 = *(v0 + 288);
  v23 = *(v0 + 72);
  v22 = *(v0 + 80);
  v25 = *(v0 + 16);
  v24 = *(v0 + 24);
  (*(*(v0 + 96) + 56))(v22, 1, 1, *(v0 + 88));
  v25(v22);

  sub_10000B3A8(v22, &unk_101696AC0, &qword_101390A60);
  sub_100721D04(v23, type metadata accessor for WildModeAssociationRecord);
  v27 = *(v0 + 232);
  v26 = *(v0 + 240);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v31 = *(v0 + 200);
  v30 = *(v0 + 208);
  v32 = *(v0 + 192);
  v34 = *(v0 + 152);
  v33 = *(v0 + 160);
  v35 = *(v0 + 128);
  v38 = *(v0 + 112);
  v39 = *(v0 + 104);
  v41 = *(v0 + 80);
  v43 = *(v0 + 72);
  v45 = *(v0 + 48);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1006A86FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1006A871C, a2, 0);
}

uint64_t sub_1006A871C()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1000D2464;
  v3 = v0[4];
  v4 = v0[2];

  return sub_100C57B00(v4, v3);
}

uint64_t sub_1006A87BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = type metadata accessor for UUID();
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v11 = type metadata accessor for AccessoryCommand();
  v6[29] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v6[31] = v14;
  *v14 = v6;
  v14[1] = sub_1006A8930;

  return daemon.getter();
}

uint64_t sub_1006A8930(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1006A8B0C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006A8B0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v8 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = sub_1006A95E0;
  }

  else
  {
    v6 = v3[32];

    v5 = sub_1006A8C28;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006A8C28()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[20];
  (*(v5 + 56))(v2, 1, 1, v4);
  (*(v5 + 16))(v3, v6, v4);
  sub_1000D2A70(v2, v1, &qword_1016980D0, &unk_10138F3B0);
  v7 = *(v5 + 48);
  v8 = v7(v1, 1, v4);
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[25];
  if (v8 == 1)
  {
    v12 = v0[23];
    v13 = v0[25];
    UUID.init()();
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    if (v7(v10, 1, v12) != 1)
    {
      sub_10000B3A8(v0[27], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v14 = v0[23];
    v15 = v0[24];
    sub_10000B3A8(v0[28], &qword_1016980D0, &unk_10138F3B0);
    (*(v15 + 32))(v11, v10, v14);
  }

  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[26];
  v19 = v0[23];
  v20 = *(v0[24] + 32);
  v20(v16, v0[25], v19);
  v20(v16 + v17[5], v18, v19);
  v21 = v16 + v17[6];
  *v21 = xmmword_1013B65F0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = xmmword_10139BF70;
  *(v16 + v17[7]) = 0;
  *(v16 + v17[8]) = 1;
  v22 = swift_task_alloc();
  v0[36] = v22;
  *v22 = v0;
  v22[1] = sub_1006A8E84;
  v23 = v0[34];
  v24 = v0[30];

  return sub_10121B780((v0 + 2), v24, 2);
}

uint64_t sub_1006A8E84()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1006A9830;
  }

  else
  {
    v3 = sub_1006A8F98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006A8F98()
{
  v46 = v0;
  sub_1000D2A70((v0 + 2), (v0 + 8), &qword_1016A24A8, &unk_1013F60E0);
  if (v0[11])
  {
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    if (swift_dynamicCast())
    {
      v2 = v0[14];
      v1 = v0[15];
      v3 = v0[18];
      if (((v3 >> 58) & 0xC | (v1 >> 60) & 3) == 4)
      {
        v4 = v2 >> 24;
        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_1000076D4(v5, qword_10177B7F8);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v45[0] = swift_slowAlloc();
          *v8 = 136315394;
          *(v8 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, v45);
          *(v8 + 12) = 2082;
          v9 = (v4 << 24) | (BYTE2(v2) << 16) | v2;
          v10 = sub_10098E010();
          v12 = sub_1000136BC(v10, v11, v45);

          *(v8 + 14) = v12;
          _os_log_impl(&_mh_execute_header, v6, v7, "%s fwVersionResponse: %{public}s", v8, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v9 = (v4 << 24) | (BYTE2(v2) << 16) | v2;
        }

        v38 = v0[34];
        v39 = v0[30];
        v41 = v0[21];
        v40 = v0[22];
        v42 = sub_10098E0F0(v9);
        v44 = v43;
        v41();
        sub_100016590(v42, v44);

        sub_10000B3A8((v0 + 2), &qword_1016A24A8, &unk_1013F60E0);
        sub_100721D04(v39, type metadata accessor for AccessoryCommand);
        goto LABEL_19;
      }

      v13 = v0[19];
      sub_100721758(v0[14], v1, v0[16], v0[17], v3);
    }
  }

  else
  {
    sub_10000B3A8((v0 + 8), &qword_1016A24A8, &unk_1013F60E0);
  }

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B7F8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v45[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, v45);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s Invalid fwVersionResponse!", v17, 0xCu);
    sub_100007BAC(v18);
  }

  v19 = v0[34];
  v20 = v0[30];
  sub_1003FD838();
  v21 = swift_allocError();
  *v22 = 4;
  swift_willThrow();

  sub_10000B3A8((v0 + 2), &qword_1016A24A8, &unk_1013F60E0);
  sub_100721D04(v20, type metadata accessor for AccessoryCommand);
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v14, qword_10177B7F8);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45[0] = v27;
    *v25 = 136315394;
    *(v25 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, v45);
    *(v25 + 12) = 2114;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v28;
    *v26 = v28;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s failed due to %{public}@", v25, 0x16u);
    sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v27);
  }

  v30 = v0[21];
  v29 = v0[22];
  swift_errorRetain();
  v30(v21, 0, 1);

LABEL_19:
  v31 = v0[30];
  v32 = v0[27];
  v33 = v0[28];
  v35 = v0[25];
  v34 = v0[26];

  v36 = v0[1];

  return v36();
}

uint64_t sub_1006A95E0()
{
  v20 = v0;
  v1 = v0[32];

  v2 = v0[35];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, &v19);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s failed due to %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v11 = v0[21];
  v10 = v0[22];
  swift_errorRetain();
  v11(v2, 0, 1);

  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[28];
  v16 = v0[25];
  v15 = v0[26];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1006A9830()
{
  v21 = v0;
  v1 = v0[34];
  v2 = v0[30];

  sub_100721D04(v2, type metadata accessor for AccessoryCommand);
  v3 = v0[37];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B7F8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, &v20);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s failed due to %{public}@", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  v12 = v0[21];
  v11 = v0[22];
  swift_errorRetain();
  v12(v3, 0, 1);

  v13 = v0[30];
  v14 = v0[27];
  v15 = v0[28];
  v17 = v0[25];
  v16 = v0[26];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1006A9AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v76 = a3;
  v88 = a4;
  v90 = a1;
  v91 = a2;
  v81 = type metadata accessor for LocalFindableAccessoryRecord();
  v4 = *(*(v81 - 8) + 64);
  v5 = __chkstk_darwin(v81);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = &v74 - v7;
  v78 = type metadata accessor for UUID();
  v84 = *(v78 - 8);
  v8 = *(v84 + 64);
  __chkstk_darwin(v78);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for StableIdentifier();
  v10 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for OwnedBeaconRecord();
  v12 = *(*(v86 - 8) + 64);
  v13 = __chkstk_darwin(v86);
  v83 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = &v74 - v15;
  v89 = type metadata accessor for SharedBeaconRecord(0);
  v16 = *(*(v89 - 8) + 64);
  v17 = __chkstk_darwin(v89);
  v87 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v74 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A7858, &qword_1013B6790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v27 = SPBeaconTaskNamePlaySound;
  *(inited + 32) = SPBeaconTaskNamePlaySound;
  v28 = v27;
  static Date.trustedNow.getter(v25);
  v29 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v31 = [v29 initWithName:v28 lastUpdated:isa error:0 state:2];

  (*(v22 + 8))(v25, v21);
  *(inited + 40) = v31;
  sub_1009097B0(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_1016A7860, &qword_1013B6798);
  sub_10001F280(v90, v93);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    v32 = v87;
    sub_10002AB74(v20, v87, type metadata accessor for SharedBeaconRecord);
    v33 = sub_1006EAD60(v32, *(v91 + 280));
    [v33 setConnectionAllowed:0];
    [v33 setConnectableDeviceCount:0];
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
    v34 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 setTaskInformation:v34];

    v35 = type metadata accessor for SharedBeaconRecord;
LABEL_3:
    v36 = v35;
    v37 = v32;
LABEL_4:
    sub_100721D04(v37, v36);
    v38 = v88;
LABEL_5:
    *v38 = v33;
    return sub_100007BAC(v93);
  }

  v40 = v91;
  v42 = v85;
  v41 = v86;
  if (swift_dynamicCast())
  {
    v43 = v83;
    sub_10002AB74(v42, v83, type metadata accessor for OwnedBeaconRecord);
    v44 = v82;
    sub_100721C9C(v43 + *(v41 + 24), v82, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_100721D04(v44, type metadata accessor for StableIdentifier);
        v33 = sub_1006EC8A4(v43, *(v40 + 280));
        sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
        sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
        v71 = Set._bridgeToObjectiveC()().super.isa;
        [v33 setShares:v71];

        type metadata accessor for SPBeaconTaskName(0);
        sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
        sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
        v72 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v33 setTaskInformation:v72];

        [v33 setSeparationState:SPTagSeparationStateNone];
        [v33 setBeaconSeparationState:0];
        sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
        sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
        v73 = Set._bridgeToObjectiveC()().super.isa;
        [v33 setSafeLocations:v73];

        [v33 setCanBeLeashedByHost:0];
        [v33 setConnectionAllowed:0];
        [v33 setConnectableDeviceCount:1];
      }

      else
      {
        sub_100721D04(v44, type metadata accessor for StableIdentifier);
        v33 = sub_1006EC8A4(v43, *(v40 + 280));
        [v33 setSeparationState:SPTagSeparationStateNone];
        [v33 setBeaconSeparationState:0];
        sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
        sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
        v55 = Set._bridgeToObjectiveC()().super.isa;
        [v33 setSafeLocations:v55];

        [v33 setCanBeLeashedByHost:0];
        sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
        sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
        v56 = Set._bridgeToObjectiveC()().super.isa;
        [v33 setShares:v56];

        type metadata accessor for SPBeaconTaskName(0);
        sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
        sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
        v57 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v33 setTaskInformation:v57];
      }

      v36 = type metadata accessor for OwnedBeaconRecord;
      v37 = v43;
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v58 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v59 = *(v44 + v58[12] + 8);

      v60 = *(v44 + v58[16] + 8);

      v61 = *(v44 + v58[20] + 8);

      v62 = *(v44 + v58[28] + 8);
      v38 = v88;
      v46 = v78;
      v47 = v84;
    }

    else
    {
      v38 = v88;
      v46 = v78;
      v47 = v84;
      if (EnumCaseMultiPayload != 3)
      {

        sub_100721D04(v44, type metadata accessor for StableIdentifier);
        v33 = sub_1006EC8A4(v43, *(v40 + 280));
        sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
        sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
        v70 = Set._bridgeToObjectiveC()().super.isa;
        [v33 setShares:v70];

LABEL_21:
        sub_100721D04(v43, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_5;
      }

      v48 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v49 = *(v44 + v48[12] + 8);

      v50 = *(v44 + v48[16] + 8);

      v51 = *(v44 + v48[20] + 8);
    }

    v63 = v44;

    v64 = *(v47 + 8);
    v84 = v47 + 8;
    v64(v63, v46);
    v33 = sub_1006EC8A4(v43, *(v40 + 280));
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
    v65 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 setTaskInformation:v65];

    [v33 setConnectionAllowed:0];
    [v33 setConnectableDeviceCount:1];
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v66 = [v33 identifier];
    v67 = v75;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = sub_1011A30E0(v67);
    v64(v67, v46);
    [v33 setSeparationState:v68];

    [v33 setBeaconSeparationState:0];
    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
    v69 = Set._bridgeToObjectiveC()().super.isa;
    [v33 setSafeLocations:v69];

    [v33 setCanBeLeashedByHost:0];
    goto LABEL_21;
  }

  v52 = v80;
  if (swift_dynamicCast())
  {
    v32 = v77;
    sub_10002AB74(v52, v77, type metadata accessor for LocalFindableAccessoryRecord);
    v33 = sub_1006EE39C(v32, *(v40 + 280));
    sub_1009097B0(_swiftEmptyArrayStorage);
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
    v53 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 setTaskInformation:v53];

    v35 = type metadata accessor for LocalFindableAccessoryRecord;
    goto LABEL_3;
  }

  type metadata accessor for SPOwnerSessionError(0);
  v92 = 18;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v54 = v93[13];
  swift_willThrow();
  result = sub_100007BAC(v93);
  *v76 = v54;
  return result;
}

void sub_1006AAA30(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v329 = a3;
  v341 = a4;
  v336 = type metadata accessor for LocalFindableAccessoryRecord();
  v6 = *(*(v336 - 8) + 64);
  v7 = __chkstk_darwin(v336);
  v330 = &v314 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v335 = &v314 - v9;
  v10 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v325 = &v314 - v12;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v332 = &v314 - v15;
  v16 = type metadata accessor for ShareRecord();
  v323 = *(v16 - 8);
  v17 = *(v323 + 64);
  __chkstk_darwin(v16 - 8);
  v324 = &v314 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v322 = &v314 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v321 = &v314 - v24;
  __chkstk_darwin(v23);
  v320 = &v314 - v25;
  *&v374 = type metadata accessor for DirectorySequence();
  v361 = *(v374 - 8);
  v26 = *(v361 + 64);
  v27 = __chkstk_darwin(v374);
  v344 = &v314 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v343 = &v314 - v30;
  __chkstk_darwin(v29);
  v342 = &v314 - v31;
  v333 = type metadata accessor for StableIdentifier();
  v32 = *(*(v333 - 8) + 64);
  __chkstk_darwin(v333);
  v334 = &v314 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = type metadata accessor for OwnedBeaconRecord();
  v34 = *(*(v339 - 8) + 64);
  v35 = __chkstk_darwin(v339);
  v319 = &v314 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v317 = &v314 - v38;
  v39 = __chkstk_darwin(v37);
  v340 = &v314 - v40;
  __chkstk_darwin(v39);
  v337 = &v314 - v41;
  v346 = type metadata accessor for SharedBeaconRecord(0);
  v42 = *(*(v346 - 8) + 64);
  v43 = __chkstk_darwin(v346);
  v338 = &v314 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v345 = &v314 - v45;
  v370 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v357 = *(v370 - 8);
  v46 = *(v357 + 64);
  __chkstk_darwin(v370);
  v356 = &v314 - v47;
  v48 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v355 = (&v314 - v50);
  v51 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51 - 8);
  v369 = (&v314 - v53);
  v368 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v354 = *(v368 - 8);
  v54 = *(v354 + 64);
  __chkstk_darwin(v368);
  v353 = &v314 - v55;
  v56 = type metadata accessor for URL();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  v59 = __chkstk_darwin(v56);
  v316 = &v314 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v328 = &v314 - v62;
  v63 = __chkstk_darwin(v61);
  v315 = &v314 - v64;
  v65 = __chkstk_darwin(v63);
  v327 = &v314 - v66;
  v67 = __chkstk_darwin(v65);
  v314 = &v314 - v68;
  v69 = __chkstk_darwin(v67);
  v326 = &v314 - v70;
  v71 = __chkstk_darwin(v69);
  v367 = &v314 - v72;
  v73 = __chkstk_darwin(v71);
  v75 = &v314 - v74;
  __chkstk_darwin(v73);
  v77 = &v314 - v76;
  v78 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v79 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78 - 8);
  v352 = (&v314 - v80);
  v364 = type metadata accessor for UUID();
  v362 = *(v364 - 8);
  v81 = *(v362 + 64);
  v82 = __chkstk_darwin(v364);
  v331 = &v314 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __chkstk_darwin(v82);
  v318 = &v314 - v85;
  __chkstk_darwin(v84);
  v87 = &v314 - v86;
  v89 = a2[3];
  v88 = a2[4];
  v347 = a2;
  sub_1000035D0(a2, v89);
  v90 = *(*(*(v88 + 8) + 8) + 32);
  v363 = v87;
  v90(v89);
  v359 = a1;
  v371 = *(a1 + 280);
  v91 = *(v371 + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v92 = sub_1000076D4(v56, qword_10177C0D8);
  v360 = v57;
  v94 = *(v57 + 16);
  v93 = (v57 + 16);
  v94(v77, v92, v56);
  v94(v75, v77, v56);
  v95 = v75;
  v348 = v77;
  v349 = *(v368 + 40);
  v96 = v368;
  v97 = v361 + 56;
  v365 = *(v361 + 56);
  v98 = v353;
  v365(v353 + v349, 1, 1, v374);
  v94(v98, v95, v56);
  *(v98 + *(v96 + 36)) = v91;
  v350 = v94;
  v94(v367, v95, v56);

  v99 = v369;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v100 = v360 + 8;
  v101 = *(v360 + 8);
  v351 = v95;
  v101(v95, v56);
  v102 = v348;
  v372 = v101;
  v373 = v100;
  (v101)();
  v366 = v97;
  v365(v99, 0, 1, v374);
  sub_10002311C(v99, v98 + v349, &qword_1016A5970, &unk_1013B3470);
  v103 = *(v354 + 56);
  v104 = v352;
  v105 = v368;
  v103(v352, 1, 1, v368);
  sub_10000B3A8(v104, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v98, v104, &qword_1016A7828, &unk_1013D7340);
  v103(v104, 0, 1, v105);
  v368 = sub_100B34BBC(v104);
  sub_10000B3A8(v104, &qword_1016A7830, &unk_1013D69E0);
  v354 = *(v371 + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v106 = sub_1000076D4(v56, qword_10177AC60);
  v107 = v350;
  v350(v102, v106, v56);
  v108 = v351;
  v107(v351, v102, v56);
  v109 = v370;
  v353 = *(v370 + 40);
  v110 = v356;
  v111 = v56;
  v112 = v365;
  v365(v356 + v353, 1, 1, v374);
  v107(v110, v108, v111);
  *(v110 + *(v109 + 36)) = v354;
  v107(v367, v108, v111);

  v113 = v369;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v114 = v108;
  v115 = v372;
  v372(v114, v111);
  v115(v102, v111);
  v112(v113, 0, 1, v374);
  sub_10002311C(v113, v110 + v353, &qword_1016A5970, &unk_1013B3470);
  v116 = *(v357 + 56);
  v117 = v355;
  v118 = v370;
  v116(v355, 1, 1, v370);
  sub_10000B3A8(v117, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v110, v117, &qword_1016A5978, &qword_101410D20);
  v116(v117, 0, 1, v118);
  v119 = sub_100B33E08(v117);
  v120 = sub_10000B3A8(v117, &qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v120);
  v121 = v363;
  *(&v314 - 2) = v363;
  v122 = v358;
  v123 = v358;
  v124 = *(sub_10013CF58(sub_10071EA10, (&v314 - 4), v368) + 16);

  __chkstk_darwin(v125);
  *(&v314 - 2) = v121;
  p_weak_ivar_lyt = v123;
  v127 = *(sub_10013CEF0(sub_10062BFE0, (&v314 - 4), v119) + 16);

  v128 = __OFADD__(v124, v127);
  v129 = v127 + v124;
  if (v128)
  {
    __break(1u);
LABEL_80:
    swift_once();
LABEL_32:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v186 = swift_allocObject();
    v374 = xmmword_101385D80;
    *(v186 + 16) = xmmword_101385D80;
    *(v186 + 56) = &type metadata for Bool;
    *(v186 + 64) = &protocol witness table for Bool;
    *(v186 + 32) = v123;
    os_log(_:dso:log:_:_:)();

    v187 = v93;
    v188 = v364;
    v189 = v369;
    v369(v187, v364);
    [v127 setConnectionAllowed:v123];
    v190 = [v127 p_weak_ivar_lyt[388]];
    v191 = v363;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v192 = *(v359 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);
    CurrentValueSubject.value.getter();
    v193 = v375[0];
    sub_10069CA80(v191, v375[0]);
    v189(v191, v188);
    if (__OFADD__(v193, v368))
    {
      __break(1u);
    }

    else
    {
      [v127 setConnectableDeviceCount:v193 + v368];
      if (qword_101694920 == -1)
      {
LABEL_34:
        v194 = [v127 p_weak_ivar_lyt[388]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v195 = sub_1011A30E0(v191);
        v196 = v364;
        v197 = v369;
        v369(v191, v364);
        [v127 setSeparationState:v195];

        v198 = [v127 p_weak_ivar_lyt[388]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v199 = v191;
        v200 = v191;
        v201 = v359;
        v202 = sub_1009C7E64(v199);
        v197(v200, v196);
        [v127 setBeaconSeparationState:v202];
        v203 = [v127 p_weak_ivar_lyt[388]];
        v204 = v332;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v362 + 56))(v204, 0, 1, v196);
        v205 = sub_1009C75D0(4, v204);
        sub_10000B3A8(v204, &qword_1016980D0, &unk_10138F3B0);
        sub_10112A684(v205);

        sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
        sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v127 setSafeLocations:isa];

        v207 = v340;
        [v127 setCanBeLeashedByHost:{sub_1006FBA08(v340, v201) & 1}];
        v208 = v339;
        v375[3] = v339;
        v375[4] = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
        v209 = sub_1000280DC(v375);
        sub_100721C9C(v207, v209, type metadata accessor for OwnedBeaconRecord);
        v210 = v209 + *(v208 + 20);
        v211 = v325;
        sub_100AC1584(v210, v325);
        v212 = type metadata accessor for BeaconProductInfoRecord();
        LODWORD(v209) = (*(*(v212 - 8) + 48))(v211, 1, v212);
        sub_10000B3A8(v211, &unk_1016AF8C0, &unk_1013A07A0);
        if (v209 == 1)
        {
          v213 = *(v201 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_productInfoManager);
          sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
          v214 = swift_allocObject();
          *(v214 + 16) = v374;
          sub_10001F280(v375, v214 + 32);
          sub_101095D74(v214, 1, 0, 0xF000000000000000, 0, 1, 0, 0);
        }

        sub_100007BAC(v375);
        v215 = v207;
        goto LABEL_77;
      }
    }

    swift_once();
    goto LABEL_34;
  }

  v130 = v111;
  v132 = (v362 + 8);
  v131 = *(v362 + 8);
  v131(v121, v364);
  sub_10001F280(v347, &v376);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v133 = v345;
  if (swift_dynamicCast())
  {
    v134 = v338;
    sub_10002AB74(v133, v338, type metadata accessor for SharedBeaconRecord);
    v127 = sub_1003F6D78(v134, v371);
    [v127 setConnectionAllowed:0];
    [v127 setConnectableDeviceCount:0];
    sub_1006EFEC4(v134, 0, v359);
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
    v135 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v127 setTaskInformation:v135];

    v136 = type metadata accessor for SharedBeaconRecord;
LABEL_8:
    v137 = v136;
    v138 = v134;
LABEL_9:
    sub_100721D04(v138, v137);
    v139 = v341;
LABEL_78:
    *v139 = v127;
    sub_100007BAC(&v376);
    return;
  }

  v140 = v337;
  v141 = v339;
  if (!swift_dynamicCast())
  {
    v149 = v335;
    if (!swift_dynamicCast())
    {
      type metadata accessor for SPOwnerSessionError(0);
      v377 = 18;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v151 = v375[0];
      swift_willThrow();
      sub_100007BAC(&v376);
      *v329 = v151;
      return;
    }

    v134 = v330;
    sub_10002AB74(v149, v330, type metadata accessor for LocalFindableAccessoryRecord);
    v127 = sub_1003F9EC4(v134, v371);
    sub_1006F5C7C(v134, 0, v359);
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
    v150 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v127 setTaskInformation:v150];

    v136 = type metadata accessor for LocalFindableAccessoryRecord;
    goto LABEL_8;
  }

  v368 = v129;
  v142 = v340;
  sub_10002AB74(v140, v340, type metadata accessor for OwnedBeaconRecord);
  v143 = v334;
  sub_100721C9C(v142 + *(v141 + 24), v334, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v369 = v131;
    v367 = v132;
    if (EnumCaseMultiPayload)
    {
      sub_100721D04(v143, type metadata accessor for StableIdentifier);
      v240 = *(v141 + 20);
      v370 = *(v371 + 168);
      v241 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v130, qword_10177A518);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      objc_autoreleasePoolPop(v241);
      v375[0] = _swiftEmptyArrayStorage;
      v377 = _swiftEmptyArrayStorage;
      v242 = [objc_opt_self() defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      v243 = v320;
      DirectorySequence.next()();
      v244 = v360;
      v245 = *(v360 + 48);
      if (v245(v243, 1, v130) != 1)
      {
        v246 = *(v244 + 32);
        v247 = v320;
        v248 = v314;
        do
        {
          v246(v248, v247, v130);
          v161 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v248, v370, v375, &v377);
          if (p_weak_ivar_lyt)
          {
            goto LABEL_86;
          }

          p_weak_ivar_lyt = 0;
          objc_autoreleasePoolPop(v161);
          v372(v248, v130);
          DirectorySequence.next()();
        }

        while (v245(v247, 1, v130) != 1);
      }

      v370 = p_weak_ivar_lyt;
      (*(v361 + 8))(v342, v374);
      static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v249 = static OS_os_log.default.getter();
      *&v374 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v250 = swift_allocObject();
      *(v250 + 16) = xmmword_10138BBE0;
      v251 = v375[0];
      v252 = *(v375[0] + 16);
      *(v250 + 56) = &type metadata for Int;
      *(v250 + 64) = &protocol witness table for Int;
      *(v250 + 32) = v252;
      sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL);

      v253 = v326;
      v254 = dispatch thunk of CustomStringConvertible.description.getter();
      v256 = v255;
      *(v250 + 96) = &type metadata for String;
      *(v250 + 104) = sub_100008C00();
      *(v250 + 72) = v254;
      *(v250 + 80) = v256;
      os_log(_:dso:log:_:_:)();

      v372(v253, v130);

      v257 = *(v251 + 16);
      if (v257)
      {
        v375[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v258 = v251 + ((*(v323 + 80) + 32) & ~*(v323 + 80));
        v259 = *(v323 + 72);
        v260 = v324;
        do
        {
          sub_100721C9C(v258, v260, type metadata accessor for ShareRecord);
          sub_100156F5C();
          sub_100721D04(v260, type metadata accessor for ShareRecord);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v261 = *(v375[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v258 += v259;
          --v257;
        }

        while (v257);

        v262 = v375[0];
      }

      else
      {

        v262 = _swiftEmptyArrayStorage;
      }

      v282 = sub_10112A654(v262);

      v283 = v340;
      v127 = sub_10003EB74(v340, v371);
      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
      v284 = Set._bridgeToObjectiveC()().super.isa;
      [v127 setShares:v284];

      v285 = v317;
      sub_100721C9C(v283, v317, type metadata accessor for OwnedBeaconRecord);
      if ((v282 & 0xC000000000000001) != 0)
      {
        v286 = __CocoaSet.count.getter();
      }

      else
      {
        v286 = *(v282 + 16);
      }

      v288 = v332;

      v289 = v359;
      sub_1006F2DA0(v285, v286 != 0, v359);
      sub_100721D04(v285, type metadata accessor for OwnedBeaconRecord);
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
      v290 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v127 setTaskInformation:v290];

      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v291 = [v127 identifier];
      v292 = v363;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v293 = sub_1011A30E0(v292);
      v294 = v364;
      v295 = v369;
      v369(v292, v364);
      [v127 setSeparationState:v293];

      v296 = [v127 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v297 = sub_1009C7E64(v292);
      v295(v292, v294);
      [v127 setBeaconSeparationState:v297];
      v298 = [v127 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v362 + 56))(v288, 0, 1, v294);
      v299 = sub_1009C75D0(4, v288);
      sub_10000B3A8(v288, &qword_1016980D0, &unk_10138F3B0);
      sub_10112A684(v299);

      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
      v300 = Set._bridgeToObjectiveC()().super.isa;

      [v127 setSafeLocations:v300];

      [v127 setCanBeLeashedByHost:{sub_1006FBA08(v340, v289) & 1}];
      v161 = [v127 identifier];
      v301 = v318;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v302 = *(v289 + 40);
      if (!v302)
      {
        goto LABEL_85;
      }

      v303 = *(v302 + 280);
      v304 = *(v289 + 40);

      static os_log_type_t.info.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v305 = swift_allocObject();
      *(v305 + 16) = xmmword_101385D80;
      *(v305 + 56) = &type metadata for Bool;
      *(v305 + 64) = &protocol witness table for Bool;
      *(v305 + 32) = v303;
      os_log(_:dso:log:_:_:)();

      v306 = v301;
      v307 = v364;
      v308 = v369;
      v369(v306, v364);
      [v127 setConnectionAllowed:v303];
      v309 = [v127 identifier];
      v310 = v363;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v311 = v359;
      v312 = *(v359 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);
      CurrentValueSubject.value.getter();
      v313 = v375[0];
      v161 = v311;
      sub_10069CA80(v310, v375[0]);
      v308(v310, v307);
      if (!__OFADD__(v313, v368))
      {
        [v127 setConnectableDeviceCount:v313 + v368];
        v215 = v340;
LABEL_77:
        sub_100721D04(v215, type metadata accessor for OwnedBeaconRecord);
        v139 = v341;
        goto LABEL_78;
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    sub_100721D04(v143, type metadata accessor for StableIdentifier);
    v152 = *(v141 + 20);
    v370 = *(v371 + 168);
    v153 = objc_autoreleasePoolPush();
    if (qword_101694468 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v130, qword_10177A518);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    objc_autoreleasePoolPop(v153);
    v375[0] = _swiftEmptyArrayStorage;
    v377 = _swiftEmptyArrayStorage;
    v154 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v155 = v321;
    DirectorySequence.next()();
    v156 = v360;
    v157 = *(v360 + 48);
    if (v157(v155, 1, v130) == 1)
    {
LABEL_25:
      v370 = p_weak_ivar_lyt;
      (*(v361 + 8))(v343, v374);
      static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v162 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v163 = v130;
      v164 = swift_allocObject();
      *(v164 + 16) = xmmword_10138BBE0;
      v165 = v375[0];
      v166 = *(v375[0] + 16);
      *(v164 + 56) = &type metadata for Int;
      *(v164 + 64) = &protocol witness table for Int;
      *(v164 + 32) = v166;
      sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL);

      v167 = v327;
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v170 = v169;
      *(v164 + 96) = &type metadata for String;
      *(v164 + 104) = sub_100008C00();
      *(v164 + 72) = v168;
      *(v164 + 80) = v170;
      os_log(_:dso:log:_:_:)();

      v372(v167, v163);

      v171 = *(v165 + 16);
      if (v171)
      {
        v375[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v172 = v165 + ((*(v323 + 80) + 32) & ~*(v323 + 80));
        v173 = *(v323 + 72);
        v174 = v324;
        do
        {
          sub_100721C9C(v172, v174, type metadata accessor for ShareRecord);
          sub_100156F5C();
          sub_100721D04(v174, type metadata accessor for ShareRecord);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v175 = *(v375[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v172 += v173;
          --v171;
        }

        while (v171);

        v176 = v375[0];
      }

      else
      {

        v176 = _swiftEmptyArrayStorage;
      }

      *&v374 = sub_10112A654(v176);

      v127 = sub_10003EB74(v340, v371);
      v265 = v332;
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v266 = [v127 identifier];
      v267 = v363;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v268 = sub_1011A30E0(v267);
      v269 = v364;
      v270 = v369;
      v369(v267, v364);
      [v127 setSeparationState:v268];

      v271 = [v127 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v272 = v359;
      v273 = sub_1009C7E64(v267);
      v270(v267, v269);
      [v127 setBeaconSeparationState:v273];
      v274 = [v127 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v362 + 56))(v265, 0, 1, v269);
      v275 = sub_1009C75D0(4, v265);
      sub_10000B3A8(v265, &qword_1016980D0, &unk_10138F3B0);
      sub_10112A684(v275);

      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
      v276 = Set._bridgeToObjectiveC()().super.isa;

      [v127 setSafeLocations:v276];

      v277 = v340;
      [v127 setCanBeLeashedByHost:{sub_1006FBA08(v340, v272) & 1}];
      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
      v278 = v374;
      v279 = Set._bridgeToObjectiveC()().super.isa;
      [v127 setShares:v279];

      v280 = v319;
      sub_100721C9C(v277, v319, type metadata accessor for OwnedBeaconRecord);
      if ((v278 & 0xC000000000000001) != 0)
      {
        v281 = __CocoaSet.count.getter();
      }

      else
      {
        v281 = *(v278 + 16);
      }

      sub_1006F2DA0(v280, v281 != 0, v272);
      sub_100721D04(v280, type metadata accessor for OwnedBeaconRecord);
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
      v287 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v127 setTaskInformation:v287];

      v138 = v277;
      v137 = type metadata accessor for OwnedBeaconRecord;
      goto LABEL_9;
    }

    v158 = *(v156 + 32);
    v159 = v321;
    v160 = v315;
    while (1)
    {
      v158(v160, v159, v130);
      v161 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v160, v370, v375, &v377);
      if (p_weak_ivar_lyt)
      {
        break;
      }

      p_weak_ivar_lyt = 0;
      objc_autoreleasePoolPop(v161);
      v372(v160, v130);
      DirectorySequence.next()();
      if (v157(v159, 1, v130) == 1)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v370 = v122;
      v177 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v178 = *(v143 + v177[12] + 8);

      v179 = *(v143 + v177[16] + 8);

      v180 = *(v143 + v177[20] + 8);

      v181 = *(v143 + v177[28] + 8);
      v93 = v331;
LABEL_30:

      v369 = v131;
      v131(v143, v364);
      v127 = sub_10003EB74(v142, v371);
      v182 = v359;
      sub_1006F2DA0(v142, 0, v359);
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
      v183 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v127 setTaskInformation:v183];

      p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
      v161 = [v127 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v184 = *(v182 + 40);
      if (v184)
      {
        v123 = *(v184 + 280);
        v185 = *(v182 + 40);

        static os_log_type_t.info.getter();
        if (qword_101695030 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_80;
      }

      goto LABEL_84;
    }

    v93 = v331;
    if (EnumCaseMultiPayload == 3)
    {
      v370 = v122;
      v145 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v146 = *(v143 + v145[12] + 8);

      v147 = *(v143 + v145[16] + 8);

      v148 = *(v143 + v145[20] + 8);
      goto LABEL_30;
    }

    sub_100721D04(v143, type metadata accessor for StableIdentifier);
    v216 = *(v141 + 20);
    v370 = *(v371 + 168);
    v217 = objc_autoreleasePoolPush();
    if (qword_101694468 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v130, qword_10177A518);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    objc_autoreleasePoolPop(v217);
    v375[0] = _swiftEmptyArrayStorage;
    v377 = _swiftEmptyArrayStorage;
    v218 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v219 = v322;
    DirectorySequence.next()();
    v220 = v360;
    v221 = *(v360 + 48);
    if (v221(v219, 1, v130) == 1)
    {
LABEL_43:
      v370 = p_weak_ivar_lyt;
      (*(v361 + 8))(v344, v374);
      static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v225 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v226 = v130;
      v227 = swift_allocObject();
      *(v227 + 16) = xmmword_10138BBE0;
      v228 = v375[0];
      v229 = *(v375[0] + 16);
      *(v227 + 56) = &type metadata for Int;
      *(v227 + 64) = &protocol witness table for Int;
      *(v227 + 32) = v229;
      sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL);

      v230 = v328;
      v231 = dispatch thunk of CustomStringConvertible.description.getter();
      v233 = v232;
      *(v227 + 96) = &type metadata for String;
      *(v227 + 104) = sub_100008C00();
      *(v227 + 72) = v231;
      *(v227 + 80) = v233;
      os_log(_:dso:log:_:_:)();

      v372(v230, v226);

      v234 = *(v228 + 16);
      if (v234)
      {
        v375[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v235 = v228 + ((*(v323 + 80) + 32) & ~*(v323 + 80));
        v236 = *(v323 + 72);
        v237 = v324;
        do
        {
          sub_100721C9C(v235, v237, type metadata accessor for ShareRecord);
          sub_100156F5C();
          sub_100721D04(v237, type metadata accessor for ShareRecord);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v238 = *(v375[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v235 += v236;
          --v234;
        }

        while (v234);

        v239 = v375[0];
      }

      else
      {

        v239 = _swiftEmptyArrayStorage;
      }

      sub_10112A654(v239);

      v263 = v340;
      v127 = sub_10003EB74(v340, v371);
      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
      v264 = Set._bridgeToObjectiveC()().super.isa;

      [v127 setShares:v264];

      v215 = v263;
      goto LABEL_77;
    }

    v222 = *(v220 + 32);
    v223 = v322;
    v224 = v316;
    while (1)
    {
      v222(v224, v223, v130);
      v161 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v224, v370, v375, &v377);
      if (p_weak_ivar_lyt)
      {
        break;
      }

      p_weak_ivar_lyt = 0;
      objc_autoreleasePoolPop(v161);
      v372(v224, v130);
      DirectorySequence.next()();
      if (v221(v223, 1, v130) == 1)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_86:
  objc_autoreleasePoolPop(v161);
  __break(1u);
}

uint64_t sub_1006ADD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 184) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 + 64);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  *(v5 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  *(v5 + 96) = v11;
  *v11 = v5;
  v11[1] = sub_1006ADE84;

  return daemon.getter();
}

uint64_t sub_1006ADE84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1006AE060;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006AE060(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_1006AE954;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_1006AE17C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006AE17C()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[2];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);

  return _swift_task_switch(sub_1006AE224, v1, 0);
}

uint64_t sub_1006AE224()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[9], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[17] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_1006AE384;
  v10 = v0[10];
  v9 = v0[11];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1007207E0, v6, v10);
}

uint64_t sub_1006AE384()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1006AE4F8, 0, 0);
}

uint64_t sub_1006AE4F8()
{
  v1 = v0[5].i64[1];
  v2 = type metadata accessor for BeaconProductInfoRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[1].i64[0];
    sub_10000B3A8(v1, &unk_1016AF8C0, &unk_1013A07A0);
    v4 = v3[3];
    v5 = v3[4];
    sub_1000035D0(v3, v4);
    if ((*(v5 + 144))(v4, v5))
    {
      v6 = v0[1].i64[0];
      v7 = v6[3];
      v8 = v6[4];
      sub_1000035D0(v6, v7);
      v9 = (*(v8 + 48))(v7, v8);
      v10 = v6[3];
      v11 = v6[4];
      sub_1000035D0(v6, v10);
      v12 = (*(v11 + 56))(v10, v11);
      v13 = sub_100314604(v9, v12);
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    v0[9].i64[1] = v13;
    v0[10].i64[0] = v15;
    v22 = v0[11].i8[8];
    v23 = v0[2].i64[0];
    v24 = swift_task_alloc();
    v0[10].i64[1] = v24;
    v24[1] = vextq_s8(v0[1], v0[1], 8uLL);
    v24[2].i64[0] = v13;
    v24[2].i64[1] = v15;
    v24[3].i64[0] = v23;
    v24[3].i8[8] = v22 & 1;
    v25 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v26 = swift_task_alloc();
    v0[11].i64[0] = v26;
    *v26 = v0;
    v26[1] = sub_1006AE7AC;

    return withCheckedContinuation<A>(isolation:function:_:)(v26, 0, 0, 0xD000000000000030, 0x800000010135D7A0, sub_100720880, v24, &type metadata for () + 8);
  }

  else
  {
    v16 = v0[7].i64[1];

    sub_10000B3A8(v1, &unk_1016AF8C0, &unk_1013A07A0);
    v17 = v0[5].i64[1];
    v18 = v0[4].i64[0];
    v19 = v0[4].i64[1];

    v20 = v0->i64[1];

    return v20();
  }
}

uint64_t sub_1006AE7AC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_1006AE8C4, 0, 0);
}

uint64_t sub_1006AE8C4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[15];

  sub_100006654(v1, v2);
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006AE954()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_1006AE9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v25 = a7;
  v12 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = a6;
    v18 = a4;
    v19 = *(result + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_productInfoManager);

    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    sub_10001F280(a3, v20 + 32);
    (*(v13 + 16))(v16, a1, v12);
    v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v22 = swift_allocObject();
    (*(v13 + 32))(v22 + v21, v16, v12);
    sub_101095D74(v20, 1, v18, a5, v24, v25 & 1, sub_100720894, v22);
  }

  return result;
}

uint64_t sub_1006AEC00(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v51 = type metadata accessor for UUID();
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin(v51);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v47 - v11;
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v47 - v15;
  v17 = type metadata accessor for OwnedBeaconRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = a1[3];
    v23 = a1[4];
    sub_1000035D0(a1, v22);
    v24 = (*(v23 + 184))(v22, v23);
    v25 = sub_10112C0E4(v24, a3);

    return v25 & 1;
  }

  sub_10001F280(a1, v50);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v27 = swift_dynamicCast();
  v28 = *(v18 + 56);
  if ((v27 & 1) == 0)
  {
    v28(v16, 1, 1, v17);
    sub_10000B3A8(v16, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_7;
  }

  v28(v16, 0, 1, v17);
  sub_10002AB74(v16, v21, type metadata accessor for OwnedBeaconRecord);
  v29 = sub_100D5F668();
  if (v30 >> 60 == 15)
  {
    sub_100721D04(v21, type metadata accessor for OwnedBeaconRecord);
LABEL_7:
    v31 = a3;
    goto LABEL_8;
  }

  v43 = v29;
  v44 = v30;
  if (!sub_100DE68D0(v29, v30))
  {
    sub_100721D04(v21, type metadata accessor for OwnedBeaconRecord);
    sub_100006654(v43, v44);
    goto LABEL_7;
  }

  My = type metadata accessor for Feature.FindMy();
  v50[3] = My;
  v50[4] = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v46 = sub_1000280DC(v50);
  (*(*(My - 8) + 104))(v46, enum case for Feature.FindMy.alphaWasp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006654(v43, v44);
  sub_100721D04(v21, type metadata accessor for OwnedBeaconRecord);
  sub_100007BAC(v50);
  v31 = a3;
  if ((My & 1) == 0)
  {
LABEL_13:
    v42 = 0;
    return v42 & 1;
  }

LABEL_8:
  v32 = a1[3];
  v33 = a1[4];
  sub_1000035D0(a1, v32);
  (*(v33 + 200))(v32, v33);
  v34 = v49;
  v35 = v51;
  LODWORD(v32) = (*(v49 + 48))(v12, 1, v51);
  sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
  if (v32 != 1)
  {
    v36 = a1[3];
    v37 = a1[4];
    sub_1000035D0(a1, v36);
    v38 = v47;
    (*(*(*(v37 + 8) + 8) + 32))(v36);
    LOBYTE(v36) = sub_100037E20(v38, v48);
    (*(v34 + 8))(v38, v35);
    if ((v36 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v39 = a1[3];
  v40 = a1[4];
  sub_1000035D0(a1, v39);
  v41 = (*(v40 + 184))(v39, v40);
  v42 = sub_10112C0E4(v41, v31);

  return v42 & 1;
}