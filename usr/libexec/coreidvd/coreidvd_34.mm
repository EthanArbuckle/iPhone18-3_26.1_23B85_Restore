void *sub_100360C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100172D4C(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    sub_10000B8B8(*v10, v11);
    v13 = Data.base16EncodedString()();
    result = sub_10000B90C(v12, v11);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_100172D4C((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    *&_swiftEmptyArrayStorage[2 * v15 + 4] = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v9);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_100316220(v6, v24, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_100316220(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v23)
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

uint64_t sub_100360E68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  v10._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.logTrustedIACARoots.getter();
  v11 = NSUserDefaults.internalBool(forKey:)(v10);

  if (v11)
  {
    defaultLogger()();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = v5;
      v15 = v14;
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      sub_1003606AC(a1);
      v17 = Array.description.getter();
      v23 = v4;
      v19 = v18;

      v20 = sub_100141FE4(v17, v19, &v25);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "ISO18013IssuerAuthenticator trusting IACA roots: %s", v15, 0xCu);
      sub_10000BB78(v16);

      (*(v24 + 8))(v8, v23);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  v21 = *(v2 + 232);
  *(v2 + 232) = a1;
}

uint64_t sub_1003610D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_100007224(&qword_100841DE8, &qword_1006DEC18);
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013Response.IssuerSigned();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v14 = type metadata accessor for COSE_Sign1();
  v4[21] = v14;
  v15 = *(v14 - 8);
  v4[22] = v15;
  v16 = *(v15 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v17 = type metadata accessor for ISO18013Response.Document();
  v4[25] = v17;
  v18 = *(v17 - 8);
  v4[26] = v18;
  v19 = *(v18 + 64) + 15;
  v4[27] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v4[28] = v20;
  v21 = *(v20 - 8);
  v4[29] = v21;
  v22 = *(v21 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v23 = *(*(sub_100007224(&qword_10083AE00, &qword_1006D9ED0) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v24 = type metadata accessor for ISO18013KnownDocTypes();
  v4[33] = v24;
  v25 = *(v24 - 8);
  v4[34] = v25;
  v26 = *(v25 + 64) + 15;
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_100361424, v3, 0);
}

uint64_t sub_100361424()
{
  v110 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[8];
  ISO18013Response.Document.docType.getter();
  ISO18013KnownDocTypes.init(rawValue:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    v8 = v0[8];
    sub_10000BE18(v0[32], &qword_10083AE00, &qword_1006D9ED0);
    _StringGuts.grow(_:)(28);

    v109[0] = 0xD00000000000001ALL;
    v109[1] = 0x8000000100710680;
    v9._countAndFlagsBits = ISO18013Response.Document.docType.getter();
    String.append(_:)(v9);

    (*(v6 + 104))(v5, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_3:
    v10 = v0[35];
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[30];
    v14 = v0[27];
    v16 = v0[23];
    v15 = v0[24];
    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[16];
    v102 = v0[13];

    v20 = v0[1];

    return v20();
  }

  v22 = v0[31];
  v24 = v0[26];
  v23 = v0[27];
  v25 = v0[25];
  v26 = v0[8];
  (*(v0[34] + 32))(v0[35], v0[32], v0[33]);
  defaultLogger()();
  (*(v24 + 16))(v23, v26, v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[31];
  v32 = v0[28];
  v31 = v0[29];
  v34 = v0[26];
  v33 = v0[27];
  v35 = v0[25];
  if (v29)
  {
    v107 = v0[28];
    v36 = swift_slowAlloc();
    v100 = v28;
    v37 = swift_slowAlloc();
    v109[0] = v37;
    *v36 = 136315138;
    v38 = ISO18013Response.Document.docType.getter();
    v103 = v30;
    v40 = v39;
    (*(v34 + 8))(v33, v35);
    v41 = sub_100141FE4(v38, v40, v109);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v27, v100, "ISO18013IssuerAuthenticator begins validating document with type %s", v36, 0xCu);
    sub_10000BB78(v37);

    v42 = *(v31 + 8);
    v42(v103, v107);
  }

  else
  {

    (*(v34 + 8))(v33, v35);
    v42 = *(v31 + 8);
    v42(v30, v32);
  }

  v0[36] = v42;
  v43 = v0[24];
  v44 = v0[20];
  v45 = v0[17];
  v46 = v0[18];
  v47 = v0[8];
  ISO18013Response.Document.issuerSigned.getter();
  ISO18013Response.IssuerSigned.issuerAuth.getter();
  v48 = *(v46 + 8);
  v0[37] = v48;
  v0[38] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v44, v45);
  v49 = COSE_Sign1.x509Chain.getter();
  v0[39] = v49;
  if (v49)
  {
    v50 = v49;
    v51 = swift_task_alloc();
    v0[40] = v51;
    *v51 = v0;
    v51[1] = sub_100361D3C;
    v52 = v0[35];
    v53 = v0[9];
    v54 = v0[10];

    return sub_100362A9C(v50, v53, v52);
  }

  else
  {
    v104 = v0[24];
    v55 = v0[21];
    v56 = v0[22];
    (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.documentReaderMissingIssuerCertificateChain(_:), v0[14]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v57 = *(v56 + 8);
    v57(v104, v55);
    v58 = [objc_opt_self() standardUserDefaults];
    v59._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableIssuerValidation.getter();
    LOBYTE(v55) = NSUserDefaults.internalBool(forKey:)(v59);

    if ((v55 & 1) == 0)
    {
      v78 = v0[34];
      v79 = v0[35];
      v80 = v0[33];
      swift_willThrow();
      (*(v78 + 8))(v79, v80);
      goto LABEL_3;
    }

    v96 = v0[37];
    v97 = v0[38];
    v60 = v0[36];
    v62 = v0[29];
    v61 = v0[30];
    v63 = v0[28];
    v64 = v0[23];
    v98 = v0[22];
    v99 = v0[21];
    v65 = v0[19];
    v95 = v0[17];
    v101 = v0[11];
    v105 = v0[13];
    v66 = v0[8];
    defaultLogger()();
    DIPLogError(_:message:log:)();
    v60(v61, v63);
    ISO18013Response.Document.issuerSigned.getter();
    ISO18013Response.IssuerSigned.issuerAuth.getter();
    v96(v65, v95);
    v67 = COSE_Sign1.payload.getter();
    v69 = v68;
    v57(v64, v99);
    if (v69 >> 60 == 15)
    {
      v70 = 0;
    }

    else
    {
      v70 = v67;
    }

    if (v69 >> 60 == 15)
    {
      v71 = 0xC000000000000000;
    }

    else
    {
      v71 = v69;
    }

    v72 = type metadata accessor for CBORDecoder();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    CBORDecoder.init()();
    sub_1000BA30C(&qword_100841DF0, &qword_100841DE8, &qword_1006DEC18);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    v75 = v0[34];
    v76 = v0[35];
    v77 = v0[33];
    v81 = v0[12];
    v82 = v0[13];
    v83 = v0[11];
    v106 = v0[7];

    CBOREncodedCBOR.value.getter();
    sub_10000B90C(v70, v71);

    (*(v81 + 8))(v82, v83);
    (*(v75 + 8))(v76, v77);
    v84 = v0[35];
    v85 = v0[31];
    v86 = v0[32];
    v87 = v0[30];
    v88 = v0[27];
    v90 = v0[23];
    v89 = v0[24];
    v92 = v0[19];
    v91 = v0[20];
    v93 = v0[16];
    v108 = v0[13];

    v94 = v0[1];

    return v94(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100361D3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v7 = *(v3 + 312);
  v8 = *(v3 + 80);

  if (v1)
  {
    v9 = sub_1003621F0;
  }

  else
  {
    v9 = sub_100361E8C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100361E8C()
{
  sub_100020260(v0[10] + 112, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10000BA08(v0 + 2, v1);
  v3 = async function pointer to dispatch thunk of ISO18013DocumentValidating.authenticateDocument(_:issuerCertificateChain:)[1];
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_100361F5C;
  v5 = v0[41];
  v6 = v0[7];
  v7 = v0[8];

  return dispatch thunk of ISO18013DocumentValidating.authenticateDocument(_:issuerCertificateChain:)(v6, v7, v5, v1, v2);
}

uint64_t sub_100361F5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  v4[44] = v1;

  v7 = v4[41];
  v8 = v4[10];

  if (v1)
  {
    v9 = sub_100362640;
  }

  else
  {
    v4[45] = a1;
    v9 = sub_1003620B4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003620B4()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[22] + 8))(v0[24], v0[21]);
  (*(v2 + 8))(v1, v3);
  sub_10000BB78(v0 + 2);
  v4 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v8 = v0[27];
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[16];
  v16 = v0[13];
  v17 = v0[45];

  v14 = v0[1];

  return v14(v17);
}

uint64_t sub_1003621F0()
{
  v1 = *(v0[22] + 8);
  v1(v0[24], v0[21]);
  v2 = v0[42];
  v3 = [objc_opt_self() standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableIssuerValidation.getter();
  v5 = NSUserDefaults.internalBool(forKey:)(v4);

  if (v5)
  {
    v54 = v0[37];
    v55 = v0[38];
    v7 = v0[29];
    v6 = v0[30];
    v8 = v0[28];
    v9 = v0[23];
    v56 = v0[22];
    v57 = v0[21];
    v10 = v0[19];
    v52 = v0[36];
    v53 = v0[17];
    v58 = v0[11];
    v61 = v0[13];
    v11 = v0[8];
    defaultLogger()();
    DIPLogError(_:message:log:)();
    v52(v6, v8);
    ISO18013Response.Document.issuerSigned.getter();
    ISO18013Response.IssuerSigned.issuerAuth.getter();
    v54(v10, v53);
    v12 = COSE_Sign1.payload.getter();
    v14 = v13;
    v1(v9, v57);
    if (v14 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    if (v14 >> 60 == 15)
    {
      v16 = 0xC000000000000000;
    }

    else
    {
      v16 = v14;
    }

    v17 = type metadata accessor for CBORDecoder();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    CBORDecoder.init()();
    sub_1000BA30C(&qword_100841DF0, &qword_100841DE8, &qword_1006DEC18);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    v20 = v0[34];
    v21 = v0[35];
    v22 = v0[33];
    v38 = v0[12];
    v39 = v0[13];
    v40 = v0[11];
    v60 = v0[7];

    CBOREncodedCBOR.value.getter();
    sub_10000B90C(v15, v16);

    (*(v38 + 8))(v39, v40);
    (*(v20 + 8))(v21, v22);
    v41 = v0[35];
    v42 = v0[31];
    v43 = v0[32];
    v44 = v0[30];
    v45 = v0[27];
    v47 = v0[23];
    v46 = v0[24];
    v49 = v0[19];
    v48 = v0[20];
    v50 = v0[16];
    v62 = v0[13];

    v51 = v0[1];

    return v51(_swiftEmptyArrayStorage);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[35];
    v25 = v0[33];
    swift_willThrow();
    (*(v23 + 8))(v24, v25);
    v26 = v0[35];
    v28 = v0[31];
    v27 = v0[32];
    v29 = v0[30];
    v30 = v0[27];
    v32 = v0[23];
    v31 = v0[24];
    v34 = v0[19];
    v33 = v0[20];
    v35 = v0[16];
    v59 = v0[13];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_100362640()
{
  v1 = *(v0[22] + 8);
  v1(v0[24], v0[21]);
  sub_10000BB78(v0 + 2);
  v2 = v0[44];
  v3 = [objc_opt_self() standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableIssuerValidation.getter();
  v5 = NSUserDefaults.internalBool(forKey:)(v4);

  if (v5)
  {
    v54 = v0[37];
    v55 = v0[38];
    v58 = v1;
    v6 = v0[36];
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[28];
    v10 = v0[23];
    v56 = v0[22];
    v57 = v0[21];
    v11 = v0[19];
    v53 = v0[17];
    v59 = v0[11];
    v62 = v0[13];
    v12 = v0[8];
    defaultLogger()();
    DIPLogError(_:message:log:)();
    v6(v7, v9);
    ISO18013Response.Document.issuerSigned.getter();
    ISO18013Response.IssuerSigned.issuerAuth.getter();
    v54(v11, v53);
    v13 = COSE_Sign1.payload.getter();
    v15 = v14;
    v58(v10, v57);
    if (v15 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >> 60 == 15)
    {
      v17 = 0xC000000000000000;
    }

    else
    {
      v17 = v15;
    }

    v18 = type metadata accessor for CBORDecoder();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    CBORDecoder.init()();
    sub_1000BA30C(&qword_100841DF0, &qword_100841DE8, &qword_1006DEC18);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    v21 = v0[34];
    v22 = v0[35];
    v23 = v0[33];
    v39 = v0[12];
    v40 = v0[13];
    v41 = v0[11];
    v61 = v0[7];

    CBOREncodedCBOR.value.getter();
    sub_10000B90C(v16, v17);

    (*(v39 + 8))(v40, v41);
    (*(v21 + 8))(v22, v23);
    v42 = v0[35];
    v43 = v0[31];
    v44 = v0[32];
    v45 = v0[30];
    v46 = v0[27];
    v48 = v0[23];
    v47 = v0[24];
    v50 = v0[19];
    v49 = v0[20];
    v51 = v0[16];
    v63 = v0[13];

    v52 = v0[1];

    return v52(_swiftEmptyArrayStorage);
  }

  else
  {
    v24 = v0[34];
    v25 = v0[35];
    v26 = v0[33];
    swift_willThrow();
    (*(v24 + 8))(v25, v26);
    v27 = v0[35];
    v29 = v0[31];
    v28 = v0[32];
    v30 = v0[30];
    v31 = v0[27];
    v33 = v0[23];
    v32 = v0[24];
    v35 = v0[19];
    v34 = v0[20];
    v36 = v0[16];
    v60 = v0[13];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_100362A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[23] = v6;
  v7 = *(v6 - 8);
  v4[24] = v7;
  v8 = *(v7 + 64) + 15;
  v4[25] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013KnownDocTypes();
  v4[26] = v9;
  v10 = *(v9 - 8);
  v4[27] = v10;
  v11 = *(v10 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v12 = type metadata accessor for DIPCertUsage();
  v4[30] = v12;
  v13 = *(v12 - 8);
  v4[31] = v13;
  v14 = *(v13 + 64) + 15;
  v4[32] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v4[33] = v15;
  v16 = *(v15 - 8);
  v4[34] = v16;
  v17 = *(v16 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_100362CDC, v3, 0);
}

uint64_t sub_100362CDC()
{
  v0[13] = _swiftEmptyArrayStorage;
  v1 = v0[17];
  v2 = decodeCertificateChain(fromDER:)();
  v16 = v0[37];
  v17 = v0[33];
  v18 = v0[34];
  v19 = v0[29];
  v20 = v0[26];
  v21 = v0[27];
  v56 = v0[19];
  v0[13] = v2;
  defaultLogger()();
  *(swift_task_alloc() + 16) = v0 + 13;
  Logger.cryptoParam(_:)();

  v22 = *(v18 + 8);
  v0[38] = v22;
  v0[39] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v16, v17);
  v23 = *(v21 + 16);
  v0[40] = v23;
  v0[41] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v19, v56, v20);
  v24 = (*(v21 + 88))(v19, v20);
  if (v24 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    (*(v0[31] + 104))(v0[32], enum case for DIPCertUsage.iso18013IssuerAuth(_:), v0[30]);
LABEL_11:
    v27 = v0[19];
    v28 = v0[20];
    v29 = v28[29];
    v30 = swift_task_alloc();
    *(v30 + 16) = v27;

    v31 = sub_100365C04(sub_100366084, v30, v29);

    sub_100360978(v31);

    swift_beginAccess();
    v32 = v28[23];
    sub_10001F370((v28 + 19), v28[22]);
    dispatch thunk of OIDVerifying.setTrustedRoots(_:)();
    swift_endAccess();

    sub_100020260((v28 + 19), (v0 + 2));
    v33 = v0[5];
    v34 = v0[6];
    sub_10000BA08(v0 + 2, v33);
    v35 = v0[13];
    v0[42] = v35;
    v36 = async function pointer to dispatch thunk of OIDVerifying.verifyChain(_:forUsage:)[1];
    v37 = swift_task_alloc();
    v0[43] = v37;
    *v37 = v0;
    v37[1] = sub_10036344C;
    v38 = v0[32];

    return dispatch thunk of OIDVerifying.verifyChain(_:forUsage:)(v35, v38, v33, v34);
  }

  if (v24 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
  {
    v25 = v0[32];
    static DIPCertUsage.japanNationalIDCardIssuerAuth.getter();
    goto LABEL_11;
  }

  if (v24 == enum case for ISO18013KnownDocTypes.photoID(_:))
  {
    v26 = v0[32];
    static DIPCertUsage.photoIDIssuerAuth.getter();
    goto LABEL_11;
  }

  v39 = v0[27];
  v53 = v0[26];
  v55 = v0[29];
  v41 = v0[24];
  v40 = v0[25];
  v42 = v0[23];
  v43 = v0[19];
  _StringGuts.grow(_:)(28);

  v44._countAndFlagsBits = ISO18013KnownDocTypes.rawValue.getter();
  String.append(_:)(v44);

  (*(v41 + 104))(v40, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v42);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (*(v39 + 8))(v55, v53);
  v46 = v0[37];
  v47 = v0[36];
  v48 = v0[35];
  v49 = v0[32];
  v4 = v0[24];
  v3 = v0[25];
  v45 = v0[23];
  v50 = v0[29];
  v51 = v0[22];
  v52 = v0[28];
  v54 = v0[21];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  v9 = v8 + v7;
  v10 = (v9 + v5[14]);
  v11 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  v13 = v0[13];
  v10[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  v10[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0);
  *v10 = v13;
  swift_errorRetain();

  sub_10003C9C0(v8);
  swift_setDeallocating();
  sub_10000BE18(v9, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v45);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_10036344C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 160);
  if (v1)
  {
    v8 = sub_1003648F4;
  }

  else
  {
    v8 = sub_100363580;
  }

  return _swift_task_switch(v8, v7, 0);
}

unint64_t sub_100363580()
{
  v151 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 144);
  v4 = *(v0 + 352);
  sub_10000BB78((v0 + 16));
  v5 = SecTrustRef.certificateChain.getter();

  *(v0 + 104) = v5;
  sub_1003660D8(v5, v3);
  v6 = *(v0 + 352);
  if (v1)
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 240);

    (*(v8 + 8))(v7, v9);
LABEL_64:
    v117 = *(v0 + 296);
    v119 = *(v0 + 288);
    v121 = *(v0 + 280);
    v123 = *(v0 + 256);
    v105 = *(v0 + 192);
    v104 = *(v0 + 200);
    v106 = *(v0 + 184);
    v125 = *(v0 + 232);
    v132 = *(v0 + 176);
    v137 = *(v0 + 224);
    v142 = *(v0 + 168);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v107 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v108 = *(*v107 + 72);
    v109 = (*(*v107 + 80) + 32) & ~*(*v107 + 80);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_1006BF520;
    v111 = v110 + v109;
    v112 = (v111 + v107[14]);
    v113 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
    v114 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v114 - 8) + 104))(v111, v113, v114);
    v115 = *(v0 + 104);
    v112[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
    v112[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0);
    *v112 = v115;
    swift_errorRetain();

    sub_10003C9C0(v110);
    swift_setDeallocating();
    sub_10000BE18(v111, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v105 + 104))(v104, enum case for DIPError.Code.internalError(_:), v106);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v116 = *(v0 + 8);

    return v116();
  }

  v10 = SecTrustRef.certificateChain.getter();
  v11 = v10;
  if (v10 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_63;
    }
  }

  else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:

    v101 = *(v0 + 352);
    v102 = *(v0 + 248);
    v141 = *(v0 + 256);
    v103 = *(v0 + 240);
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderMissingIssuerCertificateChain(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v102 + 8))(v141, v103);
    goto LABEL_64;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v12 = *(v11 + 32);
  }

  v2 = v12;
  v13 = *(v0 + 352);

  v14 = SecTrustRef.certificateChain.getter();
  v15 = v14;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
LABEL_62:

    goto LABEL_63;
  }

LABEL_10:
  v17 = __OFSUB__(v16, 1);
  result = v16 - 1;
  if (v17)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v15 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v15 + 8 * result + 32);
      goto LABEL_15;
    }

    __break(1u);
    return result;
  }

LABEL_69:
  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v20 = v19;

  if (!SecCertificateRef.commonName()().value._object)
  {
    v21 = *(v0 + 248);
    v138 = *(v0 + 256);
    v126 = *(v0 + 352);
    v133 = *(v0 + 240);
    v22 = v20;
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerMissingCommonName(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_26;
  }

  if ((SecCertificateRef.keyUsage.getter() & 1) == 0)
  {
    v21 = *(v0 + 248);
    v138 = *(v0 + 256);
    v126 = *(v0 + 352);
    v133 = *(v0 + 240);
    v22 = v20;
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerInvalidKeyUsage(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_26:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_27:
    (*(v21 + 8))(v138, v133);
    goto LABEL_64;
  }

  v23 = SecCertificateRef.countryName.getter();
  if (!v24)
  {
    v21 = *(v0 + 248);
    v138 = *(v0 + 256);
    v126 = *(v0 + 352);
    v133 = *(v0 + 240);
    v22 = v20;
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_26;
  }

  v25 = v24;
  v26 = v23;
  if (String.count.getter() != 2)
  {
    v21 = *(v0 + 248);
    v138 = *(v0 + 256);
    v127 = *(v0 + 352);
    v133 = *(v0 + 240);
    v29 = v20;
    v30 = *(v0 + 192);
    v31 = *(v0 + 200);
    v32 = *(v0 + 184);

    (*(v30 + 104))(v31, enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_27;
  }

  v27 = SecCertificateRef.countryName.getter();
  if (!v28)
  {

    goto LABEL_36;
  }

  if (v26 == v27 && v25 == v28)
  {

    goto LABEL_31;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
LABEL_36:
    v21 = *(v0 + 248);
    v138 = *(v0 + 256);
    v128 = *(v0 + 352);
    v133 = *(v0 + 240);
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_27;
  }

LABEL_31:
  v124 = v20;
  v34 = SecCertificateRef.stateOrProvinceName.getter();
  if (!v35)
  {
    goto LABEL_39;
  }

  v36 = v34;
  v37 = v35;
  v38 = SecCertificateRef.stateOrProvinceName.getter();
  if (!v39)
  {

    goto LABEL_47;
  }

  if (v38 == v36 && v39 == v37)
  {

    goto LABEL_39;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
LABEL_47:
    v60 = *(v0 + 352);
    v21 = *(v0 + 248);
    v133 = *(v0 + 240);
    v138 = *(v0 + 256);
    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for DIPError.Code.documentReaderDocSignerInconsistentWithRoot(_:), *(v0 + 184));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_27;
  }

LABEL_39:
  v41 = *(v0 + 152);
  *(v0 + 120) = sub_100364FD8();
  sub_100007224(&qword_100841DD8, &qword_1006DEC08);
  sub_1000BA30C(&qword_100841DE0, &qword_100841DD8, &qword_1006DEC08);
  Collection.nilIfEmpty.getter();
  v42 = *(v0 + 128);

  if (v42)
  {
    v43 = SecCertificateRef.extendedKeyUsage.getter();
    v44 = sub_1003652BC(v43, v42);

    if (v44)
    {
      v149[0] = 0;
      v149[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(99);
      v45._countAndFlagsBits = 0xD000000000000055;
      v45._object = 0x8000000100710830;
      String.append(_:)(v45);
      sub_100360C28(v42);

      v46 = Array.description.getter();
      v48 = v47;

      v49._countAndFlagsBits = v46;
      v49._object = v48;
      String.append(_:)(v49);

      v50._countAndFlagsBits = 0x6C6175746341202ELL;
      v50._object = 0xEA0000000000203ALL;
      String.append(_:)(v50);
      v51 = SecCertificateRef.extendedKeyUsage.getter();
      v52 = *(v51 + 16);
      if (v52)
      {
        v150 = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v52, 0);
        v53 = _swiftEmptyArrayStorage;
        v54 = (v51 + 40);
        do
        {
          v55 = *(v54 - 1);
          v56 = *v54;
          sub_10000B8B8(v55, *v54);
          v57 = Data.base16EncodedString()();
          sub_10000B90C(v55, v56);
          v150 = v53;
          v59 = v53[2];
          v58 = v53[3];
          if (v59 >= v58 >> 1)
          {
            sub_100172D4C((v58 > 1), v59 + 1, 1);
            v53 = v150;
          }

          v54 += 2;
          v53[2] = v59 + 1;
          *&v53[2 * v59 + 4] = v57;
          --v52;
        }

        while (v52);
      }

      v93 = *(v0 + 248);
      v140 = *(v0 + 256);
      v131 = *(v0 + 352);
      v136 = *(v0 + 240);
      v95 = *(v0 + 192);
      v94 = *(v0 + 200);
      v96 = *(v0 + 184);
      v97 = Array.description.getter();
      v99 = v98;

      v100._countAndFlagsBits = v97;
      v100._object = v99;
      String.append(_:)(v100);

      (*(v95 + 104))(v94, enum case for DIPError.Code.documentReaderDocSignerMissingOID(_:), v96);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*(v93 + 8))(v140, v136);
      goto LABEL_64;
    }
  }

  else
  {
    v62 = *(v0 + 320);
    v61 = *(v0 + 328);
    v63 = *(v0 + 288);
    v64 = *(v0 + 224);
    v65 = *(v0 + 208);
    v66 = *(v0 + 152);
    defaultLogger()();
    v62(v64, v66, v65);
    v67 = Logger.logObject.getter();
    v145 = static os_log_type_t.debug.getter();
    v68 = os_log_type_enabled(v67, v145);
    v69 = *(v0 + 304);
    v70 = *(v0 + 312);
    v71 = *(v0 + 288);
    v147 = *(v0 + 264);
    v73 = *(v0 + 216);
    v72 = *(v0 + 224);
    v74 = *(v0 + 208);
    if (v68)
    {
      v143 = *(v0 + 288);
      v75 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v149[0] = v129;
      *v75 = 136315138;
      v134 = v69;
      v76 = v67;
      v77 = ISO18013KnownDocTypes.rawValue.getter();
      v79 = v78;
      (*(v73 + 8))(v72, v74);
      v80 = sub_100141FE4(v77, v79, v149);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v76, v145, "No document signer OID defined for %s.", v75, 0xCu);
      sub_10000BB78(v129);

      v134(v143, v147);
    }

    else
    {

      (*(v73 + 8))(v72, v74);
      v69(v71, v147);
    }
  }

  v81 = *(v0 + 280);
  defaultLogger()();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "ISO18013IssuerAuthenticator successfully validated document signer certificate chain.", v84, 2u);
  }

  v85 = *(v0 + 352);
  v87 = *(v0 + 304);
  v86 = *(v0 + 312);
  v88 = *(v0 + 280);
  v89 = *(v0 + 264);
  v120 = *(v0 + 256);
  v122 = *(v0 + 296);
  v90 = *(v0 + 248);
  v118 = *(v0 + 240);
  v130 = *(v0 + 288);
  v135 = *(v0 + 232);
  v139 = *(v0 + 224);
  v144 = *(v0 + 200);
  v146 = *(v0 + 176);
  v148 = *(v0 + 168);

  v87(v88, v89);
  v91 = SecTrustRef.certificateChain.getter();

  (*(v90 + 8))(v120, v118);

  v92 = *(v0 + 8);

  return v92(v91);
}

