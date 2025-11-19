uint64_t sub_10018A6DC()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 784);
  v4 = *(v0 + 760);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);

  sub_10001C120(v2, v1);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  sub_10000A0D4(v4, &qword_1002004D0, &unk_1001AE1C0);
  sub_10000A0D4(v3, &qword_100202988, &unk_1001AD140);
  v10 = *(v0 + 1304);
  v11 = *(v0 + 1136);
  defaultLogger()();
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Device cross check failed with error: %@", v14, 0xCu);
    sub_10000A0D4(v15, &qword_1002003B8, &unk_1001AB850);
  }

  v17 = *(v0 + 1136);
  v18 = *(v0 + 1112);
  v19 = *(v0 + 1104);
  v20 = *(v0 + 1360);

  v21 = *(v18 + 8);
  v21(v17, v19);
  if ((v20 & 1) != 0 || (v22 = [objc_opt_self() standardUserDefaults], v23._countAndFlagsBits = static SharedInternalDefaultsKeys.makeDeviceCrossCheckErrorsTerminal.getter(), v24 = NSUserDefaults.internalBool(forKey:)(v23), , v22, v24))
  {
    v25 = *(v0 + 1168);
    v26 = *(v0 + 1160);
    v27 = *(v0 + 1152);
    v28 = *(v0 + 1144);
    v29 = *(v0 + 1136);
    v30 = *(v0 + 1128);
    v31 = *(v0 + 1120);
    v32 = *(v0 + 1096);
    v47 = *(v0 + 1088);
    v48 = *(v0 + 1080);
    v49 = *(v0 + 1072);
    v51 = *(v0 + 1064);
    v53 = *(v0 + 1056);
    v55 = *(v0 + 1048);
    v57 = *(v0 + 1040);
    v59 = *(v0 + 1032);
    v61 = *(v0 + 1024);
    v63 = *(v0 + 1016);
    v65 = *(v0 + 1008);
    v67 = *(v0 + 1000);
    v69 = *(v0 + 992);
    v71 = *(v0 + 984);
    v73 = *(v0 + 960);
    v75 = *(v0 + 936);
    v77 = *(v0 + 928);
    v79 = *(v0 + 920);
    v81 = *(v0 + 896);
    v83 = *(v0 + 888);
    v85 = *(v0 + 864);
    v87 = *(v0 + 856);
    v89 = *(v0 + 848);
    v91 = *(v0 + 840);
    v93 = *(v0 + 832);
    v95 = *(v0 + 824);
    v97 = *(v0 + 816);
    v99 = *(v0 + 808);
    v101 = *(v0 + 784);
    v103 = *(v0 + 776);
    v105 = *(v0 + 768);
    v107 = *(v0 + 760);
    v109 = *(v0 + 752);
    v111 = *(v0 + 744);
    v113 = *(v0 + 736);
    v115 = *(v0 + 728);
    v117 = *(v0 + 720);
    v119 = *(v0 + 696);
    v121 = *(v0 + 688);
    v123 = *(v0 + 664);
    v125 = *(v0 + 640);
    v127 = *(v0 + 632);
    v129 = *(v0 + 608);
    v131 = *(v0 + 584);
    swift_willThrow();

    v33 = *(v0 + 8);
  }

  else
  {
    v34 = *(v0 + 1128);
    v35 = *(v0 + 1104);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v21(v34, v35);
    v36 = *(v0 + 1168);
    v37 = *(v0 + 1160);
    v38 = *(v0 + 1152);
    v39 = *(v0 + 1144);
    v40 = *(v0 + 1136);
    v41 = *(v0 + 1128);
    v42 = *(v0 + 1120);
    v43 = *(v0 + 1096);
    v44 = *(v0 + 1088);
    v45 = *(v0 + 1080);
    v50 = *(v0 + 1072);
    v52 = *(v0 + 1064);
    v54 = *(v0 + 1056);
    v56 = *(v0 + 1048);
    v58 = *(v0 + 1040);
    v60 = *(v0 + 1032);
    v62 = *(v0 + 1024);
    v64 = *(v0 + 1016);
    v66 = *(v0 + 1008);
    v68 = *(v0 + 1000);
    v70 = *(v0 + 992);
    v72 = *(v0 + 984);
    v74 = *(v0 + 960);
    v76 = *(v0 + 936);
    v78 = *(v0 + 928);
    v80 = *(v0 + 920);
    v82 = *(v0 + 896);
    v84 = *(v0 + 888);
    v86 = *(v0 + 864);
    v88 = *(v0 + 856);
    v90 = *(v0 + 848);
    v92 = *(v0 + 840);
    v94 = *(v0 + 832);
    v96 = *(v0 + 824);
    v98 = *(v0 + 816);
    v100 = *(v0 + 808);
    v102 = *(v0 + 784);
    v104 = *(v0 + 776);
    v106 = *(v0 + 768);
    v108 = *(v0 + 760);
    v110 = *(v0 + 752);
    v112 = *(v0 + 744);
    v114 = *(v0 + 736);
    v116 = *(v0 + 728);
    v118 = *(v0 + 720);
    v120 = *(v0 + 696);
    v122 = *(v0 + 688);
    v124 = *(v0 + 664);
    v126 = *(v0 + 640);
    v128 = *(v0 + 632);
    v130 = *(v0 + 608);
    v132 = *(v0 + 584);

    v33 = *(v0 + 8);
  }

  return v33();
}

uint64_t sub_10018AF64()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_10018B0C0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v92 = a6;
  v93 = a5;
  v94 = a2;
  v95 = a1;
  v91 = a7;
  v9 = type metadata accessor for DIPError.Code();
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  __chkstk_darwin(v9);
  v89 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v84 = v76 - v14;
  v15 = type metadata accessor for CredentialKeyType();
  v16 = *(v15 - 8);
  v85 = v15;
  v86 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s11KeyToDeleteVMa(0);
  v90 = *(v20 - 8);
  v21 = *(v90 + 64);
  __chkstk_darwin(v20);
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = v76 - v30;
  v32 = a3;
  v33 = a4;
  v34 = v96;
  v35 = sub_10016A520(v94, v32);
  if (v34)
  {
    return;
  }

  v94 = v31;
  v95 = v24;
  v82 = v23;
  v83 = v19;
  v96 = v25;
  v36 = v35;
  if (!sub_10018F32C(v35))
  {
    v42 = v29;
    defaultLogger()();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Credential payload protection policy does not use biometric auth, skipping deletion of device encryption key", v45, 2u);
    }

    (*(v96 + 8))(v42, v95);
    (*(v90 + 56))(v91, 1, 1, v20);
    return;
  }

  v37 = v94;
  v38 = defaultLogger()();
  __chkstk_darwin(v38);
  Logger.cryptoParam(_:)();
  v39 = v96 + 8;
  v40 = *(v96 + 8);
  v40(v37, v95);
  sub_10005966C();
  v46 = v41;
  v77 = v40;
  v78 = v20;
  v96 = v39;
  v79 = 0;
  v76[1] = v33;
  if (v41 >> 62)
  {
LABEL_39:
    v47 = _CocoaArrayWrapper.endIndex.getter();
    v48 = v36;
    if (v47)
    {
      goto LABEL_10;
    }

LABEL_40:

    (*(v90 + 56))(v91, 1, 1, v78);
    return;
  }

  v47 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v48 = v36;
  if (!v47)
  {
    goto LABEL_40;
  }

LABEL_10:
  v49 = 0;
  v80 = v46 & 0xFFFFFFFFFFFFFF8;
  v81 = v46 & 0xC000000000000001;
  while (1)
  {
    if (v81)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v49 >= *(v80 + 16))
      {
        goto LABEL_38;
      }

      v50 = *(v46 + 8 * v49 + 32);
    }

    v51 = v50;
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v53 = [v50 identifier];
    if (!v53)
    {
      goto LABEL_12;
    }

    v36 = v53;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    if (v54 == v93 && v56 == v92)
    {
      break;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_26;
    }

LABEL_12:

    ++v49;
    if (v52 == v47)
    {
      goto LABEL_40;
    }
  }

  v54 = v93;
LABEL_26:

  v58 = [v51 keyType];
  v59 = v48;
  v60 = v85;
  if (v58)
  {
    v61 = v58;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = v84;
    CredentialKeyType.init(rawValue:)();
    v63 = v86;
    if ((*(v86 + 48))(v62, 1, v60) == 1)
    {
      sub_10000A0D4(v62, &qword_100200510, qword_1001AB070);
      v59 = v48;
      goto LABEL_29;
    }

    (*(v63 + 32))(v83, v62, v60);
    v59 = v48;
  }

  else
  {
LABEL_29:
    (*(v86 + 104))(v83, enum case for CredentialKeyType.invalid(_:), v60);
  }

  v64 = [v51 keyBlob];
  v65 = v82;
  if (v64)
  {
    v66 = v64;
    v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0xF000000000000000;
  }

  *v65 = v54;
  v65[1] = v56;
  v70 = v78;
  (*(v86 + 32))(v65 + *(v78 + 20), v83, v85);
  v71 = (v65 + *(v70 + 24));
  *v71 = v67;
  v71[1] = v69;

  v72 = v94;
  v73 = defaultLogger()();
  __chkstk_darwin(v73);
  Logger.cryptoParam(_:)();

  v77(v72, v95);
  [v59 removeCryptoKeysObject:v51];
  v74 = v79;
  sub_100050240();
  if (v74)
  {
    sub_10018F128(v65, _s11KeyToDeleteVMa);

    (*(v87 + 104))(v89, enum case for DIPError.Code.internalError(_:), v88);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {

    v75 = v91;
    sub_10018EAB4(v65, v91, _s11KeyToDeleteVMa);
    (*(v90 + 56))(v75, 0, 1, v70);
  }
}

uint64_t sub_10018B9F0(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(58);
  v4._object = 0x80000001001BCFE0;
  v4._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return 0;
}

unint64_t sub_10018BA74(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(50);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  return 0xD000000000000030;
}

