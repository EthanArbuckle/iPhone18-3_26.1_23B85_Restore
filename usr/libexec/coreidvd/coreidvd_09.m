uint64_t sub_1000E0BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v50 = type metadata accessor for DIPError.Code();
  v49 = *(v50 - 8);
  v5 = *(v49 + 64);
  __chkstk_darwin(v50);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100007224(&qword_100839BE8, &qword_1006D49E8);
  v7 = *(v74 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v74);
  v63 = &v49 - v9;
  v10 = sub_100007224(&qword_100839BF0, &qword_1006D49F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  sub_100007224(&qword_100839BF8, &qword_1006D49F8);
  Regex.init(_regexString:version:)();
  Regex.ignoresCase(_:)();
  v18 = *(v11 + 8);
  v54 = v11 + 8;
  v52 = v18;
  v18(v15, v10);
  v62 = a1;
  *&v71 = a1;
  *(&v71 + 1) = a2;
  sub_1000348A0();
  sub_1000BA30C(&qword_100839C08, &qword_100839BF0, &qword_1006D49F0);
  v19 = a2;

  v53 = v17;
  v55 = v10;
  result = BidirectionalCollection<>.matches<A, B>(of:)();
  v21 = result;
  v57 = *(result + 16);
  if (v57)
  {
    v22 = 0;
    v58 = v7 + 16;
    v59 = (v7 + 8);
    v23 = v7;
    v56 = v7;
    while (v22 < *(v21 + 16))
    {
      (*(v23 + 16))(v63, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22, v74);
      swift_getKeyPath();
      Regex.Match.subscript.getter();

      v24 = static String._fromSubstring(_:)();
      v26 = v25;

      v27 = v60;
      if (!*(v60 + 16) || (v28 = sub_10003ADCC(v24, v26), (v29 & 1) == 0))
      {

        *&v71 = 0;
        *(&v71 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        *&v71 = 0xD000000000000015;
        *(&v71 + 1) = 0x80000001006FF160;
        v39._countAndFlagsBits = v24;
        v39._object = v26;
        String.append(_:)(v39);
        v40._countAndFlagsBits = 0x656874206E692029;
        v40._object = 0xEF676E6972747320;
        String.append(_:)(v40);
        v61 = *(&v71 + 1);
        v62 = v71;
        (*(v49 + 104))(v51, enum case for DIPError.Code.unknownAttribute(_:), v50);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v41 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v42 = *(*v41 + 72);
        v43 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1006BF520;
        v45 = v44 + v43;
        v46 = (v45 + v41[14]);
        v47 = enum case for DIPError.PropertyKey.attributeID(_:);
        v48 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v48 - 8) + 104))(v45, v47, v48);
        v46[3] = &type metadata for String;
        v46[4] = &protocol witness table for String;
        *v46 = v24;
        v46[1] = v26;
        sub_10003C9C0(v44);
        swift_setDeallocating();
        sub_10000BE18(v45, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*v59)(v63, v74);
        return v52(v53, v55);
      }

      v30 = v28;
      ++v22;

      v31 = (*(v27 + 56) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v69 = v62;
      v70 = v19;
      v61 = v19;
      swift_getKeyPath();

      v34 = v74;
      v35 = v63;
      Regex.Match.subscript.getter();

      v66 = v71;
      v67 = v72;
      v68 = v73;
      v64 = v33;
      v65 = v32;
      sub_10001F298();
      sub_1000F2814();
      v62 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v37 = v36;

      v38 = v34;
      v23 = v56;
      (*v59)(v35, v38);

      v19 = v37;
      if (v57 == v22)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v52(v53, v55);
    return v62;
  }

  return result;
}

uint64_t sub_1000E1450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[185] = v4;
  v5[184] = a4;
  v5[183] = a3;
  v5[182] = a2;
  v5[181] = a1;
  return _swift_task_switch(sub_1000E1480, 0, 0);
}

uint64_t sub_1000E1480()
{
  v0[177] = _swiftEmptyArrayStorage;
  v0[178] = 0;
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[186] = v1;
  *v1 = v0;
  v1[1] = sub_1000E1570;
  v2 = v0[184];

  return sub_1005B0A4C((v0 + 2), 0, 0, v2, 1, 0);
}

uint64_t sub_1000E1570()
{
  v1 = *(*v0 + 1488);
  v2 = *(*v0 + 1472);
  v4 = *v0;

  return _swift_task_switch(sub_1000E1688, 0, 0);
}

uint64_t sub_1000E1688()
{
  v44 = v0;
  v1 = (v0 + 1416);
  v2 = *(*(v0 + 1448) + 112);
  *(v0 + 1408) = v2;
  if (v2)
  {
    v3 = *(v0 + 1464);
    v4 = *(v2 + 16);
    sub_10000BBC4(v0 + 16, v0 + 504, &qword_100839998, &qword_1006DCAA0);

    sub_10000BBC4(v0 + 1408, v0 + 1440, &unk_100839C20, &unk_1006D4A40);
    if (v4)
    {
      v5 = (v2 + 32);
      do
      {
        v6 = *(v0 + 1464);
        v7 = *(v0 + 1456);
        v8 = v5[1];
        *(v0 + 992) = *v5;
        *(v0 + 1008) = v8;
        v9 = v5[5];
        v11 = v5[2];
        v10 = v5[3];
        *(v0 + 1056) = v5[4];
        *(v0 + 1072) = v9;
        *(v0 + 1024) = v11;
        *(v0 + 1040) = v10;
        v12 = v5[3];
        v40 = v5[2];
        v41 = v12;
        v13 = v5[5];
        v42 = v5[4];
        v43 = v13;
        v14 = v5[1];
        v38 = *v5;
        v39 = v14;
        sub_1000F2868(v0 + 992, v0 + 1088);
        sub_1000E34D0(&v38, (v0 + 16), (v0 + 1424), (v0 + 1416), v7, v6);
        v15 = v41;
        *(v0 + 1312) = v40;
        *(v0 + 1328) = v15;
        v16 = v43;
        *(v0 + 1344) = v42;
        *(v0 + 1360) = v16;
        v17 = v39;
        *(v0 + 1280) = v38;
        *(v0 + 1296) = v17;
        sub_1000F28A0(v0 + 1280);
        v5 += 6;
        --v4;
      }

      while (v4);
      v18 = *v1;
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    v20 = *(v0 + 1464);

    sub_10000BE18(v0 + 16, &qword_100839998, &qword_1006DCAA0);
    sub_10000BE18(v0 + 16, &qword_100839998, &qword_1006DCAA0);

    sub_10000BE18(v0 + 1408, &unk_100839C20, &unk_1006D4A40);
  }

  else
  {
    v19 = *(v0 + 1464);
    sub_10000BE18(v0 + 16, &qword_100839998, &qword_1006DCAA0);

    v18 = _swiftEmptyArrayStorage;
  }

  if (!(v18 >> 62))
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_11:
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_24:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_16:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v25 = *v1;
        goto LABEL_17;
      }

      v21 = v18[4];
    }

    v22 = v21;
    v23 = (v0 + 1432);
    [v21 mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10001F8D4(0, &qword_10084A2B0, DIAttributeDocumentScanRequirements_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v24 = *v23;
    [*v23 setType:DIAttributeIdentityDocumentTypeUnknown];
    v18 = v24;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_11;
  }

LABEL_17:
  v26 = *(v0 + 1480);
  v27 = *(v0 + 1448);
  v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10001F8D4(0, &qword_10084A2B0, DIAttributeDocumentScanRequirements_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v30 = [v28 initWithAcceptableDocs:isa];

  v31 = *(v0 + 1424);
  v32 = v30;
  [v32 setAcceptableDocTypes:v31];
  v33 = *v27;
  v34 = v27[1];
  v35 = String._bridgeToObjectiveC()();
  sub_1000F05D4(v27);
  [v32 setSubmissionKey:v35];

  v36 = *(v0 + 8);

  return v36(v32);
}

uint64_t sub_1000E1AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[201] = a6;
  v6[200] = a5;
  v6[199] = a4;
  v6[198] = a3;
  v6[197] = a2;
  v6[196] = a1;
  v7 = type metadata accessor for DIPError.Code();
  v6[202] = v7;
  v8 = *(v7 - 8);
  v6[203] = v8;
  v9 = *(v8 + 64) + 15;
  v6[204] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v6[205] = v10;
  v11 = *(v10 - 8);
  v6[206] = v11;
  v12 = *(v11 + 64) + 15;
  v6[207] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1C08, 0, 0);
}

uint64_t sub_1000E1C08()
{
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 1664) = v1;
  *v1 = v0;
  v1[1] = sub_1000E1CE8;
  v2 = *(v0 + 1608);

  return sub_1005B0A4C(v0 + 504, 0, 0, v2, 1, 0);
}

uint64_t sub_1000E1CE8()
{
  v1 = *(*v0 + 1664);
  v3 = *v0;

  return _swift_task_switch(sub_1000E1DE4, 0, 0);
}

id sub_1000E1DE4()
{
  v161 = v0;
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) == 1)
  {
    (*(v0[203] + 104))(v0[204], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[202]);
    sub_1000402AC(_swiftEmptyArrayStorage);
LABEL_16:
    v57 = v0[207];
    v58 = v0[204];
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v59 = v0[1];

    return v59();
  }

  v1 = v0[59];
  v151 = v0;
  if (!v1 || !*(v1 + 16))
  {
    sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
LABEL_15:
    v40 = v0[204];
    v41 = v0[203];
    v42 = v0[202];
    v43 = v0[196];
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v44._countAndFlagsBits = 0xD000000000000025;
    v44._object = 0x80000001006FF1D0;
    String.append(_:)(v44);
    v45 = *v43;
    v46 = v43[1];

    v47._countAndFlagsBits = v45;
    v47._object = v46;
    String.append(_:)(v47);
    v48._object = 0x80000001006FF200;
    v48._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v48);
    (*(v41 + 104))(v40, enum case for DIPError.Code.unexpectedDaemonState(_:), v42);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v49 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v50 = *(*v49 + 72);
    v51 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1006BF520;
    v53 = v52 + v51;
    v54 = (v53 + v49[14]);
    v55 = enum case for DIPError.PropertyKey.attributeID(_:);
    v56 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v56 - 8) + 104))(v53, v55, v56);
    v54[3] = &type metadata for String;
    v54[4] = &protocol witness table for String;
    *v54 = v45;
    v54[1] = v46;
    sub_10003C9C0(v52);
    swift_setDeallocating();
    sub_10000BE18(v53, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    goto LABEL_16;
  }

  v2 = v0[60];
  v3 = v0[196];
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_10003ADCC(v4, v5);
  if ((v7 & 1) == 0)
  {
    sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);

    goto LABEL_15;
  }

  v143 = v2;
  v8 = (*(v1 + 56) + 152 * v6);
  v9 = *v8;
  v10 = *(v8 + 2);
  v140 = *(v8 + 1);
  v11 = *(v8 + 4);
  v141 = *(v8 + 3);
  v12 = *(v8 + 6);
  v13 = *(v8 + 8);
  v132 = *(v8 + 7);
  v133 = *(v8 + 5);
  v14 = *(v8 + 10);
  v134 = *(v8 + 9);
  v128 = *(v8 + 11);
  v129 = *(v8 + 12);
  v130 = v8[104];
  v131 = v8[105];
  v15 = v8[106];
  v149 = v8[107];
  v147 = v8[108];
  v144 = v8[109];
  v16 = *(v8 + 14);
  v137 = v8[120];
  v138 = v8[121];
  v126 = *(v8 + 16);
  v127 = *(v8 + 17);
  v17 = *(v8 + 18);
  v18 = objc_allocWithZone(DIAttribute);

  v139 = v12;

  v142 = v14;

  v19 = [v18 init];
  if (v9 > 2)
  {
    v20 = v15;
    v135 = v19;
    v21 = v151;
    if ((v9 - 3) < 2)
    {
      v22 = v151[196];

      sub_10000BE18((v151 + 63), &qword_100839998, &qword_1006DCAA0);
      v23 = *(v22 + 120);
      if (v23)
      {
        v152 = _swiftEmptyArrayStorage;
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = (v23 + 32);
          do
          {
            *(v151 + 62) = *v25;
            v26 = v25[1];
            v27 = v25[2];
            v28 = v25[4];
            *(v151 + 65) = v25[3];
            *(v151 + 66) = v28;
            *(v151 + 63) = v26;
            *(v151 + 64) = v27;
            v29 = v25[5];
            v30 = v25[6];
            v31 = v25[7];
            *(v151 + 1113) = *(v25 + 121);
            *(v151 + 68) = v30;
            *(v151 + 69) = v31;
            *(v151 + 67) = v29;
            v32 = v25[7];
            v159 = v25[6];
            v160[0] = v32;
            *(v160 + 9) = *(v25 + 121);
            v33 = v25[3];
            v155 = v25[2];
            v156 = v33;
            v34 = v25[5];
            v157 = v25[4];
            v158 = v34;
            v35 = v25[1];
            v153 = *v25;
            v154 = v35;
            sub_1000F28D0((v151 + 124), (v151 + 142));
            sub_1000E3124(&v152, &v153, v143);
            v36 = v160[0];
            *(v151 + 95) = v159;
            *(v151 + 96) = v36;
            *(v151 + 1545) = *(v160 + 9);
            v37 = v156;
            *(v151 + 91) = v155;
            *(v151 + 92) = v37;
            v38 = v158;
            *(v151 + 93) = v157;
            *(v151 + 94) = v38;
            v39 = v154;
            *(v151 + 89) = v153;
            *(v151 + 90) = v39;
            sub_1000F2908((v151 + 178));
            v25 += 9;
            --v24;
          }

          while (v24);
        }
      }

      else
      {
      }

      v61 = [objc_allocWithZone(DIAttributeCamera) init];
      sub_10001F8D4(0, &unk_100845F30, DIAttributeImageCaptureRequirements_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v61 setScanRequirements:isa];

      goto LABEL_71;
    }

    if (v9 == 5)
    {

      sub_10000BE18((v151 + 63), &qword_100839998, &qword_1006DCAA0);

      v73 = DIAttributeSMSOTP_ptr;
      goto LABEL_43;
    }

    sub_10000BE18((v151 + 63), &qword_100839998, &qword_1006DCAA0);
    v61 = v135;