uint64_t sub_1003648F4()
{
  v1 = v0[45];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  sub_10000BB78(v0 + 2);
  swift_getErrorValue();
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[12];
  Error.dipErrorCode.getter();
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v8 = v0[23];
    v9 = v0[24];
    v10 = v0[21];
    sub_100044D38(v0[22], v10);
    if ((*(v9 + 88))(v10, v8) == enum case for DIPError.Code.untrustedCertificate(_:))
    {
      v11 = v0[45];
      v12 = v0[31];
      v32 = v0[30];
      v34 = v0[32];
      v36 = v0[22];
      (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.documentReaderUntrustedIssuer(_:), v0[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      goto LABEL_6;
    }

    (*(v0[24] + 8))(v0[21], v0[23]);
  }

  v13 = v0[45];
  v12 = v0[31];
  v32 = v0[30];
  v34 = v0[32];
  v36 = v0[22];
  (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.documentReaderFailedToVerifyIssuerChain(_:), v0[23]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v12 + 8))(v34, v32);
  sub_10000BE18(v36, &qword_10083B020, &unk_1006D8ED0);
  v27 = v0[37];
  v28 = v0[36];
  v29 = v0[35];
  v30 = v0[32];
  v15 = v0[24];
  v14 = v0[25];
  v26 = v0[23];
  v31 = v0[29];
  v33 = v0[22];
  v35 = v0[28];
  v37 = v0[21];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v16 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v17 = *(*v16 + 72);
  v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006BF520;
  v20 = (v19 + v18 + v16[14]);
  v21 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
  v22 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v22 - 8) + 104))(v19 + v18, v21, v22);
  v23 = v0[13];
  v20[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  v20[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0);
  *v20 = v23;
  swift_errorRetain();

  sub_10003C9C0(v19);
  swift_setDeallocating();
  sub_10000BE18(v19 + v18, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v15 + 104))(v14, enum case for DIPError.Code.internalError(_:), v26);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100364F04(uint64_t *a1)
{
  _StringGuts.grow(_:)(54);
  v2._object = 0x80000001007109C0;
  v2._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v2);
  v3 = *a1;
  type metadata accessor for SecCertificate(0);

  Array<A>.base64EncodedStrings.getter();

  v4 = Array.description.getter();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return 0;
}

void *sub_100364FD8()
{
  v1 = v0;
  v2 = type metadata accessor for ISO18013KnownDocTypes();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    sub_100007224(&qword_10083C068, &qword_1006DEC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF520;
    v9 = &off_1007FBB20;
LABEL_5:
    *(inited + 32) = sub_10034C158(v9);
    *(inited + 40) = v10;
    v11 = sub_1003A9888(inited);
    swift_setDeallocating();
    sub_100366828(inited + 32);
    return v11;
  }

  if (v7 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
  {
    sub_100007224(&qword_10083C068, &qword_1006DEC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF520;
    v9 = &off_1007FBB48;
    goto LABEL_5;
  }

  if (v7 != enum case for ISO18013KnownDocTypes.photoID(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1003651B8()
{
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  sub_10000BB78(v0 + 24);
  v1 = v0[29];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_10036522C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100365EEC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1003652BC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  v4 = 0;
  v77 = *(a1 + 16);
  v78 = a1 + 32;
  v5 = a2 + 56;
  v83 = a2 + 56;
  while (1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_5;
    }

    v81 = v4;
    v6 = (v78 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v3 + 40);
    Hasher.init(_seed:)();
    sub_10000B8B8(v8, v7);
    Data.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    if ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:
    sub_10000B90C(v8, v7);
    v2 = v77;
    v4 = v81;
LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  v14 = v7 >> 62;
  if (v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = v7 == 0xC000000000000000;
  }

  v16 = !v15;
  v85 = v16;
  v17 = __OFSUB__(HIDWORD(v8), v8);
  v82 = v17;
  v79 = (v8 >> 32) - v8;
  v80 = v8 >> 32;
  v84 = v13;
  while (1)
  {
    v18 = (*(v3 + 48) + 16 * v12);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v7 >> 62 != 3;
      if (((v24 | v85) & 1) == 0)
      {
        v68 = 0;
        v69 = 0xC000000000000000;
LABEL_150:
        sub_10000B90C(v68, v69);
        return 0;
      }

LABEL_42:
      v25 = 0;
      if (v14 <= 1)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_42;
      }

      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v28)
      {
        goto LABEL_152;
      }

      if (v14 <= 1)
      {
        goto LABEL_39;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_153;
      }

      v25 = v25;
      if (v14 <= 1)
      {
LABEL_39:
        v29 = BYTE6(v7);
        if (v14)
        {
          v29 = HIDWORD(v8) - v8;
          if (v82)
          {
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
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
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v25 = BYTE6(v19);
      if (v14 <= 1)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    if (v14 != 2)
    {
      if (!v25)
      {
        goto LABEL_149;
      }

      goto LABEL_19;
    }

    v31 = *(v8 + 16);
    v30 = *(v8 + 24);
    v28 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v28)
    {
      goto LABEL_151;
    }

LABEL_45:
    if (v25 != v29)
    {
      goto LABEL_19;
    }

    if (v25 < 1)
    {
      goto LABEL_149;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v14)
        {
LABEL_98:
          __s2 = v8;
          v87 = v7;
          v88 = BYTE2(v7);
          v89 = BYTE3(v7);
          v90 = BYTE4(v7);
          v91 = BYTE5(v7);
          if (!memcmp(__s1, &__s2, BYTE6(v7)))
          {
            goto LABEL_149;
          }

          goto LABEL_19;
        }

        if (v14 == 2)
        {
          v46 = *(v8 + 16);
          v72 = *(v8 + 24);
          sub_10000B8B8(v20, v19);
          v47 = __DataStorage._bytes.getter();
          if (v47)
          {
            v48 = __DataStorage._offset.getter();
            if (__OFSUB__(v46, v48))
            {
              goto LABEL_167;
            }

            v47 += v46 - v48;
          }

          v28 = __OFSUB__(v72, v46);
          v49 = v72 - v46;
          if (v28)
          {
            goto LABEL_160;
          }

          result = __DataStorage._length.getter();
          if (!v47)
          {
            goto LABEL_177;
          }

          goto LABEL_105;
        }

        if (v80 < v8)
        {
          goto LABEL_157;
        }

        sub_10000B8B8(v20, v19);
        v53 = __DataStorage._bytes.getter();
        if (!v53)
        {
          goto LABEL_178;
        }

        v54 = v53;
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v8, v55))
        {
          goto LABEL_163;
        }

        v35 = (v8 - v55 + v54);
        result = __DataStorage._length.getter();
        if (!v35)
        {
          goto LABEL_179;
        }

        goto LABEL_113;
      }

      v37 = *(v20 + 16);
      sub_10000B8B8(v20, v19);
      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v39 = __DataStorage._offset.getter();
        if (__OFSUB__(v37, v39))
        {
          goto LABEL_155;
        }

        v38 += v37 - v39;
      }

      __DataStorage._length.getter();
      v13 = v84;
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          if (v80 < v8)
          {
            goto LABEL_161;
          }

          v40 = __DataStorage._bytes.getter();
          if (v40)
          {
            v41 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v41))
            {
              goto LABEL_171;
            }

            v40 += v8 - v41;
          }

          result = __DataStorage._length.getter();
          v42 = (v8 >> 32) - v8;
          if (result < v79)
          {
            v42 = result;
          }

          if (!v38)
          {
            goto LABEL_184;
          }

          if (!v40)
          {
            goto LABEL_183;
          }

LABEL_88:
          if (v38 == v40)
          {
            goto LABEL_148;
          }

          v45 = v42;
          result = v38;
LABEL_140:
          v52 = v40;
          goto LABEL_141;
        }

        *__s1 = v8;
        *&__s1[8] = v7;
        __s1[10] = BYTE2(v7);
        __s1[11] = BYTE3(v7);
        __s1[12] = BYTE4(v7);
        __s1[13] = BYTE5(v7);
        if (!v38)
        {
          goto LABEL_174;
        }

LABEL_144:
        v58 = __s1;
        v57 = v38;
        v56 = BYTE6(v7);
        goto LABEL_145;
      }

      v70 = v38;
      v59 = *(v8 + 16);
      v74 = *(v8 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v60 = __DataStorage._offset.getter();
        if (__OFSUB__(v59, v60))
        {
          goto LABEL_169;
        }

        v40 += v59 - v60;
      }

      if (__OFSUB__(v74, v59))
      {
        goto LABEL_164;
      }

      v61 = __DataStorage._length.getter();
      if (v61 >= v74 - v59)
      {
        v62 = v74 - v59;
      }

      else
      {
        v62 = v61;
      }

      result = v70;
      if (!v70)
      {
        goto LABEL_182;
      }

      v3 = a2;
      if (!v40)
      {
        goto LABEL_181;
      }

LABEL_138:
      if (result == v40)
      {
LABEL_148:
        sub_10000B90C(v20, v19);
LABEL_149:
        v68 = v8;
        v69 = v7;
        goto LABEL_150;
      }

      v45 = v62;
      goto LABEL_140;
    }

    if (v21)
    {
      if (v20 > v20 >> 32)
      {
        goto LABEL_154;
      }

      sub_10000B8B8(v20, v19);
      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v20, v43))
        {
          goto LABEL_156;
        }

        v38 += v20 - v43;
      }

      __DataStorage._length.getter();
      v13 = v84;
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          if (v80 < v8)
          {
            goto LABEL_165;
          }

          v40 = __DataStorage._bytes.getter();
          if (v40)
          {
            v44 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v44))
            {
              goto LABEL_172;
            }

            v40 += v8 - v44;
          }

          result = __DataStorage._length.getter();
          v42 = (v8 >> 32) - v8;
          if (result < v79)
          {
            v42 = result;
          }

          if (!v38)
          {
            goto LABEL_186;
          }

          if (!v40)
          {
            goto LABEL_185;
          }

          goto LABEL_88;
        }

        *__s1 = v8;
        *&__s1[8] = v7;
        __s1[10] = BYTE2(v7);
        __s1[11] = BYTE3(v7);
        __s1[12] = BYTE4(v7);
        __s1[13] = BYTE5(v7);
        if (!v38)
        {
          goto LABEL_175;
        }

        goto LABEL_144;
      }

      v71 = v38;
      v63 = *(v8 + 16);
      v75 = *(v8 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v64 = __DataStorage._offset.getter();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_170;
        }

        v40 += v63 - v64;
      }

      if (__OFSUB__(v75, v63))
      {
        goto LABEL_166;
      }

      v65 = __DataStorage._length.getter();
      if (v65 >= v75 - v63)
      {
        v62 = v75 - v63;
      }

      else
      {
        v62 = v65;
      }

      result = v71;
      if (!v71)
      {
        goto LABEL_188;
      }

      v3 = a2;
      if (!v40)
      {
        goto LABEL_187;
      }

      goto LABEL_138;
    }

    *__s1 = v20;
    *&__s1[8] = v19;
    __s1[10] = BYTE2(v19);
    __s1[11] = BYTE3(v19);
    __s1[12] = BYTE4(v19);
    __s1[13] = BYTE5(v19);
    if (!v14)
    {
      goto LABEL_98;
    }

    if (v14 != 1)
    {
      v50 = *(v8 + 16);
      v73 = *(v8 + 24);
      sub_10000B8B8(v20, v19);
      v47 = __DataStorage._bytes.getter();
      if (v47)
      {
        v51 = __DataStorage._offset.getter();
        if (__OFSUB__(v50, v51))
        {
          goto LABEL_168;
        }

        v47 += v50 - v51;
      }

      v28 = __OFSUB__(v73, v50);
      v49 = v73 - v50;
      if (v28)
      {
        goto LABEL_159;
      }

      result = __DataStorage._length.getter();
      if (!v47)
      {
        goto LABEL_180;
      }

LABEL_105:
      if (result >= v49)
      {
        v45 = v49;
      }

      else
      {
        v45 = result;
      }

      result = __s1;
      v52 = v47;
LABEL_141:
      v66 = memcmp(result, v52, v45);
      sub_10000B90C(v20, v19);
      v5 = v83;
      v13 = v84;
      if (!v66)
      {
        goto LABEL_149;
      }

      goto LABEL_19;
    }

    if (v80 < v8)
    {
      goto LABEL_158;
    }

    sub_10000B8B8(v20, v19);
    v32 = __DataStorage._bytes.getter();
    if (!v32)
    {
      break;
    }

    v33 = v32;
    v34 = __DataStorage._offset.getter();
    if (__OFSUB__(v8, v34))
    {
      goto LABEL_162;
    }

    v35 = (v8 - v34 + v33);
    result = __DataStorage._length.getter();
    if (!v35)
    {
      goto LABEL_176;
    }

LABEL_113:
    if (result >= v79)
    {
      v56 = (v8 >> 32) - v8;
    }

    else
    {
      v56 = result;
    }

    v57 = __s1;
    v58 = v35;
LABEL_145:
    v67 = memcmp(v57, v58, v56);
    sub_10000B90C(v20, v19);
    v5 = v83;
    if (!v67)
    {
      goto LABEL_149;
    }

LABEL_19:
    v12 = (v12 + 1) & v13;
    if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  __DataStorage._length.getter();
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
  result = __DataStorage._length.getter();
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
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
  return result;
}

unint64_t sub_100365C04(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v28 = v7;
    v34 = v4;
    v30 = &v27;
    __chkstk_darwin(a1);
    v29 = &v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v8);
    v31 = 0;
    v9 = 0;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
LABEL_12:
      v7 = a3;
      v17 = v14 | (v9 << 6);
      v18 = (*(a3 + 48) + 24 * v17);
      v19 = v18[1];
      v20 = v18[2];
      v35 = *v18;
      v36 = v19;
      v37 = v20;
      sub_10000B8B8(v35, v19);

      v21 = v34;
      v22 = v32(&v35);
      v4 = v21;
      sub_10000B90C(v35, v36);
      v34 = v21;
      if (v21)
      {

        return swift_willThrow();
      }

      v12 = v33;
      if (v22)
      {
        *&v29[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
          return sub_1003D470C(v29, v28, v31, a3);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_1003D470C(v29, v28, v31, a3);
      }

      v16 = *(a3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = sub_10036522C(v25, v7, a3, v32);

  if (!v4)
  {
    return v26;
  }

  return result;
}

unint64_t sub_100365EEC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v28 = a3;
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v28 + 48) + 24 * v14);
    v16 = v15[1];
    v17 = v15[2];
    v25 = *v15;
    v26 = v16;
    v27 = v17;
    sub_10000B8B8(v25, v16);

    v18 = a4(&v25);
    sub_10000B90C(v25, v26);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        v20 = v28;

        return sub_1003D470C(v22, a2, v23, v20);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100366084(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = ISO18013KnownDocTypes.rawValue.getter();
  LOBYTE(v3) = sub_1006932A8(v4, v5, v3);

  return v3 & 1;
}

void sub_1003660D8(unint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for DIPError.Code();
  v62 = *(v64 - 8);
  v4 = *(v62 + 64);
  __chkstk_darwin(v64);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Logger();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v67);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  v14 = __chkstk_darwin(v11);
  countAndFlagsBits = &v58 - v15;
  v16 = __chkstk_darwin(v14);
  v65 = &v58 - v17;
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "ISO18013IssuerAuthenticator performing revocation check against provided issuer revocation list.", v22, 2u);
  }

  v25 = *(v6 + 8);
  v24 = v6 + 8;
  v23 = v25;
  v25(v19, v67);
  if (!a2)
  {
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "ISO18013IssuerAuthenticator issuer revocation list is missing. Skipping manual revocation check.", v37, 2u);
    }

    v38 = v10;
    goto LABEL_38;
  }

  if (!(a1 >> 62))
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
LABEL_35:
    defaultLogger()();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "ISO18013IssuerAuthenticator rootCertificate is missing. Skipping manual revocation check.", v57, 2u);
    }

    v38 = v13;
LABEL_38:
    v23(v38, v67);
    return;
  }

