uint64_t sub_10011058C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Schema.RuntimeError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001105F0()
{
  result = type metadata accessor for MetadataError();
  if (v1 <= 0x3F)
  {
    result = sub_1000FCA6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100110678()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataError();
  v3 = sub_100002944(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002958();
  v10 = v9 - v8;
  v11 = type metadata accessor for Schema.RuntimeError();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  sub_100002958();
  v15 = (v14 - v13);
  sub_100110930(v1, v14 - v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v5 + 32))(v10, v15, v2);
      v30 = MetadataError.errorDescription.getter();
      (*(v5 + 8))(v10, v2);
      return v30;
    case 2u:
      v25 = *v15;
      sub_100007304();
      _StringGuts.grow(_:)(28);

      sub_1000081D8();
      goto LABEL_6;
    case 3u:
      v27 = *v15;
      sub_100007304();
      _StringGuts.grow(_:)(40);

      sub_1000081D8();
      v26 = v28 + 12;
LABEL_6:
      v32 = v26;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v29._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v29);

      return v32;
    case 4u:
      v20 = *v15;
      v21 = v15[1];
      sub_100007304();
      _StringGuts.grow(_:)(55);
      v22._countAndFlagsBits = 0x20656C646E7542;
      v22._object = 0xE700000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v20;
      v23._object = v21;
      String.append(_:)(v23);

      v24._countAndFlagsBits = 0xD00000000000002ELL;
      v24._object = 0x8000000100158A80;
      String.append(_:)(v24);
      return v32;
    default:
      v16 = *v15;
      v17 = v15[1];
      sub_100007304();
      _StringGuts.grow(_:)(31);

      sub_1000081D8();
      v32 = v18 + 3;
      v19._countAndFlagsBits = v16;
      v19._object = v17;
      String.append(_:)(v19);

      return v32;
  }
}

uint64_t sub_100110930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Schema.RuntimeError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100110994()
{
  sub_100004DF0();
  v35 = v1;
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v37 = &v33 - v9;
  if (qword_100198450 != -1)
  {
    sub_100007FFC();
  }

  memcpy(v45, &unk_10019C518, sizeof(v45));
  if (qword_100198458 != -1)
  {
    sub_100002DEC();
    swift_once();
  }

  v10 = sub_100003A8C(&qword_10019C5C8);
  v42[0] = v6;
  v42[1] = v4;
  v39 = v11;
  v40 = v10;
  v38 = v12;
  v13 = == infix<A>(_:_:)();
  v15 = v14;
  v17 = v16;
  memcpy(v41, v45, sizeof(v41));
  QueryType.filter(_:)(v13, v15, v17, &type metadata for Table, &protocol witness table for Table, v18, v19, v20, v33, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14], v41[15], v41[16], v41[17], v41[18], v41[19], v41[20], v41[21], v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7]);

  memcpy(v48, v42, sizeof(v48));
  v46 = v43;
  v47 = v44;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10014CE90;
  if (qword_100198460 != -1)
  {
    sub_100007314();
  }

  v41[0] = qword_10019C5E0;
  *&v41[1] = *algn_10019C5E8;
  v22 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v23 = sub_100056DD4();
  ExpressionType.asc.getter(v22, v23, (v21 + 32));

  v42[3] = &type metadata for Table;
  v42[4] = &protocol witness table for Table;
  sub_100003A98();
  v24 = swift_allocObject();
  v42[0] = v24;
  memcpy((v24 + 16), v48, 0x88uLL);
  *(v24 + 152) = v21;
  v25 = v47;
  *(v24 + 160) = v46;
  *(v24 + 176) = v25;
  Connection.prepareRowIterator(_:)(v42);
  sub_1000034F8(v42);
  if (!v0)
  {
    LOBYTE(v41[0]) = 0;
    while (1)
    {
      v26 = Statement.failableNext()();
      if (v27)
      {

        goto LABEL_17;
      }

      if (!v26)
      {
        goto LABEL_17;
      }

      if (v41[0])
      {
        break;
      }

      v28 = objc_autoreleasePoolPush();
      Row.get<A>(_:)();
      v29 = v42[1];
      if (qword_100198468 != -1)
      {
        sub_100007C9C();
        swift_once();
      }

      sub_100003A8C(&qword_10019C5F8);
      Row.get<A>(_:)();
      v34 = v29;

      sub_10011213C();
      v30 = v37;
      v31 = type metadata accessor for URL();
      sub_1000075C4(v30, 1, 1, v31);
      v32 = static LNEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v30);

      v35(v32, v41);

      objc_autoreleasePoolPop(v28);
    }

LABEL_17:
  }

  sub_100004674();
}

void sub_100110E84()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v5 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v61 - v7;
  v9 = sub_10004B2E4(v4, v2);
  if (v0)
  {
LABEL_25:
    sub_100004674();
  }

  else
  {
    v13 = v9;
    v66 = v11;
    v67 = v12;
    v14 = v10;
    v65 = v8;
    if (qword_100198450 != -1)
    {
      sub_100007FFC();
    }

    memcpy(v70, &unk_10019C518, sizeof(v70));
    Table.init(jsonEach:key:)();
    v69[3] = &type metadata for Table;
    v69[4] = &protocol witness table for Table;
    sub_100003A98();
    v69[0] = swift_allocObject();
    memcpy((v69[0] + 16), v75, 0xB0uLL);
    QueryType.join(_:_:on:)();
    sub_1000034F8(v69);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v69[0] = v13;
    v69[1] = v14;
    v15 = == infix<A>(_:_:)();
    v17 = v16;
    v19 = v18;

    memcpy(v68, v71, sizeof(v68));
    QueryType.filter(_:)(v15, v17, v19, &type metadata for Table, &protocol witness table for Table, v20, v21, v22, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7], v69[8]);

    memcpy(v72, v71, sizeof(v72));
    sub_10001970C(v72);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v71[0] = v66;
    v71[1] = v67;
    v23 = == infix<A>(_:_:)();
    v25 = v24;
    v27 = v26;

    memcpy(v68, v69, sizeof(v68));
    QueryType.filter(_:)(v23, v25, v27, &type metadata for Table, &protocol witness table for Table, v28, v29, v30, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7], v69[8]);

    memcpy(v73, v69, sizeof(v73));
    sub_10001970C(v73);
    memcpy(v74, v71, sizeof(v74));
    v71[3] = &type metadata for Table;
    v71[4] = &protocol witness table for Table;
    sub_100003A98();
    v71[0] = swift_allocObject();
    memcpy((v71[0] + 16), v74, 0xB0uLL);
    v31 = Connection.prepareRowIterator(_:)(v71);
    sub_1000034F8(v71);
    v32 = &type metadata for String;
    v66 = sub_10011213C();
    v64 = Dictionary.init(dictionaryLiteral:)();
    for (i = &unk_100198000; ; i = &unk_100198000)
    {
      while (1)
      {
        v34 = Statement.failableNext()();
        if (v35)
        {

          goto LABEL_25;
        }

        if (!v34)
        {

          goto LABEL_25;
        }

        v36 = i[139];

        if (v36 != -1)
        {
          sub_100002DEC();
          swift_once();
        }

        sub_10000390C();
        if (!v36)
        {
          break;
        }
      }

      v67 = v71[0];
      v76 = v71[1];
      if (qword_100198468 != -1)
      {
        sub_100007C9C();
        swift_once();
      }

      sub_100003A8C(&qword_10019C5F8);
      sub_10000390C();
      v37 = v31;
      v38 = v32;

      v39 = type metadata accessor for URL();
      v40 = v65;
      sub_1000075C4(v65, 1, 1, v39);
      v41 = static LNEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v40);

      v63 = v41;
      v42 = v64;
      HIDWORD(v62) = swift_isUniquelyReferenced_nonNull_native();
      v71[0] = v42;
      v43 = sub_10000C2A0(v67, v76);
      v44 = *(v42 + 16);
      LODWORD(v64) = v45;
      v46 = (v45 & 1) == 0;
      v47 = v44 + v46;
      if (__OFADD__(v44, v46))
      {
        break;
      }

      v48 = v43;
      sub_10002EB80(&qword_10019B480, &qword_1001506A0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(SBYTE4(v62), v47))
      {
        v49 = sub_10000C2A0(v67, v76);
        v51 = v64;
        if ((v64 & 1) != (v50 & 1))
        {
          goto LABEL_29;
        }

        v52 = v49;
        v32 = v38;
        v31 = v37;
      }

      else
      {
        v52 = v48;
        v32 = v38;
        v31 = v37;
        v51 = v64;
      }

      if (v51)
      {

        v64 = v71[0];
        v53 = *(v71[0] + 56);
        v67 = *(v53 + 8 * v52);
        v54 = v63;
        *(v53 + 8 * v52) = v63;
      }

      else
      {
        v55 = v71[0];
        *(v71[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v56 = (v55[6] + 16 * v52);
        *v56 = v67;
        v56[1] = v76;
        v57 = v63;
        *(v55[7] + 8 * v52) = v63;

        v58 = v55[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_28;
        }

        v64 = v55;
        v55[2] = v60;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_10011159C()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100198450 != -1)
  {
    sub_100007FFC();
  }

  memcpy(__dst, &unk_10019C518, sizeof(__dst));
  if (qword_100198458 != -1)
  {
    sub_100002DEC();
    swift_once();
  }

  sub_100003A8C(&qword_10019C5C8);
  __src[0] = v8;
  __src[1] = v6;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  if (qword_100198460 != -1)
  {
    sub_100007314();
  }

  sub_100003A8C(&qword_10019C5E0);
  __src[0] = v4;
  v14 = == infix<A>(_:_:)();
  v17 = && infix(_:_:)(v9, v11, v13, v14, v15, v16);
  v19 = v18;
  v21 = v20;

  memcpy(v27, __dst, sizeof(v27));
  QueryType.filter(_:)(v17, v19, v21, &type metadata for Table, &protocol witness table for Table, v22, v23, v24, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v4, v2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v30, __src, sizeof(v30));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  sub_100003A98();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v30, 0xB0uLL);
  v25 = Connection.pluck(_:)(__src);
  sub_1000034F8(__src);
  if (!v0 && v25)
  {
    sub_100111D88();
  }

  sub_100004674();
}

uint64_t sub_100111820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100063A0C(a1, a2, a3, a4, 0x7365697469746E65, 0xE800000000000000, 0xD000000000000010, 0x8000000100154580, 0x656D614E65707974, 0xE800000000000000, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000100158B20);
  if (!v5)
  {
    if (v7)
    {
      sub_10011159C();
      a5 = v9;
    }

    else
    {
      return 0;
    }
  }

  return a5;
}

void sub_100111948()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  if (qword_100198450 != -1)
  {
    sub_100007FFC();
  }

  memcpy(__dst, &unk_10019C518, sizeof(__dst));
  memcpy(v25, &unk_10019C518, sizeof(v25));
  if (qword_100198460 != -1)
  {
    sub_100007314();
  }

  memcpy(v24, __dst, sizeof(v24));
  QueryType.namespace<A>(_:)(qword_10019C5E0, *algn_10019C5E8, qword_10019C5F0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v5, v6, v21, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v24[3] = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v24[4] = &protocol witness table for Expression<A>;
  v24[0] = v8;
  v24[1] = v10;
  v24[2] = v12;
  SchemaType.select(_:_:)(v24, _swiftEmptyArrayStorage, &type metadata for Table, &protocol witness table for Table);
  sub_1000034F8(v24);
  if (v2)
  {
    memcpy(v25, __src, sizeof(v25));
    if (qword_100198458 != -1)
    {
      sub_100002DEC();
      swift_once();
    }

    sub_100003A8C(&qword_10019C5C8);
    v24[0] = v4;
    v24[1] = v2;
    v13 = == infix<A>(_:_:)();
    v15 = v14;
    v17 = v16;
    memcpy(v23, v25, sizeof(v23));
    QueryType.filter(_:)(v13, v15, v17, &type metadata for Table, &protocol witness table for Table, v18, v19, v20, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14]);

    sub_10001970C(v25);
    memcpy(__src, v24, sizeof(__src));
  }

  v25[3] = &type metadata for Table;
  v25[4] = &protocol witness table for Table;
  sub_100003A98();
  v25[0] = swift_allocObject();
  memcpy((v25[0] + 16), __src, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v25);
  sub_1000034F8(v25);
  if (!v0)
  {
    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

uint64_t sub_100111C88()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100111D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v5 = sub_100056DD4();
  return ExpressionType.init(_:)(a3, 0xE800000000000000, v4, v5);
}

uint64_t sub_100111D88()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v7 - v2;
  if (qword_100198458 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v4 = v7[2];
  if (qword_100198468 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_10011213C();
  v5 = type metadata accessor for URL();
  sub_1000075C4(v3, 1, 1, v5);
  static LNEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  sub_1000209B0(v3);

  return v4;
}

uint64_t sub_100111F6C(void *a1)
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

void sub_100112078(void *a1@<X8>)
{
  if (qword_100198460 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (v1)
  {

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = v5;
    v4 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_10011213C()
{
  result = qword_10019AB50;
  if (!qword_10019AB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019AB50);
  }

  return result;
}

uint64_t sub_10011218C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

uint64_t sub_1001121D4()
{
  result = LNEnumMetadata.asJson(prettyPrinted:)(0)._countAndFlagsBits;
  if (!v1)
  {
    if (qword_100198470 != -1)
    {
      sub_1000081EC();
    }

    memcpy(__dst, &unk_10019C610, sizeof(__dst));
    memcpy(__src, &unk_10019C610, sizeof(__src));
    sub_1000196B0(__dst, v7);
    if (qword_100198478 != -1)
    {
      sub_100002E00();
      swift_once();
    }

    sub_100003A8C(&qword_10019C6C0);
    <- infix<A>(_:_:)();
    sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
    *(swift_initStackObject() + 16) = xmmword_10014CE90;
    if (qword_100198488 != -1)
    {
      sub_100007334();
      swift_once();
    }

    sub_100003A8C(&qword_10019C6F0);
    <- infix<A>(_:_:)();

    v2 = QueryType.insert(_:_:)(v7);
    v4 = v3;
    v6 = v5;
    swift_setDeallocating();
    sub_1000B3030();
    sub_10002EBC8(v7);
    memcpy(v10, __src, sizeof(v10));
    sub_10001970C(v10);
    v11.template._countAndFlagsBits = v2;
    v11.template._object = v4;
    v11.bindings._rawValue = v6;
    Connection.run(_:)(v11);
  }

  return result;
}

void sub_1001123EC()
{
  sub_100004DF0();
  v35 = v1;
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v37 = &v33 - v9;
  if (qword_100198470 != -1)
  {
    sub_1000081EC();
  }

  memcpy(v45, &unk_10019C610, sizeof(v45));
  if (qword_100198478 != -1)
  {
    sub_100002E00();
    swift_once();
  }

  v10 = sub_100003A8C(&qword_10019C6C0);
  v42[0] = v6;
  v42[1] = v4;
  v39 = v11;
  v40 = v10;
  v38 = v12;
  v13 = == infix<A>(_:_:)();
  v15 = v14;
  v17 = v16;
  memcpy(v41, v45, sizeof(v41));
  QueryType.filter(_:)(v13, v15, v17, &type metadata for Table, &protocol witness table for Table, v18, v19, v20, v33, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14], v41[15], v41[16], v41[17], v41[18], v41[19], v41[20], v41[21], v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7]);

  memcpy(v48, v42, sizeof(v48));
  v46 = v43;
  v47 = v44;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10014CE90;
  if (qword_100198480 != -1)
  {
    sub_100007CB0();
  }

  v41[0] = qword_10019C6D8;
  *&v41[1] = unk_10019C6E0;
  v22 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v23 = sub_100056DD4();
  ExpressionType.asc.getter(v22, v23, (v21 + 32));

  v42[3] = &type metadata for Table;
  v42[4] = &protocol witness table for Table;
  sub_100003A98();
  v24 = swift_allocObject();
  v42[0] = v24;
  memcpy((v24 + 16), v48, 0x88uLL);
  *(v24 + 152) = v21;
  v25 = v47;
  *(v24 + 160) = v46;
  *(v24 + 176) = v25;
  Connection.prepareRowIterator(_:)(v42);
  sub_1000034F8(v42);
  if (!v0)
  {
    LOBYTE(v41[0]) = 0;
    while (1)
    {
      v26 = Statement.failableNext()();
      if (v27)
      {

        goto LABEL_17;
      }

      if (!v26)
      {
        goto LABEL_17;
      }

      if (v41[0])
      {
        break;
      }

      v28 = objc_autoreleasePoolPush();
      Row.get<A>(_:)();
      v29 = v42[1];
      if (qword_100198488 != -1)
      {
        sub_100007334();
        swift_once();
      }

      sub_100003A8C(&qword_10019C6F0);
      Row.get<A>(_:)();
      v34 = v29;

      sub_100020830();
      v30 = v37;
      v31 = type metadata accessor for URL();
      sub_1000075C4(v30, 1, 1, v31);
      v32 = static LNEnumMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v30);

      v35(v32, v41);

      objc_autoreleasePoolPop(v28);
    }

LABEL_17:
  }

  sub_100004674();
}

void sub_1001128DC()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v5 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v61 - v7;
  v9 = sub_10004B2E4(v4, v2);
  if (v0)
  {
LABEL_25:
    sub_100004674();
  }

  else
  {
    v13 = v9;
    v66 = v11;
    v67 = v12;
    v14 = v10;
    v65 = v8;
    if (qword_100198470 != -1)
    {
      sub_1000081EC();
    }

    memcpy(v70, &unk_10019C610, sizeof(v70));
    Table.init(jsonEach:key:)();
    v69[3] = &type metadata for Table;
    v69[4] = &protocol witness table for Table;
    sub_100003A98();
    v69[0] = swift_allocObject();
    memcpy((v69[0] + 16), v75, 0xB0uLL);
    QueryType.join(_:_:on:)();
    sub_1000034F8(v69);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v69[0] = v13;
    v69[1] = v14;
    v15 = == infix<A>(_:_:)();
    v17 = v16;
    v19 = v18;

    memcpy(v68, v71, sizeof(v68));
    QueryType.filter(_:)(v15, v17, v19, &type metadata for Table, &protocol witness table for Table, v20, v21, v22, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7], v69[8]);

    memcpy(v72, v71, sizeof(v72));
    sub_10001970C(v72);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v71[0] = v66;
    v71[1] = v67;
    v23 = == infix<A>(_:_:)();
    v25 = v24;
    v27 = v26;

    memcpy(v68, v69, sizeof(v68));
    QueryType.filter(_:)(v23, v25, v27, &type metadata for Table, &protocol witness table for Table, v28, v29, v30, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7], v69[8]);

    memcpy(v73, v69, sizeof(v73));
    sub_10001970C(v73);
    memcpy(v74, v71, sizeof(v74));
    v71[3] = &type metadata for Table;
    v71[4] = &protocol witness table for Table;
    sub_100003A98();
    v71[0] = swift_allocObject();
    memcpy((v71[0] + 16), v74, 0xB0uLL);
    v31 = Connection.prepareRowIterator(_:)(v71);
    sub_1000034F8(v71);
    v32 = &type metadata for String;
    v66 = sub_100020830();
    v64 = Dictionary.init(dictionaryLiteral:)();
    for (i = &unk_100198000; ; i = &unk_100198000)
    {
      while (1)
      {
        v34 = Statement.failableNext()();
        if (v35)
        {

          goto LABEL_25;
        }

        if (!v34)
        {

          goto LABEL_25;
        }

        v36 = i[143];

        if (v36 != -1)
        {
          sub_100002E00();
          swift_once();
        }

        sub_10000390C();
        if (!v36)
        {
          break;
        }
      }

      v67 = v71[0];
      v76 = v71[1];
      if (qword_100198488 != -1)
      {
        sub_100007334();
        swift_once();
      }

      sub_100003A8C(&qword_10019C6F0);
      sub_10000390C();
      v37 = v31;
      v38 = v32;

      v39 = type metadata accessor for URL();
      v40 = v65;
      sub_1000075C4(v65, 1, 1, v39);
      v41 = static LNEnumMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v40);

      v63 = v41;
      v42 = v64;
      HIDWORD(v62) = swift_isUniquelyReferenced_nonNull_native();
      v71[0] = v42;
      v43 = sub_10000C2A0(v67, v76);
      v44 = *(v42 + 16);
      LODWORD(v64) = v45;
      v46 = (v45 & 1) == 0;
      v47 = v44 + v46;
      if (__OFADD__(v44, v46))
      {
        break;
      }

      v48 = v43;
      sub_10002EB80(&qword_10019B490, &qword_10014EE48);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(SBYTE4(v62), v47))
      {
        v49 = sub_10000C2A0(v67, v76);
        v51 = v64;
        if ((v64 & 1) != (v50 & 1))
        {
          goto LABEL_29;
        }

        v52 = v49;
        v32 = v38;
        v31 = v37;
      }

      else
      {
        v52 = v48;
        v32 = v38;
        v31 = v37;
        v51 = v64;
      }

      if (v51)
      {

        v64 = v71[0];
        v53 = *(v71[0] + 56);
        v67 = *(v53 + 8 * v52);
        v54 = v63;
        *(v53 + 8 * v52) = v63;
      }

      else
      {
        v55 = v71[0];
        *(v71[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v56 = (v55[6] + 16 * v52);
        *v56 = v67;
        v56[1] = v76;
        v57 = v63;
        *(v55[7] + 8 * v52) = v63;

        v58 = v55[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_28;
        }

        v64 = v55;
        v55[2] = v60;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_100112FF4()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100198470 != -1)
  {
    sub_1000081EC();
  }

  memcpy(__dst, &unk_10019C610, sizeof(__dst));
  if (qword_100198478 != -1)
  {
    sub_100002E00();
    swift_once();
  }

  sub_100003A8C(&qword_10019C6C0);
  __src[0] = v8;
  __src[1] = v6;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  if (qword_100198480 != -1)
  {
    sub_100007CB0();
  }

  sub_100003A8C(&qword_10019C6D8);
  __src[0] = v4;
  v14 = == infix<A>(_:_:)();
  v17 = && infix(_:_:)(v9, v11, v13, v14, v15, v16);
  v19 = v18;
  v21 = v20;

  memcpy(v27, __dst, sizeof(v27));
  QueryType.filter(_:)(v17, v19, v21, &type metadata for Table, &protocol witness table for Table, v22, v23, v24, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v4, v2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v30, __src, sizeof(v30));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  sub_100003A98();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v30, 0xB0uLL);
  v25 = Connection.pluck(_:)(__src);
  sub_1000034F8(__src);
  if (!v0 && v25)
  {
    sub_100020474();
  }

  sub_100004674();
}

uint64_t sub_100113278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100063A0C(a1, a2, a3, a4, 0x736D756E65, 0xE500000000000000, 0xD000000000000010, 0x8000000100154580, 0x696669746E656469, 0xEA00000000007265, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000100158B20);
  if (!v5)
  {
    if (v7)
    {
      sub_100112FF4();
      a5 = v9;
    }

    else
    {
      return 0;
    }
  }

  return a5;
}

uint64_t sub_1001133F4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10011349C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1001134E4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  if (qword_100198308 != -1)
  {
    sub_100002CBC();
  }

  v12 = type metadata accessor for Logger();
  sub_10000347C(v12, qword_10019E050);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v23 = v14;
    v15 = swift_slowAlloc();
    v25[0] = sub_100004B3C();
    *v15 = 67109634;
    *(v15 + 4) = a5 & 1;
    *(v15 + 8) = 2080;
    *(v15 + 10) = sub_100004C50(a1, a2, v25);
    *(v15 + 18) = 2080;
    v24[0] = a3;
    v24[1] = a4;

    sub_10002EB80(&unk_100199100, &qword_10014E230);
    v16 = String.init<A>(describing:)();
    v18 = sub_100004C50(v16, v17, v25);

    *(v15 + 20) = v18;
    _os_log_impl(&_mh_execute_header, v13, v23, "Setting isObserved status to %{BOOL}d for: %s/%s", v15, 0x1Cu);
    swift_arrayDestroy();
    sub_1000036AC();
    sub_1000067A0();
  }

  else
  {
  }

  v20 = *(v6 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  __chkstk_darwin(v19);
  os_unfair_lock_lock((v20 + 24));
  sub_100115DC8((v20 + 16), v24);
  os_unfair_lock_unlock((v20 + 24));
  v21 = v24[0];
  sub_1000C0A28();
  if (*(v21 + 16))
  {
    sub_100104254(a1, a2, a3, a4, v21);
  }
}

