uint64_t sub_1002A9EAC()
{
  v1[12] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9F6C, 0, 0);
}

uint64_t sub_1002A9F6C()
{
  sub_1002AA960(*(v0 + 96) + 24, v0 + 56);
  if (*(v0 + 80))
  {
    sub_10012D290((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v1);
    v3 = *(v2 + 16);
    v12 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_1002AA224;

    return v12(v1, v2);
  }

  else
  {
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    sub_10000BE18(v0 + 56, &qword_10083F158, &qword_1006DC608);
    (*(v8 + 104))(v7, enum case for DIPError.Code.biometricStoreUninitialized(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = *(v0 + 120);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1002AA224(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_1002AA3CC;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_1002AA358;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002AA358()
{
  v1 = v0[15];
  sub_10000BB78(v0 + 2);

  v2 = v0[1];
  v4 = v0[18];
  v3 = v0[19];

  return v2(v3, v4);
}

uint64_t sub_1002AA3CC()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002AA438()
{
  v1[12] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002AA4F8, 0, 0);
}

uint64_t sub_1002AA4F8()
{
  sub_1002AA960(*(v0 + 96) + 24, v0 + 56);
  if (*(v0 + 80))
  {
    sub_10012D290((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v1);
    v3 = *(v2 + 24);
    v12 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_1002AA7B8;

    return v12(v1, v2);
  }

  else
  {
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    sub_10000BE18(v0 + 56, &qword_10083F158, &qword_1006DC608);
    (*(v8 + 104))(v7, enum case for DIPError.Code.biometricStoreUninitialized(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = *(v0 + 120);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1002AA7B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_1002AD918;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_1002AD910;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002AA8EC()
{
  v1 = *(v0 + 16);

  sub_10000BE18(v0 + 24, &qword_10083F158, &qword_1006DC608);

  return swift_deallocClassInstance();
}

uint64_t sub_1002AA960(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083F158, &qword_1006DC608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1002AA9D0(char *a1, void *a2)
{
  v110 = a2;
  v115 = a1;
  v101 = type metadata accessor for DIPError.Code();
  v99 = *(v101 - 8);
  v2 = *(v99 + 64);
  __chkstk_darwin(v101);
  v102 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  v4 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v103 = &v89 - v5;
  v6 = type metadata accessor for SHA256();
  v106 = *(v6 - 8);
  v107 = v6;
  isa = v106[8].isa;
  __chkstk_darwin(v6);
  v104 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v108 = *(v9 - 8);
  v109 = v9;
  v10 = *(v108 + 64);
  __chkstk_darwin(v9);
  v105 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RFC8152SigStructure();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  __chkstk_darwin(v12);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v114 = *(v16 - 8);
  v17 = *(v114 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v89 - v21;
  v23 = sub_100007224(&qword_10083F170, &qword_1006DC630);
  v113 = *(v23 - 8);
  v24 = *(v113 + 64);
  __chkstk_darwin(v23);
  v26 = &v89 - v25;
  v27 = type metadata accessor for CBOREncoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = CBOREncoder.init()();
  type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  sub_1002ACECC(&qword_10083F178, &type metadata accessor for KeyAuthorizationCOSE_Sign1Payload);
  v31 = v117;
  v32 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v31)
  {
  }

  else
  {
    v96 = v23;
    v98 = v22;
    v95 = v20;
    v97 = v16;
    v117 = v30;
    v115 = v15;
    v116[0] = v32;
    v116[1] = v33;
    v34 = v33;
    v35 = *(v27 + 48);
    v36 = *(v27 + 52);
    v37 = v32;
    swift_allocObject();
    sub_10000B8B8(v37, v34);
    CBOREncoder.init()();
    sub_10000B960();
    sub_10000B9B4();
    CBOREncodedCBOR.init(value:tag:encoder:)();
    v93 = v37;
    v94 = v34;
    v38 = v96;
    v39 = CBOREncodedCBOR.dataValue.getter();
    v41 = v40;
    (*(v113 + 8))(v26, v38);
    v42 = v98;
    v43 = defaultLogger()();
    __chkstk_darwin(v43);
    Logger.cryptoParam(_:)();
    v44 = v114 + 8;
    v45 = *(v114 + 8);
    v46 = v97;
    v45(v42, v97);
    sub_10000B8B8(v39, v41);

    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v92 = v39;
    sub_1002ACECC(&qword_10083F180, &type metadata accessor for RFC8152SigStructure);
    v47 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v50 = v49;
    v96 = v41;
    v51 = v98;
    v52 = v47;
    v53 = defaultLogger()();
    __chkstk_darwin(v53);
    v113 = 0;
    Logger.cryptoParam(_:)();
    v45(v51, v46);
    sub_1002ACECC(&qword_1008336E0, &type metadata accessor for SHA256);
    v91 = v45;
    v54 = v104;
    v55 = v107;
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v52, v50);
    v56 = v113;
    sub_10037939C(v52, v50);
    v113 = v56;
    v114 = v44;
    v89 = v52;
    v90 = v50;
    sub_10000B90C(v52, v50);
    v57 = v105;
    dispatch thunk of HashFunction.finalize()();
    v58 = v91;
    (v106[1].isa)(v54, v55);
    sub_1002ACECC(&qword_1008336E8, &type metadata accessor for SHA256Digest);
    v59 = v109;
    v60 = Digest.data.getter();
    v62 = v61;
    (*(v108 + 8))(v57, v59);
    v63 = v98;
    v64 = defaultLogger()();
    __chkstk_darwin(v64);
    Logger.cryptoParam(_:)();
    v58(v63, v46);
    v65 = v110;
    v15 = v110[4];
    sub_10000BA08(v110, v110[3]);
    v66 = v113;
    v67 = dispatch thunk of IdentityKey.sign(_:)();
    if (v66)
    {
      (*(v111 + 8))(v115, v112);
      sub_10000B90C(v93, v94);
      sub_10000B90C(v92, v96);

      sub_10000B90C(v60, v62);
      sub_10000B90C(v89, v90);
    }

    else
    {
      v107 = v60;
      v108 = v67;
      v109 = v68;
      v69 = v65[4];
      sub_10000BA08(v65, v65[3]);
      v70 = dispatch thunk of IdentityKey.getIdentityPrivateKey()();
      v15 = v96;
      v71 = v70;
      v72 = SecKeyRef.publicKeyIdentifier.getter();
      v74 = v73;

      if (v74 >> 60 == 15)
      {
        (*(v99 + 104))(v102, enum case for DIPError.Code.failedToGenerateKeyIdentifier(_:), v101);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10000B90C(v107, v62);
        sub_10000B90C(v89, v90);
        sub_10000B90C(v108, v109);

        sub_10000B90C(v92, v15);
        sub_10000B90C(v93, v94);
        (*(v111 + 8))(v115, v112);
      }

      else
      {
        v110 = v62;
        sub_10000B8B8(v92, v15);
        sub_1000363B4(v72, v74);
        sub_10000B8B8(v108, v109);
        COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
        sub_1002ACE18();
        v75 = v74;
        v15 = dispatch thunk of CBOREncoder.encode<A>(_:)();
        v77 = v76;
        v104 = v72;
        v105 = v75;
        v113 = 0;
        v78 = v95;
        defaultLogger()();
        sub_10000B8B8(v15, v77);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.debug.getter();
        sub_10000B90C(v15, v77);
        v106 = v79;
        v81 = os_log_type_enabled(v79, v80);
        v82 = v107;
        if (v81)
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v116[0] = v84;
          *v83 = 136315138;
          v85 = Data.base16EncodedString()();
          v86 = sub_100141FE4(v85._countAndFlagsBits, v85._object, v116);

          *(v83 + 4) = v86;
          v87 = v106;
          _os_log_impl(&_mh_execute_header, v106, v80, "Created key authorization for phone's key signing key %s", v83, 0xCu);
          sub_10000BB78(v84);

          sub_10000B90C(v82, v110);

          sub_10000B90C(v89, v90);
          sub_10000B90C(v108, v109);
          sub_10000BD94(v104, v105);

          sub_10000B90C(v92, v96);
          sub_10000B90C(v93, v94);
          v88 = v95;
        }

        else
        {
          sub_10000B90C(v107, v110);

          sub_10000B90C(v89, v90);
          sub_10000B90C(v108, v109);
          sub_10000BD94(v104, v105);

          sub_10000B90C(v92, v96);
          sub_10000B90C(v93, v94);
          v88 = v78;
        }

        v91(v88, v97);
        sub_10000BE18(v103, &qword_10083F168, &unk_1006DEC40);
        (*(v111 + 8))(v115, v112);
      }
    }
  }

  return v15;
}

unint64_t sub_1002AB8D4(void *a1, void *a2)
{
  v40 = a2;
  v53 = a1;
  v52 = type metadata accessor for DIPError.Code();
  v50 = *(v52 - 8);
  v2 = *(v50 + 64);
  __chkstk_darwin(v52);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v43 = *(v45 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_10083F160, &unk_1006DC620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v39 - v15;
  v55 = type metadata accessor for COSEKey();
  v54 = *(v55 - 8);
  v17 = *(v54 + 64);
  v18 = __chkstk_darwin(v55);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v42 = &v39 - v21;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v39 = v5;
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "authorizeLocalKeySigningKey called", v29, 2u);
    v5 = v39;
  }

  (*(v23 + 8))(v26, v22);
  v30 = [v53 publicKeyCOSEKey];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  COSEKey.init(data:)();
  v31 = v54;
  v32 = v55;
  if ((*(v54 + 48))(v16, 1, v55) == 1)
  {
    sub_10000BE18(v16, &qword_10083F160, &unk_1006DC620);
    (*(v50 + 104))(v4, enum case for DIPError.Code.failedToSerializeCOSEPublicKey(_:), v52);
    v33 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v34 = v42;
    (*(v31 + 32))(v42, v16, v32);
    (*(v31 + 16))(v20, v34, v32);
    (*(v43 + 104))(v44, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.keySigningKey(_:), v45);
    v33 = v49;
    (*(v51 + 104))(v49, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.identityKey(_:), v5);
    v35 = v46;
    KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
    v36 = v41;
    v37 = sub_1002AA9D0(v35, v40);
    if (!v36)
    {
      v33 = v37;
    }

    (*(v47 + 8))(v35, v48);
    (*(v31 + 8))(v34, v32);
  }

  return v33;
}

unint64_t sub_1002ABFE0(void *a1, void *a2)
{
  v40 = a2;
  v53 = a1;
  v52 = type metadata accessor for DIPError.Code();
  v50 = *(v52 - 8);
  v2 = *(v50 + 64);
  __chkstk_darwin(v52);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose();
  v43 = *(v45 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for KeyAuthorizationCOSE_Sign1Payload();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_10083F160, &unk_1006DC620);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v39 - v15;
  v55 = type metadata accessor for COSEKey();
  v54 = *(v55 - 8);
  v17 = *(v54 + 64);
  v18 = __chkstk_darwin(v55);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v42 = &v39 - v21;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v39 = v5;
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "authorize AccountKeySigningKey called", v29, 2u);
    v5 = v39;
  }

  (*(v23 + 8))(v26, v22);
  v30 = [v53 publicKeyCOSEKey];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  COSEKey.init(data:)();
  v31 = v54;
  v32 = v55;
  if ((*(v54 + 48))(v16, 1, v55) == 1)
  {
    sub_10000BE18(v16, &qword_10083F160, &unk_1006DC620);
    (*(v50 + 104))(v4, enum case for DIPError.Code.failedToSerializeCOSEPublicKey(_:), v52);
    v33 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v34 = v42;
    (*(v31 + 32))(v42, v16, v32);
    (*(v31 + 16))(v20, v34, v32);
    (*(v43 + 104))(v44, enum case for KeyAuthorizationCOSE_Sign1Payload.KeyPurpose.accountKeySigningKey(_:), v45);
    v33 = v49;
    (*(v51 + 104))(v49, enum case for KeyAuthorizationCOSE_Sign1Payload.AuthorizerType.identityKey(_:), v5);
    v35 = v46;
    KeyAuthorizationCOSE_Sign1Payload.init(publicKey:keyPurpose:authorizerType:)();
    v36 = v41;
    v37 = sub_1002AA9D0(v35, v40);
    if (!v36)
    {
      v33 = v37;
    }

    (*(v47 + 8))(v35, v48);
    (*(v31 + 8))(v34, v32);
  }

  return v33;
}

uint64_t sub_1002AC6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[28] = v9;
  v10 = *(v9 - 8);
  v5[29] = v10;
  v11 = *(v10 + 64) + 15;
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002AC814, 0, 0);
}

uint64_t sub_1002AC814()
{
  v23 = v0;
  v1 = v0[30];
  v2 = v0[21];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  if (v5)
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "authorizeDeviceKeySigningKey called for credential identifier : %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[21];
  v16 = v0[22];
  v17 = v0[20];
  v18 = String._bridgeToObjectiveC()();
  v0[31] = v18;
  v19 = String._bridgeToObjectiveC()();
  v0[32] = v19;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002ACA6C;
  v20 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_10080C300;
  v0[14] = v20;
  [v13 authorizeDeviceKeySigningKeyOfCredential:v18 accountKeyIdentifier:v19 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002ACA6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1002ACC18;
  }

  else
  {
    v3 = sub_1002ACB7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002ACB7C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  v6 = *(v0 + 8);

  return v6(v4, v5);
}

uint64_t sub_1002ACC18()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  swift_willThrow();

  (*(v6 + 104))(v5, enum case for DIPError.Code.unableToAuthorizeWatchKeySigningKey(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002ACE00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1002A9CF0();
}

uint64_t sub_1002ACE08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1002A9D84();
}

uint64_t sub_1002ACE10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1002A9E18();
}

unint64_t sub_1002ACE18()
{
  result = qword_10083F188;
  if (!qword_10083F188)
  {
    sub_10000B870(&qword_10083F168, &unk_1006DEC40);
    sub_1002ACECC(&qword_10083F190, &type metadata accessor for COSE_Sign1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083F188);
  }

  return result;
}

uint64_t sub_1002ACECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002ACF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[28] = v9;
  v10 = *(v9 - 8);
  v5[29] = v10;
  v11 = *(v10 + 64) + 15;
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002AD038, 0, 0);
}

uint64_t sub_1002AD038()
{
  v23 = v0;
  v1 = v0[30];
  v2 = v0[21];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  if (v5)
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "authorizeRemoteKeySigningKey called for credential identifier : %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[21];
  v16 = v0[22];
  v17 = v0[20];
  v18 = String._bridgeToObjectiveC()();
  v0[31] = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[32] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002AD290;
  v20 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_10080C350;
  v0[14] = v20;
  [v13 authorizeRemoteKeySigningKeyWithCredential:v18 remoteKey:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002AD290()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1002AD3A0;
  }

  else
  {
    v3 = sub_1002AD914;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002AD3A0()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  swift_willThrow();

  (*(v6 + 104))(v5, enum case for DIPError.Code.unableToAuthorizeWatchKeySigningKey(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002ACECC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002AD55C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_1002AD57C, 0, 0);
}

uint64_t sub_1002AD57C()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = *(qword_100882228 + 16);
  v0[22] = v3;
  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  v0[23] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002AD6FC;
  v6 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_10080C328;
  v0[14] = v6;
  [v4 retrievePIITokenFromSyncableKeyStoreForIdentifier:v5 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002AD6FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1002AD888;
  }

  else
  {
    v3 = sub_1002AD80C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002AD80C()
{
  v1 = *(v0 + 184);

  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1002AD888()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_1002AD91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_10083E3E8, &unk_1006DBD00) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100840960, &qword_1006DBCB0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002ADA6C, 0, 0);
}

uint64_t sub_1002ADA6C()
{
  v1 = v0[12];
  v2 = v0[6];
  v0[15] = *(v0[7] + 64);
  sub_10000BBC4(v2, v1, &qword_10083E3E8, &unk_1006DBD00);
  v3 = type metadata accessor for ActionRequest(0);
  v4 = *(*(v3 - 8) + 48);
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[12];

    v6 = &qword_10083E3E8;
    v7 = &unk_1006DBD00;
    v8 = v5;
LABEL_5:
    sub_10000BE18(v8, v6, v7);
    v14 = 0;
    v15 = 0;
    goto LABEL_7;
  }

  v9 = v0[14];
  v10 = v0[12];
  sub_10000BBC4(v10 + *(v3 + 20), v9, &unk_100840960, &qword_1006DBCB0);

  sub_1002AE35C(v10, type metadata accessor for ActionRequest);
  v11 = type metadata accessor for PendingActionContext(0);
  v12 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  v13 = v0[14];
  if (v12 == 1)
  {
    v6 = &unk_100840960;
    v7 = &qword_1006DBCB0;
    v8 = v0[14];
    goto LABEL_5;
  }

  v14 = *(v13 + 240);
  v15 = *(v13 + 248);

  sub_1002AE35C(v13, type metadata accessor for PendingActionContext);
LABEL_7:
  v0[16] = v15;
  v16 = v0[11];
  sub_10000BBC4(v0[6], v16, &qword_10083E3E8, &unk_1006DBD00);
  if (v4(v16, 1, v3) == 1)
  {
    v17 = v0[11];
    v18 = &qword_10083E3E8;
    v19 = &unk_1006DBD00;
LABEL_11:
    sub_10000BE18(v17, v18, v19);
    v25 = 0;
    v26 = 0;
    goto LABEL_13;
  }

  v20 = v0[13];
  v21 = v0[11];
  sub_10000BBC4(v21 + *(v3 + 20), v20, &unk_100840960, &qword_1006DBCB0);
  sub_1002AE35C(v21, type metadata accessor for ActionRequest);
  v22 = type metadata accessor for PendingActionContext(0);
  v23 = (*(*(v22 - 8) + 48))(v20, 1, v22);
  v24 = v0[13];
  if (v23 == 1)
  {
    v18 = &unk_100840960;
    v19 = &qword_1006DBCB0;
    v17 = v0[13];
    goto LABEL_11;
  }

  v25 = *(v24 + 256);
  v26 = *(v24 + 264);

  sub_1002AE35C(v24, type metadata accessor for PendingActionContext);
LABEL_13:
  v0[17] = v26;
  v27 = swift_task_alloc();
  v0[18] = v27;
  *v27 = v0;
  v27[1] = sub_1002ADDD4;
  v28 = v0[3];
  v29 = v0[4];

  return sub_1002CD7D4(v14, v15, v25, v26, v28, v29, 1);
}

uint64_t sub_1002ADDD4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v6 = *v0;

  return _swift_task_switch(sub_1002ADF2C, 0, 0);
}

uint64_t sub_1002ADF2C()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to start clearing the proofing session and the created credential", v4, 2u);
  }

  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  (*(v6 + 8))(v5, v7);
  v0[19] = *(v8 + 56);

  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1002AE084;
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];

  return sub_100295F44(v12, v10, v11, 0);
}

uint64_t sub_1002AE084()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_1002AE19C, 0, 0);
}

uint64_t sub_1002AE19C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = type metadata accessor for IdentityManagementSessionDelegate();
  v7 = [objc_opt_self() defaultCenter];
  v8 = String._bridgeToObjectiveC()();
  v0[2] = v6;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v7 postNotificationName:v8 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002AE2F0()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_1002AE35C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1002AE404@<X0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of ImageQualityMetrics.originalVertices.getter();
  if (!v2)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v3 = v2;
  if (v2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_15:

    v7 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_100172FA0(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    dispatch thunk of IQPoint.x.getter();
    v163 = v10;
    dispatch thunk of IQPoint.y.getter();
    v157 = v11;

    v229 = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_100172FA0((v12 > 1), v13 + 1, 1);
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    *&_swiftEmptyArrayStorage[2 * v13 + 4] = vcvtq_f64_f32(__PAIR64__(v157, v163));
  }

  while (v4 != v6);

LABEL_16:
  v14 = dispatch thunk of ImageQualityMetrics.targetVertices.getter();
  if (!v14)
  {
    v18 = 0;
    goto LABEL_31;
  }

  v15 = v14;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_30:

    v18 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_19:
  result = sub_100172FA0(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    dispatch thunk of IQPoint.x.getter();
    v164 = v21;
    dispatch thunk of IQPoint.y.getter();
    v158 = v22;

    v229 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      sub_100172FA0((v23 > 1), v24 + 1, 1);
    }

    ++v17;
    _swiftEmptyArrayStorage[2] = v24 + 1;
    *&_swiftEmptyArrayStorage[2 * v24 + 4] = vcvtq_f64_f32(__PAIR64__(v158, v164));
  }

  while (v16 != v17);

LABEL_31:
  v25 = dispatch thunk of ImageQualityMetrics.rectangleCorners.getter();
  v154 = v18;
  v155 = v7;
  if (!v25)
  {
    v29 = 0;
    goto LABEL_46;
  }

  v26 = v25;
  if (!(v25 >> 62))
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_34;
    }

LABEL_45:

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_45;
  }

LABEL_34:
  result = sub_100172FA0(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    dispatch thunk of IQPoint.x.getter();
    v165 = v32;
    dispatch thunk of IQPoint.y.getter();
    v159 = v33;

    v229 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage[2];
    v34 = _swiftEmptyArrayStorage[3];
    if (v35 >= v34 >> 1)
    {
      sub_100172FA0((v34 > 1), v35 + 1, 1);
    }

    ++v28;
    _swiftEmptyArrayStorage[2] = v35 + 1;
    *&_swiftEmptyArrayStorage[2 * v35 + 4] = vcvtq_f64_f32(__PAIR64__(v159, v165));
  }

  while (v27 != v28);

LABEL_46:
  v36 = dispatch thunk of ImageQualityMetrics.documentCorners.getter();
  if (v36)
  {
    v37 = v36;
    if (v36 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      if (v38)
      {
LABEL_49:
        result = sub_100172FA0(0, v38 & ~(v38 >> 63), 0);
        if ((v38 & 0x8000000000000000) == 0)
        {
          v39 = 0;
          v40 = _swiftEmptyArrayStorage;
          do
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v41 = *(v37 + 8 * v39 + 32);
            }

            v42 = v41;
            dispatch thunk of IQPoint.x.getter();
            v166 = v43;
            dispatch thunk of IQPoint.y.getter();
            v160 = v44;

            v229 = _swiftEmptyArrayStorage;
            v46 = _swiftEmptyArrayStorage[2];
            v45 = _swiftEmptyArrayStorage[3];
            if (v46 >= v45 >> 1)
            {
              sub_100172FA0((v45 > 1), v46 + 1, 1);
            }

            ++v39;
            _swiftEmptyArrayStorage[2] = v46 + 1;
            *&_swiftEmptyArrayStorage[2 * v46 + 4] = vcvtq_f64_f32(__PAIR64__(v160, v166));
          }

          while (v38 != v39);

          goto LABEL_61;
        }

LABEL_68:
        __break(1u);
        return result;
      }
    }

    else
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        goto LABEL_49;
      }
    }

    v40 = _swiftEmptyArrayStorage;
  }

  else
  {
    v40 = 0;
  }

