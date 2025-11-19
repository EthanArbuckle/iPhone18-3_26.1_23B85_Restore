size_t sub_1002562E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F5104(a5, a6);
  v16 = *(sub_1000F5104(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000F5104(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1002564CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10025655C(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v82 = a4;
  LODWORD(v90) = a3;
  v91 = a1;
  v85 = type metadata accessor for URL();
  v84 = *(v85 - 8);
  v5 = *(v84 + 64);
  __chkstk_darwin(v85);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v75 - v8;
  v9 = type metadata accessor for REMGroceryLocaleMapping.LocaleSetting();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMGroceryLocaleMapping();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935D70 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100006654(v19, qword_10093EB60);

  v83 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v89 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v87 = v18;
    v25 = v9;
    v26 = v15;
    v27 = v14;
    v28 = v24;
    v29 = v10;
    v30 = swift_slowAlloc();
    *&v94 = v30;
    *v28 = 136446466;
    *(v28 + 4) = sub_10000668C(v91, a2, &v94);
    *(v28 + 12) = 1026;
    *(v28 + 14) = v90 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "loading category names from Trial assets for {locale: %{public}s, includeMisc: %{BOOL,public}d}", v28, 0x12u);
    sub_10000607C(v30);
    v10 = v29;

    v14 = v27;
    v15 = v26;
    v9 = v25;
    v18 = v87;
  }

  v31 = type metadata accessor for REMTrialClient();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = v92;
  v35 = REMTrialClient.init()();
  if (!v34)
  {
    v36 = v35;
    dispatch thunk of REMTrialClient.loadGroceryLocaleMapping()();
    REMGroceryLocaleMapping.localeSetting(for:)();
    REMGroceryLocaleMapping.LocaleSetting.meta.getter();
    dispatch thunk of REMTrialClient.groceryDirectoryURL(for:)();
    v92 = v36;
    v87 = v18;

    URL.appendingPathComponent(_:)();
    v37 = Data.init(contentsOf:options:)();
    v39 = v38;
    v81 = v10;
    v40 = v37;
    v41 = type metadata accessor for JSONDecoder();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10025C18C();
    v44 = v40;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v91 = 0;
    v79 = v9;
    v80 = v14;
    v45 = *(v84 + 8);
    v45(v86, v85);

    result = sub_10001BBA0(v44, v39);
    v9 = v95;
    v47 = v91;
    if (v90)
    {

      sub_10025C33C(&v94);
      v48 = v80;
    }

    else
    {
      v49 = *(v95 + 16);
      v48 = v80;
      if (v49)
      {
        v50 = 0;
        v51 = 0xED000073756F656ELL;
        v52 = 0x616C6C656373694DLL;
        v53 = v95 + 40;
        v77 = v49 - 1;
        v54 = _swiftEmptyArrayStorage;
        v86 = v45;
        v91 = v49;
        v78 = v95 + 40;
        do
        {
          v90 = v54;
          v55 = (v53 + 16 * v50);
          v56 = v50;
          while (1)
          {
            if (v56 >= *(v9 + 16))
            {
              __break(1u);
              return result;
            }

            v58 = *(v55 - 1);
            v57 = *v55;
            v59 = v58 == v52 && v57 == v51;
            if (!v59)
            {
              v60 = *(v55 - 1);
              v61 = *v55;
              v62 = v47;
              v63 = v51;
              v64 = v52;
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              v49 = v91;
              v52 = v64;
              v51 = v63;
              v47 = v62;
              if ((result & 1) == 0)
              {
                break;
              }
            }

            ++v56;
            v55 += 2;
            if (v49 == v56)
            {
              v48 = v80;
              v45 = v86;
              v54 = v90;
              goto LABEL_29;
            }
          }

          v54 = v90;
          result = swift_isUniquelyReferenced_nonNull_native();
          v93 = v54;
          if ((result & 1) == 0)
          {
            result = sub_100026EF4(0, v54[2] + 1, 1);
            v54 = v93;
          }

          v47 = v62;
          v66 = v54[2];
          v65 = v54[3];
          v67 = (v66 + 1);
          if (v66 >= v65 >> 1)
          {
            v90 = (v66 + 1);
            v76 = v66;
            result = sub_100026EF4((v65 > 1), v66 + 1, 1);
            v67 = v90;
            v66 = v76;
            v47 = v62;
            v54 = v93;
          }

          v50 = v56 + 1;
          v54[2] = v67;
          v68 = &v54[2 * v66];
          v68[4] = v58;
          v68[5] = v57;
          v59 = v77 == v56;
          v48 = v80;
          v51 = v63;
          v45 = v86;
          v52 = v64;
          v49 = v91;
          v53 = v78;
        }

        while (!v59);
      }

      else
      {
        v54 = _swiftEmptyArrayStorage;
      }

LABEL_29:
      v91 = v47;
      sub_10025C33C(&v94);
      v9 = v54;
    }

    v69 = v81;
    if (v82)
    {
      v70 = Array<A>.removingDuplicates()();

      v9 = v70;
    }

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 134349056;
      *(v73 + 4) = *(v9 + 16);

      _os_log_impl(&_mh_execute_header, v71, v72, "Number of category names loaded {count: %{public}ld}", v73, 0xCu);
    }

    else
    {
    }

    v74 = v88;

    v45(v74, v85);
    (*(v69 + 8))(v89, v79);
    (*(v15 + 8))(v87, v48);
  }

  return v9;
}

unint64_t _s7remindd19REMGroceryModelTypeO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1002571D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001007F2710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974636572726F63 && a2 == 0xEB00000000736E6FLL)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100257300(uint64_t *a1)
{
  v2 = sub_1000F5104(&qword_10093EC80, &qword_10079D3B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10025C264();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[31] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[30] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000F5104(&qword_10093EC90, &qword_10079D3C0);
  v10[15] = 2;
  sub_10025C2B8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v8;
}

uint64_t sub_1002574FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001007F2730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079546C65646F6DLL && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xEE006874676E654CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1315991412 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001007F2550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001007F2590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C6E4F6969637361 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001007F2750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001007F2770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001007F25C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001007F25E0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

void *sub_100257968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10093EEC8, &qword_10079D7F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10025CDC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  LOBYTE(v49[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49[0]) = 1;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = a2;
  sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
  LOBYTE(v41) = 2;
  sub_10025CE1C(&qword_10093EED8, &qword_10094EC10, &qword_1007AD5B0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v49[0];
  LOBYTE(v49[0]) = 3;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000F5104(&qword_10093EEE0, &qword_10079D800);
  LOBYTE(v41) = 4;
  sub_10025CE1C(&qword_10093EEE8, &qword_10093EEE0, &qword_10079D800);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v49[0];
  LOBYTE(v49[0]) = 5;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  LOBYTE(v41) = 6;
  sub_10025CE1C(&qword_10093EEF0, &unk_10093B300, &unk_100797780);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v49[0];
  LOBYTE(v49[0]) = 7;
  KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v12;
  LOBYTE(v41) = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v49[0];
  LOBYTE(v49[0]) = 9;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v49[0]) = 10;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v15;
  v16 = v14;
  LOBYTE(v49[0]) = 11;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v17;
  LOBYTE(v49[0]) = 12;
  HIDWORD(v28) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v59 = 13;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *&v41 = v11;
  *(&v41 + 1) = v40;
  v19 = v38;
  *&v42 = v38;
  *(&v42 + 1) = v34;
  v20 = v33;
  *&v43 = v33;
  *(&v43 + 1) = v32;
  v21 = v31;
  *&v44 = v31;
  v22 = v30;
  DWORD2(v44) = v30;
  *&v45 = v37;
  BYTE8(v45) = v13;
  *&v46 = v16;
  *(&v46 + 1) = v36;
  *&v47 = v29;
  *(&v47 + 1) = v35;
  LOBYTE(v48) = BYTE4(v28);
  HIBYTE(v48) = v18;
  sub_10025CE84(&v41, v49);
  sub_10000607C(a1);
  v49[0] = v11;
  v49[1] = v40;
  v49[2] = v19;
  v49[3] = v34;
  v49[4] = v20;
  v49[5] = v32;
  v49[6] = v21;
  v50 = v22;
  v51 = v37;
  v52 = v13;
  v53 = v16;
  v54 = v36;
  v55 = v29;
  v56 = v35;
  v57 = BYTE4(v28);
  v58 = v18;
  result = sub_10025C33C(v49);
  v24 = v46;
  v25 = v39;
  *(v39 + 64) = v45;
  *(v25 + 80) = v24;
  *(v25 + 96) = v47;
  *(v25 + 112) = v48;
  v26 = v42;
  *v25 = v41;
  *(v25 + 16) = v26;
  v27 = v44;
  *(v25 + 32) = v43;
  *(v25 + 48) = v27;
  return result;
}

uint64_t sub_1002581D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xEE006874676E654CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1315991412 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001007F2550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001007F2590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6E4F6969637361 && a2 == 0xE900000000000079)
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

void *sub_1002584D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10093EEF8, &qword_10079D808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10025CEBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  LOBYTE(v38[0]) = 0;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38[0]) = 1;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38[0]) = 2;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000F5104(&qword_10093EEE0, &qword_10079D800);
  LOBYTE(v33) = 3;
  sub_10025CE1C(&qword_10093EEE8, &qword_10093EEE0, &qword_10079D800);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v38[0];
  LOBYTE(v38[0]) = 4;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v11;
  v28 = v12;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  LOBYTE(v33) = 5;
  sub_10025CE1C(&qword_10093EEF0, &unk_10093B300, &unk_100797780);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v38[0];
  LOBYTE(v38[0]) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
  LOBYTE(v33) = 7;
  sub_10025CE1C(&qword_10093EED8, &qword_10094EC10, &qword_1007AD5B0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v38[0];
  v42 = 8;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27[1] = 0;
  v18 = v29;
  v19 = v17;
  (*(v6 + 8))(v9, v5);
  v21 = v31;
  v20 = v32;
  *&v33 = v32;
  *(&v33 + 1) = v31;
  v22 = v30;
  *&v34 = v30;
  *(&v34 + 1) = v18;
  v23 = v28;
  *&v35 = v28;
  *(&v35 + 1) = v13;
  LODWORD(v36) = v15;
  *(&v36 + 1) = v16;
  v37 = v19;
  sub_10025CF10(&v33, v38);
  sub_10000607C(a1);
  v38[0] = v20;
  v38[1] = v21;
  v38[2] = v22;
  v38[3] = v29;
  v38[4] = v23;
  v38[5] = v13;
  v39 = v15;
  v40 = v16;
  v41 = v19;
  result = sub_10025C234(v38);
  v25 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v25;
  *(a2 + 64) = v37;
  v26 = v34;
  *a2 = v33;
  *(a2 + 16) = v26;
  return result;
}

uint64_t sub_1002589E8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  __chkstk_darwin(v3);
  v5 = v13 - v4;
  URL.appendingPathComponent(_:isDirectory:)();
  v6 = Data.init(contentsOf:options:)();
  v8 = v7;
  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10025C3C0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  (*(v1 + 8))(v5, v0);

  sub_10001BBA0(v6, v8);
  return v13[4];
}

char *sub_100258DC0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v194 = a6;
  v189 = a5;
  v199 = a4;
  v206 = a1;
  v207 = a3;
  v202 = type metadata accessor for URL();
  v197 = *(v202 - 8);
  v8 = *(v197 + 64);
  v9 = __chkstk_darwin(v202);
  v212 = v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v190 = v165 - v12;
  v13 = __chkstk_darwin(v11);
  v191 = v165 - v14;
  v15 = __chkstk_darwin(v13);
  v209 = v165 - v16;
  v17 = __chkstk_darwin(v15);
  v196 = v165 - v18;
  v19 = __chkstk_darwin(v17);
  v192 = v165 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v165 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v165 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v165 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = v165 - v31;
  __chkstk_darwin(v30);
  v34 = v165 - v33;
  v35 = a2;
  URL.appendingPathComponent(_:)();
  v36 = Data.init(contentsOf:options:)();
  v210 = v37;
  v211 = v36;
  if (v6)
  {

    v38 = *(v197 + 8);
    v39 = v202;
    v38(v35, v202);
    v38(v206, v39);
    v38(v34, v39);
    return v39;
  }

  v208 = v34;
  v180 = v26;
  v181 = v29;
  v186 = v32;
  v187 = v23;
  v200 = a2;
  v40 = type metadata accessor for JSONDecoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10025C18C();
  v44 = v210;
  v43 = v211;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v195 = 0;
  v45 = v197;
  v46 = v208;
  v208 = *(v197 + 8);
  v208(v46, v202);

  sub_10001BBA0(v43, v44);
  v47 = v218;
  v48 = v221;
  v49 = v222;
  v50 = v223;
  v51 = v226;
  v52 = v220;
  v53 = v212;
  v39 = v209;
  v173 = v217;
  v174 = v225;
  v182 = v219;
  v179 = v220;
  v176 = v224;
  v175 = v227;
  v167 = v230;
  v168 = v229;
  v184 = v228;

  v193 = v48;

  v172 = v50;

  v188 = v51;

  sub_10025C33C(&v217);
  v166 = sub_1002589E8();
  v56 = v54;
  v183 = v57;
  v58 = v47;
  v205 = *(v47 + 16);
  if (v205)
  {
    v165[1] = v52;
    v59 = 0;
    v201 = (v45 + 16);
    v204 = v45 + 8;
    v171 = "siriOwlHeader.mlmodelc";
    v169 = "SupportedAppVersion";
    v170 = "GroceryBubbles.json";
    *&v55 = 134218242;
    v185 = v55;
    v210 = _swiftEmptyArrayStorage;
    v211 = _swiftEmptyArrayStorage;
    v60 = v202;
    v61 = v207;
    v198 = v47;
    v203 = v54;
    while (1)
    {
      if (v59 >= *(v58 + 16))
      {
        __break(1u);
      }

      v62 = *(v58 + 8 * v59 + 32);
      if (v62 >= 5)
      {
        if (qword_100935D70 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_100006654(v74, qword_10093EB60);
        (*v201)(v53, v200, v60);
        v75 = Logger.logObject.getter();
        v76 = v60;
        v77 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *&v214 = v79;
          *v78 = v185;
          *(v78 + 4) = v62;
          *(v78 + 12) = 2080;
          v80 = URL.description.getter();
          v82 = v81;
          v208(v212, v76);
          v83 = sub_10000668C(v80, v82, &v214);

          *(v78 + 14) = v83;
          _os_log_impl(&_mh_execute_header, v75, v77, "Invalid model type value %ld found in model info file %s}.", v78, 0x16u);
          sub_10000607C(v79);
          v53 = v212;

          v58 = v198;
        }

        else
        {

          v208(v53, v76);
        }

        v60 = v76;
        v61 = v207;
        goto LABEL_7;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v211 = sub_1003669A8(0, *(v211 + 2) + 1, 1, v211);
      }

      v64 = *(v211 + 2);
      v63 = *(v211 + 3);
      if (v64 >= v63 >> 1)
      {
        v211 = sub_1003669A8((v63 > 1), v64 + 1, 1, v211);
      }

      v65 = v211;
      *(v211 + 2) = v64 + 1;
      v65[v64 + 32] = v62;
      v66 = v62;
      if (v62 <= 1u)
      {
        break;
      }

      v67 = v196;
      if (v62 == 2)
      {
        URL.appendingPathComponent(_:isDirectory:)();
        v98 = type metadata accessor for REMRegExTextClassifier();
        (*v201)(v39, v67, v60);
        v99 = *(v193 + 16);

        v100 = v195;
        v101 = REMRegExTextClassifier.__allocating_init(modelURL:numOfClasses:labels:)();
        v195 = v100;
        if (v100)
        {

          v150 = v208;
          v39 = v67;
          v208(v200, v60);
          v150(v206, v60);
          v150(v67, v60);

          return v39;
        }

        v102 = v101;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v210 = sub_100366984(0, v210[2] + 1, 1, v210);
        }

        v104 = v210[2];
        v103 = v210[3];
        if (v104 >= v103 >> 1)
        {
          v210 = sub_100366984((v103 > 1), v104 + 1, 1, v210);
        }

        v208(v196, v60);
        v215 = v98;
        v216 = sub_10025C528(&qword_10093EE48, &type metadata accessor for REMRegExTextClassifier);
        *&v214 = v102;
        v105 = v210;
        v210[2] = v104 + 1;
        v106 = &v105[5 * v104];
        goto LABEL_56;
      }

      if (v62 == 3)
      {
        if (!v183)
        {

          v151 = 0x80000001007F2630;
          sub_10025C36C();
          swift_allocError();
          *v152 = 3;
          v153 = 0xD000000000000026;
LABEL_69:
          *(v152 + 8) = v153;
          *(v152 + 16) = v151;
          swift_willThrow();
          v161 = v208;
          v208(v200, v60);
          v162 = v206;
          goto LABEL_70;
        }

        v68 = type metadata accessor for REMGroceryDummyModel();
        v69 = objc_allocWithZone(v68);

        v70 = REMGroceryDummyModel.init(labels:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v210 = sub_100366984(0, v210[2] + 1, 1, v210);
        }

        v72 = v210[2];
        v71 = v210[3];
        v73 = v72 + 1;
        if (v72 >= v71 >> 1)
        {
          v210 = sub_100366984((v71 > 1), v72 + 1, 1, v210);
        }

        v215 = v68;
        v216 = &protocol witness table for REMGroceryDummyModel;
        *&v214 = v70;
LABEL_55:
        v106 = &v210[5 * v72];
        v210[2] = v73;
LABEL_56:
        sub_100054B6C(&v214, (v106 + 4));
LABEL_57:
        v53 = v212;
        v58 = v198;
        goto LABEL_7;
      }

      if (!v188)
      {

        v151 = 0x80000001007F2600;
        sub_10025C36C();
        swift_allocError();
        *v152 = 4;
        v153 = 0xD000000000000028;
        goto LABEL_69;
      }

      v107 = v191;
      URL.appendingPathComponent(_:isDirectory:)();
      v108 = v175;
      if (!v184)
      {

        v108 = v61;
      }

      v177 = v108;
      v109 = v190;
      (*v201)(v190, v107, v60);
      v110 = v193;
      v178 = *(v193 + 16);
      v111 = objc_allocWithZone(MLModelConfiguration);

      v112 = [v111 init];
      [v112 setComputeUnits:2];
      v39 = v112;
      URL._bridgeToObjectiveC()(v113);
      v115 = v114;
      v116 = objc_opt_self();
      *&v214 = 0;
      v117 = [v116 modelWithContentsOfURL:v115 configuration:v39 error:&v214];

      if (!v117)
      {
        v163 = v214;

        swift_bridgeObjectRelease_n();

        _convertNSErrorToError(_:)();

        swift_willThrow();
        v164 = v208;
        v208(v200, v60);
        v164(v206, v60);
        v164(v109, v60);
        v164(v191, v60);

        return v39;
      }

      v118 = v214;

      v119 = v60;
      v120 = type metadata accessor for REMOwlEmbeddingClassifier();
      v121 = *(v120 + 48);
      v122 = *(v120 + 52);
      v123 = swift_allocObject();
      v123[3] = [objc_allocWithZone(CDMClient) init];
      Locale.init(identifier:)();

      v208(v190, v119);
      v124 = (v123 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion);
      v125 = v188;
      *v124 = v174;
      v124[1] = v125;
      v126 = v178;
      v123[4] = v117;
      v123[5] = v126;
      v123[2] = v110;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = sub_100366984(0, v210[2] + 1, 1, v210);
      }

      v58 = v198;
      v128 = v210[2];
      v127 = v210[3];
      if (v128 >= v127 >> 1)
      {
        v210 = sub_100366984((v127 > 1), v128 + 1, 1, v210);
      }

      v208(v191, v119);
      v215 = v120;
      v60 = v119;
      v216 = sub_10025C528(&qword_10093EE40, type metadata accessor for REMOwlEmbeddingClassifier);
      *&v214 = v123;
      v129 = v210;
      v210[2] = v128 + 1;
      sub_100054B6C(&v214, &v129[5 * v128 + 4]);
      v61 = v207;
      v53 = v212;