LABEL_6:
  v27 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    v59 = v23;
    v60 = v24;
    v21 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v24 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v27 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(a1 + 8 * v27 + 32);
          goto LABEL_11;
        }
      }

      __break(1u);
      return;
    }
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v24 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_11:
  for (i = 0; ; ++i)
  {
    if (v21)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(v24 + 16))
      {
        goto LABEL_33;
      }

      v29 = *(a1 + 8 * i + 32);
    }

    v23 = v29;
    v30 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (sub_100344278(v29, v13, a2))
    {
      break;
    }

    if (v30 == v26)
    {
      v31 = countAndFlagsBits;
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "ISO18013IssuerAuthenticator issuerRevocationList does not contain the existing certificate chain. Continuing.", v34, 2u);
      }

      v59(v31, v67);
      return;
    }
  }

  v39 = v65;
  defaultLogger()();
  v40 = v23;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  v43 = os_log_type_enabled(v41, v42);
  v66 = v40;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v68 = v45;
    *v44 = 136315138;
    v46 = SecCertificateRef.serialNumber.getter();
    if (v47 >> 60 == 15)
    {
      object = 0xE300000000000000;
      v49 = 7104878;
    }

    else
    {
      v51 = v46;
      v52 = v47;
      v53 = Data.base16EncodedString()();
      countAndFlagsBits = v53._countAndFlagsBits;
      object = v53._object;
      sub_10000BD94(v51, v52);
      v49 = countAndFlagsBits;
    }

    v50 = v64;
    v54 = sub_100141FE4(v49, object, &v68);

    *(v44 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "ISO18103IssuerAuthenticator received revoked serial number %s", v44, 0xCu);
    sub_10000BB78(v45);

    v59(v65, v67);
  }

  else
  {

    v59(v39, v67);
    v50 = v64;
  }

  (*(v62 + 104))(v63, enum case for DIPError.Code.documentReaderCertificateRevoked(_:), v50);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void *sub_1003668D4(void (*a1)(void *__return_ptr, char *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v48 = a1;
  v49 = a2;
  v7 = a4(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v59 = _swiftEmptyArrayStorage;
    v14 = v9;
    sub_1001732E0(0, v12, 0);
    v15 = -1 << *(a3 + 32);
    v53 = a3 + 56;
    *&v54 = v59;
    result = _HashTable.startBucket.getter();
    v16 = v14;
    v17 = result;
    v18 = 0;
    v46 = v14 + 16;
    v47 = (v14 + 8);
    v40 = a3 + 64;
    v44 = v7;
    v45 = a3;
    v42 = v11;
    v43 = v14;
    v41 = v12;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a3 + 32))
    {
      v21 = v17 >> 6;
      if ((*(v53 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_25;
      }

      v22 = *(a3 + 36);
      v51 = v18;
      v52 = v22;
      (*(v16 + 16))(v11, *(a3 + 48) + *(v16 + 72) * v17, v7);
      v48(v56, v11, &v55);
      if (v5)
      {
        (*v47)(v11, v7);
      }

      v50 = 0;
      result = (*v47)(v11, v7);
      v23 = v56[0];
      v24 = v56[1];
      v25 = v57;
      v26 = v58;
      v27 = v54;
      v59 = v54;
      v29 = *(v54 + 16);
      v28 = *(v54 + 24);
      if (v29 >= v28 >> 1)
      {
        v54 = v57;
        result = sub_1001732E0((v28 > 1), v29 + 1, 1);
        v25 = v54;
        v27 = v59;
      }

      v27[2] = v29 + 1;
      v30 = &v27[5 * v29];
      v30[4] = v23;
      v30[5] = v24;
      *(v30 + 3) = v25;
      v30[8] = v26;
      a3 = v45;
      v19 = 1 << *(v45 + 32);
      if (v17 >= v19)
      {
        goto LABEL_26;
      }

      v31 = *(v53 + 8 * v21);
      if ((v31 & (1 << v17)) == 0)
      {
        goto LABEL_27;
      }

      *&v54 = v27;
      if (v52 != *(v45 + 36))
      {
        goto LABEL_28;
      }

      v32 = v31 & (-2 << (v17 & 0x3F));
      if (v32)
      {
        v19 = __clz(__rbit64(v32)) | v17 & 0x7FFFFFFFFFFFFFC0;
        v16 = v43;
        v7 = v44;
        v11 = v42;
        v20 = v51;
      }

      else
      {
        v33 = v21 << 6;
        v34 = v21 + 1;
        v35 = (v40 + 8 * v21);
        v7 = v44;
        v11 = v42;
        while (v34 < (v19 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            v38 = v43;
            result = sub_100316220(v17, v52, 0);
            v16 = v38;
            v19 = __clz(__rbit64(v36)) + v33;
            goto LABEL_20;
          }
        }

        v39 = v43;
        result = sub_100316220(v17, v52, 0);
        v16 = v39;
LABEL_20:
        v20 = v51;
      }

      v18 = v20 + 1;
      v17 = v19;
      v5 = v50;
      if (v18 == v41)
      {
        return v54;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_100366C74(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = type metadata accessor for ISO18013ReaderAuthentication();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v23 = _swiftEmptyArrayStorage;
  sub_100173384(0, v10, 0);
  v11 = v23;
  v12 = *(type metadata accessor for ISO18013ReaderRequest.DocRequest() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_100173384(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    v11[2] = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100366E78(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100173490(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(&v16, &v15, &v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v16;
      v17 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_100173490((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      v6[2] = v12 + 1;
      v6[v12 + 4] = v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_100366FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v240 = a3;
  v255 = a5;
  v252 = a6;
  v221 = a2;
  v253 = a1;
  v206 = a8;
  v233 = type metadata accessor for DIPError.Code();
  v232 = *(v233 - 8);
  v10 = *(v232 + 64);
  __chkstk_darwin(v233);
  v234 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v248 = &v200 - v14;
  v15 = sub_100007224(&qword_100841E30, &qword_1006DEC98);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v224 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v231 = &v200 - v19;
  v249 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v20 = *(*(v249 - 8) + 64);
  v21 = __chkstk_darwin(v249);
  v228 = &v200 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v230 = &v200 - v23;
  v24 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v227 = &v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v229 = &v200 - v28;
  v247 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  *&v250 = *(v247 - 8);
  v29 = *(v250 + 64);
  v30 = __chkstk_darwin(v247);
  v225 = &v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v226 = &v200 - v32;
  v205 = type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo();
  v33 = *(*(v205 - 8) + 64);
  __chkstk_darwin(v205);
  v203 = &v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100007224(&qword_100841DF8, &qword_1006DEC50);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v202 = &v200 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v204 = &v200 - v39;
  v217 = type metadata accessor for ISO18013Version();
  v216 = *(v217 - 8);
  v40 = *(v216 + 64);
  v41 = __chkstk_darwin(v217);
  v212 = &v200 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v210 = &v200 - v44;
  v45 = __chkstk_darwin(v43);
  v215 = &v200 - v46;
  v47 = __chkstk_darwin(v45);
  v213 = &v200 - v48;
  v49 = __chkstk_darwin(v47);
  v209 = &v200 - v50;
  __chkstk_darwin(v49);
  v214 = &v200 - v51;
  v220 = sub_100007224(&qword_100841E38, &qword_1006DECA0);
  v219 = *(v220 - 8);
  v52 = *(v219 + 64);
  __chkstk_darwin(v220);
  v218 = &v200 - v53;
  v245 = type metadata accessor for MobileDocumentRequestType();
  v239 = *(v245 - 8);
  v54 = *(v239 + 64);
  v55 = __chkstk_darwin(v245);
  v208 = &v200 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v207 = &v200 - v58;
  __chkstk_darwin(v57);
  v238 = &v200 - v59;
  v60 = type metadata accessor for MobileDocumentReaderRequest();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  v63 = __chkstk_darwin(v60);
  v223 = &v200 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v66 = &v200 - v65;
  v67 = type metadata accessor for Logger();
  v242 = *(v67 - 8);
  v243 = v67;
  v68 = *(v242 + 64);
  __chkstk_darwin(v67);
  v70 = &v200 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DIPSignpost.Config();
  v72 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71 - 8);
  v237 = type metadata accessor for DIPSignpost();
  v236 = *(v237 - 8);
  v73 = *(v236 + 64);
  __chkstk_darwin(v237);
  v75 = &v200 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DaemonSignposts.MobileDocumentReader.buildRequest.getter();
  v235 = v75;
  v76 = a7;
  DIPSignpost.init(_:)();
  defaultLogger()();
  v77 = *(v61 + 16);
  v244 = v60;
  v77(v66, v253, v60);
  v78 = a4;
  v79 = a4;
  v80 = v255;
  sub_1000363B4(v79, v255);
  v81 = v252;
  sub_1000363B4(v252, v76);
  v246 = v78;
  sub_1000363B4(v78, v80);
  sub_1000363B4(v81, v76);
  v82 = Logger.logObject.getter();
  v222 = static os_log_type_t.debug.getter();
  v83 = os_log_type_enabled(v82, v222);
  v251 = v76;
  if (!v83)
  {
    v101 = v81;
    sub_10000BD94(v81, v76);
    v102 = v246;
    v103 = v255;
    sub_10000BD94(v246, v255);

    sub_10000BD94(v101, v76);
    sub_10000BD94(v102, v103);
    (*(v61 + 8))(v66, v244);
    (*(v242 + 8))(v70, v243);
    v99 = v254;
    v97 = v76;
LABEL_8:
    v104 = v238;
    MobileDocumentReaderRequest.documentRequestType.getter();
    v105 = v241;
    v106 = sub_1003CEFE4(v240, *(v99 + 40));
    if (v105)
    {
      (*(v239 + 8))(v104, v245);
LABEL_11:
      (*(v232 + 104))(v234, enum case for DIPError.Code.documentReaderCannotBuildRequest(_:), v233);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

LABEL_12:
      v112 = v235;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      return (*(v236 + 8))(v112, v237);
    }

    v107 = v106;
    v243 = *(v239 + 8);
    v243(v104, v245);
    v258 = v107;
    swift_getKeyPath();
    v108 = v218;
    KeyPathComparator.init<A>(_:order:)();
    sub_100007224(&qword_100841E40, &qword_1006DECC8);
    sub_1000BA30C(&qword_100841E48, &qword_100841E40, &qword_1006DECC8);
    sub_1000BA30C(&qword_100841E50, &qword_100841E38, &qword_1006DECA0);
    v109 = v220;
    v110 = Sequence.sorted<A>(using:)();
    (*(v219 + 8))(v108, v109);

    v111 = sub_100368D8C(v221);
    v254 = 0;
    v244 = v110;
    if (v111 > 1u)
    {
      v116 = v224;
      v117 = v245;
      v118 = v243;
      if (v111 != 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v116 = v224;
      v117 = v245;
      v118 = v243;
      if (v111)
      {
LABEL_21:
        v119 = v207;
        MobileDocumentReaderRequest.documentRequestType.getter();
        LODWORD(v239) = MobileDocumentRequestType.isDisplayOnly.getter();
        v118(v119, v117);
        v120 = v209;
        static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
        v121 = v216;
        v122 = v214;
        v123 = v120;
        v124 = v217;
        (*(v216 + 32))(v214, v123, v217);
        (*(v121 + 16))(v213, v122, v124);
        v125 = *(v110 + 16);
        v126 = _swiftEmptyArrayStorage;
        if (v125)
        {
          v258 = _swiftEmptyArrayStorage;
          result = sub_100172E0C(0, v125, 0);
          v127 = 0;
          v240 = v250 + 32;
          v241 = v125;
          v126 = v258;
          v128 = (v110 + 64);
          while (v127 < *(v110 + 16))
          {
            v253 = v126;
            v130 = *(v128 - 4);
            v129 = *(v128 - 3);
            v242 = v127;
            v243 = v129;
            v131 = *(v128 - 2);
            v132 = *(v128 - 1);
            v133 = *v128;
            v257 = v130;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v245 = v130;

            sub_100007224(&qword_10083BCA8, &qword_1006DA1E8);
            sub_1000BA30C(&qword_100841E70, &qword_10083BCA8, &qword_1006DA1E8);
            Collection.nilIfEmpty.getter();
            v256 = v132;
            sub_100007224(&qword_10083C160, &qword_1006DECE0);
            sub_1000BA30C(&qword_100841E78, &qword_10083C160, &qword_1006DECE0);
            Collection.nilIfEmpty.getter();
            v134 = v231;
            ISO18013ReaderRequest.DocRequestInfo.init(alternativeDataElements:issuerIdentifiers:maximumResponseSize:uniqueDocSetRequired:externalData:interpretWillNotRetainIntentAsDisplayOnly:logotypeIconData:)();
            v135 = type metadata accessor for ISO18013ReaderRequest.DocRequestInfo();
            (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
            ISO18013ReaderRequest.ItemsRequest.init(docType:namespaces:requestInfo:)();
            v136 = type metadata accessor for CBOREncoder();
            v137 = *(v136 + 48);
            v138 = *(v136 + 52);
            swift_allocObject();
            CBOREncoder.init()();
            sub_10036E5FC(&qword_100841E58, &type metadata accessor for ISO18013ReaderRequest.ItemsRequest);
            sub_10036E5FC(&qword_100841E60, &type metadata accessor for ISO18013ReaderRequest.ItemsRequest);
            v139 = v254;
            CBOREncodedCBOR.init(value:tag:encoder:)();
            v254 = v139;
            if (v139)
            {

              v194 = *(v216 + 8);
              v195 = v217;
              v194(v213, v217);
              v194(v214, v195);
              goto LABEL_69;
            }

            v140 = type metadata accessor for COSE_Sign1();
            (*(*(v140 - 8) + 56))(v248, 1, 1, v140);
            v141 = v226;
            ISO18013ReaderRequest.DocRequest.init(itemsRequest:readerAuth:)();

            v126 = v253;
            v258 = v253;
            v143 = v253[2];
            v142 = v253[3];
            if (v143 >= v142 >> 1)
            {
              sub_100172E0C(v142 > 1, v143 + 1, 1);
              v126 = v258;
            }

            v127 = v242 + 1;
            v126[2] = v143 + 1;
            result = (*(v250 + 32))(v126 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v143, v141, v247);
            v128 += 5;
            v97 = v251;
            v110 = v244;
            if (v241 == v127)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

LABEL_44:
        sub_100007224(&qword_100841E80, &qword_1006DECE8);
        v154 = *(type metadata accessor for ISO18013ReaderRequest.UseCase() - 8);
        v155 = *(v154 + 72);
        v156 = (*(v154 + 80) + 32) & ~*(v154 + 80);
        v157 = swift_allocObject();
        v250 = xmmword_1006BF520;
        *(v157 + 16) = xmmword_1006BF520;
        v158 = *(v110 + 16);

        if (v158)
        {
          v253 = v126;
          v258 = _swiftEmptyArrayStorage;
          sub_100173300(0, v158, 0);
          v159 = 0;
          v160 = v258;
          do
          {
            sub_100007224(&qword_100841E88, &qword_1006DECF0);
            v161 = swift_allocObject();
            *(v161 + 16) = v250;
            *(v161 + 32) = v159;
            v258 = v160;
            v163 = v160[2];
            v162 = v160[3];
            if (v163 >= v162 >> 1)
            {
              v249 = v161;
              sub_100173300((v162 > 1), v163 + 1, 1);
              v161 = v249;
              v160 = v258;
            }

            ++v159;
            v160[2] = v163 + 1;
            v160[v163 + 4] = v161;
          }

          while (v158 != v159);
          v97 = v251;
        }

        ISO18013ReaderRequest.UseCase.init(documentSets:mandatory:)();
        sub_1000363B4(v246, v255);
        sub_1000363B4(v252, v97);
        ISO18013ReaderRequest.DeviceRequestInfo.init(useCases:externalData:interpretWillNotRetainIntentAsDisplayOnly:logotypeIconData:)();
        v164 = type metadata accessor for CBOREncoder();
        v165 = *(v164 + 48);
        v166 = *(v164 + 52);
        swift_allocObject();
        CBOREncoder.init()();
        sub_10036E5FC(&qword_100841E90, &type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo);
        sub_10036E5FC(&qword_100841E98, &type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo);
        v167 = v204;
        v168 = v254;
        CBOREncodedCBOR.init(value:tag:encoder:)();
        if (v168)
        {

          v169 = *(v216 + 8);
          v170 = v217;
          v169(v213, v217);
          v169(v214, v170);
          goto LABEL_11;
        }

        v199 = sub_100007224(&qword_100841E68, &unk_1006DECD0);
        (*(*(v199 - 8) + 56))(v167, 0, 1, v199);
        ISO18013ReaderRequest.init(version:docRequests:deviceRequestInfo:readerAuthAll:)();
        v215 = v214;
        goto LABEL_72;
      }
    }

    v151 = v208;
    v152 = v111;
    MobileDocumentReaderRequest.documentRequestType.getter();
    LODWORD(v238) = MobileDocumentRequestType.isDisplayOnly.getter();
    v118(v151, v117);
    if (v152)
    {
      v153 = v210;
      static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
    }

    else
    {
      v153 = v210;
      static ISO18013ReaderRequest.supportedVersion.getter();
    }

    v171 = v216;
    v172 = v215;
    v173 = v153;
    v174 = v217;
    (*(v216 + 32))(v215, v173, v217);
    (*(v171 + 16))(v212, v172, v174);
    v175 = *(v110 + 16);
    if (v175)
    {
      v258 = _swiftEmptyArrayStorage;
      result = sub_100172E0C(0, v175, 0);
      v176 = 0;
      v177 = v258;
      v178 = *(v110 + 16);
      v240 = v250 + 32;
      v241 = v175;
      if (v178 >= v175)
      {
        v178 = v175;
      }

      v242 = v178;
      v179 = (v110 + 64);
      while (v242 != v176)
      {
        if (v176 >= *(v110 + 16))
        {
          goto LABEL_75;
        }

        v253 = v177;
        v180 = *(v179 - 3);
        v182 = *(v179 - 2);
        v181 = *(v179 - 1);
        v183 = *v179;
        v245 = *(v179 - 4);
        v243 = v181;
        if (v176)
        {
          v184 = type metadata accessor for ISO18013ReaderRequest.DocRequestInfo();
          (*(*(v184 - 8) + 56))(v116, 1, 1, v184);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
        }

        else
        {

          sub_1000363B4(v246, v255);
          v239 = v180;
          sub_1000363B4(v252, v251);

          v116 = v224;
          ISO18013ReaderRequest.DocRequestInfo.init(alternativeDataElements:issuerIdentifiers:maximumResponseSize:uniqueDocSetRequired:externalData:interpretWillNotRetainIntentAsDisplayOnly:logotypeIconData:)();
          v185 = type metadata accessor for ISO18013ReaderRequest.DocRequestInfo();
          (*(*(v185 - 8) + 56))(v116, 0, 1, v185);
        }

        ISO18013ReaderRequest.ItemsRequest.init(docType:namespaces:requestInfo:)();
        v186 = type metadata accessor for CBOREncoder();
        v187 = *(v186 + 48);
        v188 = *(v186 + 52);
        swift_allocObject();
        CBOREncoder.init()();
        sub_10036E5FC(&qword_100841E58, &type metadata accessor for ISO18013ReaderRequest.ItemsRequest);
        sub_10036E5FC(&qword_100841E60, &type metadata accessor for ISO18013ReaderRequest.ItemsRequest);
        v189 = v254;
        CBOREncodedCBOR.init(value:tag:encoder:)();
        v254 = v189;
        if (v189)
        {

          v196 = *(v216 + 8);
          v197 = v217;
          v196(v212, v217);
          v196(v215, v197);
LABEL_69:

          goto LABEL_11;
        }

        v190 = type metadata accessor for COSE_Sign1();
        (*(*(v190 - 8) + 56))(v248, 1, 1, v190);
        v191 = v225;
        ISO18013ReaderRequest.DocRequest.init(itemsRequest:readerAuth:)();

        v177 = v253;
        v258 = v253;
        v193 = v253[2];
        v192 = v253[3];
        if (v193 >= v192 >> 1)
        {
          sub_100172E0C(v192 > 1, v193 + 1, 1);
          v177 = v258;
        }

        ++v176;
        v177[2] = v193 + 1;
        result = (*(v250 + 32))(v177 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v193, v191, v247);
        v179 += 5;
        v110 = v244;
        if (v241 == v176)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_74;
    }

LABEL_70:
    v198 = sub_100007224(&qword_100841E68, &unk_1006DECD0);
    (*(*(v198 - 8) + 56))(v202, 1, 1, v198);
    ISO18013ReaderRequest.init(version:docRequests:deviceRequestInfo:readerAuthAll:)();

LABEL_72:
    (*(v216 + 8))(v215, v217);
    goto LABEL_12;
  }

  v211 = v82;
  v84 = swift_slowAlloc();
  v201 = swift_slowAlloc();
  v258 = v201;
  *v84 = 136315650;
  v85 = v244;
  v77(v223, v66, v244);
  v86 = String.init<A>(describing:)();
  v88 = v87;
  (*(v61 + 8))(v66, v85);
  v89 = sub_100141FE4(v86, v88, &v258);

  *(v84 + 4) = v89;
  *(v84 + 12) = 2048;
  v90 = v255;
  v91 = -1;
  v92 = v246;
  v93 = v81;
  v95 = v242;
  v94 = v243;
  v96 = v70;
  if (v255 >> 60 != 15)
  {
    v114 = v255 >> 62;
    if ((v255 >> 62) > 1)
    {
      if (v114 == 2)
      {
        v145 = *(v246 + 16);
        v144 = *(v246 + 24);
        v146 = v255;
        result = sub_10000BD94(v246, v255);
        v91 = v144 - v145;
        if (__OFSUB__(v144, v145))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v90 = v146;
        v93 = v252;
        v96 = v70;
      }

      else
      {
        sub_10000BD94(v246, v255);
        v91 = 0;
      }
    }

    else if (v114)
    {
      result = sub_10000BD94(v246, v255);
      LODWORD(v91) = HIDWORD(v92) - v92;
      if (__OFSUB__(HIDWORD(v92), v92))
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v91 = v91;
      v93 = v252;
    }

    else
    {
      sub_10000BD94(v246, v255);
      v91 = BYTE6(v90);
    }
  }

  *(v84 + 14) = v91;
  sub_10000BD94(v92, v90);
  *(v84 + 22) = 2048;
  v97 = v251;
  if (v251 >> 60 == 15)
  {
    v98 = -1;
LABEL_5:
    v99 = v254;
    v100 = v211;
LABEL_6:
    *(v84 + 24) = v98;
    sub_10000BD94(v93, v97);
    _os_log_impl(&_mh_execute_header, v100, v222, "ISO18013RequestBuilder building mdoc request with %s, logotype icon data %ld bytes, external data %ld bytes", v84, 0x20u);
    sub_10000BB78(v201);

    (*(v95 + 8))(v96, v94);
    goto LABEL_8;
  }

  v115 = v251 >> 62;
  v100 = v211;
  if ((v251 >> 62) > 1)
  {
    if (v115 != 2)
    {
      sub_10000BD94(v93, v251);
      v98 = 0;
      v99 = v254;
      goto LABEL_6;
    }

    v147 = v93;
    v150 = v93 + 16;
    v149 = *(v93 + 16);
    v148 = *(v150 + 8);
    result = sub_10000BD94(v147, v251);
    v98 = v148 - v149;
    if (__OFSUB__(v148, v149))
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v93 = v252;
    goto LABEL_5;
  }

  if (!v115)
  {
    sub_10000BD94(v93, v251);
    v98 = BYTE6(v97);
    v99 = v254;
    goto LABEL_6;
  }

  result = sub_10000BD94(v93, v251);
  LODWORD(v98) = HIDWORD(v93) - v93;
  if (!__OFSUB__(HIDWORD(v93), v93))
  {
    v98 = v98;
    goto LABEL_5;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_100368D8C(uint64_t a1)
{
  v60 = a1;
  v1 = type metadata accessor for CoreIDVFeatureFlag();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  __chkstk_darwin(v1);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_100841E20, &qword_1006DEC88);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v59 = &v45 - v6;
  v7 = type metadata accessor for ISO18013DeviceEngagement();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841E28, &qword_1006DEC90);
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for ISO18013DeviceEngagement.Capabilities();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  __chkstk_darwin(v14);
  v46 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DIPError.Code();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v51 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ISO18013SessionTranscript();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ISO18013PhysicalSessionTranscript();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v60, v21);
  if ((*(v22 + 88))(v25, v21) != enum case for ISO18013SessionTranscript.physical(_:))
  {
    (*(v22 + 8))(v25, v21);
    (*(v18 + 104))(v51, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  (*(v22 + 96))(v25, v21);
  (*(v27 + 32))(v30, v25, v26);
  ISO18013PhysicalSessionTranscript.deviceEngagementBytes.getter();
  v31 = v53;
  v32 = v54;
  CBOREncodedCBOR.value.getter();
  (*(v52 + 8))(v13, v31);
  v33 = v59;
  ISO18013DeviceEngagement.capabilities.getter();
  (*(v55 + 8))(v32, v56);
  v35 = v57;
  v34 = v58;
  if ((*(v57 + 48))(v33, 1, v58) == 1)
  {
    (*(v27 + 8))(v30, v26);
    sub_10000BE18(v33, &qword_100841E20, &qword_1006DEC88);
    return 0;
  }

  v56 = v27;
  v60 = v26;
  v37 = v46;
  (*(v35 + 32))(v46, v33, v34);
  v38 = v47[3];
  v59 = v47[4];
  sub_10000BA08(v47, v38);
  v40 = v48;
  v39 = v49;
  v41 = v50;
  (*(v49 + 104))(v48, enum case for CoreIDVFeatureFlag.iso18013_5SecondEditionSupport(_:), v50);
  v42 = dispatch thunk of FeatureFlagProviding.isEnabled(_:)();
  (*(v39 + 8))(v40, v41);
  if ((v42 & 1) == 0)
  {
    (*(v35 + 8))(v37, v34);
    (*(v56 + 8))(v30, v60);
    return 0;
  }

  v43 = ISO18013DeviceEngagement.Capabilities.isExtendedRequestSupported.getter();
  v44 = ISO18013DeviceEngagement.Capabilities.isReaderAuthAllSupported.getter();
  (*(v35 + 8))(v37, v34);
  (*(v56 + 8))(v30, v60);
  if (v44 == 2)
  {
    if ((v43 & 1) == 0)
    {
      return 0;
    }

    return 3;
  }

  if (v43)
  {
    if (v44)
    {
      return 1;
    }

    return 3;
  }

  if (v44)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100369558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for Milestone();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_10083F168, &unk_1006DEC40) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v14 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v6[19] = v14;
  v15 = *(v14 - 8);
  v6[20] = v15;
  v16 = *(v15 + 64) + 15;
  v6[21] = swift_task_alloc();
  v17 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v6[22] = v17;
  v18 = *(v17 - 8);
  v6[23] = v18;
  v19 = *(v18 + 64) + 15;
  v6[24] = swift_task_alloc();
  v20 = *(*(sub_100007224(&qword_100841DF8, &qword_1006DEC50) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v21 = type metadata accessor for ISO18013SessionTranscript();
  v6[26] = v21;
  v22 = *(v21 - 8);
  v6[27] = v22;
  v23 = *(v22 + 64) + 15;
  v6[28] = swift_task_alloc();
  v24 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  v6[29] = v24;
  v25 = *(v24 - 8);
  v6[30] = v25;
  v26 = *(v25 + 64) + 15;
  v6[31] = swift_task_alloc();
  v27 = type metadata accessor for ISO18013ReaderRequest();
  v6[32] = v27;
  v28 = *(v27 - 8);
  v6[33] = v28;
  v29 = *(v28 + 64) + 15;
  v6[34] = swift_task_alloc();
  v30 = type metadata accessor for Logger();
  v6[35] = v30;
  v31 = *(v30 - 8);
  v6[36] = v31;
  v32 = *(v31 + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v33 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v34 = type metadata accessor for DIPSignpost();
  v6[41] = v34;
  v35 = *(v34 - 8);
  v6[42] = v35;
  v36 = *(v35 + 64) + 15;
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_1003699C0, 0, 0);
}

uint64_t sub_1003699C0()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  static DaemonSignposts.MobileDocumentReader.signRequest.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "ISO18013RequestBuilder signDocumentRequest starting to sign document request", v6, 2u);
  }

  v7 = *(v0 + 312);
  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 256);
  v95 = *(v0 + 88);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);

  v15 = *(v9 + 8);
  *(v0 + 352) = v15;
  v15(v7, v8);
  (*(v11 + 16))(v10, v14, v12);
  v16 = sub_100368D8C(v13);
  if (v16 - 1 >= 2)
  {
    if (v16)
    {
      v42 = *(v0 + 304);
      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 304);
      v47 = *(v0 + 280);
      v48 = *(v0 + 288);
      if (v45)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Holder device supports extended requests but not reader auth all. Request will not be signed.", v49, 2u);
      }

      v15(v46, v47);
      v50 = *(v0 + 296);
      defaultLogger()();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "ISO18013RequestBuilder signDocumentRequest returning successfully", v53, 2u);
      }

      v54 = *(v0 + 344);
      v55 = *(v0 + 336);
      v83 = *(v0 + 328);
      v84 = *(v0 + 320);
      v85 = *(v0 + 312);
      v56 = v51;
      v58 = *(v0 + 288);
      v57 = *(v0 + 296);
      v59 = *(v0 + 280);
      v82 = *(v0 + 272);
      v60 = *(v0 + 264);
      v80 = *(v0 + 352);
      v81 = *(v0 + 256);
      v86 = *(v0 + 304);
      v87 = *(v0 + 248);
      v88 = *(v0 + 224);
      v89 = *(v0 + 200);
      v90 = *(v0 + 192);
      v61 = *(v0 + 136);
      v92 = *(v0 + 168);
      v94 = *(v0 + 144);
      v62 = *(v0 + 120);
      v63 = *(v0 + 128);
      v96 = *(v0 + 112);
      v79 = *(v0 + 48);

      v80(v57, v59);
      static MobileDocumentReaderMilestone.readRequestSigned.getter();
      Milestone.log()();
      (*(v63 + 8))(v61, v62);
      (*(v60 + 32))(v79, v82, v81);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v55 + 8))(v54, v83);

      v64 = *(v0 + 8);

      return v64();
    }

    else
    {
      v33 = *(v0 + 272);
      v34 = *(v0 + 64);
      v35 = ISO18013ReaderRequest.docRequests.getter();
      v36 = swift_task_alloc();
      *(v36 + 16) = v34;
      v37 = sub_100366C74(sub_10036E5D4, v36, v35);
      *(v0 + 408) = v37;

      v38 = swift_task_alloc();
      *(v0 + 416) = v38;
      *v38 = v0;
      v38[1] = sub_10036A7A8;
      v39 = *(v0 + 80);
      v40 = *(v0 + 88);
      v41 = *(v0 + 72);

      return sub_10036BEC0(v37, v41, v39);
    }
  }

  else
  {
    v18 = *(v0 + 272);
    (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 64), *(v0 + 208));
    v19 = ISO18013ReaderRequest.docRequests.getter();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v0 + 184);
      v22 = *(v0 + 160);
      sub_100172DCC(0, v20, 0);
      v23 = *(v22 + 16);
      v22 += 16;
      v93 = v23;
      v24 = v19 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v91 = *(v22 + 56);
      v25 = (v22 - 8);
      do
      {
        v26 = *(v0 + 192);
        v27 = *(v0 + 168);
        v28 = *(v0 + 152);
        v93(v27, v24, v28);
        ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
        (*v25)(v27, v28);
        v30 = _swiftEmptyArrayStorage[2];
        v29 = _swiftEmptyArrayStorage[3];
        if (v30 >= v29 >> 1)
        {
          sub_100172DCC(v29 > 1, v30 + 1, 1);
        }

        v31 = *(v0 + 192);
        v32 = *(v0 + 176);
        _swiftEmptyArrayStorage[2] = v30 + 1;
        (*(v21 + 32))(_swiftEmptyArrayStorage + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v30, v31, v32);
        v24 += v91;
        --v20;
      }

      while (v20);
    }

    v65 = *(v0 + 272);
    v67 = *(v0 + 240);
    v66 = *(v0 + 248);
    v69 = *(v0 + 224);
    v68 = *(v0 + 232);
    v70 = *(v0 + 200);
    ISO18013ReaderRequest.deviceRequestInfo.getter();
    ISO18013ReaderAuthenticationAll.init(sessionTranscript:itemsRequestBytesAll:deviceRequestsInfoBytes:)();
    sub_100007224(&qword_100841E00, &qword_1006DEC60);
    v71 = *(v67 + 72);
    v72 = *(v67 + 80);
    *(v0 + 456) = v72;
    v73 = (v72 + 32) & ~v72;
    v74 = swift_allocObject();
    *(v0 + 360) = v74;
    *(v74 + 16) = xmmword_1006BF520;
    (*(v67 + 16))(v74 + v73, v66, v68);
    v75 = swift_task_alloc();
    *(v0 + 368) = v75;
    *v75 = v0;
    v75[1] = sub_10036A334;
    v76 = *(v0 + 80);
    v77 = *(v0 + 88);
    v78 = *(v0 + 72);

    return sub_10036B2CC(v74, v78, v76);
  }
}

uint64_t sub_10036A334(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(v4 + 376) = v1;

  v7 = *(v4 + 360);
  v8 = *(v4 + 240);
  v9 = *(v4 + 232);
  v10 = (*(v4 + 456) + 32) & ~*(v4 + 456);
  if (v1)
  {
    swift_setDeallocating();
    v11 = *(v8 + 8);
    *(v4 + 440) = v11;
    *(v4 + 448) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7 + v10, v9);
    swift_deallocClassInstance();
    v12 = sub_10036AF04;
  }

  else
  {
    *(v4 + 384) = a1;
    swift_setDeallocating();
    v13 = *(v8 + 8);
    *(v4 + 392) = v13;
    *(v4 + 400) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v7 + v10, v9);
    swift_deallocClassInstance();
    v12 = sub_10036A528;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10036A528()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[29];
  ISO18013ReaderRequest.readerAuthAll.setter();
  v2(v5, v6);
  v7 = v0[37];
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "ISO18013RequestBuilder signDocumentRequest returning successfully", v10, 2u);
  }

  v11 = v0[43];
  v12 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v13 = v8;
  v15 = v0[36];
  v14 = v0[37];
  v16 = v0[35];
  v26 = v0[34];
  v17 = v0[33];
  v24 = v0[44];
  v25 = v0[32];
  v30 = v0[38];
  v31 = v0[31];
  v32 = v0[28];
  v33 = v0[25];
  v34 = v0[24];
  v35 = v0[21];
  v18 = v0[17];
  v19 = v0[15];
  v20 = v0[16];
  v36 = v0[18];
  v37 = v0[14];
  v23 = v0[6];

  v24(v14, v16);
  static MobileDocumentReaderMilestone.readRequestSigned.getter();
  Milestone.log()();
  (*(v20 + 8))(v18, v19);
  (*(v17 + 32))(v23, v26, v25);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v12 + 8))(v11, v27);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10036A7A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v5 = *(*v2 + 408);
  v8 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v6 = sub_10036AC8C;
  }

  else
  {
    v6 = sub_10036A8DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10036A8DC()
{
  v1 = v0[53];
  v50 = *(v1 + 16);
  if (v50)
  {
    v2 = v0[20];
    v3 = type metadata accessor for COSE_Sign1();
    v4 = 0;
    v5 = *(v3 - 8);
    v6 = *(v5 + 16);
    v5 += 16;
    v48 = v6;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v45 = *(v5 + 56);
    v8 = (v5 + 40);
    while (1)
    {
      v9 = v0[34];
      v10 = v0[18];
      v48(v10, v7, v3);
      (*v8)(v10, 0, 1, v3);
      v11 = ISO18013ReaderRequest.docRequests.modify();
      v13 = v12;
      v14 = *v12;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v14;
      if ((result & 1) == 0)
      {
        result = sub_10036E548(v14);
        v14 = result;
        *v13 = result;
      }

      if (v4 >= v14[2])
      {
        break;
      }

      v16 = v0[18];
      v17 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v4;
      ISO18013ReaderRequest.DocRequest.readerAuth.setter();
      v11(v0 + 2, 0);
      v7 += v45;
      if (v50 == ++v4)
      {
        v18 = v0[53];
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v19 = v0[37];
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "ISO18013RequestBuilder signDocumentRequest returning successfully", v22, 2u);
    }

    v23 = v0[43];
    v24 = v0[42];
    v38 = v0[41];
    v39 = v0[40];
    v40 = v0[39];
    v25 = v20;
    v27 = v0[36];
    v26 = v0[37];
    v28 = v0[35];
    v37 = v0[34];
    v29 = v0[33];
    v35 = v0[44];
    v36 = v0[32];
    v41 = v0[38];
    v42 = v0[31];
    v43 = v0[28];
    v44 = v0[25];
    v46 = v0[24];
    v47 = v0[21];
    v30 = v0[17];
    v31 = v0[15];
    v32 = v0[16];
    v49 = v0[18];
    v51 = v0[14];
    v34 = v0[6];

    v35(v26, v28);
    static MobileDocumentReaderMilestone.readRequestSigned.getter();
    Milestone.log()();
    (*(v32 + 8))(v30, v31);
    (*(v29 + 32))(v34, v37, v36);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v24 + 8))(v23, v38);

    v33 = v0[1];

    return v33();
  }

  return result;
}