LABEL_61:
  matched = dispatch thunk of ImageQualityMetrics.fuzzyMatchAssessment.getter();
  if (matched)
  {
    v48 = matched;
    v96 = FuzzyMatchAssessment.firstName.getter();
    v167 = v49;
    v95 = FuzzyMatchAssessment.lastName.getter();
    v161 = v50;
    v94 = FuzzyMatchAssessment.state.getter();
    v152 = v51;
    v93 = FuzzyMatchAssessment.houseNumber.getter();
    v53 = v52;
    v92 = FuzzyMatchAssessment.street.getter();
    v55 = v54;
    v91 = FuzzyMatchAssessment.dob.getter();
    v57 = v56;
    v90 = FuzzyMatchAssessment.postalCode.getter();
    v59 = v58;

    v89 = v167 & 1;
    v178[0] = v167 & 1;
    LOBYTE(v88) = 0;
    BYTE4(v88) = v161 & 1;
    v175[0] = v161 & 1;
    v87 = v152 & 1;
    v174[0] = v152 & 1;
    BYTE4(v86) = v53 & 1;
    v173[0] = v53 & 1;
    LOBYTE(v86) = v55 & 1;
    v172[0] = v55 & 1;
    BYTE4(v85) = v57 & 1;
    v171[0] = v57 & 1;
    LOBYTE(v85) = v59 & 1;
    v170[0] = v59 & 1;
    LOBYTE(v229) = 0;
  }

  else
  {
    v95 = 0;
    v96 = 0;
    v89 = 0;
    v90 = 0;
    v93 = 0;
    v94 = 0;
    v85 = 0;
    v86 = 0;
    v91 = 0;
    v92 = 0;
    v87 = 0;
    v88 = 1;
  }

  v132 = dispatch thunk of ImageQualityMetrics.blurriness.getter();
  v133 = dispatch thunk of ImageQualityMetrics.laplaceBlur.getter();
  v134 = dispatch thunk of ImageQualityMetrics.exposure.getter();
  v135 = dispatch thunk of ImageQualityMetrics.cardDistortion.getter();
  v136 = dispatch thunk of ImageQualityMetrics.faceToImageRatio.getter();
  v137 = dispatch thunk of ImageQualityMetrics.faceCenteredRatio.getter();
  v138 = dispatch thunk of ImageQualityMetrics.headPitch.getter();
  v139 = dispatch thunk of ImageQualityMetrics.headRoll.getter();
  v140 = dispatch thunk of ImageQualityMetrics.headYaw.getter();
  v141 = dispatch thunk of ImageQualityMetrics.blinkingConfidence.getter();
  v142 = dispatch thunk of ImageQualityMetrics.glassesConfidence.getter();
  v143 = dispatch thunk of ImageQualityMetrics.sunglassesConfidence.getter();
  v144 = dispatch thunk of ImageQualityMetrics.facemaskConfidence.getter();
  v145 = dispatch thunk of ImageQualityMetrics.headgearConfidence.getter();
  v146 = dispatch thunk of ImageQualityMetrics.lensSmudgeConfidence.getter();
  v147 = dispatch thunk of ImageQualityMetrics.captureTime.getter();
  v148 = dispatch thunk of ImageQualityMetrics.faceCaptureQuality.getter();
  v149 = dispatch thunk of ImageQualityMetrics.documentSize.getter();
  v150 = dispatch thunk of ImageQualityMetrics.documentRotation.getter();
  v151 = dispatch thunk of ImageQualityMetrics.documentSkew.getter();
  v153 = dispatch thunk of ImageQualityMetrics.leftDrift.getter();
  v156 = dispatch thunk of ImageQualityMetrics.rightDrift.getter();
  v162 = dispatch thunk of ImageQualityMetrics.upDrift.getter();
  v168 = dispatch thunk of ImageQualityMetrics.downDrift.getter();
  v123 = dispatch thunk of ImageQualityMetrics.faceConfidences.getter();
  v122 = dispatch thunk of ImageQualityMetrics.headgearConfidences.getter();
  v121 = dispatch thunk of ImageQualityMetrics.numFaces.getter();
  v131 = v60;
  v120 = dispatch thunk of ImageQualityMetrics.luxLevel.getter();
  v130 = v61;
  v119 = dispatch thunk of ImageQualityMetrics.pdf417Detected.getter();
  v118 = dispatch thunk of ImageQualityMetrics.isAAMVACompliant.getter();
  v117 = dispatch thunk of ImageQualityMetrics.isAutoCaptured.getter();
  v116 = dispatch thunk of ImageQualityMetrics.isFlashEnabled.getter();
  v62 = dispatch thunk of ImageQualityMetrics.issuerNumber.getter();
  v114 = v63;
  v115 = v62;
  v64 = dispatch thunk of ImageQualityMetrics.documentType.getter();
  v111 = v65;
  v112 = v64;
  v108 = dispatch thunk of ImageQualityMetrics.glareDetected.getter();
  v105 = dispatch thunk of ImageQualityMetrics.glareClusterSize.getter();
  v103 = dispatch thunk of ImageQualityMetrics.glareAvgIntensity.getter();
  v113 = dispatch thunk of ImageQualityMetrics.ocrMatchData.getter();
  v66 = dispatch thunk of ImageQualityMetrics.modelDecision.getter();
  v109 = v67;
  v110 = v66;
  v68 = dispatch thunk of ImageQualityMetrics.modelVersion.getter();
  v106 = v69;
  v107 = v68;
  v104 = dispatch thunk of ImageQualityMetrics.exploration.getter();
  v102 = dispatch thunk of ImageQualityMetrics.rescanCount.getter();
  v129 = v70;
  v71 = dispatch thunk of ImageQualityMetrics.livenessChute.getter();
  v100 = v72;
  v101 = v71;
  v99 = dispatch thunk of ImageQualityMetrics.errorCode.getter();
  v128 = v73;
  v98 = dispatch thunk of ImageQualityMetrics.dobRepeatCount.getter();
  v127 = v74;
  v97 = dispatch thunk of ImageQualityMetrics.doeRepeatCount.getter();
  v126 = v75;
  v76 = dispatch thunk of ImageQualityMetrics.docNumberRepeatCount.getter();
  v125 = v77;
  v78 = dispatch thunk of ImageQualityMetrics.issuerNumberRepeatCount.getter();
  v124 = v79;
  v80 = dispatch thunk of ImageQualityMetrics.mrzScanResult.getter();
  v82 = v81;
  v83 = dispatch thunk of ImageQualityMetrics.ageOfDocument.getter();
  *(a1 + 192) = v123;
  *(a1 + 200) = v122;
  *(a1 + 208) = v121;
  *(a1 + 224) = v120;
  *(a1 + 233) = v119;
  *(a1 + 234) = v118;
  *(a1 + 235) = v117;
  *(a1 + 236) = v116;
  *(a1 + 240) = v115;
  *(a1 + 248) = v114;
  *(a1 + 256) = v112;
  *(a1 + 264) = v111;
  *(a1 + 272) = v108;
  *(a1 + 280) = v105;
  *(a1 + 288) = v103;
  *(a1 + 296) = v155;
  *(a1 + 304) = v154;
  *(a1 + 312) = v29;
  *(a1 + 320) = v40;
  *(a1 + 328) = v96;
  *(a1 + 336) = v89;
  *(a1 + 344) = v95;
  *(a1 + 352) = BYTE4(v88);
  *(a1 + 360) = v94;
  *(a1 + 368) = v87;
  *(a1 + 376) = v93;
  *(a1 + 384) = BYTE4(v86);
  *(a1 + 392) = v92;
  *(a1 + 400) = v86;
  *(a1 + 408) = v91;
  *(a1 + 416) = BYTE4(v85);
  *(a1 + 424) = v90;
  *(a1 + 432) = v85;
  *(a1 + 433) = v88;
  *(a1 + 440) = v113;
  *(a1 + 448) = v110;
  *(a1 + 456) = v109;
  *(a1 + 464) = v107;
  *(a1 + 472) = v106;
  *(a1 + 480) = v104;
  *(a1 + 488) = v102;
  *(a1 + 504) = v101;
  *(a1 + 512) = v100;
  *(a1 + 520) = v99;
  *(a1 + 536) = v98;
  *(a1 + 552) = v97;
  *(a1 + 568) = v76;
  *(a1 + 584) = v78;
  *(a1 + 600) = v80;
  *(a1 + 608) = v82;
  *(a1 + 616) = v83;
  result = v147;
  *a1 = v132;
  *(a1 + 4) = BYTE4(v132) & 1;
  *(a1 + 5) = v227;
  *(a1 + 7) = v228;
  *(a1 + 8) = v133;
  *(a1 + 12) = BYTE4(v133) & 1;
  *(a1 + 13) = v225;
  *(a1 + 15) = v226;
  *(a1 + 16) = v134;
  *(a1 + 20) = BYTE4(v134) & 1;
  *(a1 + 23) = v224;
  *(a1 + 21) = v223;
  *(a1 + 24) = v135;
  *(a1 + 28) = BYTE4(v135) & 1;
  *(a1 + 31) = v222;
  *(a1 + 29) = v221;
  *(a1 + 32) = v136;
  *(a1 + 36) = BYTE4(v136) & 1;
  *(a1 + 39) = v220;
  *(a1 + 37) = v219;
  *(a1 + 40) = v137;
  *(a1 + 44) = BYTE4(v137) & 1;
  *(a1 + 47) = v218;
  *(a1 + 45) = v217;
  *(a1 + 48) = v138;
  *(a1 + 52) = BYTE4(v138) & 1;
  *(a1 + 55) = v216;
  *(a1 + 53) = v215;
  *(a1 + 56) = v139;
  *(a1 + 60) = BYTE4(v139) & 1;
  *(a1 + 63) = v214;
  *(a1 + 61) = v213;
  *(a1 + 64) = v140;
  *(a1 + 68) = BYTE4(v140) & 1;
  *(a1 + 71) = v212;
  *(a1 + 69) = v211;
  *(a1 + 72) = v141;
  *(a1 + 76) = BYTE4(v141) & 1;
  *(a1 + 79) = v210;
  *(a1 + 77) = v209;
  *(a1 + 80) = v142;
  *(a1 + 84) = BYTE4(v142) & 1;
  *(a1 + 87) = v208;
  *(a1 + 85) = v207;
  *(a1 + 88) = v143;
  *(a1 + 92) = BYTE4(v143) & 1;
  *(a1 + 95) = v206;
  *(a1 + 93) = v205;
  *(a1 + 96) = v144;
  *(a1 + 100) = BYTE4(v144) & 1;
  *(a1 + 103) = v204;
  *(a1 + 101) = v203;
  *(a1 + 104) = v145;
  *(a1 + 108) = BYTE4(v145) & 1;
  *(a1 + 111) = v202;
  *(a1 + 109) = v201;
  *(a1 + 112) = v146;
  *(a1 + 116) = BYTE4(v146) & 1;
  *(a1 + 119) = v200;
  *(a1 + 117) = v199;
  *(a1 + 120) = v147;
  *(a1 + 124) = BYTE4(v147) & 1;
  *(a1 + 127) = v198;
  *(a1 + 125) = v197;
  *(a1 + 128) = v148;
  *(a1 + 132) = BYTE4(v148) & 1;
  *(a1 + 135) = v196;
  *(a1 + 133) = v195;
  *(a1 + 136) = v149;
  *(a1 + 140) = BYTE4(v149) & 1;
  *(a1 + 143) = v194;
  *(a1 + 141) = v193;
  *(a1 + 144) = v150;
  *(a1 + 148) = BYTE4(v150) & 1;
  *(a1 + 151) = v192;
  *(a1 + 149) = v191;
  *(a1 + 152) = v151;
  *(a1 + 156) = BYTE4(v151) & 1;
  *(a1 + 159) = v190;
  *(a1 + 157) = v189;
  *(a1 + 160) = v153;
  *(a1 + 164) = BYTE4(v153) & 1;
  *(a1 + 167) = v188;
  *(a1 + 165) = v187;
  *(a1 + 168) = v156;
  *(a1 + 172) = BYTE4(v156) & 1;
  *(a1 + 175) = v186;
  *(a1 + 173) = v185;
  *(a1 + 176) = v162;
  *(a1 + 180) = BYTE4(v162) & 1;
  *(a1 + 183) = v184;
  *(a1 + 181) = v183;
  *(a1 + 184) = v168;
  *(a1 + 188) = BYTE4(v168) & 1;
  *(a1 + 191) = v182;
  *(a1 + 189) = v181;
  *(a1 + 216) = v131 & 1;
  *(a1 + 220) = *(&v229 + 3);
  *(a1 + 217) = v229;
  *(a1 + 232) = v130 & 1;
  *(a1 + 239) = v180;
  *(a1 + 237) = v179;
  *(a1 + 276) = *&v178[3];
  *(a1 + 273) = *v178;
  *(a1 + 343) = 0;
  *(a1 + 341) = 0;
  *(a1 + 337) = 0;
  *(a1 + 359) = 0;
  *(a1 + 357) = 0;
  *(a1 + 353) = 0;
  *(a1 + 375) = 0;
  *(a1 + 373) = 0;
  *(a1 + 369) = 0;
  *(a1 + 391) = 0;
  *(a1 + 389) = 0;
  *(a1 + 385) = 0;
  *(a1 + 407) = 0;
  *(a1 + 405) = 0;
  *(a1 + 401) = 0;
  *(a1 + 423) = 0;
  *(a1 + 421) = 0;
  *(a1 + 417) = 0;
  *(a1 + 438) = v177;
  *(a1 + 434) = v176;
  *(a1 + 484) = *&v175[3];
  *(a1 + 481) = *v175;
  *(a1 + 496) = v129 & 1;
  *(a1 + 500) = *&v174[3];
  *(a1 + 497) = *v174;
  *(a1 + 528) = v128 & 1;
  *(a1 + 532) = *&v173[3];
  *(a1 + 529) = *v173;
  *(a1 + 544) = v127 & 1;
  *(a1 + 548) = *&v172[3];
  *(a1 + 545) = *v172;
  *(a1 + 560) = v126 & 1;
  *(a1 + 564) = *&v171[3];
  *(a1 + 561) = *v171;
  *(a1 + 576) = v125 & 1;
  *(a1 + 580) = *&v170[3];
  *(a1 + 577) = *v170;
  *(a1 + 592) = v124 & 1;
  *(a1 + 596) = *&v169[3];
  *(a1 + 593) = *v169;
  *(a1 + 624) = v84 & 1;
  return result;
}

char *sub_1002AF24C(void (**a1)(void, void), uint64_t a2)
{
  v4 = type metadata accessor for IQImageType();
  v106 = *(v4 - 8);
  v5 = *(v106 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v104 - v10;
  __chkstk_darwin(v9);
  v131 = &v104 - v12;
  v129 = type metadata accessor for Logger();
  v105 = *(v129 - 8);
  v13 = *(v105 + 64);
  v14 = __chkstk_darwin(v129);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v104 - v18;
  __chkstk_darwin(v17);
  v21 = &v104 - v20;
  v111 = a1;
  v22 = IdentityImageQualityMetrics.inlineMetrics.getter();
  if (v22 >> 62)
  {
    goto LABEL_41;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v117 = v16;
    v16 = &unk_1006BF000;
    v119 = a2;
    v120 = v4;
    v127 = v19;
    v128 = v8;
    v113 = v11;
    if (v24)
    {
      v123 = v21;
      v25 = 0;
      v125 = v22 & 0xFFFFFFFFFFFFFF8;
      v126 = v22 & 0xC000000000000001;
      v121 = (v106 + 16);
      v118 = (v106 + 8);
      *&v116 = v105 + 8;
      v115 = _swiftEmptyArrayStorage;
      *&v23 = 136315650;
      v112 = v23;
      v122 = v24;
      v124 = v22;
      while (1)
      {
        if (v126)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v125 + 16))
          {
            goto LABEL_38;
          }

          v22 = *(v22 + 8 * v25 + 32);
        }

        v26 = v22;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v130 = v25 + 1;
        v21 = v123;
        defaultLogger()();
        (*v121)(v131, a2, v4);
        v11 = v26;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v135[0] = v114;
          *v29 = v112;
          v30 = IQImageType.rawValue.getter();
          v32 = v31;
          (*v118)(v131, v120);
          v33 = sub_100141FE4(v30, v32, v135);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2048;
          *(v29 + 14) = v25;
          *(v29 + 22) = 2080;
          v34 = [v11 debugDescription];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = v35;
          v4 = v120;
          v39 = sub_100141FE4(v38, v37, v135);
          v8 = v128;

          *(v29 + 24) = v39;
          _os_log_impl(&_mh_execute_header, v27, v28, "%s inline %ld:\n%s", v29, 0x20u);
          swift_arrayDestroy();

          a2 = v119;
        }

        else
        {

          (*v118)(v131, v4);
        }

        (*v116)(v21, v129);
        sub_1002AE404(v133);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v127;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v115 = sub_1003C5BE4(0, *(v115 + 2) + 1, 1, v115);
        }

        v42 = *(v115 + 2);
        v41 = *(v115 + 3);
        if (v42 >= v41 >> 1)
        {
          v115 = sub_1003C5BE4((v41 > 1), v42 + 1, 1, v115);
        }

        v43 = v115;
        *(v115 + 2) = v42 + 1;
        memcpy(&v43[632 * v42 + 32], v133, 0x271uLL);
        ++v25;
        v16 = 0x1006BF000;
        v22 = v124;
        if (v130 == v122)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v115 = _swiftEmptyArrayStorage;
LABEL_20:

    v44 = IdentityImageQualityMetrics.captureMetrics.getter();
    v11 = v44;
    if (!(v44 >> 62))
    {
      v22 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        break;
      }

      goto LABEL_22;
    }

    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (!v22)
    {
      break;
    }

LABEL_22:
    v46 = 0;
    v130 = v11 & 0xC000000000000001;
    v126 = v11 & 0xFFFFFFFFFFFFFF8;
    v122 = (v106 + 8);
    v123 = (v106 + 16);
    v121 = (v105 + 8);
    v21 = _swiftEmptyArrayStorage;
    *&v45 = *(v16 + 2648);
    v116 = v45;
    v124 = v22;
    v125 = v11;
    while (1)
    {
      if (v130)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *(v126 + 16))
        {
          goto LABEL_40;
        }

        v22 = *(v11 + 8 * v46 + 32);
      }

      v47 = v22;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v131 = (v46 + 1);
      v114 = v21;
      defaultLogger()();
      v48 = v113;
      (*v123)(v113, a2, v4);
      v49 = v47;
      v50 = v19;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = v48;
        v118 = swift_slowAlloc();
        v135[0] = v118;
        *v53 = v116;
        v55 = IQImageType.rawValue.getter();
        v57 = v56;
        (*v122)(v54, v4);
        v58 = sub_100141FE4(v55, v57, v135);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2048;
        *(v53 + 14) = v46;
        *(v53 + 22) = 2080;
        v59 = [v49 debugDescription];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v63 = v60;
        v8 = v128;
        v64 = sub_100141FE4(v63, v62, v135);
        v4 = v120;

        *(v53 + 24) = v64;
        _os_log_impl(&_mh_execute_header, v51, v52, "%s captured %ld:\n%s", v53, 0x20u);
        swift_arrayDestroy();

        a2 = v119;

        v19 = v127;
        (*v121)(v127, v129);
      }

      else
      {

        (*v122)(v48, v4);
        (*v121)(v50, v129);
        v19 = v50;
      }

      sub_1002AE404(v134);
      v21 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1003C5BE4(0, *(v21 + 2) + 1, 1, v21);
      }

      v16 = *(v21 + 2);
      v65 = *(v21 + 3);
      if (v16 >= v65 >> 1)
      {
        v21 = sub_1003C5BE4((v65 > 1), v16 + 1, 1, v21);
      }

      *(v21 + 2) = v16 + 1;
      v22 = memcpy(&v21[632 * v16 + 32], v134, 0x271uLL);
      ++v46;
      v11 = v125;
      if (v131 == v124)
      {
        goto LABEL_44;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v66 = v22;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v66;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_44:
  v114 = v21;

  v67 = IdentityImageQualityMetrics.videoMetrics.getter();
  v104 = v67;
  if (v67 >> 62)
  {
    goto LABEL_82;
  }

  v69 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v70 = v117;
  if (v69)
  {
LABEL_46:
    v71 = 0;
    v109 = v104 & 0xFFFFFFFFFFFFFF8;
    v110 = v104 & 0xC000000000000001;
    v108 = v104 + 32;
    v122 = (v106 + 8);
    v123 = (v106 + 16);
    v121 = (v105 + 8);
    v72 = _swiftEmptyArrayStorage;
    *&v68 = 136315906;
    v116 = v68;
    v107 = v69;
    do
    {
      if (v110)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v74 = (v71 + 1);
        if (__OFADD__(v71, 1))
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v71 >= *(v109 + 16))
        {
          goto LABEL_81;
        }

        v73 = *(v108 + 8 * v71);
        v74 = (v71 + 1);
        if (__OFADD__(v71, 1))
        {
          goto LABEL_80;
        }
      }

      v111 = v74;
      *&v112 = v73;
      v118 = v71;
      v75 = MetricsSequence.sequence.getter();
      if (v75 >> 62)
      {
        v99 = v75;
        v76 = _CocoaArrayWrapper.endIndex.getter();
        v75 = v99;
        v113 = v72;
        if (v76)
        {
LABEL_52:
          v77 = 0;
          v126 = v75 & 0xFFFFFFFFFFFFFF8;
          v127 = v75 & 0xC000000000000001;
          v78 = _swiftEmptyArrayStorage;
          v124 = v76;
          v125 = v75;
          while (1)
          {
            if (v127)
            {
              v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v77 >= *(v126 + 16))
              {
                goto LABEL_79;
              }

              v79 = *(v75 + 8 * v77 + 32);
            }

            v80 = v79;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            v131 = v78;
            defaultLogger()();
            (*v123)(v8, a2, v4);
            v81 = v80;
            v82 = v70;
            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.debug.getter();

            v85 = os_log_type_enabled(v83, v84);
            v130 = v77 + 1;
            if (v85)
            {
              v86 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              *v86 = v116;
              v87 = IQImageType.rawValue.getter();
              v89 = v88;
              (*v122)(v128, v4);
              v90 = sub_100141FE4(v87, v89, &v132);

              *(v86 + 4) = v90;
              *(v86 + 12) = 2048;
              *(v86 + 14) = v118;
              *(v86 + 22) = 2048;
              *(v86 + 24) = v77;
              *(v86 + 32) = 2080;
              v91 = [v81 debugDescription];
              v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v94 = v93;

              v95 = v92;
              v8 = v128;
              v96 = sub_100141FE4(v95, v94, &v132);
              v4 = v120;

              *(v86 + 34) = v96;
              _os_log_impl(&_mh_execute_header, v83, v84, "%s video, sequence: %ld, metric: %ld:\n%s", v86, 0x2Au);
              swift_arrayDestroy();

              a2 = v119;

              v70 = v117;
              (*v121)(v117, v129);
            }

            else
            {

              (*v122)(v8, v4);
              (*v121)(v82, v129);
              v70 = v82;
            }

            sub_1002AE404(v135);
            v78 = v131;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_1003C5BE4(0, *(v78 + 2) + 1, 1, v78);
            }

            v98 = *(v78 + 2);
            v97 = *(v78 + 3);
            if (v98 >= v97 >> 1)
            {
              v78 = sub_1003C5BE4((v97 > 1), v98 + 1, 1, v78);
            }

            *(v78 + 2) = v98 + 1;
            memcpy(&v78[632 * v98 + 32], v135, 0x271uLL);
            ++v77;
            v75 = v125;
            if (v130 == v124)
            {
              goto LABEL_72;
            }
          }

          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          v69 = _CocoaArrayWrapper.endIndex.getter();
          v70 = v117;
          if (!v69)
          {
            break;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v113 = v72;
        if (v76)
        {
          goto LABEL_52;
        }
      }

      v78 = _swiftEmptyArrayStorage;
LABEL_72:

      v72 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1003C5A8C(0, v72[2] + 1, 1, v72);
      }

      v100 = v107;
      v102 = v72[2];
      v101 = v72[3];
      if (v102 >= v101 >> 1)
      {
        v72 = sub_1003C5A8C((v101 > 1), v102 + 1, 1, v72);
      }

      v72[2] = v102 + 1;
      v72[v102 + 4] = v78;
      v71 = v111;
    }

    while (v111 != v100);
  }

  return v115;
}

