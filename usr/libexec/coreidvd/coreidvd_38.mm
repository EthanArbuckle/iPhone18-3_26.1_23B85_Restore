uint64_t sub_1003CACF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  sub_10000BA08(v10, v10[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v8 = v7;
  sub_10000BB78(v10);
  result = sub_10000BB78(a1);
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_1003CADBC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  sub_10000BA08(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10001F370(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_10000BB78(v6);
}

void *sub_1003CAE70@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

Swift::Int sub_1003CAE7C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003CAEC8()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_1003CAED0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003CAF18@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1003CAF24(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_100842B88, &qword_1006DFFE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1003CE2A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[0] = a2;
  v13[1] = a3;
  sub_1003CE350();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1003CB078(uint64_t a1)
{
  v2 = sub_1003CE2A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CB0B4(uint64_t a1)
{
  v2 = sub_1003CE2A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1003CB0F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1003CE134(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1003CB138()
{
  v1[266] = v0;
  v2 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v1[267] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[268] = swift_task_alloc();
  v4 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v1[269] = swift_task_alloc();
  v1[270] = swift_task_alloc();
  v1[271] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[272] = v5;
  v6 = *(v5 - 8);
  v1[273] = v6;
  v7 = *(v6 + 64) + 15;
  v1[274] = swift_task_alloc();
  v8 = sub_100007224(&qword_100842B40, &qword_1006DFD28);
  v1[275] = v8;
  v9 = *(v8 - 8);
  v1[276] = v9;
  v10 = *(v9 + 64) + 15;
  v1[277] = swift_task_alloc();
  v11 = type metadata accessor for URL.DirectoryHint();
  v1[278] = v11;
  v12 = *(v11 - 8);
  v1[279] = v12;
  v13 = *(v12 + 64) + 15;
  v1[280] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v1[281] = v14;
  v15 = *(v14 - 8);
  v1[282] = v15;
  v16 = *(v15 + 64) + 15;
  v1[283] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v1[284] = v17;
  v18 = *(v17 - 8);
  v1[285] = v18;
  v19 = *(v18 + 64) + 15;
  v1[286] = swift_task_alloc();

  return _swift_task_switch(sub_1003CB400, 0, 0);
}

uint64_t sub_1003CB400()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.useHardcodedTermsAndConditions.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[286];
    v5 = v0[283];
    v6 = v0[280];
    v7 = v0[277];
    v8 = v0[274];
    v9 = v0[271];
    v10 = v0[270];
    v11 = v0[269];
    v12 = v0[268];

    v13 = v0[1];

    return v13(0xD00000000000007BLL, 0x8000000100714A40);
  }

  else
  {
    v0[287] = *(v0[266] + 16);
    v15 = swift_task_alloc();
    v0[288] = v15;
    *v15 = v0;
    v15[1] = sub_1003CB5CC;

    return sub_1005B16AC((v0 + 2), 0);
  }
}

uint64_t sub_1003CB5CC()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 2304);
  v5 = *v1;
  v3[289] = v0;
  v63 = v2[2];
  v61 = v2[3];
  v57 = v2[4];
  v55 = v2[5];
  v6 = v3[6];
  v7 = v3[7];
  v50 = v2[8];
  v8 = v3[9];
  v46 = v2[10];
  v44 = v2[11];
  v59 = *(v3 + 7);
  v60 = *(v3 + 6);
  v35 = v2[16];
  v62 = v2[17];
  v58 = v2[18];
  v56 = v2[19];
  v54 = v2[20];
  v53 = v2[21];
  v52 = v2[22];
  v51 = *(v3 + 184);
  v49 = v2[24];
  v48 = *(v3 + 200);
  v47 = v2[26];
  v45 = v2[27];
  v43 = v2[28];
  v42 = *(v3 + 232);
  v41 = v2[30];
  v40 = *(v3 + 248);
  v39 = v2[32];
  v36 = *(v3 + 264);
  v34 = v2[34];
  v31 = *(v3 + 280);
  v30 = v2[36];
  v32 = *(v3 + 20);
  v33 = *(v3 + 19);
  v37 = *(v3 + 22);
  v38 = *(v3 + 21);
  v9 = *(v3 + 296);
  v29 = v2[46];
  v28 = *(v3 + 376);
  v27 = v2[48];
  v26 = *(v3 + 392);
  v10 = *(v3 + 393);
  v11 = v2[50];
  v12 = *(v3 + 408);
  v13 = v2[52];
  v24 = *(v3 + 59);
  v25 = *(v3 + 61);
  v22 = *(v3 + 67);
  v23 = *(v3 + 63);
  v19 = *(v3 + 28);
  v20 = *(v3 + 27);
  v21 = *(v3 + 65);
  v14 = *(v3 + 424);
  v15 = *(v3 + 464);

  if (v0)
  {

    return _swift_task_switch(sub_1003CDA70, 0, 0);
  }

  else
  {
    v3[69] = v63;
    v3[70] = v61;
    v3[71] = v57;
    v3[72] = v55;
    v3[75] = v50;
    v3[77] = v46;
    v3[78] = v44;
    v3[83] = v35;
    *(v3 + 79) = v60;
    *(v3 + 81) = v59;
    v3[73] = v6;
    v3[74] = v7;
    v3[76] = v8;
    v3[84] = v62;
    v3[85] = v58;
    v3[86] = v56;
    v3[87] = v54;
    v3[88] = v53;
    v3[89] = v52;
    *(v3 + 720) = v51;
    v3[91] = v49;
    *(v3 + 736) = v48;
    v3[93] = v47;
    v3[94] = v45;
    v3[95] = v43;
    *(v3 + 768) = v42;
    v3[97] = v41;
    *(v3 + 784) = v40;
    v3[99] = v39;
    *(v3 + 800) = v36;
    v3[101] = v34;
    *(v3 + 816) = v31;
    v3[103] = v30;
    *(v3 + 832) = v9;
    *(v3 + 105) = v33;
    *(v3 + 107) = v32;
    *(v3 + 109) = v38;
    *(v3 + 111) = v37;
    v3[113] = v29;
    *(v3 + 912) = v28;
    v3[115] = v27;
    *(v3 + 928) = v26;
    *(v3 + 929) = v10;
    v3[117] = v11;
    *(v3 + 944) = v12;
    v3[119] = v13;
    *(v3 + 960) = v14;
    *(v3 + 121) = v20;
    *(v3 + 123) = v19;
    *(v3 + 1000) = v15;
    *(v3 + 63) = v24;
    *(v3 + 64) = v25;
    *(v3 + 65) = v23;
    *(v3 + 66) = v21;
    *(v3 + 67) = v22;
    sub_10000BE18((v3 + 69), &qword_100842B48, &unk_1006DFD30);
    v16 = swift_task_alloc();
    v3[290] = v16;
    *v16 = v5;
    v16[1] = sub_1003CBC3C;
    v17 = v3[287];

    return sub_1005B0A4C((v3 + 197), 0xD000000000000024, 0x8000000100714900, _swiftEmptyArrayStorage, 1, 0);
  }
}

uint64_t sub_1003CBC3C()
{
  v1 = *(*v0 + 2320);
  v3 = *v0;

  return _swift_task_switch(sub_1003CBD38, 0, 0);
}

uint64_t sub_1003CBD38()
{
  memcpy(v0 + 136, v0 + 197, 0x1E8uLL);
  if (sub_1000A257C((v0 + 136)) == 1)
  {
    (*(v0[273] + 104))(v0[274], enum case for DIPError.Code.internalError(_:), v0[272]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v1 = v0[273];
    v2 = v0[272];
    v3 = v0[271];
    v4 = v0[270];
    v5 = v0[268];
    v6 = v0[267];
    swift_getErrorValue();
    v7 = v0[258];
    v8 = v0[259];
    v9 = v0[260];
    Error.dipErrorCode.getter();
    v42 = *(v1 + 104);
    v42(v4, enum case for DIPError.Code.networkTimeOut(_:), v2);
    (*(v1 + 56))(v4, 0, 1, v2);
    v10 = *(v6 + 48);
    sub_100044D38(v3, v5);
    sub_100044D38(v4, v5 + v10);
    v11 = *(v1 + 48);
    v12 = v11(v5, 1, v2);
    v13 = v0[272];
    if (v12 == 1)
    {
      v14 = v0[271];
      sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
      if (v11(v5 + v10, 1, v13) == 1)
      {
        sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
        v31 = v0[286];
        v32 = v0[283];
        v33 = v0[280];
        v36 = v0[277];
        v37 = v0[271];
        v34 = v0[270];
        v39 = v0[269];
        v41 = v0[268];
        v42(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v35 = v0[1];

        return v35();
      }
    }

    else
    {
      sub_100044D38(v0[268], v0[269]);
      if (v11(v5 + v10, 1, v13) != 1)
      {
        v25 = v0[274];
        v26 = v0[273];
        v27 = v0[272];
        v28 = v0[270];
        v29 = v0[269];
        v38 = v0[271];
        v40 = v0[268];
        (*(v26 + 32))(v25, v5 + v10, v27);
        sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v26 + 8);
        v30(v25, v27);
        sub_10000BE18(v28, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v38, &qword_10083B020, &unk_1006D8ED0);
        v30(v29, v27);
        sub_10000BE18(v40, &qword_10083B020, &unk_1006D8ED0);
        goto LABEL_12;
      }

      v21 = v0[273];
      v22 = v0[272];
      v23 = v0[271];
      v24 = v0[269];
      sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v23, &qword_10083B020, &unk_1006D8ED0);
      (*(v21 + 8))(v24, v22);
    }

    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_12;
  }

  v15 = v0[286];
  v16 = v0[285];
  v17 = v0[284];
  v0[291] = v0[194];
  UUID.init()();
  UUID.uuidString.getter();
  v0[292] = v18;
  (*(v16 + 8))(v15, v17);
  v19 = swift_task_alloc();
  v0[293] = v19;
  *v19 = v0;
  v19[1] = sub_1003CC3C0;

  return sub_1005D7070(1);
}

uint64_t sub_1003CC3C0(uint64_t a1)
{
  v2 = *(*v1 + 2344);
  v3 = *(*v1 + 2336);
  v5 = *v1;
  *(*v1 + 2352) = a1;

  return _swift_task_switch(sub_1003CC4E0, 0, 0);
}

uint64_t sub_1003CC4E0()
{
  if (v0[294])
  {
    v1 = v0[291];
    if (v1)
    {
      if (*(v1 + 16))
      {
        v2 = sub_10003ADCC(0xD000000000000023, 0x80000001007149E0);
        if (v3)
        {
          v4 = v0[283];
          v5 = v0[280];
          v6 = v0[279];
          v7 = v0[278];
          v8 = (*(v1 + 56) + 16 * v2);
          v9 = *v8;
          v10 = v8[1];

          sub_10000BE18((v0 + 197), &qword_100839998, &qword_1006DCAA0);
          v11._countAndFlagsBits = v9;
          v11._object = v10;
          String.append(_:)(v11);

          v0[261] = 0xD000000000000025;
          v0[262] = 0x8000000100714A10;
          (*(v6 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
          sub_10001F298();
          URL.appending<A>(path:directoryHint:)();
          (*(v6 + 8))(v5, v7);

          v12 = swift_task_alloc();
          v0[295] = v12;
          *v12 = v0;
          v12[1] = sub_1003CCD9C;
          v13 = v0[283];

          return sub_1005CACEC(v13);
        }
      }
    }

    v15 = v0[274];
    v16 = v0[273];
    v17 = v0[272];
    sub_10000BE18((v0 + 197), &qword_100839998, &qword_1006DCAA0);
    (*(v16 + 104))(v15, enum case for DIPError.Code.internalError(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v18 = v0[274];
    v19 = v0[273];
    v20 = v0[272];
    sub_10000BE18((v0 + 197), &qword_100839998, &qword_1006DCAA0);
    (*(v19 + 104))(v18, enum case for DIPError.Code.internalError(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v21 = v0[273];
  v22 = v0[272];
  v23 = v0[271];
  v24 = v0[270];
  v25 = v0[268];
  v26 = v0[267];
  swift_getErrorValue();
  v27 = v0[258];
  v28 = v0[259];
  v29 = v0[260];
  Error.dipErrorCode.getter();
  v56 = *(v21 + 104);
  v56(v24, enum case for DIPError.Code.networkTimeOut(_:), v22);
  (*(v21 + 56))(v24, 0, 1, v22);
  v30 = *(v26 + 48);
  sub_100044D38(v23, v25);
  sub_100044D38(v24, v25 + v30);
  v31 = *(v21 + 48);
  v32 = v31(v25, 1, v22);
  v33 = v0[272];
  if (v32 != 1)
  {
    sub_100044D38(v0[268], v0[269]);
    if (v31(v25 + v30, 1, v33) != 1)
    {
      v39 = v0[274];
      v40 = v0[273];
      v41 = v0[272];
      v42 = v0[270];
      v43 = v0[269];
      v52 = v0[271];
      v54 = v0[268];
      (*(v40 + 32))(v39, v25 + v30, v41);
      sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v40 + 8);
      v44(v39, v41);
      sub_10000BE18(v42, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v52, &qword_10083B020, &unk_1006D8ED0);
      v44(v43, v41);
      sub_10000BE18(v54, &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_17;
    }

    v35 = v0[273];
    v36 = v0[272];
    v37 = v0[271];
    v38 = v0[269];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v37, &qword_10083B020, &unk_1006D8ED0);
    (*(v35 + 8))(v38, v36);
    goto LABEL_15;
  }

  v34 = v0[271];
  sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v34, &qword_10083B020, &unk_1006D8ED0);
  if (v31(v25 + v30, 1, v33) != 1)
  {
LABEL_15:
    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_17;
  }

  sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
LABEL_17:
  v45 = v0[286];
  v48 = v0[283];
  v49 = v0[280];
  v50 = v0[277];
  v51 = v0[271];
  v46 = v0[270];
  v53 = v0[269];
  v55 = v0[268];
  v56(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v47 = v0[1];

  return v47();
}

uint64_t sub_1003CCD9C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 2360);
  v8 = *v3;
  v4[296] = a1;
  v4[297] = a2;
  v4[298] = v2;

  if (v2)
  {
    v6 = sub_1003CD558;
  }

  else
  {
    v6 = sub_1003CCEB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003CCEB8()
{
  v1 = v0[298];
  v2 = v0[297];
  v3 = v0[296];
  v4 = v0[277];
  v5 = v0[275];
  (*(v0[282] + 8))(v0[283], v0[281]);
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1003CDF84();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v9 = v0[294];
    sub_10000B90C(v0[296], v0[297]);

    v10 = v0[273];
    v11 = v0[272];
    v12 = v0[271];
    v13 = v0[270];
    v14 = v0[268];
    v15 = v0[267];
    swift_getErrorValue();
    v16 = v0[258];
    v17 = v0[259];
    v18 = v0[260];
    Error.dipErrorCode.getter();
    v63 = *(v10 + 104);
    v63(v13, enum case for DIPError.Code.networkTimeOut(_:), v11);
    (*(v10 + 56))(v13, 0, 1, v11);
    v19 = *(v15 + 48);
    sub_100044D38(v12, v14);
    sub_100044D38(v13, v14 + v19);
    v20 = *(v10 + 48);
    v21 = v20(v14, 1, v11);
    v22 = v0[272];
    if (v21 == 1)
    {
      v23 = v0[271];
      sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v23, &qword_10083B020, &unk_1006D8ED0);
      if (v20(v14 + v19, 1, v22) == 1)
      {
        sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
LABEL_12:
        v52 = v0[286];
        v55 = v0[283];
        v56 = v0[280];
        v57 = v0[277];
        v58 = v0[271];
        v53 = v0[270];
        v60 = v0[269];
        v62 = v0[268];
        v63(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v54 = v0[1];

        return v54();
      }
    }

    else
    {
      sub_100044D38(v0[268], v0[269]);
      if (v20(v14 + v19, 1, v22) != 1)
      {
        v46 = v0[274];
        v47 = v0[273];
        v48 = v0[272];
        v49 = v0[270];
        v50 = v0[269];
        v59 = v0[271];
        v61 = v0[268];
        (*(v47 + 32))(v46, v14 + v19, v48);
        sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v51 = *(v47 + 8);
        v51(v46, v48);
        sub_10000BE18(v49, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v59, &qword_10083B020, &unk_1006D8ED0);
        v51(v50, v48);
        sub_10000BE18(v61, &qword_10083B020, &unk_1006D8ED0);
        goto LABEL_12;
      }

      v42 = v0[273];
      v43 = v0[272];
      v44 = v0[271];
      v45 = v0[269];
      sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v44, &qword_10083B020, &unk_1006D8ED0);
      (*(v42 + 8))(v45, v43);
    }

    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_12;
  }

  v24 = v0[297];
  v25 = v0[296];
  v26 = v0[294];
  v27 = v0[277];
  v28 = v0[276];
  v29 = v0[275];

  JWSSignedJSON.payload.getter();
  sub_10000B90C(v25, v24);

  (*(v28 + 8))(v27, v29);
  v64 = v0[263];
  v30 = v0[264];
  v31 = v0[286];
  v32 = v0[283];
  v33 = v0[280];
  v34 = v0[277];
  v35 = v0[274];
  v36 = v0[271];
  v37 = v0[270];
  v38 = v0[269];
  v39 = v0[268];

  v40 = v0[1];

  return v40(v64, v30);
}

uint64_t sub_1003CD558()
{
  v1 = v0[294];
  (*(v0[282] + 8))(v0[283], v0[281]);

  v2 = v0[273];
  v3 = v0[272];
  v4 = v0[271];
  v5 = v0[270];
  v6 = v0[268];
  v7 = v0[267];
  v39 = v0[298];
  swift_getErrorValue();
  v8 = v0[258];
  v9 = v0[259];
  v10 = v0[260];
  Error.dipErrorCode.getter();
  v38 = *(v2 + 104);
  v38(v5, enum case for DIPError.Code.networkTimeOut(_:), v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v11 = *(v7 + 48);
  sub_100044D38(v4, v6);
  sub_100044D38(v5, v6 + v11);
  v12 = *(v2 + 48);
  v13 = v12(v6, 1, v3);
  v14 = v0[272];
  if (v13 == 1)
  {
    v15 = v0[271];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v15, &qword_10083B020, &unk_1006D8ED0);
    if (v12(v6 + v11, 1, v14) == 1)
    {
      sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100044D38(v0[268], v0[269]);
  if (v12(v6 + v11, 1, v14) == 1)
  {
    v16 = v0[273];
    v17 = v0[272];
    v18 = v0[271];
    v19 = v0[269];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);
    (*(v16 + 8))(v19, v17);
LABEL_6:
    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_8;
  }

  v20 = v0[274];
  v21 = v0[273];
  v22 = v0[272];
  v23 = v0[270];
  v24 = v0[269];
  v34 = v0[271];
  v36 = v0[268];
  (*(v21 + 32))(v20, v6 + v11, v22);
  sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v21 + 8);
  v25(v20, v22);
  sub_10000BE18(v23, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v34, &qword_10083B020, &unk_1006D8ED0);
  v25(v24, v22);
  sub_10000BE18(v36, &qword_10083B020, &unk_1006D8ED0);
LABEL_8:
  v26 = v0[286];
  v30 = v0[283];
  v31 = v0[280];
  v32 = v0[277];
  v33 = v0[271];
  v27 = v0[270];
  v35 = v0[269];
  v37 = v0[268];
  v38(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_1003CDA70()
{
  v1 = v0[273];
  v2 = v0[272];
  v3 = v0[271];
  v4 = v0[270];
  v5 = v0[268];
  v6 = v0[267];
  v38 = v0[289];
  swift_getErrorValue();
  v7 = v0[258];
  v8 = v0[259];
  v9 = v0[260];
  Error.dipErrorCode.getter();
  v37 = *(v1 + 104);
  v37(v4, enum case for DIPError.Code.networkTimeOut(_:), v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v10 = *(v6 + 48);
  sub_100044D38(v3, v5);
  sub_100044D38(v4, v5 + v10);
  v11 = *(v1 + 48);
  v12 = v11(v5, 1, v2);
  v13 = v0[272];
  if (v12 == 1)
  {
    v14 = v0[271];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
    if (v11(v5 + v10, 1, v13) == 1)
    {
      sub_10000BE18(v0[268], &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100044D38(v0[268], v0[269]);
  if (v11(v5 + v10, 1, v13) == 1)
  {
    v15 = v0[273];
    v16 = v0[272];
    v17 = v0[271];
    v18 = v0[269];
    sub_10000BE18(v0[270], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v17, &qword_10083B020, &unk_1006D8ED0);
    (*(v15 + 8))(v18, v16);
LABEL_6:
    sub_10000BE18(v0[268], &qword_100834B60, &qword_1006C0310);
    goto LABEL_8;
  }

  v19 = v0[274];
  v20 = v0[273];
  v21 = v0[272];
  v22 = v0[270];
  v23 = v0[269];
  v33 = v0[271];
  v35 = v0[268];
  (*(v20 + 32))(v19, v5 + v10, v21);
  sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v20 + 8);
  v24(v19, v21);
  sub_10000BE18(v22, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v33, &qword_10083B020, &unk_1006D8ED0);
  v24(v23, v21);
  sub_10000BE18(v35, &qword_10083B020, &unk_1006D8ED0);
LABEL_8:
  v25 = v0[286];
  v29 = v0[283];
  v30 = v0[280];
  v31 = v0[277];
  v32 = v0[271];
  v26 = v0[270];
  v34 = v0[269];
  v36 = v0[268];
  v37(v0[274], enum case for DIPError.Code.documentReaderTermsAndConditionsFetchFailed(_:), v0[272]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v27 = v0[1];

  return v27();
}

unint64_t sub_1003CDF84()
{
  result = qword_100842B50;
  if (!qword_100842B50)
  {
    sub_10000B870(&qword_100842B40, &qword_1006DFD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B50);
  }

  return result;
}

unint64_t sub_1003CE018()
{
  result = qword_100842B58;
  if (!qword_100842B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B58);
  }

  return result;
}

unint64_t sub_1003CE07C()
{
  result = qword_100842B60;
  if (!qword_100842B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B60);
  }

  return result;
}

unint64_t sub_1003CE0D4()
{
  result = qword_100842B68;
  if (!qword_100842B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B68);
  }

  return result;
}

void *sub_1003CE134(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100842B70, &qword_1006DFFD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_10000BA08(a1, a1[3]);
  sub_1003CE2A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    sub_1003CE2FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_10000BB78(a1);
  }

  return v9;
}

unint64_t sub_1003CE2A8()
{
  result = qword_100842B78;
  if (!qword_100842B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B78);
  }

  return result;
}

unint64_t sub_1003CE2FC()
{
  result = qword_100842B80;
  if (!qword_100842B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B80);
  }

  return result;
}

unint64_t sub_1003CE350()
{
  result = qword_100842B90;
  if (!qword_100842B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B90);
  }

  return result;
}

unint64_t sub_1003CE3B8()
{
  result = qword_100842B98;
  if (!qword_100842B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842B98);
  }

  return result;
}

unint64_t sub_1003CE410()
{
  result = qword_100842BA0;
  if (!qword_100842BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842BA0);
  }

  return result;
}

unint64_t sub_1003CE468()
{
  result = qword_100842BA8;
  if (!qword_100842BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842BA8);
  }

  return result;
}

void *sub_1003CE4C8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  v32 = v8;
  v30 = v8 + 16;
  v31 = (v8 + 8);
  v35 = a3;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v28 = v6;
  for (i = v10; ; v10 = i)
  {
    v37 = v18;
    if (!v14)
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v15)
        {
          goto LABEL_26;
        }

        v14 = *(v11 + 8 * v19);
        ++v17;
        if (v14)
        {
          v17 = v19;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

LABEL_11:
    (*(v32 + 16))(v10, *(v35 + 48) + *(v32 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v6);
    v33(&v38, v10);
    if (v4)
    {
      break;
    }

    v36 = 0;
    result = (*v31)(v10, v6);
    v20 = v38;
    v21 = *(v38 + 16);
    v18 = v37;
    v22 = v37[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_28;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v23 <= v18[3] >> 1)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v24 = v22 + v21;
      }

      else
      {
        v24 = v22;
      }

      result = sub_1003C63D0(result, v24, 1, v18);
      v18 = result;
      if (!*(v20 + 16))
      {
LABEL_4:

        if (v21)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    if ((v18[3] >> 1) - v18[2] < v21)
    {
      goto LABEL_30;
    }

    sub_100007224(&qword_10083C0A0, &unk_1006DA5C0);
    swift_arrayInitWithCopy();

    if (v21)
    {
      v25 = v18[2];
      v26 = __OFADD__(v25, v21);
      v27 = v25 + v21;
      if (v26)
      {
        goto LABEL_31;
      }

      v18[2] = v27;
    }

LABEL_5:
    v14 &= v14 - 1;
    v4 = v36;
    v6 = v28;
  }

  (*v31)(v10, v6);

LABEL_26:

  return v37;
}

uint64_t sub_1003CE7B4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  v37 = v8;
  v35 = v8 + 16;
  v36 = (v8 + 8);
  v40 = a3;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v33 = v6;
  for (i = v10; ; v10 = i)
  {
    v42 = v18;
    if (!v14)
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v15)
        {
          goto LABEL_26;
        }

        v14 = *(v11 + 8 * v19);
        ++v17;
        if (v14)
        {
          v17 = v19;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

LABEL_11:
    (*(v37 + 16))(v10, *(v40 + 48) + *(v37 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v6);
    v38(&v43, v10);
    if (v4)
    {
      break;
    }

    v41 = 0;
    result = (*v36)(v10, v6);
    v20 = v43;
    v21 = *(v43 + 16);
    v18 = v42;
    v22 = v42[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v23 <= v18[3] >> 1)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v18 = sub_1003C65F0(isUniquelyReferenced_nonNull_native, v25, 1, v18);
      if (!*(v20 + 16))
      {
LABEL_4:

        if (v21)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v26 = (v18[3] >> 1) - v18[2];
    result = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
    v27 = *(result - 8);
    if (v26 < v21)
    {
      goto LABEL_30;
    }

    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = *(v27 + 72);
    swift_arrayInitWithCopy();

    if (v21)
    {
      v30 = v18[2];
      v31 = __OFADD__(v30, v21);
      v32 = v30 + v21;
      if (v31)
      {
        goto LABEL_31;
      }

      v18[2] = v32;
    }

LABEL_5:
    v14 &= v14 - 1;
    v4 = v41;
    v6 = v33;
  }

  (*v36)(v10, v6);

LABEL_26:

  return v42;
}

uint64_t sub_1003CEAC8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v37 = v8;
  v35 = v8 + 16;
  v36 = (v8 + 8);
  v40 = a3;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v33 = v6;
  for (i = v10; ; v10 = i)
  {
    v42 = v18;
    if (!v14)
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v15)
        {
          goto LABEL_26;
        }

        v14 = *(v11 + 8 * v19);
        ++v17;
        if (v14)
        {
          v17 = v19;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

LABEL_11:
    (*(v37 + 16))(v10, *(v40 + 48) + *(v37 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v6);
    v38(&v43, v10);
    if (v4)
    {
      break;
    }

    v41 = 0;
    result = (*v36)(v10, v6);
    v20 = v43;
    v21 = *(v43 + 16);
    v18 = v42;
    v22 = v42[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v23 <= v18[3] >> 1)
    {
      if (!*(v20 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      v18 = sub_1003C65F0(isUniquelyReferenced_nonNull_native, v25, 1, v18);
      if (!*(v20 + 16))
      {
LABEL_4:

        if (v21)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v26 = (v18[3] >> 1) - v18[2];
    result = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
    v27 = *(result - 8);
    if (v26 < v21)
    {
      goto LABEL_30;
    }

    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = *(v27 + 72);
    swift_arrayInitWithCopy();

    if (v21)
    {
      v30 = v18[2];
      v31 = __OFADD__(v30, v21);
      v32 = v30 + v21;
      if (v31)
      {
        goto LABEL_31;
      }

      v18[2] = v32;
    }

LABEL_5:
    v14 &= v14 - 1;
    v4 = v41;
    v6 = v33;
  }

  (*v36)(v10, v6);

LABEL_26:

  return v42;
}

void *sub_1003CEDDC(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(type metadata accessor for MobileDocumentElement() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v23 = *(v6 + 72);
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = a1(&v25, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v25;
    v11 = *(v25 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_1003C6618(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for ISO18013ReaderRequest.ElementReference();
        v17 = *(result - 1);
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v20 = v8[2];
          v21 = __OFADD__(v20, v11);
          v22 = v20 + v11;
          if (v21)
          {
            goto LABEL_25;
          }

          v8[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v23;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_1003CEFE4(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentRequestType.Storage();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MobileDocumentRequestType.storage.getter();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for MobileDocumentRequestType.Storage.displayOnly(_:))
  {
    v16 = (*(v11 + 96))(v14, v10);
    v17 = &v32;
    v19 = *v14;
    v18 = v14[1];
    __chkstk_darwin(v16);
    v28 = v18;
    v29 = v2;
    v30 = a1;
    v31 = a2;
    v20 = v33;
    v21 = sub_10036687C(sub_1003D4CA8, (&v32 - 6), v19);
    v22 = v20;
  }

  else
  {
    if (v15 != enum case for MobileDocumentRequestType.Storage.dataTransfer(_:) && v15 != enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:))
    {
      (*(v6 + 104))(v9, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v5);
      v17 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003D53D4(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v29 = 0x8000000100714B50;
      v30 = 117;
      v28 = 0xD000000000000048;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v11 + 8))(v14, v10);
      return v17;
    }

    v24 = (*(v11 + 96))(v14, v10);
    v17 = &v32;
    v25 = *v14;
    __chkstk_darwin(v24);
    v28 = v2;
    v29 = a1;
    v30 = a2;
    v26 = v33;
    v21 = sub_1003668A8(sub_1003D4C84, (&v32 - 6), v25);
    v22 = v26;
  }

  if (!v22)
  {
    v17 = sub_1006976D8(v21);
  }

  return v17;
}

void sub_1003CF3B8(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = *(type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet() - 8);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_1003D53D4(&qword_10083BCC0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet);
    do
    {
      dispatch thunk of Hashable.hash(into:)();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v9 = v2[1];
  v10 = v2[2];
  String.hash(into:)();
  v11 = v2[3];
  v12 = *(v11 + 16);
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v13 = (v11 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      sub_10000B8B8(v14, *v13);
      Data.hash(into:)();
      sub_10000B90C(v14, v15);
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  v16 = v2[4];

  sub_10015B46C(a1, v16);
}

Swift::Int sub_1003CF538()
{
  Hasher.init(_seed:)();
  sub_1003CF3B8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003CF57C()
{
  Hasher.init(_seed:)();
  sub_1003CF3B8(v1);
  return Hasher._finalize()();
}

uint64_t sub_1003CF5B8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_10014E830(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v6 && v4 == v8;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10014EA44(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_10014DA5C(v5, v9);
}

uint64_t sub_1003CF680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  result = MobileDocumentType.iso18013Identifier.getter();
  if (v7)
  {
    goto LABEL_29;
  }

  v17 = v16;
  v74 = result;
  __chkstk_darwin(result);
  v64 = a3;
  v65 = a1;
  v73 = sub_1003CE7B4(sub_1003D4CCC, v63, a2);
  __chkstk_darwin(v73);
  v64 = a1;
  v65 = a3;
  v18 = sub_1003CE4C8(sub_1003B10D8, v63, a2);
  v72 = 0;
  v68 = a4;
  v69 = a3;
  v70 = a5;
  v71 = v17;
  v66 = a7;
  v67 = a6;
  v19 = v18;
  v20 = sub_10003FAFC(_swiftEmptyArrayStorage);
  v21 = v19;
  v76 = v19[2];
  if (!v76)
  {
LABEL_27:

    v60 = v71;
    v7 = v72;
    result = sub_1003D03C4(v68, v74, v71);
    if (!v7)
    {
      v61 = v74;
      v62 = v66;
      *v66 = v73;
      v62[1] = v61;
      v62[2] = v60;
      v62[3] = result;
      v62[4] = v20;
      return result;
    }

    a6 = v67;
LABEL_29:
    *a6 = v7;
    return result;
  }

  v22 = 0;
  v23 = v19 + 7;
  v75 = v19;
  while (v22 < v21[2])
  {
    v28 = *(v23 - 3);
    v27 = *(v23 - 2);
    v29 = *(v23 - 1);
    v30 = *v23;
    v78 = v22;
    v79 = v29;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v20;
    v33 = sub_10003ADCC(v28, v27);
    v34 = v20[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_32;
    }

    v37 = v32;
    if (v20[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100172074();
        v20 = v80;
      }
    }

    else
    {
      sub_10016AE40(v36, isUniquelyReferenced_nonNull_native);
      v20 = v80;
      v38 = sub_10003ADCC(v28, v27);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_36;
      }

      v33 = v38;
    }

    v40 = v79;
    v77 = v27;
    if (v37)
    {
    }

    else
    {
      v20[(v33 >> 6) + 8] |= 1 << v33;
      v41 = (v20[6] + 16 * v33);
      *v41 = v28;
      v41[1] = v27;
      *(v20[7] + 8 * v33) = &_swiftEmptyDictionarySingleton;
      v42 = v20[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_34;
      }

      v20[2] = v44;
    }

    v45 = v20[7];
    v46 = *(v45 + 8 * v33);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v45 + 8 * v33);
    v48 = v80;
    *(v45 + 8 * v33) = 0x8000000000000000;
    v49 = sub_10003ADCC(v40, v30);
    v51 = v48[2];
    v52 = (v50 & 1) == 0;
    v43 = __OFADD__(v51, v52);
    v53 = v51 + v52;
    if (v43)
    {
      goto LABEL_33;
    }

    v54 = v50;
    if (v48[3] < v53)
    {
      sub_10016ABA0(v53, v47);
      v49 = sub_10003ADCC(v40, v30);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_36;
      }

LABEL_22:
      if (v54)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (v47)
    {
      goto LABEL_22;
    }

    v59 = v49;
    sub_100171F0C();
    v49 = v59;
    v40 = v79;
    if (v54)
    {
LABEL_4:
      v24 = v49;

      v25 = v80;
      *(v80[7] + v24) = 0;
      goto LABEL_5;
    }

LABEL_23:
    v25 = v80;
    v80[(v49 >> 6) + 8] |= 1 << v49;
    v56 = (v25[6] + 16 * v49);
    *v56 = v40;
    v56[1] = v30;
    *(v25[7] + v49) = 0;
    v57 = v25[2];
    v43 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v43)
    {
      goto LABEL_35;
    }

    v25[2] = v58;
LABEL_5:
    v22 = v78 + 1;
    v26 = *(v45 + 8 * v33);
    *(v45 + 8 * v33) = v25;

    v23 += 4;
    v21 = v75;
    if (v76 == v22)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1003CFAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ISO18013ReaderRequest.ElementReference();
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v67 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v66 = &v59 - v15;
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v18 = type metadata accessor for MobileDocumentElement.Element();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentElement.storage.getter();
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for MobileDocumentElement.Element.ageAtLeast(_:))
  {
    sub_100007224(&qword_100842BD0, &unk_1006E0110);
    v24 = swift_allocObject();
    v71 = xmmword_1006BF520;
    *(v24 + 1) = xmmword_1006BF520;
    sub_100007224(&qword_10083C140, &qword_1006DA6C8);
    v25 = *(type metadata accessor for MobileDocumentElement() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v71;
    static MobileDocumentElement.age.getter();
    v24[4] = v28;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
    if (v23 != enum case for MobileDocumentElement.Element.givenName(_:) && v23 != enum case for MobileDocumentElement.Element.familyName(_:) && v23 != enum case for MobileDocumentElement.Element.sex(_:) && v23 != enum case for MobileDocumentElement.Element.portrait(_:) && v23 != enum case for MobileDocumentElement.Element.age(_:) && v23 != enum case for MobileDocumentElement.Element.dateOfBirth(_:) && v23 != enum case for MobileDocumentElement.Element.address(_:) && v23 != enum case for MobileDocumentElement.Element.height(_:) && v23 != enum case for MobileDocumentElement.Element.weight(_:) && v23 != enum case for MobileDocumentElement.Element.eyeColor(_:) && v23 != enum case for MobileDocumentElement.Element.hairColor(_:) && v23 != enum case for MobileDocumentElement.Element.organDonorStatus(_:) && v23 != enum case for MobileDocumentElement.Element.veteranStatus(_:) && v23 != enum case for MobileDocumentElement.Element.issuingAuthority(_:) && v23 != enum case for MobileDocumentElement.Element.drivingPrivileges(_:) && v23 != enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:) && v23 != enum case for MobileDocumentElement.Element.documentNumber(_:) && v23 != enum case for MobileDocumentElement.Element.documentIssueDate(_:) && v23 != enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
    {
      (*(v19 + 8))(v22, v18);
    }
  }

  v75 = v24;
  sub_100007224(&qword_100842BC0, &qword_1006E0108);
  sub_1000BA30C(&qword_100842BC8, &qword_100842BC0, &qword_1006E0108);
  Collection.nilIfEmpty.getter();
  v29 = v74;

  if (!v29)
  {
    return _swiftEmptyArrayStorage;
  }

  v30 = v65;
  v31 = MobileDocumentRequestType.isRawDataRequest.getter();
  v32 = sub_10037A314(a2, v31 & 1);
  if (v2)
  {

    return v29;
  }

  *&v71 = v17;
  v33 = *(v32 + 2);
  if (!v33)
  {

    v37 = _swiftEmptyArrayStorage;
LABEL_34:
    __chkstk_darwin(v47);
    *(&v59 - 2) = a2;
    *(&v59 - 1) = v30;
    v48 = sub_100366E78(sub_1003D52CC, (&v59 - 4), v29);
    if (v3)
    {
      goto LABEL_35;
    }

    v49 = v48;

    v50 = v37[2];
    if (v50)
    {
      v70 = v49;
      v60 = 0;
      v75 = _swiftEmptyArrayStorage;
      sub_10017344C(0, v50, 0);
      v29 = v75;
      v51 = *(v73 + 16);
      v52 = v37 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v64 = *(v73 + 72);
      v65 = v51;
      v73 += 16;
      v62 = v69 + 32;
      v63 = (v73 - 8);
      v53 = v61;
      v54 = v66;
      do
      {
        *&v71 = v50;
        v55 = v72;
        v56 = v65;
        v65(v54, v52, v72);
        v56(v67, v54, v55);

        ISO18013ReaderRequest.AlternativeDataElementsSet.init(requestedElement:alternativeElementSets:)();
        (*v63)(v54, v55);
        v75 = v29;
        v58 = *(v29 + 16);
        v57 = *(v29 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_10017344C(v57 > 1, v58 + 1, 1);
          v29 = v75;
        }

        *(v29 + 16) = v58 + 1;
        (*(v69 + 32))(v29 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v58, v53, v68);
        v52 += v64;
        v50 = v71 - 1;
      }

      while (v71 != 1);
LABEL_35:

      return v29;
    }

    return _swiftEmptyArrayStorage;
  }

  v63 = v29;
  v64 = a2;
  v60 = 0;
  v75 = _swiftEmptyArrayStorage;
  v34 = v32;
  result = sub_1001734D0(0, v33, 0);
  v36 = 0;
  v37 = v75;
  v70 = (v73 + 32);
  v38 = (v34 + 56);
  while (v36 < *(v34 + 2))
  {
    v39 = v33;
    v41 = *(v38 - 3);
    v40 = *(v38 - 2);
    v42 = *(v38 - 1);
    v43 = *v38;

    v44 = v71;
    ISO18013ReaderRequest.ElementReference.init(namespace:elementIdentifier:)();
    v75 = v37;
    v46 = v37[2];
    v45 = v37[3];
    if (v46 >= v45 >> 1)
    {
      sub_1001734D0(v45 > 1, v46 + 1, 1);
      v37 = v75;
    }

    ++v36;
    v37[2] = v46 + 1;
    result = (*(v73 + 32))(v37 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v46, v44, v72);
    v38 += 4;
    v33 = v39;
    if (v39 == v36)
    {

      v3 = v60;
      a2 = v64;
      v30 = v65;
      v29 = v63;
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003D0394@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003FB10(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

char *sub_1003D03C4(char *a1, uint64_t a2, void *a3)
{
  v56._countAndFlagsBits = a2;
  v56._object = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for DIPError.Code();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  __chkstk_darwin(v13);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[0] = a1;
  sub_100007224(&qword_100842BB0, &qword_1006E0100);
  sub_1000BA30C(&qword_100842BB8, &qword_100842BB0, &qword_1006E0100);
  Collection.nilIfEmpty.getter();
  v16 = v60;
  if (!v60)
  {
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v20, v23))
    {
      v12 = v10;
      goto LABEL_27;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v20, v23, "Trusted issuer roots list is empty, issuer identifiers will be set to an empty list", v24, 2u);
    v12 = v10;
    goto LABEL_7;
  }

  v17 = UserDefaultsConfiguration.userDefaults.getter();
  v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableIssuerValidation.getter();
  v19 = NSUserDefaults.internalBool(forKey:)(v18);

  if (v19)
  {

    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_27:

      (*(v6 + 8))(v12, v5);
      return _swiftEmptyArrayStorage;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Issuer validation is disabled, issuer identifiers will be set to an empty list", v22, 2u);
LABEL_7:

    goto LABEL_27;
  }

  object = v56._object;

  v26 = sub_1003D4F40(v16, v56._countAndFlagsBits, object);
  v50 = v3;

  v27 = v26 + 56;
  v28 = 1 << v26[32];
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 7);
  v31 = (v28 + 63) >> 6;
  v57 = kCFAllocatorDefault;
  v58 = v26;

  v32 = 0;
  v51 = _swiftEmptyArrayStorage;
  while (v30)
  {
LABEL_16:
    v34 = (*(v58 + 6) + 24 * (__clz(__rbit64(v30)) | (v32 << 6)));
    v36 = *v34;
    v35 = v34[1];
    v37 = v34[2];
    sub_10000B8B8(*v34, v35);

    sub_10000B8B8(v36, v35);

    isa = Data._bridgeToObjectiveC()().super.isa;
    v39 = SecCertificateCreateWithData(v57, isa);

    if (!v39)
    {
LABEL_30:
      __break(1u);
LABEL_31:

      __break(1u);
      return result;
    }

    v30 &= v30 - 1;
    v55 = SecCertificateRef.subjectKeyIdentifier.getter();
    v41 = v40;

    sub_10000B90C(v36, v35);

    sub_10000B90C(v36, v35);

    if (v41 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1003C55E4(0, *(v51 + 2) + 1, 1, v51);
      }

      v43 = *(v51 + 2);
      v42 = *(v51 + 3);
      if (v43 >= v42 >> 1)
      {
        v51 = sub_1003C55E4((v42 > 1), v43 + 1, 1, v51);
      }

      v44 = v51;
      *(v51 + 2) = v43 + 1;
      v45 = &v44[16 * v43];
      *(v45 + 4) = v55;
      *(v45 + 5) = v41;
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v33 >= v31)
    {
      break;
    }

    v30 = *&v27[8 * v33];
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_16;
    }
  }

  v59[0] = v51;

  v46 = v50;
  sub_1003D1BD4(v59);
  if (v46)
  {
    goto LABEL_31;
  }

  result = v59[0];
  if (!*(v59[0] + 2))
  {

    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(74);
    v48._countAndFlagsBits = 0xD000000000000047;
    v48._object = 0x8000000100714BA0;
    String.append(_:)(v48);
    String.append(_:)(v56);
    v49._countAndFlagsBits = 39;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    (*(v52 + 104))(v54, enum case for DIPError.Code.documentReaderNoTrustedIssuerRoots(_:), v53);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003D53D4(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1003D0A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v187 = a5;
  v7 = v6;
  v175 = a3;
  v176 = a4;
  v190 = a2;
  v174 = a6;
  v182 = type metadata accessor for MobileDocumentElement();
  v189 = *(v182 - 8);
  v9 = *(v189 + 64);
  v10 = __chkstk_darwin(v182);
  v12 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v159 - v13;
  v191 = type metadata accessor for MobileDocumentType();
  v15 = *(v191 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v191);
  v19 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v159 - v21;
  __chkstk_darwin(v20);
  v24 = &v159 - v23;
  MobileDocumentRequest.documentType.getter();
  v25 = MobileDocumentType.iso18013Identifier.getter();
  if (v6)
  {
    result = (*(v15 + 8))(v24, v191);
    v28 = v187;
    goto LABEL_84;
  }

  v172 = v22;
  i = v14;
  v161 = v25;
  v167 = v19;
  v170 = v12;
  v165 = v26;
  v29 = *(v15 + 8);
  v30 = v191;
  v29(v24, v191);
  v31 = MobileDocumentRequest.elements.getter();
  __chkstk_darwin(v31);
  *(&v159 - 2) = v190;
  *(&v159 - 1) = a1;
  v32 = sub_1003CEAC8(sub_1003D5350, (&v159 - 4), v31);
  v181 = v15 + 8;
  v160 = v32;
  v179 = v29;

  v33 = MobileDocumentRequest.elements.getter();
  v34 = sub_1003D2D04(v33, sub_1003D3290, sub_1003D3290);

  v168 = sub_100694310(v34);
  v35 = MobileDocumentRequest.elements.getter();
  v36 = sub_1003D2D04(v35, sub_1003D2E74, sub_1003D2E74);
  v7 = 0;

  v37 = sub_100694310(v36);
  v183 = 0;
  v38 = 0;
  v40 = v37 + 56;
  v39 = *(v37 + 56);
  v166 = v37;
  v41 = 1 << *(v37 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v39;
  v44 = (v41 + 63) >> 6;
  v45 = v189;
  v177 = v189 + 16;
  v178 = (v189 + 8);
  v188 = &_swiftEmptyDictionarySingleton;
  v180 = a1;
  v46 = v30;
  v28 = v187;
  v48 = v172;
  v47 = i;
  v164 = v37 + 56;
  v163 = v44;
LABEL_6:
  v49 = v38;
  v50 = v182;
  if (!v43)
  {
    goto LABEL_8;
  }

  do
  {
    v38 = v49;
LABEL_11:
    (*(v45 + 16))(v47, *(v166 + 48) + *(v45 + 72) * (__clz(__rbit64(v43)) | (v38 << 6)), v50);
    MobileDocumentRequest.documentType.getter();
    v51 = MobileDocumentRequestType.isRawDataRequest.getter();
    v52 = sub_10037A314(v48, v51 & 1);
    if (v7)
    {
      (*v178)(v47, v50);

      v179(v48, v46);

      v155 = v183;
      goto LABEL_83;
    }

    v43 &= v43 - 1;
    v53 = *v178;
    v185 = v52;
    v53(v47, v50);
    v179(v48, v46);
    v54 = v185;
    v55 = *(v185 + 2);
    if (v55)
    {
      v56 = 0;
      v57 = (v185 + 56);
      v169 = 0;
      v162 = v55;
      while (1)
      {
        if (v56 >= *(v54 + 2))
        {
          goto LABEL_90;
        }

        v171 = v56;
        v62 = *(v57 - 3);
        v61 = *(v57 - 2);
        v63 = *v57;
        v184 = *(v57 - 1);

        v186 = v63;

        sub_10001FE8C(v183);
        v64 = v188;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v192 = v64;
        v67 = sub_10003ADCC(v62, v61);
        v68 = v64[2];
        v69 = (v66 & 1) == 0;
        v70 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_91;
        }

        v71 = v66;
        if (v64[3] >= v70)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v74 = v192;
            if (v66)
            {
              goto LABEL_26;
            }
          }

          else
          {
            sub_100172074();
            v74 = v192;
            if (v71)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          sub_10016AE40(v70, isUniquelyReferenced_nonNull_native);
          v72 = sub_10003ADCC(v62, v61);
          if ((v71 & 1) != (v73 & 1))
          {
            goto LABEL_100;
          }

          v67 = v72;
          v74 = v192;
          if (v71)
          {
LABEL_26:

            goto LABEL_30;
          }
        }

        v75 = sub_10003FB10(_swiftEmptyArrayStorage);
        v74[(v67 >> 6) + 8] |= 1 << v67;
        v76 = (v74[6] + 16 * v67);
        *v76 = v62;
        v76[1] = v61;
        *(v74[7] + 8 * v67) = v75;
        v77 = v74[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_96;
        }

        v74[2] = v79;
LABEL_30:
        v80 = v191;
        v188 = v74;
        v81 = v74[7];
        v82 = *(v81 + 8 * v67);
        v83 = swift_isUniquelyReferenced_nonNull_native();
        v192 = *(v81 + 8 * v67);
        v84 = v192;
        *(v81 + 8 * v67) = 0x8000000000000000;
        v85 = sub_10003ADCC(v184, v186);
        v87 = v84[2];
        v88 = (v86 & 1) == 0;
        v78 = __OFADD__(v87, v88);
        v89 = v87 + v88;
        if (v78)
        {
          goto LABEL_92;
        }

        v90 = v86;
        if (v84[3] >= v89)
        {
          v47 = i;
          if (v83)
          {
            if ((v86 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v96 = v85;
            sub_100171F0C();
            v47 = i;
            v85 = v96;
            if ((v90 & 1) == 0)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_10016ABA0(v89, v83);
          v85 = sub_10003ADCC(v184, v186);
          if ((v90 & 1) != (v91 & 1))
          {
            goto LABEL_100;
          }

          v47 = i;
          if ((v90 & 1) == 0)
          {
LABEL_37:
            v59 = v192;
            v192[(v85 >> 6) + 8] |= 1 << v85;
            v92 = (v59[6] + 16 * v85);
            v93 = v186;
            *v92 = v184;
            v92[1] = v93;
            *(v59[7] + v85) = 0;
            v94 = v59[2];
            v78 = __OFADD__(v94, 1);
            v95 = v94 + 1;
            if (v78)
            {
              goto LABEL_97;
            }

            v59[2] = v95;
            goto LABEL_17;
          }
        }

        v58 = v85;

        v59 = v192;
        *(v192[7] + v58) = 0;
LABEL_17:
        v46 = v80;
        v56 = v171 + 1;
        v60 = *(v81 + 8 * v67);
        *(v81 + 8 * v67) = v59;

        v57 += 4;
        v183 = sub_1003D5514;
        v7 = v169;
        v48 = v172;
        v54 = v185;
        if (v162 == v56)
        {

          v183 = sub_1003D5514;
          v28 = v187;
          v45 = v189;
          v40 = v164;
          v44 = v163;
          goto LABEL_6;
        }
      }
    }

    v49 = v38;
    v45 = v189;
    v40 = v164;
    v44 = v163;
  }

  while (v43);
  while (1)
  {
LABEL_8:
    v38 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
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
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    if (v38 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v38);
    ++v49;
    if (v43)
    {
      goto LABEL_11;
    }
  }

  v97 = 0;
  v98 = 0;
  v99 = v168 + 56;
  v100 = 1 << *(v168 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & *(v168 + 56);
  v103 = (v100 + 63) >> 6;
  v172 = v103;
  for (i = (v168 + 56); ; v99 = i)
  {
    v104 = v170;
    if (!v102)
    {
      while (1)
      {
        v105 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_89;
        }

        if (v105 >= v103)
        {

          v152 = v161;
          v153 = v165;
          v154 = sub_1003D03C4(v175, v161, v165);
          if (v7)
          {

            goto LABEL_82;
          }

          v156 = v153;
          v157 = v154;
          sub_10001FE8C(v183);
          result = sub_10001FE8C(v97);
          v158 = v174;
          *v174 = v160;
          v158[1] = v152;
          v158[2] = v156;
          v158[3] = v157;
          v158[4] = v188;
          return result;
        }

        v102 = *(v99 + 8 * v105);
        ++v98;
        if (v102)
        {
          goto LABEL_50;
        }
      }
    }

    v105 = v98;
LABEL_50:
    (*(v189 + 16))(v170, *(v168 + 48) + *(v189 + 72) * (__clz(__rbit64(v102)) | (v105 << 6)), v50);
    v106 = v167;
    MobileDocumentRequest.documentType.getter();
    v107 = MobileDocumentRequestType.isRawDataRequest.getter();
    v108 = sub_10037A314(v106, v107 & 1);
    if (v7)
    {
      break;
    }

    v109 = v108;
    v102 &= v102 - 1;
    (*v178)(v104, v50);
    v179(v106, v191);
    v110 = *(v109 + 2);
    if (v110)
    {
      v111 = 0;
      v171 = v109;
      v112 = (v109 + 56);
      v169 = 0;
      v166 = v110;
      while (1)
      {
        if (v111 >= *(v171 + 2))
        {
          goto LABEL_93;
        }

        v184 = v111;
        v117 = *(v112 - 3);
        v118 = *(v112 - 2);
        v119 = *v112;
        v186 = *(v112 - 1);

        v185 = v119;

        sub_10001FE8C(v97);
        v120 = v188;
        v121 = swift_isUniquelyReferenced_nonNull_native();
        v192 = v120;
        v123 = sub_10003ADCC(v117, v118);
        v124 = v120[2];
        v125 = (v122 & 1) == 0;
        v126 = v124 + v125;
        if (__OFADD__(v124, v125))
        {
          goto LABEL_94;
        }

        v127 = v122;
        if (v120[3] >= v126)
        {
          if (v121)
          {
            v130 = v192;
            if (v122)
            {
              goto LABEL_65;
            }
          }

          else
          {
            sub_100172074();
            v130 = v192;
            if (v127)
            {
              goto LABEL_65;
            }
          }
        }

        else
        {
          sub_10016AE40(v126, v121);
          v128 = sub_10003ADCC(v117, v118);
          if ((v127 & 1) != (v129 & 1))
          {
            goto LABEL_100;
          }

          v123 = v128;
          v130 = v192;
          if (v127)
          {
LABEL_65:

            goto LABEL_69;
          }
        }

        v131 = sub_10003FB10(_swiftEmptyArrayStorage);
        v130[(v123 >> 6) + 8] |= 1 << v123;
        v132 = (v130[6] + 16 * v123);
        *v132 = v117;
        v132[1] = v118;
        *(v130[7] + 8 * v123) = v131;
        v133 = v130[2];
        v78 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v78)
        {
          goto LABEL_98;
        }

        v130[2] = v134;
LABEL_69:
        v135 = v185;
        v188 = v130;
        v136 = v130[7];
        v137 = *(v136 + 8 * v123);
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v192 = *(v136 + 8 * v123);
        v139 = v192;
        *(v136 + 8 * v123) = 0x8000000000000000;
        v140 = sub_10003ADCC(v186, v135);
        v142 = v139[2];
        v143 = (v141 & 1) == 0;
        v78 = __OFADD__(v142, v143);
        v144 = v142 + v143;
        if (v78)
        {
          goto LABEL_95;
        }

        v145 = v141;
        if (v139[3] < v144)
        {
          sub_10016ABA0(v144, v138);
          v140 = sub_10003ADCC(v186, v135);
          if ((v145 & 1) != (v146 & 1))
          {
            goto LABEL_100;
          }

LABEL_74:
          v147 = v184;
          if ((v145 & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_55;
        }

        if (v138)
        {
          goto LABEL_74;
        }

        v151 = v140;
        sub_100171F0C();
        v140 = v151;
        v147 = v184;
        if ((v145 & 1) == 0)
        {
LABEL_75:
          v114 = v192;
          v192[(v140 >> 6) + 8] |= 1 << v140;
          v148 = (v114[6] + 16 * v140);
          *v148 = v186;
          v148[1] = v135;
          *(v114[7] + v140) = 1;
          v149 = v114[2];
          v78 = __OFADD__(v149, 1);
          v150 = v149 + 1;
          if (v78)
          {
            goto LABEL_99;
          }

          v114[2] = v150;
          goto LABEL_56;
        }

LABEL_55:
        v113 = v140;

        v114 = v192;
        *(v192[7] + v113) = 1;
LABEL_56:
        v115 = v166;
        v111 = v147 + 1;
        v116 = *(v136 + 8 * v123);
        *(v136 + 8 * v123) = v114;

        v112 += 4;
        v97 = sub_1003D5514;
        v7 = v169;
        if (v115 == v111)
        {

          v97 = sub_1003D5514;
          v98 = v105;
          v28 = v187;
          v50 = v182;
          goto LABEL_53;
        }
      }
    }

    v98 = v105;
LABEL_53:
    v103 = v172;
  }

  (*v178)(v104, v50);

  v179(v106, v191);
LABEL_82:

  sub_10001FE8C(v183);
  v155 = v97;
LABEL_83:
  result = sub_10001FE8C(v155);
LABEL_84:
  *v28 = v7;
  return result;
}

uint64_t sub_1003D1874@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for MobileDocumentType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentRequest.documentType.getter();
  v10 = sub_1003CFAF0(a1, v9);
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v10;
  result = (*(v6 + 8))(v9, v5);
  *a2 = v12;
  return result;
}

uint64_t sub_1003D199C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for ISO18013ReaderRequest.ElementReference();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MobileDocumentRequestType.isRawDataRequest.getter();
  result = sub_10037A314(a1, v10 & 1);
  if (!v2)
  {
    v26[1] = 0;
    v12 = *(result + 16);
    if (v12)
    {
      v29 = v9;
      v26[0] = a2;
      v30 = _swiftEmptyArrayStorage;
      v13 = result;
      sub_1001734D0(0, v12, 0);
      result = v13;
      v14 = 0;
      v15 = v30;
      v27 = result;
      v28 = v6;
      v26[2] = v6 + 32;
      v16 = (result + 56);
      while (v14 < *(result + 16))
      {
        v17 = v5;
        v19 = *(v16 - 3);
        v18 = *(v16 - 2);
        v20 = *(v16 - 1);
        v21 = *v16;

        v22 = v29;
        ISO18013ReaderRequest.ElementReference.init(namespace:elementIdentifier:)();
        v30 = v15;
        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          sub_1001734D0(v23 > 1, v24 + 1, 1);
          v15 = v30;
        }

        ++v14;
        v15[2] = v24 + 1;
        v25 = v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24;
        v5 = v17;
        (*(v28 + 32))(v25, v22, v17);
        v16 += 4;
        result = v27;
        if (v12 == v14)
        {

          *v26[0] = v15;
          return result;
        }
      }

      __break(1u);
    }

    else
    {

      *a2 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

Swift::Int sub_1003D1BD4(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1003BD238(v2);
  }

  v3 = *(v2 + 2);
  v27[0] = (v2 + 32);
  v27[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v21 = v1;
      v22 = v3;
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v24 = v9;
        v25 = v8;
        v11 = *&v2[16 * v9 + 32];
        v23 = v10;
        while (1)
        {
          v12 = *v10;
          v13 = *(v10 + 1);
          v14 = v11;
          sub_10000B8B8(v11, *(&v11 + 1));
          sub_10000B8B8(v12, v13);
          v15 = Data.base64EncodedString(options:)(0);
          v16 = Data.base64EncodedString(options:)(0);
          if (v15._countAndFlagsBits == v16._countAndFlagsBits && v15._object == v16._object)
          {
            break;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_10000B90C(v12, v13);
          result = sub_10000B90C(v14, *(&v14 + 1));
          if (v18)
          {
            v19 = *v10;
            v11 = *(v10 + 1);
            *v10 = v11;
            *(v10 + 1) = v19;
            v10 -= 16;
            if (!__CFADD__(v8++, 1))
            {
              continue;
            }
          }

          goto LABEL_9;
        }

        sub_10000B90C(v12, v13);
        result = sub_10000B90C(v14, *(&v14 + 1));
LABEL_9:
        v9 = v24 + 1;
        v10 = v23 + 16;
        v8 = v25 - 1;
      }

      while (v24 + 1 != v22);
      v1 = v21;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v26[0] = v7 + 4;
    v26[1] = v6;
    sub_1003D1E04(v26, v28, v27, v5);
    v7[2] = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1003D1E04(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v134 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    object = _swiftEmptyArrayStorage;
LABEL_151:
    v4 = *v134;
    if (*v134)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_153;
    }

    goto LABEL_189;
  }

  v6 = 0;
  object = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v150 = v5;
      v143 = v6;
      v10 = *a3;
      v11 = (v6 + 1);
      v12 = (*a3 + 16 * v9);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*a3 + 16 * v8);
      v16 = *v15;
      v17 = v15[1];
      sub_10000B8B8(v13, v14);
      sub_10000B8B8(v16, v17);
      v18 = Data.base64EncodedString(options:)(0);
      v19 = Data.base64EncodedString(options:)(0);
      v20 = v18._countAndFlagsBits == v19._countAndFlagsBits && v18._object == v19._object;
      if (v20)
      {
        __dst = 0;
      }

      else
      {
        __dst = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10000B90C(v16, v17);
      result = sub_10000B90C(v13, v14);
      v21 = v143 + 2;
      v22 = (v10 + 16 * v143 + 24);
      v23 = 16 * v143 + 16;
      v24 = v11;
      v25 = v150;
      do
      {
        v26 = v21;
        v4 = v24;
        v27 = v23;
        if (v21 >= v25)
        {
          break;
        }

        v157 = v21;
        v28 = v22[1];
        v29 = v22[2];
        v30 = *(v22 - 1);
        v31 = *v22;
        sub_10000B8B8(v28, v29);
        sub_10000B8B8(v30, v31);
        v32 = Data.base64EncodedString(options:)(0);
        v33 = Data.base64EncodedString(options:)(0);
        v34 = v32._countAndFlagsBits == v33._countAndFlagsBits && v32._object == v33._object;
        v153 = v34 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000B90C(v30, v31);
        result = sub_10000B90C(v28, v29);
        v26 = v157;
        v21 = v157 + 1;
        v22 += 2;
        v24 = (v4 + 1);
        v23 = v27 + 16;
        v25 = v150;
      }

      while (((__dst ^ v153) & 1) == 0);
      if (__dst)
      {
        v8 = v143;
        if (v26 < v143)
        {
          goto LABEL_180;
        }

        if (v143 < v26)
        {
          v35 = v143;
          v36 = 16 * v143;
          do
          {
            if (v35 != v4)
            {
              v39 = *a3;
              if (!*a3)
              {
                goto LABEL_186;
              }

              v37 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v27);
              *(v39 + v27) = v37;
            }

            v35 = (v35 + 1);
            v27 -= 16;
            v36 += 16;
            v38 = v35 < v4;
            v4 = (v4 - 1);
          }

          while (v38);
        }

        v9 = v26;
      }

      else
      {
        v9 = v26;
        v8 = v143;
      }
    }

    v40 = a3[1];
    v137 = v9;
    if (v9 < v40)
    {
      v70 = __OFSUB__(v9, v8);
      v41 = v9 - v8;
      if (v70)
      {
        goto LABEL_179;
      }

      if (v41 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_181;
        }

        if (v8 + a4 >= v40)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = (v8 + a4);
        }

        if (v42 < v8)
        {
          goto LABEL_182;
        }

        if (v137 != v42)
        {
          v145 = object;
          v158 = *a3;
          v43 = *a3 + 16 * v137 - 16;
          v44 = v8 - v137;
          v45 = v137;
          __dsta = v42;
          do
          {
            v138 = v45;
            v46 = *(v158 + 16 * v45);
            v151 = v44;
            v154 = v43;
            while (1)
            {
              v47 = *v43;
              v48 = *(v43 + 8);
              v49 = *(&v46 + 1);
              v4 = v46;
              sub_10000B8B8(v46, *(&v46 + 1));
              sub_10000B8B8(v47, v48);
              v50 = Data.base64EncodedString(options:)(0);
              v51 = Data.base64EncodedString(options:)(0);
              if (v50._countAndFlagsBits == v51._countAndFlagsBits && v50._object == v51._object)
              {
                break;
              }

              object = _stringCompareWithSmolCheck(_:_:expecting:)();

              sub_10000B90C(v47, v48);
              sub_10000B90C(v4, v49);
              if ((object & 1) == 0)
              {
                goto LABEL_43;
              }

              if (!v158)
              {
                goto LABEL_183;
              }

              v53 = *v43;
              v46 = *(v43 + 16);
              *v43 = v46;
              *(v43 + 16) = v53;
              v43 -= 16;
              if (__CFADD__(v44++, 1))
              {
                goto LABEL_43;
              }
            }

            sub_10000B90C(v47, v48);
            sub_10000B90C(v4, v49);
LABEL_43:
            v45 = v138 + 1;
            v43 = v154 + 16;
            v44 = v151 - 1;
          }

          while ((v138 + 1) != __dsta);
          v137 = __dsta;
          object = v145;
        }
      }
    }

    if (v137 < v8)
    {
      goto LABEL_176;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003BC0AC(0, *(object + 16) + 1, 1, object);
      object = result;
    }

    v56 = *(object + 16);
    v55 = *(object + 24);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      result = sub_1003BC0AC((v55 > 1), v56 + 1, 1, object);
      object = result;
    }

    *(object + 16) = v57;
    v58 = object + 16 * v56;
    *(v58 + 32) = v8;
    *(v58 + 40) = v137;
    __dstb = *v134;
    if (!*v134)
    {
LABEL_187:
      __break(1u);
      goto LABEL_188;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v6 = v137;
    v5 = a3[1];
    if (v137 >= v5)
    {
      goto LABEL_151;
    }
  }

  while (1)
  {
    v59 = v57 - 1;
    if (v57 >= 4)
    {
      v64 = object + 32 + 16 * v57;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_165;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_166;
      }

      v71 = (object + 16 * v57);
      v73 = *v71;
      v72 = v71[1];
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_168;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_171;
      }

      if (v75 >= v67)
      {
        v93 = (object + 32 + 16 * v59);
        v95 = *v93;
        v94 = v93[1];
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_175;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    if (v57 == 3)
    {
      v60 = *(object + 32);
      v61 = *(object + 40);
      v70 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      v63 = v70;
LABEL_75:
      if (v63)
      {
        goto LABEL_167;
      }

      v76 = (object + 16 * v57);
      v78 = *v76;
      v77 = v76[1];
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_170;
      }

      v82 = (object + 32 + 16 * v59);
      v84 = *v82;
      v83 = v82[1];
      v70 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v70)
      {
        goto LABEL_173;
      }

      if (__OFADD__(v80, v85))
      {
        goto LABEL_174;
      }

      if (v80 + v85 >= v62)
      {
        if (v62 < v85)
        {
          v59 = v57 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_89;
    }

    v86 = (object + 16 * v57);
    v88 = *v86;
    v87 = v86[1];
    v70 = __OFSUB__(v87, v88);
    v80 = v87 - v88;
    v81 = v70;
LABEL_89:
    if (v81)
    {
      goto LABEL_169;
    }

    v89 = object + 16 * v59;
    v91 = *(v89 + 32);
    v90 = *(v89 + 40);
    v70 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if (v70)
    {
      goto LABEL_172;
    }

    if (v92 < v80)
    {
      goto LABEL_3;
    }

LABEL_96:
    if (v59 - 1 >= v57)
    {
      break;
    }

    v97 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    v144 = v59;
    v146 = object;
    v140 = v59 - 1;
    v98 = *(object + 32 + 16 * (v59 - 1));
    v99 = *(object + 32 + 16 * v59);
    v141 = *(object + 32 + 16 * v59 + 8);
    v142 = v98;
    v100 = 16 * v98;
    object = v97 + 16 * v98;
    v101 = 16 * v99;
    v102 = (v97 + 16 * v99);
    v103 = (v97 + 16 * v141);
    v104 = 16 * v99 - 16 * v98;
    v105 = 16 * v141 - 16 * v99;
    v106 = __dstb;
    if (v104 >= v105)
    {
      if (v102 != __dstb || v103 <= __dstb)
      {
        memmove(__dstb, (v97 + 16 * v99), 16 * v141 - 16 * v99);
      }

      v159 = (__dstb + v105);
      if (v105 < 1 || v101 <= v100)
      {
        v116 = v102;
      }

      else
      {
        v152 = object;
        do
        {
          v156 = v102;
          v136 = v102 - 2;
          v103 -= 2;
          v117 = v159;
          while (1)
          {
            v118 = *(v117 - 2);
            v119 = *(v117 - 1);
            v117 -= 2;
            v120 = *(v156 - 2);
            v121 = *(v156 - 1);
            sub_10000B8B8(v118, v119);
            sub_10000B8B8(v120, v121);
            v122 = Data.base64EncodedString(options:)(0);
            object = v122._object;
            v123 = Data.base64EncodedString(options:)(0);
            v124 = v122._countAndFlagsBits == v123._countAndFlagsBits && v122._object == v123._object;
            v125 = v124 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10000B90C(v120, v121);
            sub_10000B90C(v118, v119);
            v126 = v103 + 2;
            if (v125)
            {
              break;
            }

            if (v126 != v159)
            {
              *v103 = *v117;
            }

            v103 -= 2;
            v159 = v117;
            if (v117 <= __dstb)
            {
              v159 = v117;
              v106 = __dstb;
              v116 = v156;
              goto LABEL_141;
            }
          }

          v106 = __dstb;
          v116 = v136;
          if (v126 != v156)
          {
            *v103 = *v136;
          }

          object = v152;
          if (v159 <= __dstb)
          {
            break;
          }

          v102 = v136;
        }

        while (v152 < v136);
      }
    }

    else
    {
      if (object != __dstb || v102 <= __dstb)
      {
        memmove(__dstb, (v97 + 16 * v98), 16 * v99 - 16 * v98);
      }

      v159 = (__dstb + v104);
      if (v104 >= 1 && 16 * v141 > v101)
      {
        while (1)
        {
          v108 = *v102;
          v107 = v102[1];
          v155 = v102;
          v110 = *v106;
          v109 = v106[1];
          sub_10000B8B8(*v102, v107);
          sub_10000B8B8(v110, v109);
          v111 = Data.base64EncodedString(options:)(0);
          v112 = Data.base64EncodedString(options:)(0);
          if (v111._countAndFlagsBits == v112._countAndFlagsBits && v111._object == v112._object)
          {
            break;
          }

          v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_10000B90C(v110, v109);
          sub_10000B90C(v108, v107);
          if ((v114 & 1) == 0)
          {
            goto LABEL_112;
          }

          v115 = v155;
          v102 = v155 + 2;
          if (object != v155)
          {
            goto LABEL_113;
          }

LABEL_114:
          object += 16;
          if (v106 >= v159 || v102 >= v103)
          {
            goto LABEL_116;
          }
        }

        sub_10000B90C(v110, v109);
        sub_10000B90C(v108, v107);
LABEL_112:
        v115 = v106;
        v20 = object == v106;
        v106 += 2;
        v102 = v155;
        if (v20)
        {
          goto LABEL_114;
        }

LABEL_113:
        *object = *v115;
        goto LABEL_114;
      }

LABEL_116:
      v116 = object;
    }

LABEL_141:
    if (v116 != v106 || v116 >= (v106 + ((v159 - v106 + (v159 - v106 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
    {
      memmove(v116, v106, 16 * ((v159 - v106) / 16));
    }

    v4 = v141;
    v127 = v146;
    if (v141 < v142)
    {
      goto LABEL_163;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_1003BBEA4(v146);
    }

    if (v144 > *(v127 + 2))
    {
      goto LABEL_164;
    }

    v128 = &v127[16 * v140];
    *(v128 + 4) = v142;
    *(v128 + 5) = v141;
    result = sub_1003BBE18(v144);
    object = v127;
    v57 = *(v127 + 2);
    if (v57 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  result = sub_1003BBEA4(object);
  object = result;
LABEL_153:
  v129 = *(object + 16);
  if (v129 < 2)
  {
  }

  while (*a3)
  {
    v130 = *(object + 16 * v129);
    v131 = *(object + 16 * (v129 - 1) + 40);
    sub_1003D2948((*a3 + 16 * v130), (*a3 + 16 * *(object + 16 * (v129 - 1) + 32)), (*a3 + 16 * v131), v4);
    if (v135)
    {
    }

    if (v131 < v130)
    {
      goto LABEL_177;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = sub_1003BBEA4(object);
    }

    if (v129 - 2 >= *(object + 16))
    {
      goto LABEL_178;
    }

    v132 = (object + 16 * v129);
    *v132 = v130;
    v132[1] = v131;
    result = sub_1003BBE18(v129 - 1);
    v129 = *(object + 16);
    if (v129 <= 1)
    {
    }
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
  return result;
}

uint64_t sub_1003D2948(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - __src;
  v10 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 4;
  if (v8 < v10 >> 4)
  {
    v12 = a4;
    v13 = __dst;
    if (a4 != __dst || &__dst[2 * v8] <= a4)
    {
      memmove(a4, __dst, 16 * v8);
    }

    v42 = &v12[2 * v8];
    if (v6 < 16)
    {
LABEL_10:
      v5 = v13;
      goto LABEL_48;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v38 = v13;
      v40 = v5;
      v16 = *v5;
      v17 = v5[1];
      v18 = *v12;
      v19 = v12[1];
      sub_10000B8B8(v16, v17);
      sub_10000B8B8(v18, v19);
      v20 = Data.base64EncodedString(options:)(0);
      v21 = Data.base64EncodedString(options:)(0);
      v22 = v20._countAndFlagsBits == v21._countAndFlagsBits && v20._object == v21._object;
      if (v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000B90C(v18, v19);
      sub_10000B90C(v16, v17);
      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      v14 = v38;
      v15 = v40;
      v5 = v40 + 2;
      if (v38 != v40)
      {
        goto LABEL_12;
      }

LABEL_13:
      v13 = v14 + 2;
      if (v12 >= v42)
      {
        goto LABEL_10;
      }
    }

    sub_10000B90C(v18, v19);
    sub_10000B90C(v16, v17);
LABEL_22:
    v15 = v12;
    v14 = v38;
    v5 = v40;
    v22 = v38 == v12;
    v12 += 2;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v14 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    v24 = a4;
    memmove(a4, __src, 16 * v11);
    a4 = v24;
  }

  v42 = &a4[2 * v11];
  v12 = a4;
  if (v9 >= 16 && v5 > __dst)
  {
    v37 = a4;
LABEL_31:
    v36 = v5 - 2;
    v4 -= 2;
    v25 = v42;
    v41 = v5;
    do
    {
      v26 = *(v25 - 2);
      v27 = *(v25 - 1);
      v25 -= 2;
      v28 = *(v5 - 2);
      v29 = *(v5 - 1);
      sub_10000B8B8(v26, v27);
      sub_10000B8B8(v28, v29);
      v30 = Data.base64EncodedString(options:)(0);
      v31 = Data.base64EncodedString(options:)(0);
      if (v30._countAndFlagsBits == v31._countAndFlagsBits && v30._object == v31._object)
      {
        v33 = 0;
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10000B90C(v28, v29);
      sub_10000B90C(v26, v27);
      v34 = (v4 + 2);
      if (v33)
      {
        if (v34 != v41)
        {
          *v4 = *v36;
        }

        v12 = v37;
        if (v42 <= v37 || (v5 = v36, v36 <= __dst))
        {
          v5 = v36;
          goto LABEL_48;
        }

        goto LABEL_31;
      }

      v5 = v41;
      if (v34 != v42)
      {
        *v4 = *v25;
      }

      v4 -= 2;
      v42 = v25;
    }

    while (v25 > v37);
    v42 = v25;
    v12 = v37;
  }

LABEL_48:
  if (v5 != v12 || v5 >= (v12 + ((v42 - v12 + (v42 - v12 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v12, 16 * ((v42 - v12) / 16));
  }

  return 1;
}

uint64_t sub_1003D2D04(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1003D3750(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1003D2E74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v54 = sub_100007224(&qword_100842BD8, &qword_1006E0120);
  v4 = *(*(v54 - 8) + 64);
  v5 = __chkstk_darwin(v54);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v41 - v7;
  v51 = type metadata accessor for MobileDocumentElementRequestInfo();
  v8 = *(v51 - 8);
  v9 = v8[8];
  __chkstk_darwin(v51);
  v60 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for MobileDocumentElement();
  v11 = *(*(v59 - 8) + 64);
  result = __chkstk_darwin(v59);
  v57 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v55 = a3;
  v16 = *(a3 + 64);
  v45 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v43 = 0;
  v44 = (v17 + 63) >> 6;
  v49 = v8 + 2;
  v50 = v13 + 2;
  v61 = v8;
  v58 = v13;
  v47 = v13 + 1;
  v48 = v8 + 1;
  while (v19)
  {
    v20 = __clz(__rbit64(v19));
    v56 = (v19 - 1) & v19;
LABEL_11:
    v23 = v20 | (v15 << 6);
    v24 = v55;
    v25 = v57;
    v26 = v58[2];
    v26(v57, v55[6] + v58[9] * v23, v59);
    v27 = v24[7];
    v28 = v61[9];
    v46 = v23;
    v29 = v61[2];
    v30 = v60;
    v31 = v51;
    v29(v60, v27 + v28 * v23, v51);
    v32 = v52;
    v33 = v25;
    v34 = v59;
    v26(v52, v33, v59);
    v35 = v54;
    v29((v32 + *(v54 + 48)), v30, v31);
    v36 = v53;
    sub_10000BBC4(v32, v53, &qword_100842BD8, &qword_1006E0120);
    v37 = *(v35 + 48);
    LOBYTE(v35) = MobileDocumentElementRequestInfo.isRetaining.getter();
    sub_1003D536C(v32);
    v38 = v61[1];
    v38(v36 + v37, v31);
    v39 = v58[1];
    v39(v36, v34);
    v38(v60, v31);
    result = (v39)(v57, v34);
    v19 = v56;
    if ((v35 & 1) == 0)
    {
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return sub_1003D4024(v42, v41, v43, v55);
      }
    }
  }

  v21 = v15;
  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= v44)
    {
      return sub_1003D4024(v42, v41, v43, v55);
    }

    v22 = *(v45 + 8 * v15);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v56 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D3290(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v54 = sub_100007224(&qword_100842BD8, &qword_1006E0120);
  v4 = *(*(v54 - 8) + 64);
  v5 = __chkstk_darwin(v54);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v41 - v7;
  v51 = type metadata accessor for MobileDocumentElementRequestInfo();
  v8 = *(v51 - 8);
  v9 = v8[8];
  __chkstk_darwin(v51);
  v60 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for MobileDocumentElement();
  v11 = *(*(v59 - 8) + 64);
  result = __chkstk_darwin(v59);
  v57 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v55 = a3;
  v16 = *(a3 + 64);
  v45 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v43 = 0;
  v44 = (v17 + 63) >> 6;
  v49 = v8 + 2;
  v50 = v13 + 2;
  v61 = v8;
  v58 = v13;
  v47 = v13 + 1;
  v48 = v8 + 1;
  while (v19)
  {
    v20 = __clz(__rbit64(v19));
    v56 = (v19 - 1) & v19;
LABEL_11:
    v23 = v20 | (v15 << 6);
    v24 = v55;
    v25 = v57;
    v26 = v58[2];
    v26(v57, v55[6] + v58[9] * v23, v59);
    v27 = v24[7];
    v28 = v61[9];
    v46 = v23;
    v29 = v61[2];
    v30 = v60;
    v31 = v51;
    v29(v60, v27 + v28 * v23, v51);
    v32 = v52;
    v33 = v25;
    v34 = v59;
    v26(v52, v33, v59);
    v35 = v54;
    v29((v32 + *(v54 + 48)), v30, v31);
    v36 = v53;
    sub_10000BBC4(v32, v53, &qword_100842BD8, &qword_1006E0120);
    v37 = *(v35 + 48);
    LOBYTE(v35) = MobileDocumentElementRequestInfo.isRetaining.getter();
    sub_1003D536C(v32);
    v38 = v61[1];
    v38(v36 + v37, v31);
    v39 = v58[1];
    v39(v36, v34);
    v38(v60, v31);
    result = (v39)(v57, v34);
    v19 = v56;
    if (v35)
    {
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return sub_1003D4024(v42, v41, v43, v55);
      }
    }
  }

  v21 = v15;
  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= v44)
    {
      return sub_1003D4024(v42, v41, v43, v55);
    }

    v22 = *(v45 + 8 * v15);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v56 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003D36AC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1003D4D00(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1003D3750(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1003D37D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100007224(&qword_100842BE8, &qword_1006E0138);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_10000BBC4(v17 + 32 * v16, v36, &unk_100845ED0, &qword_1006DA1D0);
    v34 = v36[0];
    v35 = v36[1];
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    v31 = (*(v9 + 56) + 32 * v25);
    *v31 = v34;
    v31[1] = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003D3A34(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = type metadata accessor for IQCType();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  v9 = __chkstk_darwin(v49);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v38 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100007224(&qword_100834918, &qword_1006C0120);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v40 = v47 + 16;
  v41 = result;
  v48 = v47 + 32;
  v17 = result + 64;
  v42 = a1;
  v39 = a4;
  v18 = v49;
  while (v15)
  {
    v19 = v11;
    v20 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v47;
    v46 = *(v47 + 72);
    v26 = v43;
    (*(v47 + 16))(v43, v24 + v46 * v23, v18);
    v45 = *(a4[7] + 8 * v23);
    v27 = *(v25 + 32);
    v11 = v19;
    v27(v19, v26, v18);
    v14 = v41;
    v28 = *(v41 + 40);
    sub_1003D53D4(&qword_100834900, &type metadata accessor for IQCType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v42;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v42;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v27)(*(v14 + 48) + v32 * v46, v11, v49);
    *(*(v14 + 56) + 8 * v32) = v45;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v11;
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003D3DCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100007224(&qword_100849420, &qword_1006DA510);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003D4024(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = type metadata accessor for MobileDocumentElementRequestInfo();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = __chkstk_darwin(v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = v47 - v11;
  v12 = type metadata accessor for MobileDocumentElement();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100007224(&qword_100842BE0, &unk_1006E0128);
  result = static _DictionaryStorage.allocate(capacity:)();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_1003D53D4(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003D44C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100007224(&qword_100834838, &unk_1006DA640);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1003D470C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100007224(&qword_10083BCE0, &qword_1006DA200);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v24 = result + 56;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v25 = (v10 - 1) & v10;
LABEL_16:
    v15 = v4;
    v16 = (*(v4 + 48) + 24 * (v12 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    sub_10000B8B8(v17, v18);

    Data.hash(into:)();
    sub_1003D4B28(v26, v19);
    Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    result = _HashTable.nextHole(atOrAfter:)();
    *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v22 = (*(v6 + 48) + 24 * result);
    *v22 = v17;
    v22[1] = v18;
    v22[2] = v19;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    v4 = v15;
    v10 = v25;
    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v25 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1003D4904(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100007224(&qword_10083BC70, &unk_1006E0140);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1003D4B28(__int128 *a1, uint64_t a2)
{
  v17 = a1[2];
  v18 = a1[3];
  v19 = *(a1 + 8);
  v15 = *a1;
  v16 = a1[1];
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_1003D4CCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  result = sub_1003CFAF0(a1, v5);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1003D4D00(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v31 = result;
  v34 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_13:
    v17 = v14 | (v8 << 6);
    v18 = (*(v7 + 48) + 24 * v17);
    v19 = v18[2];
    if (*(v19 + 16))
    {
      v33 = v17;
      v36 = v12;
      v20 = *v18;
      v21 = v18[1];
      v22 = *(v19 + 40);
      Hasher.init(_seed:)();
      v35 = v20;
      sub_10000B8B8(v20, v21);

      String.hash(into:)();
      v23 = Hasher._finalize()();
      v24 = -1 << *(v19 + 32);
      v25 = v23 & ~v24;
      if ((*(v19 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (*(v19 + 48) + 16 * v25);
          v28 = *v27 == a4 && v27[1] == a5;
          if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v19 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_10000B90C(v35, v21);

        v7 = a3;
        *(v31 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v29 = __OFADD__(v34++, 1);
        v12 = v36;
        if (v29)
        {
          __break(1u);
LABEL_26:

          return sub_1003D470C(v31, a2, v34, v7);
        }
      }

      else
      {
LABEL_5:
        sub_10000B90C(v35, v21);

        v7 = a3;
        v12 = v36;
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_26;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003D4F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v37[0] = v4;
    v37[1] = v37;
    v38 = v10;
    __chkstk_darwin(v12);
    v39 = v37 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v11);
    v42 = 0;
    v10 = 0;
    v13 = v7 + 56;
    v14 = 1 << *(v7 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v7;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v22 = (*(v7 + 48) + 24 * v21);
      v23 = v22[2];
      if (*(v23 + 16))
      {
        v41 = v21;
        v45 = v16;
        v24 = *v22;
        v4 = v22[1];
        v25 = *(v23 + 40);
        Hasher.init(_seed:)();
        v43 = v4;
        v44 = v24;
        sub_10000B8B8(v24, v4);

        String.hash(into:)();
        v26 = Hasher._finalize()();
        v11 = v23 + 56;
        v27 = -1 << *(v23 + 32);
        v28 = v26 & ~v27;
        if ((*(v23 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v4 = ~v27;
          while (1)
          {
            v29 = (*(v23 + 48) + 16 * v28);
            v30 = *v29 == a2 && v29[1] == a3;
            if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v28 = (v28 + 1) & v4;
            if (((*(v11 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          sub_10000B90C(v44, v43);

          v7 = v40;
          *&v39[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
          v31 = __OFADD__(v42++, 1);
          v16 = v45;
          if (v31)
          {
            __break(1u);
LABEL_27:
            v32 = sub_1003D470C(v39, v38, v42, v7);

            return v32;
          }
        }

        else
        {
LABEL_6:
          sub_10000B90C(v44, v43);

          v7 = v40;
          v16 = v45;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_27;
      }

      v20 = *(v13 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = v7;
  v35 = swift_slowAlloc();

  v36 = sub_1003D36AC(v35, v10, v34, a2, a3);

  return v36;
}

void *sub_1003D52CC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = *a1;
  v9[1] = *(v3 + 16);
  result = sub_1003CEDDC(sub_1003D5334, v9, v7);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1003D5350@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1003D1874(a1, a2);
}

uint64_t sub_1003D536C(uint64_t a1)
{
  v2 = sub_100007224(&qword_100842BD8, &qword_1006E0120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003D53D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D541C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003D5464(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1003D54C0()
{
  result = qword_100842BF0;
  if (!qword_100842BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842BF0);
  }

  return result;
}

uint64_t sub_1003D5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003D5668, 0, 0);
}

uint64_t sub_1003D5668()
{
  v1 = v0[13];
  v2 = v0[10];
  v12 = v0[5];
  static DaemonSignposts.MobileDocumentReader.startReadDocument.getter();
  DIPSignpost.init(_:)();
  v3 = *(v12 + 32);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1003D57A0;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  return v11(v9, v8, v6);
}

uint64_t sub_1003D57A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  v8 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v6 = sub_1003D5B8C;
  }

  else
  {
    v6 = sub_1003D58B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003D58B8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[2];
  v5 = type metadata accessor for CBORDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  CBORDecoder.init()();
  sub_100007224(&qword_100841BE0, &qword_1006DEB08);
  sub_1003D6CEC();
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();

  v8 = v0[15];
  v9 = v0[16];
  if (v2)
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.documentReaderCannotDecodeSessionTranscript(_:), v0[7]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003D6A18(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v8, v9);
    v11 = v0[12];
    v10 = v0[13];
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v17 = v0[12];
    v16 = v0[13];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];
    sub_10000B90C(v0[15], v0[16]);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v17 + 8))(v16, v18);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003D5B8C()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003D5C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for ISO18013ReaderRequest();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003D5E48, 0, 0);
}

uint64_t sub_1003D5E48()
{
  v69 = v0;
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[3];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  log = v7;
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  if (v9)
  {
    v62 = v0[17];
    v59 = v8;
    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[13];
    v60 = v0[21];
    v17 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v68[0] = v58;
    *v17 = 136315138;
    v6(v15, v13, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v14 + 8))(v13, v16);
    v21 = sub_100141FE4(v18, v20, v68);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, log, v59, "SecureTransactionServiceManaging sending iso18013 request %s", v17, 0xCu);
    sub_10000BB78(v58);

    v22 = *(v11 + 8);
    v22(v60, v62);
  }

  else
  {
    v23 = v0[13];
    v24 = v0[14];

    (*(v24 + 8))(v13, v23);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v0[22] = v22;
  v25 = v0[13];
  v26 = v0[3];
  v27 = type metadata accessor for CBOREncoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  CBOREncoder.init()();
  sub_1003D6A18(&qword_100842BF8, &type metadata accessor for ISO18013ReaderRequest);
  v30 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v32 = v31;
  v0[23] = v30;
  v0[24] = v31;

  v33 = v0[20];
  v34 = v0[6];
  defaultLogger()();
  sub_10000B8B8(v30, v32);
  swift_unknownObjectRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  sub_10000B90C(v30, v32);
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[20];
  v39 = v0[17];
  v40 = v0[18];
  if (v37)
  {
    logb = v0[18];
    v42 = v0[4];
    v41 = v0[5];
    v63 = v0[17];
    v43 = swift_slowAlloc();
    v61 = v38;
    v44 = swift_slowAlloc();
    v68[0] = v44;
    *v43 = 136315138;
    v45 = sub_1003D6A70();
    if (v46)
    {
      v47 = v46;
    }

    else
    {
      v45 = 0x3E6C696E3CLL;
      v47 = 0xE500000000000000;
    }

    v48 = sub_100141FE4(v45, v47, v68);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v35, v36, "SecureTransactionServiceManaging sending request %s", v43, 0xCu);
    sub_10000BB78(v44);

    v49 = v63;
    v50 = v61;
  }

  else
  {

    v50 = v38;
    v49 = v39;
  }

  v22(v50, v49);
  v64 = (v0[5] + 40);
  loga = (*v64 + **v64);
  v51 = (*v64)[1];
  v52 = swift_task_alloc();
  v0[25] = v52;
  *v52 = v0;
  v52[1] = sub_1003D64C4;
  v53 = v0[12];
  v54 = v0[5];
  v55 = v0[6];
  v56 = v0[4];

  return (loga)(v53, v30, v32, v56, v54);
}

uint64_t sub_1003D64C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v8 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v9 = sub_1003D6770;
  }

  else
  {
    *(v6 + 216) = a2;
    *(v6 + 224) = a1;
    v9 = sub_1003D65F8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1003D65F8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v15 = *(v0 + 176);
  v16 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 144);
  v14 = *(v0 + 136);
  v17 = *(v0 + 160);
  v18 = *(v0 + 128);
  v19 = *(v0 + 120);
  v20 = *(v0 + 72);
  v7 = *(v0 + 48);
  v13 = *(v0 + 32);
  (*(*(v0 + 88) + 32))(*(v0 + 16), *(v0 + 96), *(v0 + 80));
  defaultLogger()();
  v8 = swift_task_alloc();
  *(v8 + 16) = v13;
  *(v8 + 32) = v7;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  Logger.sensitive(_:)();
  sub_10000B90C(v4, v3);

  v15(v5, v14);

  v9 = *(v0 + 8);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);

  return v9(v10, v11);
}

uint64_t sub_1003D6770()
{
  sub_10000B90C(v0[23], v0[24]);
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[21];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[15];
  v9 = v0[12];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.documentReaderCannotBuildRequest(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003D6A18(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003D6A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D6A70()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [v2 decodeFromData:isa];

  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CBOR.readableString.getter();

  return v6;
}

unint64_t sub_1003D6CEC()
{
  result = qword_100842C00;
  if (!qword_100842C00)
  {
    sub_10000B870(&qword_100841BE0, &qword_1006DEB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842C00);
  }

  return result;
}

void *sub_1003D6D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10017340C(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v8 = *(v3 - 3);
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;

      sub_100007224(&qword_10083C0A0, &unk_1006DA5C0);
      sub_100007224(&qword_100838820, &unk_1006DB6B0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10017340C((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[4 * v5];
      v6[4] = v12;
      v6[5] = v13;
      v6[6] = v14;
      v6[7] = v15;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003D6E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001735D8(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v7 = *v3;
      sub_100007224(&qword_100845FC0, &qword_1006E6500);
      sub_100007224(qword_100842CC8, &qword_1006E02D0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1001735D8((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v8;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1003D6FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1001735F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for StoredUploadAsset();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1001735F8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10001F348(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for StoredUploadAsset();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1001735F8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10001F348(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D71AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *a1 = sub_1003DC440;
  a1[1] = v7;
}

uint64_t sub_1003D7220(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 192) = a4;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentReaderSession.State();
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1003D735C, 0, 0);
}

uint64_t sub_1003D735C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 192);
  v5 = *(*(v0 + 32) + 16);
  *(v0 + 104) = v5;
  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1003DA174;
  *(v9 + 24) = v8;
  *(v5 + 16) = sub_1003DA19C;
  *(v5 + 24) = v9;

  os_unfair_lock_unlock((v5 + 32));
  v10 = enum case for MobileDocumentReaderSession.State.ready(_:);
  v11 = *(v2 + 104);
  *(v0 + 112) = v11;
  *(v0 + 120) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v1, v10, v3);
  v7(v1);

  v12 = *(v2 + 8);
  *(v0 + 128) = v12;
  *(v0 + 136) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v3);
  if (v4 == 1)
  {
    v13 = *(v0 + 72);
    static Clock<>.continuous.getter();
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_1003D786C;
    v15 = *(v0 + 72);
LABEL_3:
    v16 = 3000000000000000000;
LABEL_6:

    return sub_1003DA1A4(v16, 0, 0, 0, 1);
  }

  v50 = *(v0 + 128);
  v52 = *(v0 + 136);
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  v21 = *(v0 + 80);
  v22 = *(v0 + 192);
  os_unfair_lock_lock((v20 + 32));
  v24 = *(v20 + 16);
  v23 = *(v20 + 24);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1003DC45C;
  *(v26 + 24) = v25;
  *(v20 + 16) = sub_1003DC440;
  *(v20 + 24) = v26;

  os_unfair_lock_unlock((v20 + 32));
  v18(v19, enum case for MobileDocumentReaderSession.State.connecting(_:), v21);
  v24(v19);

  v50(v19, v21);
  if (v22 == 1)
  {
    v27 = *(v0 + 64);
    static Clock<>.continuous.getter();
    v28 = swift_task_alloc();
    *(v0 + 160) = v28;
    *v28 = v0;
    v28[1] = sub_1003D7E10;
    v29 = *(v0 + 64);
    v16 = 1000000000000000000;
    goto LABEL_6;
  }

  v51 = *(v0 + 128);
  v53 = *(v0 + 136);
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);
  v33 = *(v0 + 96);
  v34 = *(v0 + 104);
  v35 = *(v0 + 80);
  v36 = *(v0 + 192);
  os_unfair_lock_lock((v34 + 32));
  v38 = *(v34 + 16);
  v37 = *(v34 + 24);
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v37;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1003DC45C;
  *(v40 + 24) = v39;
  *(v34 + 16) = sub_1003DC440;
  *(v34 + 24) = v40;

  os_unfair_lock_unlock((v34 + 32));
  v32(v33, enum case for MobileDocumentReaderSession.State.awaitingApproval(_:), v35);
  v38(v33);

  v51(v33, v35);
  if (v36 == 1)
  {
    v41 = *(v0 + 56);
    static Clock<>.continuous.getter();
    v42 = swift_task_alloc();
    *(v0 + 176) = v42;
    *v42 = v0;
    v42[1] = sub_1003D8268;
    v43 = *(v0 + 56);
    goto LABEL_3;
  }

  v44 = *(v0 + 32);
  sub_1003D8514(*(v0 + 24), *(v0 + 16));
  v45 = *(v0 + 96);
  v46 = *(v0 + 64);
  v47 = *(v0 + 72);
  v48 = *(v0 + 56);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1003D786C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1003D7D84;
  }

  else
  {
    v6 = sub_1003D79DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003D79DC()
{
  v38 = *(v0 + 136);
  v35 = *(v0 + 152);
  v36 = *(v0 + 128);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 192);
  os_unfair_lock_lock((v4 + 32));
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1003DC45C;
  *(v10 + 24) = v9;
  *(v4 + 16) = sub_1003DC440;
  *(v4 + 24) = v10;

  os_unfair_lock_unlock((v4 + 32));
  v1(v3, enum case for MobileDocumentReaderSession.State.connecting(_:), v5);
  v8(v3);

  v36(v3, v5);
  if (v6 == 1)
  {
    v11 = *(v0 + 64);
    static Clock<>.continuous.getter();
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_1003D7E10;
    v13 = *(v0 + 64);
    v14 = 1000000000000000000;
LABEL_5:

    return sub_1003DA1A4(v14, 0, 0, 0, 1);
  }

  v37 = *(v0 + 128);
  v39 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v19 = *(v0 + 80);
  v20 = *(v0 + 192);
  os_unfair_lock_lock((v18 + 32));
  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1003DC45C;
  *(v24 + 24) = v23;
  *(v18 + 16) = sub_1003DC440;
  *(v18 + 24) = v24;

  os_unfair_lock_unlock((v18 + 32));
  v15(v17, enum case for MobileDocumentReaderSession.State.awaitingApproval(_:), v19);
  v22(v17);

  v37(v17, v19);
  if (v20 == 1)
  {
    v25 = *(v0 + 56);
    static Clock<>.continuous.getter();
    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_1003D8268;
    v27 = *(v0 + 56);
    v14 = 3000000000000000000;
    goto LABEL_5;
  }

  v29 = *(v0 + 32);
  sub_1003D8514(*(v0 + 24), *(v0 + 16));
  v30 = *(v0 + 96);
  v31 = *(v0 + 64);
  v32 = *(v0 + 72);
  v33 = *(v0 + 56);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1003D7D84()
{
  v1 = v0[19];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003D7E10()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1003D81DC;
  }

  else
  {
    v6 = sub_1003D7F80;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003D7F80()
{
  v23 = *(v0 + 136);
  v21 = *(v0 + 168);
  v22 = *(v0 + 128);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 192);
  os_unfair_lock_lock((v4 + 32));
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1003DC45C;
  *(v10 + 24) = v9;
  *(v4 + 16) = sub_1003DC440;
  *(v4 + 24) = v10;

  os_unfair_lock_unlock((v4 + 32));
  v1(v3, enum case for MobileDocumentReaderSession.State.awaitingApproval(_:), v5);
  v8(v3);

  v22(v3, v5);
  if (v6 == 1)
  {
    v11 = *(v0 + 56);
    static Clock<>.continuous.getter();
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_1003D8268;
    v13 = *(v0 + 56);

    return sub_1003DA1A4(3000000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v15 = *(v0 + 32);
    sub_1003D8514(*(v0 + 24), *(v0 + 16));
    v16 = *(v0 + 96);
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    v19 = *(v0 + 56);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1003D81DC()
{
  v1 = v0[21];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003D8268()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 184) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1003D8488;
  }

  else
  {
    v6 = sub_1003D83D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003D83D8()
{
  v1 = v0[23];
  v2 = v0[4];
  sub_1003D8514(v0[3], v0[2]);
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003D8488()
{
  v1 = v0[23];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003D8514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  __chkstk_darwin(v3);
  v105 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_1008426E8, &qword_1006DF768);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v85 = &v83 - v8;
  v9 = sub_100007224(&qword_1008426F0, &qword_1006DF770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v87 = &v83 - v11;
  v84 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements();
  v83 = *(v84 - 8);
  v12 = *(v83 + 64);
  __chkstk_darwin(v84);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for MobileDocumentRequestType.Storage();
  v93 = *(v94 - 8);
  v14 = *(v93 + 64);
  __chkstk_darwin(v94);
  v97 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for MobileDocumentIssuer();
  v16 = *(v95 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v95);
  v98 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ISO18013Response();
  v96 = *(v19 - 8);
  v20 = *(v96 + 64);
  __chkstk_darwin(v19);
  v99 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DeveloperTestDocumentResponseBuilder();
  v100 = *(v101 - 8);
  v22 = *(v100 + 64);
  __chkstk_darwin(v101);
  v102 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v24 = *(v109 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v109);
  v108 = &v83 - v26;
  v107 = sub_100007224(&qword_100842CB8, &unk_1006E02C0);
  v27 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v106 = &v83 - v28;
  v29 = type metadata accessor for MobileDocumentType();
  v110 = *(v29 - 8);
  v111 = v29;
  v30 = *(v110 + 64);
  __chkstk_darwin(v29);
  v115 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MobileDocumentRequestType();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v90 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v83 - v37;
  MobileDocumentReaderRequest.documentRequestType.getter();
  v39 = MobileDocumentRequestType.requestedElements.getter();
  v40 = *(v33 + 8);
  v92 = v32;
  v91 = v33 + 8;
  v89 = v40;
  v40(v38, v32);
  v41 = *(v39 + 16);
  if (!v41)
  {

    v42 = _swiftEmptyArrayStorage;
LABEL_5:
    v118 = v42;
    v45 = v116;
    sub_1003DA65C(&v118);
    if (v45)
    {
    }

    if (!v118[2])
    {

      (*(v103 + 104))(v105, enum case for DIPError.Code.documentReaderEmptyRequest(_:), v104);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003DC304(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v81 = 57;
      strcpy(v80, "response(for:)");
      v80[15] = -18;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    v113 = v19;
    v114 = a1;
    v112 = v16;
    v46 = v108;
    sub_1003DC278(v118 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v108);

    v47 = *(v46 + *(v109 + 48));
    v48 = v107;
    v49 = *(v107 + 48);
    v50 = *(v110 + 32);
    v51 = v106;
    v52 = v111;
    v50(v106, v46, v111);
    *&v51[v49] = v47;
    v53 = *&v51[*(v48 + 48)];
    v54 = v115;
    v50(v115, v51, v52);
    sub_1003D9744(v54);
    MobileDocumentType.iso18013Identifier.getter();
    v55 = DeveloperTestDocumentResponseBuilder.init(documentType:payloadElements:)();
    __chkstk_darwin(v55);
    v81 = v115;
    v82 = v114;
    v56 = sub_1003CE4C8(sub_1003DC2E8, v80, v53);

    sub_1003D6D50(v56);

    v57 = v99;
    DeveloperTestDocumentResponseBuilder.buildResponse(requestedElements:)();

    MobileDocumentIssuer.init(jurisdictionCode:)();
    v58 = v90;
    MobileDocumentReaderRequest.documentRequestType.getter();
    v59 = v97;
    MobileDocumentRequestType.storage.getter();
    v89(v58, v92);
    v60 = v93;
    v61 = v94;
    v62 = (*(v93 + 88))(v59, v94);
    if (v62 == enum case for MobileDocumentRequestType.Storage.displayOnly(_:) || v62 == enum case for MobileDocumentRequestType.Storage.dataTransfer(_:))
    {
      (*(v60 + 8))(v97, v61);
      v68 = v88;
      sub_1003C4424(v57, v88);
      v67 = v112;
      v66 = v113;
      v69 = v95;
      v70 = v83;
      v71 = v87;
      v72 = v84;
      (*(v83 + 16))(v87, v68, v84);
      (*(v70 + 56))(v71, 0, 1, v72);
      v73 = v85;
      v76 = v98;
      (*(v67 + 16))(v85, v98, v69);
      (*(v67 + 56))(v73, 0, 1, v69);
      MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)();
      (*(v70 + 8))(v88, v72);
      v77 = v69;
    }

    else
    {
      if (v62 != enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:))
      {
        (*(v103 + 104))(v105, enum case for DIPError.Code.internalError(_:), v104);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1003DC304(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        v81 = 105;
        strcpy(v80, "response(for:)");
        v80[15] = -18;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v112 + 8))(v98, v95);
        (*(v96 + 8))(v57, v113);
        (*(v100 + 8))(v102, v101);
        (*(v60 + 8))(v97, v61);
        return (*(v110 + 8))(v115, v111);
      }

      (*(v60 + 8))(v97, v61);
      v63 = type metadata accessor for CBOREncoder();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      CBOREncoder.init()();
      sub_1003DC304(&qword_100842CC0, &type metadata accessor for ISO18013Response);
      v66 = v113;
      dispatch thunk of CBOREncoder.encode<A>(_:)();
      v67 = v112;
      v74 = v95;

      (*(v83 + 56))(v87, 1, 1, v84);
      v75 = v85;
      v76 = v98;
      (*(v67 + 16))(v85, v98, v74);
      (*(v67 + 56))(v75, 0, 1, v74);
      MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)();
      v77 = v74;
      v57 = v99;
    }

    v78 = v101;
    v79 = v100;
    (*(v67 + 8))(v76, v77);
    (*(v96 + 8))(v57, v66);
    (*(v79 + 8))(v102, v78);
    return (*(v110 + 8))(v115, v111);
  }

  v113 = v19;
  v114 = a1;
  v112 = v16;
  v42 = sub_1003BA2D8(v41, 0);
  v43 = sub_1003BCF14(&v117, v42 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v41, v39);

  result = sub_10001FA6C();
  if (v43 == v41)
  {

    v16 = v112;
    v19 = v113;
    a1 = v114;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D9528(uint64_t a1, uint64_t a2)
{
  v5 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  sub_1003DC278(a1, &v25 - v10);
  v12 = *&v11[*(v5 + 48)];

  v13 = MobileDocumentType.iso18013Identifier.getter();
  if (v2)
  {
    v15 = type metadata accessor for MobileDocumentType();
    (*(*(v15 - 8) + 8))(v11, v15);
  }

  else
  {
    v16 = v14;
    v26 = v13;
    v17 = type metadata accessor for MobileDocumentType();
    v18 = *(*(v17 - 8) + 8);
    v18(v11, v17);
    sub_1003DC278(a2, v9);
    v19 = *(v9 + *(v5 + 48));

    v20 = MobileDocumentType.iso18013Identifier.getter();
    v22 = v21;
    v18(v9, v17);
    if (v26 == v20 && v16 == v22)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      LOBYTE(v9) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v9 & 1;
}

uint64_t sub_1003D9744(uint64_t a1)
{
  v2 = type metadata accessor for DeveloperTestPhotoIDCredentialBuilder();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError.Code();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeveloperTestJapanNationalIDCardCredentialBuilder();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale.Region();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v20 = type metadata accessor for MobileDocumentType.Identifier();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  MobileDocumentType.storage.getter();
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for MobileDocumentType.Identifier.nationalIDCard(_:))
  {
    (*(v21 + 96))(v24, v20);
    (*(v13 + 16))(v19, v24, v12);
    Locale.Region.init(stringLiteral:)();
    sub_1003DC304(&qword_100834780, &type metadata accessor for Locale.Region);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *(v13 + 8);
    v27(v17, v12);
    v27(v19, v12);
    if (v26)
    {
      DeveloperTestJapanNationalIDCardCredentialBuilder.init()();
      v28 = DeveloperTestJapanNationalIDCardCredentialBuilder.payloadElements.getter();
      (*(v41 + 8))(v11, v42);
      v27(v24, v12);
      return v28;
    }

    else
    {
      (*(v13 + 32))(v17, v24, v12);
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v30._countAndFlagsBits = 0xD000000000000026;
      v30._object = 0x80000001007110A0;
      String.append(_:)(v30);
      v31._countAndFlagsBits = Locale.Region.identifier.getter();
      v48 = v27;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0xD000000000000013;
      v32._object = 0x80000001007110D0;
      String.append(_:)(v32);
      (*(v43 + 104))(v45, enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:), v44);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003DC304(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v48(v17, v12);
    }
  }

  else if (v25 == enum case for MobileDocumentType.Identifier.driversLicense(_:))
  {
    return static DeveloperTestMDLCredentialBuilder.payloadElements.getter();
  }

  else if (v25 == enum case for MobileDocumentType.Identifier.photoID(_:))
  {
    v33 = v37;
    DeveloperTestPhotoIDCredentialBuilder.init()();
    v34 = DeveloperTestPhotoIDCredentialBuilder.payloadElements.getter();
    (*(v38 + 8))(v33, v39);
    return v34;
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v35._countAndFlagsBits = 0xD00000000000001ALL;
    v35._object = 0x8000000100710680;
    String.append(_:)(v35);
    type metadata accessor for MobileDocumentType();
    _print_unlocked<A, B>(_:_:)();
    (*(v43 + 104))(v45, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v44);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003DC304(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v21 + 8))(v24, v20);
  }
}

char *sub_1003D9F00@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  v5 = type metadata accessor for MobileDocumentRequestType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentReaderRequest.documentRequestType.getter();
  v10 = MobileDocumentRequestType.isRawDataRequest.getter();
  (*(v6 + 8))(v9, v5);
  result = sub_10037A314(a1, v10 & 1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003DA030()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  sub_1003DC424((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_1003DA090(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1003D7220(a1, a2, v5, 1);
}

uint64_t sub_1003DA13C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003DA174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1003DA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1003DA2A4, 0, 0);
}

uint64_t sub_1003DA2A4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1003DC304(&qword_100842CA8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003DC304(&qword_100842CB0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1003DA434;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1003DA434()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1003DA5F0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1003DA5F0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

Swift::Int sub_1003DA65C(void **a1)
{
  v2 = *(sub_100007224(&qword_10083C0D0, &unk_1006DF880) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003BD224(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1003DA710(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1003DA710(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100007224(&qword_10083C0D0, &unk_1006DF880);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100007224(&qword_10083C0D0, &unk_1006DF880) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003DAC78(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1003DA854(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1003DA854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v66 = &v52 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v52 - v20;
  result = __chkstk_darwin(v19);
  v25 = &v52 - v24;
  v54 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v23 + 72);
    v28 = *a4 + v27 * (a3 - 1);
    v59 = -v27;
    v60 = v26;
    v29 = a1 - a3;
    v53 = v27;
    v30 = v26 + v27 * a3;
    v64 = v21;
    v65 = &v52 - v24;
    v61 = v18;
    v62 = v10;
    while (2)
    {
      v57 = v28;
      v58 = a3;
      v55 = v30;
      v56 = v29;
      v31 = v29;
      while (1)
      {
        sub_1003DC278(v30, v25);
        v69 = v28;
        sub_1003DC278(v28, v21);
        sub_1003DC278(v25, v18);
        v32 = *&v18[*(v10 + 48)];

        v33 = MobileDocumentType.iso18013Identifier.getter();
        if (v5)
        {
          v51 = type metadata accessor for MobileDocumentType();
          (*(*(v51 - 8) + 8))(v18, v51);
          sub_1003DC34C(v21);
          return sub_1003DC34C(v65);
        }

        v35 = v33;
        v36 = v34;
        v67 = v30;
        v68 = v31;
        v37 = v21;
        v38 = type metadata accessor for MobileDocumentType();
        v39 = *(*(v38 - 8) + 8);
        v39(v18, v38);
        v40 = v66;
        sub_1003DC278(v37, v66);
        v41 = *(v40 + *(v10 + 48));

        v42 = MobileDocumentType.iso18013Identifier.getter();
        v70 = 0;
        v43 = v42;
        v45 = v44;
        v39(v40, v38);
        if (v35 == v43 && v36 == v45)
        {

          v21 = v64;
          sub_1003DC34C(v64);
          v25 = v65;
          result = sub_1003DC34C(v65);
          v5 = v70;
          v18 = v61;
          v10 = v62;
          goto LABEL_13;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v21 = v64;
        sub_1003DC34C(v64);
        v25 = v65;
        result = sub_1003DC34C(v65);
        v10 = v62;
        if ((v46 & 1) == 0)
        {
          break;
        }

        v5 = v70;
        v47 = v68;
        if (!v60)
        {
          __break(1u);
          return result;
        }

        v48 = v67;
        v49 = v63;
        sub_1003DC3B4(v67, v63);
        v50 = v69;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1003DC3B4(v49, v50);
        v28 = v50 + v59;
        v30 = v48 + v59;
        v31 = v47 + 1;
        v18 = v61;
        if (v47 == -1)
        {
          goto LABEL_13;
        }
      }

      v5 = v70;
      v18 = v61;
LABEL_13:
      a3 = v58 + 1;
      v28 = v57 + v53;
      v29 = v56 - 1;
      v30 = v55 + v53;
      if (v58 + 1 != v54)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1003DAC78(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v163 = a1;
  v8 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v183 = *(v8 - 8);
  v9 = *(v183 + 64);
  v10 = __chkstk_darwin(v8);
  v169 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v167 = &v153 - v13;
  v14 = __chkstk_darwin(v12);
  v168 = &v153 - v15;
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = __chkstk_darwin(&v153 - v19);
  v22 = &v153 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v153 - v24;
  v26 = __chkstk_darwin(v23);
  v182 = &v153 - v27;
  v28 = __chkstk_darwin(v26);
  result = __chkstk_darwin(v28);
  if (a3[1] < 1)
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_104:
    v62 = *v163;
    if (*v163)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v35 = a3[1];
  v160 = &v153 - v31;
  v161 = v30;
  v170 = result;
  v172 = v22;
  v164 = v34;
  v165 = v33;
  v166 = v32;
  v159 = a4;
  v36 = 0;
  v37 = _swiftEmptyArrayStorage;
  v177 = a3;
  v178 = v8;
  v174 = v25;
  while (1)
  {
    if (v36 + 1 >= v35)
    {
      v46 = v36 + 1;
      v62 = v36;
    }

    else
    {
      v175 = v35;
      v38 = *a3;
      v39 = *(v183 + 72);
      v181 = *a3 + v39 * (v36 + 1);
      v40 = v160;
      sub_1003DC278(v181, v160);
      v41 = v161;
      sub_1003DC278(v38 + v39 * v36, v161);
      LODWORD(v171) = sub_1003D9528(v40, v41);
      if (v5)
      {
        sub_1003DC34C(v41);
        sub_1003DC34C(v40);
      }

      sub_1003DC34C(v41);
      sub_1003DC34C(v40);
      v158 = v36;
      v42 = v36 + 2;
      result = v38 + v39 * v42;
      v43 = v39;
      v176 = v39;
      v8 = v178;
      v44 = v181;
      v173 = v37;
      while (1)
      {
        v46 = v175;
        if (v175 == v42)
        {
          break;
        }

        v180 = result;
        v47 = v182;
        sub_1003DC278(result, v182);
        sub_1003DC278(v44, v25);
        v48 = v47;
        v49 = v172;
        sub_1003DC278(v48, v172);
        v50 = *(v49 + *(v8 + 48));

        v51 = MobileDocumentType.iso18013Identifier.getter();
        v53 = v52;
        v179 = v42;
        v181 = v44;
        v54 = v8;
        v55 = type metadata accessor for MobileDocumentType();
        v56 = *(*(v55 - 8) + 8);
        v56(v49, v55);
        v57 = v170;
        sub_1003DC278(v25, v170);
        v58 = *(v57 + *(v54 + 48));

        v59 = MobileDocumentType.iso18013Identifier.getter();
        v61 = v60;
        v56(v57, v55);
        if (v51 == v59 && v53 == v61)
        {
          v45 = 0;
        }

        else
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v5 = 0;
        v8 = v178;
        v25 = v174;

        sub_1003DC34C(v25);
        sub_1003DC34C(v182);
        v42 = v179 + 1;
        v43 = v176;
        a3 = v177;
        result = v180 + v176;
        v44 = v181 + v176;
        v37 = v173;
        if ((v171 ^ v45))
        {
          v46 = v179;
          break;
        }
      }

      v62 = v158;
      if (v171)
      {
        if (v46 < v158)
        {
          goto LABEL_140;
        }

        if (v158 < v46)
        {
          v112 = v43 * (v46 - 1);
          v113 = v46 * v43;
          v175 = v46;
          v114 = v158;
          v115 = v158 * v43;
          do
          {
            if (v114 != --v46)
            {
              v116 = *a3;
              if (!v116)
              {
                goto LABEL_144;
              }

              sub_1003DC3B4(v116 + v115, v169);
              if (v115 < v112 || v116 + v115 >= (v116 + v113))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v115 != v112)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1003DC3B4(v169, v116 + v112);
              v43 = v176;
              a3 = v177;
            }

            ++v114;
            v112 -= v43;
            v113 -= v43;
            v115 += v43;
          }

          while (v114 < v46);
          v8 = v178;
          v62 = v158;
          v46 = v175;
        }
      }
    }

    v63 = a3[1];
    if (v46 >= v63)
    {
      goto LABEL_22;
    }

    if (__OFSUB__(v46, v62))
    {
      goto LABEL_136;
    }

    if (v46 - v62 >= v159)
    {
LABEL_22:
      v65 = v46;
      if (v46 < v62)
      {
        goto LABEL_135;
      }

      goto LABEL_23;
    }

    if (__OFADD__(v62, v159))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      return result;
    }

    if (v62 + v159 >= v63)
    {
      v64 = a3[1];
    }

    else
    {
      v64 = v62 + v159;
    }

    if (v64 < v62)
    {
      goto LABEL_139;
    }

    if (v46 == v64)
    {
      goto LABEL_22;
    }

    v173 = v37;
    v117 = *a3;
    v118 = *(v183 + 72);
    v119 = *a3 + v118 * (v46 - 1);
    v171 = -v118;
    v158 = v62;
    v120 = v62 - v46;
    v175 = v46;
    v176 = v117;
    v154 = v118;
    v121 = v117 + v46 * v118;
    v123 = v165;
    v122 = v166;
    v124 = v164;
    v162 = v64;
    do
    {
      v155 = v121;
      v156 = v120;
      v125 = v120;
      v157 = v119;
      v126 = v119;
      while (1)
      {
        v180 = v121;
        sub_1003DC278(v121, v123);
        sub_1003DC278(v126, v122);
        sub_1003DC278(v123, v124);
        v127 = *(v124 + *(v8 + 48));

        v128 = MobileDocumentType.iso18013Identifier.getter();
        v130 = v8;
        v131 = v124;
        if (v5)
        {
          v152 = type metadata accessor for MobileDocumentType();
          (*(*(v152 - 8) + 8))(v124, v152);
LABEL_117:
          sub_1003DC34C(v166);
          sub_1003DC34C(v165);
        }

        v132 = v128;
        v133 = v129;
        v179 = v125;
        v134 = type metadata accessor for MobileDocumentType();
        v135 = *(*(v134 - 8) + 8);
        v181 = 0;
        v135(v131, v134);
        v136 = v122;
        v137 = v168;
        sub_1003DC278(v136, v168);
        v138 = *(v137 + *(v130 + 48));

        v139 = v181;
        v140 = MobileDocumentType.iso18013Identifier.getter();
        v181 = v139;
        if (v139)
        {

          v135(v137, v134);
          goto LABEL_117;
        }

        v142 = v140;
        v143 = v141;
        v135(v137, v134);
        if (v132 == v142 && v133 == v143)
        {
          break;
        }

        v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v122 = v166;
        sub_1003DC34C(v166);
        v123 = v165;
        result = sub_1003DC34C(v165);
        v5 = v181;
        if ((v144 & 1) == 0)
        {
          goto LABEL_98;
        }

        v8 = v178;
        v145 = v179;
        v124 = v164;
        if (!v176)
        {
          goto LABEL_143;
        }

        v146 = v180;
        v147 = v167;
        sub_1003DC3B4(v180, v167);
        swift_arrayInitWithTakeFrontToBack();
        sub_1003DC3B4(v147, v126);
        v126 += v171;
        v121 = v146 + v171;
        v125 = v145 + 1;
        if (v145 == -1)
        {
          goto LABEL_99;
        }
      }

      v122 = v166;
      sub_1003DC34C(v166);
      v123 = v165;
      sub_1003DC34C(v165);
      v5 = v181;
LABEL_98:
      v8 = v178;
      v124 = v164;
LABEL_99:
      v119 = v157 + v154;
      v120 = v156 - 1;
      v121 = v155 + v154;
      ++v175;
      v65 = v162;
    }

    while (v175 != v162);
    a3 = v177;
    v37 = v173;
    v62 = v158;
    if (v162 < v158)
    {
      goto LABEL_135;
    }

LABEL_23:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003BC0AC(0, *(v37 + 2) + 1, 1, v37);
      v37 = result;
    }

    v67 = *(v37 + 2);
    v66 = *(v37 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_1003BC0AC((v66 > 1), v67 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 2) = v68;
    v69 = &v37[16 * v67];
    *(v69 + 4) = v62;
    *(v69 + 5) = v65;
    v62 = *v163;
    if (!*v163)
    {
      goto LABEL_145;
    }

    v162 = v65;
    if (v67)
    {
      break;
    }

LABEL_71:
    v35 = a3[1];
    v36 = v162;
    v25 = v174;
    if (v162 >= v35)
    {
      goto LABEL_104;
    }
  }

  while (1)
  {
    v70 = v68 - 1;
    if (v68 >= 4)
    {
      v75 = &v37[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_124;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_125;
      }

      v82 = &v37[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_127;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_130;
      }

      if (v86 >= v78)
      {
        v104 = &v37[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_134;
        }

        if (v73 < v107)
        {
          v70 = v68 - 2;
        }

        goto LABEL_63;
      }

      goto LABEL_42;
    }

    if (v68 == 3)
    {
      v71 = *(v37 + 4);
      v72 = *(v37 + 5);
      v81 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      v74 = v81;
LABEL_42:
      if (v74)
      {
        goto LABEL_126;
      }

      v87 = &v37[16 * v68];
      v89 = *v87;
      v88 = *(v87 + 1);
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_129;
      }

      v93 = &v37[16 * v70 + 32];
      v95 = *v93;
      v94 = *(v93 + 1);
      v81 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v81)
      {
        goto LABEL_132;
      }

      if (__OFADD__(v91, v96))
      {
        goto LABEL_133;
      }

      if (v91 + v96 >= v73)
      {
        if (v73 < v96)
        {
          v70 = v68 - 2;
        }

        goto LABEL_63;
      }

      goto LABEL_56;
    }

    v97 = &v37[16 * v68];
    v99 = *v97;
    v98 = *(v97 + 1);
    v81 = __OFSUB__(v98, v99);
    v91 = v98 - v99;
    v92 = v81;
LABEL_56:
    if (v92)
    {
      goto LABEL_128;
    }

    v100 = &v37[16 * v70];
    v102 = *(v100 + 4);
    v101 = *(v100 + 5);
    v81 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v81)
    {
      goto LABEL_131;
    }

    if (v103 < v91)
    {
      goto LABEL_71;
    }

LABEL_63:
    v108 = v70 - 1;
    if (v70 - 1 >= v68)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v109 = *&v37[16 * v108 + 32];
    v110 = *&v37[16 * v70 + 40];
    sub_1003DB9A0(*a3 + *(v183 + 72) * v109, *a3 + *(v183 + 72) * *&v37[16 * v70 + 32], *a3 + *(v183 + 72) * v110, v62);
    if (v5)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1003BBEA4(v37);
    }

    if (v108 >= *(v37 + 2))
    {
      goto LABEL_121;
    }

    v111 = &v37[16 * v108];
    *(v111 + 4) = v109;
    *(v111 + 5) = v110;
    v184 = v37;
    result = sub_1003BBE18(v70);
    v37 = v184;
    v68 = *(v184 + 2);
    if (v68 <= 1)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = sub_1003BBEA4(v37);
  v37 = result;
LABEL_106:
  v184 = v37;
  v148 = *(v37 + 2);
  if (v148 >= 2)
  {
    while (*a3)
    {
      v149 = *&v37[16 * v148];
      v150 = *&v37[16 * v148 + 24];
      sub_1003DB9A0(*a3 + *(v183 + 72) * v149, *a3 + *(v183 + 72) * *&v37[16 * v148 + 16], *a3 + *(v183 + 72) * v150, v62);
      if (v5)
      {
      }

      if (v150 < v149)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1003BBEA4(v37);
      }

      if (v148 - 2 >= *(v37 + 2))
      {
        goto LABEL_123;
      }

      v151 = &v37[16 * v148];
      *v151 = v149;
      *(v151 + 1) = v150;
      v184 = v37;
      result = sub_1003BBE18(v148 - 1);
      v37 = v184;
      v148 = *(v184 + 2);
      if (v148 <= 1)
      {
      }
    }

    goto LABEL_142;
  }
}

uint64_t sub_1003DB9A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v93 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v18 = &v87 - v17;
  __chkstk_darwin(v16);
  v20 = __chkstk_darwin(&v87 - v19);
  v22 = &v87 - v21;
  v23 = __chkstk_darwin(v20);
  v96 = &v87 - v24;
  result = __chkstk_darwin(v23);
  v99 = &v87 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (a2 - a1 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_76;
  }

  v31 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v30 != -1)
  {
    v32 = (a2 - a1) / v30;
    v105 = a1;
    v104 = a4;
    v97 = v10;
    v98 = v30;
    if (v32 < v31 / v30)
    {
      v94 = result;
      v95 = v22;
      v33 = v32 * v30;
      if (a4 < a1 || a1 + v33 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v96;
      }

      else
      {
        v34 = v96;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v93 = a4 + v33;
      v103 = a4 + v33;
      v36 = v33 < 1 || a2 >= a3;
      if (!v36)
      {
        v90 = a3;
        while (1)
        {
          v37 = v99;
          sub_1003DC278(a2, v99);
          sub_1003DC278(a4, v34);
          v38 = v37;
          v39 = v95;
          sub_1003DC278(v38, v95);
          v40 = *(v39 + *(v10 + 48));

          v41 = MobileDocumentType.iso18013Identifier.getter();
          if (v5)
          {
            v85 = type metadata accessor for MobileDocumentType();
            (*(*(v85 - 8) + 8))(v39, v85);
            sub_1003DC34C(v96);
            sub_1003DC34C(v99);
            goto LABEL_74;
          }

          v43 = v41;
          v44 = v34;
          v45 = v42;
          v100 = a4;
          v101 = a1;
          v102 = a2;
          v46 = type metadata accessor for MobileDocumentType();
          v47 = *(*(v46 - 8) + 8);
          v47(v39, v46);
          v48 = v44;
          v49 = v94;
          sub_1003DC278(v48, v94);
          v50 = *(v49 + *(v10 + 48));

          v51 = MobileDocumentType.iso18013Identifier.getter();
          v53 = v52;
          v47(v49, v46);
          if (v43 == v51 && v45 == v53)
          {
            break;
          }

          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v34 = v96;
          sub_1003DC34C(v96);
          sub_1003DC34C(v99);
          v5 = 0;
          v54 = v101;
          v10 = v97;
          if ((v55 & 1) == 0)
          {
            goto LABEL_30;
          }

          v56 = v98;
          a2 = v102 + v98;
          a4 = v100;
          v57 = v90;
          if (v101 < v102 || v101 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            if (v101 == v102)
            {
              goto LABEL_39;
            }

            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v98;
LABEL_39:
          a1 = v54 + v56;
          v105 = a1;
          if (a4 >= v93 || a2 >= v57)
          {
            goto LABEL_74;
          }
        }

        v34 = v96;
        sub_1003DC34C(v96);
        sub_1003DC34C(v99);
        v5 = 0;
        v54 = v101;
        v10 = v97;
LABEL_30:
        v56 = v98;
        a4 = v100 + v98;
        v57 = v90;
        if (v54 < v100 || v54 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v54 == v100)
          {
LABEL_36:
            v104 = a4;
            a2 = v102;
            goto LABEL_39;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v56 = v98;
        goto LABEL_36;
      }

      goto LABEL_74;
    }

    v91 = v26;
    v92 = v27;
    v35 = v31 / v30 * v30;
    if (a4 < a2 || a2 + v35 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_44:
        v58 = a4 + v35;
        if (v35 >= 1)
        {
          v59 = -v30;
          v60 = a4 + v35;
          v61 = v92;
          v100 = a4;
          v101 = a1;
          v89 = v18;
          v96 = -v30;
          do
          {
            v87 = v58;
            v62 = a2;
            a2 += v59;
            v102 = a2;
            v90 = v62;
            while (1)
            {
              v98 = a3;
              if (v62 <= a1)
              {
                v105 = v62;
                v103 = v87;
                goto LABEL_74;
              }

              v88 = v58;
              v94 = v60;
              v99 = v60 + v59;
              sub_1003DC278(v60 + v59, v18);
              v64 = v91;
              sub_1003DC278(a2, v91);
              sub_1003DC278(v18, v61);
              v65 = *(v61 + *(v10 + 48));

              v66 = MobileDocumentType.iso18013Identifier.getter();
              if (v5)
              {
                v95 = v5;
                v86 = type metadata accessor for MobileDocumentType();
                (*(*(v86 - 8) + 8))(v61, v86);
                sub_1003DC34C(v64);
                sub_1003DC34C(v89);
                v105 = v90;
                v103 = v88;
                goto LABEL_74;
              }

              v68 = v66;
              v69 = v67;
              v70 = v10;
              v71 = type metadata accessor for MobileDocumentType();
              v72 = *(*(v71 - 8) + 8);
              v72(v61, v71);
              v73 = v64;
              v74 = v64;
              v75 = v93;
              sub_1003DC278(v74, v93);
              v76 = *(v75 + *(v70 + 48));

              v77 = MobileDocumentType.iso18013Identifier.getter();
              v95 = 0;
              v78 = v77;
              v80 = v79;
              v72(v75, v71);
              if (v68 != v78)
              {
                goto LABEL_55;
              }

              if (v69 == v80)
              {
                v81 = 0;
              }

              else
              {
LABEL_55:
                v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
              }

              a2 = v102;
              v82 = v73;
              v61 = v92;

              v83 = v98;
              a3 = v98 + v96;
              sub_1003DC34C(v82);
              v18 = v89;
              sub_1003DC34C(v89);
              a1 = v101;
              if (v81)
              {
                break;
              }

              v58 = v99;
              v5 = v95;
              v36 = v83 >= v94;
              v10 = v97;
              if (v36 && a3 < v94)
              {
                v63 = v100;
                if (v98 != v94)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              else
              {
                swift_arrayInitWithTakeFrontToBack();
                v63 = v100;
              }

              v60 = v58;
              v59 = v96;
              v62 = v90;
              if (v99 <= v63)
              {
                a2 = v90;
                goto LABEL_73;
              }
            }

            v36 = v83 >= v90;
            v5 = v95;
            v10 = v97;
            if (v36 && a3 < v90)
            {
              v84 = v100;
              if (v98 != v90)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            else
            {
              swift_arrayInitWithTakeFrontToBack();
              v84 = v100;
            }

            v60 = v94;
            v58 = v88;
            v59 = v96;
          }

          while (v94 > v84);
        }

LABEL_73:
        v105 = a2;
        v103 = v58;
LABEL_74:
        sub_1003BBFB0(&v105, &v104, &v103);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v30 = v98;
    goto LABEL_44;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_1003DC278(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DC304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003DC34C(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003DC3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003DC460@<X0>(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  v2 = dispatch thunk of Error._domain.getter();
  v4 = v3;
  if (v2 == String.init(cString:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  swift_getErrorValue();
  result = dispatch thunk of Error._code.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    if ((result - 4) <= 0x13)
    {
      v9 = *(&off_10080EC10 + (result - 4));
LABEL_13:
      v10 = *v9;
      v11 = type metadata accessor for DIPError.Code();
      return (*(*(v11 - 8) + 104))(a1, v10, v11);
    }

LABEL_12:
    v9 = &enum case for DIPError.Code.documentReaderSTSSessionUnexpectedError(_:);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_1003DC604()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[3];
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  swift_unknownObjectRetain();
  dispatch thunk of DistributedActor.actorSystem.getter();
  swift_unknownObjectRelease();
  v6 = v1[3];
  swift_unknownObjectRetain();
  NWActorSystem.invalidateActor<A>(_:)();

  swift_unknownObjectRelease();
  v7 = v1[2];

  v8 = v1[3];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1003DC6CC()
{
  sub_1003DC604();

  return swift_deallocClassInstance();
}

uint64_t sub_1003DC718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003DC7D0, v3, 0);
}

uint64_t sub_1003DC7D0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = sub_100130390(0, 0, v1, v4, v3);
  v0[12] = v6;
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
  DistributedActor<>.peer.getter();
  if (v0[5])
  {
    v7 = v0[6];
    sub_10000BA08(v0 + 2, v0[5]);

    dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();

    sub_10000BB78(v0 + 2);
  }

  else
  {
    sub_10000BE18((v0 + 2), &qword_100842FE8, &qword_1006E06F8);
  }

  v8 = v0[10];
  v9 = swift_task_alloc();
  v0[13] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v0[14] = DistributedActor.asLocalActor.getter();
  v10 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_1003DCA1C;
  v12 = v0[7];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v12, &unk_1006E0780);
}

uint64_t sub_1003DCA1C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 128) = v0;

  swift_unknownObjectRelease();

  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1003E4BE8;
  }

  else
  {
    v8 = sub_1003E4BE4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003DCB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003DCC40, v3, 0);
}

uint64_t sub_1003DCC40()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = sub_100130678(0, 0, v1, v4, v3);
  v0[12] = v6;
  type metadata accessor for RemoteDocumentProviderActor(0);
  sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
  DistributedActor<>.peer.getter();
  if (v0[5])
  {
    v7 = v0[6];
    sub_10000BA08(v0 + 2, v0[5]);

    dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();

    sub_10000BB78(v0 + 2);
  }

  else
  {
    sub_10000BE18((v0 + 2), &qword_100842FE8, &qword_1006E06F8);
  }

  v8 = v0[10];
  v9 = swift_task_alloc();
  v0[13] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v0[14] = DistributedActor.asLocalActor.getter();
  v10 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v11 = swift_task_alloc();
  v0[15] = v11;
  type metadata accessor for RemoteWebPresentmentResponse(0);
  *v11 = v0;
  v11[1] = sub_1003DCE8C;
  v12 = v0[7];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v12, &unk_1006E0728);
}

uint64_t sub_1003DCE8C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 128) = v0;

  swift_unknownObjectRelease();

  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1003DD070;
  }

  else
  {
    v8 = sub_1003DCFF8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003DCFF8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003DD070()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

void sub_1003DD0E8()
{
  type metadata accessor for RemoteWebPresentmentResponse(0);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);

  Task.cancel()();
}

uint64_t sub_1003DD14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_1003DD16C, a2, 0);
}

uint64_t sub_1003DD16C()
{
  v1 = v0[5];
  type metadata accessor for OSTransaction();
  v0[2] = v1;
  type metadata accessor for RemoteDocumentProviderActor(0);

  v2 = String.init<A>(describing:)();
  v4 = v3;
  v0[7] = v3;
  v5 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v6 = v0;
  v6[1] = sub_1003DD2B0;
  v8 = v0[6];
  v9 = v0[4];

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v9, v2, v4, &unk_1006E0790, v8, v7, &type metadata for () + 8, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003DD2B0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;

  if (v0)
  {
    v6 = *(v2 + 40);

    return _swift_task_switch(sub_1003E4BEC, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_1003DD408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_1003DD428, a2, 0);
}

uint64_t sub_1003DD428()
{
  v1 = v0[5];
  type metadata accessor for OSTransaction();
  v0[2] = v1;
  type metadata accessor for RemoteDocumentProviderActor(0);

  v2 = String.init<A>(describing:)();
  v4 = v3;
  v0[7] = v3;
  v5 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v8 = type metadata accessor for RemoteWebPresentmentResponse(0);
  *v6 = v0;
  v6[1] = sub_1003DD570;
  v9 = v0[6];
  v10 = v0[4];

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v10, v2, v4, &unk_1006E0738, v9, v7, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003DD570()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;

  if (v0)
  {
    v6 = *(v2 + 40);

    return _swift_task_switch(sub_1003DD6C8, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_1003DD6E0()
{
  v1[4] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003DD7FC, 0, 0);
}

uint64_t sub_1003DD7FC()
{
  v1 = v0[4];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[10];
  if (is_remote)
  {
    v4 = *(v0[4] + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem);
    v5 = v0[10];
    NWActorSystem.makeInvocationEncoder()();
    v6 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v7 = v0[10];
    sub_1003DDEE0();
    sub_1003DDF34();
    NWActorSystemInvocationEncoder.recordReturnType<A>(_:)();
    v8 = v0[10];
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v9)
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
      v10 = v0[10];
      v11 = v0[7];

      v12 = v0[1];

      return v12();
    }

    else
    {
      v17 = v0[7];
      RemoteCallTarget.init(_:)();
      v18 = async function pointer to NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
      v19 = swift_task_alloc();
      v0[11] = v19;
      v20 = type metadata accessor for RemoteDocumentProviderActor(0);
      sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
      *v19 = v0;
      v19[1] = sub_1003DDAC4;
      v21 = v0[10];
      v22 = v0[7];
      v23 = v0[4];

      return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v0 + 2, v23, v22, v21, v6, &type metadata for RemoteDocumentProviderCapabilities, v20, v6);
    }
  }

  else
  {
    v14 = v0[7];
    v15 = v0[10];

    v16 = v0[1];

    return v16(3157553, 0xE300000000000000);
  }
}

uint64_t sub_1003DDAC4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1003DDC90;
  }

  else
  {
    v3 = sub_1003DDBD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003DDBD8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8(v5, v4);
}

uint64_t sub_1003DDC90()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003DDD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1003DDDD4;

  return sub_1003DD6E0();
}

uint64_t sub_1003DDDD4(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  v4 = *(*v2 + 16);
  v7 = *v2;
  *v4 = a1;
  v4[1] = a2;

  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_1003DDEE0()
{
  result = qword_100842D50;
  if (!qword_100842D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842D50);
  }

  return result;
}

unint64_t sub_1003DDF34()
{
  result = qword_100842D58;
  if (!qword_100842D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842D58);
  }

  return result;
}

uint64_t sub_1003DDFA8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for RemoteWebPresentmentRequest(0);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_100007224(&qword_100842D60, &qword_1006E03B8);
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003DE15C, 0, 0);
}

uint64_t sub_1003DE15C()
{
  v1 = v0[3];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[14];
    v3 = v0[11];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[2];
    v7 = *(v0[3] + OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_actorSystem);
    NWActorSystem.makeInvocationEncoder()();
    sub_1003E3BBC(v6, v5, type metadata accessor for RemoteWebPresentmentRequest);
    RemoteCallArgument.init(label:name:value:)();
    sub_1003DF7C0(&qword_100842D68, type metadata accessor for RemoteWebPresentmentRequest);
    sub_1003DF7C0(&qword_100842D70, type metadata accessor for RemoteWebPresentmentRequest);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v8 = v0[14];
    v9 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v10 = v0[14];
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v11)
    {
      v12 = v0[13];
      (*(v0[10] + 8))(v0[11], v0[9]);
      (*(v12 + 8))(v0[14], v0[12]);
      v13 = v0[14];
      v14 = v0[11];
      v15 = v0[8];
      v16 = v0[6];

      v17 = v0[1];

      return v17();
    }

    else
    {
      v22 = v0[6];
      RemoteCallTarget.init(_:)();
      v23 = async function pointer to NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)[1];
      v24 = swift_task_alloc();
      v0[15] = v24;
      v25 = type metadata accessor for RemoteDocumentProviderActor(0);
      v26 = sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
      *v24 = v0;
      v24[1] = sub_1003DE4E4;
      v27 = v0[14];
      v28 = v0[6];
      v29 = v0[3];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v29, v28, v27, v9, v25, v9, v26, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v19 = swift_task_alloc();
    v0[17] = v19;
    *v19 = v0;
    v19[1] = sub_1003DE6E4;
    v20 = v0[2];
    v21 = v0[3];

    return sub_1003DEC48(v20);
  }
}

uint64_t sub_1003DE4E4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1003DE858;
  }

  else
  {
    v3 = sub_1003DE5F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003DE5F8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003DE6E4()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v9 = *v0;

  v3 = v1[14];
  v4 = v1[11];
  v5 = v1[8];
  v6 = v1[6];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1003DE858()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003DE938(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_1003DEAD0;

  return sub_1003DDFA8(v6);
}

uint64_t sub_1003DEAD0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1003DEC48(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(type metadata accessor for RemoteWebPresentmentRequest(0) - 8);
  v2[25] = v3;
  v2[26] = *(v3 + 64);
  v2[27] = swift_task_alloc();
  v4 = *(*(type metadata accessor for RemoteDocumentProviderActor.RequestState(0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[30] = v5;
  v6 = *(v5 - 8);
  v2[31] = v6;
  v7 = *(v6 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1003DEDB8, v1, 0);
}

uint64_t sub_1003DEDB8()
{
  v66 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v8 = *(v0 + 192);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v65 = v10;
    *v9 = 136315138;
    type metadata accessor for RemoteDocumentProviderActor(0);
    sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
    DistributedActor<>.peer.getter();
    sub_100007224(&qword_100842FE8, &qword_1006E06F8);
    v11 = String.init<A>(describing:)();
    v13 = sub_100141FE4(v11, v12, &v65);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "RemoteDocumentProviderActor presentRequestNotification called by peer %s", v9, 0xCu);
    sub_10000BB78(v10);

    v14 = *(v7 + 8);
    v14(v5, v6);
  }

  else
  {
    v15 = *(v0 + 272);
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 192);
  v20 = OBJC_IVAR____TtC8coreidvd27RemoteDocumentProviderActor_currentState;
  swift_beginAccess();
  sub_1003E3BBC(v19 + v20, v18, type metadata accessor for RemoteDocumentProviderActor.RequestState);
  v21 = sub_100007224(&unk_100843210, &qword_1006E0550);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v18, 1, v21);
  sub_1003E3B60(v18);
  if (v23 == 1)
  {
    v24 = *(v0 + 192);
    type metadata accessor for RemoteDocumentProviderActor(0);
    sub_1003DF7C0(&qword_100843220, type metadata accessor for RemoteDocumentProviderActor);
    DistributedActor<>.peer.getter();
    if (*(v0 + 80))
    {
      v25 = *(v0 + 224);
      v64 = *(v0 + 208);
      v62 = *(v0 + 216);
      v63 = *(v0 + 200);
      v60 = *(v0 + 192);
      v61 = *(v0 + 184);
      sub_10001F358((v0 + 56), v0 + 16);
      v59 = v19;
      v26 = *(v0 + 48);
      sub_10000BA08((v0 + 16), *(v0 + 40));

      dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();

      v27 = type metadata accessor for WebPresentmentAnalyticsReporter();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v58 = WebPresentmentAnalyticsReporter.init()();
      *(v0 + 280) = v58;
      v30 = v25;
      v31 = (v25 + *(v21 + 48));
      v32 = *(v0 + 48);
      sub_10000BA08((v0 + 16), *(v0 + 40));
      dispatch thunk of NWActorPeer.endpoint.getter();
      v31[3] = v27;
      v31[4] = &protocol witness table for WebPresentmentAnalyticsReporter;
      *v31 = v58;
      (*(v22 + 56))(v30, 0, 1, v21);
      swift_beginAccess();

      sub_1003E471C(v30, v59 + v20);
      swift_endAccess();
      sub_1003E3BBC(v61, v62, type metadata accessor for RemoteWebPresentmentRequest);
      v33 = (*(v63 + 80) + 40) & ~*(v63 + 80);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v60;
      sub_1003E4890(v62, v34 + v33);
      *(v34 + ((v64 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v58;

      v35 = swift_task_alloc();
      *(v0 + 288) = v35;
      *v35 = v0;
      v35[1] = sub_1003DF4D0;
      v36 = *(v0 + 192);

      return sub_1003DC718(sub_1003DC718, &unk_1006E0768, v34);
    }

    v38 = (v0 + 264);
    v44 = *(v0 + 264);
    sub_10000BE18(v0 + 56, &qword_100842FE8, &qword_1006E06F8);
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v40, v45))
    {
      v42 = 3;
      goto LABEL_15;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v40, v45, "RemoteDocumentProviderActor peer is unexpectedly nil, failing", v46, 2u);
    v42 = 3;
    goto LABEL_13;
  }

  v38 = (v0 + 256);
  v39 = *(v0 + 256);
  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  v42 = 2;
  if (os_log_type_enabled(v40, v41))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "RemoteDocumentProviderActor presentRequestNotification was called while there was already a request in progress. Ignoring the new incoming request.", v43, 2u);
LABEL_13:
  }

LABEL_15:
  v47 = *v38;
  v48 = *(v0 + 240);
  v49 = *(v0 + 248);

  v14(v47, v48);
  sub_1003E3C24();
  swift_allocError();
  *v50 = v42;
  swift_willThrow();
  v52 = *(v0 + 264);
  v51 = *(v0 + 272);
  v53 = *(v0 + 256);
  v55 = *(v0 + 224);
  v54 = *(v0 + 232);
  v56 = *(v0 + 216);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1003DF4D0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1003DF6B4;
  }

  else
  {
    v6 = sub_1003DF5FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003DF5FC()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];

  sub_10000BB78(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003DF6B4()
{
  v1 = v0[37];
  v2 = v0[35];

  swift_errorRetain();
  v3 = sub_1003E53BC(v1);
  sub_1003E3C24();
  swift_allocError();
  *v4 = v3;
  swift_willThrow();

  sub_10000BB78(v0 + 2);
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003DF7C0(unint64_t *a1, void (*a2)(uint64_t))
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