void sub_10018BAF4(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v5 = v4;
  v71 = a3;
  v82 = a2;
  v79 = a1;
  v64 = a4;
  v6 = type metadata accessor for DIPError.Code();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v73 = &v60 - v11;
  v12 = type metadata accessor for CredentialKeyUsage();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  v14 = __chkstk_darwin(v12);
  v87 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v80 = v18;
  v81 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v72 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v60 - v23;
  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Deleting all device encryption auth required keys", v27, 2u);
    v5 = v4;
  }

  v29 = v81 + 8;
  v28 = *(v81 + 8);
  v28(v24, v80);
  v30 = sub_10016A520(v79, v82);
  if (!v5)
  {
    v31 = v30;
    v68 = v28;
    v81 = v29;
    sub_10005966C();
    v33 = v32;
    v62 = 0;
    if (v32 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v31;
    v61 = v6;
    if (v34)
    {
      if (v34 >= 1)
      {
        v35 = 0;
        v78 = v33 & 0xC000000000000001;
        v69 = (v77 + 48);
        v63 = (v77 + 32);
        v70 = enum case for CredentialKeyUsage.invalid(_:);
        v36 = v77 + 104;
        v37 = (v77 + 8);
        v82 = _swiftEmptyArrayStorage;
        LODWORD(v77) = enum case for CredentialKeyUsage.deviceEncryptionAuthRequired(_:);
        v74 = v33;
        v75 = v36;
        v76 = v36 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v79 = v34;
        while (1)
        {
          if (v78)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v38 = *(v33 + 8 * v35 + 32);
          }

          v39 = v38;
          v40 = [v38 usage];
          if (v40)
          {
            v41 = v40;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v42 = v73;
            CredentialKeyUsage.init(rawValue:)();
            if ((*v69)(v42, 1, v12) != 1)
            {
              (*v63)(v17, v42, v12);
              v43 = *v75;
              goto LABEL_19;
            }

            sub_10000A0D4(v42, &qword_1002024A8, &unk_1001ACFA0);
          }

          v43 = *v75;
          (*v75)(v17, v70, v12);
LABEL_19:
          v43(v87, v77, v12);
          sub_10018FF54(&qword_1002024B0, &type metadata accessor for CredentialKeyUsage);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v85 == v83 && v86 == v84)
          {
            v44 = *v37;
            (*v37)(v87, v12);
            v44(v17, v12);
          }

          else
          {
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v46 = *v37;
            (*v37)(v87, v12);
            v46(v17, v12);
            v33 = v74;

            if ((v45 & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          v47 = [v39 identifier];
          if (v47)
          {
            v48 = v47;
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;

            v52 = v72;
            v53 = defaultLogger()();
            __chkstk_darwin(v53);
            Logger.cryptoParam(_:)();
            v68(v52, v80);
            [v67 removeCryptoKeysObject:v39];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = sub_100100418(0, *(v82 + 2) + 1, 1, v82);
            }

            v55 = *(v82 + 2);
            v54 = *(v82 + 3);
            if (v55 >= v54 >> 1)
            {
              v82 = sub_100100418((v54 > 1), v55 + 1, 1, v82);
            }

            v56 = v82;
            *(v82 + 2) = v55 + 1;
            v57 = &v56[16 * v55];
            *(v57 + 4) = v49;
            *(v57 + 5) = v51;
            v33 = v74;
            goto LABEL_10;
          }

LABEL_9:

LABEL_10:
          if (v79 == ++v35)
          {
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else
    {
      v82 = _swiftEmptyArrayStorage;
LABEL_30:

      v58 = v62;
      sub_100050240();
      if (v58)
      {

        v59 = v67;
        (*(v65 + 104))(v66, enum case for DIPError.Code.internalError(_:), v61);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      else
      {

        *v64 = v82;
      }
    }
  }
}

uint64_t sub_10018C3D0(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(64);
  v4._object = 0x80000001001BCF00;
  v4._countAndFlagsBits = 0xD00000000000003ELL;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return 0;
}

void sub_10018C454(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v112 = a6;
  v110 = a7;
  v111 = a5;
  v114 = a2;
  v109 = a8;
  v11 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v103 = &v98 - v13;
  v108 = type metadata accessor for CredentialKeyType();
  v105 = *(v108 - 8);
  v14 = *(v105 + 64);
  v15 = __chkstk_darwin(v108);
  v107 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v104 = &v98 - v18;
  __chkstk_darwin(v17);
  v106 = &v98 - v19;
  v20 = sub_100004E70(&qword_100202498, &unk_1001AD910);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v98 - v25;
  v27 = type metadata accessor for Logger();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a3;
  v33 = a4;
  v34 = v113;
  v35 = sub_10016A520(v114, v32);
  if (v34)
  {
    return;
  }

  v36 = v35;
  v101 = v28;
  v102 = v27;
  v113 = a1;
  v37 = v110;
  v38 = v111;
  v98 = v24;
  v99 = v33;
  v100 = v26;
  v114 = 0;
  v39 = v112;
  sub_10016B688(v35, v111, v112);
  if ((v40 & 1) == 0)
  {
    v45 = [v36 options];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 payloadProtectionPolicy];

      v48 = v37;
      v49 = v113;
      if ((v47 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    v47 = 0;
    v48 = v37;
    v49 = v113;
LABEL_10:
    sub_100009278((v49 + 32), *(v49 + 56));
    v50 = sub_100021FD0(v36, v38, v39, v48);
    v51 = v114;
    v52 = sub_10016AC34(v49 + 72, v48, v50);
    if (v51)
    {

      return;
    }

    LODWORD(v114) = v52;
    v112 = v36;
    v53 = sub_10005947C();
    v54 = v53;
    v113 = v47;
    if (v53 >> 62)
    {
      v55 = _CocoaArrayWrapper.endIndex.getter();
      v56 = v99;
      if (!v55)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v56 = v99;
      if (!v55)
      {
        goto LABEL_21;
      }
    }

    if (v55 < 1)
    {
      __break(1u);
      return;
    }

    v57 = 0;
    v58 = *(v56 + 16);
    do
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v59 = *(v54 + 8 * v57 + 32);
      }

      v60 = v59;
      ++v57;
      [v58 deleteObject:v59];
    }

    while (v55 != v57);
LABEL_21:

    v61 = type metadata accessor for KeyLookupInfo();
    v62 = *(*(v61 - 8) + 56);
    v63 = v100;
    v62(v100, 1, 1, v61);
    if (v50)
    {
      v64 = [v50 identifier];
      if (v64)
      {
        v65 = v64;
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        v69 = [v50 publicKeyIdentifier];
        if (v69)
        {
          v110 = v66;
          v111 = v68;
          v70 = v69;
          v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v72;
          v102 = v71;

          v73 = v50;
          v74 = [v73 keyType];
          v75 = v104;
          if (v74)
          {
            v76 = v74;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v77 = v103;
            CredentialKeyType.init(rawValue:)();
            v78 = v105;
            v79 = v108;
            if ((*(v105 + 48))(v77, 1, v108) != 1)
            {
              v82 = v75;
              v83 = *(v78 + 32);
              v83(v82, v77, v79);

              v80 = v83;
              v81 = v104;
              goto LABEL_32;
            }

            sub_10000A0D4(v77, &qword_100200510, qword_1001AB070);
          }

          v78 = v105;
          v79 = v108;
          (*(v105 + 104))(v75, enum case for CredentialKeyType.invalid(_:), v108);

          v80 = *(v78 + 32);
          v81 = v75;
LABEL_32:
          v84 = v106;
          v104 = v80;
          (v80)(v106, v81, v79);
          (*(v78 + 16))(v107, v84, v79);
          v85 = [v73 keyBlob];
          if (v85)
          {
            v86 = v85;
            v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v87;

            v78 = v105;
          }

          else
          {

            v103 = 0;
            v99 = 0xF000000000000000;
          }

          v88 = v108;
          (*(v78 + 8))(v106, v108);
          v89 = v100;
          sub_10000A0D4(v100, &qword_100202498, &unk_1001AD910);
          v90 = v98;
          v91 = v111;
          *v98 = v110;
          v90[1] = v91;
          v92 = v101;
          v90[2] = v102;
          v90[3] = v92;
          (v104)(v90 + *(v61 + 24), v107, v88);
          v93 = (v90 + *(v61 + 28));
          v94 = v99;
          *v93 = v103;
          v93[1] = v94;
          v62(v90, 0, 1, v61);
          v95 = v90;
          v63 = v89;
          sub_100046524(v95, v89, &qword_100202498, &unk_1001AD910);
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

LABEL_36:
    v96 = v109;
    *v109 = v113;
    *(v96 + 8) = 0;
    *(v96 + 9) = v114 & 1;
    v97 = _s8DBResultVMa(0);
    sub_100046524(v63, v96 + *(v97 + 24), &qword_100202498, &unk_1001AD910);
    (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
    return;
  }

  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Skipping payload ingestion because new payload data matches existing ingestion hash", v43, 2u);
  }

  (*(v101 + 8))(v31, v102);
  v44 = _s8DBResultVMa(0);
  (*(*(v44 - 8) + 56))(v109, 1, 1, v44);
}

uint64_t sub_10018CCD8(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100004E70(&qword_100203D28, &qword_1001AEE10);
  if (swift_dynamicCast())
  {
    sub_10001AA08(__src, &v41);
    sub_100009278(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100005090(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000A0D4(__src, &qword_100203D30, &qword_1001AEE18);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10018DE80(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10018F28C(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_10018DF48(sub_100190010);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10004FB68(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10004FB68(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_10001C120(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_10001C120(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100009708(*&__src[0], *(&__src[0] + 1));

  sub_1000092BC(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_10018D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for Logger();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = type metadata accessor for DIPError();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v16 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[21] = v16;
  v17 = *(v16 - 8);
  v6[22] = v17;
  v18 = *(v17 + 64) + 15;
  v6[23] = swift_task_alloc();
  v19 = type metadata accessor for ProvisioningFailureReson();
  v6[24] = v19;
  v20 = *(v19 - 8);
  v6[25] = v20;
  v21 = *(v20 + 64) + 15;
  v6[26] = swift_task_alloc();
  v22 = *(*(sub_100004E70(&qword_100203D20, &qword_1001AEE08) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v23 = type metadata accessor for PIIHashKey();
  v6[28] = v23;
  v24 = *(v23 - 8);
  v6[29] = v24;
  v25 = *(v24 + 64) + 15;
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10018D4C4, 0, 0);
}

uint64_t sub_10018D4C4()
{
  v1 = v0[29];
  v2 = v0[6];
  v60 = v0[7];
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v57 = (v1 + 48);
  v58 = v0[6];
  v54 = (v0[25] + 8);
  v55 = (v1 + 32);
  v53 = (v1 + 8);

  v13 = 0;
  v56 = _swiftEmptyArrayStorage;
  while (1)
  {
    v14 = v13;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = (v13 << 10) | (16 * v15);
    v17 = (*(v58 + 48) + v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = (*(v58 + 56) + v16);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v60 + 16);

    if (!v23)
    {
      goto LABEL_17;
    }

    v24 = v0[7];

    v25 = sub_100099644(v19, v18);
    if ((v26 & 1) == 0)
    {

      goto LABEL_17;
    }

    v27 = (*(v60 + 56) + 16 * v25);
    if (v22 == *v27 && v21 == v27[1])
    {

      goto LABEL_20;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
LABEL_20:
    }

    else
    {
LABEL_17:
      v31 = v0[27];
      v30 = v0[28];
      PIIHashKey.init(rawValue:)();
      if ((*v57)(v31, 1, v30) == 1)
      {
        v8 = sub_10000A0D4(v0[27], &qword_100203D20, &qword_1001AEE08);
      }

      else
      {
        v32 = v0[26];
        v33 = v0[24];
        (*v55)(v0[30], v0[27], v0[28]);
        PIIHashKey.failureDescription.getter();
        v34 = ProvisioningFailureReson.rawValue.getter();
        v36 = v35;
        (*v54)(v32, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_100100418(0, *(v56 + 2) + 1, 1, v56);
        }

        v38 = *(v56 + 2);
        v37 = *(v56 + 3);
        if (v38 >= v37 >> 1)
        {
          v56 = sub_100100418((v37 > 1), v38 + 1, 1, v56);
        }

        v8 = (*v53)(v0[30], v0[28]);
        *(v56 + 2) = v38 + 1;
        v39 = &v56[16 * v38];
        *(v39 + 4) = v34;
        *(v39 + 5) = v36;
      }
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, v10, v11, v12);
    }

    if (v13 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v13);
    ++v14;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v40 = v0[22];
  v59 = v0[23];
  v41 = v0[21];
  v43 = v0[10];
  v42 = v0[11];
  v44 = v0[8];
  v45 = v0[9];
  v46 = v0[6];

  v47 = swift_allocObject();
  v0[31] = v47;
  v47[2] = v42;
  v47[3] = v44;
  v47[4] = v45;
  v47[5] = v43;
  v47[6] = v56;
  v61 = *(v43 + 16);
  v48 = swift_allocObject();
  v0[32] = v48;
  *(v48 + 16) = sub_10018FFEC;
  *(v48 + 24) = v47;
  v49 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v50 = *(v40 + 104);

  v50(v59, v49, v41);
  v51 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_10018D910;
  v9 = v0[23];
  v10 = sub_10019054C;
  v12 = &type metadata for () + 8;
  v11 = v48;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, v10, v11, v12);
}

uint64_t sub_10018D910()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  v2[34] = v0;

  v5 = v2[32];
  if (v0)
  {
    (*(v2[22] + 8))(v2[23], v2[21]);

    v6 = sub_10018DB50;
  }

  else
  {
    v7 = v2[31];
    v9 = v2[22];
    v8 = v2[23];
    v10 = v2[21];

    (*(v9 + 8))(v8, v10);
    v6 = sub_10018DA9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10018DA9C()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10018DB50()
{
  v1 = v0[31];
  v2 = v0[19];
  v22 = v0[20];
  v23 = v0[34];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v24 = v0[12];

  _StringGuts.grow(_:)(47);
  v9._object = 0x80000001001BD730;
  v9._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v9);
  swift_getErrorValue();
  v10 = v0[2];
  v11 = v0[3];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v5 + 104))(v4, enum case for DIPError.Code.failedToStoreProvisioningFailureReason(_:), v6);
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v12, v22, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v8, v24);
  (*(v2 + 8))(v22, v3);

  v13 = v0[30];
  v14 = v0[26];
  v15 = v0[27];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[14];

  v20 = v0[1];

  return v20();
}

void sub_10018DDF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10016A520(a2, a3);
  if (!v3)
  {
    v5 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 setProvisioningFailureReasons:isa];

    sub_100050240();
  }
}

uint64_t sub_10018DE80@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1000F0C64(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_10018DF48(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000092BC(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000092BC(v6, v5);
    *v3 = xmmword_1001AB540;
    sub_1000092BC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_10018E358(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1000092BC(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1001AB540;
    sub_1000092BC(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10018E358(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

void *sub_10018E2EC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018E358(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10018E40C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018E47C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  sub_1000092BC(v0[6], v0[7]);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10018E4F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018E52C()
{
  v1 = *(sub_100004E70(&qword_100202490, &unk_1001ACF80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = _s8DBResultVMa(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6;
  v40 = ((*(*(v5 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;
  v8 = v0[2];

  v9 = v0[3];

  sub_1000092BC(v0[4], v0[5]);
  v10 = v0 + v3;
  v11 = type metadata accessor for PayloadMetadata();
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v38 = v6;
    v39 = v2;
    v12 = *(v10 + 1);

    sub_1000092BC(*(v10 + 3), *(v10 + 4));
    sub_1000092BC(*(v10 + 5), *(v10 + 6));
    v13 = v11[8];
    v14 = type metadata accessor for Date();
    v15 = *(v14 - 8);
    v16 = *(v15 + 8);
    v16(&v10[v13], v14);
    v16(&v10[v11[9]], v14);
    v17 = v11[10];
    if (!(*(v15 + 48))(&v10[v17], 1, v14))
    {
      v16(&v10[v17], v14);
    }

    v18 = *&v10[v11[11] + 8];

    v19 = *&v10[v11[12]];

    v20 = *&v10[v11[13] + 8];

    v21 = *&v10[v11[14] + 8];

    v22 = *&v10[v11[15] + 8];

    v23 = v11[16];
    v24 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
    v25 = *(v24 - 8);
    v6 = v38;
    v2 = v39;
    if (!(*(v25 + 48))(&v10[v23], 1, v24))
    {
      (*(v25 + 8))(&v10[v23], v24);
    }
  }

  v26 = v40 & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v0 + v4);

  v28 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  v29 = v0 + v7 + *(v5 + 24);
  v30 = type metadata accessor for KeyLookupInfo();
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    v31 = *(v29 + 1);

    sub_1000092BC(*(v29 + 2), *(v29 + 3));
    v32 = *(v30 + 24);
    v33 = type metadata accessor for CredentialKeyType();
    (*(*(v33 - 8) + 8))(&v29[v32], v33);
    v34 = &v29[*(v30 + 28)];
    v35 = v34[1];
    if (v35 >> 60 != 15)
    {
      sub_1000092BC(*v34, v35);
    }
  }

  v36 = *(v0 + v26 + 8);
  if (v36 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + v26), v36);
  }

  return _swift_deallocObject(v0, v26 + 16, v2 | v6 | 7);
}

void sub_10018E95C()
{
  v1 = *(sub_100004E70(&qword_100202490, &unk_1001ACF80) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(_s8DBResultVMa(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1001816CC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), v0 + v6, *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10018EAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018EB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10018EB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018EBC8()
{
  v1 = type metadata accessor for PayloadMetadata();
  v38 = *(*(v1 - 1) + 80);
  v2 = (v38 + 48) & ~v38;
  v34 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = _s8DBResultVMa(0);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(*(v36 - 8) + 80);
  v3 = (v35 + v37 + 16) & ~v37;
  v4 = (((*(*(v36 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];

  v6 = v0[3];

  sub_1000092BC(v0[4], v0[5]);
  v7 = v0 + v2;
  v8 = *(v0 + v2 + 8);

  sub_1000092BC(*(v7 + 3), *(v7 + 4));
  sub_1000092BC(*(v7 + 5), *(v7 + 6));
  v9 = v1[8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(&v7[v9], v10);
  v12(&v7[v1[9]], v10);
  v13 = v1[10];
  if (!(*(v11 + 48))(&v7[v13], 1, v10))
  {
    v12(&v7[v13], v10);
  }

  v14 = *&v7[v1[11] + 8];

  v15 = *&v7[v1[12]];

  v16 = *&v7[v1[13] + 8];

  v17 = *&v7[v1[14] + 8];

  v18 = *&v7[v1[15] + 8];

  v19 = v1[16];
  v20 = type metadata accessor for ISO18013MobileSecurityObject.IdentifierList();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v7[v19], 1, v20))
  {
    (*(v21 + 8))(&v7[v19], v20);
  }

  v22 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v0 + v34);

  v24 = *(v0 + v35 + 8);

  v25 = v0 + v3 + *(v36 + 24);
  v26 = type metadata accessor for KeyLookupInfo();
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v25 + 1);

    sub_1000092BC(*(v25 + 2), *(v25 + 3));
    v28 = *(v26 + 24);
    v29 = type metadata accessor for CredentialKeyType();
    (*(*(v29 - 8) + 8))(&v25[v28], v29);
    v30 = &v25[*(v26 + 28)];
    v31 = v30[1];
    if (v31 >> 60 != 15)
    {
      sub_1000092BC(*v30, v31);
    }
  }

  sub_1000092BC(*(v0 + v4), *(v0 + v4 + 8));
  v32 = *(v0 + v22 + 8);
  if (v32 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + v22), v32);
  }

  return _swift_deallocObject(v0, v22 + 16, v38 | v37 | 7);
}

void sub_10018EFC8()
{
  v1 = *(type metadata accessor for PayloadMetadata() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(_s8DBResultVMa(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v0 + v8);
  v11 = (v0 + v9);
  *(&v13 + 1) = *v11;
  *(&v12 + 1) = *v10;
  *&v13 = v10[1];
  *&v12 = *(v0 + v7);
  sub_10017ECF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), v0 + v6, v12, v13, v11[1]);
}

uint64_t sub_10018F128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018F188()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10018F218()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10018F28C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1000F0C44(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

BOOL sub_10018F32C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 options];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 payloadProtectionPolicy];

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = 0;
LABEL_5:
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    v15 = DCCredentialPayloadProtectionPolicyToString();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v9;
    v17 = v16;
    v23 = v2;
    v19 = v18;

    v20 = sub_10010150C(v17, v19, &v26);

    *(v13 + 4) = v20;
    v9 = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Credential payload protection policy: %s", v13, 0xCu);
    sub_100005090(v14);

    (*(v24 + 8))(v6, v23);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return v9 != 0;
}

unint64_t sub_10018F588()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1001817F0();
}

void (*sub_10018F590(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4))(char *, uint64_t)
{
  v5 = v4;
  v36 = a3;
  v37 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v9;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "encryptPayloadWithNewProtectionKey called", v18, 2u);
    v5 = v4;
    v9 = v35;
  }

  v19 = v9[1];
  v19(v15, v8);
  v20 = sub_100033BA0(a1, a2);
  if (!v5)
  {
    v21 = v20;
    v35 = 0;
    defaultLogger()();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v24 = 136315138;
      v34 = v8;
      v25 = *(v21 + 2);
      v26 = *(v21 + 3);

      v27 = sub_10010150C(v25, v26, &v38);

      *(v24 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Created new payload protection key %s", v24, 0xCu);
      sub_100005090(v33);

      v28 = v13;
      v29 = v34;
    }

    else
    {

      v28 = v13;
      v29 = v8;
    }

    v19(v28, v29);

    v30 = v35;
    v19 = sub_1000F04F0(v36, v37);

    if (v30)
    {
      v19 = v30;
    }
  }

  return v19;
}

uint64_t sub_10018FF54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018FF9C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10018FFEC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_10018DDF0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

void *sub_100190010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10018E2EC(sub_100190078, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1001900AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CredentialKeyType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10019016C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CredentialKeyType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100190210()
{
  type metadata accessor for CredentialKeyType();
  if (v0 <= 0x3F)
  {
    sub_100060F00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001902B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100190388(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v7 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100190434()
{
  sub_1001904F8(319, &unk_100203E38, type metadata accessor for DCCredentialPayloadProtectionPolicy);
  if (v0 <= 0x3F)
  {
    sub_1001904F8(319, &qword_100202A40, type metadata accessor for KeyLookupInfo);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001904F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10019057C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v2[2] = v5;
  v6 = *(v5 - 8);
  v2[3] = v6;
  v7 = *(v6 + 64) + 15;
  v2[4] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_100190680;

  return sub_100190C18(a1, a2, 1);
}

uint64_t sub_100190680(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_100190A98;
  }

  else
  {
    v5 = sub_100190794;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100190794()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[6];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v7 = v0[6];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];

    v11 = *(v9 + 104);
    v11(v8, enum case for DIPError.Code.idcsMissingPresentmentKey(_:), v10);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11(v0[4], enum case for DIPError.Code.internalError(_:), v0[2]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v13 = v0[6];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = v0[6];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[6] + 32);
  }

  v4 = v0[4];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_100190A98()
{
  v1 = v0[7];
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.internalError(_:), v0[2]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100190C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[60] = a3;
  v4[61] = v3;
  v4[58] = a1;
  v4[59] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[62] = v5;
  v6 = *(v5 - 8);
  v4[63] = v6;
  v7 = *(v6 + 64) + 15;
  v4[64] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[65] = v8;
  v9 = *(v8 - 8);
  v4[66] = v9;
  v10 = *(v9 + 64) + 15;
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v11 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[71] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v4[72] = v12;
  v13 = *(v12 - 8);
  v4[73] = v13;
  v14 = *(v13 + 64) + 15;
  v4[74] = swift_task_alloc();

  return _swift_task_switch(sub_100190DE4, 0, 0);
}

uint64_t sub_100190DE4()
{
  v1 = v0[74];
  v2 = v0[71];
  v3 = v0[60];
  static IDCSSignposts.storageGeneratePresentmentKeys.getter();
  DIPSignpost.init(_:)();
  if (v3 < 1)
  {
    v6 = v0[74];
    (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.idcsInvalidArgument(_:), v0[62]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v7 = v0[71];
    v8 = v0[70];
    v9 = v0[69];
    v10 = v0[68];
    v11 = v0[67];
    v12 = v0[64];
    (*(v0[73] + 8))(v0[74], v0[72]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v0[75] = *(v0[61] + 24);
    v4 = swift_task_alloc();
    v0[76] = v4;
    *v4 = v0;
    v4[1] = sub_100191090;

    return sub_100135A60();
  }
}

uint64_t sub_100191090()
{
  v2 = *(*v1 + 608);
  v5 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_1001935BC;
  }

  else
  {
    v3 = sub_1001911A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001911A4()
{
  v1 = v0[70];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing progenitor key designations before generating new presentment keys", v4, 2u);
  }

  v5 = v0[70];
  v6 = v0[66];
  v7 = v0[65];

  v8 = *(v6 + 8);
  v0[78] = v8;
  v8(v5, v7);
  v9 = swift_task_alloc();
  v0[79] = v9;
  *v9 = v0;
  v9[1] = sub_1001912E8;
  v10 = v0[75];

  return sub_10012E30C(0, 0xF000000000000000, 1);
}

uint64_t sub_1001912E8()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_100193764;
  }

  else
  {
    v3 = sub_1001913FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001913FC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x80000001001BD9D0;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0[69];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "CredentialStorage foring presentment key generation failure", v7, 2u);
    }

    v8 = v0[78];
    v9 = v0[74];
    v10 = v0[69];
    v11 = v0[66];
    v12 = v0[65];
    v14 = v0[63];
    v13 = v0[64];
    v15 = v0[62];

    v8(v10, v12);
    (*(v14 + 104))(v13, enum case for DIPError.Code.internalError(_:), v15);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v16 = v0[71];
    v17 = v0[70];
    v18 = v0[69];
    v19 = v0[68];
    v20 = v0[67];
    v21 = v0[64];
    (*(v0[73] + 8))(v0[74], v0[72]);

    v22 = v0[1];

    return v22();
  }

  else
  {
    v25 = v0[60];
    v24 = v0[61];
    v27 = v0[58];
    v26 = v0[59];
    v28 = *(v24 + 120);
    v0[81] = v28;
    v29 = swift_allocObject();
    v0[82] = v29;
    v29[2] = v24;
    v29[3] = v27;
    v29[4] = v26;
    v29[5] = v25;
    v30 = *(v28 + 16);
    v31 = swift_allocObject();
    v0[83] = v31;
    *(v31 + 16) = &unk_1001AEE68;
    *(v31 + 24) = v29;
    v32 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

    v33 = swift_task_alloc();
    v0[84] = v33;
    v34 = sub_100004E70(&qword_100203E70, &qword_1001AEE80);
    *v33 = v0;
    v33[1] = sub_10019182C;

    return AsyncCoreDataContainer.write<A>(_:)(v0 + 50, &unk_1001AEE78, v31, v34);
  }
}

uint64_t sub_10019182C()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v8 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = sub_100191BF4;
  }

  else
  {
    v5 = *(v2 + 664);
    v6 = *(v2 + 656);

    v4 = sub_100191954;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100191954()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 488);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  *(v0 + 688) = *(v0 + 400);
  *(v0 + 696) = *(v0 + 408);
  *(v0 + 712) = *(v0 + 424);
  v5 = swift_allocObject();
  *(v0 + 720) = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  *(v0 + 728) = v7;
  *(v7 + 16) = sub_10019B214;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 736) = v9;
  v10 = sub_100004E70(&qword_100203E78, &qword_1001AEE88);
  *v9 = v0;
  v9[1] = sub_100191ACC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 432, sub_1000DCAB0, v7, v10);
}

uint64_t sub_100191ACC()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v8 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v4 = sub_10019295C;
  }

  else
  {
    v5 = *(v2 + 728);
    v6 = *(v2 + 720);

    v4 = sub_100191E0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100191BF4()
{
  v1 = v0[83];
  v2 = v0[82];

  v3 = v0[85];
  v4 = v0[74];
  (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[64];
  (*(v0[73] + 8))(v0[74], v0[72]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100191E0C()
{
  v2 = v0[54];
  v1 = v0[55];
  v0[94] = v2;
  v0[95] = v1;
  v3 = v0[56];
  v4 = v0[57];
  v0[96] = v3;
  v0[97] = v4;
  if (v1)
  {
    v5 = *(v0[61] + 112);
    sub_10016A1AC(v2, v1, v3, v4);
    sub_100009708(v3, v4);
    v6 = swift_task_alloc();
    v0[98] = v6;
    *v6 = v0;
    v6[1] = sub_1001927CC;

    return sub_100028458(v2, v1, v3, v4);
  }

  v75 = v0 + 35;
  v76 = v0[93];
  v8 = v0[68];
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Skipping creation of progenitor key authorization because no key signing key exists", v11, 2u);
  }

  v12 = v0[78];
  v13 = v0[68];
  v14 = v0[66];
  v15 = v0[65];

  v12(v13, v15);
  v0[39] = 0;
  *v75 = 0u;
  *(v0 + 37) = 0u;
  result = v0[86];
  v74 = *(result + 16);
  if (v74)
  {
    v16 = 0;
    v17 = (v0 + 2);
    v18 = (v0 + 45);
    v19 = result + 32;
    v70 = v0[66] + 8;
    v72 = v0[86];
    v73 = (v0 + 2);
    v71 = (v0 + 45);
    v69 = v0;
    while (1)
    {
      if (v16 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v20 = *(v19 + 16);
      *v17 = *v19;
      *(v17 + 16) = v20;
      v21 = *(v19 + 32);
      v22 = *(v19 + 48);
      v23 = *(v19 + 64);
      *(v17 + 80) = *(v19 + 80);
      *(v17 + 48) = v22;
      *(v17 + 64) = v23;
      *(v17 + 32) = v21;
      sub_10019B234(v75, v18);
      v87 = v16;
      v86 = v19;
      if (v0[48])
      {
        v24 = v0[12];
        v25 = *(v18 + 16);
        *(v0 + 20) = *v18;
        *(v0 + 21) = v25;
        v0[44] = *(v18 + 32);
        sub_10019B2A4(v17, (v0 + 24));
        v26 = sub_100143318();
        if (v76)
        {
          v57 = v0[89];
          v58 = v0[88];
          v59 = v0[87];
          v60 = v0[86];
          sub_10016A118(v0[94], v0[95], v0[96], v0[97]);

          sub_1000092BC(v59, v58);

          sub_10019B360(v17);
          sub_100157C88((v0 + 40));
          sub_10019B2DC(v75);

          v61 = v0[74];
          (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
          swift_errorRetain();
          sub_10002688C(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          DIPSignpost.end(workflowID:isBackground:)(0, 2);
          v62 = v0[71];
          v63 = v0[70];
          v64 = v0[69];
          v65 = v0[68];
          v66 = v0[67];
          v67 = v0[64];
          (*(v0[73] + 8))(v0[74], v0[72]);

          v68 = v0[1];

          return v68();
        }

        v28 = v26;
        v29 = v27;
        sub_100157C88((v0 + 40));
        v76 = 0;
        v98 = v28;
        v88 = v29;
      }

      else
      {
        sub_10019B2A4(v17, (v0 + 13));
        sub_10019B2DC(v18);
        v98 = 0;
        v88 = 0xF000000000000000;
      }

      v81 = v0[88];
      v78 = v0[87];
      v30 = v0[78];
      v31 = v0[67];
      v32 = v0[65];
      v89 = v0[10];
      v90 = v0[11];
      v91 = v0[9];
      v93 = v0[8];
      v33 = v0[6];
      v34 = v0[4];
      v35 = v0[5];
      v95 = v0[7];
      v84 = v0[3];
      v85 = v0[2];
      defaultLogger()();
      *(swift_task_alloc() + 16) = v17;
      Logger.sensitive(_:)();

      v30(v31, v32);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v17;
      Logger.sensitive(_:)();

      v30(v31, v32);
      defaultLogger()();
      v36 = swift_task_alloc();
      v36[2] = v17;
      v36[3] = v98;
      v36[4] = v88;
      Logger.sensitive(_:)();

      v30(v31, v32);
      sub_100009708(v34, v35);
      sub_100009708(v33, v95);
      sub_100009708(v93, v91);
      sub_100009708(v78, v81);
      sub_100009708(v89, v90);
      sub_100032EBC(v98, v88);
      v83 = String._bridgeToObjectiveC()();
      v82.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v80.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v77.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v37.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v38.super.isa = Data._bridgeToObjectiveC()().super.isa;
      if (v88 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001C120(v98, v88);
      }

      v0 = v69;
      v79 = v69[88];
      v40 = v69[87];
      [objc_allocWithZone(DCCredentialCryptoKey) initWithIdentifier:v83 publicKey:v82.super.isa publicKeyIdentifier:v80.super.isa publicKeyCOSEKey:v77.super.isa keyType:2 keyUsage:3 progenitorKeyAttestation:v37.super.isa casdAttestation:v38.super.isa keyAuthorization:isa kskAttestation:0];

      sub_1000092BC(v89, v90);
      sub_1000092BC(v40, v79);

      sub_1000092BC(v93, v91);
      sub_1000092BC(v33, v95);

      sub_1000092BC(v34, v35);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v16 = v87 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v73;
      sub_10019B360(v73);
      sub_10001C120(v98, v88);
      v19 = v86 + 88;
      v18 = v71;
      result = v72;
      if (v74 == v87 + 1)
      {
        v42 = v69[89];
        v43 = v69[88];
        v44 = v69[87];
        v45 = v69[86];

        sub_1000092BC(v44, v43);
        goto LABEL_22;
      }
    }
  }

  v42 = v0[89];
  v46 = v0[88];
  v47 = v0[87];

  sub_1000092BC(v47, v46);
LABEL_22:

  v48 = v0[97];
  v49 = v0[96];
  v50 = v0[95];
  v51 = v0[94];
  v52 = v0[74];
  v53 = v0[73];
  v54 = v0[72];
  v55 = v0[71];
  v92 = v0[70];
  v94 = v0[69];
  v96 = v0[68];
  v97 = v0[67];
  v99 = v0[64];

  sub_10016A118(v51, v50, v49, v48);
  sub_10019B2DC(v75);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v53 + 8))(v52, v54);

  v56 = v0[1];

  return v56(_swiftEmptyArrayStorage);
}

uint64_t sub_1001927CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 784);
  v6 = *v2;
  v4[99] = a1;
  v4[100] = v1;

  v7 = v3[97];
  v8 = v3[96];
  if (v1)
  {
    v9 = v4[86];
    sub_10016A118(v4[94], v4[95], v8, v7);
    sub_1000092BC(v8, v7);

    v10 = sub_100193BF0;
  }

  else
  {
    sub_1000092BC(v8, v7);
    v10 = sub_100192B9C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10019295C()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];

  sub_1000092BC(v5, v4);

  v7 = v0[93];
  v8 = v0[74];
  (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[64];
  (*(v0[73] + 8))(v0[74], v0[72]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100192B9C()
{
  v104 = v0;
  v76 = v0 + 35;
  v1 = v0[99];
  if (v1)
  {
    v2 = v0[100];
    v0[38] = &type metadata for KeySigningKeySignatureProvider;
    v0[39] = &off_1001F9920;
    v0[35] = v1;
    v3 = *(v1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
    v4 = swift_task_alloc();
    *(v4 + 16) = sub_10016A174;
    *(v4 + 24) = v1;

    os_unfair_lock_lock(v3 + 4);
    sub_10001BF74(v103);
    os_unfair_lock_unlock(v3 + 4);
    if (v2)
    {
    }

    v15 = v103[0];
    sub_10016A118(v0[94], v0[95], v0[96], v0[97]);

    v6 = 0;
  }

  else
  {
    sub_10016A118(v0[94], v0[95], v0[96], v0[97]);
    v6 = v0[100];
    v7 = v0[68];
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Skipping creation of progenitor key authorization because no key signing key exists", v10, 2u);
    }

    v11 = v0[78];
    v12 = v0[68];
    v13 = v0[66];
    v14 = v0[65];

    v11(v12, v14);
    v15 = 0;
    v0[39] = 0;
    *v76 = 0u;
    *(v0 + 37) = 0u;
  }

  result = v0[86];
  v103[0] = _swiftEmptyArrayStorage;
  v75 = *(result + 16);
  if (v75)
  {
    v77 = v6;
    v16 = 0;
    v17 = (v0 + 2);
    v18 = (v0 + 45);
    v19 = result + 32;
    v72 = v0[66] + 8;
    v73 = (v0 + 45);
    v74 = result;
    v70 = v0;
    v71 = (v0 + 2);
    while (1)
    {
      if (v16 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v20 = *(v19 + 16);
      *v17 = *v19;
      *(v17 + 16) = v20;
      v21 = *(v19 + 32);
      v22 = *(v19 + 48);
      v23 = *(v19 + 64);
      *(v17 + 80) = *(v19 + 80);
      *(v17 + 48) = v22;
      *(v17 + 64) = v23;
      *(v17 + 32) = v21;
      sub_10019B234(v76, v18);
      v89 = v16;
      v88 = v19;
      if (v0[48])
      {
        v24 = v0[12];
        v25 = *(v18 + 16);
        *(v0 + 20) = *v18;
        *(v0 + 21) = v25;
        v0[44] = *(v18 + 32);
        sub_10019B2A4(v17, (v0 + 24));
        v26 = sub_100143318();
        if (v77)
        {
          v58 = v0[89];
          v59 = v0[88];
          v60 = v0[87];
          v61 = v0[86];
          sub_10016A118(v0[94], v0[95], v0[96], v0[97]);

          sub_1000092BC(v60, v59);

          sub_10019B360(v17);
          sub_100157C88((v0 + 40));
          sub_10019B2DC(v76);

          v62 = v0[74];
          (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
          swift_errorRetain();
          sub_10002688C(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          DIPSignpost.end(workflowID:isBackground:)(0, 2);
          v63 = v0[71];
          v64 = v0[70];
          v65 = v0[69];
          v66 = v0[68];
          v67 = v0[67];
          v68 = v0[64];
          (*(v0[73] + 8))(v0[74], v0[72]);

          v69 = v0[1];

          return v69();
        }

        v28 = v26;
        v29 = v27;
        sub_100157C88((v0 + 40));
        v77 = 0;
        v30 = v28;
        v101 = v29;
      }

      else
      {
        sub_10019B2A4(v17, (v0 + 13));
        sub_10019B2DC(v18);
        v30 = 0;
        v101 = 0xF000000000000000;
      }

      v79 = v0[87];
      v81 = v0[88];
      v31 = v0[78];
      v32 = v0[67];
      v33 = v0[65];
      v90 = v0[11];
      v91 = v0[10];
      v92 = v0[9];
      v93 = v0[8];
      v94 = v0[7];
      v96 = v0[6];
      v34 = v0[4];
      v98 = v0[5];
      v85 = v0[3];
      v87 = v0[2];
      defaultLogger()();
      *(swift_task_alloc() + 16) = v17;
      Logger.sensitive(_:)();

      v31(v32, v33);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v17;
      Logger.sensitive(_:)();

      v31(v32, v33);
      defaultLogger()();
      v35 = swift_task_alloc();
      v35[2] = v17;
      v35[3] = v30;
      v35[4] = v101;
      Logger.sensitive(_:)();

      v31(v32, v33);
      sub_100009708(v34, v98);
      sub_100009708(v96, v94);
      sub_100009708(v93, v92);
      sub_100009708(v79, v81);
      sub_100009708(v91, v90);
      sub_100032EBC(v30, v101);
      v86 = String._bridgeToObjectiveC()();
      v84.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v83.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v82.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v37.super.isa = Data._bridgeToObjectiveC()().super.isa;
      if (v101 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001C120(v30, v101);
      }

      v0 = v70;
      if (v15)
      {

        v39.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v39.super.isa = 0;
      }

      v78 = v70[87];
      v80 = v70[88];
      [objc_allocWithZone(DCCredentialCryptoKey) initWithIdentifier:v86 publicKey:v84.super.isa publicKeyIdentifier:v83.super.isa publicKeyCOSEKey:v82.super.isa keyType:2 keyUsage:3 progenitorKeyAttestation:v36.super.isa casdAttestation:v37.super.isa keyAuthorization:isa kskAttestation:v39.super.isa];

      sub_1000092BC(v91, v90);
      sub_1000092BC(v78, v80);

      sub_1000092BC(v93, v92);
      sub_1000092BC(v96, v94);

      sub_1000092BC(v34, v98);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v16 = v89 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v71;
      sub_10019B360(v71);
      sub_10001C120(v30, v101);
      v40 = v103[0];
      v19 = v88 + 88;
      result = v74;
      v18 = v73;
      if (v75 == v89 + 1)
      {
        v42 = v70[89];
        v43 = v70[88];
        v44 = v70[87];
        v45 = v70[86];

        sub_1000092BC(v44, v43);

        goto LABEL_28;
      }
    }
  }

  v46 = v0[89];
  v47 = v0[88];
  v48 = v0[87];

  sub_1000092BC(v48, v47);

  v40 = _swiftEmptyArrayStorage;
LABEL_28:
  v49 = v0[97];
  v50 = v0[96];
  v51 = v0[95];
  v52 = v0[94];
  v53 = v0[74];
  v54 = v0[73];
  v55 = v0[72];
  v56 = v0[71];
  v95 = v0[70];
  v97 = v0[69];
  v99 = v0[68];
  v100 = v0[67];
  v102 = v0[64];

  sub_10016A118(v52, v51, v50, v49);
  sub_10019B2DC(v76);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v54 + 8))(v53, v55);

  v57 = v0[1];

  return v57(v40);
}

uint64_t sub_1001935BC()
{
  v1 = v0[77];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);
  v5 = v0[70];
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Refreshing progenitor key designations before generating new presentment keys", v8, 2u);
  }

  v9 = v0[70];
  v10 = v0[66];
  v11 = v0[65];

  v12 = *(v10 + 8);
  v0[78] = v12;
  v12(v9, v11);
  v13 = swift_task_alloc();
  v0[79] = v13;
  *v13 = v0;
  v13[1] = sub_1001912E8;
  v14 = v0[75];

  return sub_10012E30C(0, 0xF000000000000000, 1);
}

uint64_t sub_100193764()
{
  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v5);
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  v7._object = 0x80000001001BD9D0;
  LOBYTE(v3) = NSUserDefaults.internalBool(forKey:)(v7);

  if (v3)
  {
    v8 = v0[69];
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "CredentialStorage foring presentment key generation failure", v11, 2u);
    }

    v12 = v0[78];
    v13 = v0[74];
    v14 = v0[69];
    v15 = v0[66];
    v16 = v0[65];
    v18 = v0[63];
    v17 = v0[64];
    v19 = v0[62];

    v12(v14, v16);
    (*(v18 + 104))(v17, enum case for DIPError.Code.internalError(_:), v19);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v20 = v0[71];
    v21 = v0[70];
    v22 = v0[69];
    v23 = v0[68];
    v24 = v0[67];
    v25 = v0[64];
    (*(v0[73] + 8))(v0[74], v0[72]);

    v26 = v0[1];

    return v26();
  }

  else
  {
    v29 = v0[60];
    v28 = v0[61];
    v31 = v0[58];
    v30 = v0[59];
    v32 = *(v28 + 120);
    v0[81] = v32;
    v33 = swift_allocObject();
    v0[82] = v33;
    v33[2] = v28;
    v33[3] = v31;
    v33[4] = v30;
    v33[5] = v29;
    v34 = *(v32 + 16);
    v35 = swift_allocObject();
    v0[83] = v35;
    *(v35 + 16) = &unk_1001AEE68;
    *(v35 + 24) = v33;
    v36 = async function pointer to AsyncCoreDataContainer.write<A>(_:)[1];

    v37 = swift_task_alloc();
    v0[84] = v37;
    v38 = sub_100004E70(&qword_100203E70, &qword_1001AEE80);
    *v37 = v0;
    v37[1] = sub_10019182C;

    return AsyncCoreDataContainer.write<A>(_:)(v0 + 50, &unk_1001AEE78, v35, v38);
  }
}

uint64_t sub_100193BF0()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[89];
  sub_1000092BC(v0[87], v0[88]);

  sub_10016A118(v4, v3, v2, v1);
  v6 = v0[100];
  v7 = v0[74];
  (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[64];
  (*(v0[73] + 8))(v0[74], v0[72]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100193E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_100193EF4, 0, 0);
}

uint64_t sub_100193EF4()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(v2 + 120);
  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v1;

  sub_100009708(v3, v1);
  v8 = *(v6 + 16);
  v9 = swift_allocObject();
  v0[11] = v9;
  *(v9 + 16) = sub_10019AFCC;
  *(v9 + 24) = v7;
  v10 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_100194054;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_100194054()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_100194178;
  }

  else
  {
    v6 = *(v2 + 80);
    v5 = *(v2 + 88);

    v4 = sub_100058874;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100194178()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100194314(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = type metadata accessor for DIPError.Code();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100194400, 0, 0);
}

uint64_t sub_100194400()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v1 + 120);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;

  sub_100009708(v4, v3);
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[11] = v8;
  *(v8 + 16) = sub_10019AF04;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = sub_100004E70(&qword_100201580, &qword_1001AB980);
  *v10 = v0;
  v10[1] = sub_10019455C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_10019AF68, v8, v11);
}

uint64_t sub_10019455C()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001946C4, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[11];
    v6 = v3[9];

    v7 = v3[2];

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1001946C4()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100194860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();
  v16 = swift_task_alloc();
  v6[15] = v16;
  *v16 = v6;
  v16[1] = sub_1001949D4;

  return sub_100195094(a4, a5, a2);
}

uint64_t sub_1001949D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 120);
  v7 = *v4;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;

  if (v3)
  {
    v8 = v5[14];
    v9 = v5[11];

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_100194B34, 0, 0);
  }
}

uint64_t sub_100194B34()
{
  v36 = v0;
  v1 = v0[14];
  v2 = v0[7];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  if (v5)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, &v35);
    _os_log_impl(&_mh_execute_header, v3, v4, "calling generateSESPresentmentKey for %s", v11, 0xCu);
    sub_100005090(v12);
  }

  (*(v7 + 8))(v6, v8);
  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[16];
  v32 = v0[10];
  v16 = v0[8];
  v33 = v0[9];
  v34 = v0[11];
  v17 = v0[6];
  v18 = v0[7];
  v20 = v0[4];
  v19 = v0[5];
  v21 = swift_allocObject();
  v0[19] = v21;
  v21[2] = v19;
  v21[3] = v17;
  v21[4] = v18;
  v21[5] = v20;
  v21[6] = v16;
  v21[7] = v15;
  v21[8] = v13;
  v21[9] = v14;

  sub_100009708(v15, v13);
  v22 = *(v20 + 16);
  v23 = swift_allocObject();
  v0[20] = v23;
  *(v23 + 16) = sub_10019B3E8;
  *(v23 + 24) = v21;
  v24 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v25 = *(v32 + 104);
  v26 = v14;
  v25(v34, v24, v33);
  v27 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v28 = swift_task_alloc();
  v0[21] = v28;
  v29 = sub_100004E70(&qword_100203E88, &qword_1001AEEA0);
  *v28 = v0;
  v28[1] = sub_100194DF4;
  v30 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v30, sub_10001BF74, v23, v29);
}

uint64_t sub_100194DF4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v12 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[20];
    (*(v2[10] + 8))(v2[11], v2[9]);

    v5 = sub_100195000;
  }

  else
  {
    v7 = v2[19];
    v6 = v2[20];
    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[9];

    (*(v9 + 8))(v8, v10);
    v2[23] = v2[2];
    v5 = sub_100194F74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100194F74()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);
  v5 = *(v0 + 128);
  *v4 = *(v0 + 184);
  *(v4 + 8) = v5;
  *(v4 + 24) = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100195000()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];

  sub_1000092BC(v3, v4);

  v5 = v0[22];
  v6 = v0[14];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100195094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[33] = v8;
  v9 = *(v8 - 8);
  v4[34] = v9;
  v10 = *(v9 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v11 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[38] = v11;
  v12 = *(v11 - 8);
  v4[39] = v12;
  v13 = *(v12 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v14 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  v4[45] = v15;
  v16 = *(v15 - 8);
  v4[46] = v16;
  v17 = *(v16 + 64) + 15;
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_1001952D4, 0, 0);
}

uint64_t sub_1001952D4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 312);
  v17 = *(v0 + 304);
  v18 = *(v0 + 344);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  static IDCSSignposts.storagePrepareProgenitorKeyMetadata.getter();
  DIPSignpost.init(_:)();
  v8 = swift_allocObject();
  *(v0 + 384) = v8;
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v8[5] = v4;
  *(v0 + 392) = *(v4 + 16);
  v9 = swift_allocObject();
  *(v0 + 400) = v9;
  *(v9 + 16) = sub_10019B458;
  *(v9 + 24) = v8;
  v10 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v0 + 648) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v11 = *(v3 + 104);
  *(v0 + 408) = v11;
  *(v0 + 416) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;

  v11(v18, v10, v17);
  v12 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 424) = v13;
  type metadata accessor for DCCredentialPresentmentAuthPolicy(0);
  *v13 = v0;
  v13[1] = sub_100195494;
  v15 = *(v0 + 344);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 192, v15, sub_10001BF74, v9, v14);
}