unint64_t sub_1002B0020(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v138 = a7;
  v139 = a8;
  v136 = a5;
  v137 = a6;
  v134 = a3;
  v135 = a4;
  v10 = type metadata accessor for IQImageType();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v130 - v16;
  v18 = sub_10003F378(_swiftEmptyArrayStorage);
  v140 = v11;
  if (a1)
  {
    v133 = a2;
    v19 = enum case for IQImageType.frontScan(_:);
    v20 = v11[13];
    v20(v17, enum case for IQImageType.frontScan(_:), v10);
    v21 = a1;
    v22 = IQImageType.rawValue.getter();
    v131 = v23;
    v132 = v22;
    v24 = v11[1];
    v24(v17, v10);
    v20(v15, v19, v10);
    v25 = sub_1002AF24C(v21, v15);
    v27 = v26;
    v29 = v28;
    v24(v15, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v18;
    v31 = v25;
    a2 = v133;
    sub_10016DCA0(v31, v27, v29, v132, v131, isUniquelyReferenced_nonNull_native);

    v18 = v141;
  }

  if (a2)
  {
    v32 = enum case for IQImageType.backScan(_:);
    v33 = v140;
    v34 = v140[13];
    v34(v17, enum case for IQImageType.backScan(_:), v10);
    v35 = a2;
    v36 = IQImageType.rawValue.getter();
    v132 = v37;
    v133 = v36;
    v38 = v33[1];
    v38(v17, v10);
    v34(v15, v32, v10);
    v39 = sub_1002AF24C(v35, v15);
    v41 = v40;
    v43 = v42;
    v38(v15, v10);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v18;
    sub_10016DCA0(v39, v41, v43, v133, v132, v44);

    v18 = v141;
  }

  v45 = v134;
  if (v134)
  {
    v46 = enum case for IQImageType.idFront(_:);
    v47 = v140;
    v48 = v140[13];
    v48(v17, enum case for IQImageType.idFront(_:), v10);
    v49 = v45;
    v50 = IQImageType.rawValue.getter();
    v133 = v51;
    v134 = v50;
    v52 = v47[1];
    v52(v17, v10);
    v48(v15, v46, v10);
    v53 = sub_1002AF24C(v49, v15);
    v55 = v54;
    v57 = v56;
    v52(v15, v10);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v18;
    sub_10016DCA0(v53, v55, v57, v134, v133, v58);

    v18 = v141;
  }

  v59 = v135;
  if (v135)
  {
    v60 = enum case for IQImageType.idBack(_:);
    v61 = v140;
    v62 = v140[13];
    v62(v17, enum case for IQImageType.idBack(_:), v10);
    v63 = v59;
    v64 = IQImageType.rawValue.getter();
    v134 = v65;
    v135 = v64;
    v66 = v61[1];
    v66(v17, v10);
    v62(v15, v60, v10);
    v67 = sub_1002AF24C(v63, v15);
    v69 = v68;
    v71 = v70;
    v66(v15, v10);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v18;
    sub_10016DCA0(v67, v69, v71, v135, v134, v72);

    v18 = v141;
  }

  v73 = v136;
  if (v136)
  {
    v74 = enum case for IQImageType.selfie(_:);
    v75 = v140;
    v76 = v140[13];
    v76(v17, enum case for IQImageType.selfie(_:), v10);
    v77 = v73;
    v78 = IQImageType.rawValue.getter();
    v135 = v79;
    v136 = v78;
    v80 = v75[1];
    v80(v17, v10);
    v76(v15, v74, v10);
    v81 = sub_1002AF24C(v77, v15);
    v83 = v82;
    v85 = v84;
    v80(v15, v10);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v18;
    sub_10016DCA0(v81, v83, v85, v136, v135, v86);

    v18 = v141;
  }

  v87 = v137;
  if (v137)
  {
    v88 = enum case for IQImageType.liveness(_:);
    v89 = v140;
    v90 = v140[13];
    v90(v17, enum case for IQImageType.liveness(_:), v10);
    v91 = v87;
    v92 = IQImageType.rawValue.getter();
    v136 = v93;
    v137 = v92;
    v94 = v89[1];
    v94(v17, v10);
    v90(v15, v88, v10);
    v95 = sub_1002AF24C(v91, v15);
    v97 = v96;
    v99 = v98;
    v94(v15, v10);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v18;
    sub_10016DCA0(v95, v97, v99, v137, v136, v100);

    v18 = v141;
  }

  v101 = v138;
  if (v138)
  {
    v102 = enum case for IQImageType.passive(_:);
    v103 = v140;
    v104 = v140[13];
    v104(v17, enum case for IQImageType.passive(_:), v10);
    v105 = v101;
    v106 = IQImageType.rawValue.getter();
    v137 = v107;
    v138 = v106;
    v108 = v103[1];
    v108(v17, v10);
    v104(v15, v102, v10);
    v109 = sub_1002AF24C(v105, v15);
    v111 = v110;
    v113 = v112;
    v108(v15, v10);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v18;
    sub_10016DCA0(v109, v111, v113, v138, v137, v114);

    v18 = v141;
  }

  v115 = v139;
  if (v139)
  {
    v116 = enum case for IQImageType.passport(_:);
    v117 = v140;
    v118 = v140[13];
    v118(v17, enum case for IQImageType.passport(_:), v10);
    v119 = v115;
    v120 = IQImageType.rawValue.getter();
    v138 = v121;
    v139 = v120;
    v122 = v117[1];
    v122(v17, v10);
    v118(v15, v116, v10);
    v123 = sub_1002AF24C(v119, v15);
    v125 = v124;
    v127 = v126;
    v122(v15, v10);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v18;
    sub_10016DCA0(v123, v125, v127, v139, v138, v128);

    return v141;
  }

  return v18;
}

uint64_t sub_1002B0860(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IQCType();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  result = __chkstk_darwin(v4);
  v38 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (!v8)
  {
    return result;
  }

  v35 = (v32 + 104);
  v31[2] = v32 + 16;
  v34 = enum case for IQCType.ocrMatch(_:);
  v33 = (v32 + 8);
  for (i = (a1 + 88); ; i += 9)
  {
    if (*(i - 2))
    {
      goto LABEL_5;
    }

    v11 = *i;
    if (!*i)
    {
      goto LABEL_5;
    }

    v12 = *(i - 6);
    v37 = *(i - 3);
    v13 = v38;
    *v38 = *(i - 1);
    v13[1] = v11;
    v14 = v4;
    (*v35)(v13, v34, v4);
    v36 = v12;

    swift_bridgeObjectRetain_n();
    v15 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *a2;
    v17 = v39;
    v18 = a2;
    *a2 = 0x8000000000000000;
    v20 = sub_10003B21C(v13);
    v21 = v17[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v17[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10016F9DC();
      }
    }

    else
    {
      sub_10016679C(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_10003B21C(v38);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v20 = v25;
    }

    v4 = v14;
    v27 = v39;
    if (v24)
    {
      *(v39[7] + 8 * v20) = v37;
    }

    else
    {
      v39[(v20 >> 6) + 8] |= 1 << v20;
      (*(v32 + 16))(v27[6] + *(v32 + 72) * v20, v38, v14);
      *(v27[7] + 8 * v20) = v37;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_19;
      }

      v27[2] = v30;
    }

    (*v33)(v38, v14);
    a2 = v18;
    v10 = *v18;
    *v18 = v27;

LABEL_5:
    if (!--v8)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002B0B40(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IQCType();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  result = __chkstk_darwin(v4);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v36 = *(v32 + 104);
    v37 = v32 + 104;
    v31[1] = v32 + 16;
    v35 = enum case for IQCType.complex(_:);
    v33 = (v32 + 8);
    v34 = a2;
    for (i = (a1 + 56); ; i += 4)
    {
      v12 = *(i - 1);
      v13 = *i;
      v38 = v9;
      v39 = v12;
      v14 = *(i - 2);
      *v8 = *(i - 3);
      v8[1] = v14;
      v15 = v4;
      v36(v8, v35, v4);
      swift_bridgeObjectRetain_n();

      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *a2;
      v18 = v40;
      *a2 = 0x8000000000000000;
      v20 = sub_10003B21C(v8);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      if (v18[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016F9DC();
        }
      }

      else
      {
        sub_10016679C(v23, isUniquelyReferenced_nonNull_native);
        v25 = sub_10003B21C(v8);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_17;
        }

        v20 = v25;
      }

      v4 = v15;
      v27 = v40;
      if (v24)
      {
        *(v40[7] + 8 * v20) = v39;
      }

      else
      {
        v40[(v20 >> 6) + 8] |= 1 << v20;
        (*(v32 + 16))(v27[6] + *(v32 + 72) * v20, v8, v15);
        *(v27[7] + 8 * v20) = v39;
        v28 = v27[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_16;
        }

        v27[2] = v30;
      }

      (*v33)(v8, v15);
      a2 = v34;
      v11 = *v34;
      *v34 = v27;

      v9 = v38 - 1;
      if (v38 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B0DFC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_100007224(&qword_10083F538, &unk_1006DC7A0);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MetricsFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_1002BC3E8(&qword_10083F520, &type metadata accessor for MetricsFlags);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v18 = v28;
  sub_1002BC3E8(&qword_10083F540, &type metadata accessor for MetricsFlags);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  sub_1000B1FC8(v8, v29, &qword_10083F538, &unk_1006DC7A0);
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_1002B1100@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x656E697272756C62 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.blurriness(_:);
  }

  else if (a1 == 0x426563616C70616CLL && a2 == 0xEB0000000072756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.laplaceBlur(_:);
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.exposure(_:);
  }

  else if (a1 == 0x7473694464726163 && a2 == 0xEE006E6F6974726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.cardDistortion(_:);
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.faceToImageRatio(_:);
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDE90 == a2 || (v24 = 0xD000000000000011, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v15 = &enum case for IQCType.faceCenteredRatio(_:);
  }

  else if (a1 == 0x6374695064616568 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.headPitch(_:);
  }

  else if (a1 == 0x6C6C6F5264616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.headRoll(_:);
  }

  else if (a1 == 0x77615964616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.headYaw(_:);
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.blinkingConfidence(_:);
  }

  else if (a1 == v24 && 0x80000001006FDED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = &enum case for IQCType.glassesConfidence(_:);
  }

  else
  {
    v24 = 0xD000000000000014;
    if (a1 == 0xD000000000000014 && 0x80000001006FDEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.sunglassesConfidence(_:);
    }

    else if (a1 == 0xD000000000000012 && 0x80000001006FDF10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.facemaskConfidence(_:);
    }

    else if (a1 == 0xD000000000000012 && 0x80000001006FDF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.headgearConfidence(_:);
    }

    else if (a1 == v24 && 0x80000001006FDF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.lensSmudgeConfidence(_:);
    }

    else if (a1 == 0xD000000000000012 && 0x80000001006FDF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.faceCaptureQuality(_:);
    }

    else if (a1 == 0x746E656D75636F64 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.documentSize(_:);
    }

    else if (a1 == 0xD000000000000010 && 0x80000001006FDF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.documentRotation(_:);
    }

    else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000077656B53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.documentSkew(_:);
    }

    else if (a1 == 0x666972447466656CLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.leftDrift(_:);
    }

    else if (a1 == 0x6972447468676972 && a2 == 0xEA00000000007466 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.rightDrift(_:);
    }

    else if (a1 == 0x74666972447075 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.upDrift(_:);
    }

    else if (a1 == 0x666972446E776F64 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.downDrift(_:);
    }

    else if (a1 == 0x73656361466D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.numFaces(_:);
    }

    else if (a1 == 0x6C6576654C78756CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.luxLevel(_:);
    }

    else if (a1 == 0x6544373134666470 && a2 == 0xEE00646574636574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.pdf417Detected(_:);
    }

    else if (a1 == 0xD000000000000010 && 0x80000001006FDFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = &enum case for IQCType.isAAMVACompliant(_:);
    }

    else
    {
      if ((a1 != 0x754E726575737369 || a2 != 0xEC0000007265626DLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v26 = 0;
        v27 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);

        v26 = 0xD000000000000026;
        v27 = 0x800000010070A580;
        v20._countAndFlagsBits = a1;
        v20._object = a2;
        String.append(_:)(v20);
        v23[1] = v27;
        v24 = v26;
        (*(v11 + 104))(v14, enum case for DIPError.Code.invalidIQCType(_:), v10);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1002BC3E8(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        defaultLogger()();
        DIPRecordError(_:message:log:)();
        (*(v25 + 8))(v9, v6);

        *a3 = a1;
        a3[1] = a2;
        v21 = enum case for IQCType.unknown(_:);
        v22 = type metadata accessor for IQCType();
        (*(*(v22 - 8) + 104))(a3, v21, v22);
      }

      v15 = &enum case for IQCType.issuerNumber(_:);
    }
  }

  v16 = *v15;
  v17 = type metadata accessor for IQCType();
  v18 = *(*(v17 - 8) + 104);

  return v18(a3, v16, v17);
}

uint64_t sub_1002B1CF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x6C61757165 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = &enum case for IQComparator.equal(_:);
  }

  else if (a1 == 0x6C61757145746F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = &enum case for IQComparator.notEqual(_:);
  }

  else if (a1 == 1936942444 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = &enum case for IQComparator.less(_:);
  }

  else if (a1 == 0x72657461657267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = &enum case for IQComparator.greater(_:);
  }

  else if (a1 == 0x617571457373656CLL && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = &enum case for IQComparator.lessEqual(_:);
  }

  else
  {
    if ((a1 != 0x4572657461657267 || a2 != 0xEC0000006C617571) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v21._object = 0x800000010070A540;
      v21._countAndFlagsBits = 0xD000000000000031;
      String.append(_:)(v21);
      v22._countAndFlagsBits = a1;
      v22._object = a2;
      String.append(_:)(v22);
      (*(v12 + 104))(v15, enum case for DIPError.Code.invalidIQComparatorType(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1002BC3E8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v7 + 8))(v10, v6);

      v23 = enum case for IQComparator.unknown(_:);
      v24 = type metadata accessor for IQComparator();
      return (*(*(v24 - 8) + 104))(a3, v23, v24);
    }

    v16 = &enum case for IQComparator.greaterEqual(_:);
  }

  v17 = *v16;
  v18 = type metadata accessor for IQComparator();
  v19 = *(*(v18 - 8) + 104);

  return v19(a3, v17, v18);
}

void sub_1002B2220(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v49 = v1;
  v44[32] = v3;
  v44[30] = v4;
  v6 = v5;
  v7 = v2;
  v44[38] = v2 + 4096;
  v48 = type metadata accessor for ImageQualitySettings();
  v52 = *(v48 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v48);
  v44[42] = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MetricsFlags();
  v50 = *(v45 - 8);
  v10 = *(v50 + 64);
  v11 = __chkstk_darwin(v45);
  v44[37] = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v44[34] = v44 - v14;
  v15 = __chkstk_darwin(v13);
  v44[28] = v44 - v16;
  v17 = __chkstk_darwin(v15);
  v44[26] = v44 - v18;
  v19 = __chkstk_darwin(v17);
  v44[23] = v44 - v20;
  v21 = __chkstk_darwin(v19);
  v44[20] = v44 - v22;
  v23 = __chkstk_darwin(v21);
  v47 = v44 - v24;
  __chkstk_darwin(v23);
  v25 = type metadata accessor for ImageQualityCriteria();
  v51 = *(v25 - 8);
  v26 = *(v51 + 64);
  v27 = __chkstk_darwin(v25);
  v44[35] = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v44[29] = v44 - v30;
  v31 = __chkstk_darwin(v29);
  v44[27] = v44 - v32;
  v33 = __chkstk_darwin(v31);
  v44[24] = v44 - v34;
  v35 = __chkstk_darwin(v33);
  v44[22] = v44 - v36;
  v37 = __chkstk_darwin(v35);
  v44[19] = v44 - v38;
  v39 = __chkstk_darwin(v37);
  __chkstk_darwin(v39);
  v41 = v44 - v40;
  v44[36] = sub_1002BA54C(v6, 0xD00000000000001ALL, 0x80000001006FAE90);
  v44[33] = sub_1002BA54C(v6, 0xD000000000000019, 0x80000001006FAE70);
  v44[31] = sub_1002BA54C(v6, 0x6569666C6573, 0xE600000000000000);
  memcpy(v53, v7 + 530, sizeof(v53));
  v43 = *v7;
  v42 = v7[1];
  v46 = v7;
  v44[21] = v41;
  sub_1002B476C((v7 + 530), v41);
}

void sub_1002B34A4(uint64_t a1)
{
  v34 = v1;
  v2 = __chkstk_darwin(a1);
  v31[29] = v2 + 7420;
  v35 = type metadata accessor for ImageQualitySettings();
  v39 = *(v35 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v35);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MetricsFlags();
  v38 = *(v32 - 8);
  v5 = *(v38 + 64);
  v6 = __chkstk_darwin(v32);
  v31[28] = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v31[25] = v31 - v9;
  v10 = __chkstk_darwin(v8);
  v31[23] = v31 - v11;
  v12 = __chkstk_darwin(v10);
  v31[21] = v31 - v13;
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v15 = type metadata accessor for ImageQualityCriteria();
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v31[26] = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v31[24] = v31 - v21;
  v22 = __chkstk_darwin(v20);
  v31[22] = v31 - v23;
  v24 = __chkstk_darwin(v22);
  v31[20] = v31 - v25;
  v26 = __chkstk_darwin(v24);
  __chkstk_darwin(v26);
  v28 = v31 - v27;
  memcpy(v40, v2 + 530, sizeof(v40));
  v29 = *v2;
  v30 = v2[1];
  v31[27] = v2;
  sub_1002B476C((v2 + 530), v28);
}

void sub_1002B42E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v24 = a2;
  v5 = type metadata accessor for ImageQualitySettings();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v23 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IQCType();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for MetricsFlags();
  v21 = *(v10 - 8);
  v22 = v10;
  v11 = *(v21 + 64);
  v12 = __chkstk_darwin(v10);
  v19 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v20 = type metadata accessor for ImageQualityCriteria();
  v18 = *(v20 - 8);
  v14 = *(v18 + 64);
  v15 = __chkstk_darwin(v20);
  __chkstk_darwin(v15);
  sub_1002B476C(a1, v17 - v16);
}

void sub_1002B476C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v36 = a2;
  v23 = type metadata accessor for Logger();
  v27 = *(v23 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v23);
  v22 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DIPError.Code();
  v26 = *(v21 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v21);
  v20[97] = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for IQComparator();
  v25 = *(v60 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v60);
  v59 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IQCType();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v62 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for IQSignal();
  v61 = *(v58 - 8);
  v11 = *(v61 + 64);
  __chkstk_darwin(v58);
  v57 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for IQACode();
  v24 = *(v46 - 8);
  v13 = *(v24 + 64);
  __chkstk_darwin(v46);
  v45 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for IQComplexSignal();
  v47 = *(v44 - 8);
  v15 = *(v47 + 64);
  __chkstk_darwin(v44);
  v39 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for IQOCRMatchSignal();
  v30 = *(v28 - 8);
  v17 = *(v30 + 64);
  __chkstk_darwin(v28);
  v29 = v20 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ImageQualityCriteria();
  v34 = *(v35 - 8);
  v19 = *(v34 + 64);
  __chkstk_darwin(v35);
  v55 = 0x100000000;
  v54 = 0x100000000;
  v53 = 0x100000000;
  v52 = 0x100000000;
  v51 = 0x100000000;
  v50 = 0x100000000;
  v49 = 0x100000000;
  v48 = 0x100000000;
  v43 = 0x100000000;
  v42 = 0x100000000;
  v41 = 0x100000000;
  v40 = 0x100000000;
  v38 = 0x100000000;
  v37 = 0x100000000;
  v33 = 0x100000000;
  v32 = 0x100000000;
  v31 = 0x100000000;
  v63 = 1;
  ImageQualityCriteria.init(minBlurriness:maxBlurriness:minLaplaceBlur:maxLaplaceBlur:minExposure:maxExposure:minCardDistortion:maxCardDistortion:minFaceToImageRatio:maxFaceToImageRatio:minHeadPitch:maxHeadPitch:minHeadRoll:maxHeadRoll:minHeadYaw:maxHeadYaw:minBlinkingConfidence:maxBlinkingConfidence:minGlassesConfidence:maxGlassesConfidence:minSunglassesConfidence:maxSunglassesConfidence:minFacemaskConfidence:maxFacemaskConfidence:minHeadgearConfidence:maxHeadgearConfidence:minLensSmudgeConfidence:maxLensSmudgeConfidence:minFaceConfidence:maxFaceConfidence:minFaceCaptureQuality:maxFaceCaptureQuality:minDocumentSize:maxDocumentSize:minDocumentRotation:maxDocumentRotation:minDocumentSkew:maxDocumentSkew:maxLeftDrift:maxRightDrift:maxUpDrift:maxDownDrift:minNumFaces:maxNumFaces:minLuxLevel:maxLuxLevel:pdf417Detected:isAAMVACompliant:disableStableRect:issuerNumber:glareEpsilon:glareMinPoints:glareMinIntensity:glareClusterSize:glareDownscaleFactor:ocrKeywords:ocrMatch:complexSignals:dobRepeatCount:doeRepeatCount:d();
}

uint64_t sub_1002B6378@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MetricsFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v81 - v11;
  __chkstk_darwin(v10);
  v14 = &v81 - v13;
  v148[0] = _swiftEmptyArrayStorage;
  sub_1002BC3E8(&qword_10083F520, &type metadata accessor for MetricsFlags);
  sub_100007224(&qword_10083F528, &qword_1006DC798);
  sub_1002BA4C4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  memcpy(v148, a1, 0x41BuLL);
  result = sub_1002BA528(v148);
  if (result == 1)
  {
    return (*(v5 + 32))(a2, v14, v4);
  }

  v118 = a2;
  v16 = v148[4];
  v17 = v148[5];
  v18 = v148[8];
  v19 = v148[9];
  v20 = v148[12];
  v21 = LOBYTE(v148[13]);
  v22 = v148[16];
  v91 = LOBYTE(v148[17]);
  v119 = v148[20];
  v92 = LOBYTE(v148[21]);
  v120 = v148[24];
  v93 = LOBYTE(v148[25]);
  v121 = v148[28];
  v94 = LOBYTE(v148[29]);
  v122 = v148[32];
  v95 = LOBYTE(v148[33]);
  v135 = v148[36];
  v108 = LOBYTE(v148[37]);
  v136 = v148[40];
  v109 = LOBYTE(v148[41]);
  v123 = v148[44];
  v96 = LOBYTE(v148[45]);
  v124 = v148[48];
  v97 = LOBYTE(v148[49]);
  v125 = v148[52];
  v98 = LOBYTE(v148[53]);
  v126 = v148[56];
  v99 = LOBYTE(v148[57]);
  v127 = v148[60];
  v100 = LOBYTE(v148[61]);
  v128 = v148[64];
  v101 = LOBYTE(v148[65]);
  v129 = v148[68];
  v102 = LOBYTE(v148[69]);
  v130 = v148[72];
  v103 = LOBYTE(v148[73]);
  v131 = v148[76];
  v104 = LOBYTE(v148[77]);
  v132 = v148[80];
  v105 = LOBYTE(v148[81]);
  v133 = v148[84];
  v106 = LOBYTE(v148[85]);
  v134 = v148[88];
  v107 = LOBYTE(v148[89]);
  v111 = v148[92];
  v88 = LOBYTE(v148[93]);
  v110 = v148[96];
  v87 = LOBYTE(v148[97]);
  v89 = v148[100];
  v86 = LOBYTE(v148[101]);
  v137 = v148[104];
  v138 = v148[107];
  v146 = v148[118];
  v139 = BYTE1(v148[120]);
  v140 = BYTE2(v148[120]);
  v141 = BYTE3(v148[120]);
  v142 = BYTE4(v148[120]);
  v143 = BYTE5(v148[120]);
  v144 = BYTE6(v148[120]);
  LODWORD(v145) = HIBYTE(v148[120]);
  v147 = v148[122];
  v112 = LOBYTE(v148[125]);
  v113 = LOBYTE(v148[127]);
  v114 = LOBYTE(v148[129]);
  v115 = LOBYTE(v148[131]);
  v116 = BYTE1(v148[131]);
  v117 = BYTE2(v148[131]);
  if (v148[0] != 1 && (v148[1] & 1) != 0)
  {
    v90 = v148[16];
    v85 = LOBYTE(v148[13]);
    v82 = LOBYTE(v148[5]);
    v83 = LOBYTE(v148[9]);
    v84 = v148[8];
    static MetricsFlags.blurriness.getter();
    sub_1002B0DFC(v12, v9);
    v23 = v14;
    v24 = v5;
    v25 = *(v5 + 8);
    v25(v9, v4);
    result = (v25)(v12, v4);
    v17 = v82;
    v19 = v83;
    v18 = v84;
    v21 = v85;
    v22 = v90;
    v5 = v24;
    v14 = v23;
  }

  if (v16 != 1 && (v17 & 1) != 0)
  {
    v90 = v22;
    v85 = v21;
    v26 = v19;
    v84 = v18;
    static MetricsFlags.laplaceBlur.getter();
    sub_1002B0DFC(v12, v9);
    v27 = v5;
    v28 = *(v5 + 8);
    v28(v9, v4);
    result = (v28)(v12, v4);
    v18 = v84;
    v19 = v26;
    LOBYTE(v21) = v85;
    v22 = v90;
    v5 = v27;
  }

  if (v18 != 1 && (v19 & 1) != 0)
  {
    v90 = v22;
    v29 = v21;
    static MetricsFlags.exposure.getter();
    sub_1002B0DFC(v12, v9);
    v30 = v20;
    v31 = *(v5 + 8);
    v31(v9, v4);
    result = (v31)(v12, v4);
    v20 = v30;
    LOBYTE(v21) = v29;
    v22 = v90;
  }

  if (v20 != 1 && (v21 & 1) != 0)
  {
    v32 = v22;
    static MetricsFlags.cardDistortion.getter();
    sub_1002B0DFC(v12, v9);
    v33 = *(v5 + 8);
    v33(v9, v4);
    result = (v33)(v12, v4);
    v22 = v32;
  }

  if (v22 != 1 && (v91 & 1) != 0)
  {
    static MetricsFlags.faceToImageRatio.getter();
    sub_1002B0DFC(v12, v9);
    v34 = *(v5 + 8);
    v34(v9, v4);
    result = (v34)(v12, v4);
  }

  if (v119 != 1 && (v92 & 1) != 0)
  {
    static MetricsFlags.faceCenteredRatio.getter();
    sub_1002B0DFC(v12, v9);
    v35 = *(v5 + 8);
    v35(v9, v4);
    result = (v35)(v12, v4);
  }

  if (v120 != 1 && (v93 & 1) != 0)
  {
    static MetricsFlags.headPitch.getter();
    sub_1002B0DFC(v12, v9);
    v36 = *(v5 + 8);
    v36(v9, v4);
    result = (v36)(v12, v4);
  }

  if (v121 != 1 && (v94 & 1) != 0)
  {
    static MetricsFlags.headRoll.getter();
    sub_1002B0DFC(v12, v9);
    v37 = *(v5 + 8);
    v37(v9, v4);
    result = (v37)(v12, v4);
  }

  if (v122 != 1 && (v95 & 1) != 0)
  {
    static MetricsFlags.headYaw.getter();
    sub_1002B0DFC(v12, v9);
    v38 = *(v5 + 8);
    v38(v9, v4);
    result = (v38)(v12, v4);
  }

  if (v123 != 1 && (v96 & 1) != 0)
  {
    static MetricsFlags.blinkingConfidence.getter();
    sub_1002B0DFC(v12, v9);
    v39 = *(v5 + 8);
    v39(v9, v4);
    result = (v39)(v12, v4);
  }

  if (v124 != 1 && (v97 & 1) != 0)
  {
    static MetricsFlags.glassesConfidence.getter();
    sub_1002B0DFC(v12, v9);
    v40 = *(v5 + 8);
    v40(v9, v4);
    result = (v40)(v12, v4);
  }

  if (v125 != 1 && (v98 & 1) != 0)
  {
    static MetricsFlags.sunglassesConfidence.getter();
    sub_1002B0DFC(v12, v9);
    v41 = *(v5 + 8);
    v41(v9, v4);
    result = (v41)(v12, v4);
  }

  if (v126 != 1 && (v99 & 1) != 0)
  {
    static MetricsFlags.facemaskConfidence.getter();
    sub_1002B0DFC(v12, v9);
    v42 = *(v5 + 8);
    v42(v9, v4);
    result = (v42)(v12, v4);
  }

  if (v127 != 1 && (v100 & 1) != 0)
  {
    static MetricsFlags.headgearConfidence.getter();
    sub_1002B0DFC(v12, v9);
    v43 = *(v5 + 8);
    v43(v9, v4);
    result = (v43)(v12, v4);
  }

  if (v128 != 1 && (v101 & 1) != 0)
  {
    static MetricsFlags.lensSmudgeConfidence.getter();
    sub_1002B0DFC(v12, v9);
    v44 = *(v5 + 8);
    v44(v9, v4);
    result = (v44)(v12, v4);
  }

  if (v129 != 1 && (v102 & 1) != 0)
  {
    static MetricsFlags.faceConfidence.getter();
    sub_1002B0DFC(v12, v9);
    v45 = *(v5 + 8);
    v45(v9, v4);
    result = (v45)(v12, v4);
  }

  if (v130 != 1 && (v103 & 1) != 0)
  {
    static MetricsFlags.faceCaptureQuality.getter();
    sub_1002B0DFC(v12, v9);
    v46 = *(v5 + 8);
    v46(v9, v4);
    result = (v46)(v12, v4);
  }

  if (v131 != 1 && (v104 & 1) != 0)
  {
    static MetricsFlags.documentSize.getter();
    sub_1002B0DFC(v12, v9);
    v47 = *(v5 + 8);
    v47(v9, v4);
    result = (v47)(v12, v4);
  }

  if (v132 != 1 && (v105 & 1) != 0)
  {
    static MetricsFlags.documentRotation.getter();
    sub_1002B0DFC(v12, v9);
    v48 = *(v5 + 8);
    v48(v9, v4);
    result = (v48)(v12, v4);
  }

  if (v133 != 1 && (v106 & 1) != 0)
  {
    static MetricsFlags.documentSkew.getter();
    sub_1002B0DFC(v12, v9);
    v49 = *(v5 + 8);
    v49(v9, v4);
    result = (v49)(v12, v4);
  }

  if (v134 != 1 && (v107 & 1) != 0 || v111 != 1 && (v88 & 1) != 0 || v110 != 1 && (v87 & 1) != 0 || v89 != 1 && (v86 & 1) != 0)
  {
    static MetricsFlags.targetDrift.getter();
    sub_1002B0DFC(v12, v9);
    v50 = *(v5 + 8);
    v50(v9, v4);
    result = (v50)(v12, v4);
  }

  if (v135 != 1 && (v108 & 1) != 0)
  {
    static MetricsFlags.numFaces.getter();
    sub_1002B0DFC(v12, v9);
    v51 = *(v5 + 8);
    v51(v9, v4);
    result = (v51)(v12, v4);
  }

  if (v136 != 1 && (v109 & 1) != 0)
  {
    static MetricsFlags.luxLevel.getter();
    sub_1002B0DFC(v12, v9);
    v52 = *(v5 + 8);
    v52(v9, v4);
    result = (v52)(v12, v4);
  }

  if ((v137 & 0x100) != 0)
  {
    static MetricsFlags.pdf417Detected.getter();
    sub_1002B0DFC(v12, v9);
    v53 = *(v5 + 8);
    v53(v9, v4);
    result = (v53)(v12, v4);
  }

  if ((v138 & 0x100) != 0)
  {
    static MetricsFlags.isAAMVACompliant.getter();
    sub_1002B0DFC(v12, v9);
    v54 = *(v5 + 8);
    v54(v9, v4);
    result = (v54)(v12, v4);
  }

  if (v139 != 2 && (v139 & 1) != 0)
  {
    static MetricsFlags.isAutoCaptured.getter();
    sub_1002B0DFC(v12, v9);
    v55 = *(v5 + 8);
    v55(v9, v4);
    result = (v55)(v12, v4);
  }

  if (v140 != 2 && (v140 & 1) != 0)
  {
    static MetricsFlags.captureTime.getter();
    sub_1002B0DFC(v12, v9);
    v56 = *(v5 + 8);
    v56(v9, v4);
    result = (v56)(v12, v4);
  }

  if (v141 != 2 && (v141 & 1) != 0)
  {
    static MetricsFlags.originalVertices.getter();
    sub_1002B0DFC(v12, v9);
    v57 = *(v5 + 8);
    v57(v9, v4);
    result = (v57)(v12, v4);
  }

  if (v142 != 2 && (v142 & 1) != 0)
  {
    static MetricsFlags.targetVertices.getter();
    sub_1002B0DFC(v12, v9);
    v58 = *(v5 + 8);
    v58(v9, v4);
    result = (v58)(v12, v4);
  }

  if (v143 != 2 && (v143 & 1) != 0)
  {
    static MetricsFlags.fuzzyMatch.getter();
    sub_1002B0DFC(v12, v9);
    v59 = *(v5 + 8);
    v59(v9, v4);
    result = (v59)(v12, v4);
  }

  if (v144 != 2 && (v144 & 1) != 0)
  {
    static MetricsFlags.livenessChute.getter();
    sub_1002B0DFC(v12, v9);
    v60 = *(v5 + 8);
    v60(v9, v4);
    result = (v60)(v12, v4);
  }

  if (v145 != 2 && (v145 & 1) != 0)
  {
    static MetricsFlags.isFlashEnabled.getter();
    sub_1002B0DFC(v12, v9);
    v61 = *(v5 + 8);
    v61(v9, v4);
    result = (v61)(v12, v4);
  }

  if ((v146 & 0x100) != 0)
  {
    static MetricsFlags.glare.getter();
    sub_1002B0DFC(v12, v9);
    v62 = *(v5 + 8);
    v62(v9, v4);
    result = (v62)(v12, v4);
  }

  if (v147)
  {
    v145 = v14;
    v146 = v5;
    v63 = 0;
    v64 = *(v147 + 16);
    v65 = v147 + 96;
    v66 = _swiftEmptyArrayStorage;
LABEL_107:
    v67 = (v65 + 72 * v63);
    while (v64 != v63)
    {
      if (v63 >= v64)
      {
        __break(1u);
LABEL_139:
        __break(1u);
        return result;
      }

      v68 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_139;
      }

      v70 = *v67;
      v67 += 72;
      v69 = v70;
      ++v63;
      if (v70 != 2)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v147 = v65;
        if ((result & 1) == 0)
        {
          result = sub_1003C5294(0, *(v66 + 2) + 1, 1, v66);
          v66 = result;
        }

        v72 = *(v66 + 2);
        v71 = *(v66 + 3);
        if (v72 >= v71 >> 1)
        {
          result = sub_1003C5294((v71 > 1), v72 + 1, 1, v66);
          v66 = result;
        }

        *(v66 + 2) = v72 + 1;
        v66[v72 + 32] = v69 & 1;
        v63 = v68;
        v65 = v147;
        goto LABEL_107;
      }
    }

    v73 = *(v66 + 2);

    v14 = v145;
    v5 = v146;
    if (v73)
    {
      static MetricsFlags.ocrMatchData.getter();
      sub_1002B0DFC(v12, v9);
      v74 = *(v5 + 8);
      v74(v9, v4);
      v74(v12, v4);
    }
  }

  if (v112 != 2 && (v112 & 1) != 0)
  {
    static MetricsFlags.dobRepeatCount.getter();
    sub_1002B0DFC(v12, v9);
    v75 = *(v5 + 8);
    v75(v9, v4);
    v75(v12, v4);
  }

  if (v113 != 2 && (v113 & 1) != 0)
  {
    static MetricsFlags.doeRepeatCount.getter();
    sub_1002B0DFC(v12, v9);
    v76 = *(v5 + 8);
    v76(v9, v4);
    v76(v12, v4);
  }

  if (v114 != 2 && (v114 & 1) != 0)
  {
    static MetricsFlags.docNumberRepeatCount.getter();
    sub_1002B0DFC(v12, v9);
    v77 = *(v5 + 8);
    v77(v9, v4);
    v77(v12, v4);
  }

  if (v115 != 2 && (v115 & 1) != 0)
  {
    static MetricsFlags.issuerNumberRepeatCount.getter();
    sub_1002B0DFC(v12, v9);
    v78 = *(v5 + 8);
    v78(v9, v4);
    v78(v12, v4);
  }

  if (v116 != 2 && (v116 & 1) != 0)
  {
    static MetricsFlags.mrzScanResult.getter();
    sub_1002B0DFC(v12, v9);
    v79 = *(v5 + 8);
    v79(v9, v4);
    v79(v12, v4);
  }

  if (v117 != 2 && (v117 & 1) != 0)
  {
    static MetricsFlags.ageOfDocument.getter();
    sub_1002B0DFC(v12, v9);
    v80 = *(v5 + 8);
    v80(v9, v4);
    v80(v12, v4);
  }

  return (*(v5 + 32))(v118, v14, v4);
}

