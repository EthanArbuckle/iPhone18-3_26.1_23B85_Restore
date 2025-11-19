void (*sub_10020A8C8(uint64_t a1, NSObject *a2, uint64_t *a3))(char *, uint64_t)
{
  v55 = a3;
  v65 = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  v6 = __chkstk_darwin(v4);
  v56 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v42 - v8;
  v10 = type metadata accessor for Delete();
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v42 - v20;
  v22 = v60;
  result = sub_1002085AC(a2, v65);
  if (!v22)
  {
    v45 = result;
    v47 = v19;
    v48 = v14;
    v49 = v21;
    v50 = v9;
    v60 = v15;
    v51 = v13;
    v52 = v10;
    v53 = a2;
    v54 = 0;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v24 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v24, qword_10177C770);
    v63 = v24;
    v64 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850);
    sub_1000280DC(&v61);
    v25 = v48;
    QueryType.subscript.getter();
    v26 = v49;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v61);
    v27 = Expressible.asSQL()();
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;
    v28 = *(v60 + 8);
    v60 += 8;
    v46 = v28;
    v28(v26, v25);
    v42[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    v61 = v45;
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0);
    v29 = v56;
    Collection<>.contains(_:)();

    LOBYTE(v61) = 0;
    v30 = v50;
    == infix<A>(_:_:)();
    v31 = v58;
    v32 = *(v57 + 8);
    v32(v29, v58);
    v33 = v47;
    QueryType.filter(_:)();
    v32(v30, v31);
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v61 = 0xD000000000000028;
    v62 = 0x800000010134D4B0;
    v34._countAndFlagsBits = countAndFlagsBits;
    v34._object = object;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
    ExpressionType.init(literal:)();
    QueryType.filter(_:)();
    v32(v30, v31);
    v36 = v33;
    v37 = v46;
    v46(v36, v25);
    v38 = v51;
    QueryType.delete()();
    v37(v26, v25);
    v39 = v54;
    v40 = Connection.run(_:)();
    if (v39)
    {
      return (*(v59 + 8))(v38, v52);
    }

    else
    {
      v41 = v40;
      result = (*(v59 + 8))(v38, v52);
      *v55 = v41;
    }
  }

  return result;
}

void (*sub_10020AEF0(void *a1, NSObject *a2, uint64_t *a3))(char *, uint64_t)
{
  v62 = a3;
  v71 = a1;
  v4 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  v64 = &v51 - v6;
  v68 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v76 = *(v68 - 8);
  v7 = *(v76 + 64);
  v8 = __chkstk_darwin(v68);
  v63 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for Delete();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Table();
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v51 - v22;
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  v26 = v69;
  result = sub_1002085AC(a2, v71);
  if (!v26)
  {
    v51 = result;
    v54 = v20;
    v69 = v23;
    v55 = v16;
    v60 = 0;
    v61 = v25;
    v56 = v11;
    v57 = v15;
    v28 = v76;
    v58 = v12;
    v59 = a2;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v29 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v29, qword_10177C770);
    v74 = v29;
    v75 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850);
    sub_1000280DC(&v72);
    v30 = v55;
    QueryType.subscript.getter();
    v31 = v61;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v72);
    v52 = Expressible.asSQL()();
    v32 = *(v70 + 8);
    v70 += 8;
    v53 = v32;
    v32(v31, v30);
    v72 = v51;
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0);
    v33 = v63;
    Collection<>.contains(_:)();

    LOBYTE(v72) = 0;
    v34 = v56;
    == infix<A>(_:_:)();
    v35 = *(v28 + 8);
    v36 = v33;
    v37 = v68;
    v35(v36, v68);
    v38 = v35;
    v39 = v54;
    QueryType.filter(_:)();
    v76 = v28 + 8;
    v35(v34, v37);
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v40 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v40, qword_10177C8A8);
    v71 = &protocol conformance descriptor for Expression<A>;
    sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
    v41 = v64;
    ExpressionType<>.length.getter();
    v72 = 6;
    == infix<A>(_:_:)();
    (*(v65 + 8))(v41, v66);
    QueryType.filter(_:)();
    v42 = v68;
    v38(v34, v68);
    v66 = v38;
    v43 = v53;
    v53(v39, v30);
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v72 = 0xD000000000000028;
    v73 = 0x800000010134D4B0;
    String.append(_:)(v52);

    v44._countAndFlagsBits = 41;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
    ExpressionType.init(literal:)();
    v45 = v61;
    v46 = v69;
    QueryType.filter(_:)();
    v66(v34, v42);
    v43(v46, v30);
    v47 = v57;
    QueryType.delete()();
    v43(v45, v30);
    v48 = v60;
    v49 = Connection.run(_:)();
    if (v48)
    {
      return (*(v67 + 8))(v47, v58);
    }

    else
    {
      v50 = v49;
      result = (*(v67 + 8))(v47, v58);
      *v62 = v50;
    }
  }

  return result;
}

uint64_t sub_10020B734(uint64_t a1)
{
  v3 = type metadata accessor for Connection.TransactionMode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100027FA4();
  if (v8)
  {
    v13 = 0;
    v9 = __chkstk_darwin(v8);
    *(&v12 - 4) = a1;
    *(&v12 - 3) = v9;
    *(&v12 - 2) = &v13;
    (*(v4 + 104))(v7, enum case for Connection.TransactionMode.deferred(_:), v3);
    Connection.transaction(_:block:)();
    (*(v4 + 8))(v7, v3);
    if (v1)
    {
    }

    else
    {

      return v13;
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_10020B910(uint64_t a1, NSObject *a2, uint64_t *a3))(char *, uint64_t)
{
  v69 = a3;
  v5 = type metadata accessor for Delete();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  __chkstk_darwin(v5);
  v70 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v56 - v13;
  v15 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v79 = *(v15 - 8);
  v16 = *(v79 + 64);
  __chkstk_darwin(v15);
  v18 = v56 - v17;
  v19 = type metadata accessor for JoinType();
  v77 = *(v19 - 8);
  v78 = v19;
  v20 = *(v77 + 64);
  __chkstk_darwin(v19);
  v76 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Table();
  v84 = *(v22 - 8);
  v23 = v84[8];
  v24 = __chkstk_darwin(v22);
  v26 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v56 - v27;
  v75 = a1;
  v29 = v80;
  result = sub_1002085AC(a2, a1);
  if (!v29)
  {
    v60 = v14;
    v57 = v12;
    v61 = 0;
    v62 = result;
    v65 = v26;
    v66 = v28;
    v67 = v18;
    v68 = v15;
    v80 = a2;
    v31 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    (*(v77 + 104))(v76, enum case for JoinType.inner(_:), v78);
    v32 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v82 = v22;
    v83 = &protocol witness table for Table;
    v33 = sub_1000280DC(v81);
    v34 = v84[2];
    v56[1] = v32;
    v59 = v84 + 2;
    v58 = v34;
    v34(v33, (v75 + v32), v22);
    v35 = v22;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v36 = v74;
    v64 = sub_1000076D4(v74, qword_10177C770);
    v63 = v31;
    v37 = v60;
    QueryType.subscript.getter();
    v38 = v57;
    QueryType.subscript.getter();
    v39 = v67;
    == infix<A>(_:_:)();
    v40 = *(v73 + 8);
    v40(v38, v36);
    v40(v37, v36);
    v41 = v65;
    v42 = v76;
    QueryType.join(_:_:on:)();
    v73 = *(v79 + 8);
    v79 += 8;
    (v73)(v39, v68);
    (*(v77 + 8))(v42, v78);
    sub_100007BAC(v81);
    v82 = v36;
    v83 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850);
    sub_1000280DC(v81);
    QueryType.subscript.getter();
    v43 = v66;
    SchemaType.select(_:_:)();
    v44 = v84 + 1;
    v45 = v84[1];
    v45(v41, v35);
    sub_100007BAC(v81);
    v82 = v35;
    v83 = &protocol witness table for Table;
    v46 = sub_1000280DC(v81);
    v58(v46, v43, v35);
    v47 = v61;
    Connection.prepare(_:)();
    v48 = v35;
    if (v47)
    {
      v45(v43, v35);

      return sub_100007BAC(v81);
    }

    else
    {
      v84 = v44;
      sub_100007BAC(v81);
      v49 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v50 = sub_10112A068(v49);

      if (*(v62 + 2) <= v50[2] >> 3)
      {
        v81[0] = v50;
        sub_10087D4BC(v62);

        v51 = v81[0];
      }

      else
      {
        v51 = sub_10061076C(v62, v50);
      }

      v81[0] = v51;
      sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
      sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0);
      v52 = v67;
      Collection<>.contains(_:)();

      v53 = v65;
      QueryType.filter(_:)();
      (v73)(v52, v68);
      v54 = v70;
      QueryType.delete()();
      v45(v53, v48);
      v55 = Connection.run(_:)();
      (*(v71 + 8))(v54, v72);
      result = (v45)(v66, v48);
      *v69 = v55;
    }
  }

  return result;
}

uint64_t sub_10020C214(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10020C2D4, 0, 0);
}