uint64_t sub_10036AC8C()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  v1 = v0[54];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v7 = v0[40];
  v8 = v0[39];
  v9 = v0[38];
  v10 = v0[37];
  v11 = v0[34];
  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[24];
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10036AF04()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);
  (*(v0 + 440))(*(v0 + 248), *(v0 + 232));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 376);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 328);
  v11 = *(v0 + 320);
  v12 = *(v0 + 312);
  v13 = *(v0 + 304);
  v14 = *(v0 + 296);
  v15 = *(v0 + 272);
  v16 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 200);
  v19 = *(v0 + 192);
  v20 = *(v0 + 168);
  v21 = *(v0 + 144);
  v22 = *(v0 + 136);
  (*(*(v0 + 104) + 104))(*(v0 + 112), enum case for DIPError.Code.internalError(_:), *(v0 + 96));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10036B190(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for ISO18013SessionTranscript();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  return ISO18013ReaderAuthentication.init(sessionTranscript:itemsRequestBytes:)();
}

uint64_t sub_10036B2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(sub_100007224(&qword_10083F168, &unk_1006DEC40) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for COSE_Sign1();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013PresentmentType();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_100841BE8, &qword_1006DEB10) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v4[17] = v13;
  v14 = *(v13 - 8);
  v4[18] = v14;
  v15 = *(v14 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10036B4B8, 0, 0);
}

uint64_t sub_10036B4B8()
{
  v50 = v0;
  v1 = v0[6];
  v2 = *(v1 + *(type metadata accessor for MobileDocumentReaderAuthenticationSession() + 28));
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_13:
    v15 = v0[16];
    v16 = v0[15];
    v17 = v0[12];
    v18 = v0[9];
    (*(v0[18] + 104))(v0[19], v11, v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v0[20] = v4;
  v6 = v0[16];
  type metadata accessor for SecCertificate(0);
  v0[21] = Array<A>.derRepresentation.getter();
  SecCertificateRef.publicKeyAlgorithm()();
  v7 = type metadata accessor for PublicKeyAlgorithm();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[16];
  if (v9 == 1)
  {

    sub_10000BE18(v10, &qword_100841BE8, &qword_1006DEB10);
LABEL_12:
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_13;
  }

  v12 = PublicKeyAlgorithm.algorithmIdentifier.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  if (v14)
  {

    goto LABEL_12;
  }

  if (v12 != -7)
  {
    v47 = v5;
    v37 = v0[18];
    v36 = v0[19];
    v38 = v0[17];

    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(74);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v39._countAndFlagsBits = 0xD000000000000014;
    v39._object = 0x8000000100710BF0;
    String.append(_:)(v39);
    v0[4] = v12;
    type metadata accessor for COSEAlgorithm(0);
    _print_unlocked<A, B>(_:_:)();
    v40._countAndFlagsBits = 0xD000000000000034;
    v40._object = 0x8000000100710C10;
    String.append(_:)(v40);
    v41 = v0[2];
    v42 = v0[3];
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v37 + 104))(v36, enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_13;
  }

  v20 = v0[14];
  v21 = v0[15];
  v22 = v0[13];
  v23 = v0[5];
  v24 = type metadata accessor for CBOREncoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = CBOREncoder.init()();
  v0[22] = v27;
  (*(v20 + 104))(v21, enum case for ISO18013PresentmentType.physical(_:), v22);
  CBOREncoder.presentmentType.setter();
  v28 = *(v23 + 16);
  if (v28)
  {
    v29 = v0[5];
    sub_10017314C(0, v28, 0);
    v30 = *(type metadata accessor for ISO18013ReaderAuthenticationAll() - 8);
    v31 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v32 = *(v30 + 72);
    do
    {
      sub_10036D8F0(v31, v27, 0xFFFFFFFFFFFFFFF9, v49);
      v33 = *v49;
      v35 = _swiftEmptyArrayStorage[2];
      v34 = _swiftEmptyArrayStorage[3];
      if (v35 >= v34 >> 1)
      {
        v48 = *v49;
        sub_10017314C((v34 > 1), v35 + 1, 1);
        v33 = v48;
      }

      _swiftEmptyArrayStorage[2] = v35 + 1;
      *&_swiftEmptyArrayStorage[2 * v35 + 4] = v33;
      v31 += v32;
      --v28;
    }

    while (v28);
  }

  v0[23] = _swiftEmptyArrayStorage;
  v43 = swift_task_alloc();
  v0[24] = v43;
  *v43 = v0;
  v43[1] = sub_10036BDA4;
  v44 = v0[7];
  v45 = v0[8];
  v46 = v0[6];

  return sub_10036E094(_swiftEmptyArrayStorage, v46, v44);
}

uint64_t sub_10036BDA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v8 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v5 = sub_10036E654;
  }

  else
  {
    v6 = v3[23];

    v5 = sub_10036E658;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036BEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(sub_100007224(&qword_10083F168, &unk_1006DEC40) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for COSE_Sign1();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013PresentmentType();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_100841BE8, &qword_1006DEB10) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v4[17] = v13;
  v14 = *(v13 - 8);
  v4[18] = v14;
  v15 = *(v14 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10036C0AC, 0, 0);
}

uint64_t sub_10036C0AC()
{
  v50 = v0;
  v1 = v0[6];
  v2 = *(v1 + *(type metadata accessor for MobileDocumentReaderAuthenticationSession() + 28));
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_13:
    v15 = v0[16];
    v16 = v0[15];
    v17 = v0[12];
    v18 = v0[9];
    (*(v0[18] + 104))(v0[19], v11, v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v0[20] = v4;
  v6 = v0[16];
  type metadata accessor for SecCertificate(0);
  v0[21] = Array<A>.derRepresentation.getter();
  SecCertificateRef.publicKeyAlgorithm()();
  v7 = type metadata accessor for PublicKeyAlgorithm();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[16];
  if (v9 == 1)
  {

    sub_10000BE18(v10, &qword_100841BE8, &qword_1006DEB10);
LABEL_12:
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_13;
  }

  v12 = PublicKeyAlgorithm.algorithmIdentifier.getter();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  if (v14)
  {

    goto LABEL_12;
  }

  if (v12 != -7)
  {
    v47 = v5;
    v37 = v0[18];
    v36 = v0[19];
    v38 = v0[17];

    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(74);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v39._countAndFlagsBits = 0xD000000000000014;
    v39._object = 0x8000000100710BF0;
    String.append(_:)(v39);
    v0[4] = v12;
    type metadata accessor for COSEAlgorithm(0);
    _print_unlocked<A, B>(_:_:)();
    v40._countAndFlagsBits = 0xD000000000000034;
    v40._object = 0x8000000100710C10;
    String.append(_:)(v40);
    v41 = v0[2];
    v42 = v0[3];
    v11 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v37 + 104))(v36, enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_13;
  }

  v20 = v0[14];
  v21 = v0[15];
  v22 = v0[13];
  v23 = v0[5];
  v24 = type metadata accessor for CBOREncoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = CBOREncoder.init()();
  v0[22] = v27;
  (*(v20 + 104))(v21, enum case for ISO18013PresentmentType.physical(_:), v22);
  CBOREncoder.presentmentType.setter();
  v28 = *(v23 + 16);
  if (v28)
  {
    v29 = v0[5];
    sub_10017314C(0, v28, 0);
    v30 = *(type metadata accessor for ISO18013ReaderAuthentication() - 8);
    v31 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v32 = *(v30 + 72);
    do
    {
      sub_10036D1E0(v31, v27, 0xFFFFFFFFFFFFFFF9, v49);
      v33 = *v49;
      v35 = _swiftEmptyArrayStorage[2];
      v34 = _swiftEmptyArrayStorage[3];
      if (v35 >= v34 >> 1)
      {
        v48 = *v49;
        sub_10017314C((v34 > 1), v35 + 1, 1);
        v33 = v48;
      }

      _swiftEmptyArrayStorage[2] = v35 + 1;
      *&_swiftEmptyArrayStorage[2 * v35 + 4] = v33;
      v31 += v32;
      --v28;
    }

    while (v28);
  }

  v0[23] = _swiftEmptyArrayStorage;
  v43 = swift_task_alloc();
  v0[24] = v43;
  *v43 = v0;
  v43[1] = sub_10036C998;
  v44 = v0[7];
  v45 = v0[8];
  v46 = v0[6];

  return sub_10036E094(_swiftEmptyArrayStorage, v46, v44);
}

uint64_t sub_10036C998(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v8 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v5 = sub_10036D000;
  }

  else
  {
    v6 = v3[23];

    v5 = sub_10036CAB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

size_t sub_10036CAB4()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  if (v2)
  {
    v52 = v0[21];
    v3 = v0[11];
    result = sub_100173340(0, v2, 0);
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v48 = v1;
    v50 = (v3 + 48);
    v46 = v3;
    v7 = (v3 + 32);
    v8 = (v1 + 40);
    while (1)
    {
      if (v5 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v54 = v6;
      v9 = v7;
      v10 = v0[21];
      v12 = v0[9];
      v11 = v0[10];
      v13 = *(v8 - 1);
      v14 = *v8;
      sub_10000B8B8(v13, *v8);
      sub_10000B8B8(v13, v14);

      COSE_Sign1.init(algorithmIdentifier:keyIdentifier:initializationVector:partialInitializationVector:payload:signature:x509Chain:includeCBORTag:)();
      if ((*v50)(v12, 1, v11) == 1)
      {
        break;
      }

      v15 = v0[12];
      v17 = v0[9];
      v16 = v0[10];
      sub_10000B90C(v13, v14);
      v18 = *v9;
      v19 = v16;
      v7 = v9;
      (*v9)(v15, v17, v19);
      v6 = v54;
      v21 = v54[2];
      v20 = v54[3];
      if (v21 >= v20 >> 1)
      {
        sub_100173340(v20 > 1, v21 + 1, 1);
        v6 = v54;
      }

      ++v5;
      v22 = v0[12];
      v23 = v0[10];
      v6[2] = v21 + 1;
      result = v18(v6 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v21, v22, v23);
      v8 += 2;
      v1 = v48;
      if (v2 == v5)
      {
        v36 = v0[25];
        v37 = v0[21];
        v38 = v0[22];
        v39 = v0[20];

        goto LABEL_13;
      }
    }

    v27 = v0[25];
    v47 = v0[21];
    v28 = v0[19];
    v51 = v0[22];
    v53 = v0[20];
    v29 = v0[17];
    v30 = v0[18];
    v31 = v0[9];

    sub_10000BE18(v31, &qword_10083F168, &unk_1006DEC40);
    v49 = enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:);
    (*(v30 + 104))(v28);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v13, v14);

    v32 = v0[16];
    v33 = v0[15];
    v34 = v0[12];
    v55 = v0[9];
    (*(v0[18] + 104))(v0[19], v49, v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }

  else
  {
    v24 = v0[21];
    v25 = v0[22];
    v26 = v0[20];

    v6 = _swiftEmptyArrayStorage;
LABEL_13:
    v40 = v0[19];
    v42 = v0[15];
    v41 = v0[16];
    v43 = v0[12];
    v44 = v0[9];

    v45 = v0[1];

    return v45(v6);
  }
}

uint64_t sub_10036D000()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];

  v5 = v0[26];
  v6 = v0[16];
  v7 = v0[15];
  v8 = v0[12];
  v11 = v0[9];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderCannotSignReaderAuthentication(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10036E5FC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10036D1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a3;
  v60 = a1;
  v57 = a4;
  v54 = type metadata accessor for Logger();
  v56 = *(v54 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v54);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SHA256();
  v53 = *(v50 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v50);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RFC8152SigStructure();
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007224(&qword_10083F170, &qword_1006DC630);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  type metadata accessor for ISO18013ReaderAuthentication();
  sub_10036E5FC(&qword_100841E18, &type metadata accessor for ISO18013ReaderAuthentication);
  v60 = a2;
  v22 = v66;
  result = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (!v22)
  {
    v47 = v12;
    v48 = v18;
    v63[0] = result;
    v63[1] = v24;
    v49 = result;
    v66 = v24;
    sub_10000B8B8(result, v24);
    sub_10000B960();
    sub_10000B9B4();

    CBOREncodedCBOR.init(value:tag:encoder:)();
    v25 = CBOREncodedCBOR.dataValue.getter();
    v27 = v26;
    (*(v48 + 8))(v21, v17);

    sub_10000B8B8(v25, v27);
    v28 = v16;
    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v59 = v27;
    sub_10036E5FC(&qword_10083F180, &type metadata accessor for RFC8152SigStructure);
    v29 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v31 = v30;
    sub_10036E5FC(&qword_1008336E0, &type metadata accessor for SHA256);
    v60 = v13;
    v32 = v52;
    v48 = v25;
    v33 = v50;
    dispatch thunk of HashFunction.init()();
    v34 = v31;
    sub_10000B8B8(v29, v31);
    v46 = v31;
    sub_10037939C(v29, v31);
    v35 = v29;
    sub_10000B90C(v29, v34);
    v36 = v47;
    dispatch thunk of HashFunction.finalize()();
    (*(v53 + 8))(v32, v33);
    v37 = v9;
    v64 = v9;
    v65 = sub_10036E5FC(&qword_100841E10, &type metadata accessor for SHA256Digest);
    v38 = sub_100032DBC(v63);
    v39 = v55;
    (*(v55 + 16))(v38, v36, v37);
    sub_10000BA08(v63, v64);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v39 + 8))(v36, v37);
    v40 = v61;
    v41 = v62;
    sub_10000BB78(v63);
    v42 = v51;
    v43 = defaultLogger()();
    __chkstk_darwin(v43);
    *(&v45 - 2) = v40;
    *(&v45 - 1) = v41;
    Logger.cryptoParam(_:)();
    sub_10000B90C(v35, v46);
    sub_10000B90C(v48, v59);
    sub_10000B90C(v49, v66);
    (*(v56 + 8))(v42, v54);
    result = (*(v58 + 8))(v28, v60);
    v44 = v57;
    *v57 = v40;
    v44[1] = v41;
  }

  return result;
}

uint64_t sub_10036D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a3;
  v60 = a1;
  v57 = a4;
  v54 = type metadata accessor for Logger();
  v56 = *(v54 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v54);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SHA256();
  v53 = *(v50 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v50);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RFC8152SigStructure();
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007224(&qword_10083F170, &qword_1006DC630);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  type metadata accessor for ISO18013ReaderAuthenticationAll();
  sub_10036E5FC(&qword_100841E08, &type metadata accessor for ISO18013ReaderAuthenticationAll);
  v60 = a2;
  v22 = v66;
  result = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (!v22)
  {
    v47 = v12;
    v48 = v18;
    v63[0] = result;
    v63[1] = v24;
    v49 = result;
    v66 = v24;
    sub_10000B8B8(result, v24);
    sub_10000B960();
    sub_10000B9B4();

    CBOREncodedCBOR.init(value:tag:encoder:)();
    v25 = CBOREncodedCBOR.dataValue.getter();
    v27 = v26;
    (*(v48 + 8))(v21, v17);

    sub_10000B8B8(v25, v27);
    v28 = v16;
    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v59 = v27;
    sub_10036E5FC(&qword_10083F180, &type metadata accessor for RFC8152SigStructure);
    v29 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v31 = v30;
    sub_10036E5FC(&qword_1008336E0, &type metadata accessor for SHA256);
    v60 = v13;
    v32 = v52;
    v48 = v25;
    v33 = v50;
    dispatch thunk of HashFunction.init()();
    v34 = v31;
    sub_10000B8B8(v29, v31);
    v46 = v31;
    sub_10037939C(v29, v31);
    v35 = v29;
    sub_10000B90C(v29, v34);
    v36 = v47;
    dispatch thunk of HashFunction.finalize()();
    (*(v53 + 8))(v32, v33);
    v37 = v9;
    v64 = v9;
    v65 = sub_10036E5FC(&qword_100841E10, &type metadata accessor for SHA256Digest);
    v38 = sub_100032DBC(v63);
    v39 = v55;
    (*(v55 + 16))(v38, v36, v37);
    sub_10000BA08(v63, v64);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v39 + 8))(v36, v37);
    v40 = v61;
    v41 = v62;
    sub_10000BB78(v63);
    v42 = v51;
    v43 = defaultLogger()();
    __chkstk_darwin(v43);
    *(&v45 - 2) = v40;
    *(&v45 - 1) = v41;
    Logger.cryptoParam(_:)();
    sub_10000B90C(v35, v46);
    sub_10000B90C(v48, v59);
    sub_10000B90C(v49, v66);
    (*(v56 + 8))(v42, v54);
    result = (*(v58 + 8))(v28, v60);
    v44 = v57;
    *v57 = v40;
    v44[1] = v41;
  }

  return result;
}