uint64_t sub_1002B76C0(uint64_t a1)
{
  v3 = type metadata accessor for IQACode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v15 = v1;
      v16 = _swiftEmptyArrayStorage;
      sub_100172D08(0, v8, 0);
      v9 = v16;
      v10 = (a1 + 40);
      do
      {
        sub_1002B7864(*(v10 - 1), *v10, v7);
        v16 = v9;
        v12 = v9[2];
        v11 = v9[3];
        if (v12 >= v11 >> 1)
        {
          sub_100172D08(v11 > 1, v12 + 1, 1);
          v9 = v16;
        }

        v9[2] = v12 + 1;
        (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
        v10 += 2;
        --v8;
      }

      while (v8);
    }
  }

  v13 = sub_1002B8B4C();

  return v13;
}

uint64_t sub_1002B7864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1 == 1936941424 && a2 == 0xE400000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.pass(_:);
LABEL_7:
    v8 = *v7;
    v9 = type metadata accessor for IQACode();
    v10 = *(*(v9 - 8) + 104);

    return v10(a3, v8, v9);
  }

  if (a1 == 0x656E697272756C62 && a2 == 0xED0000776F4C7373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.blurrinessLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x656E697272756C62 && a2 == 0xEE00686769487373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.blurrinessHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x426563616C70616CLL && a2 == 0xEE00776F4C72756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.laplaceBlurLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x426563616C70616CLL && a2 == 0xEF6867694872756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.laplaceBlurHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x657275736F707865 && a2 == 0xEB00000000776F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.exposureLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x657275736F707865 && a2 == 0xEC00000068676948 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.exposureHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x800000010070A150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.cardDistortionLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000012 && 0x800000010070A170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.cardDistortionHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x800000010070A190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceToImageRatioLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x800000010070A1B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceToImageRatioHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x800000010070A1D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceCenteredRatioLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A1F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceCenteredRatioHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6374695064616568 && a2 == 0xEC000000776F4C68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headPitchLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6374695064616568 && a2 == 0xED00006867694868 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headPitchHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6C6C6F5264616568 && a2 == 0xEB00000000776F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headRollLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6C6C6F5264616568 && a2 == 0xEC00000068676948 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headRollHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x4C77615964616568 && a2 == 0xEA0000000000776FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headYawLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x4877615964616568 && a2 == 0xEB00000000686769 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headYawHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.blinkingConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x800000010070A230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.blinkingConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x800000010070A250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.glassesConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.glassesConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000017 && 0x800000010070A290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.sunglassesConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000018 && 0x800000010070A2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.sunglassesConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A2D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.facemaskConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x800000010070A2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.facemaskConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headgearConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x800000010070A330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.headgearConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000018 && 0x800000010070A350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.lensSmudgeConfidenceHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000017 && 0x800000010070A370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.lensSmudgeConfidenceLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000015 && 0x800000010070A390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceCaptureQualityLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000016 && 0x800000010070A3B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.faceCaptureQualityHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x746E656D75636F64 && a2 == 0xEF776F4C657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentSizeLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x800000010070A3D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentSizeHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x800000010070A3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentRotatedLeft(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x800000010070A410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentRotatedRight(_:);
    goto LABEL_7;
  }

  if (a1 == 0x746E656D75636F64 && a2 == 0xEE00646577656B53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.documentSkewed(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x800000010070A430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.targetTooFarLeft(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x800000010070A450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.targetTooFarRight(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6F54746567726174 && a2 == 0xEE0070557261466FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.targetTooFarUp(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x800000010070A470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.targetTooFarDown(_:);
    goto LABEL_7;
  }

  if (a1 == 0x73656361466D756ELL && a2 == 0xEB00000000776F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.numFacesLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x73656361466D756ELL && a2 == 0xEC00000068676948 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.numFacesHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6C6576654C78756CLL && a2 == 0xEB00000000776F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.luxLevelLow(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6C6576654C78756CLL && a2 == 0xEC00000068676948 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.luxLevelHigh(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6F4E373134666470 && a2 == 0xEE00646E756F4674 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.pdf417NotFound(_:);
    goto LABEL_7;
  }

  if (a1 == 0x6F46373134666470 && a2 == 0xEB00000000646E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.pdf417Found(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x800000010070A490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.notAAMVACompliant(_:);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x80000001006FDFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.isAAMVACompliant(_:);
    goto LABEL_7;
  }

  if (a1 == 0x73694D6574617473 && a2 == 0xED0000686374616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.stateMismatch(_:);
    goto LABEL_7;
  }

  if (a1 == 0x756C636E6F636E69 && a2 == 0xEC00000065766973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = &enum case for IQACode.inconclusive(_:);
    goto LABEL_7;
  }

  *a3 = a1;
  a3[1] = a2;
  v12 = enum case for IQACode.complex(_:);
  v13 = type metadata accessor for IQACode();
  (*(*(v13 - 8) + 104))(a3, v12, v13);
}

uint64_t sub_1002B8868()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = *(v0 + 48);
  type metadata accessor for ImageQualitySettings();
  sub_1002BC3E8(&qword_10083D510, &type metadata accessor for ImageQualitySettings);
  return dispatch thunk of JSONEncoder.encode<A>(_:)();
}

uint64_t sub_1002B8B4C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = *(v0 + 48);
  sub_100007224(&qword_10083D4E0, &qword_1006DC790);
  sub_1001C575C();
  return dispatch thunk of JSONEncoder.encode<A>(_:)();
}

uint64_t sub_1002B8E10()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

Swift::Int sub_1002B8E6C(void **a1)
{
  v2 = *(sub_100007224(&qword_10083C1C8, &qword_1006DA768) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003BD1E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1002B8F20(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1002B8F20(unint64_t *a1)
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
        sub_100007224(&qword_10083C1C8, &qword_1006DA768);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100007224(&qword_10083C1C8, &qword_1006DA768) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002B92A0(v8, v9, a1, v4);
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
    return sub_1002B9064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002B9064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v40 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v31 - v17;
  v33 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v38 = -v20;
    v39 = v19;
    v22 = a1 - a3;
    v32 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v36 = v21;
    v37 = a3;
    v34 = v23;
    v35 = v22;
    while (1)
    {
      sub_1002BC430(v23, v18);
      sub_1002BC430(v21, v14);
      v24 = *(v8 + 48);
      v25 = v8;
      v26 = *&v18[v24];
      v27 = *&v14[v24];
      sub_1002BC4A0(v14);
      result = sub_1002BC4A0(v18);
      v28 = v26 < v27;
      v8 = v25;
      if (!v28)
      {
LABEL_4:
        a3 = v37 + 1;
        v21 = v36 + v32;
        v22 = v35 - 1;
        v23 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v29 = v40;
      sub_1000B1FC8(v23, v40, &qword_10083C1C8, &qword_1006DA768);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000B1FC8(v29, v21, &qword_10083C1C8, &qword_1006DA768);
      v21 += v38;
      v23 += v38;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B92A0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v125 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v120 = *(v125 - 8);
  v8 = *(v120 + 64);
  v9 = __chkstk_darwin(v125);
  v115 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v122 = &v108 - v12;
  v13 = __chkstk_darwin(v11);
  v124 = &v108 - v14;
  result = __chkstk_darwin(v13);
  v123 = &v108 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_95:
    a4 = *v111;
    if (!*v111)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_97:
      v126 = v19;
      v104 = *(v19 + 2);
      if (v104 >= 2)
      {
        while (*a3)
        {
          v105 = *&v19[16 * v104];
          v106 = *&v19[16 * v104 + 24];
          sub_1002B9B34(*a3 + *(v120 + 72) * v105, *a3 + *(v120 + 72) * *&v19[16 * v104 + 16], *a3 + *(v120 + 72) * v106, a4);
          if (v5)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1003BBEA4(v19);
          }

          if (v104 - 2 >= *(v19 + 2))
          {
            goto LABEL_121;
          }

          v107 = &v19[16 * v104];
          *v107 = v105;
          *(v107 + 1) = v106;
          v126 = v19;
          result = sub_1003BBE18(v104 - 1);
          v19 = v126;
          v104 = *(v126 + 2);
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_1003BBEA4(v19);
    v19 = result;
    goto LABEL_97;
  }

  v108 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v112 = a3;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v110 = v5;
      v21 = *a3;
      v22 = *(v120 + 72);
      a4 = *a3 + v22 * (v18 + 1);
      v23 = v123;
      sub_1002BC430(a4, v123);
      v24 = v124;
      sub_1002BC430(v21 + v22 * v18, v124);
      v25 = *(v125 + 48);
      v26 = *(v23 + v25);
      v118 = *(v24 + v25);
      v119 = v26;
      sub_1002BC4A0(v24);
      result = sub_1002BC4A0(v23);
      v109 = v18;
      v27 = v18 + 2;
      v121 = v22;
      v28 = v21 + v22 * (v18 + 2);
      v117 = v19;
      while (v17 != v27)
      {
        v29 = v119 < v118;
        v30 = v123;
        sub_1002BC430(v28, v123);
        v31 = v17;
        v32 = v124;
        sub_1002BC430(a4, v124);
        v33 = *(v125 + 48);
        v34 = *(v30 + v33);
        v35 = *(v32 + v33);
        v36 = v32;
        v17 = v31;
        sub_1002BC4A0(v36);
        result = sub_1002BC4A0(v30);
        v37 = v29 ^ (v34 >= v35);
        v19 = v117;
        ++v27;
        v28 += v121;
        a4 += v121;
        if ((v37 & 1) == 0)
        {
          v17 = v27 - 1;
          break;
        }
      }

      v20 = v109;
      v5 = v110;
      a3 = v112;
      if (v119 < v118)
      {
        if (v17 < v109)
        {
          goto LABEL_124;
        }

        if (v109 < v17)
        {
          v38 = v121 * (v17 - 1);
          v39 = v17 * v121;
          v40 = v17;
          v41 = v109;
          v42 = v109 * v121;
          do
          {
            if (v41 != --v40)
            {
              a4 = *v112;
              if (!*v112)
              {
                goto LABEL_130;
              }

              sub_1000B1FC8(a4 + v42, v115, &qword_10083C1C8, &qword_1006DA768);
              if (v42 < v38 || a4 + v42 >= a4 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000B1FC8(v115, a4 + v38, &qword_10083C1C8, &qword_1006DA768);
            }

            ++v41;
            v38 -= v121;
            v39 -= v121;
            v42 += v121;
          }

          while (v41 < v40);
          v20 = v109;
          v5 = v110;
          a3 = v112;
          v19 = v117;
        }
      }
    }

    v43 = a3[1];
    if (v17 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v17, v20))
    {
      goto LABEL_123;
    }

    if (v17 - v20 >= v108)
    {
LABEL_32:
      v18 = v17;
      if (v17 < v20)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, v108))
    {
      goto LABEL_125;
    }

    if (v20 + v108 >= v43)
    {
      v44 = a3[1];
    }

    else
    {
      v44 = v20 + v108;
    }

    if (v44 < v20)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v17 == v44)
    {
      goto LABEL_32;
    }

    v117 = v19;
    v109 = v20;
    v110 = v5;
    v90 = *a3;
    v91 = *(v120 + 72);
    v92 = *a3 + v91 * (v17 - 1);
    v93 = -v91;
    v94 = v20 - v17;
    v113 = v91;
    v114 = v44;
    a4 = v90 + v17 * v91;
    v95 = v125;
LABEL_86:
    v121 = v17;
    v116 = a4;
    v118 = v94;
    v119 = v92;
    v96 = v92;
LABEL_87:
    v97 = v123;
    sub_1002BC430(a4, v123);
    v98 = v124;
    sub_1002BC430(v96, v124);
    v99 = *(v95 + 48);
    v100 = *(v97 + v99);
    v101 = *(v98 + v99);
    sub_1002BC4A0(v98);
    result = sub_1002BC4A0(v97);
    if (v100 < v101)
    {
      break;
    }

    v95 = v125;
LABEL_85:
    v17 = v121 + 1;
    v18 = v114;
    v92 = v119 + v113;
    v94 = v118 - 1;
    a4 = v116 + v113;
    if (v121 + 1 != v114)
    {
      goto LABEL_86;
    }

    v20 = v109;
    v5 = v110;
    a3 = v112;
    v19 = v117;
    if (v114 < v109)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003BC0AC(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v46 = *(v19 + 2);
    v45 = *(v19 + 3);
    a4 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1003BC0AC((v45 > 1), v46 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v47 = &v19[16 * v46];
    *(v47 + 4) = v20;
    *(v47 + 5) = v18;
    v48 = *v111;
    if (!*v111)
    {
      goto LABEL_132;
    }

    if (v46)
    {
      while (2)
      {
        v49 = a4 - 1;
        if (a4 >= 4)
        {
          v54 = &v19[16 * a4 + 32];
          v55 = *(v54 - 64);
          v56 = *(v54 - 56);
          v60 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          if (v60)
          {
            goto LABEL_109;
          }

          v59 = *(v54 - 48);
          v58 = *(v54 - 40);
          v60 = __OFSUB__(v58, v59);
          v52 = v58 - v59;
          v53 = v60;
          if (v60)
          {
            goto LABEL_110;
          }

          v61 = &v19[16 * a4];
          v63 = *v61;
          v62 = *(v61 + 1);
          v60 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v60)
          {
            goto LABEL_112;
          }

          v60 = __OFADD__(v52, v64);
          v65 = v52 + v64;
          if (v60)
          {
            goto LABEL_115;
          }

          if (v65 >= v57)
          {
            v83 = &v19[16 * v49 + 32];
            v85 = *v83;
            v84 = *(v83 + 1);
            v60 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v60)
            {
              goto LABEL_119;
            }

            if (v52 < v86)
            {
              v49 = a4 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v53)
            {
              goto LABEL_111;
            }

            v66 = &v19[16 * a4];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_114;
            }

            v72 = &v19[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_118;
            }

            if (v70 + v75 < v52)
            {
              goto LABEL_66;
            }

            if (v52 < v75)
            {
              v49 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v50 = *(v19 + 4);
            v51 = *(v19 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
            goto LABEL_52;
          }

          v76 = &v19[16 * a4];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_66:
          if (v71)
          {
            goto LABEL_113;
          }

          v79 = &v19[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_116;
          }

          if (v82 < v70)
          {
            break;
          }
        }

        v87 = v49 - 1;
        if (v49 - 1 >= a4)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        a4 = *&v19[16 * v87 + 32];
        v88 = *&v19[16 * v49 + 40];
        sub_1002B9B34(*a3 + *(v120 + 72) * a4, *a3 + *(v120 + 72) * *&v19[16 * v49 + 32], *a3 + *(v120 + 72) * v88, v48);
        if (v5)
        {
        }

        if (v88 < a4)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1003BBEA4(v19);
        }

        if (v87 >= *(v19 + 2))
        {
          goto LABEL_108;
        }

        v89 = &v19[16 * v87];
        *(v89 + 4) = a4;
        *(v89 + 5) = v88;
        v126 = v19;
        result = sub_1003BBE18(v49);
        v19 = v126;
        a4 = *(v126 + 2);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_95;
    }
  }

  if (v90)
  {
    v102 = v122;
    sub_1000B1FC8(a4, v122, &qword_10083C1C8, &qword_1006DA768);
    v95 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000B1FC8(v102, v96, &qword_10083C1C8, &qword_1006DA768);
    v96 += v93;
    a4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_1002B9B34(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v56 = &v49 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v16 = a2;
  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v15 != -1)
  {
    v18 = (a2 - a1) / v15;
    v60 = a1;
    v19 = a4;
    v59 = a4;
    if (v18 < v17 / v15)
    {
      v20 = v18 * v15;
      if (a4 < a1 || a1 + v20 <= a4)
      {
        v21 = v16;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        v21 = v16;
        swift_arrayInitWithTakeBackToFront();
      }

      v16 = v21;
      v19 = a4;
LABEL_17:
      v53 = v19 + v20;
      v58 = v19 + v20;
      if (v20 >= 1 && v16 < a3)
      {
        v52 = a3;
        do
        {
          v26 = v15;
          v27 = v56;
          v28 = v16;
          sub_1002BC430(v16, v56);
          v29 = v57;
          sub_1002BC430(v19, v57);
          v30 = v8;
          v31 = *(v8 + 48);
          v32 = *(v27 + v31);
          v33 = *(v29 + v31);
          sub_1002BC4A0(v29);
          sub_1002BC4A0(v27);
          if (v32 >= v33)
          {
            v55 = v28;
            v15 = v26;
            if (a1 < v19 || a1 >= v19 + v26)
            {
              v8 = v30;
              swift_arrayInitWithTakeFrontToBack();
              v34 = v52;
            }

            else
            {
              v34 = v52;
              v8 = v30;
              if (a1 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v59 = v19 + v26;
            v19 += v26;
            v16 = v55;
          }

          else
          {
            v54 = v19;
            v15 = v26;
            if (a1 < v28 || a1 >= v28 + v26)
            {
              v8 = v30;
              swift_arrayInitWithTakeFrontToBack();
              v16 = v28 + v26;
              v34 = v52;
            }

            else
            {
              v34 = v52;
              v8 = v30;
              if (a1 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v16 = v28 + v26;
            }

            v19 = v54;
          }

          a1 += v15;
          v60 = a1;
        }

        while (v19 < v53 && v16 < v34);
      }

LABEL_60:
      sub_1003BBEB8(&v60, &v59, &v58);
      return 1;
    }

    v22 = v8;
    v23 = v17 / v15 * v15;
    if (a4 < v16 || v16 + v23 <= a4)
    {
      v24 = v16;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v16)
      {
LABEL_41:
        v35 = v19 + v23;
        if (v23 >= 1)
        {
          v36 = -v15;
          v37 = v19 + v23;
          v54 = v19;
          v50 = v36;
          v51 = a1;
          do
          {
            v49 = v35;
            v38 = v16 + v36;
            v55 = v16 + v36;
            v53 = v16;
            while (1)
            {
              if (v16 <= a1)
              {
                v60 = v16;
                v58 = v49;
                goto LABEL_60;
              }

              v39 = a3;
              v52 = v35;
              a3 += v36;
              v40 = v37 + v36;
              v41 = v56;
              sub_1002BC430(v37 + v36, v56);
              v42 = v57;
              sub_1002BC430(v38, v57);
              v43 = v22;
              v44 = *(v22 + 48);
              v45 = *(v41 + v44);
              v46 = *(v42 + v44);
              sub_1002BC4A0(v42);
              sub_1002BC4A0(v41);
              if (v45 < v46)
              {
                break;
              }

              v35 = v40;
              if (v39 < v37 || a3 >= v37)
              {
                v22 = v43;
                swift_arrayInitWithTakeFrontToBack();
                v36 = v50;
                a1 = v51;
              }

              else
              {
                v22 = v43;
                v36 = v50;
                a1 = v51;
                if (v39 != v37)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v37 = v40;
              v38 = v55;
              v16 = v53;
              if (v40 <= v54)
              {
                goto LABEL_58;
              }
            }

            if (v39 < v53 || a3 >= v53)
            {
              v48 = v55;
              v22 = v43;
              swift_arrayInitWithTakeFrontToBack();
              v16 = v48;
              a1 = v51;
              v35 = v52;
              v36 = v50;
            }

            else
            {
              v22 = v43;
              v16 = v55;
              a1 = v51;
              v35 = v52;
              v36 = v50;
              if (v39 != v53)
              {
                v47 = v55;
                swift_arrayInitWithTakeBackToFront();
                v16 = v47;
              }
            }
          }

          while (v37 > v54);
        }

LABEL_58:
        v60 = v16;
        v58 = v35;
        goto LABEL_60;
      }

      v24 = v16;
      swift_arrayInitWithTakeBackToFront();
    }

    v16 = v24;
    v19 = a4;
    goto LABEL_41;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1002BA048(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002BA1A8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1002BA44C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1002BA1A8(unint64_t *a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v31 = a1;
  v41 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v4 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v40 = &v30 - v5;
  v39 = type metadata accessor for IQCType();
  v6 = *(*(v39 - 8) + 64);
  result = __chkstk_darwin(v39);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v8;
  v10 = 0;
  v42 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v32 = 0;
  v33 = (v14 + 63) >> 6;
  v36 = v8 + 16;
  v34 = v12;
  v35 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v42;
    v22 = v37;
    v23 = v38;
    v24 = *(v38 + 16);
    v25 = v39;
    v24(v37, v42[6] + *(v38 + 72) * v20, v39);
    v26 = v20;
    v27 = *(v21[7] + 8 * v20);
    v28 = v40;
    v24(v40, v22, v25);
    *(v28 + *(v41 + 48)) = v27;
    sub_1002BC4A0(v28);
    result = (*(v23 + 8))(v22, v25);
    v16 = v43;
    if ((v27 & 0x8000000000000000) == 0)
    {
      *(v31 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return sub_1003D3A34(v31, v30, v32, v42);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v33)
    {
      return sub_1003D3A34(v31, v30, v32, v42);
    }

    v19 = v34[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v43 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002BA44C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1002BA1A8(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_1002BA4C4()
{
  result = qword_10083F530;
  if (!qword_10083F530)
  {
    sub_10000B870(&qword_10083F528, &qword_1006DC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083F530);
  }

  return result;
}

uint64_t sub_1002BA528(uint64_t a1)
{
  v1 = *(a1 + 976);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1002BA828(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  if (a1 >= 2)
  {
    if (*(a1 + 16) == 2)
    {
      v11 = *(a1 + 32);
      if (v11 <= *(a1 + 36))
      {
        v13 = 0;
        v12 = LODWORD(v11);
        goto LABEL_6;
      }
    }

    (*(v10 + 104))(&v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for DIPError.Code.invalidImageQualitySettings(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002BC3E8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v3 + 8))(v6, v2);
  }

  v12 = 0;
  v13 = 1;
LABEL_6:
  v15[12] = v13;
  v15[8] = v13;
  return v12 | (v13 << 32);
}

unint64_t sub_1002BAAF4(unint64_t a1)
{
  result = sub_1002BA828(a1);
  if ((result & 0x100000000) != 0 || (v2 & 0x100000000) != 0)
  {
    return 0;
  }

  if (*&result <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*&result >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0x7F800000) == 0x7F800000 || (v2 & 0x7F800000) == 0x7F800000)
  {
    goto LABEL_13;
  }

  if (*&v2 > -9.2234e18)
  {
    if (*&v2 < 9.2234e18)
    {
      return *&result;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_1002BABC0(const void *a1)
{
  v334 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  v2 = *(v334 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v334);
  v6 = &v221 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v305 = &v221 - v8;
  __chkstk_darwin(v7);
  v332 = &v221 - v9;
  v10 = type metadata accessor for IQCType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v317 = &v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v328 = &v221 - v16;
  v17 = __chkstk_darwin(v15);
  v336 = &v221 - v18;
  v19 = __chkstk_darwin(v17);
  v331 = &v221 - v20;
  v21 = __chkstk_darwin(v19);
  v330 = &v221 - v22;
  v23 = __chkstk_darwin(v21);
  v329 = &v221 - v24;
  v25 = __chkstk_darwin(v23);
  v327 = &v221 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v221 - v28;
  v30 = __chkstk_darwin(v27);
  v315 = &v221 - v31;
  v32 = __chkstk_darwin(v30);
  v326 = &v221 - v33;
  v34 = __chkstk_darwin(v32);
  v325 = &v221 - v35;
  v36 = __chkstk_darwin(v34);
  v324 = &v221 - v37;
  v38 = __chkstk_darwin(v36);
  v314 = &v221 - v39;
  v40 = __chkstk_darwin(v38);
  v323 = &v221 - v41;
  v42 = __chkstk_darwin(v40);
  v313 = &v221 - v43;
  v44 = __chkstk_darwin(v42);
  v322 = &v221 - v45;
  v46 = __chkstk_darwin(v44);
  v312 = &v221 - v47;
  v48 = __chkstk_darwin(v46);
  v321 = &v221 - v49;
  v50 = __chkstk_darwin(v48);
  v311 = &v221 - v51;
  v52 = __chkstk_darwin(v50);
  v320 = &v221 - v53;
  v54 = __chkstk_darwin(v52);
  v310 = &v221 - v55;
  v56 = __chkstk_darwin(v54);
  v319 = &v221 - v57;
  v58 = __chkstk_darwin(v56);
  v309 = &v221 - v59;
  v60 = __chkstk_darwin(v58);
  v318 = &v221 - v61;
  v62 = __chkstk_darwin(v60);
  v308 = &v221 - v63;
  v64 = __chkstk_darwin(v62);
  v66 = &v221 - v65;
  v67 = __chkstk_darwin(v64);
  v69 = &v221 - v68;
  __chkstk_darwin(v67);
  v71 = &v221 - v70;
  memcpy(v339, a1, 0x41BuLL);
  if (sub_1002BA528(v339) == 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v316 = v29;
  v304 = v2;
  v72 = v339[0];
  v73 = v339[2];
  v306 = v339[6];
  v222 = LOBYTE(v339[3]);
  v223 = LOBYTE(v339[7]);
  v250 = v339[4];
  v251 = v339[8];
  v252 = v339[10];
  v253 = v339[12];
  v307 = v339[14];
  v224 = LOBYTE(v339[11]);
  v225 = LOBYTE(v339[15]);
  v254 = v339[16];
  v255 = v339[18];
  v256 = v339[20];
  v257 = v339[22];
  v226 = LOBYTE(v339[19]);
  v227 = LOBYTE(v339[23]);
  v258 = v339[24];
  v259 = v339[26];
  v260 = v339[28];
  v261 = v339[30];
  v228 = LOBYTE(v339[27]);
  v229 = LOBYTE(v339[31]);
  v262 = v339[32];
  v263 = v339[34];
  v292 = v339[36];
  v293 = v339[38];
  v294 = v339[40];
  v296 = v339[42];
  v245 = LOBYTE(v339[39]);
  v246 = LOBYTE(v339[43]);
  v264 = v339[44];
  v265 = v339[46];
  v230 = LOBYTE(v339[35]);
  v231 = LOBYTE(v339[47]);
  v266 = v339[48];
  v267 = v339[50];
  v268 = v339[52];
  v269 = v339[54];
  v232 = LOBYTE(v339[51]);
  v233 = LOBYTE(v339[55]);
  v270 = v339[56];
  v271 = v339[58];
  v272 = v339[60];
  v273 = v339[62];
  v234 = LOBYTE(v339[59]);
  v235 = LOBYTE(v339[63]);
  v274 = v339[64];
  v275 = v339[66];
  v276 = v339[72];
  v277 = v339[74];
  v236 = LOBYTE(v339[67]);
  v237 = LOBYTE(v339[75]);
  v278 = v339[76];
  v279 = v339[78];
  v280 = v339[80];
  v281 = v339[82];
  v238 = LOBYTE(v339[79]);
  v239 = LOBYTE(v339[83]);
  v282 = v339[84];
  v283 = v339[86];
  v284 = v339[88];
  v285 = v339[90];
  v240 = LOBYTE(v339[87]);
  v241 = LOBYTE(v339[91]);
  v286 = v339[92];
  v287 = v339[94];
  v288 = v339[96];
  v289 = v339[98];
  v242 = LOBYTE(v339[95]);
  v243 = LOBYTE(v339[99]);
  v290 = v339[100];
  v291 = v339[102];
  v244 = LOBYTE(v339[103]);
  v295 = v339[104];
  v297 = v339[105];
  v298 = v339[107];
  v299 = v339[108];
  v247 = LOBYTE(v339[106]);
  v248 = LOBYTE(v339[109]);
  v300 = v339[118];
  v301 = v339[119];
  v249 = LOBYTE(v339[120]);
  v302 = v339[122];
  v303 = v339[123];
  v338 = sub_10003DC5C(_swiftEmptyArrayStorage);
  v335 = v11;
  v74 = *(v11 + 104);
  v333 = v10;
  v75 = v74;
  v74(v71, enum case for IQCType.blurriness(_:), v10);
  if (v72 == 1 || (v222 & 1) != 0)
  {
    v73 = -1;
  }

  v76 = v338;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v76;
  sub_10016D0C0(v73, v71, isUniquelyReferenced_nonNull_native);
  v78 = *(v335 + 8);
  v79 = v71;
  v80 = v333;
  v78(v79, v333);
  v338 = v337[0];
  v75(v69, enum case for IQCType.laplaceBlur(_:), v80);
  if (v250 == 1 || (v223 & 1) != 0)
  {
    v306 = -1;
  }

  v81 = v338;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v81;
  sub_10016D0C0(v306, v69, v82);
  v78(v69, v80);
  v338 = v337[0];
  v75(v66, enum case for IQCType.exposure(_:), v80);
  v83 = v252;
  if (v251 == 1 || (v224 & 1) != 0)
  {
    v83 = -1;
  }

  v84 = v338;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v84;
  sub_10016D0C0(v83, v66, v85);
  v78(v66, v80);
  v338 = v337[0];
  v86 = v308;
  v75(v308, enum case for IQCType.cardDistortion(_:), v80);
  v87 = v255;
  if (v253 == 1 || (v225 & 1) != 0)
  {
    v307 = -1;
  }

  v88 = v338;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v88;
  sub_10016D0C0(v307, v86, v89);
  v78(v86, v80);
  v338 = v337[0];
  v75(v318, enum case for IQCType.faceToImageRatio(_:), v80);
  v90 = v309;
  if (v254 == 1 || (v226 & 1) != 0)
  {
    v87 = -1;
  }

  v91 = v338;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v91;
  v93 = v87;
  v94 = v318;
  sub_10016D0C0(v93, v318, v92);
  v78(v94, v80);
  v338 = v337[0];
  v75(v90, enum case for IQCType.faceCenteredRatio(_:), v80);
  v95 = v257;
  if (v256 == 1 || (v227 & 1) != 0)
  {
    v95 = -1;
  }

  v96 = v338;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v96;
  sub_10016D0C0(v95, v90, v97);
  v78(v90, v80);
  v338 = v337[0];
  v75(v319, enum case for IQCType.headPitch(_:), v80);
  v98 = v259;
  if (v258 == 1 || (v228 & 1) != 0)
  {
    v98 = -1;
  }

  v99 = v338;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v99;
  v101 = v98;
  v102 = v319;
  sub_10016D0C0(v101, v319, v100);
  v78(v102, v80);
  v338 = v337[0];
  v103 = v310;
  v75(v310, enum case for IQCType.headRoll(_:), v80);
  v104 = v261;
  if (v260 == 1 || (v229 & 1) != 0)
  {
    v104 = -1;
  }

  v105 = v338;
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v105;
  sub_10016D0C0(v104, v103, v106);
  v78(v103, v80);
  v338 = v337[0];
  v75(v320, enum case for IQCType.headYaw(_:), v80);
  v107 = v263;
  if (v262 == 1 || (v230 & 1) != 0)
  {
    v107 = -1;
  }

  v108 = v338;
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v108;
  v110 = v320;
  sub_10016D0C0(v107, v320, v109);
  v78(v110, v80);
  v338 = v337[0];
  v111 = v311;
  v75(v311, enum case for IQCType.blinkingConfidence(_:), v80);
  v112 = v265;
  if (v264 == 1 || (v231 & 1) != 0)
  {
    v112 = -1;
  }

  v113 = v338;
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v113;
  sub_10016D0C0(v112, v111, v114);
  v78(v111, v80);
  v338 = v337[0];
  v75(v321, enum case for IQCType.glassesConfidence(_:), v80);
  v115 = v267;
  if (v266 == 1 || (v232 & 1) != 0)
  {
    v115 = -1;
  }

  v116 = v338;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v116;
  v118 = v115;
  v119 = v321;
  sub_10016D0C0(v118, v321, v117);
  v78(v119, v80);
  v338 = v337[0];
  v120 = v312;
  v75(v312, enum case for IQCType.sunglassesConfidence(_:), v80);
  v121 = v269;
  if (v268 == 1 || (v233 & 1) != 0)
  {
    v121 = -1;
  }

  v122 = v338;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v122;
  sub_10016D0C0(v121, v120, v123);
  v78(v120, v80);
  v338 = v337[0];
  v75(v322, enum case for IQCType.facemaskConfidence(_:), v80);
  v124 = v271;
  v125 = v273;
  if (v270 == 1 || (v234 & 1) != 0)
  {
    v124 = -1;
  }

  v126 = v338;
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v126;
  v128 = v124;
  v129 = v322;
  sub_10016D0C0(v128, v322, v127);
  v78(v129, v80);
  v338 = v337[0];
  v130 = v313;
  v75(v313, enum case for IQCType.headgearConfidence(_:), v80);
  if (v272 == 1 || (v235 & 1) != 0)
  {
    v125 = -1;
  }

  v131 = v338;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v131;
  sub_10016D0C0(v125, v130, v132);
  v78(v130, v80);
  v338 = v337[0];
  v75(v323, enum case for IQCType.lensSmudgeConfidence(_:), v80);
  v133 = v275;
  v134 = v314;
  if (v274 == 1 || (v236 & 1) != 0)
  {
    v133 = -1;
  }

  v135 = v338;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v135;
  v137 = v133;
  v138 = v323;
  sub_10016D0C0(v137, v323, v136);
  v78(v138, v80);
  v338 = v337[0];
  v75(v134, enum case for IQCType.faceCaptureQuality(_:), v80);
  v139 = v277;
  if (v276 == 1 || (v237 & 1) != 0)
  {
    v139 = -1;
  }

  v140 = v338;
  v141 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v140;
  sub_10016D0C0(v139, v134, v141);
  v78(v134, v80);
  v338 = v337[0];
  v75(v324, enum case for IQCType.documentSize(_:), v80);
  v142 = v279;
  v143 = v281;
  if (v278 == 1 || (v238 & 1) != 0)
  {
    v142 = -1;
  }

  v144 = v338;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v144;
  v146 = v142;
  v147 = v324;
  sub_10016D0C0(v146, v324, v145);
  v78(v147, v80);
  v338 = v337[0];
  v75(v325, enum case for IQCType.documentRotation(_:), v80);
  if (v280 == 1 || (v239 & 1) != 0)
  {
    v143 = -1;
  }

  v148 = v338;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v148;
  v150 = v325;
  sub_10016D0C0(v143, v325, v149);
  v78(v150, v80);
  v338 = v337[0];
  v75(v326, enum case for IQCType.documentSkew(_:), v80);
  v151 = v283;
  if (v282 == 1 || (v240 & 1) != 0)
  {
    v151 = -1;
  }

  v152 = v338;
  v153 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v152;
  v154 = v151;
  v155 = v326;
  sub_10016D0C0(v154, v326, v153);
  v78(v155, v80);
  v338 = v337[0];
  v156 = v315;
  v75(v315, enum case for IQCType.leftDrift(_:), v80);
  v157 = v285;
  if (v284 == 1 || (v241 & 1) != 0)
  {
    v157 = -1;
  }

  v158 = v338;
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v158;
  sub_10016D0C0(v157, v156, v159);
  v78(v156, v80);
  v338 = v337[0];
  v75(v316, enum case for IQCType.rightDrift(_:), v80);
  v160 = v287;
  v161 = v291;
  if (v286 == 1 || (v242 & 1) != 0)
  {
    v160 = -1;
  }

  v162 = v338;
  v163 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v162;
  v164 = v160;
  v165 = v316;
  sub_10016D0C0(v164, v316, v163);
  v78(v165, v80);
  v338 = v337[0];
  v75(v327, enum case for IQCType.upDrift(_:), v80);
  v166 = v289;
  if (v288 == 1 || (v243 & 1) != 0)
  {
    v166 = -1;
  }

  v167 = v338;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v167;
  v169 = v166;
  v170 = v327;
  sub_10016D0C0(v169, v327, v168);
  v78(v170, v80);
  v338 = v337[0];
  v75(v329, enum case for IQCType.downDrift(_:), v80);
  v171 = v296;
  if (v290 == 1 || (v244 & 1) != 0)
  {
    v161 = -1;
  }

  v172 = v338;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v172;
  v174 = v161;
  v175 = v329;
  sub_10016D0C0(v174, v329, v173);
  v78(v175, v80);
  v338 = v337[0];
  v75(v330, enum case for IQCType.numFaces(_:), v80);
  v176 = v293;
  if (v292 == 1 || (v245 & 1) != 0)
  {
    v176 = -1;
  }

  v177 = v338;
  v178 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v177;
  v179 = v176;
  v180 = v330;
  sub_10016D0C0(v179, v330, v178);
  v78(v180, v80);
  v338 = v337[0];
  v75(v331, enum case for IQCType.luxLevel(_:), v80);
  v181 = v299;
  if (v294 == 1 || (v246 & 1) != 0)
  {
    v171 = -1;
  }

  v182 = v338;
  v183 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v182;
  v184 = v171;
  v185 = v331;
  sub_10016D0C0(v184, v331, v183);
  v78(v185, v80);
  v338 = v337[0];
  v75(v336, enum case for IQCType.pdf417Detected(_:), v80);
  v186 = v297;
  if (v295 & 0xFF00) == 0x200 || (v247)
  {
    v186 = -1;
  }

  v187 = v338;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v187;
  v189 = v186;
  v190 = v336;
  sub_10016D0C0(v189, v336, v188);
  v78(v190, v80);
  v338 = v337[0];
  v75(v328, enum case for IQCType.isAAMVACompliant(_:), v80);
  v191 = v301;
  if (v298 & 0xFF00) == 0x200 || (v248)
  {
    v181 = -1;
  }

  v192 = v338;
  v193 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v192;
  v194 = v181;
  v195 = v328;
  sub_10016D0C0(v194, v328, v193);
  v78(v195, v80);
  v338 = v337[0];
  v196 = v317;
  v75(v317, enum case for IQCType.glare(_:), v80);
  if (v300 & 0xFF00) == 0x200 || (v249)
  {
    v191 = -1;
  }

  v197 = v338;
  v198 = swift_isUniquelyReferenced_nonNull_native();
  v337[0] = v197;
  sub_10016D0C0(v191, v196, v198);
  v78(v196, v80);
  v338 = v337[0];
  v199 = v304;
  v200 = v335;
  if (v302)
  {
    v201 = 0;
    sub_1002B0860(v302, &v338);
    v202 = v303;
    if (!v303)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v201 = 0;
  v202 = v303;
  if (v303)
  {
LABEL_88:
    sub_1002B0B40(v202, &v338);
  }

LABEL_89:
  v328 = v338;
  v203 = sub_1002BA048(v338);
  v204 = *(v203 + 16);
  if (v204)
  {
    v331 = 0;
    v205 = sub_1003BA108(v204, 0);
    v336 = sub_1003BC70C(v337, v205 + ((*(v199 + 80) + 32) & ~*(v199 + 80)), v204, v203);

    sub_10001FA6C();
    if (v336 != v204)
    {
      __break(1u);
      goto LABEL_108;
    }

    v80 = v333;
    v199 = v304;
    v200 = v335;
    v201 = v331;
  }

  else
  {

    v205 = _swiftEmptyArrayStorage;
  }

  v337[0] = v205;
  sub_1002B8E6C(v337);
  if (!v201)
  {
    v206 = v337[0][2];
    if (v206)
    {
      v331 = *(v334 + 48);
      v207 = *(v199 + 80);
      v327 = v337[0];
      v208 = v337[0] + ((v207 + 32) & ~v207);
      v330 = *(v199 + 72);
      v209 = v200 + 32;
      v210 = _swiftEmptyArrayStorage;
      v211 = v305;
      v329 = v209;
      do
      {
        v212 = v332;
        sub_1002BC430(v208, v332);
        v213 = v209;
        v214 = *(v212 + v331);
        v215 = v6;
        v216 = *(v334 + 48);
        v336 = *v213;
        (v336)(v211, v212, v80);
        *(v211 + v216) = v214;
        sub_1002BC430(v211, v215);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v210 = sub_1003C526C(0, v210[2] + 1, 1, v210);
        }

        v218 = v210[2];
        v217 = v210[3];
        if (v218 >= v217 >> 1)
        {
          v210 = sub_1003C526C(v217 > 1, v218 + 1, 1, v210);
        }

        sub_1002BC4A0(v211);
        v210[2] = v218 + 1;
        v219 = v210 + ((*(v335 + 80) + 32) & ~*(v335 + 80)) + *(v335 + 72) * v218;
        v6 = v215;
        v80 = v333;
        v209 = v329;
        (v336)(v219, v215, v333);
        v208 += v330;
        --v206;
      }

      while (v206);

      return v210;
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_108:

  __break(1u);
  return result;
}

uint64_t sub_1002BC3E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002BC430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BC4A0(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083C1C8, &qword_1006DA768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1002BC508(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = vcvts_n_f32_u32(sub_10054A40C(16777217), 0x18uLL);
  if ((a1 & &_mh_execute_header) != 0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&a1;
  }

  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 67109378;
    *(v11 + 4) = v7 < v8;
    *(v11 + 8) = 2080;
    v17 = a1;
    v18 = BYTE4(a1) & 1;
    sub_100007224(&qword_10083F548, &unk_1006DC7B0);
    v13 = Optional.debugDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v19);

    *(v11 + 10) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "IQ Exploration rolled a %{BOOL}d from probability %s", v11, 0x12u);
    sub_10000BB78(v12);
  }

  (*(v3 + 8))(v6, v2);
  return v7 < v8;
}

uint64_t sub_1002BC714()
{
  v0 = type metadata accessor for IQImageType();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100832C38 != -1)
  {
    swift_once();
  }

  v72 = xmmword_1008822A8;
  v73 = unk_1008822B8;
  v74 = qword_1008822C8;
  v68 = xmmword_100882268;
  v69 = unk_100882278;
  v70 = xmmword_100882288;
  v71 = unk_100882298;
  v5 = sub_1001C6430();
  v67 = 0;
  v66 = sub_1002BC508(LODWORD(v5));
  v6 = v1[13];
  v6(v4, enum case for IQImageType.frontScan(_:), v0);
  v7 = sub_1001B732C(v4);
  v64 = v8;
  v65 = v7;
  v9 = v1[1];
  v9(v4, v0);
  v6(v4, enum case for IQImageType.backScan(_:), v0);
  v10 = sub_1001B732C(v4);
  v62 = v11;
  v63 = v10;
  v9(v4, v0);
  v6(v4, enum case for IQImageType.idFront(_:), v0);
  v12 = sub_1001B732C(v4);
  v60 = v13;
  v61 = v12;
  v9(v4, v0);
  v6(v4, enum case for IQImageType.idBack(_:), v0);
  v59 = sub_1001B732C(v4);
  v58 = v14;
  v9(v4, v0);
  v6(v4, enum case for IQImageType.selfie(_:), v0);
  v57 = sub_1001B732C(v4);
  v56 = v15;
  v9(v4, v0);
  v6(v4, enum case for IQImageType.liveness(_:), v0);
  v47 = v6;
  v55 = sub_1001B732C(v4);
  v54 = v16;
  v9(v4, v0);
  v6(v4, enum case for IQImageType.passive(_:), v0);
  v53 = sub_1001B732C(v4);
  v52 = v17;
  v9(v4, v0);
  v51 = sub_1001C4D78();
  v50 = v18;
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.confidenceBufferSize.getter();
  v75 = NSUserDefaults.internalInt(forKey:)(v21);
  value = v75.value;
  is_nil = v75.is_nil;

  v24 = *(&v68 + 1);
  if (!is_nil)
  {
    v24 = value;
  }

  v49 = v24;
  v25 = [v19 standardUserDefaults];
  v26._countAndFlagsBits = static DaemonInternalDefaultsKeys.stableWindow.getter();
  v76 = NSUserDefaults.internalInt(forKey:)(v26);
  v27 = v76.value;
  v28 = v76.is_nil;

  v29 = v69;
  if (!v28)
  {
    v29 = v27;
  }

  v48 = v29;
  v30 = [v19 standardUserDefaults];
  v31._countAndFlagsBits = static DaemonInternalDefaultsKeys.imqIDScanFrameRate.getter();
  v77 = NSUserDefaults.internalInt(forKey:)(v31);
  v32 = v77.value;
  v33 = v77.is_nil;

  v34 = *(&v69 + 1);
  if (!v33)
  {
    v34 = v32;
  }

  v46[1] = v34;
  v35 = [v19 standardUserDefaults];
  v36._countAndFlagsBits = static DaemonInternalDefaultsKeys.imqVideoFrameRate.getter();
  v78 = NSUserDefaults.internalInt(forKey:)(v36);
  v37 = v78.value;
  v38 = v78.is_nil;

  v39 = v70;
  if (!v38)
  {
    v39 = v37;
  }

  v46[0] = v39;
  v47(v4, enum case for IQImageType.passport(_:), v0);
  sub_1001B732C(v4);
  v9(v4, v0);
  v40 = [v19 standardUserDefaults];
  v41._countAndFlagsBits = static DaemonInternalDefaultsKeys.passportFramerate.getter();
  NSUserDefaults.internalInt(forKey:)(v41);

  v42 = [v19 standardUserDefaults];
  v43._countAndFlagsBits = static DaemonInternalDefaultsKeys.passportTimeout.getter();
  NSUserDefaults.internalInt(forKey:)(v43);

  v44 = objc_allocWithZone(type metadata accessor for IdentityImageQuality());
  v67 = 0;
  return IdentityImageQuality.init(frontScanSettings:backScanSettings:frontIDSettings:backIDSettings:selfieSettings:livenessSettings:passiveSettings:livenessBlockingCodes:exploration:bufferSize:stableWindow:idScanFrameRate:videoFrameRate:maxRectTravel:resizeDimensions:passportSettings:passportFramerate:passportTimeout:)();
}

uint64_t sub_1002BCD94()
{
  v1 = v0;
  v30 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v2 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UUID();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  v10 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v11 = *(*(v10 - 8) + 56);
  v11(v1 + v9, 1, 1, v10);
  v11(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_livenessConfigV2, 1, 1, v10);
  v12 = (v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_disabledGestureSequence) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_disabledGestureCount) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTimeToSkipAX) = 50;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTimeToAlertAX) = 100;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTutorialVideoDelay) = 2000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTutorialVideoDuration) = 2000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultFaceOutOfBoundFrames) = 30;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTutorialResumeDelay) = 1000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultGestureDetectedSuccessDuration) = 3000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultLastGestureExtraFrameDuration) = 1000;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultRequiresGoodLuxFlag) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultEnablePrintReplayFlag) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultEnableIDMatchingFlag) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultSelfieRequirement) = 1;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultTotalFrameCount) = 150;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultMinimumValidFrameCount) = 146;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultDisplayPassiveLivenessFlag) = 0;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_defaultEnableAutoFlashFlag) = 1;
  type metadata accessor for IdentityProofingDatabaseProvider();
  v13 = swift_allocObject();
  v14 = type metadata accessor for IdentitySelfHealer();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v15[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v13;
  v33.receiver = v15;
  v33.super_class = v14;
  v17 = objc_msgSendSuper2(&v33, "init");
  v18 = swift_allocObject();
  v19 = objc_allocWithZone(v14);
  v20 = &v19[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v19[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v18;
  v32.receiver = v19;
  v32.super_class = v14;
  *(v1 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_selfHealer) = objc_msgSendSuper2(&v32, "init");
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v5 + 8))(v8, v29);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  if (qword_100832D08 != -1)
  {
    swift_once();
  }

  v24 = sub_10003170C(v30, qword_100882448);
  sub_1002BEB48(v24, v4);
  v25 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService());
  v26 = sub_1005D7D88(v21, v23, v31, v4);
  *(v1 + 16) = v26;
  *&v26[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = &off_10080DB50;
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_1002BD1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[152] = v8;
  v9[151] = a8;
  v9[150] = a7;
  v9[149] = a6;
  v9[148] = a5;
  v9[147] = a4;
  v9[146] = a3;
  v9[145] = a2;
  v9[144] = a1;
  v10 = type metadata accessor for DIPError.Code();
  v9[153] = v10;
  v11 = *(v10 - 8);
  v9[154] = v11;
  v12 = *(v11 + 64) + 15;
  v9[155] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_100835970, &unk_1006C1EA0) - 8) + 64) + 15;
  v9[156] = swift_task_alloc();
  v9[157] = swift_task_alloc();
  v9[158] = swift_task_alloc();
  v14 = type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  v9[159] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v9[160] = swift_task_alloc();
  v9[161] = swift_task_alloc();
  v16 = type metadata accessor for DeviceInformationProvider();
  v9[162] = v16;
  v17 = *(v16 - 8);
  v9[163] = v17;
  v18 = *(v17 + 64) + 15;
  v9[164] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v9[165] = v19;
  v20 = *(v19 - 8);
  v9[166] = v20;
  v21 = *(v20 + 64) + 15;
  v9[167] = swift_task_alloc();

  return _swift_task_switch(sub_1002BD3E4, 0, 0);
}

uint64_t sub_1002BD3E4()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1328);
  v34 = *(v0 + 1320);
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1304);
  v5 = *(v0 + 1296);
  v6 = *(v0 + 1216);
  v7 = *(v0 + 1208);
  v8 = *(v0 + 1192);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1160);
  v11 = v6 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId;
  v39 = *(v6 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId);
  *(v0 + 1344) = v39;
  v12 = *(v11 + 8);
  *(v0 + 1352) = v12;
  v37 = v5;
  v38 = v12;

  UUID.init()();
  v13 = UUID.uuidString.getter();
  v35 = v14;
  v36 = v13;
  *(v0 + 1360) = v13;
  *(v0 + 1368) = v14;
  (*(v2 + 8))(v1, v34);
  v15 = *(v6 + 16);
  v16 = v15 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation;
  v17 = *(v15 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  *(v0 + 1376) = v17;
  v18 = *(v16 + 8);
  *(v0 + 1384) = v18;
  sub_100020260(*(v15 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 1040);
  v19 = *(v0 + 1072);
  sub_10000BA08((v0 + 1040), *(v0 + 1064));

  v20 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v22 = v21;
  *(v0 + 1392) = v20;
  *(v0 + 1400) = v21;
  sub_10000BB78((v0 + 1040));
  DeviceInformationProvider.init()();
  v23 = DeviceInformationProvider.uniqueDeviceID.getter();
  v25 = v24;
  *(v0 + 1408) = v23;
  *(v0 + 1416) = v24;
  (*(v4 + 8))(v3, v37);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 1192);
  v27 = *(v0 + 1184);
  v28 = *(v0 + 1168);
  v29 = *(v0 + 1152);
  v30 = xmmword_100882478;
  *(v0 + 1424) = xmmword_100882478;
  *(v0 + 560) = v17;
  *(v0 + 568) = v18;
  *(v0 + 576) = v36;
  *(v0 + 584) = v35;
  *(v0 + 592) = v20;
  *(v0 + 600) = v22;
  *(v0 + 608) = v23;
  *(v0 + 616) = v25;
  *(v0 + 624) = v30;
  *(v0 + 640) = v29;
  *(v0 + 656) = v28;
  *(v0 + 672) = v27;
  *(v0 + 680) = v26;
  *(v0 + 688) = *(v0 + 1200);
  *(v0 + 704) = v39;
  *(v0 + 712) = v38;

  v31 = swift_task_alloc();
  *(v0 + 1440) = v31;
  *v31 = v0;
  v31[1] = sub_1002BD6C4;
  v32 = *(v0 + 1280);

  return sub_1005E5868(v32, v0 + 560);
}