LABEL_7:
      v56 = v203;
      ++v59;
      v39 = v209;
      if (v205 == v59)
      {
        goto LABEL_59;
      }
    }

    v84 = v187;
    if (v66)
    {
      URL.appendingPathComponent(_:isDirectory:)();
      v130 = type metadata accessor for REMAnchoredBubbleModel();
      v131 = static REMAnchoredBubbleModel.loadGroceryModel(from:labels:)();
      if (!v131)
      {

        sub_10025C36C();
        swift_allocError();
        *v160 = 1;
        *(v160 + 8) = 0xD000000000000025;
        *(v160 + 16) = 0x80000001007F2660;
        swift_willThrow();
        v161 = v208;
        v208(v200, v60);
        v161(v206, v60);
        v162 = v192;
LABEL_70:
        v161(v162, v60);
        return v39;
      }

      v132 = v131;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = sub_100366984(0, v210[2] + 1, 1, v210);
      }

      v72 = v210[2];
      v133 = v210[3];
      v73 = v72 + 1;
      if (v72 >= v133 >> 1)
      {
        v210 = sub_100366984((v133 > 1), v72 + 1, 1, v210);
      }

      (v208)();
      v215 = v130;
      v216 = &protocol witness table for REMAnchoredBubbleModel;
      *&v214 = v132;
      goto LABEL_55;
    }

    v85 = v186;
    URL.appendingPathComponent(_:isDirectory:)();
    v86 = v181;
    URL.appendingPathComponent(_:isDirectory:)();
    v87 = *v201;
    (*v201)(v180, v86, v60);
    v87(v84, v85, v60);
    v88 = *(v193 + 16);
    v89 = type metadata accessor for REMBertTextClassifier();

    v90 = v195;
    v91 = REMBertTextClassifier.__allocating_init(vocabURL:modelURL:numOfClasses:maxLength:labels:asciiOnly:)();
    v195 = v90;
    if (v90)
    {

      swift_getErrorValue();
      v154 = Error.rem_errorDescription.getter();
      v155 = v85;
      v157 = v156;
      sub_10025C36C();
      swift_allocError();
      *v158 = 0;
      *(v158 + 8) = v154;
      *(v158 + 16) = v157;
      swift_willThrow();

      v39 = v202;
      v159 = v208;
      v208(v200, v202);
      v159(v206, v39);
      v159(v86, v39);
      v159(v155, v39);
      return v39;
    }

    v92 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v210 = sub_100366984(0, v210[2] + 1, 1, v210);
    }

    v60 = v202;
    v94 = v210[2];
    v93 = v210[3];
    if (v94 >= v93 >> 1)
    {
      v210 = sub_100366984((v93 > 1), v94 + 1, 1, v210);
    }

    v95 = v86;
    v96 = v208;
    v208(v95, v60);
    v96(v186, v60);
    v215 = v89;
    v216 = &protocol witness table for REMBertTextClassifier;
    *&v214 = v92;
    v97 = &v210[5 * v94];
    v210[2] = v94 + 1;
    sub_100054B6C(&v214, (v97 + 4));
    v61 = v207;
    goto LABEL_57;
  }

  v210 = _swiftEmptyArrayStorage;
  v211 = _swiftEmptyArrayStorage;
  v60 = v202;
  v61 = v207;
LABEL_59:

  v134 = v183;
  if (v183)
  {
    v135 = v166;
    v136 = v194;
    v137 = v189;
    v138 = v56;
  }

  else
  {
    v134 = sub_10038F94C(_swiftEmptyArrayStorage);
    v138 = 0;
    v136 = v194;
    v137 = v189;
    v135 = v173;
  }

  v139 = type metadata accessor for REMGroceryClassifier();
  v140 = objc_allocWithZone(v139);
  v141 = OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireLemmatization;
  v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireLemmatization] = 2;
  v142 = OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireRemovingNumbers;
  v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_requireRemovingNumbers] = 2;
  *&v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_models] = v210;
  *&v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelTypes] = v211;
  *&v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_labels] = v193;
  v143 = &v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_corrections];
  *v143 = v135;
  v143[1] = v138;
  v143[2] = v134;
  v144 = *(&v179 + 1);
  *&v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_thresholds] = v179;
  *&v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_topN] = v144;
  *&v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_groceryListScoreThreshold] = v49;
  *&v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_groceryListScoreExcludedCategories] = v172;
  v145 = &v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale];
  v146 = v199;
  *v145 = v61;
  v145[1] = v146;
  v147 = &v140[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_trialDeploymentID];
  *v147 = v137;
  v147[1] = v136;
  v140[v141] = v168;
  v140[v142] = v167;
  v213.receiver = v140;
  v213.super_class = v139;
  v39 = objc_msgSendSuper2(&v213, "init");
  v148 = v208;
  v208(v200, v60);
  v148(v206, v60);
  return v39;
}

uint64_t sub_10025A4E4(NSObject *a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v92 = a1;
  v93 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v84 = v5;
  v85 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v82 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v81 = &v72 - v11;
  v12 = __chkstk_darwin(v10);
  v83 = &v72 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v72 - v15;
  v17 = __chkstk_darwin(v14);
  v86 = &v72 - v18;
  __chkstk_darwin(v17);
  v89 = &v72 - v19;
  v20 = type metadata accessor for REMGroceryLocaleMapping.LocaleSetting();
  v87 = *(v20 - 8);
  v88 = v20;
  v21 = *(v87 + 64);
  __chkstk_darwin(v20);
  v94 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMGroceryLocaleMapping();
  v90 = *(v23 - 8);
  v91 = v23;
  v24 = *(v90 + 64);
  __chkstk_darwin(v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMTrialNamespace();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v80 = v16;
    v32 = a3;
  }

  else
  {
    v37 = type metadata accessor for REMTrialClient();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v33 = swift_allocObject();
    v40 = REMTrialClient.init()();
    if (v3)
    {
      return v33;
    }

    v32 = v40;
    v80 = v16;
  }

  (*(v28 + 104))(v31, enum case for REMTrialNamespace.grocery(_:), v27);

  v33 = v32;
  v34 = dispatch thunk of REMTrialClient.deploymentId(for:)();
  v36 = v35;
  (*(v28 + 8))(v31, v27);
  dispatch thunk of REMTrialClient.loadGroceryLocaleMapping()();
  if (v3)
  {
  }

  else
  {
    v79 = v34;
    REMGroceryLocaleMapping.localeSetting(for:)();
    REMGroceryLocaleMapping.LocaleSetting.base.getter();
    dispatch thunk of REMTrialClient.groceryDirectoryURL(for:)();

    REMGroceryLocaleMapping.LocaleSetting.meta.getter();
    dispatch thunk of REMTrialClient.groceryDirectoryURL(for:)();

    v42 = v85;
    if (qword_100935D70 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_10093EB60);
    v44 = *(v42 + 16);
    v45 = v84;
    v44(v80, v89, v84);
    v77 = v44;
    v78 = v42 + 16;
    v44(v83, v86, v45);

    v46 = v93;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();

    v49 = os_log_type_enabled(v47, v48);
    v76 = v36;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95 = v75;
      *v50 = 136446978;
      *(v50 + 4) = sub_10000668C(v79, v36, &v95);
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_10000668C(v92, v46, &v95);
      *(v50 + 22) = 2082;
      v92 = v47;
      v51 = v80;
      v93 = URL.absoluteString.getter();
      v53 = v52;
      v74 = v48;
      v54 = *(v85 + 8);
      v54(v51, v84);
      v55 = sub_10000668C(v93, v53, &v95);
      v45 = v84;

      v73 = v50;
      *(v50 + 24) = v55;
      *(v50 + 32) = 2082;
      v56 = v83;
      v57 = URL.absoluteString.getter();
      v59 = v58;
      v93 = v54;
      v54(v56, v45);
      v60 = sub_10000668C(v57, v59, &v95);

      v61 = v73;
      *(v73 + 34) = v60;
      v62 = v92;
      _os_log_impl(&_mh_execute_header, v92, v74, "loading model from Trial {deploymentId: %{public}s, locale: %{public}s, base directory: %{public}s, meta directory: %{public}s}", v61, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v63 = *(v42 + 8);
      v63(v83, v45);
      v93 = v63;
      v63(v80, v45);
    }

    v64 = v81;
    v65 = v77;
    v77(v81, v89, v45);
    v66 = v82;
    v67 = v86;
    v65(v82, v86, v45);
    v68 = v94;
    v69 = REMGroceryLocaleMapping.LocaleSetting.meta.getter();
    v33 = sub_100258DC0(v64, v66, v69, v70, v79, v76);

    v71 = v93;
    v93(v67, v45);
    v71(v89, v45);
    (*(v87 + 8))(v68, v88);
    (*(v90 + 8))(v26, v91);
  }

  return v33;
}

void _s7remindd20REMGroceryClassifierC26requestNLAssetsIfNecessary11modelLocaleySS_tFZ_0()
{
  v0 = type metadata accessor for Locale.Components();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  Locale.Components.init(identifier:)();
  v24 = v4;
  v5._rawValue = Locale.Components.rem_language()()._rawValue;
  v6 = objc_opt_self();
  v7 = [v6 availableTagSchemesForUnit:0 language:v5._rawValue];
  type metadata accessor for NLTagScheme(0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  p_aBlock = &aBlock;
  aBlock = NLTagSchemeNameTypeOrLexicalClass;
  v9 = sub_1003377DC(sub_10025C570, v25, v8);

  if ((v9 & 1) == 0)
  {
    v10 = swift_allocObject();
    v10[2]._rawValue = v5._rawValue;
    v31 = sub_10025C590;
    v32 = v10;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10024E2C0;
    v30 = &unk_1008EBB38;
    v11 = _Block_copy(&aBlock);
    v12 = v1;
    v13 = v0;
    v14 = v5._rawValue;

    v15 = v14;
    v0 = v13;
    v1 = v12;
    [v6 requestAssetsForLanguage:v15 tagScheme:NLTagSchemeNameTypeOrLexicalClass completionHandler:v11];
    _Block_release(v11);
  }

  v16 = [v6 availableTagSchemesForUnit:0 language:v5._rawValue];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock = NLTagSchemeLemma;
  __chkstk_darwin(v18);
  *(&v23 - 2) = &aBlock;
  v19 = sub_1003377DC(sub_10025D2F0, (&v23 - 4), v17);

  if (v19)
  {
    (*(v1 + 8))(v24, v0);
  }

  else
  {
    v20 = swift_allocObject();
    v20[2]._rawValue = v5._rawValue;
    v31 = sub_10025C5CC;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10024E2C0;
    v30 = &unk_1008EBB88;
    v21 = _Block_copy(&aBlock);
    v22 = v5._rawValue;

    [v6 requestAssetsForLanguage:v22 tagScheme:NLTagSchemeLemma completionHandler:v21];
    _Block_release(v21);

    (*(v1 + 8))(v24, v0);
  }
}

uint64_t sub_10025B154(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000FCBFC;

  return sub_1002520A0(a1, a2, a3, v9, v8);
}

void *sub_10025B218()
{
  v2 = REMRegExTextClassifier.predictIndices(_:)();
  if (!v0)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v1 = _swiftEmptyArrayStorage;
      v4 = 32;
      v10 = v2;
      do
      {
        v6 = *(v2 + v4);
        REMRegExTextClassifier.labels.getter();
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        sub_10000CB48(&qword_10093EE30, &unk_10093B300, &unk_100797780);
        Collection.subscript.getter();

        if (v12)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_100366AE4(0, v1[2] + 1, 1, v1);
          }

          v8 = v1[2];
          v7 = v1[3];
          if (v8 >= v7 >> 1)
          {
            v1 = sub_100366AE4((v7 > 1), v8 + 1, 1, v1);
          }

          v1[2] = v8 + 1;
          v5 = &v1[4 * v8];
          v5[4] = v6;
          v5[5] = v11;
          v5[6] = v12;
          *(v5 + 14) = 1065353216;
        }

        v4 += 8;
        --v3;
        v2 = v10;
      }

      while (v3);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v1;
}

unint64_t sub_10025B3BC()
{
  result = qword_10093EBC8;
  if (!qword_10093EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EBC8);
  }

  return result;
}

