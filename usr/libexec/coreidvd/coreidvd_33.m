void sub_100345390()
{
  memcpy((v0 + 504), (v0 + 48), 0x1A1uLL);
  sub_1000AA624(v0 + 504, v0 + 928);
  sub_1000F2758(v0 + 16);
  *(v0 + 1752) = *(v0 + 792);
  sub_10000BBC4(v0 + 1752, v0 + 1768, &qword_10084A1D0, &qword_1006DB410);
  sub_1000AA65C(v0 + 504);
  sub_10000BB78((v0 + 1632));
  if (!*(v0 + 1760))
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1896);
  v49 = *(v0 + 1752);
  v50 = *(v0 + 1760);
  v4._countAndFlagsBits = 47;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._object = 0x800000010070F300;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v5);
  URL.init(string:)();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000BE18(*(v0 + 1896), &unk_100844540, &unk_1006BFBC0);
LABEL_4:
    v6 = *(v0 + 1952);
    v7 = *(v0 + 1944);
    v36 = *(v0 + 1936);
    v37 = *(v0 + 1928);
    v38 = *(v0 + 1904);
    v39 = *(v0 + 1896);
    v40 = *(v0 + 1888);
    v41 = *(v0 + 1880);
    v42 = *(v0 + 1856);
    v43 = *(v0 + 1848);
    v46 = *(v0 + 1840);
    (*(*(v0 + 1808) + 104))(*(v0 + 1816), enum case for DIPError.Code.vicalWebServiceMissing(_:), *(v0 + 1800));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = *(v0 + 8);
    goto LABEL_5;
  }

  v44 = *(v0 + 1960);
  v47 = *(v0 + 1984);
  v9 = *(v0 + 1936);
  v10 = *(v0 + 1928);
  v11 = *(v0 + 1920);
  v12 = *(v0 + 1912);
  v13 = *(v0 + 1856);
  v14 = *(v0 + 1848);
  v15 = *(v0 + 1840);
  v16 = *(v0 + 1832);
  v17 = *(v0 + 1824);
  (*(v11 + 32))(v10, *(v0 + 1896), v12);
  (*(v11 + 16))(v9, v10, v12);
  v18 = type metadata accessor for COSESignatureValidator();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  *(v0 + 1696) = type metadata accessor for DateProvider();
  *(v0 + 1704) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 1672));
  DateProvider.init()();
  DIPOIDVerifier.init(dateProvider:)();
  (*(v16 + 16))(v15, v14, v17);
  v19 = sub_10034B7FC(v13, v15);
  (*(v16 + 8))(v14, v17);
  v20 = type metadata accessor for VICALWebService();
  v21 = sub_10034BCA0(v9, v19, objc_allocWithZone(v20));
  *(swift_task_alloc() + 16) = v21;
  os_unfair_lock_lock((v44 + 56));
  sub_10034D22C((v44 + 16));
  os_unfair_lock_unlock((v44 + 56));
  if (v47)
  {
    return;
  }

  v22 = *(v0 + 1928);
  v23 = *(v0 + 1920);
  v24 = *(v0 + 1912);
  v25 = *(v0 + 1784);

  v25[3] = v20;
  v25[4] = &off_1008181E8;
  *v25 = v21;
  (*(v23 + 8))(v22, v24);
  v26 = *(v0 + 1952);
  v27 = *(v0 + 1944);
  v28 = *(v0 + 1936);
  v29 = *(v0 + 1928);
  v30 = *(v0 + 1904);
  v31 = *(v0 + 1896);
  v32 = *(v0 + 1888);
  v33 = *(v0 + 1880);
  v34 = *(v0 + 1856);
  v35 = *(v0 + 1848);
  v45 = *(v0 + 1840);
  v48 = *(v0 + 1816);

  v8 = *(v0 + 8);
LABEL_5:

  v8();
}

uint64_t sub_10034595C()
{
  v1 = *(v0 + 1984);

  return _swift_task_switch(sub_1003459C4, 0, 0);
}

uint64_t sub_1003459C4()
{
  sub_10000BB78(v0 + 204);
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[242];
  v4 = v0[241];
  v7 = v0[238];
  v8 = v0[237];
  v9 = v0[236];
  v10 = v0[235];
  v11 = v0[232];
  v12 = v0[231];
  v13 = v0[230];
  (*(v0[226] + 104))(v0[227], enum case for DIPError.Code.vicalWebServiceMissing(_:), v0[225]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100345BEC()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100345CD4;

  return sub_100345F94();
}

uint64_t sub_100345CD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_100345E74;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_100345DFC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100345DFC()
{
  v1 = *(v0[7] + 16);

  v2 = v0[4];

  v3 = v0[1];

  return v3(v1 != 0);
}

uint64_t sub_100345E74()
{
  v1 = v0[4];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderIssuerRootStorage areTrustedSystemRootsPresent encountered error while fetching system roots, returning false.", v9, 2u);
  }

  (*(v7 + 8))(v6, v8);
  v10 = v0[4];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_100345F94()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for ISO18013KnownDocTypes();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = type metadata accessor for VICALCertificateInfo();
  v1[14] = v11;
  v12 = *(v11 - 8);
  v1[15] = v12;
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();
  v14 = type metadata accessor for VICALDocument();
  v1[17] = v14;
  v15 = *(v14 - 8);
  v1[18] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v1[19] = v17;
  v18 = swift_task_alloc();
  v1[20] = v18;
  *v18 = v1;
  v18[1] = sub_100346214;

  return sub_100346D68(v17);
}

uint64_t sub_100346214()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100346B8C;
  }

  else
  {
    v3 = sub_100346328;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100346328()
{
  v104 = v0;
  v2 = v0[19];
  v3 = VICALDocument.certificateInfos.getter();
  v96 = *(v3 + 16);
  v98 = v0;
  if (v96)
  {
    v4 = 0;
    v90 = v0[15];
    v94 = (v90 + 8);
    v5 = v0[21];
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v91 = v6;
      if (v4 >= *(v3 + 16))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v7 = v0[16];
      v8 = v0[14];
      v9 = v0[2];
      v10 = v0;
      v11 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v12 = *(v90 + 72);
      v13 = *(v90 + 16);
      v13(v7, v3 + v11 + v12 * v4, v8);
      sub_100349138(v7, v9, &v101);
      if (v5)
      {
        v68 = v10[16];
        v69 = v10[14];

        (*v94)(v68, v69);
      }

      ++v4;
      v14 = *v94;
      (*v94)(v10[16], v10[14]);
      v1 = v103;
      if (!v103)
      {
        sub_10034D004(v101, v102, 0);
        if (v4 == v96)
        {
          v19 = 0;
          v0 = v98;
LABEL_20:
          v6 = v91;
          goto LABEL_21;
        }

        v21 = v3 + v11 + v12 * v4;
        v0 = v98;
        while (1)
        {
          if (v4 >= *(v3 + 16))
          {
            goto LABEL_49;
          }

          v22 = v98[16];
          v23 = v98[2];
          v13(v22, v21, v98[14]);
          sub_100349138(v22, v23, &v101);
          v14(v98[16], v98[14]);
          v1 = v103;
          if (v103)
          {
            break;
          }

          ++v4;
          sub_10034D004(v101, v102, 0);
          v21 += v12;
          if (v96 == v4)
          {
            v19 = 0;
            goto LABEL_20;
          }
        }

        ++v4;
      }

      v15 = v101;
      v16 = v102;
      v6 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1003C6134(0, *(v91 + 2) + 1, 1, v91);
      }

      v18 = *(v6 + 2);
      v17 = *(v6 + 3);
      if (v18 >= v17 >> 1)
      {
        v6 = sub_1003C6134((v17 > 1), v18 + 1, 1, v6);
      }

      v5 = 0;
      v19 = 0;
      *(v6 + 2) = v18 + 1;
      v20 = &v6[24 * v18];
      *(v20 + 4) = v15;
      *(v20 + 5) = v16;
      *(v20 + 6) = v1;
      v0 = v98;
      if (v4 == v96)
      {
        goto LABEL_21;
      }
    }
  }

  v19 = v0[21];
  v6 = _swiftEmptyArrayStorage;
LABEL_21:
  v24 = v0[2];

  v25 = sub_100697620(v6);

  v100 = v25;
  v26 = *(v24 + 16);
  v27 = UserDefaultsConfiguration.userDefaults.getter();
  static DaemonDefaultsKeys.additionalTrustedIACARootCertificates.getter();
  v28 = String._bridgeToObjectiveC()();

  v29 = [v27 stringArrayForKey:v28];

  if (v29)
  {
    v30 = v0[13];
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    defaultLogger()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = *(v31 + 16);

      _os_log_impl(&_mh_execute_header, v32, v33, "MobileDocumentReaderIssuerRootStorage found additional %ld IACA roots in internal settings. Appending to list of trusted roots.", v34, 0xCu);
    }

    else
    {
    }

    v35 = *(v0[10] + 8);
    v35(v0[13], v0[9]);
    v1 = decodeCertificateChain(fromBase64DER:)();

    if (v19)
    {
      v36 = v0[11];
      defaultLogger()();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[11];
      v41 = v0[9];
      if (v39)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "MobileDocumentReaderIssuerRootStorage encountered error while decoding internal settings additional trusted roots. Ignoring and continuing.", v42, 2u);
      }

      v35(v40, v41);
    }

    else
    {
      if (v1 >> 62)
      {
        goto LABEL_52;
      }

      for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v44 = 0;
        v88 = v1;
        v89 = v1 & 0xC000000000000001;
        v84 = v1 + 32;
        v85 = v1 & 0xFFFFFFFFFFFFFF8;
        v86 = v0[7];
        v87 = i;
        while (1)
        {
          if (v89)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v44 >= *(v85 + 16))
            {
              goto LABEL_51;
            }

            v51 = *(v84 + 8 * v44);
          }

          v52 = v51;
          if (__OFADD__(v44++, 1))
          {
            break;
          }

          v54 = static ISO18013KnownDocTypes.allCases.getter();
          v55 = *(v54 + 16);
          if (v55)
          {
            v92 = v52;
            v93 = v44;
            v101 = _swiftEmptyArrayStorage;
            sub_100172D4C(0, v55, 0);
            v56 = v101;
            v57 = v54 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
            v58 = *(v86 + 72);
            v59 = *(v86 + 16);
            do
            {
              v60 = v98[8];
              v61 = v98[6];
              v59(v60, v57, v61);
              v62 = ISO18013KnownDocTypes.rawValue.getter();
              v64 = v63;
              (*(v86 + 8))(v60, v61);
              v101 = v56;
              v66 = v56[2];
              v65 = v56[3];
              if (v66 >= v65 >> 1)
              {
                sub_100172D4C((v65 > 1), v66 + 1, 1);
                v56 = v101;
              }

              v56[2] = v66 + 1;
              v67 = &v56[2 * v66];
              v67[4] = v62;
              v67[5] = v64;
              v57 += v58;
              --v55;
            }

            while (v55);

            v0 = v98;
            i = v87;
            v1 = v88;
            v52 = v92;
            v44 = v93;
          }

          else
          {

            v56 = _swiftEmptyArrayStorage;
          }

          v45 = sub_1006973D4(v56);

          v46 = v52;
          v47 = SecCertificateCopyData(v46);
          v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          sub_100151A58(&v101, v48, v50, v45);
          sub_10000B90C(v101, v102);

          if (v44 == i)
          {
            goto LABEL_53;
          }
        }

LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        ;
      }

LABEL_53:
    }
  }

  v71 = v0[12];
  defaultLogger()();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "MobileDocumentReaderIssuerRootStorage returning trusted roots.", v74, 2u);
  }

  v76 = v0[18];
  v75 = v0[19];
  v78 = v0[16];
  v77 = v0[17];
  v80 = v0[12];
  v79 = v0[13];
  v81 = v0[10];
  v82 = v0[9];
  v95 = v0[11];
  v97 = v0[8];
  v99 = v0[5];

  (*(v81 + 8))(v80, v82);
  (*(v76 + 8))(v75, v77);

  v83 = v0[1];

  return v83(v100);
}

uint64_t sub_100346B8C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[11];
  v9 = v0[8];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.vicalMissing(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100346D68(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for COSE_Sign1();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = type metadata accessor for CharacterSet();
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v15 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v16 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v17 = type metadata accessor for URL();
  v2[26] = v17;
  v18 = *(v17 - 8);
  v2[27] = v18;
  v19 = *(v18 + 64) + 15;
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_100347008, 0, 0);
}

uint64_t sub_100347008()
{
  v1 = *(v0[10] + 16);
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableVICALFetch.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    sub_10034CE68();
    v5 = static NSBundle.internalSettings.getter();
    if (v5)
    {
      v6 = v5;
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 URLForResource:v7 withExtension:v8];

      if (v9)
      {
        v10 = v0[24];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      v15 = v0[26];
      v16 = v0[27];
      v18 = v0[24];
      v17 = v0[25];
      (*(v16 + 56))(v18, v11, 1, v15);
      sub_10034CEB4(v18, v17);
      if ((*(v16 + 48))(v17, 1, v15) != 1)
      {
        v22 = v0[23];
        (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
        static String.Encoding.utf8.getter();
        v23 = String.init(contentsOf:encoding:)();
        v25 = v0[21];
        v24 = v0[22];
        v26 = v0[20];
        v0[7] = v23;
        v0[8] = v27;
        static CharacterSet.whitespacesAndNewlines.getter();
        sub_10001F298();
        StringProtocol.trimmingCharacters(in:)();
        (*(v25 + 8))(v24, v26);

        v28 = Data.init(base16Encoded:)();
        if (v29 >> 60 == 15)
        {
          v30 = v0[27];
          v74 = v0[26];
          v78 = v0[28];
          (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.vicalMissing(_:), v0[11]);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (*(v30 + 8))(v78, v74);
        }

        else
        {
          v35 = v28;
          v36 = v29;
          v37 = v0[19];
          defaultLogger()();
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "MobileDocumentReaderIssuerRootStorage storedSignedVICALDocument disable VICAL fetch call flag is enabled, returning hardcoded VICAL data.", v40, 2u);
          }

          v42 = v0[18];
          v41 = v0[19];
          v44 = v0[16];
          v43 = v0[17];
          v45 = v0[14];

          (*(v42 + 8))(v41, v43);
          v46 = type metadata accessor for CBORDecoder();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          swift_allocObject();
          CBORDecoder.init()();
          sub_10034D0CC(&qword_1008418A0, &type metadata accessor for COSE_Sign1);
          dispatch thunk of CBORDecoder.decode<A>(_:from:)();
          v49 = v0[16];
          v50 = COSE_Sign1.payload.getter();
          if (v51 >> 60 != 15)
          {
            v54 = v0[9];
            v55 = v50;
            v56 = v51;
            type metadata accessor for VICALDocument();
            sub_10034D0CC(&qword_1008418A8, &type metadata accessor for VICALDocument);
            dispatch thunk of CBORDecoder.decode<A>(_:from:)();
            v57 = v0[27];
            v77 = v0[28];
            v73 = v0[26];
            v58 = v0[15];
            v59 = v0[16];
            v60 = v0[14];
            sub_10000BD94(v55, v56);

            sub_10000BD94(v35, v36);
            (*(v58 + 8))(v59, v60);
            (*(v57 + 8))(v77, v73);
            v61 = v0[28];
            v62 = v0[24];
            v63 = v0[25];
            v65 = v0[22];
            v64 = v0[23];
            v66 = v0[19];
            v67 = v0[16];
            v68 = v0[13];

            v34 = v0[1];
            goto LABEL_15;
          }

          v52 = v0[27];
          v76 = v0[26];
          v80 = v0[28];
          v53 = v0[15];
          v70 = v0[14];
          v72 = v0[16];
          (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.vicalMissing(_:), v0[11]);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          sub_10000BD94(v35, v36);
          (*(v53 + 8))(v72, v70);
          (*(v52 + 8))(v80, v76);
        }

LABEL_14:
        v31 = v0[28];
        v32 = v0[24];
        v33 = v0[25];
        v69 = v0[23];
        v71 = v0[22];
        v75 = v0[19];
        v79 = v0[16];
        (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.vicalMissing(_:), v0[11]);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v34 = v0[1];
LABEL_15:

        return v34();
      }
    }

    else
    {
      (*(v0[27] + 56))(v0[25], 1, 1, v0[26]);
    }

    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[11];
    sub_10000BE18(v0[25], &unk_100844540, &unk_1006BFBC0);
    (*(v20 + 104))(v19, enum case for DIPError.Code.vicalMissing(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_14;
  }

  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_100347B00;
  v13 = v0[10];

  return sub_1003447E4((v0 + 2));
}