uint64_t sub_1001137B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(sub_1001137DC, 0, 0);
}

uint64_t sub_1001137DC()
{
  v58 = v0;
  if (qword_100198308 != -1)
  {
    sub_100002CBC();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000347C(v3, qword_10019E050);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = sub_1000056E4();
    v57[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100004C50(v9, v8, v57);
    *(v10 + 12) = 2048;
    *(v10 + 14) = sub_1000232F4(v7);

    _os_log_impl(&_mh_execute_header, v4, v5, "Received events for %s: %ld", v10, 0x16u);
    sub_1000034F8(v11);
    sub_1000067A0();
    sub_1000036AC();
  }

  else
  {
    v12 = *(v0 + 112);
  }

  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v13 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  v18 = swift_task_alloc();
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v13;
  v18[5] = v14;
  os_unfair_lock_lock((v17 + 24));
  sub_100115D04((v17 + 16), v57);
  os_unfair_lock_unlock((v17 + 24));
  v19 = v57[0];
  *(v0 + 136) = v57[0];

  v20 = *(v19 + 32);
  *(v0 + 192) = v20;
  v21 = -1;
  v22 = -1 << v20;
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  if ((v21 & *(v19 + 64)) != 0)
  {
    v23 = 0;
    v24 = *(v0 + 136);
  }

  else
  {
    v25 = 0;
    v26 = ((63 - v22) >> 6) - 1;
    v24 = *(v0 + 136);
    do
    {
      if (v26 == v25)
      {

        v37 = *(v0 + 8);
        sub_10000783C();

        __asm { BRAA            X1, X16 }
      }

      v23 = v25 + 1;
    }

    while (!*(v24 + 8 * v25++ + 72));
  }

  sub_100007348(v24, v23);
  swift_bridgeObjectRetain_n();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v32 = sub_1000056E4();
    *(v0 + 88) = sub_100004B3C();
    v33 = sub_100008938(4.8152e-34);
    v34 = sub_100005014(v33);
    sub_1000111B4(v34);
    if (v35)
    {
      v36 = *(v19 + 16);
    }

    else
    {
      v36 = sub_100003C88();
    }

    *(v32 + 24) = v36;

    sub_100006B34(&_mh_execute_header, v40, v41, "%s: Sending events to %s: %ld");
    swift_arrayDestroy();
    sub_1000067A0();
    sub_1000036AC();
  }

  else
  {

    v30 = v19 & 0xC000000000000001;
  }

  type metadata accessor for AppNotificationEventListenerClient();
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  *(inited + 16) = v15;
  *(inited + 24) = 0;
  if (v30)
  {
    v43 = sub_100003C88();
    if (v43)
    {
      goto LABEL_24;
    }

LABEL_27:

    v44 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v43 = *(v19 + 16);
  if (!v43)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v43 < 1)
  {
    v44 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    v44 = swift_allocObject();
    v45 = j__malloc_size(v44);
    sub_100003934(v45);
  }

  sub_100009A70();
  v47 = v46;
  v48 = *(v0 + 16);
  v49 = *(v0 + 24);
  v50 = *(v0 + 32);
  v51 = *(v0 + 40);
  v52 = *(v0 + 48);
  result = sub_100014464();
  if (v47 != v43)
  {
    __break(1u);
    return result;
  }

LABEL_30:
  *(v0 + 168) = v44;
  v54 = swift_task_alloc();
  *(v0 + 176) = v54;
  *v54 = v0;
  sub_10000820C(v54);
  sub_10000783C();

  return sub_10010F394(v55);
}

uint64_t sub_100113C34()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);

  if (v0)
  {
    v6 = sub_10011403C;
  }

  else
  {
    v6 = sub_100113D68;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100113D68()
{
  v4 = *(v2 + 160);
  swift_setDeallocating();
  v5 = *(v4 + 24);

  v7 = *(v2 + 152);
  if (((*(v2 + 144) - 1) & *(v2 + 144)) != 0)
  {
    result = *(v2 + 136);
LABEL_7:
    sub_100007348(result, v7);
    swift_bridgeObjectRetain_n();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v2 + 96);
      v11 = *(v2 + 104);
      v13 = sub_1000056E4();
      *(v2 + 88) = sub_100004B3C();
      v14 = sub_100008938(4.8152e-34);
      v15 = sub_100005014(v14);
      sub_1000111B4(v15);
      if (v16)
      {
        v17 = *(v0 + 16);
      }

      else
      {
        v17 = sub_100003C88();
      }

      *(v13 + 24) = v17;

      sub_100006B34(&_mh_execute_header, v19, v20, "%s: Sending events to %s: %ld");
      swift_arrayDestroy();
      sub_1000067A0();
      sub_1000036AC();
    }

    else
    {

      v11 = v0 & 0xC000000000000001;
    }

    type metadata accessor for AppNotificationEventListenerClient();
    inited = swift_initStackObject();
    *(v2 + 160) = inited;
    *(inited + 16) = v3;
    *(inited + 24) = v1;
    if (v11)
    {
      v22 = sub_100003C88();
      if (v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = *(v0 + 16);
      if (v22)
      {
LABEL_18:
        if (v22 < 1)
        {
          v23 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
          v23 = swift_allocObject();
          v24 = j__malloc_size(v23);
          sub_100003934(v24);
        }

        sub_100009A70();
        v26 = v25;
        v27 = *(v2 + 16);
        v28 = *(v2 + 24);
        v29 = *(v2 + 32);
        v30 = *(v2 + 40);
        v31 = *(v2 + 48);
        result = sub_100014464();
        if (v26 != v22)
        {
LABEL_28:
          __break(1u);
          return result;
        }

        goto LABEL_24;
      }
    }

    v23 = _swiftEmptyArrayStorage;
LABEL_24:
    *(v2 + 168) = v23;
    v32 = swift_task_alloc();
    *(v2 + 176) = v32;
    *v32 = v2;
    v33 = sub_10000820C();

    return sub_10010F394(v33);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    result = *(v2 + 136);
    if (v8 >= (((1 << *(v2 + 192)) + 63) >> 6))
    {
      break;
    }

    ++v7;
    if (*(result + 8 * v8 + 64))
    {
      v7 = v8;
      goto LABEL_7;
    }
  }

  v18 = *(v2 + 8);

  return v18();
}

uint64_t sub_10011403C()
{
  v1 = v0[20];
  v2 = v0[17];

  swift_setDeallocating();
  v3 = *(v1 + 24);

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

void *sub_1001140B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_100002958();
  v57 = v12 - v11;
  v13 = type metadata accessor for UUID();
  v14 = sub_100002944(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100002958();
  v21 = v20 - v19;
  v22 = &_swiftEmptySetSingleton;
  v61 = &_swiftEmptySetSingleton;
  v53 = *(a3 + 16);
  if (!v53)
  {
    v23 = *(a4 + 16);
    if (v23)
    {
      v52 = a5;
      v58[0] = _swiftEmptyArrayStorage;
      v24 = v9;
      sub_1000B38D4(0, v23, 0);
      v25 = _swiftEmptyArrayStorage;
      v26 = *(v24 + 80);
      sub_100018504();
      v51 = a4;
      v28 = a4 + v27;
      v56 = *(v24 + 72);
      v29 = (v16 + 32);
      do
      {
        sub_10004092C(v28, v57);
        v30 = *v29;
        (*v29)(v21, v57, v13);
        v58[0] = v25;
        v32 = v25[2];
        v31 = v25[3];
        if (v32 >= v31 >> 1)
        {
          sub_1000B38D4(v31 > 1, v32 + 1, 1);
          v25 = v58[0];
        }

        v25[2] = v32 + 1;
        v33 = *(v16 + 80);
        sub_100018504();
        v30(v25 + v34 + *(v16 + 72) * v32, v21, v13);
        v28 += v56;
        --v23;
      }

      while (v23);
      v61 = sub_1000C2E54(v25);
      a5 = v52;
      a4 = v51;
      v22 = &_swiftEmptySetSingleton;
    }
  }

  if (qword_100198308 != -1)
  {
LABEL_23:
    sub_100002CBC();
  }

  v35 = type metadata accessor for Logger();
  sub_10000347C(v35, qword_10019E050);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = sub_1000056E4();
    v39 = v22;
    v40 = sub_1000056E4();
    v58[0] = v40;
    *v38 = 136315650;
    *(v38 + 4) = sub_100004C50(a1, a2, v58);
    *(v38 + 12) = 2048;
    *(v38 + 14) = v53;
    *(v38 + 22) = 2048;
    *(v38 + 24) = *(a4 + 16);

    _os_log_impl(&_mh_execute_header, v36, v37, "%s: # of event listeners %ld # of observation status change clients %ld", v38, 0x20u);
    sub_1000034F8(v40);
    v22 = v39;
    sub_1000036AC();
    sub_1000036AC();
  }

  else
  {
  }

  v60 = v22;
  v22 = (a5 + 64);
  v41 = 1 << *(a5 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  a4 = v42 & *(a5 + 64);
  v43 = (v41 + 63) >> 6;

  v44 = 0;
  if (a4)
  {
    while (1)
    {
      v45 = v44;
LABEL_19:
      v46 = (v45 << 10) | (16 * __clz(__rbit64(a4)));
      v47 = *(a5 + 56);
      v48 = (*(a5 + 48) + v46);
      v49 = v48[1];
      v58[0] = *v48;
      v58[1] = v49;
      v59 = *(v47 + v46);

      sub_100114950(&v60, v58, a1, a2);
      a4 &= a4 - 1;

      v44 = v45;
      if (!a4)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
LABEL_16:
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v45 >= v43)
    {
      break;
    }

    a4 = v22[v45];
    ++v44;
    if (a4)
    {
      goto LABEL_19;
    }
  }

  sub_100114D74(v60);
  return v61;
}

void *sub_100114590(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_100002958();
  v17 = v16 - v15;
  v18 = type metadata accessor for UUID();
  v19 = sub_100002944(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100002958();
  if (*(a5 + 16))
  {
    return &_swiftEmptySetSingleton;
  }

  v49 = a1;
  v51 = v24;
  v28 = *(a6 + 16);
  if (!v28)
  {
    return &_swiftEmptySetSingleton;
  }

  v47 = v26 - v25;
  v48 = v13;
  if (qword_100198308 != -1)
  {
    sub_100002CBC();
  }

  v29 = type metadata accessor for Logger();
  sub_10000347C(v29, qword_10019E050);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v46 = v31;
    v32 = swift_slowAlloc();
    v53 = sub_100004B3C();
    *v32 = 136315906;
    *(v32 + 4) = sub_100004C50(v49, a2, &v53);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_100004C50(a3, a4, &v53);
    *(v32 + 22) = 2048;
    *(v32 + 24) = 0;
    *(v32 + 32) = 2048;
    *(v32 + 34) = v28;

    _os_log_impl(&_mh_execute_header, v30, v46, "%s/%s: # of event listeners %ld # of observation status change clients %ld", v32, 0x2Au);
    swift_arrayDestroy();
    sub_1000036AC();
    sub_1000036AC();
  }

  else
  {
  }

  v33 = v51;
  v53 = _swiftEmptyArrayStorage;
  sub_1000B38D4(0, v28, 0);
  v34 = v53;
  v35 = *(v48 + 80);
  sub_100018504();
  v37 = a6 + v36;
  v50 = *(v38 + 72);
  v39 = (v21 + 32);
  do
  {
    v52 = v28;
    sub_10004092C(v37, v17);
    v40 = *v39;
    v41 = v17;
    (*v39)(v47, v17, v33);
    v53 = v34;
    v43 = *(v34 + 16);
    v42 = *(v34 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1000B38D4(v42 > 1, v43 + 1, 1);
      v34 = v53;
    }

    *(v34 + 16) = v43 + 1;
    v44 = *(v21 + 80);
    sub_100018504();
    v40(v34 + v45 + *(v21 + 72) * v43, v47, v33);
    v37 += v50;
    v28 = v52 - 1;
    v17 = v41;
  }

  while (v52 != 1);
  return sub_1000C2E54(v34);
}

void sub_100114950(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v38 = a1;
  v7 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[1];
  v37 = *a2;
  v17 = a2[3];
  v39 = a2[2];
  v40 = v16;
  v18 = *(v17 + 16);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v35 = a3;
    v36 = a4;
    v44 = _swiftEmptyArrayStorage;
    sub_1000B38D4(0, v18, 0);
    v19 = v44;
    v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v34 = v17;
    v21 = v17 + v20;
    v22 = *(v8 + 72);
    v41 = v12 + 32;
    v42 = v22;
    do
    {
      v23 = v43;
      sub_10004092C(v21, v43);
      (*(v12 + 16))(v15, v23, v11);
      sub_100040990(v23);
      v44 = v19;
      v25 = v19[2];
      v24 = v19[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000B38D4(v24 > 1, v25 + 1, 1);
        v19 = v44;
      }

      v19[2] = v25 + 1;
      (*(v12 + 32))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v15, v11);
      v21 += v42;
      --v18;
    }

    while (v18);
    a3 = v35;
    a4 = v36;
    v17 = v34;
  }

  sub_100114F84(v19);
  v27 = v39;
  v26 = v40;
  if (qword_100198308 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000347C(v28, qword_10019E050);

  v29 = v17;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v32 = 136315906;
    *(v32 + 4) = sub_100004C50(a3, a4, &v44);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_100004C50(v37, v26, &v44);
    *(v32 + 22) = 2048;
    *(v32 + 24) = *(v27 + 16);
    *(v32 + 32) = 2048;
    *(v32 + 34) = *(v29 + 16);

    _os_log_impl(&_mh_execute_header, v30, v31, "%s/%s: # of event listeners %ld # of observation status change clients %ld", v32, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100114D74(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v24 - v9;
  result = __chkstk_darwin(v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_100047FD8();
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100114F84(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v18[1] = a1;
    v15 = a1 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v7, v15, v2);
      sub_100047FD8();
      (*(v11 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_100115110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, int a10)
{
  j = a1;
  v17 = sub_10000E898(a2, a3, *a1);
  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v80 = v20;
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (v17)
  {
    v22 = v19;
  }

  else
  {
    v22 = &_swiftEmptyDictionarySingleton;
  }

  if (a5)
  {
    v79 = a9;
    v23 = sub_1000A0E7C(a4, a5, v22);
    if (v23)
    {
      a9 = v23;
    }

    else
    {
      a9 = _swiftEmptyArrayStorage;
    }

    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
    }

    v83 = a9;
    v74 = a4;
    v76 = a5;
    if (a6)
    {

      v26 = sub_100114590(a2, a3, a4, a5, a9, v25);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_19:
        v27 = a9[2];
        if (v27 >= a9[3] >> 1)
        {
          sub_100070F2C();
          a9 = v62;
        }

        a9[2] = v27 + 1;
        v28 = &a9[3 * v27];
        v28[4] = a7;
        v28[5] = a8;
        *(v28 + 12) = a10;
        goto LABEL_54;
      }

LABEL_82:
      v60 = a9[2];
      sub_100070F2C();
      a9 = v61;
      goto LABEL_19;
    }

    if (!a9[2])
    {
      v26 = &_swiftEmptySetSingleton;
LABEL_54:
      swift_isUniquelyReferenced_nonNull_native();
      sub_10006971C();
      a9 = v79;
      goto LABEL_77;
    }

    swift_bridgeObjectRetain_n();
    result = sub_100115D24(a9, a7, a8);
    if (v33)
    {
      v26 = a9[2];
LABEL_52:

      a7 = v80;
      if (a9[2] < v26)
      {
        goto LABEL_85;
      }

      sub_1000F5628();
      v26 = sub_100114590(a2, a3, v74, v76, v83, v25);
      goto LABEL_54;
    }

    v26 = result;
    v66 = j;
    j = result + 1;
    if (!__OFADD__(result, 1))
    {
      v68 = v22;
      for (i = 3 * result; ; i += 3)
      {
        v36 = a9[2];
        if (j == v36)
        {
          j = v66;
          v22 = v68;
          goto LABEL_52;
        }

        if (j >= v36)
        {
          break;
        }

        v38 = a9[i + 7];
        v37 = a9[i + 8];
        if (v38 != a7 || v37 != a8)
        {
          v40 = a9[i + 7];
          v41 = a9[i + 8];
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (j != v26)
            {
              if (v26 >= v36)
              {
                goto LABEL_80;
              }

              v42 = &a9[3 * v26 + 4];
              v71 = *(v42 + 8);
              v72 = *v42;
              v70 = *(v42 + 16);
              a10 = a9[i + 9];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1000F5248(a9);
                a9 = v47;
              }

              v43 = &a9[3 * v26];
              v44 = v43[5];
              v43[4] = v38;
              v43[5] = v37;
              *(v43 + 12) = a10;

              if (j >= a9[2])
              {
                goto LABEL_81;
              }

              v45 = &a9[i];
              v46 = a9[i + 8];
              v45[7] = v72;
              v45[8] = v71;
              *(v45 + 18) = v70;

              v83 = a9;
            }

            ++v26;
          }
        }

        ++j;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    goto LABEL_88;
  }

  v84 = v21;
  v29 = v21;
  if (a6)
  {
    v79 = a9;

    v26 = sub_1001140B4(a2, a3, v29, v80, v22);
    v22 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_24;
  }

  if (!v21[2])
  {
    v26 = &_swiftEmptySetSingleton;
    goto LABEL_77;
  }

  swift_bridgeObjectRetain_n();

  result = sub_100115D24(v29, a7, a8);
  if (v34)
  {
    v26 = *(v29 + 16);
LABEL_74:

    if (*(v29 + 16) >= v26)
    {
      sub_1000F5628();

      v26 = sub_1001140B4(a2, a3, v84, v80, v22);

      goto LABEL_76;
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v26 = result;
  v67 = j;
  v69 = v22;
  v79 = a9;
  v22 = (result + 1);
  if (__OFADD__(result, 1))
  {
LABEL_89:
    __break(1u);
    return result;
  }

  for (j = 24 * result; ; j += 24)
  {
    v48 = *(v29 + 16);
    if (v22 == v48)
    {
      a9 = v79;
      j = v67;
      v22 = v69;
      goto LABEL_74;
    }

    if (v22 >= v48)
    {
      goto LABEL_79;
    }

    v49 = *(v29 + j + 56);
    a9 = *(v29 + j + 64);
    if (v49 != a7 || a9 != a8)
    {
      v51 = *(v29 + j + 56);
      v52 = *(v29 + j + 64);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }
    }

LABEL_72:
    v22 = (v22 + 1);
  }

  if (v22 == v26)
  {
LABEL_71:
    ++v26;
    goto LABEL_72;
  }

  if (v26 < v48)
  {
    v53 = v29 + 32 + 24 * v26;
    v75 = *(v53 + 8);
    v77 = *v53;
    v73 = *(v53 + 16);
    a10 = *(v29 + j + 72);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000F5248(v29);
      v29 = v58;
    }

    v54 = v29 + 24 * v26;
    v55 = *(v54 + 40);
    *(v54 + 32) = v49;
    *(v54 + 40) = a9;
    *(v54 + 48) = a10;

    if (v22 >= *(v29 + 16))
    {
      goto LABEL_84;
    }

    v56 = v29 + j;
    v57 = *(v29 + j + 64);
    *(v56 + 56) = v77;
    *(v56 + 64) = v75;
    *(v56 + 72) = v73;

    v84 = v29;
    goto LABEL_71;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  v63 = v22[2];
  sub_100070F2C();
  v29 = v64;
LABEL_24:
  v30 = *(v29 + 16);
  if (v30 >= *(v29 + 24) >> 1)
  {
    sub_100070F2C();
    v29 = v65;
  }

  *(v29 + 16) = v30 + 1;
  v31 = v29 + 24 * v30;
  *(v31 + 32) = a7;
  *(v31 + 40) = a8;
  *(v31 + 48) = a10;
  a9 = v79;
LABEL_76:

LABEL_77:

  v59 = *j;
  swift_isUniquelyReferenced_nonNull_native();
  v85 = *j;
  sub_1000695E0();

  *j = v85;
  *a9 = v26;
  return result;
}

void *sub_1001157E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_1000C2FE4(v5);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100069958();

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyDictionarySingleton;
}

void sub_10011589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *(a1 + 16);
  if (!v29)
  {

    return;
  }

  v6 = a6;
  v10 = sub_1000232F4(a6);
  v28 = a1 + 32;
  v34 = v6 & 0xC000000000000001;
  v11 = v6 & 0xFFFFFFFFFFFFFF8;

  v12 = 0;
  do
  {
    v13 = (v28 + 24 * v12);
    v31 = *v13;
    v32 = v12 + 1;
    v33 = v13[1];

    for (i = 0; v10 != i; ++i)
    {
      if (v34)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v11 + 16))
        {
          goto LABEL_28;
        }

        v15 = *(v6 + 8 * i + 32);
      }

      v16 = v15;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      v17 = v6;
      v18 = [v15 entityType];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v19 == a3 && v21 == a4)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_17:
      v6 = v17;
    }

    sub_1000C2FE4(_swiftEmptyArrayStorage);
    v26 = v25;
    if (sub_1000FED28())
    {
    }

    else
    {

      v27 = sub_1000B6334(v31, v33, a5);

      if (v27)
      {
        sub_10003550C(v27, v26);
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100069958();
    }

    v12 = v32;
  }

  while (v32 != v29);
}

uint64_t sub_100115B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = sub_10000E898(a2, a3, *a1);
  if (v7)
  {
    v9 = v8;
    v31 = a5;
    v32 = a4;
    v10 = sub_1001157E0(v7);

    v11 = 0;
    v13 = v9 + 64;
    v12 = *(v9 + 64);
    v33 = v9;
    v14 = *(v9 + 32);
    v15 = v10;
    v16 = 1 << v14;
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v12;
    v19 = (v16 + 63) >> 6;
    if ((v17 & v12) != 0)
    {
      do
      {
        v20 = v11;
        result = v33;
LABEL_11:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = (v20 << 10) | (16 * v22);
        v24 = (*(result + 48) + v23);
        v25 = *v24;
        v26 = v24[1];
        v27 = (*(result + 56) + v23);
        v28 = *v27;
        v29 = v27[1];

        sub_10011589C(v28, v29, v25, v26, v15, v32);
        v15 = v30;
      }

      while (v18);
    }

    result = v33;
    while (1)
    {
      v20 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20 >= v19)
      {

        a5 = v31;
        goto LABEL_15;
      }

      v18 = *(v13 + 8 * v20);
      ++v11;
      if (v18)
      {
        v11 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    sub_10002EB80(&qword_10019C708, &qword_1001521C8);
    result = Dictionary.init(dictionaryLiteral:)();
    v15 = result;
LABEL_15:
    *a5 = v15;
  }

  return result;
}