uint64_t sub_10036E000()
{
  _StringGuts.grow(_:)(54);
  v0._object = 0x8000000100710CB0;
  v0._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v0);
  v1 = Data.base16EncodedString()();
  String.append(_:)(v1);

  return 0;
}

uint64_t sub_10036E094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10036E0B8, 0, 0);
}

uint64_t sub_10036E0B8()
{
  v1 = *(v0 + 24);
  v2 = v1 + *(type metadata accessor for MobileDocumentReaderAuthenticationSession() + 32);
  v3 = *v2;
  *(v0 + 40) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 48) = v4;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = *(v0 + 16);
    v10 = *(v9 + 16);
    if (v10)
    {
      v21 = v4;
      v22 = v0;
      v3;
      sub_10017314C(0, v10, 0);
      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        sub_10000B8B8(v12, *v11);
        v14 = SecKeyRef.signSHA256Digest(_:algorithm:)();
        v16 = v15;
        sub_10000B90C(v12, v13);
        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_10017314C((v17 > 1), v18 + 1, 1);
        }

        v11 += 2;
        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        v19[4] = v14;
        v19[5] = v16;
        --v10;
      }

      while (v10);
      sub_10035542C(v3, v21);
      v0 = v22;
    }

    v20 = *(v0 + 8);

    return v20(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = *sub_10000BA08(*(v0 + 32), *(*(v0 + 32) + 24));
    sub_10000B8B8(v3, v4);
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_10036E350;
    v7 = *(v0 + 16);

    return sub_100518F24(v7, v3, v4);
  }
}

uint64_t sub_10036E350(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_10036E4E0;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_10036E478;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10036E478()
{
  sub_10035542C(v0[5], v0[6]);
  v1 = v0[9];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10036E4E0()
{
  sub_10035542C(v0[5], v0[6]);
  v1 = v0[8];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10036E570(unint64_t a1)
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

uint64_t sub_10036E5F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10036E000();
}

uint64_t sub_10036E5FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036E664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v13 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_10036E81C, 0, 0);
}

uint64_t sub_10036E81C()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[6];
  static DaemonSignposts.MobileDocumentReader.validateResponse.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "ISO18013ResponseValidator validating ISO18013 response, trustedIssuerRoots: %ld.", v9, 0xCu);
  }

  else
  {
    v10 = v0[6];
  }

  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[3];
  v15 = *(v13 + 8);
  v0[20] = v15;
  v0[21] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v12);
  v16 = ISO18013Response.documents.getter();
  v0[22] = v16;
  if (v16)
  {
    v17 = *(v0[8] + 16);
    v0[23] = v17;

    return _swift_task_switch(sub_10036EA30, v17, 0);
  }

  else
  {
    v18 = v0[19];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v19 = v0[16];
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[11];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v23 = v0[1];

    return v23(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10036EA30()
{
  v1 = *(v0 + 184);
  sub_100360E68(*(v0 + 48));

  return _swift_task_switch(sub_10036EA9C, 0, 0);
}

uint64_t sub_10036EA9C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 176);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  v7 = sub_100007224(&qword_100841FA8, &qword_1006DEE38);
  v8 = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  v9 = sub_1000BA30C(&qword_100841FB0, &qword_100841FA8, &qword_1006DEE38);
  *v6 = v0;
  v6[1] = sub_10036EBF8;

  return Sequence.asyncMap<A>(_:)(&unk_1006DEE30, v3, v7, v8, v9);
}

uint64_t sub_10036EBF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v9 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = sub_10036EE84;
  }

  else
  {
    v6 = v3[24];
    v7 = v3[22];

    v5 = sub_10036ED20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036ED20()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ISO18013ResponseValidator successfully validated ISO18013 response.", v4, 2u);
  }

  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[14];
  v9 = v0[12];

  v6(v8, v9);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v10 = v0[26];
  v11 = v0[16];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[11];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v15 = v0[1];

  return v15(v10);
}

uint64_t sub_10036EE84()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v11 = v0[17];
  v12 = v0[16];
  v13 = v0[15];
  v14 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10037A130(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10036F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.PropertyKey();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_100833A88, qword_1006BF8E0) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v14 = *(*(sub_100007224(&qword_100841BD8, &qword_1006DEB00) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v15 = *(*(sub_100007224(&qword_100841FB8, &unk_1006DEE40) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v16 = type metadata accessor for ISO18013MobileSecurityObject();
  v6[26] = v16;
  v17 = *(v16 - 8);
  v6[27] = v17;
  v18 = *(v17 + 64) + 15;
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_10036F2DC, 0, 0);
}

uint64_t sub_10036F2DC()
{
  v1 = *(v0[11] + 16);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_10036F380;
  v3 = v0[28];
  v4 = v0[12];
  v5 = v0[10];

  return sub_1003610D0(v3, v5, v4);
}

uint64_t sub_10036F380(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_10036FCD0;
  }

  else
  {
    v5 = sub_10036F494;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036F494()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  sub_10000BA08((*(v0 + 88) + 32), *(*(v0 + 88) + 56));
  sub_10035CAE8(v5, v2, v4, v3);
  if (v1)
  {
    v6 = *(v0 + 240);
    v61 = *(v0 + 208);
    v63 = *(v0 + 224);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 128);
    v57 = *(v0 + 136);
    v59 = *(v0 + 216);
    v66 = *(v0 + 120);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v11 = *(*v10 + 72);
    v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006BF520;
    v14 = v13 + v12;
    v15 = (v13 + v12 + v10[14]);
    v55 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
    (*(v7 + 104))(v14);
    v15[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
    v15[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0);
    *v15 = v6;
    swift_errorRetain();
    sub_10003C9C0(v13);
    swift_setDeallocating();
    sub_10000BE18(v14, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v65 = enum case for DIPError.Code.internalError(_:);
    (*(v9 + 104))(v57);
    v16 = type metadata accessor for DIPError();
    sub_10037A130(&qword_100834130, &type metadata accessor for DIPError);
    v17 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v59 + 8))(v63, v61);
    v18 = *(v0 + 168);
    *(v0 + 56) = v17;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v19 = swift_dynamicCast();
    v20 = *(*(v16 - 8) + 56);
    v21 = *(v0 + 168);
    if (v19)
    {
      v22 = *(v16 - 8);
      v24 = *(v0 + 152);
      v23 = *(v0 + 160);
      v25 = *(v0 + 144);
      v20(*(v0 + 168), 0, 1, v16);
      v26 = DIPError.properties.getter();
      (*(v22 + 8))(v21, v16);
      (*(v24 + 104))(v23, v55, v25);
      if (*(v26 + 16) && (v27 = sub_10003AF10(*(v0 + 160)), (v28 & 1) != 0))
      {
        v30 = *(v0 + 152);
        v29 = *(v0 + 160);
        v31 = *(v0 + 144);
        sub_100020260(*(v26 + 56) + 40 * v27, v0 + 16);
        (*(v30 + 8))(v29, v31);

        if (*(v0 + 40))
        {
          sub_100007224(&unk_100833A90, &unk_1006DEE50);
          sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
          if (swift_dynamicCast())
          {
            v32 = *(v0 + 64);
          }

          goto LABEL_14;
        }
      }

      else
      {
        v39 = *(v0 + 152);
        v38 = *(v0 + 160);
        v40 = *(v0 + 144);

        (*(v39 + 8))(v38, v40);
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }
    }

    else
    {
      v20(*(v0 + 168), 1, 1, v16);
      sub_10000BE18(v21, &qword_100833A88, qword_1006BF8E0);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
    }

    sub_10000BE18(v0 + 16, &qword_10083BD10, &qword_1006DA228);
LABEL_14:
    v41 = *(v0 + 176);
    v42 = *(v0 + 80);
    swift_errorRetain();
    ISO18013Response.Document.deviceSigned.getter();
    v43 = type metadata accessor for ISO18013Response.DeviceSigned();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v41, 1, v43) == 1)
    {
      sub_10000BE18(*(v0 + 176), &qword_100841BD8, &qword_1006DEB00);
      v45 = 1;
    }

    else
    {
      v46 = *(v0 + 192);
      v47 = *(v0 + 176);
      ISO18013Response.DeviceSigned.deviceAuth.getter();
      (*(v44 + 8))(v47, v43);
      v45 = 0;
    }

    v48 = *(v0 + 224);
    v49 = *(v0 + 192);
    v56 = *(v0 + 200);
    v58 = *(v0 + 184);
    v60 = *(v0 + 176);
    v62 = *(v0 + 168);
    v64 = *(v0 + 160);
    v51 = *(v0 + 128);
    v50 = *(v0 + 136);
    v52 = *(v0 + 120);
    v53 = type metadata accessor for ISO18013Response.DeviceAuth();
    (*(*(v53 - 8) + 56))(v49, v45, 1, v53);
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)();

    sub_10000BE18(v49, &qword_100841FB8, &unk_1006DEE40);
    (*(v51 + 104))(v50, v65, v52);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v54 = *(v0 + 8);

    return v54();
  }

  v33 = swift_task_alloc();
  *(v0 + 256) = v33;
  *v33 = v0;
  v33[1] = sub_10037022C;
  v34 = *(v0 + 224);
  v35 = *(v0 + 80);
  v36 = *(v0 + 88);

  return sub_100370D00(v35, v34);
}

uint64_t sub_10036FCD0()
{
  *(v0 + 56) = *(v0 + 248);
  v1 = (v0 + 16);
  v2 = *(v0 + 168);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v3 = type metadata accessor for DIPError();
  v4 = swift_dynamicCast();
  v5 = *(*(v3 - 8) + 56);
  v6 = *(v0 + 168);
  if ((v4 & 1) == 0)
  {
    v5(v6, 1, 1, v3);
    sub_10000BE18(v6, &qword_100833A88, qword_1006BF8E0);
    *v1 = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    goto LABEL_9;
  }

  v7 = *(v3 - 8);
  v8 = *(v0 + 152);
  v39 = *(v0 + 160);
  v9 = *(v0 + 144);
  v5(v6, 0, 1, v3);
  v10 = DIPError.properties.getter();
  (*(v7 + 8))(v6, v3);
  (*(v8 + 104))(v39, enum case for DIPError.PropertyKey.issuerCertificateChain(_:), v9);
  if (!*(v10 + 16) || (v11 = sub_10003AF10(*(v0 + 160)), (v12 & 1) == 0))
  {
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    v19 = *(v0 + 144);

    (*(v17 + 8))(v18, v19);
    *(v0 + 48) = 0;
    *v1 = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_9;
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  v15 = *(v0 + 144);
  sub_100020260(*(v10 + 56) + 40 * v11, v0 + 16);
  (*(v13 + 8))(v14, v15);

  if (!*(v0 + 40))
  {
LABEL_9:
    sub_10000BE18(v0 + 16, &qword_10083BD10, &qword_1006DA228);
    goto LABEL_10;
  }

  sub_100007224(&unk_100833A90, &unk_1006DEE50);
  sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 64);
  }

LABEL_10:
  v20 = *(v0 + 176);
  v21 = *(v0 + 80);
  swift_errorRetain();
  ISO18013Response.Document.deviceSigned.getter();
  v22 = type metadata accessor for ISO18013Response.DeviceSigned();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    sub_10000BE18(*(v0 + 176), &qword_100841BD8, &qword_1006DEB00);
    v24 = 1;
  }

  else
  {
    v25 = *(v0 + 192);
    v26 = *(v0 + 176);
    ISO18013Response.DeviceSigned.deviceAuth.getter();
    (*(v23 + 8))(v26, v22);
    v24 = 0;
  }

  v27 = *(v0 + 192);
  v34 = *(v0 + 224);
  v35 = *(v0 + 200);
  v36 = *(v0 + 184);
  v37 = *(v0 + 176);
  v38 = *(v0 + 168);
  v40 = *(v0 + 160);
  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  v30 = *(v0 + 120);
  v31 = type metadata accessor for ISO18013Response.DeviceAuth();
  (*(*(v31 - 8) + 56))(v27, v24, 1, v31);
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)();

  sub_10000BE18(v27, &qword_100841FB8, &unk_1006DEE40);
  (*(v29 + 104))(v28, enum case for DIPError.Code.internalError(_:), v30);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10037A130(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10037022C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_10037056C;
  }

  else
  {
    v3 = sub_100370340;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100370340()
{
  v1 = v0[23];
  v2 = v0[10];
  ISO18013Response.Document.deviceSigned.getter();
  v3 = type metadata accessor for ISO18013Response.DeviceSigned();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_10000BE18(v0[23], &qword_100841BD8, &qword_1006DEB00);
    v5 = 1;
  }

  else
  {
    v6 = v0[25];
    v7 = v0[23];
    ISO18013Response.DeviceSigned.deviceAuth.getter();
    (*(v4 + 8))(v7, v3);
    v5 = 0;
  }

  v8 = v0[30];
  v9 = v0[27];
  v10 = v0[28];
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[23];
  v14 = v0[24];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[17];
  v15 = v0[9];
  v16 = type metadata accessor for ISO18013Response.DeviceAuth();
  (*(*(v16 - 8) + 56))(v12, v5, 1, v16);
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)();
  sub_10000BE18(v12, &qword_100841FB8, &unk_1006DEE40);
  (*(v9 + 8))(v10, v11);
  *v15 = v8;

  v17 = v0[1];

  return v17();
}

uint64_t sub_10037056C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v53 = *(v0 + 208);
  v56 = *(v0 + 224);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v49 = *(v0 + 136);
  v51 = *(v0 + 216);
  v59 = *(v0 + 120);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v6 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  v10 = v9 + v8;
  v11 = (v10 + v6[14]);
  v47 = enum case for DIPError.PropertyKey.issuerCertificateChain(_:);
  (*(v3 + 104))(v10);
  v11[3] = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  v11[4] = sub_1000BA30C(&qword_100841DD0, &qword_10083B4C8, &unk_1006D98C0);
  *v11 = v2;
  swift_errorRetain();
  sub_10003C9C0(v9);
  swift_setDeallocating();
  sub_10000BE18(v10, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v58 = enum case for DIPError.Code.internalError(_:);
  (*(v5 + 104))(v49);
  v12 = type metadata accessor for DIPError();
  sub_10037A130(&qword_100834130, &type metadata accessor for DIPError);
  v13 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v51 + 8))(v56, v53);
  *(v0 + 56) = v13;
  v14 = (v0 + 16);
  v15 = *(v0 + 168);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v16 = swift_dynamicCast();
  v17 = *(*(v12 - 8) + 56);
  v18 = *(v0 + 168);
  if ((v16 & 1) == 0)
  {
    v17(v18, 1, 1, v12);
    sub_10000BE18(v18, &qword_100833A88, qword_1006BF8E0);
    *v14 = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    goto LABEL_9;
  }

  v19 = *(v12 - 8);
  v54 = *(v0 + 160);
  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v17(v18, 0, 1, v12);
  v22 = DIPError.properties.getter();
  (*(v19 + 8))(v18, v12);
  (*(v20 + 104))(v54, v47, v21);
  if (!*(v22 + 16) || (v23 = sub_10003AF10(*(v0 + 160)), (v24 & 1) == 0))
  {
    v29 = *(v0 + 152);
    v30 = *(v0 + 160);
    v31 = *(v0 + 144);

    (*(v29 + 8))(v30, v31);
    *(v0 + 48) = 0;
    *v14 = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_9;
  }

  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  v27 = *(v0 + 144);
  sub_100020260(*(v22 + 56) + 40 * v23, v0 + 16);
  (*(v25 + 8))(v26, v27);

  if (!*(v0 + 40))
  {
LABEL_9:
    sub_10000BE18(v0 + 16, &qword_10083BD10, &qword_1006DA228);
    goto LABEL_10;
  }

  sub_100007224(&unk_100833A90, &unk_1006DEE50);
  sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
  if (swift_dynamicCast())
  {
    v28 = *(v0 + 64);
  }

LABEL_10:
  v32 = *(v0 + 176);
  v33 = *(v0 + 80);
  swift_errorRetain();
  ISO18013Response.Document.deviceSigned.getter();
  v34 = type metadata accessor for ISO18013Response.DeviceSigned();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v32, 1, v34) == 1)
  {
    sub_10000BE18(*(v0 + 176), &qword_100841BD8, &qword_1006DEB00);
    v36 = 1;
  }

  else
  {
    v37 = *(v0 + 192);
    v38 = *(v0 + 176);
    ISO18013Response.DeviceSigned.deviceAuth.getter();
    (*(v35 + 8))(v38, v34);
    v36 = 0;
  }

  v39 = *(v0 + 224);
  v40 = *(v0 + 192);
  v48 = *(v0 + 200);
  v50 = *(v0 + 184);
  v52 = *(v0 + 176);
  v55 = *(v0 + 168);
  v57 = *(v0 + 160);
  v42 = *(v0 + 128);
  v41 = *(v0 + 136);
  v43 = *(v0 + 120);
  v44 = type metadata accessor for ISO18013Response.DeviceAuth();
  (*(*(v44 - 8) + 56))(v40, v36, 1, v44);
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendResponseValidationResultEvent(result:deviceAuth:issuerCertificateChain:)();

  sub_10000BE18(v40, &qword_100841FB8, &unk_1006DEE40);
  (*(v42 + 104))(v41, v58, v43);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100370D00(uint64_t a1, uint64_t a2)
{
  v3[117] = v2;
  v3[116] = a2;
  v3[115] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[118] = v4;
  v5 = *(v4 - 8);
  v3[119] = v5;
  v6 = *(v5 + 64) + 15;
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v3[122] = v7;
  v8 = *(v7 - 8);
  v3[123] = v8;
  v9 = *(v8 + 64) + 15;
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v10 = type metadata accessor for COSE_Sign1();
  v3[128] = v10;
  v11 = *(v10 - 8);
  v3[129] = v11;
  v12 = *(v11 + 64) + 15;
  v3[130] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013Response.IssuerSigned();
  v3[131] = v13;
  v14 = *(v13 - 8);
  v3[132] = v14;
  v15 = *(v14 + 64) + 15;
  v3[133] = swift_task_alloc();
  v16 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v3[134] = v16;
  v17 = *(v16 - 8);
  v3[135] = v17;
  v18 = *(v17 + 64) + 15;
  v3[136] = swift_task_alloc();
  v19 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v3[137] = v19;
  v3[138] = *(v19 + 64);
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v20 = type metadata accessor for SHA256();
  v3[141] = v20;
  v21 = *(v20 - 8);
  v3[142] = v21;
  v22 = *(v21 + 64) + 15;
  v3[143] = swift_task_alloc();
  v23 = type metadata accessor for SHA256Digest();
  v3[144] = v23;
  v24 = *(v23 - 8);
  v3[145] = v24;
  v25 = *(v24 + 64) + 15;
  v3[146] = swift_task_alloc();
  v26 = type metadata accessor for COSEKey();
  v3[147] = v26;
  v27 = *(v26 - 8);
  v3[148] = v27;
  v28 = *(v27 + 64) + 15;
  v3[149] = swift_task_alloc();
  v29 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo();
  v3[150] = v29;
  v30 = *(v29 - 8);
  v3[151] = v30;
  v31 = *(v30 + 64) + 15;
  v3[152] = swift_task_alloc();
  v32 = type metadata accessor for Logger();
  v3[153] = v32;
  v33 = *(v32 - 8);
  v3[154] = v33;
  v34 = *(v33 + 64) + 15;
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v35 = *(*(sub_100007224(&qword_100841F50, &qword_1006DEDD8) - 8) + 64) + 15;
  v3[162] = swift_task_alloc();
  v36 = *(*(sub_100007224(&qword_100841F58, &unk_1006DEDE0) - 8) + 64) + 15;
  v3[163] = swift_task_alloc();
  v3[164] = swift_task_alloc();
  v3[165] = swift_task_alloc();
  v37 = *(*(sub_100007224(&qword_100833A88, qword_1006BF8E0) - 8) + 64) + 15;
  v3[166] = swift_task_alloc();

  return _swift_task_switch(sub_1003712B4, 0, 0);
}

uint64_t sub_1003712B4()
{
  sub_10000BA08((*(v0 + 936) + 72), *(*(v0 + 936) + 96));
  v1 = swift_task_alloc();
  *(v0 + 1336) = v1;
  *v1 = v0;
  v1[1] = sub_100371364;

  return sub_10010EDB0();
}

uint64_t sub_100371364(char a1)
{
  v2 = *(*v1 + 1336);
  v4 = *v1;
  *(*v1 + 434) = a1;

  return _swift_task_switch(sub_100371464, 0, 0);
}

uint64_t sub_100371464()
{
  v152 = v0;
  if (*(v0 + 434) != 1)
  {
    v18 = *(v0 + 1256);
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "ISO18013ResponseValidator KRL Feature is not enabled, aborting validation", v21, 2u);
    }

    v22 = *(v0 + 1256);
    v23 = *(v0 + 1232);
    v24 = *(v0 + 1224);

    (*(v23 + 8))(v22, v24);
    if (qword_100832BB8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Milestone();
    sub_10003170C(v25, qword_100882128);
    Milestone.log()();
    goto LABEL_9;
  }

  v1 = *(v0 + 1328);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 984);
  v4 = *(v0 + 976);
  v5 = *(v0 + 928);
  v6 = *(v0 + 920);
  *(v0 + 433) = 0;
  v7 = *(v3 + 56);
  *(v0 + 1344) = v7;
  *(v0 + 1352) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v4);
  v8 = sub_10037965C(v6);
  v10 = v9;
  *(v0 + 1360) = v8;
  *(v0 + 1368) = v9;
  ISO18013MobileSecurityObject.status.getter();
  v11 = type metadata accessor for ISO18013MobileSecurityObject.Status();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v2, 1, v11);
  v14 = *(v0 + 1320);
  v15 = *(v0 + 1296);
  if (v13 == 1)
  {
    v16 = *(v0 + 1080);
    v17 = *(v0 + 1072);
    sub_10000BE18(*(v0 + 1296), &qword_100841F50, &qword_1006DEDD8);
    (*(v16 + 56))(v14, 1, 1, v17);
  }

  else
  {
    v38 = *(v0 + 1320);
    v39 = *(v0 + 1296);
    ISO18013MobileSecurityObject.Status.identifierList.getter();
    (*(v12 + 8))(v15, v11);
  }

  v40 = *(v0 + 1312);
  v41 = *(v0 + 1080);
  v42 = *(v0 + 1072);
  sub_10000BBC4(*(v0 + 1320), v40, &qword_100841F58, &unk_1006DEDE0);
  v43 = *(v41 + 48);
  v44 = v43(v40, 1, v42);
  v45 = *(v0 + 1312);
  if (v44 == 1)
  {
    v133 = v8;
    v135 = v10;
    v139 = v43;
    v46 = *(v0 + 1288);
    sub_10000BE18(v45, &qword_100841F58, &unk_1006DEDE0);
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "ISO18013ResponseValidator identifier from MSO is nil, create fallback using MSO...", v49, 2u);
    }

    v50 = *(v0 + 1288);
    v51 = *(v0 + 1232);
    v52 = *(v0 + 1224);
    v53 = *(v0 + 1216);
    v54 = *(v0 + 1208);
    v142 = *(v0 + 1200);
    v55 = *(v0 + 1192);
    v56 = *(v0 + 1184);
    v146 = *(v0 + 1176);
    v57 = *(v0 + 928);

    v149 = *(v51 + 8);
    v149(v50, v52);
    ISO18013MobileSecurityObject.deviceKeyInfo.getter();
    ISO18013MobileSecurityObject.DeviceKeyInfo.deviceKey.getter();
    (*(v54 + 8))(v53, v142);
    v58 = COSEKey.publicKeyX963Representation.getter();
    v60 = v59;
    (*(v56 + 8))(v55, v146);
    if (v60 >> 60 == 15)
    {
      v61 = *(v0 + 1264);
      defaultLogger()();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "ISO18013ResponseValidator could not get revocation identifier from MSO", v64, 2u);
      }

      v65 = *(v0 + 1328);
      v66 = *(v0 + 1320);
      v67 = *(v0 + 1264);
      v68 = *(v0 + 1232);
      v69 = *(v0 + 1224);

      v149(v67, v69);
      sub_10000BE18(v66, &qword_100841F58, &unk_1006DEDE0);
      sub_100373FD4((v0 + 433), v133, v135, v65);

      sub_10000BE18(v65, &qword_100833A88, qword_1006BF8E0);