uint64_t sub_100347B00()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10034807C;
  }

  else
  {
    v3 = sub_100347C14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100347C14()
{
  v1 = *sub_10000BA08(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_100347CB8;
  v3 = v0[9];

  return sub_10060D040(v3);
}

uint64_t sub_100347CB8()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_100347E9C;
  }

  else
  {
    v3 = sub_100347DCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100347DCC()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100347E9C()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v7 = v0[23];
  v8 = v0[22];
  v9 = v0[19];
  v10 = v0[16];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.vicalMissing(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10034807C()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v7 = v0[23];
  v8 = v0[22];
  v9 = v0[19];
  v10 = v0[16];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.vicalMissing(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t *sub_100348254(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_100007224(&qword_100841858, &qword_1006DE328);
  v6 = swift_allocObject();
  v6[14]._os_unfair_lock_opaque = 0;
  sub_10000BBC4(v8, &v6[4], &qword_100841860, &qword_1006DE330);

  sub_10000BE18(v8, &qword_100841860, &qword_1006DE330);
  v2[3] = v6;
  os_unfair_lock_lock(v6 + 14);
  sub_10034B170(&v6[4]);
  os_unfair_lock_unlock(v6 + 14);

  v2[2] = a2;
  sub_10000BE18(a1, &qword_100841868, &qword_1006DE338);
  return v2;
}

double sub_1003483C0(uint64_t a1, uint64_t a2)
{
  sub_10000BE18(a1, &qword_100841860, &qword_1006DE330);
  sub_10000BBC4(a2, v10, &qword_100841868, &qword_1006DE338);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    v6 = sub_10000BA08(v10, v11);
    *(&v14 + 1) = v4;
    v15 = v5;
    v7 = sub_100032DBC(&v13);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
    sub_10000BB78(v10);
  }

  else
  {
    sub_10000BE18(v10, &qword_100841868, &qword_1006DE338);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  result = *&v13;
  v9 = v14;
  *a1 = v13;
  *(a1 + 16) = v9;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_1003484CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentRequestType.Storage();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = type metadata accessor for MobileDocumentRequestType();
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100348708, 0, 0);
}

uint64_t sub_100348708()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[2];
  MobileDocumentReaderRequest.documentRequestType.getter();
  MobileDocumentRequestType.storage.getter();
  (*(v2 + 8))(v1, v3);
  LODWORD(v7) = (*(v6 + 88))(v4, v5);
  LODWORD(v1) = enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:);
  (*(v6 + 8))(v4, v5);
  if (v7 == v1)
  {
    v8 = v0[13];
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "MobileDocumentReaderIssuerRootStorage raw data request - no validation required. Returning an empty list of trusted issuer root certificates.", v11, 2u);
    }

    v12 = v0[13];
    v13 = v0[10];
    v14 = v0[11];

    (*(v14 + 8))(v12, v13);
    v15 = v0[19];
    v16 = v0[16];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[9];
    v20 = v0[6];

    v21 = v0[1];

    return v21(&_swiftEmptySetSingleton);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[20] = v23;
    *v23 = v0;
    v23[1] = sub_100348958;
    v24 = v0[3];

    return sub_100345F94();
  }
}

uint64_t sub_100348958(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_100348D7C;
  }

  else
  {
    v5 = sub_100348A6C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100348A6C()
{
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[19];
    v3 = v0[16];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[9];
    v7 = v0[6];

    v8 = v0[1];

    return v8(v1);
  }

  else
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    v13 = v0[21];

    v20 = *(v11 + 104);
    v20(v10, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = v0[19];
    v15 = v0[16];
    v18 = v0[13];
    v19 = v0[12];
    v16 = v0[6];
    v20(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100348D7C()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderIssuerRootStorage there was an issue fetching the trusted roots. Throwing session expired error to indicate the calling app must call prepare again.", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v23 = v0[22];
  v9 = v0[8];
  v20 = v0[7];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];

  (*(v5 + 8))(v6, v8);
  type metadata accessor for DaemonAnalytics();
  v13 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.vicalMissing(_:);
  v14 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
  (*(*(v14 - 8) + 104))(v10, v13, v14);
  (*(v11 + 104))(v10, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v12);
  static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
  (*(v11 + 8))(v10, v12);
  v15 = *(v9 + 104);
  v15(v7, enum case for DIPError.Code.documentReaderSessionExpired(_:), v20);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v16 = v0[19];
  v17 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v24 = v0[6];
  v15(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

void sub_100349138(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v78 = a3;
  v79 = a2;
  v5 = type metadata accessor for BigUIntCBOR();
  v76 = *(v5 - 1);
  v77 = v5;
  v6 = *(v76 + 64);
  __chkstk_darwin(v5);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for VICALCertificateInfo();
  v80 = *(v83 - 8);
  v8 = *(v80 + 64);
  __chkstk_darwin(v83);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v81 = *(v11 - 8);
  v12 = *(v81 + 64);
  __chkstk_darwin(v11);
  v82 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ISO18013KnownDocTypes();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = VICALCertificateInfo.certificate.getter();
  v21 = v20;
  v22 = decodeCertificate(fromDER:)();
  if (v3)
  {
    v79 = v11;
    sub_10000B90C(v19, v21);
    defaultLogger()();
    v23 = v80;
    (*(v80 + 16))(v10, a1, v83);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v84 = v73;
      *v26 = 136315138;
      v27 = v75;
      VICALCertificateInfo.serialNumber.getter();
      v28 = BigUIntCBOR.value.getter();
      v74 = v3;
      v30 = v29;
      (*(v76 + 8))(v27, v77);
      v31 = Data.base64EncodedString(options:)(0);
      sub_10000B90C(v28, v30);
      (*(v23 + 8))(v10, v83);
      v32 = sub_100141FE4(v31._countAndFlagsBits, v31._object, &v84);
      v33 = v78;

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "MobileDocumentReaderIssuerRootStorage could not parse certificate with serial number %s", v26, 0xCu);
      sub_10000BB78(v73);

      (*(v81 + 8))(v82, v79);
    }

    else
    {

      (*(v23 + 8))(v10, v83);
      (*(v81 + 8))(v82, v79);
      v33 = v78;
    }

    *v33 = 0;
    v33[1] = 0;
    v33[2] = 0;
  }

  else
  {
    v82 = v18;
    v83 = v14;
    v34 = v15;
    v77 = v22;
    sub_10000B90C(v19, v21);
    v35 = *(v79 + 16);
    v36 = UserDefaultsConfiguration.userDefaults.getter();
    v37._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.filterVICALByDocumentType.getter();
    v38 = NSUserDefaults.internalBool(forKey:)(v37);

    if (v38)
    {
      v39 = VICALCertificateInfo.docType.getter();
      v40 = sub_1006973D4(v39);

      v41 = v77;
      v42 = SecCertificateCopyData(v77);
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v78;
      v45 = v43;
      v47 = v46;

      *v44 = v45;
      v44[1] = v47;
      v44[2] = v40;
    }

    else
    {
      v48 = static ISO18013KnownDocTypes.allCases.getter();
      v49 = *(v48 + 16);
      if (v49)
      {
        v74 = 0;
        v84 = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v49, 0);
        v50 = v84;
        v51 = v34 + 16;
        v52 = *(v34 + 16);
        v53 = *(v34 + 80);
        v76 = v48;
        v54 = v48 + ((v53 + 32) & ~v53);
        v80 = *(v34 + 72);
        v81 = v52;
        v79 = v34 + 8;
        v56 = v82;
        v55 = v83;
        do
        {
          v57 = v51;
          (v81)(v56, v54, v55);
          v58 = ISO18013KnownDocTypes.rawValue.getter();
          v55 = v83;
          v59 = v58;
          v61 = v60;
          (*v79)(v56, v83);
          v84 = v50;
          v63 = v50[2];
          v62 = v50[3];
          if (v63 >= v62 >> 1)
          {
            sub_100172D4C((v62 > 1), v63 + 1, 1);
            v55 = v83;
            v50 = v84;
          }

          v50[2] = v63 + 1;
          v64 = &v50[2 * v63];
          v64[4] = v59;
          v64[5] = v61;
          v54 += v80;
          --v49;
          v51 = v57;
          v56 = v82;
        }

        while (v49);
      }

      else
      {

        v50 = _swiftEmptyArrayStorage;
      }

      v65 = sub_1006973D4(v50);

      v66 = v77;
      v67 = SecCertificateCopyData(v77);
      v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = v78;
      *v78 = v68;
      v71[1] = v70;
      v71[2] = v65;
    }
  }
}

uint64_t sub_10034979C()
{
  v1[11] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v1[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v7 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = type metadata accessor for DaemonAnalytics.VICALFetchResult();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v1[24] = v11;
  v12 = *(v11 - 8);
  v1[25] = v12;
  v13 = *(v12 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_1003499C4, 0, 0);
}

uint64_t sub_1003499C4()
{
  v1 = *(v0[11] + 16);
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableVICALFetch.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = v0[28];
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[28];
    v10 = v0[24];
    v11 = v0[25];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentReaderIssuerRootStorage loadRemoteTrustedRoots disable VICAL fetch call flag is enabled, skipping call to fetch from network.", v12, 2u);
    }

    (*(v11 + 8))(v9, v10);
    v14 = v0[27];
    v13 = v0[28];
    v15 = v0[26];
    v17 = v0[22];
    v16 = v0[23];
    v19 = v0[18];
    v18 = v0[19];
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[14];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = swift_task_alloc();
    v0[29] = v25;
    *v25 = v0;
    v25[1] = sub_100349BEC;
    v26 = v0[11];

    return sub_1003447E4((v0 + 2));
  }
}

uint64_t sub_100349BEC()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10034A9B8;
  }

  else
  {
    v3 = sub_100349D00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100349D00()
{
  v1 = *sub_10000BA08(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_100349D9C;

  return sub_10060E758();
}

uint64_t sub_100349D9C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_10034A020;
  }

  else
  {
    *(v4 + 280) = a1;
    v7 = sub_100349EC4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100349EC4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  sub_10000BB78((v0 + 16));
  v5 = &enum case for DaemonAnalytics.VICALFetchResult.fromCache(_:);
  if ((v1 & 1) == 0)
  {
    v5 = &enum case for DaemonAnalytics.VICALFetchResult.success(_:);
  }

  (*(v4 + 104))(v2, *v5, v3);
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendVICALFetchedEvent(result:error:)();
  (*(v4 + 8))(v2, v3);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 208);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 112);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10034A020()
{
  sub_10000BB78(v0 + 2);
  v0[33] = v0[32];
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_10034A0C0;
  v2 = v0[11];

  return sub_100345BEC();
}

uint64_t sub_10034A0C0(char a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 281) = a1;

  return _swift_task_switch(sub_10034A1C0, 0, 0);
}

uint64_t sub_10034A1C0()
{
  if ((*(v0 + 281) & 1) == 0)
  {
    v23 = *(v0 + 216);
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "MobileDocumentReaderIssuerRootStorage there are no trusted system roots present to fall back to. Throwing error", v26, 2u);
    }

    v27 = *(v0 + 264);
    v28 = *(v0 + 216);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
    v33 = *(v0 + 160);
    v71 = *(v0 + 128);
    v66 = *(v0 + 144);
    v69 = *(v0 + 120);
    v34 = *(v0 + 104);
    v63 = *(v0 + 152);
    v65 = *(v0 + 96);

    (*(v29 + 8))(v28, v30);
    type metadata accessor for DaemonAnalytics();
    (*(v31 + 104))(v32, enum case for DaemonAnalytics.VICALFetchResult.failure(_:), v33);
    swift_errorRetain();
    static DaemonAnalytics.sendVICALFetchedEvent(result:error:)();
    (*(v31 + 8))(v32, v33);
    swift_getErrorValue();
    v36 = *(v0 + 56);
    v35 = *(v0 + 64);
    v37 = *(v0 + 72);
    Error.dipErrorCode.getter();
    v38 = *(v34 + 104);
    v38(v66, enum case for DIPError.Code.networkTimeOut(_:), v65);
    (*(v34 + 56))(v66, 0, 1, v65);
    v39 = *(v69 + 48);
    sub_10000BBC4(v63, v71, &qword_10083B020, &unk_1006D8ED0);
    sub_10000BBC4(v66, v71 + v39, &qword_10083B020, &unk_1006D8ED0);
    v40 = *(v34 + 48);
    if (v40(v71, 1, v65) == 1)
    {
      v41 = *(v0 + 152);
      v42 = *(v0 + 96);
      sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v41, &qword_10083B020, &unk_1006D8ED0);
      if (v40(v71 + v39, 1, v42) == 1)
      {
        sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
LABEL_15:
        v38(*(v0 + 112), enum case for DIPError.Code.internalError(_:), *(v0 + 96));
        goto LABEL_16;
      }
    }

    else
    {
      v43 = *(v0 + 96);
      sub_10000BBC4(*(v0 + 128), *(v0 + 136), &qword_10083B020, &unk_1006D8ED0);
      v44 = v40(v71 + v39, 1, v43);
      v46 = *(v0 + 144);
      v45 = *(v0 + 152);
      v47 = *(v0 + 136);
      if (v44 != 1)
      {
        v67 = *(v0 + 128);
        v50 = *(v0 + 104);
        v51 = *(v0 + 112);
        v52 = *(v0 + 96);
        (*(v50 + 32))(v51, v71 + v39, v52);
        sub_10034D0CC(&qword_100834B68, &type metadata accessor for DIPError.Code);
        v53 = dispatch thunk of static Equatable.== infix(_:_:)();
        v54 = *(v50 + 8);
        v54(v51, v52);
        sub_10000BE18(v46, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v45, &qword_10083B020, &unk_1006D8ED0);
        v54(v47, v52);
        sub_10000BE18(v67, &qword_10083B020, &unk_1006D8ED0);
        if (v53)
        {
          goto LABEL_15;
        }

LABEL_13:
        v38(*(v0 + 112), enum case for DIPError.Code.vicalCouldNotFetch(_:), *(v0 + 96));
LABEL_16:
        v55 = *(v0 + 264);
        v56 = *(v0 + 224);
        v59 = *(v0 + 216);
        v60 = *(v0 + 208);
        v61 = *(v0 + 184);
        v62 = *(v0 + 176);
        v64 = *(v0 + 152);
        v68 = *(v0 + 136);
        v70 = *(v0 + 144);
        v72 = *(v0 + 128);
        v57 = *(v0 + 112);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v22 = *(v0 + 8);
        goto LABEL_17;
      }

      v48 = *(v0 + 96);
      v49 = *(v0 + 104);
      sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v45, &qword_10083B020, &unk_1006D8ED0);
      (*(v49 + 8))(v47, v48);
    }

    sub_10000BE18(*(v0 + 128), &qword_100834B60, &qword_1006C0310);
    goto LABEL_13;
  }

  v1 = *(v0 + 208);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderIssuerRootStorage there are system roots to fallback to.", v4, 2u);
  }

  v5 = *(v0 + 264);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);

  (*(v7 + 8))(v6, v8);
  type metadata accessor for DaemonAnalytics();
  (*(v10 + 104))(v9, enum case for DaemonAnalytics.VICALFetchResult.fallback(_:), v11);
  swift_errorRetain();
  static DaemonAnalytics.sendVICALFetchedEvent(result:error:)();

  (*(v10 + 8))(v9, v11);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 208);
  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = *(v0 + 112);

  v22 = *(v0 + 8);
LABEL_17:

  return v22();
}

uint64_t sub_10034A9B8()
{
  v0[33] = v0[30];
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_10034A0C0;
  v2 = v0[11];

  return sub_100345BEC();
}

uint64_t sub_10034AA50()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10034AB6C, 0, 0);
}

uint64_t sub_10034AB6C()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderIssuerRootStorage clearTrustedRoots", v4, 2u);
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_10034ACA4;
  v9 = v0[7];

  return sub_1003447E4((v0 + 2));
}