uint64_t sub_100115D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 3;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void sub_100115E08()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100198490 != -1)
  {
    sub_100008234();
  }

  memcpy(v33, &unk_10019C710, 0xB0uLL);
  if (v6)
  {
    sub_1000196B0(v33, v31);
    if (qword_100198498 != -1)
    {
      sub_100002E14();
      swift_once();
    }

    sub_100003A8C(&qword_10019C7C0);
    v31[0] = v8;
    v31[1] = v6;
    == infix<A>(_:_:)();
    memcpy(v30, v33, sizeof(v30));
    v9 = sub_100003950();
    QueryType.filter(_:)(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14]);

    sub_10001970C(v33);
    v17 = v31;
  }

  else
  {
    sub_1000196B0(v33, v31);
    v17 = v33;
  }

  memcpy(v32, v17, sizeof(v32));
  if (v2)
  {
    if (qword_1001984B0 != -1)
    {
      swift_once();
    }

    sub_100003A8C(qword_10019C808);
    v30[0] = v4;
    v30[1] = v2;
    v18 = == infix<A>(_:_:)();
    v20 = v19;
    v22 = v21;
    memcpy(v29, v32, sizeof(v29));
    QueryType.filter(_:)(v18, v20, v22, &type metadata for Table, &protocol witness table for Table, v23, v24, v25, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14]);

    sub_10001970C(v32);
    v26 = v30;
  }

  else
  {
    v26 = v32;
  }

  memcpy(v31, v26, sizeof(v31));
  v30[3] = &type metadata for Table;
  v30[4] = &protocol witness table for Table;
  sub_100003A98();
  v30[0] = swift_allocObject();
  memcpy((v30[0] + 16), v31, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v30);
  v27 = sub_1000034F8(v30);
  if (!v0)
  {
    __chkstk_darwin(v27);

    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

void sub_100116160()
{
  sub_100004DF0();
  v43 = v0;
  v37 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  if (qword_100198490 != -1)
  {
    sub_100008234();
  }

  v39 = v10;
  memcpy(v48, &unk_10019C710, sizeof(v48));
  if (qword_100198498 != -1)
  {
    sub_100002E14();
    swift_once();
  }

  v11 = sub_100003A8C(&qword_10019C7C0);
  v45[0] = v6;
  v45[1] = v4;
  v41 = v12;
  v42 = v11;
  v40 = v13;
  v14 = == infix<A>(_:_:)();
  v16 = v15;
  v18 = v17;
  memcpy(v44, v48, sizeof(v44));
  QueryType.filter(_:)(v14, v16, v18, &type metadata for Table, &protocol witness table for Table, v19, v20, v21, v36, v37, v38, v39, v40, v41, v42, v43, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10], v44[11], v44[12], v44[13], v44[14], v44[15], v44[16], v44[17], v44[18], v44[19], v44[20], v44[21], v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7]);

  memcpy(v51, v45, sizeof(v51));
  v49 = v46;
  v50 = v47;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10014CE90;
  if (qword_1001984A0 != -1)
  {
    sub_100007CD0();
  }

  v44[0] = qword_10019C7D8;
  *&v44[1] = unk_10019C7E0;
  v23 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v24 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  ExpressionType.asc.getter(v23, v24, (v22 + 32));

  v45[3] = &type metadata for Table;
  v45[4] = &protocol witness table for Table;
  sub_100003A98();
  v25 = swift_allocObject();
  v45[0] = v25;
  memcpy((v25 + 16), v51, 0x88uLL);
  *(v25 + 152) = v22;
  v26 = v50;
  *(v25 + 160) = v49;
  *(v25 + 176) = v26;
  v27 = v43;
  v28 = Connection.prepareRowIterator(_:)(v45);
  sub_1000034F8(v45);
  if (!v27)
  {
    LOBYTE(v44[0]) = 0;
    v43 = v28;
    while (1)
    {
      v29 = Statement.failableNext()();
      if (v30)
      {

        goto LABEL_17;
      }

      if (!v29)
      {
        goto LABEL_17;
      }

      if (v44[0])
      {
        break;
      }

      v31 = objc_autoreleasePoolPush();
      sub_100003950();
      Row.get<A>(_:)();
      v32 = v45[1];
      if (qword_1001984A8 != -1)
      {
        sub_100007388();
        swift_once();
      }

      sub_100003A8C(&qword_10019C7F0);
      Row.get<A>(_:)();
      v36 = v32;

      sub_100117B70();
      v33 = type metadata accessor for URL();
      v34 = v39;
      sub_1000075C4(v39, 1, 1, v33);
      v35 = static LNQueryMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v34);

      v37(v35, v44);

      objc_autoreleasePoolPop(v31);
    }

LABEL_17:
  }

  sub_100004674();
}

void sub_100116668()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v5 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v61 - v7;
  v9 = sub_10004B2E4(v4, v2);
  if (v0)
  {
LABEL_25:
    sub_100004674();
  }

  else
  {
    v13 = v9;
    v66 = v11;
    v67 = v12;
    v14 = v10;
    v65 = v8;
    if (qword_100198490 != -1)
    {
      sub_100008234();
    }

    memcpy(v70, &unk_10019C710, sizeof(v70));
    Table.init(jsonEach:key:)();
    v69[3] = &type metadata for Table;
    v69[4] = &protocol witness table for Table;
    sub_100003A98();
    v69[0] = swift_allocObject();
    memcpy((v69[0] + 16), v75, 0xB0uLL);
    QueryType.join(_:_:on:)();
    sub_1000034F8(v69);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v69[0] = v13;
    v69[1] = v14;
    v15 = == infix<A>(_:_:)();
    v17 = v16;
    v19 = v18;

    memcpy(v68, v71, sizeof(v68));
    QueryType.filter(_:)(v15, v17, v19, &type metadata for Table, &protocol witness table for Table, v20, v21, v22, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7], v69[8]);

    memcpy(v72, v71, sizeof(v72));
    sub_10001970C(v72);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v71[0] = v66;
    v71[1] = v67;
    v23 = == infix<A>(_:_:)();
    v25 = v24;
    v27 = v26;

    memcpy(v68, v69, sizeof(v68));
    QueryType.filter(_:)(v23, v25, v27, &type metadata for Table, &protocol witness table for Table, v28, v29, v30, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v68[21], v69[0], v69[1], v69[2], v69[3], v69[4], v69[5], v69[6], v69[7], v69[8]);

    memcpy(v73, v69, sizeof(v73));
    sub_10001970C(v73);
    memcpy(v74, v71, sizeof(v74));
    v71[3] = &type metadata for Table;
    v71[4] = &protocol witness table for Table;
    sub_100003A98();
    v71[0] = swift_allocObject();
    memcpy((v71[0] + 16), v74, 0xB0uLL);
    v31 = Connection.prepareRowIterator(_:)(v71);
    sub_1000034F8(v71);
    v32 = &type metadata for String;
    v66 = sub_100117B70();
    v64 = Dictionary.init(dictionaryLiteral:)();
    for (i = &unk_100198000; ; i = &unk_100198000)
    {
      while (1)
      {
        v34 = Statement.failableNext()();
        if (v35)
        {

          goto LABEL_25;
        }

        if (!v34)
        {

          goto LABEL_25;
        }

        v36 = i[147];

        if (v36 != -1)
        {
          sub_100002E14();
          swift_once();
        }

        sub_10000390C();
        if (!v36)
        {
          break;
        }
      }

      v67 = v71[0];
      v76 = v71[1];
      if (qword_1001984A8 != -1)
      {
        sub_100007388();
        swift_once();
      }

      sub_100003A8C(&qword_10019C7F0);
      sub_10000390C();
      v37 = v31;
      v38 = v32;

      v39 = type metadata accessor for URL();
      v40 = v65;
      sub_1000075C4(v65, 1, 1, v39);
      v41 = static LNQueryMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v40);

      v63 = v41;
      v42 = v64;
      HIDWORD(v62) = swift_isUniquelyReferenced_nonNull_native();
      v71[0] = v42;
      v43 = sub_10000C2A0(v67, v76);
      v44 = *(v42 + 16);
      LODWORD(v64) = v45;
      v46 = (v45 & 1) == 0;
      v47 = v44 + v46;
      if (__OFADD__(v44, v46))
      {
        break;
      }

      v48 = v43;
      sub_10002EB80(&qword_10019B4A0, &qword_100150790);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(SBYTE4(v62), v47))
      {
        v49 = sub_10000C2A0(v67, v76);
        v51 = v64;
        if ((v64 & 1) != (v50 & 1))
        {
          goto LABEL_29;
        }

        v52 = v49;
        v32 = v38;
        v31 = v37;
      }

      else
      {
        v52 = v48;
        v32 = v38;
        v31 = v37;
        v51 = v64;
      }

      if (v51)
      {

        v64 = v71[0];
        v53 = *(v71[0] + 56);
        v67 = *(v53 + 8 * v52);
        v54 = v63;
        *(v53 + 8 * v52) = v63;
      }

      else
      {
        v55 = v71[0];
        *(v71[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v56 = (v55[6] + 16 * v52);
        *v56 = v67;
        v56[1] = v76;
        v57 = v63;
        *(v55[7] + 8 * v52) = v63;

        v58 = v55[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_28;
        }

        v64 = v55;
        v55[2] = v60;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_100116D80()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100198490 != -1)
  {
    sub_100008234();
  }

  memcpy(__dst, &unk_10019C710, sizeof(__dst));
  if (qword_100198498 != -1)
  {
    sub_100002E14();
    swift_once();
  }

  sub_100003A8C(&qword_10019C7C0);
  __src[0] = v8;
  __src[1] = v6;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  if (qword_1001984A0 != -1)
  {
    sub_100007CD0();
  }

  sub_100003A8C(&qword_10019C7D8);
  __src[0] = v4;
  __src[1] = v2;
  v14 = == infix<A>(_:_:)();
  && infix(_:_:)(v9, v11, v13, v14, v15, v16);

  memcpy(v25, __dst, sizeof(v25));
  v17 = sub_100003950();
  QueryType.filter(_:)(v17, v18, v19, &type metadata for Table, &protocol witness table for Table, v20, v21, v22, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v28, __src, sizeof(v28));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  sub_100003A98();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v28, 0xB0uLL);
  v23 = Connection.pluck(_:)(__src);
  sub_1000034F8(__src);
  if (!v0 && v23)
  {
    sub_100117934();
  }

  sub_1000111C8();
  sub_100004674();
}

void sub_100116FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100063A0C(a1, a2, a3, a4, 0x73656972657571, 0xE700000000000000, 0xD000000000000010, 0x8000000100154580, 0x6564497972657571, 0xEF7265696669746ELL, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000100158B20);
  if (!v4 && v5)
  {
    sub_100116D80();
  }

  sub_1000111C8();
}

void sub_10011712C()
{
  sub_100004DF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  i = v6;
  v57 = v8;
  if (qword_100198490 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    memcpy(v56, &unk_10019C710, 0xB0uLL);
    if (i)
    {
      sub_1000196B0(v56, v54);
      v9 = i;
      v10 = LNValueType.asJson(prettyPrinted:sortedKeys:)(0, 1);
      v1 = v11;
      if (v11)
      {

        memcpy(v55, v56, sizeof(v55));
        v1 = 0;
      }

      else
      {
        v12 = v3;
        memcpy(v52, v56, sizeof(v52));
        if (qword_1001984B8 != -1)
        {
          swift_once();
        }

        sub_100003A8C(qword_10019C820);
        v54[0] = v10;
        v13 = == infix<A>(_:_:)();
        v15 = v14;
        v17 = v16;

        QueryType.filter(_:)(v13, v15, v17, &type metadata for Table, &protocol witness table for Table, v18, v19, v20, v47, v48, v49, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12]);

        memcpy(v54, v52, sizeof(v54));
        sub_10001970C(v54);
        memcpy(v55, v53, sizeof(v55));
        v3 = v12;
      }
    }

    else
    {
      sub_1000196B0(v56, v54);
      memcpy(v55, v56, sizeof(v55));
    }

    if (v5)
    {
      v21 = v5;
      v22 = LNValueType.asJson(prettyPrinted:sortedKeys:)(0, 1);
      v1 = v23;
      if (v23)
      {

        memcpy(v54, v55, sizeof(v54));
        v1 = 0;
      }

      else
      {
        v24 = v3;
        memcpy(v51, v55, sizeof(v51));
        if (qword_1001984C0 != -1)
        {
          swift_once();
        }

        sub_100003A8C(qword_10019C838);
        v53[0] = v22;
        v25 = == infix<A>(_:_:)();
        v27 = v26;
        v29 = v28;

        QueryType.filter(_:)(v25, v27, v29, &type metadata for Table, &protocol witness table for Table, v30, v31, v32, v47, v48, v49, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12]);

        memcpy(v53, v51, sizeof(v53));
        sub_10001970C(v53);
        memcpy(v54, v52, sizeof(v54));
        v3 = v24;
      }
    }

    else
    {
      memcpy(v54, v55, sizeof(v54));
    }

    v53[1]._object = &type metadata for Table;
    v53[2]._countAndFlagsBits = &protocol witness table for Table;
    sub_100003A98();
    v53[0]._countAndFlagsBits = swift_allocObject();
    memcpy((v53[0]._countAndFlagsBits + 16), v54, 0xB0uLL);
    Connection.prepareRowIterator(_:)(v53);
    v33 = sub_1000034F8(&v53[0]._countAndFlagsBits);
    if (v1)
    {
      break;
    }

    __chkstk_darwin(v33);

    RowIterator.compactMap<A>(_:)();
    v5 = v34;

    v35 = 0;
    v36 = v5[2];
    v37 = v5 + 6;
    v48 = (v5 + 6);
    v49 = _swiftEmptyArrayStorage;
LABEL_19:
    for (i = &v37[3 * v35]; ; i += 3)
    {
      if (v36 == v35)
      {

        goto LABEL_18;
      }

      if (v35 >= v5[2])
      {
        break;
      }

      v38 = *(i - 2);
      v3 = *(i - 1);
      v39 = *i;

      v40 = v39;
      if ((v57 & ~[v40 capabilities]) == 0)
      {
        countAndFlagsBits = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53[0]._countAndFlagsBits = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = v49[2];
          sub_1000B37E4();
          countAndFlagsBits = v53[0]._countAndFlagsBits;
        }

        v37 = v5 + 6;
        v44 = *(countAndFlagsBits + 16);
        v45 = v44 + 1;
        if (v44 >= *(countAndFlagsBits + 24) >> 1)
        {
          v50 = v44 + 1;
          v47 = *(countAndFlagsBits + 16);
          sub_1000B37E4();
          v37 = v5 + 6;
          v45 = v50;
          v44 = v47;
          countAndFlagsBits = v53[0]._countAndFlagsBits;
        }

        ++v35;
        *(countAndFlagsBits + 16) = v45;
        v49 = countAndFlagsBits;
        v46 = (countAndFlagsBits + 24 * v44);
        v46[4] = v38;
        v46[5] = v3;
        v46[6] = v40;
        goto LABEL_19;
      }

      ++v35;
    }

    __break(1u);
LABEL_31:
    sub_100008234();
  }

LABEL_18:
  sub_100004674();
}

uint64_t sub_10011770C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_1001177E0()
{
  sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  sub_1000111C8();
  v3 = sub_100013F04(v0, v1, v2);
  return sub_10000503C(v3);
}

uint64_t sub_1001178C8()
{
  sub_10002EB80(&qword_100199518, &unk_10014ED10);
  sub_1000111C8();
  v3 = sub_100013F04(v0, v1, v2);
  return sub_10000503C(v3);
}

uint64_t sub_100117934()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v7 - v2;
  if (qword_100198498 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v4 = v7[2];
  if (qword_1001984A8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_100117B70();
  v5 = type metadata accessor for URL();
  sub_1000075C4(v3, 1, 1, v5);
  static LNQueryMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  sub_1000209B0(v3);

  return v4;
}

uint64_t sub_100117B18@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_100117B70()
{
  result = qword_10019B2E0;
  if (!qword_10019B2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019B2E0);
  }

  return result;
}

uint64_t sub_100117BB4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

void sub_100117C1C()
{
  sub_100062140();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_100117CE0()
{
  sub_100003E9C(v0 + qword_10019E598, &qword_1001990C0, &unk_10014E200);
  v1 = *(v0 + qword_10019C850 + 8);

  sub_100003E9C(v0 + qword_10019C858, &qword_1001990C0, &unk_10014E200);
  v2 = *(v0 + qword_10019C860);

  v3 = *(v0 + qword_10019C868);

  return v0;
}

uint64_t sub_100117D7C()
{
  v1 = sub_10002EB80(&unk_10019C8F0, &unk_1001522A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  URL.lastPathComponent.getter();
  sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  Regex.wholeMatch(in:)();
  if (v0)
  {

    v5 = sub_10002EB80(&unk_10019C900, &unk_1001522B0);
    sub_1000075C4(v4, 1, 1, v5);
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v6 = sub_10002EB80(&unk_10019C900, &unk_1001522B0);
  v7 = 1;
  if (sub_1000032C4(v4, 1, v6) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_100003E9C(v4, &unk_10019C8F0, &unk_1001522A0);
  return v7;
}

uint64_t sub_100117EE4()
{
  sub_100117CE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100117F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000047D0();
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int sub_100117FF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100118050()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_100117FF8();
}

Swift::Int sub_100118060()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

_BYTE *storeEnumTagSinglePayload for StreamManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001181B4()
{
  result = qword_10019C910;
  if (!qword_10019C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C910);
  }

  return result;
}

unint64_t sub_10011820C()
{
  result = qword_10019C918;
  if (!qword_10019C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C918);
  }

  return result;
}

uint64_t sub_100118268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1001182A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100118320(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v4 = *(a3 + 64);
  v6 = *(a3 + 32);
  sub_100002BE8();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v33 = v12;

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v16 = (*(v33 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
    v17 = v16[1];
    v32[0] = *v16;
    v32[1] = v17;

    a1(&v28, v32);
    if (v3)
    {

      return;
    }

    v18 = v29;
    if (v29)
    {
      v26 = v30;
      v24 = v28;
      v25 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = v14[2];
        sub_1000703A8();
        v14 = v22;
      }

      v19 = v14[2];
      if (v19 >= v14[3] >> 1)
      {
        sub_1000703A8();
        v14 = v23;
      }

      v14[2] = v19 + 1;
      v20 = &v14[5 * v19];
      v20[4] = v24;
      v20[5] = v18;
      *(v20 + 3) = v26;
      v20[8] = v25;
    }

    v9 &= v9 - 1;
  }

  while (v9);
LABEL_2:
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return;
    }

    v9 = *(v5 + 8 * v15);
    ++v13;
    if (v9)
    {
      v13 = v15;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_1001184F0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v13 = _swiftEmptyArrayStorage;
  v6 = a4(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v12 = v8;
    a1(&v11, &v12);
    if (v4)
    {

      return;
    }

    if (v11)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }
}

void sub_100118648(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_1001984C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000347C(v4, qword_10019E5A0);
  sub_100013334(a1, v44);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    sub_100003BFC();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 136315138;
    v9 = v45;
    sub_1000034B4(v44, v45);
    sub_1000039EC();
    v10(v9);
    sub_1000034F8(v44);
    v11 = sub_1000077D8();
    v14 = sub_100004C50(v11, v12, v13);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Loading combined static metadata for bundle %s", v7, 0xCu);
    sub_1000034F8(v8);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8(v44);
  }

  sub_100003D44(0, &qword_10019C970, LNBundleMetadata_ptr);
  v15 = a1[3];
  sub_1000034B4(a1, v15);
  sub_1000039EC();
  v16(v15);
  v17 = LNBundleMetadata.init(bundleIdentifier:)();
  if (!v2)
  {
    v18 = v17;
    v19 = [v17 generator];
    if (v19)
    {

      sub_100013334(a1, v44);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        sub_100003BFC();
        v23 = swift_slowAlloc();
        v47 = v23;
        *v22 = 136315138;
        v24 = v45;
        sub_1000034B4(v44, v45);
        sub_1000039EC();
        v25(v24);
        sub_1000034F8(v44);
        v26 = sub_1000077D8();
        v29 = sub_100004C50(v26, v27, v28);

        *(v22 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v20, v21, "Ingesting static metadata for %s", v22, 0xCu);
        sub_1000034F8(v23);
        sub_100004DE4();

        sub_100004DE4();
      }

      else
      {

        sub_1000034F8(v44);
      }

      sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
      sub_100065210();
      v40 = Dictionary.init(dictionaryLiteral:)();
      v41 = sub_1000034B4(a1, a1[3]);
      sub_10011C3B0(v41, v40, v18, __src);

      memcpy(a2, __src, 0xA8uLL);
    }

    else
    {
      sub_100013334(a1, v44);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        sub_100003BFC();
        v33 = swift_slowAlloc();
        v47 = v33;
        *v32 = 136315138;
        v34 = v45;
        sub_1000034B4(v44, v45);
        sub_1000039EC();
        v36 = v35(v34);
        v38 = v37;
        sub_1000034F8(v44);
        v39 = sub_100004C50(v36, v38, &v47);

        *(v32 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "Undefined compile time metadata generator for %s", v32, 0xCu);
        sub_1000034F8(v33);
        sub_100004DE4();

        sub_100004DE4();
      }

      else
      {

        sub_1000034F8(v44);
      }

      sub_10011CEFC();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_100118B18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = sub_100002944(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002958();
  v12 = v11 - v10;
  if (qword_1001982F8 != -1)
  {
    sub_1000068F4();
  }

  v13 = sub_10000347C(v4, qword_10019E020);
  (*(v7 + 16))(v12, v13, v4);
  v15 = *v2;
  v14 = v2[1];

  sub_10002EB80(&qword_10019C920, &unk_100151C40);
  v35 = Dictionary.init(dictionaryLiteral:)();
  v34 = v4;
  v16 = v2[3];
  __chkstk_darwin(v35);
  v33 = v7;
  *(&v33 - 6) = a1;
  *(&v33 - 5) = v2;
  *(&v33 - 4) = &v35;
  *(&v33 - 3) = v15;
  *(&v33 - 2) = v14;
  *(&v33 - 1) = v12;

  sub_1001184F0(sub_100119FB4, (&v33 - 8), v16, sub_1000232F4);
  v18 = v17;

  v19 = v2[3];

  v2[3] = v18;
  type metadata accessor for AssistantSuggestionPhraseProvider();
  v20 = static AssistantSuggestionPhraseProvider.getAppIntentSchemasBundle()();
  v21 = static AssistantSuggestionPhraseProvider.getPhrases(actions:assistantDomainsAndActionsToLoad:bundleIdentifier:phraseResourceBundle:)();

  v22 = sub_10006E80C(v21);
  v23 = v2[10];
  __chkstk_darwin(v22);
  sub_100005308();
  sub_1001184F0(sub_10011A4FC, v20, v23, sub_1000232F4);
  v25 = v24;

  v26 = v2[10];

  v2[10] = v25;
  v28 = v2[9];
  __chkstk_darwin(v27);
  sub_100005308();
  sub_1001184F0(sub_10011B090, v25, v28, sub_1000232F4);
  v30 = v29;

  v31 = v2[9];

  v2[9] = v30;
  return (*(v33 + 8))(v12, v34);
}

void sub_100118E48()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return;
  }

  while (1)
  {
    v3 = *(v36 + 112);
    v4 = sub_1000232F4(v3);
    v5 = 0;
    v6 = v3;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    v45 = v3 & 0xC000000000000001;
    v37 = LNSystemProtocolIdentifierAssistantIntent;
    v38 = v2;
    v35 = LNSystemProtocolIdentifierAssistantInvocableIntent;
LABEL_4:
    v41 = v1 + 32;
    v42 = v1 & 0xC000000000000001;
    v7 = v5;
    v40 = v1;
LABEL_5:
    if (v7 >= v2)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!__OFADD__(v7, 1))
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (v33 < 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v2 = v33;
    if (!v33)
    {
      return;
    }
  }

  v43 = v7 + 1;
  sub_10003818C(v7, v42 == 0, v1);
  v39 = v7;
  if (v42)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v8 = *(v41 + 8 * v7);
  }

  v9 = v8;
  v10 = 0;
  v46 = _swiftEmptyArrayStorage;
  while (v4 != v10)
  {
    if (v45)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v44 + 16))
      {
        goto LABEL_39;
      }

      v11 = *(v6 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v13 = [v11 parentIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = [v9 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v19;

    if (v14 == v18 && v16 == v1)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v22 = v46[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_23:
    ++v10;
  }

  v23 = v46;
  v24 = [v9 systemProtocolMetadata];
  type metadata accessor for LNSystemProtocolIdentifier(0);
  sub_10002EB80(&qword_1001990B0, &qword_10014D050);
  sub_10011C15C(&qword_100198970, type metadata accessor for LNSystemProtocolIdentifier);
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = sub_1000232F4(v23);

  if (!v26)
  {
    if (!*(v25 + 16) || (, sub_10004B2BC(v37), v28 = v27, , (v28 & 1) == 0))
    {

      v7 = v43;
      v2 = v38;
      v1 = v40;
      if (v43 != v38)
      {
        goto LABEL_5;
      }

      return;
    }
  }

  v29 = [objc_allocWithZone(LNEmptySystemProtocolMetadata) init];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v25;
  sub_10011CD8C(v29, v35, isUniquelyReferenced_nonNull_native, &v46);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v32 = [v9 actionMetadataWithSystemProtocolMetadata:isa];

  v1 = v40;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v40 & 0x8000000000000000) != 0 || (v40 & 0x4000000000000000) != 0)
  {
    v1 = sub_1000FCD8C(v40);
  }

  v2 = v38;
  if (v39 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

  v34 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v39 + 0x20);
  *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v39 + 0x20) = v32;

  *(v36 + 24) = v1;
  v5 = v43;
  if (v43 != v38)
  {
    goto LABEL_4;
  }
}