uint64_t sub_100195494()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v13 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = v2[50];
    (*(v2[39] + 8))(v2[43], v2[38]);

    v5 = sub_100195CFC;
  }

  else
  {
    v6 = v2[50];
    v7 = v2[48];
    v8 = v2[43];
    v9 = v2[38];
    v10 = v2[39];

    v11 = *(v10 + 8);
    v2[55] = v11;
    v2[56] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v2[57] = v2[24];
    v5 = sub_100195624;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100195624()
{
  v58 = v0;
  v1 = *(v0 + 296);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 456);
    v55 = *(v0 + 296);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v57[0] = v8;
    *v7 = 136446210;
    v9 = DCCredentialPresentmentAuthPolicyToString();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10010150C(v10, v12, v57);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating presentment key for auth policy %{public}s", v7, 0xCu);
    sub_100005090(v8);

    v14 = *(v5 + 8);
    v14(v55, v6);
  }

  else
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 264);
    v17 = *(v0 + 272);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  *(v0 + 464) = v14;
  v18 = *(v0 + 432);
  v19 = sub_10019B478(*(v0 + 456));
  if (v18)
  {
LABEL_5:
    v21 = *(v0 + 368);
    v20 = *(v0 + 376);
    v22 = *(v0 + 360);
    v48 = *(v0 + 352);
    v49 = *(v0 + 344);
    v50 = *(v0 + 336);
    v51 = *(v0 + 328);
    v52 = *(v0 + 320);
    v53 = *(v0 + 296);
    v54 = *(v0 + 288);
    v56 = *(v0 + 280);
    (*(*(v0 + 248) + 104))(*(v0 + 256), enum case for DIPError.Code.internalError(_:), *(v0 + 240));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v21 + 8))(v20, v22);

    v23 = *(v0 + 8);

    return v23();
  }

  if (v19)
  {
    v26 = *(v0 + 408);
    v25 = *(v0 + 416);
    v27 = *(v0 + 648);
    v28 = *(v0 + 336);
    v29 = *(v0 + 304);
    v30 = *(v0 + 224);
    v31 = swift_allocObject();
    *(v0 + 472) = v31;
    *(v31 + 16) = sub_10019B6C4;
    *(v31 + 24) = v30;

    v26(v28, v27, v29);
    v32 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v33 = swift_task_alloc();
    *(v0 + 480) = v33;
    *v33 = v0;
    v33[1] = sub_100195F24;
    v34 = *(v0 + 392);
    v35 = *(v0 + 336);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 652, v35, sub_10014142C, v31, &_s7VersionON);
  }

  else
  {
    if (*(v0 + 456) != 1)
    {
      v40 = *(v0 + 248);
      v39 = *(v0 + 256);
      v41 = *(v0 + 240);
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      v42._countAndFlagsBits = 0xD00000000000004DLL;
      v42._object = 0x80000001001BDAF0;
      String.append(_:)(v42);
      v43 = DCCredentialPresentmentAuthPolicyToString();
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47._countAndFlagsBits = v44;
      v47._object = v46;
      String.append(_:)(v47);

      (*(v40 + 104))(v39, enum case for DIPError.Code.idcsInvalidActionForPresentmentAuthPolicy(_:), v41);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_5;
    }

    v36 = *(*(v0 + 232) + 24);
    *(v0 + 600) = v36;
    type metadata accessor for ACLFetcher();
    inited = swift_initStackObject();
    *(v0 + 608) = inited;
    *(inited + 16) = v36;
    type metadata accessor for AppleIDVManager();

    sub_1000215BC((inited + 24));
    v38 = swift_task_alloc();
    *(v0 + 616) = v38;
    *v38 = v0;
    v38[1] = sub_100197E10;

    return sub_100005D10(1);
  }
}