LABEL_9:
      v26 = *(v0 + 1328);
      v27 = *(v0 + 1320);
      v28 = *(v0 + 1312);
      v29 = *(v0 + 1304);
      v30 = *(v0 + 1296);
      v31 = *(v0 + 1288);
      v32 = *(v0 + 1280);
      v33 = *(v0 + 1272);
      v34 = *(v0 + 1264);
      v35 = *(v0 + 1256);
      v122 = *(v0 + 1248);
      v123 = *(v0 + 1240);
      v124 = *(v0 + 1216);
      v125 = *(v0 + 1192);
      v126 = *(v0 + 1168);
      v127 = *(v0 + 1144);
      v128 = *(v0 + 1120);
      v129 = *(v0 + 1112);
      v130 = *(v0 + 1088);
      v131 = *(v0 + 1064);
      v132 = *(v0 + 1040);
      v134 = *(v0 + 1016);
      v138 = *(v0 + 1008);
      v140 = *(v0 + 1000);
      v141 = *(v0 + 992);
      v145 = *(v0 + 968);
      v148 = *(v0 + 960);

      v36 = *(v0 + 8);

      return v36();
    }

    v143 = *(v0 + 1280);
    v75 = *(v0 + 1168);
    v76 = *(v0 + 1160);
    v136 = *(v0 + 1152);
    v77 = *(v0 + 1144);
    v78 = *(v0 + 1136);
    v79 = *(v0 + 1128);
    sub_10037A130(&qword_1008336E0, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v58, v60);
    sub_10037939C(v58, v60);
    v147 = v58;
    sub_10000BD94(v58, v60);
    dispatch thunk of HashFunction.finalize()();
    (*(v78 + 8))(v77, v79);
    sub_10037A130(&qword_1008336E8, &type metadata accessor for SHA256Digest);
    v72 = Digest.data.getter();
    v74 = v80;
    (*(v76 + 8))(v75, v136);
    sub_10000B8B8(v72, v74);
    defaultLogger()();
    sub_10000B8B8(v72, v74);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    sub_10000B90C(v72, v74);
    v83 = os_log_type_enabled(v81, v82);
    v84 = *(v0 + 1280);
    v85 = *(v0 + 1232);
    v86 = *(v0 + 1224);
    if (v83)
    {
      v87 = swift_slowAlloc();
      v144 = v84;
      v88 = swift_slowAlloc();
      v151 = v88;
      *v87 = 136315138;
      v89 = Data.base16EncodedString()();
      v137 = v86;
      sub_10000B90C(v72, v74);
      v90 = sub_100141FE4(v89._countAndFlagsBits, v89._object, &v151);

      *(v87 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v81, v82, "ISO18013ResponseValidator created fallback identifier: %s", v87, 0xCu);
      sub_10000BB78(v88);

      sub_10000BD94(v147, v60);
      v91 = v137;
      v92 = v144;
    }

    else
    {
      sub_10000B90C(v72, v74);

      sub_10000BD94(v147, v60);
      v92 = v84;
      v91 = v86;
    }

    v149(v92, v91);
    v43 = v139;
  }

  else
  {
    v70 = *(v0 + 1080);
    v71 = *(v0 + 1072);
    v72 = ISO18013MobileSecurityObject.IdentifierList.id.getter();
    v74 = v73;
    (*(v70 + 8))(v45, v71);
  }

  *(v0 + 1384) = v74;
  *(v0 + 1376) = v72;
  v93 = *(v0 + 1304);
  v94 = *(v0 + 1072);
  sub_10000BBC4(*(v0 + 1320), v93, &qword_100841F58, &unk_1006DEDE0);
  v95 = v43(v93, 1, v94);
  v96 = *(v0 + 1304);
  v97 = *(v0 + 1120);
  if (v95 == 1)
  {
    sub_10000B8B8(v72, v74);
    sub_10000BE18(v96, &qword_100841F58, &unk_1006DEDE0);
    v98 = type metadata accessor for URL();
    (*(*(v98 - 8) + 56))(v97, 1, 1, v98);
    v99 = 0;
    v100 = 0xF000000000000000;
  }

  else
  {
    (*(*(v0 + 1080) + 32))(*(v0 + 1088), *(v0 + 1304), *(v0 + 1072));
    sub_10000B8B8(v72, v74);
    ISO18013MobileSecurityObject.IdentifierList.uri.getter();
    URL.init(string:)();

    v101 = ISO18013MobileSecurityObject.IdentifierList.certificate.getter();
    if (v102 >> 60 == 15)
    {
      v103 = *(v0 + 1064);
      v104 = *(v0 + 1056);
      v105 = *(v0 + 1048);
      v106 = *(v0 + 1040);
      v107 = *(v0 + 1032);
      v108 = *(v0 + 1024);
      v109 = *(v0 + 920);
      ISO18013Response.Document.issuerSigned.getter();
      ISO18013Response.IssuerSigned.issuerAuth.getter();
      (*(v104 + 8))(v103, v105);
      v110 = COSE_Sign1.x509Chain.getter();
      (*(v107 + 8))(v106, v108);
      if (v110)
      {
        if (v110[2])
        {
          v99 = v110[4];
          v100 = v110[5];
          sub_10000B8B8(v99, v100);
        }

        else
        {
          v99 = 0;
          v100 = 0xF000000000000000;
        }
      }

      else
      {
        v99 = 0;
        v100 = 0xF000000000000000;
      }

      v111 = *(v0 + 1272);
      defaultLogger()();
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();
      v114 = os_log_type_enabled(v112, v113);
      v115 = *(v0 + 1272);
      v116 = *(v0 + 1232);
      v117 = *(v0 + 1224);
      v118 = *(v0 + 1088);
      v119 = *(v0 + 1080);
      v150 = *(v0 + 1072);
      if (v114)
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&_mh_execute_header, v112, v113, "ISO18013ResponseValidator revocation list metadata certificate missing; falling back to credential issuer signer certificate", v120, 2u);
      }

      (*(v116 + 8))(v115, v117);
      (*(v119 + 8))(v118, v150);
    }

    else
    {
      v99 = v101;
      v100 = v102;
      (*(*(v0 + 1080) + 8))(*(v0 + 1088), *(v0 + 1072));
    }
  }

  *(v0 + 1400) = v100;
  *(v0 + 1392) = v99;
  sub_10000BA08((*(v0 + 936) + 72), *(*(v0 + 936) + 96));
  v121 = swift_task_alloc();
  *(v0 + 1408) = v121;
  *v121 = v0;
  v121[1] = sub_10037214C;

  return sub_10010E948(v0 + 440);
}

uint64_t sub_10037214C()
{
  v1 = *(*v0 + 1408);
  v3 = *v0;

  return _swift_task_switch(sub_100372248, 0, 0);
}

uint64_t sub_100372248()
{
  memcpy((v0 + 16), (v0 + 440), 0x1A1uLL);
  v1 = sub_10010F2A8(v0 + 16);
  v2 = 5.0;
  if (v1 != 1)
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 392);
    sub_10000BE18(v0 + 440, &qword_10083AAA0, &unk_1006D8E00);
    v2 = 5.0;
    if ((v4 & 1) == 0)
    {
      v2 = v3;
    }
  }

  *(v0 + 1416) = v2;

  return _swift_task_switch(sub_1003722FC, 0, 0);
}

uint64_t sub_1003722FC()
{
  v1 = v0[175];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[139];
  v6 = v0[138];
  v7 = v0[137];
  v8 = v0[117];
  sub_10000BBC4(v0[140], v5, &unk_100844540, &unk_1006BFBC0);
  v9 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[178] = v11;
  v11[2] = v8;
  v11[3] = v4;
  v11[4] = v3;
  sub_10034CEB4(v5, v11 + v9);
  v12 = (v11 + v10);
  *v12 = v2;
  v12[1] = v1;
  sub_10000B8B8(v4, v3);

  sub_1000363B4(v2, v1);
  v13 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
  v14 = swift_task_alloc();
  v0[179] = v14;
  v15 = sub_100007224(&qword_100841F60, &unk_1006DEE00);
  *v14 = v0;
  v14[1] = sub_100372494;
  v16.n128_u64[0] = v0[177];

  return withTaskTimeoutHandler<A>(timeout:operation:)(v0 + 108, &unk_1006DEDF8, v11, v15, v16);
}

uint64_t sub_100372494()
{
  v2 = *v1;
  v3 = *(*v1 + 1432);
  v7 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v4 = sub_100372854;
  }

  else
  {
    v5 = *(v2 + 1424);

    v4 = sub_1003725B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003725B0()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1320);
  v6 = *(v0 + 1120);
  sub_10010D5D4(*(v0 + 864), *(v0 + 872), *(v0 + 880), *(v0 + 888), *(v0 + 1360), *(v0 + 1368));
  sub_10000BD94(v2, v1);
  sub_10000B90C(v4, v3);
  sub_10000BD94(v4, v3);
  sub_10000BE18(v6, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v5, &qword_100841F58, &unk_1006DEDE0);
  v7 = *(v0 + 1328);
  sub_100373FD4((v0 + 433), *(v0 + 1360), *(v0 + 1368), v7);

  sub_10000BE18(v7, &qword_100833A88, qword_1006BF8E0);
  v8 = *(v0 + 1328);
  v9 = *(v0 + 1320);
  v10 = *(v0 + 1312);
  v11 = *(v0 + 1304);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1272);
  v16 = *(v0 + 1264);
  v17 = *(v0 + 1256);
  v20 = *(v0 + 1248);
  v21 = *(v0 + 1240);
  v22 = *(v0 + 1216);
  v23 = *(v0 + 1192);
  v24 = *(v0 + 1168);
  v25 = *(v0 + 1144);
  v26 = *(v0 + 1120);
  v27 = *(v0 + 1112);
  v28 = *(v0 + 1088);
  v29 = *(v0 + 1064);
  v30 = *(v0 + 1040);
  v31 = *(v0 + 1016);
  v32 = *(v0 + 1008);
  v33 = *(v0 + 1000);
  v34 = *(v0 + 992);
  v35 = *(v0 + 968);
  v36 = *(v0 + 960);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100372854()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 976);

  *(v0 + 896) = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 968);
    v6 = *(v0 + 960);
    v7 = *(v0 + 952);
    v8 = *(v0 + 944);
    (*(*(v0 + 984) + 32))(*(v0 + 1008), *(v0 + 1016), *(v0 + 976));
    DIPError.code.getter();
    (*(v7 + 104))(v6, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v8);
    sub_10037A130(&qword_10083B4D0, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v9 = *(v7 + 8);
    v9(v6, v8);
    v9(v5, v8);
    if (*(v0 + 904) == *(v0 + 912))
    {
      v10 = *(v0 + 1440);
      v11 = *(v0 + 1248);
      v12 = *(v0 + 1008);
      v13 = *(v0 + 1000);
      v14 = *(v0 + 984);
      v15 = *(v0 + 976);

      defaultLogger()();
      v122 = *(v14 + 16);
      v122(v13, v12, v15);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 1000);
      v20 = *(v0 + 984);
      v21 = *(v0 + 976);
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        sub_10037A130(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        v122(v24, v19, v21);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v84 = *(v20 + 8);
        v84(v19, v21);
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&_mh_execute_header, v16, v17, "ISO18013ResponseValidator matched credential key in revocation list: %@", v22, 0xCu);
        sub_10000BE18(v23, &unk_100833B50, &unk_1006D8FB0);
      }

      else
      {

        v84 = *(v20 + 8);
        v84(v19, v21);
      }

      v66 = *(v0 + 1392);
      v67 = *(v0 + 1400);
      v55 = *(v0 + 1376);
      v70 = *(v0 + 1360);
      v71 = *(v0 + 1368);
      v56 = *(v0 + 1352);
      v57 = *(v0 + 1344);
      v58 = *(v0 + 1328);
      v68 = *(v0 + 1384);
      v69 = *(v0 + 1320);
      v74 = *(v0 + 1304);
      v75 = *(v0 + 1296);
      v76 = *(v0 + 1288);
      v77 = *(v0 + 1280);
      v78 = *(v0 + 1272);
      v79 = *(v0 + 1264);
      v80 = *(v0 + 1256);
      v72 = *(v0 + 1312);
      v73 = *(v0 + 1248);
      v83 = *(v0 + 1240);
      v59 = *(v0 + 1224);
      v87 = *(v0 + 1216);
      v89 = *(v0 + 1192);
      v91 = *(v0 + 1168);
      v94 = *(v0 + 1144);
      v65 = *(v0 + 1120);
      v97 = *(v0 + 1112);
      v100 = *(v0 + 1088);
      v103 = *(v0 + 1064);
      v106 = *(v0 + 1040);
      v60 = *(v0 + 1008);
      v109 = *(v0 + 1016);
      v112 = *(v0 + 1000);
      v61 = *(v0 + 976);
      v115 = *(v0 + 992);
      v118 = *(v0 + 968);
      v121 = *(v0 + 960);
      (*(*(v0 + 1232) + 8))();
      sub_10000BE18(v58, &qword_100833A88, qword_1006BF8E0);
      v122(v58, v60, v61);
      v57(v58, 0, 1, v61);
      *(v0 + 433) = 1;
      sub_10037A130(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v122(v62, v60, v61);
      swift_willThrow();
      sub_10000BD94(v66, v67);
      sub_10000B90C(v55, v68);
      sub_10000BD94(v55, v68);
      v84(v60, v61);
      sub_10000BE18(v65, &unk_100844540, &unk_1006BFBC0);
      sub_10000BE18(v69, &qword_100841F58, &unk_1006DEDE0);
      v63 = *(v0 + 896);

      sub_100373FD4((v0 + 433), v70, v71, v58);

      sub_10000BE18(v58, &qword_100833A88, qword_1006BF8E0);

      v54 = *(v0 + 8);
      goto LABEL_11;
    }

    (*(*(v0 + 984) + 8))(*(v0 + 1008), *(v0 + 976));
  }

  v26 = *(v0 + 1440);
  v27 = *(v0 + 1240);
  v28 = *(v0 + 896);

  defaultLogger()();
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 1440);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "ISO18013ResponseValidator failed validate credential: %@", v32, 0xCu);
    sub_10000BE18(v33, &unk_100833B50, &unk_1006D8FB0);
  }

  v35 = *(v0 + 1440);
  v95 = *(v0 + 1392);
  v98 = *(v0 + 1400);
  v101 = *(v0 + 1376);
  v104 = *(v0 + 1384);
  v119 = *(v0 + 1344);
  v123 = *(v0 + 1352);
  v110 = *(v0 + 1320);
  v113 = *(v0 + 1328);
  v36 = *(v0 + 1240);
  v37 = *(v0 + 1232);
  v38 = *(v0 + 1224);
  v107 = *(v0 + 1120);
  v92 = *(v0 + 992);
  v39 = *(v0 + 984);
  v116 = *(v0 + 976);
  v40 = *(v0 + 968);
  v41 = *(v0 + 952);
  v42 = *(v0 + 944);

  (*(v37 + 8))(v36, v38);
  (*(v41 + 104))(v40, enum case for DIPError.Code.krlCouldNotFetch(_:), v42);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  sub_10000BD94(v95, v98);
  sub_10000B90C(v101, v104);
  sub_10000BD94(v101, v104);
  sub_10000BE18(v107, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v110, &qword_100841F58, &unk_1006DEDE0);
  sub_10000BE18(v113, &qword_100833A88, qword_1006BF8E0);
  (*(v39 + 32))(v113, v92, v116);
  v119(v113, 0, 1, v116);
  *(v0 + 433) = 2;
  v43 = *(v0 + 1328);
  sub_100373FD4((v0 + 433), *(v0 + 1360), *(v0 + 1368), v43);

  sub_10000BE18(v43, &qword_100833A88, qword_1006BF8E0);
  v44 = *(v0 + 1328);
  v45 = *(v0 + 1320);
  v46 = *(v0 + 1312);
  v47 = *(v0 + 1304);
  v48 = *(v0 + 1296);
  v49 = *(v0 + 1288);
  v50 = *(v0 + 1280);
  v51 = *(v0 + 1272);
  v52 = *(v0 + 1264);
  v53 = *(v0 + 1256);
  v81 = *(v0 + 1248);
  v82 = *(v0 + 1240);
  v85 = *(v0 + 1216);
  v86 = *(v0 + 1192);
  v88 = *(v0 + 1168);
  v90 = *(v0 + 1144);
  v93 = *(v0 + 1120);
  v96 = *(v0 + 1112);
  v99 = *(v0 + 1088);
  v102 = *(v0 + 1064);
  v105 = *(v0 + 1040);
  v108 = *(v0 + 1016);
  v111 = *(v0 + 1008);
  v114 = *(v0 + 1000);
  v117 = *(v0 + 992);
  v120 = *(v0 + 968);
  v124 = *(v0 + 960);

  v54 = *(v0 + 8);
LABEL_11:

  return v54();
}

uint64_t sub_1003733A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ISO18013MobileSecurityObject();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for ISO18013Response.Document();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003734C4, 0, 0);
}

uint64_t sub_1003734C4()
{
  v1 = v0[2];
  result = ISO18013Response.documents.getter();
  v0[10] = result;
  if (result)
  {
    v3 = *(result + 16);
    v0[11] = v3;
    if (v3)
    {
      v4 = v0[8];
      v0[12] = 0;
      if (*(result + 16))
      {
        v5 = v0[6];
        v6 = v0[3];
        (*(v4 + 16))(v0[9], result + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v0[7]);
        sub_100373A30(v5);
        v10 = swift_task_alloc();
        v0[13] = v10;
        *v10 = v0;
        v10[1] = sub_100373670;
        v11 = v0[9];
        v12 = v0[6];
        v13 = v0[3];

        return sub_100370D00(v11, v12);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v7 = v0[9];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100373670()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);

    v5 = sub_100373984;
  }

  else
  {
    v5 = sub_10037378C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10037378C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[12] + 1;
  (*(v0[5] + 8))(v0[6], v0[4]);
  result = (*(v3 + 8))(v2, v4);
  if (v5 == v1)
  {
    v7 = v0[10];

    v8 = v0[9];
    v9 = v0[6];

    v10 = v0[1];
LABEL_6:

    return v10();
  }

  v11 = v0[14];
  v12 = v0[12] + 1;
  v0[12] = v12;
  v13 = v0[10];
  if (v12 >= *(v13 + 16))
  {
    __break(1u);
    return result;
  }

  v14 = v0[6];
  v15 = v0[3];
  (*(v0[8] + 16))(v0[9], v13 + ((*(v0[8] + 80) + 32) & ~*(v0[8] + 80)) + *(v0[8] + 72) * v12, v0[7]);
  sub_100373A30(v14);
  if (v11)
  {
    v16 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v17 = v0[9];
    v18 = v0[6];

    v10 = v0[1];
    goto LABEL_6;
  }

  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_100373670;
  v20 = v0[9];
  v21 = v0[6];
  v22 = v0[3];

  return sub_100370D00(v20, v21);
}

uint64_t sub_100373984()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100373A30@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v1 = type metadata accessor for DIPError.Code();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v39 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100841DE8, &qword_1006DEC18);
  v33[0] = *(v8 - 8);
  v9 = *(v33[0] + 64);
  __chkstk_darwin(v8);
  v11 = v33 - v10;
  v12 = type metadata accessor for ISO18013Response.IssuerSigned();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for COSE_Sign1();
  v17 = *(v40 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v40);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ISO18013Response.Document.issuerSigned.getter();
  ISO18013Response.IssuerSigned.issuerAuth.getter();
  (*(v13 + 8))(v16, v12);
  v21 = COSE_Sign1.payload.getter();
  if (v22 >> 60 == 15)
  {
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "ISO18013ResponseValidator failed to parse MSO; payload is nil", v25, 2u);
    }

    (*(v34 + 8))(v7, v35);
    (*(v37 + 104))(v39, enum case for DIPError.Code.documentReaderMisformattedIssuerAuthStructure(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10037A130(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v26 = v21;
    v27 = v22;
    v28 = type metadata accessor for CBORDecoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    CBORDecoder.init()();
    sub_1000BA30C(&qword_100841DF0, &qword_100841DE8, &qword_1006DEC18);
    v31 = v36;
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();
    if (v31)
    {
      (*(v17 + 8))(v20, v40);

      return sub_10000BD94(v26, v27);
    }

    CBOREncodedCBOR.value.getter();
    sub_10000BD94(v26, v27);
    (*(v33[0] + 8))(v11, v8);
  }

  return (*(v17 + 8))(v20, v40);
}

void sub_100373FD4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = type metadata accessor for DIPError();
  if ((*(*(v14 - 8) + 48))(a4, 1, v14))
  {
    v15 = 0xE400000000000000;
    v16 = 1280070990;
  }

  else
  {
    DIPError.code.getter();
    v17 = DIPError.Code.rawValue.getter();
    (*(v9 + 8))(v12, v8);
    aBlock[0] = v17;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v18;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = v13;
  *(v20 + 40) = v16;
  *(v20 + 48) = v15;
  aBlock[4] = sub_100134634;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010CF08;
  aBlock[3] = &unk_10080E430;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

uint64_t sub_10037420C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100374238, 0, 0);
}

uint64_t sub_100374238()
{
  v1 = *sub_10000BA08((v0[3] + 72), *(v0[3] + 96));
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1003742EC;
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  return sub_100111BFC(v7, v5, v6, v3, v4, 0);
}

uint64_t sub_1003742EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 72);
  v12 = *v5;

  if (v4)
  {
    v13 = *(v12 + 8);

    return v13();
  }

  else
  {
    v10[10] = a4;
    v10[11] = a3;
    v10[12] = a2;
    v10[13] = a1;

    return _swift_task_switch(sub_100374460, 0, 0);
  }
}

uint64_t sub_100374460()
{
  v1 = *(v0 + 16);
  v2 = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  *v1 = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10037448C(uint64_t a1)
{
  v33 = a1;
  v1 = type metadata accessor for AnyCodable();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  type metadata accessor for ISO18013_5_1_ElementIdentifier();
  sub_10037A130(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v17 + 8))(v20, v16);
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_10003ADCC(v37, *(&v37 + 1));
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + 8 * v23);

  if (v26)
  {
    __chkstk_darwin(v27);
    *(&v32 - 2) = v33;
    sub_100161F54(sub_10037A2A4, v26, v15);

    goto LABEL_9;
  }