LABEL_72:
    if (v21[200])
    {
      v108 = v21[199];
      v109 = String._bridgeToObjectiveC()();
    }

    else
    {
      v109 = 0;
    }

    v110 = v21[196];
    [v61 setGroup:v109];

    v111 = String._bridgeToObjectiveC()();
    [v61 setIdentifier:v111];

    [v61 setIsSensitive:v137];
    [v61 setNotForVerification:v138];
    [v61 setHoldLocally:*(v110 + 57) & 1];
    if (v139)
    {
      v112 = String._bridgeToObjectiveC()();
    }

    else
    {
      v112 = 0;
    }

    [v61 setDisplayFormat:v112];

    v113 = String._bridgeToObjectiveC()();

    [v61 setLocalizedDisplayName:v113];

    v114 = String._bridgeToObjectiveC()();

    [v61 setLocalizedPlaceholder:v114];

    if (v142)
    {
    }

    v115 = String._bridgeToObjectiveC()();

    [v61 setSubmissionKey:v115];

    if ([v61 holdLocally])
    {
      [v61 setCurrentValue:{objc_msgSend(v61, "defaultValue")}];
      swift_unknownObjectRelease();
    }

    v116 = v21[196];
    [v61 setOptional:(*(v116 + 16) & 1) == 0];
    if (*(v116 + 72))
    {
      v117 = *(v21[196] + 64);
      v118 = String._bridgeToObjectiveC()();
    }

    else
    {
      v118 = 0;
    }

    v119 = v21[196];
    [v61 setCodeOnError:v118];

    v120 = *(v119 + 144);
    if (v120)
    {
      v121 = v21[196];
      v122 = *(v121 + 136);
      [v61 setDataNodeProof:*(v121 + 128) & 1];
      v120 = String._bridgeToObjectiveC()();
    }

    else
    {
      [v61 setDataNodeProof:0];
    }

    v123 = v21[207];
    v124 = v21[204];
    [v61 setDataNodeProofGroup:v120];

    v125 = v21[1];

    return v125(v61);
  }

  if (!v9)
  {
    v20 = v15;
    v135 = v19;

    v21 = v151;
    sub_10000BE18((v151 + 63), &qword_100839998, &qword_1006DCAA0);
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v73 = DIAttributeText_ptr;
    if (v74)
    {
      v73 = DIAttributeSMSOTP_ptr;
    }

LABEL_43:
    v75 = v21[196];
    v76 = [objc_allocWithZone(*v73) init];
    [v76 setMinLength:v128];
    [v76 setMaxLength:v129];
    [v76 setIsSecureText:v130];
    [v76 setIsSecureVisibleText:v131];
    [v76 setIsNumeric:v20];
    v61 = v76;
    v77 = String._bridgeToObjectiveC()();

    [v61 setSubmissionFormat:v77];

    if (*(v75 + 32))
    {
      v78 = *(v21[196] + 24);
      v79 = String._bridgeToObjectiveC()();
    }

    else
    {
      v79 = 0;
    }

    v95 = v21[196];
    [v61 setClientValidationRegex:v79];

    if (*(v95 + 48))
    {
      v96 = *(v21[196] + 40);
      v97 = String._bridgeToObjectiveC()();
    }

    else
    {
      v97 = 0;
    }

    v98 = v21[198];
    [v61 setServerValidationURL:v97];

    if (v98)
    {
      v99 = v21[198];
      v100 = v21[197];
      v101 = String._bridgeToObjectiveC()();
    }

    else
    {
      v101 = 0;
    }

    [v61 setDefaultValue:v101];

    if (v9 <= 2)
    {
      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v105 & 1) == 0)
      {

LABEL_71:

        goto LABEL_72;
      }
    }

    else
    {
    }

    v106 = String._bridgeToObjectiveC()();

    [v61 setSupportingData:v106];

    objc_opt_self();
    v107 = swift_dynamicCastObjCClass();
    if (v107)
    {
      [v107 setValidityInSeconds:v126];
    }

    goto LABEL_71;
  }

  if (v9 != 1)
  {
    v80 = v19;
    v21 = v151;
    v81 = v151[198];

    sub_10000BE18((v151 + 63), &qword_100839998, &qword_1006DCAA0);
    v82 = [objc_allocWithZone(DIAttributeDate) init];
    [v82 setRequireDay:v149];
    [v82 setRequireMonth:v147];
    [v82 setRequireYear:v144];
    v61 = v82;
    v83 = String._bridgeToObjectiveC()();

    [v61 setSubmissionFormat:v83];

    if (v81)
    {
      v84 = v151[198];
      v85 = [objc_allocWithZone(NSDateFormatter) init];
      v86 = v61;
      v87 = [v61 submissionFormat];
      if (!v87)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = String._bridgeToObjectiveC()();
      }

      v88 = v80;
      v89 = v151[197];
      [v85 setDateFormat:v87];

      v90 = String._bridgeToObjectiveC()();
      v91 = [v85 dateFromString:v90];

      if (v91)
      {
        v92 = v151[207];
        v93 = v151[206];
        v94 = v151[205];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v91 = Date._bridgeToObjectiveC()().super.isa;
        (*(v93 + 8))(v92, v94);
      }

      v61 = v86;
      [v86 setDefaultValue:v91];

      v21 = v151;
    }

    else
    {
    }

    goto LABEL_72;
  }

  v136 = v19;
  v21 = v151;
  sub_10000BE18((v151 + 63), &qword_100839998, &qword_1006DCAA0);
  result = [objc_allocWithZone(DIAttributePicker) init];
  v61 = result;
  *&v153 = _swiftEmptyArrayStorage;
  v148 = *(v16 + 16);
  if (!v148)
  {
LABEL_64:

    sub_10001F8D4(0, &qword_100839C30, DIAttributePickerItem_ptr);
    v103 = Array._bridgeToObjectiveC()().super.isa;

    [v61 setPickerItems:v103];

    v104 = String._bridgeToObjectiveC()();

    [v136 setSubmissionFormat:v104];

    goto LABEL_72;
  }

  v62 = 0;
  v145 = v151[198];
  v63 = (v16 + 56);
  v150 = result;
  v146 = v16;
  while (v62 < *(v16 + 16))
  {
    v64 = *(v63 - 3);
    v65 = *(v63 - 2);
    v66 = *(v63 - 1);
    v67 = *v63;
    v68 = objc_allocWithZone(DIAttributePickerItem);

    v69 = String._bridgeToObjectiveC()();
    v70 = String._bridgeToObjectiveC()();
    v71 = [v68 initWithName:v69 value:v70];

    if (v71)
    {
      v72 = v71;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v145 && (v64 == v151[197] && v151[198] == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v66 == v151[197] && v151[198] == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        [v150 setDefaultValue:v72];
      }
    }

    ++v62;

    v63 += 4;
    v61 = v150;
    v16 = v146;
    v21 = v151;
    if (v148 == v62)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
  return result;
}

void sub_1000E3124(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v40 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v38 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v43 = *(a2 + 96);
  v41 = *(a2 + 89);
  v42 = *(a2 + 104);
  v37 = *(a2 + 112);
  v36 = *(a2 + 120);
  v13 = [objc_allocWithZone(DIAttributeImageCaptureRequirements) init];
  v14 = v13;
  if (*(v4 + 16))
  {
    v15 = *(v4 + 32);
  }

  else
  {
    v15 = 1;
  }

  [v13 setSelection:v15];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  [v14 setMinHeight:v8];
  if (v9 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v14 setMinWidth:v9];
  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v14 setPreferredHeight:v7];
  if (v6 < 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v14 setPreferredWidth:v6];
  if (v12)
  {
    v11 = 1.0;
  }

  v16 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
  [v14 setMaximumCompressionRatio:v16];

  if (v38)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = v10;
  }

  v18 = [objc_allocWithZone(NSNumber) initWithDouble:v17];
  [v14 setCompressionRatio:v18];

  sub_100007224(&qword_100839C38, &qword_1006DFBA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006BF520;
  v20 = &DIAttributeImageEncodingJPEG;
  v21 = &DIAttributeImageEncodingPNG;
  if (v5 != 2)
  {
    v21 = &DIAttributeImageEncodingUnknown;
  }

  if (v5 != 1)
  {
    v20 = v21;
  }

  v22 = *v20;
  *(v19 + 32) = *v20;
  type metadata accessor for DIAttributeImageEncoding(0);
  v23 = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setSupportedEncoding:isa];

  if (a3)
  {
    v25 = v43;
    v27 = v41;
    v26 = v42;
    if (*(a3 + 16))
    {
      v28 = sub_10003ADCC(v40, v3);
      if (v29)
      {
        v30 = (*(a3 + 56) + 16 * v28);
        v31 = *v30;
        v32 = v30[1];
      }
    }
  }

  else
  {
    v25 = v43;
    v27 = v41;
    v26 = v42;
  }

  v8 = String._bridgeToObjectiveC()();

  [v14 setUserMessage:v8];

  [v14 setLiveliness:v27 & 1];
  if (v26)
  {
    v33 = 0x7FFFFFFFLL;
  }

  else
  {
    v33 = v25;
  }

  if (v33 < 0)
  {
    goto LABEL_36;
  }

  [v14 setTimeout:?];
  if (v36)
  {
    v34 = 0;
  }

  else
  {
    v34 = v37;
  }

  if (v34 < 0)
  {
    goto LABEL_37;
  }

  [v14 setMaxRetakeCount:?];
  v8 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_38:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_1000E34D0(__int128 *a1, const void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v150 = a3;
  v146 = a5;
  v147 = a6;
  v148 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CharacterSet();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v149 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v157 = a1[2];
  v158 = v17;
  v18 = a1[5];
  v159 = a1[4];
  v160 = v18;
  v19 = a1[1];
  v155 = *a1;
  v156 = v19;
  memcpy(v154, a2, sizeof(v154));
  if (sub_1000A257C(v154) != 1)
  {
    v20 = v154[57];
    if (v154[57])
    {
      if (*(v154[57] + 16))
      {
        v21 = sub_10003ADCC(v155, *(&v155 + 1));
        if (v22)
        {
          v23 = *(v20 + 56) + 152 * v21;
          v24 = *(v23 + 16);
          v143 = *(v23 + 8);
          v25 = objc_allocWithZone(DIAttributeDocumentScanRequirements);
          v144 = v24;

          v26 = [v25 init];
          v27 = String._bridgeToObjectiveC()();
          [v26 setType:v27];

          v28 = [v26 type];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v145 = v13;
          if (v29 == v32 && v31 == v33)
          {
          }

          else
          {
            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v38 & 1) == 0)
            {
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;
              v40 = v14;
              if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
              {
              }

              else
              {
                v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v70 & 1) == 0)
                {
                  v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v130 = v129;
                  if (v128 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v130 == v131)
                  {

                    v39 = 4;
                  }

                  else
                  {
                    v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v132 & 1) == 0)
                    {
LABEL_15:
                      v41 = v26;
                      v42 = String._bridgeToObjectiveC()();

                      v150 = v41;
                      [v41 setUserMessage:v42];

                      v43 = *(&v157 + 1);
                      v141 = v158;
                      v142 = v157;
                      v140 = *(&v158 + 1);
                      v44 = *(&v159 + 1);
                      v138 = v160;
                      v139 = v159;
                      v153[0] = v156;

                      v45 = v149;
                      static CharacterSet.whitespaces.getter();
                      sub_10001F298();
                      v46 = StringProtocol.trimmingCharacters(in:)();
                      v48 = v47;
                      v49 = *(v40 + 8);
                      v143 = v40 + 8;
                      v144 = v49;
                      v49(v45, v145);

                      *&v153[0] = v46;
                      *(&v153[0] + 1) = v48;
                      v151 = 120;
                      v152 = 0xE100000000000000;
                      v50 = StringProtocol.components<A>(separatedBy:)();

                      if (v50[2] < 2uLL)
                      {

                        v62 = v150;
                        goto LABEL_91;
                      }

                      v51 = v50[4];
                      v52 = v50[5];
                      v53 = HIBYTE(v52) & 0xF;
                      v54 = v51 & 0xFFFFFFFFFFFFLL;
                      if ((v52 & 0x2000000000000000) != 0)
                      {
                        v55 = HIBYTE(v52) & 0xF;
                      }

                      else
                      {
                        v55 = v51 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v55)
                      {
LABEL_85:
                        v58 = 1280;
                        while (1)
                        {
LABEL_86:
                          v62 = v150;
                          [v150 setMinHeight:v58];
                          if (v50[2] < 2uLL)
                          {
                            __break(1u);
                          }

                          else
                          {
                            v82 = v50[6];
                            v83 = v50[7];

                            v84 = sub_1000FAB98(v82, v83);
                            if (v85)
                            {
                              v86 = 720;
                            }

                            else
                            {
                              v86 = v84;
                            }

                            [v62 setMinWidth:v86];
LABEL_91:
                            *&v153[0] = v142;
                            *(&v153[0] + 1) = v43;

                            static CharacterSet.whitespaces.getter();
                            v87 = StringProtocol.trimmingCharacters(in:)();
                            v89 = v88;
                            v144(v45, v145);

                            *&v153[0] = v87;
                            *(&v153[0] + 1) = v89;
                            v151 = 120;
                            v152 = 0xE100000000000000;
                            v50 = StringProtocol.components<A>(separatedBy:)();

                            if (v50[2] < 2uLL)
                            {

                              goto LABEL_101;
                            }

                            v51 = v50[4];
                            v52 = v50[5];

                            v90 = sub_1000FAB98(v51, v52);
                            if (v91)
                            {
                              v92 = 1920;
                            }

                            else
                            {
                              v92 = v90;
                            }

                            [v62 setPreferredHeight:v92];
                            if (v50[2] >= 2uLL)
                            {
                              v93 = v50[6];
                              v94 = v50[7];

                              v95 = sub_1000FAB98(v93, v94);
                              if (v96)
                              {
                                v97 = 1080;
                              }

                              else
                              {
                                v97 = v95;
                              }

                              [v62 setPreferredWidth:v97];
LABEL_101:
                              *&v153[0] = v141;
                              *(&v153[0] + 1) = v140;

                              static CharacterSet.whitespaces.getter();
                              v98 = StringProtocol.trimmingCharacters(in:)();
                              v100 = v99;
                              v144(v45, v145);

                              *&v153[0] = v98;
                              *(&v153[0] + 1) = v100;
                              v151 = 58;
                              v152 = 0xE100000000000000;
                              v101 = StringProtocol.components<A>(separatedBy:)();

                              if (v101[2] < 2uLL)
                              {

                                goto LABEL_111;
                              }

                              v102 = v101[4];
                              v103 = v101[5];

                              v104 = sub_1000FAB98(v102, v103);
                              if (v105)
                              {
                                v106 = 4;
                              }

                              else
                              {
                                v106 = v104;
                              }

                              [v62 setRatioHeight:v106];
                              if (v101[2] < 2uLL)
                              {
                                __break(1u);
                              }

                              else
                              {
                                v107 = v101[6];
                                v108 = v101[7];

                                v109 = sub_1000FAB98(v107, v108);
                                if (v110)
                                {
                                  v111 = 3;
                                }

                                else
                                {
                                  v111 = v109;
                                }

                                [v62 setRatioWidth:v111];
LABEL_111:
                                v112 = [objc_allocWithZone(NSNumber) initWithDouble:v44];
                                [v62 setMaximumCompressionRatio:v112];

                                [v62 setMinBorderPadding:v138];
                                type metadata accessor for DIAttributeImageEncoding(0);
                                isa = Array._bridgeToObjectiveC()().super.isa;
                                [v62 setSupportedEncoding:isa];

                                v114 = *(v139 + 16);
                                if (v114)
                                {
                                  v115 = (v139 + 40);
                                  do
                                  {
                                    v116 = *(v115 - 1);
                                    v117 = *v115;
                                    String.lowercased()();
                                    v118 = String._bridgeToObjectiveC()();

                                    v119 = [v62 supportedEncoding];
                                    v120 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v120 = sub_1003C54BC(0, v120[2] + 1, 1, v120);
                                    }

                                    v122 = v120[2];
                                    v121 = v120[3];
                                    if (v122 >= v121 >> 1)
                                    {
                                      v120 = sub_1003C54BC((v121 > 1), v122 + 1, 1, v120);
                                    }

                                    v120[2] = v122 + 1;
                                    v120[v122 + 4] = v118;
                                    v123 = Array._bridgeToObjectiveC()().super.isa;

                                    v62 = v150;
                                    [v150 setSupportedEncoding:v123];

                                    v115 += 2;
                                    --v114;
                                  }

                                  while (v114);
                                }

                                v124 = *(&v160 + 1);
                                if (*(&v160 + 1))
                                {
                                  v125 = v62;
                                  sub_1000E49B4(v124, v125, v148);

                                  return;
                                }

                                v126 = String._bridgeToObjectiveC()();
                                [v62 setCountryCode:v126];

                                v103 = v62;
                                v127 = v148;
                                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                                if (*((*v127 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                {
LABEL_121:
                                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                                  return;
                                }
                              }

                              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                              goto LABEL_121;
                            }
                          }

                          __break(1u);
LABEL_129:

                          v58 = sub_1000FFDD8(v51, v52, 10);
                          v134 = v133;

                          if (v134)
                          {
                            goto LABEL_85;
                          }
                        }
                      }

                      if ((v52 & 0x1000000000000000) != 0)
                      {
                        goto LABEL_129;
                      }

                      if ((v52 & 0x2000000000000000) != 0)
                      {
                        *&v153[0] = v50[4];
                        *(&v153[0] + 1) = v52 & 0xFFFFFFFFFFFFFFLL;
                        if (v51 == 43)
                        {
                          if (v53)
                          {
                            if (--v53)
                            {
                              v58 = 0;
                              v74 = v153 + 1;
                              while (1)
                              {
                                v75 = *v74 - 48;
                                if (v75 > 9)
                                {
                                  break;
                                }

                                v76 = 10 * v58;
                                if ((v58 * 10) >> 64 != (10 * v58) >> 63)
                                {
                                  break;
                                }

                                v58 = v76 + v75;
                                if (__OFADD__(v76, v75))
                                {
                                  break;
                                }

                                ++v74;
                                if (!--v53)
                                {
                                  goto LABEL_84;
                                }
                              }
                            }

                            goto LABEL_83;
                          }

                          goto LABEL_137;
                        }

                        if (v51 != 45)
                        {
                          if (v53)
                          {
                            v58 = 0;
                            v79 = v153;
                            while (1)
                            {
                              v80 = *v79 - 48;
                              if (v80 > 9)
                              {
                                break;
                              }

                              v81 = 10 * v58;
                              if ((v58 * 10) >> 64 != (10 * v58) >> 63)
                              {
                                break;
                              }

                              v58 = v81 + v80;
                              if (__OFADD__(v81, v80))
                              {
                                break;
                              }

                              ++v79;
                              if (!--v53)
                              {
                                goto LABEL_84;
                              }
                            }
                          }

                          goto LABEL_83;
                        }

                        if (v53)
                        {
                          if (--v53)
                          {
                            v58 = 0;
                            v67 = v153 + 1;
                            while (1)
                            {
                              v68 = *v67 - 48;
                              if (v68 > 9)
                              {
                                break;
                              }

                              v69 = 10 * v58;
                              if ((v58 * 10) >> 64 != (10 * v58) >> 63)
                              {
                                break;
                              }

                              v58 = v69 - v68;
                              if (__OFSUB__(v69, v68))
                              {
                                break;
                              }

                              ++v67;
                              if (!--v53)
                              {
                                goto LABEL_84;
                              }
                            }
                          }

                          goto LABEL_83;
                        }
                      }

                      else
                      {
                        if ((v51 & 0x1000000000000000) != 0)
                        {
                          v56 = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
                        }

                        else
                        {
                          v135 = v50[4];
                          v136 = v50[5];
                          v56 = _StringObject.sharedUTF8.getter();
                        }

                        v57 = *v56;
                        if (v57 == 43)
                        {
                          if (v54 >= 1)
                          {
                            v53 = v54 - 1;
                            if (v54 != 1)
                            {
                              v58 = 0;
                              if (v56)
                              {
                                v71 = v56 + 1;
                                while (1)
                                {
                                  v72 = *v71 - 48;
                                  if (v72 > 9)
                                  {
                                    goto LABEL_83;
                                  }

                                  v73 = 10 * v58;
                                  if ((v58 * 10) >> 64 != (10 * v58) >> 63)
                                  {
                                    goto LABEL_83;
                                  }

                                  v58 = v73 + v72;
                                  if (__OFADD__(v73, v72))
                                  {
                                    goto LABEL_83;
                                  }

                                  ++v71;
                                  if (!--v53)
                                  {
                                    goto LABEL_84;
                                  }
                                }
                              }

                              goto LABEL_75;
                            }

                            goto LABEL_83;
                          }

                          goto LABEL_136;
                        }

                        if (v57 != 45)
                        {
                          if (v54)
                          {
                            v58 = 0;
                            if (v56)
                            {
                              while (1)
                              {
                                v77 = *v56 - 48;
                                if (v77 > 9)
                                {
                                  goto LABEL_83;
                                }

                                v78 = 10 * v58;
                                if ((v58 * 10) >> 64 != (10 * v58) >> 63)
                                {
                                  goto LABEL_83;
                                }

                                v58 = v78 + v77;
                                if (__OFADD__(v78, v77))
                                {
                                  goto LABEL_83;
                                }

                                ++v56;
                                if (!--v54)
                                {
                                  goto LABEL_75;
                                }
                              }
                            }

                            goto LABEL_75;
                          }

LABEL_83:
                          v58 = 0;
                          LOBYTE(v53) = 1;
LABEL_84:
                          LOBYTE(v151) = v53;
                          if ((v53 & 1) == 0)
                          {
                            goto LABEL_86;
                          }

                          goto LABEL_85;
                        }

                        if (v54 >= 1)
                        {
                          v53 = v54 - 1;
                          if (v54 != 1)
                          {
                            v58 = 0;
                            if (v56)
                            {
                              v59 = v56 + 1;
                              while (1)
                              {
                                v60 = *v59 - 48;
                                if (v60 > 9)
                                {
                                  goto LABEL_83;
                                }

                                v61 = 10 * v58;
                                if ((v58 * 10) >> 64 != (10 * v58) >> 63)
                                {
                                  goto LABEL_83;
                                }

                                v58 = v61 - v60;
                                if (__OFSUB__(v61, v60))
                                {
                                  goto LABEL_83;
                                }

                                ++v59;
                                if (!--v53)
                                {
                                  goto LABEL_84;
                                }
                              }
                            }

LABEL_75:
                            LOBYTE(v53) = 0;
                            goto LABEL_84;
                          }

                          goto LABEL_83;
                        }

                        __break(1u);
                      }

                      __break(1u);
LABEL_136:
                      __break(1u);
LABEL_137:
                      __break(1u);
                      return;
                    }

                    v39 = 4;
                  }

LABEL_14:
                  *v150 |= v39;
                  goto LABEL_15;
                }
              }

              v39 = 8;
              goto LABEL_14;
            }
          }

          v39 = 2;
          v40 = v14;
          goto LABEL_14;
        }
      }
    }
  }

  defaultLogger()();
  sub_1000F2868(&v155, v153);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  sub_1000F28A0(&v155);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v153[0] = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_100141FE4(v155, *(&v155 + 1), v153);
    _os_log_impl(&_mh_execute_header, v34, v35, "no configuration found for attribute type %{public}s", v36, 0xCu);
    sub_10000BB78(v37);
  }

  (*(v9 + 8))(v12, v8);
}