uint64_t sub_100195CFC()
{
  v1 = v0[48];

  v2 = v0[54];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v8 = v0[44];
  v9 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100195F24()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v14 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = *(v2 + 472);
    v5 = *(v2 + 448);
    (*(v2 + 440))(*(v2 + 336), *(v2 + 304));

    v6 = sub_1001966C0;
  }

  else
  {
    v7 = *(v2 + 472);
    v9 = *(v2 + 440);
    v8 = *(v2 + 448);
    v10 = *(v2 + 336);
    v11 = *(v2 + 304);
    v12 = *(v2 + 224);

    v9(v10, v11);
    *(v2 + 653) = *(v2 + 652);
    v6 = sub_100196098;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100196098()
{
  if (!*(v0 + 653))
  {
    v16 = *(v0 + 288);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "legacy key found, migrating to v2", v19, 2u);
    }

    v20 = *(v0 + 464);
    v56 = *(v0 + 416);
    v54 = *(v0 + 408);
    v21 = *(v0 + 648);
    v22 = *(v0 + 328);
    v23 = *(v0 + 304);
    v24 = *(v0 + 288);
    v25 = *(v0 + 264);
    v26 = *(v0 + 272);
    v27 = *(v0 + 224);

    v20(v24, v25);
    v28 = swift_allocObject();
    *(v0 + 496) = v28;
    *(v28 + 16) = sub_10019B6FC;
    *(v28 + 24) = v27;

    v54(v22, v21, v23);
    v29 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v30 = swift_task_alloc();
    *(v0 + 504) = v30;
    v10 = sub_10019B718();
    *v30 = v0;
    v30[1] = sub_1001968E8;
    v31 = *(v0 + 392);
    v12 = *(v0 + 328);
    v13 = sub_10001BF74;
    v14 = v0 + 200;
    v15 = v28;
    goto LABEL_7;
  }

  if (*(v0 + 653) == 1)
  {
    v2 = *(v0 + 408);
    v1 = *(v0 + 416);
    v3 = *(v0 + 648);
    v4 = *(v0 + 320);
    v5 = *(v0 + 304);
    v6 = *(v0 + 224);
    v7 = swift_allocObject();
    *(v0 + 576) = v7;
    *(v7 + 16) = sub_10019B6E0;
    *(v7 + 24) = v6;

    v2(v4, v3, v5);
    v8 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v9 = swift_task_alloc();
    *(v0 + 584) = v9;
    v10 = sub_100004E70(&qword_100203E90, &qword_1001AEEA8);
    *v9 = v0;
    v9[1] = sub_1001975AC;
    v11 = *(v0 + 392);
    v12 = *(v0 + 320);
    v13 = sub_10001C0A8;
    v14 = v0 + 144;
    v15 = v7;
LABEL_7:

    return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v12, v13, v15, v10);
  }

  v32 = *(v0 + 280);
  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Invalid key type", v35, 2u);
  }

  v36 = *(v0 + 464);
  v38 = *(v0 + 272);
  v37 = *(v0 + 280);
  v39 = *(v0 + 256);
  v40 = *(v0 + 264);
  v41 = *(v0 + 240);
  v42 = *(v0 + 248);

  v36(v37, v40);
  (*(v42 + 104))(v39, enum case for DIPError.Code.idcsInvalidKeyVersion(_:), v41);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v43 = *(v0 + 368);
  v44 = *(v0 + 376);
  v47 = *(v0 + 360);
  v48 = *(v0 + 352);
  v49 = *(v0 + 344);
  v50 = *(v0 + 336);
  v51 = *(v0 + 328);
  v52 = *(v0 + 320);
  v53 = *(v0 + 296);
  v55 = *(v0 + 288);
  v57 = *(v0 + 280);
  (*(*(v0 + 248) + 104))(*(v0 + 256), enum case for DIPError.Code.internalError(_:), *(v0 + 240));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v43 + 8))(v44, v47);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1001966C0()
{
  v1 = v0[28];

  v2 = v0[61];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v8 = v0[44];
  v9 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001968E8()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v14 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = *(v2 + 496);
    v5 = *(v2 + 448);
    (*(v2 + 440))(*(v2 + 328), *(v2 + 304));

    v6 = sub_100196DA0;
  }

  else
  {
    v7 = *(v2 + 496);
    v9 = *(v2 + 440);
    v8 = *(v2 + 448);
    v10 = *(v2 + 328);
    v11 = *(v2 + 304);
    v12 = *(v2 + 224);

    v9(v10, v11);
    *(v2 + 520) = *(v2 + 200);
    v6 = sub_100196A5C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100196A5C()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = *(v0[29] + 24);
  v4 = [v1 aclData];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_1001326E0(v5, v7, [v1 aclType]);
  v10 = v9;
  v11 = v2;
  v0[66] = v8;
  v0[67] = v9;
  v12 = v0[65];
  sub_1000092BC(v5, v7);
  if (v11)
  {

    v13 = v0[46];
    v14 = v0[47];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[43];
    v23 = v0[42];
    v24 = v0[41];
    v25 = v0[40];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v13 + 8))(v14, v20);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = [v12 aclType];
    v18 = swift_task_alloc();
    v0[68] = v18;
    *v18 = v0;
    v18[1] = sub_100196FC8;
    v19 = v0[28];

    return sub_10012F470(v8, v10, v17, v19, 0);
  }
}

uint64_t sub_100196DA0()
{
  v1 = v0[28];

  v2 = v0[64];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v8 = v0[44];
  v9 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100196FC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 544);
  v8 = *v3;
  v4[69] = a1;
  v4[70] = a2;
  v4[71] = v2;

  if (v2)
  {
    v6 = sub_1001983B0;
  }

  else
  {
    v6 = sub_1001970E4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001970E4()
{
  if (v0[70] >> 60 == 15)
  {
    v1 = v0[67];
    v2 = v0[66];
    v36 = v0[65];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.progenitorKeyAttestationUnavailable(_:), v0[30]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v2, v1);

LABEL_5:
    v11 = v0[46];
    v10 = v0[47];
    v12 = v0[44];
    v13 = v0[45];
    v27 = v0[43];
    v28 = v0[42];
    v29 = v0[41];
    v30 = v0[40];
    v32 = v0[37];
    v34 = v0[36];
    v37 = v0[35];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v11 + 8))(v10, v13);

    v14 = v0[1];

    return v14();
  }

  v3 = v0[71];
  v4 = v0[67];
  v5 = v0[66];
  type metadata accessor for SecAccessControl(0);
  v6 = static SecAccessControlRef.fromData(_:)();
  if (v3)
  {
    v7 = v0[67];
    v8 = v0[66];
    v9 = v0[65];
    sub_10001C120(v0[69], v0[70]);
    sub_1000092BC(v8, v7);

    goto LABEL_5;
  }

  v16 = v6;
  v17 = v0[65];
  sub_1000092BC(v0[66], v0[67]);

  v39 = v0[69];
  v40 = v0[70];
  v19 = v0[46];
  v18 = v0[47];
  v21 = v0[44];
  v20 = v0[45];
  v23 = v0[42];
  v22 = v0[43];
  v24 = v0[40];
  v25 = v0[41];
  v31 = v0[37];
  v33 = v0[36];
  v35 = v0[35];
  v38 = v0[32];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v19 + 8))(v18, v20);

  v26 = v0[1];

  return v26(v39, v40, v16);
}

uint64_t sub_1001975AC()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  v2[74] = v0;

  v5 = v2[72];
  v6 = v2[56];
  v7 = v2[55];
  v8 = v2[40];
  v9 = v2[38];
  if (v0)
  {
    v7(v2[40], v2[38]);

    v10 = sub_100197BE8;
  }

  else
  {
    v11 = v2[28];
    v12 = v2[72];

    v7(v8, v9);
    v10 = sub_100197770;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100197770()
{
  v1 = v0[74];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[22];
  v5 = v0[23];
  v6 = *(v0[29] + 112);
  v7 = sub_10002DA84(v0[18], v0[19], v3, v2, v4, v5);
  if (v1)
  {
    sub_10001C120(v4, v5);
    sub_1000092BC(v3, v2);

    v14 = v0[46];
    v13 = v0[47];
    v15 = v0[45];
    v28 = v0[44];
    v29 = v0[43];
    v30 = v0[42];
    v32 = v0[41];
    v34 = v0[40];
    v36 = v0[37];
    v39 = v0[36];
    v41 = v0[35];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v14 + 8))(v13, v15);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v8 = v7;

    v38 = sub_10002E3C4(v8);
    v40 = v9;
    v10 = *(v0[29] + 24);
    type metadata accessor for AppleIDVManager();

    sub_1000215BC(v0 + 13);
    v11 = *(v8 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v12 = *(v8 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
    sub_100009708(v11, v12);
    v37 = sub_100009310(v11, v12);
    sub_10001C120(v4, v5);
    sub_1000092BC(v3, v2);
    sub_1000092BC(v11, v12);

    sub_100005090(v0 + 13);
    v19 = v0[46];
    v18 = v0[47];
    v21 = v0[44];
    v20 = v0[45];
    v23 = v0[42];
    v22 = v0[43];
    v25 = v0[40];
    v24 = v0[41];
    v26 = v0[37];
    v31 = v0[36];
    v33 = v0[35];
    v35 = v0[32];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v19 + 8))(v18, v20);

    v27 = v0[1];

    return v27(v38, v40, v37);
  }
}

uint64_t sub_100197BE8()
{
  v1 = v0[28];

  v2 = v0[74];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v8 = v0[44];
  v9 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100197E10(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 616);
  v10 = *v3;
  v4[78] = a1;
  v4[79] = a2;
  v4[80] = v2;

  if (v2)
  {
    v6 = sub_1001985E4;
  }

  else
  {
    v7 = v4[76];
    v8 = v4[75];

    swift_setDeallocating();
    sub_100005090((v7 + 24));
    v6 = sub_100197F48;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100197F48()
{
  if (v0[79] >> 60 == 15)
  {
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.idcsInvalidPresentmentAuthenticationPolicy(_:), v0[30]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_5:
    v7 = v0[46];
    v6 = v0[47];
    v8 = v0[45];
    v20 = v0[44];
    v21 = v0[43];
    v22 = v0[42];
    v23 = v0[41];
    v24 = v0[40];
    v25 = v0[37];
    v27 = v0[36];
    v29 = v0[35];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }

  v1 = v0[80];
  v2 = v0[78];
  type metadata accessor for SecAccessControl(0);
  v3 = static SecAccessControlRef.fromData(_:)();
  v4 = v0[79];
  v5 = v0[78];
  if (v1)
  {
    sub_10001C120(v5, v4);
    goto LABEL_5;
  }

  sub_10001C120(v5, v4);
  v12 = v0[46];
  v11 = v0[47];
  v14 = v0[44];
  v13 = v0[45];
  v16 = v0[42];
  v15 = v0[43];
  v18 = v0[40];
  v17 = v0[41];
  v26 = v0[37];
  v28 = v0[36];
  v30 = v0[35];
  v31 = v0[32];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v12 + 8))(v11, v13);

  v19 = v0[1];

  return v19(0, 0xC000000000000000, v3);
}

uint64_t sub_1001983B0()
{
  v1 = v0[65];
  sub_1000092BC(v0[66], v0[67]);

  v2 = v0[71];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v8 = v0[44];
  v9 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001985E4()
{
  v1 = v0[76];
  v2 = v0[75];

  swift_setDeallocating();
  sub_100005090((v1 + 24));
  v3 = v0[80];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v9 = v0[44];
  v10 = v0[43];
  v11 = v0[42];
  v12 = v0[41];
  v13 = v0[40];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

void sub_100198820(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char **a9@<X8>)
{
  v55 = a7;
  v60 = a6;
  v61 = a5;
  v52 = a9;
  v15 = type metadata accessor for Logger();
  v68 = *(v15 - 8);
  v16 = *(v68 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  v22 = sub_10016A520(a2, a3);
  if (!v9)
  {
    v63 = v21;
    v56 = v19;
    v64 = v15;
    v59 = a1;
    if (v61 < 1)
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      v62 = (v68 + 8);
      v57 = " encoded public key: ";
      v24 = _swiftEmptyArrayStorage;
      v25 = 1;
      *&v23 = 134218242;
      v53 = v23;
      v54 = a4;
      v58 = v22;
      while (1)
      {
        sub_100198D9C(v22, a4, v66);
        v68 = v9;
        if (v9)
        {
          goto LABEL_22;
        }

        v26 = v63;
        defaultLogger()();
        sub_10019B2A4(v66, v65);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        sub_10019B360(v66);
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v65[0] = v30;
          *v29 = v53;
          *(v29 + 4) = v25;
          *(v29 + 12) = 2080;
          v31 = v66[0];

          v32 = a8;
          v33 = sub_10010150C(v31, *(&v31 + 1), v65);

          *(v29 + 14) = v33;
          a8 = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "[%ld] created a new presentment key with identifier %s", v29, 0x16u);
          sub_100005090(v30);

          a4 = v54;

          v34 = *v62;
          (*v62)(v63, v64);
        }

        else
        {

          v34 = *v62;
          (*v62)(v26, v64);
        }

        sub_10019B2A4(v66, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100101360(0, *(v24 + 2) + 1, 1, v24);
        }

        v36 = *(v24 + 2);
        v35 = *(v24 + 3);
        if (v36 >= v35 >> 1)
        {
          v24 = sub_100101360((v35 > 1), v36 + 1, 1, v24);
        }

        *(v24 + 2) = v36 + 1;
        v37 = &v24[88 * v36];
        v38 = v66[1];
        *(v37 + 2) = v66[0];
        *(v37 + 3) = v38;
        v39 = v66[2];
        v40 = v66[3];
        v41 = v66[4];
        *(v37 + 14) = v67;
        *(v37 + 5) = v40;
        *(v37 + 6) = v41;
        *(v37 + 4) = v39;
        v42 = [objc_opt_self() standardUserDefaults];
        v43._object = (v57 | 0x8000000000000000);
        v43._countAndFlagsBits = 0xD00000000000002CLL;
        v44 = NSUserDefaults.internalBool(forKey:)(v43);

        if (v44)
        {
          v45 = v56;
          defaultLogger()();
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&_mh_execute_header, v46, v47, "Sleeping after generating presentment key due to user defaults setting", v48, 2u);
            v45 = v56;
          }

          v34(v45, v64);
          [objc_opt_self() sleepForTimeInterval:5.0];
        }

        sub_10019B360(v66);
        if (v61 == v25)
        {
          break;
        }

        v49 = __OFADD__(v25++, 1);
        v22 = v58;
        v9 = v68;
        if (v49)
        {
          __break(1u);
          goto LABEL_25;
        }
      }

      v50 = v68;
      sub_100050240();
      if (v50)
      {
LABEL_22:

        return;
      }

      *v52 = v24;
    }
  }
}

uint64_t sub_100198D9C@<X0>(void *a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v51 = a1;
  v52 = a2;
  v50 = a3;
  v5 = type metadata accessor for COSEKey();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost.Config();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v53 = type metadata accessor for DIPSignpost();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v53);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.storageGenerateSESPresentmentKey.getter();
  DIPSignpost.init(_:)();
  v16 = *(v3 + 112);
  v17 = sub_10002B9DC();
  if (v4)
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v12 + 8))(v15, v53);
  }

  else
  {
    v18 = v17;
    v19 = v52;
    v48 = v6;
    v49 = v9;
    v47 = v5;
    v20 = sub_10002C3F4(v17);
    v22 = v21;
    type metadata accessor for StoredCryptoKey();
    v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v19 + 16)];
    sub_10005F7F4(v18);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v23 setAttestation:isa];

    [v51 addCryptoKeysObject:v23];
    v25 = type metadata accessor for CBOREncoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v52 = CBOREncoder.init()();
    v28 = v49;
    sub_10002551C(v49);
    v46 = v20;
    v51 = v22;
    sub_1000E08AC(&qword_100202BE8, &type metadata accessor for COSEKey);
    v29 = v47;
    v30 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v31 = *(v48 + 8);
    v48 = v30;
    v49 = v32;
    v31(v28, v29);

    v33 = *(v18 + 24);
    v52 = *(v18 + 16);
    v47 = v33;
    v34 = *(v18 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey);
    v45 = *(v18 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey + 8);
    v35 = v45;
    v37 = *(v18 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier);
    v36 = *(v18 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier + 8);

    sub_100009708(v34, v35);
    sub_100009708(v37, v36);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = (*(v12 + 8))(v15, v53);
    v39 = v50;
    v40 = v47;
    *v50 = v52;
    v39[1] = v40;
    *&v41 = v34;
    *(&v41 + 1) = v45;
    *&v42 = v37;
    *(&v42 + 1) = v36;
    *(v39 + 1) = v41;
    *(v39 + 2) = v42;
    v43 = v49;
    v39[6] = v48;
    v39[7] = v43;
    v44 = v51;
    v39[8] = v46;
    v39[9] = v44;
    v39[10] = v18;
  }

  return result;
}

void sub_100199208(uint64_t a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = sub_10016A520(a1, a2);
  if (!v3)
  {
    v6 = v5;
    sub_100059DE4();
    if (v7 >> 62)
    {
      v20 = v7;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v20;
      if (v21)
      {
        goto LABEL_4;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;

      v10 = [v9 identifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = [v9 publicKeyIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          *a3 = v12;
          a3[1] = v14;
          a3[2] = v17;
          a3[3] = v19;
          return;
        }

        v6 = v9;
      }

      else
      {
      }

      goto LABEL_14;
    }

LABEL_14:

    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

unint64_t sub_1001993B4(Swift::String *a1)
{
  _StringGuts.grow(_:)(33);

  String.append(_:)(*a1);
  v2._countAndFlagsBits = 0x2063696C62757020;
  v2._object = 0xED0000203A79656BLL;
  String.append(_:)(v2);
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  object = a1[1]._object;
  v5 = Data.base16EncodedString()();
  String.append(_:)(v5);

  return 0xD000000000000010;
}

unint64_t sub_100199468(Swift::String *a1)
{
  _StringGuts.grow(_:)(41);

  String.append(_:)(*a1);
  v2._countAndFlagsBits = 0xD000000000000015;
  v2._object = 0x80000001001BDA70;
  String.append(_:)(v2);
  countAndFlagsBits = a1[3]._countAndFlagsBits;
  object = a1[3]._object;
  v5 = Data.base16EncodedString()();
  String.append(_:)(v5);

  return 0xD000000000000010;
}

void sub_100199600(uint64_t a1@<X1>, void *a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = sub_10016A520(a1, a2);
  if (!v3)
  {
    v6 = v5;
    v7 = [v5 options];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentmentAuthPolicy];

      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_6:
        *a3 = v9;
        return;
      }

      __break(1u);
    }

    v9 = 0;
    goto LABEL_6;
  }
}