uint64_t sub_10020C2D4()
{
  v1 = v0[2].i64[1];
  v2 = sub_100027FA4();
  if (v2)
  {
    v3 = v2;
    v5 = v0[3].i64[1];
    v4 = v0[4].i64[0];
    v6 = v0[3].i64[0];
    v0[1].i64[0] = 0;
    v0[1].i64[1] = 0;
    v7 = swift_task_alloc();
    v7[1] = vextq_s8(v0[2], v0[2], 8uLL);
    v7[2].i64[0] = &v0[1].i64[1];
    v7[2].i64[1] = v3;
    v7[3].i64[0] = v0[1].i64;
    (*(v5 + 104))(v4, enum case for Connection.TransactionMode.deferred(_:), v6);
    Connection.transaction(_:block:)();
    (*(v0[3].i64[1] + 8))(v0[4].i64[0], v0[3].i64[0]);

    v9 = v0[1].i64[0] + v0[1].i64[1];
    if (__OFADD__(v0[1].i64[0], v0[1].i64[1]))
    {
      __break(1u);
    }

    else
    {
      v10 = v0[4].i64[0];

      v11 = v0->i64[1];

      return v11(v9);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
    v13 = v0[4].i64[0];

    v14 = v0->i64[1];

    return v14();
  }

  return result;
}

uint64_t sub_10020C4A4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v189 = a5;
  v219 = a4;
  v217 = a3;
  v221 = a1;
  v197 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v175 = *(v197 - 8);
  v6 = *(v175 + 64);
  __chkstk_darwin(v197);
  v196 = &v163 - v7;
  v211 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v174 = *(v211 - 8);
  v8 = v174[8];
  v9 = __chkstk_darwin(v211);
  v195 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v194 = &v163 - v11;
  v223 = type metadata accessor for JoinType();
  v173 = *(v223 - 8);
  v12 = *(v173 + 64);
  __chkstk_darwin(v223);
  v224 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for UUID();
  v178 = *(v201 - 8);
  v14 = *(v178 + 64);
  v15 = __chkstk_darwin(v201);
  v200 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v172 = &v163 - v17;
  v18 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v176 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v186 = &v163 - v22;
  v187 = type metadata accessor for Row();
  v199 = *(v187 - 8);
  v23 = *(v199 + 64);
  v24 = __chkstk_darwin(v187);
  v188 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v215 = &v163 - v26;
  v225 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v27 = *(v225 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v225);
  v193 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v163 - v32;
  __chkstk_darwin(v31);
  v35 = &v163 - v34;
  v36 = type metadata accessor for Table();
  v226 = *(v36 - 8);
  v37 = v226[8];
  v38 = __chkstk_darwin(v36);
  v210 = &v163 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v209 = &v163 - v41;
  v42 = __chkstk_darwin(v40);
  v192 = &v163 - v43;
  v44 = __chkstk_darwin(v42);
  v191 = &v163 - v45;
  v46 = __chkstk_darwin(v44);
  v179 = &v163 - v47;
  v48 = __chkstk_darwin(v46);
  v185 = &v163 - v49;
  __chkstk_darwin(v48);
  v218 = &v163 - v50;
  v212 = type metadata accessor for Delete();
  v198 = *(v212 - 8);
  v51 = *(v198 + 64);
  v52 = __chkstk_darwin(v212);
  v190 = &v163 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v55 = &v163 - v54;
  v227 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  v228 = a2;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v177 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v56 = sub_1000076D4(v177, qword_10177C788);
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  sub_1000041A4(&qword_101699F00, &unk_1016BF350, &unk_1013E4AF0);
  v213 = v56;
  Collection<>.contains(_:)();
  LOBYTE(v228) = 0;
  v222 = v35;
  == infix<A>(_:_:)();
  v58 = *(v27 + 8);
  v57 = v27 + 8;
  v59 = v225;
  v58(v33, v225);
  v60 = v218;
  QueryType.filter(_:)();
  v208 = v58;
  v58(v35, v59);
  QueryType.delete()();
  v62 = v226 + 1;
  v61 = v226[1];
  v61(v60, v36);
  v63 = v220;
  v64 = Connection.run(_:)();
  if (v63)
  {
    return (*(v198 + 8))(v55, v212);
  }

  v206 = v61;
  v207 = v62;
  v214 = 0;
  v181 = v33;
  v169 = v55;
  v203 = v57;
  v170 = v36;
  *v217 = v64;
  if (qword_1016952C8 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v66 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    v67 = sub_1000076D4(v66, qword_10177C800);
    v229 = v66;
    v68 = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
    v230 = v68;
    v69 = sub_1000280DC(&v228);
    v70 = *(*(v66 - 8) + 16);
    v70(v69, v67, v66);
    v71 = v218;
    v72 = v170;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v228);
    v184 = sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    v73 = swift_allocObject();
    v183 = xmmword_101385D80;
    *(v73 + 16) = xmmword_101385D80;
    *(v73 + 56) = v66;
    *(v73 + 64) = v68;
    v74 = sub_1000280DC((v73 + 32));
    v182 = v67;
    v70(v74, v67, v66);
    v75 = v185;
    QueryType.group(_:)();

    v76 = v206;
    v206(v71, v72);
    v229 = v72;
    v230 = &protocol witness table for Table;
    v77 = sub_1000280DC(&v228);
    v78 = v226 + 2;
    v79 = v226[2];
    v79(v77, v75, v72);
    v80 = v214;
    Connection.prepare(_:)();
    if (v80)
    {
      v81 = v75;
      v82 = v72;
LABEL_11:
      v76(v81, v82);
      (*(v198 + 8))(v169, v212);
      return sub_100007BAC(&v228);
    }

    v202 = v79;
    v214 = 0;
    v226 = v78;
    sub_100007BAC(&v228);
    v83 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v228 = _swiftEmptyArrayStorage;
    sub_101123D1C(0, 0, 0);
    v84 = v228;
    v85 = v186;
    v220 = v83;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v86 = v199;
    v87 = v187;
    v216 = *(v199 + 48);
    v217 = (v199 + 48);
    if (v216(v85, 1, v187) != 1)
    {
      v204 = *(v86 + 32);
      v205 = (v86 + 32);
      v102 = (v86 + 8);
      do
      {
        v103 = v215;
        v204(v215, v85, v87);
        sub_100028088();
        Row.subscript.getter();
        (*v102)(v103, v87);
        v104 = v231;
        v228 = v84;
        v106 = v84[2];
        v105 = v84[3];
        if (v106 >= v105 >> 1)
        {
          sub_101123D1C((v105 > 1), v106 + 1, 1);
          v84 = v228;
        }

        v84[2] = v106 + 1;
        *(v84 + v106 + 32) = v104;
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (v216(v85, 1, v87) != 1);
    }

    v180 = v84;
    sub_10000B3A8(v85, &qword_101699D68, &unk_1013B6450);
    v88 = v177;
    v229 = v177;
    v89 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
    v230 = v89;
    v90 = sub_1000280DC(&v228);
    v91 = *(*(v88 - 8) + 16);
    v92 = v213;
    v91(v90, v213, v88);
    v93 = v218;
    v94 = v170;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v228);
    v95 = swift_allocObject();
    *(v95 + 16) = v183;
    *(v95 + 56) = v88;
    *(v95 + 64) = v89;
    v96 = sub_1000280DC((v95 + 32));
    v91(v96, v92, v88);
    v97 = v179;
    QueryType.group(_:)();
    v98 = v94;

    v99 = v94;
    v76 = v206;
    v206(v93, v99);
    v229 = v98;
    v230 = &protocol witness table for Table;
    v100 = sub_1000280DC(&v228);
    v202(v100, v97, v98);
    v101 = v214;
    Connection.prepare(_:)();
    if (v101)
    {

      v76(v97, v98);
      v81 = v185;
      v82 = v98;
      goto LABEL_11;
    }

    v214 = 0;
    sub_100007BAC(&v228);
    v107 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v228 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, 0, 0);
    v108 = v228;
    v109 = v176;
    v171 = v107;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v110 = v187;
    if (v216(v109, 1, v187) == 1)
    {
      v111 = v178;
    }

    else
    {
      v215 = *(v199 + 32);
      v205 = (v199 + 8);
      v111 = v178;
      v204 = (v178 + 32);
      v157 = v201;
      v158 = v172;
      v199 += 32;
      do
      {
        v159 = v188;
        (v215)(v188, v109, v110);
        Row.subscript.getter();
        (*v205)(v159, v110);
        v228 = v108;
        v161 = v108[2];
        v160 = v108[3];
        if (v161 >= v160 >> 1)
        {
          sub_101123D4C(v160 > 1, v161 + 1, 1);
          v108 = v228;
        }

        v108[2] = v161 + 1;
        (*(v111 + 32))(v108 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v161, v158, v157);
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (v216(v109, 1, v110) != 1);
    }

    sub_10000B3A8(v109, &qword_101699D68, &unk_1013B6450);
    v164 = v108[2];
    if (!v164)
    {
      break;
    }

    v112 = 0;
    v168 = v108 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v113 = v221;
    v172 = (v221 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo);
    v167 = v111 + 16;
    v114 = (v173 + 104);
    ++v174;
    v216 = (v173 + 8);
    v177 = v180[2];
    v175 += 8;
    v115 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation;
    v176 = (v198 + 8);
    v165 = (v111 + 8);
    LODWORD(v215) = enum case for JoinType.leftOuter(_:);
    v116 = v170;
    result = v108;
    v117 = v214;
    v217 = (v173 + 104);
    v166 = result;
    v173 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation;
    while (1)
    {
      if (v112 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v120 = *(v178 + 72);
      v170 = v112;
      (*(v178 + 16))(v200, &v168[v120 * v112], v201);
      if (v177)
      {
        break;
      }

LABEL_21:
      v118 = v113;
      v119 = v170 + 1;
      (*v165)(v200, v201);
      v112 = v119;
      v113 = v118;
      v114 = v217;
      result = v166;
      if (v112 == v164)
      {

        goto LABEL_41;
      }
    }

    v121 = 0;
    v122 = v224;
    while (v121 < v180[2])
    {
      v214 = v117;
      v186 = v121;
      LODWORD(v205) = v121[v180 + 32];
      v204 = *v114;
      v204(v122, v215, v223);
      v229 = v116;
      v230 = &protocol witness table for Table;
      v123 = sub_1000280DC(&v228);
      v202(v123, (v113 + v115), v116);
      if (qword_101695380 != -1)
      {
        swift_once();
      }

      v124 = v211;
      v125 = sub_1000076D4(v211, qword_10177CA28);
      v126 = v194;
      v187 = v125;
      QueryType.subscript.getter();
      v127 = v195;
      QueryType.subscript.getter();
      == infix<A>(_:_:)();
      v128 = *v174;
      v188 = v128;
      (v128)(v127, v124);
      (v128)(v126, v124);
      v129 = v224;
      v130 = v222;
      QueryType.join(_:_:on:)();
      v208(v130, v225);
      v199 = *v216;
      v131 = v223;
      (v199)(v129, v223);
      sub_100007BAC(&v228);
      v204(v129, v215, v131);
      v229 = v116;
      v230 = &protocol witness table for Table;
      v132 = sub_1000280DC(&v228);
      v202(v132, v172, v116);
      QueryType.subscript.getter();
      QueryType.subscript.getter();
      v133 = v222;
      == infix<A>(_:_:)();
      v134 = v211;
      v135 = v188;
      (v188)(v127, v211);
      v135(v126, v134);
      v136 = v224;
      v137 = v210;
      QueryType.join(_:_:on:)();
      v138 = v225;
      v139 = v208;
      v208(v133, v225);
      (v199)(v136, v223);
      v140 = v206;
      v206(v137, v116);
      sub_100007BAC(&v228);
      LOBYTE(v228) = v205;
      sub_100028088();
      v141 = v181;
      == infix<A>(_:_:)();
      v142 = v193;
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v139(v142, v138);
      v139(v141, v138);
      v143 = v139;
      v144 = v192;
      v145 = v209;
      QueryType.filter(_:)();
      v143(v133, v138);
      v140(v145, v116);
      *(swift_allocObject() + 16) = v183;
      if (qword_101695360 != -1)
      {
        swift_once();
      }

      v146 = v197;
      sub_1000076D4(v197, qword_10177C9C8);
      type metadata accessor for Date();
      v113 = v221;
      v147 = v196;
      QueryType.subscript.getter();
      sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
      ExpressionType.desc.getter();
      (*v175)(v147, v146);
      v148 = v191;
      QueryType.order(_:)();

      v149 = v206;
      v206(v144, v116);
      v150 = v218;
      QueryType.limit(_:offset:)();
      v149(v148, v116);
      v151 = v190;
      QueryType.delete()();
      v149(v150, v116);
      v152 = v214;
      v153 = Connection.run(_:)();
      v117 = v152;
      if (v152)
      {

        v155 = *v176;
        v156 = v212;
        (*v176)(v151, v212);
        (*v165)(v200, v201);
        v149(v179, v116);
        v149(v185, v116);
        return v155(v169, v156);
      }

      v154 = v153;
      (*v176)(v151, v212);
      if (__OFADD__(*v189, v154))
      {
        goto LABEL_44;
      }

      v121 = v186 + 1;
      *v189 += v154;
      v122 = v224;
      v114 = v217;
      v115 = v173;
      if (v177 == v121)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v116 = v170;
LABEL_41:

  v162 = v206;
  v206(v179, v116);
  v162(v185, v116);
  return (*(v198 + 8))(v169, v212);
}

uint64_t sub_10020DFE8(uint64_t a1)
{
  v2 = type metadata accessor for Connection.TransactionMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A5C0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Decimation - starting to decimate low-value observations.", v10, 2u);
  }

  v11 = sub_100027FA4();
  if (v11)
  {
    v12 = __chkstk_darwin(v11);
    *(&v15 - 2) = a1;
    *(&v15 - 1) = v12;
    (*(v3 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v2);
    Connection.transaction(_:block:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_10020E240(uint64_t a1, NSObject *a2))(char *, uint64_t)
{
  v440 = type metadata accessor for Delete();
  v438 = *(v440 - 8);
  v5 = *(v438 + 64);
  __chkstk_darwin(v440);
  v445 = &v385 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v432 = &v385 - v9;
  v481 = type metadata accessor for ObservedAdvertisement(0);
  v437 = *(v481 - 8);
  v10 = *(v437 + 64);
  v11 = __chkstk_darwin(v481);
  v431 = &v385 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v463 = &v385 - v14;
  __chkstk_darwin(v13);
  v468 = &v385 - v15;
  v489 = type metadata accessor for Date();
  v436 = *(v489 - 8);
  v16 = v436[8];
  v17 = __chkstk_darwin(v489);
  v453 = &v385 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v429 = &v385 - v20;
  v21 = __chkstk_darwin(v19);
  v428 = &v385 - v22;
  v23 = __chkstk_darwin(v21);
  v430 = &v385 - v24;
  v25 = __chkstk_darwin(v23);
  v439 = &v385 - v26;
  v27 = __chkstk_darwin(v25);
  v458 = &v385 - v28;
  v29 = __chkstk_darwin(v27);
  v478 = &v385 - v30;
  __chkstk_darwin(v29);
  v464 = &v385 - v31;
  v32 = sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v461 = &v385 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v467 = &v385 - v36;
  v459 = type metadata accessor for JoinType();
  v435 = *(v459 - 8);
  v37 = *(v435 + 64);
  __chkstk_darwin(v459);
  v450 = &v385 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v434 = *(v456 - 8);
  v39 = v434[8];
  v40 = __chkstk_darwin(v456);
  v449 = &v385 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v474 = &v385 - v42;
  v479 = type metadata accessor for Row();
  v472 = *(v479 - 8);
  v43 = *(v472 + 64);
  v44 = __chkstk_darwin(v479);
  v462 = &v385 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v480 = &v385 - v47;
  __chkstk_darwin(v46);
  v451 = &v385 - v48;
  v49 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v465 = &v385 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v433 = &v385 - v54;
  __chkstk_darwin(v53);
  v446 = &v385 - v55;
  v494 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v483 = *(v494 - 8);
  v56 = *(v483 + 64);
  __chkstk_darwin(v494);
  v469 = (&v385 - v57);
  v58 = sub_1000BC4D4(&qword_101699D70, &unk_1013930E0);
  v470 = *(v58 - 8);
  v59 = *(v470 + 64);
  v60 = __chkstk_darwin(v58);
  v454 = &v385 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v473 = &v385 - v62;
  v487 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v493 = *(v487 - 8);
  v63 = *(v493 + 64);
  __chkstk_darwin(v487);
  v486 = &v385 - v64;
  v490 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v492 = *(v490 - 8);
  v65 = *(v492 + 64);
  v66 = __chkstk_darwin(v490);
  v442 = &v385 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v441 = &v385 - v69;
  v70 = __chkstk_darwin(v68);
  v447 = &v385 - v71;
  __chkstk_darwin(v70);
  v488 = &v385 - v72;
  v482 = type metadata accessor for Table();
  v484 = *(v482 - 8);
  v73 = v484[8];
  v74 = __chkstk_darwin(v482);
  v448 = &v385 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __chkstk_darwin(v74);
  v455 = &v385 - v77;
  v78 = __chkstk_darwin(v76);
  v80 = &v385 - v79;
  v81 = __chkstk_darwin(v78);
  v475 = &v385 - v82;
  v83 = __chkstk_darwin(v81);
  v476 = &v385 - v84;
  v85 = __chkstk_darwin(v83);
  v477 = &v385 - v86;
  __chkstk_darwin(v85);
  v485 = &v385 - v87;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v88 = qword_10177B348;
  v89 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v90 = v498;
  v91 = sub_101073C48(v498);
  v92 = sub_101073C2C(v90);

  result = sub_1002085AC(a2, a1);
  if (!v2)
  {
    v419 = v92;
    v415 = v91;
    v414 = v88;
    v426 = result;
    v491 = 0;
    v420 = v58;
    v471 = a1 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v413 = a1;
    v443 = a2;
    v94 = v494;
    v95 = sub_1000076D4(v494, qword_10177C8A8);
    v500 = v94;
    v417 = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110);
    v501 = v417;
    v96 = sub_1000280DC(&v498);
    v97 = *(v483 + 16);
    v466 = v95;
    v418 = (v483 + 16);
    v416 = v97;
    (v97)(v96, v95, v94);
    v425 = sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    v98 = swift_allocObject();
    v460 = xmmword_101385D80;
    *(v98 + 16) = xmmword_101385D80;
    v99 = v486;
    if (qword_101695330 != -1)
    {
      swift_once();
    }

    v424 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    v423 = sub_1000076D4(v424, qword_10177C938);
    *(v98 + 56) = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
    *(v98 + 64) = sub_1000041A4(&qword_101699D80, &qword_101699D60, &qword_1013B6DE0);
    sub_1000280DC((v98 + 32));
    v422 = sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
    ExpressionType<>.min.getter();
    v100 = v482;
    SchemaType.select(_:_:)();

    sub_100007BAC(&v498);
    v421 = sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
    v101 = v466;
    ExpressionType<>.length.getter();
    v498 = 28;
    v102 = v488;
    == infix<A>(_:_:)();
    v457 = *(v493 + 8);
    v493 += 8;
    v457(v99, v487);
    v103 = v475;
    QueryType.filter(_:)();
    v104 = *(v492 + 8);
    v492 += 8;
    v427 = v104;
    v104(v102, v490);
    v105 = v484 + 1;
    v106 = v484[1];
    v106(v80, v100);
    v444 = v105;
    v107 = swift_allocObject();
    *(v107 + 16) = v460;
    v108 = v494;
    v109 = v417;
    *(v107 + 56) = v494;
    *(v107 + 64) = v109;
    v110 = sub_1000280DC((v107 + 32));
    (v416)(v110, v101, v108);
    v111 = v476;
    QueryType.group(_:)();

    v106(v103, v100);
    *(swift_allocObject() + 16) = v460;
    ExpressionType.asc.getter();
    v112 = v477;
    QueryType.order(_:)();
    v113 = v100;

    v452 = v106;
    v106(v111, v100);
    v114 = v494;
    QueryType.limit(_:)();
    v106(v112, v113);
    v115 = v486;
    ExpressionType<>.length.getter();
    v498 = 28;
    v116 = v488;
    == infix<A>(_:_:)();
    v117 = v487;
    v457(v115, v487);
    QueryType.filter(_:)();
    v427(v116, v490);
    v118 = v469;
    ExpressionType<>.distinct.getter();
    ExpressionType<>.count.getter();
    (*(v483 + 8))(v118, v114);
    v119 = v473;
    SchemaType.select<A>(_:)();
    v457(v115, v117);
    v120 = v452;
    v452(v112, v113);
    v121 = v491;
    Connection.scalar<A>(_:)();
    if (v121)
    {

      (*(v470 + 8))(v119, v420);
      return v120(v485, v113);
    }

    v122 = v498;
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    v483 = sub_1000076D4(v123, qword_10177A5C0);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.info.getter();
    v126 = os_log_type_enabled(v124, v125);
    v127 = v479;
    if (v126)
    {
      v128 = swift_slowAlloc();
      *v128 = 134217984;
      *(v128 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v124, v125, "Decimation - uniqueAdvertisements count: %ld.", v128, 0xCu);
    }

    v500 = v113;
    v501 = &protocol witness table for Table;
    v129 = sub_1000280DC(&v498);
    v130 = v484 + 2;
    v131 = v484[2];
    v131(v129, v485, v113);
    Connection.prepare(_:)();
    v491 = 0;
    sub_100007BAC(&v498);
    v132 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v133 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
    v134 = v446;
    v402 = v132;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v135 = v472;
    v136 = *(v472 + 48);
    v419 = v472 + 48;
    v418 = v136;
    if (v136(v134, 1, v127) == 1)
    {
LABEL_15:

      (*(v470 + 8))(v473, v420);
      return (v452)(v485, v482);
    }

    v484 = v130;
    v406 = v131;
    v401 = v413 + v133;
    v140 = *(v135 + 32);
    v139 = v135 + 32;
    v138 = v140;
    v400 = (v435 + 104);
    v405 = (v434 + 1);
    v399 = enum case for JoinType.leftOuter(_:);
    v398 = (v435 + 8);
    v435 = v139 - 24;
    v434 = (v437 + 56);
    v416 = (v139 - 16);
    v412 = (v436 + 2);
    v411 = (v437 + 48);
    v469 = (v436 + 1);
    v388 = (v438 + 8);
    v391 = (v470 + 8);
    *&v137 = 141558275;
    v390 = v137;
    *&v137 = 134218499;
    v394 = v137;
    *&v137 = 134218755;
    v387 = v137;
    *&v137 = 141558787;
    v396 = v137;
    *&v137 = 134219011;
    v395 = v137;
    v141 = v127;
    v472 = v139;
    v417 = v140;
    while (1)
    {
      v138(v451, v134, v141);
      v142 = v491;
      Row.get<A>(_:)();
      v491 = v142;
      if (v142)
      {

        (*v435)(v451, v479);
        (*v391)(v473, v420);
        return (v452)(v485, v482);
      }

      v144 = v498;
      v143 = v499;
      sub_100017D5C(v498, v499);
      v408 = v144;
      v409 = v143;
      sub_10002EA98(6, v144, v143, &v498);
      v145 = v498;
      v146 = v499;
      v147 = Data.hexString.getter();
      v149 = v148;
      sub_100016590(v145, v146);

      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.info.getter();

      v152 = os_log_type_enabled(v150, v151);
      v438 = v149;
      v410 = v147;
      if (v152)
      {
        v153 = v147;
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v498 = v155;
        *v154 = v390;
        *(v154 + 4) = 1752392040;
        *(v154 + 12) = 2081;
        *(v154 + 14) = sub_1000136BC(v153, v149, &v498);
        _os_log_impl(&_mh_execute_header, v150, v151, "Decimation - advertisementRow decimation within advertisement: %{private,mask.hash}s.", v154, 0x16u);
        sub_100007BAC(v155);
      }

      if (qword_101695298 != -1)
      {
        swift_once();
      }

      v156 = v456;
      v157 = sub_1000076D4(v456, qword_10177C770);
      v158 = v482;
      QueryType.subscript.getter();
      v159 = v450;
      v437 = *v400;
      (v437)(v450, v399, v459);
      v500 = v158;
      v501 = &protocol witness table for Table;
      v160 = sub_1000280DC(&v498);
      v406(v160, v401, v158);
      v161 = v449;
      v403 = v157;
      QueryType.subscript.getter();
      v162 = v488;
      == infix<A>(_:_:)();
      v404 = *v405;
      v404(v161, v156);
      v163 = v476;
      QueryType.join(_:_:on:)();
      v164 = v490;
      v427(v162, v490);
      v436 = *v398;
      (v436)(v159, v459);
      sub_100007BAC(&v498);
      v498 = v408;
      v499 = v409;
      v165 = sub_1000291EC(&qword_101699DC8, &type metadata accessor for Blob);
      == infix<A>(_:_:)();
      v166 = v477;
      QueryType.filter(_:)();
      v427(v162, v164);
      v167 = v452;
      v452(v163, v158);
      *(swift_allocObject() + 16) = v460;
      ExpressionType.desc.getter();
      QueryType.order(_:)();

      v167(v166, v158);
      v498 = v408;
      v499 = v409;
      v407 = v165;
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      v427(v162, v490);
      v168 = v486;
      ExpressionType<>.count.getter();
      SchemaType.select<A>(_:)();
      v457(v168, v487);
      v452(v166, v158);
      v169 = v491;
      Connection.scalar<A>(_:)();
      v491 = v169;
      if (v169)
      {

        sub_100016590(v408, v409);
        v377 = *v391;
        v378 = v420;
        (*v391)(v454, v420);
        v379 = v482;
        v380 = v452;
        v452(v455, v482);
        v404(v474, v456);
        (*v435)(v451, v479);
        v377(v473, v378);
        return v380(v485, v379);
      }

      v170 = v498;
      v171 = v438;

      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.info.getter();

      v174 = os_log_type_enabled(v172, v173);
      v397 = v170;
      if (v174)
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v498 = v176;
        *v175 = v394;
        *(v175 + 4) = v170;
        *(v175 + 12) = 2160;
        *(v175 + 14) = 1752392040;
        *(v175 + 22) = 2081;
        *(v175 + 24) = sub_1000136BC(v410, v171, &v498);
        _os_log_impl(&_mh_execute_header, v172, v173, "Decimation - byAdvertisement start count: %ld within advertisement: %{private,mask.hash}s.", v175, 0x20u);
        sub_100007BAC(v176);
      }

      v177 = v406;
      v178 = v450;
      (v437)(v450, v399, v459);
      v179 = v482;
      v500 = v482;
      v501 = &protocol witness table for Table;
      v180 = sub_1000280DC(&v498);
      v177(v180, v401, v179);
      v181 = v449;
      QueryType.subscript.getter();
      v182 = v488;
      == infix<A>(_:_:)();
      v404(v181, v456);
      QueryType.join(_:_:on:)();
      v183 = v490;
      v184 = v427;
      v427(v182, v490);
      (v436)(v178, v459);
      sub_100007BAC(&v498);
      v498 = v408;
      v499 = v409;
      == infix<A>(_:_:)();
      v498 = v426;
      v185 = sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
      v186 = sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0);
      v187 = v442;
      v393 = v185;
      v392 = v186;
      Collection<>.contains(_:)();
      LOBYTE(v498) = 0;
      v188 = v441;
      == infix<A>(_:_:)();
      v184(v187, v183);
      v189 = v447;
      && infix(_:_:)();
      v184(v188, v183);
      v184(v189, v183);
      v190 = v476;
      v191 = v475;
      QueryType.filter(_:)();
      v184(v182, v183);
      v192 = v452;
      v452(v191, v179);
      *(swift_allocObject() + 16) = v460;
      if (qword_101695358 != -1)
      {
        swift_once();
      }

      v193 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
      sub_1000076D4(v193, qword_10177C9B0);
      sub_1000041A4(&qword_101699EA0, &qword_101699E00, &qword_101393128);
      ExpressionType.desc.getter();
      v194 = v477;
      QueryType.order(_:)();

      v192(v190, v179);
      v195 = v448;
      QueryType.limit(_:offset:)();
      v192(v194, v179);
      v500 = v179;
      v501 = &protocol witness table for Table;
      v196 = sub_1000280DC(&v498);
      v406(v196, v195, v179);
      v197 = v491;
      Connection.prepare(_:)();
      if (v197)
      {
        break;
      }

      sub_100007BAC(&v498);
      dispatch thunk of _AnySequenceBox._makeIterator()();

      v200 = v433;
      dispatch thunk of _AnyIteratorBoxBase.next()();

      v201 = v418(v200, 1, v479);
      v198 = v417;
      v199 = v438;
      if (v201 == 1)
      {
        sub_10000B3A8(v200, &qword_101699D68, &unk_1013B6450);
        goto LABEL_33;
      }

      Row.get<A>(_:)();
      (*v435)(v200, v479);
      v206 = *&v497;

      v367 = Logger.logObject.getter();
      v368 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v367, v368))
      {
        v369 = swift_slowAlloc();
        v370 = swift_slowAlloc();
        v498 = v370;
        *v369 = v394;
        *(v369 + 4) = v206;
        *(v369 + 12) = 2160;
        *(v369 + 14) = 1752392040;
        *(v369 + 22) = 2081;
        *(v369 + 24) = sub_1000136BC(v410, v199, &v498);
        _os_log_impl(&_mh_execute_header, v367, v368, "Decimation - found - lowerHalfMedianAccuracy: %f,\nwithin advertisement: %{private,mask.hash}s.", v369, 0x20u);
        sub_100007BAC(v370);
      }

LABEL_36:
      v207 = v467;
      v208 = v468;
      v209 = v465;
      v496 = &_swiftEmptySetSingleton;
      v497 = &_swiftEmptySetSingleton;
      v436 = *v434;
      (v436)(v467, 1, 1, v481);
      static Date.distantPast.getter();
      v210 = v482;
      v500 = v482;
      v501 = &protocol witness table for Table;
      v211 = sub_1000280DC(&v498);
      v406(v211, v455, v210);
      Connection.prepare(_:)();
      v491 = 0;
      sub_100007BAC(&v498);
      v212 = dispatch thunk of _AnySequenceBox._makeIterator()();

      swift_beginAccess();
      v437 = v212;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v213 = v479;
      if (v418(v209, 1, v479) != 1)
      {
        v245 = v458;
        do
        {
          v252 = v480;
          v198(v480, v209, v213);
          v253 = v213;
          v254 = v462;
          (*v416)(v462, v252, v253);
          Row.subscript.getter();
          v255 = v491;
          sub_1002132AC(v254, v498, v208);
          if (v255)
          {
            v491 = v255;

            sub_100016590(v408, v409);
            v371 = *v435;
            v372 = v479;
            (*v435)(v252, v479);
            (*v469)(v464, v489);
            sub_10000B3A8(v207, &unk_10169BB50, &unk_101395760);
            v373 = v482;
            v374 = v452;
            v452(v448, v482);
            v375 = *v391;
            v376 = v420;
            (*v391)(v454, v420);
            v374(v455, v373);
            v404(v474, v456);
            v371(v451, v372);
            v375(v473, v376);
            v374(v485, v373);
          }

          Row.get<A>(_:)();
          v491 = 0;
          v256 = v498;
          v257 = v481;
          v258 = *v412;
          v259 = v208 + *(v481 + 44);
          v260 = v478;
          v261 = v489;
          (*v412)(v478, v259, v489);
          v262 = v461;
          sub_1000D2A70(v207, v461, &unk_10169BB50, &unk_101395760);
          if ((*v411)(v262, 1, v257) == 1)
          {
            sub_10000B3A8(v262, &unk_10169BB50, &unk_101395760);
            swift_beginAccess();
            sub_100DEB5CC(&v495, v256);
            swift_endAccess();
            v263 = v464;
            v407 = *v469;
            v407(v464, v261);
            v258(v263, v260, v261);
            v264 = v453;
            v258(v453, v260, v261);
            v265 = v438;

            v266 = Logger.logObject.getter();
            v267 = static os_log_type_t.info.getter();

            if (!os_log_type_enabled(v266, v267))
            {

              v268 = v407;
              v407(v264, v261);
              v268(v478, v261);
              v213 = v479;
              (*v435)(v480, v479);
              v207 = v467;
              v269 = v467;
              goto LABEL_78;
            }

            v246 = swift_slowAlloc();
            v498 = swift_slowAlloc();
            *v246 = v396;
            *(v246 + 4) = 1752392040;
            *(v246 + 12) = 2081;
            *(v246 + 14) = sub_1000136BC(v410, v265, &v498);
            *(v246 + 22) = 2080;
            sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
            v247 = dispatch thunk of CustomStringConvertible.description.getter();
            v249 = v248;
            v250 = v407;
            v407(v264, v489);
            v251 = sub_1000136BC(v247, v249, &v498);

            *(v246 + 24) = v251;
            *(v246 + 32) = 2048;
            *(v246 + 34) = v256;
            _os_log_impl(&_mh_execute_header, v266, v267, "Decimation - preserveByKey (latest for advertisement): %{private,mask.hash}s,\npreserving scanDate: %s, advId: %lld.", v246, 0x2Au);
            swift_arrayDestroy();
            v198 = v417;

            v250(v478, v489);
          }

          else
          {
            sub_1000345B4(v262, v463, type metadata accessor for ObservedAdvertisement);
            v270 = v415;
            if (v496[2] >= v415)
            {
              swift_beginAccess();
              sub_100DEB5CC(&v495, v256);
              swift_endAccess();
              v299 = v489;
              v258(v245, v260, v489);
              v300 = v438;

              v301 = v260;
              v302 = Logger.logObject.getter();
              v303 = static os_log_type_t.info.getter();

              if (!os_log_type_enabled(v302, v303))
              {

                v315 = *v469;
                (*v469)(v245, v299);
                sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
                v315(v301, v299);
                v213 = v479;
                (*v435)(v480, v479);
                v207 = v467;
                sub_10000B3A8(v467, &unk_10169BB50, &unk_101395760);
                v209 = v465;
                v198 = v417;
                goto LABEL_48;
              }

              v304 = swift_slowAlloc();
              v498 = swift_slowAlloc();
              *v304 = v395;
              *(v304 + 4) = v270;
              *(v304 + 12) = 2048;
              *(v304 + 14) = v256;
              *(v304 + 22) = 2080;
              sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
              v305 = dispatch thunk of CustomStringConvertible.description.getter();
              v307 = v306;
              v308 = *v469;
              (*v469)(v245, v489);
              v309 = sub_1000136BC(v305, v307, &v498);

              *(v304 + 24) = v309;
              *(v304 + 32) = 2160;
              *(v304 + 34) = 1752392040;
              *(v304 + 42) = 2081;
              *(v304 + 44) = sub_1000136BC(v410, v300, &v498);
              _os_log_impl(&_mh_execute_header, v302, v303, "Decimation - remove all above limit - >= maxPayloads %ld currentId: %lld,\nscan date: %s,\nwithin advertisement: %{private,mask.hash}s.", v304, 0x34u);
              swift_arrayDestroy();
              v198 = v417;

              sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
              v308(v478, v489);
              goto LABEL_59;
            }

            v271 = v464;
            Date.timeIntervalSince(_:)();
            v273 = fabs(v272);
            v274 = v414;
            v275 = *(v414 + 40);
            v276 = v491;
            OS_dispatch_queue.sync<A>(execute:)();
            v491 = v276;
            v277 = v498;
            v278 = sub_101073524(v498);
            v279 = v260;
            v280 = sub_101073C48(v277);

            if (v278 * 60.0 / v280 >= v273)
            {
              v310 = v468;
              v311 = sub_10001993C(*(v468 + 32) & 0xB);
              if (v311 != sub_10001993C(*(v463 + 32) & 0xB))
              {
                swift_beginAccess();
                v407 = v256;
                sub_100DEB5CC(&v495, v256);
                swift_endAccess();
                v317 = v489;
                v389 = *v469;
                v389(v271, v489);
                v318 = v478;
                v258(v271, v478, v317);
                v319 = v430;
                v258(v430, v318, v317);
                v320 = v431;
                sub_10001BA68(v310, v431, type metadata accessor for ObservedAdvertisement);
                v321 = v438;

                v322 = Logger.logObject.getter();
                v323 = static os_log_type_t.info.getter();

                if (!os_log_type_enabled(v322, v323))
                {

                  sub_100034434(v320, type metadata accessor for ObservedAdvertisement);
                  v351 = v389;
                  v389(v319, v317);
                  sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
                  v351(v478, v317);
                  v213 = v479;
                  (*v435)(v480, v479);
                  v207 = v467;
                  sub_10000B3A8(v467, &unk_10169BB50, &unk_101395760);
                  goto LABEL_79;
                }

                v324 = v320;
                v325 = swift_slowAlloc();
                v386 = swift_slowAlloc();
                v498 = v386;
                *v325 = v395;
                *(v325 + 4) = v407;
                *(v325 + 12) = 2080;
                sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
                v326 = dispatch thunk of CustomStringConvertible.description.getter();
                LODWORD(v407) = v323;
                v327 = v326;
                v329 = v328;
                v330 = v319;
                v331 = v389;
                v389(v330, v489);
                v332 = sub_1000136BC(v327, v329, &v498);

                *(v325 + 14) = v332;
                *(v325 + 22) = 2080;
                sub_10001993C(*(v324 + 32) & 0xB);
                v333 = sub_100019E48();
                v335 = v334;
                v336 = v324;
                v198 = v417;
                sub_100034434(v336, type metadata accessor for ObservedAdvertisement);
                v337 = sub_1000136BC(v333, v335, &v498);

                *(v325 + 24) = v337;
                *(v325 + 32) = 2160;
                *(v325 + 34) = 1752392040;
                *(v325 + 42) = 2081;
                *(v325 + 44) = sub_1000136BC(v410, v321, &v498);
                _os_log_impl(&_mh_execute_header, v322, v407, "Decimation - keep - multipart changed currentId: %lld,\nscan date: %s, multipart: %s,\nwithin advertisement: %{private,mask.hash}s.", v325, 0x34u);
                swift_arrayDestroy();

                sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
                v331(v478, v489);
LABEL_59:
                v213 = v479;
                (*v435)(v480, v479);
                v207 = v467;
                sub_10000B3A8(v467, &unk_10169BB50, &unk_101395760);
                goto LABEL_47;
              }

              v312 = v432;
              sub_1000D2A70(v310 + *(v481 + 48), v432, &qword_1016AA430, &unk_101392650);
              v313 = type metadata accessor for ObservedAdvertisement.Location(0);
              if ((*(*(v313 - 8) + 48))(v312, 1, v313) == 1)
              {
                sub_10000B3A8(v312, &qword_1016AA430, &unk_101392650);
                v314 = 1.79769313e308;
              }

              else
              {
                v314 = *(v312 + 16);
                sub_100034434(v312, type metadata accessor for ObservedAdvertisement.Location);
              }

              v338 = v429;
              v339 = v428;
              v340 = v489;
              v341 = v256;
              if (v314 <= v206)
              {
                swift_beginAccess();
                sub_100DEB5CC(&v495, v256);
                swift_endAccess();
                v352 = v478;
                v258(v339, v478, v340);
                v353 = v438;

                v354 = Logger.logObject.getter();
                v355 = static os_log_type_t.info.getter();

                if (!os_log_type_enabled(v354, v355))
                {

                  v362 = *v469;
                  (*v469)(v339, v340);
                  sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
                  v362(v352, v340);
LABEL_77:
                  v213 = v479;
                  (*v435)(v480, v479);
                  v207 = v467;
                  v269 = v467;
LABEL_78:
                  sub_10000B3A8(v269, &unk_10169BB50, &unk_101395760);
                  v245 = v458;
LABEL_79:
                  v209 = v465;
                  v198 = v417;
                  goto LABEL_48;
                }

                v356 = swift_slowAlloc();
                v498 = swift_slowAlloc();
                *v356 = v395;
                *(v356 + 4) = v341;
                *(v356 + 12) = 2080;
                sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
                v357 = dispatch thunk of CustomStringConvertible.description.getter();
                v359 = v358;
                v349 = *v469;
                (*v469)(v339, v489);
                v360 = sub_1000136BC(v357, v359, &v498);

                *(v356 + 14) = v360;
                *(v356 + 22) = 2048;
                *(v356 + 24) = v314;
                *(v356 + 32) = 2160;
                *(v356 + 34) = 1752392040;
                *(v356 + 42) = 2081;
                *(v356 + 44) = sub_1000136BC(v410, v353, &v498);
                _os_log_impl(&_mh_execute_header, v354, v355, "Decimation - keep - better or equal median accuracy currentId: %lld,\nscan date: %s, accuracy: %f,\nwithin advertisement: %{private,mask.hash}s.", v356, 0x34u);
                swift_arrayDestroy();
                v198 = v417;
              }

              else
              {
                swift_beginAccess();
                sub_100DEB5CC(&v495, v256);
                swift_endAccess();
                v258(v338, v478, v340);
                v342 = v438;

                v343 = Logger.logObject.getter();
                v344 = static os_log_type_t.info.getter();

                if (!os_log_type_enabled(v343, v344))
                {

                  v361 = *v469;
                  (*v469)(v338, v340);
                  sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
                  v361(v478, v340);
                  goto LABEL_77;
                }

                v345 = swift_slowAlloc();
                v498 = swift_slowAlloc();
                *v345 = v395;
                *(v345 + 4) = v341;
                *(v345 + 12) = 2080;
                sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
                v346 = dispatch thunk of CustomStringConvertible.description.getter();
                v348 = v347;
                v349 = *v469;
                (*v469)(v338, v489);
                v350 = sub_1000136BC(v346, v348, &v498);

                *(v345 + 14) = v350;
                *(v345 + 22) = 2048;
                *(v345 + 24) = v314;
                *(v345 + 32) = 2160;
                *(v345 + 34) = 1752392040;
                *(v345 + 42) = 2081;
                *(v345 + 44) = sub_1000136BC(v410, v342, &v498);
                _os_log_impl(&_mh_execute_header, v343, v344, "Decimation - remove - worse than median accuracy currentId: %lld,\nscan date: %s, accuracy: %f,\nwithin advertisement: %{private,mask.hash}s.", v345, 0x34u);
                swift_arrayDestroy();
                v198 = v417;
              }

              sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
              v349(v478, v489);
            }

            else
            {
              swift_beginAccess();
              v407 = v256;
              sub_100DEB5CC(&v495, v256);
              swift_endAccess();
              v281 = v489;
              v389 = *v469;
              v389(v271, v489);
              v258(v271, v279, v281);
              v282 = v439;
              v258(v439, v279, v281);
              v283 = v438;

              v284 = Logger.logObject.getter();
              v285 = static os_log_type_t.info.getter();

              v286 = v285;
              if (!os_log_type_enabled(v284, v285))
              {

                v316 = v389;
                v389(v282, v281);
                sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
                v316(v478, v281);
                goto LABEL_77;
              }

              v287 = swift_slowAlloc();
              v498 = swift_slowAlloc();
              *v287 = v395;
              v288 = *(v274 + 40);
              v289 = v491;
              OS_dispatch_queue.sync<A>(execute:)();
              v491 = v289;
              v290 = v495;
              v291 = sub_101073524(v495);
              v292 = sub_101073C48(v290);

              *(v287 + 4) = v291 * 60.0 / v292;
              *(v287 + 12) = 2048;
              *(v287 + 14) = v407;
              *(v287 + 22) = 2080;
              sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
              v293 = dispatch thunk of CustomStringConvertible.description.getter();
              v295 = v294;
              v296 = v282;
              v297 = v389;
              v389(v296, v489);
              v298 = sub_1000136BC(v293, v295, &v498);

              *(v287 + 24) = v298;
              *(v287 + 32) = 2160;
              *(v287 + 34) = 1752392040;
              *(v287 + 42) = 2081;
              *(v287 + 44) = sub_1000136BC(v410, v283, &v498);
              _os_log_impl(&_mh_execute_header, v284, v286, "Decimation - keep - > locationTimeResolution %f currentId: %lld,\nscan date: %s,\nwithin advertisement: %{private,mask.hash}s.", v287, 0x34u);
              swift_arrayDestroy();
              v198 = v417;

              sub_100034434(v463, type metadata accessor for ObservedAdvertisement);
              v297(v478, v489);
            }
          }

          v213 = v479;
          (*v435)(v480, v479);
          v207 = v467;
          sub_10000B3A8(v467, &unk_10169BB50, &unk_101395760);
          v245 = v458;
LABEL_47:
          v209 = v465;
LABEL_48:
          v208 = v468;
          sub_1000345B4(v468, v207, type metadata accessor for ObservedAdvertisement);
          (v436)(v207, 0, 1, v481);
          dispatch thunk of _AnyIteratorBoxBase.next()();
        }

        while (v418(v209, 1, v213) != 1);
      }

      v214 = v496;

      v426 = sub_10039D990(v215, v426);
      v216 = v438;

      v217 = Logger.logObject.getter();
      v218 = static os_log_type_t.default.getter();

      v219 = os_log_type_enabled(v217, v218);
      v436 = v214;
      if (v219)
      {
        v220 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v498 = v221;
        *v220 = v394;
        *(v220 + 4) = v214[2];
        *(v220 + 12) = 2160;
        *(v220 + 14) = 1752392040;
        *(v220 + 22) = 2081;
        *(v220 + 24) = sub_1000136BC(v410, v216, &v498);
        _os_log_impl(&_mh_execute_header, v217, v218, "Decimation - byAdvertisement preserving count: %ld,\nwithin advertisement: %{private,mask.hash}s.", v220, 0x20u);
        sub_100007BAC(v221);
        v207 = v467;
      }

      v222 = v490;
      swift_beginAccess();
      v223 = v497;
      v498 = v497;

      v224 = v488;
      Collection<>.contains(_:)();
      v437 = v223;

      v225 = v477;
      v226 = v482;
      QueryType.filter(_:)();
      v427(v224, v222);
      QueryType.delete()();
      v452(v225, v226);
      v227 = v491;
      Connection.run(_:)();
      if (v227)
      {

        sub_100016590(v408, v409);
        (*v388)(v445, v440);
        (*v469)(v464, v489);
        sub_10000B3A8(v207, &unk_10169BB50, &unk_101395760);
        v381 = v482;
        v382 = v452;
        v452(v448, v482);
        v383 = *v391;
        v384 = v420;
        (*v391)(v454, v420);
        v382(v455, v381);
        v404(v474, v456);
        (*v435)(v451, v479);
        v383(v473, v384);
        v382(v485, v381);
      }

      v228 = v438;

      v229 = Logger.logObject.getter();
      v230 = static os_log_type_t.default.getter();

      v231 = os_log_type_enabled(v229, v230);
      v232 = v489;
      if (v231)
      {
        v233 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v498 = v234;
        *v233 = v394;
        *(v233 + 4) = *(v437 + 16);
        *(v233 + 12) = 2160;
        *(v233 + 14) = 1752392040;
        *(v233 + 22) = 2081;
        *(v233 + 24) = sub_1000136BC(v410, v228, &v498);
        _os_log_impl(&_mh_execute_header, v229, v230, "Decimation - remove - decimate count: %ld,\nwithin advertisement: %{private,mask.hash}s.", v233, 0x20u);
        sub_100007BAC(v234);
        v232 = v489;

        v207 = v467;
      }

      Connection.scalar<A>(_:)();
      v491 = 0;
      v235 = v228;
      v236 = v498;

      v237 = Logger.logObject.getter();
      v238 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v237, v238))
      {
        v239 = v236 / v397 * 100.0;
        v240 = v207;
        v241 = swift_slowAlloc();
        v242 = swift_slowAlloc();
        v498 = v242;
        *v241 = v387;
        *(v241 + 4) = v236;
        *(v241 + 12) = 2160;
        *(v241 + 14) = 1752392040;
        *(v241 + 22) = 2081;
        v243 = sub_1000136BC(v410, v235, &v498);

        *(v241 + 24) = v243;
        *(v241 + 32) = 2048;
        *(v241 + 34) = v239;
        _os_log_impl(&_mh_execute_header, v237, v238, "Decimation - byAdvertisement end count: %ld\nwithin advertisement: %{private,mask.hash}s kept %f%%.", v241, 0x2Au);
        sub_100007BAC(v242);

        sub_100016590(v408, v409);
        (*v388)(v445, v440);
        (*v469)(v464, v489);
        v244 = v240;
      }

      else
      {

        sub_100016590(v408, v409);
        (*v388)(v445, v440);
        (*v469)(v464, v232);
        v244 = v207;
      }

      sub_10000B3A8(v244, &unk_10169BB50, &unk_101395760);
      v363 = v482;
      v364 = v452;
      v452(v448, v482);
      (*v391)(v454, v420);
      v364(v455, v363);
      v404(v474, v456);
      v365 = v479;
      (*v435)(v451, v479);

      v134 = v446;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v366 = v418(v134, 1, v365);
      v138 = v417;
      v141 = v365;
      if (v366 == 1)
      {
        goto LABEL_15;
      }
    }

    sub_100007BAC(&v498);
    v198 = v417;
    v199 = v438;