id sub_1001192B4@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, ValueMetadata **a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v122 = a7;
  v129 = a3;
  v130 = a6;
  v125 = a5;
  v138 = a2;
  v12 = type metadata accessor for Logger();
  v126 = *(v12 - 8);
  v127 = v12;
  v13 = *(v126 + 64);
  __chkstk_darwin(v12);
  v131 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AssistantPrebuiltIntent();
  v136 = *(v15 - 8);
  v137 = v15;
  v16 = *(v136 + 64);
  __chkstk_darwin(v15);
  v133 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002EB80(&qword_10019C950, &qword_100152568);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v135 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v117 - v22;
  v24 = type metadata accessor for AssistantSchemaVersion();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AssistantSchemaIdentifier();
  v134 = *(v28 - 8);
  v29 = *(v134 + 64);
  __chkstk_darwin(v28);
  v121 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v117 - v32;
  v34 = *a1;
  v35 = sub_10005628C(v34, &selRef_assistantDefinedSchemas, &qword_10019C940, LNAssistantDefinedSchemaConformance_ptr);
  if (!v35)
  {
    goto LABEL_8;
  }

  v36 = v35;
  if (!sub_1000232F4(v35))
  {

LABEL_8:
    *a8 = v34;
    return v34;
  }

  v118 = a8;
  sub_10003818C(0, (v36 & 0xC000000000000001) == 0, v36);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v37 = *(v36 + 32);
  }

  v38 = v37;
  v132 = v33;
  v124 = v23;
  v119 = v28;

  v139 = sub_100056300(v38, &selRef_domain);
  v123 = v38;
  v120 = v8;
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v42 = v138[4];
    sub_1000034B4(v138, v138[3]);
    v43 = [v38 name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v139 = dispatch thunk of PrebuiltMetadataProvider.getSchemaDomain(for:)();
    v40 = v44;

    if (!v40)
    {
      v40 = v129[20];
      v139 = v129[19];
    }
  }

  v128 = v34;
  v45 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v140 = *a4;
  v47 = v140;
  *a4 = 0x8000000000000000;
  v48 = sub_10000C2A0(v139, v40);
  Kind = v47[1].Kind;
  v51 = (v49 & 1) == 0;
  v52 = Kind + v51;
  if (__OFADD__(Kind, v51))
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v53 = v48;
  v54 = v49;
  sub_10002EB80(&qword_10019C958, &qword_100152570);
  v55 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v52);
  v56 = v140;
  if (v55)
  {
    v57 = sub_10000C2A0(v139, v40);
    if ((v54 & 1) != (v58 & 1))
    {
LABEL_33:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v53 = v57;
  }

  v59 = *a4;
  *a4 = v56;

  v60 = *a4;
  if ((v54 & 1) == 0)
  {
    sub_10006A09C(v53, v139, v40, _swiftEmptyArrayStorage, *a4);
  }

  v61 = v60[3].Description + 8 * v53;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000FCDF4(*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v62 = v123;
  v63 = [v123 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100119FD8(v27);

  AssistantSchemaIdentifier.init(kind:version:domain:)();
  v64 = v138[4];
  sub_1000034B4(v138, v138[3]);
  v65 = [v62 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = v124;
  dispatch thunk of PrebuiltMetadataProvider.getPrebuiltIntent(with:domain:)();

  v67 = v135;
  sub_10011C0F8(v66, v135, &qword_10019C950, &qword_100152568);
  v68 = v137;
  if (sub_1000032C4(v67, 1, v137) == 1)
  {
    sub_100003E9C(v67, &qword_10019C950, &qword_100152568);
    v140 = &type metadata for ApplicationMetadataExtractor;
    sub_10002EB80(&qword_10019A250, &qword_10014DF40);
    String.init<A>(describing:)();
    if (LNLogSubsystem)
    {
      String.init(cString:)();
      v69 = v131;
      Logger.init(subsystem:category:)();
      v70 = v128;

      v71 = v123;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *v74 = 136315650;
        v75 = sub_100004C50(v139, v40, &v140);

        *(v74 + 4) = v75;
        *(v74 + 12) = 2080;
        v76 = [v71 name];
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;

        v80 = sub_100004C50(v77, v79, &v140);

        *(v74 + 14) = v80;
        *(v74 + 22) = 2080;
        v81 = [v70 identifier];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        v85 = sub_100004C50(v82, v84, &v140);

        *(v74 + 24) = v85;
        swift_arrayDestroy();

        (*(v126 + 8))(v131, v127);
      }

      else
      {

        (*(v126 + 8))(v69, v127);
      }

      sub_100003E9C(v124, &qword_10019C950, &qword_100152568);
      (*(v134 + 8))(v132, v119);
      *v118 = v70;
      return v70;
    }

    goto LABEL_32;
  }

  v86 = v133;
  (*(v136 + 32))(v133, v67, v68);
  v87 = v129[2];
  v88 = v119;
  if (!v87)
  {
    goto LABEL_24;
  }

  v89 = v87;
  v90 = [v128 identifier];
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  LOBYTE(v90) = sub_10011A138(v89, v125, v130, v91, v93, &AssistantPrebuiltIntent.requiredEntitlements.getter);

  if ((v90 & 1) == 0)
  {

    (*(v136 + 8))(v86, v68);
    sub_100003E9C(v124, &qword_10019C950, &qword_100152568);
    result = (*(v134 + 8))(v132, v88);
    *v118 = 0;
  }

  else
  {
LABEL_24:
    v94 = v134;
    v95 = v121;
    (*(v134 + 16))(v121, v132, v88);
    v96 = v128;
    v97 = v130;

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v140 = v139;
      *v100 = 136315650;
      sub_10011C15C(&qword_10019C960, &type metadata accessor for AssistantSchemaIdentifier);
      v101 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v94;
      v104 = v103;
      v105 = *(v102 + 8);
      v105(v95, v119);
      v106 = sub_100004C50(v101, v104, &v140);

      *(v100 + 4) = v106;
      *(v100 + 12) = 2080;
      *(v100 + 14) = sub_100004C50(v125, v97, &v140);
      *(v100 + 22) = 2080;
      v107 = [v96 identifier];
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v109;

      v111 = sub_100004C50(v108, v110, &v140);

      *(v100 + 24) = v111;
      _os_log_impl(&_mh_execute_header, v98, v99, "Applying %s to %s:%s", v100, 0x20u);
      swift_arrayDestroy();

      v88 = v119;
    }

    else
    {

      v105 = *(v94 + 8);
      v105(v95, v88);
    }

    v112 = v133;
    v113 = AssistantPrebuiltIntent.metadata.getter();
    v114 = v132;
    AssistantSchemaIdentifier.description.getter();
    v115 = String._bridgeToObjectiveC()();

    v116 = [v96 copyWithDescriptiveMetadataFromAction:v113 usingLibraryKey:v115];

    (*(v136 + 8))(v112, v137);
    sub_100003E9C(v124, &qword_10019C950, &qword_100152568);
    result = (v105)(v114, v88);
    *v118 = v116;
  }

  return result;
}

uint64_t sub_100119FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10002EB80(&qword_10019C938, &qword_100152558);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v12 - v7;
  v9 = [v2 version];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AssistantSchemaVersion.init(_:)();
  v10 = type metadata accessor for AssistantSchemaVersion();
  if (sub_1000032C4(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  AssistantSchemaVersion.init(major:minor:patch:)();
  result = sub_1000032C4(v8, 1, v10);
  if (result != 1)
  {
    return sub_100003E9C(v8, &qword_10019C938, &qword_100152558);
  }

  return result;
}

uint64_t sub_10011A138(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v11 = a6();
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  if (!*(v11 + 16))
  {

    return 1;
  }

  v31 = a4;
  v32 = a2;
  v33 = a5;
  v34 = a3;
  v13 = 0;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 56);
  v17 = (v14 + 63) >> 6;
  if (v16)
  {
    while (1)
    {
      v18 = v13;
LABEL_10:
      v19 = (*(v12 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
      v20 = *v19;
      v6 = v19[1];

      v21 = [a1 entitlements];
      v35 = v20;
      v22 = String._bridgeToObjectiveC()();
      sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
      v23 = [v21 objectForKey:v22 ofClass:swift_getObjCClassFromMetadata()];

      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v40[0] = v38;
      v40[1] = v39;
      if (!*(&v39 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v24 = [v37 BOOLValue];

      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }

      v16 &= v16 - 1;

      v13 = v18;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    sub_100003E9C(v40, &qword_1001992F0, &qword_10014E000);
LABEL_22:
    if (qword_1001982F8 == -1)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        return 1;
      }

      v16 = *(v12 + 56 + 8 * v18);
      ++v13;
      if (v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  sub_1000068F4();
LABEL_23:
  v26 = type metadata accessor for Logger();
  sub_10000347C(v26, qword_10019E020);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    sub_100003BFC();
    v29 = swift_slowAlloc();
    *&v40[0] = swift_slowAlloc();
    *v29 = 136446722;
    *(v29 + 4) = sub_100004C50(v31, v33, v40);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_100004C50(v32, v34, v40);
    *(v29 + 22) = 2082;
    v30 = sub_100004C50(v35, v6, v40);

    *(v29 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v27, v28, "Skipping %{public}s because bundle '%{public}s' is missing the required entitlement '%{public}s'", v29, 0x20u);
    swift_arrayDestroy();
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {
  }

  return 0;
}

id sub_10011A590@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10, void (*a11)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t), uint64_t (*a12)(void), uint64_t a13, SEL *a14)
{
  v145 = a6;
  v146 = a4;
  v151 = a5;
  v149 = a3;
  v19 = type metadata accessor for Logger();
  v20 = sub_100002944(v19);
  v147 = v21;
  v148 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_100002958();
  v150 = (v25 - v24);
  v26 = a7(0);
  v27 = sub_100002944(v26);
  v154 = v28;
  v155 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  v152 = &v135 - v31;
  v156 = a10;
  v32 = sub_10002EB80(a8, a10);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v157 = &v135 - v37;
  v38 = type metadata accessor for AssistantSchemaVersion();
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  sub_100002958();
  v42 = v41 - v40;
  v43 = type metadata accessor for AssistantSchemaIdentifier();
  v44 = sub_100002944(v43);
  v153 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  v144 = &v135 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v158 = &v135 - v50;
  v51 = *a1;
  v52 = sub_10005628C(*a1, &selRef_assistantDefinedSchemas, &qword_10019C940, LNAssistantDefinedSchemaConformance_ptr);
  if (!v52)
  {
    goto LABEL_8;
  }

  v53 = v52;
  if (!sub_1000232F4(v52))
  {

LABEL_8:
    *a9 = v51;
    return v51;
  }

  v142 = v43;
  v137 = a11;
  sub_10003818C(0, (v53 & 0xC000000000000001) == 0, v53);
  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v54 = *(v53 + 32);
  }

  v55 = v54;
  v141 = a8;
  v136 = a9;

  v143 = sub_100056300(v55, &selRef_domain);
  v139 = a2;
  v140 = v55;
  v138 = v51;
  if (v56)
  {
    v57 = v56;
  }

  else
  {
    v59 = a2[3];
    v143 = a2[4];
    sub_1000034B4(a2, v59);
    v60 = [v55 name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v143 = dispatch thunk of PrebuiltMetadataProvider.getSchemaDomain(for:)();
    v57 = v61;

    if (!v57)
    {
      v57 = *(v149 + 160);
      v143 = *(v149 + 152);
    }

    v55 = v140;
  }

  v62 = v55;
  v63 = [v55 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100119FD8(v42);

  v64 = v143;
  AssistantSchemaIdentifier.init(kind:version:domain:)();
  v65 = v139[3];
  v66 = v139[4];
  sub_1000034B4(v139, v65);
  v67 = [v62 name];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v71 = v157;
  v137(v68, v70, v64, v57, v65, v66);

  v72 = v141;
  v73 = v156;
  sub_10011C0F8(v71, v35, v141, v156);
  v74 = v155;
  if (sub_1000032C4(v35, 1, v155) == 1)
  {
    sub_100003E9C(v35, v72, v73);
    v159 = &type metadata for ApplicationMetadataExtractor;
    sub_10002EB80(&qword_10019A250, &qword_10014DF40);
    String.init<A>(describing:)();
    result = LNLogSubsystem;
    v75 = v138;
    if (LNLogSubsystem)
    {
      String.init(cString:)();
      v76 = v150;
      Logger.init(subsystem:category:)();
      v77 = v75;

      v78 = v140;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v79, v80))
      {
        sub_100003BFC();
        v81 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *v81 = 136315650;
        v82 = sub_100004C50(v143, v57, &v159);

        *(v81 + 4) = v82;
        *(v81 + 12) = 2080;
        v83 = [v78 name];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87 = sub_100004C50(v84, v86, &v159);

        *(v81 + 14) = v87;
        *(v81 + 22) = 2080;
        v88 = [v77 identifier];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = sub_100004C50(v89, v91, &v159);

        *(v81 + 24) = v92;
        swift_arrayDestroy();
        sub_100004DE4();

        sub_100004DE4();

        (*(v147 + 8))(v150, v148);
        v94 = v156;
        v93 = v157;
        v95 = v141;
      }

      else
      {

        (*(v147 + 8))(v76, v148);
        v93 = v157;
        v95 = v72;
        v94 = v73;
      }

      sub_100003E9C(v93, v95, v94);
      v125 = sub_100011904();
      v126(v125);
      *v136 = v77;
      return v77;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v96 = v152;
    (*(v154 + 32))(v152, v35, v74);
    v97 = *(v149 + 16);
    v98 = v138;
    if (!v97)
    {
      goto LABEL_18;
    }

    v99 = v97;
    v100 = [v98 identifier];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = v101;
    v96 = v152;
    v105 = sub_10011A138(v99, v146, v151, v104, v103, a12);

    if ((v105 & 1) == 0)
    {

      (*(v154 + 8))(v96, v74);
      sub_100003E9C(v157, v72, v73);
      v133 = sub_100011904();
      result = v134(v133);
      *v136 = 0;
    }

    else
    {
LABEL_18:
      v149 = a13;
      v150 = a14;
      v106 = v153;
      (*(v153 + 16))(v144, v158, v142);
      v107 = v98;

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v108, v109))
      {
        sub_100003BFC();
        v110 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v159 = v148;
        *v110 = 136315650;
        v111 = AssistantSchemaIdentifier.description.getter();
        v113 = v112;
        v153 = *(v106 + 8);
        v114 = sub_100005064();
        v115(v114);
        v116 = sub_100004C50(v111, v113, &v159);

        *(v110 + 4) = v116;
        *(v110 + 12) = 2080;
        *(v110 + 14) = sub_100004C50(v146, v151, &v159);
        *(v110 + 22) = 2080;
        v117 = [v107 identifier];
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        v121 = v118;
        v96 = v152;
        v122 = sub_100004C50(v121, v120, &v159);

        *(v110 + 24) = v122;
        _os_log_impl(&_mh_execute_header, v108, v109, "Applying %s to %s:%s", v110, 0x20u);
        swift_arrayDestroy();
        v123 = v153;
        sub_100004DE4();

        v73 = v156;
        sub_100004DE4();
      }

      else
      {

        v123 = *(v106 + 8);
        v127 = sub_100005064();
        v124 = v123(v127);
      }

      v128 = (v149)(v124);
      v129 = v158;
      AssistantSchemaIdentifier.description.getter();
      v130 = v96;
      v131 = String._bridgeToObjectiveC()();

      v132 = [v107 *v150];

      (*(v154 + 8))(v130, v155);
      sub_100003E9C(v157, v141, v73);
      result = (v123)(v129, v142);
      *v136 = v132;
    }
  }

  return result;
}

unint64_t sub_10011B124(char a1)
{
  if (!a1)
  {
    return 0xD000000000000033;
  }

  if (a1 == 1)
  {
    return 0xD00000000000003CLL;
  }

  return 0xD000000000000028;
}

uint64_t sub_10011B180()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019E5A0);
  sub_10000347C(v0, qword_10019E5A0);
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

uint64_t sub_10011B234()
{
  v1 = 0;
  v2 = [v0 queries];
  sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v3 + 64;
  v4 = *(v3 + 64);
  v6 = *(v3 + 32);
  sub_100002BE8();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v104 = v3;

  v12 = &_swiftEmptyDictionarySingleton;
  v101 = v3 + 64;
  if (v9)
  {
    while (1)
    {
LABEL_6:
      v14 = *(*(v104 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v9)))));
      v15 = [v14 resultValueType];
      if (v12[2] && (sub_100045CE0(), (v17 & 1) != 0))
      {
        v18 = *(v12[7] + 8 * v16);
      }

      else
      {
        v18 = _swiftEmptyArrayStorage;
      }

      sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE80;
      *(inited + 32) = v14;
      v20 = v18 >> 62;
      v107 = v15;
      if (v18 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_84;
      }

      v23 = v14;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v20)
        {
          goto LABEL_20;
        }

        v24 = v18 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v20)
        {
LABEL_20:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_21;
        }

        v24 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v25 = *(v24 + 16);
LABEL_21:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v24 = v18 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      if (*(v24 + 16) >= *(v24 + 24) >> 1)
      {
        goto LABEL_85;
      }

      v26 = v11;
      swift_arrayInitWithCopy();

      ++*(v24 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v12;
      sub_100045CE0();
      v30 = v12[2];
      v31 = (v29 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_86;
      }

      v33 = v28;
      v34 = v29;
      sub_10002EB80(&qword_10019C9A8, &unk_100152588);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32))
      {
        v35 = v107;
        sub_100045CE0();
        if ((v34 & 1) != (v37 & 1))
        {
          sub_100003D44(0, &unk_10019BBF0, LNValueType_ptr);
          goto LABEL_91;
        }

        v33 = v36;
      }

      else
      {
        v35 = v107;
      }

      v12 = v112;
      if (v34)
      {
        v38 = v112[7];
        v39 = *(v38 + 8 * v33);
        *(v38 + 8 * v33) = v18;
      }

      else
      {
        v112[(v33 >> 6) + 8] |= 1 << v33;
        *(v12[6] + 8 * v33) = v35;
        *(v12[7] + 8 * v33) = v18;
        v40 = v12[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_87;
        }

        v12[2] = v42;
      }

      v9 &= v9 - 1;
      v11 = v26;
      v5 = v101;
      if (!v9)
      {
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
LABEL_2:
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v13 >= v11)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v1;
    if (v9)
    {
      v1 = v13;
      goto LABEL_6;
    }
  }

  v43 = [v100 entities];
  sub_100003D44(0, &qword_10019AB50, LNEntityMetadata_ptr);
  v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = 0;
  v112 = _swiftEmptyArrayStorage;
  v47 = v44 + 64;
  v46 = *(v44 + 64);
  v48 = *(v44 + 32);
  sub_100002BE8();
  v51 = v50 & v49;
  v53 = (v52 + 63) >> 6;
  v105 = v44;
  v108 = LNSystemEntityProtocolIdentifierUniqueEntity;
  while (v51)
  {
LABEL_41:
    v55 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v56 = *(*(v44 + 56) + ((v45 << 9) | (8 * v55)));
    v57 = [v56 systemProtocolMetadata];
    type metadata accessor for LNSystemEntityProtocolIdentifier(0);
    sub_10002EB80(&qword_1001990B0, &qword_10014D050);
    sub_10011C15C(&qword_100198910, type metadata accessor for LNSystemEntityProtocolIdentifier);
    v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v58 + 16) && (sub_10004B2BC(v108), (v59 & 1) != 0))
    {

      sub_100003D44(0, &unk_10019B460, LNEntityValueType_ptr);
      v60 = [v56 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = sub_1000AEC0C();
      if (v12[2] && (sub_100045CE0(), (v62 & 1) != 0))
      {

        v44 = v105;
      }

      else
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v63 = v112[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v44 = v105;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v54 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v54 >= v53)
    {

      v64 = v112;
      v65 = sub_1000232F4(v112);
      if (v65)
      {
        v66 = v65;
        v112 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v66 < 0)
        {
          goto LABEL_88;
        }

        v67 = 0;
        while (1)
        {
          v68 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_78;
          }

          if ((v64 & 0xC000000000000001) != 0)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v67 >= *(v64 + 16))
            {
              goto LABEL_82;
            }

            v69 = *(v64 + 8 * v67 + 32);
          }

          v70 = v69;
          v110 = v69;
          sub_10011BB8C(&v110, &v111);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v71 = v112[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v67;
          if (v68 == v66)
          {

            v72 = v112;
            goto LABEL_59;
          }
        }
      }

      v72 = _swiftEmptyArrayStorage;
LABEL_59:
      v73 = [v100 queries];
      v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = sub_1000232F4(v72);
      if (!v109)
      {
LABEL_75:

        return v74;
      }

      v75 = 0;
      v106 = v72 & 0xC000000000000001;
      v102 = v72 & 0xFFFFFFFFFFFFFF8;
      v103 = v72;
      while (1)
      {
        if (v106)
        {
          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v75 >= *(v102 + 16))
          {
            goto LABEL_83;
          }

          v76 = *(v72 + 8 * v75 + 32);
        }

        v77 = v76;
        v78 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_79;
        }

        v79 = [v76 identifier];
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = v77;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v112 = v74;
        v85 = sub_10000C2A0(v80, v82);
        v87 = v74[2];
        v88 = (v86 & 1) == 0;
        v89 = v87 + v88;
        if (__OFADD__(v87, v88))
        {
          goto LABEL_80;
        }

        v90 = v85;
        v91 = v86;
        sub_10002EB80(&qword_10019B4A0, &qword_100150790);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v84, v89))
        {
          v92 = sub_10000C2A0(v80, v82);
          if ((v91 & 1) != (v93 & 1))
          {
            goto LABEL_91;
          }

          v90 = v92;
        }

        if (v91)
        {

          v74 = v112;
          v94 = v112[7];
          v95 = *(v94 + 8 * v90);
          *(v94 + 8 * v90) = v83;
        }

        else
        {
          v74 = v112;
          v112[(v90 >> 6) + 8] |= 1 << v90;
          v96 = (v74[6] + 16 * v90);
          *v96 = v80;
          v96[1] = v82;
          *(v74[7] + 8 * v90) = v83;

          v97 = v74[2];
          v41 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v41)
          {
            goto LABEL_81;
          }

          v74[2] = v98;
        }

        ++v75;
        v72 = v103;
        if (v78 == v109)
        {
          goto LABEL_75;
        }
      }
    }

    v51 = *(v47 + 8 * v54);
    ++v45;
    if (v51)
    {
      v45 = v54;
      goto LABEL_41;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);

  __break(1u);
