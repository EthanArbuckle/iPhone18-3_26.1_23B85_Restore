uint64_t sub_1000660F0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100066130(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000661A4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_100066220()
{
  result = qword_1001992C0;
  if (!qword_1001992C0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001992C0);
  }

  return result;
}

void sub_10006628C(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v7 = a5;
  v9 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100003D44(0, v7, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100003D44(0, a5, a6);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v7 = v16;
      v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = *(*(a4 + 48) + 8 * v9);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_15;
        }

        v10 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v14 = *(*(a4 + 48) + 8 * v9);

  v15 = v14;
}

unint64_t sub_1000664A0(uint64_t a1)
{
  result = sub_1000664C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000664C8()
{
  result = qword_100199EF8;
  if (!qword_100199EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199EF8);
  }

  return result;
}

uint64_t sub_100066520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000032C4(a1, 1, v12) == 1)
  {
    sub_100003EFC(a1, &qword_100199C90, &qword_10014D060);
    sub_1000602F0();

    return sub_100003EFC(v11, &qword_100199C90, &qword_10014D060);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100069084(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  return result;
}

uint64_t sub_1000666EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_10002EB80(&qword_10019A0B8, &qword_10014EE58);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  v11 = sub_10000482C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  if (sub_1000032C4(a1, 1, v16) == 1)
  {
    sub_100003EFC(a1, &qword_10019A0B8, &qword_10014EE58);
    sub_10001A9E8();
    sub_1000603E8();
    v17 = sub_10001A9E8();
    sub_100009B18(v17, v18);
    v19 = sub_100006768();
    return sub_100003EFC(v19, v20, v21);
  }

  else
  {
    sub_100069DF0(a1, v15, &qword_100199C70, &unk_10014EE60);
    v23 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    sub_1000691F8(v15, a2, a3, isUniquelyReferenced_nonNull_native);
    v25 = sub_10001A9E8();
    result = sub_100009B18(v25, v26);
    *v4 = v28;
  }

  return result;
}

void *sub_10006687C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199318, &unk_10014E020);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_1000233AC(a1, 1, &v6, sub_100046DF8, &qword_100198B90, &unk_10014D040);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void *sub_100066938(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199310, &qword_10014EE40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_1000233AC(a1, 1, &v6, sub_100046DE4, &qword_10019B490, &qword_10014EE48);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1000669F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A04();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &a9 - v31;
  v33 = type metadata accessor for UUID();
  v34 = sub_100002944(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  v40 = &a9 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v20;
  if (*(v41 + 16) && (v42 = sub_10000C2A0(v26, v24), (v43 & 1) != 0))
  {
    (*(v36 + 16))(v40, *(v41 + 56) + *(v36 + 72) * v42, v33);
    (*(v36 + 32))(v28, v40, v33);
  }

  else
  {
    UUID.init()();
    (*(v36 + 16))(v32, v28, v33);
    sub_1000075C4(v32, 0, 1, v33);

    v44 = sub_1000246A8();
    sub_100066520(v44, v45, v24);
  }

  sub_1000069EC();
}

uint64_t sub_100066BF8()
{
  v0 = sub_10002EB80(&qword_10019A070, &qword_10014EE18);
  v1 = sub_100013F58(&qword_10019A078, &qword_10019A070, &qword_10014EE18);
  return ExpressionType.init(_:)(0xD000000000000016, 0x8000000100155390, v0, v1);
}

uint64_t sub_100066C94()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F58(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100066D30()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F58(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000012, 0x8000000100155370, v0, v1);
}

uint64_t sub_100066DE8()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F58(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100155350, v0, v1);
}

uint64_t sub_100066E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v5 = sub_100013F58(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0x79747265706F7270, a3, v4, v5);
}

uint64_t sub_100066F38()
{
  v0 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v1 = sub_100013F58(&qword_100199520, &qword_100199518, &unk_10014ED10);
  return ExpressionType.init(_:)(0xD000000000000016, 0x8000000100155330, v0, v1);
}

uint64_t sub_100066FD4()
{
  v0 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v1 = sub_100013F58(&qword_100199520, &qword_100199518, &unk_10014ED10);
  return ExpressionType.init(_:)(0xD000000000000020, 0x8000000100155300, v0, v1);
}

void sub_100067070()
{
  sub_100004DF0();
  v76 = v1;
  v3 = v2;
  if (qword_100198170 != -1)
  {
    sub_100007ED0();
  }

  memcpy(__dst, &unk_100199F00, 0xB0uLL);
  memcpy(v114, &unk_100199F00, sizeof(v114));
  sub_1000196B0(__dst, &v83);
  if (qword_100198178 != -1)
  {
    sub_100007B38();
  }

  type metadata accessor for UUID();
  sub_1000077D8();
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014EE00;
  if (qword_100198180 != -1)
  {
    sub_100007130();
  }

  v5 = type metadata accessor for LNAppShortcutParameterRecord();
  v6 = (v3 + v5[5]);
  v8 = *v6;
  v7 = v6[1];
  v83._countAndFlagsBits = v8;
  v83._object = v7;
  <- infix<A>(_:_:)();
  if (qword_100198188 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_100199FE0);
  v9 = (v3 + v5[6]);
  v11 = *v9;
  v10 = v9[1];
  v83._countAndFlagsBits = v11;
  v83._object = v10;
  v77 = v4;
  <- infix<A>(_:_:)();
  if (qword_100198190 != -1)
  {
    swift_once();
  }

  v12 = v3;
  v13 = *(v3 + v5[7]);
  v14 = type metadata accessor for JSONEncoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v17 = LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)();
  if (v0)
  {

    v19 = sub_10002EBC8(&v104);
    sub_1000115E4(v19, v20, v21, v22, v23, v24, v25, v26, v68, v69, v71, v73, v75, v76, v77, v79, v81, v83._countAndFlagsBits, v83._object, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114[0]);
    sub_10001970C(&v83);
    sub_10002EBC8(v78 + 112);
    sub_10002EBC8(v78 + 32);
    *(v78 + 16) = 0;
    swift_setDeallocating();
    sub_1000B3030();
  }

  else
  {
    v27 = v17;
    v28 = v18;
    v74 = v5;

    v83._countAndFlagsBits = v27;
    v83._object = v28;
    v29 = v77;
    <- infix<A>(_:_:)();

    if (qword_100198198 != -1)
    {
      swift_once();
    }

    sub_100003A8C(&qword_10019A010);
    v30 = (v12 + v74[8]);
    v32 = *v30;
    v31 = v30[1];
    v83._countAndFlagsBits = v32;
    v83._object = v31;
    <- infix<A>(_:_:)();
    if (qword_1001981A0 != -1)
    {
      swift_once();
    }

    v70 = qword_10019A038;
    v72 = qword_10019A028;
    v33 = *(v12 + v74[9]);
    sub_10002EB80(&qword_10019A090, &qword_10014EE28);
    v34 = (sub_10002EB80(&qword_10019A098, &unk_10014EE30) - 8);
    v35 = *(*v34 + 72);
    v36 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10014CE90;
    v38 = (v37 + v36 + v34[14]);
    static CodingUserInfoKey.includeLocalizedStringResource.getter();
    v85 = &type metadata for Bool;
    LOBYTE(v83._countAndFlagsBits) = 1;
    v39 = sub_1000034B4(&v83, &type metadata for Bool);
    v38[3] = &type metadata for Bool;
    v40 = sub_100013234(v38);
    (*(*(&type metadata for Bool - 1) + 16))(v40, v39, &type metadata for Bool);
    sub_1000034F8(&v83._countAndFlagsBits);
    type metadata accessor for CodingUserInfoKey();
    sub_10002EB80(&unk_100198750, &unk_1001518C0);
    v41 = Dictionary.init(dictionaryLiteral:)();
    v42 = LNProperty.asJson(userInfo:)(v41);
    if (v43)
    {

      v44 = sub_10002EBC8(&v104);
      sub_1000115E4(v44, v45, v46, v47, v48, v49, v50, v51, v68, v70, v72, v74, v12, v76, v77, v79, v81, v83._countAndFlagsBits, v83._object, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114[0]);
      sub_10001970C(&v83);
      sub_10002EBC8(v29 + 272);
      sub_10002EBC8(v29 + 192);
      sub_10002EBC8(v29 + 112);
      sub_10002EBC8(v29 + 32);
      *(v29 + 16) = 0;
      swift_setDeallocating();
      sub_1000B3030();
    }

    else
    {

      v83 = v42;
      <- infix<A>(_:_:)();

      if (qword_1001981A8 != -1)
      {
        swift_once();
      }

      if (*(v12 + v74[10]))
      {
        v52 = *(v14 + 48);
        v53 = *(v14 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)();
      }

      <- infix<A>(_:_:)();

      if (qword_1001981B0 != -1)
      {
        swift_once();
      }

      v54 = (v12 + v74[11]);
      v80 = *v54;
      v82 = v54[1];

      <- infix<A>(_:_:)();

      v55 = QueryType.insert(_:_:)(&v104);
      v57 = v56;
      v59 = v58;
      swift_setDeallocating();
      sub_1000B3030();
      v60 = sub_10002EBC8(&v104);
      sub_1000115E4(v60, v61, v62, v63, v64, v65, v66, v67, v68, v70, v72, v74, v12, v76, v77, v80, v82, v83._countAndFlagsBits, v83._object, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114[0]);
      sub_10001970C(&v83);
      v116.template._countAndFlagsBits = v55;
      v116.template._object = v57;
      v116.bindings._rawValue = v59;
      Connection.run(_:)(v116);
    }
  }

  sub_100004674();
}

void sub_100067878()
{
  sub_100004DF0();
  v2 = v1;
  if (qword_100198170 != -1)
  {
    sub_100007ED0();
  }

  memcpy(__dst, &unk_100199F00, sizeof(__dst));
  if (qword_100198178 != -1)
  {
    sub_100007B38();
  }

  type metadata accessor for UUID();
  sub_1000110E0();
  == infix<A>(_:_:)();
  memcpy(v11, __dst, sizeof(v11));
  v3 = sub_1000110E0();
  QueryType.filter(_:)(v3, v4, v5, &type metadata for Table, &protocol witness table for Table, v6, v7, v8, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v14, __src, sizeof(v14));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  sub_100003A98();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v14, 0xB0uLL);
  Connection.pluck(_:)(__src);
  sub_100006430();
  sub_1000034F8(__src);
  if (!v0)
  {
    v9 = type metadata accessor for LNAppShortcutParameterRecord();
    sub_1000075C4(v2, 1, 1, v9);
  }

  sub_100004674();
}

uint64_t sub_100067A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  if (qword_100198178 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198180 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v18 = v45;
  v43 = v44;
  if (qword_100198188 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v41 = v44;
  v42 = v45;
  if (qword_100198190 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v39 = v44;
  v40 = v45;
  if (qword_100198198 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v37 = v44;
  v38 = v45;
  if (qword_1001981A0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v35 = v44;
  v36 = v45;
  if (qword_1001981A8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019A040, *algn_10019A048, a1, a2, &type metadata for String, &protocol witness table for String, &v44);
  v33 = v44;
  v34 = v45;
  if (qword_1001981B0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019A058, unk_10019A060, a1, a2, &type metadata for String, &protocol witness table for String, &v44);
  v31 = v44;
  v32 = v45;
  (*(v11 + 16))(v14, v17, v10);
  v39 = sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v40 = LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)();
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  v20 = type metadata accessor for URL();
  sub_1000075C4(v9, 1, 1, v20);
  v35 = static LNProperty.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  v21 = v32;
  sub_100003EFC(v9, &qword_1001990C0, &unk_10014E200);

  if (v34)
  {
    v22 = LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)();
  }

  else
  {
    v22 = 0;
  }

  v23 = v40;
  (*(v11 + 8))(v17, v10);
  (*(v11 + 32))(a3, v14, v10);
  v24 = type metadata accessor for LNAppShortcutParameterRecord();
  v25 = (a3 + v24[5]);
  *v25 = v43;
  v25[1] = v18;
  v26 = (a3 + v24[6]);
  v27 = v42;
  *v26 = v41;
  v26[1] = v27;
  *(a3 + v24[7]) = v23;
  v28 = (a3 + v24[8]);
  v29 = v38;
  *v28 = v37;
  v28[1] = v29;
  *(a3 + v24[9]) = v35;
  *(a3 + v24[10]) = v22;
  v30 = (a3 + v24[11]);
  *v30 = v31;
  v30[1] = v21;
  return sub_1000075C4(a3, 0, 1, v24);
}

void sub_10006821C()
{
  sub_100004DF0();
  v2 = v1;
  if (qword_100198170 != -1)
  {
    sub_100007ED0();
  }

  memcpy(v19, &unk_100199F00, sizeof(v19));
  v18[0] = v2;
  if (qword_100198178 != -1)
  {
    sub_100007B38();
  }

  v3 = sub_10002EB80(&qword_10019A080, &qword_10014EE20);
  sub_100013F58(&qword_10019A088, &qword_10019A080, &qword_10014EE20);
  v4 = sub_1000110E0();
  Collection<>.contains(_:)(v4, v5, v6, v3, v7, v8);
  memcpy(v17, v19, sizeof(v17));
  v9 = sub_1000110E0();
  QueryType.filter(_:)(v9, v10, v11, &type metadata for Table, &protocol witness table for Table, v12, v13, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12], v17[13], v17[14], v17[15], v17[16], v17[17], v17[18], v17[19], v17[20], v17[21], v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14]);

  memcpy(v20, v18, sizeof(v20));
  v18[3] = &type metadata for Table;
  v18[4] = &protocol witness table for Table;
  sub_100003A98();
  v18[0] = swift_allocObject();
  memcpy((v18[0] + 16), v20, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v18);
  sub_100006430();
  v15 = sub_1000034F8(v18);
  if (!v0)
  {
    __chkstk_darwin(v15);

    sub_10002EB80(&qword_10019B410, &unk_10014E360);
    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

uint64_t sub_1000684AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, double)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10002EB80(&qword_10019B410, &unk_10014E360);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = v19 - v14;
  a3(a1, a2, v13);
  v16 = type metadata accessor for LNAppShortcutParameterRecord();
  v17 = 1;
  if (sub_1000032C4(v15, 1, v16) != 1)
  {
    sub_10005550C(v15, v11);
    sub_1000075C4(v11, 0, 1, v16);
    sub_100069DF0(v11, a4, &qword_10019B410, &unk_10014E360);
    v17 = 0;
  }

  return sub_1000075C4(a4, v17, 1, v8);
}