void sub_10019969C(char *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v1)
  {
    if (v8)
    {
      v9 = v8;
      v10 = [v8 version];

      if (v10 == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 == 1)
      {
        v11 = 0;
      }

      *a1 = v11;
    }

    else
    {
      (*(v4 + 104))(v7, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_1001998C8(void *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v1)
  {
    v9 = v8;
    if (v8)
    {
      v10 = [v8 encryptedACL];
      if (v10)
      {
        v11 = v10;
        v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = [v9 aclType];
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v16 = v15;
          type metadata accessor for AppleIDVManager();
          sub_1000215BC(v23);
          sub_100009278(v23, v23[3]);
          v24 = dispatch thunk of AppleIDVManaging.recoverPersistedACLBlob(from:)();
          v18 = v17;
          v19 = objc_allocWithZone(DCCredentialAuthACL);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v21 = [v19 initWithData:isa type:v16];
          sub_1000092BC(v12, v14);

          sub_1000092BC(v24, v18);
          sub_100005090(v23);
          *a1 = v21;
        }
      }

      else
      {
        (*(v4 + 104))(v7, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      (*(v4 + 104))(v7, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_100199D00(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (v1)
  {
    return;
  }

  if (!v8)
  {
    (*(v4 + 104))(v7, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v26[1] = 0;
  v27 = v8;
  v9 = [v8 progenitorKey];
  if (!v9)
  {
LABEL_11:
    (*(v4 + 104))(v7, enum case for DIPError.Code.idcsMissingProgenitorKeyFromACL(_:), v3);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v10 = v9;
  v11 = [v9 identifier];
  if (!v11)
  {

    goto LABEL_11;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v10 keyBlob];
  if (!v16)
  {

    goto LABEL_11;
  }

  v17 = v16;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *a1 = v13;
  a1[1] = v15;
  a1[2] = v18;
  a1[3] = v20;
  sub_100009708(v18, v20);
  v21 = [v10 publicKeyIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    sub_1000092BC(v18, v20);
  }

  else
  {

    sub_1000092BC(v18, v20);
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  a1[4] = v23;
  a1[5] = v25;
}

void sub_10019A120(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v97 = a6;
  v93 = a5;
  v9 = type metadata accessor for DIPError.Code();
  v92 = *(v9 - 8);
  isa = v92[8].isa;
  __chkstk_darwin(v9);
  v12 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Logger();
  v91 = *(v13 - 8);
  v14 = *(v91 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v75[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v75[-v18];
  v20 = v96;
  v21 = sub_10016A520(a3, a4);
  if (v20)
  {
    return;
  }

  v89 = v9;
  v90 = v12;
  v83 = a3;
  v84 = a4;
  v86 = v19;
  v22 = v21;
  sub_10005A084();
  v24 = v23;
  if (v23 >> 62)
  {
LABEL_84:
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v93;
  v81 = v17;
  v82 = a1;
  v85 = v22;
  v80 = v13;
  v87 = v20;
  if (!v25)
  {
LABEL_65:

    v54 = sub_10005947C();
    if (v54 >> 62)
    {
      v55 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v97;
    v57 = v89;
    v31 = v90;
    v22 = v92;

    if (v55 > 1)
    {
      (v22[13].isa)(v31, enum case for DIPError.Code.featureNotSupported(_:), v57);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v58 = sub_100032F08(v26, v56);
    type metadata accessor for StoredCryptoKey();
    v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v82 + 2)];
    sub_10005FBEC(v58);
    v35 = sub_10005947C();
    if (v35 >> 62)
    {
LABEL_87:
      v71 = v35;
      v72 = _CocoaArrayWrapper.endIndex.getter();
      v35 = v71;
      if (v72)
      {
        goto LABEL_70;
      }
    }

    else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_70:
      if ((v35 & 0xC000000000000001) != 0)
      {
        goto LABEL_97;
      }

      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v59 = *(v35 + 32);
        goto LABEL_89;
      }

      __break(1u);
      goto LABEL_99;
    }

    v59 = 0;
    goto LABEL_89;
  }

  v17 = 0;
  if (v93)
  {
    v27 = 0;
  }

  else
  {
    v27 = v97 == 0xC000000000000000;
  }

  v28 = !v27;
  v79 = v28;
  v88 = v97 >> 62;
  v77 = HIDWORD(v93) - v93;
  v95 = v24 & 0xFFFFFFFFFFFFFF8;
  v96 = v24 & 0xC000000000000001;
  v29 = __OFSUB__(HIDWORD(v93), v93);
  v76 = v29;
  v78 = BYTE6(v97);
  v94 = v97 >> 60;
  while (1)
  {
    if (v96)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v95 + 16))
      {
        goto LABEL_83;
      }

      v30 = *(v24 + 8 * v17 + 32);
    }

    v31 = v30;
    a1 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v32 = [v30 publicKeyIdentifier];
    if (!v32)
    {
      v22 = 0;
      v34 = 0xF000000000000000;
LABEL_26:
      sub_100009708(v26, v97);

      if (v94 > 0xE)
      {

        sub_10001C120(v22, v34);
        goto LABEL_79;
      }

LABEL_27:
      sub_10001C120(v22, v34);
      v36 = v26;
      v37 = v97;
LABEL_28:
      sub_10001C120(v36, v37);
      goto LABEL_29;
    }

    v13 = v32;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (v34 >> 60 == 15)
    {
      goto LABEL_26;
    }

    if (v94 > 0xE)
    {
      sub_100009708(v26, v97);

      goto LABEL_27;
    }

    v38 = v34 >> 62;
    v39 = v88;
    if (v34 >> 62 == 3)
    {
      if (v22)
      {
        v40 = 0;
      }

      else
      {
        v40 = v34 == 0xC000000000000000;
      }

      v42 = !v40 || v88 < 3;
      if (((v42 | v79) & 1) == 0)
      {
        sub_100009708(0, 0xC000000000000000);
        sub_100032EBC(0, 0xC000000000000000);

        sub_10001C120(0, 0xC000000000000000);
        sub_10001C120(0, 0xC000000000000000);
        v22 = 0;
        goto LABEL_77;
      }

      v43 = 0;
LABEL_56:
      v39 = v88;
      if (v88 <= 1)
      {
        goto LABEL_57;
      }

      goto LABEL_49;
    }

    if (!v38)
    {
      v43 = BYTE6(v34);
      if (v88 <= 1)
      {
        goto LABEL_57;
      }

      goto LABEL_49;
    }

    if (v38 != 1)
    {
      break;
    }

    LODWORD(v43) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_96;
    }

    v43 = v43;
    if (v88 <= 1)
    {
LABEL_57:
      v50 = v39;
      v47 = v78;
      if (v50)
      {
        v47 = v77;
        if (v76)
        {
          goto LABEL_86;
        }
      }

      goto LABEL_59;
    }

LABEL_49:
    if (v39 != 2)
    {
      if (!v43)
      {
        goto LABEL_75;
      }

LABEL_63:
      v13 = v97;
      sub_100009708(v26, v97);
      sub_100032EBC(v22, v34);

      sub_10001C120(v26, v13);
      sub_10001C120(v22, v34);
      v36 = v22;
      v37 = v34;
      goto LABEL_28;
    }

    v45 = *(v26 + 16);
    v44 = *(v26 + 24);
    v46 = __OFSUB__(v44, v45);
    v47 = v44 - v45;
    if (v46)
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_59:
    if (v43 != v47)
    {
      goto LABEL_63;
    }

    if (v43 < 1)
    {
LABEL_75:
      v60 = v97;
      sub_100009708(v26, v97);
      sub_100032EBC(v22, v34);

      sub_10001C120(v26, v60);
      sub_10001C120(v22, v34);
LABEL_77:
      sub_10001C120(v22, v34);
LABEL_78:

LABEL_79:
      v61 = v86;
      v62 = v84;
      defaultLogger()();
      v63 = v97;
      sub_100009708(v26, v97);

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      sub_1000092BC(v26, v63);

      v66 = os_log_type_enabled(v64, v65);
      v67 = v80;
      if (v66)
      {
        v68 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v68 = 136315394;
        v69 = Data.base16EncodedString()();
        v70 = sub_10010150C(v69._countAndFlagsBits, v69._object, &v98);

        *(v68 + 4) = v70;
        *(v68 + 12) = 2080;
        *(v68 + 14) = sub_10010150C(v83, v62, &v98);
        _os_log_impl(&_mh_execute_header, v64, v65, "Public key identifier %s already present on credential %s; not adding again", v68, 0x16u);
        swift_arrayDestroy();

        (*(v91 + 8))(v86, v67);
      }

      else
      {

        (*(v91 + 8))(v61, v67);
      }

      return;
    }

    v51 = v26;
    v52 = v97;
    sub_100009708(v51, v97);
    sub_100032EBC(v22, v34);
    sub_100032EBC(v93, v52);
    v20 = v87;
    v13 = sub_100100288(v22, v34, v93, v52);
    v87 = v20;

    sub_10001C120(v22, v34);
    v53 = v52;
    v26 = v93;
    sub_10001C120(v93, v53);
    sub_10001C120(v22, v34);
    if (v13)
    {
      goto LABEL_78;
    }

LABEL_29:
    ++v17;
    if (a1 == v25)
    {
      goto LABEL_65;
    }
  }

  v49 = v22[2].isa;
  v48 = v22[3].isa;
  v46 = __OFSUB__(v48, v49);
  v43 = v48 - v49;
  if (!v46)
  {
    goto LABEL_56;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_89:

  [v34 setPayload:v59];

  defaultLogger()();
  v22 = v85;
  v31 = Logger.logObject.getter();
  LOBYTE(v24) = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v24))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    v73 = sub_10005947C();
    if (!(v73 >> 62))
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_92;
    }

LABEL_99:
    v74 = _CocoaArrayWrapper.endIndex.getter();
LABEL_92:

    *(v26 + 4) = v74;

    _os_log_impl(&_mh_execute_header, v31, v24, "CredentialStorage+PresentmentKey: credential.allPayloads.count %ld", v26, 0xCu);
  }

  else
  {

    v31 = v22;
  }

  (*(v91 + 8))(v81, v80);
  [v22 addCryptoKeysObject:v34];
  sub_100050240();
}

uint64_t sub_10019ABBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  v36 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if ((sub_1000A0DEC(42, 0xE100000000000000, v12) & 1) != 0 || (v13 = *(v12 + 16)) == 0)
  {
    v14 = _swiftEmptyArrayStorage;
  }

  else
  {
    v29 = v11;
    v30 = v8;
    v33 = v7;
    v31 = a4;
    v14 = sub_100101488(v13, 0);
    v32 = sub_10012261C(&v35, v14 + 4, v13, v12);

    result = sub_1000BAE9C();
    if (v32 != v13)
    {
      __break(1u);
      return result;
    }

    v8 = v30;
    a4 = v31;
    v7 = v33;
    v11 = v29;
  }

  v16 = a3;
  v17 = v34;
  v18 = sub_100055E94(v36, a3, v14);

  if (!v17)
  {
    if (!v18[2])
    {
      v34 = 0;

      defaultLogger()();
      v19 = v36;
      sub_100009708(v36, a3);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      sub_1000092BC(v19, v16);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v35 = v23;
        *v22 = 136315138;
        v24 = Data.base16EncodedString()();
        v33 = v7;
        v25 = v11;
        v26 = v8;
        v27 = sub_10010150C(v24._countAndFlagsBits, v24._object, &v35);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "No credentials found with public key identifier %s", v22, 0xCu);
        sub_100005090(v23);

        result = (*(v26 + 8))(v25, v33);
      }

      else
      {

        result = (*(v8 + 8))(v11, v7);
      }

      v18 = _swiftEmptyArrayStorage;
    }

    *a4 = v18;
  }

  return result;
}

uint64_t sub_10019AEC4()
{
  v1 = v0[2];

  sub_1000092BC(v0[3], v0[4]);

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10019AF24@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10019AF84()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1000092BC(v0[5], v0[6]);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10019AFF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10019B030(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000104D4;

  return sub_100194860(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10019B0F8(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_1000BACE0(a1, a2, v7);
}

uint64_t sub_10019B1C8(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10019B234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100203E80, &qword_1001AEE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019B2DC(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100203E80, &qword_1001AEE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019B390()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_1000092BC(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10019B410()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10019B458(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_100199600(*(v1 + 24), *(v1 + 32), a1);
}

uint64_t sub_10019B478(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v8 = 0;
  }

  else if (a1 == 2)
  {
    v8 = 1;
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    v9 = v5;
    _StringGuts.grow(_:)(79);
    v10._countAndFlagsBits = 0xD00000000000004DLL;
    v10._object = 0x80000001001BDAF0;
    String.append(_:)(v10);
    v11 = DCCredentialPresentmentAuthPolicyToString();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    (*(v3 + 104))(v7, enum case for DIPError.Code.idcsInvalidActionForPresentmentAuthPolicy(_:), v9);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v8 & 1;
}

unint64_t sub_10019B718()
{
  result = qword_100203E98;
  if (!qword_100203E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100203E98);
  }

  return result;
}

uint64_t sub_10019B774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10019B7BC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 sub_10019B80C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10019B830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019B878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019B8FC()
{
  v0 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  DIPError.Code.init(rawValue:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10008C18C(v3);
    return -5000;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 == enum case for DIPError.Code.missingEntitlement(_:))
  {
    goto LABEL_5;
  }

  if (v13 == enum case for DIPError.Code.invalidStoredData(_:))
  {
    goto LABEL_7;
  }

  if (v13 == enum case for DIPError.Code.idcsUnauthorizedPartition(_:))
  {
LABEL_5:
    (*(v5 + 8))(v11, v4);
    return -5002;
  }

  if (v13 == enum case for DIPError.Code.idcsUnknownCredential(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5015;
  }

  if (v13 == enum case for DIPError.Code.idcsInvalidPayload(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5101;
  }

  if (v13 == enum case for DIPError.Code.idcsUnsupportedPayloadFormat(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5102;
  }

  if (v13 == enum case for DIPError.Code.idcsIncorrectCredentialState(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5200;
  }

  if (v13 == enum case for DIPError.Code.idcsMissingPayload(_:) || v13 == enum case for DIPError.Code.idcsMissingKeySigningKey(_:) || v13 == enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:) || v13 == enum case for DIPError.Code.idcsMissingPresentmentKey(_:) || v13 == enum case for DIPError.Code.idcsInvalidPublicKey(_:))
  {
LABEL_7:
    (*(v5 + 8))(v11, v4);
    return -5004;
  }

  else if (v13 == enum case for DIPError.Code.idcsInvalidCredentialStateTransition(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5201;
  }

  else if (v13 == enum case for DIPError.Code.idcsPublicKeyIdentifierAlreadyExists(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5016;
  }

  else if (v13 == enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:) || v13 == enum case for DIPError.Code.idcsUnknownIssuerAuthAlgorithm(_:) || v13 == enum case for DIPError.Code.idcsMisformattedIssuerAuthSignature(_:) || v13 == enum case for DIPError.Code.idcsInvalidIssuerAuthSignature(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5104;
  }

  else if (v13 == enum case for DIPError.Code.idcsPayloadRequiresAuth(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5017;
  }

  else if (v13 == enum case for DIPError.Code.idcsInvalidPayloadAuth(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -5018;
  }

  else
  {
    if (v13 != enum case for DIPError.Code.idcsPayloadPresentmentKeyMismatch(_:))
    {
      v14 = *(v5 + 8);
      v14(v11, v4);
      v14(v9, v4);
      return -5000;
    }

    (*(v5 + 8))(v11, v4);
    return -5105;
  }
}

id sub_10019BFAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v105 = a1;
  v5 = type metadata accessor for Logger();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  __chkstk_darwin(v5);
  v102 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnyCodableDictionary();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  __chkstk_darwin(v8);
  v92 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyCodableArray();
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  __chkstk_darwin(v11);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DateComponents();
  v98 = *(v14 - 8);
  v15 = *(v98 + 64);
  __chkstk_darwin(v14);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ISO23220.BirthDate();
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = *(v99 + 64);
  __chkstk_darwin(v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v101 = *(v22 - 8);
  v23 = *(v101 + 64);
  __chkstk_darwin(v22);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AnyCodable();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v30, a3, v26);
  v31 = (*(v27 + 88))(v30, v26);
  if (v31 == enum case for AnyCodable.BOOLean(_:))
  {
    (*(v27 + 96))(v30, v26);
    v32 = *v30;
    v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v34 = String._bridgeToObjectiveC()();

    v35 = [v33 initWithElementIdentifier:v34 BOOLValue:v32];

    (*(v27 + 8))(a3, v26);
    return v35;
  }

  v91 = a3;
  if (v31 == enum case for AnyCodable.integer(_:))
  {
    (*(v27 + 96))(v30, v26);
    v36 = *v30;
    v37 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v38 = String._bridgeToObjectiveC()();

    v35 = [v37 initWithElementIdentifier:v38 intValue:v36];

    (*(v27 + 8))(v91, v26);
    return v35;
  }

  v39 = v27;
  if (v31 != enum case for AnyCodable.unsignedInteger(_:) && v31 != enum case for AnyCodable.float(_:))
  {
    if (v31 == enum case for AnyCodable.double(_:))
    {
      (*(v27 + 96))(v30, v26);
      v40 = *v30;
      v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v42 = String._bridgeToObjectiveC()();

      v35 = [v41 initWithElementIdentifier:v42 doubleValue:v40];

LABEL_9:
      (*(v39 + 8))(v91, v26);
      return v35;
    }

    if (v31 == enum case for AnyCodable.date(_:))
    {
      v43 = *(v27 + 96);
      v44 = v26;
      v43(v30, v26);
      v45 = v101;
      (*(v101 + 32))(v25, v30, v22);
      v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v47 = String._bridgeToObjectiveC()();

      isa = Date._bridgeToObjectiveC()().super.isa;
      v35 = [v46 initWithElementIdentifier:v47 dateValue:isa];

      (*(v39 + 8))(v91, v44);
      (*(v45 + 8))(v25, v22);
      return v35;
    }

    if (v31 == enum case for AnyCodable.birthDate(_:))
    {
      v49 = *(v27 + 96);
      v90 = v26;
      v49(v30, v26);
      v50 = v99;
      v51 = v100;
      (*(v99 + 32))(v21, v30, v100);
      v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v53 = String._bridgeToObjectiveC()();

      ISO23220.BirthDate.dateComponents.getter();
      v54 = DateComponents._bridgeToObjectiveC()().super.isa;
      (*(v98 + 8))(v17, v14);
      v35 = [v52 initWithElementIdentifier:v53 birthDateValue:v54];

      (*(v39 + 8))(v91, v90);
      (*(v50 + 8))(v21, v51);
      return v35;
    }

    if (v31 == enum case for AnyCodable.string(_:))
    {
      (*(v27 + 96))(v30, v26);
      v55 = *v30;
      v56 = v30[1];
      v57 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v58 = String._bridgeToObjectiveC()();

      v59 = String._bridgeToObjectiveC()();

      v35 = [v57 initWithElementIdentifier:v58 stringValue:v59];

      goto LABEL_9;
    }

    v60 = v26;
    if (v31 == enum case for AnyCodable.array(_:))
    {
      (*(v27 + 96))(v30, v26);
      v62 = v95;
      v61 = v96;
      v63 = v97;
      (*(v96 + 32))(v95, v30, v97);
      v64 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v65 = String._bridgeToObjectiveC()();

      v66 = AnyCodableArray.asNSArray()();
      sub_10019E22C(v66);

      v67 = Array._bridgeToObjectiveC()().super.isa;

      v35 = [v64 initWithElementIdentifier:v65 arrayValue:v67];

      (*(v27 + 8))(v91, v60);
      (*(v61 + 8))(v62, v63);
      return v35;
    }

    if (v31 == enum case for AnyCodable.dictionary(_:))
    {
      (*(v27 + 96))(v30, v26);
      v69 = v92;
      v68 = v93;
      v70 = v94;
      (*(v93 + 32))(v92, v30, v94);
      v71 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v72 = String._bridgeToObjectiveC()();

      v73 = AnyCodableDictionary.asNSDictionary()();
      sub_10019E3F8(v73);

      v74 = Dictionary._bridgeToObjectiveC()().super.isa;

      v35 = [v71 initWithElementIdentifier:v72 dictionaryValue:v74];

      (*(v39 + 8))(v91, v60);
      (*(v68 + 8))(v69, v70);
      return v35;
    }

    if (v31 != enum case for AnyCodable.integerKeyedDictionary(_:) && v31 == enum case for AnyCodable.data(_:))
    {
      (*(v27 + 96))(v30, v26);
      v75 = *v30;
      v76 = v30[1];
      v77 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v78 = String._bridgeToObjectiveC()();

      v79 = Data._bridgeToObjectiveC()().super.isa;
      v35 = [v77 initWithElementIdentifier:v78 dataValue:v79];
      sub_1000092BC(v75, v76);

      (*(v39 + 8))(v91, v26);
      return v35;
    }

    (*(v27 + 8))(v30, v26);
  }

  v80 = v102;
  defaultLogger()();

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v106 = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_10010150C(v105, a2, &v106);
    _os_log_impl(&_mh_execute_header, v81, v82, "Creating DCCredentialElement from unknown value type for element identifier %s", v83, 0xCu);
    sub_100005090(v84);
  }

  (*(v103 + 8))(v80, v104);
  v85 = v91;
  v86 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v87 = String._bridgeToObjectiveC()();

  v35 = [v86 initWithElementIdentifier:v87];

  (*(v39 + 8))(v85, v26);
  return v35;
}

void sub_10019CC78(uint64_t a1@<X8>)
{
  v2 = v1;
  v207 = a1;
  v203 = type metadata accessor for Logger();
  v191 = *(v203 - 8);
  v3 = *(v191 + 64);
  v4 = __chkstk_darwin(v203);
  *&v195 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v200 = (&v183 - v7);
  __chkstk_darwin(v6);
  v199 = &v183 - v8;
  v9 = sub_100004E70(&qword_100202988, &unk_1001AD140);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v192 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v205 = &v183 - v13;
  v206 = type metadata accessor for AnyCodable();
  v204 = *(v206 - 8);
  v14 = *(v204 + 64);
  v15 = __chkstk_darwin(v206);
  v190 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v189 = &v183 - v18;
  v19 = __chkstk_darwin(v17);
  v202 = &v183 - v20;
  __chkstk_darwin(v19);
  v201 = &v183 - v21;
  v198 = type metadata accessor for ISO23220.BirthDate();
  *&v197 = *(v198 - 1);
  v22 = *(v197 + 64);
  v23 = __chkstk_darwin(v198);
  v194 = &v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v193 = &v183 - v25;
  v26 = sub_100004E70(&qword_100203D18, &qword_1001AEDF8);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v183 - v31;
  v33 = type metadata accessor for DateComponents();
  *&v196 = *(v33 - 8);
  v34 = *(v196 + 64);
  v35 = __chkstk_darwin(v33);
  v37 = &v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v183 - v38;
  v40 = type metadata accessor for Date();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v183 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [v2 stringValue];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = &type metadata for String;
LABEL_5:
    *(&v222 + 1) = v50;
    *&v221 = v47;
    *(&v221 + 1) = v49;
    goto LABEL_6;
  }

  v187 = v39;
  v188 = v41;
  v184 = v37;
  v185 = v30;
  v186 = v32;
  v51 = [v2 dataValue];
  if (v51)
  {
    v52 = v51;
    v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v53;

    v50 = &type metadata for Data;
    goto LABEL_5;
  }

  v54 = [v2 dateValue];
  if (v54)
  {
    v55 = v54;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v222 + 1) = v40;
    v56 = sub_10001A9A4(&v221);
    v57 = v188;
    (*(v188 + 16))(v56, v44, v40);
    AnyCodable.init(value:)();
    (*(v57 + 8))(v44, v40);
    return;
  }

  v58 = [v2 birthDateValue];
  if (v58)
  {
    v59 = v187;
    v60 = v58;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = v196;
    v62 = v33;
    (*(v196 + 16))(v184, v59, v33);
    v63 = v186;
    ISO23220.BirthDate.init(dateComponents:)();
    v64 = v185;
    sub_10019E780(v63, v185);
    v65 = v197;
    v66 = v198;
    v67 = (*(v197 + 48))(v64, 1, v198);
    v69 = v206;
    v68 = v207;
    if (v67 == 1)
    {
      sub_10000A0D4(v63, &qword_100203D18, &qword_1001AEDF8);
      (*(v61 + 8))(v59, v62);
      (*(v204 + 56))(v68, 1, 1, v69);
    }

    else
    {
      v75 = v64;
      v76 = v193;
      (*(v65 + 32))(v193, v75, v66);
      (*(v65 + 16))(v194, v76, v66);
      AnyCodable.init(value:)();
      (*(v65 + 8))(v76, v66);
      sub_10000A0D4(v63, &qword_100203D18, &qword_1001AEDF8);
      (*(v61 + 8))(v187, v62);
      (*(v204 + 56))(v68, 0, 1, v69);
    }

    return;
  }

  v70 = [v2 numberValue];
  v72 = v206;
  v71 = v207;
  if (v70)
  {
    v205 = v70;
    v73 = [v2 numericTypeHint];
    if (v73 == 3)
    {
      v109 = [v205 BOOLValue];
      *(&v222 + 1) = &type metadata for Bool;
      LOBYTE(v221) = v109;
    }

    else if (v73 == 2)
    {
      [v205 doubleValue];
      *(&v222 + 1) = &type metadata for Double;
      *&v221 = v108;
    }

    else
    {
      if (v73 != 1)
      {
        (*(v204 + 56))(v71, 1, 1, v72);
        v110 = v205;

        return;
      }

      v74 = [v205 integerValue];
      *(&v222 + 1) = &type metadata for Int;
      *&v221 = v74;
    }

    AnyCodable.init(value:)();

    return;
  }

  v77 = [v2 arrayValue];
  v183 = v2;
  if (v77)
  {
    v78 = v77;
    v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = *(v79 + 16);
    v82 = v203;
    if (!v81)
    {
LABEL_82:

      *(&v222 + 1) = type metadata accessor for AnyCodableArray();
      sub_10001A9A4(&v221);
      AnyCodableArray.init(value:)();
      goto LABEL_6;
    }

    v83 = v79 + 32;
    v84 = v205;
    *&v197 = v204 + 48;
    *&v196 = v204 + 32;
    v194 = (v204 + 16);
    v192 = v79;
    v193 = (v204 + 8);
    v198 = (v191 + 8);
    v200 = _swiftEmptyArrayStorage;
    *&v80 = 136315138;
    v195 = v80;
    v85 = v199;
    while (1)
    {
      sub_10000B558(v83, &v213);
      if (swift_dynamicCast())
      {
        v221 = v216;
        v222 = v217;
        *&v223[0] = v218;
        *(&v217 + 1) = &type metadata for AnyHashable;
        *&v216 = swift_allocObject();
        sub_100112864(&v221, v216 + 16);
        AnyCodable.init(value:)();
        if ((*v197)(v84, 1, v72) != 1)
        {
          v100 = *v196;
          v101 = v201;
          (*v196)();
          (*v194)(v202, v101, v72);
          v102 = v200;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_100100FDC(0, v102[2] + 1, 1, v102);
          }

          v103 = v204;
          v105 = v102[2];
          v104 = v102[3];
          v200 = v102;
          if (v105 >= v104 >> 1)
          {
            v107 = sub_100100FDC(v104 > 1, v105 + 1, 1, v200);
            v103 = v204;
            v200 = v107;
          }

          (*(v103 + 8))(v201, v72);
          sub_1001128C0(&v221);
          v106 = v200;
          v200[2] = v105 + 1;
          v100(v106 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v105, v202, v72);
          goto LABEL_22;
        }

        sub_1001128C0(&v221);
        v86 = v84;
        v87 = &qword_100202988;
        v88 = &unk_1001AD140;
      }

      else
      {
        *&v218 = 0;
        v216 = 0u;
        v217 = 0u;
        v86 = &v216;
        v87 = &unk_100203EA0;
        v88 = &unk_1001AF1F8;
      }

      sub_10000A0D4(v86, v87, v88);
      defaultLogger()();
      v89 = v183;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v221 = v93;
        *v92 = v195;
        v94 = [v89 elementIdentifier];
        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = v96;

        v98 = v95;
        v72 = v206;
        v99 = sub_10010150C(v98, v97, &v221);

        *(v92 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v90, v91, "Cannot convert value in array %s to hashable", v92, 0xCu);
        sub_100005090(v93);
        v82 = v203;

        v85 = v199;
      }

      (*v198)(v85, v82);
LABEL_22:
      v83 += 32;
      --v81;
      v84 = v205;
      if (!v81)
      {
        goto LABEL_82;
      }
    }
  }

  v111 = [v2 dictionaryValue];
  v112 = v203;
  v113 = v191;
  if (!v111)
  {
    v182 = *(v204 + 56);

    v182(v71, 1, 1, v72);
    return;
  }

  v114 = v111;
  v115 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v194 = sub_10010D23C(_swiftEmptyArrayStorage);
  v117 = *(v115 + 64);
  v199 = (v115 + 64);
  v118 = 1 << *(v115 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & v117;
  v121 = (v118 + 63) >> 6;
  v201 = v115;
  v202 = (v113 + 8);
  v198 = (v204 + 48);
  v193 = (v204 + 32);
  v191 = v204 + 16;
  v187 = (v204 + 40);
  v188 = v204 + 8;
  *&v116 = 136315138;
  v196 = v116;
  *&v116 = 136315394;
  v197 = v116;
  v122 = v195;
  v123 = v200;
  v124 = 0;
  if (!v120)
  {
LABEL_46:
    if (v121 <= (v124 + 1))
    {
      v126 = v124 + 1;
    }

    else
    {
      v126 = v121;
    }

    v127 = v126 - 1;
    while (1)
    {
      v125 = (v124 + 1);
      if (__OFADD__(v124, 1))
      {
        break;
      }

      if (v125 >= v121)
      {
        v120 = 0;
        v220 = 0;
        v218 = 0u;
        v219 = 0u;
        v216 = 0u;
        v217 = 0u;
        goto LABEL_54;
      }

      v120 = *&v199[8 * v125];
      ++v124;
      if (v120)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  while (1)
  {
    v125 = v124;
LABEL_53:
    v128 = __clz(__rbit64(v120));
    v120 &= v120 - 1;
    v129 = v128 | (v125 << 6);
    v130 = v201;
    sub_100112864(*(v201 + 6) + 40 * v129, &v213);
    sub_10000B558(*(v130 + 7) + 32 * v129, &v208);
    v216 = v213;
    v217 = v214;
    *&v218 = v215;
    sub_100009268(&v208, (&v218 + 8));
    v127 = v125;
LABEL_54:
    v223[0] = v218;
    v223[1] = v219;
    v224 = v220;
    v221 = v216;
    v222 = v217;
    if (!*(&v217 + 1))
    {
      break;
    }

    v216 = v221;
    v217 = v222;
    *&v218 = *&v223[0];
    sub_100009268((v223 + 8), v212);
    sub_100112864(&v216, &v213);
    if (swift_dynamicCast())
    {
      v205 = v127;
      v131 = v208;
      sub_10000B558(v212, &v211);
      if ((swift_dynamicCast() & 1) == 0)
      {

        v210 = 0;
        v208 = 0u;
        v209 = 0u;
        v133 = &v208;
        v134 = &unk_100203EA0;
        v135 = &unk_1001AF1F8;
        goto LABEL_62;
      }

      v213 = v208;
      v214 = v209;
      v215 = v210;
      *(&v209 + 1) = &type metadata for AnyHashable;
      *&v208 = swift_allocObject();
      sub_100112864(&v213, v208 + 16);
      v132 = v192;
      AnyCodable.init(value:)();
      if ((*v198)(v132, 1, v206) == 1)
      {
        sub_1001128C0(&v213);

        v133 = v132;
        v134 = &qword_100202988;
        v135 = &unk_1001AD140;
LABEL_62:
        sub_10000A0D4(v133, v134, v135);
        defaultLogger()();
        v150 = v183;
        v151 = Logger.logObject.getter();
        v152 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          *&v213 = v154;
          *v153 = v196;
          v155 = [v150 elementIdentifier];
          v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v158 = v157;

          v159 = sub_10010150C(v156, v158, &v213);
          v122 = v195;

          *(v153 + 4) = v159;
          _os_log_impl(&_mh_execute_header, v151, v152, "Cannot convert value in dictionary %s to hashable", v153, 0xCu);
          sub_100005090(v154);
          v123 = v200;
        }

        v112 = v203;
        (*v202)(v123, v203);
        sub_100005090(v212);
        sub_1001128C0(&v216);
        v124 = v205;
        if (!v120)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v160 = *v193;
        v161 = v189;
        v162 = v132;
        v163 = v206;
        (*v193)(v189, v162, v206);
        (*v191)(v190, v161, v163);
        v164 = v194;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v208 = v164;
        v166 = sub_100099644(v131, *(&v131 + 1));
        v168 = *(v164 + 2);
        v169 = (v167 & 1) == 0;
        v170 = __OFADD__(v168, v169);
        v171 = v168 + v169;
        if (v170)
        {
          goto LABEL_88;
        }

        v172 = v167;
        if (*(v164 + 3) < v171)
        {
          sub_100108DE8(v171, isUniquelyReferenced_nonNull_native);
          v166 = sub_100099644(v131, *(&v131 + 1));
          if ((v172 & 1) != (v173 & 1))
          {
            goto LABEL_90;
          }

LABEL_75:
          v112 = v203;
          if ((v172 & 1) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_76;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_75;
        }

        v177 = v166;
        sub_10010A13C();
        v166 = v177;
        v112 = v203;
        if ((v172 & 1) == 0)
        {
LABEL_78:
          v178 = v208;
          *(v208 + 8 * (v166 >> 6) + 64) |= 1 << v166;
          *(*(v178 + 6) + 16 * v166) = v131;
          v179 = v206;
          v160(*(v178 + 7) + *(v204 + 72) * v166, v190, v206);
          (*(v204 + 8))(v189, v179);
          sub_1001128C0(&v213);
          sub_100005090(v212);
          sub_1001128C0(&v216);
          v180 = *(v178 + 2);
          v170 = __OFADD__(v180, 1);
          v181 = v180 + 1;
          if (v170)
          {
            goto LABEL_89;
          }

          v194 = v178;
          *(v178 + 2) = v181;
          goto LABEL_80;
        }

LABEL_76:
        v174 = v166;

        v194 = v208;
        v175 = *(v208 + 56) + *(v204 + 72) * v174;
        v176 = v206;
        (*(v204 + 40))(v175, v190, v206);
        (*(v204 + 8))(v189, v176);
        sub_1001128C0(&v213);
        sub_100005090(v212);
        sub_1001128C0(&v216);
LABEL_80:
        v123 = v200;
        v124 = v205;
        if (!v120)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      defaultLogger()();
      sub_100112864(&v216, &v213);
      v136 = v183;
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v205 = v127;
        v140 = v139;
        *&v208 = swift_slowAlloc();
        *v140 = v197;
        v141 = AnyHashable.description.getter();
        v143 = v142;
        sub_1001128C0(&v213);
        v144 = sub_10010150C(v141, v143, &v208);

        *(v140 + 4) = v144;
        *(v140 + 12) = 2080;
        v145 = [v136 elementIdentifier];
        v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v148 = v147;

        v149 = sub_10010150C(v146, v148, &v208);
        v122 = v195;

        *(v140 + 14) = v149;
        _os_log_impl(&_mh_execute_header, v137, v138, "Key %s in dictionary %s is not a string", v140, 0x16u);
        swift_arrayDestroy();
        v112 = v203;

        (*v202)(v122, v112);
        sub_100005090(v212);
        sub_1001128C0(&v216);
        v124 = v205;
      }

      else
      {

        sub_1001128C0(&v213);
        (*v202)(v122, v112);
        sub_100005090(v212);
        sub_1001128C0(&v216);
        v124 = v127;
      }

      v123 = v200;
      if (!v120)
      {
        goto LABEL_46;
      }
    }
  }

  *(&v222 + 1) = type metadata accessor for AnyCodableDictionary();
  sub_10001A9A4(&v221);
  AnyCodableDictionary.init(value:)();
LABEL_6:
  AnyCodable.init(value:)();
}

char *sub_10019E22C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10010A738(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10019E7F0();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10010A738((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100009268(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10019E7F0();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10010A738((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100009268(v12, &v3[4 * v11 + 4]);
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

uint64_t sub_10019E3F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004E70(&qword_100203520, &qword_1001ADD90);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_10019E7F0();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100009268(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100009268(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100009268(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10019E6B8()
{
  _StringGuts.grow(_:)(38);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000024;
}

uint64_t sub_10019E748()
{
  sub_100005090((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10019E780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100203D18, &qword_1001AEDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019E7F0()
{
  result = qword_100203EA8;
  if (!qword_100203EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100203EA8);
  }

  return result;
}

void sub_10019E83C(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v50 = *(v8 - 1);
  v51 = v8;
  v9 = v50[8];
  __chkstk_darwin(v8);
  isa = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for COSEKey();
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  __chkstk_darwin(v15);
  v54 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v55 = sub_100060CC0;
  v56 = a1;
  os_unfair_lock_lock(v18 + 4);
  sub_100032EEC(v19);
  if (v1)
  {
    os_unfair_lock_unlock(v18 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v18 + 4);
    if (v58 >> 60 == 15)
    {
      (*(v4 + 104))(v7, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v48 = v15;
    v52 = v57;
    v53 = v58;
    __chkstk_darwin(v20);
    os_unfair_lock_lock(v18 + 4);
    sub_100034020(v21);
    os_unfair_lock_unlock(v18 + 4);
    if (v58 >> 60 == 15)
    {
      (*(v4 + 104))(v7, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_8:
      sub_10001C120(v52, v53);
      return;
    }

    v46 = v57;
    v47 = v58;
    sub_100024590(v14);
    v22 = v59;
    v23 = v48;
    if ((*(v59 + 48))(v14, 1, v48) == 1)
    {
      sub_10000A0D4(v14, &qword_100201070, &unk_1001AD2D0);
      (*(v4 + 104))(v7, enum case for DIPError.Code.idcsCOSEKeyCreationFailed(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10001C120(v46, v47);
      goto LABEL_8;
    }

    (*(v22 + 32))(v54, v14, v23);
    v24 = type metadata accessor for CBOREncoder();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    CBOREncoder.init()();
    sub_1000E08AC(&qword_100202BE8, &type metadata accessor for COSEKey);
    v27 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v29 = v28;
    v30 = v27;

    __chkstk_darwin(v31);
    os_unfair_lock_lock(v18 + 4);
    sub_10016A190(&v57);
    os_unfair_lock_unlock(v18 + 4);
    v45 = v57;
    v32 = isa;
    v33 = defaultLogger()();
    __chkstk_darwin(v33);
    v44 = v30;
    Logger.sensitive(_:)();
    (v50[1])(v32, v51);
    v34 = *(a1 + 16);
    v35 = *(a1 + 24);
    v50 = objc_allocWithZone(DCCredentialCryptoKey);
    v36 = String._bridgeToObjectiveC()();
    v51 = v36;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v38 = v46;
    v37 = v47;
    v39 = Data._bridgeToObjectiveC()().super.isa;
    v40 = Data._bridgeToObjectiveC()().super.isa;
    v41 = Array._bridgeToObjectiveC()().super.isa;

    v42 = isa;
    [v50 initWithIdentifier:v36 publicKey:isa publicKeyIdentifier:v39 publicKeyCOSEKey:v40 keyType:0 keyUsage:0 attestation:v41];

    sub_1000092BC(v44, v29);
    sub_10001C120(v38, v37);

    sub_10001C120(v52, v53);
    (*(v59 + 8))(v54, v48);
  }
}

unint64_t sub_10019F168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10019E6B8();
}

uint64_t sub_10019F170(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v64 - v8;
  v9 = type metadata accessor for String.Encoding();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = v74[8];
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v71 = *(v13 - 8);
  v14 = *(v71 + 64);
  __chkstk_darwin(v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v69 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v76 = &v64 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v64 - v25;
  __chkstk_darwin(v24);
  v28 = &v64 - v27;
  result = isInternalBuild()();
  if (result)
  {
    v67 = v7;
    v68 = v3;
    v30 = [objc_opt_self() defaultManager];
    v77._countAndFlagsBits = 0;
    v31 = [v30 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:&v77];

    countAndFlagsBits = v77._countAndFlagsBits;
    if (v31)
    {
      v66 = v2;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = countAndFlagsBits;

      URL.appendingPathComponent(_:isDirectory:)();
      v64 = v18;
      v65 = v12;
      v34 = *(v18 + 8);
      v34(v26, v17);
      v77._countAndFlagsBits = 0x2D64616F6C796170;
      v77._object = 0xE800000000000000;
      UUID.init()();
      v35 = UUID.uuidString.getter();
      v37 = v36;
      (*(v71 + 8))(v16, v13);
      v38._countAndFlagsBits = v35;
      v39 = v28;
      v38._object = v37;
      String.append(_:)(v38);

      URL.appendingPathComponent(_:)();

      v40 = v76;
      URL.appendingPathExtension(_:)();
      v41 = v65;
      v34(v26, v17);
      v77 = Data.base16EncodedString()();
      static String.Encoding.utf8.getter();
      sub_100021E18();
      StringProtocol.write(to:atomically:encoding:)();
      (v74[1])(v41, v75);

      v51 = v70;
      defaultLogger()();
      v52 = v69;
      (*(v64 + 16))(v69, v40, v17);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v66;
      if (v55)
      {
        v57 = v52;
        v58 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v77._countAndFlagsBits = v74;
        *v58 = 136315138;
        v59 = URL.absoluteString.getter();
        v75 = v39;
        v61 = v60;
        v34(v57, v17);
        v62 = sub_10010150C(v59, v61, &v77._countAndFlagsBits);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "Saved ISO 18013 payload to %s", v58, 0xCu);
        sub_100005090(v74);

        (*(v68 + 8))(v70, v66);
        v34(v40, v17);
        v63 = v75;
      }

      else
      {

        v34(v52, v17);
        (*(v68 + 8))(v51, v56);
        v34(v40, v17);
        v63 = v39;
      }

      return (v34)(v63, v17);
    }

    else
    {
      v42 = v77._countAndFlagsBits;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v43 = v67;
      defaultLogger()();
      swift_errorRetain();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v77._countAndFlagsBits = v47;
        *v46 = 136315138;
        swift_getErrorValue();
        v48 = Error.localizedDescription.getter();
        v50 = sub_10010150C(v48, v49, &v77._countAndFlagsBits);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "Failed to write ISO 18013 payload to disk: %s", v46, 0xCu);
        sub_100005090(v47);
      }

      else
      {
      }

      return (*(v68 + 8))(v43, v2);
    }
  }

  return result;
}

uint64_t sub_10019F998(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SESKeystore.KeyDesignation();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10019FB34, 0, 0);
}

uint64_t sub_10019FB34()
{
  v1 = v0[15];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Clearing key designations in database", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[11];
  v7 = v0[12];

  v8 = *(v7 + 8);
  v0[16] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_10019FC74;
  v10 = v0[2];

  return sub_1001A2F1C(0, &off_1001F41F0, v10);
}

uint64_t sub_10019FC74()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1001A0150;
  }

  else
  {
    v3 = sub_10019FD88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019FD88()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Clearing key designations in SE", v4, 2u);
  }

  v36 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[3];

  v5(v6, v7);
  v13 = *(v11 + 104);
  v13(v9, enum case for SESKeystore.KeyDesignation.progenitor(_:), v10);
  dispatch thunk of SESKeystore.clearKeyDesignation(_:)();
  v14 = *(v11 + 8);
  v14(v9, v10);
  if (v36)
  {
    v18 = v0[14];
    v19 = v0[15];
    v20 = v0[13];
    v35 = v0[10];
    v37 = v0[9];
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v21 = v0[1];
  }

  else
  {
    v15 = v0[9];
    v16 = v0[7];
    v17 = v0[3];
    v13(v15, enum case for SESKeystore.KeyDesignation.progenitorThirdParty(_:), v16);
    dispatch thunk of SESKeystore.clearKeyDesignation(_:)();
    v14(v15, v16);
    v23 = v0[13];
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Done clearing key designations", v26, 2u);
    }

    v27 = v0[15];
    v28 = v0[16];
    v30 = v0[13];
    v29 = v0[14];
    v31 = v0[11];
    v32 = v0[12];
    v34 = v0[9];
    v33 = v0[10];
    v38 = v0[6];

    v28(v30, v31);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_1001A0150()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v7 = v0[10];
  v8 = v0[9];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001A02E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 496) = a4;
  *(v5 + 96) = a3;
  *(v5 + 104) = a5;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  v6 = *(*(sub_100004E70(&qword_100201488, &qword_1001ACFD0) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  *(v5 + 128) = v7;
  v8 = *(v7 - 8);
  *(v5 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v10 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyType();
  *(v5 + 152) = v10;
  v11 = *(v10 - 8);
  *(v5 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v13 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyDesignationEventType();
  *(v5 + 192) = v13;
  v14 = *(v13 - 8);
  *(v5 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v16 = type metadata accessor for SESKeystore.KeyDesignation();
  *(v5 + 232) = v16;
  v17 = *(v16 - 8);
  *(v5 + 240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  v19 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyDesignationFlow();
  *(v5 + 264) = v19;
  v20 = *(v19 - 8);
  *(v5 + 272) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v22 = type metadata accessor for Logger();
  *(v5 + 328) = v22;
  v23 = *(v22 - 8);
  *(v5 + 336) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1001A0678, 0, 0);
}

uint64_t sub_1001A0678()
{
  sub_1001A2AC4();
  static SharedInternalDefaultsKeys.forceSEProgenitorKeyDesignationFailure.getter();
  v1 = static NSUserDefaults.globalInternalBool(forKey:)();

  if (v1)
  {
    v2 = v0[49];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[42];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Internal Setting Override forceSEProgenitorKeyDesignationFailure: Progenitor key will not be designated", v7, 2u);
    }

    v8 = v0[48];
    v10 = v0[46];
    v9 = v0[47];
    v11 = v0[44];
    v12 = v0[45];
    v13 = v0[43];
    v14 = v0[40];
    v19 = v0[39];
    v20 = v0[38];
    v21 = v0[37];
    v22 = v0[36];
    v23 = v0[35];
    v24 = v0[32];
    v25 = v0[31];
    v26 = v0[28];
    v27 = v0[27];
    v28 = v0[26];
    v29 = v0[23];
    v30 = v0[22];
    v31 = v0[21];
    v32 = v0[18];
    v33 = v0[15];
    v34 = v0[14];
    (*(v6 + 8))(v0[49], v0[41]);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[50] = v17;
    *v17 = v0;
    v17[1] = sub_1001A0960;
    v18 = v0[10];

    return sub_1001A3360(0xD000000000000012, 0x80000001001B18B0, v18);
  }
}

uint64_t sub_1001A0960(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(*v4 + 400);
  v6 = *v4;
  *(v6 + 408) = a1;
  *(v6 + 416) = a2;
  *(v6 + 497) = a3;
  *(v6 + 424) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_1001A0C08, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v6 + 432) = v7;
    *v7 = v6;
    v7[1] = sub_1001A0AEC;
    v8 = *(v6 + 80);

    return sub_1001A3360(0xD00000000000001ELL, 0x80000001001B18D0, v8);
  }
}

uint64_t sub_1001A0AEC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *(*v4 + 432);
  v9 = *v4;
  *(v5 + 440) = a1;
  *(v5 + 448) = a2;
  *(v5 + 498) = a3;
  *(v5 + 456) = v3;

  if (v3)
  {
    v7 = sub_1001A21F4;
  }

  else
  {
    v7 = sub_1001A0E78;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001A0C08()
{
  v1 = v0[53];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[47];
  v7 = v0[46];
  v8 = v0[45];
  v9 = v0[44];
  v10 = v0[43];
  v11 = v0[40];
  v12 = v0[39];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[15];
  v26 = v0[14];
  (*(v0[17] + 104))(v0[18], enum case for DIPError.Code.internalError(_:), v0[16]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001A0E78()
{
  v1 = *(v0 + 497);
  if (v1 == 2)
  {
    v234 = *(v0 + 456);
    v2 = _swiftEmptyArrayStorage;
  }

  else
  {
    v4 = *(v0 + 408);
    v3 = *(v0 + 416);
    v5 = *(v0 + 496);
    v6 = enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designation(_:);
    v7 = *(*(v0 + 272) + 104);
    v7(*(v0 + 320), enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designation(_:), *(v0 + 264));
    sub_100009708(v4, v3);
    if (v5 == 1 && (v1 & 1) != 0)
    {
      v8 = *(v0 + 384);
      defaultLogger()();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 497);
      v14 = *(v0 + 408);
      v13 = *(v0 + 416);
      v15 = *(v0 + 384);
      v16 = *(v0 + 328);
      v17 = *(v0 + 336);
      v18 = *(v0 + 272);
      if (v11)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Progenitor key is already designated", v19, 2u);
      }

      sub_1001A3830(v14, v13, v12);
      (*(v17 + 8))(v15, v16);
      v234 = *(v0 + 456);
      v2 = _swiftEmptyArrayStorage;
      (*(v18 + 8))(*(v0 + 320), *(v0 + 264));
    }

    else
    {
      v229 = v6;
      v235 = v7;
      v20 = *(v0 + 376);
      defaultLogger()();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Designating progenitor key in SE", v23, 2u);
      }

      v220 = *(v0 + 456);
      v212 = *(v0 + 416);
      v197 = *(v0 + 408);
      v24 = *(v0 + 376);
      v25 = *(v0 + 328);
      v26 = *(v0 + 336);
      v28 = *(v0 + 312);
      v27 = *(v0 + 320);
      v29 = v21;
      v31 = *(v0 + 264);
      v30 = *(v0 + 272);
      v32 = *(v0 + 240);
      v167 = *(v0 + 256);
      v172 = *(v0 + 232);
      v204 = *(v0 + 104);
      v163 = *(v0 + 496);
      v183 = *(v0 + 88);
      v190 = *(v0 + 96);
      v177 = *(v0 + 497);

      (*(v26 + 8))(v24, v25);
      v217 = *(v30 + 8);
      v217(v27, v31);
      if (v163)
      {
        v33 = enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designationKeyMismatch(_:);
      }

      else
      {
        v33 = v229;
      }

      v235(v28, v33, v31);
      (*(v30 + 32))(v27, v28, v31);
      (*(v32 + 104))(v167, enum case for SESKeystore.KeyDesignation.progenitor(_:), v172);
      sub_1001A3844(v197, v212, v177);
      dispatch thunk of SESKeystore.designateKey(_:designation:sessionHandoffToken:)();
      v34 = *(v0 + 497);
      v36 = *(v0 + 408);
      v35 = *(v0 + 416);
      if (v220)
      {
        v230 = *(v0 + 320);
        v205 = *(v0 + 288);
        v37 = *(v0 + 272);
        v198 = *(v0 + 264);
        v38 = *(v0 + 216);
        v39 = *(v0 + 192);
        v40 = *(v0 + 200);
        v41 = *(v0 + 160);
        v184 = *(v0 + 152);
        v191 = *(v0 + 176);
        v42 = *(v0 + 136);
        v236 = *(v0 + 128);
        v221 = *(v0 + 120);
        (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
        sub_1001A3830(v36, v35, v34);
        (*(v40 + 104))(v38, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationFlow(_:), v39);
        (*(v41 + 104))(v191, enum case for IDCSAnalytics.SEProgenitorKeyType.progenitorKey(_:), v184);
        (*(v37 + 16))(v205, v230, v198);
        swift_getErrorValue();
        v44 = *(v0 + 40);
        v43 = *(v0 + 48);
        v45 = *(v0 + 56);
        Error.dipErrorCode.getter();
        if ((*(v42 + 48))(v221, 1, v236) == 1)
        {
          sub_10008C18C(*(v0 + 120));
        }

        else
        {
          v119 = *(v0 + 128);
          v120 = *(v0 + 136);
          v121 = *(v0 + 120);
          DIPError.Code.rawValue.getter();
          (*(v120 + 8))(v121, v119);
        }

        v194 = *(v0 + 440);
        v201 = *(v0 + 448);
        v180 = *(v0 + 408);
        v187 = *(v0 + 416);
        v210 = *(v0 + 320);
        v122 = *(v0 + 288);
        v123 = *(v0 + 264);
        v165 = v123;
        v124 = *(v0 + 216);
        v125 = *(v0 + 200);
        v226 = *(v0 + 192);
        v126 = *(v0 + 176);
        v127 = *(v0 + 160);
        v128 = *(v0 + 136);
        v155 = *(v0 + 152);
        v158 = *(v0 + 144);
        v241 = *(v0 + 128);
        v169 = *(v0 + 497);
        v174 = *(v0 + 498);
        type metadata accessor for IDCSAnalytics();
        static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
        v129 = v217;
        v217(v122, v123);
        (*(v127 + 8))(v126, v155);
        (*(v125 + 8))(v124, v226);
        v227 = enum case for DIPError.Code.internalError(_:);
        (*(v128 + 104))(v158);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100008E7C();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1001A3830(v180, v187, v169);
        sub_1001A3830(v194, v201, v174);
        v130 = v180;
        v131 = v187;
        v132 = v169;
        goto LABEL_47;
      }

      (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
      sub_1001A3830(v36, v35, v34);
      v2 = sub_100100418(0, 1, 1, _swiftEmptyArrayStorage);
      v47 = *(v2 + 2);
      v46 = *(v2 + 3);
      if (v47 >= v46 >> 1)
      {
        v2 = sub_100100418((v46 > 1), v47 + 1, 1, v2);
      }

      v222 = *(v0 + 408);
      v213 = *(v0 + 320);
      v231 = *(v0 + 272);
      v237 = *(v0 + 416);
      v48 = *(v0 + 224);
      v50 = *(v0 + 192);
      v49 = *(v0 + 200);
      v51 = *(v0 + 184);
      v53 = *(v0 + 152);
      v52 = *(v0 + 160);
      v206 = *(v0 + 497);
      *(v2 + 2) = v47 + 1;
      v54 = &v2[16 * v47];
      *(v54 + 4) = 0xD000000000000012;
      *(v54 + 5) = 0x80000001001B18B0;
      type metadata accessor for IDCSAnalytics();
      (*(v49 + 104))(v48, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationFlow(_:), v50);
      (*(v52 + 104))(v51, enum case for IDCSAnalytics.SEProgenitorKeyType.progenitorKey(_:), v53);
      static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
      sub_1001A3830(v222, v237, v206);
      (*(v52 + 8))(v51, v53);
      (*(v49 + 8))(v48, v50);
      v234 = 0;
      v217(*(v0 + 320), *(v0 + 264));
    }
  }

  v55 = *(v0 + 498);
  if (v55 == 2)
  {
LABEL_38:
    *(v0 + 464) = v2;
    v108 = *(v0 + 352);
    defaultLogger()();
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v109, v110, "Setting key designations in the database", v111, 2u);
    }

    v112 = *(v0 + 352);
    v113 = *(v0 + 328);
    v114 = *(v0 + 336);

    v115 = *(v114 + 8);
    *(v0 + 472) = v115;
    v115(v112, v113);
    v116 = swift_task_alloc();
    *(v0 + 480) = v116;
    *v116 = v0;
    v116[1] = sub_1001A2470;
    v117 = *(v0 + 80);

    return sub_1001A2F1C(1, v2, v117);
  }

  v56 = *(v0 + 440);
  v57 = *(v0 + 448);
  v58 = *(v0 + 496);
  v59 = enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designation(_:);
  v60 = *(*(v0 + 272) + 104);
  v60(*(v0 + 304), enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designation(_:), *(v0 + 264));
  sub_100009708(v56, v57);
  if (v58 == 1 && (v55 & 1) != 0)
  {
    v61 = *(v0 + 368);
    defaultLogger()();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 498);
    v67 = *(v0 + 440);
    v66 = *(v0 + 448);
    v68 = *(v0 + 368);
    v69 = *(v0 + 336);
    v238 = *(v0 + 328);
    v70 = *(v0 + 272);
    if (v64)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Progenitor third party key is already designated", v71, 2u);
    }

    sub_1001A3830(v67, v66, v65);
    (*(v69 + 8))(v68, v238);
    (*(v70 + 8))(*(v0 + 304), *(v0 + 264));
    goto LABEL_38;
  }

  v214 = v59;
  v223 = v60;
  v232 = v2;
  v72 = *(v0 + 360);
  defaultLogger()();
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "Designating progenitor third party key in SE", v75, 2u);
  }

  v207 = *(v0 + 448);
  v76 = *(v0 + 360);
  v77 = v73;
  v78 = *(v0 + 328);
  v79 = *(v0 + 336);
  v80 = *(v0 + 296);
  v81 = *(v0 + 304);
  v83 = *(v0 + 264);
  v82 = *(v0 + 272);
  v84 = *(v0 + 240);
  v164 = *(v0 + 248);
  v168 = *(v0 + 232);
  v192 = *(v0 + 440);
  v199 = *(v0 + 104);
  v161 = *(v0 + 496);
  v178 = *(v0 + 88);
  v185 = *(v0 + 96);
  v173 = *(v0 + 498);

  (*(v79 + 8))(v76, v78);
  v85 = *(v82 + 8);
  v85(v81, v83);
  if (v161)
  {
    v86 = enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designationKeyMismatch(_:);
  }

  else
  {
    v86 = v214;
  }

  v223(v80, v86, v83);
  (*(v82 + 32))(v81, v80, v83);
  (*(v84 + 104))(v164, enum case for SESKeystore.KeyDesignation.progenitorThirdParty(_:), v168);
  sub_1001A3844(v192, v207, v173);
  dispatch thunk of SESKeystore.designateKey(_:designation:sessionHandoffToken:)();
  v87 = *(v0 + 498);
  v89 = *(v0 + 440);
  v88 = *(v0 + 448);
  v218 = v85;
  if (!v234)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    sub_1001A3830(v89, v88, v87);
    v2 = v232;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100100418(0, *(v232 + 2) + 1, 1, v232);
    }

    v100 = *(v2 + 2);
    v99 = *(v2 + 3);
    if (v100 >= v99 >> 1)
    {
      v2 = sub_100100418((v99 > 1), v100 + 1, 1, v2);
    }

    v225 = *(v0 + 440);
    v233 = *(v0 + 448);
    v215 = *(v0 + 304);
    v240 = *(v0 + 272);
    v101 = *(v0 + 224);
    v103 = *(v0 + 192);
    v102 = *(v0 + 200);
    v104 = *(v0 + 184);
    v106 = *(v0 + 152);
    v105 = *(v0 + 160);
    v209 = *(v0 + 498);
    *(v2 + 2) = v100 + 1;
    v107 = &v2[16 * v100];
    *(v107 + 4) = 0xD00000000000001ELL;
    *(v107 + 5) = 0x80000001001B18D0;
    type metadata accessor for IDCSAnalytics();
    (*(v102 + 104))(v101, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationFlow(_:), v103);
    (*(v105 + 104))(v104, enum case for IDCSAnalytics.SEProgenitorKeyType.thirdPartyProgenitorKey(_:), v106);
    static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
    sub_1001A3830(v225, v233, v209);
    (*(v105 + 8))(v104, v106);
    (*(v102 + 8))(v101, v103);
    v218(*(v0 + 304), *(v0 + 264));
    goto LABEL_38;
  }

  v224 = *(v0 + 304);
  v90 = *(v0 + 272);
  v193 = *(v0 + 264);
  v200 = *(v0 + 280);
  v92 = *(v0 + 200);
  v91 = *(v0 + 208);
  v93 = *(v0 + 192);
  v94 = *(v0 + 160);
  v179 = *(v0 + 152);
  v186 = *(v0 + 168);
  v95 = *(v0 + 136);
  v239 = *(v0 + 128);
  v208 = *(v0 + 112);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  sub_1001A3830(v89, v88, v87);

  (*(v92 + 104))(v91, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationFlow(_:), v93);
  (*(v94 + 104))(v186, enum case for IDCSAnalytics.SEProgenitorKeyType.thirdPartyProgenitorKey(_:), v179);
  (*(v90 + 16))(v200, v224, v193);
  swift_getErrorValue();
  v97 = *(v0 + 16);
  v96 = *(v0 + 24);
  v98 = *(v0 + 32);
  Error.dipErrorCode.getter();
  if ((*(v95 + 48))(v208, 1, v239) == 1)
  {
    sub_10008C18C(*(v0 + 112));
  }

  else
  {
    v133 = *(v0 + 128);
    v134 = *(v0 + 136);
    v135 = *(v0 + 112);
    DIPError.Code.rawValue.getter();
    (*(v134 + 8))(v135, v133);
  }

  v181 = *(v0 + 440);
  v188 = *(v0 + 448);
  v195 = *(v0 + 408);
  v202 = *(v0 + 416);
  v210 = *(v0 + 304);
  v137 = *(v0 + 272);
  v136 = *(v0 + 280);
  v138 = *(v0 + 264);
  v165 = v138;
  v140 = *(v0 + 200);
  v139 = *(v0 + 208);
  v228 = *(v0 + 192);
  v141 = *(v0 + 160);
  v142 = *(v0 + 168);
  v156 = *(v0 + 152);
  v159 = *(v0 + 144);
  v143 = *(v0 + 136);
  v242 = *(v0 + 128);
  v170 = *(v0 + 498);
  v175 = *(v0 + 497);
  type metadata accessor for IDCSAnalytics();
  static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
  v129 = v218;
  v218(v136, v138);
  (*(v141 + 8))(v142, v156);
  (*(v140 + 8))(v139, v228);
  v227 = enum case for DIPError.Code.internalError(_:);
  (*(v143 + 104))(v159);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_1001A3830(v181, v188, v170);
  sub_1001A3830(v181, v188, v170);
  v130 = v195;
  v131 = v202;
  v132 = v175;
LABEL_47:
  sub_1001A3830(v130, v131, v132);
  v129(v210, v165);
  v145 = *(v0 + 384);
  v144 = *(v0 + 392);
  v147 = *(v0 + 368);
  v146 = *(v0 + 376);
  v148 = *(v0 + 360);
  v150 = *(v0 + 352);
  v151 = *(v0 + 344);
  v152 = *(v0 + 320);
  v153 = *(v0 + 312);
  v154 = *(v0 + 304);
  v157 = *(v0 + 296);
  v160 = *(v0 + 288);
  v162 = *(v0 + 280);
  v166 = *(v0 + 256);
  v171 = *(v0 + 248);
  v176 = *(v0 + 224);
  v182 = *(v0 + 216);
  v189 = *(v0 + 208);
  v196 = *(v0 + 184);
  v203 = *(v0 + 176);
  v211 = *(v0 + 168);
  v216 = *(v0 + 120);
  v219 = *(v0 + 112);
  (*(*(v0 + 136) + 104))(*(v0 + 144), v227, *(v0 + 128));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v149 = *(v0 + 8);

  return v149();
}

uint64_t sub_1001A21F4()
{
  sub_1001A3830(*(v0 + 408), *(v0 + 416), *(v0 + 497));
  v1 = *(v0 + 456);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v7 = *(v0 + 368);
  v8 = *(v0 + 360);
  v9 = *(v0 + 352);
  v10 = *(v0 + 344);
  v11 = *(v0 + 320);
  v12 = *(v0 + 312);
  v13 = *(v0 + 304);
  v14 = *(v0 + 296);
  v15 = *(v0 + 288);
  v16 = *(v0 + 280);
  v17 = *(v0 + 256);
  v18 = *(v0 + 248);
  v19 = *(v0 + 224);
  v20 = *(v0 + 216);
  v21 = *(v0 + 208);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 120);
  v26 = *(v0 + 112);
  (*(*(v0 + 136) + 104))(*(v0 + 144), enum case for DIPError.Code.internalError(_:), *(v0 + 128));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001A2470()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = sub_1001A2824;
  }

  else
  {
    v5 = *(v2 + 464);

    v4 = sub_1001A258C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001A258C()
{
  v1 = *(v0 + 344);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 498);
  v7 = *(v0 + 440);
  v6 = *(v0 + 448);
  v8 = *(v0 + 497);
  v10 = *(v0 + 408);
  v9 = *(v0 + 416);
  v36 = *(v0 + 336);
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done setting key designations", v11, 2u);

    sub_1001A3830(v7, v6, v5);
    sub_1001A3830(v10, v9, v8);
  }

  else
  {
    sub_1001A3830(v10, v9, v8);
    sub_1001A3830(v7, v6, v5);
  }

  v13 = *(v0 + 384);
  v12 = *(v0 + 392);
  v14 = *(v0 + 368);
  v15 = *(v0 + 376);
  v17 = *(v0 + 352);
  v16 = *(v0 + 360);
  v18 = *(v0 + 320);
  v19 = *(v0 + 312);
  v22 = *(v0 + 304);
  v23 = *(v0 + 296);
  v24 = *(v0 + 288);
  v25 = *(v0 + 280);
  v26 = *(v0 + 256);
  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 216);
  v30 = *(v0 + 208);
  v31 = *(v0 + 184);
  v32 = *(v0 + 176);
  v33 = *(v0 + 168);
  v35 = *(v0 + 144);
  v34 = *(v0 + 120);
  v37 = *(v0 + 112);
  (*(v0 + 472))(*(v0 + 344), *(v0 + 328));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001A2824()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 498);
  sub_1001A3830(*(v0 + 408), *(v0 + 416), *(v0 + 497));
  sub_1001A3830(v3, v2, v4);

  v5 = *(v0 + 488);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  v8 = *(v0 + 376);
  v11 = *(v0 + 368);
  v12 = *(v0 + 360);
  v13 = *(v0 + 352);
  v14 = *(v0 + 344);
  v15 = *(v0 + 320);
  v16 = *(v0 + 312);
  v17 = *(v0 + 304);
  v18 = *(v0 + 296);
  v19 = *(v0 + 288);
  v20 = *(v0 + 280);
  v21 = *(v0 + 256);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 216);
  v25 = *(v0 + 208);
  v26 = *(v0 + 184);
  v27 = *(v0 + 176);
  v28 = *(v0 + 168);
  v29 = *(v0 + 120);
  v30 = *(v0 + 112);
  (*(*(v0 + 136) + 104))(*(v0 + 144), enum case for DIPError.Code.internalError(_:), *(v0 + 128));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1001A2AC4()
{
  result = qword_100203EB0;
  if (!qword_100203EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100203EB0);
  }

  return result;
}

void sub_1001A2B10(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = sub_1000508BC(a1, a2);
  if (!v3)
  {
    if (!v15)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 2;
      return;
    }

    v35 = 0;
    v36 = v15;
    if ([v15 version] == 1)
    {
      defaultLogger()();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "v1 auth acls are not supported for key designation", v18, 2u);
      }

      (*(v8 + 8))(v12, v7);
    }

    else
    {
      v19 = [v36 progenitorKey];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 keyBlob];

        if (v21)
        {
          v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          v25 = v36;
          v26 = [v36 designationStatus];

          v27 = v26 == 1;
          *a3 = v22;
          *(a3 + 8) = v24;
LABEL_16:
          *(a3 + 16) = v27;
          return;
        }
      }

      defaultLogger()();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      v34 = v28;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10010150C(a1, a2, &v37);
        v32 = v34;
        _os_log_impl(&_mh_execute_header, v34, v29, "Key with identifier %s doesn't have a key blob", v30, 0xCu);
        sub_100005090(v31);
      }

      else
      {
      }

      (*(v8 + 8))(v14, v7);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v27 = 2;
    goto LABEL_16;
  }
}

id sub_1001A2E60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return sub_100050240();
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v9 = *i;

    v10 = sub_1000508BC(v8, v9);

    if (v4)
    {
      break;
    }

    if (v10)
    {
      [v10 setDesignationStatus:a3 & 1];
    }

    if (!--v5)
    {
      return sub_100050240();
    }
  }

  return result;
}

uint64_t sub_1001A2F1C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 88) = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1001A2FE0, 0, 0);
}

uint64_t sub_1001A2FE0()
{
  v1 = *(v0 + 40);
  v15 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 88);
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5 & 1;
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v0 + 64) = v8;
  *(v8 + 16) = sub_1001A3898;
  *(v8 + 24) = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_1001A316C;
  v13 = *(v0 + 48);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_10001C0A8, v8, &type metadata for () + 8);
}