LABEL_8:
  v28 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_9:
  sub_10000BBC4(v15, v13, &qword_100841F68, &unk_1006DEE10);
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v30 + 8))(v13, v29);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v8, v34);
    AnyCodable.value.getter();
    (*(v35 + 8))(v4, v36);
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  if (swift_dynamicCast())
  {
    return v39;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100374A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v40 = a2;
  v2 = type metadata accessor for AnyCodable();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = type metadata accessor for ISO18013KnownNamespaces();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  sub_10037A130(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v18 + 8))(v21, v17);
  if (!*(v23 + 16))
  {

    goto LABEL_7;
  }

  v24 = sub_10003ADCC(v41, *(&v41 + 1));
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

  if (v27)
  {
    __chkstk_darwin(v28);
    *(&v36 - 2) = v36;
    sub_100161F54(sub_10037A068, v27, v16);

    goto LABEL_9;
  }

LABEL_8:
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
LABEL_9:
  sub_10000BBC4(v16, v14, &qword_100841F68, &unk_1006DEE10);
  v30 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v14, &qword_100841F68, &unk_1006DEE10);
    v41 = 0u;
    v42 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v31 + 8))(v14, v30);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v6 + 8))(v9, v37);
    AnyCodable.value.getter();
    (*(v38 + 8))(v5, v39);
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v32 = type metadata accessor for AnyCodableArray();
  v33 = v40;
  v34 = swift_dynamicCast();
  return (*(*(v32 - 8) + 56))(v33, v34 ^ 1u, 1, v32);
}

uint64_t sub_100374FC4(uint64_t a1)
{
  v33 = a1;
  v1 = type metadata accessor for AnyCodable();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  sub_10037A130(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v17 + 8))(v20, v16);
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_10003ADCC(v37, *(&v37 + 1));
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + 8 * v23);

  if (v26)
  {
    __chkstk_darwin(v27);
    *(&v32 - 2) = v33;
    sub_100161F54(sub_10037A2C0, v26, v15);

    goto LABEL_9;
  }

LABEL_8:
  v28 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_9:
  sub_10000BBC4(v15, v13, &qword_100841F68, &unk_1006DEE10);
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v30 + 8))(v13, v29);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v8, v34);
    AnyCodable.value.getter();
    (*(v35 + 8))(v4, v36);
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  if (swift_dynamicCast())
  {
    return v39;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10037552C(uint64_t a1)
{
  v35 = a1;
  v1 = type metadata accessor for AnyCodable();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  sub_10037A130(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v17 + 8))(v20, v16);
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_10003ADCC(v39, *(&v39 + 1));
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + 8 * v23);

  if (v26)
  {
    __chkstk_darwin(v27);
    *(&v34 - 2) = v35;
    sub_100161F54(sub_10037A2C0, v26, v15);

    goto LABEL_9;
  }

LABEL_8:
  v28 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_9:
  sub_10000BBC4(v15, v13, &qword_100841F68, &unk_1006DEE10);
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v30 + 8))(v13, v29);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v8, v36);
    AnyCodable.value.getter();
    (*(v37 + 8))(v4, v38);
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v31 = swift_dynamicCast();
  v32 = v41;
  if (!v31)
  {
    return 0;
  }

  return v32;
}

uint64_t sub_100375A98(uint64_t a1)
{
  v35 = a1;
  v1 = type metadata accessor for AnyCodable();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  type metadata accessor for ISO18013_5_1_ElementIdentifier();
  sub_10037A130(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v17 + 8))(v20, v16);
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_10003ADCC(v39, *(&v39 + 1));
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + 8 * v23);

  if (v26)
  {
    __chkstk_darwin(v27);
    *(&v34 - 2) = v35;
    sub_100161F54(sub_10037A2A4, v26, v15);

    goto LABEL_9;
  }

LABEL_8:
  v28 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_9:
  sub_10000BBC4(v15, v13, &qword_100841F68, &unk_1006DEE10);
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v30 + 8))(v13, v29);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v8, v36);
    AnyCodable.value.getter();
    (*(v37 + 8))(v4, v38);
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v31 = swift_dynamicCast();
  v32 = v41;
  if (!v31)
  {
    return 0;
  }

  return v32;
}

double sub_100376004@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a1;
  v38 = a2;
  v2 = type metadata accessor for AnyCodable();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = type metadata accessor for ISO18013KnownNamespaces();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  type metadata accessor for ISO18013_5_1_ElementIdentifier();
  sub_10037A130(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v18 + 8))(v21, v17);
  if (!*(v23 + 16))
  {

    goto LABEL_7;
  }

  v24 = sub_10003ADCC(v39, *(&v39 + 1));
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

  if (v27)
  {
    __chkstk_darwin(v28);
    *(&v34 - 2) = v34;
    sub_100161F54(sub_10037A004, v27, v16);

    goto LABEL_9;
  }

LABEL_8:
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
LABEL_9:
  sub_10000BBC4(v16, v14, &qword_100841F68, &unk_1006DEE10);
  v30 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v14, &qword_100841F68, &unk_1006DEE10);
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v31 + 8))(v14, v30);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v6 + 8))(v9, v35);
    AnyCodable.value.getter();
    (*(v36 + 8))(v5, v37);
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v32 = v38;
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *v32 = xmmword_1006BF650;
  }

  return result;
}

uint64_t sub_1003765A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = a4;
  v39 = a1;
  v40 = a2;
  v4 = type metadata accessor for AnyCodable();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ISO18013IssuerSignedItem();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for ISO18013KnownNamespaces();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = v24;
  type metadata accessor for ISO18013_5_1_ElementIdentifier();
  sub_10037A130(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v20 + 8))(v23, v19);
  if (!*(v25 + 16))
  {

    goto LABEL_7;
  }

  v26 = sub_10003ADCC(v46, *(&v46 + 1));
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v29 = *(*(v25 + 56) + 8 * v26);

  if (v29)
  {
    __chkstk_darwin(v30);
    v31 = v40;
    *(&v39 - 2) = v39;
    sub_100161F54(v31, v29, v18);

    goto LABEL_9;
  }

LABEL_8:
  v32 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
LABEL_9:
  sub_10000BBC4(v18, v16, &qword_100841F68, &unk_1006DEE10);
  v33 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v16, 1, v33) == 1)
  {
    sub_10000BE18(v18, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
    v46 = 0u;
    v47 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v34 + 8))(v16, v33);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v8 + 8))(v11, v41);
    AnyCodable.value.getter();
    (*(v42 + 8))(v7, v43);
    sub_10000BE18(v18, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v35 = v44(0);
  v36 = v45;
  v37 = swift_dynamicCast();
  return (*(*(v35 - 8) + 56))(v36, v37 ^ 1u, 1, v35);
}

uint64_t sub_100376B38(uint64_t a1)
{
  v33 = a1;
  v1 = type metadata accessor for AnyCodable();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  sub_10037A130(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v17 + 8))(v20, v16);
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_10003ADCC(v37, *(&v37 + 1));
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + 8 * v23);

  if (v26)
  {
    __chkstk_darwin(v27);
    *(&v32 - 2) = v33;
    sub_100161F54(sub_10037A2F8, v26, v15);

    goto LABEL_9;
  }

LABEL_8:
  v28 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_9:
  sub_10000BBC4(v15, v13, &qword_100841F68, &unk_1006DEE10);
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v30 + 8))(v13, v29);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v8, v34);
    AnyCodable.value.getter();
    (*(v35 + 8))(v4, v36);
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  if (swift_dynamicCast())
  {
    return v39;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003770A0(uint64_t a1)
{
  v35 = a1;
  v1 = type metadata accessor for AnyCodable();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v17 + 8))(v20, v16);
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_10003ADCC(v39, *(&v39 + 1));
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + 8 * v23);

  if (v26)
  {
    __chkstk_darwin(v27);
    *(&v34 - 2) = v35;
    sub_100161F54(sub_10037A2DC, v26, v15);

    goto LABEL_9;
  }

LABEL_8:
  v28 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_9:
  sub_10000BBC4(v15, v13, &qword_100841F68, &unk_1006DEE10);
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v30 + 8))(v13, v29);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v8, v36);
    AnyCodable.value.getter();
    (*(v37 + 8))(v4, v38);
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v31 = swift_dynamicCast();
  v32 = v41;
  if (!v31)
  {
    return 0;
  }

  return v32;
}

double sub_10037760C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a1;
  v38 = a2;
  v2 = type metadata accessor for AnyCodable();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = type metadata accessor for ISO18013KnownNamespaces();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  sub_10037A130(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v18 + 8))(v21, v17);
  if (!*(v23 + 16))
  {

    goto LABEL_7;
  }

  v24 = sub_10003ADCC(v39, *(&v39 + 1));
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

  if (v27)
  {
    __chkstk_darwin(v28);
    *(&v34 - 2) = v34;
    sub_100161F54(sub_10037A0CC, v27, v16);

    goto LABEL_9;
  }

LABEL_8:
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
LABEL_9:
  sub_10000BBC4(v16, v14, &qword_100841F68, &unk_1006DEE10);
  v30 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v14, &qword_100841F68, &unk_1006DEE10);
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v31 + 8))(v14, v30);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v6 + 8))(v9, v35);
    AnyCodable.value.getter();
    (*(v36 + 8))(v5, v37);
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v32 = v38;
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *v32 = xmmword_1006BF650;
  }

  return result;
}

uint64_t sub_100377B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v40 = a2;
  v2 = type metadata accessor for AnyCodable();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = type metadata accessor for ISO18013KnownNamespaces();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v18 + 8))(v21, v17);
  if (!*(v23 + 16))
  {

    goto LABEL_7;
  }

  v24 = sub_10003ADCC(v41, *(&v41 + 1));
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

  if (v27)
  {
    __chkstk_darwin(v28);
    *(&v36 - 2) = v36;
    sub_100161F54(sub_10037A2DC, v27, v16);

    goto LABEL_9;
  }

LABEL_8:
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
LABEL_9:
  sub_10000BBC4(v16, v14, &qword_100841F68, &unk_1006DEE10);
  v30 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v14, &qword_100841F68, &unk_1006DEE10);
    v41 = 0u;
    v42 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v31 + 8))(v14, v30);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v6 + 8))(v9, v37);
    AnyCodable.value.getter();
    (*(v38 + 8))(v5, v39);
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v32 = type metadata accessor for Date();
  v33 = v40;
  v34 = swift_dynamicCast();
  return (*(*(v32 - 8) + 56))(v33, v34 ^ 1u, 1, v32);
}

uint64_t sub_100378120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v40 = a2;
  v2 = type metadata accessor for AnyCodable();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = type metadata accessor for ISO18013KnownNamespaces();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v18 + 8))(v21, v17);
  if (!*(v23 + 16))
  {

    goto LABEL_7;
  }

  v24 = sub_10003ADCC(v41, *(&v41 + 1));
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

  if (v27)
  {
    __chkstk_darwin(v28);
    *(&v36 - 2) = v36;
    sub_100161F54(sub_10037A2DC, v27, v16);

    goto LABEL_9;
  }

LABEL_8:
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
LABEL_9:
  sub_10000BBC4(v16, v14, &qword_100841F68, &unk_1006DEE10);
  v30 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v14, &qword_100841F68, &unk_1006DEE10);
    v41 = 0u;
    v42 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v31 + 8))(v14, v30);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v6 + 8))(v9, v37);
    AnyCodable.value.getter();
    (*(v38 + 8))(v5, v39);
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v32 = type metadata accessor for ISO23220.BirthDate();
  v33 = v40;
  v34 = swift_dynamicCast();
  return (*(*(v32 - 8) + 56))(v33, v34 ^ 1u, 1, v32);
}

uint64_t sub_1003786C4(uint64_t a1)
{
  v33 = a1;
  v1 = type metadata accessor for AnyCodable();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = type metadata accessor for ISO18013KnownNamespaces();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v17 + 8))(v20, v16);
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v23 = sub_10003ADCC(v37, *(&v37 + 1));
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v26 = *(*(v22 + 56) + 8 * v23);

  if (v26)
  {
    __chkstk_darwin(v27);
    *(&v32 - 2) = v33;
    sub_100161F54(sub_10037A2DC, v26, v15);

    goto LABEL_9;
  }

LABEL_8:
  v28 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
LABEL_9:
  sub_10000BBC4(v15, v13, &qword_100841F68, &unk_1006DEE10);
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v13, &qword_100841F68, &unk_1006DEE10);
    v37 = 0u;
    v38 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v30 + 8))(v13, v29);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v5 + 8))(v8, v34);
    AnyCodable.value.getter();
    (*(v35 + 8))(v4, v36);
    sub_10000BE18(v15, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  if (swift_dynamicCast())
  {
    return v39;
  }

  else
  {
    return 0;
  }
}

double sub_100378C2C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a1;
  v38 = a2;
  v2 = type metadata accessor for AnyCodable();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ISO18013IssuerSignedItem();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&qword_100841F68, &unk_1006DEE10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = type metadata accessor for ISO18013KnownNamespaces();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  type metadata accessor for ISO23220_1_ElementIdentifier();
  sub_10037A130(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
  dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
  sub_10037A130(&qword_100841F78, &type metadata accessor for ISO18013KnownNamespaces);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v18 + 8))(v21, v17);
  if (!*(v23 + 16))
  {

    goto LABEL_7;
  }

  v24 = sub_10003ADCC(v39, *(&v39 + 1));
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

  if (v27)
  {
    __chkstk_darwin(v28);
    *(&v34 - 2) = v34;
    sub_100161F54(sub_10037A178, v27, v16);

    goto LABEL_9;
  }

LABEL_8:
  v29 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
LABEL_9:
  sub_10000BBC4(v16, v14, &qword_100841F68, &unk_1006DEE10);
  v30 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
    sub_10000BE18(v14, &qword_100841F68, &unk_1006DEE10);
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    CBOREncodedCBOR.value.getter();
    (*(v31 + 8))(v14, v30);
    ISO18013IssuerSignedItem.elementValue.getter();
    (*(v6 + 8))(v9, v35);
    AnyCodable.value.getter();
    (*(v36 + 8))(v5, v37);
    sub_10000BE18(v16, &qword_100841F68, &unk_1006DEE10);
  }

  sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
  v32 = v38;
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *v32 = xmmword_1006BF650;
  }

  return result;
}

uint64_t sub_10037919C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000BB78(v0 + 4);
  sub_10000BB78(v0 + 9);

  return swift_deallocClassInstance();
}

uint64_t sub_100379208(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v20[0] = a6;
  v20[1] = a2;
  v9 = type metadata accessor for ISO18013IssuerSignedItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_10083C040, &qword_1006DA538);
  CBOREncodedCBOR.value.getter();
  v14 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  a3(0);
  sub_10037A130(a4, a5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14 == v20[2] && v16 == v20[3])
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t sub_10037939C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_10037A130(&qword_1008336E0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10037957C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10037957C(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_10037A130(&qword_1008336E0, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10037957C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10037A130(&qword_1008336E0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10037965C(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013Response.Document();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  __chkstk_darwin(v5);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale.Region();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  __chkstk_darwin(v11);
  v70 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ISO18013Response.IssuerSigned();
  v69 = *(v71 - 8);
  v14 = *(v69 + 64);
  __chkstk_darwin(v71);
  v68 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ISO18013KnownDocTypes();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v67 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v74 = a1;
  v23 = ISO18013Response.Document.docType.getter();
  v25 = v24;
  v26 = v17[13];
  v26(v22, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v16);
  v27 = ISO18013KnownDocTypes.rawValue.getter();
  v29 = v28;
  v30 = v17[1];
  v31 = v22;
  v32 = v23;
  v30(v31, v16);
  if (v27 == v23 && v29 == v25)
  {

LABEL_5:

    v34 = v68;
    ISO18013Response.Document.issuerSigned.getter();
    v36 = v72;
    v35 = v73;
    v37 = v70;
    (*(v72 + 104))(v70, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v73);
    v38 = sub_10037448C(v37);
    (*(v36 + 8))(v37, v35);
    (*(v69 + 8))(v34, v71);
    return v38;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_5;
  }

  v40 = v67;
  v26(v67, enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:), v16);
  v41 = ISO18013KnownDocTypes.rawValue.getter();
  v43 = v42;
  v30(v40, v16);
  if (v41 == v32 && v43 == v25)
  {

LABEL_11:
    v45 = v64;
    Locale.Region.init(stringLiteral:)();
    v38 = Locale.Region.identifier.getter();
    (*(v65 + 8))(v45, v66);
    return v38;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    goto LABEL_11;
  }

  v46 = v61;
  defaultLogger()();
  v48 = v58;
  v47 = v59;
  v49 = v60;
  (*(v59 + 16))(v58, v74, v60);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v75 = v53;
    *v52 = 136315138;
    v54 = ISO18013Response.Document.docType.getter();
    v56 = v55;
    (*(v47 + 8))(v48, v49);
    v57 = sub_100141FE4(v54, v56, &v75);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v50, v51, "ISO18013ResponseValidator could not get issuing jurisdiction for %s", v52, 0xCu);
    sub_10000BB78(v53);
  }

  else
  {

    (*(v47 + 8))(v48, v49);
  }

  (*(v62 + 8))(v46, v63);
  return 0;
}

uint64_t sub_100379D14()
{
  v1 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);

  sub_10000B90C(*(v0 + 3), *(v0 + 4));
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(&v0[v3], 1, v6))
  {
    (*(v7 + 8))(&v0[v3], v6);
  }

  v8 = *&v0[v4 + 8];
  if (v8 >> 60 != 15)
  {
    sub_10000B90C(*&v0[v4], v8);
  }

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100379E64(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_10037420C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100379FAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100379FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10037A130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10037A1DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100027B9C;

  return sub_10036F09C(a1, a2, v6, v7, v9, v8);
}