void sub_100068610()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  if (qword_100198170 != -1)
  {
    sub_100007ED0();
  }

  memcpy(v32, &unk_100199F00, sizeof(v32));
  if (v2)
  {
    sub_1000196B0(v32, &v15);
    if (qword_100198180 != -1)
    {
      sub_100007130();
    }

    sub_100003A8C(&qword_100199FC8);
    v15 = v4;
    v16 = v2;
    == infix<A>(_:_:)();
    sub_100006430();
    memcpy(v14, v32, sizeof(v14));
    v5 = sub_100006768();
    QueryType.filter(_:)(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], v14[19], v14[20], v14[21], v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);

    sub_10001970C(v32);
    v13 = &v15;
  }

  else
  {
    sub_1000196B0(v32, &v15);
    v13 = v32;
  }

  memcpy(__dst, v13, sizeof(__dst));
  v18 = &type metadata for Table;
  v19 = &protocol witness table for Table;
  sub_100003A98();
  v15 = swift_allocObject();
  memcpy((v15 + 16), __dst, 0xB0uLL);
  Connection.prepareRowIterator(_:)(&v15);
  sub_1000034F8(&v15);
  if (!v0)
  {
    type metadata accessor for LNAppShortcutParameterRecord();

    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

id sub_100068864(uint64_t *a1, void *a2, void *a3)
{
  sub_1000034B4(a1, a1[3]);
  v7 = [v3 initWithValue:_bridgeAnythingToObjectiveC<A>(_:)() valueType:a2 displayRepresentation:a3];
  swift_unknownObjectRelease();

  sub_1000034F8(a1);
  return v7;
}

id sub_1000688F0(uint64_t *a1, void *a2)
{
  sub_1000034B4(a1, a1[3]);
  v5 = [v2 initWithValue:_bridgeAnythingToObjectiveC<A>(_:)() valueType:a2];
  swift_unknownObjectRelease();

  sub_1000034F8(a1);
  return v5;
}

_OWORD *sub_100068968(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100006758(a1, a2);
  v10 = sub_10000C2A0(v8, v9);
  sub_100002AA4(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_10002EB80(&qword_10019A100, &qword_10014EED8);
  if (sub_100004E68())
  {
    v17 = *v3;
    sub_10000C2A0(a2, a3);
    sub_1000051A8();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  if (v16)
  {
    sub_1000034F8((*(*v4 + 56) + 32 * v15));
    v20 = sub_1000077D8();

    return sub_1000398F4(v20, v21);
  }

  else
  {
    v23 = sub_1000246A8();
    sub_10006996C(v23, v24, a3, a1, v25);
  }
}

uint64_t sub_100068A90()
{
  sub_100006A04();
  sub_10000C8C8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_100006758(v9, v7);
  v11 = sub_1000459A8();
  sub_100002AA4(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  sub_10002EB80(&qword_10019A0F8, &unk_10014EEC8);
  if (sub_1000117F4())
  {
    sub_100011AEC();
    sub_1000459A8();
    sub_100013C80();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  v20 = *v0;
  if (v17)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v16);
    *(v21 + 8 * v16) = v10;
    sub_1000069EC();
  }

  else
  {
    sub_1000699D8(v16, v8, v6, v4, v2, v10, v20);

    sub_1000069EC();
  }
}

uint64_t sub_100068BC8()
{
  sub_100006A04();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = sub_100006758(v8, v10);
  v13 = sub_10000C2A0(v11, v12);
  sub_100002AA4(v13, v14);
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v15;
  v19 = v16;
  sub_10002EB80(v4, v2);
  if (sub_100004E68())
  {
    v20 = *v0;
    v21 = sub_10001A9E8();
    sub_10000C2A0(v21, v22);
    sub_1000051A8();
    if (!v24)
    {
      goto LABEL_14;
    }

    v18 = v23;
  }

  if (v19)
  {
    v25 = *(*v5 + 56);
    v26 = *(v25 + 8 * v18);
    *(v25 + 8 * v18) = v9;
    sub_1000069EC();
  }

  else
  {
    v29 = sub_1000246A8();
    sub_100069A70(v29, v30, v7, v9, v31);
    sub_1000069EC();
  }
}

uint64_t sub_100068CEC()
{
  sub_100006A04();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = sub_100004B7C(v9, v7, v5, v3);
  sub_100002AA4(v10, v11);
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  sub_10002EB80(&qword_100199670, &unk_10014E370);
  if (!sub_10001CEB0())
  {
    goto LABEL_5;
  }

  v17 = *v0;
  v18 = sub_10000C2A0(v6, v4);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v2;
  if (v16)
  {
    v21 = (v20[7] + 16 * v15);
    v22 = v21[1];
    *v21 = v1;
    v21[1] = v8;
    sub_1000069EC();
  }

  else
  {
    sub_100069A24(v15, v6, v4, v1, v8, v20);
    sub_1000069EC();
  }
}

void sub_100068DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100006758(a1, a2);
  v9 = sub_10000C2A0(v7, v8);
  sub_100002AA4(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  sub_10002EB80(&qword_100199B90, &qword_10014E788);
  if (sub_100004E68())
  {
    v16 = *v3;
    v17 = sub_10001A9E8();
    sub_10000C2A0(v17, v18);
    sub_1000051A8();
    if (!v20)
    {
      goto LABEL_14;
    }

    v14 = v19;
  }

  if (v15)
  {
    v21 = *(*v4 + 56);
    v22 = *(v21 + 8 * v14);
    *(v21 + 8 * v14) = a1;
  }

  else
  {
    v23 = sub_1000246A8();
    sub_100069A70(v23, v24, a3, a1, v25);
  }
}

void sub_100068F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A04();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for UUID();
  v29 = sub_100002944(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v20;
  sub_100045A18();
  sub_100002AA4(v37, v38);
  if (v41)
  {
    __break(1u);
    goto LABEL_11;
  }

  v42 = v39;
  v43 = v40;
  sub_10002EB80(&qword_100199BC0, &unk_10014EEA0);
  if (!sub_100004E68())
  {
    goto LABEL_5;
  }

  v44 = *v23;
  sub_100045A18();
  if ((v43 & 1) != (v46 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v42 = v45;
LABEL_5:
  v47 = *v23;
  if (v43)
  {
    v48 = v47[7];
    v49 = *(v48 + 8 * v42);
    *(v48 + 8 * v42) = v27;
    sub_1000069EC();
  }

  else
  {
    (*(v31 + 16))(v35, v25, v28);
    sub_100069AB8(v42, v35, v27, v47);
    sub_1000069EC();
  }
}

uint64_t sub_100069084(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C2A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10002EB80(&qword_100199C68, &unk_10014E7D0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_10000C2A0(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = type metadata accessor for UUID();
    v24 = *(v23 - 8);
    v25 = *(v24 + 40);
    v26 = v23;
    v27 = v22 + *(v24 + 72) * v16;

    return v25(v27, a1, v26);
  }

  else
  {
    sub_100069B70(v16, a2, a3, a1, v21);
  }
}

uint64_t sub_1000691F8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100045ADC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10002EB80(&qword_100199C78, &unk_10014E7E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100045ADC(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = v22 + *(*(sub_10002EB80(&qword_100199C70, &unk_10014EE60) - 8) + 72) * v16;

    return sub_100069E4C(a1, v23);
  }

  else
  {
    sub_100069C20(v16, a2, a3, a1, v21);

    return sub_1000098F0(a2, a3);
  }
}

id sub_100069360(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_10004B2BC(a3);
  sub_100002AA4(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for LNSuggestedActionDialogParameterKey(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_10002EB80(&qword_10019A0B0, &qword_10014EE50);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v9))
  {
    v17 = *v5;
    sub_10004B2BC(a3);
    sub_1000051A8();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v15);
    v22 = v21[1];
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_100069CDC(v15, a3, a1, a2, v20);

    return a3;
  }
}

uint64_t sub_1000694A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  sub_10000C8C8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v32 = v18;
  v33 = v17;
  sub_100006758(v17, v15);
  v19 = sub_10004592C();
  sub_100002AA4(v19, v20);
  if (v23)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = v21;
  v25 = v22;
  sub_10002EB80(a7, a8);
  if (sub_1000117F4())
  {
    sub_100011AEC();
    sub_10004592C();
    sub_100013C80();
    if (!v27)
    {
      goto LABEL_14;
    }

    v24 = v26;
  }

  v28 = *v8;
  if (v25)
  {
    v29 = v28[7];
    v30 = *(v29 + 8 * v24);
    *(v29 + 8 * v24) = v33;
  }

  else
  {
    sub_1000699D8(v24, v16, v14, v32, v12, v33, v28);
  }
}

uint64_t sub_1000695E0()
{
  sub_100006A04();
  sub_10000C8C8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_10000C2A0(v4, v2);
  sub_100002AA4(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_10002EB80(&qword_100199C88, &qword_10014EE80);
  if (!sub_1000117F4())
  {
    goto LABEL_5;
  }

  v20 = sub_100011AEC();
  v21 = sub_10000C2A0(v20, v3);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v1;
  if (v19)
  {
    v24 = (v23[7] + 24 * v18);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    *v24 = v11;
    v24[1] = v9;
    v24[2] = v7;

    sub_1000069EC();
  }

  else
  {
    sub_100069D24(v18, v5, v3, v11, v9, v7, v23);
    sub_1000069EC();
  }
}

uint64_t sub_10006971C()
{
  sub_100006A04();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = sub_100004B7C(v9, v7, v5, v3);
  sub_100002AA4(v10, v11);
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  sub_10002EB80(&qword_10019A0C0, &qword_10014EE70);
  if (!sub_10001CEB0())
  {
    goto LABEL_5;
  }

  v17 = *v0;
  v18 = sub_10000C2A0(v6, v4);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v2;
  if (v16)
  {
    v21 = (v20[7] + 16 * v15);
    v23 = *v21;
    v22 = v21[1];
    *v21 = v1;
    v21[1] = v8;

    sub_1000069EC();
  }

  else
  {
    sub_100069A24(v15, v6, v4, v1, v8, v20);
    sub_1000069EC();
  }
}

uint64_t sub_100069834()
{
  sub_100006A04();
  sub_10000C8C8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_100006758(v9, v7);
  v11 = sub_100045C54();
  sub_100002AA4(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  sub_10002EB80(&qword_10019A0C8, &qword_10014EE78);
  if (sub_1000117F4())
  {
    sub_100011AEC();
    sub_100045C54();
    sub_100013C80();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  v20 = *v0;
  if (v17)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v16);
    *(v21 + 8 * v16) = v10;
    sub_1000069EC();
  }

  else
  {
    sub_1000699D8(v16, v8, v6, v4, v2, v10, v20);

    sub_1000069EC();
  }
}

_OWORD *sub_10006996C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000398F4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1000699D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_100069A24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_100069A70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100069AB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100069B70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100069C20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  result = sub_100069DF0(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_100199C70, &unk_10014EE60);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_100069CDC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_100069D24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_100069D78(void *a1)
{
  v2 = [a1 synonyms];

  if (!v2)
  {
    return 0;
  }

  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100069DF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10002EB80(a3, a4);
  sub_10000482C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000077D8();
  v9(v8);
  return a2;
}

uint64_t sub_100069E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100069EE4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100003D44(319, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
    if (v1 <= 0x3F)
    {
      sub_100003D44(319, &qword_10019BBA0, LNProperty_ptr);
      if (v2 <= 0x3F)
      {
        sub_100069FE0();
        if (v3 <= 0x3F)
        {
          sub_10006A048();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100069FE0()
{
  if (!qword_10019A170)
  {
    sub_100003D44(255, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10019A170);
    }
  }
}

void sub_10006A048()
{
  if (!qword_100199788)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100199788);
    }
  }
}

uint64_t sub_10006A0D4(uint64_t a1, _OWORD *a2)
{
  sub_1000398F4(a2, *(*(a1 + 64) + 40));

  return _swift_continuation_resume(a1);
}

uint64_t sub_10006A12C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DB80 = result;
  *algn_10019DB88 = v1;
  return result;
}

uint64_t sub_10006A15C()
{
  if (qword_1001981B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10019DB80;

  return v0;
}

id sub_10006A1C4()
{
  if (qword_1001981C0 != -1)
  {
    sub_100002ACC();
  }

  v0 = type metadata accessor for Logger();
  sub_10000347C(v0, qword_10019DB90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100004C50(0xD000000000000017, 0x8000000100155430, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_1000034F8(v4);
    sub_1000036AC();
    sub_1000036AC();
  }

  v5 = LNDaemonConstraintValidationXPCInterface();

  return v5;
}

uint64_t sub_10006A2F4(uint64_t a1)
{
  *(v1 + 208) = a1;

  return _swift_task_switch(sub_10006A384, 0, 0);
}

uint64_t sub_10006A384()
{
  if (qword_1001981C0 != -1)
  {
    sub_100002ACC();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  v0[27] = sub_10000347C(v2, qword_10019DB90);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validating constraints on action %@", v7, 0xCu);
    sub_10006AEBC(v8);
    sub_1000036AC();
    sub_1000036AC();
  }

  v10 = v0[26];

  v11 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_10006A5CC;
  v12 = swift_continuation_init();
  v0[17] = sub_10002EB80(&qword_10019A258, &qword_10014EF78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006A88C;
  v0[13] = &unk_10018D580;
  v0[14] = v12;
  [v11 contextForAction:v10 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006A5CC()
{
  v4 = *v0;
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  return _swift_task_switch(sub_10006A6D0, 0, 0);
}

uint64_t sub_10006A6D0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  sub_1000398F4((v0 + 176), (v0 + 144));
  sub_1000034B4((v0 + 144), *(v0 + 168));
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  *(v0 + 80) = 0;
  v4 = [v1 evaluateConstraintsInContext:v3 error:v0 + 80];
  swift_unknownObjectRelease();
  v5 = *(v0 + 80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "Validating constraints finished with result: %ld", v8, 0xCu);
    sub_1000036AC();
  }

  if (v5)
  {
    v9 = [v5 localizedDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_1000034F8((v0 + 144));

  v13 = *(v0 + 8);

  return v13(v4, v10, v12);
}

uint64_t sub_10006A88C(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000034B4((a1 + 32), *(a1 + 56));
  ObjectType = swift_getObjectType();
  *&v5 = a2;
  swift_unknownObjectRetain();
  return sub_10006A0D4(v3, &v5);
}

uint64_t sub_10006A970(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10006AA30;

  return sub_10006A2F4(v6);
}

uint64_t sub_10006AA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;
  sub_10000298C();
  *v11 = v10;

  if (a3)
  {

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v6 + 32);
  (v13)[2](v13, a1, v12);

  _Block_release(v13);

  v14 = *(v10 + 8);

  return v14();
}

id sub_10006ABD0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10006AC08()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DB90);
  sub_10000347C(v0, qword_10019DB90);
  type metadata accessor for ConstraintValidationService();
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

uint64_t sub_10006AD1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006ADD0;

  return sub_10006A970(v2, v3, v4);
}

uint64_t sub_10006ADD0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10000298C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10006AEBC(uint64_t a1)
{
  v2 = sub_10002EB80(&unk_10019A260, &unk_10014D030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10006AF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000232F4(a2);
  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return _swiftEmptyArrayStorage;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v2 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v8 = [v7 orderedPhrases];
    sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = __OFADD__(v6, v10);
    v6 += v10;
    if (v11)
    {
      goto LABEL_35;
    }

    if (v6 > a1)
    {
      v12 = [v2 orderedPhrases];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!__OFSUB__(v6, a1))
      {
        v14 = sub_10006B3C4(v6 - a1, v13);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if ((v19 & 1) == 0)
        {
          goto LABEL_19;
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = _swiftEmptyArrayStorage;
        }

        v23 = v22[2];

        if (__OFSUB__(v20 >> 1, v18))
        {
          __break(1u);
        }

        else if (v23 == (v20 >> 1) - v18)
        {
          v24 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v54 = v24;
          if (!v24)
          {
            v54 = _swiftEmptyArrayStorage;
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        swift_unknownObjectRelease();
LABEL_19:
        sub_10006B774(v14, v16, v18, v20, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
        v54 = v21;
LABEL_29:
        swift_unknownObjectRelease();
LABEL_30:
        v25 = [v2 bundleIdentifier];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v27;
        v52 = v26;

        v28 = [v2 localeIdentifier];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v30;
        v50 = v29;

        v31 = [v2 actionIdentifier];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_10000F2A0(v2, &selRef_localizedShortTitle);
        v36 = v35;
        v37 = sub_10000F2A0(v2, &selRef_localizedAutoShortcutDescription);
        v39 = v38;
        v40 = [v2 systemImageName];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = [v2 shortcutTileColor];
        v45 = [v2 parameterPresentation];
        v46 = objc_allocWithZone(LNAutoShortcut);
        sub_10006B504(v52, v51, v50, v49, v48, v33, v54, v34, v36, v37, v39, v41, v43, v44, v45);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_31:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return _swiftEmptyArrayStorage;
        }

LABEL_37:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_31;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v6 == a1)
    {
      break;
    }

    v2 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v5;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10006B3C4(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = _CocoaArrayWrapper.subscript.getter();

    return v10;
  }

  v4 = sub_1000232F4(a2);
  v5 = sub_100108A58(v4, -a1, 0, a2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1001089FC(0, a2);
  sub_1001089FC(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v8);
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

id sub_10006B504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v23 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
  v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a9)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (a11)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = String._bridgeToObjectiveC()();

  v21 = [v24 initWithBundleIdentifier:v23 localeIdentifier:v15 actionIdentifier:v16 orderedPhrases:v17.super.isa localizedShortTitle:v18 localizedAutoShortcutDescription:v19 systemImageName:v20 shortcutTileColor:a14 parameterPresentation:a15];

  return v21;
}

void *sub_10006B6A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1000B3180(*(a1 + 16), 0);
  sub_1000B5980(&v7, (v3 + 4), v1, a1);
  v5 = v4;

  sub_100014464();
  if (v5 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_10006B774(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 >= 1)
    {
      sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v11[2] = v7;
      v11[3] = (2 * ((v12 - 32) / 8)) | 1;
    }

    if (v6 != a3)
    {
      sub_100003D44(0, a5, a6);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_10006B868()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v8 = 1;
  String.utf8CString.getter();
  v4 = container_system_path_for_identifier();

  if (v4)
  {
    v5 = type metadata accessor for URL();
    sub_1000075C4(v3, 1, 1, v5);
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_1000209B0(v3);
    free(v4);
  }

  else
  {
    v6 = v8;
    sub_10006B9D0();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
  }
}

unint64_t sub_10006B9D0()
{
  result = qword_10019A270;
  if (!qword_10019A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A270);
  }

  return result;
}

uint64_t sub_10006BA34(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 56);
  if (!v6)
  {
    return v13;
  }

  while (1)
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(v7 - 2);
    v12[0] = *(v7 - 3);
    v12[1] = v10;
    v12[2] = v8;
    v12[3] = v9;

    a2(&v13, v12);
    if (v4)
    {
      break;
    }

    v7 += 4;
    if (!--v6)
    {
      return v13;
    }
  }
}

uint64_t sub_10006BB00(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v5 = v4;
  v7 = *(a4 + 16);
  v8 = (a4 + 48);
  if (!v7)
  {
    return v14;
  }

  while (1)
  {
    v10 = *(v8 - 1);
    v9 = *v8;
    v13[0] = *(v8 - 2);
    v13[1] = v10;
    v13[2] = v9;

    v11 = v9;
    a2(&v14, v13);
    if (v5)
    {
      break;
    }

    v8 += 3;
    if (!--v7)
    {
      return v14;
    }
  }
}

void *sub_10006BBC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&unk_10019A780, &unk_10014F070);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_10006D5C8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_10006BC60()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DBA8);
  sub_10000347C(v0, qword_10019DBA8);
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

void *sub_10006BCE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ([objc_opt_self() isAssistantIntentPhraseExpansionEnabled] && AFDeviceSupportsSAE())
  {
    v9 = sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
    swift_bridgeObjectRetain_n();
    v10 = sub_1000FEC40(a1, a2, 0);
    if (v4)
    {
    }

    else
    {
      v17 = v9;
      v18 = &off_10018C118;
      *&v16 = v10;
      sub_10001A798(&v16, v19);
      v20 = a1;
      v21 = a2;
      v9 = sub_10006BEA4(v19, a3, a4);
      sub_10006D7A0(v19);
    }
  }

  else
  {
    if (qword_1001981C8 != -1)
    {
      sub_100002AEC();
    }

    v11 = type metadata accessor for Logger();
    sub_10000347C(v11, qword_10019DBA8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Device/locale does not support phrase expansion or phrase expansion is disabled", v14, 2u);
      sub_1000036AC();
    }

    return _swiftEmptyArrayStorage;
  }

  return v9;
}

unint64_t sub_10006BEA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v209 = a3;
  v8 = _s7BuilderVMa();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *sub_1000034B4(v3 + 14, v3[17]);
  v15 = sub_100078FFC(v12, v13, 0, 0);
  if (v4)
  {
    return v11;
  }

  v204 = v11;
  v200 = a1;
  v208 = v5;
  v201 = v8;
  v206 = v15;
  v205 = v13;
  v207 = v12;
  v202 = a2;
  if (qword_1001981C8 != -1)
  {
    sub_100002AEC();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000347C(v16, qword_10019DBA8);

  v203 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = sub_10001135C(v19);
  v21 = v207;
  v22 = v205;
  if (v20)
  {
    v23 = sub_100007764();
    sub_100004E88(v23, 3.852e-34);

    sub_1000051B8(&_mh_execute_header, v24, v25, "Found %ld example phrases from JSON file");
    sub_100003A0C();
  }

  else
  {
  }

  v11 = v208;
  v26 = *sub_1000110F0();

  v27 = sub_10000485C();
  v29 = sub_100078F78(v27, v28);
  v199 = v16;

  v216 = v29;
  v30 = *sub_1000110F0();
  v31 = sub_10000485C();
  v33 = sub_100078FA4(v31, v32);
  v34 = *(*sub_1000110F0() + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v35 = v34;
  sub_100007B58();
  sub_100020274();
  if (v34)
  {

    return v11;
  }

  v193 = v36;
  v194 = v33;
  sub_100013334(v11 + 112, &v214);
  sub_10001AAD4();
  v38 = sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014DD60;
  v40 = objc_opt_self();
  *(inited + 32) = [v40 entityUpdatingProtocol];
  *(inited + 40) = [v40 propertyUpdaterProtocol];
  sub_1000C2C6C(inited);
  v41 = *v33;
  sub_100007B58();
  sub_1000791B0();
  v43 = v42;
  v198 = v40;

  v44 = sub_10000485C();
  v46 = sub_1000B6334(v44, v45, v43);

  if (!v46)
  {
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    v46 = Dictionary.init(dictionaryLiteral:)();
  }

  v47 = v208;
  sub_1000034F8(&v214);
  sub_100013334((v47 + 14), &v214);
  sub_10001AAD4();
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_10014CE80;
  *(v48 + 32) = [v198 openEntitySystemProtocol];
  sub_1000C2C6C(v48);
  v49 = *v47;
  sub_100007B58();
  sub_1000791B0();
  v51 = v50;

  v52 = sub_10000485C();
  v54 = sub_1000B6334(v52, v53, v51);

  if (v54)
  {
    v195 = v54;
  }

  else
  {
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    v195 = Dictionary.init(dictionaryLiteral:)();
  }

  v11 = v208;
  sub_1000034F8(&v214);
  v55 = *(*sub_1000110F0() + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v56 = v55;
  sub_100007B58();
  sub_1000A3EE8();
  v192 = v55;
  if (v55)
  {

    sub_100012020();

    return v11;
  }

  v58 = v57;
  v59 = sub_1000232F4(v57);
  if (!v59)
  {

    goto LABEL_30;
  }

  v60 = v59;
  v191 = v46;
  v214 = _swiftEmptyArrayStorage;
  i = &v214;
  sub_1000B36E4(0, v59 & ~(v59 >> 63), 0);
  v198 = v60;
  if ((v60 & 0x8000000000000000) == 0)
  {
    v62 = 0;
    v63 = v214;
    v197 = v58 & 0xC000000000000001;
    v196 = v58;
    do
    {
      if (v197)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v64 = *(v58 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = [v64 identifier];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v214 = v63;
      v71 = v63[2];
      v70 = v63[3];
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v75 = sub_100007EF0(v70);
        v190 = v76;
        sub_1000B36E4(v75, v76, 1);
        v72 = v190;
        v63 = v214;
      }

      ++v62;
      v63[2] = v72;
      v73 = &v63[3 * v71];
      v73[4] = v67;
      v73[5] = v69;
      v73[6] = v65;
      sub_10000781C();
      v11 = v208;
      v58 = v196;
    }

    while (v74 != v62);

    v46 = v191;
LABEL_30:
    sub_100008898();
    v58 = sub_10006BBC8(v77);
    v192 = 0;
    v78 = sub_1000B631C(v46);
    v79 = sub_1000B631C(v195);
    v214 = v78;
    sub_10006E60C(v79);
    v60 = v214;
    sub_10000485C();
    v197 = v58;
    sub_100040EF8();
    i = v80;

    v38 = 0;
    v81 = *(i + 16);
    v198 = i;
    v82 = i + 48;
    v190 = v81;
    v191 = -v81;
    v188 = _swiftEmptyArrayStorage;
    v187 = i + 48;
LABEL_31:
    v46 = (v82 + 24 * v38);
    v83 = v38 + 1;
    while (v191 + v83 != 1)
    {
      v38 = v83;
      if ((v83 - 1) >= *(v198 + 2))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v84 = *(v46 - 1);
      v189 = *(v46 - 2);
      v85 = *v46;
      v196 = v84;

      v55 = v85;
      sub_100011814(&v215);

      v195 = v55;
      v86 = [v55 intentIdentifier];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v87;

      if (*(i + 16))
      {
        v88 = v58;
        v58 = i;
        sub_10000C2A0(v88, v60);
        i = v89;

        v11 = v208;
        if (i)
        {
          sub_100011814(v212);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v214 = i;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v91 = *(i + 16);
            sub_100007150();
            sub_1000B3698();
            i = v214;
          }

          v82 = v187;
          v58 = v189;
          v93 = *(i + 16);
          v92 = *(i + 24);
          v60 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            sub_100007EF0(v92);
            sub_1000B3698();
            i = v214;
          }

          *(i + 16) = v60;
          v188 = i;
          v94 = (i + 24 * v93);
          v95 = v196;
          v94[4] = v58;
          v94[5] = v95;
          v94[6] = v195;
          v11 = v208;
          goto LABEL_31;
        }
      }

      else
      {

        v11 = v208;
      }

      v83 = v38 + 1;
      v46 += 3;
    }

    sub_10000781C();
    v98 = v97 + 48;
    v191 = _swiftEmptyArrayStorage;
    v189 = _swiftEmptyArrayStorage;
    v187 = v97 + 48;
LABEL_45:
    v46 = (v98 + 24 * v96);
    v58 = v197;
    while (v190 != v96)
    {
      sub_10000781C();
      v100 = *(v99 + 16);
      v196 = v101;
      if (v101 >= v100)
      {
        goto LABEL_102;
      }

      v102 = *(v46 - 1);
      v195 = *(v46 - 2);
      v55 = *v46;

      v103 = v102;

      v38 = v55;
      v104 = [v38 intentIdentifier];
      i = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v105;

      if (!*(v58 + 16))
      {

LABEL_52:
        sub_100011814(v213);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v214 = i;
        if ((v107 & 1) == 0)
        {
          v108 = *(i + 16);
          sub_100007150();
          sub_1000B3698();
          i = v214;
        }

        v98 = v187;
        v109 = v196;
        v111 = *(i + 16);
        v110 = *(i + 24);
        v60 = v111 + 1;
        if (v111 >= v110 >> 1)
        {
          sub_100007EF0(v110);
          sub_1000B3698();
          v109 = v196;
          i = v214;
        }

        v96 = v109 + 1;
        *(i + 16) = v60;
        v189 = i;
        v112 = (i + 24 * v111);
        v112[4] = v195;
        v112[5] = v103;
        v112[6] = v38;
        v21 = v207;
        v11 = v208;
        goto LABEL_45;
      }

      sub_10000C2A0(i, v60);
      i = v106;

      if ((i & 1) == 0)
      {
        goto LABEL_52;
      }

      v46 += 3;
      v96 = v196 + 1;
      v21 = v207;
      v11 = v208;
      v58 = v197;
    }

    i = &v216;
    sub_10006E2C8(v189);
    v113 = 0;
    v211 = _swiftEmptyArrayStorage;
    v195 = *(v216 + 16);
    v190 = v216;
    v114 = (v216 + 48);
    while (v195 != v113)
    {
      v115 = *(v190 + 16);
      v196 = v113;
      if (v113 >= v115)
      {
        goto LABEL_103;
      }

      v58 = *(v114 - 1);
      v116 = *v114;
      v38 = v114;
      sub_100013334(v11 + 112, &v214);
      sub_10001AAD4();

      v46 = v116;
      v11 = [v46 intentIdentifier];
      v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v117 = *i;
      sub_10000485C();
      sub_100008898();
      sub_100078C8C(v118, v119, v120, v121);
      if (v55)
      {

        sub_100012020();

        sub_1000034F8(&v214);

        goto LABEL_8;
      }

      v192 = 0;

      sub_1000034F8(&v214);
      i = &v211;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v60 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60 >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v191 = v211;
      v114 = (v38 + 24);
      v113 = v196 + 1;
      v11 = v208;
    }

    sub_10006E2C8(v188);
    v122 = *sub_1000110F0();
    sub_10000485C();
    sub_100008898();
    v125 = sub_100078FD0(v123, v124);
    if (v55)
    {

      sub_100012020();

LABEL_8:

      return v11;
    }

    v38 = v125;
    v192 = 0;
    v11 = 0;
    v198 = *(v125 + 16);
    v126 = v125 + 48;
    v127 = _swiftEmptyArrayStorage;
    v46 = v204;
    v196 = (v125 + 48);
LABEL_68:
    for (i = v126 + 24 * v11; ; i += 24)
    {
      sub_10000781C();
      if (v128 == v11)
      {
        break;
      }

      if (v11 >= *(v38 + 16))
      {
        goto LABEL_104;
      }

      v129 = *(i - 16);
      v58 = *(i - 8);
      v55 = *i;

      v60 = v55;
      if (![v60 kind])
      {
        v130 = swift_isUniquelyReferenced_nonNull_native();
        v214 = v127;
        if ((v130 & 1) == 0)
        {
          v131 = v127[2];
          sub_100007150();
          sub_1000B364C();
          v127 = v214;
        }

        v133 = v127[2];
        v132 = v127[3];
        v134 = (v133 + 1);
        v135 = v58;
        if (v133 >= v132 >> 1)
        {
          sub_100007EF0(v132);
          v138 = v137;
          v195 = v139;
          sub_1000B364C();
          v134 = v138;
          v133 = v195;
          v135 = v58;
          v127 = v214;
        }

        ++v11;
        v127[2] = v134;
        v136 = &v127[3 * v133];
        v136[4] = v129;
        v136[5] = v135;
        v136[6] = v60;
        v46 = v204;
        v126 = v196;
        goto LABEL_68;
      }

      ++v11;
      v46 = v204;
    }

    v140 = sub_1000134B0();
    v141 = static os_log_type_t.default.getter();
    if (sub_10001135C(v141))
    {
      v142 = sub_100007764();
      sub_100004E88(v142, 3.852e-34);
      v198 = v127;

      sub_1000051B8(&_mh_execute_header, v143, v144, "Developer provided %ld AssistantAppEntity examples");
      sub_100003A0C();
    }

    else
    {

      v198 = v127;
    }

    v214 = _swiftEmptyDictionarySingleton;
    sub_100011814(&v218);
    v11 = v209;
    v145 = sub_1000BE888();
    sub_1000B6F10(v191, v193, i, v11, v21, v22, v145, &v214);
    i = v146;

    v147 = sub_1000134B0();
    v148 = static os_log_type_t.default.getter();
    if (sub_10001135C(v148))
    {
      v149 = sub_100007764();
      sub_100004E88(v149, 3.852e-34);

      sub_1000051B8(&_mh_execute_header, v150, v151, "Found %ld parameters with platform-provided values");
      v11 = v209;
      sub_1000036AC();
    }

    else
    {
    }

    v196 = i;
    v58 = v201;
    v152 = *(v201 + 20);
    v153 = sub_100006A7C();
    sub_10006D518(v153, v154);
    v38 = v216;
    sub_100013334((v208 + 14), v46 + *(v58 + 40));
    v55 = qword_100198300;

    v60 = v194;
    if (v55 == -1)
    {
      goto LABEL_85;
    }

    goto LABEL_106;
  }

LABEL_105:
  __break(1u);
LABEL_106:
  swift_once();
LABEL_85:
  v155 = sub_100011814(&v217);
  v157 = sub_10000347C(v155, v156);
  (*(*(i - 8) + 16))(v46, v157, i);
  v158 = (v46 + *(v58 + 24));
  v159 = v202;
  *v158 = v202;
  v158[1] = v11;
  v160 = *(v58 + 28);
  v200 = v38;
  *(v46 + v160) = v38;
  *(v46 + *(v58 + 32)) = v60;
  *(v46 + *(v58 + 36)) = v196;
  *(v46 + *(v58 + 44)) = v197;
  *(v46 + *(v58 + 48)) = v198;

  v161 = sub_1000134B0();
  v162 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v211 = v11;
    *v163 = 136315394;
    v164 = sub_10000485C();
    *(v163 + 4) = sub_100004C50(v164, v165, v166);
    *(v163 + 12) = 2080;
    *(v163 + 14) = sub_100004C50(v159, v209, &v211);
    _os_log_impl(&_mh_execute_header, v161, v162, "Interpolating AssistantIntent example phrases for %s:%s", v163, 0x16u);
    swift_arrayDestroy();
    sub_100003A0C();
    v46 = v204;
    sub_1000036AC();
  }

  v167 = v46;
  sub_100008898();
  sub_100097910();
  if (v55)
  {
    sub_100006A7C();

    sub_10006D550(v46);
  }

  else
  {
    v169 = v168;
    __chkstk_darwin(v168);
    *(&v187 - 2) = v167;
    v170 = sub_10006BB00(_swiftEmptyArrayStorage, sub_10006D5AC, (&v187 - 4), v194);

    v171 = sub_1000134B0();
    v172 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      *v173 = 134218240;
      *(v173 + 4) = sub_1000232F4(v169);

      *(v173 + 12) = 2048;
      *(v173 + 14) = sub_1000232F4(v170);
      v174 = v170;

      _os_log_impl(&_mh_execute_header, v171, v172, "Generated example phrases: %ld negative phrases: %ld", v173, 0x16u);
      sub_100003A0C();
    }

    else
    {

      v174 = v170;
    }

    v175 = *(v206 + 16);
    if (v175)
    {
      v211 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v176 = 48;
      v177 = v206;
      do
      {
        v178 = *(v177 + v176);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v179 = *(v211 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v176 += 24;
        --v175;
      }

      while (v175);
      sub_100006A7C();

      v180 = v211;
    }

    else
    {
      sub_100006A7C();

      v180 = _swiftEmptyArrayStorage;
    }

    v210 = v180;

    sub_10006E5E0(v181);
    sub_10006E5E0(v174);
    v11 = v210;

    v182 = sub_1000134B0();
    v183 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      *v184 = 134218498;
      v185 = sub_1000232F4(v169);

      *(v184 + 4) = v185;

      *(v184 + 12) = 2080;
      *(v184 + 14) = sub_100004C50(v207, v205, &v211);
      *(v184 + 22) = 2080;
      *(v184 + 24) = sub_100004C50(v202, v209, &v211);
      _os_log_impl(&_mh_execute_header, v182, v183, "Caching AssistantIntent %ld phrases for %s:%s", v184, 0x20u);
      swift_arrayDestroy();
      sub_1000036AC();
      sub_1000036AC();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v186 = *sub_1000034B4(v208 + 14, v208[17]);
    sub_100079098(v207, v205, v11);
    sub_10006D550(v204);
  }

  return v11;
}

uint64_t sub_10006D550(uint64_t a1)
{
  v2 = _s7BuilderVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006D5C8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_10000C2A0(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_10002EB80(&qword_10019B480, &qword_1001506A0);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_100046E0C(v15, a2 & 1);
      v17 = *a3;
      v18 = sub_10000C2A0(v7, v6);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = *(v20[7] + 8 * v12);

      v22 = v20[7];
      v23 = *(v22 + 8 * v12);
      *(v22 + 8 * v12) = v21;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v24 = (v20[6] + 16 * v12);
      *v24 = v7;
      v24[1] = v6;
      *(v20[7] + 8 * v12) = v10;
      v25 = v20[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v20[2] = v27;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10006D7F8(id a1@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, void *a6@<X8>)
{
  v12 = &TableBuilder;
  if ([a1 value] || (v16 = objc_msgSend(a1, "disabledReason")) == 0)
  {
    v13 = 0;
    v14 = 0xF000000000000000;
LABEL_3:
    v15 = [a1 v12[34].ivars];

    *a6 = a2;
    a6[1] = a3;
    a6[2] = a4;
    a6[3] = a5;
    a6[4] = v15;
    a6[5] = v13;
    a6[6] = v14;
    return;
  }

  v22 = 0;
  v21 = v16;
  v17 = [objc_opt_self() archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v22];
  v18 = v22;
  if (v17)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v19;

    v12 = &TableBuilder;
    goto LABEL_3;
  }

  v20 = v18;

  _convertNSErrorToError(_:)();

  swift_willThrow();
}

id sub_10006D994()
{
  v1 = v0[4];
  if (v1 == 1)
  {
    v2 = [objc_opt_self() enabled];

    return v2;
  }

  else if (v1)
  {
    _StringGuts.grow(_:)(49);

    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD00000000000001BLL;
    v9._object = 0x8000000100155520;
    String.append(_:)(v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v0[6];
    if (v4 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v5 = v0[5];
      sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
      sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
      sub_1000098F0(v5, v4);
      v7 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      sub_10000D4DC(v5, v4);
    }

    v6 = [objc_opt_self() disabledWithReason:v7];

    return v6;
  }

  return result;
}

void sub_10006DB9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v8 = _swiftEmptyArrayStorage;
    sub_1000B345C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v8;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        sub_100003D44(0, &qword_100198BA0, INSpeakableString_ptr);
        swift_dynamicCast();
        v8 = v4;
        v6 = v4[2];
        if (v6 >= v4[3] >> 1)
        {
          sub_1000B345C();
          v4 = v8;
        }

        ++v3;
        v4[2] = v6 + 1;
        sub_1000398F4(&v7, &v4[4 * v6 + 4]);
      }

      while (v2 != v3);
    }
  }
}

void *sub_10006DD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1000B34AC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100013334(v4, v8);
      sub_10002EB80(&qword_10019A530, &qword_10014F270);
      sub_10002EB80(&unk_10019B4F0, &qword_10014F268);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000B34AC((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_10001A798(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10006DE3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    sub_1000125FC();
    sub_1000B345C();
    v2 = v10;
    v4 = (a1 + 40);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;

      swift_dynamicCast();
      v10 = v2;
      v5 = v2[2];
      if (v5 >= v2[3] >> 1)
      {
        sub_1000B345C();
        v2 = v10;
      }

      v2[2] = v5 + 1;
      sub_1000398F4(&v9, &v2[4 * v5 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10006DF2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v4 = sub_1000125FC();
    sub_1000B35B4(v4, v5, v6);
    v2 = v17;
    v7 = (a1 + 40);
    do
    {
      v12 = *(v7 - 1);
      v13 = *v7;

      sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
      swift_dynamicCast();
      v9 = v17[2];
      v8 = v17[3];
      if (v9 >= v8 >> 1)
      {
        sub_1000B35B4((v8 > 1), v9 + 1, 1);
      }

      v17[2] = v9 + 1;
      v10 = &v17[5 * v9];
      v10[8] = v16;
      *(v10 + 2) = v14;
      *(v10 + 3) = v15;
      v7 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10006E040(uint64_t a1)
{
  v2 = type metadata accessor for LNBundleRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1000B392C(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_10004AE8C(v9, v6);
      v18 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000B392C((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &off_10018EDD8;
      v13 = sub_100013234(&v15);
      sub_10004AE8C(v6, v13);
      v8[2] = v12 + 1;
      sub_10001A798(&v15, &v8[5 * v12 + 4]);
      sub_1000715C4(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void sub_10006E200(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_10007007C);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10002EB80(&qword_10019A488, &qword_10014F1C8);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10006E2C8(uint64_t a1)
{
  sub_100007F00(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10007143C();
  sub_10001A9F4();
  if (!v5)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v6 != v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v4)
  {
    *(v3 + 16) = v7;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10006E3AC(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_100013A60);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10006E450(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_100070554);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10006E520(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100071348(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10006E638(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_100070C90);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10006E728(uint64_t a1)
{
  sub_100007F00(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v4;
  sub_100071244();
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10002EB80(v8, v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v10 = *(v9 + 16);
  v6 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v6)
  {
    *(v9 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void *LinkDaemon.entryPoints.getter()
{
  sub_100004DD8();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_10006F34C;
  *(v0 + 24) = 0;
  sub_10002EB80(&qword_10019A368, &qword_10014F0E0);
  sub_100024878();
  v1 = sub_10006FB60(1, sub_1000716A8, v0);
  sub_100004DD8();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10006F440;
  *(v2 + 24) = 0;
  sub_10002EB80(&qword_10019A370, &qword_10014F0E8);
  sub_100024878();
  v3 = sub_1000037AC();
  v6 = sub_10006FB60(v3, v4, v5);
  sub_100004DD8();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10006F4F4;
  *(v7 + 24) = 0;
  sub_10002EB80(&qword_10019A378, &qword_10014F0F0);
  sub_100024878();
  v8 = sub_10006FB60(1, sub_1000716A8, v7);
  sub_10002EB80(&qword_10019A380, &qword_1001507E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  *(inited + 56) = sub_10002EB80(&qword_10019A388, &qword_10014F0F8);
  *(inited + 64) = &off_10018FCE8;
  sub_100004DD8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000714E8;
  *(v10 + 24) = v8;
  sub_100024878();
  swift_retain_n();
  v11 = sub_1000037AC();
  sub_10006FB60(v11, v12, v13);
  swift_allocObject();
  v14 = sub_10000EE70();
  v15 = sub_10006FD7C(v14);

  *(inited + 32) = v15;
  sub_100004DD8();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v8;
  *(inited + 96) = sub_10002EB80(&qword_10019A390, &qword_10014F100);
  *(inited + 104) = &off_10018FCE8;
  sub_100004DD8();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100071504;
  *(v17 + 24) = v16;
  sub_10002EB80(&qword_10019A398, &qword_10014F108);
  sub_100024878();

  v18 = sub_1000037AC();
  v21 = sub_10006FB60(v18, v19, v20);
  swift_allocObject();
  v22 = sub_10006FC50(v21, &qword_100198228, &qword_10019DD40, algn_10019DD48);

  *(inited + 72) = v22;
  sub_10002EB80(&qword_10019A3A0, &qword_10014F110);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10014BC40;
  v24 = sub_10002EB80(&qword_10019A3A8, &qword_10014F118);
  v25 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v25 + 112) = v1;
  *(v23 + 56) = v24;
  *(v23 + 64) = sub_100013EBC(&qword_10019A3B0, &qword_10019A3A8, &qword_10014F118);
  *(v23 + 32) = v25;
  *(v23 + 96) = sub_1000026B8();
  *(v23 + 104) = sub_100013EBC(&qword_10019A3C0, &qword_10019A3B8, &qword_10014F120);
  sub_100004DD8();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100071520;
  *(v26 + 24) = v1;
  sub_100024878();
  sub_100011AF8();
  v27 = sub_1000037AC();
  v30 = sub_10006FB60(v27, v28, v29);
  v31 = swift_allocObject();
  swift_defaultActor_initialize();

  *(v31 + 112) = v30;
  *(v23 + 72) = v31;
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_10014BC40;
  *(v32 + 56) = sub_1000026B8();
  *(v32 + 64) = sub_100013EBC(&qword_10019A3D0, &qword_10019A3C8, &qword_10014F128);
  sub_100004DD8();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10007153C;
  *(v33 + 24) = v1;
  sub_10002EB80(&qword_10019A3D8, &qword_10014F130);
  sub_100024878();
  sub_100011AF8();
  v34 = sub_1000037AC();
  sub_10006FB60(v34, v35, v36);
  sub_10000643C();
  v37 = sub_10000EE70();
  v38 = sub_10006FA70(v37);

  *(v32 + 32) = v38;
  *(v32 + 96) = sub_1000026B8();
  *(v32 + 104) = sub_100012A8C(&qword_10019A3E8);
  sub_100004DD8();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100071558;
  *(v39 + 24) = v6;
  sub_10002EB80(&qword_10019A3F0, &qword_10014F140);
  sub_100024878();
  swift_retain_n();
  v40 = sub_1000037AC();
  sub_10006FB60(v40, v41, v42);
  sub_10000643C();
  v43 = sub_10000EE70();
  v44 = sub_10006F980(v43);

  *(v32 + 72) = v44;
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_10014F0D0;
  v46 = sub_10002EB80(&qword_10019A3F8, &qword_10014F148);
  swift_allocObject();

  v48 = sub_10006FC50(v47, &qword_100198360, &qword_10019E128, &qword_10019E130);
  *(v45 + 56) = v46;
  *(v45 + 64) = sub_100013EBC(&qword_10019A400, &qword_10019A3F8, &qword_10014F148);
  *(v45 + 32) = v48;
  *(v45 + 96) = sub_1000026B8();
  *(v45 + 104) = sub_100012A8C(&qword_10019A410);
  sub_100004DD8();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_100071574;
  *(v49 + 24) = v6;
  sub_10002EB80(&qword_10019A418, &qword_10014F158);
  v50 = sub_100024878();
  swift_retain_n();
  v51 = sub_1000037AC();
  sub_10006FB60(v51, v52, v53);
  sub_100012038();
  v54 = sub_10006FC50(v50, &qword_100198130, &qword_10019DA50, algn_10019DA58);

  *(v45 + 72) = v54;
  *(v45 + 136) = sub_1000026B8();
  *(v45 + 144) = sub_100012A8C(&qword_10019A428);
  sub_100004DD8();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_100071598;
  *(v55 + 24) = v1;
  sub_10002EB80(&qword_10019A430, &qword_10014F168);
  sub_100024878();
  sub_100011AF8();
  v56 = sub_1000037AC();
  sub_10006FB60(v56, v57, v58);
  sub_100012038();
  v59 = sub_10006FC50(&unk_10014F160, &qword_1001981F8, &qword_10019DBD8, &qword_10019DBE0);

  *(v45 + 112) = v59;
  *(v45 + 176) = sub_1000026B8();
  *(v45 + 184) = sub_100012A8C(&qword_10019A440);
  sub_100004DD8();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_10006F8D8;
  *(v60 + 24) = 0;
  sub_10002EB80(&qword_10019A448, &qword_10014F178);
  sub_100024878();
  v61 = sub_1000037AC();
  v63 = v62;
  sub_10006FB60(v61, v64, v65);
  sub_100012038();
  *(v45 + 152) = sub_10006FC50(v63, &qword_1001983A8, &qword_10019E328, &qword_10019E330);
  *(v45 + 216) = sub_1000026B8();
  *(v45 + 224) = sub_100012A8C(&qword_10019A458);
  sub_100004DD8();
  v66 = swift_allocObject();
  *(v66 + 16) = sub_10006F904;
  *(v66 + 24) = 0;
  sub_10002EB80(&qword_10019A460, &qword_10014F188);
  sub_100024878();
  v67 = sub_1000037AC();
  v69 = v68;
  sub_10006FB60(v67, v70, v71);
  sub_100012038();
  *(v45 + 192) = sub_10006FC50(v69, &qword_1001981B8, &qword_10019DB80, algn_10019DB88);
  sub_10006E728(v32);
  sub_10006E728(v45);
  v72 = sub_10006DD04(v23);

  sub_10006E728(inited);

  return v72;
}

char *sub_10006F34C@<X0>(char **a1@<X8>)
{
  if (qword_100198348 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_10019E0B0, sizeof(__dst));
  v3 = __dst[4];
  v7 = __dst[8];
  objc_allocWithZone(type metadata accessor for Registry(0));

  sub_1000069B8(v3);

  sub_100071620(&v7, &v5);
  result = sub_1000C6A2C(__dst);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10006F440@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for URL();
  sub_1000075C4(v5, 1, 1, v6);
  v7 = type metadata accessor for TranscriptActionRecordStreamManager();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = sub_10005D520(v5);
  *a1 = result;
  return result;
}

id sub_10006F4F4@<X0>(void *a1@<X8>)
{
  if (qword_1001980A8 != -1)
  {
    swift_once();
  }

  v2 = qword_10019D818;
  *a1 = qword_10019D818;
  return v2;
}

uint64_t sub_10006F55C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100084BA4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_10006F58C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  type metadata accessor for ApplicationService();
  swift_allocObject();

  result = sub_100084CF4(v4, a1);
  *a2 = result;
  return result;
}

id sub_10006F5FC@<X0>(void *a1@<X8>)
{
  type metadata accessor for ApplicationService();
  swift_allocObject();

  result = sub_100084CF4(v2, 0);
  *a1 = result;
  return result;
}

uint64_t sub_10006F660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for UpdateRegistryService();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = a1;
  *a2 = v4;
}

uint64_t sub_10006F6C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10006F720();
  type metadata accessor for PruneTranscriptService();
  v3 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v3 + 112) = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_10006F720()
{

  result = sub_10011D0FC(v1, v0);
  if (v3)
  {
    sub_10002EB80(&qword_10019A548, &qword_10014F280);
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

id sub_10006F77C@<X0>(void *a1@<X8>)
{
  v2 = sub_10006F720();
  sub_10002EB80(&qword_10019A540, &qword_10014F278);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10014CE90;
  if (qword_100198318 != -1)
  {
    swift_once();
  }

  v4 = qword_10019E080;
  *(v3 + 56) = &type metadata for NotifyingTranscriptObserver;
  *(v3 + 64) = &off_10018EC08;
  *(v3 + 32) = v4;
  v5 = objc_allocWithZone(type metadata accessor for Transcript());
  v6 = v4;
  result = sub_100057960(v2, v3);
  *a1 = result;
  return result;
}

id sub_10006F868@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for SuggestedActionsService());

  result = sub_100072CA8(v3, &unk_10014F460, 0);
  *a1 = result;
  return result;
}

id sub_10006F930@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(a1(0)) init];
  *a2 = result;
  return result;
}

uint64_t sub_10006F980(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = qword_10019A7A0;
  v5 = sub_10002EB80(&qword_10019A550, &qword_10014F288);
  sub_1000075C4(v2 + v4, 1, 1, v5);
  *(v2 + qword_10019A7A8) = 0;
  *(v2 + qword_10019DBE8) = a1;
  sub_100003D44(0, &qword_10019A558, NSBackgroundActivityScheduler_ptr);

  v6 = sub_10006FE64(0xD000000000000020, 0x8000000100154EE0, &selRef_initWithIdentifier_);
  [v6 setPreregistered:1];

  *(v2 + 112) = 0;
  *(v2 + 120) = v6;
  return v2;
}

uint64_t sub_10006FA70(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = qword_10019A7A0;
  v5 = sub_10002EB80(&qword_10019A550, &qword_10014F288);
  sub_1000075C4(v2 + v4, 1, 1, v5);
  *(v2 + qword_10019A7A8) = 0;
  *(v2 + qword_10019DBE8) = a1;
  sub_100003D44(0, &qword_10019A558, NSBackgroundActivityScheduler_ptr);

  v6 = sub_10006FE64(0xD00000000000001FLL, 0x8000000100155540, &selRef_initWithIdentifier_);
  [v6 setPreregistered:1];

  *(v2 + 112) = 0;
  *(v2 + 120) = v6;
  return v2;
}

uint64_t sub_10006FB60(char a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(NSLock) init];
  *(v3 + 48) = 0;
  *(v3 + 56) = -1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v7;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

id *sub_10006FC50(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  sub_100003D44(0, &qword_10019A538, NSXPCListener_ptr);
  if (*a2 != -1)
  {
    swift_once();
  }

  v10 = *a3;
  v11 = *a4;

  v4[14] = sub_10006FE64(v10, v11, &selRef_initWithMachServiceName_);
  v4[15] = a1;
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v12 = objc_msgSendSuper2(&v16, "init");
  v13 = v12[14];
  v14 = v12;
  [v13 setDelegate:{v14, v16.receiver, v16.super_class}];
  [v12[14] resume];

  return v14;
}

id *sub_10006FD7C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  sub_100003D44(0, &qword_10019A538, NSXPCListener_ptr);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1[14] = sub_10006FE64(v4, v5, &selRef_initWithMachServiceName_);
  v1[15] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v10, "init");
  v7 = v6[14];
  v8 = v6;
  [v7 setDelegate:{v8, v10.receiver, v10.super_class}];
  [v6[14] resume];

  return v8;
}

id sub_10006FE64(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 *a3];

  return v6;
}

void sub_10006FED8()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006778(v6);
  if (v3)
  {
    sub_10002EB80(&qword_10019A518, &qword_10014F248);
    v9 = sub_100011600();
    sub_1000051D8(v9);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v10 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v11[24 * v2] <= v10)
    {
      memmove(v10, v11, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10006FFAC()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006778(v6);
  if (v3)
  {
    sub_10002EB80(&qword_10019A510, &qword_10014F240);
    v9 = sub_10001A85C();
    sub_100011820(v9);
    sub_100011108(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10007007C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10002EB80(&qword_10019A490, &qword_10014F1D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A488, &qword_10014F1C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000701AC()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000134C8(v6);
  if (v2)
  {
    sub_10002EB80(&qword_10019A520, &qword_10014F250);
    v9 = sub_100004868();
    sub_100004E98(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[3 * v3 + 4] <= v9 + 4)
    {
      v12 = sub_10001AAF4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A528, &qword_10014F258);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_1000702DC()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000134C8(v6);
  if (v2)
  {
    sub_10002EB80(&qword_10019A4E0, &qword_10014F220);
    v9 = sub_10001A85C();
    v10 = j__malloc_size(v9);
    sub_10001E0C0(v10 - 32);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000119E0();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1000703A8()
{
  sub_1000088A4();
  if (v7)
  {
    sub_1000079A4();
    if (v9 != v10)
    {
      sub_100006A88();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_100006778(v8);
  if (v3)
  {
    sub_10002EB80(&qword_10019A4E8, &qword_10014F228);
    v4 = 40;
    v11 = sub_100011600();
    sub_1000051D8(v11);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      v13 = sub_10001AAF4();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&unk_10019B370, &unk_100150580);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_100070554()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006778(v6);
  if (v3)
  {
    sub_10002EB80(&qword_10019A4F8, &unk_100150170);
    v9 = swift_allocObject();
    sub_100011820(v9);
    sub_100011108(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v12[64 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100070628()
{
  sub_1000088A4();
  if (v7)
  {
    sub_1000079A4();
    if (v9 != v10)
    {
      sub_100006A88();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_100006778(v8);
  if (v3)
  {
    sub_10002EB80(&qword_10019A4B8, &qword_10014F1F8);
    v4 = 24;
    v11 = sub_100011600();
    sub_1000051D8(v11);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v13 = sub_10001AAF4();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A4C0, &qword_10014F200);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_10007076C()
{
  sub_1000088A4();
  if (v7)
  {
    sub_1000079A4();
    if (v9 != v10)
    {
      sub_100006A88();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_100006778(v8);
  if (v3)
  {
    sub_10002EB80(&unk_10019B300, &unk_100150520);
    v11 = sub_10001A85C();
    sub_100011820(v11);
    sub_100011108(v12);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_10001AAF4();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A4C8, &qword_10014F208);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_100070854()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000134C8(v6);
  if (v2)
  {
    sub_10002EB80(&qword_10019A4A0, &qword_10014F1E0);
    v9 = sub_10001A85C();
    v10 = j__malloc_size(v9);
    sub_10001E0C0(v10 - 32);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000119E0();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_100070920()
{
  sub_1000088A4();
  if (v7)
  {
    sub_1000079A4();
    if (v9 != v10)
    {
      sub_100006A88();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_100006778(v8);
  if (v3)
  {
    sub_10002EB80(&qword_10019A4A8, &qword_10014F1E8);
    v11 = sub_10001A85C();
    sub_100011820(v11);
    sub_100011108(v12);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v14 = sub_10001AAF4();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019A4B0, &qword_10014F1F0);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_100070A08()
{
  sub_1000088A4();
  if (v7)
  {
    sub_1000079A4();
    if (v9 != v10)
    {
      sub_100006A88();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_100006778(v8);
  if (v3)
  {
    sub_10002EB80(&qword_10019A4F0, &unk_100150160);
    v4 = 40;
    v11 = sub_100011600();
    sub_1000051D8(v11);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10001272C();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      v13 = sub_10001AAF4();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019B390, &qword_1001505A0);
    sub_1000183FC();
    swift_arrayInitWithCopy();
  }
}

void sub_100070AF0()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006778(v6);
  if (v3)
  {
    sub_10002EB80(&unk_10019B4E0, &qword_10014F260);
    v9 = sub_100011600();
    sub_1000051D8(v9);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v10 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v11[48 * v2] <= v10)
    {
      memmove(v10, v11, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100070BC4()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000134C8(v6);
  if (v2)
  {
    sub_10002EB80(&qword_10019A4D0, &qword_10014F210);
    v9 = sub_10001A85C();
    v10 = j__malloc_size(v9);
    sub_10001E0C0(v10 - 32);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000119E0();
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_100070C90()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000134C8(v6);
  if (v2)
  {
    sub_10002EB80(&qword_10019A498, &qword_10014F1D8);
    v9 = sub_100004868();
    sub_100004E98(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000119E0();
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v3] <= v11)
    {
      memmove(v11, v12, 48 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100070DF4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    sub_1000079A4();
    if (v12 != v13)
    {
      sub_100006A88();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(sub_10002EB80(a6, a7) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_100071174(a4 + v17, v14, v15 + v17, a6, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100070F2C()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000134C8(v6);
  if (v2)
  {
    sub_10002EB80(&unk_10019B330, &unk_100150550);
    v9 = sub_100004868();
    sub_100004E98(v9);
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000119E0();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_100071004(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_100071024(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_10007105C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_10007109C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_1000710D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

char *sub_100071128(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

uint64_t sub_100071174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10000C8D4();
  if (v10 && (result = sub_10002EB80(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = sub_100007828();

      return _swift_arrayInitWithTakeBackToFront(v12);
    }
  }

  else
  {
    sub_10002EB80(a4, a5);
    v13 = sub_100007828();

    return _swift_arrayInitWithTakeFrontToBack(v13);
  }

  return result;
}

void sub_100071244()
{
  v4 = sub_1000246B4();
  *v1 = v2;
  if (!v4 || v3 > *(v2 + 24) >> 1)
  {
    sub_100013C90();
    sub_10001A674(v5, v6, v7, v8, v9, v10, v11, v0);
    *v1 = v12;
  }
}

uint64_t sub_100071348(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10007143C()
{
  result = sub_1000246B4();
  *v1 = v2;
  if (!result || v3 > *(v2 + 24) >> 1)
  {
    sub_100013C90();
    result = v0();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000714B0@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = sub_10006FBC4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000715C4(uint64_t a1)
{
  v2 = type metadata accessor for LNBundleRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100071620(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_10019A560, &qword_100151690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000716D4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100003D44(0, &qword_100199300, NSObject_ptr);
  v6 = a1[4];
  v7 = a2[4];
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100071774()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  return NSObject.hash(into:)();
}

Swift::Int sub_1000717B4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100071818()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000718EC()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100155560, v0, v1);
}

uint64_t sub_100071950()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_1000719B4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x6D796E6F6E7973, 0xE700000000000000, v0, v1);
}

uint64_t sub_100071A14(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  if (qword_1001981D0 != -1)
  {
    sub_100007F18();
  }

  memcpy(__dst, &unk_10019A568, 0xB0uLL);
  memcpy(__src, &unk_10019A568, sizeof(__src));
  sub_1000196B0(__dst, v16);
  if (qword_1001981D8 != -1)
  {
    sub_100007174();
  }

  sub_100003A8C(&qword_10019A618);
  v16[0] = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014BC40;
  if (qword_1001981E8 != -1)
  {
    swift_once();
  }

  v5 = *(a1 + 32);
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)();
  if (v2)
  {

    sub_10002EBC8(v17);
    memcpy(v16, __src, sizeof(v16));
    sub_10001970C(v16);
    *(v4 + 16) = 0;
    swift_setDeallocating();
    return sub_1000B3030();
  }

  else
  {

    <- infix<A>(_:_:)();

    if (qword_1001981E0 != -1)
    {
      sub_100002B1C();
    }

    sub_100003A8C(&qword_10019A630);
    v15 = *(a1 + 16);
    <- infix<A>(_:_:)();
    v10 = QueryType.insert(_:_:)(v17);
    v12 = v11;
    v14 = v13;
    swift_setDeallocating();
    sub_1000B3030();
    sub_10002EBC8(v17);
    memcpy(v16, __src, sizeof(v16));
    sub_10001970C(v16);
    v21.template._countAndFlagsBits = v10;
    v21.template._object = v12;
    v21.bindings._rawValue = v14;
    Connection.run(_:)(v21);
  }
}

_UNKNOWN **sub_100071D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1001981D0 != -1)
  {
    sub_100007F18();
  }

  memcpy(v32, &unk_10019A568, sizeof(v32));
  if (qword_1001981D8 != -1)
  {
    sub_100007174();
  }

  sub_100003A8C(&qword_10019A618);
  v31[0] = a3;
  v31[1] = a4;
  v8 = == infix<A>(_:_:)();
  v10 = v9;
  v12 = v11;
  if (qword_1001981E0 != -1)
  {
    sub_100002B1C();
  }

  sub_100003A8C(&qword_10019A630);
  v13 = == infix<A>(_:_:)();
  v16 = && infix(_:_:)(v8, v10, v12, v13, v14, v15);
  v18 = v17;
  v20 = v19;

  memcpy(v30, v32, sizeof(v30));
  v21 = &protocol witness table for Table;
  QueryType.filter(_:)(v16, v18, v20, &type metadata for Table, &protocol witness table for Table, v22, v23, v24, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v30[21], a1, a2, v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14]);

  memcpy(v33, v31, sizeof(v33));
  v31[3] = &type metadata for Table;
  v31[4] = &protocol witness table for Table;
  v31[0] = swift_allocObject();
  memcpy((v31[0] + 16), v33, 0xB0uLL);
  v25 = v34;
  Connection.prepareRowIterator(_:)(v31);
  v26 = sub_1000034F8(v31);
  if (!v25)
  {
    __chkstk_darwin(v26);

    RowIterator.compactMap<A>(_:)();
    v21 = v28;
  }

  return v21;
}

double sub_100072014@<D0>(uint64_t a1@<X8>)
{
  sub_100072060(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100072060@<X0>(void *a1@<X8>)
{
  if (qword_1001981D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_1001981E0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_1001981E8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  result = LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = result;
  return result;
}

double sub_10007224C@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    *(a1 + 32) = v9;
  }

  return result;
}

uint64_t sub_10007229C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000722DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100072338()
{
  result = qword_10019A660;
  if (!qword_10019A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A660);
  }

  return result;
}

void *sub_10007238C()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();
  v4 = _swiftEmptyArrayStorage;
  v5 = &qword_10019A720;
  v22 = sub_1000766BC();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v26)
    {
      break;
    }

    sub_1000398F4(&v25, v24);
    sub_100004D14(v24, v23);
    sub_100003D44(0, v5, LNEffectiveBundleIdentifier_ptr);
    if (swift_dynamicCast())
    {
      v6 = v3;
      v7 = v0;
      v8 = v5;
      v9 = v27;
      v10 = [v27 bundleIdentifier];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1000034F8(v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = v4[2];
        sub_100013A60();
        v4 = v17;
      }

      v14 = v4[2];
      if (v14 >= v4[3] >> 1)
      {
        sub_100013A60();
        v4 = v18;
      }

      v4[2] = v14 + 1;
      v15 = &v4[2 * v14];
      v15[4] = v11;
      v15[5] = v13;
      v5 = v8;
      v0 = v7;
      v3 = v6;
    }

    else
    {
      sub_1000034F8(v24);
    }
  }

  (*(v21 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1000725E4()
{
  sub_1000036A0();
  *(v0 + 152) = v1;
  *(v0 + 160) = v2;
  sub_100009990();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10007266C()
{
  sub_100004884();
  v1 = v0[19];
  v2 = v0[20];
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 policyWithBundleIdentifier:v4];

  v0[10] = 0;
  v6 = [v5 connectionWithError:v0 + 10];
  v0[21] = v6;

  v7 = v0[10];
  if (v6)
  {
    sub_100003D44(0, &qword_10019A770, AFPreferences_ptr);
    v8 = v7;
    sub_100027D40();
    if (v9)
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    v0[22] = v10;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000728E8;
    v14 = swift_continuation_init();
    v0[17] = sub_10002EB80(&qword_10019A790, &qword_10014F468);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100072B50;
    v0[13] = &unk_10018DA68;
    v0[14] = v14;
    [v6 fetchSuggestedActionsWithSiriLanguageCode:v10 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100003A00();

    return v12();
  }
}

uint64_t sub_1000728E8()
{
  sub_1000036A0();
  v1 = *v0;
  sub_100007A64();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 184) = *(v4 + 48);
  sub_100009990();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100072A18()
{
  sub_1000070C8();
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  sub_1000105C0();

  return v3(v2);
}

uint64_t sub_100072AB4()
{
  sub_1000036C4();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[23];
  sub_100003A00();

  return v5();
}

uint64_t sub_100072B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000034B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_100038184(v4, v5);
  }

  else
  {
    sub_100003D44(0, &qword_10019A798, LNSuggestedAction_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_100038188(v4, v7);
  }
}

uint64_t sub_100072BF8()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DBC0);
  sub_10000347C(v0, qword_10019DBC0);
  type metadata accessor for SuggestedActionsService();
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

id sub_100072CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC10LinkDaemon23SuggestedActionsService_registrySource] = a1;
  v8 = &v3[OBJC_IVAR____TtC10LinkDaemon23SuggestedActionsService_applicationSuggestionsProvider];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_100072DCC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DBD8 = result;
  unk_10019DBE0 = v1;
  return result;
}

uint64_t sub_100072DFC()
{
  if (qword_1001981F8 != -1)
  {
    swift_once();
  }

  v0 = qword_10019DBD8;

  return v0;
}

uint64_t sub_100072E64(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  sub_100009990();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100072E90()
{
  sub_100004884();
  v18 = v0;
  if (qword_1001981F0 != -1)
  {
    sub_100002B3C();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[5] = sub_100011AB8(v2, qword_10019DBC0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = sub_1000056E4();
    v17 = v7;
    *v6 = 136315138;
    sub_100003D44(0, &qword_10019A728, LNSuggestionsRequest_ptr);
    v8 = Array.description.getter();
    v10 = sub_100004C50(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching suggested actions for requests: %s", v6, 0xCu);
    sub_1000034F8(v7);
    sub_1000036AC();
    sub_1000036AC();
  }

  v11 = sub_10002EB80(&qword_10019A738, &qword_10014F3E8);
  v12 = swift_task_alloc();
  v0[6] = v12;
  *(v12 + 16) = *(v0 + 3);
  v13 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  swift_task_alloc();
  sub_1000103E4();
  v0[7] = v14;
  *v14 = v15;
  v14[1] = sub_1000730B4;
  v20 = v11;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v11, v11, 0, 0, &unk_10014F3F8, v12, v11);
}

uint64_t sub_1000730B4()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000731B8()
{
  sub_100004884();
  v13 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = sub_1000056E4();
    v12 = v6;
    *v5 = 136315138;
    sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
    v7 = Dictionary.description.getter();
    v9 = sub_100004C50(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching suggested actions succeeded with result: %s", v5, 0xCu);
    sub_1000034F8(v6);
    sub_1000036AC();
    sub_100004D8C();
  }

  sub_1000105C0();

  return v10(v2);
}

uint64_t sub_10007330C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_10002EB80(&unk_10019A740, &unk_10014F400);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = *(*(sub_10002EB80(&qword_100198C20, &qword_10014D090) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100073420, 0, 0);
}

uint64_t sub_100073420()
{
  v1 = sub_1000232F4(*(v0 + 96));
  v33 = v1;
  if (v1)
  {
    if (v1 < 1)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v1);
    }

    v2 = 0;
    v3 = *(v0 + 96);
    v30 = v3 + 32;
    v31 = **(v0 + 88);
    v32 = v3 & 0xC000000000000001;
    do
    {
      if (v32)
      {
        v4 = *(v0 + 96);
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v30 + 8 * v2);
      }

      v6 = v5;
      v8 = *(v0 + 136);
      v7 = *(v0 + 144);
      v9 = *(v0 + 104);
      v10 = type metadata accessor for TaskPriority();
      sub_1000075C4(v7, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v6;
      v11[5] = v9;
      sub_10003CC10(v7, v8);
      LODWORD(v7) = sub_1000032C4(v8, 1, v10);
      v13 = v6;
      v14 = v9;
      v15 = *(v0 + 136);
      if (v7 == 1)
      {
        sub_100003E9C(*(v0 + 136), &qword_100198C20, &qword_10014D090);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v10 - 8) + 8))(v15, v10);
      }

      if (*v12)
      {
        v16 = v11[3];
        v17 = *v12;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_10014F420;
      *(v21 + 24) = v11;

      sub_10002EB80(&qword_10019A738, &qword_10014F3E8);
      v22 = v20 | v18;
      if (v20 | v18)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        v22 = v0 + 16;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      ++v2;
      v23 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v22;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_100003E9C(v23, &qword_100198C20, &qword_10014D090);
    }

    while (v33 != v2);
  }

  v24 = *(v0 + 128);
  v25 = **(v0 + 88);
  sub_10002EB80(&qword_10019A738, &qword_10014F3E8);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 152) = &_swiftEmptyDictionarySingleton;
  sub_100076BF0();
  v26 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 160) = v27;
  *v27 = v28;
  sub_100003AF8(v27);
  v1 = v0 + 72;

  return dispatch thunk of AsyncIteratorProtocol.next()(v1);
}

uint64_t sub_100073774()
{
  sub_1000036C4();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  v3[21] = v0;

  if (v0)
  {
    v9 = v3[19];
    v11 = v3[15];
    v10 = v3[16];
    v12 = v3[14];

    (*(v11 + 8))(v10, v12);
  }

  sub_100009990();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000738B4()
{
  sub_100004884();
  v15 = v0;
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[21];
    v3 = v0[19];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v3;
    sub_10007612C(v1, sub_100076C54, 0, isUniquelyReferenced_nonNull_native, &v14);
    v0[19] = v14;
    sub_100076BF0();
    v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    swift_task_alloc();
    sub_1000103E4();
    v0[20] = v6;
    *v6 = v7;
    sub_100003AF8();

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9);
  }

  else
  {
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];
    v11 = v0[10];
    (*(v0[15] + 8))(v0[16], v0[14]);
    *v11 = v9;

    sub_100003A00();

    return v12();
  }
}

uint64_t sub_100073A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  return _swift_task_switch(sub_100073A30, 0, 0);
}

uint64_t sub_100073A30()
{
  sub_1000036A0();
  if ([*(v0 + 112) isOnScreen])
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v2 = sub_1000119EC(v1);

    return sub_100073EF0(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v5 = sub_1000119EC(v4);

    return sub_100074380(v5);
  }
}

uint64_t sub_100073B28()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v2 = v1;
  *(v1 + 72) = v0;
  *(v1 + 80) = v3;
  v5 = *(v4 + 128);
  v6 = *v0;
  sub_10000298C();
  *v7 = v6;

  sub_100009990();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100073C10()
{
  sub_1000036C4();
  v1 = v0[10];
  v3 = v0[13];
  v2 = v0[14];
  sub_10002EB80(&unk_10019A760, &qword_10014F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  v5 = [v2 bundleIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = v1;
  sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
  *v3 = Dictionary.init(dictionaryLiteral:)();
  sub_100003A00();

  return v9();
}

uint64_t sub_100073D0C()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_100007A64();
  *v2 = v1;
  *(v1 + 88) = v0;
  *(v1 + 96) = v3;
  v5 = *(v4 + 136);
  v6 = *v0;
  sub_10000298C();
  *v7 = v6;

  sub_100009990();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100073DF4()
{
  sub_1000036C4();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_10002EB80(&unk_10019A760, &qword_10014F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  v5 = [v1 bundleIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = v3;
  sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
  *v2 = Dictionary.init(dictionaryLiteral:)();
  sub_100003A00();

  return v9();
}

uint64_t sub_100073EF0(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_100073F10, 0, 0);
}

uint64_t sub_100073F10()
{
  sub_1000036C4();
  v1 = *(v0 + 56) + OBJC_IVAR____TtC10LinkDaemon23SuggestedActionsService_applicationSuggestionsProvider;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = [*(v0 + 48) bundleIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v0 + 64) = v7;
  v11 = (v2 + *v2);
  v8 = v2[1];
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_100074048;

  return v11(v5, v7);
}

uint64_t sub_100074048()
{
  sub_1000070C8();
  v3 = v2;
  sub_1000036D0();
  v5 = v4;
  sub_100007A64();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (v0)
  {
    sub_100009990();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 64);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_100074188()
{
  v24 = v0;
  v1 = v0[8];

  if (qword_1001981F0 != -1)
  {
    sub_100002B3C();
  }

  v2 = v0[10];
  v3 = v0[6];
  v4 = type metadata accessor for Logger();
  sub_100011AB8(v4, qword_10019DBC0);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[10];
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = sub_1000056E4();
    v23 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v13 = v0[2];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v9;
    v17 = Error.localizedDescription.getter();
    v19 = sub_100004C50(v17, v18, &v23);

    *(v10 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed fetching suggested actions for: %@, error: %s", v10, 0x16u);
    sub_100003E9C(v11, &unk_10019A260, &unk_10014D030);
    sub_1000036AC();
    sub_1000034F8(v12);
    sub_1000036AC();
    sub_1000036AC();
  }

  v20 = v0[10];

  sub_1000105C0();

  return v21(_swiftEmptyArrayStorage);
}

uint64_t sub_100074380(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_1000743A0, 0, 0);
}

uint64_t sub_1000743A0()
{
  sub_100007858();
  sub_100012AA8();
  v1 = *(v0[7] + OBJC_IVAR____TtC10LinkDaemon23SuggestedActionsService_registrySource);
  v0[8] = sub_100084BE4();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100074598;
  sub_10000783C();

  return sub_1000C4814();
}

uint64_t sub_100074598()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  sub_100009990();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100074680()
{
  sub_1000070C8();
  v1 = [*(v0 + 48) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v5 = sub_100006788(v4);

  return sub_1000167F4(v5, v6);
}

uint64_t sub_10007473C()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  v3[12] = v7;
  v3[13] = v0;

  if (!v0)
  {
    v8 = v3[10];
  }

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100074848()
{
  sub_1000070C8();
  v1 = [*(v0 + 48) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  *(v0 + 112) = v3;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v5 = sub_100006788(v4);

  return sub_1000C4A08(v5, v6);
}

uint64_t sub_100074904()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v0;

  if (!v0)
  {
    v8 = v3[14];
  }

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

void *sub_100074A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, void *a11)
{
  sub_100007858();
  sub_100012AA8();
  v14 = sub_1000232F4(v12[16]);
  if (v14)
  {
    v15 = v14;
    v16 = sub_10001E0D0();
    result = sub_1000B36E4(v16, v17, v18);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v12[16];
    sub_1000026D0();
    do
    {
      if (v13)
      {
        v21 = v12[16];
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *a10;
      }

      v23 = [v22 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100012614();
      if (v25)
      {
        v27 = sub_100024890(v24);
        sub_1000B36E4(v27, v28, v29);
        v11 = a11;
      }

      sub_100013CB4();
    }

    while (!v26);
    v30 = v12[16];
  }

  else
  {
    v31 = v12[16];

    v11 = _swiftEmptyArrayStorage;
  }

  v32 = v12[6];
  v12[18] = sub_100075994(v11);
  v33 = [v32 bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v12[19] = v35;
  v36 = swift_task_alloc();
  v12[20] = v36;
  *v36 = v12;
  sub_100006788(v36);
  sub_10000783C();

  return sub_10001F900(v37, v38);
}

uint64_t sub_100074B9C()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  v3[21] = v7;
  v3[22] = v0;

  if (!v0)
  {
    v8 = v3[19];
  }

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

void *sub_100074CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, void *a11)
{
  sub_100007858();
  sub_100012AA8();
  v14 = sub_1000232F4(v12[21]);
  if (v14)
  {
    v15 = v14;
    v16 = sub_10001E0D0();
    result = sub_10002357C(v16, v17, v18);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v12[21];
    sub_1000026D0();
    do
    {
      if (v13)
      {
        v21 = v12[21];
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *a10;
      }

      v23 = [v22 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100012614();
      if (v25)
      {
        v27 = sub_100024890(v24);
        sub_10002357C(v27, v28, v29);
        v11 = a11;
      }

      sub_100013CB4();
    }

    while (!v26);
    v30 = v12[21];
  }

  else
  {
    v31 = v12[21];

    v11 = _swiftEmptyArrayStorage;
  }

  v32 = v12[18];
  v33 = v12[6];
  v34 = sub_100075A6C(v11);
  sub_100003D44(0, &qword_10019A770, AFPreferences_ptr);
  v35 = sub_100027D40();
  v12[23] = sub_100076D80(v35, v36, v34, v32);
  v37 = [v33 bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v12[24] = v39;
  v40 = swift_task_alloc();
  v12[25] = v40;
  *v40 = v12;
  v40[1] = sub_100074E80;
  v41 = v12[12];
  sub_10000783C();

  return sub_100093040(v42, v43, v44);
}

uint64_t sub_100074E80()
{
  sub_1000036C4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  v7 = v4[25];
  *v6 = *v1;
  v5[26] = v0;

  v8 = v4[24];
  v9 = v4[12];

  if (!v0)
  {
    v5[27] = v3;
  }

  sub_100009990();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100074FE4()
{
  sub_1000036A0();
  v1 = v0[23];
  v2 = v0[8];

  v3 = v0[27];
  sub_1000105C0();

  return v4();
}

uint64_t sub_100075048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = v15[10];
  v20 = v15[8];

  v21 = v15[13];
  if (qword_1001981F0 != -1)
  {
    sub_100002B3C();
  }

  v22 = sub_10000C8E8();
  sub_100011AB8(v22, qword_10019DBC0);
  v23 = v14;
  sub_10000645C();
  v24 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10001D5C8())
  {
    sub_10001161C();
    sub_100005D18();
    a10 = sub_100076EDC();
    a11 = a10;
    sub_100007F38(5.778e-34);
    swift_getErrorValue();
    sub_100012738();
    v25 = sub_10000EE80();
    sub_1000079B4(v25, v26, v27, v28);
    sub_10001A874();
    *(v16 + 14) = v18;
    sub_1000134D8(&_mh_execute_header, v29, v30, "Failed fetching suggested actions for: %@, error: %s");
    sub_100003E9C(v17, &unk_10019A260, &unk_10014D030);
    sub_1000067A0();
    sub_100005200();
    sub_100004D8C();
  }

  sub_1000105C0();
  sub_10000783C();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100075198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = v15[14];
  v20 = v15[12];
  v21 = v15[8];

  v22 = v15[17];
  if (qword_1001981F0 != -1)
  {
    sub_100002B3C();
  }

  v23 = sub_10000C8E8();
  sub_100011AB8(v23, qword_10019DBC0);
  v24 = v14;
  sub_10000645C();
  v25 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10001D5C8())
  {
    sub_10001161C();
    sub_100005D18();
    a10 = sub_100076EDC();
    a11 = a10;
    sub_100007F38(5.778e-34);
    swift_getErrorValue();
    sub_100012738();
    v26 = sub_10000EE80();
    sub_1000079B4(v26, v27, v28, v29);
    sub_10001A874();
    *(v16 + 14) = v18;
    sub_1000134D8(&_mh_execute_header, v30, v31, "Failed fetching suggested actions for: %@, error: %s");
    sub_100003E9C(v17, &unk_10019A260, &unk_10014D030);
    sub_1000067A0();
    sub_100005200();
    sub_100004D8C();
  }

  sub_1000105C0();
  sub_10000783C();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000752F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = v14[18];
  v18 = v14[19];
  v20 = v14[12];
  v21 = v14[8];

  v22 = v14[22];
  if (qword_1001981F0 != -1)
  {
    sub_100002B3C();
  }

  v23 = sub_10000C8E8();
  sub_100011AB8(v23, qword_10019DBC0);
  v24 = v21;
  sub_10000645C();
  v25 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10001D5C8())
  {
    sub_10001161C();
    sub_100005D18();
    a10 = sub_100076EDC();
    a11 = a10;
    sub_100007F38(5.778e-34);
    swift_getErrorValue();
    sub_100012738();
    v26 = sub_10000EE80();
    sub_1000079B4(v26, v27, v28, v29);
    sub_10001A874();
    *(v15 + 14) = v17;
    sub_1000134D8(&_mh_execute_header, v30, v31, "Failed fetching suggested actions for: %@, error: %s");
    sub_100003E9C(v16, &unk_10019A260, &unk_10014D030);
    sub_1000067A0();
    sub_100005200();
    sub_100004D8C();
  }

  sub_1000105C0();
  sub_10000783C();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100075458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = v15[23];
  v20 = v15[8];

  v21 = v15[26];
  if (qword_1001981F0 != -1)
  {
    sub_100002B3C();
  }

  v22 = sub_10000C8E8();
  sub_100011AB8(v22, qword_10019DBC0);
  v23 = v14;
  sub_10000645C();
  v24 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10001D5C8())
  {
    sub_10001161C();
    sub_100005D18();
    a10 = sub_100076EDC();
    a11 = a10;
    sub_100007F38(5.778e-34);
    swift_getErrorValue();
    sub_100012738();
    v25 = sub_10000EE80();
    sub_1000079B4(v25, v26, v27, v28);
    sub_10001A874();
    *(v16 + 14) = v18;
    sub_1000134D8(&_mh_execute_header, v29, v30, "Failed fetching suggested actions for: %@, error: %s");
    sub_100003E9C(v17, &unk_10019A260, &unk_10014D030);
    sub_1000067A0();
    sub_100005200();
    sub_100004D8C();
  }

  sub_1000105C0();
  sub_10000783C();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100075630(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100003D44(0, &qword_10019A728, LNSuggestionsRequest_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100075718;

  return sub_100072E64(v5);
}

uint64_t sub_100075718()
{
  sub_1000036C4();
  sub_1000036D0();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  sub_10000298C();
  *v7 = v6;

  sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (v4)[2](v4, isa, 0);

  _Block_release(v4);
  v9 = *(v6 + 8);

  return v9();
}

void *sub_1000758BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199320, &qword_10014F3B0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000763D8(v2, 1, &v4, sub_100046E34, &unk_10019A708, &qword_10014F3B8);

  return v4;
}

void *sub_100075994(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&unk_10019A780, &unk_10014F070);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000763D8(v2, 1, &v4, sub_100046E0C, &qword_10019B480, &qword_1001506A0);

  return v4;
}

void *sub_100075A6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199310, &qword_10014EE40);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000763D8(v2, 1, &v4, sub_100046DE4, &qword_10019B490, &qword_10014EE48);

  return v4;
}

uint64_t sub_100075B5C(void *a1, id a2)
{
  v3 = [a2 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v6 != v7)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {

      goto LABEL_8;
    }

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {

        return 1;
      }

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (v48 != v51 || v50 != v53)
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v55 & 1;
      }
    }

    return 1;
  }

LABEL_8:
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014F0D0;
  sub_100003720();
  *(v11 + 32) = 0xD000000000000015;
  *(v11 + 40) = v12;
  sub_100003720();
  *(v13 + 48) = v15;
  *(v13 + 56) = v14;
  sub_100003720();
  *(v17 + 64) = v16 + 5;
  *(v17 + 72) = v18;
  sub_100003720();
  *(v19 + 80) = v21;
  *(v19 + 88) = v20;
  sub_100003720();
  *(v23 + 96) = v22 | 2;
  *(v23 + 104) = v24;
  v25 = [a1 effectiveBundleIdentifiers];
  v26 = sub_10007238C();

  v28 = 0;
  while (1)
  {
    v29 = v28 + 16;
    if (v28 == 80)
    {
      break;
    }

    v30 = *(inited + v28 + 40);
    v57[0] = *(inited + v28 + 32);
    v57[1] = v30;
    __chkstk_darwin(v27);
    v56[2] = v57;

    v31 = sub_1000574AC(sub_10004BC6C, v56, v26);

    v28 = v29;
    if (v31)
    {

      swift_setDeallocating();
      sub_1000B30FC();
      return 1;
    }
  }

  swift_setDeallocating();
  sub_1000B30FC();
  if (qword_1001981F0 != -1)
  {
    sub_100002B3C();
  }

  v32 = type metadata accessor for Logger();
  sub_100011AB8(v32, qword_10019DBC0);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = sub_1000056E4();
    v57[0] = v36;
    *v35 = 136315138;
    v37 = Array.description.getter();
    v39 = v38;

    v40 = sub_100004C50(v37, v39, v57);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Skipping 'open' suggestions for app: %s (not yet supported)", v35, 0xCu);
    sub_1000034F8(v36);
    sub_100004D8C();
    sub_1000036AC();
  }

  else
  {
  }

  return 0;
}

void sub_100075FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = *(a1 + 16);
  v8 = a1 + 40;
  v9 = _swiftEmptyArrayStorage;
LABEL_2:
  v10 = (v8 + 16 * v6);
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_19;
    }

    if (*(a5 + 16))
    {
      v13 = *(v10 - 1);
      v12 = *v10;

      v14 = sub_10000C2A0(v13, v12);
      if (v15)
      {
        v16 = *(*(a5 + 56) + 8 * v14);
        v17 = [v16 displayRepresentation];
        v18 = [v17 name];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = v9[2];
          sub_100070628();
          v9 = v22;
        }

        v19 = v9[2];
        if (v19 >= v9[3] >> 1)
        {
          sub_100070628();
          v9 = v23;
        }

        v9[2] = v19 + 1;
        v20 = &v9[3 * v19];
        v20[4] = v13;
        v20[5] = v12;
        v20[6] = v18;
        v6 = v11;
        goto LABEL_2;
      }
    }

    ++v6;
    v10 += 2;
  }

  sub_1000758BC(v9);
}

uint64_t sub_10007612C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  sub_10004AAE4(v46);
  v6 = v46[1];
  v7 = v46[3];
  v8 = v46[4];
  v39 = v46[5];
  v40 = v46[0];
  v9 = (v46[2] + 64) >> 6;

  v38 = v6;
  if (v8)
  {
    while (1)
    {
      v41 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v40 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v40 + 56) + 8 * v12);
      v45[0] = *v13;
      v45[1] = v14;
      v45[2] = v15;

      v39(&v42, v45);

      v16 = v42;
      v17 = v43;
      v18 = v44;
      v19 = *v47;
      v21 = sub_10000C2A0(v42, v43);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (*(v19 + 24) >= v24)
      {
        if ((v41 & 1) == 0)
        {
          sub_10002EB80(&qword_10019A758, &qword_10014F430);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v26 = v47;
        sub_100046E20(v24, v41 & 1);
        v27 = *v26;
        v28 = sub_10000C2A0(v16, v17);
        if ((v25 & 1) != (v29 & 1))
        {
          goto LABEL_24;
        }

        v21 = v28;
      }

      v8 &= v8 - 1;
      v30 = *v47;
      if (v25)
      {

        v31 = v30[7];
        v32 = *(v31 + 8 * v21);
        *(v31 + 8 * v21) = v18;
      }

      else
      {
        v30[(v21 >> 6) + 8] |= 1 << v21;
        v33 = (v30[6] + 16 * v21);
        *v33 = v16;
        v33[1] = v17;
        *(v30[7] + 8 * v21) = v18;
        v34 = v30[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_23;
        }

        v30[2] = v36;
      }

      a4 = 1;
      v7 = v10;
      v6 = v38;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100014464();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v41 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000763D8(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v33 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v33 == v7)
    {
    }

    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;

    v13 = v11;
    v15 = sub_10000C2A0(v9, v10);
    v16 = v12[2];
    v17 = (v14 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = v14;
    if (v12[3] < v16 + v17)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10002EB80(a5, a6);
      _NativeDictionary.copy()();
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v22 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v23 = (v22[6] + 16 * v15);
    *v23 = v9;
    v23[1] = v10;
    *(v22[7] + 8 * v15) = v13;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v22[2] = v26;
    ++v7;
    a2 = 1;
  }

  a4();
  v19 = *a3;
  v20 = sub_10000C2A0(v9, v10);
  if ((v18 & 1) != (v21 & 1))
  {
    goto LABEL_21;
  }

  v15 = v20;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v28._object = 0x8000000100155680;
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v28);
  _print_unlocked<A, B>(_:_:)();
  v29._countAndFlagsBits = 39;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1000766BC()
{
  result = qword_10019A718;
  if (!qword_10019A718)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A718);
  }

  return result;
}

uint64_t sub_100076714()
{
  sub_1000070C8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BEC4;

  return sub_100075630(v2, v3, v4);
}

uint64_t sub_1000767C4()
{
  sub_1000070C8();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_1000103E4();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_10000BEC4;

  return sub_10007330C(v5, v3, v7, v6);
}

uint64_t sub_100076870(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_100076964;

  return v6(v2 + 16);
}

uint64_t sub_100076964()
{
  sub_1000070C8();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_100076A88()
{
  sub_1000036C4();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  sub_1000103E4();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_10000BFAC;

  return sub_100073A0C(v3, v4, v5, v7, v6);
}

uint64_t sub_100076B40()
{
  sub_1000070C8();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  sub_1000103E4();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_10000BFAC;

  return sub_100076870(v3, v5);
}

unint64_t sub_100076BF0()
{
  result = qword_10019A750;
  if (!qword_10019A750)
  {
    sub_10002EC70(&unk_10019A740, &unk_10014F400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A750);
  }

  return result;
}

uint64_t sub_100076C54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10004B2B0(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_100076C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = &type metadata for SiriDiscoverabilityClosedAppSuggestionStrategy;
  v14 = &off_10018DB18;
  v10 = swift_allocObject();
  *&v12 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  sub_10002EB80(&qword_10019A778, &qword_10014F458);
  *(a5 + 56) = Dictionary.init(dictionaryLiteral:)();
  *(a5 + 64) = Dictionary.init(dictionaryLiteral:)();
  sub_10001A798(&v12, a5 + 16);
  return a5;
}

uint64_t sub_100076D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = &type metadata for SiriDiscoverabilityClosedAppSuggestionStrategy;
  v14[4] = &off_10018DB18;
  v8 = swift_allocObject();
  v14[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  type metadata accessor for SuggestedActionsGenerator();
  v9 = swift_allocObject();
  v10 = sub_10001C5D0(v14, &type metadata for SiriDiscoverabilityClosedAppSuggestionStrategy);
  swift_cvw_initWithCopy(v13, v10);
  v11 = sub_100076C98(v13[0], v13[1], v13[2], v13[3], v9);
  sub_1000034F8(v14);
  return v11;
}

uint64_t sub_100076E4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100076E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100076EDC()
{

  return swift_slowAlloc();
}

void sub_100076EF8()
{
  sub_100078690();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_100076FCC()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 112));
  sub_100077064((v1 + 120), v1);
  os_unfair_lock_unlock((v1 + 112));
  sub_100003A00();

  return v2();
}

void sub_100077064(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = v4;
  v7[4] = sub_100078948;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100078320;
  v7[3] = &unk_10018DD00;
  v6 = _Block_copy(v7);

  [v3 scheduleWithBlock:v6];
  _Block_release(v6);
}

uint64_t sub_10007719C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1(1);
  }

  v19 = Strong;
  v37 = a5;
  v38 = v12;
  v39 = v13;
  v41 = a1;
  v42 = a4;
  swift_getMetatypeMetadata();
  v40 = String.init<A>(describing:)();
  v21 = v20;
  v42 = a4;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = a2;
      v42 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_100004C50(v40, v21, &v42);
      *(v25 + 12) = 2080;
      v27 = (*(v37 + 8))(a4);
      v29 = sub_100004C50(v27, v28, &v42);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s started XPC activity %s", v25, 0x16u);
      swift_arrayDestroy();
      a2 = v36;
    }

    (*(v14 + 8))(v17, v39);
    os_unfair_lock_lock((v19 + 112));
    v30 = [*(v19 + 120) shouldDefer];
    os_unfair_lock_unlock((v19 + 112));
    v31 = v41;
    if (v30)
    {

      v31(2);
    }

    else
    {
      v32 = type metadata accessor for TaskPriority();
      v33 = v38;
      sub_1000075C4(v38, 1, 1, v32);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v35 = v40;
      v34[4] = v19;
      v34[5] = v35;
      v34[6] = v21;
      v34[7] = v31;
      v34[8] = a2;

      sub_10003A6C0(0, 0, v33, &unk_10014F6A0, v34);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = *a4;
  v8[19] = *a4;
  v10 = type metadata accessor for Logger();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v13 = *(v9 + 80);
  v8[26] = v13;
  v14 = *(v13 - 8);
  v8[27] = v14;
  v15 = *(v14 + 64) + 15;
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_100077718, 0, 0);
}

void sub_100077718()
{
  v1 = *(v0[14] + qword_10019DBE8);
  sub_100002794(v0[28]);
  v2 = *(v0[19] + 88);
  v0[29] = v2;
  v3 = *(v2 + 16);
  v10 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_100077ADC;
  v6 = v0[28];
  v7 = v0[26];
  sub_1000134F8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_100077ADC(char a1)
{
  sub_1000036D0();
  v5 = v4;
  v6 = *(v4 + 240);
  v7 = *v2;
  sub_10000298C();
  *v8 = v7;
  *(v5 + 248) = v1;

  if (v1)
  {
    v9 = sub_100078008;
  }

  else
  {
    *(v5 + 256) = a1;
    v9 = sub_100077BF8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100077BF8()
{
  v74 = v0;
  v2 = *(v0 + 208);
  if (*(v0 + 256))
  {
    *(v0 + 96) = v2;
    sub_10002EB80(&qword_10019A250, &qword_10014DF40);
    String.init<A>(describing:)();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      v4 = *(v0 + 192);
      v5 = *(v0 + 128);
      String.init(cString:)();
      sub_100007874();

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 232);
        v9 = *(v0 + 208);
        v69 = *(v0 + 216);
        v71 = *(v0 + 224);
        v10 = *(v0 + 192);
        v11 = sub_10001840C();
        v73 = swift_slowAlloc();
        v15 = sub_100011118(4.8151e-34, v73, v12, v13, v14);
        v16 = sub_100007194(v15);
        v18 = v17(v16);
        v20 = sub_100004C50(v18, v19, &v73);

        *(v11 + 14) = v20;
        sub_100005234();
        _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
        v26 = 2;
        swift_arrayDestroy();
        sub_1000036AC();
        sub_1000067A0();

        (*(v1 + 8))();
        (*(v69 + 8))(v71, v9);
      }

      else
      {
        v50 = *(v0 + 216);
        v49 = *(v0 + 224);
        v51 = *(v0 + 208);
        v52 = *(v0 + 192);
        v53 = *(v0 + 160);
        v54 = *(v0 + 168);

        (*(v54 + 8))(v52, v53);
        (*(v50 + 8))(v49, v51);
        v26 = 2;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    *(v0 + 104) = v2;
    sub_10002EB80(&qword_10019A250, &qword_10014DF40);
    String.init<A>(describing:)();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      v27 = *(v0 + 200);
      v28 = *(v0 + 128);
      String.init(cString:)();
      sub_100007874();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 232);
        v32 = *(v0 + 208);
        v70 = *(v0 + 216);
        v72 = *(v0 + 224);
        v33 = *(v0 + 200);
        v34 = sub_10001840C();
        v73 = swift_slowAlloc();
        v38 = sub_100011118(4.8151e-34, v73, v35, v36, v37);
        v39 = sub_100007194(v38);
        v41 = v40(v39);
        v43 = sub_100004C50(v41, v42, &v73);

        *(v34 + 14) = v43;
        sub_100005234();
        _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
        swift_arrayDestroy();
        sub_1000036AC();
        sub_1000067A0();

        (*(v1 + 8))();
        (*(v70 + 8))(v72, v32);
      }

      else
      {
        v56 = *(v0 + 216);
        v55 = *(v0 + 224);
        v58 = *(v0 + 200);
        v57 = *(v0 + 208);
        v59 = *(v0 + 160);
        v60 = *(v0 + 168);

        (*(v60 + 8))(v58, v59);
        (*(v56 + 8))(v55, v57);
      }

      v26 = 1;
LABEL_11:
      v61 = *(v0 + 224);
      v63 = *(v0 + 192);
      v62 = *(v0 + 200);
      v65 = *(v0 + 176);
      v64 = *(v0 + 184);
      v66 = *(v0 + 144);
      (*(v0 + 136))(v26);

      sub_100003A00();
      sub_1000134F8();

      __asm { BRAA            X1, X16 }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100078008()
{
  v39 = v0;
  v0[10] = v0[26];
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    v2 = v0[31];
    v3 = v0[22];
    v4 = v0[16];
    String.init(cString:)();
    sub_100007874();

    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[31];
    if (v7)
    {
      v32 = v0[31];
      v9 = v0[29];
      v10 = v0[26];
      v36 = v0[27];
      v37 = v0[28];
      v33 = v0[21];
      v34 = v0[20];
      v35 = v0[22];
      v12 = v0[15];
      v11 = v0[16];
      v13 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v13 = 136315650;
      *(v13 + 4) = sub_100004C50(v12, v11, &v38);
      *(v13 + 12) = 2080;
      v14 = (*(v9 + 8))(v10, v9);
      v16 = sub_100004C50(v14, v15, &v38);

      *(v13 + 14) = v16;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v18 = v0[5];
      v17 = v0[6];
      v19 = v0[7];
      v20 = Error.localizedDescription.getter();
      v22 = sub_100004C50(v20, v21, &v38);

      *(v13 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s failed to handle XPC activity %s: %s", v13, 0x20u);
      swift_arrayDestroy();
      sub_1000067A0();
      sub_1000036AC();

      (*(v33 + 8))(v35, v34);
      (*(v36 + 8))(v37, v10);
    }

    else
    {
      v24 = v0[27];
      v23 = v0[28];
      v25 = v0[26];
      v27 = v0[21];
      v26 = v0[22];
      v28 = v0[20];

      (*(v27 + 8))(v26, v28);
      (*(v24 + 8))(v23, v25);
    }

    v29 = sub_100004EB8();
    v30(v29);

    sub_100003A00();

    return v31();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100078320(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_100078954, v5);
}

uint64_t sub_1000783CC()
{
  sub_1000036A0();
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 112));
  [*(v1 + 120) invalidate];
  os_unfair_lock_unlock((v1 + 112));
  v2 = *(v1 + qword_10019A7A8);
  v0[3] = v2;
  if (v2)
  {
    v3 = async function pointer to Task<>.value.getter[1];

    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1000784D8;

    return Task<>.value.getter();
  }

  else
  {
    sub_100003A00();

    return v5();
  }
}

uint64_t sub_1000784D8()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_10000298C();
  *v6 = v5;

  return _swift_task_switch(sub_100043C80, v4, 0);
}

uint64_t sub_1000785F4()
{
  sub_100078A44(v0 + qword_10019A7A0);
  v1 = *(v0 + qword_10019A7A8);

  v2 = *(v0 + qword_10019DBE8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10007864C()
{
  sub_1000785F4();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100078690()
{
  if (!qword_10019A830)
  {
    sub_10002EC70(&qword_10019A550, &qword_10014F288);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10019A830);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for XPCActivityResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000787D4()
{
  result = qword_10019A840;
  if (!qword_10019A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A840);
  }

  return result;
}

uint64_t sub_100078828()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BFAC;

  return sub_100076FB4(v3);
}

uint64_t sub_1000788B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BFAC;

  return sub_1000783B4(v3);
}

uint64_t sub_100078968(uint64_t a1)
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
  v11[1] = sub_10000BFAC;

  return sub_10007758C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100078A44(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_10019A868, &qword_10014F6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100078AAC(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0xD000000000000019;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v3, "Unknown errno ");
  HIBYTE(v3[1]) = -18;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3[0];
}

unint64_t sub_100078B8C()
{
  result = qword_10019A870;
  if (!qword_10019A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A870);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IssueSandboxExceptionError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IssueSandboxExceptionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IssueSandboxExceptionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100078C40(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100078C5C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

void sub_100078CE4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000232F4(a3);
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
        goto LABEL_12;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v10 = v8;
    a1(&v10);

    if (v3)
    {
      return;
    }
  }
}

uint64_t sub_100078DBC(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = *(result + 16);
  v4 = result + 32;
  if (v3)
  {
    while (1)
    {
      v30 = v3;
      v5 = *(v4 + 16);
      v28[0] = *v4;
      v28[1] = v5;
      v28[2] = *(v4 + 32);
      v29 = *(v4 + 48);
      v6 = v5;
      sub_100083FD4(v28, &v27);
      v7 = sub_10006D994();
      v8 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v2;
      v10 = v27;
      v11 = sub_10000C2A0(v6, *(&v6 + 1));
      v13 = v10[2];
      v14 = (v12 & 1) == 0;
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        break;
      }

      v16 = v11;
      v17 = v12;
      sub_10002EB80(&unk_10019AAF8, &unk_10014F860);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
      {
        v18 = sub_10000C2A0(v6, *(&v6 + 1));
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_14;
        }

        v16 = v18;
      }

      v20 = v27;
      if (v17)
      {
        v21 = v27[7];
        v22 = *(v21 + 8 * v16);
        *(v21 + 8 * v16) = v7;
      }

      else
      {
        v27[(v16 >> 6) + 8] |= 1 << v16;
        *(v20[6] + 16 * v16) = v6;
        *(v20[7] + 8 * v16) = v7;
        v23 = v20[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_13;
        }

        v20[2] = v25;
      }

      v2 = a2;
      *a2 = v20;
      result = sub_100083F80(v28);
      v4 += 56;
      v3 = v30 - 1;
      if (v30 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100078FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  sub_1000FDCB8(a1, a2, a3, a4);
  sub_10008445C();
  if (v5)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v7, v8);
    sub_10001AB00();
    swift_allocError();
    sub_100006474();
    sub_10008451C();
    swift_willThrow();
  }

  return sub_10000C0C4();
}

id sub_100079098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1000232F4(a3);
  v7 = result;
  v8 = 0;
  v12 = OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection;
  while (v7 != v8)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      result = *(a3 + 8 * v8 + 32);
    }

    v9 = result;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v10 = *(v13 + v12);

    v11 = v9;
    sub_1000FDED8();

    ++v8;
    if (v4)
    {
      return result;
    }
  }

  return result;
}

void sub_1000791B0()
{
  sub_1000067D4();
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v1;

  sub_1000071CC();
  sub_1000A3F48();
}

unint64_t sub_100079210(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      _StringGuts.grow(_:)(40);

      sub_100013128();
      v3 = v11 + 21;
      goto LABEL_6;
    case 2:
      _StringGuts.grow(_:)(43);

      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      v5._countAndFlagsBits = 8238;
      v5._object = 0xE200000000000000;
      String.append(_:)(v5);
      _StringGuts.grow(_:)(51);
      sub_1000132B4();
      v6._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v6);
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 0xD000000000000020;
      v8._object = 0x8000000100155CC0;
      String.append(_:)(v8);
      v13 = 0xD000000000000027;

      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      String.append(_:)(v9);

      goto LABEL_7;
    case 3:
      sub_1000132B4();
      return 0xD00000000000001FLL;
    default:
      _StringGuts.grow(_:)(36);

      sub_100013128();
      v3 = v2 + 17;
LABEL_6:
      v13 = v3;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v12._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v12);
LABEL_7:

      return v13;
  }
}

uint64_t sub_10007946C()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DBF0);
  sub_10000347C(v0, qword_10019DBF0);
  type metadata accessor for MetadataStore(0);
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

uint64_t sub_100079520(uint64_t a1)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  URL.absoluteString.getter();
  sub_1000215C0();
  v8 = objc_allocWithZone(v1);
  v9 = sub_1000079CC();
  sub_100079D10(v9, v10, 0);
  sub_10008445C();
  if (v2)
  {
    v11 = type metadata accessor for URL();
    sub_100002978(v11);
    (*(v12 + 8))(a1);
  }

  else
  {
    v13 = type metadata accessor for URL();
    sub_10000482C(v13);
    (*(v14 + 32))(v7, a1, v13);
    sub_1000075C4(v7, 0, 1, v13);
    v15 = OBJC_IVAR____TtC10LinkDaemon13MetadataStore_URL;
    swift_beginAccess();
    v16 = 0;
    sub_100060D78(v7, v15);
    swift_endAccess();
  }

  return sub_10000C0C4();
}

void sub_100079698(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = sub_100002944(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v61[-v11];
  __chkstk_darwin(v13);
  v15 = &v61[-v14];
  ppDb = 0;
  URL.absoluteString.getter();
  v16 = String.utf8CString.getter();

  v17 = sqlite3_open_v2((v16 + 32), &ppDb, 2, 0);

  if (v17)
  {
    if (sqlite3_errmsg(ppDb))
    {
      String.init(cString:)();
      v19 = v18;
      if (qword_100198200 != -1)
      {
        sub_100007F64();
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000347C(v20, qword_10019DBF0);
      (*(v5 + 16))(v9, a1, v2);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = v62;
        *v23 = 136315650;
        sub_100018430();
        sub_100084084(v24, v25);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_1000844C4();
        v26(v9, v2);
        v27 = sub_1000079CC();
        v30 = sub_100004C50(v27, v28, v29);

        *(v23 + 4) = v30;
        *(v23 + 12) = 1024;
        *(v23 + 14) = v17;
        v31 = sub_100018D14();
        v33 = sub_100004C50(v31, v19, v32);

        *(v23 + 20) = v33;
        v34 = "Could not open database at %s to truncate: %d %s";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v21, v22, v34, v23, 0x1Cu);
        swift_arrayDestroy();
        sub_100004DE4();

        sub_100004DE4();

        return;
      }

      (*(v5 + 8))(v9, v2);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v35 = _sqlite3_db_truncate();
  if (!v35)
  {
    if (qword_100198200 != -1)
    {
      sub_100007F64();
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000347C(v50, qword_10019DBF0);
    (*(v5 + 16))(v15, a1, v2);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_100007764();
      v54 = sub_1000056E4();
      v63 = v54;
      *v53 = 136315138;
      sub_100018430();
      sub_100084084(v55, v56);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      (*(v5 + 8))(v15, v2);
      v60 = sub_100004C50(v57, v59, &v63);

      *(v53 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Truncated database at %s", v53, 0xCu);
      sub_1000034F8(v54);
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      (*(v5 + 8))(v15, v2);
    }

    sqlite3_close_v2(ppDb);
    return;
  }

  v36 = v35;
  if (!sqlite3_errmsg(ppDb))
  {
    goto LABEL_23;
  }

  String.init(cString:)();
  v38 = v37;
  if (qword_100198200 != -1)
  {
    sub_100007F64();
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000347C(v39, qword_10019DBF0);
  (*(v5 + 16))(v12, a1, v2);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = v62;
    *v23 = 136315650;
    sub_100018430();
    sub_100084084(v40, v41);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000844C4();
    v42(v12, v2);
    v43 = sub_1000079CC();
    v46 = sub_100004C50(v43, v44, v45);

    *(v23 + 4) = v46;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v36;
    v47 = sub_100018D14();
    v49 = sub_100004C50(v47, v38, v48);

    *(v23 + 20) = v49;
    v34 = "Could not truncate database at %s: %d %s";
    goto LABEL_13;
  }

  (*(v5 + 8))(v12, v2);
}

uint64_t sub_100079D10(uint64_t a1, uint64_t a2, int a3)
{
  v84 = a3;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = sub_100002944(v5);
  v83 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v82 - v12;
  v14 = OBJC_IVAR____TtC10LinkDaemon13MetadataStore_URL;
  v15 = type metadata accessor for URL();
  v87 = v3;
  v85 = v14;
  sub_1000075C4(v3 + v14, 1, 1, v15);
  v16 = sub_10000373C();
  v86 = ObjectType;
  v17 = v89;
  result = sub_10007A370(v16, v18, v19, 1, 1);
  if (v17)
  {
    v21 = sub_10000373C();
    sub_1000842EC(v21, v22);
    v23 = v87;
LABEL_25:
    sub_100039B5C(v23 + v85, &qword_1001990C0, &unk_10014E200);
    v57 = *((swift_isaMask & *v23) + 0x30);
    v58 = *((swift_isaMask & *v23) + 0x34);
    return swift_deallocPartialClassInstance();
  }

  v24 = result;
  v82 = 0;
  v25 = v83;
  v89 = v5;
  if (v84 & 1) != 0 || (result = sub_10007A5CC(), (result))
  {
    if (!LNLogSubsystem)
    {
      __break(1u);
      return result;
    }

    v26 = sub_10000373C();
    sub_1000842EC(v26, v27);
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v28 = v89;
    (*(v25 + 16))(v10, v13, v89);
    v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v30 = swift_allocObject();
    (*(v25 + 32))(v30 + v29, v10, v28);
    Connection.trace(_:)(sub_100084300, v30);

    (*(v25 + 8))(v13, v28);
  }

  else
  {
    v31 = sub_10000373C();
    sub_1000842EC(v31, v32);
  }

  v33 = v86;
  v34 = v82;
  v35 = sub_10007A8A4();
  v23 = v87;
  if (v34)
  {

    goto LABEL_25;
  }

  v37 = v35;
  if (v36)
  {
    if (v35)
    {
      sub_100083A24();
      sub_10001AB00();
      swift_allocError();
      *v38 = 0;
      v39 = 3;
LABEL_24:
      *(v38 + 8) = v39;
      swift_willThrow();

      goto LABEL_25;
    }

    if (qword_100198200 != -1)
    {
      sub_100007F64();
      v35 = swift_once();
    }

    v59 = sub_100084498(v35, qword_10019DBF0);
    static os_log_type_t.default.getter();
    v60 = sub_10001A88C();
    if (os_log_type_enabled(v60, v61))
    {
      *swift_slowAlloc() = 0;
      sub_100012AB4();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      sub_100004DE4();
    }

    sub_10007A980(v24);
  }

  else
  {
    if (v35 != 116)
    {
      if (qword_100198200 != -1)
      {
        sub_100007F64();
        v35 = swift_once();
      }

      v48 = sub_100084498(v35, qword_10019DBF0);
      static os_log_type_t.default.getter();
      v49 = sub_10001A88C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134218240;
        *(v51 + 4) = v37;
        *(v51 + 12) = 2048;
        *(v51 + 14) = 116;
        sub_100012AB4();
        _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
        sub_100004DE4();
      }

      sub_100083A24();
      sub_10001AB00();
      swift_allocError();
      *v38 = v37;
      v39 = 2;
      goto LABEL_24;
    }

    if (qword_100198200 != -1)
    {
      sub_100007F64();
      v35 = swift_once();
    }

    v40 = sub_100084498(v35, qword_10019DBF0);
    static os_log_type_t.debug.getter();
    v41 = sub_10001A88C();
    if (os_log_type_enabled(v41, v42))
    {
      *swift_slowAlloc() = 0;
      sub_100012AB4();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      sub_100004DE4();
    }
  }

  *(v23 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection) = v24;
  v67 = objc_allocWithZone(type metadata accessor for _LNMetadataProviderDirect());
  swift_retain_n();
  *(v23 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider) = sub_1000A3E30();
  v68 = type metadata accessor for ConnectionTransactionSerializer(0);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  v71 = swift_allocObject();

  v73 = sub_100082244(v72);
  *(v23 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_transactionManager) = v71;
  if (qword_100198200 != -1)
  {
    sub_100007F64();
    v73 = swift_once();
  }

  v74 = sub_100084498(v73, qword_10019DBF0);
  static os_log_type_t.debug.getter();
  v75 = sub_10001A88C();
  if (os_log_type_enabled(v75, v76))
  {
    *swift_slowAlloc() = 0;
    sub_100012AB4();
    _os_log_impl(v77, v78, v79, v80, v81, 2u);
    sub_100004DE4();
  }

  v88.receiver = v23;
  v88.super_class = v33;
  return objc_msgSendSuper2(&v88, "init");
}

uint64_t sub_10007A370(uint64_t a1, unint64_t a2, double a3, uint64_t a4, char a5)
{
  type metadata accessor for Connection();
  swift_allocObject();
  sub_10002CD10(a1, a2);
  v10 = Connection.init(_:readonly:)(a1, a2, 0);
  v11 = v5;
  if (!v5)
  {
    if (a5)
    {
      v12 = [objc_opt_self() processInfo];
      v13 = [v12 environment];

      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000A0CB8(0x5F454C4241534944, 0xEB000000004C4157, v14);
      v16 = v15;

      if (v16)
      {
      }

      else
      {
        sub_10010CF04();
      }
    }

    _StringGuts.grow(_:)(23);

    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 59;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0xD000000000000014;
    v19._object = 0x8000000100155C30;
    Connection.execute(_:)(v19);
    if (!v20)
    {

      Connection.busyTimeout.setter(a3);
      return v10;
    }

    v11 = v20;
  }

  sub_100083A24();
  swift_allocError();
  *v21 = v11;
  *(v21 + 8) = 0;
  swift_willThrow();
  return v10;
}

uint64_t sub_10007A5CC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_100039B5C(v14, &qword_1001992F0, &qword_10014E000);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v11;
  if (qword_100198200 != -1)
  {
    sub_100007F64();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000347C(v4, qword_10019DBF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = sub_10001A88C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "traceDB = %{BOOL}d", v9, 8u);
    sub_100004DE4();
  }

  return v3;
}

void sub_10007A790(uint64_t a1, unint64_t a2)
{

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100004C50(a1, a2, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s", v5, 0xCu);
    sub_1000034F8(v6);
  }
}

uint64_t sub_10007A8A4()
{
  result = Connection.scalar(_:_:)();
  if (!v0)
  {
    if (v5)
    {
      sub_10001A798(&v4, v6);
      sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
      swift_dynamicCast();
      v2 = v7;
      if (v7)
      {
        sub_10010CFA0();
        if (v3)
        {
          return v2;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}