id sub_1000E4298()
{
  v1 = v0;
  v2 = [v0 attributes];
  sub_10001F8D4(0, &unk_1008399D0, DIAttribute_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v1 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v7 holdLocally])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v1 == i)
      {
        v1 = v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v9 = [v1 title];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [v1 subTitle];
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [v1 page];
  v12 = objc_allocWithZone(DIPage);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithAttributes:isa title:v9 subTitle:v10 page:v11];

  return v14;
}

void (*sub_1000E4510(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v8[8] = sub_1000E4828(v8);
  v8[9] = sub_1000E461C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000E45BC;
}

void sub_1000E45BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000E461C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
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
  v13 = sub_10003ADCC(a2, a3);
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
      sub_10017057C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100167CCC(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_10003ADCC(a2, a3);
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
  return sub_1000E4774;
}

void sub_1000E4774(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1001751D4(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_10004D860(*(v7 + 48) + 16 * v6);
    sub_10015D658(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_1000E4828(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000E4850;
}

uint64_t sub_1000E485C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = result + 32;
    do
    {
      v6 = *(v5 + 112);
      v22 = *(v5 + 96);
      v23 = v6;
      v24 = *(v5 + 128);
      v25 = *(v5 + 144);
      v7 = *(v5 + 48);
      v20[2] = *(v5 + 32);
      v20[3] = v7;
      v8 = *(v5 + 80);
      v20[4] = *(v5 + 64);
      v21 = v8;
      v9 = *(v5 + 16);
      v20[0] = *v5;
      v20[1] = v9;
      v10 = v20[0];
      v11 = *(&v22 + 1);
      if (*(&v22 + 1))
      {
        v12 = v22;
      }

      else
      {
        v11 = *(&v21 + 1);
        if (!*(&v21 + 1))
        {
          sub_1000F059C(v20, v18);
          v13 = a3;
          v14 = v26;
          goto LABEL_9;
        }

        v12 = v21;
      }

      sub_1000F059C(v20, v18);
      v13 = v12;
      v14 = v11;
LABEL_9:
      v15 = sub_1000C5670(v18, v13, v14);
      if (*v16)
      {

        sub_100151120(&v19, v10, *(&v10 + 1));
      }

      (v15)(v18, 0);
      result = sub_1000F05D4(v20);
      v5 += 152;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1000E49B4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      [a2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10001F8D4(0, &qword_10084A2B0, DIAttributeDocumentScanRequirements_ptr);
      if (swift_dynamicCast())
      {
        v9 = String._bridgeToObjectiveC()();
        [v12 setCountryCode:v9];

        v10 = v12;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }

      v6 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1000E4B24(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 10)
    {
      v10 = i[7];
      v11 = i[5];
      v45 = i[6];
      v46 = v10;
      v12 = i[7];
      v13 = i[9];
      v47 = i[8];
      v48 = v13;
      v14 = i[3];
      v15 = i[1];
      v41 = i[2];
      v42 = v14;
      v16 = i[3];
      v17 = i[5];
      v43 = i[4];
      v44 = v17;
      v18 = i[1];
      v40[0] = *i;
      v40[1] = v18;
      v36 = v45;
      v37 = v12;
      v19 = i[9];
      v38 = v47;
      v39 = v19;
      v32 = v41;
      v33 = v16;
      v34 = v43;
      v35 = v11;
      v30 = v40[0];
      v31 = v15;
      sub_1000F27AC(v40, &v20);
      sub_1000E00C0(&v30, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v26 = v36;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v25 = v35;
      v20 = v30;
      v21 = v31;
      result = sub_1000F27E4(&v20);
      if (!--v5)
      {
        return result;
      }
    }

    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    return sub_1000F27E4(&v20);
  }

  return result;
}

uint64_t sub_1000E4C70(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  sub_1000F09E4(v9);
  memcpy((v1 + 32), v9, 0x2181uLL);
  *(v1 + 8680) = 0u;
  *(v1 + 8696) = 0u;
  *(v1 + 8705) = 0u;
  *(v1 + 8728) = sub_10003E3EC(_swiftEmptyArrayStorage);
  *(v1 + 8736) = _swiftEmptyArrayStorage;
  *(v1 + 8744) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v1 + 8752) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v1 + 16) = v7;
  *(v1 + 24) = v6;
  memcpy(v10, (v1 + 32), 0x2181uLL);
  memcpy((v1 + 32), v9, 0x2181uLL);

  sub_10000BE18(v10, &qword_100839990, &unk_1006C19E0);
  *(v1 + 8616) = 0;
  *(v1 + 8624) = 0u;
  *(v1 + 8656) = 0u;
  *(v1 + 8640) = _swiftEmptyArrayStorage;
  *(v1 + 8648) = _swiftEmptyArrayStorage;
  *(v1 + 8672) = v4 & 1;
  return v1;
}

uint64_t sub_1000E4DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[268] = a6;
  v6[267] = a5;
  v6[266] = a4;
  v6[265] = a3;
  v6[264] = a2;
  v6[263] = a1;
  v7 = type metadata accessor for DIPError.Code();
  v6[269] = v7;
  v8 = *(v7 - 8);
  v6[270] = v8;
  v9 = *(v8 + 64) + 15;
  v6[271] = swift_task_alloc();

  return _swift_task_switch(sub_1000E4E78, 0, 0);
}

uint64_t sub_1000E4E78()
{
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 2176) = v1;
  *v1 = v0;
  v1[1] = sub_1000E4F58;
  v2 = *(v0 + 2136);

  return sub_1005B0A4C(v0 + 992, 0, 0, v2, 1, 0);
}

uint64_t sub_1000E4F58()
{
  v1 = *(*v0 + 2176);
  v3 = *v0;

  return _swift_task_switch(sub_1000E5054, 0, 0);
}

uint64_t sub_1000E5054()
{
  memcpy((v0 + 504), (v0 + 992), 0x1E8uLL);
  if (sub_1000A257C(v0 + 504) == 1)
  {
    (*(*(v0 + 2160) + 104))(*(v0 + 2168), enum case for DIPError.Code.unexpectedDaemonState(_:), *(v0 + 2152));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v1 = *(v0 + 2168);

    v2 = *(v0 + 8);

    return v2();
  }

  v4 = v0 + 2088;
  memcpy((v0 + 16), (v0 + 504), 0x1E8uLL);
  *(v0 + 2088) = 0;
  if (qword_100832CC0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v5 = *(v0 + 2104);
  v6 = qword_1008823E0;
  v64 = v4;
  sub_100592174(0, v6, v4);

  v7 = sub_10003E414(_swiftEmptyArrayStorage);
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (v0 + 1480);
    v4 = *(v0 + 2104) + 32;
    while (1)
    {
      v25 = *(v4 + 16);
      *v9 = *v4;
      *(v0 + 1496) = v25;
      v26 = *(v4 + 32);
      v27 = *(v4 + 48);
      v28 = *(v4 + 80);
      *(v0 + 1544) = *(v4 + 64);
      *(v0 + 1560) = v28;
      *(v0 + 1512) = v26;
      *(v0 + 1528) = v27;
      v29 = *(v4 + 96);
      v30 = *(v4 + 112);
      v31 = *(v4 + 128);
      *(v0 + 1624) = *(v4 + 144);
      *(v0 + 1592) = v30;
      *(v0 + 1608) = v31;
      *(v0 + 1576) = v29;
      v32 = *(v0 + 1480);
      v33 = *(v0 + 1488);
      sub_1000F059C(v0 + 1480, v0 + 1632);
      sub_1000F059C(v0 + 1480, v0 + 1784);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = sub_10003ADCC(v32, v33);
      v37 = v7[2];
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v41 = v36;
      if (v7[3] < v40)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v54 = v35;
      sub_100170388();
      v35 = v54;
      if (v41)
      {
LABEL_8:
        v10 = v7[7] + 152 * v35;
        v11 = *(v10 + 16);
        *(v0 + 1936) = *v10;
        *(v0 + 1952) = v11;
        v12 = *(v10 + 80);
        v14 = *(v10 + 32);
        v13 = *(v10 + 48);
        *(v0 + 2000) = *(v10 + 64);
        *(v0 + 2016) = v12;
        *(v0 + 1968) = v14;
        *(v0 + 1984) = v13;
        v16 = *(v10 + 112);
        v15 = *(v10 + 128);
        v17 = *(v10 + 96);
        *(v0 + 2080) = *(v10 + 144);
        *(v0 + 2048) = v16;
        *(v0 + 2064) = v15;
        *(v0 + 2032) = v17;
        v18 = *(v0 + 1496);
        *v10 = *v9;
        *(v10 + 16) = v18;
        v19 = *(v0 + 1512);
        v20 = *(v0 + 1528);
        v21 = *(v0 + 1560);
        *(v10 + 64) = *(v0 + 1544);
        *(v10 + 80) = v21;
        *(v10 + 32) = v19;
        *(v10 + 48) = v20;
        v22 = *(v0 + 1576);
        v23 = *(v0 + 1592);
        v24 = *(v0 + 1608);
        *(v10 + 144) = *(v0 + 1624);
        *(v10 + 112) = v23;
        *(v10 + 128) = v24;
        *(v10 + 96) = v22;
        sub_1000F05D4(v0 + 1936);
        sub_1000F05D4(v0 + 1480);
        goto LABEL_9;
      }

LABEL_16:
      v7[(v35 >> 6) + 8] |= 1 << v35;
      v43 = (v7[6] + 16 * v35);
      *v43 = v32;
      v43[1] = v33;
      v44 = v7[7] + 152 * v35;
      v45 = *(v0 + 1624);
      v47 = *(v0 + 1592);
      v46 = *(v0 + 1608);
      *(v44 + 96) = *(v0 + 1576);
      *(v44 + 112) = v47;
      *(v44 + 128) = v46;
      *(v44 + 144) = v45;
      v49 = *(v0 + 1544);
      v48 = *(v0 + 1560);
      v50 = *(v0 + 1528);
      *(v44 + 32) = *(v0 + 1512);
      *(v44 + 48) = v50;
      *(v44 + 64) = v49;
      *(v44 + 80) = v48;
      v51 = *(v0 + 1496);
      *v44 = *v9;
      *(v44 + 16) = v51;

      sub_1000F05D4(v0 + 1480);
      v52 = v7[2];
      v39 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v39)
      {
        goto LABEL_27;
      }

      v7[2] = v53;
LABEL_9:
      v4 += 152;
      if (!--v8)
      {
        goto LABEL_20;
      }
    }

    sub_1001678C8(v40, isUniquelyReferenced_nonNull_native);
    v35 = sub_10003ADCC(v32, v33);
    if ((v41 & 1) != (v42 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_15:
    if (v41)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_20:
  *(v0 + 2184) = v7;
  v55 = *(v0 + 2144);
  v56 = *(v0 + 2120);
  *(v0 + 2096) = *(v0 + 2112);
  v57 = swift_task_alloc();
  *(v0 + 2192) = v57;
  v58 = *(v0 + 2128);
  *(v57 + 16) = v7;
  *(v57 + 24) = v56;
  *(v57 + 32) = v58;
  *(v57 + 48) = v55;
  *(v57 + 56) = v0 + 16;
  *(v57 + 64) = v64;
  v59 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v60 = swift_task_alloc();
  *(v0 + 2200) = v60;
  v61 = sub_100007224(&unk_100839A40, &qword_1006C1B50);
  v62 = sub_10001F8D4(0, &qword_100839BC8, DIPage_ptr);
  v63 = sub_1000BA30C(&unk_100839BD0, &unk_100839A40, &qword_1006C1B50);
  *v60 = v0;
  v60[1] = sub_1000E562C;

  return Sequence.asyncMap<A>(_:)(&unk_1006D49C8, v57, v61, v62, v63);
}

uint64_t sub_1000E562C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2200);
  v10 = *v2;
  *(*v2 + 2208) = v1;

  if (v1)
  {
    v6 = sub_1000E57F0;
  }

  else
  {
    v7 = v4[274];
    v8 = v4[273];

    v4[277] = a1;
    sub_10000BE18((v4 + 124), &qword_100839998, &qword_1006DCAA0);

    v6 = sub_1000E577C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E577C()
{
  v1 = v0[271];
  v2 = v0[261];

  v3 = v0[1];
  v4 = v0[277];

  return v3(v4);
}

uint64_t sub_1000E57F0()
{
  v1 = v0[274];
  v2 = v0[273];

  sub_10000BE18((v0 + 124), &qword_100839998, &qword_1006DCAA0);

  v3 = v0[261];

  v4 = v0[276];
  v5 = v0[271];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000E5888(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 112))
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {

      type metadata accessor for LegacySPWorkflow(0);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = &OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates;
LABEL_8:
        v7 = *(v5 + *v6);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  type metadata accessor for LegacyINOWorkflow(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates;
    goto LABEL_8;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  v8 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate + 8);
  if (v8)
  {
    if (v7)
    {
      v9 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
      sub_1000C5744(v7, a2);

      v10 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);

      sub_1000E485C(v10, a2, v9, v8);
    }
  }

  else
  {
  }

  v12 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a2;
  sub_10016D3A8(&_swiftEmptySetSingleton, 0x746C7561666564, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  *a2 = v14;
  return sub_1000C5978(*(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields));
}

uint64_t sub_1000E5A54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616353746E6F7266 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6163536B636162 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED0000746E6F7246 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC0000006B636142 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6569666C6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65766973736170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FF320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461726F6C707865 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6953726566667562 && a2 == 0xEA0000000000657ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6957656C62617473 && a2 == 0xEC000000776F646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x72466E6163536469 && a2 == 0xEF65746152656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6172466F65646976 && a2 == 0xEE0065746152656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x547463655278616DLL && a2 == 0xED00006C65766172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FF340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEF74756F656D6954)
  {

    return 17;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

void *sub_1000E6014(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_100007224(&qword_100839940, &qword_1006D48B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = v2[3];
  v11 = v2[4];
  v120 = v2;
  sub_10000BA08(v2, v10);
  sub_1000F08B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000BB78(v120);
  }

  v50 = v6;
  LOBYTE(v53[0]) = 0;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v12;
  v90[1055] = 1;
  v13 = sub_1000F0904();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(v119, v91, sizeof(v119));
  v89[1055] = 2;
  v47 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v118[5], v90, 0x41BuLL);
  v88[1055] = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v117[5], v89, 0x41BuLL);
  v87[1055] = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v116[5], v88, 0x41BuLL);
  v86[1055] = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v115[5], v87, 0x41BuLL);
  v85[1055] = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v114[5], v86, 0x41BuLL);
  v84[1055] = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v4;
  v45 = v13;
  memcpy(&v113[5], v85, 0x41BuLL);
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v52[0]) = 8;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v46 = v53[0];
  LOBYTE(v53[0]) = 9;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v110 = BYTE4(v14) & 1;
  LOBYTE(v53[0]) = 10;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v107 = v16 & 1;
  LOBYTE(v53[0]) = 11;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v105 = v17 & 1;
  LOBYTE(v53[0]) = 12;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v103 = v18 & 1;
  LOBYTE(v53[0]) = 13;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v101 = v19 & 1;
  LOBYTE(v53[0]) = 14;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v98 = BYTE4(v47) & 1;
  v83 = 15;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v97[7], v84, 0x41BuLL);
  LOBYTE(v53[0]) = 16;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = v21 & 1;
  v82 = 17;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v22;
  v40 = v65;
  v31 = &v52[927] + 4;
  (*(v50 + 8))(v9, v5);
  v92 = v23 & 1;
  v52[0] = v48;
  v52[1] = v49;
  memcpy(&v52[2], v119, 0x41BuLL);
  memcpy(&v52[133] + 3, v118, 0x420uLL);
  memcpy(&v52[265] + 3, v117, 0x420uLL);
  memcpy(&v52[397] + 3, v116, 0x420uLL);
  memcpy(&v52[529] + 3, v115, 0x420uLL);
  memcpy(&v52[661] + 3, v114, 0x420uLL);
  memcpy(&v52[793] + 3, v113, 0x420uLL);
  *(&v52[925] + 3) = v111;
  HIBYTE(v52[925]) = v112;
  v52[926] = v46;
  v38 = v15;
  v39 = v14;
  LODWORD(v52[927]) = v14;
  LODWORD(v50) = v110;
  v24 = v31;
  *v31 = v110;
  *(&v52[927] + 5) = v108;
  HIBYTE(v52[927]) = v109;
  v52[928] = v15;
  v37 = v107;
  v24[12] = v107;
  *(&v52[929] + 1) = *v106;
  HIDWORD(v52[929]) = *&v106[3];
  v52[930] = v43;
  v36 = v105;
  v24[28] = v105;
  *(&v52[931] + 1) = *v104;
  HIDWORD(v52[931]) = *&v104[3];
  v52[932] = v42;
  v35 = v103;
  v24[44] = v103;
  *(&v52[933] + 1) = *v102;
  HIDWORD(v52[933]) = *&v102[3];
  v52[934] = v41;
  v34 = v101;
  v24[60] = v101;
  v25 = v24;
  BYTE3(v52[935]) = v100;
  *(&v52[935] + 1) = v99;
  HIDWORD(v52[935]) = v47;
  v33 = v98;
  v24[68] = v98;
  memcpy(&v52[936] + 1, v97, 0x422uLL);
  *(&v52[1068] + 3) = v95;
  HIBYTE(v52[1068]) = v96;
  v52[1069] = v20;
  v32 = v94;
  *(&v52[1070] + 1) = *v93;
  v25[1140] = v94;
  HIDWORD(v52[1070]) = *&v93[3];
  v26 = v45;
  v52[1071] = v45;
  v27 = v92;
  v25[1156] = v92;
  sub_1000F0958(v52, &v51);
  sub_10000BB78(v120);
  v53[0] = v48;
  v53[1] = v49;
  memcpy(v54, v119, sizeof(v54));
  memcpy(v55, v118, sizeof(v55));
  memcpy(v56, v117, sizeof(v56));
  memcpy(v57, v116, sizeof(v57));
  memcpy(v58, v115, sizeof(v58));
  memcpy(v59, v114, sizeof(v59));
  memcpy(v60, v113, sizeof(v60));
  v61 = v111;
  v62 = v112;
  v63 = v46;
  v28 = v40;
  v64 = v39;
  *v40 = v50;
  *&v65[1] = v108;
  v65[3] = v109;
  v66 = v38;
  v28[12] = v37;
  *v67 = *v106;
  *&v67[3] = *&v106[3];
  v68 = v43;
  v28[28] = v36;
  *v69 = *v104;
  *&v69[3] = *&v104[3];
  v70 = v42;
  *v71 = *v102;
  v28[44] = v35;
  *&v71[3] = *&v102[3];
  v72 = v41;
  v28[60] = v34;
  v73 = v99;
  v74 = v100;
  v75 = v47;
  v28[68] = v33;
  v29 = v28;
  memcpy(v76, v97, sizeof(v76));
  v77 = v95;
  v78 = v96;
  v79 = v20;
  v29[1140] = v32;
  *v80 = *v93;
  *&v80[3] = *&v93[3];
  v81 = v26;
  v29[1156] = v27;
  sub_1000B1590(v53);
  return memcpy(v44, v52, 0x2181uLL);
}