uint64_t sub_1001A316C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v6 = sub_1001A32F4;
  }

  else
  {
    v8 = v2[6];
    v7 = v2[7];
    v11 = v2 + 4;
    v9 = v2[4];
    v10 = v11[1];

    (*(v10 + 8))(v8, v9);
    v6 = sub_100013AEC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001A32F4()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1001A3360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001A3424, 0, 0);
}

uint64_t sub_1001A3424()
{
  v1 = v0[9];
  v16 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_allocObject();
  v0[11] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = sub_1001A38F8;
  *(v8 + 24) = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v16, v9, v2);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v12 = swift_task_alloc();
  v0[13] = v12;
  v13 = sub_100004E70(&qword_100203EB8, &qword_1001AF220);
  *v12 = v0;
  v12[1] = sub_1001A35BC;
  v14 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v14, sub_10001C0A8, v8, v13);
}

uint64_t sub_1001A35BC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v6 = sub_1001A37C4;
  }

  else
  {
    v8 = v2[10];
    v7 = v2[11];
    v11 = v2 + 8;
    v9 = v2[8];
    v10 = v11[1];

    (*(v10 + 8))(v8, v9);
    v6 = sub_1001A3744;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001A3744()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);

  v5 = *(v0 + 8);

  return v5(v3, v2, v4);
}