LABEL_91:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10011BB8C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  _StringGuts.grow(_:)(23);
  v4 = [v3 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._object = 0x8000000100158BA0;
  v8._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v8);
  v9 = v5;
  v10 = v7;
  sub_100003D44(0, &unk_10019B460, LNEntityValueType_ptr);
  v11 = [v3 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = sub_1000AEC0C();
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = [v3 effectiveBundleIdentifiers];
  v15 = sub_10011C034(v3);
  v16 = [v3 visibilityMetadata];
  v17 = objc_allocWithZone(LNQueryMetadata);
  result = sub_10011BD6C(v9, v10, 0, v12, 0, 0xE000000000000000, v13, v14, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v15, 1, 0, v16, 0, 0, 0, 0);
  *a2 = result;
  return result;
}

id sub_10011BD6C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();

  v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100003D44(0, &qword_10019C9B0, LNQueryParameterMetadata_ptr);
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100003D44(0, &qword_10019C9B8, LNQuerySortingOptionMetadata_ptr);
  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a11)
  {
    type metadata accessor for LNPlatformName(0);
    sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
    sub_10011C15C(&qword_100198940, type metadata accessor for LNPlatformName);
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  if (a17)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  if (a18)
  {
    sub_100003D44(0, &unk_10019C9C0, LNTargetMetadata_ptr);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v22.super.isa = 0;
  }

  LOBYTE(v24) = a15 & 1;
  v29 = [v28 initWithIdentifier:v26 inputValueType:a3 resultValueType:a4 mangledTypeName:v27 mangledTypeNameByBundleIdentifier:v25.super.isa effectiveBundleIdentifiers:a8 parameters:v18.super.isa sortingOptions:v19.super.isa availabilityAnnotations:v20.super.isa capabilities:a12 descriptionMetadata:a13 visibilityMetadata:a14 defaultQueryForEntity:v24 fullyQualifiedIdentifier:v21 allowedTargets:v22.super.isa];

  return v29;
}

uint64_t sub_10011C034(void *a1)
{
  v1 = [a1 availabilityAnnotations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNPlatformName(0);
  sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
  sub_10011C15C(&qword_100198940, type metadata accessor for LNPlatformName);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10011C0F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(sub_10002EB80(a3, a4) - 8) + 16);
  v6 = sub_1000077D8();
  v7(v6);
  return a2;
}