LABEL_33:

    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v498 = v205;
      *v204 = v390;
      *(v204 + 4) = 1752392040;
      *(v204 + 12) = 2081;
      *(v204 + 14) = sub_1000136BC(v410, v199, &v498);
      _os_log_impl(&_mh_execute_header, v202, v203, "Decimation - not found - lowerHalfMedianAccuracy: decimating all lower or equal,\nwithin advertisement: %{private,mask.hash}s.", v204, 0x16u);
      sub_100007BAC(v205);
    }

    v206 = 0.0;
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1002132AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v74 = a3;
  Error = type metadata accessor for QueryError();
  v6 = *(Error - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(Error);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v69 - v10;
  v78 = type metadata accessor for UUID();
  v73 = *(v78 - 8);
  v12 = *(v73 + 64);
  __chkstk_darwin(v78);
  v77 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Date();
  v70 = *(v72 - 8);
  v14 = *(v70 + 64);
  __chkstk_darwin(v72);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v75 = &v69 - v19;
  v20 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v69 - v22;
  if (qword_101695348 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_1000076D4(v24, qword_10177C980);
  Row.get<A>(_:)();
  if (!v3)
  {
    v25 = v79;
    if (qword_101695350 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v24, qword_10177C998);
    Row.get<A>(_:)();
    v26 = v79;
    if (qword_101695358 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v24, qword_10177C9B0);
    Row.get<A>(_:)();
    v47 = v79;
    v27 = v23;
    if (qword_101695360 != -1)
    {
      swift_once();
    }

    v48 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v48, qword_10177C9C8);
    v49 = v72;
    Row.get<A>(_:)();
    v63 = type metadata accessor for ObservedAdvertisement.Location(0);
    (*(v70 + 32))(v27 + *(v63 + 28), v16, v49);
    *v27 = v25;
    v27[1] = v26;
    v27[2] = v47;
    (*(*(v63 - 8) + 56))(v27, 0, 1, v63);
    goto LABEL_13;
  }

  v27 = v23;
  v79 = v3;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (!swift_dynamicCast())
  {
LABEL_29:

    swift_willThrow();
    v41 = type metadata accessor for Row();
    return (*(*(v41 - 8) + 8))(a1, v41);
  }

  v28 = (*(v6 + 88))(v11, Error);
  if (v28 != enum case for QueryError.noSuchColumn(_:) && v28 != enum case for QueryError.unexpectedNullValue(_:))
  {
    (*(v6 + 8))(v11, Error);
    goto LABEL_29;
  }

  (*(v6 + 8))(v11, Error);
  v29 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(*(v29 - 8) + 56))(v23, 1, 1, v29);

LABEL_13:
  v31 = v77;
  v30 = v78;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v32, qword_10177C788);
  Row.get<A>(_:)();
  v33 = 0;
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v34, qword_10177C7B8);
  sub_100028088();
  Row.get<A>(_:)();
  v46 = v76;
  if (v79 == 1)
  {
    LOBYTE(v30) = 1;
  }

  else
  {
    if (v79)
    {
      sub_10022A480();
      v33 = swift_allocError();
      *v65 = 0;
      swift_willThrow();
      (*(v73 + 8))(v31, v30);
      goto LABEL_18;
    }

    LOBYTE(v30) = 0;
  }

  if (qword_1016952A8 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v64 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v64, qword_10177C7A0);
    sub_100029580();
    Row.get<A>(_:)();
    if (v33)
    {
      (*(v73 + 8))(v77, v78);
      v46 = v76;
LABEL_18:
      v79 = v33;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      if (!swift_dynamicCast())
      {
        goto LABEL_41;
      }

      v35 = (*(v6 + 88))(v46, Error);
      if (v35 != enum case for QueryError.noSuchColumn(_:) && v35 != enum case for QueryError.unexpectedNullValue(_:))
      {
        (*(v6 + 8))(v46, Error);
LABEL_41:

        swift_willThrow();
        v50 = type metadata accessor for Row();
        (*(*(v50 - 8) + 8))(a1, v50);
        return sub_10000B3A8(v27, &qword_1016AA430, &unk_101392650);
      }

      (*(v6 + 8))(v46, Error);
      v36 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
      (*(*(v36 - 8) + 56))(v75, 1, 1, v36);
    }

    else
    {
      v66 = v79;
      v67 = v75;
      (*(v73 + 32))(v75, v77, v78);
      v68 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
      v67[*(v68 + 20)] = v30;
      *&v67[*(v68 + 24)] = v66;
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    }

    Error = v74;
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v37 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v37, qword_10177C8A8);
    Row.subscript.getter();
    v6 = v79;
    v38 = v80;
    v39 = v80 >> 62;
    if ((v80 >> 62) <= 1)
    {
      break;
    }

    if (v39 != 2)
    {
      goto LABEL_46;
    }

    v44 = *(v79 + 16);
    v43 = *(v79 + 24);
    v45 = __OFSUB__(v43, v44);
    v40 = v43 - v44;
    if (!v45)
    {
      if (v40 == 28)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  if (!v39)
  {
    v40 = BYTE6(v80);
    if (BYTE6(v80) == 28)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  LODWORD(v40) = HIDWORD(v79) - v79;
  if (__OFSUB__(HIDWORD(v79), v79))
  {
    goto LABEL_70;
  }

  v40 = v40;
  if (v40 == 28)
  {
    goto LABEL_46;
  }

LABEL_44:
  if (v40 == 6)
  {
    sub_100017D5C(v79, v80);
    sub_1000176B4(v6, v38, &v79);
    v51 = v79;
    v52 = v80 | 0x2000000000000000;
    goto LABEL_47;
  }

LABEL_46:
  sub_100017D5C(v79, v80);
  sub_100018000(v6, v38, &v79);
  v51 = v79;
  v52 = v80;
LABEL_47:
  *Error = v71;
  *(Error + 8) = 0;
  *(Error + 16) = v51;
  *(Error + 24) = v52;
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v53 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v53, qword_10177C800);
  sub_100028088();
  Row.subscript.getter();
  result = sub_1000BB2CC(v79);
  if (result == 4)
  {
    __break(1u);
  }

  else
  {
    *(Error + 9) = result;
    v54 = v75;
    if (qword_101695308 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v53, qword_10177C8C0);
    Row.subscript.getter();
    *(Error + 32) = v79;
    if (qword_101695318 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v53, qword_10177C8F0);
    Row.subscript.getter();
    *(Error + 33) = v79;
    if (qword_101695320 != -1)
    {
      swift_once();
    }

    v55 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
    sub_1000076D4(v55, qword_10177C908);
    Row.subscript.getter();
    v56 = BYTE1(v79);
    *(Error + 34) = v79;
    *(Error + 35) = v56;
    if (qword_101695328 != -1)
    {
      swift_once();
    }

    v57 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
    sub_1000076D4(v57, qword_10177C920);
    sub_100027F50();
    Row.subscript.getter();
    *(Error + 36) = v79;
    if (qword_101695330 != -1)
    {
      swift_once();
    }

    v58 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v58, qword_10177C938);
    v59 = type metadata accessor for ObservedAdvertisement(0);
    v60 = Error + v59[11];
    Row.subscript.getter();
    sub_1000D2A70(v27, Error + v59[12], &qword_1016AA430, &unk_101392650);
    sub_1000D2A70(v54, Error + v59[13], &qword_101699DB0, &unk_101393100);
    if (qword_101695340 != -1)
    {
      swift_once();
    }

    v61 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
    sub_1000076D4(v61, qword_10177C968);
    Row.subscript.getter();
    sub_100016590(v6, v38);
    v62 = type metadata accessor for Row();
    (*(*(v62 - 8) + 8))(a1, v62);
    sub_10000B3A8(v54, &qword_101699DB0, &unk_101393100);
    result = sub_10000B3A8(v27, &qword_1016AA430, &unk_101392650);
    *(Error + v59[14]) = v79;
  }

  return result;
}

uint64_t sub_100214264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v107 = a3;
  v109 = a2;
  v98 = a1;
  v123 = type metadata accessor for BeaconIdentifier();
  v90 = *(v123 - 8);
  v5 = *(v90 + 64);
  __chkstk_darwin(v123);
  v122 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for UUID();
  v127 = *(v91 - 8);
  v7 = *(v127 + 64);
  __chkstk_darwin(v91);
  v92 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v121 = *(v9 - 8);
  v10 = *(v121 + 64);
  v11 = __chkstk_darwin(v9);
  v110 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v89 - v13;
  v14 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v118 = *(v14 - 8);
  v119 = v14;
  v15 = *(v118 + 64);
  v16 = __chkstk_darwin(v14);
  v100 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v99 = &v89 - v19;
  v20 = __chkstk_darwin(v18);
  v101 = &v89 - v21;
  v22 = __chkstk_darwin(v20);
  v102 = &v89 - v23;
  __chkstk_darwin(v22);
  v113 = &v89 - v24;
  v25 = type metadata accessor for Table();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v117 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v112 = &v89 - v31;
  v32 = __chkstk_darwin(v30);
  v103 = &v89 - v33;
  v34 = __chkstk_darwin(v32);
  v104 = &v89 - v35;
  v36 = __chkstk_darwin(v34);
  v105 = &v89 - v37;
  v38 = __chkstk_darwin(v36);
  v106 = &v89 - v39;
  v40 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v41 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v125 = v38;
  v126 = &protocol witness table for Table;
  v42 = sub_1000280DC(&v124);
  v120 = v26;
  v114 = *(v26 + 16);
  v115 = v26 + 16;
  v114(v42, a4 + v41, v25);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v43 = sub_1000076D4(v9, qword_10177C770);
  v93 = v40;
  v116 = a4;
  v44 = v97;
  v94 = v43;
  QueryType.subscript.getter();
  v45 = v110;
  QueryType.subscript.getter();
  v46 = v113;
  == infix<A>(_:_:)();
  v47 = *(v121 + 8);
  v121 += 8;
  v95 = v47;
  v96 = v9;
  v47(v45, v9);
  v47(v44, v9);
  v48 = v116;
  QueryType.join(_:on:)();
  v49 = v118 + 8;
  v111 = *(v118 + 8);
  v111(v46, v119);
  sub_100007BAC(&v124);
  v50 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v125 = v25;
  v126 = &protocol witness table for Table;
  v51 = sub_1000280DC(&v124);
  v114(v51, v48 + v50, v25);
  QueryType.subscript.getter();
  v52 = v110;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v53 = v52;
  v54 = v96;
  v55 = v95;
  v95(v53, v96);
  v55(v44, v54);
  v56 = v117;
  QueryType.join(_:on:)();
  v118 = v49;
  v111(v46, v119);
  v57 = *(v120 + 8);
  v120 += 8;
  v117 = v57;
  (v57)(v56, v25);
  sub_100007BAC(&v124);
  v58 = v98;
  v59 = *(v98 + 16);
  v60 = _swiftEmptyArrayStorage;
  v108 = v25;
  if (v59)
  {
    v124 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v59, 0);
    v60 = v124;
    v61 = v58 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v121 = *(v90 + 72);
    v62 = (v127 + 16);
    v63 = v91;
    v64 = v92;
    do
    {
      v65 = v122;
      sub_10001BA68(v61, v122, type metadata accessor for BeaconIdentifier);
      (*v62)(v64, v65 + *(v123 + 20), v63);
      sub_100034434(v65, type metadata accessor for BeaconIdentifier);
      v124 = v60;
      v67 = v60[2];
      v66 = v60[3];
      if (v67 >= v66 >> 1)
      {
        sub_101123D4C(v66 > 1, v67 + 1, 1);
        v60 = v124;
      }

      v60[2] = v67 + 1;
      (*(v127 + 32))(v60 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v67, v64, v63);
      v61 += v121;
      --v59;
    }

    while (v59);
  }

  v68 = sub_10000954C(v60);

  v124 = v68;
  v69 = v119;
  v70 = v101;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v71 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v71, qword_10177C788);
  sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  sub_1000041A4(&qword_101699E08, &qword_1016AF8E0, &qword_101393130);
  Collection<>.contains(_:)();

  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v72 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v72, qword_10177C800);
  LOBYTE(v124) = 1;
  sub_100028088();
  v73 = v99;
  == infix<A>(_:_:)();
  LOBYTE(v124) = 2;
  v74 = v100;
  == infix<A>(_:_:)();
  v75 = v113;
  || infix(_:_:)();
  v76 = v111;
  v111(v74, v69);
  v76(v73, v69);
  v77 = v102;
  && infix(_:_:)();
  v76(v75, v69);
  v76(v70, v69);
  v78 = v103;
  v79 = v108;
  v80 = v112;
  QueryType.filter(_:)();
  v76(v77, v69);
  (v117)(v80, v79);
  v81 = v104;
  if (qword_101695338 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v69, qword_10177C950);
  LOBYTE(v124) = v107 & 1;
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  v76(v75, v69);
  (v117)(v78, v79);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v82 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v82, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v83 = v105;
  QueryType.order(_:)();

  v84 = v117;
  (v117)(v81, v79);
  v85 = v106;
  QueryType.limit(_:)();
  v84(v83, v79);
  v125 = v79;
  v126 = &protocol witness table for Table;
  v86 = sub_1000280DC(&v124);
  v114(v86, v85, v79);
  v87 = sub_100215044(&v124, v116);
  v84(v85, v79);
  sub_100007BAC(&v124);
  return v87;
}

uint64_t sub_100215044(uint64_t a1, uint64_t a2)
{
  v72 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v56 = *(v72 - 8);
  v4 = *(v56 + 64);
  v5 = __chkstk_darwin(v72);
  v66 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = v55 - v7;
  v8 = type metadata accessor for ObservedAdvertisement(0);
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v74 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = v55 - v12;
  v13 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = v55 - v18;
  v68 = type metadata accessor for Row();
  v19 = *(v68 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v68);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v55 - v25;
  __chkstk_darwin(v24);
  v28 = v55 - v27;
  v73 = a2;
  v29 = sub_100028E90();
  if (!v29)
  {
    sub_10020223C();
    swift_allocError();
    *v33 = 2;
    *(v33 + 4) = 1;
    return swift_willThrow();
  }

  v30 = v29;
  v59 = v19;
  v31 = Connection.prepare(_:)();
  if (v2)
  {
  }

  v57 = v26;
  v34 = v31;

  v35 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v76 = _swiftEmptyArrayStorage;
  sub_1011245F0(0, v35 & ~(v35 >> 63), 0);
  v36 = v76;
  v55[2] = v34;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v70 = result;
  if (v35 < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v55[1] = v30;
  v69 = v28;
  if (v35)
  {
    v64 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    v65 = (v59 + 48);
    v62 = (v56 + 8);
    v63 = (v59 + 16);
    v61 = (v59 + 8);
    v37 = v23;
    v38 = v68;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v65)(v17, 1, v38);
      if (result == 1)
      {
        goto LABEL_26;
      }

      (*v63)(v37, v17, v38);
      v39 = v37;
      if (qword_101695298 != -1)
      {
        swift_once();
      }

      v40 = v72;
      sub_1000076D4(v72, qword_10177C770);
      type metadata accessor for Table();
      v41 = v66;
      QueryType.subscript.getter();
      Row.subscript.getter();
      (*v62)(v41, v40);
      sub_1002132AC(v39, v75, v74);
      v37 = v39;
      v38 = v68;
      (*v61)(v17, v68);
      v76 = v36;
      v43 = v36[2];
      v42 = v36[3];
      if (v43 >= v42 >> 1)
      {
        sub_1011245F0(v42 > 1, v43 + 1, 1);
        v36 = v76;
      }

      v36[2] = v43 + 1;
      sub_1000345B4(v74, v36 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v43, type metadata accessor for ObservedAdvertisement);
      --v35;
      v28 = v69;
      if (!v35)
      {
        goto LABEL_16;
      }
    }
  }

  v38 = v68;
LABEL_16:
  v74 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v44 = v60;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v45 = v59;
  v46 = *(v59 + 48);
  v68 = v59 + 48;
  v66 = v46;
  if ((v46)(v44, 1, v38) != 1)
  {
    v48 = *(v45 + 32);
    v47 = v45 + 32;
    v63 = (v47 - 16);
    v64 = v48;
    v62 = (v56 + 8);
    v59 = v47;
    v65 = (v47 - 24);
    do
    {
      v64(v28, v44, v38);
      v49 = v57;
      (*v63)(v57, v28, v38);
      if (qword_101695298 != -1)
      {
        swift_once();
      }

      v50 = v72;
      sub_1000076D4(v72, qword_10177C770);
      type metadata accessor for Table();
      v51 = v58;
      QueryType.subscript.getter();
      Row.subscript.getter();
      (*v62)(v51, v50);
      sub_1002132AC(v49, v75, v67);
      (*v65)(v28, v38);
      v76 = v36;
      v53 = v36[2];
      v52 = v36[3];
      if (v53 >= v52 >> 1)
      {
        sub_1011245F0(v52 > 1, v53 + 1, 1);
        v36 = v76;
      }

      v36[2] = v53 + 1;
      sub_1000345B4(v67, v36 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v53, type metadata accessor for ObservedAdvertisement);
      v44 = v60;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v54 = (v66)(v44, 1, v38);
      v28 = v69;
    }

    while (v54 != 1);
  }

  sub_10000B3A8(v44, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_101699E10, &qword_101393138);
  result = swift_allocObject();
  *(result + 16) = v36;
  return result;
}