uint64_t sub_10034ACA4()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10034AFAC;
  }

  else
  {
    v3 = sub_10034ADB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10034ADB8()
{
  v1 = v0[15];
  v2 = *sub_10000BA08(v0 + 2, v0[5]);
  sub_1006117AC();
  if (v1)
  {
    sub_10000BB78(v0 + 2);
    v3 = v0[13];
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v5 = v0[13];
    v6 = v0[10];
    sub_10000BB78(v0 + 2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10034AFAC()
{
  v1 = v0[15];
  v2 = v0[13];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10034D0CC(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10034B18C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10034BFA0(__src, &__src[a2]);
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

char *sub_10034B254(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_10000B90C(v6, v5);
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

    sub_10000B90C(v6, v5);
    *v3 = xmmword_1006DE2A0;
    sub_10000B90C(0, 0xC000000000000000);
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

      v17 = sub_10034B6F8(v6, v6 >> 32, a1);

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

    sub_10000B90C(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1006DE2A0;
    sub_10000B90C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10034B6F8(*(v19 + 2), *(v19 + 3), a1);
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

_BYTE *sub_10034B5F8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10034BFA0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10034C0DC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10034C058(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10034B68C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_10034B6F8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
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

uint64_t sub_10034B7AC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
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

uint64_t sub_10034B7FC(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for DIPCertUsage();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DIPError.Code();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v38);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v39 = &v35 - v11;
  v12 = __chkstk_darwin(v10);
  v41 = &v35 - v13;
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  v23 = type metadata accessor for COSESignatureValidator();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_10000BBC4(a1, v22, &qword_10083AB90, &unk_1006DE370);
  v28 = *(v24 + 48);
  if (v28(v22, 1, v23) == 1)
  {
    v35 = v15;
    v36 = v28;
    v29 = *(v6 + 104);
    v30 = v15;
    v31 = v38;
    v29(v30, enum case for DIPError.Code.vicalUnknownAlgorithm(_:), v38);
    v29(v41, enum case for DIPError.Code.vicalInvalidPublicKey(_:), v31);
    v29(v39, enum case for DIPError.Code.vicalMisformattedSignature(_:), v31);
    v37 = v20;
    v29(v40, enum case for DIPError.Code.vicalInvalidSignature(_:), v31);
    v20 = v37;
    COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
    if (v36(v22, 1, v23) != 1)
    {
      sub_10000BE18(v22, &qword_10083AB90, &unk_1006DE370);
    }
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
  }

  (*(v24 + 16))(v20, v27, v23);
  (*(v24 + 56))(v20, 0, 1, v23);
  v32 = v42;
  (*(v43 + 104))(v42, enum case for DIPCertUsage.iso18013VICALApple(_:), v44);
  v33 = sub_1001113C8(v20, v45, v32);
  sub_10000BE18(v46, &qword_10083AB90, &unk_1006DE370);
  (*(v24 + 8))(v27, v23);
  return v33;
}

id sub_10034BCA0(uint64_t a1, uint64_t a2, char *a3)
{
  v32 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v6 = *(*(v32 - 8) + 64);
  v7 = __chkstk_darwin(v32);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = &type metadata for VICALTrustValidator;
  v37[4] = &off_1007FD998;
  v37[0] = a2;
  v17 = OBJC_IVAR____TtC8coreidvd15VICALWebService_url;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v33 = a1;
  v20(&a3[v17], a1, v18);
  sub_100020260(v37, &a3[OBJC_IVAR____TtC8coreidvd15VICALWebService_validator]);
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v13 + 8))(v16, v12);
  if (qword_100832D28 != -1)
  {
    swift_once();
  }

  v24 = sub_10003170C(v32, qword_1008498D8);
  sub_1002BEB48(v24, v11);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v25 = &a3[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *v25 = v21;
  v25[1] = v23;
  sub_100020260(v36, v35);
  sub_1002BEB48(v11, v9);
  v26 = type metadata accessor for DIPHTTPSession(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v35, v9);
  v29 = type metadata accessor for DIPWebService();
  v34.receiver = a3;
  v34.super_class = v29;
  v30 = objc_msgSendSuper2(&v34, "init");
  (*(v19 + 8))(v33, v18);
  sub_10000BB78(v36);
  sub_10034CFA8(v11);
  sub_10000BB78(v37);
  return v30;
}

uint64_t sub_10034BFA0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10034C058(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10034C0DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10034C158(uint64_t a1)
{
  v9 = sub_100007224(&qword_1008418B8, &qword_1006DE390);
  v10 = sub_1000BA30C(&qword_1008418C0, &qword_1008418B8, &qword_1006DE390);
  v8[0] = a1;
  v2 = sub_10000BA08(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10034B5F8(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000BB78(v8);
  return v5;
}

uint64_t sub_10034C234(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
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

void *sub_10034C2D4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B8B8(a1, a2);
  result = sub_100343A0C(a1, a2);
  v10 = result[2];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = (result + 4);
  if (!*(result + 32))
  {
    v14 = 0;
    while (v10 - 1 != v14)
    {
      v13 = v14 + 1;
      if (*(result + v14++ + 33))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v13 = 0;
LABEL_7:
  v16 = (2 * v10) | 1;

  defaultLogger()();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v16;
    v20 = v19;
    v32 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = Array.description.getter();
    v29 = v5;
    v30 = v4;
    v22 = v21;
    v24 = v23;

    v25 = sub_100141FE4(v22, v24, &v32);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = ArraySlice.description.getter();
    v28 = sub_100141FE4(v26, v27, &v32);

    *(v20 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "IssuerRevocationList trimmed %s to %s", v20, 0x16u);
    swift_arrayDestroy();

    v16 = v31;

    (*(v29 + 8))(v8, v30);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return sub_1003440A8(v11, v12, v13, v16);
}

uint64_t sub_10034C5B4(uint64_t a1)
{
  v97 = type metadata accessor for BigUIntCBOR();
  v2 = *(v97 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v97);
  v96 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_100841870, &qword_1006DE340);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v72 - v7;
  v74 = type metadata accessor for Logger();
  v73 = *(v74 - 8);
  v9 = *(v73 + 64);
  __chkstk_darwin(v74);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VICALCertificateInfo();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  v17 = VICALDocument.certificateInfos.getter();
  v18 = v17;
  v89 = *(v17 + 16);
  if (!v89)
  {

    v20 = &_swiftEmptyDictionarySingleton;
LABEL_29:
    defaultLogger()();

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v98 = v66;
      *v65 = 136315138;
      sub_100007224(&qword_100841878, &qword_1006DE348);
      sub_10034CDDC();
      v67 = Dictionary.description.getter();
      v69 = sub_100141FE4(v67, v68, &v98);

      *(v65 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v63, v64, "IssuerRevocationList initialized with %s", v65, 0xCu);
      sub_10000BB78(v66);
    }

    v70 = type metadata accessor for VICALDocument();
    (*(*(v70 - 8) + 8))(v75, v70);
    (*(v73 + 8))(v11, v74);
    return v20;
  }

  v19 = 0;
  v88 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v95 = (v2 + 8);
  v79 = v2;
  v92 = v2 + 16;
  v86 = (v13 + 8);
  v87 = v13 + 16;
  v20 = &_swiftEmptyDictionarySingleton;
  v80 = v11;
  v78 = v8;
  v77 = v12;
  v76 = v13;
  v81 = v17;
  v82 = v16;
  while (v19 < *(v18 + 16))
  {
    v21 = *(v13 + 72);
    v91 = v19;
    (*(v13 + 16))(v16, v88 + v21 * v19, v12);
    VICALCertificateInfo.extensions.getter();
    v22 = type metadata accessor for VICALCertificateInfo.Extensions();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v8, 1, v22) == 1)
    {
      (*v86)(v16, v12);
      sub_10000BE18(v8, &qword_100841870, &qword_1006DE340);
    }

    else
    {
      v24 = VICALCertificateInfo.Extensions.certificateRevocationList.getter();
      (*(v23 + 8))(v8, v22);
      if (v24)
      {
        v25 = v96;
        v85 = v24;
        VICALCertificateInfo.serialNumber.getter();
        v26 = BigUIntCBOR.value.getter();
        v28 = v27;
        v94 = *v95;
        v94(v25, v97);
        v90 = sub_10034C2D4(v26, v28);
        v30 = v29;
        v31 = v26;
        v32 = v85;
        sub_10000B90C(v31, v28);
        v33 = *(v32 + 16);
        if (v33)
        {
          v83 = v30;
          v84 = v20;
          v98 = _swiftEmptyArrayStorage;
          sub_100173238(0, v33, 0);
          v34 = v98;
          v35 = v32 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
          v93 = *(v79 + 72);
          v36 = *(v79 + 16);
          do
          {
            v38 = v96;
            v37 = v97;
            v36(v96, v35, v97);
            v39 = BigUIntCBOR.value.getter();
            v41 = v40;
            v42 = sub_10034C2D4(v39, v40);
            v44 = v43;
            sub_10000B90C(v39, v41);
            v94(v38, v37);
            v98 = v34;
            v46 = v34[2];
            v45 = v34[3];
            if (v46 >= v45 >> 1)
            {
              sub_100173238((v45 > 1), v46 + 1, 1);
              v34 = v98;
            }

            v34[2] = v46 + 1;
            v47 = &v34[2 * v46];
            v47[4] = v42;
            v47[5] = v44;
            v35 += v93;
            --v33;
          }

          while (v33);

          v11 = v80;
          v30 = v83;
          v20 = v84;
          v8 = v78;
          v12 = v77;
          v13 = v76;
        }

        else
        {

          v34 = _swiftEmptyArrayStorage;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v20;
        v49 = sub_10003B554(v90, v30);
        v51 = v20[2];
        v52 = (v50 & 1) == 0;
        v53 = __OFADD__(v51, v52);
        v54 = v51 + v52;
        if (v53)
        {
          goto LABEL_33;
        }

        v55 = v50;
        if (v20[3] >= v54)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_21;
          }

          v59 = v49;
          sub_100171C50();
          v49 = v59;
          v20 = v98;
          if ((v55 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_22:
          v57 = v20[7];
          v58 = *(v57 + 8 * v49);
          *(v57 + 8 * v49) = v34;

          sub_10000B90C(v90, v30);
        }

        else
        {
          sub_10016A690(v54, isUniquelyReferenced_nonNull_native);
          v49 = sub_10003B554(v90, v30);
          if ((v55 & 1) != (v56 & 1))
          {
            goto LABEL_35;
          }

LABEL_21:
          v20 = v98;
          if (v55)
          {
            goto LABEL_22;
          }

LABEL_24:
          v20[(v49 >> 6) + 8] |= 1 << v49;
          v60 = (v20[6] + 16 * v49);
          *v60 = v90;
          v60[1] = v30;
          *(v20[7] + 8 * v49) = v34;
          v61 = v20[2];
          v53 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v53)
          {
            goto LABEL_34;
          }

          v20[2] = v62;
        }

        v16 = v82;
        (*v86)(v82, v12);
        v18 = v81;
        goto LABEL_4;
      }

      (*v86)(v16, v12);
    }

LABEL_4:
    v19 = v91 + 1;
    if (v91 + 1 == v89)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10034CDDC()
{
  result = qword_100841880;
  if (!qword_100841880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841880);
  }

  return result;
}

uint64_t sub_10034CE30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10034CE68()
{
  result = qword_100841898;
  if (!qword_100841898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100841898);
  }

  return result;
}

uint64_t sub_10034CEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10034CF3C(void *a1)
{
  v3 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  sub_10000BE18(a1, &qword_100841860, &qword_1006DE330);
  a1[3] = ObjectType;
  a1[4] = &off_1008181E8;
  *a1 = v3;
  return v3;
}

uint64_t sub_10034CFA8(uint64_t a1)
{
  v2 = type metadata accessor for DIPHTTPSession.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10034D004(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10000B90C(result, a2);
  }

  return result;
}

void *sub_10034D044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10034B68C(sub_10034D0AC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10034D0CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10034D124(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10034D178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10034D1D8()
{
  result = qword_1008418D8;
  if (!qword_1008418D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008418D8);
  }

  return result;
}

uint64_t sub_10034D258(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = sub_100007224(&qword_100841900, &qword_1006DE6B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10034DAD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_10000B8B8(a2, a3);
  sub_10000B9B4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10000B90C(v17, v18);
  if (!v4)
  {
    v17 = v16;
    v19 = 1;
    sub_100007224(&qword_10083BC60, &unk_1006DA1B0);
    sub_10034DB28(&qword_100841908);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10034D444()
{
  if (*v0)
  {
    result = 0x746E656D75636F64;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_10034D484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00007365707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10034D568(uint64_t a1)
{
  v2 = sub_10034DAD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034D5A4(uint64_t a1)
{
  v2 = sub_10034DAD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10034D5E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10034D884(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int sub_10034D630()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  sub_1003D4B28(v5, v3);
  return Hasher._finalize()();
}

void sub_10034D694(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  Data.hash(into:)();

  sub_1003D4B28(a1, v5);
}

Swift::Int sub_10034D6D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  sub_1003D4B28(v5, v3);
  return Hasher._finalize()();
}

void sub_10034D738()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

  if (v5)
  {

    sub_100007224(&qword_100841910, &qword_1006DE6C0);
    String.init<A>(describing:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034D7C8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if ((sub_1000C31A0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_10014DCF8(v2, v3);
}

unint64_t sub_10034D830()
{
  result = qword_1008418E0;
  if (!qword_1008418E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008418E0);
  }

  return result;
}

uint64_t sub_10034D884(uint64_t *a1)
{
  v3 = sub_100007224(&qword_1008418E8, &unk_1006DE6A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[3];
  sub_10000BA08(a1, v8);
  sub_10034DAD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v12 = 0;
    sub_10000B960();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v10 = v14;
    sub_100007224(&qword_10083BC60, &unk_1006DA1B0);
    v12 = 1;
    sub_10034DB28(&qword_1008418F8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_10000B8B8(v8, v10);

    sub_10000BB78(a1);
    sub_10000B90C(v8, v10);
  }

  return v8;
}

unint64_t sub_10034DAD4()
{
  result = qword_1008418F0;
  if (!qword_1008418F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008418F0);
  }

  return result;
}

uint64_t sub_10034DB28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_10083BC60, &unk_1006DA1B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034DBA8()
{
  result = qword_100841918;
  if (!qword_100841918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841918);
  }

  return result;
}

unint64_t sub_10034DC00()
{
  result = qword_100841920;
  if (!qword_100841920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841920);
  }

  return result;
}

unint64_t sub_10034DC58()
{
  result = qword_100841928;
  if (!qword_100841928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841928);
  }

  return result;
}

uint64_t sub_10034DCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for Milestone();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v4[15] = *(v12 + 64);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10034DE30, 0, 0);
}

uint64_t sub_10034DE30()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v5[6];
  v16 = v5[7];
  sub_10000BA08(v5 + 3, v9);
  (*(v4 + 16))(v1, v6, v3);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v0[17] = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  (*(v4 + 32))(v11 + v10, v1, v3);
  v12 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)[1];

  v13 = swift_task_alloc();
  v0[18] = v13;
  v14 = type metadata accessor for MobileDocumentReaderIdentityKey();
  *v13 = v0;
  v13[1] = sub_10034DFB0;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 2, sub_10035580C, v11, v14, v9, v16);
}

uint64_t sub_10034DFB0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_10034E188;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_10034E0CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10034E0CC()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[2];
  static MobileDocumentReaderMilestone.readerAuthenticationKeyFetched.getter();
  Milestone.log()();
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_10034E188()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  (*(v6 + 104))(v5, enum case for DIPError.Code.documentReaderMissingReaderAuthKey(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_10034E344(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = sub_100582C9C(a2, a3);
  if (!v4)
  {
    v16 = v15;
    v17 = [v15 attestationCertificate];

    if (v17)
    {
      v18 = v17;
      v19 = sub_100585F78(v18);
      if (v19)
      {
        v20 = v19;

        *a4 = v20;
      }

      else
      {
        (*(v10 + 104))(v13, enum case for DIPError.Code.documentReaderInvalidCoreDataIdentityKeyRecord(_:), v9);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      (*(v10 + 104))(v13, enum case for DIPError.Code.documentReaderMissingReaderAuthKey(_:), v9);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_10034E6A4()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10034E764, 0, 0);
}

uint64_t sub_10034E764()
{
  v1 = *(v0 + 24);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000BA08(v1 + 3, v2);
  v4 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = sub_100007224(&qword_1008419E8, &qword_1006DE8C0);
  *v5 = v0;
  v5[1] = sub_10034E854;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 16, sub_10034EB74, 0, v6, v2, v3);
}

uint64_t sub_10034E854()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10034E9D4;
  }

  else
  {
    v3 = sub_10034E968;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10034E968()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10034E9D4()
{
  v1 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

void sub_10034EB74(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
  v5 = static StoredMobileDocumentReaderAttestationCertificate.fetchRequest()();
  v6 = *(v4 + 16);
  v7 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v2)
  {
    if (v7 >> 62)
    {
LABEL_20:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    while (v8 != v9)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      ++v9;
      if (sub_100585F78(v10))
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = v11;
      }
    }

    *a2 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_10034ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = type metadata accessor for Milestone();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v4[19] = *(v12 + 64);
  v4[20] = swift_task_alloc();
  v13 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v4[25] = v17;
  v18 = *(v17 - 8);
  v4[26] = v18;
  v19 = *(v18 + 64) + 15;
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_10034EF6C, 0, 0);
}

uint64_t sub_10034EF6C()
{
  v1 = v0[27];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationStorage generateAndStoreIdentityKey", v4, 2u);
  }

  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[10];

  (*(v6 + 8))(v5, v7);
  v9 = sub_10034F96C();
  v0[28] = v9;
  v0[29] = v10;
  v0[30] = v11;
  v12 = v0[24];
  v13 = v0[20];
  v14 = v0[18];
  v33 = v13;
  v34 = v0[19];
  v15 = v0[17];
  v17 = v0[9];
  v16 = v0[10];
  v35 = v0[7];
  v36 = v0[8];
  v37 = v9;
  v38 = v10;
  static DaemonSignposts.MobileDocumentReader.storeIdentityKey.getter();
  DIPSignpost.init(_:)();
  v18 = SecCertificateRef.derRepresentation.getter();
  v20 = v19;
  v0[31] = v18;
  v0[32] = v19;
  v39 = v16[7];
  sub_10000BA08(v16 + 3, v16[6]);
  v21 = *(v14 + 16);
  v0[33] = v21;
  v0[34] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22 = v13;
  v23 = v15;
  v21(v22, v17, v15);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = (v34 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v0[35] = v26;
  *(v26 + 16) = v35;
  *(v26 + 24) = v36;
  v27 = *(v14 + 32);
  v0[36] = v27;
  v0[37] = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v27(v26 + v24, v33, v23);
  v28 = (v26 + v25);
  *v28 = v37;
  v28[1] = v38;
  v29 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v18;
  v29[1] = v20;

  sub_10000B8B8(v37, v38);
  sub_10000B8B8(v18, v20);
  v30 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];
  v31 = swift_task_alloc();
  v0[38] = v31;
  *v31 = v0;
  v31[1] = sub_10034F3D0;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_10034F3D0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_10034F730;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_10034F4EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10034F4EC()
{
  v26 = v0[36];
  v27 = v0[37];
  v1 = v0[33];
  v2 = v0[34];
  v20 = v0[31];
  v21 = v0[32];
  v24 = v0[28];
  v25 = v0[29];
  v32 = v0[27];
  v28 = v0[30];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[22];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v33 = v0[21];
  v34 = v0[13];
  v8 = v0[9];
  v22 = v0[7];
  v23 = v0[8];
  static MobileDocumentReaderMilestone.readerAuthenticationKeyCreated.getter();
  Milestone.log()();
  (*(v6 + 8))(v5, v7);
  v1(v3, v8, v4);
  v9 = type metadata accessor for SESKeystore();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = SESKeystore.init()();
  v0[5] = type metadata accessor for DateProvider();
  v0[6] = &protocol witness table for DateProvider;
  sub_100032DBC(v0 + 2);
  DateProvider.init()();
  sub_10000B90C(v20, v21);
  v13 = type metadata accessor for MobileDocumentReaderIdentityKey();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  *(v16 + 24) = v23;
  v26(v16 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier, v3, v4);
  v17 = (v16 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  *v17 = v24;
  v17[1] = v25;
  *(v16 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate) = v28;
  *(v16 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore) = v12;
  sub_10001F358(v0 + 1, v16 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider);

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v30 + 8))(v29, v31);

  v18 = v0[1];

  return v18(v16);
}

uint64_t sub_10034F730()
{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  sub_10000B90C(v0[31], v0[32]);

  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  sub_10000B90C(v4, v2);
  (*(v6 + 8))(v5, v7);
  v8 = v0[39];
  v9 = v0[27];
  v10 = v0[24];
  v13 = v0[21];
  v14 = v0[20];
  v15 = v0[16];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.documentReaderCannotGenerateIdentityKey(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

char *sub_10034F96C()
{
  v1 = type metadata accessor for DIPError.Code();
  v80 = *(v1 - 8);
  v81 = v1;
  v2 = *(v80 + 64);
  __chkstk_darwin(v1);
  v82 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  v6 = __chkstk_darwin(v4);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v74 = &v70 - v9;
  __chkstk_darwin(v8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for CharacterSet();
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  __chkstk_darwin(v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for KeyUsage();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DIPSignpost.Config();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = type metadata accessor for DIPSignpost();
  v84 = *(v23 - 8);
  v85 = v23;
  v24 = *(v84 + 64);
  __chkstk_darwin(v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DaemonSignposts.MobileDocumentReader.generateIdentityKey.getter();
  v83 = v26;
  DIPSignpost.init(_:)();
  (*(v17 + 104))(v20, enum case for KeyUsage.signature(_:), v16);
  v27 = createBAAKeyACLWithDefaultLAContext(enableUAM:keyUsage:requireUserAuth:forSecureElement:)();
  if (v0)
  {
    (*(v17 + 8))(v20, v16);
    goto LABEL_20;
  }

  v28 = v27;
  v72 = v11;
  v73 = v12;
  v30 = v77;
  v29 = v78;
  (*(v17 + 8))(v20, v16);
  v31 = *(v79 + 2);
  v32 = dispatch thunk of SESKeystore.createKey(acl:)();
  v70 = v31;
  v71 = v28;
  v79 = v32;
  v34 = v33;
  v35 = [objc_opt_self() standardUserDefaults];
  v36._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.seabassValidityInterval.getter();
  v37 = NSUserDefaults.internalString(forKey:)(v36);

  if (!v37.value._object)
  {
    goto LABEL_12;
  }

  v38 = (v37.value._object >> 56) & 0xF;
  if ((v37.value._object & 0x2000000000000000) == 0)
  {
    v38 = v37.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

LABEL_12:
    countAndFlagsBits = 0x4122750000000000;
    v53 = v29;
    v49 = v71;
    v43 = v34;
    goto LABEL_16;
  }

  v86 = v37;
  static CharacterSet.whitespaces.getter();
  sub_10001F298();
  v39 = StringProtocol.trimmingCharacters(in:)();
  v41 = v40;
  (*(v75 + 8))(v15, v73);

  v86.value._countAndFlagsBits = 0;
  v42 = sub_1006594FC(v39, v41);

  v43 = v34;
  if (v42)
  {
    countAndFlagsBits = v86.value._countAndFlagsBits;
    v45 = v72;
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v71;
    v50 = v76;
    if (v48)
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = countAndFlagsBits;
      _os_log_impl(&_mh_execute_header, v46, v47, "MobileDocumentReaderAuthenticationStorage found override value %f for validityInterval.", v51, 0xCu);
      v45 = v72;
    }

    v52 = v45;
    v53 = v29;
    (*(v30 + 8))(v52, v29);
    v11 = v79;
    goto LABEL_17;
  }

  v54 = v74;
  defaultLogger()();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  v57 = os_log_type_enabled(v55, v56);
  v53 = v29;
  v49 = v71;
  if (v57)
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Unable to parse validity interval override in settings. Continuing with default value.", v58, 2u);
  }

  (*(v30 + 8))(v54, v29);
  countAndFlagsBits = 0x4122750000000000;
LABEL_16:
  v11 = v79;
  v50 = v76;
LABEL_17:
  defaultLogger()();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = countAndFlagsBits;
    _os_log_impl(&_mh_execute_header, v59, v60, "MobileDocumentReaderAuthenticationStorage creating SEBAAS certificate with validityInterval %f", v61, 0xCu);
    v50 = v76;
  }

  (*(v30 + 8))(v50, v53);
  v64 = dispatch thunk of SESKeystore.createSEBAASCertificate(with:validityInterval:)();
  v66 = v65;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v68 = SecCertificateCreateWithData(0, isa);

  if (v68)
  {
    sub_10000B90C(v64, v66);

    v69 = v83;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v84 + 8))(v69, v85);
    return v11;
  }

  v78 = "generateIdentityKeyPair()";
  (*(v80 + 104))(v82, enum case for DIPError.Code.certificateDecodingFailed(_:), v81);
  v79 = v43;
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000B90C(v11, v79);

  sub_10000B90C(v64, v66);
LABEL_20:
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendMobileDocumentReaderAttestationKeyCreationFailedEvent(error:)();
  (*(v80 + 104))(v82, enum case for DIPError.Code.internalError(_:), v81);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v62 = v83;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v84 + 8))(v62, v85);
  return v11;
}

void sub_1003503D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_1005825E4(a2, a3);
  if (!v3)
  {
    v6 = v5;
    type metadata accessor for StoredMobileDocumentReaderSigningKey();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v4 + 16)];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v7 setKeyBlob:isa];

    v9 = v6;
    [v7 setApplicationInstallation:v9];
    type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v4 + 16)];
    v11 = Data._bridgeToObjectiveC()().super.isa;
    [v10 setCertificateData:v11];

    [v10 setSigningKey:v7];
    [v10 setApplicationInstallation:v9];

    sub_1005826A4();
  }
}

uint64_t sub_10035053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Milestone();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v4[14] = *(v12 + 64);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003506C0, 0, 0);
}