char *sub_10037A314(uint64_t a1, int a2)
{
  v186 = a2;
  v181 = type metadata accessor for MobileDocumentElement();
  v180 = *(v181 - 8);
  v3 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for MobileDocumentType();
  v183 = *(v184 - 8);
  v5 = *(v183 + 64);
  __chkstk_darwin(v184);
  v182 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v191 = *(v7 - 8);
  v192 = v7;
  v8 = *(v191 + 64);
  __chkstk_darwin(v7);
  v193 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale.Region();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v197 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v179 - v15;
  v17 = type metadata accessor for ISO18013KnownNamespaces();
  v189 = *(v17 - 8);
  v190 = v17;
  v18 = *(v189 + 64);
  __chkstk_darwin(v17);
  v188 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MobileDocumentElement.Element();
  v194 = *(v20 - 8);
  v195 = v20;
  v21 = *(v194 + 64);
  v22 = __chkstk_darwin(v20);
  v185 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v187 = &v179 - v25;
  __chkstk_darwin(v24);
  v27 = (&v179 - v26);
  v28 = type metadata accessor for MobileDocumentType.Identifier();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentType.storage.getter();
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 == enum case for MobileDocumentType.Identifier.nationalIDCard(_:))
  {
    (*(v29 + 96))(v32, v28);
    (*(v11 + 16))(v16, v32, v10);
    v34 = v197;
    Locale.Region.init(stringLiteral:)();
    sub_10037D8FC(&qword_100834780, &type metadata accessor for Locale.Region);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v37 = (v11 + 8);
    v36 = *(v11 + 8);
    v36(v34, v10);
    v36(v16, v10);
    v38 = v32;
    if ((v35 & 1) == 0)
    {
      v65 = v10;
      v66 = v197;
      (*(v11 + 32))(v197, v38, v65);
      v198 = 0;
      v199 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v67._countAndFlagsBits = 0xD000000000000026;
      v67._object = 0x80000001007110A0;
      String.append(_:)(v67);
      v68._countAndFlagsBits = Locale.Region.identifier.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 0xD000000000000013;
      v69._object = 0x80000001007110D0;
      String.append(_:)(v69);
      v195 = v199;
      v196 = v198;
      (*(v191 + 104))(v193, enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:), v192);
      v52 = v65;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10037D8FC(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v36(v66, v65);
      return v52;
    }

    v39 = v36;
    v40 = v187;
    v41 = v196;
    MobileDocumentElement.storage.getter();
    v43 = v194;
    v42 = v195;
    v44 = (*(v194 + 88))(v40, v195);
    if (v44 == enum case for MobileDocumentElement.Element.ageAtLeast(_:))
    {
      (*(v43 + 96))(v40, v42);
      v45 = v38;
      v46 = *v40;
      sub_100007224(&qword_10083A9B0, &unk_1006DFA50);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1006BF520;
      v48 = v188;
      static ISO23220_1_ElementIdentifier.namespaceIdentifier.getter();
      v49 = ISO18013KnownNamespaces.rawValue.getter();
      v51 = v50;
      (*(v189 + 8))(v48, v190);
      *(v47 + 32) = v49;
      *(v47 + 40) = v51;
      v52 = v47;
      *(v47 + 48) = static ISO23220_1_ElementIdentifier.ageOver(nn:)();
      *(v47 + 56) = v53;
      v39(v45, v10);
      return v52;
    }

    v79 = v39;
    v185 = v37;
    if (v44 == enum case for MobileDocumentElement.Element.givenName(_:) || v44 == enum case for MobileDocumentElement.Element.familyName(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v84 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
      v80[7] = v84;
      v80[8] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
      v97 = sub_100032DBC(v80 + 4);
      v98 = &enum case for ISO23220_1_Japan_ElementIdentifier.fullName(_:);
    }

    else
    {
      if (v44 == enum case for MobileDocumentElement.Element.sex(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        if (v186)
        {
          v80 = swift_allocObject();
          *(v80 + 1) = xmmword_1006BF740;
          v81 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v80[7] = v81;
          v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
          v82 = sub_100032DBC(v80 + 4);
          (*(*(v81 - 8) + 104))(v82, enum case for ISO23220_1_ElementIdentifier.sex(_:), v81);
          v83 = v80 + 9;
          v84 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
          v80[12] = v84;
          v80[13] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
          v85 = &enum case for ISO23220_1_Japan_ElementIdentifier.sex(_:);
        }

        else
        {
          v80 = swift_allocObject();
          *(v80 + 1) = xmmword_1006BF520;
          v83 = v80 + 4;
          v84 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v80[7] = v84;
          v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
          v85 = &enum case for ISO23220_1_ElementIdentifier.sex(_:);
        }

LABEL_45:
        v97 = sub_100032DBC(v83);
        v99 = *v85;
        goto LABEL_46;
      }

      if (v44 == enum case for MobileDocumentElement.Element.portrait(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF520;
        v84 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
        v80[7] = v84;
        v80[8] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
        v97 = sub_100032DBC(v80 + 4);
        v98 = &enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:);
      }

      else if (v44 == enum case for MobileDocumentElement.Element.age(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF520;
        v84 = type metadata accessor for ISO23220_1_ElementIdentifier();
        v80[7] = v84;
        v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
        v97 = sub_100032DBC(v80 + 4);
        v98 = &enum case for ISO23220_1_ElementIdentifier.ageInYears(_:);
      }

      else
      {
        if (v44 == enum case for MobileDocumentElement.Element.dateOfBirth(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          if (v186)
          {
            v80 = swift_allocObject();
            *(v80 + 1) = xmmword_1006BF740;
            v123 = type metadata accessor for ISO23220_1_ElementIdentifier();
            v80[7] = v123;
            v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
            v124 = sub_100032DBC(v80 + 4);
            (*(*(v123 - 8) + 104))(v124, enum case for ISO23220_1_ElementIdentifier.birthDate(_:), v123);
            v83 = v80 + 9;
            v84 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
            v80[12] = v84;
            v80[13] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
            v85 = &enum case for ISO23220_1_Japan_ElementIdentifier.birthDate(_:);
          }

          else
          {
            v80 = swift_allocObject();
            *(v80 + 1) = xmmword_1006BF520;
            v83 = v80 + 4;
            v84 = type metadata accessor for ISO23220_1_ElementIdentifier();
            v80[7] = v84;
            v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
            v85 = &enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
          }

          goto LABEL_45;
        }

        if (v44 == enum case for MobileDocumentElement.Element.address(_:))
        {
          if ((v186 & 1) == 0)
          {
            v80 = _swiftEmptyArrayStorage;
            goto LABEL_48;
          }

          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v80 = swift_allocObject();
          *(v80 + 1) = xmmword_1006BF740;
          v143 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
          v80[7] = v143;
          v144 = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
          v80[8] = v144;
          v145 = sub_100032DBC(v80 + 4);
          v146 = *(*(v143 - 8) + 104);
          v146(v145, enum case for ISO23220_1_Japan_ElementIdentifier.localGovCode(_:), v143);
          v80[12] = v143;
          v80[13] = v144;
          v147 = sub_100032DBC(v80 + 9);
          v146(v147, enum case for ISO23220_1_Japan_ElementIdentifier.residentAddress(_:), v143);
          v79 = v39;
LABEL_47:

LABEL_48:
          v79(v38, v10);
          goto LABEL_64;
        }

        v80 = _swiftEmptyArrayStorage;
        if (v44 == enum case for MobileDocumentElement.Element.height(_:) || v44 == enum case for MobileDocumentElement.Element.weight(_:) || v44 == enum case for MobileDocumentElement.Element.eyeColor(_:) || v44 == enum case for MobileDocumentElement.Element.hairColor(_:) || v44 == enum case for MobileDocumentElement.Element.organDonorStatus(_:) || v44 == enum case for MobileDocumentElement.Element.veteranStatus(_:) || v44 == enum case for MobileDocumentElement.Element.issuingAuthority(_:) || v44 == enum case for MobileDocumentElement.Element.drivingPrivileges(_:) || v44 == enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:))
        {
          goto LABEL_48;
        }

        if (v44 != enum case for MobileDocumentElement.Element.documentNumber(_:))
        {
          if (v44 != enum case for MobileDocumentElement.Element.documentIssueDate(_:) && v44 != enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
          {
            (*(v43 + 8))(v40, v42);
          }

          goto LABEL_48;
        }

        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF520;
        v84 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
        v80[7] = v84;
        v80[8] = sub_10037D8FC(&qword_10083A9C8, &type metadata accessor for ISO23220_1_Japan_ElementIdentifier);
        v97 = sub_100032DBC(v80 + 4);
        v98 = &enum case for ISO23220_1_Japan_ElementIdentifier.individualNumber(_:);
      }
    }

    v99 = *v98;
LABEL_46:
    (*(*(v84 - 8) + 104))(v97, v99, v84);
    goto LABEL_47;
  }

  if (v33 == enum case for MobileDocumentType.Identifier.driversLicense(_:))
  {
    v41 = v196;
    MobileDocumentElement.storage.getter();
    v55 = v194;
    v54 = v195;
    v56 = (*(v194 + 88))(v27, v195);
    if (v56 == enum case for MobileDocumentElement.Element.ageAtLeast(_:))
    {
      (*(v55 + 96))(v27, v54);
      v57 = *v27;
      sub_100007224(&qword_10083A9B0, &unk_1006DFA50);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1006BF520;
      v59 = v188;
      static ISO18013_5_1_ElementIdentifier.namespaceIdentifier.getter();
      v60 = ISO18013KnownNamespaces.rawValue.getter();
      v62 = v61;
      (*(v189 + 8))(v59, v190);
      *(v58 + 32) = v60;
      *(v58 + 40) = v62;
      v52 = v58;
      v63 = static ISO18013_5_1_ElementIdentifier.ageOver(nn:)();
LABEL_12:
      *(v58 + 48) = v63;
      *(v58 + 56) = v64;
      return v52;
    }

    if (v56 == enum case for MobileDocumentElement.Element.givenName(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      if (v186)
      {
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006D8C30;
        v86 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v80[7] = v86;
        v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
        v87 = sub_100032DBC(v80 + 4);
        (*(*(v86 - 8) + 104))(v87, enum case for ISO18013_5_1_ElementIdentifier.givenName(_:), v86);
        v88 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v80[12] = v88;
        v89 = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
        v80[13] = v89;
        v90 = sub_100032DBC(v80 + 9);
        v91 = *(*(v88 - 8) + 104);
        v91(v90, enum case for ISO18013_AAMVA_ElementIdentifier.givenNameTruncation(_:), v88);
        v80[17] = v88;
        v80[18] = v89;
        v92 = sub_100032DBC(v80 + 14);
        v91(v92, enum case for ISO18013_AAMVA_ElementIdentifier.akaGivenName(_:), v88);
        v80[22] = v88;
        v80[23] = v89;
        v93 = sub_100032DBC(v80 + 19);
        v91(v93, enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:), v88);
        v80[27] = v88;
        v80[28] = v89;
        v94 = sub_100032DBC(v80 + 24);
        v95 = &enum case for ISO18013_AAMVA_ElementIdentifier.akaSuffix(_:);
LABEL_29:
        v91(v94, *v95, v88);
LABEL_63:

        goto LABEL_64;
      }

      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF740;
      v110 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v110;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v111 = sub_100032DBC(v80 + 4);
      (*(*(v110 - 8) + 104))(v111, enum case for ISO18013_5_1_ElementIdentifier.givenName(_:), v110);
      v112 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
      v80[12] = v112;
      v80[13] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 9);
      v114 = &enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:);
      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.familyName(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      if (v186)
      {
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BFF90;
        v106 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v80[7] = v106;
        v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
        v107 = sub_100032DBC(v80 + 4);
        (*(*(v106 - 8) + 104))(v107, enum case for ISO18013_5_1_ElementIdentifier.familyName(_:), v106);
        v88 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v80[12] = v88;
        v108 = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
        v80[13] = v108;
        v109 = sub_100032DBC(v80 + 9);
        v91 = *(*(v88 - 8) + 104);
        v91(v109, enum case for ISO18013_AAMVA_ElementIdentifier.familyNameTruncation(_:), v88);
        v80[17] = v88;
        v80[18] = v108;
        v94 = sub_100032DBC(v80 + 14);
        v95 = &enum case for ISO18013_AAMVA_ElementIdentifier.akaFamilyName(_:);
        goto LABEL_29;
      }

      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v112 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v112;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 4);
      v114 = &enum case for ISO18013_5_1_ElementIdentifier.familyName(_:);
LABEL_62:
      (*(*(v112 - 8) + 104))(v113, *v114, v112);
      goto LABEL_63;
    }

    if (v56 == enum case for MobileDocumentElement.Element.sex(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF740;
      v118 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v118;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v119 = sub_100032DBC(v80 + 4);
      (*(*(v118 - 8) + 104))(v119, enum case for ISO18013_5_1_ElementIdentifier.sex(_:), v118);
      v112 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
      v80[12] = v112;
      v80[13] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 9);
      v114 = &enum case for ISO18013_AAMVA_ElementIdentifier.sex(_:);
      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.portrait(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v112 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v112;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 4);
      v114 = &enum case for ISO18013_5_1_ElementIdentifier.portrait(_:);
      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.age(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v112 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v112;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 4);
      v114 = &enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:);
      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.dateOfBirth(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v112 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v112;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 4);
      v114 = &enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:);
      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.address(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006D8C30;
      v88 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v88;
      v148 = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v80[8] = v148;
      v149 = sub_100032DBC(v80 + 4);
      v91 = *(*(v88 - 8) + 104);
      v91(v149, enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:), v88);
      v80[12] = v88;
      v80[13] = v148;
      v150 = sub_100032DBC(v80 + 9);
      v91(v150, enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:), v88);
      v80[17] = v88;
      v80[18] = v148;
      v151 = sub_100032DBC(v80 + 14);
      v91(v151, enum case for ISO18013_5_1_ElementIdentifier.residentState(_:), v88);
      v80[22] = v88;
      v80[23] = v148;
      v152 = sub_100032DBC(v80 + 19);
      v91(v152, enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:), v88);
      v80[27] = v88;
      v80[28] = v148;
      v94 = sub_100032DBC(v80 + 24);
      v95 = &enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:);
      goto LABEL_29;
    }

    if (v56 == enum case for MobileDocumentElement.Element.height(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v112 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v112;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 4);
      v114 = &enum case for ISO18013_5_1_ElementIdentifier.height(_:);
      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.weight(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      if (v186)
      {
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF740;
        v161 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v80[7] = v161;
        v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
        v162 = sub_100032DBC(v80 + 4);
        (*(*(v161 - 8) + 104))(v162, enum case for ISO18013_5_1_ElementIdentifier.weight(_:), v161);
        v112 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v80[12] = v112;
        v80[13] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
        v113 = sub_100032DBC(v80 + 9);
        v114 = &enum case for ISO18013_AAMVA_ElementIdentifier.weightRange(_:);
      }

      else
      {
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF520;
        v112 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v80[7] = v112;
        v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
        v113 = sub_100032DBC(v80 + 4);
        v114 = &enum case for ISO18013_5_1_ElementIdentifier.weight(_:);
      }

      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.eyeColor(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v112 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v112;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 4);
      v114 = &enum case for ISO18013_5_1_ElementIdentifier.eyeColor(_:);
      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.hairColor(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v112 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
      v80[7] = v112;
      v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
      v113 = sub_100032DBC(v80 + 4);
      v114 = &enum case for ISO18013_5_1_ElementIdentifier.hairColor(_:);
      goto LABEL_62;
    }

    if (v56 == enum case for MobileDocumentElement.Element.organDonorStatus(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v163 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
      v80[7] = v163;
      v80[8] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
      v164 = sub_100032DBC(v80 + 4);
      v165 = &enum case for ISO18013_AAMVA_ElementIdentifier.organDonorStatus(_:);
    }

    else if (v56 == enum case for MobileDocumentElement.Element.veteranStatus(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006BF520;
      v163 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
      v80[7] = v163;
      v80[8] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
      v164 = sub_100032DBC(v80 + 4);
      v165 = &enum case for ISO18013_AAMVA_ElementIdentifier.veteranStatus(_:);
    }

    else
    {
      if (v56 == enum case for MobileDocumentElement.Element.issuingAuthority(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        if (v186)
        {
          v80 = swift_allocObject();
          *(v80 + 1) = xmmword_1006BFE10;
          v166 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
          v80[7] = v166;
          v167 = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
          v80[8] = v167;
          v168 = sub_100032DBC(v80 + 4);
          v169 = *(*(v166 - 8) + 104);
          v169(v168, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v166);
          v80[12] = v166;
          v80[13] = v167;
          v170 = sub_100032DBC(v80 + 9);
          v169(v170, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v166);
          v80[17] = v166;
          v80[18] = v167;
          v171 = sub_100032DBC(v80 + 14);
          v169(v171, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v166);
          v80[22] = v166;
          v80[23] = v167;
          v172 = sub_100032DBC(v80 + 19);
          v173 = &enum case for ISO18013_5_1_ElementIdentifier.unDistinguishingSign(_:);
        }

        else
        {
          v80 = swift_allocObject();
          *(v80 + 1) = xmmword_1006BFF90;
          v166 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
          v80[7] = v166;
          v176 = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
          v80[8] = v176;
          v177 = sub_100032DBC(v80 + 4);
          v169 = *(*(v166 - 8) + 104);
          v169(v177, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v166);
          v80[12] = v166;
          v80[13] = v176;
          v178 = sub_100032DBC(v80 + 9);
          v169(v178, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v166);
          v80[17] = v166;
          v80[18] = v176;
          v172 = sub_100032DBC(v80 + 14);
          v173 = &enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:);
        }

        v169(v172, *v173, v166);
        goto LABEL_127;
      }

      if (v56 == enum case for MobileDocumentElement.Element.drivingPrivileges(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF740;
        v174 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v80[7] = v174;
        v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
        v175 = sub_100032DBC(v80 + 4);
        (*(*(v174 - 8) + 104))(v175, enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:), v174);
        v163 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v80[12] = v163;
        v80[13] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
        v164 = sub_100032DBC(v80 + 9);
        v165 = &enum case for ISO18013_AAMVA_ElementIdentifier.domesticDrivingPrivileges(_:);
      }

      else if (v56 == enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF520;
        v163 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
        v80[7] = v163;
        v80[8] = sub_10037D8FC(&qword_100841F88, &type metadata accessor for ISO18013_AAMVA_ElementIdentifier);
        v164 = sub_100032DBC(v80 + 4);
        v165 = &enum case for ISO18013_AAMVA_ElementIdentifier.dhsCompliance(_:);
      }

      else if (v56 == enum case for MobileDocumentElement.Element.documentNumber(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF520;
        v163 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v80[7] = v163;
        v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
        v164 = sub_100032DBC(v80 + 4);
        v165 = &enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:);
      }

      else if (v56 == enum case for MobileDocumentElement.Element.documentIssueDate(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF520;
        v163 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v80[7] = v163;
        v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
        v164 = sub_100032DBC(v80 + 4);
        v165 = &enum case for ISO18013_5_1_ElementIdentifier.issueDate(_:);
      }

      else
      {
        if (v56 != enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
        {
          (*(v194 + 8))(v27, v195);
          v80 = _swiftEmptyArrayStorage;
          goto LABEL_128;
        }

        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BF520;
        v163 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
        v80[7] = v163;
        v80[8] = sub_10037D8FC(&qword_100841F70, &type metadata accessor for ISO18013_5_1_ElementIdentifier);
        v164 = sub_100032DBC(v80 + 4);
        v165 = &enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:);
      }
    }

    (*(*(v163 - 8) + 104))(v164, *v165, v163);
LABEL_127:

LABEL_128:
    v41 = v196;
    goto LABEL_64;
  }

  if (v33 != enum case for MobileDocumentType.Identifier.photoID(_:))
  {
    v198 = 0;
    v199 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v198 = 0xD00000000000001CLL;
    v199 = 0x8000000100710FF0;
    (*(v183 + 16))(v182, a1, v184);
    v96._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v96);

    v52 = v199;
    v197 = v198;
    (*(v191 + 104))(v193, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v192);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10037D8FC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v29 + 8))(v32, v28);
    return v52;
  }

  v70 = v185;
  v41 = v196;
  MobileDocumentElement.storage.getter();
  v72 = v194;
  v71 = v195;
  v73 = (*(v194 + 88))(v70, v195);
  if (v73 == enum case for MobileDocumentElement.Element.ageAtLeast(_:))
  {
    (*(v72 + 96))(v70, v71);
    v74 = *v70;
    sub_100007224(&qword_10083A9B0, &unk_1006DFA50);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1006BF520;
    v75 = v188;
    static ISO23220_1_ElementIdentifier.namespaceIdentifier.getter();
    v76 = ISO18013KnownNamespaces.rawValue.getter();
    v78 = v77;
    (*(v189 + 8))(v75, v190);
    *(v58 + 32) = v76;
    *(v58 + 40) = v78;
    v52 = v58;
    v63 = static ISO23220_1_ElementIdentifier.ageOver(nn:)();
    goto LABEL_12;
  }

  if (v73 == enum case for MobileDocumentElement.Element.givenName(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v80 = swift_allocObject();
    *(v80 + 1) = xmmword_1006BF740;
    v100 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v80[7] = v100;
    v101 = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
    v80[8] = v101;
    v102 = sub_100032DBC(v80 + 4);
    v103 = *(*(v100 - 8) + 104);
    v103(v102, enum case for ISO23220_1_ElementIdentifier.givenName(_:), v100);
    v80[12] = v100;
    v80[13] = v101;
    v104 = sub_100032DBC(v80 + 9);
    v105 = &enum case for ISO23220_1_ElementIdentifier.givenNameLatin1(_:);
    goto LABEL_33;
  }

  if (v73 == enum case for MobileDocumentElement.Element.familyName(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v80 = swift_allocObject();
    *(v80 + 1) = xmmword_1006BF740;
    v100 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v80[7] = v100;
    v115 = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
    v80[8] = v115;
    v116 = sub_100032DBC(v80 + 4);
    v103 = *(*(v100 - 8) + 104);
    v103(v116, enum case for ISO23220_1_ElementIdentifier.familyName(_:), v100);
    v80[12] = v100;
    v80[13] = v115;
    v104 = sub_100032DBC(v80 + 9);
    v105 = &enum case for ISO23220_1_ElementIdentifier.familyNameLatin1(_:);
    goto LABEL_33;
  }

  if (v73 == enum case for MobileDocumentElement.Element.sex(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v80 = swift_allocObject();
    *(v80 + 1) = xmmword_1006BF520;
    v120 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v80[7] = v120;
    v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
    v121 = sub_100032DBC(v80 + 4);
    v122 = &enum case for ISO23220_1_ElementIdentifier.sex(_:);
    goto LABEL_78;
  }

  if (v73 == enum case for MobileDocumentElement.Element.portrait(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v80 = swift_allocObject();
    *(v80 + 1) = xmmword_1006BF520;
    v120 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v80[7] = v120;
    v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
    v121 = sub_100032DBC(v80 + 4);
    v122 = &enum case for ISO23220_1_ElementIdentifier.portrait(_:);
    goto LABEL_78;
  }

  if (v73 == enum case for MobileDocumentElement.Element.age(_:))
  {
    sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
    v80 = swift_allocObject();
    *(v80 + 1) = xmmword_1006BF520;
    v120 = type metadata accessor for ISO23220_1_ElementIdentifier();
    v80[7] = v120;
    v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
    v121 = sub_100032DBC(v80 + 4);
    v122 = &enum case for ISO23220_1_ElementIdentifier.ageInYears(_:);
    goto LABEL_78;
  }

  if (v73 != enum case for MobileDocumentElement.Element.dateOfBirth(_:))
  {
    if (v73 == enum case for MobileDocumentElement.Element.address(_:))
    {
      sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
      v80 = swift_allocObject();
      *(v80 + 1) = xmmword_1006D8C30;
      v100 = type metadata accessor for ISO23220_1_ElementIdentifier();
      v80[7] = v100;
      v153 = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
      v80[8] = v153;
      v154 = sub_100032DBC(v80 + 4);
      v103 = *(*(v100 - 8) + 104);
      v103(v154, enum case for ISO23220_1_ElementIdentifier.residentAddress(_:), v100);
      v80[12] = v100;
      v80[13] = v153;
      v155 = sub_100032DBC(v80 + 9);
      v103(v155, enum case for ISO23220_1_ElementIdentifier.residentCity(_:), v100);
      v80[17] = v100;
      v80[18] = v153;
      v156 = sub_100032DBC(v80 + 14);
      v103(v156, enum case for ISO23220_1_ElementIdentifier.residentCityLatin1(_:), v100);
      v80[22] = v100;
      v80[23] = v153;
      v157 = sub_100032DBC(v80 + 19);
      v103(v157, enum case for ISO23220_1_ElementIdentifier.residentPostalCode(_:), v100);
      v80[27] = v100;
      v80[28] = v153;
      v104 = sub_100032DBC(v80 + 24);
      v105 = &enum case for ISO23220_1_ElementIdentifier.residentCountry(_:);
      goto LABEL_33;
    }

    v80 = _swiftEmptyArrayStorage;
    if (v73 != enum case for MobileDocumentElement.Element.height(_:) && v73 != enum case for MobileDocumentElement.Element.weight(_:) && v73 != enum case for MobileDocumentElement.Element.eyeColor(_:) && v73 != enum case for MobileDocumentElement.Element.hairColor(_:) && v73 != enum case for MobileDocumentElement.Element.organDonorStatus(_:) && v73 != enum case for MobileDocumentElement.Element.veteranStatus(_:))
    {
      if (v73 == enum case for MobileDocumentElement.Element.issuingAuthority(_:))
      {
        sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
        v80 = swift_allocObject();
        *(v80 + 1) = xmmword_1006BFF90;
        v100 = type metadata accessor for ISO23220_1_ElementIdentifier();
        v80[7] = v100;
        v158 = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
        v80[8] = v158;
        v159 = sub_100032DBC(v80 + 4);
        v103 = *(*(v100 - 8) + 104);
        v103(v159, enum case for ISO23220_1_ElementIdentifier.issuingAuthority(_:), v100);
        v80[12] = v100;
        v80[13] = v158;
        v160 = sub_100032DBC(v80 + 9);
        v103(v160, enum case for ISO23220_1_ElementIdentifier.issuingCountry(_:), v100);
        v80[17] = v100;
        v80[18] = v158;
        v104 = sub_100032DBC(v80 + 14);
        v105 = &enum case for ISO23220_1_ElementIdentifier.issuingSubdivision(_:);
LABEL_33:
        v103(v104, *v105, v100);
        v117 = v80[2];
        if (!v117)
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      }

      if (v73 != enum case for MobileDocumentElement.Element.drivingPrivileges(_:) && v73 != enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:))
      {
        if (v73 == enum case for MobileDocumentElement.Element.documentNumber(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v80 = swift_allocObject();
          *(v80 + 1) = xmmword_1006BF520;
          v120 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v80[7] = v120;
          v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
          v121 = sub_100032DBC(v80 + 4);
          v122 = &enum case for ISO23220_1_ElementIdentifier.documentNumber(_:);
        }

        else if (v73 == enum case for MobileDocumentElement.Element.documentIssueDate(_:))
        {
          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v80 = swift_allocObject();
          *(v80 + 1) = xmmword_1006BF520;
          v120 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v80[7] = v120;
          v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
          v121 = sub_100032DBC(v80 + 4);
          v122 = &enum case for ISO23220_1_ElementIdentifier.issueDate(_:);
        }

        else
        {
          if (v73 != enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
          {
            (*(v194 + 8))(v185, v195);
            goto LABEL_128;
          }

          sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
          v80 = swift_allocObject();
          *(v80 + 1) = xmmword_1006BF520;
          v120 = type metadata accessor for ISO23220_1_ElementIdentifier();
          v80[7] = v120;
          v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
          v121 = sub_100032DBC(v80 + 4);
          v122 = &enum case for ISO23220_1_ElementIdentifier.expiryDate(_:);
        }

        goto LABEL_78;
      }
    }

LABEL_64:
    v125 = v80[2];

    if (!v125)
    {

      v198 = 0;
      v199 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v198 = 0xD00000000000001ALL;
      v199 = 0x8000000100711080;
      (*(v180 + 16))(v179, v41, v181);
      v141._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v141);

      v52 = v199;
      (*(v191 + 104))(v193, enum case for DIPError.Code.documentReaderUnknownDocumentElement(_:), v192);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10037D8FC(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v52;
    }

    v117 = v80[2];
    if (v117)
    {
      goto LABEL_66;
    }

LABEL_79:

    return _swiftEmptyArrayStorage;
  }

  sub_100007224(&qword_10083A9B8, &qword_1006D8C50);
  v80 = swift_allocObject();
  *(v80 + 1) = xmmword_1006BF520;
  v120 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v80[7] = v120;
  v80[8] = sub_10037D8FC(&qword_10083A9C0, &type metadata accessor for ISO23220_1_ElementIdentifier);
  v121 = sub_100032DBC(v80 + 4);
  v122 = &enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
LABEL_78:
  (*(*(v120 - 8) + 104))(v121, *v122, v120);
  v117 = v80[2];
  if (!v117)
  {
    goto LABEL_79;
  }

LABEL_66:
  v206 = _swiftEmptyArrayStorage;
  sub_100172D8C(0, v117, 0);
  v52 = v206;
  v196 = v80;
  v126 = (v80 + 4);
  do
  {
    v197 = v52;
    sub_100020260(v126, &v198);
    sub_10000BA08(&v198, v200);
    swift_getDynamicType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v128 = *(AssociatedTypeWitness - 8);
    v129 = *(v128 + 64);
    __chkstk_darwin(AssociatedTypeWitness);
    v131 = &v179 - v130;
    dispatch thunk of static MobileDocumentElementIdentifier.namespaceIdentifier.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v132 = v201;
    sub_10000BA08(&v198, v200);
    v133 = *(v132 + 16);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v52 = v197;
    (*(v128 + 8))(v131, AssociatedTypeWitness);
    sub_10000BB78(&v198);
    v134 = v204;
    v135 = v205;
    v136 = v202;
    v137 = v203;
    v206 = v52;
    v139 = *(v52 + 2);
    v138 = *(v52 + 3);
    if (v139 >= v138 >> 1)
    {
      sub_100172D8C((v138 > 1), v139 + 1, 1);
      v52 = v206;
    }

    *(v52 + 2) = v139 + 1;
    v140 = &v52[32 * v139];
    *(v140 + 4) = v134;
    *(v140 + 5) = v135;
    *(v140 + 6) = v136;
    *(v140 + 7) = v137;
    v126 += 40;
    --v117;
  }

  while (v117);

  return v52;
}