uint64_t sub_10021593C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for Connection.TransactionMode();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ObservedAdvertisement(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    v15 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001BA68(v13, v11, type metadata accessor for ObservedAdvertisement);
      v16 = *v11;
      v17 = v11[8];
      sub_100034434(v11, type metadata accessor for ObservedAdvertisement);
      if ((v17 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100A5C448(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_100A5C448((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        *&v15[8 * v19 + 32] = v16;
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (!*(v15 + 2))
  {
  }

  v20 = v30;
  v21 = sub_100027FA4();
  if (v21)
  {
    v22 = __chkstk_darwin(v21);
    *(&v27 - 4) = v20;
    *(&v27 - 3) = v22;
    *(&v27 - 2) = v15;
    v24 = v28;
    v23 = v29;
    (*(v28 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v29);
    Connection.transaction(_:block:)();
    (*(v24 + 8))(v6, v23);
  }

  else
  {

    sub_10020223C();
    swift_allocError();
    *v26 = 2;
    *(v26 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_100215C7C(uint64_t a1, NSObject *a2, void (*a3)(char *, uint64_t)))(char *, uint64_t)
{
  v53 = a1;
  v46 = a3;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  v6 = __chkstk_darwin(v4);
  v47 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v48 = &v36 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Table();
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Delete();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v52;
  result = sub_1002085AC(a2, v53);
  if (!v24)
  {
    v38 = result;
    v39 = v23;
    v40 = v18;
    v41 = v12;
    v42 = v14;
    v43 = v20;
    v37 = v15;
    v44 = v19;
    v45 = a2;
    v52 = 0;
    v54 = v46;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v26 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v26, qword_10177C770);
    sub_1000BC4D4(&qword_101699D38, &unk_1013930C0);
    sub_1000041A4(&qword_101699D40, &qword_101699D38, &unk_1013930C0);
    v27 = v41;
    Collection<>.contains(_:)();
    v54 = v38;
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0);
    v28 = v47;
    Collection<>.contains(_:)();

    LOBYTE(v54) = 0;
    v29 = v48;
    == infix<A>(_:_:)();
    v30 = v51;
    v31 = *(v50 + 8);
    v31(v28, v51);
    v32 = v42;
    && infix(_:_:)();
    v31(v29, v30);
    v31(v27, v30);
    v33 = v40;
    v34 = v37;
    QueryType.filter(_:)();
    v31(v32, v30);
    v35 = v39;
    QueryType.delete()();
    (*(v49 + 8))(v33, v34);
    Connection.run(_:)();
    return (*(v43 + 8))(v35, v44);
  }

  return result;
}

uint64_t sub_10021614C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v37 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v34 = *(v37 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v37);
  v5 = &v33 - v4;
  v40 = type metadata accessor for Table();
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v40);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Update();
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v41);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ObservedAdvertisement(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    v18 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001BA68(v16, v14, type metadata accessor for ObservedAdvertisement);
      v19 = *v14;
      v20 = v14[8];
      sub_100034434(v14, type metadata accessor for ObservedAdvertisement);
      if ((v20 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100A5C448(0, *(v18 + 2) + 1, 1, v18);
        }

        v22 = *(v18 + 2);
        v21 = *(v18 + 3);
        if (v22 >= v21 >> 1)
        {
          v18 = sub_100A5C448((v21 > 1), v22 + 1, 1, v18);
        }

        *(v18 + 2) = v22 + 1;
        *&v18[8 * v22 + 32] = v19;
      }

      v16 += v17;
      --v15;
    }

    while (v15);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  if (!*(v18 + 2))
  {
  }

  if (sub_100027FA4())
  {
    v44 = v18;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v23 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v23, qword_10177C770);
    sub_1000BC4D4(&qword_101699D38, &unk_1013930C0);
    sub_1000041A4(&qword_101699D40, &qword_101699D38, &unk_1013930C0);
    Collection<>.contains(_:)();

    v24 = v36;
    v25 = v40;
    QueryType.filter(_:)();
    v26 = v37;
    (*(v34 + 8))(v5, v37);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v27 = *(type metadata accessor for Setter() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101695338 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v26, qword_10177C950);
    v43 = 1;
    <- infix<A>(_:_:)();
    v30 = v35;
    QueryType.update(_:)();

    (*(v38 + 8))(v24, v25);
    Connection.run(_:)();
    (*(v39 + 8))(v30, v41);
  }

  else
  {

    sub_10020223C();
    swift_allocError();
    *v32 = 2;
    *(v32 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100216764(uint64_t a1)
{
  v2 = type metadata accessor for Connection.TransactionMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100027FA4();
  if (v7)
  {
    v8 = __chkstk_darwin(v7);
    *(&v11 - 2) = a1;
    *(&v11 - 1) = v8;
    (*(v3 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v2);
    Connection.transaction(_:block:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v10 = 2;
    *(v10 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_100216908(uint64_t a1, NSObject *a2))(char *, uint64_t)
{
  v59 = a1;
  v3 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v40 - v5;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  v8 = __chkstk_darwin(v6);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v54 = &v40 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Table();
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Delete();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v58;
  result = sub_1002085AC(a2, v59);
  if (!v26)
  {
    v41 = result;
    v42 = v21;
    v44 = v25;
    v45 = v20;
    v46 = v14;
    v47 = v16;
    v48 = v22;
    v49 = a2;
    v58 = 0;
    v43 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v28 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v28, qword_10177C8A8);
    sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
    v29 = v50;
    ExpressionType<>.length.getter();
    v60 = 28;
    v30 = v46;
    == infix<A>(_:_:)();
    (*(v51 + 8))(v29, v52);
    v60 = v41;
    v32 = v53;
    v31 = v54;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v33 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v33, qword_10177C770);
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0);
    Collection<>.contains(_:)();

    LOBYTE(v60) = 0;
    == infix<A>(_:_:)();
    v34 = *(v56 + 8);
    v35 = v32;
    v36 = v57;
    v34(v35, v57);
    v37 = v47;
    && infix(_:_:)();
    v34(v31, v36);
    v34(v30, v36);
    v38 = v45;
    QueryType.filter(_:)();
    v34(v37, v36);
    v39 = v44;
    QueryType.delete()();
    (*(v55 + 8))(v38, v17);
    Connection.run(_:)();
    return (*(v48 + 8))(v39, v42);
  }

  return result;
}

uint64_t sub_100216ED0(uint64_t a1, uint64_t a2)
{
  v74 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v82 = *(v74 - 8);
  v5 = *(v82 + 64);
  v6 = __chkstk_darwin(v74);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v80 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v86 = *(v80 - 8);
  v10 = *(v86 + 64);
  __chkstk_darwin(v80);
  v72 = &v55 - v11;
  v12 = type metadata accessor for JoinType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Table();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v73 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v76 = &v55 - v23;
  v24 = __chkstk_darwin(v22);
  v68 = &v55 - v25;
  __chkstk_darwin(v24);
  v70 = &v55 - v26;
  v65 = sub_100206C74(a1);
  v69 = v2;
  v71 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v81 = v13;
  v27 = *(v13 + 104);
  v64 = v16;
  v63 = enum case for JoinType.leftOuter(_:);
  v75 = v12;
  v62 = v27;
  v61 = v13 + 104;
  v27(v16);
  v79 = a2;
  v28 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v84 = v17;
  v85 = &protocol witness table for Table;
  v29 = sub_1000280DC(v83);
  v67 = v18;
  v77 = *(v18 + 16);
  v78 = v18 + 16;
  v77(v29, v28, v17);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v30 = v74;
  v58 = sub_1000076D4(v74, qword_10177C770);
  QueryType.subscript.getter();
  v31 = v66;
  QueryType.subscript.getter();
  v32 = v72;
  == infix<A>(_:_:)();
  v33 = *(v82 + 8);
  v82 += 8;
  v60 = v33;
  v33(v31, v30);
  v56 = v9;
  v33(v9, v30);
  v34 = v64;
  QueryType.join(_:_:on:)();
  v35 = v86 + 8;
  v57 = *(v86 + 8);
  v57(v32, v80);
  v59 = *(v81 + 8);
  v81 += 8;
  v36 = v75;
  v59(v34, v75);
  sub_100007BAC(v83);
  v62(v34, v63, v36);
  v37 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v84 = v17;
  v85 = &protocol witness table for Table;
  v38 = sub_1000280DC(v83);
  v77(v38, v79 + v37, v17);
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v39 = v56;
  == infix<A>(_:_:)();
  v40 = v31;
  v41 = v57;
  v42 = v74;
  v43 = v60;
  v60(v40, v74);
  v43(v39, v42);
  v44 = v73;
  QueryType.join(_:_:on:)();
  v86 = v35;
  v41(v32, v80);
  v59(v34, v75);
  v45 = *(v67 + 8);
  v45(v44, v17);
  sub_100007BAC(v83);
  v83[0] = v65;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v46 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v46, qword_10177C8A8);
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  sub_1000041A4(&qword_101699EC0, &qword_101699EB8, &qword_101398AA0);
  v47 = v72;
  Collection<>.contains(_:)();

  v48 = v68;
  v49 = v76;
  QueryType.filter(_:)();
  v41(v47, v80);
  v45(v49, v17);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v50 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v50, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v51 = v70;
  QueryType.order(_:)();

  v45(v48, v17);
  v84 = v17;
  v85 = &protocol witness table for Table;
  v52 = sub_1000280DC(v83);
  v77(v52, v51, v17);
  v53 = sub_100215044(v83, v79);
  v45(v51, v17);
  sub_100007BAC(v83);
  return v53;
}

uint64_t sub_10021783C(char *a1)
{
  v2 = type metadata accessor for Date();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  __chkstk_darwin(v2);
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  __chkstk_darwin(v5);
  v63 = &v56 - v7;
  v8 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  v10 = __chkstk_darwin(v8);
  v73 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v56 - v12;
  v62 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v75 = *(v62 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v62);
  v60 = &v56 - v15;
  v16 = type metadata accessor for Table();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v61 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v64 = &v56 - v22;
  v23 = __chkstk_darwin(v21);
  v67 = &v56 - v24;
  v25 = __chkstk_darwin(v23);
  v71 = &v56 - v26;
  v27 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v77 = v25;
  v78 = &protocol witness table for Table;
  v28 = sub_1000280DC(v76);
  v72 = v17;
  v29 = *(v17 + 16);
  v58 = v17 + 16;
  v57 = v29;
  v29(v28, &a1[v27], v16);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177C770);
  QueryType.subscript.getter();
  v30 = v73;
  QueryType.subscript.getter();
  v31 = v60;
  == infix<A>(_:_:)();
  v32 = *(v74 + 8);
  v32(v30, v8);
  v32(v13, v8);
  v73 = a1;
  v33 = v61;
  QueryType.join(_:on:)();
  v34 = v62;
  v74 = *(v75 + 8);
  v75 += 8;
  (v74)(v31, v62);
  sub_100007BAC(v76);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v35 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v35, qword_10177C8A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v36 = v63;
  ExpressionType<>.length.getter();
  v76[0] = 6;
  == infix<A>(_:_:)();
  (*(v65 + 8))(v36, v66);
  v37 = v64;
  QueryType.filter(_:)();
  (v74)(v31, v34);
  v38 = v33;
  v39 = *(v72 + 8);
  v39(v38, v16);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v40 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v40, qword_10177C938);
  v41 = v68;
  Date.init(timeIntervalSinceNow:)();
  v42 = v70;
  >= infix<A>(_:_:)();
  (*(v69 + 8))(v41, v42);
  v43 = v67;
  QueryType.filter(_:)();
  (v74)(v31, v34);
  v39(v37, v16);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v44 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v45 = sub_1000076D4(v44, qword_10177C788);
  v77 = v44;
  v78 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v46 = sub_1000280DC(v76);
  (*(*(v44 - 8) + 16))(v46, v45, v44);
  v47 = v71;
  SchemaType.select(_:_:)();
  v39(v43, v16);
  sub_100007BAC(v76);
  v48 = v73;
  v49 = sub_100028E90();
  if (v49)
  {
    v50 = v49;
    v77 = v16;
    v78 = &protocol witness table for Table;
    v51 = sub_1000280DC(v76);
    v57(v51, v47, v16);
    v48 = v50;
    v52 = v59;
    Connection.prepare(_:)();
    if (v52)
    {
      v39(v47, v16);

      sub_100007BAC(v76);
    }

    else
    {
      sub_100007BAC(v76);
      type metadata accessor for UUID();
      v54 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v48 = sub_10000954C(v54);

      v39(v47, v16);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v53 = 2;
    *(v53 + 4) = 1;
    swift_willThrow();
    v39(v47, v16);
  }

  return v48;
}

uint64_t sub_100218230()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ItemSharingKeyDatabase();
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 16);

    return v7;
  }

  return result;
}

uint64_t sub_1002182F4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for StandaloneBeaconDatabase();
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 16);

    return v7;
  }

  return result;
}

uint64_t sub_1002183B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v40 - v9;
  v47 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v45 = *(v47 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v47);
  v41 = &v40 - v11;
  v12 = type metadata accessor for Table();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v59 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v51 = &v40 - v18;
  __chkstk_darwin(v17);
  v53 = &v40 - v19;
  v55 = sub_100206C74(a1);
  v52 = v2;
  v20 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v21 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v57 = v12;
  v58 = &protocol witness table for Table;
  v22 = sub_1000280DC(v56);
  v54 = v13;
  v23 = v12;
  v49 = *(v13 + 16);
  v50 = v13 + 16;
  v49(v22, a2 + v21, v12);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177C770);
  v48 = a2;
  v42 = v20;
  v24 = v43;
  QueryType.subscript.getter();
  v25 = v44;
  QueryType.subscript.getter();
  v26 = v41;
  == infix<A>(_:_:)();
  v27 = *(v46 + 8);
  v27(v25, v5);
  v27(v24, v5);
  QueryType.join(_:on:)();
  v28 = *(v45 + 8);
  v29 = v47;
  v28(v26, v47);
  sub_100007BAC(v56);
  v56[0] = v55;
  v30 = v23;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v31, qword_10177C8A8);
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  sub_1000041A4(&qword_101699EC0, &qword_101699EB8, &qword_101398AA0);
  Collection<>.contains(_:)();

  v32 = v51;
  v33 = v59;
  QueryType.filter(_:)();
  v28(v26, v29);
  v34 = *(v54 + 8);
  v34(v33, v30);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v35 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v35, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v36 = v53;
  QueryType.order(_:)();

  v34(v32, v30);
  v57 = v30;
  v58 = &protocol witness table for Table;
  v37 = sub_1000280DC(v56);
  v49(v37, v36, v30);
  v38 = sub_100218A30();
  v34(v36, v30);
  sub_100007BAC(v56);
  return v38;
}

uint64_t sub_100218A30()
{
  v1 = type metadata accessor for Date();
  v76 = *(v1 - 8);
  v2 = *(v76 + 64);
  v3 = __chkstk_darwin(v1);
  v86 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v69 - v5;
  v7 = type metadata accessor for ObservedAdvertisement.Location(0);
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = (v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v84 = (v69 - v13);
  v14 = __chkstk_darwin(v12);
  v80 = v69 - v15;
  __chkstk_darwin(v14);
  v77 = v69 - v16;
  v17 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v81 = v69 - v22;
  v23 = type metadata accessor for Row();
  v83 = *(v23 - 8);
  v24 = *(v83 + 64);
  v25 = __chkstk_darwin(v23);
  v88 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v78 = v69 - v28;
  __chkstk_darwin(v27);
  v79 = v69 - v29;
  v30 = sub_100028E90();
  if (!v30)
  {
    sub_10020223C();
    swift_allocError();
    *v34 = 2;
    *(v34 + 4) = 1;
    return swift_willThrow();
  }

  v31 = v30;
  v32 = Connection.prepare(_:)();
  if (v0)
  {
  }

  v70 = v6;
  v69[1] = v31;
  v35 = v32;

  v36 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v93 = _swiftEmptyArrayStorage;
  sub_101124634(0, v36 & ~(v36 >> 63), 0);
  v91 = v93;
  v69[0] = v35;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v87 = result;
  if (v36 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v82 = v1;
  if (v36)
  {
    v85 = v36;
    v73 = (v83 + 16);
    v74 = (v83 + 8);
    v75 = (v83 + 48);
    v71 = (v76 + 32);
    v72 = v11;
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v75)(v21, 1, v23);
      if (result == 1)
      {
        goto LABEL_36;
      }

      v37 = v88;
      (*v73)(v88, v21, v23);
      if (qword_101695348 != -1)
      {
        swift_once();
      }

      v38 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
      sub_1000076D4(v38, qword_10177C980);
      Row.get<A>(_:)();
      *v11 = v92;
      if (qword_101695350 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v38, qword_10177C998);
      Row.get<A>(_:)();
      v11[1] = v92;
      if (qword_101695358 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v38, qword_10177C9B0);
      Row.get<A>(_:)();
      v11[2] = v92;
      if (qword_101695360 != -1)
      {
        swift_once();
      }

      v39 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
      sub_1000076D4(v39, qword_10177C9C8);
      v40 = v86;
      Row.get<A>(_:)();
      v41 = v23;
      v42 = *v74;
      (*v74)(v37, v23);
      (*v71)(v11 + *(v90 + 28), v40, v1);
      v43 = v21;
      v44 = v84;
      sub_1000345B4(v11, v84, type metadata accessor for ObservedAdvertisement.Location);
      v42(v43, v23);
      v45 = v91;
      v93 = v91;
      v47 = v91[2];
      v46 = v91[3];
      if (v47 >= v46 >> 1)
      {
        sub_101124634(v46 > 1, v47 + 1, 1);
        v45 = v93;
      }

      v45[2] = v47 + 1;
      v48 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v91 = v45;
      sub_1000345B4(v44, v45 + v48 + *(v89 + 72) * v47, type metadata accessor for ObservedAdvertisement.Location);
      --v85;
      v23 = v41;
      v1 = v82;
      v21 = v43;
      v11 = v72;
    }

    while (v85);
  }

  v49 = v81;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v50 = v83;
  v51 = *(v83 + 48);
  v88 = (v83 + 48);
  v86 = v51;
  if ((v51)(v49, 1, v23) != 1)
  {
    v53 = *(v50 + 32);
    v52 = v50 + 32;
    v84 = v53;
    v85 = (v52 - 24);
    v75 = (v52 - 16);
    v76 += 32;
    v54 = v80;
    v83 = v52;
    do
    {
      v55 = v79;
      (v84)(v79, v49, v23);
      v56 = v78;
      (*v75)(v78, v55, v23);
      if (qword_101695348 != -1)
      {
        swift_once();
      }

      v57 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
      sub_1000076D4(v57, qword_10177C980);
      Row.get<A>(_:)();
      *v54 = v92;
      if (qword_101695350 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v57, qword_10177C998);
      Row.get<A>(_:)();
      v54[1] = v92;
      if (qword_101695358 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v57, qword_10177C9B0);
      Row.get<A>(_:)();
      v54[2] = v92;
      if (qword_101695360 != -1)
      {
        swift_once();
      }

      v58 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
      sub_1000076D4(v58, qword_10177C9C8);
      v59 = v70;
      v60 = v82;
      Row.get<A>(_:)();
      v61 = *v85;
      (*v85)(v56, v23);
      v62 = v59;
      v54 = v80;
      (*v76)(&v80[*(v90 + 28)], v62, v60);
      v63 = v77;
      sub_1000345B4(v54, v77, type metadata accessor for ObservedAdvertisement.Location);
      v61(v55, v23);
      v64 = v91;
      v93 = v91;
      v65 = v23;
      v67 = v91[2];
      v66 = v91[3];
      if (v67 >= v66 >> 1)
      {
        sub_101124634(v66 > 1, v67 + 1, 1);
        v64 = v93;
      }

      v64[2] = v67 + 1;
      v68 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v91 = v64;
      sub_1000345B4(v63, v64 + v68 + *(v89 + 72) * v67, type metadata accessor for ObservedAdvertisement.Location);
      v49 = v81;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v23 = v65;
    }

    while ((v86)(v49, 1, v65) != 1);
  }

  sub_10000B3A8(v49, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_101699EC8, &qword_101393180);
  result = swift_allocObject();
  *(result + 16) = v91;
  return result;
}

uint64_t sub_100219688(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v95 = a1;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v92 = v75 - v4;
  v94 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v93 = *(v94 - 8);
  v5 = *(v93 + 64);
  __chkstk_darwin(v94);
  v91 = v75 - v6;
  v85 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v84 = *(v85 - 8);
  v7 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = v75 - v8;
  v103 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v97 = *(v103 - 8);
  v9 = *(v97 + 64);
  v10 = __chkstk_darwin(v103);
  v102 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = v75 - v12;
  v108 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v114 = *(v108 - 8);
  v13 = *(v114 + 64);
  __chkstk_darwin(v108);
  v98 = v75 - v14;
  v15 = type metadata accessor for JoinType();
  v110 = *(v15 - 8);
  v16 = v110[8];
  __chkstk_darwin(v15);
  v18 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Table();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v99 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v104 = v75 - v25;
  v26 = __chkstk_darwin(v24);
  v82 = v75 - v27;
  v28 = __chkstk_darwin(v26);
  v86 = v75 - v29;
  v30 = __chkstk_darwin(v28);
  v87 = v75 - v31;
  __chkstk_darwin(v30);
  v88 = v75 - v32;
  v33 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  v89 = *(v33 - 8);
  v34 = *(v89 + 64);
  __chkstk_darwin(v33);
  v36 = v75 - v35;
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160);
  v107 = v36;
  v90 = v33;
  ExpressionType.init(_:)();
  v37 = v109;
  v38 = v110[13];
  v100 = v18;
  v80 = enum case for JoinType.leftOuter(_:);
  v96 = v15;
  v79 = v38;
  v78 = v110 + 13;
  v38(v18);
  v39 = (v37 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation);
  v112 = v19;
  v113 = &protocol witness table for Table;
  v40 = sub_1000280DC(&v111);
  v81 = v20;
  v41 = *(v20 + 16);
  v77 = v39;
  v105 = v41;
  v106 = v20 + 16;
  v41(v40, v39, v19);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v42 = v103;
  v43 = sub_1000076D4(v103, qword_10177C770);
  v44 = v101;
  v75[1] = v43;
  QueryType.subscript.getter();
  v45 = v102;
  QueryType.subscript.getter();
  v46 = v98;
  == infix<A>(_:_:)();
  v47 = *(v97 + 8);
  v77 = v47;
  v47(v45, v42);
  v47(v44, v42);
  v48 = v100;
  QueryType.join(_:_:on:)();
  v97 = *(v114 + 8);
  v114 += 8;
  (v97)(v46, v108);
  v49 = v110[1];
  ++v110;
  v76 = v49;
  v50 = v96;
  v49(v48, v96);
  sub_100007BAC(&v111);
  v79(v48, v80, v50);
  v51 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v112 = v19;
  v113 = &protocol witness table for Table;
  v52 = sub_1000280DC(&v111);
  v105(v52, v109 + v51, v19);
  v53 = v101;
  QueryType.subscript.getter();
  v54 = v102;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v55 = v103;
  v56 = v77;
  v77(v54, v103);
  v56(v53, v55);
  v57 = v99;
  v58 = v100;
  QueryType.join(_:_:on:)();
  (v97)(v46, v108);
  v76(v58, v96);
  v59 = *(v81 + 8);
  v59(v57, v19);
  sub_100007BAC(&v111);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v60 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v60, qword_10177C8A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  v61 = v83;
  ExpressionType<>.length.getter();
  v111 = 28;
  v62 = v98;
  == infix<A>(_:_:)();
  (*(v84 + 8))(v61, v85);
  v63 = v82;
  v64 = v104;
  QueryType.filter(_:)();
  (v97)(v62, v108);
  v59(v64, v19);
  v65 = type metadata accessor for UUID();
  v66 = v92;
  (*(*(v65 - 8) + 56))(v92, 1, 1, v65);
  v67 = v91;
  == infix<A>(_:_:)();
  sub_10000B3A8(v66, &qword_1016980D0, &unk_10138F3B0);
  v68 = v86;
  QueryType.filter(_:)();
  (*(v93 + 8))(v67, v94);
  v59(v63, v19);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v69 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v69, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.asc.getter();
  v70 = v87;
  QueryType.order(_:)();

  v59(v68, v19);
  v71 = v88;
  QueryType.limit(_:)();
  v59(v70, v19);
  v112 = v19;
  v113 = &protocol witness table for Table;
  v72 = sub_1000280DC(&v111);
  v105(v72, v71, v19);
  v73 = sub_100215044(&v111, v109);
  v59(v71, v19);
  (*(v89 + 8))(v107, v90);
  sub_100007BAC(&v111);
  return v73;
}

uint64_t sub_10021A3F4(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v3 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v63 - v5;
  v7 = type metadata accessor for Row();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v67 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v72 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  v75 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v84 = *(v75 - 8);
  v18 = *(v84 + 64);
  __chkstk_darwin(v75);
  v83 = &v63 - v19;
  v20 = type metadata accessor for Table();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v73 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v74 = &v63 - v26;
  v27 = __chkstk_darwin(v25);
  v76 = &v63 - v28;
  v29 = __chkstk_darwin(v27);
  v77 = &v63 - v30;
  __chkstk_darwin(v29);
  v81 = &v63 - v31;
  if (sub_100028E90())
  {
    v68 = v12;
    v64 = v8;
    v65 = v6;
    v66 = v7;
    v82 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    v32 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v86 = v20;
    v87 = &protocol witness table for Table;
    v33 = sub_1000280DC(v85);
    v71 = v21;
    v69 = *(v21 + 16);
    v70 = v21 + 16;
    v69(v33, a2 + v32, v20);
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v11, qword_10177C770);
    QueryType.subscript.getter();
    v34 = v72;
    QueryType.subscript.getter();
    v35 = v83;
    == infix<A>(_:_:)();
    v36 = *(v68 + 8);
    v36(v34, v11);
    v36(v17, v11);
    v37 = v73;
    QueryType.join(_:on:)();
    v38 = *(v84 + 8);
    v39 = v75;
    v84 += 8;
    v82 = v38;
    v38(v35, v75);
    sub_100007BAC(v85);
    v40 = v76;
    if (qword_101695308 != -1)
    {
      swift_once();
    }

    v41 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    v42 = sub_1000076D4(v41, qword_10177C8C0);
    v86 = v41;
    v87 = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
    v43 = sub_1000280DC(v85);
    v44 = *(*(v41 - 8) + 16);
    v72 = v42;
    v44(v43, v42, v41);
    v45 = v74;
    SchemaType.select(_:_:)();
    v46 = *(v71 + 8);
    v46(v37, v20);
    sub_100007BAC(v85);
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v47 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v47, qword_10177C788);
    v48 = *(type metadata accessor for BeaconIdentifier() + 20);
    type metadata accessor for UUID();
    v49 = v83;
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    v82(v49, v39);
    v46(v45, v20);
    sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101695330 != -1)
    {
      swift_once();
    }

    v50 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v50, qword_10177C938);
    sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
    ExpressionType.desc.getter();
    v51 = v77;
    QueryType.order(_:)();

    v46(v40, v20);
    v52 = v81;
    QueryType.limit(_:)();
    v46(v51, v20);
    v86 = v20;
    v87 = &protocol witness table for Table;
    v53 = sub_1000280DC(v85);
    v69(v53, v52, v20);
    v54 = v79;
    Connection.prepare(_:)();
    if (v54)
    {
      v46(v52, v20);

      return sub_100007BAC(v85);
    }

    else
    {
      sub_100007BAC(v85);
      dispatch thunk of _AnySequenceBox._makeIterator()();

      v57 = v65;
      dispatch thunk of _AnyIteratorBoxBase.next()();

      v58 = v64;
      v59 = v66;
      v60 = (*(v64 + 48))(v57, 1, v66);
      if (v60 == 1)
      {
        v46(v81, v20);

        sub_10000B3A8(v57, &qword_101699D68, &unk_1013B6450);
        v61 = 0;
      }

      else
      {
        v62 = v67;
        (*(v58 + 32))(v67, v57, v59);
        sub_100028088();
        Row.subscript.getter();

        (*(v58 + 8))(v62, v59);
        v46(v81, v20);
        v61 = LOBYTE(v85[0]);
      }

      return v61 | ((v60 == 1) << 8);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v56 = 2;
    *(v56 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_10021AE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  v67[0] = a3;
  v4 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v77 = *(v4 - 8);
  v5 = *(v77 + 8);
  v6 = __chkstk_darwin(v4);
  v75 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = v67 - v8;
  v89 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v97 = *(v89 - 8);
  v9 = *(v97 + 64);
  __chkstk_darwin(v89);
  v84 = v67 - v10;
  v11 = type metadata accessor for JoinType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Table();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v85 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v88 = v67 - v22;
  v23 = __chkstk_darwin(v21);
  v78 = v67 - v24;
  v25 = __chkstk_darwin(v23);
  v79 = v67 - v26;
  __chkstk_darwin(v25);
  v81 = v67 - v27;
  v28 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v93 = v12;
  v29 = *(v12 + 104);
  v86 = v15;
  v30 = v15;
  v32 = v31;
  v73 = enum case for JoinType.leftOuter(_:);
  v87 = v11;
  v72 = v29;
  v71 = v12 + 104;
  v29(v30);
  v92 = a2;
  v33 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v95 = v32;
  v96 = &protocol witness table for Table;
  v34 = sub_1000280DC(v94);
  v76 = v17;
  v90 = *(v17 + 16);
  v91 = v17 + 16;
  v90(v34, v33, v32);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v35 = sub_1000076D4(v4, qword_10177C770);
  v83 = v4;
  v36 = v74;
  v69 = v35;
  v67[1] = v28;
  QueryType.subscript.getter();
  v37 = v75;
  QueryType.subscript.getter();
  v38 = v84;
  == infix<A>(_:_:)();
  v39 = *(v77 + 1);
  v77 = v39;
  v40 = v83;
  v39(v37, v83);
  v39(v36, v40);
  v41 = v86;
  QueryType.join(_:_:on:)();
  v68 = *(v97 + 8);
  v97 += 8;
  v68(v38, v89);
  v42 = *(v93 + 8);
  v93 += 8;
  v70 = v42;
  v43 = v87;
  v42(v41, v87);
  sub_100007BAC(v94);
  v72(v41, v73, v43);
  v44 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v95 = v32;
  v96 = &protocol witness table for Table;
  v45 = sub_1000280DC(v94);
  v90(v45, v92 + v44, v32);
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v46 = v84;
  == infix<A>(_:_:)();
  v47 = v83;
  v48 = v77;
  v77(v37, v83);
  v49 = v36;
  v50 = v68;
  v48(v49, v47);
  v51 = v85;
  v52 = v86;
  QueryType.join(_:_:on:)();
  v53 = v46;
  v54 = v46;
  v55 = v89;
  v50(v53, v89);
  v70(v52, v87);
  v56 = *(v76 + 8);
  v56(v51, v32);
  sub_100007BAC(v94);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v57 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v57, qword_10177C788);
  v58 = *(type metadata accessor for BeaconIdentifier() + 20);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  v59 = v78;
  v60 = v88;
  QueryType.filter(_:)();
  v50(v54, v55);
  v56(v60, v32);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v61 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v61, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v62 = v79;
  QueryType.order(_:)();

  v56(v59, v32);
  v63 = v81;
  QueryType.limit(_:)();
  v56(v62, v32);
  v95 = v32;
  v96 = &protocol witness table for Table;
  v64 = sub_1000280DC(v94);
  v90(v64, v63, v32);
  v65 = v82;
  sub_100215044(v94, v92);
  if (v65)
  {
    v56(v63, v32);
    return sub_100007BAC(v94);
  }

  else
  {
    sub_100007BAC(v94);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    return (v56)(v63, v32);
  }
}