uint64_t sub_1000E7230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E697272756C62 && a2 == 0xEA00000000007373;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426563616C70616CLL && a2 == 0xEB0000000072756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694464726163 && a2 == 0xEE006E6F6974726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDE90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6374695064616568 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6C6F5264616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x77615964616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73656361466D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65676E615278756CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x666E6F4365636166 && a2 == 0xEE0065636E656469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x75516569666C6573 && a2 == 0xED00007974696C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000077656B53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x666972447466656CLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6972447468676972 && a2 == 0xEA00000000007466 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x74666972447075 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x666972446E776F64 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6544373134666470 && a2 == 0xEE00646574636574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6572616C67 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x61436F7475417369 && a2 == 0xEE00646572757470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x5465727574706163 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6556746567726174 && a2 == 0xEE00736563697472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x74614D797A7A7566 && a2 == 0xED0000676E696863 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xED00006574756843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x456873616C467369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FF400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x686374614D72636FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x5378656C706D6F63 && a2 == 0xEE00736C616E6769 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x6165706552626F64 && a2 == 0xEE00746E756F4374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6165706552656F64 && a2 == 0xEE00746E756F4374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FE0B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x526E6163537A726DLL && a2 == 0xED0000746C757365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x636F44664F656761 && a2 == 0xED0000746E656D75)
  {

    return 44;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 44;
    }

    else
    {
      return 45;
    }
  }
}