uint64_t sub_1002BD6C4()
{
  v2 = *v1;
  v3 = *(*v1 + 1440);
  v15 = *v1;
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v4 = *(v2 + 1424);
    v5 = *(v2 + 1408);
    v6 = *(v2 + 1392);
    v7 = *(v2 + 1360);
    v8 = *(v2 + 1192);
    v9 = *(v2 + 1184);
    v10 = *(v2 + 1168);
    v11 = *(v2 + 1152);
    *(v2 + 720) = *(v2 + 1376);
    *(v2 + 736) = v7;
    *(v2 + 752) = v6;
    *(v2 + 768) = v5;
    *(v2 + 784) = v4;
    *(v2 + 800) = v11;
    *(v2 + 816) = v10;
    *(v2 + 832) = v9;
    *(v2 + 840) = v8;
    v12 = *(v2 + 1344);
    *(v2 + 848) = *(v2 + 1200);
    *(v2 + 864) = v12;
    sub_1000B16EC(v2 + 720);
    v13 = sub_1002BDC50;
  }

  else
  {
    v13 = sub_1002BD828;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1002BD828()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1216);
  sub_1002BEE60(*(v0 + 1280), *(v0 + 1288));
  v3 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_livenessConfigV2;
  swift_beginAccess();
  v45 = v3;
  v46 = v2;
  sub_1002BEEC4(v2 + v3, v1);
  v4 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (v6(v1, 1, v4) == 1)
  {
    v7 = *(v0 + 1256);
    (*(v5 + 16))(*(v0 + 1264), *(v0 + 1288) + *(*(v0 + 1272) + 24), v4);
    if (v6(v7, 1, v4) != 1)
    {
      sub_1002BEF34(*(v0 + 1256));
    }
  }

  else
  {
    (*(v5 + 32))(*(v0 + 1264), *(v0 + 1256), v4);
  }

  v8 = *(v0 + 1424);
  v9 = *(v0 + 1408);
  v10 = *(v0 + 1392);
  v11 = *(v0 + 1360);
  v12 = *(v0 + 1288);
  v43 = *(v0 + 1272);
  v44 = *(v0 + 1448);
  v13 = *(v0 + 1264);
  v14 = *(v0 + 1248);
  v15 = *(v0 + 1216);
  v16 = *(v0 + 1192);
  v17 = *(v0 + 1184);
  v18 = *(v0 + 1168);
  v19 = *(v0 + 1152);
  *(v0 + 880) = *(v0 + 1376);
  *(v0 + 896) = v11;
  *(v0 + 912) = v10;
  *(v0 + 928) = v9;
  *(v0 + 944) = v8;
  *(v0 + 960) = v19;
  *(v0 + 976) = v18;
  *(v0 + 992) = v17;
  *(v0 + 1000) = v16;
  v20 = *(v0 + 1344);
  *(v0 + 1008) = *(v0 + 1200);
  *(v0 + 1024) = v20;
  sub_1000B16EC(v0 + 880);
  v21 = *(v5 + 56);
  v21(v13, 0, 1, v4);
  v22 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  swift_beginAccess();
  sub_1002BEDF0(v13, v15 + v22);
  swift_endAccess();
  (*(v5 + 16))(v14, v12 + *(v43 + 24), v4);
  v21(v14, 0, 1, v4);
  swift_beginAccess();
  sub_1002BEDF0(v14, v46 + v45);
  swift_endAccess();
  JWSSignedJSON.payload.getter();
  memcpy((v0 + 16), (v0 + 288), 0x10AuLL);
  v23 = sub_1002BE038((v0 + 16));
  if (v44)
  {
    sub_1002BEF9C(*(v0 + 1288));
    sub_10009F310(v0 + 16);
    v24 = *(v0 + 1336);
    v25 = *(v0 + 1312);
    v26 = *(v0 + 1288);
    v27 = *(v0 + 1280);
    v28 = *(v0 + 1264);
    v29 = *(v0 + 1256);
    v30 = *(v0 + 1248);
    v31 = *(v0 + 1240);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v34 = *(v0 + 1336);
    v35 = *(v0 + 1312);
    v36 = *(v0 + 1280);
    v37 = *(v0 + 1264);
    v38 = *(v0 + 1256);
    v39 = *(v0 + 1248);
    v40 = *(v0 + 1240);
    v41 = v23;
    sub_1002BEF9C(*(v0 + 1288));
    sub_10009F310(v0 + 16);

    v42 = *(v0 + 8);

    return v42(v41);
  }
}