uint64_t sub_10021B7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a1;
  v68[0] = a4;
  v6 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v86 = *(v6 - 8);
  v7 = *(v86 + 64);
  v8 = __chkstk_darwin(v6);
  v78 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = v68 - v10;
  v91 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v100 = *(v91 - 8);
  v11 = *(v100 + 64);
  __chkstk_darwin(v91);
  v74 = v68 - v12;
  v13 = type metadata accessor for JoinType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Table();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v88 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v76 = v68 - v24;
  v25 = __chkstk_darwin(v23);
  v80 = v68 - v26;
  v27 = __chkstk_darwin(v25);
  v82 = v68 - v28;
  v29 = __chkstk_darwin(v27);
  v83 = v68 - v30;
  __chkstk_darwin(v29);
  v85 = v68 - v31;
  v32 = v96;
  v79 = sub_100206EA0(a2);
  v84 = v32;
  v87 = a3 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v95 = v14;
  v33 = *(v14 + 104);
  v89 = v17;
  v75 = enum case for JoinType.leftOuter(_:);
  v90 = v13;
  v73 = v33;
  v72 = v14 + 104;
  v33(v17);
  v94 = a3;
  v34 = a3 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v98 = v18;
  v99 = &protocol witness table for Table;
  v35 = sub_1000280DC(v97);
  v96 = v19;
  v92 = *(v19 + 16);
  v93 = v19 + 16;
  v92(v35, v34, v18);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v36 = sub_1000076D4(v6, qword_10177C770);
  v37 = v77;
  v68[1] = v36;
  QueryType.subscript.getter();
  v38 = v78;
  QueryType.subscript.getter();
  v39 = v74;
  == infix<A>(_:_:)();
  v40 = *(v86 + 8);
  v70 = v40;
  v71 = v6;
  v40(v38, v6);
  v40(v37, v6);
  v41 = v89;
  QueryType.join(_:_:on:)();
  v86 = *(v100 + 8);
  v100 += 8;
  (v86)(v39, v91);
  v42 = *(v95 + 8);
  v95 += 8;
  v69 = v42;
  v43 = v90;
  v42(v41, v90);
  sub_100007BAC(v97);
  v73(v41, v75, v43);
  v44 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v98 = v18;
  v99 = &protocol witness table for Table;
  v45 = sub_1000280DC(v97);
  v92(v45, v94 + v44, v18);
  v46 = v18;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v47 = v71;
  v48 = v70;
  v70(v38, v71);
  v48(v37, v47);
  v49 = v86;
  v50 = v76;
  v51 = v88;
  v52 = v89;
  QueryType.join(_:_:on:)();
  v53 = v91;
  v49(v39, v91);
  v69(v52, v90);
  v95 = *(v96 + 8);
  v96 += 8;
  (v95)(v51, v46);
  sub_100007BAC(v97);
  v54 = v46;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v55 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v55, qword_10177C788);
  v56 = *(type metadata accessor for BeaconIdentifier() + 20);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  v57 = v80;
  QueryType.filter(_:)();
  v49(v39, v53);
  (v95)(v50, v46);
  v97[0] = v79;
  if (qword_101695310 != -1)
  {
    swift_once();
  }

  v58 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v58, qword_10177C8D8);
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0);
  sub_100028088();
  Collection<>.contains(_:)();

  v59 = v82;
  QueryType.filter(_:)();
  (v86)(v39, v53);
  v60 = v57;
  v61 = v95;
  (v95)(v60, v46);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v62 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v62, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v63 = v83;
  QueryType.order(_:)();

  v61(v59, v46);
  v64 = v85;
  QueryType.limit(_:)();
  v61(v63, v54);
  v98 = v54;
  v99 = &protocol witness table for Table;
  v65 = sub_1000280DC(v97);
  v92(v65, v64, v54);
  v66 = v84;
  sub_100215044(v97, v94);
  if (v66)
  {
    v61(v64, v54);
    return sub_100007BAC(v97);
  }

  else
  {
    sub_100007BAC(v97);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    return (v61)(v64, v54);
  }
}

uint64_t sub_10021C328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v52[1] = a3;
  v4 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = __chkstk_darwin(v4);
  v54 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = v52 - v8;
  v9 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  __chkstk_darwin(v9);
  v59 = v52 - v11;
  v12 = type metadata accessor for JoinType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Table();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v55 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v64 = v52 - v23;
  v24 = __chkstk_darwin(v22);
  v66 = v52 - v25;
  __chkstk_darwin(v24);
  v67 = v52 - v26;
  v27 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v56 = v16;
  v57 = v13;
  v28 = *(v13 + 104);
  v58 = v12;
  v28(v16, enum case for JoinType.leftOuter(_:), v12);
  v29 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v71 = v17;
  v72 = &protocol witness table for Table;
  v30 = sub_1000280DC(v70);
  v68 = v18;
  v62 = *(v18 + 16);
  v63 = v18 + 16;
  v62(v30, a2 + v29, v17);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v4, qword_10177C770);
  v31 = a2;
  v52[2] = v27;
  v32 = v53;
  QueryType.subscript.getter();
  v33 = v54;
  QueryType.subscript.getter();
  v34 = v59;
  == infix<A>(_:_:)();
  v35 = *(v69 + 8);
  v35(v33, v4);
  v35(v32, v4);
  v69 = v31;
  v37 = v55;
  v36 = v56;
  QueryType.join(_:_:on:)();
  v38 = v61;
  v39 = *(v60 + 8);
  v39(v34, v61);
  (*(v57 + 8))(v36, v58);
  sub_100007BAC(v70);
  v40 = v37;
  v41 = v34;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v42, qword_10177C788);
  v43 = *(type metadata accessor for BeaconIdentifier() + 20);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  v44 = v64;
  QueryType.filter(_:)();
  v39(v41, v38);
  v45 = *(v68 + 8);
  v45(v40, v17);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v46 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v46, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v47 = v66;
  QueryType.order(_:)();

  v45(v44, v17);
  v48 = v67;
  QueryType.limit(_:)();
  v45(v47, v17);
  v71 = v17;
  v72 = &protocol witness table for Table;
  v49 = sub_1000280DC(v70);
  v62(v49, v48, v17);
  v50 = v73;
  sub_100215044(v70, v69);
  if (v50)
  {
    v45(v48, v17);
    return sub_100007BAC(v70);
  }

  else
  {
    sub_100007BAC(v70);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    dispatch thunk of _AnyIteratorBoxBase.next()();

    return (v45)(v48, v17);
  }
}

uint64_t sub_10021CAC0(uint64_t a1)
{
  v41 = a1;
  v1 = type metadata accessor for Date();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  __chkstk_darwin(v1);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v7 = v32 - v6;
  v8 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v12 = type metadata accessor for Table();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  v14 = __chkstk_darwin(v12);
  v40 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v34 = v32 - v17;
  __chkstk_darwin(v16);
  v38 = v32 - v18;
  v32[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v19, qword_10177C8A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  ExpressionType<>.length.getter();
  v43[0] = 28;
  == infix<A>(_:_:)();
  (*(v4 + 8))(v7, v33);
  QueryType.filter(_:)();
  v20 = *(v42 + 8);
  v42 += 8;
  v20(v11, v8);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v21, qword_10177C938);
  v22 = v35;
  Date.init(timeIntervalSinceNow:)();
  v23 = v37;
  >= infix<A>(_:_:)();
  (*(v36 + 8))(v22, v23);
  v24 = v34;
  v25 = v40;
  QueryType.filter(_:)();
  v20(v11, v8);
  v26 = v39;
  v27 = *(v39 + 8);
  v27(v25, v12);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v28 = v38;
  QueryType.order(_:)();

  v27(v24, v12);
  v43[3] = v12;
  v43[4] = &protocol witness table for Table;
  v29 = sub_1000280DC(v43);
  (*(v26 + 16))(v29, v28, v12);
  v30 = sub_10021D0A0(v43);
  v27(v28, v12);
  sub_100007BAC(v43);
  return v30;
}

uint64_t sub_10021D0A0(void *a1)
{
  v3 = type metadata accessor for ObservedAdvertisement(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = v32 - v8;
  v9 = type metadata accessor for Row();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v32 - v14;
  v16 = sub_100028E90();
  if (!v16)
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
    return a1;
  }

  v17 = v16;
  v18 = Connection.prepare(_:)();
  if (v1)
  {

    return a1;
  }

  v32[2] = v17;
  v21 = v18;

  v22 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();
  v32[1] = v21;

  v38 = *(v22 + 16);
  if (!v38)
  {
    a1 = _swiftEmptyArrayStorage;
LABEL_18:

    return a1;
  }

  v37 = v13;
  v23 = 0;
  v35 = (v40 + 8);
  v36 = v40 + 16;
  a1 = _swiftEmptyArrayStorage;
  v33 = v7;
  v34 = v22;
  while (v23 < *(v22 + 16))
  {
    v24 = *(v40 + 16);
    v24(v15, v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v23, v9);
    v25 = v37;
    v24(v37, v15, v9);
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v26 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v26, qword_10177C770);
    Row.subscript.getter();
    (*v35)(v15, v9);
    v27 = v41;
    sub_1002132AC(v25, v42, v41);
    sub_10001BA68(v27, v7, type metadata accessor for ObservedAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a1 = sub_100A5C3FC(0, a1[2] + 1, 1, a1);
    }

    v30 = a1[2];
    v29 = a1[3];
    if (v30 >= v29 >> 1)
    {
      a1 = sub_100A5C3FC(v29 > 1, v30 + 1, 1, a1);
    }

    ++v23;
    sub_100034434(v41, type metadata accessor for ObservedAdvertisement);
    a1[2] = v30 + 1;
    v31 = a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30;
    v7 = v33;
    result = sub_1000345B4(v33, v31, type metadata accessor for ObservedAdvertisement);
    if (v38 == v23)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10021D518(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v71 - v5;
  v102 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v97 = *(v102 - 8);
  v7 = *(v97 + 8);
  v8 = __chkstk_darwin(v102);
  v92 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = v71 - v10;
  v99 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v105 = *(v99 - 8);
  v11 = *(v105 + 64);
  __chkstk_darwin(v99);
  v103 = v71 - v12;
  v101 = type metadata accessor for JoinType();
  v104 = *(v101 - 8);
  v13 = v104[8];
  __chkstk_darwin(v101);
  v100 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_101699D70, &unk_1013930E0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v94 = v71 - v18;
  v19 = type metadata accessor for Table();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v98 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v93 = v71 - v25;
  __chkstk_darwin(v24);
  v27 = v71 - v26;
  v28 = sub_100028E90();
  if (v28)
  {
    v85 = v28;
    v86 = v16;
    v87 = v15;
    v88 = v6;
    v89 = v3;
    v90 = v2;
    v29 = a1 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v30 = a1;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v31 = v102;
    v32 = sub_1000076D4(v102, qword_10177C770);
    v107 = v31;
    v108 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850);
    sub_1000280DC(v106);
    QueryType.subscript.getter();
    SchemaType.select(_:_:)();
    sub_100007BAC(v106);
    v96 = v27;
    v33 = Expressible.asSQL()();
    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;
    v80 = v29;
    v34 = v20[1];
    v81 = v20 + 1;
    v82 = v34;
    v34(v27, v19);
    v71[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    v79 = enum case for JoinType.leftOuter(_:);
    v35 = v104[13];
    v77 = v104 + 13;
    v78 = v35;
    v35(v100);
    v36 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
    v107 = v19;
    v108 = &protocol witness table for Table;
    v37 = sub_1000280DC(v106);
    v38 = v20[2];
    v75 = v20 + 2;
    v76 = v38;
    v38(v37, v30 + v36, v19);
    v39 = v91;
    v74 = v32;
    QueryType.subscript.getter();
    v40 = v92;
    QueryType.subscript.getter();
    == infix<A>(_:_:)();
    v41 = *(v97 + 1);
    v73 = v41;
    v42 = v102;
    v41(v40, v102);
    v41(v39, v42);
    v43 = v100;
    v44 = v103;
    QueryType.join(_:_:on:)();
    v45 = *(v105 + 8);
    v105 += 8;
    v97 = v45;
    v45(v44, v99);
    v46 = v104[1];
    ++v104;
    v72 = v46;
    v47 = v101;
    v46(v43, v101);
    sub_100007BAC(v106);
    v78(v43, v79, v47);
    v107 = v19;
    v108 = &protocol witness table for Table;
    v48 = sub_1000280DC(v106);
    v76(v48, v80, v19);
    QueryType.subscript.getter();
    QueryType.subscript.getter();
    v49 = v103;
    == infix<A>(_:_:)();
    v50 = v102;
    v51 = v73;
    v73(v40, v102);
    v51(v39, v50);
    v52 = v93;
    v53 = v100;
    v54 = v98;
    QueryType.join(_:_:on:)();
    v55 = v99;
    v97(v49, v99);
    v72(v53, v101);
    v56 = v82;
    v82(v54, v19);
    sub_100007BAC(v106);
    v106[0] = 0;
    v106[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    v57._object = 0x800000010134D460;
    v57._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v57);
    v109 = 28;
    v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v58);

    v59._countAndFlagsBits = 0xD00000000000002DLL;
    v59._object = 0x800000010134D480;
    String.append(_:)(v59);
    v60._countAndFlagsBits = countAndFlagsBits;
    v60._object = object;
    String.append(_:)(v60);

    v61._countAndFlagsBits = 41;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
    ExpressionType.init(literal:)();
    QueryType.filter(_:)();
    v62 = v49;
    v63 = v56;
    v97(v62, v55);
    v56(v52, v19);
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v64 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v64, qword_10177C8A8);
    sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
    v65 = v88;
    ExpressionType<>.count.getter();
    v66 = v94;
    v67 = v96;
    SchemaType.select<A>(_:)();
    (*(v89 + 8))(v65, v90);
    v63(v67, v19);
    v68 = v95;
    Connection.scalar<A>(_:)();
    (*(v86 + 8))(v66, v87);

    if (!v68)
    {
      return v106[0];
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v70 = 2;
    *(v70 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10021E0D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44[6] = a3;
  v40 = a2;
  v39[0] = a4;
  v39[1] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v39 - v11;
  __chkstk_darwin(v10);
  v14 = v39 - v13;
  v15 = type metadata accessor for Table();
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v39 - v21;
  __chkstk_darwin(v20);
  v42 = v39 - v23;
  v39[2] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v24, qword_10177C788);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v25, qword_10177C9E0);
  LOBYTE(v44[0]) = v40;
  sub_100028088();
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v9, v4);
  v26(v12, v4);
  QueryType.filter(_:)();
  v26(v14, v4);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v27, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  QueryType.order(_:)();

  v28 = v41;
  v29 = *(v41 + 8);
  v29(v19, v15);
  v30 = v42;
  QueryType.limit(_:)();
  v29(v22, v15);
  v44[3] = v15;
  v44[4] = &protocol witness table for Table;
  v31 = sub_1000280DC(v44);
  (*(v28 + 16))(v31, v30, v15);
  v32 = v43;
  sub_10021E704();
  if (v32)
  {
    v29(v30, v15);
    return sub_100007BAC(v44);
  }

  else
  {
    sub_100007BAC(v44);
    v34 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    if (*(v34 + 16))
    {
      v35 = type metadata accessor for KeySyncMetadata();
      v36 = *(v35 - 8);
      v37 = v39[0];
      sub_10001BA68(v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v39[0], type metadata accessor for KeySyncMetadata);

      v29(v30, v15);
      return (*(v36 + 56))(v37, 0, 1, v35);
    }

    else
    {

      v29(v30, v15);
      v38 = type metadata accessor for KeySyncMetadata();
      return (*(*(v38 - 8) + 56))(v39[0], 1, 1, v38);
    }
  }
}

uint64_t sub_10021E704()
{
  v1 = type metadata accessor for KeySyncMetadata();
  v60 = *(v1 - 8);
  v2 = *(v60 + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v61 = (v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v51 = v50 - v5;
  v6 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = v50 - v11;
  v12 = type metadata accessor for Row();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v58 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v53 = v50 - v18;
  __chkstk_darwin(v17);
  v54 = v50 - v19;
  v20 = sub_100028E90();
  if (!v20)
  {
    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    return swift_willThrow();
  }

  v21 = v20;
  v22 = Connection.prepare(_:)();
  if (v0)
  {
  }

  v25 = v22;

  v26 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v62 = _swiftEmptyArrayStorage;
  sub_101123CD8(0, v26 & ~(v26 >> 63), 0);
  v27 = v62;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v59 = result;
  if (v26 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v50[1] = v25;
  v50[2] = v21;
  v52 = v13;
  if (v26)
  {
    v28 = (v13 + 16);
    v56 = (v13 + 8);
    v57 = (v13 + 48);
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v57)(v10, 1, v12);
      if (result == 1)
      {
        goto LABEL_20;
      }

      v29 = v58;
      (*v28)(v58, v10, v12);
      sub_100229584(v29, v61);
      v30 = v12;
      (*v56)(v10, v12);
      v62 = v27;
      v32 = v27[2];
      v31 = v27[3];
      if (v32 >= v31 >> 1)
      {
        sub_101123CD8(v31 > 1, v32 + 1, 1);
        v27 = v62;
      }

      v27[2] = v32 + 1;
      sub_1000345B4(v61, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v32, type metadata accessor for KeySyncMetadata);
      --v26;
      v12 = v30;
    }

    while (v26);
  }

  v33 = v55;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v34 = v33;
  v35 = v52;
  v61 = *(v52 + 48);
  v36 = v61(v33, 1, v12);
  v37 = v54;
  if (v36 != 1)
  {
    v39 = *(v35 + 32);
    v38 = v35 + 32;
    v58 = v39;
    v40 = (v38 - 16);
    v52 = v38;
    v41 = (v38 - 24);
    v42 = v51;
    do
    {
      (v58)(v37, v34, v12);
      v43 = v53;
      (*v40)(v53, v37, v12);
      sub_100229584(v43, v42);
      v44 = v42;
      (*v41)(v37, v12);
      v62 = v27;
      v45 = v12;
      v47 = v27[2];
      v46 = v27[3];
      if (v47 >= v46 >> 1)
      {
        sub_101123CD8(v46 > 1, v47 + 1, 1);
        v44 = v51;
        v27 = v62;
      }

      v27[2] = v47 + 1;
      sub_1000345B4(v44, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v47, type metadata accessor for KeySyncMetadata);
      v48 = v55;
      v42 = v44;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v34 = v48;
      v49 = v61(v48, 1, v45);
      v12 = v45;
      v37 = v54;
    }

    while (v49 != 1);
  }

  sub_10000B3A8(v34, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_101699E28, &qword_101393140);
  result = swift_allocObject();
  *(result + 16) = v27;
  return result;
}

uint64_t sub_10021ED74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for KeySyncMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016C8FF0, &qword_101393148);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  sub_10021E0D8(a1, *(a1 + *(v5 + 20)), a2, v14);
  if (v2)
  {
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177A5C0);
    sub_10001BA68(a1, v9, type metadata accessor for KeySyncMetadata);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v6;
      v21 = v20;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v21 = 141558531;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      type metadata accessor for UUID();
      v33 = v5;
      sub_1000291EC(&qword_101696930, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_100034434(v9, type metadata accessor for KeySyncMetadata);
      v25 = sub_1000136BC(v22, v24, &v34);
      v5 = v33;

      *(v21 + 14) = v25;
      *(v21 + 22) = 2114;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v26;
      v27 = v30;
      *v30 = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Last key sync value could not be read for beacon %{private,mask.hash}s, %{public}@", v21, 0x20u);
      sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v31);

      v6 = v32;
    }

    else
    {

      sub_100034434(v9, type metadata accessor for KeySyncMetadata);
    }

    (*(v6 + 56))(v16, 1, 1, v5);
  }

  else
  {
    sub_1000D2AD8(v14, v16, &unk_1016C8FF0, &qword_101393148);
  }

  v28 = sub_1010BDA5C(a1, v16);
  sub_10000B3A8(v16, &unk_1016C8FF0, &qword_101393148);
  return v28 & 1;
}