uint64_t sub_1001A37C4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1001A3830(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return sub_1000092BC(a1, a2);
  }

  return a1;
}

uint64_t sub_1001A3844(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return sub_100009708(a1, a2);
  }

  return a1;
}

uint64_t sub_1001A3858()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1001A38B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001A3918()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001A3950(uint64_t a1)
{
  v1[2] = a1;
  v3 = type metadata accessor for Logger();
  v1[3] = v3;
  v4 = *(v3 - 8);
  v1[4] = v4;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyDesignationFlow();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyType();
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyDesignationEventType();
  v1[17] = v12;
  v13 = *(v12 - 8);
  v1[18] = v13;
  v14 = *(v13 + 64) + 15;
  v1[19] = swift_task_alloc();
  v15 = swift_task_alloc();
  v1[20] = v15;
  *v15 = v1;
  v15[1] = sub_1001A3BAC;

  return sub_1001A3360(0xD000000000000012, 0x80000001001B18B0, a1);
}

uint64_t sub_1001A3BAC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(*v4 + 160);
  v6 = *v4;
  *(v6 + 168) = a1;
  *(v6 + 176) = a2;
  *(v6 + 216) = a3;

  if (v3)
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 128);
    v9 = *(v6 + 104);
    v11 = *(v6 + 72);
    v10 = *(v6 + 80);
    v13 = *(v6 + 56);
    v12 = *(v6 + 64);
    v14 = *(v6 + 40);
    v15 = *(v6 + 48);

    v16 = *(v6 + 8);

    return v16(0);
  }

  else
  {

    return _swift_task_switch(sub_1001A3D74, 0, 0);
  }
}