uint64_t sub_1002BDC50()
{
  v1 = v0[181];
  (*(v0[154] + 104))(v0[155], enum case for DIPError.Code.internalError(_:), v0[153]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[167];
  v3 = v0[164];
  v4 = v0[161];
  v5 = v0[160];
  v6 = v0[158];
  v7 = v0[157];
  v8 = v0[156];
  v9 = v0[155];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002BDE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v5 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v10 = *(v9 - 8);
  v21 = *(v10 + 16);
  v21(v8, a1, v9);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  swift_beginAccess();
  v13 = v3 + v12;
  v14 = v3;
  sub_1002BEDF0(v8, v13);
  swift_endAccess();
  v21(v8, a1, v9);
  v11(v8, 0, 1, v9);
  v15 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_livenessConfigV2;
  swift_beginAccess();
  sub_1002BEDF0(v8, v14 + v15);
  swift_endAccess();
  v16 = (v14 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId);
  v17 = *(v14 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId + 8);
  v18 = v23;
  *v16 = v22;
  v16[1] = v18;

  JWSSignedJSON.payload.getter();
  memcpy(v25, v24, 0x10AuLL);
  v19 = sub_1002BE038(v25);
  sub_10009F310(v25);
  return v19;
}

uint64_t sub_1002BE038(__int128 *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideLivenessConfig.getter();
  v12 = NSUserDefaults.internalBool(forKey:)(v11);

  if (!v12)
  {
    v17 = a1[7];
    v18 = a1[9];
    v43 = a1[8];
    v44[0] = v18;
    *(v44 + 14) = *(a1 + 158);
    v19 = a1[3];
    v20 = a1[5];
    v39 = a1[4];
    v40 = v20;
    v21 = a1[5];
    v22 = a1[7];
    v41 = a1[6];
    v42 = v22;
    v23 = a1[1];
    v35 = *a1;
    v36 = v23;
    v24 = a1[3];
    v26 = *a1;
    v25 = a1[1];
    v37 = a1[2];
    v38 = v24;
    v27 = a1[9];
    v45[8] = v43;
    v46[0] = v27;
    *(v46 + 14) = *(a1 + 158);
    v45[4] = v39;
    v45[5] = v21;
    v45[6] = v41;
    v45[7] = v17;
    v45[0] = v26;
    v45[1] = v25;
    v45[2] = v37;
    v45[3] = v19;
    if (sub_10021C1F8(v45) == 1)
    {
      v28 = *(a1 + 25);
      if (!v28)
      {
        (*(v33 + 104))(v34, enum case for DIPError.Code.livenessConfigV2MissingFields(_:), v2);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        return swift_willThrow();
      }
    }

    else
    {
      v53[8] = v43;
      v54[0] = v44[0];
      *(v54 + 14) = *(v44 + 14);
      v53[4] = v39;
      v53[5] = v40;
      v53[6] = v41;
      v53[7] = v42;
      v53[0] = v35;
      v53[1] = v36;
      v53[2] = v37;
      v53[3] = v38;
      sub_1002BE484(v53);
      v28 = *(a1 + 25);
      if (!v28)
      {
        goto LABEL_11;
      }
    }

    v47 = a1[11];
    v29 = *(a1 + 24);
    v30 = a1[14];
    v50 = a1[13];
    v51 = v30;
    v52[0] = a1[15];
    *(v52 + 10) = *(a1 + 250);
    v48 = v29;
    v49 = v28;
    sub_10021C1F8(&v35);
    sub_1002BEBAC(&v47);
LABEL_11:
    v31 = objc_allocWithZone(type metadata accessor for IdentityLivenessConfig());
    return IdentityLivenessConfig.init(active:passive:)();
  }

  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Using custom liveness config from internal settings.", v15, 2u);
  }

  (*(v6 + 8))(v9, v5);
  return sub_1001C73F4();
}

uint64_t sub_1002BE484(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v47 - v7;
  v9 = *(a1 + 16);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v56 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = type metadata accessor for IdentityGesture();
    v13 = (v9 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v16 = objc_allocWithZone(v12);
      IdentityGesture.init(gesture:type:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = v56[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v13 += 2;
      --v10;
    }

    while (v10);
    v11 = v56;
  }

  v55 = *(a1 + 40);
  v18 = *(a1 + 80);
  v54 = (*(a1 + 173) == 2) | *(a1 + 173);
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableLiveness.getter();
  v22 = NSUserDefaults.internalBool(forKey:)(v21);

  if (v22)
  {

    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Internal settings has been set to disable liveness.", v25, 2u);
    }

    (*(v52 + 8))(v8, v53);
    v11 = *(v51 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_disabledGestureSequence);

    v55 = 0;
  }

  v51 = v11;
  v26 = [v19 standardUserDefaults];
  v27._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableAutoFlash.getter();
  v28 = NSUserDefaults.internalBool(forKey:)(v27);

  if (v28)
  {
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Internal settings has been set to disable auto flash.", v31, 2u);
    }

    (*(v52 + 8))(v6, v53);
    v54 = 0;
  }

  v32 = *(a1 + 128);
  if (*(a1 + 136))
  {
    v32 = 1000;
  }

  v52 = v32;
  v53 = v18 & ~(v18 >> 63);
  if (*(a1 + 152))
  {
    v33 = 3000;
  }

  else
  {
    v33 = *(a1 + 144);
  }

  v34 = *(a1 + 160);
  if (*(a1 + 168))
  {
    v34 = 1000;
  }

  v48 = v34;
  v35 = *(a1 + 169);
  v36 = *(a1 + 170);
  v37 = *(a1 + 171);
  v38 = (*(a1 + 172) == 2) | *(a1 + 172);
  v39 = *(a1 + 48);
  v40 = *(a1 + 56);
  v41 = *(a1 + 64);
  v42 = *(a1 + 72);
  v49 = *(a1 + 88);
  v50 = v33;
  v47 = *(a1 + 96);
  v44 = *(a1 + 112);
  v43 = *(a1 + 120);
  v45 = objc_allocWithZone(type metadata accessor for IdentityActiveLivenessConfig());
  return IdentityActiveLivenessConfig.init(gestureSequence:minRequiredGestureCount:timeToSkipOption:timeToSkipAccessible:timeToAlert:timeToAlertAccessible:maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:gestureCompletionDelay:tutorialVideoDelay:tutorialVideoDuration:tutorialResumeDelay:gestureDetectedSuccessDuration:lastGestureExtraFrameDuration:requiresGoodLux:enablePrintReplay:enableIDMatching:requireSelfie:enableAutoFlash:)();
}