uint64_t sub_10011C15C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10011C1A4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LSLinkBundleRecord(0);
  v22 = v4;
  v23 = &off_10018F930;
  v5 = sub_100013234(v21);
  sub_100027910(a1, v5);
  if ([objc_opt_self() isAppShortcutsOmittingAppNameEnabled] && *(sub_1000034B4(v21, v22) + *(v4 + 32)) == 1)
  {
    v6 = [a2 autoShortcuts];
    sub_100003D44(0, &qword_1001994F8, LNAutoShortcutMetadata_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_12;
  }

  v8 = [a2 autoShortcuts];
  sub_100003D44(0, &qword_1001994F8, LNAutoShortcutMetadata_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_100108460(10, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_5:
    sub_10006B760(v10, v12, v14, v16);
    v7 = v17;
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (__OFSUB__(v16 >> 1, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v19 != (v16 >> 1) - v14)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = _swiftEmptyArrayStorage;
  }

LABEL_12:
  sub_1000034F8(v21);
  return v7;
}

void *sub_10011C3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v113 = type metadata accessor for LSLinkBundleRecord(0);
  v114 = &off_10018F930;
  v6 = sub_100013234(v112);
  sub_100027910(a1, v6);
  v96 = v6[1];
  v97 = *v6;

  v98 = a3;
  v7 = [a3 actions];
  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = *(v8 + 16);
  if (v9)
  {
    v110[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_100091D1C(v8);
    v12 = result;
    v14 = v13;
    v15 = 0;
    v16 = v8 + 64;
    v99 = v13;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v8 + 32))
    {
      v17 = v12 >> 6;
      if ((*(v16 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_75;
      }

      if (*(v8 + 36) != v14)
      {
        goto LABEL_76;
      }

      v105 = v15;
      v102 = v11;
      v18 = *(*(v8 + 56) + 8 * v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = *(v110[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v20 = 1 << *(v8 + 32);
      if (v12 >= v20)
      {
        goto LABEL_77;
      }

      v21 = *(v16 + 8 * v17);
      if ((v21 & (1 << v12)) == 0)
      {
        goto LABEL_78;
      }

      if (*(v8 + 36) != v14)
      {
        goto LABEL_79;
      }

      v22 = v21 & (-2 << (v12 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v8 + 72 + 8 * v17);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_100060B50(v12, v14, v102 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_17;
          }
        }

        result = sub_100060B50(v12, v14, v102 & 1);
      }

LABEL_17:
      v11 = 0;
      v15 = v105 + 1;
      v12 = v20;
      v14 = v99;
      if (v105 + 1 == v9)
      {

        v93 = v110[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v93 = _swiftEmptyArrayStorage;
LABEL_20:
  v28 = sub_100056300(v98, &selRef_autoShortcutProviderMangledName);
  v91 = v29;
  v92 = v28;
  v90 = [v98 shortcutTileColor];
  v30 = sub_1000034B4(v112, v113);
  v89 = sub_10011C1A4(v30, v98);
  v31 = [v98 entities];
  sub_100003D44(0, &qword_10019AB50, LNEntityMetadata_ptr);
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = *(v32 + 16);
  if (v33)
  {
    v110[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_100091D1C(v32);
    v35 = result;
    v37 = v36;
    v38 = 0;
    v39 = v32 + 64;
    v100 = v36;
    while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v32 + 32))
    {
      v40 = v35 >> 6;
      if ((*(v39 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
      {
        goto LABEL_81;
      }

      if (*(v32 + 36) != v37)
      {
        goto LABEL_82;
      }

      v106 = v38;
      v103 = v34;
      v41 = *(*(v32 + 56) + 8 * v35);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = *(v110[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v43 = 1 << *(v32 + 32);
      if (v35 >= v43)
      {
        goto LABEL_83;
      }

      v44 = *(v39 + 8 * v40);
      if ((v44 & (1 << v35)) == 0)
      {
        goto LABEL_84;
      }

      if (*(v32 + 36) != v37)
      {
        goto LABEL_85;
      }

      v45 = v44 & (-2 << (v35 & 0x3F));
      if (v45)
      {
        v43 = __clz(__rbit64(v45)) | v35 & 0x7FFFFFFFFFFFFFC0;
        v46 = v106;
      }

      else
      {
        v47 = v40 << 6;
        v48 = v40 + 1;
        v49 = (v32 + 72 + 8 * v40);
        v46 = v106;
        while (v48 < (v43 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            result = sub_100060B50(v35, v37, v103 & 1);
            v43 = __clz(__rbit64(v50)) + v47;
            goto LABEL_36;
          }
        }

        result = sub_100060B50(v35, v37, v103 & 1);
      }

LABEL_36:
      v34 = 0;
      v38 = v46 + 1;
      v35 = v43;
      v37 = v100;
      if (v38 == v33)
      {

        v88 = v110[0];
        goto LABEL_39;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v88 = _swiftEmptyArrayStorage;
LABEL_39:
  v52 = [v98 enums];
  sub_100003D44(0, &qword_10019AB60, LNEnumMetadata_ptr);
  v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v86 = sub_1000B631C(v53);
  v54 = sub_10011B234();
  v55 = *(v54 + 16);
  if (v55)
  {
    v110[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_100091D1C(v54);
    v57 = result;
    v59 = v58;
    v60 = 0;
    v61 = v54 + 64;
    v101 = v58;
    while ((v57 & 0x8000000000000000) == 0 && v57 < 1 << *(v54 + 32))
    {
      v62 = v57 >> 6;
      if ((*(v61 + 8 * (v57 >> 6)) & (1 << v57)) == 0)
      {
        goto LABEL_87;
      }

      if (*(v54 + 36) != v59)
      {
        goto LABEL_88;
      }

      v107 = v60;
      v104 = v56;
      v63 = *(*(v54 + 56) + 8 * v57);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v64 = *(v110[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v65 = 1 << *(v54 + 32);
      if (v57 >= v65)
      {
        goto LABEL_89;
      }

      v66 = *(v61 + 8 * v62);
      if ((v66 & (1 << v57)) == 0)
      {
        goto LABEL_90;
      }

      if (*(v54 + 36) != v59)
      {
        goto LABEL_91;
      }

      v67 = v66 & (-2 << (v57 & 0x3F));
      if (v67)
      {
        v65 = __clz(__rbit64(v67)) | v57 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v68 = v62 << 6;
        v69 = v62 + 1;
        v70 = (v54 + 72 + 8 * v62);
        while (v69 < (v65 + 63) >> 6)
        {
          v72 = *v70++;
          v71 = v72;
          v68 += 64;
          ++v69;
          if (v72)
          {
            result = sub_100060B50(v57, v59, v104 & 1);
            v65 = __clz(__rbit64(v71)) + v68;
            goto LABEL_55;
          }
        }

        result = sub_100060B50(v57, v59, v104 & 1);
      }

LABEL_55:
      v56 = 0;
      v60 = v107 + 1;
      v57 = v65;
      v59 = v101;
      if (v107 + 1 == v55)
      {

        v73 = v110[0];
        goto LABEL_58;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    return result;
  }

  v73 = _swiftEmptyArrayStorage;
LABEL_58:
  v74 = [v98 version];
  v75 = sub_10005628C(v98, &selRef_negativePhrases, &qword_10019C9A0, LNAppShortcutNegativePhrase_ptr);
  v76 = sub_10005628C(v98, &selRef_examplePhrases, &qword_10019B2B0, LNExamplePhraseDescription_ptr);
  v77 = sub_10005628C(v98, &selRef_assistantIntents, &qword_10019C990, LNAssistantIntentMetadata_ptr);
  v78 = sub_10005628C(v98, &selRef_assistantIntentNegativePhrases, &qword_10019BEA8, LNAssistantIntentNegativePhrases_ptr);
  v79 = sub_10005628C(v98, &selRef_assistantEntities, &qword_10019C980, LNAssistantAppEntityMetadata_ptr);
  sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);

  v80 = sub_1000FEC40(v97, v96, 0);
  if (v79)
  {
    v81 = v79;
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  __src[0] = v97;
  __src[1] = v96;
  if (v78)
  {
    v82 = v78;
  }

  else
  {
    v82 = _swiftEmptyArrayStorage;
  }

  if (v77)
  {
    v83 = v77;
  }

  else
  {
    v83 = _swiftEmptyArrayStorage;
  }

  __src[2] = v80;
  __src[3] = v93;
  if (v76)
  {
    v84 = v76;
  }

  else
  {
    v84 = _swiftEmptyArrayStorage;
  }

  if (v75)
  {
    v85 = v75;
  }

  else
  {
    v85 = _swiftEmptyArrayStorage;
  }

  __src[4] = v92;
  __src[5] = v91;
  __src[6] = v90;
  __src[7] = v89;
  __src[8] = a2;
  __src[9] = v88;
  __src[10] = v87;
  __src[11] = v73;
  __src[12] = v74;
  __src[13] = v85;
  __src[14] = v84;
  __src[15] = v83;
  __src[16] = v82;
  __src[17] = v81;
  __src[18] = _swiftEmptyArrayStorage;
  strcpy(&__src[19], "UnknownDomain");
  HIWORD(__src[20]) = -4864;
  v110[0] = v97;
  v110[1] = v96;
  v110[2] = v80;
  v110[3] = v93;
  v110[4] = v92;
  v110[5] = v91;
  v110[6] = v90;
  v110[7] = v89;
  v110[8] = a2;
  v110[9] = v88;
  v110[10] = v87;
  v110[11] = v73;
  v110[12] = v74;
  v110[13] = v85;
  v110[14] = v84;
  v110[15] = v83;
  v110[16] = v82;
  v110[17] = v81;
  v110[18] = _swiftEmptyArrayStorage;
  strcpy(v111, "UnknownDomain");
  v111[7] = -4864;

  sub_10011CF50(__src, v108);
  sub_1000FC14C(v110);
  sub_1000034F8(v112);
  return memcpy(a4, __src, 0xA8uLL);
}

id sub_10011CD8C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = *a4;
  v8 = sub_10004B2BC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v8;
  v14 = v9;
  sub_10002EB80(&qword_10019C968, &unk_100152578);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v12))
  {
    goto LABEL_5;
  }

  v15 = *a4;
  v16 = sub_10004B2BC(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    type metadata accessor for LNSystemProtocolIdentifier(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *a4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10011CEB8(v13, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_10011CEB8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10011CEFC()
{
  result = qword_10019C978;
  if (!qword_10019C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C978);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ApplicationMetadataExtractor.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10011D07C()
{
  result = qword_10019C9D0;
  if (!qword_10019C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C9D0);
  }

  return result;
}

uint64_t sub_10011D150(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  [v5 lock];
  swift_beginAccess();
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  v7 = *(a2 + 56);
  *(a2 + 56) = -1;
  a3(v6, v7);
  [v5 unlock];
}

uint64_t sub_10011D1E8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10011D200(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10011D200(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10011D20C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10011D224(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10011D224(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_10011D260@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_10011D26C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10011D2B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = String.datatypeValue.getter();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_10011D30C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Blob.bytes.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10011D338@<X0>(uint64_t *a1@<X8>)
{
  result = Blob.bytes.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t (*static Bool.declaredDatatype.modify())()
{
  sub_1000066C0();
  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL sub_10011D404@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = static Bool.fromDatatypeValue(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10011D434@<X0>(uint64_t *a1@<X8>)
{
  result = Bool.datatypeValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10011D478(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return sub_1000066C0();
}

uint64_t sub_10011D4D4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t (*static Int.declaredDatatype.modify())()
{
  sub_1000066C0();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10011D598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return sub_1000066C0();
}

uint64_t variable initialization expression of QueryClauses.select()
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10014CE90;
  v1 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v0 + 64) = &protocol witness table for Expression<A>;
  *(v0 + 32) = 42;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = _swiftEmptyArrayStorage;
  *(v0 + 56) = v1;
  return 0;
}

uint64_t variable initialization expression of Connection.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_100002958();
  v5 = v4 - v3;
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100002958();
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_100002958();
  sub_100015918();
  sub_100066220();
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static DispatchQoS.unspecified.getter();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_10019CBB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10019CBB0);
    }
  }
}

Swift::String __swiftcall SchemaType.drop(ifExists:)(Swift::Bool ifExists)
{
  v3 = *(v1 + 8);
  sub_100017D44();
  sub_10011DC4C(0x454C424154, 0xE500000000000000, v7, ifExists);
  sub_100002714();
  v4 = sub_100012118(v7);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_10011DC4C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  *&v26 = 0x20504F5244;
  *(&v26 + 1) = 0xE500000000000000;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  v10 = v26;
  v11 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v10;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v11;
  if (a4)
  {
    v12 = xmmword_100152900;
    v13 = _swiftEmptyArrayStorage;
    v14 = &protocol witness table for Expression<A>;
  }

  else
  {
    v11 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0uLL;
  }

  *(inited + 96) = v11;
  *(inited + 104) = v14;
  *(inited + 72) = v12;
  *(inited + 88) = v13;
  sub_100013334(a3, inited + 112);
  v15 = _swiftEmptyArrayStorage;
  for (i = 32; i != 152; i += 40)
  {
    sub_100011EE4(inited + i, &v26, &qword_10019CBC0, &qword_100152960);
    v23[0] = v26;
    v23[1] = v27;
    v24 = v28;
    if (*(&v27 + 1))
    {
      sub_10001A798(v23, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001A674(0, v15[2] + 1, 1, v15, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v15 = v19;
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        sub_10001A674(v17 > 1, v18 + 1, 1, v15, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v15 = v20;
      }

      v15[2] = v18 + 1;
      sub_10001A798(v25, &v15[5 * v18 + 4]);
    }

    else
    {
      sub_100003E9C(v23, &qword_10019CBC0, &qword_100152960);
    }
  }

  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100013640(v15, &v26);

  sub_1000034B4(&v26, *(&v27 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  sub_1000034F8(&v26);
  return countAndFlagsBits;
}

void Table.create(temporary:ifNotExists:withoutRowid:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_100015628();
  a54 = v56;
  a55 = v57;
  v58 = v55;
  v60 = v59;
  v100 = v61;
  v101 = v62;
  v64 = v63;
  type metadata accessor for TableBuilder();
  v65 = swift_allocObject();
  *(v65 + 16) = _swiftEmptyArrayStorage;
  v66 = (v65 + 16);
  v60();
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v68 = *(v55 + 16);
  v69 = *(v58 + 24);
  v70 = *(v58 + 32);
  v71 = *(v58 + 40);
  v72 = *(v58 + 56);
  v73 = *(v58 + 64);
  swift_bridgeObjectRetain_n();

  if (v71)
  {

    v68 = v70;
    v69 = v71;
  }

  sub_100019760(v68, v69, v73 & 1, &a21);

  if (v64)
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  sub_10011E298(0x454C424154, 0xE500000000000000, &a21, v74, v100 & 1, (inited + 32));
  sub_1000034F8(&a21);
  swift_beginAccess();
  v75 = *v66;

  sub_100013640(v76, &a21);

  v77 = sub_1000034B4(&a21, *(&a22 + 1));
  v78 = sub_100128720(v77);
  v80 = v79;
  v82 = v81;
  sub_1000034F8(&a21);
  v83 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 96) = v83;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v78;
  *(inited + 80) = v80;
  *(inited + 88) = v82;
  if (v101)
  {
    v84 = xmmword_100152910;
    v85 = _swiftEmptyArrayStorage;
    v86 = &protocol witness table for Expression<A>;
  }

  else
  {
    *&v84 = sub_10000E838();
  }

  *(inited + 136) = v83;
  *(inited + 144) = v86;
  *(inited + 112) = v84;
  v87 = 32;
  *(inited + 128) = v85;
  v88 = _swiftEmptyArrayStorage;
  do
  {
    sub_100011EE4(inited + v87, &a21, &qword_10019CBC0, &qword_100152960);
    a11 = a21;
    a12 = a22;
    a13 = a23;
    if (*(&a22 + 1))
    {
      sub_10001A798(&a11, &a14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = v88[2];
        v92 = sub_100004E28();
        sub_10001A674(v92, v93, v94, v88, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v88 = v95;
      }

      v90 = v88[2];
      v89 = v88[3];
      if (v90 >= v89 >> 1)
      {
        v96 = sub_100009A90(v89);
        sub_10001A674(v96, v97, v98, v88, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v88 = v99;
      }

      v88[2] = v90 + 1;
      sub_10001A798(&a14, &v88[5 * v90 + 4]);
    }

    else
    {
      sub_100003E9C(&a11, &qword_10019CBC0, &qword_100152960);
    }

    v87 += 40;
  }

  while (v87 != 152);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_10000EF08(v88, &a21);

  sub_1000034B4(&a21, *(&a22 + 1));
  sub_10001317C();
  Expressible.asSQL()();
  sub_1000064BC();

  sub_1000034F8(&a21);
  sub_10001317C();
  sub_1001286A8();
}

uint64_t sub_10011E298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v13 = a4;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014F0D0;
  v15 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x455441455243;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v15;
  if (v13 == 2)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v16 = 0x455551494E55;
    if (a4)
    {
      v16 = 0x5241524F504D4554;
    }

    v17 = 0xE900000000000059;
    if ((a4 & 1) == 0)
    {
      v17 = 0xE600000000000000;
    }

    v20 = &protocol witness table for Expression<A>;
    v18 = _swiftEmptyArrayStorage;
    v19 = v15;
  }

  *(inited + 72) = v16;
  *(inited + 80) = v17;
  *(inited + 88) = v18;
  *(inited + 96) = v19;
  *(inited + 136) = v15;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 104) = v20;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = _swiftEmptyArrayStorage;
  if (a5)
  {
    v21 = xmmword_100152920;
    v22 = _swiftEmptyArrayStorage;
    v23 = &protocol witness table for Expression<A>;
  }

  else
  {
    *&v21 = sub_10000E838();
  }

  *(inited + 176) = v15;
  *(inited + 184) = v23;
  *(inited + 152) = v21;
  *(inited + 168) = v22;
  sub_100013334(a3, inited + 192);

  v24 = _swiftEmptyArrayStorage;
  for (i = 32; i != 232; i += 40)
  {
    sub_10001330C();
    v30 = sub_100011EE4(v26, v27, v28, v29);
    sub_100128444(v30, v31, v32, v33, v34, v35, v36, v37, v54, *(&v54 + 1), v55, v56, v57, v58, v59, *(&v59 + 1), v60, v61, v62, v63, v64, v65);
    if (v38)
    {
      sub_1001283B4(&v54, &v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1000073C4();
        sub_10001A674(v43, v44, v45, v46, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v24 = v47;
      }

      sub_100128528();
      if (v39)
      {
        sub_10000274C();
        sub_10001A674(v48, v49, v50, v51, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v24 = v52;
      }

      v24[2] = v6;
      sub_10001A798(&v59, &v24[5 * v13 + 4]);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v40, v41, v42);
    }
  }

  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100009AA4(a6);
}

void Table.addColumn<A>(_:check:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100006A04();
  v97 = v22;
  v98 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100128618();
  v119[3] = type metadata accessor for Expression();
  v119[4] = &protocol witness table for Expression<A>;
  v119[0] = v34;
  v119[1] = v32;
  v119[2] = v30;
  v35 = *(a21 + 40);

  v36 = v35(v24, a21);
  v38 = v37;
  if (v26)
  {
    v39 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v40 = &protocol witness table for Expression<A>;
  }

  else
  {
    v39 = sub_100002E28();
  }

  sub_100018B04(v39, v40);
  sub_1000294F4(*(a21 + 8));
  sub_1000116F4();
  (*(v41 + 16))();
  sub_100128604();
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v42 = sub_10012842C();
  v43 = sub_100017FC0(v42, xmmword_100152930);
  sub_100013334(v43, &v42[2]);
  v44 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  v42[6].n128_u64[1] = &protocol witness table for Expression<A>;
  v42[4].n128_u64[1] = v36;
  v42[5].n128_u64[0] = v38;
  v45.n128_f64[0] = sub_100018D54(v44, _swiftEmptyArrayStorage);
  v42[11].n128_u64[0] = v46;
  v42[11].n128_u64[1] = v47;
  sub_10012833C(v48, v45);
  sub_100011EE4(&v118, &v114, &qword_10019CBC0, &qword_100152960);
  if (v115)
  {
    v49 = sub_1001283B4(&v114, &v100);
    sub_100018C6C(v49, v26);

    sub_10012749C(&v100, &v42[14].n128_i64[1]);
    sub_1000034F8(&v100);
  }

  else
  {
    sub_100003968();
    sub_100018C6C(v28, v26);
  }

  sub_100011EE4(&v117, &v114, &qword_10019CBC0, &qword_100152960);
  if (v115)
  {
    sub_10001A798(&v114, &v100);
    sub_100005334();
    sub_100129270(&v100, v50, 0xE700000000000000, v51);
    sub_1000034F8(&v100);
  }

  else
  {
    sub_100013D10();
  }

  v52 = sub_100011EE4(v116, &v114, &qword_10019CBC8, &qword_100152968);
  if (v115)
  {
    sub_1001286E0(v52, v53, v54, v55, v56, v57, v58, v59, v96, v97, v98, v99, v100, *(&v100 + 1), v101, v102, v103, v104, v105, v106, v107, v108, v109, *(&v109 + 1), v110, v111, v112, v113, v114);
    sub_1001271A4(&v100, v26 + 40, &v42[19].n128_i64[1]);

    sub_100003E9C(&v100, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100007588();
  }

  v60 = _swiftEmptyArrayStorage;
  sub_10012869C();
  sub_100128380();
  do
  {
    sub_10001330C();
    sub_100011EE4(v61, v62, v63, v64);
    sub_100128584();
    if (v65)
    {
      sub_1001283B4(&v109, &v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_1000073C4();
        sub_10001A674(v80, v81, v82, v83, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v60 = v84;
      }

      sub_100128528();
      if (v75)
      {
        v85 = sub_100009A90(v74);
        sub_10001A674(v85, v86, v87, v60, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v60 = v66;
      }

      sub_100016900(v66, v67, v68, v69, v70, v71, v72, v73, v96, v97, v98, v99, v100);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v76, v77, v78);
    }

    sub_1000196A4();
  }

  while (!v79);
  swift_setDeallocating();
  v88 = sub_10000373C();
  sub_100018848(v88, v89);
  sub_100009AA4(&v114);

  sub_100003E9C(v116, &qword_10019CBC8, &qword_100152968);
  sub_1000111C8();
  sub_100003E9C(v90, v91, v92);
  sub_1000111C8();
  sub_100003E9C(v93, v94, v95);
  sub_1000034F8(v119);
  sub_10011EED8(&v114);
  sub_100002714();
  sub_100012118(&v114);
  sub_1000069EC();
}

{
  sub_100006A04();
  v95 = v22;
  v96 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100128618();
  v117[3] = type metadata accessor for Expression();
  v117[4] = &protocol witness table for Expression<A>;
  v117[0] = v36;
  v117[1] = v34;
  v117[2] = v32;
  v37 = *(a21 + 40);

  v38 = v37(v24, a21);
  v40 = v39;
  v116[3] = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v116[4] = &protocol witness table for Expression<A>;
  v116[0] = v30;
  v116[1] = v28;
  v116[2] = v26;
  sub_1000294F4(*(a21 + 8));
  sub_1000116F4();
  (*(v41 + 16))();
  sub_100128604();
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v42 = sub_10012842C();
  v43 = sub_100017FC0(v42, xmmword_100152930);
  sub_100013334(v43, &v42[2]);
  v44 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  v42[6].n128_u64[1] = &protocol witness table for Expression<A>;
  v42[4].n128_u64[1] = v38;
  v42[5].n128_u64[0] = v40;
  v45.n128_f64[0] = sub_100018D54(v44, _swiftEmptyArrayStorage);
  v42[11].n128_u64[0] = v46;
  v42[11].n128_u64[1] = &protocol witness table for Expression<A>;
  sub_10012833C(v47, v45);
  sub_100011EE4(v116, &v112, &qword_10019CBC0, &qword_100152960);
  if (v113)
  {
    sub_1001283B4(&v112, &v98);

    sub_10012749C(&v98, &v42[14].n128_i64[1]);
    sub_1000034F8(&v98);
  }

  else
  {
    sub_100003968();
  }

  sub_100011EE4(&v115, &v112, &qword_10019CBC0, &qword_100152960);
  if (v113)
  {
    sub_10001A798(&v112, &v98);
    sub_100005334();
    sub_100129270(&v98, v48, 0xE700000000000000, v49);
    sub_1000034F8(&v98);
  }

  else
  {
    sub_100013D10();
  }

  v50 = sub_100011EE4(v114, &v112, &qword_10019CBC8, &qword_100152968);
  if (v113)
  {
    sub_1001286E0(v50, v51, v52, v53, v54, v55, v56, v57, v94, v95, v96, v97, v98, *(&v98 + 1), v99, v100, v101, v102, v103, v104, v105, v106, v107, *(&v107 + 1), v108, v109, v110, v111, v112);
    sub_1001271A4(&v98, v26 + 40, &v42[19].n128_i64[1]);

    sub_100003E9C(&v98, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100007588();
  }

  v58 = _swiftEmptyArrayStorage;
  sub_10012869C();
  sub_100128380();
  do
  {
    sub_10001330C();
    sub_100011EE4(v59, v60, v61, v62);
    sub_100128584();
    if (v63)
    {
      sub_1001283B4(&v107, &v98);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1000073C4();
        sub_10001A674(v78, v79, v80, v81, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v58 = v82;
      }

      sub_100128528();
      if (v73)
      {
        v83 = sub_100009A90(v72);
        sub_10001A674(v83, v84, v85, v58, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v58 = v64;
      }

      sub_100016900(v64, v65, v66, v67, v68, v69, v70, v71, v94, v95, v96, v97, v98);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v74, v75, v76);
    }

    sub_1000196A4();
  }

  while (!v77);
  swift_setDeallocating();
  v86 = sub_10000373C();
  sub_100018848(v86, v87);
  sub_100009AA4(&v112);

  sub_100003E9C(v114, &qword_10019CBC8, &qword_100152968);
  sub_1000111C8();
  sub_100003E9C(v88, v89, v90);
  sub_1000111C8();
  sub_100003E9C(v91, v92, v93);
  sub_1000034F8(v117);
  sub_10011EED8(&v112);
  sub_100002714();
  sub_100012118(&v112);
  sub_1000069EC();
}

{
  sub_100006A04();
  v23 = v22;
  v85 = v24;
  v86 = v25;
  v27 = v26;
  v84 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100128618();
  v35 = type metadata accessor for Optional();
  sub_100002944(v35);
  v87 = v36;
  v38 = *(v37 + 64);
  sub_100003A54();
  __chkstk_darwin(v39);
  v97[3] = sub_1001285B4();
  v97[4] = &protocol witness table for Expression<A>;
  v97[0] = v34;
  v97[1] = v32;
  v97[2] = v30;
  v40 = *(a21 + 40);

  v41 = v40(v23, a21);
  v88 = v42;
  v89 = v41;
  if (v27)
  {
    v43 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v44 = &protocol witness table for Expression<A>;
    v45 = v84;
    v46 = v85;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
  }

  v96[0] = v45;
  v96[1] = v27;
  v96[2] = v46;
  v96[3] = v43;
  v96[4] = v44;
  (*(v87 + 16))(v21, v86, v35);
  sub_100009C04(v21);
  if (v47)
  {
    v48 = sub_100016D84();
    sub_100018C6C(v48, v49);
    (*(v87 + 8))(v21, v35);
    *&v50 = sub_100013200();
    v95[0] = v50;
    v95[1] = v50;
  }

  else
  {
    sub_1001287E8(*(a21 + 8));
    sub_1000116F4();
    (*(v51 + 32))();
    v52 = sub_100016D84();
    sub_100018C6C(v52, v53);
  }

  memset(v94, 0, sizeof(v94));
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v54 = sub_10012842C();
  v55 = sub_100017FC0(v54, xmmword_100152930);
  sub_100013334(v55, v54 + 32);
  v56 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v54 + 104) = &protocol witness table for Expression<A>;
  *(v54 + 72) = v89;
  *(v54 + 80) = v88;
  v57.n128_f64[0] = sub_100018D54(v56, _swiftEmptyArrayStorage);
  sub_100128664(v57);
  sub_100011EE4(v96, v93, &qword_10019CBC0, &qword_100152960);
  if (*(&v93[1] + 1))
  {
    sub_10001A798(v93, v90);

    sub_10012749C(v90, (v54 + 232));
    sub_1000034F8(v90);
  }

  else
  {
    sub_100003968();
  }

  sub_100011EE4(v95, v93, &qword_10019CBC0, &qword_100152960);
  if (*(&v93[1] + 1))
  {
    sub_10001A798(v93, v90);
    sub_100005334();
    sub_100129270(v90, v58, 0xE700000000000000, v59);
    sub_1000034F8(v90);
  }

  else
  {
    sub_100013D10();
  }

  sub_100011EE4(v94, v93, &qword_10019CBC8, &qword_100152968);
  if (*(&v93[1] + 1))
  {
    memcpy(v90, v93, sizeof(v90));
    sub_1001271A4(v90, &v90[2] + 8, (v54 + 312));

    sub_100003E9C(v90, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100007588();
  }

  v60 = _swiftEmptyArrayStorage;
  v61 = 32;
  *(v54 + 384) = 0;
  *(v54 + 352) = 0u;
  *(v54 + 368) = 0u;
  do
  {
    sub_100011EE4(v54 + v61, v93, &qword_10019CBC0, &qword_100152960);
    v91[0] = v93[0];
    v91[1] = v93[1];
    v92 = *&v93[2];
    if (*(&v93[1] + 1))
    {
      sub_1001283B4(v91, v90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_1000073C4();
        sub_10001A674(v67, v68, v69, v70, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v60 = v71;
      }

      v63 = v60[2];
      v62 = v60[3];
      if (v63 >= v62 >> 1)
      {
        v72 = sub_100009A90(v62);
        sub_10001A674(v72, v73, v74, v60, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v60 = v75;
      }

      v60[2] = v63 + 1;
      sub_10001A798(v90, &v60[5 * v63 + 4]);
    }

    else
    {
      sub_1000113C0();
      sub_100003E9C(v64, v65, v66);
    }

    v61 += 40;
  }

  while (v61 != 392);
  swift_setDeallocating();
  v76 = sub_10000373C();
  sub_100018848(v76, v77);
  sub_100009AA4(v93);

  sub_100003E9C(v94, &qword_10019CBC8, &qword_100152968);
  sub_1000111C8();
  sub_100003E9C(v78, v79, v80);
  sub_1000111C8();
  sub_100003E9C(v81, v82, v83);
  sub_1000034F8(v97);
  sub_10011EED8(v93);
  sub_1000064BC();
  sub_1000034F8(v93);
  sub_10001317C();
  sub_1000069EC();
}

uint64_t sub_10011E964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v20 = a4;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100152930;
  sub_100013334(a1, inited + 32);
  v22 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  v23 = v22;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  *(inited + 88) = _swiftEmptyArrayStorage;
  *(inited + 96) = v22;
  if (v20 == 2)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v25 = 0x8000000100158D30;
    v24 = 0x205952414D495250;
    if (a4)
    {
      v24 = 0xD000000000000019;
    }

    else
    {
      v25 = 0xEB0000000059454BLL;
    }

    v28 = &protocol witness table for Expression<A>;
    v26 = _swiftEmptyArrayStorage;
    v27 = v22;
  }

  *(inited + 112) = v24;
  *(inited + 120) = v25;
  *(inited + 128) = v26;
  *(inited + 136) = v27;
  *(inited + 144) = v28;
  if (a5)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v30 = 0xE800000000000000;
    v29 = 0x4C4C554E20544F4ELL;
    v31 = _swiftEmptyArrayStorage;
    v32 = v22;
    v33 = &protocol witness table for Expression<A>;
  }

  *(inited + 152) = v29;
  *(inited + 160) = v30;
  *(inited + 168) = v31;
  *(inited + 176) = v32;
  *(inited + 184) = v33;
  if (a6)
  {
    v34 = xmmword_100152940;
    v35 = _swiftEmptyArrayStorage;
    v36 = &protocol witness table for Expression<A>;
    v37 = v22;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0uLL;
  }

  *(inited + 216) = v37;
  *(inited + 224) = v36;
  *(inited + 192) = v34;
  *(inited + 208) = v35;
  sub_100011EE4(a7, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);

    sub_10012749C(__dst, (inited + 232));
    sub_1000034F8(__dst);
  }

  else
  {
    *(inited + 264) = 0;
    *(inited + 248) = 0u;
    *(inited + 232) = 0u;
  }

  sub_100011EE4(a8, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);
    sub_100129270(__dst, 0x544C5541464544, 0xE700000000000000, (inited + 272));
    sub_1000034F8(__dst);
  }

  else
  {
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  sub_100011EE4(a10, __src, &qword_10019CBC8, &qword_100152968);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001271A4(__dst, &__dst[2] + 8, (inited + 312));
    sub_100003E9C(__dst, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    *(inited + 344) = 0;
    *(inited + 312) = 0u;
    *(inited + 328) = 0u;
  }

  if (a12 == 3)
  {
    *(inited + 384) = 0;
    *(inited + 352) = 0u;
    *(inited + 368) = 0u;
  }

  else
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_10014BC40;
    *(v38 + 32) = 0x4554414C4C4F43;
    *(v38 + 40) = 0xE700000000000000;
    *(v38 + 48) = _swiftEmptyArrayStorage;
    *(v38 + 56) = v23;
    *(v38 + 96) = &type metadata for Collation;
    *(v38 + 104) = &protocol witness table for Collation;
    *(v38 + 64) = &protocol witness table for Expression<A>;
    *(v38 + 72) = a11;
    *(v38 + 80) = a12;
    sub_100127814(a11, a12);
    sub_100013640(v38, (inited + 352));
    swift_setDeallocating();
    sub_100018848(&qword_10019B238, &unk_100152B50);
  }

  v39 = _swiftEmptyArrayStorage;
  for (i = 32; i != 392; i += 40)
  {
    sub_100011EE4(inited + i, __src, &qword_10019CBC0, &qword_100152960);
    v48[0] = __src[0];
    v48[1] = __src[1];
    v49 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_10001A798(v48, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001A674(0, v39[2] + 1, 1, v39, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v39 = v43;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        sub_10001A674(v41 > 1, v42 + 1, 1, v39, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v39 = v44;
      }

      v39[2] = v42 + 1;
      sub_10001A798(__dst, &v39[5 * v42 + 4]);
    }

    else
    {
      sub_100003E9C(v48, &qword_10019CBC0, &qword_100152960);
    }
  }

  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100013640(v39, a9);
}

uint64_t sub_10011EED8(uint64_t a1)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  v3 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v3;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  swift_bridgeObjectRetain_n();

  if (v6)
  {

    v5 = v7;
    v4 = v6;
  }

  sub_100019760(v5, v4, v9 & 1, (inited + 72));

  *(inited + 136) = v3;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x554C4F4320444441;
  *(inited + 120) = 0xEA00000000004E4DLL;
  *(inited + 128) = _swiftEmptyArrayStorage;
  sub_100013334(a1, inited + 152);
  sub_100013640(inited, v13);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  sub_1000034B4(v13, v13[3]);
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  sub_1000034F8(v13);
  return countAndFlagsBits;
}

void Table.addColumn<A>(_:check:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45)
{
  sub_100006A04();
  a19 = v46;
  a20 = v47;
  sub_100023388();
  a14 = v48;
  a15 = v45;
  v50 = v49;
  a10 = v51;
  a11 = v52;
  a12 = v53;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = *(v46 + 16);
  sub_100128618();
  v61 = type metadata accessor for Optional();
  sub_100002944(v61);
  a9 = v62;
  v64 = *(v63 + 64);
  sub_100003A54();
  __chkstk_darwin(v65);
  v67 = &a9 - v66;
  *(v46 - 112) = sub_100021344();
  *(v46 - 104) = &protocol witness table for Expression<A>;
  *(v46 - 136) = v59;
  *(v46 - 128) = v57;
  *(v46 - 120) = v55;
  v68 = *(v60 + 40);

  v69 = v60;
  v70 = v68(v50, v60);
  v72 = a10;
  v71 = a11;
  a13 = v70;
  v74 = v73;
  *(v46 - 152) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  *(v46 - 144) = &protocol witness table for Expression<A>;
  *(v46 - 176) = a12;
  *(v46 - 168) = v72;
  *(v46 - 160) = v71;
  v75 = a9;
  (*(a9 + 16))(v67, a14, v61);
  sub_100009C04(v67);
  if (v76)
  {
    v77 = *(v75 + 8);

    v77(v67, v61);
    *&v78 = sub_100013200();
    a44 = v78;
    a45 = v78;
  }

  else
  {
    sub_1001287E8(*(v69 + 8));
    sub_1000116F4();
    (*(v79 + 32))();
  }

  a42 = 0u;
  a43 = 0u;
  a40 = 0u;
  a41 = 0u;
  a39 = 0u;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v80 = sub_10012842C();
  v81 = sub_100017FC0(v80, xmmword_100152930);
  sub_100013334(v81, v80 + 32);
  v82 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v80 + 104) = &protocol witness table for Expression<A>;
  *(v80 + 72) = a13;
  *(v80 + 80) = v74;
  v83.n128_f64[0] = sub_100018D54(v82, _swiftEmptyArrayStorage);
  sub_100128664(v83);
  sub_100011EE4(v46 - 176, &a31, &qword_10019CBC0, &qword_100152960);
  if (*(&a32 + 1))
  {
    sub_10001A798(&a31, &a17);

    sub_10012749C(&a17, (v80 + 232));
    sub_1000034F8(&a17);
  }

  else
  {
    sub_100003968();
  }

  sub_100011EE4(v46 - 224, &a31, &qword_10019CBC0, &qword_100152960);
  if (*(&a32 + 1))
  {
    sub_10001A798(&a31, &a17);
    sub_100005334();
    sub_100129270(&a17, v84, 0xE700000000000000, v85);
    sub_1000034F8(&a17);
  }

  else
  {
    sub_100013D10();
  }

  sub_100011EE4(&a39, &a31, &qword_10019CBC8, &qword_100152968);
  if (*(&a32 + 1))
  {
    memcpy(&a17, &a31, 0x50uLL);
    sub_1001271A4(&a17, &a22, (v80 + 312));

    sub_100003E9C(&a17, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100007588();
  }

  v86 = _swiftEmptyArrayStorage;
  v87 = 32;
  *(v80 + 384) = 0;
  *(v80 + 352) = 0u;
  *(v80 + 368) = 0u;
  do
  {
    sub_100011EE4(v80 + v87, &a31, &qword_10019CBC0, &qword_100152960);
    a27 = a31;
    a28 = a32;
    a29 = a33;
    if (*(&a32 + 1))
    {
      sub_1001283B4(&a27, &a17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_1000073C4();
        sub_10001A674(v93, v94, v95, v96, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v86 = v97;
      }

      v89 = v86[2];
      v88 = v86[3];
      if (v89 >= v88 >> 1)
      {
        sub_100005150(v88);
        sub_10000274C();
        sub_10001A674(v98, v99, v100, v101, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v86 = v102;
      }

      v86[2] = v89 + 1;
      sub_10001A798(&a17, &v86[5 * v89 + 4]);
    }

    else
    {
      sub_1000113C0();
      sub_100003E9C(v90, v91, v92);
    }

    v87 += 40;
  }

  while (v87 != 392);
  swift_setDeallocating();
  v103 = sub_10000373C();
  sub_100018848(v103, v104);
  sub_100009AA4(&a31);

  sub_100003E9C(&a39, &qword_10019CBC8, &qword_100152968);
  sub_1000111C8();
  sub_100003E9C(v105, v106, v107);
  sub_1000111C8();
  sub_100003E9C(v108, v109, v110);
  sub_1000034F8((v46 - 136));
  sub_10011EED8(&a31);
  sub_1000064BC();
  sub_1000034F8(&a31);
  sub_10001317C();
  sub_1000069EC();
}

void Table.addColumn<A>(_:unique:check:references:_:)()
{
  sub_100006A04();
  v160 = v1;
  v161 = v2;
  sub_100023388();
  v144 = v0;
  v149 = v3;
  v124 = v4;
  v6 = v5;
  HIDWORD(v129) = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v134 = v1[3];
  v119 = v1[2];
  v14 = v1[6];
  v139 = v1[4];
  v15 = v1[5];
  sub_100128300();
  v16 = type metadata accessor for Expression();
  *(v1 - 14) = v16;
  *(v1 - 13) = &protocol witness table for Expression<A>;
  *(v1 - 17) = v13;
  *(v1 - 16) = v11;
  *(v1 - 15) = v9;
  v17 = *(v14 + 40);

  v18 = sub_10001317C();
  v19 = v17(v18);
  v21 = v20;
  if (v6)
  {
    v22 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v23 = &protocol witness table for Expression<A>;
  }

  else
  {
    v22 = sub_100002E28();
  }

  sub_100018B04(v22, v23);
  *&v24 = sub_100013200();
  v188 = v24;
  v189 = v24;
  sub_100013334(v124, v182);
  v186 = v16;
  v187 = &protocol witness table for Expression<A>;
  v25 = v134;
  v183 = v119;
  v184 = v134;
  v185 = v139;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v26 = sub_10012842C();
  v27 = sub_100017FC0(v26, xmmword_100152930);
  sub_100013334(v27, v26 + 32);
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_10000EEFC();
  *(v26 + 104) = &protocol witness table for Expression<A>;
  *(v26 + 88) = _swiftEmptyArrayStorage;
  *(v26 + 96) = v28;
  *(v26 + 176) = v28;
  *(v26 + 184) = &protocol witness table for Expression<A>;
  sub_10000D364();
  *(v26 + 72) = v19;
  *(v26 + 80) = v21;
  *(v26 + 112) = v30;
  *(v26 + 128) = v30;
  if ((v129 & 0x100000000) != 0)
  {
    v30 = xmmword_100152940;
    v29 = _swiftEmptyArrayStorage;
  }

  sub_100018BE4(v29, v30);
  v37 = sub_100128770(v31, v32, &qword_10019CBC0, &qword_100152960, v33, v34, v35, v36, v119, v124, v129, v134, v139, v144, v149, v154, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
  if (v175)
  {
    sub_100005D4C(v37, v38, v39, v40, v41, v42, v43, v44, v120, v125, v130, v135, v140, v145, v150, v155, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
    v45 = sub_100016D84();
    sub_100018C6C(v45, v46);

    sub_100128404(v47, v48, v49, v50, v51, v52, v53, v54);
    v55 = sub_1000034F8(&v159);
  }

  else
  {
    sub_100003968();
    v61 = sub_100016D84();
    sub_100018C6C(v61, v62);
  }

  v63 = sub_1001287D0(v55, v56, &qword_10019CBC0, &qword_100152960, v57, v58, v59, v60, v120, v125, v130, v135, v140, v145, v150, v155, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
  if (v175)
  {
    sub_100005D4C(v63, v64, v65, v66, v67, v68, v69, v70, v121, v126, v131, v136, v141, v146, v151, v156, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
    sub_100005334();
    sub_100128758(v71, v72, v122, v127, v132, v137, v142, v147, v152, v157);
    v73 = sub_1000034F8(&v159);
  }

  else
  {
    sub_100013D10();
  }

  v79 = sub_100128740(v73, v74, &qword_10019CBC8, &qword_100152968, v75, v76, v77, v78, v121, v126, v131, v136, v141, v146, v151, v156, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, v180, v181, v182[0]);
  if (v175)
  {
    v87 = sub_1000129D4(v79, v80, v81, v82, v83, v84, v85, v86, v123, v128, v133, v138, v143, v148, v153, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173);
    sub_1001283E8(v87, v88, v89, v90, v91, v92, v93, v94);

    sub_100003E9C(&v159, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100018530();
  }

  v95 = _swiftEmptyArrayStorage;
  sub_10012869C();
  *(v26 + 352) = 0u;
  *(v26 + 368) = 0u;
  do
  {
    sub_10001330C();
    sub_100011EE4(v96, v97, v98, v99);
    sub_100018908();
    if (v100)
    {
      sub_1001283B4(&v168, &v159);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1000073C4();
        sub_10001A674(v107, v108, v109, v110, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v95 = v111;
      }

      sub_100128518();
      if (v102)
      {
        sub_100005150(v101);
        sub_10000274C();
        sub_10001A674(v112, v113, v114, v115, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v95 = v116;
      }

      v95[2] = v26 + 312;
      sub_1000208B8(&v95[5 * v25], v123, v128, v133, v138, v143, v148, v153, v158, v159);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v103, v104, v105);
    }

    sub_1000196A4();
  }

  while (!v106);
  swift_setDeallocating();
  sub_100128818();
  sub_100009AA4(&v173);

  sub_10012848C();
  sub_100003E9C(v182, &qword_10019CBC8, &qword_100152968);
  v117 = sub_100128420();
  sub_100003E9C(v117, v118, &qword_100152960);
  sub_1000034F8(v1 - 17);
  sub_10011EED8(&v173);
  sub_100002714();
  sub_100012118(&v173);
  sub_1000069EC();
}

{
  sub_100006A04();
  v156 = v1;
  v157 = v2;
  sub_100023388();
  v145 = v0;
  v130 = v3;
  v135 = v4;
  v115 = v5;
  v125 = v6;
  HIDWORD(v140) = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1[3];
  v120 = v1[2];
  v15 = v1[5];
  v16 = v1[6];
  v17 = v1[4];
  sub_100128300();
  v18 = type metadata accessor for Expression();
  *(v1 - 14) = v18;
  *(v1 - 13) = &protocol witness table for Expression<A>;
  *(v1 - 17) = v13;
  *(v1 - 16) = v11;
  *(v1 - 15) = v9;
  v19 = *(v16 + 40);

  v20 = v16;
  v21 = v115;
  v22 = v19(v15, v20);
  v24 = v23;
  *(v1 - 19) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  *(v1 - 18) = &protocol witness table for Expression<A>;
  *(v1 - 22) = v125;
  *(v1 - 21) = v115;
  *(v1 - 20) = v130;
  *&v25 = sub_100013200();
  v184 = v25;
  v185 = v25;
  sub_100013334(v135, v178);
  v182 = v18;
  v183 = &protocol witness table for Expression<A>;
  v179 = v120;
  v180 = v14;
  v181 = v17;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v26 = sub_10012842C();
  v27 = sub_100017FC0(v26, xmmword_100152930);
  sub_100013334(v27, v26 + 32);
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_10000EEFC();
  *(v26 + 104) = &protocol witness table for Expression<A>;
  *(v26 + 88) = _swiftEmptyArrayStorage;
  *(v26 + 96) = v28;
  *(v26 + 176) = v28;
  *(v26 + 184) = &protocol witness table for Expression<A>;
  sub_10000D364();
  *(v26 + 72) = v22;
  *(v26 + 80) = v24;
  *(v26 + 112) = v30;
  *(v26 + 128) = v30;
  if ((v140 & 0x100000000) != 0)
  {
    v30 = xmmword_100152940;
    v29 = _swiftEmptyArrayStorage;
  }

  sub_100018BE4(v29, v30);
  v37 = sub_100128770(v31, v32, &qword_10019CBC0, &qword_100152960, v33, v34, v35, v36, v115, v120, v125, v130, v135, v140, v145, v150, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);
  if (v171)
  {
    sub_100005D4C(v37, v38, v39, v40, v41, v42, v43, v44, v116, v121, v126, v131, v136, v141, v146, v151, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);

    sub_100128404(v45, v46, v47, v48, v49, v50, v51, v52);
    v53 = sub_1000034F8(&v155);
  }

  else
  {
    sub_100003968();
  }

  v59 = sub_1001287D0(v53, v54, &qword_10019CBC0, &qword_100152960, v55, v56, v57, v58, v116, v121, v126, v131, v136, v141, v146, v151, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);
  if (v171)
  {
    sub_100005D4C(v59, v60, v61, v62, v63, v64, v65, v66, v117, v122, v127, v132, v137, v142, v147, v152, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);
    sub_100005334();
    sub_100128758(v67, v68, v118, v123, v128, v133, v138, v143, v148, v153);
    v69 = sub_1000034F8(&v155);
  }

  else
  {
    sub_100013D10();
  }

  v75 = sub_100128740(v69, v70, &qword_10019CBC8, &qword_100152968, v71, v72, v73, v74, v117, v122, v127, v132, v137, v142, v147, v152, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v177, v178[0]);
  if (v171)
  {
    v83 = sub_1000129D4(v75, v76, v77, v78, v79, v80, v81, v82, v119, v124, v129, v134, v139, v144, v149, v154, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169);
    sub_1001283E8(v83, v84, v85, v86, v87, v88, v89, v90);

    sub_100003E9C(&v155, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100018530();
  }

  v91 = _swiftEmptyArrayStorage;
  v92 = 32;
  *(v26 + 384) = 0;
  sub_100128380();
  do
  {
    sub_10001330C();
    sub_100011EE4(v93, v94, v95, v96);
    sub_100018908();
    if (v97)
    {
      sub_1001283B4(&v164, &v155);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1000073C4();
        sub_10001A674(v103, v104, v105, v106, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v91 = v107;
      }

      sub_100128518();
      if (v99)
      {
        sub_100005150(v98);
        sub_10000274C();
        sub_10001A674(v108, v109, v110, v111, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v91 = v112;
      }

      v91[2] = v26 + 312;
      sub_1000208B8(v91 + v21 * v14, v119, v124, v129, v134, v139, v144, v149, v154, v155);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v100, v101, v102);
    }

    v92 += 40;
  }

  while (v92 != 392);
  swift_setDeallocating();
  sub_100128818();
  sub_100009AA4(&v169);

  sub_10012848C();
  sub_100003E9C(v178, &qword_10019CBC8, &qword_100152968);
  v113 = sub_100128420();
  sub_100003E9C(v113, v114, &qword_100152960);
  sub_1000034F8(v1 - 17);
  sub_10011EED8(&v169);
  sub_100002714();
  sub_100012118(&v169);
  sub_1000069EC();
}

{
  sub_100006A04();
  v155 = v1;
  v156 = v2;
  sub_100023388();
  v144 = v0;
  v124 = v3;
  v5 = v4;
  v7 = v6;
  HIDWORD(v129) = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1[5];
  v139 = v1[4];
  v134 = v1[3];
  v119 = v1[2];
  v16 = v1[6];
  sub_100128560();
  *(v1 - 14) = sub_1000048F8();
  *(v1 - 13) = &protocol witness table for Expression<A>;
  *(v1 - 17) = v14;
  *(v1 - 16) = v12;
  *(v1 - 15) = v10;
  v17 = *(v16 + 40);

  v18 = sub_10001317C();
  v19 = v17(v18);
  v21 = v20;
  if (v5)
  {
    v22 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v23 = &protocol witness table for Expression<A>;
  }

  else
  {
    v22 = sub_100002E28();
  }

  sub_100018B04(v22, v23);
  *&v24 = sub_100013200();
  v183 = v24;
  v184 = v24;
  sub_100013334(v124, v177);
  sub_100128300();
  v181 = type metadata accessor for Expression();
  v182 = &protocol witness table for Expression<A>;
  v178 = v119;
  v179 = v134;
  v180 = v139;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v25 = sub_10012842C();
  v26 = sub_100017FC0(v25, xmmword_100152930);
  sub_100013334(v26, v25 + 32);
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_10000EEFC();
  v28 = 0;
  *(v25 + 104) = &protocol witness table for Expression<A>;
  *(v25 + 88) = _swiftEmptyArrayStorage;
  *(v25 + 96) = v29;
  *(v25 + 72) = v19;
  *(v25 + 80) = v21;
  *(v25 + 112) = v27;
  *(v25 + 128) = v27;
  *(v25 + 144) = v27;
  *(v25 + 160) = v27;
  *(v25 + 176) = v27;
  if ((v129 & 0x100000000) != 0)
  {
    v27 = xmmword_100152940;
    v28 = _swiftEmptyArrayStorage;
  }

  sub_100018BE4(v28, v27);
  v36 = sub_100128770(v30, v31, &qword_10019CBC0, &qword_100152960, v32, v33, v34, v35, v114, v119, v124, v129, v134, v139, v144, v149, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
  if (v170)
  {
    sub_100005D4C(v36, v37, v38, v39, v40, v41, v42, v43, v115, v120, v125, v130, v135, v140, v145, v150, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    sub_100018C6C(v7, v5);

    sub_100128404(v44, v45, v46, v47, v48, v49, v50, v51);
    v52 = sub_1000034F8(&v154);
  }

  else
  {
    sub_100003968();
    sub_100018C6C(v7, v5);
  }

  v58 = sub_1001287D0(v52, v53, &qword_10019CBC0, &qword_100152960, v54, v55, v56, v57, v115, v120, v125, v130, v135, v140, v145, v150, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
  if (v170)
  {
    sub_100005D4C(v58, v59, v60, v61, v62, v63, v64, v65, v116, v121, v126, v131, v136, v141, v146, v151, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    sub_100005334();
    sub_100128758(v66, v67, v117, v122, v127, v132, v137, v142, v147, v152);
    v68 = sub_1000034F8(&v154);
  }

  else
  {
    sub_100013D10();
  }

  v74 = sub_100128740(v68, v69, &qword_10019CBC8, &qword_100152968, v70, v71, v72, v73, v116, v121, v126, v131, v136, v141, v146, v151, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175, v176, v177[0]);
  if (v170)
  {
    v82 = sub_1000129D4(v74, v75, v76, v77, v78, v79, v80, v81, v118, v123, v128, v133, v138, v143, v148, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    sub_1001283E8(v82, v83, v84, v85, v86, v87, v88, v89);

    sub_100003E9C(&v154, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100018530();
  }

  v90 = _swiftEmptyArrayStorage;
  sub_10012869C();
  *(v25 + 352) = 0u;
  *(v25 + 368) = 0u;
  do
  {
    sub_10001330C();
    sub_100011EE4(v91, v92, v93, v94);
    sub_100018908();
    if (v95)
    {
      sub_1001283B4(&v163, &v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_1000073C4();
        sub_10001A674(v102, v103, v104, v105, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v90 = v106;
      }

      v97 = v90[2];
      v96 = v90[3];
      if (v97 >= v96 >> 1)
      {
        sub_100005150(v96);
        sub_10000274C();
        sub_10001A674(v107, v108, v109, v110, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v90 = v111;
      }

      v90[2] = v97 + 1;
      sub_1000208B8(&v90[5 * v97], v118, v123, v128, v133, v138, v143, v148, v153, v154);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v98, v99, v100);
    }

    sub_1000196A4();
  }

  while (!v101);
  swift_setDeallocating();
  sub_100128818();
  sub_100009AA4(&v168);

  sub_10012848C();
  sub_100003E9C(v177, &qword_10019CBC8, &qword_100152968);
  v112 = sub_100128420();
  sub_100003E9C(v112, v113, &qword_100152960);
  sub_1000034F8(v1 - 17);
  sub_10011EED8(&v168);
  sub_100002714();
  sub_100012118(&v168);
  sub_1000069EC();
}

{
  sub_100006A04();
  v155 = v1;
  v156 = v2;
  sub_100023388();
  v144 = v0;
  v134 = v3;
  v119 = v4;
  v124 = v5;
  v7 = v6;
  HIDWORD(v139) = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1[3];
  v129 = v1[2];
  v16 = v1[5];
  v17 = v1[6];
  v18 = v1[4];
  sub_100128560();
  *(v1 - 14) = sub_1000048F8();
  *(v1 - 13) = &protocol witness table for Expression<A>;
  *(v1 - 17) = v14;
  *(v1 - 16) = v12;
  *(v1 - 15) = v10;
  v19 = *(v17 + 40);

  v20 = sub_10001317C();
  v21 = v19(v20);
  v23 = v22;
  *(v1 - 19) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  *(v1 - 18) = &protocol witness table for Expression<A>;
  *(v1 - 22) = v119;
  *(v1 - 21) = v7;
  *(v1 - 20) = v124;
  *&v24 = sub_100013200();
  v183 = v24;
  v184 = v24;
  sub_100013334(v134, v177);
  sub_100128300();
  v181 = type metadata accessor for Expression();
  v182 = &protocol witness table for Expression<A>;
  v178 = v129;
  v179 = v15;
  v180 = v18;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v25 = sub_10012842C();
  v26 = sub_100017FC0(v25, xmmword_100152930);
  sub_100013334(v26, v25 + 32);
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_10000EEFC();
  v28 = 0;
  *(v25 + 104) = &protocol witness table for Expression<A>;
  *(v25 + 88) = _swiftEmptyArrayStorage;
  *(v25 + 96) = v29;
  *(v25 + 72) = v21;
  *(v25 + 80) = v23;
  *(v25 + 112) = v27;
  *(v25 + 128) = v27;
  *(v25 + 144) = v27;
  *(v25 + 160) = v27;
  *(v25 + 176) = v27;
  if ((v139 & 0x100000000) != 0)
  {
    v27 = xmmword_100152940;
    v28 = _swiftEmptyArrayStorage;
  }

  sub_100018BE4(v28, v27);
  v36 = sub_100128770(v30, v31, &qword_10019CBC0, &qword_100152960, v32, v33, v34, v35, v114, v119, v124, v129, v134, v139, v144, v149, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
  if (v170)
  {
    sub_100005D4C(v36, v37, v38, v39, v40, v41, v42, v43, v115, v120, v125, v130, v135, v140, v145, v150, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);

    sub_100128404(v44, v45, v46, v47, v48, v49, v50, v51);
    v52 = sub_1000034F8(&v154);
  }

  else
  {
    sub_100003968();
  }

  v58 = sub_1001287D0(v52, v53, &qword_10019CBC0, &qword_100152960, v54, v55, v56, v57, v115, v120, v125, v130, v135, v140, v145, v150, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
  if (v170)
  {
    sub_100005D4C(v58, v59, v60, v61, v62, v63, v64, v65, v116, v121, v126, v131, v136, v141, v146, v151, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    sub_100005334();
    sub_100128758(v66, v67, v117, v122, v127, v132, v137, v142, v147, v152);
    v68 = sub_1000034F8(&v154);
  }

  else
  {
    sub_100013D10();
  }

  v74 = sub_100128740(v68, v69, &qword_10019CBC8, &qword_100152968, v70, v71, v72, v73, v116, v121, v126, v131, v136, v141, v146, v151, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175, v176, v177[0]);
  if (v170)
  {
    v82 = sub_1000129D4(v74, v75, v76, v77, v78, v79, v80, v81, v118, v123, v128, v133, v138, v143, v148, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, v160, v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
    sub_1001283E8(v82, v83, v84, v85, v86, v87, v88, v89);

    sub_100003E9C(&v154, &qword_10019CBD0, &qword_100152970);
  }

  else
  {

    sub_100018530();
  }

  v90 = _swiftEmptyArrayStorage;
  v91 = 32;
  *(v25 + 384) = 0;
  sub_100128380();
  do
  {
    sub_10001330C();
    sub_100011EE4(v92, v93, v94, v95);
    sub_100018908();
    if (v96)
    {
      sub_1001283B4(&v163, &v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_1000073C4();
        sub_10001A674(v102, v103, v104, v105, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v90 = v106;
      }

      sub_100128518();
      if (v98)
      {
        sub_100005150(v97);
        sub_10000274C();
        sub_10001A674(v107, v108, v109, v110, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v90 = v111;
      }

      v90[2] = v25 + 312;
      sub_1000208B8(v90 + &protocol witness table for Expression<A> * v15, v118, v123, v128, v133, v138, v143, v148, v153, v154);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v99, v100, v101);
    }

    v91 += 40;
  }

  while (v91 != 392);
  swift_setDeallocating();
  sub_100128818();
  sub_100009AA4(&v168);

  sub_10012848C();
  sub_100003E9C(v177, &qword_10019CBC8, &qword_100152968);
  v112 = sub_100128420();
  sub_100003E9C(v112, v113, &qword_100152960);
  sub_1000034F8(v1 - 17);
  sub_10011EED8(&v168);
  sub_100002714();
  sub_100012118(&v168);
  sub_1000069EC();
}

void Table.addColumn<A>(_:check:defaultValue:collate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100006A04();
  v66 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100128300();
  v74[3] = type metadata accessor for Expression();
  v74[4] = &protocol witness table for Expression<A>;
  v74[0] = v33;
  v74[1] = v31;
  v74[2] = v29;
  v34 = *(a23 + 40);

  v35 = v34(a22, a23);
  v37 = v36;
  if (v25)
  {
    v38 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v39 = &protocol witness table for Expression<A>;
  }

  else
  {
    v38 = sub_100002E28();
  }

  v40 = v27;
  sub_100018B04(v38, v39);
  sub_1000294F4(*(a23 + 8));
  sub_1000116F4();
  (*(v41 + 16))();
  sub_100016658();
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v42 = sub_10012842C();
  v43 = sub_100017FC0(v42, xmmword_100152930);
  sub_100013334(v43, v42 + 32);
  v44 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v42 + 104) = &protocol witness table for Expression<A>;
  *(v42 + 72) = v35;
  *(v42 + 80) = v37;
  v45 = _swiftEmptyArrayStorage;
  *(v42 + 88) = _swiftEmptyArrayStorage;
  *(v42 + 96) = v44;
  *(v42 + 112) = 0u;
  *(v42 + 128) = 0u;
  *(v42 + 176) = v44;
  *(v42 + 184) = &protocol witness table for Expression<A>;
  sub_10000E1C8();
  *(v42 + 160) = v46;
  *(v42 + 168) = _swiftEmptyArrayStorage;
  *(v42 + 192) = v47;
  *(v42 + 208) = v47;
  *(v42 + 224) = 0;
  sub_100011EE4(&v73, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    v48 = sub_1001283B4(__src, __dst);
    sub_100018C6C(v48, v25);

    sub_10012749C(__dst, (v42 + 232));
    sub_1000034F8(__dst);
  }

  else
  {
    sub_100128624();
    sub_100018C6C(v40, v25);
  }

  sub_100011EE4(v72, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);
    sub_100003CA4();
    sub_100129270(__dst, v49, 0xE700000000000000, (v42 + 272));
    sub_1000034F8(__dst);
  }

  else
  {
    *(v42 + 304) = 0;
    *(v42 + 272) = 0u;
    *(v42 + 288) = 0u;
  }

  sub_100011EE4(v71, __src, &qword_10019CBC8, &qword_100152968);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001271A4(__dst, &__dst[2] + 8, (v42 + 312));
    sub_100003E9C(__dst, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    sub_100007588();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v51 = sub_1000135CC(inited, xmmword_10014BC40);
  v51[3].n128_u64[0] = _swiftEmptyArrayStorage;
  v51[3].n128_u64[1] = v44;
  v51[6].n128_u64[0] = &type metadata for Collation;
  v51[6].n128_u64[1] = &protocol witness table for Collation;
  v51[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v66;
  inited[5].n128_u64[0] = a21;
  sub_100127814(v66, a21);
  v52 = 32;
  sub_10000EF08(inited, (v42 + 352));
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);

  do
  {
    sub_100011EE4(v42 + v52, __src, &qword_10019CBC0, &qword_100152960);
    v68[0] = __src[0];
    v68[1] = __src[1];
    v69 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_10001A798(v68, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = v45[2];
        v56 = sub_100004E28();
        sub_10001A674(v56, v57, v58, v45, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v45 = v59;
      }

      v54 = v45[2];
      v53 = v45[3];
      if (v54 >= v53 >> 1)
      {
        v60 = sub_100009A90(v53);
        sub_10001A674(v60, v61, v62, v45, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v45 = v63;
      }

      v45[2] = v54 + 1;
      sub_10001A798(__dst, &v45[5 * v54 + 4]);
    }

    else
    {
      sub_100003E9C(v68, &qword_10019CBC0, &qword_100152960);
    }

    v52 += 40;
  }

  while (v52 != 392);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_10000EF08(v45, __src);

  sub_100003E9C(v71, &qword_10019CBC8, &qword_100152968);
  sub_100003E9C(v72, &qword_10019CBC0, &qword_100152960);
  v64 = sub_100128420();
  sub_100003E9C(v64, v65, &qword_100152960);
  sub_1000034F8(v74);
  sub_10011EED8(__src);
  sub_100002714();
  sub_100012118(__src);
  sub_1000069EC();
}

{
  sub_100006A04();
  v64 = v23;
  v63 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100128300();
  v72[3] = type metadata accessor for Expression();
  v72[4] = &protocol witness table for Expression<A>;
  v72[0] = v34;
  v72[1] = v32;
  v72[2] = v30;
  v35 = *(a23 + 40);

  v36 = v35(a22, a23);
  v38 = v37;
  v71[3] = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v71[4] = &protocol witness table for Expression<A>;
  v71[0] = v63;
  v71[1] = v28;
  v71[2] = v26;
  sub_1000294F4(*(a23 + 8));
  sub_1000116F4();
  (*(v39 + 16))();
  memset(v69, 0, 80);
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v40 = sub_10012842C();
  v41 = sub_100017FC0(v40, xmmword_100152930);
  sub_100013334(v41, v40 + 32);
  v42 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v40 + 104) = &protocol witness table for Expression<A>;
  *(v40 + 72) = v36;
  *(v40 + 80) = v38;
  v43 = _swiftEmptyArrayStorage;
  *(v40 + 88) = _swiftEmptyArrayStorage;
  *(v40 + 96) = v42;
  *(v40 + 112) = 0u;
  *(v40 + 128) = 0u;
  *(v40 + 176) = v42;
  *(v40 + 184) = &protocol witness table for Expression<A>;
  sub_10000E1C8();
  *(v40 + 160) = v44;
  *(v40 + 168) = _swiftEmptyArrayStorage;
  *(v40 + 192) = v45;
  *(v40 + 208) = v45;
  *(v40 + 224) = 0;
  sub_100011EE4(v71, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);

    sub_10012749C(__dst, (v40 + 232));
    sub_1000034F8(__dst);
  }

  else
  {
    sub_100128624();
  }

  sub_100011EE4(v70, __src, &qword_10019CBC0, &qword_100152960);
  if (*(&__src[1] + 1))
  {
    sub_10001A798(__src, __dst);
    sub_100003CA4();
    sub_100129270(__dst, v46, 0xE700000000000000, (v40 + 272));
    sub_1000034F8(__dst);
  }

  else
  {
    *(v40 + 304) = 0;
    *(v40 + 272) = 0u;
    *(v40 + 288) = 0u;
  }

  sub_100011EE4(v69, __src, &qword_10019CBC8, &qword_100152968);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001271A4(__dst, &__dst[2] + 8, (v40 + 312));
    sub_100003E9C(__dst, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    sub_100007588();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v48 = sub_1000135CC(inited, xmmword_10014BC40);
  v48[3].n128_u64[0] = _swiftEmptyArrayStorage;
  v48[3].n128_u64[1] = v42;
  v48[6].n128_u64[0] = &type metadata for Collation;
  v48[6].n128_u64[1] = &protocol witness table for Collation;
  v48[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v64;
  inited[5].n128_u64[0] = a21;
  sub_100127814(v64, a21);
  v49 = 32;
  sub_10000EF08(inited, (v40 + 352));
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);

  do
  {
    sub_100011EE4(v40 + v49, __src, &qword_10019CBC0, &qword_100152960);
    v66[0] = __src[0];
    v66[1] = __src[1];
    v67 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_10001A798(v66, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = v43[2];
        v53 = sub_100004E28();
        sub_10001A674(v53, v54, v55, v43, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v43 = v56;
      }

      v51 = v43[2];
      v50 = v43[3];
      if (v51 >= v50 >> 1)
      {
        v57 = sub_100009A90(v50);
        sub_10001A674(v57, v58, v59, v43, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v43 = v60;
      }

      v43[2] = v51 + 1;
      sub_10001A798(__dst, &v43[5 * v51 + 4]);
    }

    else
    {
      sub_100003E9C(v66, &qword_10019CBC0, &qword_100152960);
    }

    v49 += 40;
  }

  while (v49 != 392);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_10000EF08(v43, __src);

  sub_100003E9C(v69, &qword_10019CBC8, &qword_100152968);
  sub_100003E9C(v70, &qword_10019CBC0, &qword_100152960);
  v61 = sub_100128420();
  sub_100003E9C(v61, v62, &qword_100152960);
  sub_1000034F8(v72);
  sub_10011EED8(__src);
  sub_100002714();
  sub_100012118(__src);
  sub_1000069EC();
}

{
  sub_100006A04();
  v95 = v23;
  v90 = v24;
  v91 = v25;
  v89 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100128300();
  v35 = type metadata accessor for Optional();
  sub_100002944(v35);
  v92 = v36;
  v38 = *(v37 + 64);
  sub_100003A54();
  __chkstk_darwin(v39);
  v41 = &v88 - v40;
  v102[3] = type metadata accessor for Expression();
  v102[4] = &protocol witness table for Expression<A>;
  v102[0] = v34;
  v102[1] = v32;
  v102[2] = v30;
  v42 = *(a23 + 40);

  v88 = a23;
  v43 = v42(a22, a23);
  v44 = v89;
  v93 = v45;
  v94 = v43;
  if (v89)
  {
    v46 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    v47 = &protocol witness table for Expression<A>;
    v48 = v28;
    v49 = v44;
    v50 = v44;
    v51 = v90;
  }

  else
  {
    v48 = v28;
    v49 = 0;
    v28 = 0;
    v50 = 0;
    v51 = 0;
    v46 = 0;
    v47 = 0;
  }

  v101[0] = v28;
  v101[1] = v50;
  v101[2] = v51;
  v101[3] = v46;
  v101[4] = v47;
  v52 = v92;
  (*(v92 + 16))(v41, v91, v35);
  sub_100009C04(v41);
  if (v53)
  {
    sub_100018C6C(v48, v49);
    (*(v52 + 8))(v41, v35);
    *&v54 = sub_100013200();
    v100[0] = v54;
    v100[1] = v54;
  }

  else
  {
    sub_1001287E8(*(v88 + 8));
    sub_1000116F4();
    (*(v55 + 32))();
    sub_100018C6C(v48, v49);
  }

  memset(v99, 0, sizeof(v99));
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v56 = sub_10012842C();
  v57 = sub_100017FC0(v56, xmmword_100152930);
  sub_100013334(v57, v56 + 32);
  v58 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v56 + 104) = &protocol witness table for Expression<A>;
  v59 = v93;
  *(v56 + 72) = v94;
  *(v56 + 80) = v59;
  v60 = _swiftEmptyArrayStorage;
  *(v56 + 88) = _swiftEmptyArrayStorage;
  *(v56 + 96) = v58;
  *(v56 + 112) = 0u;
  *(v56 + 128) = 0u;
  *(v56 + 144) = 0u;
  *(v56 + 160) = 0u;
  *(v56 + 176) = 0u;
  *(v56 + 192) = 0u;
  *(v56 + 208) = 0u;
  *(v56 + 224) = 0;
  sub_100011EE4(v101, v98, &qword_10019CBC0, &qword_100152960);
  if (v98[1].n128_u64[1])
  {
    sub_100128848();
    sub_100128788();
    sub_10012749C(v96, (v56 + 232));
    sub_1000034F8(v96);
  }

  else
  {
    *(v56 + 264) = 0;
    *(v56 + 248) = 0u;
    *(v56 + 232) = 0u;
    sub_100128788();
  }

  sub_100011EE4(v100, v98, &qword_10019CBC0, &qword_100152960);
  if (v98[1].n128_u64[1])
  {
    sub_100128848();
    sub_100003CA4();
    sub_100129270(v96, v61, 0xE700000000000000, (v56 + 272));
    sub_1000034F8(v96);
  }

  else
  {
    *(v56 + 304) = 0;
    *(v56 + 272) = 0u;
    *(v56 + 288) = 0u;
  }

  sub_100011EE4(v99, v98, &qword_10019CBC8, &qword_100152968);
  if (v98[1].n128_u64[1])
  {
    memcpy(v96, v98, sizeof(v96));
    sub_1001271A4(v96, &v96[2] + 8, (v56 + 312));
    sub_100003E9C(v96, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    sub_100007588();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v63 = sub_1000135CC(inited, xmmword_10014BC40);
  v63[3].n128_u64[0] = _swiftEmptyArrayStorage;
  v63[3].n128_u64[1] = v58;
  v63[6].n128_u64[0] = &type metadata for Collation;
  v63[6].n128_u64[1] = &protocol witness table for Collation;
  v63[4].n128_u64[0] = &protocol witness table for Expression<A>;
  v64 = v95;
  inited[4].n128_u64[1] = v95;
  inited[5].n128_u64[0] = a21;
  sub_100127814(v64, a21);
  v65 = 32;
  sub_10000EF08(inited, (v56 + 352));
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);

  do
  {
    sub_100013DD0();
    sub_100011EE4(v66, v67, v68, v69);
    sub_100128638(v98[1], v98[0]);
    if (v70)
    {
      sub_10001A798(v97, v96);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = v60[2];
        v74 = sub_100004E28();
        sub_10001A674(v74, v75, v76, v60, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v60 = v77;
      }

      v72 = v60[2];
      v71 = v60[3];
      if (v72 >= v71 >> 1)
      {
        v78 = sub_100005150(v71);
        sub_10001A674(v78, v72 + 1, 1, v60, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v60 = v79;
      }

      v60[2] = v72 + 1;
      sub_10001A798(v96, &v60[5 * v72 + 4]);
    }

    else
    {
      sub_100010D8C(v97);
    }

    v65 += 40;
  }

  while (v65 != 392);
  swift_setDeallocating();
  v80 = sub_1000064C8();
  sub_100018848(v80, v81);
  sub_10000EF08(v60, v98);

  sub_100003E9C(v99, &qword_10019CBC8, &qword_100152968);
  sub_10000724C();
  sub_100003E9C(v82, v83, v84);
  sub_10000724C();
  sub_100003E9C(v85, v86, v87);
  sub_1000034F8(v102);
  sub_10011EED8(v98);
  sub_1000064BC();
  sub_1000034F8(v98);
  sub_10001317C();
  sub_1000069EC();
}

{
  sub_100006A04();
  v79 = v24;
  v78 = v25;
  v73 = v27;
  v74 = v26;
  v75 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100128300();
  v35 = type metadata accessor for Optional();
  sub_100002944(v35);
  v72 = v36;
  v38 = *(v37 + 64);
  sub_100003A54();
  __chkstk_darwin(v39);
  v86[3] = sub_1001285B4();
  v86[4] = &protocol witness table for Expression<A>;
  v86[0] = v34;
  v86[1] = v32;
  v86[2] = v30;
  v40 = *(a23 + 40);

  v76 = v40(a22, a23);
  v77 = v41;
  v85[3] = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v85[4] = &protocol witness table for Expression<A>;
  v85[0] = v74;
  v85[1] = v75;
  v85[2] = v73;
  (*(v72 + 16))(v23, v78, v35);
  sub_100009C04(v23);
  if (v42)
  {
    v43 = *(v72 + 8);

    v43(v23, v35);
    *&v44 = sub_100013200();
    v84[0] = v44;
    v84[1] = v44;
  }

  else
  {
    sub_1001287E8(*(a23 + 8));
    sub_1000116F4();
    (*(v45 + 32))();
  }

  sub_100016658();
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  v46 = sub_10012842C();
  v47 = sub_100017FC0(v46, xmmword_100152930);
  sub_100013334(v47, v46 + 32);
  v48 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(v46 + 104) = &protocol witness table for Expression<A>;
  *(v46 + 72) = v76;
  *(v46 + 80) = v77;
  v49 = _swiftEmptyArrayStorage;
  *(v46 + 88) = _swiftEmptyArrayStorage;
  *(v46 + 96) = v48;
  *(v46 + 112) = 0u;
  *(v46 + 128) = 0u;
  *(v46 + 144) = 0u;
  *(v46 + 160) = 0u;
  *(v46 + 176) = 0u;
  *(v46 + 192) = 0u;
  *(v46 + 208) = 0u;
  *(v46 + 224) = 0;
  sub_100011EE4(v85, v82, &qword_10019CBC0, &qword_100152960);
  if (v82[1].n128_u64[1])
  {
    sub_100128848();
    sub_100128788();
    sub_10012749C(v80, (v46 + 232));
    sub_1000034F8(v80);
  }

  else
  {
    *(v46 + 264) = 0;
    *(v46 + 248) = 0u;
    *(v46 + 232) = 0u;
    sub_100128788();
  }

  sub_100011EE4(v84, v82, &qword_10019CBC0, &qword_100152960);
  if (v82[1].n128_u64[1])
  {
    sub_100128848();
    sub_100003CA4();
    sub_100129270(v80, v50, 0xE700000000000000, (v46 + 272));
    sub_1000034F8(v80);
  }

  else
  {
    *(v46 + 304) = 0;
    *(v46 + 272) = 0u;
    *(v46 + 288) = 0u;
  }

  sub_100011EE4(v83, v82, &qword_10019CBC8, &qword_100152968);
  if (v82[1].n128_u64[1])
  {
    memcpy(v80, v82, sizeof(v80));
    sub_1001271A4(v80, &v80[2] + 8, (v46 + 312));
    sub_100003E9C(v80, &qword_10019CBD0, &qword_100152970);
  }

  else
  {
    sub_100007588();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v52 = sub_1000135CC(inited, xmmword_10014BC40);
  v52[3].n128_u64[0] = _swiftEmptyArrayStorage;
  v52[3].n128_u64[1] = v48;
  v52[6].n128_u64[0] = &type metadata for Collation;
  v52[6].n128_u64[1] = &protocol witness table for Collation;
  v52[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v79;
  inited[5].n128_u64[0] = a21;
  sub_100127814(v79, a21);
  v53 = 32;
  sub_10000EF08(inited, (v46 + 352));
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);

  do
  {
    sub_100011EE4(v46 + v53, v82, &qword_10019CBC0, &qword_100152960);
    sub_100128638(v82[1], v82[0]);
    if (v54)
    {
      sub_10001A798(v81, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = v49[2];
        v58 = sub_100004E28();
        sub_10001A674(v58, v59, v60, v49, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v49 = v61;
      }

      v56 = v49[2];
      v55 = v49[3];
      if (v56 >= v55 >> 1)
      {
        v62 = sub_100005150(v55);
        sub_10001A674(v62, v56 + 1, 1, v49, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v49 = v63;
      }

      v49[2] = v56 + 1;
      sub_10001A798(v80, &v49[5 * v56 + 4]);
    }

    else
    {
      sub_100003E9C(v81, &qword_10019CBC0, &qword_100152960);
    }

    v53 += 40;
  }

  while (v53 != 392);
  swift_setDeallocating();
  v64 = sub_1000064C8();
  sub_100018848(v64, v65);
  sub_10000EF08(v49, v82);

  sub_100003E9C(v83, &qword_10019CBC8, &qword_100152968);
  sub_10000724C();
  sub_100003E9C(v66, v67, v68);
  sub_10000724C();
  sub_100003E9C(v69, v70, v71);
  sub_1000034F8(v86);
  sub_10011EED8(v82);
  sub_1000064BC();
  sub_1000034F8(v82);
  sub_10001317C();
  sub_1000069EC();
}

uint64_t sub_100122570(uint64_t a1)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  v4 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v4;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  swift_bridgeObjectRetain_n();

  if (v7)
  {

    v6 = v8;
    v5 = v7;
  }

  sub_100019760(v6, v5, v10 & 1, (inited + 72));

  *(inited + 136) = v4;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x5420454D414E4552;
  *(inited + 120) = 0xE90000000000004FLL;
  *(inited + 128) = _swiftEmptyArrayStorage;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(inited + 176) = v4;
  *(inited + 184) = &protocol witness table for Expression<A>;
  v13 = sub_100012BA4();
  *(inited + 152) = sub_1000198BC(v13, v14);
  *(inited + 160) = v15;
  *(inited + 168) = _swiftEmptyArrayStorage;
  sub_10000EF08(inited, v17);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  sub_10001E178(v17);
  sub_100002714();
  return sub_100012118(v17);
}

void Table.createIndex(_:unique:ifNotExists:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_100015628();
  a54 = v56;
  a55 = v57;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  sub_100122A18(&a16, v63);
  if (v61)
  {
    v65 = 0;
  }

  else
  {
    v65 = 2;
  }

  sub_10011E298(0x5845444E49, 0xE500000000000000, &a16, v65, v59, (inited + 32));
  sub_1000034F8(&a16);
  v66 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = 20047;
  *(inited + 80) = 0xE200000000000000;
  v67 = _swiftEmptyArrayStorage;
  *(inited + 88) = _swiftEmptyArrayStorage;
  *(inited + 96) = v66;
  v69 = v55[2];
  v68 = v55[3];
  v71 = v55[4];
  v70 = v55[5];
  v72 = v55[7];
  swift_bridgeObjectRetain_n();

  if (v70)
  {
  }

  *(inited + 136) = v66;
  *(inited + 144) = &protocol witness table for Expression<A>;
  v73 = sub_100012BA4();
  v75 = sub_1000198BC(v73, v74);
  v77 = v76;

  *(inited + 112) = v75;
  *(inited + 120) = v77;
  *(inited + 128) = _swiftEmptyArrayStorage;
  sub_100013640(v63, &a16);
  v78 = sub_1000034B4(&a16, *(&a17 + 1));
  v79 = sub_100128720(v78);
  v81 = v80;
  v83 = v82;
  sub_1000034F8(&a16);
  v84 = 32;
  *(inited + 176) = v66;
  *(inited + 184) = &protocol witness table for Expression<A>;
  *(inited + 152) = v79;
  *(inited + 160) = v81;
  *(inited + 168) = v83;
  do
  {
    sub_10001330C();
    sub_100011EE4(v85, v86, v87, v88);
    a9 = a16;
    a10 = a17;
    a11 = a18;
    if (*(&a17 + 1))
    {
      sub_1001283B4(&a9, &a12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_1000073C4();
        sub_10001A674(v94, v95, v96, v97, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v67 = v98;
      }

      v90 = v67[2];
      v89 = v67[3];
      if (v90 >= v89 >> 1)
      {
        sub_100005150(v89);
        sub_10000274C();
        sub_10001A674(v99, v100, v101, v102, &qword_1001987A0, &qword_10014BE50, &qword_10019B238, &unk_100152B50);
        v67 = v103;
      }

      v67[2] = v90 + 1;
      sub_10001A798(&a12, &v67[5 * v90 + 4]);
    }

    else
    {
      sub_1000111C8();
      sub_100003E9C(v91, v92, v93);
    }

    v84 += 40;
  }

  while (v84 != 192);
  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100009AA4(&a16);

  sub_10001E178(&a16);
  sub_100002714();
  sub_100012118(&a16);
  sub_1001286A8();
}

uint64_t Table.dropIndex(_:ifExists:)(uint64_t a1, uint64_t a2)
{
  sub_100122A18(v4, a1);
  sub_10011DA28(0x5845444E49, 0xE500000000000000, v4, a2);
  sub_100002714();
  return sub_100012118(v4);
}

void sub_100122F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_100015628();
  a54 = v56;
  a55 = v57;
  v95 = v58;
  v96 = v59;
  v94 = v60;
  v62 = v61;
  v64 = v63;
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v67 = *(v55 + 16);
  v66 = *(v55 + 24);
  v68 = *(v55 + 32);
  v69 = *(v55 + 40);
  v70 = *(v55 + 56);
  v71 = *(v55 + 64);
  swift_bridgeObjectRetain_n();

  if (v69)
  {

    v67 = v68;
    v66 = v69;
  }

  sub_100019760(v67, v66, v71 & 1, &a21);

  if (v62)
  {
    v72 = 1;
  }

  else
  {
    v72 = 2;
  }

  sub_10011E298(v95, v96, &a21, v72, v94 & 1, (inited + 32));
  sub_1000034F8(&a21);
  v73 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = 21313;
  *(inited + 80) = 0xE200000000000000;
  v74 = _swiftEmptyArrayStorage;
  *(inited + 88) = _swiftEmptyArrayStorage;
  *(inited + 96) = v73;
  v75 = v64[3];
  v76 = v64[4];
  sub_1000034B4(v64, v75);
  *(inited + 136) = v75;
  *(inited + 144) = *(v76 + 8);
  sub_100013234((inited + 112));
  sub_1000116F4();
  (*(v77 + 16))();
  for (i = 32; i != 152; i += 40)
  {
    sub_100013DD0();
    sub_100011EE4(v79, v80, v81, v82);
    a13 = a21;
    a14 = a22;
    a15 = a23;
    if (*(&a22 + 1))
    {
      sub_1001283B4(&a13, &a17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1000073C4();
        sub_10001D338(v84, v85, v86, v87, &qword_1001987A0, &qword_10014BE50);
        v74 = v88;
      }

      sub_1001284F0();
      if (v83)
      {
        sub_10000274C();
        sub_10001D338(v89, v90, v91, v92, &qword_1001987A0, &qword_10014BE50);
        v74 = v93;
      }

      v74[2] = v67;
      sub_10001A798(&a17, &v74[5 * v68 + 4]);
    }

    else
    {
      sub_100010D8C(&a13);
    }
  }

  swift_setDeallocating();
  sub_100018848(&qword_10019CBC0, &qword_100152960);
  sub_100009AA4(&a21);

  sub_10001E178(&a21);
  sub_100002714();
  sub_100012118(&a21);
  sub_1001286A8();
}

Swift::String __swiftcall View.drop(ifExists:)(Swift::Bool ifExists)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  swift_bridgeObjectRetain_n();

  if (v5)
  {

    v4 = v6;
    v3 = v5;
  }

  sub_100019760(v4, v3, v8 & 1, v12);

  sub_10011DA28(1464158550, 0xE400000000000000, v12, ifExists);
  sub_100002714();
  v9 = sub_100012118(v12);
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t TableBuilder.column<A>(_:primaryKey:check:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100128658();
  v34 = v12;
  sub_10012839C();
  sub_10001A8D0(v13, v14, v15);
  v16 = *(a9 + 40);

  v16(a8, a9);
  sub_10000E20C();
  if (v9)
  {
    sub_10002EB80(&qword_10019CBD8, &qword_100152978);
    sub_100010458();
  }

  else
  {
    v17 = sub_100002E28();
  }

  sub_100011918(v17, v18);
  sub_1001284D4();
  sub_100018C6C(v10, v9);
  v19 = type metadata accessor for Expression();
  sub_1000046E4(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v19, &protocol witness table for Expression<A>, v32, v33, v34, SHIWORD(v34), v35[0], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0]);

  sub_100003E9C(v35, &qword_10019CBC8, &qword_100152968);
  sub_100010D8C(v45);
  sub_1000248F0();
}

{
  sub_10000C0FC();
  v34 = v12;
  sub_10012839C();
  sub_10001A8D0(v13, v14, v15);
  v16 = *(a9 + 40);

  v17 = sub_10001A638();
  v16(v17, a9);
  sub_10000E20C();
  v49 = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v50 = &protocol witness table for Expression<A>;
  v46 = v11;
  v47 = v10;
  v48 = v9;
  sub_1001284D4();
  v18 = sub_100021344();

  sub_1000046E4(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v18, &protocol witness table for Expression<A>, v32, v33, v34, SHIWORD(v34), v35[0], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45[0]);

  sub_100003E9C(v35, &qword_10019CBC8, &qword_100152968);
  sub_100010D8C(v45);
  sub_1000248F0();
}

uint64_t TableBuilder.primaryKey<A>(_:)()
{
  sub_1001285F0();
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  sub_1000287C4(inited, xmmword_10014CE90);
  inited[3].n128_u64[1] = type metadata accessor for Expression();
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v2;
  inited[2].n128_u64[1] = v1;
  inited[3].n128_u64[0] = v0;

  sub_100018510();
  sub_100126648(inited, v4, v5);
  swift_setDeallocating();
  return sub_100018848(&qword_10019B238, &unk_100152B50);
}

uint64_t TableBuilder.primaryKey<A, B>(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  sub_1000287C4(inited, xmmword_10014BC40);
  inited[3].n128_u64[1] = type metadata accessor for Expression();
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = type metadata accessor for Expression();
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  sub_100018510();
  sub_100126648(inited, v13, v14);
  swift_setDeallocating();
  return sub_100018848(&qword_10019B238, &unk_100152B50);
}

uint64_t TableBuilder.primaryKey<A, B, C>(_:_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  sub_1000287C4(inited, xmmword_10014E1F0);
  inited[3].n128_u64[1] = type metadata accessor for Expression();
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  sub_100128300();
  inited[6].n128_u64[0] = type metadata accessor for Expression();
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;
  inited[8].n128_u64[1] = type metadata accessor for Expression();
  inited[9].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[7].n128_u64[0] = a7;
  inited[7].n128_u64[1] = a8;
  inited[8].n128_u64[0] = a9;

  sub_100018510();
  sub_100126648(inited, v16, v17);
  swift_setDeallocating();
  return sub_100018848(&qword_10019B238, &unk_100152B50);
}

void TableBuilder.primaryKey<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58)
{
  sub_1000273A0();
  v75 = v58;
  v76 = v59;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  sub_1000287C4(inited, xmmword_10014ECA0);
  inited[3].n128_u64[1] = type metadata accessor for Expression();
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = v71;
  inited[2].n128_u64[1] = v69;
  inited[3].n128_u64[0] = v67;
  inited[6].n128_u64[0] = type metadata accessor for Expression();
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = v65;
  inited[5].n128_u64[0] = v63;
  inited[5].n128_u64[1] = v61;
  inited[8].n128_u64[1] = type metadata accessor for Expression();
  inited[9].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[7].n128_u64[0] = v75;
  inited[7].n128_u64[1] = v76;
  inited[8].n128_u64[0] = a55;
  inited[11].n128_u64[0] = type metadata accessor for Expression();
  inited[11].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[9].n128_u64[1] = a56;
  inited[10].n128_u64[0] = a57;
  inited[10].n128_u64[1] = a58;

  sub_100018510();
  sub_100126648(inited, v73, v74);
  swift_setDeallocating();
  sub_100018848(&qword_10019B238, &unk_100152B50);
  sub_100128364();
}

uint64_t sub_100126648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100129198(a1, a2, a3, v8);
  swift_beginAccess();
  sub_1000111C8();
  sub_1001275A8();
  v4 = *(*(v3 + 16) + 16);
  sub_10001330C();
  sub_100127678(v5);
  sub_10002135C();
  sub_10001A798(v8, v6 + 32);
  *(v3 + 16) = v3 + 16;
  return swift_endAccess();
}

uint64_t TableBuilder.check(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v12[3] = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;

  sub_100129270(v12, 0x4B43454843, 0xE500000000000000, v13);
  sub_1000034F8(v12);
  swift_beginAccess();
  sub_1000111C8();
  sub_1001275A8();
  v8 = *(*(v4 + 16) + 16);
  sub_10001330C();
  sub_100127678(v9);
  sub_10002135C();
  sub_10001A798(v13, v10 + 32);
  *(v4 + 16) = v4 + 16;
  return swift_endAccess();
}

AppIntents_SQLite::TableBuilder::Dependency_optional __swiftcall TableBuilder.Dependency.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100190B48, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t TableBuilder.Dependency.rawValue.getter(char a1)
{
  result = 0x4F49544341204F4ELL;
  switch(a1)
  {
    case 1:
      result = 0x5443495254534552;
      break;
    case 2:
      result = 0x4C4C554E20544553;
      break;
    case 3:
      result = 0x4146454420544553;
      break;
    case 4:
      result = 0x45444143534143;
      break;
    default:
      return result;
  }

  return result;
}

AppIntents_SQLite::TableBuilder::Dependency_optional sub_10012695C@<W0>(Swift::String *a1@<X0>, AppIntents_SQLite::TableBuilder::Dependency_optional *a2@<X8>)
{
  result.value = TableBuilder.Dependency.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10012698C@<X0>(uint64_t *a1@<X8>)
{
  result = TableBuilder.Dependency.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TableBuilder.foreignKey<A>(_:references:_:update:delete:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, char a9)
{
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  v12 = type metadata accessor for Expression();

  sub_1001279B0(v15, a4, v14, a8, a9, v9, v12, v12, &protocol witness table for Expression<A>, &protocol witness table for Expression<A>);
}

{
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  sub_10012859C();
  v12 = sub_1000048F8();
  v13 = sub_100021344();

  sub_1001279B0(v16, a4, v15, a8, a9, v9, v12, v13, &protocol witness table for Expression<A>, &protocol witness table for Expression<A>);
}