uint64_t sub_10021F1B0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for KeySyncMetadata();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v72 = &v65 - v11;
  v12 = __chkstk_darwin(v10);
  v71 = &v65 - v13;
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  v16 = type metadata accessor for Connection.TransactionMode();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100027FA4();
  if (v21)
  {
    v69 = v5;
    v70 = v9;
    v22 = __chkstk_darwin(v21);
    *(&v65 - 4) = a2;
    *(&v65 - 3) = a1;
    *(&v65 - 2) = v22;
    (*(v17 + 104))(v20, enum case for Connection.TransactionMode.deferred(_:), v16);
    Connection.transaction(_:block:)();
    if (v2)
    {
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_10177A5C0);
      sub_10001BA68(a1, v15, type metadata accessor for KeySyncMetadata);
      v26 = v71;
      sub_10001BA68(a1, v71, type metadata accessor for KeySyncMetadata);
      v27 = v72;
      sub_10001BA68(a1, v72, type metadata accessor for KeySyncMetadata);
      v28 = v70;
      sub_10001BA68(a1, v70, type metadata accessor for KeySyncMetadata);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v67 = v30;
        v68 = v29;
        v31 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v73 = v66;
        *v31 = 141559043;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        type metadata accessor for UUID();
        sub_1000291EC(&qword_101696930, &type metadata accessor for UUID);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        sub_100034434(v15, type metadata accessor for KeySyncMetadata);
        v35 = sub_1000136BC(v32, v34, &v73);

        *(v31 + 14) = v35;
        *(v31 + 22) = 2082;
        v36 = *(v26 + *(v69 + 20));
        if (v36 <= 3)
        {
          v45 = 0xE800000000000000;
          v46 = 0x6E776F6E6B6E752ELL;
          v47 = 0xEF64657461726170;
          v48 = 0x6553686374616C2ELL;
          if (v36 != 2)
          {
            v48 = 0xD00000000000001CLL;
            v47 = 0x800000010134B930;
          }

          if (*(v26 + *(v69 + 20)))
          {
            v46 = 0x6E774F7261656E2ELL;
            v45 = 0xEA00000000007265;
          }

          if (*(v26 + *(v69 + 20)) <= 1u)
          {
            v43 = v46;
          }

          else
          {
            v43 = v48;
          }

          if (*(v26 + *(v69 + 20)) <= 1u)
          {
            v44 = v45;
          }

          else
          {
            v44 = v47;
          }
        }

        else
        {
          v37 = 0xEE00797261646E6FLL;
          v38 = 0x636553646C69772ELL;
          v39 = 0x736142746E69682ELL;
          v40 = 0xEA00000000006465;
          if (v36 != 7)
          {
            v39 = 0x67696C4179656B2ELL;
            v40 = 0xED0000746E656D6ELL;
          }

          if (v36 != 6)
          {
            v38 = v39;
            v37 = v40;
          }

          v41 = 0xD000000000000018;
          v42 = 0x800000010134B910;
          if (v36 != 4)
          {
            v41 = 0x697250646C69772ELL;
            v42 = 0xEC0000007972616DLL;
          }

          if (*(v26 + *(v69 + 20)) <= 5u)
          {
            v43 = v41;
          }

          else
          {
            v43 = v38;
          }

          if (*(v26 + *(v69 + 20)) <= 5u)
          {
            v44 = v42;
          }

          else
          {
            v44 = v37;
          }
        }

        sub_100034434(v26, type metadata accessor for KeySyncMetadata);
        v49 = sub_1000136BC(v43, v44, &v73);

        *(v31 + 24) = v49;
        *(v31 + 32) = 2082;
        v50 = v69;
        v51 = (v27 + *(v69 + 24));
        v52 = v51[3];
        v53 = v51[4];
        sub_1000035D0(v51, v52);
        v54 = sub_1010B7ABC(v52, v53);
        v56 = v55;
        sub_100034434(v27, type metadata accessor for KeySyncMetadata);
        v57 = sub_1000136BC(v54, v56, &v73);

        *(v31 + 34) = v57;
        *(v31 + 42) = 2082;
        v58 = *(v50 + 28);
        type metadata accessor for Date();
        sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
        v59 = v70;
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        sub_100034434(v59, type metadata accessor for KeySyncMetadata);
        v63 = sub_1000136BC(v60, v62, &v73);

        *(v31 + 44) = v63;
        v64 = v68;
        _os_log_impl(&_mh_execute_header, v68, v67, "Updated key sync metadata for %{private,mask.hash}s, type: %{public}s, %{public}s, %{public}s.", v31, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100034434(v28, type metadata accessor for KeySyncMetadata);
        sub_100034434(v26, type metadata accessor for KeySyncMetadata);
        sub_100034434(v15, type metadata accessor for KeySyncMetadata);
        return sub_100034434(v27, type metadata accessor for KeySyncMetadata);
      }
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_10021F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v119 = a1;
  v116 = a3;
  v117 = type metadata accessor for KeySyncMetadata();
  v4 = *(*(v117 - 1) + 64);
  v5 = __chkstk_darwin(v117);
  v115 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v114 = (&v100 - v8);
  __chkstk_darwin(v7);
  v113 = &v100 - v9;
  v10 = type metadata accessor for OnConflict();
  v110 = *(v10 - 8);
  v111 = v10;
  v11 = *(v110 + 64);
  __chkstk_darwin(v10);
  v109 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Insert();
  v108 = *(v13 - 8);
  v14 = *(v108 + 64);
  __chkstk_darwin(v13);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v112 = *(v17 - 8);
  v18 = *(v112 + 64);
  __chkstk_darwin(v17);
  v20 = &v100 - v19;
  v21 = type metadata accessor for Table();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v100 - v27;
  v29 = v118;
  result = sub_10021ED74(a2, v119);
  if (!v29)
  {
    v103 = v26;
    v104 = v22;
    v105 = v17;
    v107 = v28;
    v101 = v16;
    v106 = v21;
    v102 = v13;
    v118 = a2;
    if (result)
    {
      v115 = 0;
      if (qword_1016952A0 != -1)
      {
        swift_once();
      }

      v31 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      v32 = sub_1000076D4(v31, qword_10177C788);
      v33 = type metadata accessor for UUID();
      == infix<A>(_:_:)();
      v34 = v103;
      v35 = v106;
      QueryType.filter(_:)();
      (*(v112 + 8))(v20, v105);
      v36 = v107;
      QueryType.limit(_:)();
      v37 = v104;
      v38 = *(v104 + 8);
      v39 = v104 + 8;
      v38(v34, v35);
      v120[3] = v35;
      v120[4] = &protocol witness table for Table;
      v40 = sub_1000280DC(v120);
      (*(v37 + 16))(v40, v36, v35);
      v41 = v115;
      Connection.prepare(_:)();
      v115 = v41;
      if (v41)
      {
        v38(v36, v35);
        return sub_100007BAC(v120);
      }

      else
      {
        v112 = v33;
        v113 = v32;
        v114 = v38;
        sub_100007BAC(v120);
        v63 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

        v64 = *(v63 + 16);

        if (v64)
        {
          v104 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
          (*(v110 + 104))(v109, enum case for OnConflict.replace(_:), v111);
          sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
          v65 = *(type metadata accessor for Setter() - 8);
          v66 = *(v65 + 72);
          v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_1013917A0;
          v103 = v68;
          v69 = v68 + v67;
          v70 = v118;
          <- infix<A>(_:_:)();
          if (qword_101695368 != -1)
          {
            swift_once();
          }

          v113 = v39;
          v71 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
          sub_1000076D4(v71, qword_10177C9E0);
          v72 = v117;
          LOBYTE(v120[0]) = *(v70 + v117[5]);
          sub_100028088();
          <- infix<A>(_:_:)();
          v112 = v69;
          v73 = v105;
          if (qword_1016952B0 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v71, qword_10177C7B8);
          v74 = (v70 + v72[6]);
          v75 = v74[3];
          v76 = v74[4];
          sub_1000035D0(v74, v75);
          LOBYTE(v120[0]) = sub_10002BD40(v75, v76) & 1;
          <- infix<A>(_:_:)();
          if (qword_1016952B8 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v73, qword_10177C7D0);
          v77 = v74[3];
          sub_1000035D0(v74, v77);
          LOBYTE(v120[0]) = sub_100992468(v77) & 1;
          <- infix<A>(_:_:)();
          if (qword_1016952A8 != -1)
          {
            swift_once();
          }

          v78 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
          sub_1000076D4(v78, qword_10177C7A0);
          v79 = v74[4];
          sub_1000035D0(v74, v74[3]);
          v80 = *(v79 + 56);
          dispatch thunk of RawRepresentable.rawValue.getter();
          v120[7] = v120[0];
          sub_100029580();
          <- infix<A>(_:_:)();
          if (qword_101695360 != -1)
          {
            swift_once();
          }

          v81 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
          sub_1000076D4(v81, qword_10177C9C8);
          v82 = v117[7];
          type metadata accessor for Date();
          <- infix<A>(_:_:)();
          v83 = v101;
          v84 = v109;
          v85 = v106;
          QueryType.insert(or:_:)();

          (*(v110 + 8))(v84, v111);
          Connection.run(_:)();
          v86 = v114;
          (*(v108 + 8))(v83, v102);
          return v86(v107, v85);
        }

        else
        {
          sub_10022A42C();
          swift_allocError();
          swift_willThrow();
          return (v114)(v107, v35);
        }
      }
    }

    else
    {
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_10177A5C0);
      v43 = v118;
      v44 = v113;
      sub_10001BA68(v118, v113, type metadata accessor for KeySyncMetadata);
      v45 = v114;
      sub_10001BA68(v43, v114, type metadata accessor for KeySyncMetadata);
      v46 = v115;
      sub_10001BA68(v43, v115, type metadata accessor for KeySyncMetadata);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v120[0] = swift_slowAlloc();
        *v49 = 141558787;
        *(v49 + 4) = 1752392040;
        *(v49 + 12) = 2081;
        type metadata accessor for UUID();
        sub_1000291EC(&qword_101696930, &type metadata accessor for UUID);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        sub_100034434(v44, type metadata accessor for KeySyncMetadata);
        v53 = sub_1000136BC(v50, v52, v120);

        *(v49 + 14) = v53;
        *(v49 + 22) = 2082;
        v54 = *(v45 + v117[5]);
        if (v54 <= 3)
        {
          v87 = 0xE800000000000000;
          v88 = 0x6E776F6E6B6E752ELL;
          v89 = 0xEF64657461726170;
          v90 = 0x6553686374616C2ELL;
          if (v54 != 2)
          {
            v90 = 0xD00000000000001CLL;
            v89 = 0x800000010134B930;
          }

          if (*(v45 + v117[5]))
          {
            v88 = 0x6E774F7261656E2ELL;
            v87 = 0xEA00000000007265;
          }

          if (*(v45 + v117[5]) <= 1u)
          {
            v61 = v88;
          }

          else
          {
            v61 = v90;
          }

          if (*(v45 + v117[5]) <= 1u)
          {
            v62 = v87;
          }

          else
          {
            v62 = v89;
          }
        }

        else
        {
          v55 = 0xEE00797261646E6FLL;
          v56 = 0x636553646C69772ELL;
          v57 = 0x736142746E69682ELL;
          v58 = 0xEA00000000006465;
          if (v54 != 7)
          {
            v57 = 0x67696C4179656B2ELL;
            v58 = 0xED0000746E656D6ELL;
          }

          if (v54 != 6)
          {
            v56 = v57;
            v55 = v58;
          }

          v59 = 0xD000000000000018;
          v60 = 0x800000010134B910;
          if (v54 != 4)
          {
            v59 = 0x697250646C69772ELL;
            v60 = 0xEC0000007972616DLL;
          }

          if (*(v45 + v117[5]) <= 5u)
          {
            v61 = v59;
          }

          else
          {
            v61 = v56;
          }

          if (*(v45 + v117[5]) <= 5u)
          {
            v62 = v60;
          }

          else
          {
            v62 = v55;
          }
        }

        sub_100034434(v45, type metadata accessor for KeySyncMetadata);
        v91 = sub_1000136BC(v61, v62, v120);

        *(v49 + 24) = v91;
        *(v49 + 32) = 2082;
        v92 = (v46 + v117[6]);
        v93 = v92[3];
        v94 = v92[4];
        sub_1000035D0(v92, v93);
        v95 = sub_1010B7ABC(v93, v94);
        v97 = v96;
        sub_100034434(v46, type metadata accessor for KeySyncMetadata);
        v98 = sub_1000136BC(v95, v97, v120);

        *(v49 + 34) = v98;
        _os_log_impl(&_mh_execute_header, v47, v48, "Skipping to update key sync metadata for %{private,mask.hash}s, type: %{public}s, %{public}s.", v49, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_100034434(v45, type metadata accessor for KeySyncMetadata);
        sub_100034434(v44, type metadata accessor for KeySyncMetadata);
        sub_100034434(v46, type metadata accessor for KeySyncMetadata);
      }

      sub_10022A59C();
      swift_allocError();
      *v99 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1002207D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100027FA4();
  if (v9)
  {
    v13[1] = v13;
    v10 = __chkstk_darwin(v9);
    v13[-4] = a2;
    v13[-3] = a1;
    v13[-2] = v10;
    (*(v5 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100220984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v26 = a3;
  v23 = a2;
  v24 = a1;
  v25 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Table();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Delete();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v19, qword_10177C788);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v5 + 8))(v8, v25);
  QueryType.delete()();
  (*(v10 + 8))(v13, v9);
  Connection.run(_:)();
  return (*(v14 + 8))(v17, v22);
}

uint64_t sub_100220C64()
{
  v0 = type metadata accessor for Delete();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v35 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v30 = &v23 - v7;
  v8 = type metadata accessor for Table();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  if (sub_100027FA4())
  {
    v24 = v5;
    v25 = v1;
    v26 = v4;
    v27 = v0;
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v15 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v15, qword_10177C788);
    v33 = v15;
    v34 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
    sub_1000280DC(&v31);
    type metadata accessor for UUID();
    QueryType.subscript.getter();
    SchemaType.select(_:_:)();
    sub_100007BAC(&v31);
    v16 = Expressible.asSQL()();
    v29 = *(v29 + 8);
    (v29)(v14, v8);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v31 = 0xD00000000000002DLL;
    v32 = 0x800000010134D410;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 41;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10);
    v18 = v30;
    v19 = v26;
    ExpressionType.init(literal:)();
    QueryType.filter(_:)();
    v20 = v35;
    QueryType.delete()();
    Connection.run(_:)();

    (*(v25 + 8))(v20, v27);
    (v29)(v12, v8);
    return (*(v24 + 8))(v18, v19);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100221138@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v120 = a3;
  v127 = a2;
  v117 = a1;
  v7 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v104 = &v100 - v9;
  v10 = type metadata accessor for Row();
  v105 = *(v10 - 8);
  v11 = *(v105 + 64);
  v12 = __chkstk_darwin(v10);
  v103 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v100 - v14;
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v118 = &v100 - v18;
  v19 = type metadata accessor for UUID();
  v119 = *(v19 - 8);
  v20 = *(v119 + 64);
  __chkstk_darwin(v19);
  v114 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v116 = *(v128 - 8);
  v22 = *(v116 + 8);
  v23 = __chkstk_darwin(v128);
  v129 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v115 = &v100 - v25;
  v26 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v141 = *(v26 - 8);
  v27 = *(v141 + 64);
  __chkstk_darwin(v26);
  v29 = &v100 - v28;
  v133 = type metadata accessor for JoinType();
  v137 = *(v133 - 1);
  v30 = v137[8];
  __chkstk_darwin(v133);
  v132 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Table();
  v136 = *(v32 - 8);
  v33 = *(v136 + 64);
  v34 = __chkstk_darwin(v32);
  v134 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v130 = &v100 - v37;
  __chkstk_darwin(v36);
  v123 = &v100 - v38;

  if (sub_100028E90())
  {
    v131 = v29;
    v135 = v26;
    v113 = v19;
    v100 = v15;
    v101 = v10;
    v102 = a5;
    v39 = a4 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
    v40 = v137[13];
    v112 = enum case for JoinType.leftOuter(_:);
    v111 = v40;
    v110 = v137 + 13;
    v40(v132);
    v41 = (a4 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation);
    v139 = v32;
    v140 = &protocol witness table for Table;
    v42 = sub_1000280DC(&v138);
    v43 = *(v136 + 16);
    v109 = v41;
    v124 = v43;
    v125 = v136 + 16;
    v43(v42, v41, v32);
    v126 = a4;
    if (qword_101695380 != -1)
    {
      swift_once();
    }

    v44 = v128;
    v45 = sub_1000076D4(v128, qword_10177CA28);
    v46 = v115;
    v108 = v45;
    QueryType.subscript.getter();
    v106 = v39;
    v47 = v129;
    QueryType.subscript.getter();
    v48 = v131;
    == infix<A>(_:_:)();
    v49 = *(v116 + 1);
    v116 = v49;
    v49(v47, v44);
    v50 = v46;
    v49(v46, v44);
    v51 = v132;
    QueryType.join(_:_:on:)();
    v107 = *(v141 + 8);
    v141 += 8;
    v107(v48, v135);
    v52 = v137[1];
    ++v137;
    v109 = v52;
    v53 = v133;
    v52(v51, v133);
    sub_100007BAC(&v138);
    v111(v51, v112, v53);
    v54 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo;
    v139 = v32;
    v140 = &protocol witness table for Table;
    v55 = sub_1000280DC(&v138);
    v124(v55, v126 + v54, v32);
    QueryType.subscript.getter();
    v56 = v131;
    v57 = v129;
    QueryType.subscript.getter();
    v58 = v50;
    == infix<A>(_:_:)();
    v59 = v57;
    v60 = v107;
    v61 = v128;
    v62 = v116;
    v116(v59, v128);
    v62(v58, v61);
    v63 = v130;
    v64 = v132;
    v65 = v134;
    QueryType.join(_:_:on:)();
    v60(v56, v135);
    v109(v64, v133);
    v66 = (v136 + 8);
    v67 = *(v136 + 8);
    v67(v65, v32);
    sub_100007BAC(&v138);
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v132 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v132, qword_10177C788);
    v68 = v117 + *(type metadata accessor for BeaconIdentifier() + 20);
    v69 = v113;
    == infix<A>(_:_:)();
    v70 = v123;
    QueryType.filter(_:)();
    v60(v56, v135);
    v71 = v60;
    v72 = v63;
    v137 = v66;
    v133 = v67;
    v67(v63, v32);
    v73 = v119;
    v74 = v71;
    if (v127 != 8)
    {
      if (qword_101695370 != -1)
      {
        swift_once();
      }

      v75 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
      sub_1000076D4(v75, qword_10177C9F8);
      LODWORD(v138) = v127;
      sub_10022A60C();
      v76 = v131;
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      v71(v76, v135);
      (v133)(v70, v32);
      (*(v136 + 32))(v70, v72, v32);
    }

    v77 = v118;
    sub_1000D2A70(v120, v118, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v73 + 48))(v77, 1, v69) == 1)
    {
      sub_10000B3A8(v77, &qword_1016980D0, &unk_10138F3B0);
      v78 = v136;
    }

    else
    {
      v81 = v114;
      (*(v73 + 32))(v114, v77, v69);
      v82 = v69;
      if (qword_101695388 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v132, qword_10177CA40);
      v83 = v131;
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      v74(v83, v135);
      (*(v73 + 8))(v81, v82);
      (v133)(v70, v32);
      v78 = v136;
      (*(v136 + 32))(v70, v72, v32);
    }

    sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101695360 != -1)
    {
      swift_once();
    }

    v84 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v84, qword_10177C9C8);
    sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
    ExpressionType.desc.getter();
    v85 = v134;
    QueryType.order(_:)();

    v86 = v130;
    QueryType.limit(_:)();
    v87 = v133;
    (v133)(v85, v32);
    v87(v70, v32);
    (*(v78 + 32))(v70, v86, v32);
    v139 = v32;
    v140 = &protocol witness table for Table;
    v88 = sub_1000280DC(&v138);
    v124(v88, v70, v32);
    v89 = v121;
    Connection.prepare(_:)();
    if (v89)
    {

      v87(v70, v32);
      return sub_100007BAC(&v138);
    }

    else
    {
      sub_100007BAC(&v138);
      dispatch thunk of _AnySequenceBox._makeIterator()();

      v90 = v104;
      dispatch thunk of _AnyIteratorBoxBase.next()();

      v91 = v105;
      v92 = v101;
      v93 = (*(v105 + 48))(v90, 1, v101);
      v94 = v126;
      if (v93 == 1)
      {

        (v133)(v123, v32);
        sub_10000B3A8(v90, &qword_101699D68, &unk_1013B6450);
        v95 = 1;
        v96 = v102;
      }

      else
      {
        v97 = v100;
        (*(v91 + 32))(v100, v90, v92);
        v98 = v103;
        (*(v91 + 16))(v103, v97, v92);
        v96 = v102;
        sub_1002221C0(v98, v94, v102);

        (*(v91 + 8))(v97, v92);
        (v133)(v123, v32);
        v95 = 0;
      }

      v99 = type metadata accessor for DeviceEvent(0);
      return (*(*(v99 - 8) + 56))(v96, v95, 1, v99);
    }
  }

  else
  {

    sub_10020223C();
    swift_allocError();
    *v79 = 2;
    *(v79 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1002221C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v87 = a2;
  Error = type metadata accessor for QueryError();
  v75 = *(Error - 8);
  v5 = v75[8];
  v6 = __chkstk_darwin(Error);
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v70 - v8;
  v79 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v84 = *(v79 - 8);
  v10 = *(v84 + 64);
  __chkstk_darwin(v79);
  v78 = &v70 - v11;
  v12 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  __chkstk_darwin(v12);
  v71 = &v70 - v14;
  v15 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v77 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v80 = &v70 - v19;
  v20 = type metadata accessor for Row();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v70 - v26;
  v28 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v70 - v33;
  v83 = v21;
  v35 = *(v21 + 16);
  v85 = v20;
  v86 = a1;
  v36 = a1;
  v37 = v87;
  v76 = v35;
  v35(v27, v36, v20);

  v38 = v82;
  sub_100229A10(v27, v32);
  if (!v38)
  {
    v42 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v42 - 8) + 56))(v32, 0, 1, v42);
    sub_1000D2AD8(v32, v34, &qword_101699E50, &qword_1013D97C0);
    goto LABEL_7;
  }

  v88 = v38;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    swift_willThrow();

    return (*(v83 + 8))(v86, v85);
  }

  v39 = v75;
  v40 = (v75[11])(v9, Error);
  if (v40 != enum case for QueryError.noSuchColumn(_:) && v40 != enum case for QueryError.unexpectedNullValue(_:))
  {
    (v39[1])(v9, Error);
    goto LABEL_24;
  }

  (v39[1])(v9, Error);
  v41 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v41 - 8) + 56))(v34, 1, 1, v41);

LABEL_7:
  v76(v25, v86, v85);

  v43 = v77;
  sub_100229E9C(v25, v37, v77);
  v44 = v80;
  sub_1000D2AD8(v43, v80, &unk_1016AA510, &unk_101393150);
  v45 = v86;
  v46 = v81;
  v47 = type metadata accessor for DeviceEvent(0);
  sub_1000D2A70(v44, v46 + *(v47 + 32), &unk_1016AA510, &unk_101393150);
  v48 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v76 = 0;
  v49 = v73;
  sub_1000076D4(v73, qword_10177CA28);
  v50 = type metadata accessor for Table();
  v86 = v48;
  v51 = v71;
  v82 = v50;
  QueryType.subscript.getter();
  Row.subscript.getter();
  (*(v72 + 8))(v51, v49);
  *v46 = v88;
  *(v46 + 8) = 0;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v52 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v52, qword_10177C818);
  v53 = v47;
  v54 = v46 + *(v47 + 36);
  type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v77 = v34;
  sub_1000076D4(v52, qword_10177C788);
  v55 = v54 + *(type metadata accessor for BeaconIdentifier() + 20);
  Row.subscript.getter();
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v56 = v79;
  sub_1000076D4(v79, qword_10177C9C8);
  type metadata accessor for Date();
  v57 = v78;
  QueryType.subscript.getter();
  v58 = v81;
  v59 = v81 + v53[6];
  Row.subscript.getter();
  v60 = v45;
  v61 = *(v84 + 8);
  v84 += 8;
  v75 = v61;
  (v61)(v57, v56);
  if (qword_101695370 != -1)
  {
    swift_once();
  }

  v62 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v62, qword_10177C9F8);
  sub_10022A60C();
  Row.subscript.getter();
  v63 = sub_100513050(v88);
  if (v63 == 8)
  {
    v64 = 0;
  }

  else
  {
    v64 = v63;
  }

  *(v58 + 9) = v64;
  v65 = v77;
  sub_1000D2A70(v77, v58 + v53[7], &qword_101699E50, &qword_1013D97C0);
  if (qword_101695378 != -1)
  {
    swift_once();
  }

  v66 = v79;
  sub_1000076D4(v79, qword_10177CA10);
  v67 = v78;
  QueryType.subscript.getter();
  v68 = v58 + v53[10];
  Row.subscript.getter();

  (*(v83 + 8))(v60, v85);
  (v75)(v67, v66);
  sub_10000B3A8(v80, &unk_1016AA510, &unk_101393150);
  return sub_10000B3A8(v65, &qword_101699E50, &qword_1013D97C0);
}

uint64_t sub_100222D9C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v64 = *(v2 - 8);
  v3 = *(v64 + 8);
  v4 = __chkstk_darwin(v2);
  v61 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v54 - v6;
  v69 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v79 = *(v69 - 8);
  v8 = *(v79 + 64);
  __chkstk_darwin(v69);
  v62 = v54 - v9;
  v10 = type metadata accessor for JoinType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Table();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v68 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v73 = v54 - v21;
  __chkstk_darwin(v20);
  v65 = v54 - v22;
  v66 = a1 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  v75 = v11;
  v23 = *(v11 + 104);
  v67 = v14;
  v60 = enum case for JoinType.leftOuter(_:);
  v70 = v10;
  v59 = v23;
  v58 = v11 + 104;
  v23(v14);
  v74 = a1;
  v24 = a1 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation;
  v77 = v15;
  v78 = &protocol witness table for Table;
  v25 = sub_1000280DC(v76);
  v63 = v16;
  v71 = *(v16 + 16);
  v72 = v16 + 16;
  v71(v25, v24, v15);
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v26 = sub_1000076D4(v2, qword_10177CA28);
  v54[0] = v7;
  v54[1] = v26;
  QueryType.subscript.getter();
  v27 = v61;
  QueryType.subscript.getter();
  v28 = v62;
  == infix<A>(_:_:)();
  v29 = *(v64 + 1);
  v55 = v29;
  v56 = v2;
  v29(v27, v2);
  v29(v7, v2);
  v30 = v67;
  QueryType.join(_:_:on:)();
  v31 = *(v79 + 8);
  v79 += 8;
  v64 = v31;
  v31(v28, v69);
  v32 = *(v75 + 8);
  v75 += 8;
  v57 = v32;
  v33 = v70;
  v32(v30, v70);
  sub_100007BAC(v76);
  v59(v30, v60, v33);
  v34 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo;
  v77 = v15;
  v78 = &protocol witness table for Table;
  v35 = sub_1000280DC(v76);
  v71(v35, v74 + v34, v15);
  v36 = v54[0];
  v37 = v15;
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v38 = v27;
  v39 = v56;
  v40 = v55;
  v55(v38, v56);
  v40(v36, v39);
  v41 = v67;
  v42 = v68;
  QueryType.join(_:_:on:)();
  v64(v28, v69);
  v57(v41, v70);
  v43 = *(v63 + 8);
  v43(v42, v37);
  sub_100007BAC(v76);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10138BBE0;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v45 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v46 = sub_1000076D4(v45, qword_10177C788);
  *(v44 + 56) = v45;
  *(v44 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v47 = sub_1000280DC((v44 + 32));
  (*(*(v45 - 8) + 16))(v47, v46, v45);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v48 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v48, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v49 = v65;
  v50 = v73;
  QueryType.order(_:)();

  v43(v50, v37);
  v77 = v37;
  v78 = &protocol witness table for Table;
  v51 = sub_1000280DC(v76);
  v71(v51, v49, v37);
  v52 = sub_100223654(v76, v74);
  v43(v49, v37);
  sub_100007BAC(v76);
  return v52;
}

uint64_t sub_100223654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEvent(0);
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v68 = (v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v57 = v56 - v8;
  v9 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = v56 - v14;
  v15 = type metadata accessor for Row();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v64 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v59 = v56 - v21;
  __chkstk_darwin(v20);
  v60 = v56 - v22;
  v67 = a2;
  v23 = sub_100028E90();
  if (!v23)
  {
    sub_10020223C();
    swift_allocError();
    *v27 = 2;
    *(v27 + 4) = 1;
    return swift_willThrow();
  }

  v24 = v23;
  v25 = Connection.prepare(_:)();
  if (v2)
  {
  }

  v28 = v25;

  v29 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_101124678(0, v29 & ~(v29 >> 63), 0);
  v30 = v69;
  v56[1] = v28;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v65 = result;
  if (v29 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v56[0] = v24;
  v58 = v16;
  if (v29)
  {
    v31 = (v16 + 48);
    v32 = v16;
    v33 = (v16 + 16);
    v62 = (v32 + 8);
    v63 = v31;
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v63)(v13, 1, v15);
      if (result == 1)
      {
        goto LABEL_20;
      }

      v34 = v64;
      (*v33)(v64, v13, v15);
      v35 = v67;

      sub_1002221C0(v34, v35, v68);
      v36 = v15;
      (*v62)(v13, v15);
      v69 = v30;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_101124678(v37 > 1, v38 + 1, 1);
        v30 = v69;
      }

      v30[2] = v38 + 1;
      sub_1000345B4(v68, v30 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v38, type metadata accessor for DeviceEvent);
      --v29;
      v15 = v36;
    }

    while (v29);
  }

  v39 = v61;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v40 = v39;
  v41 = v58;
  v68 = *(v58 + 48);
  if (v68(v39, 1, v15) != 1)
  {
    v43 = *(v41 + 32);
    v42 = v41 + 32;
    v64 = v43;
    v44 = (v42 - 16);
    v58 = v42;
    v45 = (v42 - 24);
    v46 = v57;
    do
    {
      v47 = v60;
      (v64)(v60, v40, v15);
      v48 = v59;
      (*v44)(v59, v47, v15);
      v49 = v67;

      sub_1002221C0(v48, v49, v46);
      v50 = v46;
      (*v45)(v47, v15);
      v69 = v30;
      v51 = v15;
      v53 = v30[2];
      v52 = v30[3];
      if (v53 >= v52 >> 1)
      {
        sub_101124678(v52 > 1, v53 + 1, 1);
        v50 = v57;
        v30 = v69;
      }

      v30[2] = v53 + 1;
      sub_1000345B4(v50, v30 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v53, type metadata accessor for DeviceEvent);
      v54 = v61;
      v46 = v50;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v40 = v54;
      v55 = v68(v54, 1, v51);
      v15 = v51;
    }

    while (v55 != 1);
  }

  sub_10000B3A8(v40, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_101699F08, &unk_1013931E0);
  result = swift_allocObject();
  *(result + 16) = v30;
  return result;
}