uint64_t sub_1003506C0()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  v14 = v5[7];
  sub_10000BA08(v5 + 3, v5[6]);
  (*(v3 + 16))(v1, v6, v4);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  (*(v3 + 32))(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v11 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];

  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_10035084C;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_10035084C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100350A1C;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_100350968;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100350968()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  static MobileDocumentReaderMilestone.readerAuthenticationKeyDeleted.getter();
  Milestone.log()();
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100350A1C()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  (*(v6 + 104))(v5, enum case for DIPError.Code.documentReaderCannotDeleteIdentityKey(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_100350BD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_100582C9C(a2, a3);
  if (!v3)
  {
    v6 = v5;
    v7 = [v5 attestationCertificate];

    if (v7)
    {
      v8 = v7;
      v9 = [v8 signingKey];
      if (v9)
      {
        v10 = v9;
        sub_100350CB8(v9, v4);
      }

      [*(v4 + 16) deleteObject:v8];
    }

    sub_1005826A4();
  }
}

id sub_100350CB8(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = [a1 attestationCertificates];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 count];
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 authenticationCertificates];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 count];

    v20 = v19 + v16;
    if (__OFADD__(v16, v19))
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    v20 = v16;
  }

  if (v20 <= 1)
  {
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "MobileDocumentReaderAuthenticationStorage signing key has 1 or less related certificates. Cleaning up.", v27, 2u);
    }

    (*(v6 + 8))(v13, v5);
    v28 = [a1 keyBlob];
    if (!v28)
    {
      return [*(v33 + 16) deleteObject:{a1, v32}];
    }

    v29 = v28;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v30;

    v31 = *(v3 + 16);
    dispatch thunk of SESKeystore.deleteKey(_:)();
LABEL_16:
    sub_10000B90C(v19, v13);
    return [*(v33 + 16) deleteObject:{a1, v32}];
  }

  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "MobileDocumentReaderAuthenticationStorage signing key has more than 1 certificate. No need to clean it up.", v23, 2u);
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_100351150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Milestone();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100351270, 0, 0);
}

uint64_t sub_100351270()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v1[6];
  v5 = v1[7];
  sub_10000BA08(v1 + 3, v4);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  *v8 = v0;
  v8[1] = sub_100351398;
  v10 = v0[2];

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v10, sub_1003550F4, v6, v9, v4, v5);
}

uint64_t sub_100351398()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_100351554;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1003514B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003514B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  static MobileDocumentReaderMilestone.readerAuthenticationCertificateFetched.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100351554()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 104))(v4, enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

void *sub_100351708@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  result = sub_100582AA4(a2, a3);
  if (!v4)
  {
    v23[1] = 0;
    if (result)
    {
      return sub_100584784(result, a4);
    }

    else
    {
      defaultLogger()();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23[0] = v16;
        v20 = v19;
        v24 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_100141FE4(a2, a3, &v24);
        v21 = v23[0];
        _os_log_impl(&_mh_execute_header, v23[0], v17, "MobileDocumentReaderAuthenticationStorage could not find session for identifier %s", v18, 0xCu);
        sub_10000BB78(v20);
      }

      else
      {
      }

      (*(v10 + 8))(v13, v9);
      v22 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
      return (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
    }
  }

  return result;
}

uint64_t sub_100351940()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100351A00, 0, 0);
}

uint64_t sub_100351A00()
{
  v1 = *(v0 + 24);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000BA08(v1 + 3, v2);
  v4 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = sub_100007224(&qword_1008419E0, &qword_1006DE8A0);
  *v5 = v0;
  v5[1] = sub_100351AF0;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 16, sub_100351D9C, 0, v6, v2, v3);
}

uint64_t sub_100351AF0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100351C04;
  }

  else
  {
    v3 = sub_100355C30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100351C04()
{
  v1 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.documentReaderCannotListCertificates(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

void sub_100351D9C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &i - v7;
  v9 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &i - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  v15 = static StoredMobileDocumentReaderAuthenticationCertificate.fetchRequest()();
  v16 = *(v14 + 16);
  v17 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v2)
  {
    v18 = v10;
    v31 = v13;
    v32 = v9;
    if (v17 >> 62)
    {
      goto LABEL_20;
    }

    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v19; i = v3)
    {
      v20 = 0;
      v34 = v17 & 0xC000000000000001;
      v33 = v17 & 0xFFFFFFFFFFFFFF8;
      v30 = v18;
      v21 = (v18 + 48);
      v3 = _swiftEmptyArrayStorage;
      v22 = v31;
      v18 = v32;
      while (v34)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_18;
        }

LABEL_10:
        sub_100584784(v23, v8);
        if ((*v21)(v8, 1, v18) == 1)
        {
          sub_10000BE18(v8, &qword_1008419D8, &qword_1006DEAB0);
        }

        else
        {
          sub_100355438(v8, v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1003C6254(0, v3[2] + 1, 1, v3);
          }

          v26 = v3[2];
          v25 = v3[3];
          if (v26 >= v25 >> 1)
          {
            v3 = sub_1003C6254(v25 > 1, v26 + 1, 1, v3);
          }

          v3[2] = v26 + 1;
          v27 = v3 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26;
          v22 = v31;
          sub_100355438(v31, v27);
          v18 = v32;
        }

        ++v20;
        if (v24 == v19)
        {
          goto LABEL_22;
        }
      }

      if (v20 >= *(v33 + 16))
      {
        goto LABEL_19;
      }

      v23 = *(v17 + 8 * v20 + 32);
      v24 = v20 + 1;
      if (!__OFADD__(v20, 1))
      {
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_22:

    *v29 = v3;
  }
}

uint64_t sub_1003520AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Milestone();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v2[12] = *(v10 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10035222C, 0, 0);
}

uint64_t sub_10035222C()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = (v2 + *(v1 + 32));
  v4 = *v3;
  v0[14] = *v3;
  v5 = v3[1];
  v0[15] = v5;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v18 = enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:);
    v24 = *(v0[5] + 104);
    v24(v0[6], enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = v0[13];
    v22 = v0[9];
    v24(v0[6], v18, v0[4]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[3];
    v10 = *(v2 + *(v1 + 28));
    sub_10000B8B8(v4, v5);
    type metadata accessor for SecCertificate(0);
    v11 = Array<A>.derRepresentation.getter();
    v23 = v9[7];
    sub_10000BA08(v9 + 3, v9[6]);
    sub_100355110(v2, v6);
    v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    v0[16] = v14;
    sub_100355438(v6, v14 + v12);
    v15 = (v14 + v13);
    *v15 = v4;
    v15[1] = v5;
    *(v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v11;
    sub_10000B8B8(v4, v5);
    v16 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_10035260C;

    return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
  }
}

uint64_t sub_10035260C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1003527F4;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_100352728;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100352728()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  static MobileDocumentReaderMilestone.readerAuthenticationCertificateStored.getter();
  Milestone.log()();
  sub_10035542C(v2, v1);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003527F4()
{
  v1 = v0[16];
  v2 = v0[5];
  sub_10035542C(v0[14], v0[15]);

  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[9];
  (*(v2 + 104))(v0[6], enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

void sub_1003529BC(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v7 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v44 - v9;
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a2[2];
  v18 = a2[3];
  v19 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v20 = v19[6];
  v21 = v49;
  v22 = sub_100582C9C(v17, v18);
  if (!v21)
  {
    if (v22)
    {
      v49 = v22;
      v23 = sub_100582F18();
      if (v23)
      {
        v46 = v23;
        v47 = 0;
        type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
        v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v16 + 16)];
        v25 = *a2;
        v44[1] = a2[1];
        v45 = v24;
        sub_100355554(a2 + v19[14], v10);
        v26 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v10, 1, v26) == 1)
        {
          sub_10000BE18(v10, &qword_100835D88, &qword_1006DE890);
          v28 = 0;
          v29 = 0xF000000000000000;
        }

        else
        {
          v30 = v10;
          v31 = CBOREncodedCBOR.dataValue.getter();
          v29 = v32;
          v33 = v30;
          v28 = v31;
          (*(v27 + 8))(v33, v26);
        }

        v34 = String._bridgeToObjectiveC()();
        v35 = v45;
        [v45 setSessionIdentifier:v34];

        isa = Array._bridgeToObjectiveC()().super.isa;
        [v35 setCertificateChain:isa];

        if (v29 >> 60 == 15)
        {
          v37 = 0;
        }

        else
        {
          v37 = Data._bridgeToObjectiveC()().super.isa;
        }

        [v35 setExternalData:v37];

        sub_10000BD94(v28, v29);
        v38 = a2 + v19[10];
        v39 = *(v38 + 1);
        if (v39 >> 60 != 15)
        {
          v40 = *v38;
          sub_10000B8B8(*v38, *(v38 + 1));
          v41 = Data._bridgeToObjectiveC()().super.isa;
          [v35 setMerchantLogo:v41];

          sub_10000BD94(v40, v39);
        }

        v42 = v49;
        [v35 setApplicationInstallation:v49];
        v43 = v46;
        [v35 setSigningKey:v46];
        sub_1005826A4();
      }

      else
      {
        (*(v12 + 104))(v15, enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:), v11);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      (*(v12 + 104))(v15, enum case for DIPError.Code.documentReaderCannotStoreCertificate(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100355BE8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_100352FB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Milestone();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003530D4, 0, 0);
}

uint64_t sub_1003530D4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v1[7];
  sub_10000BA08(v1 + 3, v1[6]);
  v5 = swift_allocObject();
  v0[11] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1003531FC;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003531FC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1003533AC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100353318;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100353318()
{
  v1 = v0[10];
  static MobileDocumentReaderMilestone.readerAuthenticationCertificateDeleted.getter();
  Milestone.log()();
  v2 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003533AC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v4 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v5 = v0[1];

  return v5();
}

void sub_100353480(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_100582AA4(a2, a3);
  if (!v3 && v5)
  {
    v6 = v5;
    v7 = [v5 signingKey];
    if (v7)
    {
      v8 = v7;
      sub_100350CB8(v7, v4);
    }

    [*(v4 + 16) deleteObject:v6];
    sub_1005826A4();
  }
}

uint64_t sub_100353530(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v2[10] = *(v7 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10035366C, 0, 0);
}

uint64_t sub_10035366C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  v13 = v5[7];
  sub_10000BA08(v5 + 3, v5[6]);
  v7 = *(v3 + 16);
  v0[13] = v7;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[15] = v9;
  (*(v3 + 32))(v9 + v8, v1, v4);
  *(v9 + ((v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v10 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_1003537FC;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003537FC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_100353B60;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_100353918;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100353918()
{
  v32 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[2];
  defaultLogger()();
  v2(v3, v6, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  if (v9)
  {
    v30 = v0[4];
    v16 = swift_slowAlloc();
    v28 = v8;
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    sub_100355BE8(&qword_10083ACE0, &type metadata accessor for Date);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v13;
    v20 = v19;
    (*(v11 + 8))(v10, v12);
    v21 = sub_100141FE4(v18, v20, &v31);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v28, "MobileDocumentReaderAuthenticationStorage successfully deleted all sessions with expiration date earlier than %s.", v16, 0xCu);
    sub_10000BB78(v17);

    (*(v14 + 8))(v29, v30);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    (*(v14 + 8))(v13, v15);
  }

  v23 = v0[11];
  v22 = v0[12];
  v25 = v0[6];
  v24 = v0[7];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100353B60()
{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v4 + 8))(v3, v5);
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[6];
  v8 = v0[7];

  v10 = v0[1];

  return v10();
}

void sub_100353C4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v85 = a2;
  v5 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v84 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = &v73 - v9;
  v88 = type metadata accessor for Date();
  v77 = *(v88 - 8);
  v10 = *(v77 + 64);
  v11 = __chkstk_darwin(v88);
  v82 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = (&v73 - v13);
  v14 = *a1;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1003A95BC(_swiftEmptyArrayStorage);
    v15 = v35;
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v91 = v15;
  type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  v16 = static StoredMobileDocumentReaderAuthenticationCertificate.fetchRequest()();
  v17 = *(v14 + 16);
  v18 = NSManagedObjectContext.fetch<A>(_:)();

  if (v3)
  {

    return;
  }

  v80 = 0;
  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v87 = v14;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v87 = v14;
    if (v19)
    {
LABEL_7:
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v18 & 0xC000000000000001;
        v78 = (v77 + 48);
        v75 = (v77 + 32);
        v74 = (v77 + 8);
        p_align = &stru_10082BFE8.align;
        v76 = v19;
        v79 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v21)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v18 + 8 * v20 + 32);
          }

          v24 = v23;
          v25 = [v23 *(p_align + 478)];
          if (v25 && (v90[0] = 0, v26 = v25, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v26, v90[0]))
          {
            if (*(v90[0] + 2))
            {
              v27 = *(v90[0] + 4);
              v28 = *(v90[0] + 5);
              sub_10000B8B8(v27, v28);

              isa = Data._bridgeToObjectiveC()().super.isa;
              v30 = SecCertificateCreateWithData(0, isa);

              if (v30)
              {
                v31 = v86;
                SecCertificateRef.expirationDate.getter();
                v32 = v88;
                if ((*v78)(v31, 1, v88) == 1)
                {
                  sub_10000B90C(v27, v28);

                  sub_10000BE18(v31, &unk_100849400, &unk_1006BFBB0);
                  goto LABEL_27;
                }

                v33 = v83;
                (*v75)(v83, v31, v32);
                if (static Date.< infix(_:_:)())
                {
                  v34 = [v24 signingKey];
                  v21 = v79;
                  if (v34)
                  {
                    sub_100151F98(v90, v34);
                  }

                  [*(v87 + 16) deleteObject:v24];
                  sub_10000B90C(v27, v28);

                  (*v74)(v83, v88);
                  v19 = v76;
                }

                else
                {
                  (*v74)(v33, v32);
                  sub_10000B90C(v27, v28);

                  v19 = v76;
LABEL_27:
                  v21 = v79;
                }
              }

              else
              {

                sub_10000B90C(v27, v28);
              }

              p_align = (&stru_10082BFE8 + 24);
              goto LABEL_10;
            }
          }

          else
          {
          }

LABEL_10:
          if (v19 == ++v20)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

LABEL_32:

  type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
  v36 = static StoredMobileDocumentReaderAttestationCertificate.fetchRequest()();
  v37 = *(v87 + 16);
  v38 = v80;
  v39 = NSManagedObjectContext.fetch<A>(_:)();
  v80 = v38;
  if (v38)
  {

    return;
  }

  v14 = v39;

  if (v14 >> 62)
  {
LABEL_55:
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (!v40)
    {
      goto LABEL_56;
    }

    goto LABEL_36;
  }

  v40 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
LABEL_36:
    if (v40 < 1)
    {
LABEL_75:
      __break(1u);
      return;
    }

    v41 = 0;
    v42 = v14 & 0xC000000000000001;
    v83 = (v77 + 48);
    v43 = (v77 + 32);
    v77 += 8;
    v78 = v43;
    v79 = v40;
    v86 = v14;
    do
    {
      if (v42)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v44 = *(v14 + 8 * v41 + 32);
      }

      v45 = v44;
      v46 = [v44 certificateData];
      if (v46)
      {
        v47 = v46;
        v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = Data._bridgeToObjectiveC()().super.isa;
        v52 = SecCertificateCreateWithData(0, v51);

        if (v52)
        {
          v53 = v42;
          v54 = v84;
          SecCertificateRef.expirationDate.getter();
          v55 = v88;
          if ((*v83)(v54, 1, v88) == 1)
          {
            sub_10000B90C(v48, v50);

            sub_10000BE18(v54, &unk_100849400, &unk_1006BFBB0);
          }

          else
          {
            v56 = v82;
            (*v78)(v82, v54, v55);
            if (static Date.< infix(_:_:)())
            {
              v57 = [v45 signingKey];
              v42 = v53;
              if (v57)
              {
                sub_100151F98(v90, v57);
              }

              [*(v87 + 16) deleteObject:v45];
              sub_10000B90C(v48, v50);

              (*v77)(v82, v88);
              v40 = v79;
              v14 = v86;
              goto LABEL_39;
            }

            (*v77)(v56, v55);
            sub_10000B90C(v48, v50);

            v40 = v79;
          }

          v42 = v53;
          v14 = v86;
        }

        else
        {

          sub_10000B90C(v48, v50);
        }
      }

      else
      {
      }

LABEL_39:
      ++v41;
    }

    while (v40 != v41);
  }