uint64_t sub_1001A3D74()
{
  v1 = *(v0 + 216);
  if (v1 == 2)
  {
    v2 = *(v0 + 64);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 64);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "progenitorKeyDesignationRequired - globalACLKeyInfo Key sync status check skipped due to missing ACL", v9, 2u);
    }

    v10 = *(v8 + 8);
    v10(v6, v7);
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      v24 = *(v0 + 144);
      v23 = *(v0 + 152);
      v26 = *(v0 + 128);
      v25 = *(v0 + 136);
      v28 = *(v0 + 112);
      v27 = *(v0 + 120);
      v29 = *(v0 + 96);
      v30 = *(v0 + 104);
      v31 = *(v0 + 88);
      v53 = *(v0 + 80);
      type metadata accessor for IDCSAnalytics();
      (*(v24 + 104))(v23, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationCheckFlow(_:), v25);
      (*(v27 + 104))(v26, enum case for IDCSAnalytics.SEProgenitorKeyType.progenitorKey(_:), v28);
      (*(v29 + 104))(v30, enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designationKeyMismatch(_:), v31);
      static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
      (*(v29 + 8))(v30, v31);
      (*(v27 + 8))(v26, v28);
      (*(v24 + 8))(v23, v25);
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 216);
      v37 = *(v0 + 168);
      v36 = *(v0 + 176);
      v38 = *(v0 + 80);
      v39 = *(v0 + 24);
      v40 = *(v0 + 32);
      if (v34)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "progenitorKeyDesignationRequired - Global progenitor key not designated", v41, 2u);

        sub_1001A3830(v37, v36, v35);
      }

      else
      {
        sub_1001A3830(*(v0 + 168), *(v0 + 176), *(v0 + 216));
      }

      v10 = *(v40 + 8);
      v10(v38, v39);
      v22 = 1;
      goto LABEL_14;
    }

    v11 = *(v0 + 72);
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "progenitorKeyDesignationRequired - Global progenitor key is synced. No action required.", v14, 2u);
    }

    v49 = *(v0 + 168);
    v50 = *(v0 + 176);
    v15 = *(v0 + 144);
    v51 = *(v0 + 152);
    v52 = *(v0 + 136);
    v16 = *(v0 + 120);
    v45 = *(v0 + 112);
    v46 = *(v0 + 128);
    v17 = *(v0 + 96);
    v47 = *(v0 + 104);
    v18 = *(v0 + 88);
    v19 = *(v0 + 72);
    v21 = *(v0 + 24);
    v20 = *(v0 + 32);
    v48 = *(v0 + 216);

    v10 = *(v20 + 8);
    v10(v19, v21);
    type metadata accessor for IDCSAnalytics();
    (*(v15 + 104))(v51, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationCheckFlow(_:), v52);
    (*(v16 + 104))(v46, enum case for IDCSAnalytics.SEProgenitorKeyType.progenitorKey(_:), v45);
    (*(v17 + 104))(v47, enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.noDesignationRequired(_:), v18);
    static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
    sub_1001A3830(v49, v50, v48);
    (*(v17 + 8))(v47, v18);
    (*(v16 + 8))(v46, v45);
    (*(v15 + 8))(v51, v52);
  }

  v22 = 0;
LABEL_14:
  *(v0 + 217) = v22;
  *(v0 + 184) = v10;
  v42 = swift_task_alloc();
  *(v0 + 192) = v42;
  *v42 = v0;
  v42[1] = sub_1001A4290;
  v43 = *(v0 + 16);

  return sub_1001A3360(0xD00000000000001ELL, 0x80000001001B18D0, v43);
}

uint64_t sub_1001A4290(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(*v4 + 192);
  v6 = *v4;
  *(v6 + 200) = a1;
  *(v6 + 208) = a2;
  *(v6 + 218) = a3;

  if (v3)
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 128);
    v9 = *(v6 + 104);
    v11 = *(v6 + 72);
    v10 = *(v6 + 80);
    v13 = *(v6 + 56);
    v12 = *(v6 + 64);
    v14 = *(v6 + 40);
    v15 = *(v6 + 48);

    v16 = *(v6 + 8);

    return v16(0);
  }

  else
  {

    return _swift_task_switch(sub_1001A4458, 0, 0);
  }
}

uint64_t sub_1001A4458()
{
  v1 = *(v0 + 218);
  if (v1 == 2)
  {
    v3 = (v0 + 40);
    v2 = *(v0 + 40);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 32);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "progenitorKeyDesignationRequired - thirdPartyACLKeyInfo Key sync status check skipped due to missing ACL", v8, 2u);
    }

    v62 = 0;
    v9 = (v0 + 184);
    v10 = (v0 + 24);
  }

  else if (v1)
  {
    v11 = *(v0 + 48);
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "progenitorKeyDesignationRequired - Third-party progenitor key is synced. No action required.", v14, 2u);
    }

    v3 = (v0 + 152);
    v15 = *(v0 + 152);
    v60 = *(v0 + 200);
    v63 = *(v0 + 208);
    v16 = *(v0 + 144);
    v10 = (v0 + 136);
    v52 = *(v0 + 136);
    v17 = *(v0 + 120);
    v53 = *(v0 + 112);
    v54 = *(v0 + 128);
    v55 = *(v0 + 104);
    v18 = *(v0 + 96);
    v56 = *(v0 + 88);
    v57 = *(v0 + 184);
    v19 = *(v0 + 48);
    v20 = v12;
    v22 = *(v0 + 24);
    v21 = *(v0 + 32);
    v59 = *(v0 + 218);

    v57(v19, v22);
    type metadata accessor for IDCSAnalytics();
    (*(v16 + 104))(v15, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationCheckFlow(_:), v52);
    (*(v17 + 104))(v54, enum case for IDCSAnalytics.SEProgenitorKeyType.thirdPartyProgenitorKey(_:), v53);
    (*(v18 + 104))(v55, enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.noDesignationRequired(_:), v56);
    static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
    sub_1001A3830(v60, v63, v59);
    (*(v18 + 8))(v55, v56);
    (*(v17 + 8))(v54, v53);
    v62 = 0;
    v9 = (v16 + 8);
  }

  else
  {
    v3 = (v0 + 56);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 128);
    v25 = *(v0 + 136);
    v64 = *(v0 + 56);
    v27 = *(v0 + 112);
    v28 = *(v0 + 120);
    v29 = *(v0 + 96);
    v30 = *(v0 + 104);
    v58 = *(v0 + 88);
    type metadata accessor for IDCSAnalytics();
    (*(v23 + 104))(v24, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationCheckFlow(_:), v25);
    (*(v28 + 104))(v26, enum case for IDCSAnalytics.SEProgenitorKeyType.thirdPartyProgenitorKey(_:), v27);
    (*(v29 + 104))(v30, enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designationKeyMismatch(_:), v58);
    static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
    (*(v29 + 8))(v30, v58);
    (*(v28 + 8))(v26, v27);
    (*(v23 + 8))(v24, v25);
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 218);
    v36 = *(v0 + 200);
    v35 = *(v0 + 208);
    v37 = *(v0 + 32);
    if (v33)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "progenitorKeyDesignationRequired - Third-party progenitor key not designated", v38, 2u);

      sub_1001A3830(v36, v35, v34);
    }

    else
    {
      sub_1001A3830(*(v0 + 200), *(v0 + 208), *(v0 + 218));
    }

    v9 = (v0 + 184);
    v10 = (v0 + 24);
    v62 = 1;
  }

  v39 = *v3;
  v40 = *v10;
  v41 = *(v0 + 217);
  v42 = *(v0 + 152);
  v43 = *(v0 + 128);
  v44 = *(v0 + 104);
  v46 = *(v0 + 72);
  v45 = *(v0 + 80);
  v48 = *(v0 + 56);
  v47 = *(v0 + 64);
  v49 = *(v0 + 48);
  v61 = *(v0 + 40);
  (*v9)(v39, v40);

  v50 = *(v0 + 8);

  return v50((v62 | v41) & 1);
}

__n128 sub_1001A49D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001A49E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001A4A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001A4A90()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100032EEC(v2);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_1001A4B2C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001A4BEC, 0, 0);
}

uint64_t sub_1001A4BEC()
{
  v18 = v0;
  v1 = v0[2];
  swift_defaultActor_initialize();
  if (qword_1001FFFD0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100205C80 + 16);
  os_unfair_lock_lock((v2 + 72));
  sub_10002171C((v2 + 16), v17);
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  os_unfair_lock_unlock((v2 + 72));
  v7 = v17[0];
  v8 = v17[3];
  v9 = v17[5];
  sub_10000ED48(v17[1]);
  sub_10000ED48(v8);
  sub_10000ED48(v9);
  type metadata accessor for IDCSAsyncDataContainer();
  v10 = swift_allocObject();
  *(v10 + 24) = v7;
  v11 = sub_100004E70(&qword_100203F88, &qword_1001AF3D8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  *(v10 + 16) = AsyncCoreDataContainer.init(contextBuilder:)();
  *(v6 + 112) = v10;
  Logger.init(subsystem:category:)();
  setDefaultLogger(_:)();
  (*(v4 + 8))(v3, v5);
  v14 = *(v6 + 112);
  v0[6] = v14;
  swift_retain_n();
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = sub_1001A4E74;

  return sub_100057918(v14, 0xD000000000000015, 0x80000001001BDF50, &off_1001F4360);
}

uint64_t sub_1001A4E74()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1001A4F90, 0, 0);
}

uint64_t sub_1001A4F90()
{
  v1 = *(v0 + 16);
  v2 = v1[14];
  v3 = objc_allocWithZone(type metadata accessor for CredentialStoreListener());

  v1[15] = sub_100072D80(v4);
  v5 = v1[14];
  v6 = objc_allocWithZone(type metadata accessor for PresentmentListener());

  v1[16] = sub_10008E18C(v7);
  v8 = v1[14];
  objc_allocWithZone(type metadata accessor for BiometricStoreListener());

  v1[17] = sub_100061140(v9);

  return _swift_task_switch(sub_1001A5074, v1, 0);
}

uint64_t sub_1001A5074()
{
  v1 = v0[5];
  v2 = *(v0[2] + 112);

  sub_10000FE48();

  v3 = v0[1];
  v4 = v0[2];

  return v3(v4);
}

uint64_t sub_1001A50F8()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001A5188(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for Daemon();
  swift_allocObject();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001A5230;

  return sub_1001A4B2C();
}

uint64_t sub_1001A5230(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001A5330, 0, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1001A53BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001A545C;

  return sub_1001A5528();
}

void sub_1001A545C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;

  exit(0);
}

uint64_t sub_1001A5528()
{
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v0[5] = static MainActor.shared.getter();
  type metadata accessor for OSTransaction();
  v1 = _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZTu[1];
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = type metadata accessor for Daemon();
  *v2 = v0;
  v2[1] = sub_1001A5644;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v0 + 2, 0xD000000000000028, 0x80000001001BDF70, &unk_1001AF3F0, 0, &type metadata for Never, v3, &protocol witness table for Never);
}

uint64_t sub_1001A5644()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (!v0)
  {
    v6 = v2[5];
    v7 = v2[3];
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v2[7] = v9;
    v2[8] = v8;

    return _swift_task_switch(sub_1001A5780, v9, v8);
  }

  return result;
}

uint64_t sub_1001A5780()
{
  v0[9] = v0[2];
  v1 = async function pointer to waitForTerminationSignal()[1];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1001A5818;

  return waitForTerminationSignal()();
}

uint64_t sub_1001A5818()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_1001A5938, v4, v3);
}

uint64_t sub_1001A5938()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A59D0, v6, v5);
}

uint64_t sub_1001A59D0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

Swift::String __swiftcall Data.base16EncodedString()()
{
  v0 = Data.base16EncodedString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t AnyCodable.init(value:)()
{
  return AnyCodable.init(value:)();
}

{
  return AnyCodable.init(value:)();
}

{
  return AnyCodable.init(value:)();
}

uint64_t DigitalPresentmentResponseCryptor.encrypt(_:to:)()
{
  return DigitalPresentmentResponseCryptor.encrypt(_:to:)();
}

{
  return DigitalPresentmentResponseCryptor.encrypt(_:to:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::String_optional __swiftcall NSUserDefaults.internalString(forKey:)(Swift::String forKey)
{
  v1 = NSUserDefaults.internalString(forKey:)(forKey._countAndFlagsBits, forKey._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.commonName()()
{
  v0 = SecCertificateRef.commonName()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.organization()()
{
  v0 = SecCertificateRef.organization()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.organizationalUnit()()
{
  v0 = SecCertificateRef.organizationalUnit()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}