void *sub_1000E8048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007224(&qword_100839F10, &qword_1006D5FC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v154 = a1;
  sub_10000BA08(a1, v10);
  sub_1000F47D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v363 = v2;
    v151 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v138 = 0;
    v139 = 0;
    LODWORD(v140) = 0;
    v141 = 0;
    LODWORD(v142) = 0;
    v143 = 0;
    LODWORD(v144) = 0;
    LODWORD(v145) = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    LODWORD(v152) = 0;
    LODWORD(v153) = 0;
  }

  else
  {
    LOBYTE(v155[0]) = 0;
    sub_1000F4834();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v134 = v156;
    v135 = v157;
    v136 = v158;
    v137 = v159;
    LOBYTE(v155[0]) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v130 = v156;
    v131 = v157;
    v132 = v158;
    v133 = v159;
    LOBYTE(v155[0]) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v126 = v156;
    v127 = v157;
    v128 = v158;
    v129 = v159;
    LOBYTE(v155[0]) = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v122 = v156;
    v123 = v157;
    v124 = v158;
    v125 = v159;
    LOBYTE(v155[0]) = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v118 = v156;
    v119 = v157;
    v120 = v158;
    v121 = v159;
    LOBYTE(v155[0]) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v114 = v156;
    v115 = v157;
    v116 = v158;
    v117 = v159;
    LOBYTE(v155[0]) = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v110 = v156;
    v111 = v157;
    v112 = v158;
    v113 = v159;
    LOBYTE(v155[0]) = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v106 = v156;
    v107 = v157;
    v108 = v158;
    v109 = v159;
    LOBYTE(v155[0]) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v102 = v156;
    v103 = v157;
    v104 = v158;
    v105 = v159;
    LOBYTE(v155[0]) = 9;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v98 = v156;
    v99 = v157;
    v100 = v158;
    v101 = v159;
    LOBYTE(v155[0]) = 10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v94 = v156;
    v95 = v157;
    v96 = v158;
    v97 = v159;
    LOBYTE(v155[0]) = 11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v90 = v156;
    v91 = v157;
    v92 = v158;
    v93 = v159;
    LOBYTE(v155[0]) = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v86 = v156;
    v87 = v157;
    v88 = v158;
    v89 = v159;
    LOBYTE(v155[0]) = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v82 = v156;
    v83 = v157;
    v84 = v158;
    v85 = v159;
    LOBYTE(v155[0]) = 14;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v78 = v156;
    v79 = v157;
    v80 = v158;
    v81 = v159;
    LOBYTE(v155[0]) = 15;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v74 = v156;
    v75 = v157;
    v76 = v158;
    v77 = v159;
    LOBYTE(v155[0]) = 16;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v33 = v156;
    v36 = v157;
    v39 = v158;
    v44 = v159;
    LOBYTE(v155[0]) = 17;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v32 = v156;
    v35 = v157;
    v40 = v158;
    v45 = v159;
    LOBYTE(v155[0]) = 18;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v34 = v156;
    v38 = v157;
    v42 = v158;
    v47 = v159;
    LOBYTE(v155[0]) = 19;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v37 = v156;
    v41 = v157;
    v46 = v158;
    v50 = v159;
    LOBYTE(v155[0]) = 20;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v43 = v156;
    v48 = v157;
    v51 = v158;
    v53 = v159;
    LOBYTE(v155[0]) = 21;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v49 = v156;
    v52 = v157;
    v55 = v158;
    v57 = v159;
    LOBYTE(v155[0]) = 22;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v54 = v156;
    v56 = v157;
    v58 = v158;
    v60 = v159;
    LOBYTE(v155[0]) = 23;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v59 = v156;
    v62 = v157;
    v63 = v158;
    v65 = v159;
    LOBYTE(v155[0]) = 24;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v64 = v156;
    v66 = v157;
    v68 = v158;
    v70 = v159;
    LOBYTE(v155[0]) = 25;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v69 = v156;
    v71 = v157;
    v72 = v158;
    v73 = v159;
    LOBYTE(v155[0]) = 26;
    sub_1000F4888();
    v21 = v363;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = v21;
    if (v21)
    {
      goto LABEL_36;
    }

    v153 = v156;
    v22 = v157;
    v23 = v158;
    LOBYTE(v155[0]) = 27;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = 0;
    v24 = v156;
    v152 = v157;
    v151 = v158;
    v324 = 28;
    sub_1000F48DC();
    v25 = v363;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = v25;
    if (v25)
    {
      goto LABEL_36;
    }

    *&v335[39] = v327;
    *&v335[55] = v328;
    *&v335[71] = v329;
    *&v335[7] = v325;
    v335[87] = v330;
    *&v335[23] = v326;
    LOBYTE(v156) = 29;
    v150 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = 0;
    LOBYTE(v156) = 30;
    HIDWORD(v149) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = 0;
    LOBYTE(v156) = 31;
    LODWORD(v149) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = 0;
    LOBYTE(v156) = 32;
    HIDWORD(v148) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = 0;
    LOBYTE(v156) = 33;
    LODWORD(v148) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = 0;
    LOBYTE(v156) = 34;
    HIDWORD(v147) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = 0;
    LOBYTE(v156) = 35;
    LODWORD(v147) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = 0;
    LOBYTE(v156) = 36;
    v146 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v363 = 0;
    sub_100007224(&qword_100839F38, &qword_1006D5FD0);
    LOBYTE(v155[0]) = 37;
    sub_1000F4930();
    v26 = v363;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v363 = v26;
    if (v26)
    {
LABEL_36:
      (*(v6 + 8))(v9, v5);
      LODWORD(v152) = 0;
      LODWORD(v153) = 0;
      v151 = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v138 = 1;
      v139 = 0x100000001;
      LODWORD(v140) = 1;
      v141 = 1;
      LODWORD(v142) = 1;
      v143 = 1;
      LODWORD(v144) = 1;
      LODWORD(v145) = 1;
      v146 = 1;
      v147 = 0x100000001;
      v148 = 0x100000001;
      v149 = 0x100000001;
      v150 = 1;
    }

    else
    {
      v67 = v156;
      sub_100007224(&qword_100839F50, &qword_1006D5FD8);
      LOBYTE(v155[0]) = 38;
      sub_1000F4A08();
      v27 = v363;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v363 = v27;
      if (v27)
      {
        (*(v6 + 8))(v9, v5);
        LODWORD(v153) = 0;
        v151 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
        v15 = 1;
        v16 = 1;
        v17 = 1;
        v18 = 1;
        v19 = 1;
        v138 = 1;
        v139 = 0x100000001;
        LODWORD(v140) = 1;
        v141 = 1;
        LODWORD(v142) = 1;
        v143 = 1;
        LODWORD(v144) = 1;
        LODWORD(v145) = 1;
        v146 = 1;
        v147 = 0x100000001;
        v148 = 0x100000001;
        v149 = 0x100000001;
        v150 = 1;
        LODWORD(v152) = 1;
      }

      else
      {
        v61 = v156;
        LOBYTE(v155[0]) = 39;
        v145 = sub_1000F4AE0();
        v28 = v363;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v363 = v28;
        if (!v28)
        {
          v144 = v156;
          v143 = v157;
          LOBYTE(v155[0]) = 40;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v363 = 0;
          v142 = v156;
          v141 = v157;
          LOBYTE(v155[0]) = 41;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v363 = 0;
          v140 = v156;
          HIDWORD(v139) = v157;
          LOBYTE(v155[0]) = 42;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v363 = 0;
          v145 = v156;
          LODWORD(v139) = v157;
          LOBYTE(v156) = 43;
          v138 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v363 = 0;
          v323 = 44;
          v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v363 = 0;
          (*(v6 + 8))(v9, v5);
          HIDWORD(v155[19]) = *&v358[3];
          *(&v155[19] + 1) = *v358;
          HIDWORD(v155[23]) = *&v357[3];
          *(&v155[23] + 1) = *v357;
          HIDWORD(v155[27]) = *&v356[3];
          *(&v155[27] + 1) = *v356;
          HIDWORD(v155[31]) = *&v355[3];
          *(&v155[31] + 1) = *v355;
          *(&v155[35] + 1) = *v354;
          *(&v155[39] + 1) = *v353;
          *(&v155[43] + 1) = *v352;
          *(&v155[47] + 1) = *v351;
          *(&v155[51] + 1) = *v350;
          *(&v155[55] + 1) = *v349;
          *(&v155[59] + 1) = *v348;
          *(&v155[63] + 1) = *v347;
          *(&v155[67] + 1) = *v346;
          *(&v155[71] + 1) = *v345;
          *(&v155[75] + 1) = *v344;
          *(&v155[79] + 1) = *v343;
          *(&v155[83] + 1) = *v342;
          *(&v155[87] + 1) = *v341;
          *(&v155[91] + 1) = *v340;
          *(&v155[95] + 1) = *v339;
          *(&v155[99] + 1) = *v338;
          *(&v155[103] + 1) = *v337;
          *(&v155[106] + 1) = *v336;
          *(&v155[121] + 1) = *v334;
          *(&v155[125] + 1) = *v333;
          *(&v155[127] + 1) = *v332;
          *(&v155[129] + 1) = *v331;
          *(&v155[3] + 1) = v362[0];
          HIDWORD(v155[3]) = *(v362 + 3);
          *(&v155[7] + 1) = *v361;
          HIDWORD(v155[7]) = *&v361[3];
          *(&v155[11] + 1) = *v360;
          HIDWORD(v155[11]) = *&v360[3];
          *(&v155[15] + 1) = *v359;
          HIDWORD(v155[15]) = *&v359[3];
          HIDWORD(v155[35]) = *&v354[3];
          HIDWORD(v155[39]) = *&v353[3];
          HIDWORD(v155[43]) = *&v352[3];
          HIDWORD(v155[47]) = *&v351[3];
          HIDWORD(v155[51]) = *&v350[3];
          HIDWORD(v155[55]) = *&v349[3];
          HIDWORD(v155[59]) = *&v348[3];
          HIDWORD(v155[63]) = *&v347[3];
          HIDWORD(v155[67]) = *&v346[3];
          HIDWORD(v155[71]) = *&v345[3];
          HIDWORD(v155[75]) = *&v344[3];
          HIDWORD(v155[79]) = *&v343[3];
          HIDWORD(v155[83]) = *&v342[3];
          HIDWORD(v155[87]) = *&v341[3];
          HIDWORD(v155[91]) = *&v340[3];
          HIDWORD(v155[95]) = *&v339[3];
          HIDWORD(v155[99]) = *&v338[3];
          HIDWORD(v155[103]) = *&v337[3];
          HIDWORD(v155[106]) = *&v336[3];
          *(&v155[119] + 1) = *&v335[80];
          *(&v155[109] + 1) = *v335;
          *(&v155[111] + 1) = *&v335[16];
          *(&v155[115] + 1) = *&v335[48];
          *(&v155[117] + 1) = *&v335[64];
          *(&v155[113] + 1) = *&v335[32];
          HIDWORD(v155[121]) = *&v334[3];
          HIDWORD(v155[125]) = *&v333[3];
          HIDWORD(v155[127]) = *&v332[3];
          HIDWORD(v155[129]) = *&v331[3];
          v155[0] = v134;
          v155[1] = v135;
          v155[2] = v136;
          LOBYTE(v155[3]) = v137;
          v155[4] = v130;
          v29 = v131;
          v155[5] = v131;
          v155[6] = v132;
          LOBYTE(v155[7]) = v133;
          v155[8] = v126;
          v155[9] = v127;
          v155[10] = v128;
          LOBYTE(v155[11]) = v129;
          v155[12] = v122;
          v155[13] = v123;
          v155[14] = v124;
          LOBYTE(v155[15]) = v125;
          v155[16] = v118;
          v155[17] = v119;
          v155[18] = v120;
          LOBYTE(v155[19]) = v121;
          v155[20] = v114;
          v155[21] = v115;
          v155[22] = v116;
          LOBYTE(v155[23]) = v117;
          v155[24] = v110;
          v155[25] = v111;
          v155[26] = v112;
          LOBYTE(v155[27]) = v113;
          v155[28] = v106;
          v155[29] = v107;
          v155[30] = v108;
          LOBYTE(v155[31]) = v109;
          v155[32] = v102;
          v155[33] = v103;
          v155[34] = v104;
          LOBYTE(v155[35]) = v105;
          v155[36] = v98;
          v155[37] = v99;
          v155[38] = v100;
          LOBYTE(v155[39]) = v101;
          v155[40] = v94;
          v155[41] = v95;
          v155[42] = v96;
          LOBYTE(v155[43]) = v97;
          v155[44] = v90;
          v155[45] = v91;
          v155[46] = v92;
          LOBYTE(v155[47]) = v93;
          v155[48] = v86;
          v155[49] = v87;
          v155[50] = v88;
          LOBYTE(v155[51]) = v89;
          v155[52] = v82;
          v155[53] = v83;
          v155[54] = v84;
          LOBYTE(v155[55]) = v85;
          v155[56] = v78;
          v155[57] = v79;
          v155[58] = v80;
          LOBYTE(v155[59]) = v81;
          v155[60] = v74;
          v155[61] = v75;
          v155[62] = v76;
          LOBYTE(v155[63]) = v77;
          v155[64] = v33;
          v155[65] = v36;
          v155[66] = v39;
          LOBYTE(v155[67]) = v44;
          v155[68] = v32;
          v155[69] = v35;
          v155[70] = v40;
          LOBYTE(v155[71]) = v45;
          v155[72] = v34;
          v155[73] = v38;
          v155[74] = v42;
          LOBYTE(v155[75]) = v47;
          v155[76] = v37;
          v155[77] = v41;
          v155[78] = v46;
          LOBYTE(v155[79]) = v50;
          v155[80] = v43;
          v155[81] = v48;
          v155[82] = v51;
          LOBYTE(v155[83]) = v53;
          v155[84] = v49;
          v155[85] = v52;
          v155[86] = v55;
          LOBYTE(v155[87]) = v57;
          v155[88] = v54;
          v155[89] = v56;
          v155[90] = v58;
          LOBYTE(v155[91]) = v60;
          v155[92] = v59;
          v155[93] = v62;
          v155[94] = v63;
          LOBYTE(v155[95]) = v65;
          v155[96] = v64;
          v155[97] = v66;
          v155[98] = v68;
          LOBYTE(v155[99]) = v70;
          v155[100] = v69;
          v155[101] = v71;
          v155[102] = v72;
          LOBYTE(v155[103]) = v73;
          v155[104] = v153;
          v155[105] = v22;
          LOBYTE(v155[106]) = v23;
          v155[107] = v24;
          v155[108] = v152;
          LOBYTE(v155[109]) = v151;
          BYTE1(v155[120]) = v150;
          BYTE2(v155[120]) = BYTE4(v149);
          BYTE3(v155[120]) = v149;
          BYTE4(v155[120]) = BYTE4(v148);
          BYTE5(v155[120]) = v148;
          BYTE6(v155[120]) = BYTE4(v147);
          HIBYTE(v155[120]) = v147;
          LOBYTE(v155[121]) = v146;
          v155[122] = v67;
          v155[123] = v61;
          v155[124] = v144;
          LOBYTE(v155[125]) = v143;
          v155[126] = v142;
          LOBYTE(v155[127]) = v141;
          v155[128] = v140;
          LOBYTE(v155[129]) = BYTE4(v139);
          v155[130] = v145;
          LOBYTE(v155[131]) = v139;
          BYTE1(v155[131]) = v138;
          BYTE2(v155[131]) = v31;
          sub_1000F4B34(v155, &v156);
          sub_10000BB78(v154);
          v156 = v134;
          v157 = v135;
          v158 = v136;
          v159 = v137;
          v161 = v130;
          v162 = v29;
          v163 = v132;
          v164 = v133;
          v166 = v126;
          v167 = v127;
          v168 = v128;
          v169 = v129;
          v171 = v122;
          v172 = v123;
          v173 = v124;
          v174 = v125;
          v176 = v118;
          v177 = v119;
          v178 = v120;
          v179 = v121;
          v181 = v114;
          v182 = v115;
          v183 = v116;
          v184 = v117;
          v186 = v110;
          v187 = v111;
          v188 = v112;
          v189 = v113;
          v191 = v106;
          v192 = v107;
          v193 = v108;
          v194 = v109;
          v196 = v102;
          v197 = v103;
          v198 = v104;
          v199 = v105;
          v201 = v98;
          v202 = v99;
          v203 = v100;
          v204 = v101;
          v206 = v94;
          v207 = v95;
          v208 = v96;
          v209 = v97;
          v211 = v90;
          v212 = v91;
          v213 = v92;
          v214 = v93;
          v216 = v86;
          v217 = v87;
          v218 = v88;
          v219 = v89;
          v221 = v82;
          v222 = v83;
          v223 = v84;
          v224 = v85;
          v226 = v78;
          v227 = v79;
          v228 = v80;
          v229 = v81;
          v231 = v74;
          v232 = v75;
          v233 = v76;
          v234 = v77;
          v236 = v33;
          v237 = v36;
          v238 = v39;
          v239 = v44;
          v241 = v32;
          v242 = v35;
          v243 = v40;
          v244 = v45;
          v246 = v34;
          v247 = v38;
          v248 = v42;
          v249 = v47;
          v251 = v37;
          v252 = v41;
          v253 = v46;
          v254 = v50;
          v256 = v43;
          v257 = v48;
          v258 = v51;
          v259 = v53;
          v261 = v49;
          v262 = v52;
          v263 = v55;
          v264 = v57;
          v266 = v54;
          v267 = v56;
          v268 = v58;
          v269 = v60;
          v271 = v59;
          v272 = v62;
          v273 = v63;
          v274 = v65;
          v276 = v64;
          v277 = v66;
          v278 = v68;
          v279 = v70;
          v281 = v69;
          v282 = v71;
          v283 = v72;
          *v160 = v362[0];
          *&v160[3] = *(v362 + 3);
          *v165 = *v361;
          *&v165[3] = *&v361[3];
          *v170 = *v360;
          *&v170[3] = *&v360[3];
          *v175 = *v359;
          *&v175[3] = *&v359[3];
          *&v180[3] = *&v358[3];
          *v180 = *v358;
          *&v185[3] = *&v357[3];
          *v185 = *v357;
          *&v190[3] = *&v356[3];
          *v190 = *v356;
          *&v195[3] = *&v355[3];
          *v195 = *v355;
          *v200 = *v354;
          *&v200[3] = *&v354[3];
          *v205 = *v353;
          *&v205[3] = *&v353[3];
          *v210 = *v352;
          *&v210[3] = *&v352[3];
          *v215 = *v351;
          *&v215[3] = *&v351[3];
          *v220 = *v350;
          *&v220[3] = *&v350[3];
          *v225 = *v349;
          *&v225[3] = *&v349[3];
          *v230 = *v348;
          *&v230[3] = *&v348[3];
          *v235 = *v347;
          *&v235[3] = *&v347[3];
          *v240 = *v346;
          *&v240[3] = *&v346[3];
          *v245 = *v345;
          *&v245[3] = *&v345[3];
          *v250 = *v344;
          *&v250[3] = *&v344[3];
          *v255 = *v343;
          *&v255[3] = *&v343[3];
          *v260 = *v342;
          *&v260[3] = *&v342[3];
          *v265 = *v341;
          *&v265[3] = *&v341[3];
          *v270 = *v340;
          *&v270[3] = *&v340[3];
          *v275 = *v339;
          *&v275[3] = *&v339[3];
          *v280 = *v338;
          *&v280[3] = *&v338[3];
          v284 = v73;
          *v285 = *v337;
          *&v285[3] = *&v337[3];
          v286 = v153;
          v287 = v22;
          v288 = v23;
          *v289 = *v336;
          *&v289[3] = *&v336[3];
          v290 = v24;
          v291 = v152;
          v292 = v151;
          v293 = *v335;
          v294 = *&v335[16];
          v298 = *&v335[80];
          v296 = *&v335[48];
          v297 = *&v335[64];
          v295 = *&v335[32];
          v299 = v150;
          v300 = BYTE4(v149);
          v301 = v149;
          v302 = BYTE4(v148);
          v303 = v148;
          v304 = BYTE4(v147);
          v305 = v147;
          v306 = v146;
          *v307 = *v334;
          *&v307[3] = *&v334[3];
          v308 = v67;
          v309 = v61;
          v310 = v144;
          v311 = v143;
          *v312 = *v333;
          *&v312[3] = *&v333[3];
          v313 = v142;
          v314 = v141;
          *v315 = *v332;
          *&v315[3] = *&v332[3];
          v316 = v140;
          v317 = BYTE4(v139);
          *v318 = *v331;
          *&v318[3] = *&v331[3];
          v319 = v145;
          v320 = v139;
          v321 = v138;
          v322 = v31;
          sub_1000F4B6C(&v156);
          return memcpy(a2, v155, 0x41BuLL);
        }

        (*(v6 + 8))(v9, v5);
        v151 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
        v15 = 1;
        v16 = 1;
        v17 = 1;
        v18 = 1;
        v19 = 1;
        v138 = 1;
        v139 = 0x100000001;
        LODWORD(v140) = 1;
        v141 = 1;
        LODWORD(v142) = 1;
        v143 = 1;
        LODWORD(v144) = 1;
        LODWORD(v145) = 1;
        v146 = 1;
        v147 = 0x100000001;
        v148 = 0x100000001;
        v149 = 0x100000001;
        v150 = 1;
        LODWORD(v152) = 1;
        LODWORD(v153) = 1;
      }
    }
  }

  result = sub_10000BB78(v154);
  if (v151)
  {
    result = sub_1000F4824(v134);
    if (!v12)
    {
LABEL_6:
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_45;
    }
  }

  else if (!v12)
  {
    goto LABEL_6;
  }

  result = sub_1000F4824(v130);
  if (!v13)
  {
LABEL_7:
    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = sub_1000F4824(v126);
  if (!v14)
  {
LABEL_8:
    if (!v15)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = sub_1000F4824(v122);
  if (!v15)
  {
LABEL_9:
    if (!v16)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = sub_1000F4824(v118);
  if (!v16)
  {
LABEL_10:
    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = sub_1000F4824(v114);
  if (!v17)
  {
LABEL_11:
    if (!v18)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = sub_1000F4824(v110);
  if (!v18)
  {
LABEL_12:
    if (!v19)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_1000F4824(v106);
  if (!v19)
  {
LABEL_13:
    if (!v138)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = sub_1000F4824(v102);
  if (!v138)
  {
LABEL_14:
    if (!v139)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = sub_1000F4824(v98);
  if (!v139)
  {
LABEL_15:
    if (!HIDWORD(v139))
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = sub_1000F4824(v94);
  if (!HIDWORD(v139))
  {
LABEL_16:
    if (!v140)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = sub_1000F4824(v90);
  if (!v140)
  {
LABEL_17:
    if (!v141)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = sub_1000F4824(v86);
  if (!v141)
  {
LABEL_18:
    if (!v142)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_1000F4824(v82);
  if (!v142)
  {
LABEL_19:
    if (!v143)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = sub_1000F4824(v78);
  if (!v143)
  {
LABEL_20:
    if (!v144)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = sub_1000F4824(v74);
  if (!v144)
  {
LABEL_21:
    if (!v145)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = sub_1000F4824(v33);
  if (!v145)
  {
LABEL_22:
    if (!v146)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = sub_1000F4824(v32);
  if (!v146)
  {
LABEL_23:
    if (!v147)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = sub_1000F4824(v34);
  if (!v147)
  {
LABEL_24:
    if (!HIDWORD(v147))
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = sub_1000F4824(v37);
  if (!HIDWORD(v147))
  {
LABEL_25:
    if (!v148)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = sub_1000F4824(v43);
  if (!v148)
  {
LABEL_26:
    if (!HIDWORD(v148))
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = sub_1000F4824(v49);
  if (!HIDWORD(v148))
  {
LABEL_27:
    if (!v149)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = sub_1000F4824(v54);
  if (!v149)
  {
LABEL_28:
    if (!HIDWORD(v149))
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_1000F4824(v59);
  if (!HIDWORD(v149))
  {
LABEL_29:
    if (!v150)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_1000F4824(v64);
  if (!v150)
  {
LABEL_30:
    if (!v152)
    {
      goto LABEL_31;
    }

LABEL_69:

    if (!v153)
    {
      return result;
    }
  }

LABEL_68:
  result = sub_1000F4824(v69);
  if (v152)
  {
    goto LABEL_69;
  }

LABEL_31:
  if (v153)
  {
  }

  return result;
}

uint64_t sub_1000EAF3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EB058(uint64_t *a1)
{
  v3 = sub_100007224(&qword_10083A0E0, &unk_1006D6D28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000BA08(a1, v8);
  sub_1000F5EDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100007224(&unk_10083A0F0, &unk_1006C96E0);
    v10[15] = 0;
    sub_1000AF1E4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v11;
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10[13] = 2;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_1000EB290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EB3AC(uint64_t *a1)
{
  v3 = sub_100007224(&qword_10083A100, &qword_1006D6D38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5F30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000BB78(a1);
  }

  v16 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 2;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_10000BB78(a1);
  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFF00 | v9;
}

uint64_t sub_1000EB590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6172656C6F74 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000EB754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A120, &qword_1006D6D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5FD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  LOBYTE(v38[0]) = 1;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v15 & 1;
  LOBYTE(v38[0]) = 2;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v16 & 1;
  LOBYTE(v38[0]) = 3;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v18;
  v29 = v17;
  v47 = 4;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v28 = v14;
  *&v33 = v14;
  *(&v33 + 1) = v13;
  *&v34 = v31;
  HIDWORD(v27) = v46;
  BYTE8(v34) = v46;
  v20 = v30;
  *&v35 = v30;
  v21 = v45;
  BYTE8(v35) = v45;
  v22 = v29;
  v23 = v32;
  *&v36 = v29;
  *(&v36 + 1) = v32;
  v37 = v19;
  sub_1000F602C(&v33, v38);
  sub_10000BB78(a1);
  v38[0] = v28;
  v38[1] = v13;
  v38[2] = v31;
  v39 = BYTE4(v27);
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v44 = v19;
  result = sub_1000F6064(v38);
  v25 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v25;
  *(a2 + 64) = v37;
  v26 = v34;
  *a2 = v33;
  *(a2 + 16) = v26;
  return result;
}

uint64_t sub_1000EBA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C616E676973 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EBBB8(uint64_t *a1)
{
  v3 = sub_100007224(&qword_10083A130, &qword_1006D6D50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F6094();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[30] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100007224(&qword_10083A140, &qword_1006D6D58);
    v10[29] = 2;
    sub_1000F60E8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_1000EBDF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617261706D6F63 && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EBF18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A2B8, &qword_1006D7980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F6FA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v26 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  v25 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v15;
  v24 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  result = sub_10000BB78(a1);
  v19 = v22;
  *v22 = v23;
  v19[1] = v13;
  v20 = v21;
  v19[2] = v14;
  v19[3] = v20;
  *(v19 + 8) = v17;
  return result;
}

uint64_t sub_1000EC16C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6C69737065 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F506E696DLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65746E496E696DLL && a2 == 0xEC00000079746973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5372657473756C63 && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6163736E776F64 && a2 == 0xEF726F7463614665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000EC3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A110, &qword_1006D6D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5F84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v48 = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v45 = BYTE4(v11) & 1;
  v47 = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v14 & 1;
  v46 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v16 & 1;
  v44 = 3;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v17 & 1;
  v43 = 4;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v18 & 1;
  v42 = 5;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 6;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 &= 1u;
  v20 = *(v6 + 8);
  v32 = v19;
  v21 = v9;
  v23 = v22;
  v20(v21, v5);
  v24 = v23 & 1;
  v37 = v23 & 1;
  v25 = v45;
  v26 = v41;
  v29 = v40;
  v30 = v39;
  v31 = v38;
  result = sub_10000BB78(a1);
  *a2 = v12;
  *(a2 + 4) = v25;
  *(a2 + 8) = v13;
  *(a2 + 16) = v26;
  *(a2 + 24) = v15;
  *(a2 + 32) = v29;
  *(a2 + 40) = v35;
  *(a2 + 48) = v30;
  *(a2 + 56) = v34;
  *(a2 + 64) = v31;
  *(a2 + 65) = v33;
  *(a2 + 72) = v32;
  *(a2 + 80) = v24;
  return result;
}

uint64_t sub_1000EC6C4(uint64_t *a1)
{
  v2 = sub_100007224(&qword_10083A158, &qword_1006D6D60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F61C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_1000EC86C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001006FF3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FF420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F697461526975 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FF3E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FF440 == a2)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000ECA70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A0B0, &qword_1006D6D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5E34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v37[0]) = 1;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v14;
  LOBYTE(v37[0]) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v16;
  v27 = v15;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v32) = 3;
  sub_10007FD2C();
  v28 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v37[0];
  LOBYTE(v37[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v38 = 5;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *&v32 = v11;
  *(&v32 + 1) = v13;
  v21 = v30;
  v20 = v31;
  *&v33 = v29;
  *(&v33 + 1) = v31;
  *&v34 = v27;
  *(&v34 + 1) = v30;
  v22 = v26;
  *&v35 = v26;
  *(&v35 + 1) = v18;
  v36 = v19;
  sub_1000F4674(&v32, v37);
  sub_10000BB78(a1);
  v37[0] = v11;
  v37[1] = v13;
  v37[2] = v29;
  v37[3] = v20;
  v37[4] = v27;
  v37[5] = v21;
  v37[6] = v22;
  v37[7] = v18;
  v37[8] = v19;
  result = sub_1000F44CC(v37);
  v24 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v24;
  *(a2 + 64) = v36;
  v25 = v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  return result;
}

uint64_t sub_1000ECE74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F466567616D69 && a2 == 0xEB0000000074616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FF360 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000ECF98@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = sub_100007224(&qword_100839E90, &qword_1006D5F90);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v50);
  v8 = &v22 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F4424();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v10 = v5;
  v23 = a2;
  LOBYTE(v30[0]) = 0;
  v11 = v50;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v22 = v12;
  v39 = 1;
  sub_1000F4478();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v42;
  v48 = v43;
  v49 = v44;
  v45 = v40;
  v46 = v41;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v37 = 2;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v10 + 8))(v8, v11);
  v15 = v38;
  v16 = v22;
  *&v24 = v22;
  *(&v24 + 1) = v14;
  v27 = v47;
  v28 = v48;
  v25 = v45;
  v26 = v46;
  *&v29 = v49;
  *(&v29 + 1) = v38;
  sub_1000F2868(&v24, v30);
  sub_10000BB78(a1);
  v30[0] = v16;
  v30[1] = v14;
  v33 = v47;
  v34 = v48;
  v31 = v45;
  v32 = v46;
  v35 = v49;
  v36 = v15;
  result = sub_1000F28A0(v30);
  v18 = v27;
  v19 = v23;
  v23[2] = v26;
  v19[3] = v18;
  v20 = v29;
  v19[4] = v28;
  v19[5] = v20;
  v21 = v25;
  *v19 = v24;
  v19[1] = v21;
  return result;
}

uint64_t sub_1000ED2B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FEAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FEB20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FEB40 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1000ED464(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA108, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000ED4B0(uint64_t *a1)
{
  v3 = sub_100007224(&qword_1008398A0, &qword_1006D4888);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F02F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v8;
}

unint64_t sub_1000ED694(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA188, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000ED6E0(uint64_t *a1)
{
  v2 = sub_100007224(&qword_10083A0C0, &qword_1006D6D10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5E88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_1000ED888(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001006FE590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FF380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FF3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FF3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FF3E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656E696C6576696CLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6B6174655278616DLL && a2 == 0xEE00746E756F4365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 10;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1000EDC1C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v86 = sub_100007224(&qword_100839EA8, &qword_1006D5F98);
  v5 = *(v86 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v86);
  v8 = &v30 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F44FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v10 = v5;
  v44 = a2;
  LOBYTE(v53) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v12;
  sub_100007224(&qword_100839EB8, &qword_1006D5FA0);
  LOBYTE(v45) = 1;
  sub_1000F4550();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = v53;
  LOBYTE(v53) = 2;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v45) = 3;
  v41 = sub_1000F45CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v54;
  v39 = v53;
  LOBYTE(v45) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v53;
  v37 = v54;
  LOBYTE(v53) = 5;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v85 = v13 & 1;
  LOBYTE(v53) = 6;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v84 = v15 & 1;
  LOBYTE(v53) = 7;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v53) = 8;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v81 = v16 & 1;
  LOBYTE(v53) = 9;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v79 = v18 & 1;
  v76 = 10;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  (*(v10 + 8))(v8, v86);
  v77 = v20 & 1;
  *&v45 = v11;
  *(&v45 + 1) = v43;
  v21 = v40;
  *&v46 = v42;
  *(&v46 + 1) = v40;
  *&v47 = v39;
  *(&v47 + 1) = v38;
  *&v48 = v41;
  *(&v48 + 1) = v37;
  *&v49 = v36;
  HIDWORD(v30) = v85;
  BYTE8(v49) = v85;
  v22 = v14;
  *&v50 = v14;
  v23 = v84;
  BYTE8(v50) = v84;
  LOBYTE(v14) = v34;
  BYTE9(v50) = v34;
  *&v51 = v35;
  v31 = v81;
  BYTE8(v51) = v81;
  *&v52[0] = v17;
  v32 = v79;
  BYTE8(v52[0]) = v79;
  *&v52[1] = v33;
  LODWORD(v86) = v77;
  BYTE8(v52[1]) = v77;
  sub_1000F28D0(&v45, &v53);
  sub_10000BB78(a1);
  v53 = v11;
  v54 = v43;
  v55 = v42;
  v56 = v21;
  v57 = v39;
  v58 = v38;
  v59 = v41;
  v60 = v37;
  v61 = v36;
  v62 = BYTE4(v30);
  v63 = v22;
  v64 = v23;
  v65 = v14;
  v66 = v82;
  v67 = v83;
  v68 = v35;
  v69 = v31;
  *&v70[3] = *&v80[3];
  *v70 = *v80;
  v71 = v17;
  v72 = v32;
  *&v73[3] = *&v78[3];
  *v73 = *v78;
  v74 = v33;
  v75 = v86;
  result = sub_1000F2908(&v53);
  v25 = v52[0];
  v26 = v44;
  v44[6] = v51;
  v26[7] = v25;
  *(v26 + 121) = *(v52 + 9);
  v27 = v48;
  v26[2] = v47;
  v26[3] = v27;
  v28 = v50;
  v26[4] = v49;
  v26[5] = v28;
  v29 = v46;
  *v26 = v45;
  v26[1] = v29;
  return result;
}

uint64_t sub_1000EE1D0(uint64_t *a1)
{
  v3 = sub_100007224(&qword_100839ED0, &qword_1006D5FA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000BA08(a1, v8);
  sub_1000F4620();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    LOBYTE(v8) = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v8 & 1;
}

uint64_t sub_1000EE37C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FF280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FF2A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FF2C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72456E4F65646F63 && a2 == 0xEB00000000726F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FEB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001006FF2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FF300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65646F4E61746164 && a2 == 0xED0000666F6F7250)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1000EE744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_100007224(&qword_1008398B8, &qword_1006D4898);
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v53);
  v8 = &v35 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F0344();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v10 = v5;
  LOBYTE(v64[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v64[0]) = 1;
  v85 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v64[0]) = 2;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v51 = v15;
  LOBYTE(v64[0]) = 3;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = v16;
  LOBYTE(v64[0]) = 4;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v64[0]) = 5;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v64[0]) = 6;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = v17;
  LOBYTE(v64[0]) = 7;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = v18;
  LOBYTE(v64[0]) = 8;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v19;
  v42 = 0;
  sub_100007224(&qword_1008398C8, &qword_1006D48A0);
  LOBYTE(v54) = 9;
  sub_1000F0398();
  v20 = v42;
  v21 = v42;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v20;
  if (v20)
  {
    (*(v10 + 8))(v8, v53);
    sub_10000BB78(a1);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v38 = v64[0];
    sub_100007224(&qword_1008398E0, &qword_1006D48A8);
    LOBYTE(v54) = 10;
    sub_1000F0470();
    v24 = v44;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v24;
    if (v24)
    {
      (*(v10 + 8))(v8, v53);
      sub_10000BB78(a1);
      v23 = 0;
      v22 = 1;
    }

    else
    {
      v37 = v64[0];
      v86 = 11;
      sub_1000F0548();
      v25 = v44;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v44 = v25;
      if (!v25)
      {
        v85 &= 1u;
        v26 = v85;
        (*(v10 + 8))(v8, v53);
        v53 = v83;
        *&v54 = v12;
        v42 = *(&v83 + 1);
        v36 = v84;
        *(&v54 + 1) = v14;
        LOBYTE(v55) = v26;
        v27 = v50;
        *(&v55 + 1) = v49;
        v28 = v52;
        *&v56 = v51;
        *(&v56 + 1) = v48;
        *&v57 = v50;
        BYTE8(v57) = v47;
        BYTE9(v57) = v46;
        *&v58 = v45;
        *(&v58 + 1) = v52;
        v29 = v41;
        *&v59 = v40;
        *(&v59 + 1) = v43;
        v30 = v38;
        *&v60 = v39;
        *(&v60 + 1) = v41;
        *&v61 = v38;
        *(&v61 + 1) = v37;
        v62 = v83;
        v63 = v84;
        sub_1000F059C(&v54, v64);
        sub_10000BB78(a1);
        v64[0] = v12;
        v64[1] = v14;
        v65 = v85;
        v66 = v49;
        v67 = v51;
        v68 = v48;
        v69 = v27;
        v70 = v47;
        v71 = v46;
        v72 = v45;
        v73 = v28;
        v74 = v40;
        v75 = v43;
        v76 = v39;
        v77 = v29;
        v78 = v30;
        v79 = v37;
        v80 = v53;
        v81 = v42;
        v82 = v36;
        result = sub_1000F05D4(v64);
        v31 = v61;
        *(a2 + 96) = v60;
        *(a2 + 112) = v31;
        *(a2 + 128) = v62;
        *(a2 + 144) = v63;
        v32 = v57;
        *(a2 + 32) = v56;
        *(a2 + 48) = v32;
        v33 = v59;
        *(a2 + 64) = v58;
        *(a2 + 80) = v33;
        v34 = v55;
        *a2 = v54;
        *(a2 + 16) = v34;
        return result;
      }

      (*(v10 + 8))(v8, v53);
      sub_10000BB78(a1);
      v22 = 1;
      v23 = 1;
    }
  }

  if (v21)
  {
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_13:
    if (!v23)
    {
      return result;
    }
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:

  if ((v23 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_1000EEE08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74615070756F7267 && a2 == 0xE900000000000068;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EEF34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100839830, &qword_1006D4858);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F0030();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v26 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  v25 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v15;
  v24 = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000BB78(a1);
  v18 = v22;
  *v22 = v23;
  v18[1] = v13;
  v19 = v21;
  v18[2] = v14;
  v18[3] = v19;
  *(v18 + 32) = v16;
  return result;
}

uint64_t sub_1000EF180(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570795465676170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEB00000000737465)
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

uint64_t sub_1000EF454@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100839848, &unk_1006D4868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F0084();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v54[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v54[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v14;
  LOBYTE(v54[0]) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v16;
  v39 = v13;
  v40 = v15;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v47) = 3;
  v17 = sub_10007FD2C();
  v43 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = 0;
  v37 = v17;
  v38 = v54[0];
  sub_100007224(&qword_100839868, &qword_1006D4878);
  LOBYTE(v47) = 4;
  sub_1000F00D8();
  v18 = v46;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    v46 = v18;
    (*(v6 + 8))(v9, v5);
    v19 = v43;
    sub_10000BB78(a1);

    if (!v19)
    {
    }
  }

  else
  {
    v36 = v54[0];
    LOBYTE(v54[0]) = 5;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v21;
    v35 = v20;
    LOBYTE(v54[0]) = 6;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v22;
    LOBYTE(v54[0]) = 7;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v23;
    v55 = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v46 = 0;
    (*(v6 + 8))(v9, v5);
    v37 = v56;
    *&v47 = v11;
    v24 = v39;
    *(&v47 + 1) = v39;
    v25 = v45;
    *&v48 = v45;
    *(&v48 + 1) = v40;
    v26 = v44;
    *&v49 = v44;
    v27 = v38;
    *(&v49 + 1) = v38;
    v28 = v36;
    *&v50 = v36;
    v29 = v35;
    *(&v50 + 1) = v35;
    *&v51 = v42;
    *(&v51 + 1) = v34;
    *&v52 = v41;
    *(&v52 + 1) = v33;
    *&v53 = v43;
    *(&v53 + 1) = v56;
    sub_1000F01B0(&v47, v54);
    sub_10000BB78(a1);
    v54[0] = v11;
    v54[1] = v24;
    v54[2] = v25;
    v54[3] = v40;
    v54[4] = v26;
    v54[5] = v27;
    v54[6] = v28;
    v54[7] = v29;
    v54[8] = v42;
    v54[9] = v34;
    v54[10] = v41;
    v54[11] = v33;
    v54[12] = v43;
    v54[13] = v37;
    result = sub_1000F01E8(v54);
    v30 = v52;
    a2[4] = v51;
    a2[5] = v30;
    a2[6] = v53;
    v31 = v48;
    *a2 = v47;
    a2[1] = v31;
    v32 = v50;
    a2[2] = v49;
    a2[3] = v32;
  }

  return result;
}

uint64_t sub_1000EFB5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EFC70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x80000001006FF220 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FF240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF73656972746552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FF260 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000EFDE4(uint64_t *a1)
{
  v2 = sub_100007224(&qword_100839818, &qword_1006D4848);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000EFFDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000BB78(a1);
  return v9;
}

unint64_t sub_1000EFFDC()
{
  result = qword_100839820;
  if (!qword_100839820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839820);
  }

  return result;
}

unint64_t sub_1000F0030()
{
  result = qword_100839838;
  if (!qword_100839838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839838);
  }

  return result;
}

unint64_t sub_1000F0084()
{
  result = qword_100839850;
  if (!qword_100839850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839850);
  }

  return result;
}

unint64_t sub_1000F00D8()
{
  result = qword_100839870;
  if (!qword_100839870)
  {
    sub_10000B870(&qword_100839868, &qword_1006D4878);
    sub_1000F015C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839870);
  }

  return result;
}

unint64_t sub_1000F015C()
{
  result = qword_100839878;
  if (!qword_100839878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839878);
  }

  return result;
}

unint64_t sub_1000F0218()
{
  result = qword_100839890;
  if (!qword_100839890)
  {
    sub_10000B870(&qword_100839868, &qword_1006D4878);
    sub_1000F029C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839890);
  }

  return result;
}

unint64_t sub_1000F029C()
{
  result = qword_100839898;
  if (!qword_100839898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839898);
  }

  return result;
}

unint64_t sub_1000F02F0()
{
  result = qword_1008398A8;
  if (!qword_1008398A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398A8);
  }

  return result;
}

unint64_t sub_1000F0344()
{
  result = qword_1008398C0;
  if (!qword_1008398C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398C0);
  }

  return result;
}

unint64_t sub_1000F0398()
{
  result = qword_1008398D0;
  if (!qword_1008398D0)
  {
    sub_10000B870(&qword_1008398C8, &qword_1006D48A0);
    sub_1000F041C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398D0);
  }

  return result;
}

unint64_t sub_1000F041C()
{
  result = qword_1008398D8;
  if (!qword_1008398D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398D8);
  }

  return result;
}

unint64_t sub_1000F0470()
{
  result = qword_1008398E8;
  if (!qword_1008398E8)
  {
    sub_10000B870(&qword_1008398E0, &qword_1006D48A8);
    sub_1000F04F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398E8);
  }

  return result;
}

unint64_t sub_1000F04F4()
{
  result = qword_1008398F0;
  if (!qword_1008398F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398F0);
  }

  return result;
}

unint64_t sub_1000F0548()
{
  result = qword_1008398F8;
  if (!qword_1008398F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398F8);
  }

  return result;
}

unint64_t sub_1000F0604()
{
  result = qword_100839908;
  if (!qword_100839908)
  {
    sub_10000B870(&qword_1008398C8, &qword_1006D48A0);
    sub_1000F0688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839908);
  }

  return result;
}

unint64_t sub_1000F0688()
{
  result = qword_100839910;
  if (!qword_100839910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839910);
  }

  return result;
}

unint64_t sub_1000F06DC()
{
  result = qword_100839918;
  if (!qword_100839918)
  {
    sub_10000B870(&qword_1008398E0, &qword_1006D48A8);
    sub_1000F0760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839918);
  }

  return result;
}

unint64_t sub_1000F0760()
{
  result = qword_100839920;
  if (!qword_100839920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839920);
  }

  return result;
}