uint64_t sub_10025B410(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_10025B438(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_10025B450(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_10025B410(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifierError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_10025B410(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_10025B438(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMGroceryClassifierError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_10025B438(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifierError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for REMGroceryClassifierError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10025B5F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifierLoadingError(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for REMGroceryClassifierLoadingError(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t destroy for REMGroceryClassifier.PredictionResult(uint64_t a1)
{
  v2 = *(a1 + 16);

  v3 = *(a1 + 40);
}

uint64_t initializeWithCopy for REMGroceryClassifier.PredictionResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifier.PredictionResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;

  return a1;
}

__n128 initializeWithTake for REMGroceryClassifier.PredictionResult(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for REMGroceryClassifier.PredictionResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifier.PredictionResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMGroceryClassifier.PredictionResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10025B910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v68 = a1;
  v70 = a3;
  v3 = type metadata accessor for URL();
  v66 = *(v3 - 8);
  v4 = *(v66 + 64);
  __chkstk_darwin(v3);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v58 - v8;
  v10 = type metadata accessor for REMGroceryLocaleMapping.LocaleSetting();
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  __chkstk_darwin(v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMGroceryLocaleMapping();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for REMTrialClient();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v71;
  result = REMTrialClient.init()();
  if (!v22)
  {
    v62 = v6;
    v64 = v9;
    *&v71 = v13;
    v61 = v3;
    v63 = v10;
    v65 = v14;
    v24 = v70;
    dispatch thunk of REMTrialClient.loadGroceryLocaleMapping()();
    REMGroceryLocaleMapping.localeSetting(for:)();
    REMGroceryLocaleMapping.LocaleSetting.base.getter();
    dispatch thunk of REMTrialClient.groceryDirectoryURL(for:)();
    v68 = v15;

    URL.appendingPathComponent(_:)();
    v60 = Data.init(contentsOf:options:)();
    v59 = v25;
    v69 = 0;
    v26 = v63;
    v27 = v67;
    v28 = type metadata accessor for JSONDecoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10025C18C();
    v31 = v60;
    v32 = v59;
    v33 = v69;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v69 = v33;

    if (v33)
    {
      v34 = *(v28 + 48);
      v35 = *(v28 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_10025C1E0();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v36 = v62;
      v37 = v68;
      v58[1] = 0;

      v72 = v77;
      v73 = *v78;
      v74 = *&v78[16];
      v75 = v79;
      v76 = v80;
      v58[0] = v77;
      sub_1000F5104(&unk_100943FC0, &unk_10079D380);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100791300;
      *(v40 + 32) = *(&v72 + 1);
      sub_10001BBA0(v60, v32);

      v41 = *(v66 + 8);
      v42 = v36;
      v43 = v61;
      v41(v42, v61);
      v41(v64, v43);
      (*(v27 + 8))(v71, v26);
      (*(v37 + 8))(v18, v65);
      v71 = v73;
      v44 = *(&v74 + 1);
      v45 = v74;
      v46 = v75;
      v47 = *(&v75 + 1);

      result = sub_10025C234(&v72);
      v48 = v71;
      v49 = v58[0];
      v50 = v76;
      v51 = 0uLL;
      v52 = 2;
      v53 = 3;
      v54 = 2;
      v55 = 0uLL;
      v56 = &v80;
    }

    else
    {
      sub_10001BBA0(v31, v32);

      v38 = *(v66 + 8);
      v39 = v61;
      v38(v62, v61);
      v38(v64, v39);
      (*(v27 + 8))(v71, v26);
      result = (*(v68 + 8))(v18, v65);
      v53 = *(&v77 + 1);
      v49 = v77;
      v40 = *v78;
      v48 = *&v78[8];
      v45 = *&v78[24];
      v44 = v79;
      v46 = DWORD2(v79);
      v47 = v80;
      v50 = v81;
      v51 = v82;
      v55 = v83;
      v52 = v84;
      v54 = v85;
      v56 = &v86;
    }

    v57 = *(v56 - 32);
    *v24 = v49;
    *(v24 + 8) = v53;
    *(v24 + 16) = v40;
    *(v24 + 24) = v48;
    *(v24 + 40) = v45;
    *(v24 + 48) = v44;
    *(v24 + 56) = v46;
    *(v24 + 64) = v47;
    *(v24 + 72) = v50;
    *(v24 + 80) = v51;
    *(v24 + 96) = v55;
    *(v24 + 112) = v52;
    *(v24 + 113) = v54;
  }

  return result;
}

unint64_t sub_10025C18C()
{
  result = qword_10093EC50;
  if (!qword_10093EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC50);
  }

  return result;
}

unint64_t sub_10025C1E0()
{
  result = qword_10093EC58;
  if (!qword_10093EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC58);
  }

  return result;
}

unint64_t sub_10025C264()
{
  result = qword_10093EC88;
  if (!qword_10093EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC88);
  }

  return result;
}

unint64_t sub_10025C2B8()
{
  result = qword_10093EC98;
  if (!qword_10093EC98)
  {
    sub_1000F514C(&qword_10093EC90, &qword_10079D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EC98);
  }

  return result;
}

unint64_t sub_10025C36C()
{
  result = qword_10093EE38;
  if (!qword_10093EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EE38);
  }

  return result;
}

unint64_t sub_10025C3C0()
{
  result = qword_10093EE50;
  if (!qword_10093EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EE50);
  }

  return result;
}

uint64_t sub_10025C414(uint64_t a1)
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
  v11[1] = sub_1000FCBFC;

  return sub_1002523F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10025C4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v6 = *(v3 + 48);
  return sub_100252C70(a1, a2, a3, *(v3 + 16), *(v3 + 17), *(v3 + 24), *(v3 + 32)) & 1;
}

uint64_t sub_10025C528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10025C608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDTimelineEngineDueReminder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t destroy for REMGroceryClassifier.ModelInfoV2(void *a1)
{
  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];
}

uint64_t initializeWithCopy for REMGroceryClassifier.ModelInfoV2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifier.ModelInfoV2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  v6 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 initializeWithTake for REMGroceryClassifier.ModelInfoV2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for REMGroceryClassifier.ModelInfoV2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  v7 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifier.ModelInfoV2(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMGroceryClassifier.ModelInfoV2(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for REMGroceryClassifier.ModelInfo(void *a1)
{
  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[6];

  v5 = a1[8];

  v6 = a1[11];

  v7 = a1[13];
}

uint64_t initializeWithCopy for REMGroceryClassifier.ModelInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t assignWithCopy for REMGroceryClassifier.ModelInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v8 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  v9 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  return a1;
}

__n128 initializeWithTake for REMGroceryClassifier.ModelInfo(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for REMGroceryClassifier.ModelInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a2 + 48);
  v8 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  *(a1 + 56) = *(a2 + 56);
  v9 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v10 = *(a2 + 88);
  v11 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;

  v12 = *(a2 + 104);
  v13 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v12;

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifier.ModelInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMGroceryClassifier.ModelInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10025CCC4()
{
  result = qword_10093EEB0;
  if (!qword_10093EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EEB0);
  }

  return result;
}

unint64_t sub_10025CD1C()
{
  result = qword_10093EEB8;
  if (!qword_10093EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EEB8);
  }

  return result;
}

unint64_t sub_10025CD74()
{
  result = qword_10093EEC0;
  if (!qword_10093EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EEC0);
  }

  return result;
}

unint64_t sub_10025CDC8()
{
  result = qword_10093EED0;
  if (!qword_10093EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EED0);
  }

  return result;
}

uint64_t sub_10025CE1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10025CEBC()
{
  result = qword_10093EF00;
  if (!qword_10093EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMGroceryClassifier.ModelInfoV2.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMGroceryClassifier.ModelInfoV2.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10025D0AC()
{
  result = qword_10093EF08;
  if (!qword_10093EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF08);
  }

  return result;
}

unint64_t sub_10025D104()
{
  result = qword_10093EF10;
  if (!qword_10093EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF10);
  }

  return result;
}

unint64_t sub_10025D15C()
{
  result = qword_10093EF18;
  if (!qword_10093EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF18);
  }

  return result;
}

unint64_t sub_10025D1B4()
{
  result = qword_10093EF20;
  if (!qword_10093EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF20);
  }

  return result;
}

unint64_t sub_10025D20C()
{
  result = qword_10093EF28;
  if (!qword_10093EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF28);
  }

  return result;
}

unint64_t sub_10025D264()
{
  result = qword_10093EF30;
  if (!qword_10093EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF30);
  }

  return result;
}

void *sub_10025D324()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100791300;
  v2._object = 0x80000001007E8D70;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  Date.timeIntervalSinceReferenceDate.getter();
  Double.write<A>(to:)();
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *&v14 = 0xD000000000000018;
  *(&v14 + 1) = 0x80000001007F2790;
  v4._countAndFlagsBits = sub_10025D5A0(*(v0 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales));
  String.append(_:)(v4);

  v15 = &type metadata for String;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v6 >= v5 >> 1)
  {
    v1 = sub_1003658F0((v5 > 1), v6 + 1, 1, v1);
  }

  *(v1 + 16) = v6 + 1;
  sub_100005EE0(&v14, (v1 + 32 * v6 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_self();

  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v14 = 0;
  v10 = [v8 dataWithJSONObject:isa options:0 error:&v14];

  v11 = v14;
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  objc_autoreleasePoolPop(v7);

  return v12;
}

uint64_t sub_10025D5A0(uint64_t a1)
{
  v2 = 0xD000000000000012;
  v39 = type metadata accessor for Locale();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v40 = _swiftEmptyArrayStorage;
      sub_100026EF4(0, v7, 0);
      v8 = v40;
      v10 = *(v3 + 16);
      v9 = v3 + 16;
      v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v36 = *(v9 + 56);
      v37 = v10;
      v38 = v9;
      v12 = (v9 - 8);
      do
      {
        v13 = v39;
        v37(v6, v11, v39);
        v14 = Locale.identifier.getter();
        v16 = v15;
        (*v12)(v6, v13);
        v40 = v8;
        v18 = *(v8 + 16);
        v17 = *(v8 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_100026EF4((v17 > 1), v18 + 1, 1);
          v8 = v40;
        }

        *(v8 + 16) = v18 + 1;
        v19 = v8 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v11 += v36;
        --v7;
      }

      while (v7);
    }

    v20 = sub_100365788(0, 1, 1, _swiftEmptyArrayStorage);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_100365788((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[16 * v22];
    *(v23 + 4) = 0xD000000000000013;
    *(v23 + 5) = 0x80000001007F27B0;
    v40 = 0x3A73656C61636F6CLL;
    v41 = 0xE800000000000000;
    v24 = Array.description.getter();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v2 = v40;
    v28 = v41;
    v30 = *(v20 + 2);
    v29 = *(v20 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v20 = sub_100365788((v29 > 1), v30 + 1, 1, v20);
    }
  }

  else
  {
    v20 = sub_100365788(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = *(v20 + 2);
    v32 = *(v20 + 3);
    v31 = v30 + 1;
    if (v30 >= v32 >> 1)
    {
      v20 = sub_100365788((v32 > 1), v30 + 1, 1, v20);
    }

    v28 = 0x80000001007F27D0;
  }

  *(v20 + 2) = v31;
  v33 = &v20[16 * v30];
  *(v33 + 4) = v2;
  *(v33 + 5) = v28;
  v40 = v20;
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10025D9A0();
  v34 = BidirectionalCollection<>.joined(separator:)();

  return v34;
}

uint64_t sub_10025D92C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for REMChecksumAlgorithm.sha512(_:);
  v3 = type metadata accessor for REMChecksumAlgorithm();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_10025D9A0()
{
  result = qword_10093D0F0;
  if (!qword_10093D0F0)
  {
    sub_1000F514C(&unk_10093B300, &unk_100797780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D0F0);
  }

  return result;
}

uint64_t sub_10025DA04()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EF38);
  v1 = sub_100006654(v0, qword_10093EF38);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10025DB14()
{
  if (*(v0 + 24))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v1 = v0;
    *(v0 + 24) = 1;
    if (qword_100935D80 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_10093EFF0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Starting XPC Event Stream", v5, 2u);
    }

    v6 = *(v1 + 16);
    v7 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100261464;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000EBA84;
    aBlock[3] = &unk_1008EBEF0;
    v8 = _Block_copy(aBlock);
    swift_retain_n();

    v9 = String.utf8CString.getter();
    xpc_set_event_stream_handler((v9 + 32), v6, v8);

    _Block_release(v8);
  }

  return result;
}