LABEL_56:

  v58 = v91;
  if ((v91 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for StoredMobileDocumentReaderSigningKey();
    sub_100355BE8(&qword_1008419F0, &type metadata accessor for StoredMobileDocumentReaderSigningKey);
    Set.Iterator.init(_cocoa:)();
    v58 = v90[1];
    v59 = v90[2];
    v60 = v90[3];
    v61 = v90[4];
    v62 = v90[5];
  }

  else
  {
    v61 = 0;
    v63 = -1 << *(v91 + 32);
    v59 = (v91 + 56);
    v60 = ~v63;
    v64 = -v63;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v62 = (v65 & *(v91 + 56));
  }

  v88 = v60;
  v66 = (v60 + 64) >> 6;
  if ((v58 & 0x8000000000000000) == 0)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v67 = __CocoaSet.Iterator.next()();
    if (!v67)
    {
      break;
    }

    v89 = v67;
    type metadata accessor for StoredMobileDocumentReaderSigningKey();
    swift_dynamicCast();
    v68 = v90[0];
    v69 = v61;
    v70 = v62;
    if (!v90[0])
    {
      break;
    }

    while (1)
    {
      sub_100350CB8(v68, v87);

      v61 = v69;
      v62 = v70;
      if ((v58 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_66:
      v71 = v61;
      v72 = v62;
      v69 = v61;
      if (!v62)
      {
        while (1)
        {
          v69 = (v71 + 1);
          if (__OFADD__(v71, 1))
          {
            break;
          }

          if (v69 >= v66)
          {
            goto LABEL_73;
          }

          v72 = v59[v69];
          ++v71;
          if (v72)
          {
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_75;
      }

LABEL_70:
      v70 = (v72 - 1) & v72;
      v68 = *(*(v58 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v72)))));
      if (!v68)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_73:
  sub_10001FA6C();
  sub_1005826A4();
}

uint64_t sub_1003545A4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100354670, 0, 0);
}

uint64_t sub_100354670()
{
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationStorage deleteAll", v4, 2u);
  }

  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[7] = v9;
  v9(v5, v6);
  v10 = v8[7];
  sub_10000BA08(v8 + 3, v8[6]);
  v11 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1003547F0;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003547F0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10035496C;
  }

  else
  {
    v3 = sub_100354904;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100354904()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10035496C()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v5);
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

void sub_100354A40(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
  v3 = static StoredMobileDocumentReaderApplicationInstallation.fetchRequest()();
  v4 = *(v2 + 16);
  v5 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          v9 = v8;
          [*(v2 + 16) deleteObject:v8];
        }
      }
    }

    sub_1005826A4();
  }
}

uint64_t sub_100354B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100354C24, 0, 0);
}

uint64_t sub_100354C24()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v1[7];
  sub_10000BA08(v1 + 3, v1[6]);
  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v5;
  v7[5] = v3;

  sub_10000B8B8(v5, v3);
  v8 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_100354D50;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_100354D50()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100354ED8;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_100354E6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100354E6C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12] == 0;

  return v2(v3);
}

uint64_t sub_100354ED8()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v3, v4);
  v6 = v0[9];

  v7 = v0[1];
  v8 = v0[12] == 0;

  return v7(v8);
}

void sub_100354FB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_100582AA4(a2, a3);
  if (!v3)
  {
    if (v5)
    {
      v6 = v5;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v6 setMerchantLogo:isa];

      sub_1005826A4();
    }
  }
}

uint64_t sub_10035505C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003550BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100355110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100355174()
{
  v1 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[7]);

  sub_10035542C(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v11 = *(v0 + v3 + v1[9] + 8);

  v12 = (v0 + v3 + v1[10]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_10000B90C(*v12, v13);
  }

  v14 = *(v5 + v1[11] + 8);

  v15 = v1[12];
  v16 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = v1[13];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);
  v20 = v1[14];
  v21 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v5 + v20, 1, v21))
  {
    (*(v22 + 8))(v5 + v20, v21);
  }

  v23 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_10000B90C(*(v0 + v23), *(v0 + v23 + 8));
  v25 = *(v0 + v24);

  return _swift_deallocObject(v0, v24 + 8, v2 | 7);
}

void sub_10035542C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_10000B90C(a1, a2);
  }
}