unint64_t sub_1000F07B4()
{
  result = qword_100839928;
  if (!qword_100839928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839928);
  }

  return result;
}

unint64_t sub_1000F0808()
{
  result = qword_100839930;
  if (!qword_100839930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839930);
  }

  return result;
}

unint64_t sub_1000F085C()
{
  result = qword_100839938;
  if (!qword_100839938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839938);
  }

  return result;
}

unint64_t sub_1000F08B0()
{
  result = qword_100839948;
  if (!qword_100839948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839948);
  }

  return result;
}

unint64_t sub_1000F0904()
{
  result = qword_100839958;
  if (!qword_100839958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839958);
  }

  return result;
}

unint64_t sub_1000F0990()
{
  result = qword_100839968;
  if (!qword_100839968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839968);
  }

  return result;
}

uint64_t sub_1000F09F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F0A40()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F0A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F0A90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000F0BB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v30 = a5;
  v31 = sub_100007224(a2, a3);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v31);
  v11 = &v26 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return sub_10000BB78(a1);
  }

  v13 = v8;
  v14 = v30;
  v15 = v31;
  v34 = 0;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v29 = v16;
  v33 = 1;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v19;
  v32 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v11;
  v23 = v22;
  (*(v13 + 8))(v21, v15);
  result = sub_10000BB78(a1);
  *v14 = v29;
  v14[1] = v18;
  v25 = v28;
  v14[2] = v27;
  v14[3] = v25;
  v14[4] = v20;
  v14[5] = v23;
  return result;
}