uint64_t sub_1002BE8EC()
{
  sub_1002BEF34(v0 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2);
  sub_1002BEF34(v0 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_livenessConfigV2);
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_proofingSessionId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_disabledGestureSequence);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingLivenessConfigProvider()
{
  result = qword_10083F628;
  if (!qword_10083F628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BE9F0()
{
  sub_1002BEAE4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1002BEAE4()
{
  if (!qword_100835A28)
  {
    sub_10000B870(&qword_100835A30, &unk_1006DB6C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100835A28);
    }
  }
}

uint64_t sub_1002BEB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPHTTPSession.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEBAC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 89);
  v8 = [objc_opt_self() standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableAutoFlash.getter();
  v10 = NSUserDefaults.internalBool(forKey:)(v9);

  if (v10)
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Internal settings has been set to disable auto flash.", v13, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  v14 = *(a1 + 40);
  if (!*(a1 + 56))
  {
    v15 = *(a1 + 48);
  }

  if (!*(a1 + 72))
  {
    v16 = *(a1 + 64);
  }

  v17 = *(a1 + 80);
  if (!*(a1 + 88))
  {
    v18 = *(a1 + 80);
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 58);
  v21 = *(a1 + 57);
  v22 = objc_allocWithZone(type metadata accessor for IdentityPassiveLivenessConfig());
  return IdentityPassiveLivenessConfig.init(maxRetakeCount:sessionTimeout:faceOutOfBoundFrames:totalFrameCount:minimumValidFrameCount:requiresGoodLux:enablePrintReplay:disableStitchDetection:enableAutoFlash:useAuxiliaryURL:)();
}

uint64_t sub_1002BEDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEF34(uint64_t a1)
{
  v2 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002BEF9C(uint64_t a1)
{
  v2 = type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002BF01C(uint64_t a1)
{
  v159 = a1;
  v1 = type metadata accessor for IdentityProofingUnorderedUIElement();
  v154 = *(v1 - 8);
  v155 = v1;
  v2 = *(v154 + 64);
  v3 = __chkstk_darwin(v1);
  v141 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v140 = &v136 - v6;
  __chkstk_darwin(v5);
  v139 = &v136 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v142 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v150 = &v136 - v14;
  v15 = __chkstk_darwin(v13);
  v145 = &v136 - v16;
  v17 = __chkstk_darwin(v15);
  v144 = &v136 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v136 - v20;
  v22 = __chkstk_darwin(v19);
  v138 = &v136 - v23;
  v24 = __chkstk_darwin(v22);
  v137 = &v136 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v136 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v136 - v30;
  __chkstk_darwin(v29);
  v33 = &v136 - v32;
  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Fetching liveness consent UI from the unordered UI", v36, 2u);
  }

  v39 = *(v9 + 8);
  v37 = v9 + 8;
  v38 = v39;
  v39(v33, v8);
  v143 = IdentityProofingUnorderedUIElement.title.getter();
  v41 = v40;
  v42 = IdentityProofingUnorderedUIElement.messages.getter();
  if (v42)
  {
    if (v42[2])
    {
      v43 = v42[5];
      v149 = v42[4];

      goto LABEL_8;
    }
  }

  v149 = 0;
  v43 = 0;
LABEL_8:
  v44 = IdentityProofingUnorderedUIElement.actions.getter();
  v158 = v38;
  if (v44)
  {
    if (v44[2] >= 2uLL)
    {
      v46 = v44[4];
      v45 = v44[5];
      v47 = v44[7];
      v146 = v44[6];
      v147 = v46;
      v153 = v45;

      v152 = v47;

      goto LABEL_13;
    }
  }

  v146 = 0;
  v147 = 0;
  v152 = 0;
  v153 = 0;
LABEL_13:
  defaultLogger()();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v151 = v41;
  if (v50)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "BEGIN LOGGING LIVENESS CONSENT UI messageIDs", v51, 2u);
    v41 = v151;
  }

  v52 = v158;
  v158(v31, v8);
  defaultLogger()();

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  v55 = os_log_type_enabled(v53, v54);
  v148 = v43;
  v157 = v37;
  v136 = v21;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v160[0] = v57;
    *v56 = 136315138;
    if (v41)
    {
      v58 = v143;
    }

    else
    {

      v41 = 0xE300000000000000;
      v58 = 4999502;
    }

    v59 = v137;

    v60 = sub_100141FE4(v58, v41, v160);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "title -> %s", v56, 0xCu);
    sub_10000BB78(v57);

    v52 = v158;
    v158(v28, v8);
    v43 = v148;
  }

  else
  {

    v52(v28, v8);
    v59 = v137;
  }

  defaultLogger()();

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v160[0] = v64;
    *v63 = 136315138;
    if (v43)
    {
      v65 = v149;
    }

    else
    {
      v65 = 4999502;
    }

    if (v43)
    {
      v66 = v43;
    }

    else
    {
      v66 = 0xE300000000000000;
    }

    v67 = sub_100141FE4(v65, v66, v160);
    v52 = v158;

    *(v63 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v61, v62, "subtitle -> %s", v63, 0xCu);
    sub_10000BB78(v64);
  }

  v52(v59, v8);
  v68 = v152;
  v69 = v138;
  defaultLogger()();
  v70 = v153;

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v160[0] = v74;
    *v73 = 136315138;
    if (v70)
    {
      v75 = v147;
    }

    else
    {
      v75 = 4999502;
    }

    if (v70)
    {
      v76 = v70;
    }

    else
    {
      v76 = 0xE300000000000000;
    }

    v77 = sub_100141FE4(v75, v76, v160);
    v52 = v158;

    *(v73 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v71, v72, "primaryButtonTitle -> %s", v73, 0xCu);
    sub_10000BB78(v74);
  }

  v52(v69, v8);
  v78 = v136;
  defaultLogger()();

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();

  v81 = os_log_type_enabled(v79, v80);
  v156 = v8;
  if (v81)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v160[0] = v83;
    *v82 = 136315138;
    if (v68)
    {
      v84 = v146;
    }

    else
    {
      v84 = 4999502;
    }

    if (v68)
    {
      v85 = v68;
    }

    else
    {
      v85 = 0xE300000000000000;
    }

    v86 = sub_100141FE4(v84, v85, v160);
    v52 = v158;

    *(v82 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v79, v80, "secondaryButtonTitle -> %s", v82, 0xCu);
    sub_10000BB78(v83);

    v52(v78, v8);
  }

  else
  {

    v52(v78, v8);
  }

  v87 = v154;
  v88 = v155;
  v89 = v144;
  defaultLogger()();
  v90 = *(v87 + 16);
  v91 = v139;
  v90(v139, v159, v88);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = v87;
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v160[0] = v96;
    *v95 = 136315138;
    v97 = IdentityProofingUnorderedUIElement.privacyLinkTitle.getter();
    if (v98)
    {
      v99 = v97;
    }

    else
    {
      v99 = 4999502;
    }

    if (v98)
    {
      v100 = v98;
    }

    else
    {
      v100 = 0xE300000000000000;
    }

    v101 = *(v94 + 8);
    v101(v91, v155);
    v102 = sub_100141FE4(v99, v100, v160);
    v52 = v158;

    *(v95 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v92, v93, "privacyLinkTitle -> %s", v95, 0xCu);
    sub_10000BB78(v96);
    v88 = v155;

    v103 = v144;
  }

  else
  {

    v101 = *(v87 + 8);
    v101(v91, v88);
    v103 = v89;
  }

  v52(v103, v156);
  v104 = v145;
  defaultLogger()();
  v105 = v140;
  v90(v140, v159, v88);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = v105;
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v160[0] = v110;
    *v109 = 136315138;
    v111 = IdentityProofingUnorderedUIElement.privacyLinkIdentifier.getter();
    if (v112)
    {
      v113 = v111;
    }

    else
    {
      v113 = 4999502;
    }

    if (v112)
    {
      v114 = v112;
    }

    else
    {
      v114 = 0xE300000000000000;
    }

    v101(v108, v155);
    v115 = sub_100141FE4(v113, v114, v160);

    *(v109 + 4) = v115;
    _os_log_impl(&_mh_execute_header, v106, v107, "privacyLinkIdentifier -> %s", v109, 0xCu);
    sub_10000BB78(v110);
    v88 = v155;

    v158(v145, v156);
  }

  else
  {

    v101(v105, v88);
    v52(v104, v156);
  }

  v116 = v150;
  v117 = v141;
  defaultLogger()();
  v90(v117, v159, v88);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v160[0] = v121;
    *v120 = 136315138;
    IdentityProofingUnorderedUIElement.options.getter();
    type metadata accessor for IdentityProofingUnorderedUIElementOption();
    v122 = v88;
    v123 = Array.description.getter();
    v125 = v124;

    v101(v117, v122);
    v126 = sub_100141FE4(v123, v125, v160);

    *(v120 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v118, v119, "options -> %s", v120, 0xCu);
    sub_10000BB78(v121);

    v127 = v150;
  }

  else
  {

    v101(v117, v88);
    v127 = v116;
  }

  v128 = v156;
  v129 = v158;
  v158(v127, v156);
  v130 = v142;
  defaultLogger()();
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&_mh_execute_header, v131, v132, "END LOGGING LIVENESS CONSENT UI messageIDs", v133, 2u);
  }

  v129(v130, v128);
  IdentityProofingUnorderedUIElement.learnMoreURL.getter();
  IdentityProofingUnorderedUIElement.privacyLinkTitle.getter();
  IdentityProofingUnorderedUIElement.options.getter();
  IdentityProofingUnorderedUIElement.privacyLinkIdentifier.getter();
  v134 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  return IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
}

void *sub_1002BFF90@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v100 = *(v5 - 8);
  v6 = v100[8];
  v7 = __chkstk_darwin(v5);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v92 - v11;
  __chkstk_darwin(v10);
  v98 = &v92 - v13;
  v14 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v92 - v16;
  v18 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v101 = &v92 - v22;
  if (!a1)
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Missing results for liveness attestation", v33, 2u);
    }

    (v100[1])(v9, v5);
    goto LABEL_9;
  }

  v97 = v5;
  v23 = *(v2 + 16);
  v99 = v21;
  v24 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  swift_beginAccess();
  v25 = v23 + v24;
  v26 = v99;
  sub_10000BBC4(v25, v17, &qword_100835970, &unk_1006C1EA0);
  if ((*(v19 + 48))(v17, 1, v26) == 1)
  {
    v27 = a1;
    sub_10000BE18(v17, &qword_100835970, &unk_1006C1EA0);
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Missing signed config v2 from LivenessConfigProvider", v30, 2u);
    }

    (v100[1])(v12, v97);
LABEL_9:
    v34 = type metadata accessor for LivenessDataV2(0);
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }

  v93 = *(v19 + 32);
  v94 = v19 + 32;
  v93(v101, v17, v26);
  v96 = a1;
  v36 = IdentityLivenessResults.timestampsFAC.getter();
  v37 = v36;
  if (v36 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v95 = a2;
  if (v38)
  {
    *&v104[0] = _swiftEmptyArrayStorage;
    result = sub_100172FE0(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    v39 = 0;
    v40 = *&v104[0];
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v37 + 8 * v39 + 32);
      }

      v42 = v41;
      v43 = GestureTimestamps.timestamps.getter();

      *&v104[0] = v40;
      v45 = v40[2];
      v44 = v40[3];
      if (v45 >= v44 >> 1)
      {
        sub_100172FE0((v44 > 1), v45 + 1, 1);
        v40 = *&v104[0];
      }

      ++v39;
      v40[2] = v45 + 1;
      v40[v45 + 4] = v43;
    }

    while (v38 != v39);
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
  }

  v46 = [objc_opt_self() standardUserDefaults];
  v47._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableLiveness.getter();
  v48 = NSUserDefaults.internalBool(forKey:)(v47);

  if (!v48)
  {
    goto LABEL_25;
  }

  JWSSignedJSON.payload.getter();
  memcpy(v104, v103, 0x10AuLL);
  sub_10000BBC4(v104, v102, &qword_100835828, &qword_1006C1B18);
  sub_10009F310(v104);
  v113 = v104[8];
  v114[0] = v104[9];
  *(v114 + 14) = *(&v104[9] + 14);
  v109 = v104[4];
  v110 = v104[5];
  v111 = v104[6];
  v112 = v104[7];
  v105 = v104[0];
  v106 = v104[1];
  v107 = v104[2];
  v108 = v104[3];
  if (sub_10021C1F8(&v105) != 1)
  {
    v50 = v106;

    sub_10000BE18(v104, &qword_100835828, &qword_1006C1B18);
    v51 = *(v50 + 16);

    v49 = sub_1002C0990(_swiftEmptyArrayStorage, v51);

    v52 = v98;
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v103[0] = v56;
      *v55 = 134218242;
      *(v55 + 4) = v51;
      *(v55 + 12) = 2080;

      sub_100007224(&qword_1008375E0, &qword_1006C9820);
      v57 = Array.description.getter();
      v59 = v58;

      v60 = sub_100141FE4(v57, v59, v103);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "IdentityProofingLivenessDataProvider: liveness disabled. Gesture count: %ld Timestamps FAC: %s", v55, 0x16u);
      sub_10000BB78(v56);
    }

    (v100[1])(v52, v97);
  }

  else
  {
LABEL_25:
    v49 = v40;
  }

  v61 = IdentityLivenessResults.assessmentsPRD.getter();
  v62 = v61;
  if (!(v61 >> 62))
  {
    v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v100 = v49;
    if (v63)
    {
      goto LABEL_31;
    }

LABEL_42:

    v65 = _swiftEmptyArrayStorage;
LABEL_43:
    v74 = v96;
    v98 = IdentityLivenessResults.livenessLabel.getter();
    v75 = IdentityLivenessResults.assessmentsFAC.getter();
    v76 = v100;

    IdentityLivenessResults.assessmentTA.getter();
    v78 = v77;
    IdentityLivenessResults.maxNccLow.getter();
    v80 = v79;
    IdentityLivenessResults.maxNccHigh.getter();
    v82 = v81;
    v83 = IdentityLivenessResults.ignoredStitches.getter();
    IdentityLivenessResults.assessmentID.getter();
    v85 = v84;
    v86 = IdentityLivenessResults.timestampsID.getter();
    v87 = IdentityLivenessResults.timestampsButtonPressed.getter();
    v88 = IdentityLivenessResults.luxValues.getter();

    LOBYTE(v104[0]) = 0;
    LOBYTE(v103[0]) = 0;
    LOBYTE(v105) = 0;
    v102[0] = 0;
    v116 = 0;
    v115 = 0;
    v89 = v95;
    v93(v95, v101, v99);
    v90 = type metadata accessor for LivenessDataV2(0);
    v91 = &v89[*(v90 + 20)];
    *v91 = v98;
    v91[8] = v104[0];
    *(v91 + 2) = v75;
    *(v91 + 3) = v76;
    *(v91 + 8) = v78;
    v91[36] = v103[0];
    *(v91 + 10) = v80;
    v91[44] = v105;
    *(v91 + 12) = v82;
    v91[52] = v102[0];
    *(v91 + 7) = v83;
    v91[64] = v116;
    *(v91 + 9) = v65;
    *(v91 + 20) = v85;
    v91[84] = v115;
    *(v91 + 11) = v86;
    *(v91 + 12) = v87;
    *(v91 + 13) = v88;
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
  }

  v63 = _CocoaArrayWrapper.endIndex.getter();
  v100 = v49;
  if (!v63)
  {
    goto LABEL_42;
  }

LABEL_31:
  *&v104[0] = _swiftEmptyArrayStorage;
  result = sub_100172FC0(0, v63 & ~(v63 >> 63), 0);
  if ((v63 & 0x8000000000000000) == 0)
  {
    v64 = 0;
    v65 = *&v104[0];
    do
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v66 = *(v62 + 8 * v64 + 32);
      }

      v67 = v66;
      PRDMetadata.stage2.getter();
      v69 = v68;
      v70 = PRDMetadata.timestamp.getter();

      *&v104[0] = v65;
      v72 = v65[2];
      v71 = v65[3];
      if (v72 >= v71 >> 1)
      {
        sub_100172FC0((v71 > 1), v72 + 1, 1);
        v65 = *&v104[0];
      }

      ++v64;
      v65[2] = v72 + 1;
      v73 = &v65[2 * v72];
      *(v73 + 8) = v69;
      v73[5] = v70;
    }

    while (v63 != v64);

    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
  return result;
}

void *sub_1002C0990(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100007224(&qword_1008375E0, &qword_1006C9820);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_1002C0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_100835968, &qword_1006DBC90) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v10 = type metadata accessor for WorkflowRecommendationResponse();
  v5[29] = v10;
  v11 = *(v10 - 8);
  v5[30] = v11;
  v12 = *(v11 + 64) + 15;
  v5[31] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v5[32] = v13;
  v14 = *(v13 - 8);
  v5[33] = v14;
  v15 = *(v14 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_1002C0BF0, 0, 0);
}

uint64_t sub_1002C0BF0()
{
  v1 = *(v0 + 192);
  v2 = *(*(v1 + 56) + 16);

  os_unfair_lock_lock(v2 + 14);
  sub_10000BBC4(&v2[4], v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  os_unfair_lock_unlock(v2 + 14);

  if (*(v0 + 80))
  {
    sub_10012D290((v0 + 56), v0 + 16);
    v3 = *(*(v1 + 56) + 32);

    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);
    v5 = v4;
    os_unfair_lock_unlock((v3 + 24));

    if (v4)
    {
      v6 = *(*(v1 + 56) + 40);

      os_unfair_lock_lock((v6 + 24));
      v7 = *(v6 + 16);
      v8 = v7;
      os_unfair_lock_unlock((v6 + 24));

      if (v7)
      {
        v9 = *(v0 + 280);
        defaultLogger()();
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Retrieving the data from the pending actions repository", v12, 2u);
        }

        v13 = *(v0 + 280);
        v14 = *(v0 + 256);
        v15 = *(v0 + 264);
        v16 = *(v0 + 160);

        (*(v15 + 8))(v13, v14);
        sub_10012D290((v0 + 16), (v16 + 2));
        *v16 = v5;
        v16[1] = v8;
        v18 = *(v0 + 272);
        v17 = *(v0 + 280);
        v19 = *(v0 + 248);
        v21 = *(v0 + 216);
        v20 = *(v0 + 224);

        v22 = *(v0 + 8);

        return v22();
      }

      sub_10000BB78((v0 + 16));
    }

    else
    {
      sub_10000BB78((v0 + 16));
    }
  }

  else
  {
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  }

  v24 = *(v0 + 272);
  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Data doesn't exist in the pending actions repository. Fetching the data from the server", v27, 2u);
  }

  v29 = *(v0 + 264);
  v28 = *(v0 + 272);
  v30 = *(v0 + 256);
  v31 = *(v0 + 192);
  v32 = *(v0 + 176);

  (*(v29 + 8))(v28, v30);
  v33 = *(v31 + 16);
  v34 = *(v31 + 64);

  *(v0 + 288) = sub_100266DA8(0, v34);

  v35 = swift_task_alloc();
  *(v0 + 296) = v35;
  *v35 = v0;
  v35[1] = sub_1002C0FA4;
  v36 = *(v0 + 184);
  v37 = *(v0 + 168);

  return sub_10025AE6C(v37, v32, v36, 0);
}

uint64_t sub_1002C0FA4()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1002C13EC;
  }

  else
  {

    v3 = sub_1002C10C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002C10C4()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v5 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  swift_beginAccess();
  sub_10000BBC4(v1 + v5, v4, &qword_100835968, &qword_1006DBC90);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[36];
    v7 = v0[27];
    v8 = v0[25];
    v9 = v0[26];
    sub_10000BE18(v0[28], &qword_100835968, &qword_1006DBC90);
    (*(v9 + 104))(v7, enum case for DIPError.Code.topekaInternalServerError(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_5:

    v18 = v0[34];
    v17 = v0[35];
    v19 = v0[31];
    v21 = v0[27];
    v20 = v0[28];

    v22 = v0[1];
    goto LABEL_6;
  }

  v10 = v0[38];
  v11 = v0[36];
  v12 = v0[31];
  sub_1002C5C40(v0[28], v12, type metadata accessor for WorkflowRecommendationResponse);
  v0[15] = type metadata accessor for Workflow();
  v0[16] = &off_100808FE8;
  v13 = sub_100032DBC(v0 + 12);
  sub_1002C5C40(v12, v13, type metadata accessor for Workflow);
  v14 = sub_10025D0C4();
  v16 = v0[36];
  if (v10)
  {
    sub_10000BB78(v0 + 12);
    goto LABEL_5;
  }

  v24 = v14;
  v25 = v15;
  v26 = v0[20];
  v27 = v0[36];

  sub_10012D290(v0 + 6, (v26 + 2));
  *v26 = v24;
  v26[1] = v25;
  v29 = v0[34];
  v28 = v0[35];
  v30 = v0[31];
  v32 = v0[27];
  v31 = v0[28];

  v22 = v0[1];
LABEL_6:

  return v22();
}

uint64_t sub_1002C13EC()
{
  v1 = v0[36];

  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002C1490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[68] = v6;
  v7[67] = v22;
  v7[66] = a6;
  v7[65] = a5;
  v7[63] = a3;
  v7[64] = a4;
  v7[61] = a1;
  v7[62] = a2;
  v8 = type metadata accessor for DIPError.Code();
  v7[69] = v8;
  v9 = *(v8 - 8);
  v7[70] = v9;
  v10 = *(v9 + 64) + 15;
  v7[71] = swift_task_alloc();
  v11 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v7[72] = v11;
  v12 = *(v11 - 8);
  v7[73] = v12;
  v13 = *(v12 + 64) + 15;
  v7[74] = swift_task_alloc();
  v14 = type metadata accessor for IdentityDocumentType.Category();
  v7[75] = v14;
  v15 = *(v14 - 8);
  v7[76] = v15;
  v16 = *(v15 + 64) + 15;
  v7[77] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v7[78] = v17;
  v18 = *(v17 - 8);
  v7[79] = v18;
  v19 = *(v18 + 64) + 15;
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();

  return _swift_task_switch(sub_1002C16C8, 0, 0);
}

uint64_t sub_1002C16C8()
{
  if (*(v0 + 528))
  {
    v1 = *(v0 + 520);
    *(v0 + 696) = String.lowercased()();
    v2 = swift_task_alloc();
    *(v0 + 712) = v2;
    *v2 = v0;
    v2[1] = sub_1002C1960;
    v3 = *(v0 + 544);
    v4 = *(v0 + 504);
    v5 = *(v0 + 512);
    v6 = *(v0 + 496);

    return sub_1002C0A2C(v0 + 72, v6, v4, v5);
  }

  else
  {
    (*(*(v0 + 560) + 104))(*(v0 + 568), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 552));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8 = *(v0 + 688);
    v9 = *(v0 + 680);
    v10 = *(v0 + 672);
    v11 = *(v0 + 664);
    v12 = *(v0 + 656);
    v13 = *(v0 + 648);
    v14 = *(v0 + 640);
    v15 = *(v0 + 616);
    v16 = *(v0 + 592);
    v17 = *(v0 + 568);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1002C1960()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v7 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v4 = *(v2 + 704);

    v5 = sub_1002C3C70;
  }

  else
  {
    v5 = sub_1002C1A7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C1A7C()
{
  v66 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "-----BEGIN LOGGING SAVED WORKFLOW-----", v5, 2u);
  }

  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);

  v10 = *(v8 + 8);
  *(v0 + 728) = v10;
  v10(v6, v9);
  defaultLogger()();
  sub_1002C4620(v0 + 16, v0 + 128);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 680);
  v15 = *(v0 + 632);
  v16 = *(v0 + 624);
  v64 = v10;
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v65 = v18;
    *v17 = 136446210;
    v19 = sub_10000BA08((v0 + 144), *(v0 + 168));
    v20 = *v19;
    v21 = v19[1];

    sub_1002C45F0(v0 + 128);
    v22 = sub_100141FE4(v20, v21, &v65);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, " WORKFLOWID: %{public}s", v17, 0xCu);
    sub_10000BB78(v18);
    v10 = v64;

    v64(v14, v16);
  }

  else
  {

    v10(v14, v16);
    sub_1002C45F0(v0 + 128);
  }

  v23 = *(v0 + 672);
  defaultLogger()();
  sub_1002C4620(v0 + 16, v0 + 184);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 672);
  v28 = *(v0 + 632);
  v29 = *(v0 + 624);
  if (v26)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v65 = v31;
    *v30 = 136446210;
    v32 = sub_10000BA08((v0 + 200), *(v0 + 224));
    v33 = v32[6];
    v34 = v32[7];

    sub_1002C45F0(v0 + 184);
    v35 = sub_100141FE4(v33, v34, &v65);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, " PROVIDERID: %{public}s", v30, 0xCu);
    sub_10000BB78(v31);
    v10 = v64;

    v64(v27, v29);
  }

  else
  {

    v10(v27, v29);
    sub_1002C45F0(v0 + 184);
  }

  v36 = *(v0 + 664);
  defaultLogger()();
  sub_1002C4620(v0 + 16, v0 + 240);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 664);
  v41 = *(v0 + 632);
  v42 = *(v0 + 624);
  if (v39)
  {
    v63 = *(v0 + 664);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v65 = v44;
    *v43 = 136446210;
    v45 = sub_10000BA08((v0 + 256), *(v0 + 280));
    *(v45 + *(type metadata accessor for Workflow() + 116));

    v46 = Array.description.getter();
    v48 = v47;

    sub_1002C45F0(v0 + 240);
    v49 = sub_100141FE4(v46, v48, &v65);

    *(v43 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v37, v38, " PAGINATION: %{public}s", v43, 0xCu);
    sub_10000BB78(v44);
    v10 = v64;

    v64(v63, v42);
  }

  else
  {

    v10(v40, v42);
    sub_1002C45F0(v0 + 240);
  }

  v50 = *(v0 + 656);
  defaultLogger()();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "-----END LOGGING SAVED WORKFLOW-----", v53, 2u);
  }

  v54 = *(v0 + 656);
  v55 = *(v0 + 632);
  v56 = *(v0 + 624);

  v10(v54, v56);
  v57 = swift_task_alloc();
  *(v0 + 736) = v57;
  *v57 = v0;
  v57[1] = sub_1002C20B8;
  v58 = *(v0 + 704);
  v59 = *(v0 + 696);
  v60 = *(v0 + 544);
  v61 = *(v0 + 536);

  return sub_1002C4658(v61, v0 + 32, v59, v58);
}