uint64_t sub_100223CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v235 = a2;
  v237 = a3;
  v232 = a4;
  v5 = sub_1000BC4D4(&qword_101699ED0, &qword_101393188);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v220 = v187 - v7;
  v223 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  v216 = *(v223 - 8);
  v8 = *(v216 + 64);
  __chkstk_darwin(v223);
  v219 = v187 - v9;
  v215 = sub_1000BC4D4(&qword_101699ED8, &qword_101393198);
  v201 = *(v215 - 8);
  v10 = *(v201 + 64);
  v11 = __chkstk_darwin(v215);
  v214 = v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v222 = v187 - v14;
  __chkstk_darwin(v13);
  v221 = v187 - v15;
  v16 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v17 = *(v16 - 8);
  v233 = v16;
  v234 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v200 = v187 - v19;
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v204 = v187 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v211 = v187 - v25;
  v26 = __chkstk_darwin(v24);
  v217 = v187 - v27;
  v28 = __chkstk_darwin(v26);
  v224 = v187 - v29;
  v30 = __chkstk_darwin(v28);
  v225 = v187 - v31;
  __chkstk_darwin(v30);
  v227 = v187 - v32;
  v33 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v213 = v187 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v231 = (v187 - v37);
  v38 = type metadata accessor for UUID();
  v229 = *(v38 - 8);
  v230 = v38;
  v39 = *(v229 + 64);
  v40 = __chkstk_darwin(v38);
  v203 = v187 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v226 = v187 - v43;
  __chkstk_darwin(v42);
  v228 = v187 - v44;
  v45 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45 - 8);
  v205 = v187 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v206 = v187 - v50;
  v51 = __chkstk_darwin(v49);
  v207 = v187 - v52;
  v53 = __chkstk_darwin(v51);
  v208 = v187 - v54;
  v55 = __chkstk_darwin(v53);
  v209 = v187 - v56;
  v57 = __chkstk_darwin(v55);
  v202 = v187 - v58;
  v59 = __chkstk_darwin(v57);
  v210 = v187 - v60;
  v61 = __chkstk_darwin(v59);
  v212 = v187 - v62;
  v63 = __chkstk_darwin(v61);
  v218 = v187 - v64;
  v65 = __chkstk_darwin(v63);
  v67 = v187 - v66;
  v68 = __chkstk_darwin(v65);
  v70 = v187 - v69;
  v71 = __chkstk_darwin(v68);
  v73 = v187 - v72;
  __chkstk_darwin(v71);
  v75 = v187 - v74;
  v76 = type metadata accessor for DeviceEvent(0);
  v77 = *(v76 - 8);
  v78 = *(v77 + 64);
  v79 = __chkstk_darwin(v76);
  v81 = v187 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v83 = v187 - v82;
  v84 = v236;
  result = sub_100221138(a1, 8, v235, v237, v75);
  if (!v84)
  {
    v199 = a1;
    v195 = v81;
    v196 = v67;
    v197 = v70;
    v198 = v73;
    v235 = v83;
    v236 = 0;
    v88 = *(v77 + 48);
    v87 = v77 + 48;
    v86 = v88;
    if (v88(v75, 1, v76) == 1)
    {
      sub_10000B3A8(v75, &unk_1016AA500, &unk_1013B3600);
      v89 = v233;
      v90 = *(v234 + 56);
      v91 = v232;
      v92 = 1;
      return v90(v91, v92, 1, v89);
    }

    v93 = v75;
    v94 = v235;
    sub_1000345B4(v93, v235, type metadata accessor for DeviceEvent);
    v95 = v231;
    sub_1000D2A70(v94 + *(v76 + 32), v231, &unk_1016AA510, &unk_101393150);
    v96 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    v97 = *(v96 - 8);
    v98 = *(v97 + 48);
    v99 = v97 + 48;
    v100 = v98(v95, 1, v96);
    v101 = v234;
    if (v100 == 1)
    {
      sub_100034434(v94, type metadata accessor for DeviceEvent);
      sub_10000B3A8(v95, &unk_1016AA510, &unk_101393150);
      return (*(v101 + 56))(v232, 1, 1, v233);
    }

    else
    {
      v189 = v99;
      v190 = v98;
      v191 = v96;
      v192 = v86;
      v193 = v87;
      v102 = v229;
      v103 = v230;
      v105 = (v229 + 16);
      v104 = *(v229 + 16);
      v106 = v226;
      (v104)(v226, v95, v230);
      sub_100034434(v95, type metadata accessor for DeviceEvent.AttachmentInfo);
      v107 = *(v102 + 32);
      v108 = v228;
      v107(v228, v106, v103);
      v109 = v227;
      v231 = v105;
      v226 = v104;
      (v104)(v227, v108, v103);
      v110 = (v102 + 56);
      v194 = *(v102 + 56);
      v194(v109, 0, 1, v103);
      v111 = v236;
      sub_100221138(v199, 3, v109, v237, v198);
      v236 = v111;
      if (v111)
      {
        sub_10000B3A8(v109, &qword_1016980D0, &unk_10138F3B0);
        (*(v102 + 8))(v108, v103);
      }

      else
      {
        v187[0] = v107;
        v187[1] = v102 + 32;
        v188 = v76;
        sub_10000B3A8(v109, &qword_1016980D0, &unk_10138F3B0);
        v112 = v225;
        (v226)(v225, v108, v103);
        v113 = v194;
        v194(v112, 0, 1, v103);
        v114 = v236;
        sub_100221138(v199, 4, v112, v237, v197);
        v115 = v103;
        v116 = v108;
        if (v114)
        {
          sub_10000B3A8(v112, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v198, &unk_1016AA500, &unk_1013B3600);
          (*(v102 + 8))(v108, v103);
        }

        else
        {
          v117 = v113;
          sub_10000B3A8(v112, &qword_1016980D0, &unk_10138F3B0);
          v118 = v224;
          (v226)(v224, v116, v115);
          v113(v118, 0, 1, v115);
          v119 = v199;
          v120 = v237;
          sub_100221138(v199, 1, v118, v237, v196);
          sub_10000B3A8(v118, &qword_1016980D0, &unk_10138F3B0);
          v121 = v217;
          v122 = v230;
          (v226)(v217, v116, v230);
          v117(v121, 0, 1, v122);
          sub_100221138(v119, 2, v121, v120, v218);
          v123 = v110;
          v124 = v120;
          v125 = v119;
          v126 = v117;
          sub_10000B3A8(v121, &qword_1016980D0, &unk_10138F3B0);
          v127 = v211;
          v128 = v123;
          v129 = v230;
          (v226)(v211, v116, v230);
          v225 = v128;
          v126(v127, 0, 1, v129);
          sub_100221138(v125, 5, v127, v124, v212);
          v236 = 0;
          sub_10000B3A8(v127, &qword_1016980D0, &unk_10138F3B0);
          v130 = v204;
          v131 = v230;
          (v226)(v204, v116, v230);
          v126(v130, 0, 1, v131);
          v132 = v210;
          v133 = v236;
          sub_100221138(v125, 6, v130, v124, v210);
          v236 = v133;
          if (!v133)
          {
            sub_10000B3A8(v130, &qword_1016980D0, &unk_10138F3B0);
            v134 = v202;
            sub_1000D2A70(v198, v202, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v197, v209, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v196, v208, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v218, v207, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v212, v206, &unk_1016AA500, &unk_1013B3600);
            sub_1000D2A70(v132, v205, &unk_1016AA500, &unk_1013B3600);
            static SystemInfo.bootSessionUUID.getter();
            sub_1000BC4D4(&qword_101699EE0, &qword_1013931B0);
            v135 = *(v201 + 72);
            v136 = (*(v201 + 80) + 32) & ~*(v201 + 80);
            v137 = 6;
            v224 = swift_allocObject();
            v138 = &v224[v136];
            v139 = v215;
            v140 = &v224[v136 + *(v215 + 48)];
            sub_1000D2A70(v134, &v224[v136], &unk_1016AA500, &unk_1013B3600);
            v141 = sub_1000BC4D4(&qword_101699EE8, &qword_1013931B8);
            *(v140 + 3) = v141;
            *(v140 + 4) = &off_10161D298;
            *v140 = 0;
            v142 = &v138[v135 + *(v139 + 48)];
            sub_1000D2A70(v209, &v138[v135], &unk_1016AA500, &unk_1013B3600);
            *(v142 + 3) = v141;
            *(v142 + 4) = &off_10161D298;
            *v142 = 1;
            v143 = &v138[2 * v135];
            v144 = v143 + *(v139 + 48);
            sub_1000D2A70(v208, v143, &unk_1016AA500, &unk_1013B3600);
            v145 = sub_1000BC4D4(&qword_101699EF0, &qword_1013931C0);
            *(v144 + 24) = v145;
            *(v144 + 32) = &off_10161D270;
            *v144 = 0;
            v146 = &v138[3 * v135];
            v147 = v146 + *(v139 + 48);
            sub_1000D2A70(v207, v146, &unk_1016AA500, &unk_1013B3600);
            *(v147 + 24) = v145;
            *(v147 + 32) = &off_10161D270;
            *v147 = 1;
            v148 = &v138[4 * v135];
            v149 = v148 + *(v139 + 48);
            sub_1000D2A70(v206, v148, &unk_1016AA500, &unk_1013B3600);
            v150 = sub_1000BC4D4(&qword_101699EF8, &qword_1013931C8);
            *(v149 + 24) = v150;
            *(v149 + 32) = &off_10161D248;
            *v149 = 0;
            v151 = v139;
            v227 = v135;
            v152 = &v138[5 * v135];
            v153 = v152 + *(v139 + 48);
            sub_1000D2A70(v205, v152, &unk_1016AA500, &unk_1013B3600);
            v231 = _swiftEmptyArrayStorage;
            *(v153 + 24) = v150;
            *(v153 + 32) = &off_10161D248;
            *v153 = 1;
            v226 = (v216 + 56);
            v217 = v138;
            v154 = v138;
            v155 = &qword_101699ED8;
            v156 = v233;
            v157 = v221;
            v158 = v222;
            v159 = v192;
            do
            {
              v237 = v137;
              sub_1000D2A70(v154, v157, v155, &qword_101393198);
              sub_1000D2A70(v157, v158, v155, &qword_101393198);
              v162 = *(v151 + 48);
              v163 = v155;
              v164 = v188;
              if (v159(v158, 1, v188) == 1)
              {
                sub_10000B3A8(v157, v163, &qword_101393198);
                sub_100007BAC((v158 + v162));
                sub_10000B3A8(v158, &unk_1016AA500, &unk_1013B3600);
                v160 = v220;
                (*v226)(v220, 1, 1, v223);
                sub_10000B3A8(v160, &qword_101699ED0, &qword_101393188);
                v155 = v163;
                v161 = v237;
              }

              else
              {
                v165 = v195;
                sub_1000345B4(v158, v195, type metadata accessor for DeviceEvent);
                sub_100007BAC((v158 + v162));
                v166 = v220;
                sub_10001BA68(v165, v220, type metadata accessor for DeviceEvent);
                v167 = v223;
                v168 = *(v223 + 36);
                v169 = *(v164 + 24);
                v170 = type metadata accessor for Date();
                (*(*(v170 - 8) + 16))(v166 + v168, v165 + v169, v170);
                v171 = v214;
                sub_1000D2AD8(v157, v214, v163, &qword_101393198);
                v172 = *(v167 + 44);
                v173 = v213;
                sub_1000D2A70(v165 + *(v164 + 32), v213, &unk_1016AA510, &unk_101393150);
                sub_100034434(v165, type metadata accessor for DeviceEvent);
                v174 = v191;
                if (v190(v173, 1, v191) == 1)
                {
                  sub_10000B3A8(v173, &unk_1016AA510, &unk_101393150);
                  v194(v166 + v172, 1, 1, v230);
                }

                else
                {
                  sub_1000D2A70(v173 + *(v174 + 20), v166 + v172, &qword_1016980D0, &unk_10138F3B0);
                  sub_100034434(v173, type metadata accessor for DeviceEvent.AttachmentInfo);
                }

                v151 = v215;
                v161 = v237;
                v175 = v223;
                sub_10000A748((v171 + *(v215 + 48)), v166 + *(v223 + 40));
                sub_10000B3A8(v171, &unk_1016AA500, &unk_1013B3600);
                (*v226)(v166, 0, 1, v175);
                sub_1000D2AD8(v166, v219, &qword_101697DE0, &qword_101393190);
                v176 = v231;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v178 = v216;
                v159 = v192;
                v155 = &qword_101699ED8;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v176 = sub_100A5C45C(0, v176[2] + 1, 1, v176);
                }

                v180 = v176[2];
                v179 = v176[3];
                if (v180 >= v179 >> 1)
                {
                  v176 = sub_100A5C45C(v179 > 1, v180 + 1, 1, v176);
                }

                v176[2] = v180 + 1;
                v181 = (*(v178 + 80) + 32) & ~*(v178 + 80);
                v231 = v176;
                sub_1000D2AD8(v219, v176 + v181 + *(v178 + 72) * v180, &qword_101697DE0, &qword_101393190);
                v156 = v233;
              }

              v154 += v227;
              v137 = v161 - 1;
              v157 = v221;
              v158 = v222;
            }

            while (v137);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v182 = v231;
            v183 = v232;
            v184 = v230;
            if (v231[2])
            {
              sub_10000B3A8(v205, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v206, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v207, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v208, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v209, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v202, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v210, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v212, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v218, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v196, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v197, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v198, &unk_1016AA500, &unk_1013B3600);
              (*(v229 + 8))(v228, v184);
              sub_100034434(v235, type metadata accessor for DeviceEvent);
              v185 = v200;
              (v187[0])(&v200[*(v156 + 36)], v203, v184);
              *v185 = v182;
              sub_1000D2AD8(v185, v183, &qword_1016998D0, &unk_1013931A0);
              v90 = *(v234 + 56);
              v91 = v183;
              v92 = 0;
            }

            else
            {

              v186 = *(v229 + 8);
              v186(v203, v184);
              sub_10000B3A8(v205, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v206, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v207, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v208, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v209, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v202, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v210, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v212, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v218, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v196, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v197, &unk_1016AA500, &unk_1013B3600);
              sub_10000B3A8(v198, &unk_1016AA500, &unk_1013B3600);
              v186(v228, v184);
              sub_100034434(v235, type metadata accessor for DeviceEvent);
              v90 = *(v234 + 56);
              v91 = v183;
              v92 = 1;
            }

            v89 = v156;
            return v90(v91, v92, 1, v89);
          }

          sub_10000B3A8(v130, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v212, &unk_1016AA500, &unk_1013B3600);
          sub_10000B3A8(v218, &unk_1016AA500, &unk_1013B3600);
          sub_10000B3A8(v196, &unk_1016AA500, &unk_1013B3600);
          sub_10000B3A8(v197, &unk_1016AA500, &unk_1013B3600);
          sub_10000B3A8(v198, &unk_1016AA500, &unk_1013B3600);
          (*(v229 + 8))(v116, v230);
        }
      }

      return sub_100034434(v235, type metadata accessor for DeviceEvent);
    }
  }

  return result;
}

uint64_t sub_1002256D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100027FA4();
  if (v9)
  {
    __chkstk_darwin(v9);
    v12[-2] = a2;
    v12[-1] = a1;
    (*(v5 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    return swift_willThrow();
  }
}

char *sub_100225880(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for DeviceEvent.Location(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100225A68(a2, a1);
  if (!v2)
  {
    v15 = result;
    v16 = type metadata accessor for DeviceEvent(0);
    sub_1000D2A70(a2 + *(v16 + 28), v8, &qword_101699E50, &qword_1013D97C0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_10000B3A8(v8, &qword_101699E50, &qword_1013D97C0);
    }

    else
    {
      sub_1000345B4(v8, v13, type metadata accessor for DeviceEvent.Location);
      sub_1002274AC(v13, v15, a1);
      return sub_100034434(v13, type metadata accessor for DeviceEvent.Location);
    }
  }

  return result;
}

char *sub_100225A68(uint64_t a1, uint64_t a2)
{
  v209 = a1;
  v3 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v160 - v5;
  v175 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v174 = *(v175 - 8);
  v7 = *(v174 + 64);
  __chkstk_darwin(v175);
  v172 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for Date();
  v179 = *(v203 - 8);
  v9 = *(v179 + 64);
  __chkstk_darwin(v203);
  v178 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for OnConflict();
  v180 = *(v189 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v189);
  v188 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for Insert();
  v181 = *(v182 - 8);
  v13 = *(v181 + 64);
  __chkstk_darwin(v182);
  v183 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for DeviceEvent(0);
  v15 = *(*(v202 - 8) + 64);
  v16 = __chkstk_darwin(v202);
  v176 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v173 = &v160 - v19;
  v20 = __chkstk_darwin(v18);
  v184 = &v160 - v21;
  v22 = __chkstk_darwin(v20);
  v186 = &v160 - v23;
  v24 = __chkstk_darwin(v22);
  v185 = &v160 - v25;
  __chkstk_darwin(v24);
  v177 = &v160 - v26;
  v27 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v187 = &v160 - v29;
  v30 = type metadata accessor for Row();
  v31 = *(v30 - 8);
  v193 = v30;
  v194 = v31;
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v190 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = &v160 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v160 - v44;
  v46 = __chkstk_darwin(v43);
  v198 = &v160 - v47;
  __chkstk_darwin(v46);
  v49 = &v160 - v48;
  v50 = type metadata accessor for Table();
  v200 = *(v50 - 8);
  v51 = *(v200 + 8);
  v52 = __chkstk_darwin(v50);
  v199 = &v160 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v205 = &v160 - v54;
  if (!sub_100027FA4())
  {
    sub_10020223C();
    swift_allocError();
    *v82 = 2;
    *(v82 + 4) = 1;
    swift_willThrow();
    return v42;
  }

  v195 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  if (qword_101695370 != -1)
  {
    swift_once();
  }

  v192 = v49;
  v160 = v6;
  v196 = a2;
  v197 = v50;
  v55 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  v56 = sub_1000076D4(v55, qword_10177C9F8);
  v57 = v209;
  v168 = *(v209 + 9);
  LODWORD(v206) = v168;
  v58 = sub_10022A60C();
  v170 = v56;
  v169 = v58;
  == infix<A>(_:_:)();
  v59 = v202;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v171 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v60 = sub_1000076D4(v171, qword_10177C9C8);
  v166 = *(v59 + 24);
  v167 = v60;
  == infix<A>(_:_:)();
  && infix(_:_:)();
  v61 = *(v35 + 8);
  v61(v39, v34);
  v61(v42, v34);
  v62 = v59;
  v63 = v45;
  v64 = v34;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v191 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v65 = sub_1000076D4(v191, qword_10177C788);
  v66 = v57 + *(v62 + 36);
  v161 = type metadata accessor for BeaconIdentifier();
  v67 = *(v161 + 20);
  v68 = type metadata accessor for UUID();
  v163 = v67;
  v164 = v65;
  == infix<A>(_:_:)();
  v69 = v198;
  && infix(_:_:)();
  v61(v42, v64);
  v61(v63, v64);
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v162 = sub_1000076D4(v191, qword_10177C818);
  v165 = v66;
  v191 = v68;
  == infix<A>(_:_:)();
  v70 = v192;
  && infix(_:_:)();
  v61(v63, v64);
  v61(v69, v64);
  v71 = v199;
  v42 = v197;
  QueryType.filter(_:)();
  v61(v70, v64);
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v72 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v73 = sub_1000076D4(v72, qword_10177CA28);
  v207 = v72;
  v208 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850);
  v74 = sub_1000280DC(&v206);
  (*(*(v72 - 8) + 16))(v74, v73, v72);
  v75 = v205;
  SchemaType.select(_:_:)();
  v76 = v200;
  v77 = v71;
  v78 = v200 + 8;
  v79 = *(v200 + 1);
  v79(v77, v42);
  sub_100007BAC(&v206);
  v207 = v42;
  v208 = &protocol witness table for Table;
  v80 = sub_1000280DC(&v206);
  v76[2](v80, v75, v42);
  v81 = v201;
  Connection.prepare(_:)();
  if (v81)
  {
    v79(v75, v42);

    sub_100007BAC(&v206);
    return v42;
  }

  v199 = v78;
  v200 = v79;
  v201 = 0;
  v84 = v42;
  sub_100007BAC(&v206);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  v85 = v187;
  dispatch thunk of _AnyIteratorBoxBase.next()();

  v87 = v193;
  v86 = v194;
  if ((*(v194 + 48))(v85, 1, v193) != 1)
  {
    (*(v86 + 32))(v190, v85, v87);
    Row.subscript.getter();
    v198 = v206;
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_1000076D4(v100, qword_10177A5C0);
    v101 = v209;
    v102 = v177;
    sub_10001BA68(v209, v177, type metadata accessor for DeviceEvent);
    v103 = v185;
    sub_10001BA68(v101, v185, type metadata accessor for DeviceEvent);
    v104 = v101;
    v105 = v186;
    sub_10001BA68(v104, v186, type metadata accessor for DeviceEvent);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v106, v107))
    {

      sub_100034434(v105, type metadata accessor for DeviceEvent);
      sub_100034434(v103, type metadata accessor for DeviceEvent);
      sub_100034434(v102, type metadata accessor for DeviceEvent);
      (*(v194 + 8))(v190, v87);
      v200(v75, v84);
      return v198;
    }

    v108 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    *v108 = 136447235;
    v109 = *(v102 + 9);
    v110 = v102;
    v111 = v107;
    if (v109 > 3)
    {
      if (v109 > 5)
      {
        if (v109 == 6)
        {
          v112 = 0x657070617369642ELL;
          v113 = 0xEC00000064657261;
        }

        else
        {
          v113 = 0xE500000000000000;
          v112 = 0x726961702ELL;
        }

        goto LABEL_52;
      }

      if (v109 != 4)
      {
        v112 = 0x657463657465642ELL;
        v113 = 0xEF79627261654E64;
        goto LABEL_52;
      }

      v113 = 0xE700000000000000;
      v130 = 1952801838;
    }

    else
    {
      if (v109 <= 1)
      {
        if (v109)
        {
          v113 = 0xE800000000000000;
          v112 = 0x7463656E6E6F632ELL;
        }

        else
        {
          v112 = 0x6E776F6E6B6E752ELL;
          v113 = 0xE800000000000000;
        }

        goto LABEL_52;
      }

      if (v109 == 2)
      {
        v112 = 0x6E6E6F637369642ELL;
        v113 = 0xEB00000000746365;
LABEL_52:
        sub_100034434(v110, type metadata accessor for DeviceEvent);
        v133 = sub_1000136BC(v112, v113, &v206);

        *(v108 + 4) = v133;
        *(v108 + 12) = 2082;
        v134 = v202;
        v135 = *(v202 + 24);
        sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
        v136 = v185;
        v137 = dispatch thunk of CustomStringConvertible.description.getter();
        v139 = v138;
        sub_100034434(v136, type metadata accessor for DeviceEvent);
        v140 = sub_1000136BC(v137, v139, &v206);

        *(v108 + 14) = v140;
        *(v108 + 22) = 2160;
        *(v108 + 24) = 1752392040;
        *(v108 + 32) = 2081;
        v141 = *(v134 + 36) + *(v161 + 20);
        sub_1000291EC(&qword_101696930, &type metadata accessor for UUID);
        v142 = v186;
        v143 = dispatch thunk of CustomStringConvertible.description.getter();
        v145 = v144;
        sub_100034434(v142, type metadata accessor for DeviceEvent);
        v146 = sub_1000136BC(v143, v145, &v206);

        *(v108 + 34) = v146;
        *(v108 + 42) = 2048;
        v42 = v198;
        *(v108 + 44) = v198;
        _os_log_impl(&_mh_execute_header, v106, v111, "Device event for %{public}s/%{public}s/%{private,mask.hash}s already exists (eventId=%lld).", v108, 0x34u);
        swift_arrayDestroy();

        (*(v194 + 8))(v190, v193);
        v200(v205, v197);
        return v42;
      }

      v113 = 0xE700000000000000;
      v130 = 1953784110;
    }

    v112 = v130 | 0x68636100000000;
    goto LABEL_52;
  }

  sub_10000B3A8(v85, &qword_101699D68, &unk_1013B6450);
  v88 = v180;
  (*(v180 + 104))(v188, enum case for OnConflict.ignore(_:), v189);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v89 = *(type metadata accessor for Setter() - 8);
  v90 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v198 = (4 * *(v89 + 72));
  *(swift_allocObject() + 16) = xmmword_10138C0D0;
  LODWORD(v206) = v168;
  <- infix<A>(_:_:)();
  v42 = v203;
  <- infix<A>(_:_:)();
  <- infix<A>(_:_:)();
  <- infix<A>(_:_:)();
  if (qword_101695378 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v171, qword_10177CA10);
  v91 = v178;
  static Date.trustedNow.getter(v178);
  <- infix<A>(_:_:)();
  (*(v179 + 8))(v91, v42);
  v92 = v183;
  v93 = v188;
  v94 = v197;
  QueryType.insert(or:_:)();

  (*(v88 + 8))(v93, v189);
  v95 = v201;
  v96 = Connection.run(_:)();
  v97 = v205;
  v201 = v95;
  v98 = v200;
  v99 = v184;
  if (v95)
  {

    (*(v181 + 8))(v92, v182);
    v98(v97, v94);
    return v42;
  }

  v198 = v96;
  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v114 = type metadata accessor for Logger();
  sub_1000076D4(v114, qword_10177A5C0);
  v115 = v209;
  sub_10001BA68(v209, v99, type metadata accessor for DeviceEvent);
  v116 = v173;
  sub_10001BA68(v115, v173, type metadata accessor for DeviceEvent);
  v117 = v176;
  sub_10001BA68(v115, v176, type metadata accessor for DeviceEvent);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v118, v119))
  {

    sub_100034434(v117, type metadata accessor for DeviceEvent);
    sub_100034434(v116, type metadata accessor for DeviceEvent);
    sub_100034434(v184, type metadata accessor for DeviceEvent);
    v131 = v202;
    v42 = v198;
    goto LABEL_63;
  }

  v120 = swift_slowAlloc();
  v195 = swift_slowAlloc();
  v206 = v195;
  *v120 = 141559043;
  *(v120 + 4) = 1752392040;
  *(v120 + 12) = 2081;
  v121 = *(v202 + 36) + *(v161 + 20);
  sub_1000291EC(&qword_101696930, &type metadata accessor for UUID);
  v122 = v184;
  v123 = dispatch thunk of CustomStringConvertible.description.getter();
  v125 = v124;
  sub_100034434(v122, type metadata accessor for DeviceEvent);
  v126 = sub_1000136BC(v123, v125, &v206);

  *(v120 + 14) = v126;
  *(v120 + 22) = 2082;
  v127 = *(v116 + 9);
  if (v127 > 3)
  {
    if (*(v116 + 9) > 5u)
    {
      if (v127 == 6)
      {
        v128 = 0x657070617369642ELL;
        v129 = 0xEC00000064657261;
      }

      else
      {
        v129 = 0xE500000000000000;
        v128 = 0x726961702ELL;
      }

      goto LABEL_62;
    }

    if (v127 != 4)
    {
      v128 = 0x657463657465642ELL;
      v129 = 0xEF79627261654E64;
      goto LABEL_62;
    }

    v129 = 0xE700000000000000;
    v132 = 1952801838;
LABEL_60:
    v128 = v132 | 0x68636100000000;
    goto LABEL_62;
  }

  if (*(v116 + 9) <= 1u)
  {
    if (*(v116 + 9))
    {
      v129 = 0xE800000000000000;
      v128 = 0x7463656E6E6F632ELL;
    }

    else
    {
      v128 = 0x6E776F6E6B6E752ELL;
      v129 = 0xE800000000000000;
    }

    goto LABEL_62;
  }

  if (v127 != 2)
  {
    v129 = 0xE700000000000000;
    v132 = 1953784110;
    goto LABEL_60;
  }

  v128 = 0x6E6E6F637369642ELL;
  v129 = 0xEB00000000746365;
LABEL_62:
  sub_100034434(v116, type metadata accessor for DeviceEvent);
  v147 = sub_1000136BC(v128, v129, &v206);

  *(v120 + 24) = v147;
  *(v120 + 32) = 2082;
  v148 = v202;
  v149 = *(v202 + 24);
  sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
  v150 = v176;
  v151 = dispatch thunk of CustomStringConvertible.description.getter();
  v153 = v152;
  sub_100034434(v150, type metadata accessor for DeviceEvent);
  v154 = sub_1000136BC(v151, v153, &v206);

  *(v120 + 34) = v154;
  v131 = v148;
  *(v120 + 42) = 2048;
  v42 = v198;
  *(v120 + 44) = v198;
  _os_log_impl(&_mh_execute_header, v118, v119, "Stored new device event for beacon: %{private,mask.hash}s,\nevent: %{public}s, ts: %{public}s (eventId=%lld).", v120, 0x34u);
  swift_arrayDestroy();

  v94 = v197;
  v97 = v205;
  v92 = v183;
LABEL_63:
  v155 = v160;
  sub_1000D2A70(v209 + *(v131 + 32), v160, &unk_1016AA510, &unk_101393150);
  v156 = (*(v174 + 48))(v155, 1, v175);
  v157 = v200;
  if (v156 == 1)
  {

    (*(v181 + 8))(v92, v182);
    v157(v97, v94);
    sub_10000B3A8(v155, &unk_1016AA510, &unk_101393150);
  }

  else
  {
    v158 = v155;
    v159 = v172;
    sub_1000345B4(v158, v172, type metadata accessor for DeviceEvent.AttachmentInfo);
    sub_100229030(v159, v42, v196);

    sub_100034434(v159, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v181 + 8))(v92, v182);
    v157(v97, v94);
  }

  return v42;
}