uint64_t sub_1000F0E0C(uint64_t *a1)
{
  v3 = sub_100007224(&qword_10083A088, &qword_1006D6CE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000BA08(a1, v8);
  sub_1000F5DE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    sub_1000F4124();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000BB78(a1);
  return v8;
}

uint64_t sub_1000F0FD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEC00000074616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7629921 && a2 == 0xE300000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000F121C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = sub_100007224(&qword_100839E20, &qword_1006D5F78);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v45);
  v8 = &v29 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F4028();
  v46 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v10 = v5;
  v44 = a2;
  LOBYTE(v57) = 0;
  v11 = v45;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v13;
  LOBYTE(v57) = 1;
  *&v42 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v42 + 1) = v14;
  LOBYTE(v57) = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v16;
  LOBYTE(v47) = 3;
  sub_1000F407C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v15;
  v38 = v58;
  v39 = v57;
  v36 = v59;
  v37 = *(&v57 + 1);
  v17 = v60;
  v40 = v61;
  LOBYTE(v47) = 4;
  sub_1000F40D0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v57;
  v35 = v58;
  v32 = v60;
  v33 = v59;
  v31 = v61;
  LOBYTE(v47) = 5;
  sub_1000F4124();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  HIDWORD(v29) = v57;
  sub_100007224(&qword_100839E48, &qword_1006D5F80);
  v75 = 6;
  sub_1000F4178();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v10 + 8))(v46, v11);
  v46 = v76;
  *&v47 = v12;
  v18 = *(&v42 + 1);
  v19 = v43;
  v20 = v41;
  *(&v47 + 1) = v43;
  v48 = v42;
  *&v49 = v30;
  *(&v49 + 1) = v41;
  *&v50 = v39;
  *(&v50 + 1) = v37;
  *&v51 = v38;
  v21 = v36;
  *(&v51 + 1) = v36;
  *&v52 = v17;
  *(&v52 + 1) = v40;
  v53 = v34;
  *&v54 = v35;
  *(&v54 + 1) = v33;
  *&v55 = v32;
  *(&v55 + 1) = v31;
  LOBYTE(v56) = BYTE4(v29);
  *(&v56 + 1) = v76;
  sub_1000F27AC(&v47, &v57);
  sub_10000BB78(a1);
  *&v57 = v12;
  *(&v57 + 1) = v19;
  v58 = v42;
  v59 = v18;
  v60 = v30;
  v61 = v20;
  v62 = v39;
  v63 = v37;
  v64 = v38;
  v65 = v21;
  v66 = v17;
  v67 = v40;
  v68 = v34;
  v69 = v35;
  v70 = v33;
  v71 = v32;
  v72 = v31;
  v73 = BYTE4(v29);
  v74 = v46;
  result = sub_1000F27E4(&v57);
  v23 = v54;
  v24 = v44;
  v44[6] = v53;
  v24[7] = v23;
  v25 = v56;
  v24[8] = v55;
  v24[9] = v25;
  v26 = v50;
  v24[2] = v49;
  v24[3] = v26;
  v27 = v52;
  v24[4] = v51;
  v24[5] = v27;
  v28 = v48;
  *v24 = v47;
  v24[1] = v28;
  return result;
}

uint64_t sub_1000F1770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656572674179656BLL && a2 == 0xEC000000746E656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E676973 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000F1894()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000F18E8(uint64_t a1)
{
  v3 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v3;
  v4 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v4;
  v5 = *(a1 + 56);
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 56) = v5;
  v6 = *(a1 + 72);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 72) = v6;
  v7 = *(a1 + 88);
  *(v1 + 80) = *(a1 + 80);
  *(v1 + 88) = v7;
  v8 = *(a1 + 104);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 104) = v8;
  *(v1 + 112) = *(a1 + 112);
  v9 = *(a1 + 128);
  *(v1 + 120) = *(a1 + 120);
  *(v1 + 128) = v9;
  v10 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 136);
  *(v1 + 144) = v10;
  *(v1 + 152) = *(a1 + 152);
  v11 = *(a1 + 168);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 168) = v11;
  *(v1 + 176) = *(a1 + 176);
  v12 = *(a1 + 192);
  *(v1 + 184) = *(a1 + 184);
  *(v1 + 192) = v12;
  *(v1 + 200) = *(a1 + 200);
  sub_10000BBC4(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, &qword_1008353E0, &qword_1006C0F18);
  *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes) = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);
  *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields) = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
  v13 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate + 8);
  v14 = (v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
  *v14 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
  v14[1] = v13;
  *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM) = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM);

  return v1;
}

unint64_t sub_1000F1A9C()
{
  result = qword_100839A00;
  if (!qword_100839A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A00);
  }

  return result;
}

unint64_t sub_1000F1AF0()
{
  result = qword_100839A18;
  if (!qword_100839A18)
  {
    sub_10000B870(&qword_100839A10, &qword_1006D4908);
    sub_1000F09F8(&qword_100839A20, 255, type metadata accessor for UserInputValidationURL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A18);
  }

  return result;
}

unint64_t sub_1000F1BA8()
{
  result = qword_100839A30;
  if (!qword_100839A30)
  {
    sub_10000B870(&qword_100839A28, &unk_1006D4910);
    sub_1000F1C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A30);
  }

  return result;
}

unint64_t sub_1000F1C2C()
{
  result = qword_100839A38;
  if (!qword_100839A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A38);
  }

  return result;
}

unint64_t sub_1000F1C80()
{
  result = qword_100839A60;
  if (!qword_100839A60)
  {
    sub_10000B870(&qword_100839A58, &qword_1006D4920);
    sub_1000F1D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A60);
  }

  return result;
}

unint64_t sub_1000F1D04()
{
  result = qword_100839A68;
  if (!qword_100839A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A68);
  }

  return result;
}

unint64_t sub_1000F1D58()
{
  result = qword_100839A78;
  if (!qword_100839A78)
  {
    sub_10000B870(&qword_100839A70, &qword_1006D4928);
    sub_1000B25AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A78);
  }

  return result;
}

unint64_t sub_1000F1DDC()
{
  result = qword_100839A90;
  if (!qword_100839A90)
  {
    sub_10000B870(&qword_100839A88, &qword_1006D4930);
    sub_1000F09F8(&qword_100839A98, 255, type metadata accessor for EncryptionCertificateInStringFormat);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A90);
  }

  return result;
}

unint64_t sub_1000F1EBC()
{
  result = qword_100839AA0;
  if (!qword_100839AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AA0);
  }

  return result;
}

unint64_t sub_1000F1F10()
{
  result = qword_100839AA8;
  if (!qword_100839AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AA8);
  }

  return result;
}

uint64_t sub_1000F1F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F1FC8(uint64_t a1)
{
  v2 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000F2024()
{
  result = qword_100839AD8;
  if (!qword_100839AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AD8);
  }

  return result;
}

unint64_t sub_1000F2078()
{
  result = qword_100839AE0;
  if (!qword_100839AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AE0);
  }

  return result;
}

unint64_t sub_1000F20CC()
{
  result = qword_100839AE8;
  if (!qword_100839AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AE8);
  }

  return result;
}

unint64_t sub_1000F2120()
{
  result = qword_100839B00;
  if (!qword_100839B00)
  {
    sub_10000B870(&qword_100839AF8, &qword_1006D4960);
    sub_1000F09F8(&qword_100839AF0, 255, &type metadata accessor for HardwareAttestationType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B00);
  }

  return result;
}

unint64_t sub_1000F21D8()
{
  result = qword_100839B10;
  if (!qword_100839B10)
  {
    sub_10000B870(&qword_100839B08, &qword_1006D4968);
    sub_1000F225C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B10);
  }

  return result;
}

unint64_t sub_1000F225C()
{
  result = qword_100839B18;
  if (!qword_100839B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B18);
  }

  return result;
}

unint64_t sub_1000F22B0()
{
  result = qword_100839B28;
  if (!qword_100839B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B28);
  }

  return result;
}

unint64_t sub_1000F2304()
{
  result = qword_100839B38;
  if (!qword_100839B38)
  {
    sub_10000B870(&qword_100839B30, &qword_1006D4978);
    sub_1000F09F8(&unk_100839B40, v1, type metadata accessor for VerifiedClaimField);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B38);
  }

  return result;
}