uint64_t sub_100355438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10035549C(uint64_t *a1)
{
  v3 = *(type metadata accessor for MobileDocumentReaderAuthenticationSession() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1003529BC(a1, (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100355554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003555C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10035569C(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_100350BD8(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_100355748()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10035588C()
{
  v1 = v0[3];

  sub_10000B90C(v0[4], v0[5]);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1003558CC(uint64_t *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  sub_100354FB0(a1, v1[2], v1[3]);
}

uint64_t sub_1003558EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  sub_10000B90C(*(v0 + v5), *(v0 + v5 + 8));
  sub_10000B90C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

void sub_1003559E4(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  sub_1003503D4(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_100355AA4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100355B40(unint64_t *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_100353C4C(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100355BE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100355C34()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SecKeyRef.KeyClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v13 = *(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8);
  v14 = *(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore);
  v15 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v1)
  {
    v17 = v15;
    v18 = v16;
    v24 = v3;
    type metadata accessor for SecKey(0);
    (*(v8 + 104))(v11, enum case for SecKeyRef.KeyClass.public(_:), v7);
    v19 = static SecKeyRef.makeECKey(from:keyClass:)();
    (*(v8 + 8))(v11, v7);
    sub_10000B90C(v17, v18);
    v20 = SecKeyRef.publicKeyData.getter();
    if (v21 >> 60 == 15)
    {
      (*(v24 + 104))(v6, enum case for DIPError.Code.sesKeyPublicKeyError(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      v7 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v7 = v20;
    }
  }

  return v7;
}

id sub_100355F54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20[1] = a1;
  v20[2] = a2;
  v4 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(LAContext) init];
  v10 = *(v2 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore);
  v11 = v3 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob;
  v12 = *(v3 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v13 = *(v11 + 8);
  v21 = v9;
  result = [v9 externalizedContext];
  if (result)
  {
    v15 = result;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    (*(v5 + 104))(v8, enum case for SESKeystore.SignatureOutputFormat.raw(_:), v4);
    v19 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
    (*(v5 + 8))(v8, v4);
    sub_10000B90C(v16, v18);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100356114()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for __DataStorage();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = __DataStorage.init(length:)();
  v12 = sub_100355F54(0x2000000000, v11 | 0x4000000000000000);
  sub_10000B90C(v12, v13);

  v14 = *(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate);
  v15 = *(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider + 32);
  sub_10000BA08((v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider), *(v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider + 24));
  dispatch thunk of DateProviding.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v4 + 8))(v7, v3);
  return SecCertificateIsValid();
}

uint64_t sub_100356360()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_10000B90C(*&v0[OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob], *&v0[OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8]);

  v4 = *&v0[OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore];

  sub_10000BB78(&v0[OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileDocumentReaderIdentityKey()
{
  result = qword_100841A38;
  if (!qword_100841A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10035649C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100356574()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.unexpectedDaemonState(_:));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1003566EC()
{
  v2 = type metadata accessor for SecKeyRef.KeyClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(*v0 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore);
  v9 = (v7 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v10 = *v9;
  v11 = v9[1];
  v12 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v1)
  {
    v14 = v12;
    v15 = v13;
    type metadata accessor for SecKey(0);
    (*(v3 + 104))(v6, enum case for SecKeyRef.KeyClass.public(_:), v2);
    v8 = static SecKeyRef.makeECKey(from:keyClass:)();
    sub_10000B90C(v14, v15);
    (*(v3 + 8))(v6, v2);
  }

  return v8;
}

uint64_t sub_1003568CC()
{
  v1 = *v0;
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006BF520;
  v3 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate);
  *(v2 + 32) = SecCertificateRef.base64EncodedString.getter();
  *(v2 + 40) = v4;
  return v2;
}

uint64_t sub_1003569BC@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_100356A2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)() & 1) != 0 && (sub_1000C31A0(*(a1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob), *(a1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8), *(a2 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob), *(a2 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8)))
  {
    v5 = *(a1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate);
    v6 = SecCertificateRef.base64EncodedString.getter();
    v8 = v7;
    v9 = *(a2 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate);
    if (v6 == SecCertificateRef.base64EncodedString.getter() && v8 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_100356B30()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderIdentityKey persisting is done outside of this method. This is a no-op.", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100356C74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_100841BC8, &qword_1006E6830) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v14 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100356EA8, 0, 0);
}

uint64_t sub_100356EA8()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_10000BBC4(v0[3], v3, &qword_100841BC8, &qword_1006E6830);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];
    sub_10000BE18(v0[17], &qword_100841BC8, &qword_1006E6830);
    v5 = *(v4 + 16);
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_100357418;

    return sub_10034E6A4();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[4];
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v10 = *(v9 + 16);
    v11 = MobileDocumentReaderIdentityKeyRequest.applicationIdentifier.getter();
    v13 = v12;
    v0[21] = v12;
    MobileDocumentReaderIdentityKeyRequest.installationIdentifier.getter();
    v14 = swift_task_alloc();
    v0[22] = v14;
    *v14 = v0;
    v14[1] = sub_100357068;
    v15 = v0[16];

    return sub_10034DCAC(v11, v13, v15);
  }
}

uint64_t sub_100357068(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = v1;

  v7 = v4[21];
  v8 = v4[16];
  v9 = v4[14];
  v10 = v4[13];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1003578E4;
  }

  else
  {
    v4[24] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_100357214;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100357214()
{
  v1 = v0[24];
  v2 = v0[19];
  v24 = v0[18];
  v25 = v0[20];
  v3 = v0[12];
  v4 = v0[9];
  v22 = v0[8];
  v23 = v0[2];
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  (*(v0[14] + 16))(v0[15], v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier, v0[13]);
  v8 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v7 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8);

  sub_10000B8B8(v8, v7);
  MobileDocumentReaderIdentityKeyResponse.StatusItem.init(applicationIdentifier:installationIdentifier:identityKeyBlob:)();
  sub_100007224(&qword_10083C120, &unk_1006DA6A0);
  v9 = *(v4 + 72);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  (*(v4 + 16))(v11 + v10, v3, v22);
  MobileDocumentReaderIdentityKeyResponse.init(items:)();

  (*(v4 + 8))(v3, v22);
  (*(v2 + 8))(v25, v24);
  v12 = v0[20];
  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[15];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100357418(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_100357AE0;
  }

  else
  {
    v5 = sub_10035752C;
  }

  return _swift_task_switch(v5, 0, 0);
}

size_t sub_10035752C()
{
  v1 = v0[26];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v31 = v0[26];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  result = sub_100173258(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v43 = (v0[14] + 16);
    v45 = v0[9];
    v46 = v2;
    do
    {
      v5 = v0[26];
      v6 = v0[15];
      v7 = v0[13];
      v8 = v0[11];
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      (*v43)(v6, v9 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier, v7);
      v13 = *(v9 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
      v12 = *(v9 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8);

      sub_10000B8B8(v13, v12);
      MobileDocumentReaderIdentityKeyResponse.StatusItem.init(applicationIdentifier:installationIdentifier:identityKeyBlob:)();
      swift_unknownObjectRelease();
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100173258(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[11];
      v17 = v0[8];
      ++v4;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      (*(v45 + 32))(_swiftEmptyArrayStorage + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v15, v16, v17);
    }

    while (v46 != v4);
  }

  else
  {
    v18 = v0[9];
    v44 = *(v0[14] + 16);
    v19 = v0[26] + 32;
    do
    {
      v47 = v2;
      v20 = v0[10];
      v21 = *v19;
      v22 = *(*v19 + 16);
      v23 = *(*v19 + 24);
      v44(v0[15], *v19 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier, v0[13]);
      v24 = v21 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob;
      v25 = *(v21 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
      v26 = *(v24 + 8);

      sub_10000B8B8(v25, v26);
      MobileDocumentReaderIdentityKeyResponse.StatusItem.init(applicationIdentifier:installationIdentifier:identityKeyBlob:)();
      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        sub_100173258(v27 > 1, v28 + 1, 1);
      }

      v29 = v0[10];
      v30 = v0[8];
      _swiftEmptyArrayStorage[2] = v28 + 1;
      (*(v18 + 32))(_swiftEmptyArrayStorage + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v28, v29, v30);
      v19 += 8;
      v2 = v47 - 1;
    }

    while (v47 != 1);
  }

LABEL_18:
  v32 = v0[26];

  v33 = v0[2];
  MobileDocumentReaderIdentityKeyResponse.init(items:)();
  v34 = v0[20];
  v35 = v0[16];
  v36 = v0[17];
  v37 = v0[15];
  v39 = v0[11];
  v38 = v0[12];
  v40 = v0[10];
  v41 = v0[7];

  v42 = v0[1];

  return v42();
}

uint64_t sub_1003578E4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v8 = v0[12];
  v9 = v0[11];
  v10 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100357AE0()
{
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v8 = v0[12];
  v9 = v0[11];
  v10 = v0[10];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100357CC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100357DE0, 0, 0);
}

uint64_t sub_100357DE0()
{
  v1 = v0[9];
  v2 = v0[2];
  v3 = *(v0[3] + 16);
  v4 = MobileDocumentReaderIdentityKeyRequest.applicationIdentifier.getter();
  v6 = v5;
  v0[10] = v5;
  MobileDocumentReaderIdentityKeyRequest.installationIdentifier.getter();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_100357EB0;
  v8 = v0[9];

  return sub_10035053C(v4, v6, v8);
}

uint64_t sub_100357EB0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_100358098, 0, 0);
  }

  else
  {
    v9 = *(v2 + 72);
    v10 = *(v2 + 48);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_100358098()
{
  v1 = v0[12];
  v2 = v0[9];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100358224(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_100007224(&qword_100835D88, &qword_1006DE890) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderCertificateResponse.StatusItem();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(sub_100007224(&qword_1008419D8, &qword_1006DEAB0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v15 = *(*(sub_100007224(&qword_100841BB8, &qword_1006DEAB8) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v3[18] = v16;
  v17 = *(v16 - 8);
  v3[19] = v17;
  v18 = *(v17 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1003584B0, 0, 0);
}

uint64_t sub_1003584B0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_10000BBC4(v0[3], v3, &qword_100841BB8, &qword_1006DEAB8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];
    sub_10000BE18(v0[17], &qword_100841BB8, &qword_1006DEAB8);
    v5 = *(v4 + 16);
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_100358E50;

    return sub_100351940();
  }

  else
  {
    v8 = v0[4];
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v9 = *(v8 + 16);
    v10 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
    v12 = v11;
    v0[21] = v11;
    v13 = swift_task_alloc();
    v0[22] = v13;
    *v13 = v0;
    v13[1] = sub_10035865C;
    v14 = v0[12];

    return sub_100351150(v14, v10, v12);
  }
}

uint64_t sub_10035865C()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1003592E0;
  }

  else
  {
    v4 = sub_10035878C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10035878C()
{
  v1 = v0;
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = (*(v4 + 48))(v5, 1, v3);
  v7 = (v2 + 8);
  v8 = v1[20];
  v9 = v1[18];
  if (v6 == 1)
  {
    v11 = v1[10];
    v10 = v1[11];
    v12 = v1[9];
    sub_10000BE18(v5, &qword_1008419D8, &qword_1006DEAB0);
    (*(v11 + 104))(v10, enum case for DIPError.Code.documentReaderMissingSession(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*v7)(v8, v9);
    v13 = v1[20];
    v14 = v1[16];
    v15 = v1[17];
    v59 = v1[15];
    v60 = v1[12];
    v62 = v1[8];
    v63 = v1[5];
    (*(v1[10] + 104))(v1[11], enum case for DIPError.Code.internalError(_:), v1[9]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v16 = v1[1];
  }

  else
  {
    v17 = v1[16];
    sub_100355438(v5, v17);
    sub_100007224(&qword_100841BC0, &qword_1006DEAC0);
    v18 = *(v4 + 72);
    v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1006BF520;
    sub_100355438(v17, v20 + v19);
    (*v7)(v8, v9);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v1[14];
      v57 = v1[13];
      v58 = v1[15];
      v23 = v1[7];
      sub_10017329C(0, v21, 0);
      v24 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v56 = v23;
      v55 = *(v22 + 72);
      v25 = v1;
      do
      {
        v64 = v21;
        v26 = v25[15];
        v27 = v25[5];
        sub_100355110(v24, v26);
        v61 = *v26;
        v28 = *(v58 + 8);
        v29 = *(v26 + v57[7]);
        type metadata accessor for SecCertificate(0);

        Array<A>.base64EncodedStrings.getter();
        v30 = (v26 + v57[10]);
        v31 = *v30;
        v32 = v30[1];
        sub_10000BBC4(v26 + v57[14], v27, &qword_100835D88, &qword_1006DE890);
        v33 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
        v34 = v25;
        v35 = *(v33 - 8);
        v36 = (*(v35 + 48))(v27, 1, v33);
        sub_1000363B4(v31, v32);
        v37 = v34;
        v38 = v34[5];
        if (v36 == 1)
        {
          sub_10000BE18(v38, &qword_100835D88, &qword_1006DE890);
        }

        else
        {
          CBOREncodedCBOR.dataValue.getter();
          (*(v35 + 8))(v38, v33);
        }

        v25 = v37;
        v39 = v37[15];
        v40 = v37[8];
        MobileDocumentReaderCertificateResponse.StatusItem.init(sessionIdentifier:certificateChain:merchantLogo:externalData:)();
        sub_10035C718(v39);
        v42 = _swiftEmptyArrayStorage[2];
        v41 = _swiftEmptyArrayStorage[3];
        if (v42 >= v41 >> 1)
        {
          sub_10017329C(v41 > 1, v42 + 1, 1);
        }

        v43 = v37[8];
        v44 = v37[6];
        _swiftEmptyArrayStorage[2] = v42 + 1;
        (*(v56 + 32))(_swiftEmptyArrayStorage + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, v43, v44);
        v24 += v55;
        v21 = v64 - 1;
      }

      while (v64 != 1);
    }

    else
    {

      v25 = v1;
    }

    v45 = v25[20];
    v46 = v25[16];
    v47 = v25[17];
    v48 = v25[15];
    v50 = v25[11];
    v49 = v25[12];
    v51 = v25[8];
    v52 = v25[5];
    v53 = v25[2];
    MobileDocumentReaderCertificateResponse.init(items:)();

    v16 = v25[1];
  }

  return v16();
}

uint64_t sub_100358E50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_1003594E0;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = sub_100358F78;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100358F78()
{
  v1 = v0[26];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v36 = v0[13];
    v37 = v0[15];
    v4 = v0[7];
    sub_10017329C(0, v2, 0);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v35 = v4;
    v34 = *(v3 + 72);
    do
    {
      v39 = v2;
      v6 = v0[15];
      v7 = v0[5];
      sub_100355110(v5, v6);
      v38 = *v6;
      v8 = *(v37 + 8);
      v9 = *(v6 + v36[7]);
      type metadata accessor for SecCertificate(0);

      Array<A>.base64EncodedStrings.getter();
      v10 = (v6 + v36[10]);
      v11 = *v10;
      v12 = v10[1];
      sub_10000BBC4(v6 + v36[14], v7, &qword_100835D88, &qword_1006DE890);
      v13 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
      v14 = *(v13 - 8);
      LODWORD(v7) = (*(v14 + 48))(v7, 1, v13);
      sub_1000363B4(v11, v12);
      v15 = v0[5];
      if (v7 == 1)
      {
        sub_10000BE18(v0[5], &qword_100835D88, &qword_1006DE890);
      }

      else
      {
        CBOREncodedCBOR.dataValue.getter();
        (*(v14 + 8))(v15, v13);
      }

      v16 = v0[15];
      v17 = v0[8];
      MobileDocumentReaderCertificateResponse.StatusItem.init(sessionIdentifier:certificateChain:merchantLogo:externalData:)();
      sub_10035C718(v16);
      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        sub_10017329C(v18 > 1, v19 + 1, 1);
      }

      v20 = v0[8];
      v21 = v0[6];
      _swiftEmptyArrayStorage[2] = v19 + 1;
      (*(v35 + 32))(_swiftEmptyArrayStorage + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v19, v20, v21);
      v5 += v34;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  else
  {
    v22 = v0[26];
  }

  v23 = v0[20];
  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[15];
  v28 = v0[11];
  v27 = v0[12];
  v29 = v0[8];
  v30 = v0[5];
  v31 = v0[2];
  MobileDocumentReaderCertificateResponse.init(items:)();

  v32 = v0[1];

  return v32();
}

uint64_t sub_1003592E0()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v9 = v0[8];
  v10 = v0[5];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003594E0()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v9 = v0[8];
  v10 = v0[5];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003596C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_100007224(&qword_100841B98, &unk_1006DF0D0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v6[13] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = *(*(sub_100007224(&qword_100835D88, &qword_1006DE890) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v15 = type metadata accessor for DIPError.Code();
  v6[17] = v15;
  v16 = *(v15 - 8);
  v6[18] = v16;
  v17 = *(v16 + 64) + 15;
  v6[19] = swift_task_alloc();
  v18 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v19 = type metadata accessor for URL();
  v6[21] = v19;
  v20 = *(v19 - 8);
  v6[22] = v20;
  v21 = *(v20 + 64) + 15;
  v6[23] = swift_task_alloc();
  v22 = sub_100007224(&qword_100841BA0, &qword_1006DEA88);
  v6[24] = v22;
  v23 = *(v22 - 8);
  v6[25] = v23;
  v24 = *(v23 + 64) + 15;
  v6[26] = swift_task_alloc();
  v25 = sub_100007224(&qword_100841BA8, &unk_1006DEA90);
  v6[27] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v27 = *(*(sub_100007224(&qword_100841BB0, &unk_1006DF080) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v28 = type metadata accessor for Logotype();
  v6[31] = v28;
  v29 = *(v28 - 8);
  v6[32] = v29;
  v30 = *(v29 + 64) + 15;
  v6[33] = swift_task_alloc();
  v31 = *(*(sub_100007224(&unk_100849F90, &qword_1006DEAA0) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v32 = type metadata accessor for UUID();
  v6[35] = v32;
  v33 = *(v32 - 8);
  v6[36] = v33;
  v34 = *(v33 + 64) + 15;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_100359B54, 0, 0);
}

uint64_t sub_100359B54()
{
  v1 = v0[2];
  v0[40] = MobileDocumentReaderCertificateRequest.applicationIdentifier.getter();
  v0[41] = v2;
  if (!v2)
  {
LABEL_6:
    v15 = enum case for DIPError.Code.internalError(_:);
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[39];
    v24 = v0[38];
    v25 = v0[37];
    v26 = v0[34];
    v27 = v0[33];
    v28 = v0[30];
    v29 = v0[29];
    v30 = v0[28];
    v31 = v0[26];
    v32 = v0[23];
    v33 = v0[20];
    v34 = v0[16];
    v35 = v0[15];
    v36 = v0[14];
    v37 = v0[12];
    v38 = v0[9];
    v39 = v0[8];
    (*(v0[18] + 104))(v0[19], v15, v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }

  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
  v6 = v0[2];
  MobileDocumentReaderCertificateRequest.installationIdentifier.getter();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[34];

    sub_10000BE18(v7, &unk_100849F90, &qword_1006DEAA0);
    goto LABEL_6;
  }

  v8 = v0[39];
  v9 = v0[35];
  v10 = v0[36];
  v11 = v0[34];
  v12 = v0[2];
  v13 = *(v10 + 32);
  v0[42] = v13;
  v0[43] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v8, v11, v9);
  v0[44] = MobileDocumentReaderCertificateRequest.keyBlob.getter();
  v0[45] = v14;
  if (v14 >> 60 == 15)
  {
    (*(v0[36] + 8))(v0[39], v0[35]);

    goto LABEL_6;
  }

  v19 = v0[2];
  v0[46] = *(v0[7] + 16);
  v20 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
  v22 = v21;
  v0[47] = v21;
  v23 = swift_task_alloc();
  v0[48] = v23;
  *v23 = v0;
  v23[1] = sub_100359FD4;

  return sub_100352FB4(v20, v22);
}

uint64_t sub_100359FD4()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return _swift_task_switch(sub_10035A0EC, 0, 0);
}

uint64_t sub_10035A0EC()
{
  v1 = decodeCertificate(fromBase64DER:)(*(v0 + 24));
  *(v0 + 392) = v1;
  if (v2)
  {
    v4 = *(v0 + 352);
    v3 = *(v0 + 360);
    v5 = *(v0 + 328);
    (*(*(v0 + 288) + 8))(*(v0 + 312), *(v0 + 280));
    sub_10000BD94(v4, v3);

LABEL_4:
    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    v9 = *(v0 + 296);
    v112 = *(v0 + 272);
    v114 = *(v0 + 264);
    v116 = *(v0 + 240);
    v118 = *(v0 + 232);
    v120 = *(v0 + 224);
    v123 = *(v0 + 208);
    v125 = *(v0 + 184);
    v127 = *(v0 + 160);
    v130 = *(v0 + 128);
    v133 = *(v0 + 120);
    v136 = *(v0 + 112);
    v145 = *(v0 + 96);
    v140 = *(v0 + 72);
    v150 = *(v0 + 64);
    (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for DIPError.Code.internalError(_:), *(v0 + 136));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  v6 = *(v0 + 240);
  v149 = v1;
  SecCertificateRef.logotype.getter();
  v12 = *(v0 + 248);
  v13 = *(v0 + 256);
  v14 = *(v0 + 240);
  v15 = *(v13 + 48);
  *(v0 + 400) = v15;
  *(v0 + 408) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v16 = v15(v14, 1, v12);
  if (v16 != 1)
  {
    (*(v13 + 32))(*(v0 + 264), v14, v12);
    v19 = Logotype.logotypeTuples.getter();
    if (*(v19 + 16))
    {
      v21 = *(v0 + 216);
      v20 = *(v0 + 224);
      v22 = *(v0 + 208);
      v23 = *(v0 + 192);
      v24 = *(v0 + 176);
      v146 = *(v0 + 168);
      v141 = *(v0 + 160);
      v25 = *(*(v0 + 200) + 80);
      sub_10000BBC4(v19 + ((v25 + 32) & ~v25), v22, &qword_100841BA0, &qword_1006DEA88);

      v26 = (v22 + *(v23 + 48));
      v28 = *v26;
      v27 = v26[1];
      v29 = (v20 + *(v21 + 48));
      v30 = type metadata accessor for HashDigest();
      v31 = *(v30 - 8);
      (*(v31 + 32))(v20, v22, v30);
      *v29 = v28;
      v29[1] = v27;
      v32 = (v20 + *(v21 + 48));
      v33 = *v32;
      v34 = v32[1];
      (*(v31 + 8))(v20, v30);
      URL.init(string:)();

      if ((*(v24 + 48))(v141, 1, v146) != 1)
      {
        (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
        v91 = swift_task_alloc();
        *(v0 + 416) = v91;
        *v91 = v0;
        v91[1] = sub_10035B0C0;
        v92 = *(v0 + 184);

        return (sub_1003A1518)(v92);
      }

      v35 = *(v0 + 352);
      v131 = *(v0 + 360);
      v36 = *(v0 + 328);
      v147 = *(v0 + 312);
      v37 = *(v0 + 288);
      v38 = *(v0 + 256);
      v137 = *(v0 + 264);
      v142 = *(v0 + 280);
      v134 = *(v0 + 248);
      v40 = *(v0 + 152);
      v39 = *(v0 + 160);
      v42 = *(v0 + 136);
      v41 = *(v0 + 144);

      sub_10000BE18(v39, &unk_100844540, &unk_1006BFBC0);
      (*(v41 + 104))(v40, enum case for DIPError.Code.documentReaderCertificateInvalidLogoURL(_:), v42);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    else
    {
      v35 = *(v0 + 352);
      v131 = *(v0 + 360);
      v75 = *(v0 + 328);
      v147 = *(v0 + 312);
      v37 = *(v0 + 288);
      v38 = *(v0 + 256);
      v137 = *(v0 + 264);
      v142 = *(v0 + 280);
      v134 = *(v0 + 248);
      v77 = *(v0 + 144);
      v76 = *(v0 + 152);
      v78 = *(v0 + 136);

      (*(v77 + 104))(v76, enum case for DIPError.Code.documentReaderCertificateLogotypeMissing(_:), v78);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v35, v131);

    (*(v38 + 8))(v137, v134);
    (*(v37 + 8))(v147, v142);
    goto LABEL_4;
  }

  sub_10000BE18(v14, &qword_100841BB0, &unk_1006DF080);
  *(v0 + 448) = xmmword_1006BF650;
  v17 = *(v0 + 48);
  if (v17 >> 60 == 15)
  {
    v18 = 1;
  }

  else
  {
    v43 = *(v0 + 128);
    v44 = *(v0 + 40);
    type metadata accessor for MobileDocumentReaderExternalData();
    v45 = type metadata accessor for CBORDecoder();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_10000B8B8(v44, v17);
    CBORDecoder.init()();
    sub_10035C774(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData);
    sub_10035C774(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData);
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    v18 = 0;
  }

  v48 = *(v0 + 392);
  v50 = *(v0 + 304);
  v49 = *(v0 + 312);
  v52 = *(v0 + 280);
  v51 = *(v0 + 288);
  v54 = *(v0 + 120);
  v53 = *(v0 + 128);
  v55 = *(v0 + 16);
  v56 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  (*(*(v56 - 8) + 56))(v53, v18, 1, v56);
  v143 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
  v151 = v57;
  v138 = *(v51 + 16);
  v138(v50, v49, v52);
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1006DAE90;
  *(v58 + 32) = v48;
  sub_10000BBC4(v53, v54, &qword_100835D88, &qword_1006DE890);
  v59 = v48;
  if ((v58 & 0xC000000000000001) != 0)
  {
    sub_1000363B4(*(v0 + 352), *(v0 + 360));
    sub_1000363B4(0, 0xF000000000000000);
    v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v61 = *(v0 + 352);
    v60 = *(v0 + 360);
    v62 = *(v0 + 392);
    sub_1000363B4(v61, v60);
    sub_1000363B4(0, 0xF000000000000000);
    v63 = *(v0 + 392);
  }

  v65 = *(v0 + 80);
  v64 = *(v0 + 88);
  v66 = *(v0 + 72);
  SecCertificateRef.expirationDate.getter();
  if ((*(v64 + 48))(v66, 1, v65) == 1)
  {
    v128 = *(v0 + 392);
    v67 = *(v0 + 352);
    v68 = *(v0 + 360);
    v69 = *(v0 + 328);
    v148 = *(v0 + 312);
    v121 = *(v0 + 288);
    v132 = *(v0 + 280);
    v70 = *(v0 + 144);
    v71 = *(v0 + 152);
    v72 = *(v0 + 136);
    v139 = *(v0 + 128);
    v144 = *(v0 + 304);
    v126 = *(v0 + 120);
    v73 = *(v0 + 72);
    sub_10000BD94(0, 0xF000000000000000);
    sub_10000BD94(v67, v68);

    sub_10000BE18(v73, &unk_100849400, &unk_1006BFBB0);
    (*(v70 + 104))(v71, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v72);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(0, 0xF000000000000000);
    sub_10000BD94(v67, v68);

    sub_10000BE18(v126, &qword_100835D88, &qword_1006DE890);
    v74 = *(v121 + 8);
    v74(v144, v132);
    sub_10000BE18(v139, &qword_100835D88, &qword_1006DE890);
    v74(v148, v132);
    goto LABEL_4;
  }

  v79 = *(v0 + 232);
  v129 = *(*(v0 + 88) + 32);
  v129(*(v0 + 96), *(v0 + 72), *(v0 + 80));
  v80 = SecCertificateRef.pseudonym.getter();
  v82 = v81;
  SecCertificateRef.logotype.getter();
  v107 = *(v0 + 408);
  v108 = *(v0 + 232);
  v109 = (*(v0 + 400))(v108, 1, *(v0 + 248));
  sub_10000BE18(v108, &qword_100841BB0, &unk_1006DF080);
  v110 = 0;
  if (v109 == 1 || !v82)
  {
    v83 = v80;
    v84 = *(v0 + 64);
    v85 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
    (*(*(v85 - 8) + 56))(v84, 1, 1, v85);
  }

  else
  {
    v111 = *(v0 + 64);
    SecCertificateRef.localizedRelyingPartyNames.getter();
    v83 = v80;
    v110 = 1;
  }

  v86 = *(v0 + 304);
  v88 = *(v0 + 280);
  v87 = *(v0 + 288);
  v138(*(v0 + 296), v86, v88);
  v89 = SecCertificateRef.uid()();

  v90 = *(v87 + 8);
  *(v0 + 464) = v90;
  *(v0 + 472) = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v90(v86, v88);
  v135 = v58;
  if (v110)
  {
    v122 = v83;
    v124 = v82;
  }

  else
  {
    sub_10000BD94(0, 0xF000000000000000);

    v122 = 0;
    v124 = 0;
  }

  v115 = *(v0 + 352);
  v117 = *(v0 + 360);
  v93 = *(v0 + 336);
  v113 = *(v0 + 344);
  v94 = *(v0 + 320);
  v95 = *(v0 + 328);
  v96 = *(v0 + 296);
  v97 = *(v0 + 280);
  v98 = *(v0 + 112);
  v119 = *(v0 + 120);
  v99 = *(v0 + 96);
  v100 = *(v0 + 104);
  v101 = *(v0 + 80);
  sub_1000B1FC8(*(v0 + 64), v98 + v100[12], &qword_100841B98, &unk_1006DF0D0);
  v129(v98 + v100[13], v99, v101);
  *v98 = v143;
  v98[1] = v151;
  v98[2] = v94;
  v98[3] = v95;
  v93(v98 + v100[6], v96, v97);
  *(v98 + v100[7]) = v135;
  v102 = (v98 + v100[8]);
  *v102 = v115;
  v102[1] = v117;
  *(v98 + v100[9]) = v89;
  *(v98 + v100[10]) = xmmword_1006BF650;
  v103 = (v98 + v100[11]);
  *v103 = v122;
  v103[1] = v124;
  sub_1000B1FC8(v119, v98 + v100[14], &qword_100835D88, &qword_1006DE890);
  v104 = swift_task_alloc();
  *(v0 + 480) = v104;
  *v104 = v0;
  v104[1] = sub_10035BF68;
  v105 = *(v0 + 368);
  v106 = *(v0 + 112);

  return sub_1003520AC(v106);
}

uint64_t sub_10035B0C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 416);
  v8 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {
    v9 = v6[41];

    v10 = sub_10035BC90;
  }

  else
  {
    v6[54] = a2;
    v6[55] = a1;
    v10 = sub_10035B1FC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10035B1FC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 424);
  v119 = *(v0 + 432);
  v121 = *(v0 + 440);
  *(v0 + 448) = v121;
  *(v0 + 456) = v119;
  v5 = *(v0 + 48);
  if (v5 >> 60 == 15)
  {
    v106 = v4;
    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 40);
    type metadata accessor for MobileDocumentReaderExternalData();
    v9 = type metadata accessor for CBORDecoder();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_10000B8B8(v8, v5);
    CBORDecoder.init()();
    sub_10035C774(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData);
    sub_10035C774(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData);
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    v6 = v4;
    if (v4)
    {
      v12 = *(v0 + 392);
      v13 = *(v0 + 352);
      v14 = *(v0 + 360);
      v15 = *(v0 + 328);
      (*(*(v0 + 288) + 8))(*(v0 + 312), *(v0 + 280));

      sub_10000BD94(v121, v119);
      sub_10000BD94(v13, v14);

LABEL_10:
      v48 = *(v0 + 304);
      v49 = *(v0 + 312);
      v86 = *(v0 + 296);
      v88 = *(v0 + 272);
      v90 = *(v0 + 264);
      v92 = *(v0 + 240);
      v95 = *(v0 + 232);
      v98 = *(v0 + 224);
      v101 = *(v0 + 208);
      v104 = *(v0 + 184);
      v108 = *(v0 + 160);
      v112 = *(v0 + 128);
      v114 = *(v0 + 120);
      v116 = *(v0 + 112);
      v118 = *(v0 + 72);
      v120 = *(v0 + 96);
      v122 = *(v0 + 64);
      (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for DIPError.Code.internalError(_:), *(v0 + 136));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v50 = *(v0 + 8);

      return v50();
    }

    v106 = 0;
  }

  v16 = *(v0 + 392);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  v21 = *(v0 + 120);
  v22 = *(v0 + 128);
  v23 = *(v0 + 16);
  v24 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  (*(*(v24 - 8) + 56))(v22, v6, 1, v24);
  v25 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
  v117 = v26;
  v110 = *(v19 + 16);
  v110(v18, v17, v20);
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006DAE90;
  *(v27 + 32) = v16;
  sub_10000BBC4(v22, v21, &qword_100835D88, &qword_1006DE890);
  v28 = v16;
  v115 = v27;
  if ((v27 & 0xC000000000000001) != 0)
  {
    sub_1000363B4(*(v0 + 352), *(v0 + 360));
    v32 = v119;
    v33 = v121;
    sub_1000363B4(v121, v119);
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v29 = *(v0 + 352);
    v30 = *(v0 + 360);
    v31 = *(v0 + 392);
    sub_1000363B4(v29, v30);
    v32 = v119;
    v33 = v121;
    sub_1000363B4(v121, v119);
    v34 = *(v0 + 392);
  }

  v35 = *(v0 + 80);
  v36 = *(v0 + 88);
  v37 = *(v0 + 72);
  SecCertificateRef.expirationDate.getter();
  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    v38 = *(v0 + 360);
    v39 = v32;
    v40 = *(v0 + 352);
    v41 = *(v0 + 328);
    v111 = *(v0 + 304);
    v113 = *(v0 + 312);
    v100 = *(v0 + 392);
    v103 = *(v0 + 280);
    v43 = *(v0 + 144);
    v42 = *(v0 + 152);
    v44 = v33;
    v45 = *(v0 + 136);
    v107 = *(v0 + 128);
    v94 = *(v0 + 288);
    v97 = *(v0 + 120);
    v46 = *(v0 + 72);
    sub_10000BD94(v44, v39);
    sub_10000BD94(v40, v38);

    sub_10000BE18(v46, &unk_100849400, &unk_1006BFBB0);
    (*(v43 + 104))(v42, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v45);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v121, v119);
    sub_10000BD94(v40, v38);

    sub_10000BE18(v97, &qword_100835D88, &qword_1006DE890);
    v47 = *(v94 + 8);
    v47(v111, v103);
    sub_10000BE18(v107, &qword_100835D88, &qword_1006DE890);
    v47(v113, v103);
    goto LABEL_10;
  }

  v52 = *(v0 + 232);
  v99 = (*(v0 + 88) + 32);
  v102 = v25;
  v96 = *v99;
  (*v99)(*(v0 + 96), *(v0 + 72), *(v0 + 80));
  v53 = SecCertificateRef.pseudonym.getter();
  v55 = v54;
  SecCertificateRef.logotype.getter();
  v105 = v53;
  if (v106)
  {
    v56 = *(v0 + 248);
    v57 = *(v0 + 256);
    v58 = *(v0 + 232);

    (*(v57 + 56))(v58, 1, 1, v56);
    sub_10000BE18(v58, &qword_100841BB0, &unk_1006DF080);
    v59 = 0;
  }

  else
  {
    v82 = *(v0 + 408);
    v83 = *(v0 + 232);
    v84 = (*(v0 + 400))(v83, 1, *(v0 + 248));
    sub_10000BE18(v83, &qword_100841BB0, &unk_1006DF080);
    v59 = 0;
    if (v84 != 1 && v55)
    {
      v85 = *(v0 + 64);
      SecCertificateRef.localizedRelyingPartyNames.getter();
      v59 = 1;
      goto LABEL_16;
    }
  }

  v60 = *(v0 + 64);
  v61 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
  (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
LABEL_16:
  v62 = *(v0 + 304);
  v63 = *(v0 + 280);
  v64 = *(v0 + 288);
  v110(*(v0 + 296), v62, v63);
  v65 = SecCertificateRef.uid()();

  v66 = *(v64 + 8);
  *(v0 + 464) = v66;
  *(v0 + 472) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v66(v62, v63);
  if (v59)
  {
    v109 = v55;
  }

  else
  {
    sub_10000BD94(v121, v32);

    v105 = 0;
    v109 = 0;
    v119 = 0xF000000000000000;
    v121 = 0;
  }

  v89 = *(v0 + 352);
  v91 = *(v0 + 360);
  v67 = *(v0 + 336);
  v87 = *(v0 + 344);
  v68 = *(v0 + 320);
  v69 = *(v0 + 328);
  v70 = *(v0 + 296);
  v71 = *(v0 + 280);
  v72 = *(v0 + 112);
  v93 = *(v0 + 120);
  v74 = *(v0 + 96);
  v73 = *(v0 + 104);
  v75 = *(v0 + 80);
  sub_1000B1FC8(*(v0 + 64), v72 + v73[12], &qword_100841B98, &unk_1006DF0D0);
  v96(v72 + v73[13], v74, v75);
  *v72 = v102;
  v72[1] = v117;
  v72[2] = v68;
  v72[3] = v69;
  v67(v72 + v73[6], v70, v71);
  *(v72 + v73[7]) = v115;
  v76 = (v72 + v73[8]);
  *v76 = v89;
  v76[1] = v91;
  *(v72 + v73[9]) = v65;
  v77 = (v72 + v73[10]);
  *v77 = v121;
  v77[1] = v119;
  v78 = (v72 + v73[11]);
  *v78 = v105;
  v78[1] = v109;
  sub_1000B1FC8(v93, v72 + v73[14], &qword_100835D88, &qword_1006DE890);
  v79 = swift_task_alloc();
  *(v0 + 480) = v79;
  *v79 = v0;
  v79[1] = sub_10035BF68;
  v80 = *(v0 + 368);
  v81 = *(v0 + 112);

  return sub_1003520AC(v81);
}

uint64_t sub_10035BC90()
{
  v1 = v0[49];
  v29 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[21];
  sub_10000BD94(v0[44], v0[45]);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v29, v2);
  v10 = v0[53];
  v11 = v0[38];
  v12 = v0[39];
  v13 = v0[37];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[20];
  v24 = v0[16];
  v25 = v0[15];
  v26 = v0[14];
  v27 = v0[9];
  v28 = v0[12];
  v30 = v0[8];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_10035BF68()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  sub_10035C718(*(v2 + 112));
  if (v0)
  {
    v5 = sub_10035C244;
  }

  else
  {
    v5 = sub_10035C09C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10035C09C()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[49];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[35];
  v12 = v0[37];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[26];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[19];
  v9 = v0[16];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[12];
  v25 = v0[9];
  v26 = v0[8];
  sub_10000BD94(v0[56], v0[57]);
  sub_10000BD94(v5, v4);

  sub_10000BE18(v9, &qword_100835D88, &qword_1006DE890);
  v1(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10035C244()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[49];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[39];
  v7 = v0[35];
  v8 = v0[16];
  sub_10000BD94(v0[56], v0[57]);
  sub_10000BD94(v4, v5);

  sub_10000BE18(v8, &qword_100835D88, &qword_1006DE890);
  v2(v6, v7);
  v9 = v0[61];
  v10 = v0[38];
  v11 = v0[39];
  v12 = v0[37];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[26];
  v21 = v0[23];
  v22 = v0[20];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[14];
  v26 = v0[9];
  v27 = v0[12];
  v28 = v0[8];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10035C774(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_10035C4FC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void *sub_10035C568()
{
  v1 = v0;
  v2 = type metadata accessor for SESKeystore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = SESKeystore.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v6 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v6 + 54);
  sub_1000318FC(&v6[4], v11);
  os_unfair_lock_unlock(v6 + 54);
  v7 = v13;

  sub_100031918(v11);
  v15 = type metadata accessor for MobileDocumentReaderDataContainer();
  v16 = sub_10035C774(&qword_100841BD0, type metadata accessor for MobileDocumentReaderDataContainer);
  *&v14 = v7;
  type metadata accessor for MobileDocumentReaderAuthenticationStorage();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  sub_10001F358(&v14, v8 + 24);
  v1[2] = v8;
  type metadata accessor for MobileDocumentReaderLogoFetcher();
  v1[3] = swift_allocObject();
  type metadata accessor for UserDefaultsConfiguration();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9 = static UserDefaultsConfiguration.standard.getter();
  type metadata accessor for MobileDocumentReaderIssuerRootStorage();
  swift_allocObject();
  v1[4] = sub_100348254(v11, v9);
  return v1;
}

uint64_t sub_10035C718(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10035C774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10035C7BC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10035C8E4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10035C990(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_10000B8B8(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_10000B90C(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_10035CA40(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10035CAE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = a4;
  v84 = a3;
  v104 = a2;
  v113 = a1;
  v91 = type metadata accessor for COSE_Sign1();
  v90 = *(v91 - 8);
  v4 = *(v90 + 64);
  __chkstk_darwin(v91);
  v92 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DIPError.Code();
  v116 = *(v114 - 8);
  v6 = *(v116 + 64);
  __chkstk_darwin(v114);
  v115 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CoreIDVFeatureFlag();
  v88 = *(v89 - 8);
  v8 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for COSE_Mac0();
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  __chkstk_darwin(v96);
  v94 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ISO18013Response.DeviceAuth();
  v93 = *(v100 - 8);
  v12 = *(v93 + 64);
  __chkstk_darwin(v100);
  v99 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo();
  v102 = *(v14 - 8);
  v103 = v14;
  v15 = *(v102 + 64);
  __chkstk_darwin(v14);
  v101 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for COSEKey();
  v97 = *(v98 - 8);
  v17 = *(v97 + 64);
  __chkstk_darwin(v98);
  v105 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ISO18013SessionTranscript();
  v19 = *(v107 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v107);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100007224(&qword_100841BD8, &qword_1006DEB00);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v84 - v25;
  v27 = type metadata accessor for ISO18013Response.DeviceSigned();
  v117 = *(v27 - 8);
  v118 = v27;
  v28 = *(v117 + 64);
  __chkstk_darwin(v27);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Logger();
  v31 = *(v119 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v119);
  v106 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v86 = &v84 - v36;
  v37 = __chkstk_darwin(v35);
  v85 = &v84 - v38;
  __chkstk_darwin(v37);
  v40 = &v84 - v39;
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "ISO18013DeviceAuthenticator validating document", v43, 2u);
  }

  v110 = *(v31 + 8);
  v111 = v31 + 8;
  v110(v40, v119);
  ISO18013Response.Document.deviceSigned.getter();
  v44 = v117;
  v45 = v118;
  if ((*(v117 + 48))(v26, 1, v118) == 1)
  {
    sub_10000BE18(v26, &qword_100841BD8, &qword_1006DEB00);
    v46 = v115;
    v47 = v114;
    (*(v116 + 104))(v115, enum case for DIPError.Code.documentReaderMalformedDeviceAuthStructure(_:), v114);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_7;
  }

  v48 = v30;
  (*(v44 + 32))(v30, v26, v45);
  sub_100007224(&qword_100841BE0, &qword_1006DEB08);
  CBOREncodedCBOR.value.getter();
  v49 = ISO18013Response.Document.docType.getter();
  v50 = v108;
  v52 = sub_10035DDC0(v22, v49, v51, v30);
  if (v50)
  {

    (*(v19 + 8))(v22, v107);
    (*(v44 + 8))(v30, v45);
    v47 = v114;
    v46 = v115;
    goto LABEL_7;
  }

  v108 = v52;
  v113 = v53;
  (*(v19 + 8))(v22, v107);

  v59 = v101;
  ISO18013MobileSecurityObject.deviceKeyInfo.getter();
  v60 = v105;
  sub_10035E320(v59, v105);
  (*(v102 + 8))(v59, v103);
  v61 = v99;
  ISO18013Response.DeviceSigned.deviceAuth.getter();
  v62 = v93;
  v63 = v100;
  v64 = (*(v93 + 88))(v61, v100);
  v47 = v114;
  v46 = v115;
  if (v64 == enum case for ISO18013Response.DeviceAuth.deviceMAC(_:))
  {
    (*(v62 + 96))(v61, v63);
    (*(v95 + 32))(v94, v61, v96);
    v65 = v85;
    defaultLogger()();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "ISO18013DeviceAuthenticator device signed structure contains a device mac.", v68, 2u);
    }

    v110(v65, v119);
    v69 = v112[4];
    v107 = v112[5];
    sub_10000BA08(v112 + 1, v69);
    v70 = v88;
    v71 = v87;
    v72 = v89;
    (*(v88 + 104))(v87, enum case for CoreIDVFeatureFlag.mobileDocumentReaderMACAuthentication(_:), v89);
    LOBYTE(v69) = dispatch thunk of FeatureFlagProviding.isEnabled(_:)();
    (*(v70 + 8))(v71, v72);
    if (v69)
    {
      v73 = type metadata accessor for ISO18013DeviceAuthenticator();
      v74 = v113;
      v75 = v112 + *(v73 + 24);
      v76 = v94;
      v77 = v108;
      COSEMACValidator.validateMAC(_:deviceKey:deviceAuthenticationBytes:ephemeralReaderKey:sessionTranscript:)();
      sub_10000B90C(v77, v74);
      (*(v95 + 8))(v76, v96);
LABEL_21:
      (*(v97 + 8))(v105, v98);
      return (*(v117 + 8))(v48, v118);
    }

    (*(v116 + 104))(v46, enum case for DIPError.Code.documentReaderDeviceMacUnsupported(_:), v47);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v108, v113);
    (*(v95 + 8))(v94, v96);
    (*(v97 + 8))(v105, v98);
    (*(v117 + 8))(v48, v118);
  }

  else
  {
    if (v64 == enum case for ISO18013Response.DeviceAuth.deviceSignature(_:))
    {
      (*(v62 + 96))(v61, v63);
      (*(v90 + 32))(v92, v61, v91);
      defaultLogger()();
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "ISO18013DeviceAuthenticator device signed structure contains a device signature. Validating signature now", v80, 2u);
      }

      v110(v86, v119);
      v81 = v60;
      v82 = v108;
      v83 = v113;
      sub_10035E8F4(v92, v81, v108, v113);
      sub_10000B90C(v82, v83);
      (*(v90 + 8))(v92, v91);
      goto LABEL_21;
    }

    (*(v116 + 104))(v115, enum case for DIPError.Code.badLogic(_:), v114);
    v112 = v48;
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v108, v113);
    (*(v97 + 8))(v105, v98);
    (*(v117 + 8))(v112, v118);
    (*(v62 + 8))(v99, v100);
  }

LABEL_7:
  v54 = [objc_opt_self() standardUserDefaults];
  v55._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableMdocAuthentication.getter();
  v56 = NSUserDefaults.internalBool(forKey:)(v55);

  if (v56)
  {
    v57 = v106;
    defaultLogger()();
    DIPLogError(_:message:log:)();

    return (v110)(v57, v119);
  }

  else
  {
    (*(v116 + 104))(v46, enum case for DIPError.Code.internalError(_:), v47);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

unint64_t sub_10035DDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v42 = a4;
  v5 = type metadata accessor for DIPError.Code();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_10083F170, &qword_1006DC630);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v38 = &v35 - v10;
  v11 = sub_100007224(&qword_100841BF8, &unk_1006DEB20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for ISO18013SessionTranscript();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ISO18013DeviceAuthentication();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13);

  ISO18013Response.DeviceSigned.namespaces.getter();
  ISO18013DeviceAuthentication.init(sessionTranscript:docType:deviceNamespaceBytes:)();
  v23 = *v44;
  sub_1003602C0(&qword_100841C00, &type metadata accessor for ISO18013DeviceAuthentication);
  v24 = v47;
  v25 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v24)
  {
    (*(v19 + 8))(v22, v18);
    (*(v39 + 104))(v41, enum case for DIPError.Code.cborEncodingFailed(_:), v40);
    swift_errorRetain();
    v32 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v27 = v25;
    v28 = v26;
    v45 = v25;
    v46 = v26;
    v29 = type metadata accessor for CBOREncoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_10000B8B8(v27, v28);
    CBOREncoder.init()();
    sub_10000B960();
    sub_10000B9B4();
    CBOREncodedCBOR.init(value:tag:encoder:)();
    v34 = v38;
    v32 = CBOREncodedCBOR.dataValue.getter();
    sub_10000B90C(v27, v28);
    (*(v36 + 8))(v34, v37);
    (*(v19 + 8))(v22, v18);
  }

  return v32;
}

uint64_t sub_10035E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a1;
  v45 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Logger();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v51);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&qword_100841BF0, &qword_1006DEB18);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v53 = &v42 - v13;
  v14 = sub_100007224(&qword_100841BF8, &unk_1006DEB20);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  ISO18013Response.DeviceSigned.namespaces.getter();
  CBOREncodedCBOR.value.getter();
  result = (*(v15 + 8))(v18, v14);
  v21 = 0;
  v23 = v55 + 8;
  v22 = v55[8];
  v54 = v55;
  v24 = 1 << *(v55 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v48 = (v7 + 8);
  *&v20 = 136315138;
  v46 = v20;
  v49 = v27;
  v50 = v55 + 8;
  while (v26)
  {
    v28 = v21;
    v29 = v53;
LABEL_12:
    v30 = __clz(__rbit64(v26)) | (v28 << 6);
    v31 = (*(v54 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = *(*(v54 + 56) + 8 * v30);

    ISO18013MobileSecurityObject.DeviceKeyInfo.keyAuthorizations.getter();
    sub_10035F088(v33, v32, v34, v29);
    if (v3)
    {
      sub_10000BE18(v29, &qword_100841BF0, &qword_1006DEB18);

      (*(v42 + 104))(v44, enum case for DIPError.Code.internalError(_:), v43);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    v26 &= v26 - 1;
    sub_10000BE18(v29, &qword_100841BF0, &qword_1006DEB18);

    v35 = v10;
    defaultLogger()();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v47 = 0;
      v39 = v38;
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = v46;
      v41 = sub_100141FE4(v33, v32, &v55);

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v36, v37, "ISO18013DeviceAuthenticator successfully authorized namespace %s", v39, 0xCu);
      sub_10000BB78(v40);

      v3 = v47;
    }

    else
    {
    }

    result = (*v48)(v35, v51);
    v21 = v28;
    v10 = v35;
    v27 = v49;
    v23 = v50;
  }

  v29 = v53;
  while (1)
  {
    v28 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      return ISO18013MobileSecurityObject.DeviceKeyInfo.deviceKey.getter();
    }

    v26 = v23[v28];
    ++v21;
    if (v26)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10035E8F4(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_100841BE8, &qword_1006DEB10);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for PublicKeyAlgorithm();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035FD30(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000BE18(v15, &qword_100841BE8, &qword_1006DEB10);
    v48 = "led by feature flag";
    v21 = *(v5 + 104);
    v21(v8, enum case for DIPError.Code.documentReaderUnknownDeviceAuthAlgorithm(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v49 = 0x8000000100710250;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v21(v8, enum case for DIPError.Code.internalError(_:), v4);
LABEL_5:
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  (*(v17 + 32))(v20, v15, v16);
  v22 = COSEKey.publicKeyData.getter();
  if (v23 >> 60 == 15)
  {
    v24 = *(v5 + 104);
    v47 = "ing the device signature";
    v48 = v24;
    (v24)(v8, enum case for DIPError.Code.documentReaderInvalidDeviceAuthPublicKey(_:), v4);
    v46 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v49 = 0x8000000100710250;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v17 + 8))(v20, v16);
    (v48)(v8, enum case for DIPError.Code.internalError(_:), v4);
    goto LABEL_5;
  }

  v38 = v9;
  v39 = v8;
  v40 = v4;
  v26 = v22;
  v27 = v23;
  v42 = *(type metadata accessor for ISO18013DeviceAuthenticator() + 28);
  v28 = COSE_Sign1.signature.getter();
  v30 = v29;
  COSE_Sign1.algorithmIdentifier.getter();
  v41 = v28;
  v42 = v30;
  v45 = v26;
  v46 = v27;
  v31 = v49;
  COSESignatureValidator.validateSignature(signature:publicKeyData:publicKeyAlgorithm:algorithmIdentifier:payload:)();
  if (v31)
  {
    (*(v17 + 8))(v20, v16);
    sub_10000B90C(v41, v42);
    sub_10000BD94(v45, v46);
    v32 = *(v5 + 104);
    v49 = 0x8000000100710250;
    v32(v39, enum case for DIPError.Code.internalError(_:), v40);
    goto LABEL_5;
  }

  sub_10000B90C(v41, v42);
  v33 = v43;
  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "ISO18013DeviceAuthenticator successfully validated device signature", v36, 2u);
  }

  sub_10000BD94(v45, v46);

  (*(v44 + 8))(v33, v38);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_10035F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a3;
  v95 = a2;
  v89 = a1;
  v6 = type metadata accessor for DIPError.Code();
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  __chkstk_darwin(v6);
  v88 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v90 = v9;
  v91 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v86 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v83 = v81 - v15;
  v16 = __chkstk_darwin(v14);
  v82 = v81 - v17;
  __chkstk_darwin(v16);
  v84 = v81 - v18;
  v19 = sub_100007224(&qword_100841BF0, &qword_1006DEB18);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v81 - v24;
  sub_1003601DC(a4, v81 - v24);
  v26 = type metadata accessor for ISO18013MobileSecurityObject.KeyAuthorizations();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v25, 1, v26);
  v92 = v6;
  if (v29 == 1)
  {
    sub_10000BE18(v25, &qword_100841BF0, &qword_1006DEB18);
  }

  else
  {
    v30 = ISO18013MobileSecurityObject.KeyAuthorizations.namespaces.getter();
    v31 = (*(v27 + 8))(v25, v26);
    if (v30)
    {
      v81[1] = v81;
      v32 = v95;
      v93 = v89;
      v94 = v95;
      __chkstk_darwin(v31);
      v80 = &v93;
      v33 = sub_10035C8E4(sub_100360690, &v78, v30);
      v81[2] = v4;

      if (v33)
      {
        v34 = v84;
        defaultLogger()();

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = v32;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v93 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_100141FE4(v89, v37, &v93);
          _os_log_impl(&_mh_execute_header, v35, v36, "ISO18013DeviceAuthenticator authorizedNamespaces contains current namespace %s.", v38, 0xCu);
          sub_10000BB78(v39);
        }

        return (*(v91 + 8))(v34, v90);
      }

      v6 = v92;
    }

    else
    {
      v6 = v92;
    }
  }

  sub_1003601DC(a4, v23);
  if (v28(v23, 1, v26) == 1)
  {
    sub_10000BE18(v23, &qword_100841BF0, &qword_1006DEB18);
    v41 = v88;
    v42 = v95;
LABEL_26:
    v57 = v86;
    defaultLogger()();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v6;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v93 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_100141FE4(v89, v42, &v93);
      _os_log_impl(&_mh_execute_header, v58, v59, "ISO18013DeviceAuthenticator namespace %s is in device signed structure, but not the key authorizations structure.", v61, 0xCu);
      sub_10000BB78(v62);

      v6 = v60;
    }

    (*(v91 + 8))(v57, v90);
    v91 = *(v87 + 104);
    (v91)(v41, enum case for DIPError.Code.documentReaderUnauthorizedDeviceKey(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v63 = v41;
    v79 = 0x80000001007103E0;
    v80 = 161;
    v78 = 0xD00000000000003FLL;
    v95 = 0x8000000100710040;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_29:
    (v91)(v63, enum case for DIPError.Code.internalError(_:), v92);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v79 = 0x80000001007103E0;
    v80 = 173;
    v78 = 0xD00000000000003FLL;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v43 = ISO18013MobileSecurityObject.KeyAuthorizations.dataElements.getter();
  (*(v27 + 8))(v23, v26);
  v41 = v88;
  v42 = v95;
  if (!v43)
  {
    goto LABEL_26;
  }

  if (!*(v43 + 16) || (v44 = sub_10003ADCC(v89, v95), (v45 & 1) == 0))
  {

    goto LABEL_26;
  }

  v46 = *(*(v43 + 56) + 8 * v44);

  v47 = v85 + 64;
  v48 = 1 << *(v85 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v85 + 64);
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  if (v50)
  {
    while (1)
    {
      v53 = v52;
LABEL_22:
      v54 = (*(v85 + 48) + ((v53 << 10) | (16 * __clz(__rbit64(v50)))));
      v56 = *v54;
      v55 = v54[1];
      v93 = *v54;
      v94 = v55;
      __chkstk_darwin(result);
      v80 = &v93;

      if ((sub_10035C8E4(sub_10036024C, &v78, v46) & 1) == 0)
      {
        break;
      }

      v50 &= v50 - 1;

      v52 = v53;
      if (!v50)
      {
        goto LABEL_19;
      }
    }

    v70 = v82;
    defaultLogger()();
    v71 = v95;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v88;
    if (v74)
    {
      v76 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_100141FE4(v89, v71, &v93);
      *(v76 + 12) = 2080;
      v77 = sub_100141FE4(v56, v55, &v93);

      *(v76 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v72, v73, "ISO18013DeviceAuthenticator %s.%s is in device signed structure, but not the key authorizations structure.", v76, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v91 + 8))(v70, v90);
    v63 = v75;
    v91 = *(v87 + 104);
    (v91)(v75, enum case for DIPError.Code.documentReaderUnauthorizedDeviceKey(_:), v92);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003602C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v79 = 0x80000001007103E0;
    v80 = 167;
    v78 = 0xD00000000000003FLL;
    v95 = 0x8000000100710040;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_29;
  }

  while (1)
  {
LABEL_19:
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      return result;
    }

    if (v53 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v53);
    ++v52;
    if (v50)
    {
      goto LABEL_22;
    }
  }

  v64 = v83;
  defaultLogger()();
  v65 = v95;

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v93 = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_100141FE4(v89, v65, &v93);
    _os_log_impl(&_mh_execute_header, v66, v67, "ISO18013DeviceAuthenticator successfully authorized elements in namespace %s.", v68, 0xCu);
    sub_10000BB78(v69);
  }

  return (*(v91 + 8))(v64, v90);
}

uint64_t sub_10035FD30@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  COSEKey.ec2.getter();
  v10 = v38;
  if (v38 >> 60 != 15)
  {
    v18 = v39;
    v17 = v40;
    v20 = v36;
    v19 = v37;
    sub_10000B90C(v41, v42);
    sub_10000B90C(v18, v17);
    sub_10000B90C(v19, v10);
    switch(v20)
    {
      case 3:
        v21 = &enum case for PublicKeyAlgorithm.EC_P521(_:);
        break;
      case 2:
        v21 = &enum case for PublicKeyAlgorithm.EC_P384(_:);
        break;
      case 1:
        v21 = &enum case for PublicKeyAlgorithm.EC_P256(_:);
        break;
      default:
        goto LABEL_17;
    }

LABEL_24:
    v32 = *v21;
    v33 = type metadata accessor for PublicKeyAlgorithm();
    v35 = *(v33 - 8);
    (*(v35 + 104))(a1, v32, v33);
    v23 = *(v35 + 56);
    v25 = a1;
    v26 = 0;
    v24 = v33;
    goto LABEL_25;
  }

  COSEKey.okp.getter();
  v11 = v45;
  if (v45 >> 60 != 15)
  {
    v13 = v43;
    v12 = v44;
    sub_10000B90C(v46, v47);
    sub_10000B90C(v12, v11);
    if (v13 <= 5)
    {
      if (v13 == 4)
      {
        defaultLogger()();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "X25519 is not a signing algorithm", v29, 2u);
        }

        (*(v3 + 8))(v9, v2);
        goto LABEL_22;
      }

      if (v13 == 5)
      {
        defaultLogger()();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "X448 is not a signing algorithm", v16, 2u);
        }

        (*(v3 + 8))(v7, v2);
LABEL_22:
        v30 = type metadata accessor for PublicKeyAlgorithm();
        return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
      }

      goto LABEL_17;
    }

    if (v13 == 7)
    {
      v21 = &enum case for PublicKeyAlgorithm.ED_448(_:);
      goto LABEL_24;
    }

    if (v13 == 6)
    {
      v21 = &enum case for PublicKeyAlgorithm.ED_25519(_:);
      goto LABEL_24;
    }
  }

LABEL_17:
  v22 = type metadata accessor for PublicKeyAlgorithm();
  v23 = *(*(v22 - 8) + 56);
  v24 = v22;
  v25 = a1;
  v26 = 1;
LABEL_25:

  return v23(v25, v26, 1, v24);
}

uint64_t sub_100360138(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t type metadata accessor for ISO18013DeviceAuthenticator()
{
  result = qword_100841C60;
  if (!qword_100841C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003601DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100841BF0, &qword_1006DEB18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100360268(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1003602C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036031C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for COSEMACValidator();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for COSESignatureValidator();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100360454(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for COSEMACValidator();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for COSESignatureValidator();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_100360578()
{
  result = type metadata accessor for CBOREncoder();
  if (v1 <= 0x3F)
  {
    result = sub_10036062C();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for COSEMACValidator();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for COSESignatureValidator();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_10036062C()
{
  result = qword_100841C70;
  if (!qword_100841C70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100841C70);
  }

  return result;
}

void sub_1003606AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_100172D4C(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v2 + 56;
    v5 = -1 << *(v2 + 32);
    v6 = _HashTable.startBucket.getter();
    v7 = 0;
    v33 = v2;
    v30 = v2 + 64;
    v31 = v1;
    v32 = v2 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      v11 = v3;
      v34 = v7;
      v35 = *(v2 + 36);
      v12 = (*(v2 + 48) + 24 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      sub_10000B8B8(*v12, v14);

      sub_10000B8B8(v13, v14);

      isa = Data._bridgeToObjectiveC()().super.isa;
      v17 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

      if (!v17)
      {
        goto LABEL_27;
      }

      v36 = SecCertificateRef.base64EncodedString.getter();
      v19 = v18;

      sub_10000B90C(v13, v14);

      sub_10000B90C(v13, v14);

      v3 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_100172D4C((v20 > 1), v21 + 1, 1);
        v3 = v11;
      }

      v3[2] = v21 + 1;
      v22 = &v3[2 * v21];
      v22[4] = v36;
      v22[5] = v19;
      v4 = v32;
      v2 = v33;
      v8 = 1 << *(v33 + 32);
      if (v6 >= v8)
      {
        goto LABEL_24;
      }

      v23 = *(v32 + 8 * v10);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v35 != *(v33 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v9 = v34;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v30 + 8 * v10);
        while (v26 < (v8 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_100316220(v6, v35, 0);
            v8 = __clz(__rbit64(v28)) + v25;
            goto LABEL_20;
          }
        }

        sub_100316220(v6, v35, 0);
LABEL_20:
        v9 = v34;
      }

      v7 = v9 + 1;
      v6 = v8;
      if (v7 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
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
}

void sub_100360978(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = v1 + 56;
    v4 = -1 << *(v1 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(v1 + 36);
    v28 = v1 + 56;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v29 = v6;
      v10 = (*(v1 + 48) + 24 * v5);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      sub_10000B8B8(*v10, v12);

      sub_10000B8B8(v11, v12);

      v14 = v1;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v16 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

      if (!v16)
      {
        goto LABEL_26;
      }

      sub_10000B90C(v11, v12);

      sub_10000B90C(v11, v12);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v14 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v1 = v14;
      v3 = v28;
      v18 = *(v28 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v7 = v27;
      if (v27 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_100316220(v5, v27, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_100316220(v5, v27, 0);
      }

LABEL_4:
      v6 = v29 + 1;
      v5 = v8;
      if (v29 + 1 == v26)
      {
        return;
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
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}