uint64_t sub_1002274AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v108 = a2;
  v98 = a1;
  v97 = type metadata accessor for DeviceEvent.Location(0);
  v4 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v92 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Date();
  v94 = *(v99 - 8);
  v6 = *(v94 + 64);
  __chkstk_darwin(v99);
  v93 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Update();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OnConflict();
  v102 = *(v13 - 8);
  v103 = v13;
  v14 = *(v102 + 64);
  __chkstk_darwin(v13);
  v101 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Insert();
  v95 = *(v96 - 8);
  v16 = *(v95 + 64);
  __chkstk_darwin(v96);
  v100 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v18 = *(v106 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v106);
  v21 = &v74 - v20;
  v22 = type metadata accessor for Table();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v104 = &v74 - v29;
  v107 = a3;
  if (!sub_100027FA4())
  {
    sub_10020223C();
    swift_allocError();
    *v42 = 2;
    *(v42 + 4) = 1;
    return swift_willThrow();
  }

  v86 = v9;
  v30 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation;
  if (qword_101695380 != -1)
  {
    swift_once();
  }

  v88 = v12;
  v87 = v8;
  v31 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v32 = sub_1000076D4(v31, qword_10177CA28);
  v109[0] = v108;
  v91 = v32;
  == infix<A>(_:_:)();
  v90 = v30;
  QueryType.filter(_:)();
  v33 = *(v18 + 8);
  v89 = v21;
  v85 = v18 + 8;
  v84 = v33;
  v33(v21, v106);
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v35 = sub_1000076D4(v34, qword_10177C9C8);
  v109[3] = v34;
  v109[4] = sub_1000041A4(&qword_101699E58, &qword_101699D78, &unk_1013BF4B0);
  v36 = sub_1000280DC(v109);
  (*(*(v34 - 8) + 16))(v36, v35, v34);
  v110[3] = v22;
  v110[4] = &protocol witness table for Table;
  sub_1000280DC(v110);
  SchemaType.select(_:_:)();
  v39 = *(v23 + 8);
  v38 = v23 + 8;
  v37 = v39;
  v39(v26, v22);
  sub_100007BAC(v109);
  v40 = v105;
  Connection.prepare(_:)();
  if (v40)
  {

    return sub_100007BAC(v110);
  }

  v83 = v35;
  v81 = v37;
  v82 = v38;
  v105 = 0;
  sub_100007BAC(v110);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  v43 = v104;
  dispatch thunk of _AnyIteratorBoxBase.next()();

  v44 = type metadata accessor for Row();
  if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
  {
    (*(v102 + 104))(v101, enum case for OnConflict.replace(_:), v103);
    v45 = sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v46 = *(type metadata accessor for Setter() - 8);
    v47 = *(v46 + 72);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v77 = *(v46 + 80);
    v78 = v45;
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10138C0D0;
    v79 = v48;
    v80 = v49;
    v110[0] = v108;
    <- infix<A>(_:_:)();
    if (qword_101695348 != -1)
    {
      swift_once();
    }

    v50 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
    sub_1000076D4(v50, qword_10177C980);
    v51 = v98;
    v110[0] = *v98;
    <- infix<A>(_:_:)();
    v76 = v34;
    if (qword_101695350 != -1)
    {
      swift_once();
    }

    v75 = v26;
    sub_1000076D4(v50, qword_10177C998);
    v110[0] = v51[1];
    <- infix<A>(_:_:)();
    v52 = v89;
    if (qword_101695358 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v50, qword_10177C9B0);
    v110[0] = v51[2];
    <- infix<A>(_:_:)();
    v53 = v51 + *(v97 + 28);
    <- infix<A>(_:_:)();
    v55 = v100;
    v54 = v101;
    QueryType.insert(or:_:)();

    (*(v102 + 8))(v54, v103);
    v56 = v105;
    Connection.run(_:)();
    if (v56)
    {
      (*(v95 + 8))(v55, v96);

      return sub_10000B3A8(v104, &qword_101699D68, &unk_1013B6450);
    }

    v110[0] = v108;
    == infix<A>(_:_:)();
    v57 = v75;
    QueryType.filter(_:)();
    v84(v52, v106);
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101695378 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v76, qword_10177CA10);
    v58 = v93;
    static Date.trustedNow.getter(v93);
    v59 = v99;
    <- infix<A>(_:_:)();
    (*(v94 + 8))(v58, v59);
    QueryType.update(_:)();

    v81(v57, v22);
    Connection.run(_:)();
    v60 = v98;
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177A5C0);
    v62 = v92;
    sub_10001BA68(v60, v92, type metadata accessor for DeviceEvent.Location);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v97;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v110[0] = v68;
      *v67 = 136446466;
      v69 = *(v66 + 28);
      sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      sub_100034434(v62, type metadata accessor for DeviceEvent.Location);
      v73 = sub_1000136BC(v70, v72, v110);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2048;
      *(v67 + 14) = v108;
      _os_log_impl(&_mh_execute_header, v63, v64, "Updated location for device event ts: %{public}s (eventId=%lld).", v67, 0x16u);
      sub_100007BAC(v68);
    }

    else
    {

      sub_100034434(v62, type metadata accessor for DeviceEvent.Location);
    }

    (*(v86 + 8))(v88, v87);
    (*(v95 + 8))(v100, v96);
  }

  else
  {
  }

  return sub_10000B3A8(v104, &qword_101699D68, &unk_1013B6450);
}

uint64_t sub_1002283A4(uint64_t a1, uint64_t a2)
{
  v23[6] = a2;
  v2 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Table();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v22 = &v21 - v13;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v14, qword_10177C788);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v3 + 8))(v6, v2);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v15, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v16 = v22;
  QueryType.order(_:)();

  v17 = *(v8 + 8);
  v17(v12, v7);
  v23[3] = v7;
  v23[4] = &protocol witness table for Table;
  v18 = sub_1000280DC(v23);
  (*(v8 + 16))(v18, v16, v7);
  v19 = sub_10021E704();
  v17(v16, v7);
  sub_100007BAC(v23);
  return v19;
}

uint64_t sub_100228740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v43 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v43);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v41 = &v39 - v11;
  __chkstk_darwin(v10);
  v42 = &v39 - v12;
  v13 = type metadata accessor for Table();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  v15 = __chkstk_darwin(v13);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v46 = &v39 - v17;
  v18 = *(a2 + 16);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v39 = a1;
    v40 = v9;
    v48[0] = _swiftEmptyArrayStorage;
    sub_101123D1C(0, v18, 0);
    v19 = v48[0];
    v20 = (a2 + 32);
    v21 = *(v48[0] + 16);
    do
    {
      v23 = *v20++;
      v22 = v23;
      v48[0] = v19;
      v24 = v19[3];
      if (v21 >= v24 >> 1)
      {
        sub_101123D1C((v24 > 1), v21 + 1, 1);
        v19 = v48[0];
      }

      v19[2] = v21 + 1;
      *(v19 + v21++ + 32) = v22;
      --v18;
    }

    while (v18);
    v9 = v40;
  }

  v40 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v25, qword_10177C788);
  type metadata accessor for UUID();
  v26 = v41;
  == infix<A>(_:_:)();
  v48[0] = v19;
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v27, qword_10177C9E0);
  sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
  sub_1000041A4(&qword_101699E20, &unk_10169BA40, &unk_1013918E0);
  sub_100028088();
  Collection<>.contains(_:)();

  v28 = v42;
  && infix(_:_:)();
  v29 = *(v5 + 8);
  v30 = v43;
  v29(v9, v43);
  v29(v26, v30);
  v31 = v44;
  QueryType.filter(_:)();
  v29(v28, v30);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v32, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  ExpressionType.desc.getter();
  v33 = v46;
  QueryType.order(_:)();

  v34 = v45;
  v35 = *(v45 + 8);
  v35(v31, v13);
  v48[3] = v13;
  v48[4] = &protocol witness table for Table;
  v36 = sub_1000280DC(v48);
  (*(v34 + 16))(v36, v33, v13);
  v37 = sub_10021E704();
  v35(v33, v13);
  sub_100007BAC(v48);
  return v37;
}

uint64_t sub_100228CEC(uint64_t a1)
{
  v19 = a1;
  v1 = type metadata accessor for Delete();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = type metadata accessor for Table();
  v20 = *(v10 - 8);
  v11 = *(v20 + 64);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100027FA4())
  {
    v18 = v1;
    v17[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_keySyncMetadata;
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v14, qword_10177C788);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    (*(v6 + 8))(v9, v5);
    QueryType.delete()();
    Connection.run(_:)();

    (*(v21 + 8))(v4, v18);
    return (*(v20 + 8))(v13, v10);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100229030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v6 = type metadata accessor for OnConflict();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Insert();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a3;
  v16 = sub_100027FA4();
  if (v16)
  {
    v39 = v3;
    v40 = v12;
    v41 = v11;
    v42 = v16;
    v37 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo;
    (*(v7 + 104))(v10, enum case for OnConflict.ignore(_:), v6);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    v17 = *(type metadata accessor for Setter() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_10138B360;
    if (qword_101695380 != -1)
    {
      swift_once();
    }

    v38 = v15;
    v20 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v20, qword_10177CA28);
    v36 = a2;
    v45 = a2;
    <- infix<A>(_:_:)();
    if (qword_101695388 != -1)
    {
      swift_once();
    }

    v21 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v21, qword_10177CA40);
    type metadata accessor for UUID();
    v22 = v43;
    <- infix<A>(_:_:)();
    if (qword_101695390 != -1)
    {
      swift_once();
    }

    v23 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
    sub_1000076D4(v23, qword_10177CA58);
    v24 = v22 + *(type metadata accessor for DeviceEvent.AttachmentInfo(0) + 20);
    <- infix<A>(_:_:)();
    type metadata accessor for Table();
    v25 = v38;
    QueryType.insert(or:_:)();

    (*(v7 + 8))(v10, v6);
    v26 = v39;
    Connection.run(_:)();
    if (v26)
    {
      (*(v40 + 8))(v25, v41);
    }

    else
    {
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177A5C0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v36;
      if (v32)
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v30, v31, "Stored attachment info for device event (eventId=%lld).", v34, 0xCu);
      }

      return (*(v40 + 8))(v25, v41);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v28 = 2;
    *(v28 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100229584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v4, qword_10177C788);
  v5 = type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_101695368 != -1)
  {
    swift_once();
  }

  v6 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v6, qword_10177C9E0);
  sub_100028088();
  Row.subscript.getter();
  v7 = sub_1009939B8(v26);
  if (v7 == 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = type metadata accessor for KeySyncMetadata();
  *(a2 + v9[5]) = v8;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v10 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v10, qword_10177C9C8);
  v11 = v9[7];
  v12 = type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v6, qword_10177C7B8);
  Row.get<A>(_:)();
  if (v22)
  {
    goto LABEL_13;
  }

  if (v25 == 1)
  {
    v15 = 1;
  }

  else
  {
    if (v25)
    {
      sub_10022A480();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
LABEL_13:
      v13 = type metadata accessor for Row();
      (*(*(v13 - 8) + 8))(a1, v13);
      (*(*(v5 - 8) + 8))(a2, v5);
      return (*(*(v12 - 8) + 8))(a2 + v11, v12);
    }

    v15 = 0;
  }

  if (qword_1016952A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v16, qword_10177C7A0);
  sub_100029580();
  Row.subscript.getter();
  if (qword_1016952B8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_1000076D4(v17, qword_10177C7D0);
  Row.subscript.getter();
  v18 = (a2 + v9[6]);
  if (v15)
  {
    v18[3] = &type metadata for SecondaryIndex;
    v19 = sub_10022A4D4();
  }

  else if (v24)
  {
    v18[3] = &type metadata for PrimaryWildIndex;
    v19 = sub_10022A528();
  }

  else
  {
    v18[3] = &type metadata for PrimaryIndex;
    v19 = sub_10002A2B8();
  }

  v18[4] = v19;
  *v18 = v23;
  v21 = type metadata accessor for Row();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

uint64_t sub_100229A10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v4 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Date();
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695348 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_1000076D4(v12, qword_10177C980);
  Row.get<A>(_:)();
  if (v2)
  {
    v13 = type metadata accessor for Row();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  else
  {
    *v20 = v21;
    if (qword_101695350 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v12, qword_10177C998);
    Row.get<A>(_:)();
    *(v20 + 1) = v21;
    if (qword_101695358 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v12, qword_10177C9B0);
    Row.get<A>(_:)();
    *(v20 + 2) = v21;
    if (qword_101695360 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v4, qword_10177C9C8);
    type metadata accessor for Table();
    QueryType.subscript.getter();
    Row.get<A>(_:)();

    v15 = type metadata accessor for Row();
    (*(*(v15 - 8) + 8))(a1, v15);
    (*(v19 + 8))(v7, v4);
    v16 = type metadata accessor for DeviceEvent.Location(0);
    return (*(v18 + 32))(&v20[*(v16 + 28)], v11, v8);
  }
}

uint64_t sub_100229E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a2;
  v26 = a3;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101695388 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v19, qword_10177CA40);
  Row.get<A>(_:)();
  if (v3)
  {
    v20 = type metadata accessor for Row();
    (*(*(v20 - 8) + 8))(a1, v20);

    return (*(v15 + 56))(v26, 1, 1, v14);
  }

  else
  {
    (*(v10 + 32))(v18, v13, v9);
    if (qword_101695390 != -1)
    {
      swift_once();
    }

    v21 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
    sub_1000076D4(v21, qword_10177CA58);
    Row.get<A>(_:)();
    v23 = type metadata accessor for Row();
    (*(*(v23 - 8) + 8))(a1, v23);

    sub_1000D2AD8(v8, &v18[*(v14 + 20)], &qword_1016980D0, &unk_10138F3B0);
    v24 = v26;
    sub_10001BA68(v18, v26, type metadata accessor for DeviceEvent.AttachmentInfo);
    (*(v15 + 56))(v24, 0, 1, v14);
    return sub_100034434(v18, type metadata accessor for DeviceEvent.AttachmentInfo);
  }
}

uint64_t sub_10022A2C0()
{
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v0, qword_10177C788);
  type metadata accessor for UUID();
  return Row.subscript.getter();
}

uint64_t sub_10022A388@<X0>(void *a1@<X8>)
{
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v2, qword_10177C770);
  result = Row.subscript.getter();
  *a1 = v4;
  return result;
}

unint64_t sub_10022A42C()
{
  result = qword_101699DF8;
  if (!qword_101699DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DF8);
  }

  return result;
}

unint64_t sub_10022A480()
{
  result = qword_101699E18;
  if (!qword_101699E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E18);
  }

  return result;
}

unint64_t sub_10022A4D4()
{
  result = qword_101699E30;
  if (!qword_101699E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E30);
  }

  return result;
}

unint64_t sub_10022A528()
{
  result = qword_101699E40;
  if (!qword_101699E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E40);
  }

  return result;
}

unint64_t sub_10022A59C()
{
  result = qword_101699E48;
  if (!qword_101699E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E48);
  }

  return result;
}

unint64_t sub_10022A60C()
{
  result = qword_101699E68;
  if (!qword_101699E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699E68);
  }

  return result;
}

unint64_t sub_10022A7B0()
{
  result = qword_101699F10;
  if (!qword_101699F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699F10);
  }

  return result;
}

unint64_t sub_10022A808()
{
  result = qword_101699F18;
  if (!qword_101699F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699F18);
  }

  return result;
}

uint64_t sub_10022A85C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101699F20, &qword_101393398);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_1000BC4D4(&qword_101699F28, &unk_1013933A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v19 = *(v1 + 32);
  v18 = *(v1 + 40);
  v20 = type metadata accessor for UTHardwareColor();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);

  UTType.init(_deviceModelCode:enclosureColor:)();
  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    static UTType._computer.getter();
    if (v21(v9, 1, v10) != 1)
    {
      sub_10022AD10(v9);
    }
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
  }

  static UTType._iPhone.getter();
  v22 = UTType.conforms(to:)();
  v23 = *(v11 + 8);
  v23(v15, v10);
  if (v22 & 1) != 0 || (static UTType._iPad.getter(), v24 = UTType.conforms(to:)(), v23(v15, v10), (v24) || (static UTType._iPodTouch.getter(), v25 = UTType.conforms(to:)(), v23(v15, v10), (v25))
  {
    v23(v17, v10);
    return 1;
  }

  else
  {
    static UTType._appleWatch.getter();
    v27 = UTType.conforms(to:)();
    v23(v15, v10);
    if (v27)
    {
      v23(v17, v10);
      return 2;
    }

    else
    {
      static UTType._appleTV.getter();
      v28 = UTType.conforms(to:)();
      v23(v15, v10);
      if (v28 & 1) != 0 || (static UTType._appleTV.getter(), v29 = UTType.conforms(to:)(), v23(v15, v10), (v29))
      {
        v23(v17, v10);
        return 3;
      }

      else
      {
        static UTType._mac.getter();
        v30 = UTType.conforms(to:)();
        v23(v15, v10);
        v23(v17, v10);
        if (v30)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

BOOL sub_10022AC4C()
{
  v1 = sub_10022A85C();
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
      v2 = *(v0 + 64);
      v3 = *(v0 + 72);

      v4 = sub_10098E9DC(v2, v3);
      return (v4 & &_mh_execute_header) == 0 && v4 > 0xBu;
    }

LABEL_9:
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);

    v9 = sub_10098E9DC(v7, v8);
    return (v9 & &_mh_execute_header) == 0 && v9 > 0xEu;
  }

  v10 = *(v0 + 64);
  v11 = *(v0 + 72);

  v12 = sub_10098E9DC(v10, v11);
  return (v12 & 0xFFF8) != 0 && (v12 & &_mh_execute_header) == 0;
}

uint64_t sub_10022AD10(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699F28, &unk_1013933A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022AD78()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A5D8);
  v1 = sub_1000076D4(v0, qword_10177A5D8);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C0F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10022AE40()
{
  v1 = *v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v1;

  sub_1008CE048(0, 0, v5, &unk_1013933E0, v7);

  return sub_10022D788(v5);
}

uint64_t sub_10022AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a4;
  v5 = type metadata accessor for UUID();
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[33] = v8;
  v9 = *(v8 - 8);
  v4[34] = v9;
  v10 = *(v9 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v11 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  v4[37] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  v4[40] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_10169A070, &qword_1013933F8) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_10169A078, &unk_101393400);
  v4[43] = v16;
  v17 = *(v16 - 8);
  v4[44] = v17;
  v18 = *(v17 + 64) + 15;
  v4[45] = swift_task_alloc();
  v19 = sub_1000BC4D4(&unk_10169A080, &qword_1013E8BC0);
  v4[46] = v19;
  v20 = *(v19 - 8);
  v4[47] = v20;
  v21 = *(v20 + 64) + 15;
  v4[48] = swift_task_alloc();
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v4[49] = v23;
  *v23 = v4;
  v23[1] = sub_10022B25C;

  return daemon.getter();
}

uint64_t sub_10022B25C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 392);
  v12 = *v1;
  *(v3 + 400) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 408) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_100019390(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019390(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_10022B438;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10022B438(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(*v2 + 416) = a1;

  v7 = *(v4 + 400);
  if (v1)
  {

    v8 = sub_10022B590;
    v9 = 0;
  }

  else
  {

    v8 = sub_10022B710;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10022B590()
{
  if (qword_1016944D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A5D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing PencilPairingService!", v4, 2u);
  }

  v5 = v0[48];
  v6 = v0[45];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[32];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10022B710()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  sub_100D7BE70();

  return _swift_task_switch(sub_10022B77C, 0, 0);
}

uint64_t sub_10022B77C()
{
  v1 = v0[48];
  v3 = v0[45];
  v2 = v0[46];
  AsyncStream.makeAsyncIterator()();
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_10022B82C;
  v6 = v0[45];
  v7 = v0[42];
  v8 = v0[43];

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v8);
}

uint64_t sub_10022B82C()
{
  v1 = *(*v0 + 424);
  v3 = *v0;

  return _swift_task_switch(sub_10022B928, 0, 0);
}

uint64_t sub_10022B928()
{
  v1 = v0[42];
  v2 = sub_1000BC4D4(&qword_10169A098, &unk_101393410);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[52];
    v5 = v0[47];
    v4 = v0[48];
    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[43];
    v9 = v0[44];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v10 = v0[48];
    v11 = v0[45];
    v13 = v0[41];
    v12 = v0[42];
    v15 = v0[38];
    v14 = v0[39];
    v17 = v0[35];
    v16 = v0[36];
    v18 = v0[32];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v22 = v0[40];
    v21 = v0[41];
    v0[54] = *v1;
    sub_10022D7F0(v1 + *(v2 + 48), v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v0[73] = *v0[41];
      v23 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v24 = swift_task_alloc();
      v0[74] = v24;
      v25 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
      *v24 = v0;
      v24[1] = sub_10022CE0C;
      v26 = v0[29];
      v27 = sub_10022D860;
      v28 = v0 + 17;
    }

    else
    {
      v30 = v0[38];
      v29 = v0[39];
      v31 = v0[37];
      v32 = v0[34];
      sub_10022D8CC(v0[41], v29);
      sub_10022D930(v29, v30);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = *(v32 + 32);
      v35 = v0[38];
      v37 = v0[32];
      v36 = v0[33];
      v38 = v0[30];
      v39 = (v0[31] + 8);
      if (EnumCaseMultiPayload == 1)
      {
        v34(v0[35], v35, v0[33]);
        v40 = [objc_allocWithZone(SPDiscoveredAccessory) init];
        v0[64] = v40;
        Identifier.id.getter();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v39)(v37, v38);
        [v40 setIdentifier:isa];

        v42 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v43 = swift_task_alloc();
        v0[65] = v43;
        v25 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
        *v43 = v0;
        v43[1] = sub_10022C5F4;
        v26 = v0[29];
        v27 = sub_10022D9F0;
        v28 = v0 + 21;
      }

      else
      {
        v34(v0[36], v35, v0[33]);
        v44 = [objc_allocWithZone(SPDiscoveredAccessory) init];
        v0[55] = v44;
        Identifier.id.getter();
        v45 = UUID._bridgeToObjectiveC()().super.isa;
        (*v39)(v37, v38);
        [v44 setIdentifier:v45];

        v46 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v47 = swift_task_alloc();
        v0[56] = v47;
        v25 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
        *v47 = v0;
        v47[1] = sub_10022BDFC;
        v26 = v0[29];
        v27 = sub_10022D9F0;
        v28 = v0 + 25;
      }
    }

    return withCheckedContinuation<A>(isolation:function:_:)(v28, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, v27, v26, v25);
  }
}

uint64_t sub_10022BDFC()
{
  v1 = *(*v0 + 448);
  v3 = *v0;

  return _swift_task_switch(sub_10022BEF8, 0, 0);
}

uint64_t sub_10022BEF8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(v3 + 200);
  if ((v4 & 0xC000000000000001) == 0)
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v9 = v11 & *(v4 + 56);
    *(v3 + 464) = v6;
    *(v3 + 472) = ~v12;
    *(v3 + 456) = v4;
    v10 = 63 - v12;
    goto LABEL_9;
  }

  if (v4 < 0)
  {
    v5 = *(v3 + 200);
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_10022D868();
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = *(v3 + 96);
  v6 = *(v3 + 104);
  v7 = *(v3 + 112);
  v8 = *(v3 + 120);
  v9 = *(v3 + 128);
  *(v3 + 464) = v6;
  *(v3 + 472) = v7;
  *(v3 + 456) = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = v7 + 64;
LABEL_9:
    v13 = v9;
    v14 = v8;
    if (!v9)
    {
      v15 = v10 >> 6;
      v16 = v8;
      while (1)
      {
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v14 >= v15)
        {
          goto LABEL_21;
        }

        v13 = *(v6 + 8 * v14);
        ++v16;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_14:
    v17 = (v13 - 1) & v13;
    v18 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    goto LABEL_15;
  }

  v21 = __CocoaSet.Iterator.next()();
  if (!v21)
  {
    goto LABEL_21;
  }

  *(v3 + 224) = v21;
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  swift_dynamicCast();
  v18 = *(v3 + 216);
  v14 = v8;
  v17 = v9;
LABEL_15:
  *(v3 + 488) = v14;
  *(v3 + 496) = v17;
  *(v3 + 480) = v18;
  if (v18)
  {
    v19 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v20 = swift_task_alloc();
    *(v3 + 504) = v20;
    *v20 = v3;
    v20[1] = sub_10022C228;
    a2 = SharingCircleWildAdvertisementKey.init(key:);
    a1 = v3 + 208;
    a3 = 0;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_21:
  v23 = *(v3 + 464);
  v22 = *(v3 + 472);
  v24 = *(v3 + 456);
  v25 = *(v3 + 432);
  v35 = *(v3 + 312);
  v26 = *(v3 + 288);
  v28 = *(v3 + 264);
  v27 = *(v3 + 272);

  sub_1000128F8();
  (*(v27 + 8))(v26, v28);
  sub_10022D994(v35);
  v29 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v30 = swift_task_alloc();
  *(v3 + 424) = v30;
  *v30 = v3;
  v30[1] = sub_10022B82C;
  v31 = *(v3 + 360);
  v32 = *(v3 + 336);
  v33 = *(v3 + 344);

  return AsyncStream.Iterator.next(isolation:)(v32, 0, 0, v33);
}

uint64_t sub_10022C228()
{
  v1 = *(*v0 + 504);
  v3 = *v0;

  return _swift_task_switch(sub_10022C324, 0, 0);
}

uint64_t sub_10022C324()
{
  v1 = *(v0 + 480);
  if (*(v0 + 208))
  {
    [*(v0 + 208) discoveredAccessory:*(v0 + 440)];

    v2 = swift_unknownObjectRelease();
  }

  else
  {
    v5 = *(v0 + 480);
  }

  v7 = *(v0 + 488);
  v6 = *(v0 + 496);
  v8 = *(v0 + 456);
  if (v8 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14)
    {
      goto LABEL_17;
    }

    *(v0 + 224) = v14;
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_dynamicCast();
    v13 = *(v0 + 216);
    v10 = v7;
    v12 = v6;
  }

  else
  {
    v9 = *(v0 + 496);
    v10 = *(v0 + 488);
    if (!v6)
    {
      v11 = *(v0 + 488);
      while (1)
      {
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v10 >= ((*(v0 + 472) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v9 = *(*(v0 + 464) + 8 * v10);
        ++v11;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v2, v3, v4);
    }

LABEL_10:
    v12 = (v9 - 1) & v9;
    v13 = *(*(v8 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
  }

  *(v0 + 488) = v10;
  *(v0 + 496) = v12;
  *(v0 + 480) = v13;
  if (v13)
  {
    v15 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v16 = swift_task_alloc();
    *(v0 + 504) = v16;
    *v16 = v0;
    v16[1] = sub_10022C228;
    v3 = SharingCircleWildAdvertisementKey.init(key:);
    v2 = v0 + 208;
    v4 = 0;

    return XPCSession.proxy(errorHandler:)(v2, v3, v4);
  }

LABEL_17:
  v17 = *(v0 + 464);
  v18 = *(v0 + 472);
  v19 = *(v0 + 456);
  v20 = *(v0 + 432);
  v30 = *(v0 + 312);
  v21 = *(v0 + 288);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);

  sub_1000128F8();
  (*(v22 + 8))(v21, v23);
  sub_10022D994(v30);
  v24 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v25 = swift_task_alloc();
  *(v0 + 424) = v25;
  *v25 = v0;
  v25[1] = sub_10022B82C;
  v26 = *(v0 + 360);
  v27 = *(v0 + 336);
  v28 = *(v0 + 344);

  return AsyncStream.Iterator.next(isolation:)(v27, 0, 0, v28);
}