uint64_t sub_10025DD4C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_10025DE3C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093EFF0);
  v1 = sub_100006654(v0, qword_10093EFF0);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10025DF08()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1002612F0(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025DF90()
{
  type metadata accessor for UUID();
  sub_1002612F0(&qword_10093B410, &type metadata accessor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10025E014()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1002612F0(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10025E098()
{
  _StringGuts.grow(_:)(26);

  type metadata accessor for UUID();
  sub_1002612F0(&qword_10093F2A0, &type metadata accessor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000017;
}

uint64_t sub_10025E178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a3;
  v35 = a4;
  v33 = a1;
  v8 = type metadata accessor for RDXPCEventStream.AlarmHandler(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v5 + 16);
  *v20 = v21;
  (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15, v18);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v15);
  if (v21)
  {
    UUID.init()();
    sub_1002600B0(a5, v14, type metadata accessor for RDXPCEventStream.Token);
    v23 = &v14[*(v8 + 20)];
    v24 = v34;
    *v23 = v33;
    *(v23 + 1) = a2;
    v25 = &v14[*(v8 + 24)];
    v26 = v35;
    *v25 = v24;
    *(v25 + 1) = v26;
    sub_1002600B0(v14, v11, type metadata accessor for RDXPCEventStream.AlarmHandler);
    swift_beginAccess();
    v20 = *(v5 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v20 = sub_100365760(0, v20[2] + 1, 1, v20);
  *(v5 + 32) = v20;
LABEL_3:
  v28 = v36;
  v30 = v20[2];
  v29 = v20[3];
  if (v30 >= v29 >> 1)
  {
    v20 = sub_100365760(v29 > 1, v30 + 1, 1, v20);
  }

  v20[2] = v30 + 1;
  sub_100260118(v11, v20 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v30);
  *(v5 + 32) = v20;
  swift_endAccess();
  return sub_10026121C(v14, type metadata accessor for RDXPCEventStream.AlarmHandler);
}

uint64_t sub_10025E480(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v9, v4);
  if (v10)
  {
    __chkstk_darwin(v12);
    *(&v16 - 2) = a1;
    swift_beginAccess();
    v13 = sub_100260510(sub_10026017C, (&v16 - 4));
    v14 = *(*(v2 + 32) + 16);
    if (v14 >= v13)
    {
      sub_100261124(v13, v14, sub_100365760, type metadata accessor for RDXPCEventStream.AlarmHandler);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_10025E654(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RDXPCEventStream.Alarm(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + 16);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = a1 + *(v4 + 24);
  Date.timeIntervalSince1970.getter();
  v17 = ceil(v16);
  if (v17 >= 9.22337204e18)
  {
    if (qword_100935D80 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
LABEL_10:
    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10093EFF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Not scheduling alarm because timeIntervalInSeconds > Int64.max";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  if (v17 <= -9.22337204e18)
  {
    __break(1u);
LABEL_24:
    swift_once();
LABEL_7:
    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10093EFF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Not scheduling alarm because dateInNanoSeconds > Int64.max";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v20, v21, v23, v22, 2u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v18 = 1000000000 * v17;
  if ((v17 * 1000000000) >> 64 != v18 >> 63)
  {
    if (qword_100935D80 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  v25 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(v25, "Date", v18);
  xpc_dictionary_set_BOOL(v25, "UserVisible", *(a1 + 16));
  xpc_copy_description(v25);
  if (qword_100935D80 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_10093EFF0);
  sub_1002600B0(a1, v7, type metadata accessor for RDXPCEventStream.Alarm);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43[0] = v42;
    *v29 = 136315394;
    v30 = String.init(cString:)();
    v41 = v28;
    v32 = sub_10000668C(v30, v31, v43);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = &v7[*(v4 + 24)];
    v34 = Date.description.getter();
    v36 = v35;
    sub_10026121C(v7, type metadata accessor for RDXPCEventStream.Alarm);
    v37 = sub_10000668C(v34, v36, v43);

    *(v29 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v27, v41, "Setting xpc event {xpc_event: %s, date: %s}", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10026121C(v7, type metadata accessor for RDXPCEventStream.Alarm);
  }

  v38 = *a1;
  v39 = *(a1 + 8);

  swift_unknownObjectRetain();
  sub_10025EBC0(v38, v39);
  swift_unknownObjectRelease();
}

uint64_t sub_10025EBC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    String.utf8CString.getter();
    xpc_set_event();

LABEL_5:

    return swift_unknownObjectRelease();
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

void sub_10025ECFC(unint64_t a1, unint64_t a2)
{
  v86 = type metadata accessor for RDXPCEventStream.AlarmHandler(0);
  v82 = *(v86 - 8);
  v4 = *(v82 + 64);
  v5 = __chkstk_darwin(v86);
  v7 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v87 = &v77 - v9;
  __chkstk_darwin(v8);
  v11 = &v77 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  xpc_copy_description(a1);
  v79 = String.init(cString:)();
  v18 = v17;

  if (qword_100935D80 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    v20 = sub_100006654(v19, qword_10093EFF0);

    v81 = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    v23 = os_log_type_enabled(v21, v22);
    v78 = v7;
    v80 = v18;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v85 = a2;
      v25 = a1;
      v26 = v12;
      v27 = v24;
      v28 = swift_slowAlloc();
      *&v90 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10000668C(v79, v18, &v90);
      _os_log_impl(&_mh_execute_header, v21, v22, "Received xpc event {xpc_event: %s}", v27, 0xCu);
      sub_10000607C(v28);

      v12 = v26;
      a1 = v25;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v30 = Strong;
    v31 = *(Strong + 16);
    *v16 = v31;
    (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
    v32 = v31;
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    (*(v13 + 8))(v16, v12);
    if (v31)
    {
      if (qword_100935FC8 == -1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_7:
    v13 = 0xEF6D72616C612E65;
    a2 = 0x6C7070612E6D6F63;
    v90 = xmmword_10079DA70;
    v92 = 0;
    v93[0] = 0;
    v91 = 0;
    *(v93 + 6) = 0;
    sub_1000081D8(&v90, 0x6C7070612E6D6F63, 0xEF6D72616C612E65);
    if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
    {
      v40 = v80;

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v89[0] = v44;
        *v43 = 136315138;
        v45 = sub_10000668C(v79, v40, v89);

        *(v43 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v41, v42, "Received xpc_event missing name {xpc_event: %s}", v43, 0xCu);
        sub_10000607C(v44);

LABEL_47:

        return;
      }

LABEL_46:

      goto LABEL_47;
    }

    v12 = String.init(cString:)();
    v16 = v33;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    v36 = os_log_type_enabled(v34, v35);
    v85 = v12;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = v34;
      v39 = swift_slowAlloc();
      v89[0] = v39;
      *v37 = 136315138;
      *(v37 + 4) = sub_10000668C(v85, v16, v89);
      _os_log_impl(&_mh_execute_header, v38, v35, "Unsetting alarm {eventName: %s}", v37, 0xCu);
      sub_10000607C(v39);

      v12 = v85;

      v13 = 0xEF6D72616C612E65;
    }

    else
    {
    }

    v83 = a1;
    String.utf8CString.getter();
    xpc_set_event();

    swift_beginAccess();
    v77 = v30;
    v46 = *(v30 + 32);
    v18 = *(v46 + 16);

    if (!v18)
    {
      break;
    }

    a1 = 0;
    v7 = _swiftEmptyArrayStorage;
    v47 = v82;
    v84 = v16;
    while (a1 < *(v46 + 16))
    {
      a2 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v13 = *(v47 + 72);
      sub_1002600B0(v46 + a2 + v13 * a1, v11, type metadata accessor for RDXPCEventStream.AlarmHandler);
      v48 = &v11[*(v86 + 20)];
      v49 = *v48 == v12 && *(v48 + 1) == v16;
      if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100260118(v11, v87);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253904(0, v7[2] + 1, 1);
          v47 = v82;
          v7 = v88;
        }

        v52 = v7[2];
        v51 = v7[3];
        if (v52 >= v51 >> 1)
        {
          sub_100253904(v51 > 1, v52 + 1, 1);
          v47 = v82;
          v7 = v88;
        }

        v7[2] = v52 + 1;
        sub_100260118(v87, v7 + a2 + v52 * v13);
        v16 = v84;
        v12 = v85;
      }

      else
      {
        sub_10026121C(v11, type metadata accessor for RDXPCEventStream.AlarmHandler);
      }

      if (v18 == ++a1)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_30:

  if (!v7[2])
  {

    v56 = v80;

    v41 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v88 = v59;
      *v58 = 136315138;
      v60 = sub_10000668C(v79, v56, &v88);

      *(v58 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v41, v57, "Received xpc_event with no handlers -- Dropping {xpc_event: %s}", v58, 0xCu);
      sub_10000607C(v59);

      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = v7[2];

    _os_log_impl(&_mh_execute_header, v53, v54, "Delivering xpc_event to handlers {handlers.count: %ld}", v55, 0xCu);
  }

  else
  {
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "os_transaction INIT {name: com.apple.remindd.xpcalarm}", v63, 2u);
  }

  v64 = os_transaction_create();
  v65 = v7[2];
  if (v65)
  {
    v85 = v64;
    v66 = v78;
    v67 = v78 + *(v86 + 24);
    v68 = v78 + *(v86 + 20);
    v69 = v7 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v87 = *(v82 + 72);
    do
    {
      sub_1002600B0(v69, v66, type metadata accessor for RDXPCEventStream.AlarmHandler);
      v71 = *v67;
      v70 = *(v67 + 1);
      v72 = *v68;
      v73 = *(v68 + 1);

      sub_10026121C(v66, type metadata accessor for RDXPCEventStream.AlarmHandler);
      v71(v72, v73, v83);

      v69 += v87;
      --v65;
    }

    while (v65);
  }

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "os_transaction RELEASE {name: com.apple.remindd.xpcalarm}", v76, 2u);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10025F844()
{
  v1 = *(v0 + 32);

  sub_10000607C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_10025F8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_10025F940(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_10025F9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_10025FA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_10025FA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_10025FAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_10025FB7C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_10025FC08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = (v4 + v8);
    v11 = (a2 + v8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (v4 + v9);
    v14 = (a2 + v9);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
  }

  return v4;
}

uint64_t sub_10025FCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20) + 8);

  v6 = *(a1 + *(a2 + 24) + 8);
}

uint64_t sub_10025FD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t sub_10025FE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v11 = *(a3 + 24);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  v15 = v12[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t sub_10025FED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;

  v13 = *(a3 + 24);
  v14 = *(a1 + v13 + 8);
  *(a1 + v13) = *(a2 + v13);

  return a1;
}

uint64_t sub_10025FFC4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1002600B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100260118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDXPCEventStream.AlarmHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002601AC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *v2;
  result = sub_10025DD4C(a1, a2, *v2, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  if (!v3)
  {
    if (v19)
    {
      return *(v17 + 16);
    }

    v37 = v16;
    v38 = a1;
    v34 = v14;
    v35 = v11;
    v39 = a2;
    v33 = v2;
    v41 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v41;
      }

      v36 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v40;
        v25 = *(v7 + 72);
        v26 = v37;
        sub_1002600B0(v24 + v25 * v20, v37, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
        v27 = v38(v26);
        result = sub_10026121C(v26, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
        if (v27)
        {
          v7 = v36;
          v17 = v23;
        }

        else
        {
          v28 = v41;
          if (v20 == v41)
          {
            v7 = v36;
            v17 = v23;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v22;
            if (v41 >= *v22)
            {
              goto LABEL_25;
            }

            v30 = v25 * v41;
            result = sub_1002600B0(v24 + v25 * v41, v34, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
            if (v20 >= v29)
            {
              goto LABEL_26;
            }

            v31 = v25 * v20;
            sub_1002600B0(v24 + v25 * v20, v35, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_100260B48(v23);
            }

            v7 = v36;
            v32 = v17 + v40;
            result = sub_100261338(v35, v17 + v40 + v30, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_27;
            }

            result = sub_100261338(v34, v32 + v31, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
            *v33 = v17;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100260510(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RDXPCEventStream.AlarmHandler(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = *v2;
  result = sub_10025DD4C(a1, a2, *v2, type metadata accessor for RDXPCEventStream.AlarmHandler);
  if (!v3)
  {
    if (v19)
    {
      return *(v17 + 16);
    }

    v37 = v16;
    v38 = a1;
    v34 = v13;
    v35 = v10;
    v39 = a2;
    v33 = v2;
    v41 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v41;
      }

      v36 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v40;
        v25 = *(v7 + 72);
        v26 = v37;
        sub_1002600B0(v24 + v25 * v20, v37, type metadata accessor for RDXPCEventStream.AlarmHandler);
        v27 = v38(v26);
        result = sub_10026121C(v26, type metadata accessor for RDXPCEventStream.AlarmHandler);
        if (v27)
        {
          v7 = v36;
          v17 = v23;
        }

        else
        {
          v28 = v41;
          if (v20 == v41)
          {
            v7 = v36;
            v17 = v23;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v22;
            if (v41 >= *v22)
            {
              goto LABEL_25;
            }

            v30 = v25 * v41;
            result = sub_1002600B0(v24 + v25 * v41, v34, type metadata accessor for RDXPCEventStream.AlarmHandler);
            if (v20 >= v29)
            {
              goto LABEL_26;
            }

            v31 = v25 * v20;
            sub_1002600B0(v24 + v25 * v20, v35, type metadata accessor for RDXPCEventStream.AlarmHandler);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_100260BAC(v23);
            }

            v7 = v36;
            v32 = v17 + v40;
            result = sub_100261338(v35, v17 + v40 + v30, type metadata accessor for RDXPCEventStream.AlarmHandler);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_27;
            }

            result = sub_100261338(v34, v32 + v31, type metadata accessor for RDXPCEventStream.AlarmHandler);
            *v33 = v17;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100260874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v18 >= 1)
  {
    result = (*(v11 + 16))(v16, v25, v14);
    if (v12 < v18)
    {
      goto LABEL_25;
    }
  }

  return sub_1002613A0(v25);
}

unint64_t sub_100260A0C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 48 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_20;
  }

  result = &v10[3 * a3];
  v15 = (v9 + 32 + 48 * a2);
  if (result != v15 || result >= v15 + 48 * v14)
  {
    result = memmove(result, v15, 48 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
    v19 = *(a4 + 8);
    v21 = a4[1];
    v23 = a4[2];
    v20 = v23;
    v24 = v19;
    v10[1] = v21;
    v10[2] = v20;
    *v10 = *a4;
    if (a3 == 1)
    {
      return result;
    }

    sub_100261408(&v24, v22);
    sub_100261408(&v23, v22);
    __break(1u);
  }

  v24 = *(a4 + 8);
  sub_100034610(&v24);
  v23 = a4[2];
  return sub_100034610(&v23);
}

uint64_t sub_100260BFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100260CB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1000060C8(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100260DE4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 != a4)
  {
    v7 = a4;
    if (a4 <= v6)
    {
      v10 = a5 >> 1;
    }

    else
    {
      v10 = a4;
    }

    while (v10 != v7)
    {
      v13 = *(a3 + 8 * v7);
      v11 = v13;
      v12 = a1(&v13);

      if (!v5 && (v12 & 1) == 0 && v6 != ++v7)
      {
        continue;
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_100260EE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v10 = a3;
    v8 = a2;
    v9 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (!v16)
  {
    v10(result, 1);
    return sub_100260CB4(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_100260FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100261124(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_100260FD8(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_10026121C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10026127C()
{
  v1 = *(v0 + 24);
  String.utf8CString.getter();
  xpc_set_event();
}

uint64_t sub_1002612F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100261338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002613A0(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10093F2B0, &qword_10079DBD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10026146C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t sub_100261554(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1002615C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_100261664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100261700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_100261780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t sub_100261834()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t (*sub_1002618D8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1002662CC(v3, v8);
  return sub_1002619F0;
}

uint64_t (*sub_1002619F4(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10026640C(v4, a2);
  return sub_10026AE80;
}

uint64_t (*sub_100261A6C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1002664B0(v6, a2, a3);
  return sub_10026AE80;
}

uint64_t (*sub_100261AF4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10026655C(v6, a2, a3);
  return sub_100261B7C;
}

void sub_100261B80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_100261BCC(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10026666C(v3, v8);
  return sub_10026AE84;
}

void sub_100261CE4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_100261D5C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093F350);
  v1 = sub_100006654(v0, qword_10093F350);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100261E24(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v139 = a2;
  v142 = a1;
  v123 = a3;
  v3 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v117 = &v111 - v5;
  v6 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v130 = (&v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for REMRemindersListDataView.TemplateSectionsModel();
  v122 = *(v128 - 8);
  v9 = *(v122 + 64);
  __chkstk_darwin(v128);
  v121 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v132 = &v111 - v12;
  v134 = type metadata accessor for REMRemindersListDataView.Diff();
  v119 = *(v134 - 8);
  v13 = *(v119 + 64);
  __chkstk_darwin(v134);
  v120 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v118 = &v111 - v16;
  __chkstk_darwin(v17);
  v124 = &v111 - v18;
  __chkstk_darwin(v19);
  v133 = &v111 - v20;
  v21 = type metadata accessor for UUID();
  v126 = *(v21 - 8);
  v127 = v21;
  v22 = *(v126 + 64);
  __chkstk_darwin(v21);
  v125 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v116 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v131 = &v111 - v28;
  v29 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v136 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = _s9UtilitiesO12SortingStyleOMa();
  v32 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v138 = &v111 - v36;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v137 = *(Subtasks - 8);
  v38 = *(v137 + 8);
  __chkstk_darwin(Subtasks);
  v141 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration();
  v41 = *(Configuration - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(Configuration);
  v44 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v111 - v46;
  v48 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
  v49 = v140;
  sub_100262C94(v48, v142, v139);
  if (v49)
  {
  }

  else
  {
    v115 = Subtasks;
    v139 = 0;
    v140 = v50;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.fetchSubtasks.getter();
    v52 = *(v41 + 8);
    v51 = v41 + 8;
    v52(v47, Configuration);
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
    v53 = v136;
    REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.sortingStyle.getter();
    v114 = v52;
    v52(v44, Configuration);
    v54 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v55 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v55 - 8) + 104))(v34, v54, v55);
    swift_storeEnumTagMultiPayload();
    v56 = v138;
    sub_1005368D8(v53, v34, v138);
    v57 = v142;
    v58 = v139;
    v59 = sub_100268564(v48, v142, v141, v56);
    if (v58)
    {

      sub_1001EB4C4(v138);
      (*(v137 + 1))(v141, v115);
    }

    else
    {
      v112 = v44;
      v113 = v51;
      v135 = Configuration;
      v136 = v59;
      sub_1001EB4C4(v138);
      (*(v137 + 1))(v141, v115);
      v60 = [v140 accountID];
      v61 = [v57 persistentStoreOfAccountWithAccountID:v60];
      if (v61)
      {
        v62 = v61;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1007953F0;
        *(v63 + 32) = v62;
      }

      v64 = sub_10026A52C();

      v65 = sub_100270BA0(v64);

      v137 = sub_1001BD57C(v65, v136);
      v141 = v48;
      v139 = 0;

      v66 = v112;
      REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter();
      LOBYTE(v65) = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.shouldFetchManualOrderingID.getter();
      v114(v66, v135);
      v138 = v60;
      if (v65)
      {
        v67 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
        v68 = [v67 uuid];

        v69 = v125;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = UUID.uuidString.getter();
        v72 = v71;
        (*(v126 + 8))(v69, v127);
        sub_10053F868(6, v70, v72, v60, v142);
        v74 = v134;
        if (!v73)
        {
          v73 = [objc_opt_self() newObjectID];
        }

        v75 = v73;
        REMObjectID.codable.getter();
        v76 = v131;
        REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

        v77 = 0;
        v78 = v74;
      }

      else
      {
        v77 = 1;
        v76 = v131;
        v78 = v134;
      }

      v79 = type metadata accessor for REMManualOrdering.ManualOrderingID();
      (*(*(v79 - 8) + 56))(v76, v77, 1, v79);
      v80 = [v129 fetchResultTokenToDiffAgainst];
      v81 = v139;
      sub_100262FE8(v80, v133);
      if (v81)
      {
        sub_1000050A4(v76, &qword_100938A68, &unk_10079DDF0);
      }

      else
      {
        v139 = 0;

        v82 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
        (*(*(v82 - 8) + 56))(v117, 1, 1, v82);
        REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
        sub_100010364(v76, v116, &qword_100938A68, &unk_10079DDF0);
        v142 = v140;
        REMRemindersListDataView.TemplateSectionsModel.init(sectionsModel:listRepresentationOfTemplate:manualOrderingID:)();
        if (qword_100935D88 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        sub_100006654(v83, qword_10093F350);
        v84 = v119;
        v85 = (v119 + 16);
        v86 = *(v119 + 16);
        v87 = v124;
        v88 = v133;
        v86(v124, v133, v78);
        v89 = v118;
        v140 = v85;
        v137 = v86;
        v86(v118, v88, v78);
        v90 = v78;
        v91 = v136;

        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();
        v94 = os_log_type_enabled(v92, v93);
        v95 = v128;
        if (v94)
        {
          v96 = swift_slowAlloc();
          *v96 = 134218496;
          v97 = *(v91 + 16);

          *(v96 + 4) = v97;

          *(v96 + 12) = 2048;
          v98 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
          LODWORD(v129) = v93;
          if ((v98 & 0xC000000000000001) != 0)
          {
            v99 = __CocoaSet.count.getter();
            v87 = v124;
          }

          else
          {
            v99 = *(v98 + 16);
          }

          v102 = v120;

          v103 = *(v84 + 8);
          v135 = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v103(v87, v134);
          *(v96 + 14) = v99;
          *(v96 + 22) = 2048;
          v104 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
          if ((v104 & 0xC000000000000001) != 0)
          {
            v105 = __CocoaSet.count.getter();
          }

          else
          {
            v105 = *(v104 + 16);
          }

          v95 = v128;

          v106 = v134;
          v130 = v103;
          v103(v89, v134);
          *(v96 + 24) = v105;
          _os_log_impl(&_mh_execute_header, v92, v129, "REMRemindersListDataView.TemplateSectionsInvocation: reminders %ld updated %ld inserted %ld", v96, 0x20u);

          v101 = v106;
        }

        else
        {
          v100 = *(v84 + 8);
          v135 = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v100(v89, v90);
          v130 = v100;
          v100(v87, v90);

          swift_bridgeObjectRelease_n();
          v101 = v90;
          v102 = v120;
        }

        v107 = v122;
        v108 = v132;
        (*(v122 + 16))(v121, v132, v95);
        v109 = v102;
        v110 = v133;
        v137(v109, v133, v101);
        sub_10026A4E4(&qword_10093F3D0, &type metadata accessor for REMRemindersListDataView.TemplateSectionsModel);
        sub_10026A4E4(&qword_10093F3D8, &type metadata accessor for REMRemindersListDataView.TemplateSectionsModel);
        REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

        (*(v107 + 8))(v108, v95);
        v130(v110, v134);
        sub_1000050A4(v131, &qword_100938A68, &unk_10079DDF0);
      }
    }
  }
}

void sub_100262C94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(REMListsDataViewInvocation_fetchByTemplateObjectID) initWithTemplateObjectID:a1];
  sub_1001DF87C(a2);
  v9 = v8;

  if (v3)
  {
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:a1];
    swift_willThrow();
LABEL_18:

    return;
  }

  v11 = v10;
  v22 = v9;
  isa = [v11 accountStorages];
  if (!isa)
  {
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v13 = [v11 listStorages];
  if (!v13)
  {
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = Array._bridgeToObjectiveC()().super.isa;
  }

  v14 = objc_opt_self();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007953F0;
  *(v15 + 32) = a1;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v16 = a1;
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v14 listsFromAccountStorages:isa listStorages:v13 store:a3 requestedListIDs:v17];

  if (!v18)
  {
LABEL_17:
    [objc_opt_self() noSuchObjectErrorWithObjectID:v16];
    swift_willThrow();

    goto LABEL_18;
  }

  sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    goto LABEL_17;
  }

LABEL_10:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
LABEL_13:
    v21 = v20;

    REMList.codable.getter();

    return;
  }

  __break(1u);
}

void sub_100262FE8(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_90:
      REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
      return;
    }

LABEL_95:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1003915C4(_swiftEmptyArrayStorage);
    }

    goto LABEL_90;
  }

  v87 = a2;
  v99[6] = _swiftEmptySetSingleton;
  v99[2] = _swiftEmptySetSingleton;
  v99[3] = _swiftEmptySetSingleton;
  v99[1] = _swiftEmptySetSingleton;
  v3 = a1;
  v4 = sub_10003B8F0(v3, _swiftEmptyArrayStorage);
  if (!v2)
  {
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_5:
        v7 = 0;
        v92 = v5 & 0xC000000000000001;
        v88 = v5 + 32;
        v89 = v5 & 0xFFFFFFFFFFFFFF8;
        v8 = &selRef_accountStatusWithCompletionHandler_;
        v91 = v3;
        v90 = v6;
        while (1)
        {
          if (v92)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = __OFADD__(v7, 1);
            v11 = v7 + 1;
            if (v10)
            {
              goto LABEL_92;
            }
          }

          else
          {
            if (v7 >= *(v89 + 16))
            {
              goto LABEL_94;
            }

            v9 = *(v88 + 8 * v7);
            v10 = __OFADD__(v7, 1);
            v11 = v7 + 1;
            if (v10)
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }
          }

          v93 = v9;
          v94 = v11;
          v12 = [v9 changes];
          if (!v12)
          {
            if (qword_100935D88 != -1)
            {
              swift_once();
            }

            v80 = type metadata accessor for Logger();
            sub_100006654(v80, qword_10093F350);
            v81 = v93;
            v82 = Logger.logObject.getter();
            v83 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              *v84 = 138412290;
              *(v84 + 4) = v81;
              *v85 = v81;
              v86 = v81;
              _os_log_impl(&_mh_execute_header, v82, v83, "Skipping transaction because it contains no changes {transaction: %@}", v84, 0xCu);
              sub_1000050A4(v85, &unk_100938E70, &unk_100797230);
              v8 = &selRef_accountStatusWithCompletionHandler_;
            }

            else
            {
            }

            goto LABEL_7;
          }

          v13 = v12;
          sub_1000060C8(0, &qword_10093F3C8, NSPersistentHistoryChange_ptr);
          v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v14 >> 62))
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v15)
            {
              break;
            }

            goto LABEL_88;
          }

          v15 = _CocoaArrayWrapper.endIndex.getter();
          if (v15)
          {
            break;
          }

LABEL_88:

LABEL_7:
          v7 = v94;
          if (v94 == v6)
          {

LABEL_99:
            REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
            goto LABEL_100;
          }
        }

        type metadata accessor for REMCDSavedReminder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
        if (v15 >= 1)
        {
          v16 = 0;
          v96 = v14 & 0xC000000000000001;
          v95 = v14;
          v97 = v15;
          while (1)
          {
            v17 = v96 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v14 + 8 * v16 + 32);
            v18 = v17;
            v19 = [v17 changedObjectID];
            v20 = [v19 v8[395]];
            v21 = [ObjCClassFromMetadata v8[395]];
            v22 = static NSObject.== infix(_:_:)();

            if ((v22 & 1) == 0)
            {
              break;
            }

            v23 = sub_1005AFD38(v19);
            if (!v23)
            {
              goto LABEL_19;
            }

            v24 = v23;
            v25 = swift_dynamicCastClass();
            if (v25)
            {
              v26 = v25;
              v24 = v24;
              v27 = [v26 remObjectID];
              if (v27)
              {
                v28 = v27;
                if ([v18 changeType] <= 1)
                {
                  v74 = REMObjectID.codable.getter();
                  sub_100379240(v99, v74);

LABEL_81:
                  goto LABEL_20;
                }

                goto LABEL_61;
              }

              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v58 = type metadata accessor for Logger();
              sub_100006654(v58, qword_10093F350);
              v52 = v19;
              v53 = Logger.logObject.getter();
              v59 = static os_log_type_t.error.getter();

              if (!os_log_type_enabled(v53, v59))
              {
LABEL_57:

                goto LABEL_20;
              }

              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              *v60 = 138412290;
              *(v60 + 4) = v52;
              *v61 = v52;
              v57 = v52;
              _os_log_impl(&_mh_execute_header, v53, v59, "Failed to get remObjectID from REMCDSavedReminder {objectID: %@}", v60, 0xCu);
              sub_1000050A4(v61, &unk_100938E70, &unk_100797230);
              v14 = v95;
            }

            else
            {
              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v51 = type metadata accessor for Logger();
              sub_100006654(v51, qword_10093F350);
              v52 = v19;
              v53 = Logger.logObject.getter();
              v54 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v53, v54))
              {
                goto LABEL_57;
              }

              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              *v55 = 138412290;
              *(v55 + 4) = v52;
              *v56 = v52;
              v57 = v52;
              _os_log_impl(&_mh_execute_header, v53, v54, "Failed to cast managedObject to REMCDSavedReminder {objectID: %@}", v55, 0xCu);
              sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

              v14 = v95;
            }

LABEL_20:
            v8 = &selRef_accountStatusWithCompletionHandler_;
LABEL_21:
            if (v97 == ++v16)
            {

              v3 = v91;
              v6 = v90;
              goto LABEL_7;
            }
          }

          type metadata accessor for REMCDTemplate();
          v29 = swift_getObjCClassFromMetadata();
          v30 = v20;
          v31 = v8;
          v32 = [v29 v8[395]];
          LOBYTE(v29) = static NSObject.== infix(_:_:)();

          if (v29)
          {

            v33 = sub_1005AFD38(v19);
            if (!v33)
            {

LABEL_59:
              v8 = &selRef_accountStatusWithCompletionHandler_;
              v14 = v95;
              goto LABEL_21;
            }

            v24 = v33;
            v34 = swift_dynamicCastClass();
            v14 = v95;
            if (!v34)
            {
              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v62 = type metadata accessor for Logger();
              sub_100006654(v62, qword_10093F350);
              v63 = v19;
              v64 = Logger.logObject.getter();
              v65 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v64, v65))
              {
                goto LABEL_79;
              }

              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *v66 = 138412290;
              *(v66 + 4) = v63;
              *v67 = v63;
              v68 = v63;
              v69 = v65;
              v70 = v64;
              v71 = "Failed to cast managedObject to REMCDTemplate {objectID: %@}";
              goto LABEL_78;
            }

            v35 = v34;
            v24 = v24;
            v36 = [v35 remObjectID];
            if (!v36)
            {

              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v72 = type metadata accessor for Logger();
              sub_100006654(v72, qword_10093F350);
              v63 = v19;
              v64 = Logger.logObject.getter();
              v73 = static os_log_type_t.error.getter();

              if (!os_log_type_enabled(v64, v73))
              {
                goto LABEL_79;
              }

              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *v66 = 138412290;
              *(v66 + 4) = v63;
              *v67 = v63;
              v68 = v63;
              v69 = v73;
              v70 = v64;
              v71 = "Failed to get remObjectID from REMCDTemplate {objectID: %@}";
LABEL_78:
              _os_log_impl(&_mh_execute_header, v70, v69, v71, v66, 0xCu);
              sub_1000050A4(v67, &unk_100938E70, &unk_100797230);

              v14 = v95;

              goto LABEL_20;
            }

            v37 = v36;
            if ([v18 changeType] == 1)
            {
              goto LABEL_80;
            }

LABEL_42:

LABEL_61:
            goto LABEL_20;
          }

          type metadata accessor for REMCDTemplateSection();
          v38 = [swift_getObjCClassFromMetadata() v31[395]];
          v39 = static NSObject.== infix(_:_:)();

          if ((v39 & 1) == 0)
          {
            if (qword_100935D88 != -1)
            {
              swift_once();
            }

            v44 = type metadata accessor for Logger();
            sub_100006654(v44, qword_10093F350);
            v45 = v19;
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              *v48 = 138412290;
              *(v48 + 4) = v45;
              *v49 = v45;
              v50 = v45;
              _os_log_impl(&_mh_execute_header, v46, v47, "Skipping change unhandled type {objectID: %@}", v48, 0xCu);
              sub_1000050A4(v49, &unk_100938E70, &unk_100797230);
            }

            else
            {
            }

            goto LABEL_59;
          }

          v40 = sub_1005AFD38(v19);
          v14 = v95;
          if (v40)
          {
            v24 = v40;
            v41 = swift_dynamicCastClass();
            if (!v41)
            {
              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v75 = type metadata accessor for Logger();
              sub_100006654(v75, qword_10093F350);
              v63 = v19;
              v64 = Logger.logObject.getter();
              v76 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v64, v76))
              {
LABEL_79:

                goto LABEL_20;
              }

              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *v66 = 138412290;
              *(v66 + 4) = v63;
              *v67 = v63;
              v68 = v63;
              v69 = v76;
              v70 = v64;
              v71 = "Failed to cast managedObject to REMCDTemplateSection {objectID: %@}";
              goto LABEL_78;
            }

            v42 = v41;
            v24 = v24;
            v43 = [v42 remObjectID];
            if (!v43)
            {

              if (qword_100935D88 != -1)
              {
                swift_once();
              }

              v77 = type metadata accessor for Logger();
              sub_100006654(v77, qword_10093F350);
              v63 = v19;
              v64 = Logger.logObject.getter();
              v78 = static os_log_type_t.error.getter();

              if (!os_log_type_enabled(v64, v78))
              {
                goto LABEL_79;
              }

              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              *v66 = 138412290;
              *(v66 + 4) = v63;
              *v67 = v63;
              v68 = v63;
              v69 = v78;
              v70 = v64;
              v71 = "Failed to get remObjectID from REMCDTemplateSection {objectID: %@}";
              goto LABEL_78;
            }

            v37 = v43;
            if ([v18 changeType] == 1)
            {
LABEL_80:
              v79 = REMObjectID.codable.getter();
              sub_100379240(v99, v79);

              goto LABEL_81;
            }

            goto LABEL_42;
          }

LABEL_19:

          goto LABEL_20;
        }

LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_99;
  }

LABEL_100:
}

uint64_t sub_100263F14(uint64_t a1)
{
  result = sub_10026A4E4(&qword_10093F398, &type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_100263F6C()
{
  v0 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v0, v3);
  sub_10026A4E4(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v1 + 8))(v5, v0);
  if (v10 == v9[2])
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  v10 = sub_100436338(v7);
  sub_100266138(&v10, v6);
  return v10;
}

void sub_100264108(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a2;

  v5 = sub_100263F6C();

  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  sub_1002C77C0(v5, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v8;
}

uint64_t sub_1002641A8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a5;
  v91 = a4;
  v95 = a3;
  v10 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v96 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v100 = &v88 - v15;
  v90 = _s9UtilitiesO12SortingStyleOMa();
  v16 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v92 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v19 = *(Subtasks - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(Subtasks);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v97 = [v23 remObjectID];
  if (!v97)
  {

    return (*(v11 + 56))(a6, 1, 1, v10);
  }

  v98 = v10;
  v99 = v11;
  v93 = a6;
  v94 = v6;
  (*(v19 + 16))(v22, a2, Subtasks);
  v24 = (*(v19 + 88))(v22, Subtasks);
  if (v24 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {

    v25 = v93;
    v27 = v97;
    v26 = v98;
LABEL_60:
    REMObjectID.codable.getter();
    REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)();

    return (*(v99 + 56))(v25, 0, 1, v26);
  }

  v27 = v97;
  v26 = v98;
  if (v24 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    v29 = *v95;
    if (!*(*v95 + 2) || (v30 = sub_10002B924(v97), (v31 & 1) == 0))
    {

      v25 = v93;
      goto LABEL_60;
    }

    v32 = *(*(v29 + 7) + 8 * v30);
    if (v32 >> 62)
    {
      if (v32 < 0)
      {
        v71 = *(*(v29 + 7) + 8 * v30);
      }

      v33 = _CocoaArrayWrapper.endIndex.getter();
      v72 = _CocoaArrayWrapper.endIndex.getter();
      v34 = v92;
      if (v72)
      {
LABEL_10:
        sub_1001A4ED8(v91, v34);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v88 = v33;
        if (EnumCaseMultiPayload != 4)
        {
          v60 = v32;

          sub_1001EB4C4(v34);
          v59 = v99;
          goto LABEL_40;
        }

        v36 = v34;
        v38 = *v34;
        v37 = v34[1];
        v39 = v36[2];
        v40 = v36[3];
        v42 = v36[4];
        v41 = v36[5];

        if (v38)
        {
          if (v89)
          {
            v90 = v42;
            v91 = v40;
            v92 = v39;
            v95 = v37;
            v43 = v89;
            sub_1006B038C();
            v45 = v44;
            v46 = type metadata accessor for RDManualSortIDCache();
            v47 = v46;
            if (qword_100936508 != -1)
            {
              v46 = swift_once();
            }

            v48 = qword_10094C220;
            __chkstk_darwin(v46);
            *(&v88 - 4) = v47;
            *(&v88 - 3) = v45;
            *(&v88 - 2) = v48;
            v49 = v94;
            OS_dispatch_queue.sync<A>(execute:)();
            v94 = v49;
            v50 = v101;
            type metadata accessor for RDManualSortIDAdapter();
            swift_allocObject();
            sub_100214ECC(v50, v45, 0);
            v51 = [v23 remObjectID];
            if (v51)
            {
              v52 = v51;
              sub_1000F5104(&unk_100939D60, &unk_1007959E0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1007953F0;
              *(inited + 32) = v23;
              v54 = sub_1001A618C(inited);
              swift_setDeallocating();
              v55 = *(inited + 16);
              swift_arrayDestroy();
              v56 = sub_1002173A0(v54);

              v57 = sub_100353598(v52, v56);

              if (v57)
              {
                v58 = sub_1002CE6A8(v57, v95);

                v26 = v98;
                v59 = v99;
                v60 = v32;
                if (v58)
                {
                  if (*(v58 + 16))
                  {

                    v62 = sub_1001A595C(v61);

                    sub_100394B34(v62);
                    v64 = v63;

                    v65 = sub_1002173A0(v64);

                    v60 = sub_100267E88(v58, v65, v32);

                    v26 = v98;

LABEL_40:
                    if (v60 >> 62)
                    {
                      goto LABEL_58;
                    }

                    for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
                    {
                      v74 = 0;
                      v91 = v60 & 0xFFFFFFFFFFFFFF8;
                      v92 = (v60 & 0xC000000000000001);
                      v95 = (v59 + 32);
                      v75 = _swiftEmptyArrayStorage;
                      while (1)
                      {
                        if (v92)
                        {
                          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          if (v74 >= *(v91 + 16))
                          {
                            goto LABEL_57;
                          }

                          v76 = *(v60 + 8 * v74 + 32);
                        }

                        v77 = v76;
                        v78 = v74 + 1;
                        if (__OFADD__(v74, 1))
                        {
                          break;
                        }

                        v79 = [v76 remObjectID];
                        if (v79)
                        {
                          v80 = v79;
                          v59 = i;
                          v81 = v60;
                          REMObjectID.codable.getter();
                          v82 = v96;
                          REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)();

                          v83 = *v95;
                          (*v95)(v100, v82, v26);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v75 = sub_100365A24(0, v75[2] + 1, 1, v75);
                          }

                          v85 = v75[2];
                          v84 = v75[3];
                          v60 = v81;
                          if (v85 >= v84 >> 1)
                          {
                            v75 = sub_100365A24(v84 > 1, v85 + 1, 1, v75);
                          }

                          i = v59;
                          v75[2] = v85 + 1;
                          v86 = v75 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v85;
                          v26 = v98;
                          v83(v86, v100, v98);
                        }

                        else
                        {
                        }

                        ++v74;
                        if (v78 == i)
                        {
                          goto LABEL_59;
                        }
                      }

                      __break(1u);
LABEL_57:
                      __break(1u);
LABEL_58:
                      ;
                    }

LABEL_59:

                    v25 = v93;
                    v27 = v97;
                    goto LABEL_60;
                  }
                }

                else
                {
                }

                goto LABEL_40;
              }

              v26 = v98;
            }

            else
            {

              v26 = v98;
            }

LABEL_39:
            v59 = v99;
            v60 = v32;
            goto LABEL_40;
          }
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v92;
      if (v33)
      {
        goto LABEL_10;
      }
    }

    v88 = v33;

    goto LABEL_38;
  }

  if (v24 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {

    v66 = *v95;
    v25 = v93;
    if (*(*v95 + 2))
    {
      v67 = sub_10002B924(v27);
      if (v68)
      {
        v69 = *(*(v66 + 7) + 8 * v67);
        if (v69 >> 62)
        {
          if (v69 < 0)
          {
            v87 = *(*(v66 + 7) + 8 * v67);
          }

          _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }
    }

    goto LABEL_60;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100264B34@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a6;
  v81 = a5;
  v82 = a4;
  v85 = a7;
  v89 = sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  v87 = *(v89 - 8);
  v10 = *(v87 + 64);
  __chkstk_darwin(v89);
  v84 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v83 = &v77[-v13];
  v14 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  __chkstk_darwin(v14);
  v17 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v19 = *(Subtasks - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(Subtasks);
  v22 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = *a1;
  v23 = sub_1002652D0(a2);
  v25 = v24;
  (*(v19 + 16))(v22, a3, Subtasks);
  v27 = *(v19 + 88);
  v26 = (v19 + 88);
  v28 = v27(v22, Subtasks);
  if (v28 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {
    v29 = v86;
    goto LABEL_51;
  }

  if (v28 != enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    v44 = v88;
    v29 = v86;
    if (v28 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_13;
    }

    goto LABEL_51;
  }

  v29 = v86;
  v30 = [v86 remObjectID];
  if (!v30)
  {
LABEL_51:
    v90 = v29;
    type metadata accessor for REMCDSavedReminder();
    v74 = v29;
    v75 = v85;
    REMSortableElement.init(element:sortIndex:)();
    return (*(v87 + 56))(v75, 0, 1, v89);
  }

  v31 = v30;
  v78 = v25;
  v32 = *v82;
  if (!*(*v82 + 16) || (v33 = sub_10002B924(v30), (v34 & 1) == 0))
  {

    goto LABEL_51;
  }

  v35 = *(*(v32 + 56) + 8 * v33);
  __chkstk_darwin(v33);
  *&v77[-16] = a2;

  v82 = v35;
  v36 = v88;
  v37 = sub_1003DEEBC(sub_10026AE24, &v77[-32], v35);

  v38 = v31;
  v39 = v81;
  v40 = *v81;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v39;
  *v39 = 0x8000000000000000;
  sub_1002C8D7C(v37, v38, isUniquelyReferenced_nonNull_native);

  *v39 = v90;
  if ((v78 & 1) == 0)
  {

    goto LABEL_51;
  }

  v42 = v79;
  (*(v79 + 16))(v17, v80, v14);
  v43 = (*(v42 + 88))(v17, v14);
  if (v43 == enum case for REMRemindersListDataView.SortingDirection.ascending(_:))
  {

    a3 = v37[2];
    if (a3)
    {
      v80 = v37;
      v81 = v38;
      v88 = v36;
      v84 = *(v87 + 16);
      v14 = v37 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v82 = *(v87 + 72);
      v26 = (v87 + 8);
      v17 = _swiftEmptyArrayStorage;
      do
      {
        v45 = v83;
        v46 = v89;
        (v84)(v83, v14, v89);
        v23 = REMSortableElement.sortIndex.getter();
        v48 = v47;
        (*v26)(v45, v46);
        if ((v48 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100366E3C(0, *(v17 + 2) + 1, 1, v17);
          }

          v29 = *(v17 + 2);
          v49 = *(v17 + 3);
          v44 = (v29 + 1);
          if (v29 >= v49 >> 1)
          {
            v17 = sub_100366E3C((v49 > 1), v29 + 1, 1, v17);
          }

LABEL_13:
          *(v17 + 2) = v44;
          *&v17[8 * v29 + 32] = v23;
        }

        v14 += v82;
        --a3;
      }

      while (a3);

      v29 = v86;
      v38 = v81;
    }

    else
    {

      v17 = _swiftEmptyArrayStorage;
    }

    v62 = *(v17 + 2);
    if (v62)
    {
      v63 = *(v17 + 4);
      v64 = v62 - 1;
      if (v64)
      {
        v65 = (v17 + 40);
        do
        {
          v66 = *v65++;
          v67 = v66;
          if (v66 < v63)
          {
            v63 = v67;
          }

          --v64;
        }

        while (v64);
      }
    }

    goto LABEL_50;
  }

  if (v43 == enum case for REMRemindersListDataView.SortingDirection.descending(_:))
  {

    v50 = v37[2];
    if (v50)
    {
      v80 = v37;
      v81 = v38;
      v88 = v36;
      v51 = *(v87 + 16);
      v52 = v37 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v82 = *(v87 + 72);
      v83 = v51;
      v53 = (v87 + 8);
      v54 = _swiftEmptyArrayStorage;
      do
      {
        v55 = v84;
        v56 = v89;
        (v83)(v84, v52, v89);
        v57 = REMSortableElement.sortIndex.getter();
        v59 = v58;
        (*v53)(v55, v56);
        if ((v59 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_100366E3C(0, *(v54 + 2) + 1, 1, v54);
          }

          v61 = *(v54 + 2);
          v60 = *(v54 + 3);
          if (v61 >= v60 >> 1)
          {
            v54 = sub_100366E3C((v60 > 1), v61 + 1, 1, v54);
          }

          *(v54 + 2) = v61 + 1;
          *&v54[8 * v61 + 32] = v57;
        }

        v52 += v82;
        --v50;
      }

      while (v50);

      v29 = v86;
      v38 = v81;
    }

    else
    {

      v54 = _swiftEmptyArrayStorage;
    }

    v68 = *(v54 + 2);
    if (v68)
    {
      v69 = *(v54 + 4);
      v70 = v68 - 1;
      if (v70)
      {
        v71 = (v54 + 40);
        do
        {
          v72 = *v71++;
          v73 = v72;
          if (v69 < v72)
          {
            v69 = v73;
          }

          --v70;
        }

        while (v70);
      }
    }

LABEL_50:

    goto LABEL_51;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002652D0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = _s9UtilitiesO12SortingStyleOMa();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A4ED8(a1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v20 = 0.0;
    if ((EnumCaseMultiPayload - 2) >= 3)
    {
      return *&v20;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v24 = [v1 priority];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 shortValue];

      if (v26 >= 1)
      {
        v20 = (10 - v26);
      }

      else
      {
        v20 = 0.0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v21 = [v1 displayDateDate];
    if (v21)
    {
      v22 = v21;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v4 + 56))(v11, v23, 1, v3);
    sub_10012F7FC(v11, v14);
    if (!(*(v4 + 48))(v14, 1, v3))
    {
      (*(v4 + 16))(v7, v14, v3);
      sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
      Date.timeIntervalSinceReferenceDate.getter();
      v28 = v27;
      (*(v4 + 8))(v7, v3);
      v20 = v28;
      goto LABEL_16;
    }

    sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
  }

  v20 = 0.0;
LABEL_16:
  sub_1001EB4C4(v18);
  return *&v20;
}

uint64_t sub_100265608@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1002652D0(a2);
  type metadata accessor for REMCDSavedReminder();
  REMSortableElement.init(element:sortIndex:)();
  v6 = sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
}

uint64_t sub_1002656D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_100265718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void sub_10026575C(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void (**a4)(char *, char *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v56 = a4;
  v52 = a3;
  v53 = a2;
  v58 = a1;
  v6 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v50 - v11;
  v12 = sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v17 = *(Subtasks - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(Subtasks);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMSortableElement.element.getter();
  v21 = v63;
  v59 = [v63 remObjectID];
  if (!v59)
  {
    (*(v7 + 56))(a5, 1, 1, v6);

    return;
  }

  v60 = v7;
  v55 = a5;
  (*(v17 + 16))(v20, v58, Subtasks);
  v22 = (*(v17 + 88))(v20, Subtasks);
  v54 = v21;
  if (v22 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {
    v23 = v55;
    v25 = v59;
    v24 = v60;
    goto LABEL_25;
  }

  v25 = v59;
  if (v22 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    v26 = *v53;
    if (*(*v53 + 16))
    {
      v27 = sub_10002B924(v59);
      if (v28)
      {
        v58 = v6;
        v29 = *(*(*(v26 + 56) + 8 * v27) + 16);
        sub_10000CB48(&qword_10093F3A0, &unk_1009430F0, qword_10079DC40);

        v30 = Array<A>.sorted(by:)();

        v31 = *(v30 + 16);
        if (v31)
        {
          v50 = v30;
          v51 = v29;
          v32 = *(v61 + 16);
          v33 = v30 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
          v52 = *(v61 + 72);
          v53 = v32;
          v61 += 16;
          v34 = (v61 - 8);
          v56 = (v60 + 32);
          v35 = _swiftEmptyArrayStorage;
          (v32)(v15, v33, v12);
          while (1)
          {
            REMSortableElement.element.getter();
            v36 = v63;
            v37 = [v63 remObjectID];
            if (v37)
            {
              v38 = v37;
              REMObjectID.codable.getter();
              v39 = v57;
              REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)();

              (*v34)(v15, v12);
              v40 = *v56;
              (*v56)(v62, v39, v58);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = sub_100365A24(0, *(v35 + 2) + 1, 1, v35);
              }

              v42 = *(v35 + 2);
              v41 = *(v35 + 3);
              if (v42 >= v41 >> 1)
              {
                v35 = sub_100365A24(v41 > 1, v42 + 1, 1, v35);
              }

              *(v35 + 2) = v42 + 1;
              v40(&v35[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v42], v62, v58);
            }

            else
            {

              (*v34)(v15, v12);
            }

            v33 += v52;
            if (!--v31)
            {
              break;
            }

            v53(v15, v33, v12);
          }

          v24 = v60;
          v44 = v58;
          v25 = v59;
          v23 = v55;
        }

        else
        {

          v44 = v58;
          v23 = v55;
          v24 = v60;
        }

        goto LABEL_29;
      }
    }

    v23 = v55;
    v24 = v60;
LABEL_25:
    v44 = v6;
LABEL_29:
    REMObjectID.codable.getter();
    REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtaskCount:subtasks:)();

    (*(v24 + 56))(v23, 0, 1, v44);
    return;
  }

  if (v22 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
  {
    v23 = v55;
    v43 = *v56;
    v24 = v60;
    v44 = v6;
    if (*(*v56 + 2))
    {
      v45 = sub_10002B924(v59);
      if (v46)
      {
        v47 = *(*(v43 + 7) + 8 * v45);
        if (v47 >> 62)
        {
          if (v47 < 0)
          {
            v49 = *(*(v43 + 7) + 8 * v45);
          }

          _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }
    }

    goto LABEL_29;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_100265DA8()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_10093F368 = v0;
  return result;
}

uint64_t sub_100265E1C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  result = swift_getKeyPath();
  *(v0 + 32) = result;
  qword_10093F370 = v0;
  return result;
}

void sub_100265E80(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_100265EE8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setTitle:?];
}

uint64_t sub_100265F58@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 creationDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100265FFC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate:isa];
}

uint64_t sub_100266138(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10043653C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1002661BC(v8, a2);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1002661BC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for REMCDSavedReminder();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_100156F08(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_100156D68(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t (*sub_1002662CC(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_100267290(v6);
  v6[12] = sub_100266840(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_100266408;
}

uint64_t (*sub_10026640C(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1002672C4(v6);
  v6[9] = sub_100266A1C(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10026AE88;
}

uint64_t (*sub_1002664B0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1002672C4(v8);
  v8[9] = sub_100266C24(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10026AE88;
}

uint64_t (*sub_10026655C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1002672C4(v8);
  v8[9] = sub_100266DA8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100266608;
}

void sub_10026660C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10026666C(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1002672C4(v6);
  v6[12] = sub_100266FCC(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_10026AE8C;
}

void sub_1002667A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_100266840(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100363F20(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1003731E8();
      v14 = v22;
      goto LABEL_14;
    }

    sub_10036A238(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_100363F20(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_1002669F0;
}

void (*sub_100266A1C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_10002B924(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100373A14();
      v11 = v19;
      goto LABEL_11;
    }

    sub_10036AF5C(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_10002B924(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_100266B74;
}

void sub_100266B74(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_1002CB2F8(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_10006713C(v6, v7);
  }

  v10 = *v1;

  free(v1);
}

void (*sub_100266C24(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100005F4C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10037443C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10036C5F8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_100005F4C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100266D7C;
}

void (*sub_100266DA8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100005F4C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100374478();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10036C620(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_100005F4C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100266D7C;
}

void sub_100266F00(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_100034610(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  v12 = *v4;

  free(v4);
}

void (*sub_100266FCC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_100363F20(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_1003769E8();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100370B40(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_100363F20(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_1002669F0;
}

void sub_10026717C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 56);
  if (v5)
  {
    v7 = *v4[2];
    v8 = v4[6];
    if ((*a1)[7])
    {
      *(*(v7 + 56) + 8 * v8) = v5;
    }

    else
    {
      v12 = v4[5];
      (*(v4[4] + 16))(v12, v4[1], v4[3]);
      a3(v8, v12, v5, v7);
    }
  }

  else if ((*a1)[7])
  {
    v9 = v4[6];
    v10 = *v4[2];
    (*(v4[4] + 8))(*(v10 + 48) + *(v4[4] + 72) * v9, v4[3]);
    a4(v9, v10);
  }

  v14 = v4[5];
  v15 = *v4;

  free(v14);

  free(v4);
}

uint64_t (*sub_100267290(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1002672B8;
}

uint64_t (*sub_1002672C4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10026AE4C;
}

uint64_t sub_1002672EC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_10038DB28(_swiftEmptyArrayStorage);
  if (a3 >> 62)
  {
    goto LABEL_73;
  }

  v64 = a3 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v65 = a3 & 0xC000000000000001;
    v63 = a3;
    if (i)
    {
      v8 = 0;
      v60 = a2;
      v61 = a2 & 0xC000000000000001;
      v58 = a1;
      while (1)
      {
        a2 = v8;
        while (1)
        {
          if (v65)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *(v64 + 16))
            {
              goto LABEL_68;
            }

            v10 = *(a3 + 8 * a2 + 32);
          }

          v11 = v10;
          v8 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v12 = [v10 remObjectID];
          if (v12)
          {
            break;
          }

          v9 = v11;
LABEL_7:

          ++a2;
          if (v8 == i)
          {
            a1 = v58;
            goto LABEL_29;
          }
        }

        v9 = v12;
        v13 = i;
        if (v61)
        {
          break;
        }

        if (!*(v60 + 16))
        {
          goto LABEL_20;
        }

        a1 = v60;
        v16 = sub_10002B924(v12);
        if ((v17 & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = *(*(v60 + 56) + 8 * v16);

        if (!v15)
        {
          goto LABEL_20;
        }

LABEL_22:
        if (*(v15 + 24))
        {
          v18 = *(v15 + 16);
          v19 = *(v15 + 24);
        }

        else
        {
          v20._countAndFlagsBits = UUID.uuidString.getter();
          v66 = 0x7C6C61636F6CLL;
          v67 = 0xE600000000000000;
          String.append(_:)(v20);

          v18 = v66;
          v19 = v67;
        }

        v21 = v11;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v6;
        v23 = v21;
        sub_1002C7024(v21, v18, v19, isUniquelyReferenced_nonNull_native);

        v24 = v66;
        v25._countAndFlagsBits = UUID.uuidString.getter();
        v66 = 0x7C6C61636F6CLL;
        v67 = 0xE600000000000000;
        String.append(_:)(v25);

        a2 = v66;
        v26 = v67;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v24;
        sub_1002C7024(v23, a2, v26, v27);

        v6 = v66;
        i = v13;
        v28 = v8 == v13;
        a1 = v58;
        a3 = v63;
        if (v28)
        {
          goto LABEL_29;
        }
      }

      v14 = v12;
      a1 = __CocoaDictionary.lookup(_:)();

      if (a1)
      {
        type metadata accessor for RDElementManualSortID();
        swift_dynamicCast();
        v15 = v66;
        if (v66)
        {
          goto LABEL_22;
        }
      }

LABEL_20:

      i = v13;
      a3 = v63;
      goto LABEL_7;
    }

LABEL_29:
    v59 = i;
    v29 = _swiftEmptyArrayStorage;
    v66 = _swiftEmptyArrayStorage;
    a3 = *(a1 + 16);
    if (!a3)
    {
      break;
    }

    v30 = 0;
    v31 = a1 + 40;
    v57 = _swiftEmptyArrayStorage;
LABEL_31:
    v32 = (v31 + 16 * v30);
    v33 = v30;
    while (v33 < a3)
    {
      v30 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_70;
      }

      if (*(v6 + 16))
      {
        v34 = *(v32 - 1);
        a2 = *v32;

        v35 = v34;
        a1 = v6;
        v36 = sub_100005F4C(v35, a2);
        if (v37)
        {
          v38 = *(*(v6 + 56) + 8 * v36);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          a1 = &v66;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v57 = v66;

          v29 = _swiftEmptyArrayStorage;
          if (v30 != a3)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }
      }

      ++v33;
      v32 += 2;
      if (v30 == a3)
      {
        v29 = _swiftEmptyArrayStorage;
        goto LABEL_44;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v64 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_44:

  v66 = v57;
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB48(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  sub_10018BA8C();
  a1 = &v66;
  v40 = Sequence.compactMapToSet<A>(_:)();
  v6 = v40;
  v66 = _swiftEmptyArrayStorage;
  v41 = v59;
  if (v59)
  {
    a2 = 0;
    a3 = v64;
    v42 = v63 + 32;
    v62 = v40 & 0xC000000000000001;
    v43 = v40 + 56;
    while (1)
    {
      if (v65)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(a3 + 16))
        {
          goto LABEL_72;
        }

        v44 = *(v42 + 8 * a2);
      }

      v45 = v44;
      if (__OFADD__(a2++, 1))
      {
        goto LABEL_71;
      }

      v47 = [v44 remObjectID];
      if (v47)
      {
        v48 = v47;
        if (!v62)
        {
          if (*(v6 + 16))
          {
            v50 = NSObject._rawHashValue(seed:)(*(v6 + 40));
            v51 = -1 << *(v6 + 32);
            v52 = v50 & ~v51;
            if ((*(v43 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
            {
              v53 = ~v51;
              while (1)
              {
                v54 = *(*(v6 + 48) + 8 * v52);
                a1 = static NSObject.== infix(_:_:)();

                if (a1)
                {
                  break;
                }

                v52 = (v52 + 1) & v53;
                if (((*(v43 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
                {
                  goto LABEL_61;
                }
              }

              a3 = v64;
              v42 = v63 + 32;
              v41 = v59;
              goto LABEL_47;
            }
          }

LABEL_61:

          a3 = v64;
          v42 = v63 + 32;
          v41 = v59;
LABEL_62:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v55 = *(v66 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = &v66;
          specialized ContiguousArray._endMutation()();
          goto LABEL_47;
        }

        a1 = v47;
        v49 = __CocoaSet.contains(_:)();

        if ((v49 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

LABEL_47:
      if (a2 == v41)
      {
        v29 = v66;
        break;
      }
    }
  }

  v66 = v57;
  sub_100271930(v29);
  return v66;
}

void *sub_1002679C8(uint64_t a1)
{
  v2 = _s9UtilitiesO12SortingStyleOMa();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A4ED8(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      goto LABEL_9;
    }

    sub_1001EB4C4(v5);
    return _swiftEmptyArrayStorage;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_9:
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007953F0;
    *(v7 + 32) = swift_getKeyPath();
    sub_1001EB4C4(v5);
    return v7;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001EB4C4(v5);
  if (qword_100936818 != -1)
  {
    swift_once();
  }

  v7 = qword_100975368;

  return v7;
}

uint64_t sub_100267BA0(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = _s9UtilitiesO12SortingStyleOMa();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A4ED8(a1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x1B) != 0)
  {
    sub_1001EB4C4(v13);
LABEL_3:
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    v16 = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    result = v15;
    *(v15 + 32) = v16;
    return result;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_3;
  }

  (*(v3 + 32))(v9, v13, v2);
  (*(v3 + 16))(v6, v9, v2);
  v18 = (*(v3 + 88))(v6, v2);
  if (v18 == enum case for REMRemindersListDataView.SortingDirection.ascending(_:) || v18 == enum case for REMRemindersListDataView.SortingDirection.descending(_:))
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    *(v20 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    (*(v3 + 8))(v9, v2);
    return v20;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100267E88(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_10038E740(_swiftEmptyArrayStorage);
  if (a3 >> 62)
  {
    goto LABEL_73;
  }

  v64 = a3 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v65 = a3 & 0xC000000000000001;
    v63 = a3;
    if (i)
    {
      v8 = 0;
      v60 = a2;
      v61 = a2 & 0xC000000000000001;
      v58 = a1;
      while (1)
      {
        a2 = v8;
        while (1)
        {
          if (v65)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *(v64 + 16))
            {
              goto LABEL_68;
            }

            v10 = *(a3 + 8 * a2 + 32);
          }

          v11 = v10;
          v8 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v12 = [v10 remObjectID];
          if (v12)
          {
            break;
          }

          v9 = v11;
LABEL_7:

          ++a2;
          if (v8 == i)
          {
            a1 = v58;
            goto LABEL_29;
          }
        }

        v9 = v12;
        v13 = i;
        if (v61)
        {
          break;
        }

        if (!*(v60 + 16))
        {
          goto LABEL_20;
        }

        a1 = v60;
        v16 = sub_10002B924(v12);
        if ((v17 & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = *(*(v60 + 56) + 8 * v16);

        if (!v15)
        {
          goto LABEL_20;
        }

LABEL_22:
        if (*(v15 + 24))
        {
          v18 = *(v15 + 16);
          v19 = *(v15 + 24);
        }

        else
        {
          v20._countAndFlagsBits = UUID.uuidString.getter();
          v66 = 0x7C6C61636F6CLL;
          v67 = 0xE600000000000000;
          String.append(_:)(v20);

          v18 = v66;
          v19 = v67;
        }

        v21 = v11;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v6;
        v23 = v21;
        sub_1002C7794(v21, v18, v19, isUniquelyReferenced_nonNull_native);

        v24 = v66;
        v25._countAndFlagsBits = UUID.uuidString.getter();
        v66 = 0x7C6C61636F6CLL;
        v67 = 0xE600000000000000;
        String.append(_:)(v25);

        a2 = v66;
        v26 = v67;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v24;
        sub_1002C7794(v23, a2, v26, v27);

        v6 = v66;
        i = v13;
        v28 = v8 == v13;
        a1 = v58;
        a3 = v63;
        if (v28)
        {
          goto LABEL_29;
        }
      }

      v14 = v12;
      a1 = __CocoaDictionary.lookup(_:)();

      if (a1)
      {
        type metadata accessor for RDElementManualSortID();
        swift_dynamicCast();
        v15 = v66;
        if (v66)
        {
          goto LABEL_22;
        }
      }

LABEL_20:

      i = v13;
      a3 = v63;
      goto LABEL_7;
    }

LABEL_29:
    v59 = i;
    v29 = _swiftEmptyArrayStorage;
    v66 = _swiftEmptyArrayStorage;
    a3 = *(a1 + 16);
    if (!a3)
    {
      break;
    }

    v30 = 0;
    v31 = a1 + 40;
    v57 = _swiftEmptyArrayStorage;
LABEL_31:
    v32 = (v31 + 16 * v30);
    v33 = v30;
    while (v33 < a3)
    {
      v30 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_70;
      }

      if (*(v6 + 16))
      {
        v34 = *(v32 - 1);
        a2 = *v32;

        v35 = v34;
        a1 = v6;
        v36 = sub_100005F4C(v35, a2);
        if (v37)
        {
          v38 = *(*(v6 + 56) + 8 * v36);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          a1 = &v66;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v57 = v66;

          v29 = _swiftEmptyArrayStorage;
          if (v30 != a3)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }
      }

      ++v33;
      v32 += 2;
      if (v30 == a3)
      {
        v29 = _swiftEmptyArrayStorage;
        goto LABEL_44;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v64 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_44:

  v66 = v57;
  sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB48(&qword_10093F3B0, &qword_10093F3A8, qword_1007AC5F0);
  sub_10018BA8C();
  a1 = &v66;
  v40 = Sequence.compactMapToSet<A>(_:)();
  v6 = v40;
  v66 = _swiftEmptyArrayStorage;
  v41 = v59;
  if (v59)
  {
    a2 = 0;
    a3 = v64;
    v42 = v63 + 32;
    v62 = v40 & 0xC000000000000001;
    v43 = v40 + 56;
    while (1)
    {
      if (v65)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(a3 + 16))
        {
          goto LABEL_72;
        }

        v44 = *(v42 + 8 * a2);
      }

      v45 = v44;
      if (__OFADD__(a2++, 1))
      {
        goto LABEL_71;
      }

      v47 = [v44 remObjectID];
      if (v47)
      {
        v48 = v47;
        if (!v62)
        {
          if (*(v6 + 16))
          {
            v50 = NSObject._rawHashValue(seed:)(*(v6 + 40));
            v51 = -1 << *(v6 + 32);
            v52 = v50 & ~v51;
            if ((*(v43 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
            {
              v53 = ~v51;
              while (1)
              {
                v54 = *(*(v6 + 48) + 8 * v52);
                a1 = static NSObject.== infix(_:_:)();

                if (a1)
                {
                  break;
                }

                v52 = (v52 + 1) & v53;
                if (((*(v43 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
                {
                  goto LABEL_61;
                }
              }

              a3 = v64;
              v42 = v63 + 32;
              v41 = v59;
              goto LABEL_47;
            }
          }

LABEL_61:

          a3 = v64;
          v42 = v63 + 32;
          v41 = v59;
LABEL_62:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v55 = *(v66 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = &v66;
          specialized ContiguousArray._endMutation()();
          goto LABEL_47;
        }

        a1 = v47;
        v49 = __CocoaSet.contains(_:)();

        if ((v49 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

LABEL_47:
      if (a2 == v41)
      {
        v29 = v66;
        break;
      }
    }
  }

  v66 = v57;
  sub_100272080(v29);
  return v66;
}

uint64_t sub_100268564(unint64_t isUniquelyReferenced_nonNull_native, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v209 = a4;
  v203 = a3;
  v197 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v196 = *(v197 - 8);
  v8 = *(v196 + 64);
  __chkstk_darwin(v197);
  v194 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v193 = &v178 - v11;
  v213 = type metadata accessor for UUID();
  v195 = *(v213 - 8);
  v12 = *(v195 + 64);
  __chkstk_darwin(v213);
  v184 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v212 = &v178 - v15;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v16 = *(Subtasks - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(Subtasks);
  v191 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v178 - v20;
  v205 = _s9UtilitiesO12SortingStyleOMa();
  v22 = *(*(v205 - 8) + 64);
  __chkstk_darwin(v205);
  v24 = (&v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v27 = (&v178 - v26);
  __chkstk_darwin(v28);
  v190 = &v178 - v29;
  __chkstk_darwin(v30);
  v207 = &v178 - v31;
  __chkstk_darwin(v32);
  v199 = &v178 - v33;
  __chkstk_darwin(v34);
  v198 = &v178 - v35;
  __chkstk_darwin(v36);
  v38 = &v178 - v37;
  if (qword_100935D90 != -1)
  {
    goto LABEL_148;
  }

LABEL_2:
  v215 = v24;
  v200 = a2;
  v230 = qword_10093F368;
  v39 = qword_100935D98;

  if (v39 != -1)
  {
    swift_once();
  }

  v229 = qword_10093F370;

  v40 = v209;
  v41 = sub_1002679C8(v209);
  sub_100272098(v41);
  sub_1001A4ED8(v40, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    sub_1001EB4C4(v38);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    sub_1001EB4C4(v38);
    if (qword_100936820 != -1)
    {
      goto LABEL_157;
    }

    goto LABEL_7;
  }

  for (i = _swiftEmptyArrayStorage; ; i = )
  {
    sub_100272098(i);
    sub_1000F5104(&qword_10093F550, &unk_10079DC30);
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    v44 = *(v16 + 16);
    v45 = Subtasks;
    v44(v21, v203, Subtasks);
    v46 = *(v16 + 88);
    v192 = (v16 + 88);
    v187 = v46;
    v47 = v46(v21, v45);
    if (v47 != enum case for REMRemindersListDataView.FetchSubtasks.off(_:) && v47 != enum case for REMRemindersListDataView.FetchSubtasks.on(_:) && v47 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      goto LABEL_164;
    }

    v188 = v44;
    v189 = (v16 + 16);
    v186 = enum case for REMRemindersListDataView.FetchSubtasks.off(_:);
    if (v47 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
    {
      v48 = 33;
    }

    else
    {
      v48 = 32;
    }

    v49 = sub_10055BD54(isUniquelyReferenced_nonNull_native, v48);
    v50 = type metadata accessor for REMCDSavedReminder();
    v16 = [objc_allocWithZone(NSFetchRequest) init];
    v206 = v50;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [ObjCClassFromMetadata entity];
    [v16 setEntity:v51];

    [v16 setAffectedStores:0];
    [v16 setPredicate:v49];

    v52 = v230;
    v183 = v27;
    if (v230 >> 62)
    {
      v172 = v230;
      v173 = _CocoaArrayWrapper.endIndex.getter();
      v52 = v172;
      v38 = v173;
    }

    else
    {
      v38 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v218 = v52;
    v185 = isUniquelyReferenced_nonNull_native;
    v210 = v16;
    if (v38)
    {
      a2 = v52;
      *&v224 = _swiftEmptyArrayStorage;
      v24 = &v224;
      sub_100010D04(0, v38 & ~(v38 >> 63), 0);
      if ((v38 & 0x8000000000000000) == 0)
      {
        v16 = 0;
        v27 = v224;
        v53 = a2;
        isUniquelyReferenced_nonNull_native = a2 & 0xC000000000000001;
        *&v217 = a2 & 0xFFFFFFFFFFFFFF8;
        v5 = &type metadata for String;
        while (1)
        {
          v4 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_26;
          }

          if (v16 >= *(v217 + 16))
          {
            break;
          }

          v54 = *(v53 + 8 * v16 + 32);

LABEL_26:
          v55 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v56)
          {
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v174._object = 0x80000001007EC120;
            v174._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v174);
            v228 = v54;
            goto LABEL_162;
          }

          v24 = v55;
          v57 = v56;
          v221 = &type metadata for String;

          *&aBlock = v24;
          *(&aBlock + 1) = v57;
          *&v224 = v27;
          v21 = v27[2];
          v58 = v27[3];
          a2 = v21 + 1;
          if (v21 >= v58 >> 1)
          {
            v24 = &v224;
            sub_100010D04((v58 > 1), v21 + 1, 1);
            v27 = v224;
          }

          v27[2] = a2;
          sub_100005EE0(&aBlock, &v27[4 * v21 + 4]);
          ++v16;
          v53 = v218;
          if (v4 == v38)
          {
            v16 = v210;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        swift_once();
        goto LABEL_2;
      }

LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

LABEL_31:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 setPropertiesToFetch:isa];

    v21 = v229;
    if (v229 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v217 = v21;
    if (v38)
    {
      *&v224 = _swiftEmptyArrayStorage;
      v24 = &v224;
      sub_100026EF4(0, v38 & ~(v38 >> 63), 0);
      if ((v38 & 0x8000000000000000) == 0)
      {
        a2 = 0;
        v16 = v224;
        v60 = v21;
        v216 = v21 & 0xC000000000000001;
        v214 = v21 & 0xFFFFFFFFFFFFFF8;
        v27 = v38;
        while (1)
        {
          v38 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_139;
          }

          if (v216)
          {
            v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *(v214 + 16))
            {
              goto LABEL_144;
            }

            v61 = *(v60 + 8 * a2 + 32);
          }

          v24 = v61;
          v62 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v63)
          {
            break;
          }

          v5 = v62;
          v21 = v63;

          *&v224 = v16;
          v4 = *(v16 + 16);
          v64 = *(v16 + 24);
          isUniquelyReferenced_nonNull_native = v4 + 1;
          if (v4 >= v64 >> 1)
          {
            v24 = &v224;
            sub_100026EF4((v64 > 1), v4 + 1, 1);
            v16 = v224;
          }

          *(v16 + 16) = isUniquelyReferenced_nonNull_native;
          v65 = (v16 + 16 * v4);
          v65[4] = v5;
          v65[5] = v21;
          ++a2;
          v60 = v217;
          if (v38 == v27)
          {
            isUniquelyReferenced_nonNull_native = v207;
            goto LABEL_47;
          }
        }

        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v175._object = 0x80000001007EC120;
        v175._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v175);
        v228 = v61;
LABEL_162:
        sub_1000F5104(&qword_10093D5C8, &unk_1007A76F0);
        _print_unlocked<A, B>(_:_:)();
        LODWORD(v177) = 0;
        p_aBlock = 19;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_163:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_164;
      }

LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v16 = _swiftEmptyArrayStorage;
    isUniquelyReferenced_nonNull_native = v207;
LABEL_47:
    v66 = Array._bridgeToObjectiveC()().super.isa;

    v67 = v210;
    [v210 setRelationshipKeyPathsForPrefetching:v66];

    v68 = sub_100267BA0(v209);
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v69 = Array._bridgeToObjectiveC()().super.isa;

    [v67 setSortDescriptors:v69];

    v70 = v208;
    v71 = NSManagedObjectContext.fetch<A>(_:)();
    v5 = v70;
    if (v70)
    {

      return v68;
    }

    v72 = v71;

    v228 = _swiftEmptyArrayStorage;
    v227 = _swiftEmptyDictionarySingleton;
    v38 = v72 >> 62;
    v21 = v72;
    if (!(v72 >> 62))
    {
      v27 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_51;
    }

LABEL_154:
    v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_51:
    v24 = v215;
    v73 = v209;
    v74 = v198;
    v206 = v21;
    v179 = v38;
    if (!v27)
    {
      break;
    }

    v216 = v21 & 0xC000000000000001;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
      a2 = v75;
      v24 = [v75 account];

      v180 = v5;
      v182 = v24;
      if (v24)
      {
        v181 = [v24 remObjectID];
      }

      else
      {
        v181 = 0;
      }

      v5 = 0;
      v204 = v21 & 0xFFFFFFFFFFFFFF8;
      v210 = (v195 + 8);
      v4 = _swiftEmptyArrayStorage;
      v202 = xmmword_1007953F0;
      v214 = v27;
      while (2)
      {
        if (v216)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v204 + 16))
          {
            goto LABEL_146;
          }

          v78 = *(v21 + 8 * v5 + 32);
        }

        v16 = v78;
        v27 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_145;
        }

        v79 = [v78 parentSavedReminderIdentifier];
        if (!v79)
        {
          goto LABEL_77;
        }

        v80 = v212;
        v81 = v79;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v82 = UUID._bridgeToObjectiveC()().super.isa;
        v38 = [ObjCClassFromMetadata objectIDWithUUID:v82];

        (*v210)(v80, v213);
        if (!v38)
        {
LABEL_77:
          a2 = v16;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v228 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v228 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v96 = *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v21 = v206;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v4 = v228;
          goto LABEL_63;
        }

        if (v227[2].isa)
        {
          sub_10002B924(v38);
          if (v83)
          {
            a2 = sub_1002619F4(&aBlock, v38);
            if (*v84)
            {
              v85 = v84;
              v86 = v16;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v97 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                isUniquelyReferenced_nonNull_native = v207;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (a2)(&aBlock, 0);

LABEL_62:
              v21 = v206;
            }

            else
            {
              (a2)(&aBlock, 0);
            }

LABEL_63:
            ++v5;
            v24 = v215;
            if (v27 == v214)
            {
              v5 = v180;
              v73 = v209;
              v74 = v198;
              goto LABEL_95;
            }

            continue;
          }

          v208 = v4;
        }

        else
        {
          v208 = v4;
        }

        break;
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v4 = swift_allocObject();
      *(v4 + 16) = v202;
      *(v4 + 32) = v16;
      v16 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v227;
      *&aBlock = v227;
      a2 = sub_10002B924(v38);
      v88 = v24[2].isa;
      v89 = (v87 & 1) == 0;
      v90 = v88 + v89;
      if (__OFADD__(v88, v89))
      {
        goto LABEL_147;
      }

      v21 = v87;
      if (v24[3].isa >= v90)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = aBlock;
          if ((v87 & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        else
        {
          sub_100373A14();
          isUniquelyReferenced_nonNull_native = aBlock;
          if ((v21 & 1) == 0)
          {
            goto LABEL_89;
          }
        }
      }

      else
      {
        sub_10036AF5C(v90, isUniquelyReferenced_nonNull_native);
        v91 = sub_10002B924(v38);
        if ((v21 & 1) != (v92 & 1))
        {
          goto LABEL_163;
        }

        a2 = v91;
        isUniquelyReferenced_nonNull_native = aBlock;
        if ((v21 & 1) == 0)
        {
LABEL_89:
          *(isUniquelyReferenced_nonNull_native + 8 * (a2 >> 6) + 64) |= 1 << a2;
          *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * a2) = v38;
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * a2) = v4;

          v93 = *(isUniquelyReferenced_nonNull_native + 16);
          v94 = __OFADD__(v93, 1);
          v95 = v93 + 1;
          if (v94)
          {
            __break(1u);
            goto LABEL_152;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v95;
          goto LABEL_61;
        }
      }

      v76 = *(isUniquelyReferenced_nonNull_native + 56);
      v77 = *(v76 + 8 * a2);
      *(v76 + 8 * a2) = v4;

LABEL_61:
      v227 = isUniquelyReferenced_nonNull_native;
      v4 = v208;
      isUniquelyReferenced_nonNull_native = v207;
      goto LABEL_62;
    }

    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v75 = *(v21 + 32);
      goto LABEL_55;
    }

    __break(1u);
LABEL_157:
    swift_once();
LABEL_7:
    ;
  }

  v181 = 0;
  v182 = 0;
  v4 = _swiftEmptyArrayStorage;
LABEL_95:
  sub_1001A4ED8(v73, v74);
  v98 = swift_getEnumCaseMultiPayload();
  if (v98 - 2 < 3)
  {
    sub_1001EB4C4(v74);
    goto LABEL_99;
  }

  if (v98 >= 2)
  {
LABEL_99:
    v106 = v209;
    sub_1001A4ED8(v209, v199);
    sub_1001A4ED8(v106, isUniquelyReferenced_nonNull_native);
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_1001EB4C4(isUniquelyReferenced_nonNull_native);
      v112 = v106;
      v113 = v190;
      sub_1001A4ED8(v112, v190);
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        sub_1001EB4C4(v113);
        goto LABEL_113;
      }

      sub_1001EB4C4(v113);
      v114 = v181;
      if (v181)
      {
        v115 = v181;

        v116 = [v185 uuid];
        v117 = v184;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v118 = UUID.uuidString.getter();
        v120 = v119;
        (*(v195 + 8))(v117, v213);
        v226 = 0;
        v224 = 0u;
        v225 = 0u;
        v121 = swift_allocObject();
        *(v121 + 16) = 6;
        *(v121 + 24) = v118;
        *(v121 + 32) = v120;
        v122 = v200;
        *(v121 + 40) = v115;
        *(v121 + 48) = v122;
        *(v121 + 56) = &v224;
        v123 = swift_allocObject();
        *(v123 + 16) = sub_10026A4B4;
        *(v123 + 24) = v121;
        v222 = sub_1000529DC;
        v223 = v123;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v220 = sub_10000F160;
        v221 = &unk_1008EBF78;
        v124 = _Block_copy(&aBlock);
        v125 = v115;
        v126 = v122;

        [v126 performBlockAndWait:v124];
        _Block_release(v124);
        LOBYTE(v126) = swift_isEscapingClosureAtFileLocation();

        if (v126)
        {
          __break(1u);
          goto LABEL_159;
        }

        v127 = v226;
        v218 = v224;
        v217 = v225;

        v128 = v199;
        sub_1001EB4C4(v199);
        v129 = v217;
        *v128 = v218;
        *(v128 + 16) = v129;
        *(v128 + 32) = v127;
        *(v128 + 40) = v114;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (qword_100935D88 != -1)
        {
          swift_once();
        }

        v156 = type metadata accessor for Logger();
        sub_100006654(v156, qword_10093F350);
        v157 = v185;
        v27 = v185;

        v24 = Logger.logObject.getter();
        LOBYTE(v38) = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v38))
        {
          v21 = swift_slowAlloc();
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();
          *v21 = 138543618;
          *(v21 + 4) = v27;
          *isUniquelyReferenced_nonNull_native = v157;
          *(v21 + 12) = 2048;
          if (v179)
          {
LABEL_140:
            v158 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v158 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v169 = v27;

          *(v21 + 14) = v158;

          _os_log_impl(&_mh_execute_header, v24, v38, "[fetchReminderLitesOfTemplate] Could not fetch manual sort hint of .savedReminders without an accountObjectID {listID: %{public}@, cdReminders.count: %ld}", v21, 0x16u);
          sub_1000050A4(isUniquelyReferenced_nonNull_native, &unk_100938E70, &unk_100797230);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v170 = [objc_opt_self() newObjectID];
        v171 = v183;
        *v183 = 0u;
        *(v171 + 16) = 0u;
        *(v171 + 32) = 0;
        *(v171 + 40) = v170;
        swift_storeEnumTagMultiPayload();
        sub_10026A450(v171, v199);
      }

LABEL_112:
      v24 = v215;
LABEL_113:
      sub_1001A4ED8(v199, v24);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v121 = v24->isa;
        v135 = v24[1].isa;
        v137 = v24[2].isa;
        v136 = v24[3].isa;
        v138 = v24[4].isa;

        if (v121)
        {
          if (v182)
          {
            v216 = v138;
            *&v218 = v136;
            v208 = v4;
            *&v217 = v182;
            sub_1006B038C();
            v141 = v140;
            v142 = type metadata accessor for RDManualSortIDCache();
            v143 = v142;
            if (qword_100936508 != -1)
            {
              v142 = swift_once();
            }

            __chkstk_darwin(v142);
            *(&v178 - 4) = v143;
            *(&v178 - 3) = v141;
            OS_dispatch_queue.sync<A>(execute:)();
            v144 = aBlock;
            type metadata accessor for RDManualSortIDAdapter();
            swift_allocObject();
            v145 = sub_100214ECC(v144, v141, 0);
            *&aBlock = 0;
            __chkstk_darwin(v145);
            v146 = v200;
            *(&v178 - 4) = v147;
            *(&v178 - 3) = v146;
            p_aBlock = &aBlock;
            NSManagedObjectContext.performAndWait<A>(_:)();
            if (!v5)
            {
              if (!aBlock)
              {
                sub_10038DB14(_swiftEmptyArrayStorage);
              }

              goto LABEL_133;
            }

            v214 = v137;
            v215 = v135;

            if (qword_100935D88 == -1)
            {
LABEL_120:
              v148 = type metadata accessor for Logger();
              sub_100006654(v148, qword_10093F350);
              swift_errorRetain();
              v149 = Logger.logObject.getter();
              v150 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v149, v150))
              {
                v151 = swift_slowAlloc();
                v152 = swift_slowAlloc();
                *&aBlock = v152;
                *v151 = 136315138;
                swift_getErrorValue();
                v153 = Error.localizedDescription.getter();
                v155 = sub_10000668C(v153, v154, &aBlock);

                *(v151 + 4) = v155;
                _os_log_impl(&_mh_execute_header, v149, v150, "[fetchReminderLitesOfTemplate] Failed to fetch signed-in accounts {error: %s}", v151, 0xCu);
                sub_10000607C(v152);
              }

              else
              {
              }

LABEL_133:
              v159 = v208;

              v161 = sub_1001A595C(v160);

              sub_100394B34(v161);
              v163 = v162;

              v164 = sub_1002173A0(v163);

              v165 = sub_100267E88(v121, v164, v159);

              v4 = v165;
              goto LABEL_134;
            }

LABEL_159:
            swift_once();
            goto LABEL_120;
          }
        }
      }

      else
      {
        v139 = sub_1001EB4C4(v24);
      }

LABEL_134:
      __chkstk_darwin(v139);
      *(&v178 - 4) = v203;
      *(&v178 - 3) = &v227;
      v166 = v199;
      v167 = v182;
      p_aBlock = v199;
      v177 = v182;
      v68 = sub_1003DEE6C(sub_10026A3F0, (&v178 - 6), v4);

      sub_1001EB4C4(v166);
      goto LABEL_135;
    }

    v107 = v194;
    (*(v196 + 32))(v194, isUniquelyReferenced_nonNull_native, v197);
    v108 = sub_100263F6C();

    v109 = v191;
    v110 = Subtasks;
    v188(v191, v203, Subtasks);
    v111 = v187(v109, v110);
    if (v111 == v186)
    {
      goto LABEL_110;
    }

    if (v111 == enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
    {

      v130 = v227;
      v131 = sub_10038E754(_swiftEmptyArrayStorage);
      __chkstk_darwin(v131);
      p_aBlock = v194;
      sub_10031EDCC(v132, sub_10026A4C8, (&v178 - 4), v130);
      v134 = v133;
      v107 = v194;

      v227 = v134;
LABEL_111:
      (*(v196 + 8))(v107, v197);
      v4 = v108;
      goto LABEL_112;
    }

    if (v111 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
LABEL_110:

      goto LABEL_111;
    }

LABEL_164:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v99 = v196;
  v100 = v193;
  v101 = (*(v196 + 32))(v193, v198, v197);
  *&aBlock = _swiftEmptyDictionarySingleton;
  __chkstk_darwin(v101);
  v102 = v4;
  v103 = v203;
  *(&v178 - 6) = v209;
  *(&v178 - 5) = v103;
  *(&v178 - 4) = &v227;
  *(&v178 - 3) = &aBlock;
  sub_1003DEEBC(sub_10026A3AC, (&v178 - 8), v102);
  sub_1000F5104(&unk_1009430F0, qword_10079DC40);
  sub_10000CB48(&qword_10093F3A0, &unk_1009430F0, qword_10079DC40);
  v104 = Array<A>.sorted(by:)();

  __chkstk_darwin(v105);
  *(&v178 - 4) = v103;
  *(&v178 - 3) = &aBlock;
  p_aBlock = v100;
  v177 = &v227;
  v68 = sub_1003DF230(sub_10026A3D0, (&v178 - 6), v104);

  (*(v99 + 8))(v100, v197);
LABEL_135:

  return v68;
}

uint64_t sub_10026A450(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO12SortingStyleOMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026A4E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026A52C()
{
  v0 = REMRemindersListDataView.TemplateSectionsInvocation.Parameters.templateObjectID.getter();
  if (qword_1009360E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for REMCDTemplateSection();
  v1 = sub_1004263A0();
  sub_1004267FC();
  v2 = sub_100425A50(v0, 1);
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  [v3 setPredicate:v2];

  sub_10003450C(v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setPropertiesToFetch:isa];

  v6 = Array._bridgeToObjectiveC()().super.isa;
  [v3 setRelationshipKeyPathsForPrefetching:v6];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v7 = Array._bridgeToObjectiveC()().super.isa;
  [v3 setSortDescriptors:v7];

  v8 = NSManagedObjectContext.fetch<A>(_:)();

  return v8;
}

uint64_t sub_10026A748(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_10038EEB0(_swiftEmptyArrayStorage);
  if (a3 >> 62)
  {
    goto LABEL_73;
  }

  v64 = a3 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v65 = a3 & 0xC000000000000001;
    v63 = a3;
    if (i)
    {
      v8 = 0;
      v60 = a2;
      v61 = a2 & 0xC000000000000001;
      v58 = a1;
      while (1)
      {
        a2 = v8;
        while (1)
        {
          if (v65)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a2 >= *(v64 + 16))
            {
              goto LABEL_68;
            }

            v10 = *(a3 + 8 * a2 + 32);
          }

          v11 = v10;
          v8 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v12 = [v10 remObjectID];
          if (v12)
          {
            break;
          }

          v9 = v11;
LABEL_7:

          ++a2;
          if (v8 == i)
          {
            a1 = v58;
            goto LABEL_29;
          }
        }

        v9 = v12;
        v13 = i;
        if (v61)
        {
          break;
        }

        if (!*(v60 + 16))
        {
          goto LABEL_20;
        }

        a1 = v60;
        v16 = sub_10002B924(v12);
        if ((v17 & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = *(*(v60 + 56) + 8 * v16);

        if (!v15)
        {
          goto LABEL_20;
        }

LABEL_22:
        if (*(v15 + 24))
        {
          v18 = *(v15 + 16);
          v19 = *(v15 + 24);
        }

        else
        {
          v20._countAndFlagsBits = UUID.uuidString.getter();
          v66 = 0x7C6C61636F6CLL;
          v67 = 0xE600000000000000;
          String.append(_:)(v20);

          v18 = v66;
          v19 = v67;
        }

        v21 = v11;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v6;
        v23 = v21;
        sub_1002C8188(v21, v18, v19, isUniquelyReferenced_nonNull_native);

        v24 = v66;
        v25._countAndFlagsBits = UUID.uuidString.getter();
        v66 = 0x7C6C61636F6CLL;
        v67 = 0xE600000000000000;
        String.append(_:)(v25);

        a2 = v66;
        v26 = v67;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v24;
        sub_1002C8188(v23, a2, v26, v27);

        v6 = v66;
        i = v13;
        v28 = v8 == v13;
        a1 = v58;
        a3 = v63;
        if (v28)
        {
          goto LABEL_29;
        }
      }

      v14 = v12;
      a1 = __CocoaDictionary.lookup(_:)();

      if (a1)
      {
        type metadata accessor for RDElementManualSortID();
        swift_dynamicCast();
        v15 = v66;
        if (v66)
        {
          goto LABEL_22;
        }
      }

LABEL_20:

      i = v13;
      a3 = v63;
      goto LABEL_7;
    }

LABEL_29:
    v59 = i;
    v29 = _swiftEmptyArrayStorage;
    v66 = _swiftEmptyArrayStorage;
    a3 = *(a1 + 16);
    if (!a3)
    {
      break;
    }

    v30 = 0;
    v31 = a1 + 40;
    v57 = _swiftEmptyArrayStorage;
LABEL_31:
    v32 = (v31 + 16 * v30);
    v33 = v30;
    while (v33 < a3)
    {
      v30 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_70;
      }

      if (*(v6 + 16))
      {
        v34 = *(v32 - 1);
        a2 = *v32;

        v35 = v34;
        a1 = v6;
        v36 = sub_100005F4C(v35, a2);
        if (v37)
        {
          v38 = *(*(v6 + 56) + 8 * v36);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          a1 = &v66;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v57 = v66;

          v29 = _swiftEmptyArrayStorage;
          if (v30 != a3)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }
      }

      ++v33;
      v32 += 2;
      if (v30 == a3)
      {
        v29 = _swiftEmptyArrayStorage;
        goto LABEL_44;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v64 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_44:

  v66 = v57;
  sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CB48(&qword_10093F3C0, &qword_10093F3B8, &unk_10079DDE0);
  sub_10018BA8C();
  a1 = &v66;
  v40 = Sequence.compactMapToSet<A>(_:)();
  v6 = v40;
  v66 = _swiftEmptyArrayStorage;
  v41 = v59;
  if (v59)
  {
    a2 = 0;
    a3 = v64;
    v42 = v63 + 32;
    v62 = v40 & 0xC000000000000001;
    v43 = v40 + 56;
    while (1)
    {
      if (v65)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(a3 + 16))
        {
          goto LABEL_72;
        }

        v44 = *(v42 + 8 * a2);
      }

      v45 = v44;
      if (__OFADD__(a2++, 1))
      {
        goto LABEL_71;
      }

      v47 = [v44 remObjectID];
      if (v47)
      {
        v48 = v47;
        if (!v62)
        {
          if (*(v6 + 16))
          {
            v50 = NSObject._rawHashValue(seed:)(*(v6 + 40));
            v51 = -1 << *(v6 + 32);
            v52 = v50 & ~v51;
            if ((*(v43 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
            {
              v53 = ~v51;
              while (1)
              {
                v54 = *(*(v6 + 48) + 8 * v52);
                a1 = static NSObject.== infix(_:_:)();

                if (a1)
                {
                  break;
                }

                v52 = (v52 + 1) & v53;
                if (((*(v43 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
                {
                  goto LABEL_61;
                }
              }

              a3 = v64;
              v42 = v63 + 32;
              v41 = v59;
              goto LABEL_47;
            }
          }

LABEL_61:

          a3 = v64;
          v42 = v63 + 32;
          v41 = v59;
LABEL_62:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v55 = *(v66 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = &v66;
          specialized ContiguousArray._endMutation()();
          goto LABEL_47;
        }

        a1 = v47;
        v49 = __CocoaSet.contains(_:)();

        if ((v49 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

LABEL_47:
      if (a2 == v41)
      {
        v29 = v66;
        break;
      }
    }
  }

  v66 = v57;
  sub_1002722AC(v29);
  return v66;
}