unint64_t sub_1000F23B8()
{
  result = qword_100839B68;
  if (!qword_100839B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B68);
  }

  return result;
}

unint64_t sub_1000F240C()
{
  result = qword_100839B70;
  if (!qword_100839B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B70);
  }

  return result;
}

unint64_t sub_1000F2460()
{
  result = qword_100839B80;
  if (!qword_100839B80)
  {
    sub_10000B870(&qword_100839AF8, &qword_1006D4960);
    sub_1000F09F8(&qword_100836DC8, 255, &type metadata accessor for HardwareAttestationType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B80);
  }

  return result;
}

unint64_t sub_1000F2518()
{
  result = qword_100839B88;
  if (!qword_100839B88)
  {
    sub_10000B870(&qword_100839B08, &qword_1006D4968);
    sub_1000F259C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B88);
  }

  return result;
}

unint64_t sub_1000F259C()
{
  result = qword_100839B90;
  if (!qword_100839B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B90);
  }

  return result;
}

uint64_t sub_1000F260C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027B9C;

  return sub_1000DE2F4(a1, a2, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_1000F2814()
{
  result = qword_100839C10;
  if (!qword_100839C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839C10);
  }

  return result;
}

uint64_t sub_1000F294C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000F29E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LegacySPWorkflow.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacySPWorkflow.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IQModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IQModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F2DA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000F2E74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000F2F24()
{
  sub_1000BD2F0();
  if (v0 <= 0x3F)
  {
    sub_1000F2FD4(319, &unk_100839CB0, &type metadata accessor for EncryptedMessageEntity);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F2FD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1000F3058(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000F3090(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000F30C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1000F310C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F3198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1051))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 976);
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

uint64_t sub_1000F31F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 1050) = 0;
    *(result + 1048) = 0;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1051) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1051) = 0;
    }

    if (a2)
    {
      *(result + 976) = a2;
    }
  }

  return result;
}

unint64_t sub_1000F3378()
{
  result = qword_100839CE8;
  if (!qword_100839CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839CE8);
  }

  return result;
}

unint64_t sub_1000F33D0()
{
  result = qword_100839CF0;
  if (!qword_100839CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839CF0);
  }

  return result;
}

unint64_t sub_1000F3428()
{
  result = qword_100839CF8;
  if (!qword_100839CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839CF8);
  }

  return result;
}

unint64_t sub_1000F3480()
{
  result = qword_100839D00;
  if (!qword_100839D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D00);
  }

  return result;
}

unint64_t sub_1000F34D8()
{
  result = qword_100839D08;
  if (!qword_100839D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D08);
  }

  return result;
}

unint64_t sub_1000F3530()
{
  result = qword_100839D10;
  if (!qword_100839D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D10);
  }

  return result;
}

unint64_t sub_1000F3588()
{
  result = qword_100839D18;
  if (!qword_100839D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D18);
  }

  return result;
}

unint64_t sub_1000F35E0()
{
  result = qword_100839D20;
  if (!qword_100839D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D20);
  }

  return result;
}

unint64_t sub_1000F3638()
{
  result = qword_100839D28;
  if (!qword_100839D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D28);
  }

  return result;
}

unint64_t sub_1000F3690()
{
  result = qword_100839D30;
  if (!qword_100839D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D30);
  }

  return result;
}

unint64_t sub_1000F36E8()
{
  result = qword_100839D38;
  if (!qword_100839D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D38);
  }

  return result;
}

unint64_t sub_1000F3740()
{
  result = qword_100839D40;
  if (!qword_100839D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D40);
  }

  return result;
}

unint64_t sub_1000F3798()
{
  result = qword_100839D48;
  if (!qword_100839D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D48);
  }

  return result;
}

unint64_t sub_1000F37F0()
{
  result = qword_100839D50;
  if (!qword_100839D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D50);
  }

  return result;
}

unint64_t sub_1000F3848()
{
  result = qword_100839D58;
  if (!qword_100839D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D58);
  }

  return result;
}

unint64_t sub_1000F38A0()
{
  result = qword_100839D60;
  if (!qword_100839D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D60);
  }

  return result;
}

unint64_t sub_1000F38F8()
{
  result = qword_100839D68;
  if (!qword_100839D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D68);
  }

  return result;
}

unint64_t sub_1000F3950()
{
  result = qword_100839D70;
  if (!qword_100839D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D70);
  }

  return result;
}

unint64_t sub_1000F39A8()
{
  result = qword_100839D78;
  if (!qword_100839D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D78);
  }

  return result;
}

unint64_t sub_1000F3A00()
{
  result = qword_100839D80;
  if (!qword_100839D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D80);
  }

  return result;
}

unint64_t sub_1000F3A58()
{
  result = qword_100839D88;
  if (!qword_100839D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D88);
  }

  return result;
}

unint64_t sub_1000F3AB0()
{
  result = qword_100839D90;
  if (!qword_100839D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D90);
  }

  return result;
}

unint64_t sub_1000F3B08()
{
  result = qword_100839D98;
  if (!qword_100839D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D98);
  }

  return result;
}

unint64_t sub_1000F3B60()
{
  result = qword_100839DA0;
  if (!qword_100839DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DA0);
  }

  return result;
}

unint64_t sub_1000F3BB8()
{
  result = qword_100839DA8;
  if (!qword_100839DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DA8);
  }

  return result;
}

unint64_t sub_1000F3C10()
{
  result = qword_100839DB0;
  if (!qword_100839DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DB0);
  }

  return result;
}

unint64_t sub_1000F3C68()
{
  result = qword_100839DB8;
  if (!qword_100839DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DB8);
  }

  return result;
}

unint64_t sub_1000F3CC0()
{
  result = qword_100839DC0;
  if (!qword_100839DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DC0);
  }

  return result;
}

unint64_t sub_1000F3D18()
{
  result = qword_100839DC8;
  if (!qword_100839DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DC8);
  }

  return result;
}

unint64_t sub_1000F3D70()
{
  result = qword_100839DD0;
  if (!qword_100839DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DD0);
  }

  return result;
}

unint64_t sub_1000F3DC8()
{
  result = qword_100839DD8;
  if (!qword_100839DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DD8);
  }

  return result;
}

unint64_t sub_1000F3E20()
{
  result = qword_100839DE0;
  if (!qword_100839DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DE0);
  }

  return result;
}

unint64_t sub_1000F3E78()
{
  result = qword_100839DE8;
  if (!qword_100839DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DE8);
  }

  return result;
}

unint64_t sub_1000F3ED0()
{
  result = qword_100839DF0;
  if (!qword_100839DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DF0);
  }

  return result;
}

unint64_t sub_1000F3F28()
{
  result = qword_100839DF8;
  if (!qword_100839DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DF8);
  }

  return result;
}

unint64_t sub_1000F3F80()
{
  result = qword_100839E00;
  if (!qword_100839E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E00);
  }

  return result;
}

unint64_t sub_1000F3FD4()
{
  result = qword_100839E10;
  if (!qword_100839E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E10);
  }

  return result;
}

unint64_t sub_1000F4028()
{
  result = qword_100839E28;
  if (!qword_100839E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E28);
  }

  return result;
}

unint64_t sub_1000F407C()
{
  result = qword_100839E30;
  if (!qword_100839E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E30);
  }

  return result;
}

unint64_t sub_1000F40D0()
{
  result = qword_100839E38;
  if (!qword_100839E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E38);
  }

  return result;
}

unint64_t sub_1000F4124()
{
  result = qword_100839E40;
  if (!qword_100839E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E40);
  }

  return result;
}

unint64_t sub_1000F4178()
{
  result = qword_100839E50;
  if (!qword_100839E50)
  {
    sub_10000B870(&qword_100839E48, &qword_1006D5F80);
    sub_1000F41FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E50);
  }

  return result;
}

unint64_t sub_1000F41FC()
{
  result = qword_100839E58;
  if (!qword_100839E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E58);
  }

  return result;
}

unint64_t sub_1000F4250()
{
  result = qword_100839E68;
  if (!qword_100839E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E68);
  }

  return result;
}

unint64_t sub_1000F42A4()
{
  result = qword_100839E70;
  if (!qword_100839E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E70);
  }

  return result;
}

unint64_t sub_1000F42F8()
{
  result = qword_100839E78;
  if (!qword_100839E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E78);
  }

  return result;
}

unint64_t sub_1000F434C()
{
  result = qword_100839E80;
  if (!qword_100839E80)
  {
    sub_10000B870(&qword_100839E48, &qword_1006D5F80);
    sub_1000F43D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E80);
  }

  return result;
}

unint64_t sub_1000F43D0()
{
  result = qword_100839E88;
  if (!qword_100839E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E88);
  }

  return result;
}

unint64_t sub_1000F4424()
{
  result = qword_100839E98;
  if (!qword_100839E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E98);
  }

  return result;
}

unint64_t sub_1000F4478()
{
  result = qword_100839EA0;
  if (!qword_100839EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EA0);
  }

  return result;
}

unint64_t sub_1000F44FC()
{
  result = qword_100839EB0;
  if (!qword_100839EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EB0);
  }

  return result;
}

unint64_t sub_1000F4550()
{
  result = qword_100839EC0;
  if (!qword_100839EC0)
  {
    sub_10000B870(&qword_100839EB8, &qword_1006D5FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EC0);
  }

  return result;
}

unint64_t sub_1000F45CC()
{
  result = qword_100839EC8;
  if (!qword_100839EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EC8);
  }

  return result;
}

unint64_t sub_1000F4620()
{
  result = qword_100839ED8;
  if (!qword_100839ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839ED8);
  }

  return result;
}

unint64_t sub_1000F46AC()
{
  result = qword_100839EE8;
  if (!qword_100839EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EE8);
  }

  return result;
}

unint64_t sub_1000F4700()
{
  result = qword_100839EF8;
  if (!qword_100839EF8)
  {
    sub_10000B870(&qword_100839EB8, &qword_1006D5FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EF8);
  }

  return result;
}

unint64_t sub_1000F477C()
{
  result = qword_100839F00;
  if (!qword_100839F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F00);
  }

  return result;
}

unint64_t sub_1000F47D0()
{
  result = qword_100839F18;
  if (!qword_100839F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F18);
  }

  return result;
}

uint64_t sub_1000F4824(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1000F4834()
{
  result = qword_100839F20;
  if (!qword_100839F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F20);
  }

  return result;
}

unint64_t sub_1000F4888()
{
  result = qword_100839F28;
  if (!qword_100839F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F28);
  }

  return result;
}

unint64_t sub_1000F48DC()
{
  result = qword_100839F30;
  if (!qword_100839F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F30);
  }

  return result;
}

unint64_t sub_1000F4930()
{
  result = qword_100839F40;
  if (!qword_100839F40)
  {
    sub_10000B870(&qword_100839F38, &qword_1006D5FD0);
    sub_1000F49B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F40);
  }

  return result;
}

unint64_t sub_1000F49B4()
{
  result = qword_100839F48;
  if (!qword_100839F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F48);
  }

  return result;
}

unint64_t sub_1000F4A08()
{
  result = qword_100839F58;
  if (!qword_100839F58)
  {
    sub_10000B870(&qword_100839F50, &qword_1006D5FD8);
    sub_1000F4A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F58);
  }

  return result;
}

unint64_t sub_1000F4A8C()
{
  result = qword_100839F60;
  if (!qword_100839F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F60);
  }

  return result;
}

unint64_t sub_1000F4AE0()
{
  result = qword_100839F68;
  if (!qword_100839F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F68);
  }

  return result;
}

unint64_t sub_1000F4B9C()
{
  result = qword_100839F78;
  if (!qword_100839F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F78);
  }

  return result;
}

unint64_t sub_1000F4BF0()
{
  result = qword_100839F80;
  if (!qword_100839F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F80);
  }

  return result;
}

unint64_t sub_1000F4C44()
{
  result = qword_100839F88;
  if (!qword_100839F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F88);
  }

  return result;
}

unint64_t sub_1000F4C98()
{
  result = qword_100839F90;
  if (!qword_100839F90)
  {
    sub_10000B870(&qword_100839F38, &qword_1006D5FD0);
    sub_1000F4D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F90);
  }

  return result;
}

unint64_t sub_1000F4D1C()
{
  result = qword_100839F98;
  if (!qword_100839F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F98);
  }

  return result;
}

unint64_t sub_1000F4D70()
{
  result = qword_100839FA0;
  if (!qword_100839FA0)
  {
    sub_10000B870(&qword_100839F50, &qword_1006D5FD8);
    sub_1000F4DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FA0);
  }

  return result;
}

unint64_t sub_1000F4DF4()
{
  result = qword_100839FA8;
  if (!qword_100839FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FA8);
  }

  return result;
}

unint64_t sub_1000F4E48()
{
  result = qword_100839FB0;
  if (!qword_100839FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FB0);
  }

  return result;
}

uint64_t sub_1000F4E9C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000F4EF0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for IQCriteria.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IQCriteria.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F50E8(uint64_t a1, int a2)
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

uint64_t sub_1000F5134(uint64_t result, int a2, int a3)
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

uint64_t sub_1000F51C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000F520C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IQPassportProperties(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IQPassportProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IQPassportProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000F5338(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F535C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000F53A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000F5408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000F545C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for IQBoolProperties(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IQBoolProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IQBoolProperties(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000F5584(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000F5598(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000F55F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000F5660()
{
  result = qword_100839FC8;
  if (!qword_100839FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FC8);
  }

  return result;
}

unint64_t sub_1000F56B8()
{
  result = qword_100839FD0;
  if (!qword_100839FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FD0);
  }

  return result;
}

unint64_t sub_1000F5710()
{
  result = qword_100839FD8;
  if (!qword_100839FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FD8);
  }

  return result;
}

unint64_t sub_1000F5768()
{
  result = qword_100839FE0;
  if (!qword_100839FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FE0);
  }

  return result;
}

unint64_t sub_1000F57C0()
{
  result = qword_100839FE8;
  if (!qword_100839FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FE8);
  }

  return result;
}

unint64_t sub_1000F5818()
{
  result = qword_100839FF0;
  if (!qword_100839FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FF0);
  }

  return result;
}

unint64_t sub_1000F5870()
{
  result = qword_100839FF8;
  if (!qword_100839FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FF8);
  }

  return result;
}

unint64_t sub_1000F58C8()
{
  result = qword_10083A000;
  if (!qword_10083A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A000);
  }

  return result;
}

unint64_t sub_1000F5920()
{
  result = qword_10083A008;
  if (!qword_10083A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A008);
  }

  return result;
}

unint64_t sub_1000F5978()
{
  result = qword_10083A010;
  if (!qword_10083A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A010);
  }

  return result;
}

unint64_t sub_1000F59D0()
{
  result = qword_10083A018;
  if (!qword_10083A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A018);
  }

  return result;
}

unint64_t sub_1000F5A28()
{
  result = qword_10083A020;
  if (!qword_10083A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A020);
  }

  return result;
}

unint64_t sub_1000F5A80()
{
  result = qword_10083A028;
  if (!qword_10083A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A028);
  }

  return result;
}

unint64_t sub_1000F5AD8()
{
  result = qword_10083A030;
  if (!qword_10083A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A030);
  }

  return result;
}

unint64_t sub_1000F5B30()
{
  result = qword_10083A038;
  if (!qword_10083A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A038);
  }

  return result;
}

unint64_t sub_1000F5B88()
{
  result = qword_10083A040;
  if (!qword_10083A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A040);
  }

  return result;
}

unint64_t sub_1000F5BE0()
{
  result = qword_10083A048;
  if (!qword_10083A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A048);
  }

  return result;
}

unint64_t sub_1000F5C38()
{
  result = qword_10083A050;
  if (!qword_10083A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A050);
  }

  return result;
}

unint64_t sub_1000F5C90()
{
  result = qword_10083A058;
  if (!qword_10083A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A058);
  }

  return result;
}

unint64_t sub_1000F5CE4()
{
  result = qword_10083A068;
  if (!qword_10083A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A068);
  }

  return result;
}

unint64_t sub_1000F5D38()
{
  result = qword_10083A078;
  if (!qword_10083A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A078);
  }

  return result;
}

unint64_t sub_1000F5D8C()
{
  result = qword_10083A080;
  if (!qword_10083A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A080);
  }

  return result;
}