uint64_t sub_1002C20B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 736);
  v6 = *v2;
  *(v4 + 744) = a1;
  *(v4 + 752) = v1;

  v7 = *(v3 + 704);

  if (v1)
  {
    v8 = sub_1002C2808;
  }

  else
  {
    v8 = sub_1002C21F8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002C21F8()
{
  v41 = v0;
  v1 = v0[93];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v26 = v0[93];
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v2 = v0[68];
    v3 = *(v2 + 40);
    v4 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
    swift_beginAccess();
    sub_10000BBC4(v3 + v4, (v0 + 37), &qword_10083D4B8, &qword_1006DB470);
    v5 = v0[40];
    sub_10000BE18((v0 + 37), &qword_10083D4B8, &qword_1006DB470);
    if (v5 && (v6 = *(v0[68] + 32), swift_beginAccess(), sub_10000BBC4(v6 + 192, (v0 + 49), &qword_10083D4B8, &qword_1006DB470), v7 = v0[52], sub_10000BE18((v0 + 49), &qword_10083D4B8, &qword_1006DB470), v7))
    {
      v8 = v0[67];
      v0[104] = *(v0[68] + 24);
      v9 = sub_10000BA08(v0 + 4, v0[7])[20];
      v0[105] = v9;

      v10 = IdentityProofingConfiguration.documentType.getter();
      v11 = swift_task_alloc();
      v0[106] = v11;
      *v11 = v0;
      v11[1] = sub_1002C350C;
      v12 = v0[74];

      return sub_1002A77FC(v12, v9, v10);
    }

    else
    {
      v14 = v0[81];
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[91];
      v19 = v0[81];
      v20 = v0[79];
      v21 = v0[78];
      if (v17)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v40 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100141FE4(0xD000000000000083, 0x800000010070AB80, &v40);
        _os_log_impl(&_mh_execute_header, v15, v16, "%s missing identitykeys, refetching", v22, 0xCu);
        sub_10000BB78(v23);
      }

      v18(v19, v21);
      v0[95] = *(v2 + 40);

      v24 = swift_task_alloc();
      v0[96] = v24;
      *v24 = v0;
      v24[1] = sub_1002C2A28;
      v25 = v0[67];

      return sub_1001AAAAC((v0 + 43), (v0 + 4), v25);
    }
  }

  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.invalidWorkflowPackage(_:), v0[69]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v38 = v0[90];
  v39 = v0[93];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v38)
  {
    sub_1002C45F0((v0 + 2));
  }

  v27 = v0[86];
  v28 = v0[85];
  v29 = v0[84];
  v30 = v0[83];
  v31 = v0[82];
  v32 = v0[81];
  v33 = v0[80];
  v34 = v0[77];
  v35 = v0[74];
  v36 = v0[71];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1002C2808()
{
  v1 = v0[94];
  v2 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v2)
  {
    sub_1002C45F0((v0 + 2));
  }

  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[77];
  v11 = v0[74];
  v12 = v0[71];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002C2A28()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v4 = *v1;
  *(*v1 + 776) = v0;

  v5 = *(v2 + 760);

  if (v0)
  {
    v6 = sub_1002C3E8C;
  }

  else
  {
    v6 = sub_1002C2B5C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002C2B5C()
{
  v1 = v0[97];
  v2 = v0[47];
  sub_10000BA08(v0 + 43, v0[46]);
  v3 = dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  v0[98] = v3;
  v0[99] = v4;
  if (v1)
  {
    sub_1001B7154((v0 + 43));
    v5 = v0[93];
    v6 = v0[90];
    (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    if (!v6)
    {
      sub_1002C45F0((v0 + 2));
    }

    v7 = v0[86];
    v8 = v0[85];
    v9 = v0[84];
    v10 = v0[83];
    v11 = v0[82];
    v12 = v0[81];
    v13 = v0[80];
    v14 = v0[77];
    v15 = v0[74];
    v16 = v0[71];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v3;
    v20 = v4;
    v21 = v0[77];
    v22 = v0[76];
    v23 = v0[75];
    v24 = v0[67];
    v25 = *(v0[68] + 40);

    IdentityProofingConfiguration.documentType.getter();
    IdentityDocumentType.category.getter();
    v26 = (*(v22 + 88))(v21, v23);
    if (v26 == enum case for IdentityDocumentType.Category.mDL(_:))
    {
      v27 = 63;
    }

    else if (v26 == enum case for IdentityDocumentType.Category.passport(_:))
    {
      v27 = 16;
    }

    else
    {
      (*(v0[76] + 8))(v0[77], v0[75]);
      v27 = 0;
    }

    v28 = v0[80];
    v29 = PKPassKitCoreBundle();
    type metadata accessor for SupplementalDeviceDataFetcher();
    swift_allocObject();
    sub_10000B8B8(v19, v20);
    v30 = sub_10059F7F0(v27, v19, v20, v29);
    v31 = *(v25 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);
    *(v25 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher) = v30;

    sub_10059FA1C();

    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "prepareStepUpUIFromSavedWorkflow: warmup producedAssets", v34, 2u);
    }

    v35 = v0[91];
    v36 = v0[80];
    v37 = v0[79];
    v38 = v0[78];
    v39 = v0[68];
    v40 = v0[67];

    v35(v36, v38);
    v0[100] = *(v39 + 32);

    v41 = IdentityProofingConfiguration.documentType.getter();
    v42 = *(*(v39 + 40) + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);
    v0[101] = v42;

    v43 = swift_task_alloc();
    v0[102] = v43;
    *v43 = v0;
    v43[1] = sub_1002C3064;

    return sub_1001D0B30(v41, (v0 + 4), (v0 + 43), v42);
  }
}

uint64_t sub_1002C3064()
{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);

  if (v0)
  {
    v7 = sub_1002C32CC;
  }

  else
  {
    v7 = sub_1002C31B4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C31B4()
{
  v1 = v0[68];
  sub_10000B90C(v0[98], v0[99]);
  v2 = *(v1 + 32);

  sub_1001B7154((v0 + 43));
  *(v2 + 184) = 1;

  v3 = v0[67];
  v0[104] = *(v0[68] + 24);
  v4 = sub_10000BA08(v0 + 4, v0[7])[20];
  v0[105] = v4;

  v5 = IdentityProofingConfiguration.documentType.getter();
  v6 = swift_task_alloc();
  v0[106] = v6;
  *v6 = v0;
  v6[1] = sub_1002C350C;
  v7 = v0[74];

  return sub_1002A77FC(v7, v4, v5);
}

uint64_t sub_1002C32CC()
{
  sub_10000B90C(v0[98], v0[99]);
  sub_1001B7154((v0 + 43));
  v1 = v0[103];
  v2 = v0[93];
  v3 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v3)
  {
    sub_1002C45F0((v0 + 2));
  }

  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[80];
  v11 = v0[77];
  v12 = v0[74];
  v13 = v0[71];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002C350C()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  v2[107] = v0;

  v5 = v2[105];
  if (v0)
  {
    v6 = v2[93];

    v7 = sub_1002C3A2C;
  }

  else
  {

    v7 = sub_1002C3654;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002C3654()
{
  v1 = v0[107];
  v2 = v0[74];
  v3 = v0[72];
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A6758(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v0[104];
  v10 = v0[93];
  v11 = v0[74];
  v12 = v0[73];
  v13 = v0[72];
  if (v1)
  {

    (*(v12 + 8))(v11, v13);

    v14 = v0[67];
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006DAE90;
    v16 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v15 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    IdentityProofingConfiguration.documentType.getter();
    v17 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v37 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  else
  {
    v38 = v0[68];
    v18 = v0[67];
    v19 = v7;
    v20 = v8;

    (*(v12 + 8))(v11, v13);
    sub_10000B8B8(v19, v20);
    IdentityProofingConfiguration.documentType.getter();
    sub_1002C40B8();
    v21 = v0[2];
    v22 = v0[3];
    objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v23 = v21;
    v24 = v22;
    v37 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    sub_10000B90C(v19, v20);
  }

  v25 = v0[86];
  v26 = v0[85];
  v27 = v0[84];
  v28 = v0[83];
  v29 = v0[82];
  v30 = v0[81];
  v31 = v0[80];
  v32 = v0[77];
  v33 = v0[74];
  v36 = v0[71];
  sub_100020260((v0 + 4), v0[61]);
  sub_1002C45F0((v0 + 2));

  v34 = v0[1];

  return v34(v37);
}

uint64_t sub_1002C3A2C()
{
  v1 = v0[104];

  v2 = v0[107];
  v3 = v0[67];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006DAE90;
  v5 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v4 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v6 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v19 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v7 = v0[86];
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[82];
  v12 = v0[81];
  v13 = v0[80];
  v14 = v0[77];
  v15 = v0[74];
  v18 = v0[71];
  sub_100020260((v0 + 4), v0[61]);
  sub_1002C45F0((v0 + 2));

  v16 = v0[1];

  return v16(v19);
}

uint64_t sub_1002C3C70()
{
  v1 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v1)
  {
    sub_1002C45F0((v0 + 2));
  }

  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[77];
  v10 = v0[74];
  v11 = v0[71];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002C3E8C()
{
  v1 = v0[97];
  v2 = v0[93];
  v3 = v0[90];
  (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.internalError(_:), v0[69]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  if (!v3)
  {
    sub_1002C45F0((v0 + 2));
  }

  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[80];
  v11 = v0[77];
  v12 = v0[74];
  v13 = v0[71];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002C40B8()
{
  v1 = v0;
  v2 = sub_100007224(&qword_10083D4B0, &qword_1006DC940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Logger();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v36);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v36 - v17;
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  IdentityProofingConfiguration.documentType.getter();
  v21 = IdentityDocumentType.rawValue.getter();
  if (v21 == IdentityDocumentType.rawValue.getter())
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Passport is not supported for Liveness consent", v24, 2u);
    }

    (*(v11 + 8))(v20, v36);
    return 0;
  }

  v25 = *(v1 + 40);
  v26 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
  swift_beginAccess();
  sub_10000BBC4(v25 + v26, v5, &qword_10083D4B0, &qword_1006DC940);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000BE18(v5, &qword_10083D4B0, &qword_1006DC940);
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch static workflow", v29, 2u);
    }

    (*(v11 + 8))(v15, v36);
    return 0;
  }

  sub_1002C5C40(v5, v10, type metadata accessor for IdentityProofingStaticWorkflow);
  if (*&v10[*(v6 + 76)])
  {
    IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
    IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
    IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
  }

  v31 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
  v32 = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "successfully prepared featureEnablementConfig", v35, 2u);
  }

  (*(v11 + 8))(v18, v36);
  sub_1001A1FAC(v10);
  return v32;
}

void *sub_1002C4548()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  return v0;
}

uint64_t sub_1002C4598()
{
  sub_1002C4548();

  return swift_deallocClassInstance();
}

uint64_t sub_1002C4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[68] = v4;
  v5[67] = a4;
  v5[66] = a3;
  v5[65] = a2;
  v5[64] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[69] = v6;
  v7 = *(v6 - 8);
  v5[70] = v7;
  v8 = *(v7 + 64) + 15;
  v5[71] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[72] = v9;
  v10 = *(v9 - 8);
  v5[73] = v10;
  v11 = *(v10 + 64) + 15;
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();

  return _swift_task_switch(sub_1002C479C, 0, 0);
}

uint64_t sub_1002C479C()
{
  v1 = v0[65];
  v2 = sub_10000BA08(v1, v1[3]);
  v3 = *(v2 + *(type metadata accessor for Workflow() + 116));
  v0[77] = v3;
  if (v3 && (v4 = *(v3 + 16), (v0[78] = v4) != 0))
  {
    v5 = v0[76];

    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Fetch activeConfig from prepareProofingUI", v8, 2u);
    }

    v9 = v0[76];
    v10 = v0[73];
    v11 = v0[72];
    v12 = v0[68];
    v13 = v0[65];
    v14 = v0[64];

    v15 = *(v10 + 8);
    v0[79] = v15;
    v15(v9, v11);
    v0[80] = *(v12 + 24);
    v16 = sub_10000BA08(v13, v1[3])[20];
    v0[81] = v16;

    v17 = IdentityProofingConfiguration.documentType.getter();
    v18 = swift_task_alloc();
    v0[82] = v18;
    *v18 = v0;
    v18[1] = sub_1002C4B00;

    return sub_1002A8D74((v0 + 2), v16, v17);
  }

  else
  {
    (*(v0[70] + 104))(v0[71], enum case for DIPError.Code.workflowPaginationUnavailable(_:), v0[69]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v20 = v0[76];
    v21 = v0[75];
    v22 = v0[74];
    v23 = v0[71];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1002C4B00()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v8 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v4 = sub_1002C5294;
  }

  else
  {
    v5 = *(v2 + 648);
    v6 = *(v2 + 640);
    sub_1000F2758(v2 + 16);

    v4 = sub_1002C4C3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1002C4C3C()
{
  v58 = v0;
  v0[63] = _swiftEmptyArrayStorage;
  v0[85] = _swiftEmptyArrayStorage;
  v0[84] = 0;
  v1 = v0[77];
  if (*(v1 + 16))
  {
    v2 = 0;
    while (1)
    {
      v3 = (v1 + 112 * v2);
      v0[86] = v3[5];
      v0[87] = v3[6];
      v0[88] = v3[7];
      v0[89] = v3[8];
      v0[90] = v3[9];
      v0[91] = v3[10];
      v0[92] = v3[12];
      v4 = v3[14];
      v0[93] = v4;
      v0[94] = v3[16];
      v5 = v3[17];
      v0[95] = v5;
      v6 = sub_100308788(v3[13], v4);
      v8 = v7;
      v55 = v6;
      v0[96] = v6;
      v0[97] = v7;
      if (v5)
      {
        v9 = *(v5 + 16);

        if (v9)
        {
          v42 = v0[75];

          defaultLogger()();

          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.debug.getter();

          v45 = os_log_type_enabled(v43, v44);
          v46 = v0[79];
          v47 = v0[75];
          v48 = v0[73];
          v49 = v0[72];
          if (v45)
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v57[0] = v51;
            *v50 = 136315138;
            *(v50 + 4) = sub_100141FE4(v55, v8, v57);
            _os_log_impl(&_mh_execute_header, v43, v44, "Image assets field exists for the page -> %s", v50, 0xCu);
            sub_10000BB78(v51);
          }

          v46(v47, v49);
          v0[98] = *(v0[68] + 48);

          v52 = swift_task_alloc();
          v0[99] = v52;
          *v52 = v0;
          v52[1] = sub_1002C5344;
          v53 = v0[67];
          v54 = v0[66];

          sub_10026F6BC(v54, v53, v5);
          return;
        }
      }

      else
      {
      }

      v10 = v0[90];
      v11 = v0[89];
      v12 = v0[88];
      v13 = v0[87];
      v14 = v0[86];
      v15 = v0[74];
      v16 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

      v17 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

      defaultLogger()();
      v18 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      v21 = os_log_type_enabled(v19, v20);
      v22 = v0[79];
      v23 = v0[74];
      v24 = v0[73];
      v25 = v0[72];
      if (v21)
      {
        v56 = v0[79];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v57[0] = v27;
        *v26 = 136446210;
        v28 = IdentityProofingUIConfig.view.getter();
        v30 = sub_100141FE4(v28, v29, v57);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s to be shown to the user", v26, 0xCu);
        sub_10000BB78(v27);

        v56(v23, v25);
      }

      else
      {

        v22(v23, v25);
      }

      v31 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v32 = v0[78];
      v33 = v0[84] + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v34 = v0[63];
      if (v33 == v32)
      {
        break;
      }

      v2 = v0[84] + 1;
      v0[85] = v34;
      v0[84] = v2;
      v1 = v0[77];
      if (v2 >= *(v1 + 16))
      {
        goto LABEL_23;
      }
    }

    v36 = v0[77];
    v37 = v0[76];
    v38 = v0[75];
    v39 = v0[74];
    v40 = v0[71];

    v41 = v0[1];

    v41(v34);
  }

  else
  {
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_1002C5294()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[77];

  v4 = v0[83];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[71];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002C5344(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 792);
  v6 = *v2;
  v4[100] = v1;

  v7 = v4[98];
  if (v1)
  {
    v8 = v4[97];
    v9 = v4[94];
    v10 = v4[93];
    v11 = v4[92];
    v20 = v4[91];
    v21 = v4[95];
    v12 = v4[90];
    v13 = v4[89];
    v14 = v4[87];
    v15 = v4[85];
    v16 = v4[77];

    swift_bridgeObjectRelease_n();

    v17 = sub_1002C5BB0;
  }

  else
  {
    v18 = v4[95];

    v4[101] = a1;
    v17 = sub_1002C5534;
  }

  return _swift_task_switch(v17, 0, 0);
}

void sub_1002C5534()
{
  v68 = v0;
  v1 = v0[101];
  v62 = v0[95];
  v63 = v0[94];
  v2 = v0[93];
  v59 = v0[91];
  v60 = v0[92];
  v58 = type metadata accessor for IdentityProofingUIConfig();
  v61 = v0[97];
  v65 = v0[96];
  while (1)
  {
    v3 = v0[90];
    v4 = v0[89];
    v5 = v0[88];
    v6 = v0[87];
    v7 = v0[86];
    v8 = v0[74];
    v9 = objc_allocWithZone(v58);

    v10 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    defaultLogger()();
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[79];
    v16 = v0[74];
    v17 = v0[73];
    v18 = v0[72];
    if (v14)
    {
      v64 = v0[79];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v67[0] = v20;
      *v19 = 136446210;
      v21 = IdentityProofingUIConfig.view.getter();
      v23 = sub_100141FE4(v21, v22, v67);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s to be shown to the user", v19, 0xCu);
      sub_10000BB78(v20);

      v64(v16, v18);
    }

    else
    {

      v15(v16, v18);
    }

    v24 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v0[63] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v25 = v0[78];
    v26 = v0[84] + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v27 = v0[63];
    if (v26 == v25)
    {
      break;
    }

    v28 = v0[84] + 1;
    v0[85] = v27;
    v0[84] = v28;
    v29 = v0[77];
    if (v28 >= *(v29 + 16))
    {
      __break(1u);
      return;
    }

    v30 = (v29 + 112 * v28);
    v0[86] = v30[5];
    v0[87] = v30[6];
    v0[88] = v30[7];
    v0[89] = v30[8];
    v0[90] = v30[9];
    v0[91] = v30[10];
    v0[92] = v30[12];
    v31 = v30[14];
    v0[93] = v31;
    v0[94] = v30[16];
    v32 = v30[17];
    v0[95] = v32;
    v33 = sub_100308788(v30[13], v31);
    v35 = v34;
    v66 = v33;
    v0[96] = v33;
    v0[97] = v34;
    if (v32)
    {
      v36 = *(v32 + 16);

      if (v36)
      {
        v44 = v0[75];

        defaultLogger()();

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        v47 = os_log_type_enabled(v45, v46);
        v48 = v0[79];
        v49 = v0[75];
        v50 = v0[73];
        v51 = v0[72];
        if (v47)
        {
          v52 = v0[79];
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v67[0] = v54;
          *v53 = 136315138;
          *(v53 + 4) = sub_100141FE4(v66, v35, v67);
          _os_log_impl(&_mh_execute_header, v45, v46, "Image assets field exists for the page -> %s", v53, 0xCu);
          sub_10000BB78(v54);

          v52(v49, v51);
        }

        else
        {

          v48(v49, v51);
        }

        v0[98] = *(v0[68] + 48);

        v55 = swift_task_alloc();
        v0[99] = v55;
        *v55 = v0;
        v55[1] = sub_1002C5344;
        v56 = v0[67];
        v57 = v0[66];

        sub_10026F6BC(v57, v56, v32);
        return;
      }
    }

    else
    {
    }
  }

  v38 = v0[77];
  v39 = v0[76];
  v40 = v0[75];
  v41 = v0[74];
  v42 = v0[71];

  v43 = v0[1];

  v43(v27);
}

uint64_t sub_1002C5BB0()
{
  v1 = v0[100];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[71];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002C5C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C5CDC(uint64_t a1, uint64_t a2)
{
  v3[201] = v2;
  v3[200] = a2;
  v3[199] = a1;
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[202] = v4;
  v5 = *(v4 - 8);
  v3[203] = v5;
  v6 = *(v5 + 64) + 15;
  v3[204] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[205] = v7;
  v8 = *(v7 - 8);
  v3[206] = v8;
  v9 = *(v8 + 64) + 15;
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  v3[209] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_10083D4B0, &qword_1006DC940) - 8) + 64) + 15;
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v3[212] = swift_task_alloc();

  return _swift_task_switch(sub_1002C5E68, v2, 0);
}

uint64_t sub_1002C5E68()
{
  v1 = v0[212];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[201];
  v5 = OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow;
  v0[213] = OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_10083D4B0, &qword_1006DC940);
  v6 = *(v2 + 48);
  v0[214] = v6;
  v0[215] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v3) = v6(v1, 1, v3);
  sub_10000BE18(v1, &qword_10083D4B0, &qword_1006DC940);
  if (v3 == 1)
  {

    return _swift_task_switch(sub_1002C60BC, 0, 0);
  }

  else
  {
    v7 = v0[215];
    v8 = v0[214];
    v9 = v0[210];
    v10 = v0[202];
    sub_10000BBC4(v0[201] + v0[213], v9, &qword_10083D4B0, &qword_1006DC940);
    v11 = v8(v9, 1, v10);
    v12 = v0[210];
    if (v11)
    {
      sub_10000BE18(v12, &qword_10083D4B0, &qword_1006DC940);
      v13 = 0;
    }

    else
    {
      v14 = v0[204];
      v15 = v0[210];
      sub_1001A2050(v12, v14);
      sub_10000BE18(v15, &qword_10083D4B0, &qword_1006DC940);
      v13 = *(v14 + 64);

      sub_1001A1FAC(v14);
    }

    v0[221] = v13;
    v16 = swift_task_alloc();
    v0[222] = v16;
    *v16 = v0;
    v16[1] = sub_1002C6838;
    v17 = v0[200];

    return sub_1002A8D74((v0 + 2), v13, v17);
  }
}