uint64_t sub_10037D8FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10037D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 224) = v26;
  *(v9 + 80) = v25;
  *(v9 + 88) = v8;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 96) = v10;
  v11 = *(v10 - 8);
  *(v9 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_100835D88, &qword_1006DE890) - 8) + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v9 + 128) = v14;
  v15 = *(v14 - 8);
  *(v9 + 136) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  v17 = type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult();
  *(v9 + 160) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  v19 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v20 = type metadata accessor for DIPSignpost();
  *(v9 + 184) = v20;
  v21 = *(v20 - 8);
  *(v9 + 192) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_10037DB7C, 0, 0);
}

uint64_t sub_10037DB7C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  static DaemonSignposts.MobileDocumentReader.sessionTerminalRegistration.getter();
  DIPSignpost.init(_:)();
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_10037DC50;
  v4 = *(v0 + 168);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = *(v0 + 24);
  v16 = *(v0 + 224);
  v15 = *(v0 + 80);

  return sub_10037E5A4(v4, v12, v10, v11, v8, v9, v6, v7);
}

uint64_t sub_10037DC50()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_10037E4AC;
  }

  else
  {
    v3 = sub_10037DD64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10037DD64()
{
  v70 = v0;
  v1 = objc_opt_self();
  p_align = &stru_10082BFE8.align;
  v3 = [v1 standardUserDefaults];
  v4._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.injectedMobileDocumentReaderAuthenticationCertificateChain.getter();
  v5 = NSUserDefaults.internalStringArray(forKey:)(v4);

  if (v5)
  {
    v6 = v0[19];
    defaultLogger()();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[19];
    v12 = v0[16];
    v11 = v0[17];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v67 = v12;
      v69[0] = swift_slowAlloc();
      v14 = v69[0];
      *v13 = 136315138;
      v15 = Array.description.getter();
      v66 = v10;
      v17 = sub_100141FE4(v15, v16, v69);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentReaderAuthenticationCertificate fetchCertificate overriding server response with injected ceritifcate chain %s", v13, 0xCu);
      sub_10000BB78(v14);

      p_align = (&stru_10082BFE8 + 24);

      (*(v11 + 8))(v66, v67);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v18 = v0[27];
    v19 = decodeCertificateChain(fromBase64DER:)();

    v20 = v0[21];
    if (v18)
    {
      goto LABEL_22;
    }

    v21 = *v20;

    *v20 = v19;
  }

  else
  {
    v18 = v0[27];
  }

  v22 = [v1 *(p_align + 416)];
  v23._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.injectedMobileDocumentReaderAuthenticationExternalData.getter();
  v24 = NSUserDefaults.internalString(forKey:)(v23);

  if (v24.value._object)
  {
    v25 = v0[18];
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[17];
    v30 = v0[18];
    v31 = v0[16];
    if (v28)
    {
      v68 = v0[18];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v69[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100141FE4(v24.value._countAndFlagsBits, v24.value._object, v69);
      _os_log_impl(&_mh_execute_header, v26, v27, "MobileDocumentReaderAuthenticationCertificate fetchCertificate overriding server response with injected external data %s", v32, 0xCu);
      sub_10000BB78(v33);

      (*(v29 + 8))(v68, v31);
    }

    else
    {

      (*(v29 + 8))(v30, v31);
    }

    v34 = Data.init(base64Encoded:options:)();
    v36 = v35;

    if (v36 >> 60 == 15)
    {
      v20 = v0[21];
      (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.base64DecodingFailed(_:), v0[12]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_22:
      sub_100381F68(v20, type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
      v43 = v0[24];
      v42 = v0[25];
      v45 = v0[22];
      v44 = v0[23];
      v46 = v0[21];
      v48 = v0[18];
      v47 = v0[19];
      v49 = v0[14];
      v50 = v0[15];
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v43 + 8))(v42, v44);

      v51 = v0[1];
      goto LABEL_28;
    }

    v37 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v37 != 2 || *(v34 + 16) == *(v34 + 24))
      {
        goto LABEL_24;
      }
    }

    else if (v37)
    {
      if (v34 == v34 >> 32)
      {
LABEL_24:
        sub_10000BD94(v34, v36);
        v52 = 1;
LABEL_26:
        v54 = v0[20];
        v53 = v0[21];
        v55 = v0[15];
        v56 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
        (*(*(v56 - 8) + 56))(v55, v52, 1, v56);
        sub_100381BC0(v55, v53 + *(v54 + 20));
        goto LABEL_27;
      }
    }

    else if ((v36 & 0xFF000000000000) == 0)
    {
      goto LABEL_24;
    }

    v38 = v0[15];
    type metadata accessor for MobileDocumentReaderExternalData();
    v39 = type metadata accessor for CBORDecoder();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    CBORDecoder.init()();
    sub_100381EB8(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData);
    sub_100381EB8(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData);
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    if (v18)
    {
      v20 = v0[21];
      goto LABEL_22;
    }

    v52 = 0;
    goto LABEL_26;
  }

LABEL_27:
  v58 = v0[24];
  v57 = v0[25];
  v60 = v0[22];
  v59 = v0[23];
  v62 = v0[18];
  v61 = v0[19];
  v64 = v0[14];
  v63 = v0[15];
  sub_100381F00(v0[21], v0[2], type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v58 + 8))(v57, v59);

  v51 = v0[1];
LABEL_28:

  return v51();
}

uint64_t sub_10037E4AC()
{
  v12 = v0[27];
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v1 + 8))(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10037E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 2696) = v8;
  *(v9 + 585) = v47;
  *(v9 + 2688) = v46;
  *(v9 + 2680) = a8;
  *(v9 + 2672) = a7;
  *(v9 + 2664) = a6;
  *(v9 + 2656) = a5;
  *(v9 + 2648) = a4;
  *(v9 + 2640) = a3;
  *(v9 + 2632) = a2;
  *(v9 + 2624) = a1;
  v10 = *(*(sub_100007224(&qword_100833A88, qword_1006BF8E0) - 8) + 64) + 15;
  *(v9 + 2704) = swift_task_alloc();
  *(v9 + 2712) = swift_task_alloc();
  v11 = *(*(sub_100007224(&qword_100842070, &unk_1006DEF50) - 8) + 64) + 15;
  *(v9 + 2720) = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderSession.Error.Code();
  *(v9 + 2728) = v12;
  v13 = *(v12 - 8);
  *(v9 + 2736) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 2744) = swift_task_alloc();
  *(v9 + 2752) = swift_task_alloc();
  *(v9 + 2760) = swift_task_alloc();
  v15 = type metadata accessor for DIPError.Code();
  *(v9 + 2768) = v15;
  v16 = *(v15 - 8);
  *(v9 + 2776) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 2784) = swift_task_alloc();
  *(v9 + 2792) = swift_task_alloc();
  v18 = type metadata accessor for Milestone();
  *(v9 + 2800) = v18;
  v19 = *(v18 - 8);
  *(v9 + 2808) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 2816) = swift_task_alloc();
  v21 = type metadata accessor for DIPError();
  *(v9 + 2824) = v21;
  v22 = *(v21 - 8);
  *(v9 + 2832) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 2840) = swift_task_alloc();
  *(v9 + 2848) = swift_task_alloc();
  *(v9 + 2856) = swift_task_alloc();
  *(v9 + 2864) = swift_task_alloc();
  v24 = type metadata accessor for RegisterTerminalResponse(0);
  *(v9 + 2872) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v9 + 2880) = swift_task_alloc();
  *(v9 + 2888) = swift_task_alloc();
  v26 = sub_100007224(&qword_100842078, &unk_1006E9660);
  *(v9 + 2896) = v26;
  v27 = *(v26 - 8);
  *(v9 + 2904) = v27;
  v28 = *(v27 + 64) + 15;
  *(v9 + 2912) = swift_task_alloc();
  v29 = type metadata accessor for DeviceInformationProvider();
  *(v9 + 2920) = v29;
  v30 = *(v29 - 8);
  *(v9 + 2928) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 2936) = swift_task_alloc();
  v32 = type metadata accessor for UUID();
  *(v9 + 2944) = v32;
  v33 = *(v32 - 8);
  *(v9 + 2952) = v33;
  v34 = *(v33 + 64) + 15;
  *(v9 + 2960) = swift_task_alloc();
  v35 = type metadata accessor for MobileDocumentReaderEntitlementChecker();
  *(v9 + 2968) = v35;
  v36 = *(v35 - 8);
  *(v9 + 2976) = v36;
  v37 = *(v36 + 64) + 15;
  *(v9 + 2984) = swift_task_alloc();
  v38 = type metadata accessor for HardwareAttestationType();
  *(v9 + 2992) = v38;
  v39 = *(v38 - 8);
  *(v9 + 3000) = v39;
  v40 = *(v39 + 64) + 15;
  *(v9 + 3008) = swift_task_alloc();
  *(v9 + 3016) = swift_task_alloc();
  v41 = type metadata accessor for Logger();
  *(v9 + 3024) = v41;
  v42 = *(v41 - 8);
  *(v9 + 3032) = v42;
  v43 = *(v42 + 64) + 15;
  *(v9 + 3040) = swift_task_alloc();
  *(v9 + 3048) = swift_task_alloc();
  *(v9 + 3056) = swift_task_alloc();

  return _swift_task_switch(sub_10037EB04, 0, 0);
}

uint64_t sub_10037EB04()
{
  sub_100381C30(*(v0 + 585));
  v13 = [objc_opt_self() standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRegisterTerminalCall.getter();
  v15 = NSUserDefaults.internalBool(forKey:)(v14);

  if (v15)
  {
    if (*(v0 + 2640))
    {
      v16 = *(v0 + 3056);
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "MobileDocumentReaderAuthenticationCertificateFetcher fetchCertificate disable register terminal call flag is enabled, returning hardcoded certificate.", v19, 2u);
      }

      v20 = *(v0 + 3056);
      v21 = *(v0 + 3032);
      v22 = *(v0 + 3024);

      (*(v21 + 8))(v20, v22);
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1006DAE90;
      type metadata accessor for SecCertificate(0);
      sub_10034CE68();
      v24 = static NSBundle.internalSettings.getter();
    }

    else
    {
      v37 = *(v0 + 3048);
      defaultLogger()();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "MobileDocumentReaderAuthenticationCertificateFetcher fetchCertificate disable register terminal call flag is enabled, returning hardcoded TOKENLESS certificate.", v40, 2u);
      }

      v41 = *(v0 + 3048);
      v42 = *(v0 + 3032);
      v43 = *(v0 + 3024);

      (*(v42 + 8))(v41, v43);
      sub_100007224(&unk_100845FD0, &qword_1006DB190);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1006DAE90;
      type metadata accessor for SecCertificate(0);
      sub_10034CE68();
      v24 = static NSBundle.internalSettings.getter();
    }

    v44 = static SecCertificateRef.make(with:in:)();
    v45 = *(v0 + 2624);

    *(v23 + 32) = v44;
    v46 = *(type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult() + 20);
    v47 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
    (*(*(v47 - 8) + 56))(v45 + v46, 1, 1, v47);
    *v45 = v23;
    v48 = *(v0 + 3056);
    v49 = *(v0 + 3048);
    v50 = *(v0 + 3040);
    v51 = *(v0 + 3016);
    v52 = *(v0 + 3008);
    v53 = *(v0 + 2984);
    v54 = *(v0 + 2960);
    v55 = *(v0 + 2936);
    v56 = *(v0 + 2912);
    v57 = *(v0 + 2888);
    v130 = *(v0 + 2880);
    v134 = *(v0 + 2864);
    v138 = *(v0 + 2856);
    v142 = *(v0 + 2848);
    v146 = *(v0 + 2840);
    v149 = *(v0 + 2816);
    v151 = *(v0 + 2792);
    v154 = *(v0 + 2784);
    v156 = *(v0 + 2760);
    v159 = *(v0 + 2752);
    v163 = *(v0 + 2744);
    v166 = *(v0 + 2720);
    v169 = *(v0 + 2712);
    v171 = *(v0 + 2704);

    v11 = *(v0 + 8);
    goto LABEL_3;
  }

  v25 = *(v0 + 3016);
  v26 = *(v0 + 3008);
  v27 = *(v0 + 3000);
  v28 = *(v0 + 2992);
  v29 = *(v0 + 2688);
  v30 = v29[4];
  sub_10000BA08(v29, v29[3]);
  dispatch thunk of IdentityKey.attestationType()();
  (*(v27 + 16))(v26, v25, v28);
  v31 = (*(v27 + 88))(v26, v28);
  LODWORD(v25) = enum case for HardwareAttestationType.SE(_:);
  v32 = *(v27 + 8);
  *(v0 + 3064) = v32;
  *(v0 + 3072) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v26, v28);
  if (v31 != v25)
  {
    v168 = *(v0 + 3016);
    v35 = *(v0 + 2992);
    v36 = *(v0 + 2824);
    (*(*(v0 + 2776) + 104))(*(v0 + 2792), enum case for DIPError.Code.documentReaderCertificateAttestationTypeInvalid(_:), *(v0 + 2768));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v32(v168, v35);
LABEL_2:
    v1 = *(v0 + 3056);
    v2 = *(v0 + 3048);
    v3 = *(v0 + 3040);
    v4 = *(v0 + 3016);
    v5 = *(v0 + 3008);
    v6 = *(v0 + 2984);
    v7 = *(v0 + 2960);
    v8 = *(v0 + 2936);
    v9 = *(v0 + 2912);
    v10 = *(v0 + 2888);
    v126 = *(v0 + 2880);
    v129 = *(v0 + 2864);
    v133 = *(v0 + 2856);
    v137 = *(v0 + 2848);
    v141 = *(v0 + 2840);
    v145 = *(v0 + 2816);
    v148 = *(v0 + 2792);
    v150 = *(v0 + 2784);
    v153 = *(v0 + 2760);
    v155 = *(v0 + 2752);
    v158 = *(v0 + 2744);
    v162 = *(v0 + 2720);
    v165 = *(v0 + 2712);
    v167 = *(v0 + 2704);

    v11 = *(v0 + 8);
LABEL_3:

    return v11();
  }

  v34 = v29[3];
  v33 = v29[4];
  sub_10000BA08(*(v0 + 2688), v34);
  v122 = dispatch thunk of IdentityKey.attestation(_:)();
  v170 = (v0 + 393);
  v58 = *(v0 + 2984);
  v139 = *(v0 + 2976);
  v143 = *(v0 + 2968);
  v107 = *(v0 + 2960);
  v172 = *(v0 + 2952);
  v112 = *(v0 + 2944);
  v114 = *(v0 + 2936);
  v116 = *(v0 + 2928);
  v119 = *(v0 + 2920);
  v110 = *(v0 + 2696);
  v125 = *(v0 + 585);
  v131 = *(v0 + 2672);
  v135 = *(v0 + 2680);
  v127 = *(v0 + 2664);
  v123 = *(v0 + 2656);
  v59 = *(v0 + 2648);
  v160 = *(v0 + 2640);
  v164 = *(v59 + 32);
  *(v0 + 3080) = v164;
  v60 = *(v59 + 40);
  *(v0 + 3088) = v60;
  v157 = *(v59 + 48);
  *(v0 + 3096) = v157;
  v61 = *(v59 + 56);
  *(v0 + 3104) = v61;
  v62 = (v59 + *(type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration() + 32));
  v152 = *v62;
  *(v0 + 3112) = *v62;
  v63 = v62[1];
  *(v0 + 3120) = v63;
  *(v0 + 2536) = type metadata accessor for BundleRecordFetcher();
  *(v0 + 2544) = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC((v0 + 2512));

  v161 = v60;

  BundleRecordFetcher.init()();
  MobileDocumentReaderEntitlementChecker.init(bundleRecordFetcher:)();
  v64 = *(v59 + 8);
  v65 = *(v59 + 16);
  v66 = *(v59 + 24);
  v147 = MobileDocumentReaderEntitlementChecker.checkDevelopmentFlagEntitlements(auditToken:)(*v59);
  *(v0 + 586) = v147;
  (*(v139 + 8))(v58, v143);
  UUID.init()();
  v140 = UUID.uuidString.getter();
  v144 = v67;
  *(v0 + 3128) = v140;
  *(v0 + 3136) = v67;
  v68 = v112;
  v113 = *(v172 + 8);
  v113(v107, v68);
  *(v0 + 393) = *(v0 + 201);
  *(v0 + 396) = *(v0 + 204);
  v69 = sub_10000BA08((v110 + 16), *(v110 + 40));
  v70 = *(*v69 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  sub_100020260(*(*v69 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 2552);
  v71 = *(v0 + 2584);
  sub_10000BA08((v0 + 2552), *(v0 + 2576));
  sub_100381E78(v123, v127, v131, v135);

  v124 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  *(v0 + 3144) = v124;
  v136 = v72;
  *(v0 + 3152) = v72;
  sub_10000BB78((v0 + 2552));
  DeviceInformationProvider.init()();
  v128 = DeviceInformationProvider.uniqueDeviceID.getter();
  v132 = v73;
  *(v0 + 3160) = v128;
  *(v0 + 3168) = v73;
  (*(v116 + 8))(v114, v119);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v74 = *(v0 + 2960);
  v75 = *(v0 + 2944);
  v120 = *(v0 + 2896);
  v115 = *(v0 + 2640);
  v117 = *(v0 + 2912);
  v108 = *(v0 + 2632);
  v76 = xmmword_100882478;
  *(v0 + 3176) = xmmword_100882478;

  v103 = *(v0 + 2672);
  v105 = *(v0 + 2656);
  UUID.init()();
  v77 = UUID.uuidString.getter();
  v79 = v78;
  *(v0 + 3192) = v77;
  *(v0 + 3200) = v78;
  v113(v74, v75);

  *(v0 + 16) = v77;
  *(v0 + 24) = v79;
  v111 = v79;
  *(v0 + 32) = v140;
  *(v0 + 40) = v144;
  *(v0 + 48) = v124;
  *(v0 + 56) = v136;
  *(v0 + 64) = v128;
  *(v0 + 72) = v132;
  *(v0 + 80) = v76;
  *(v0 + 96) = v164;
  *(v0 + 104) = v161;
  *(v0 + 112) = v157;
  *(v0 + 120) = v61;
  *(v0 + 128) = v152;
  *(v0 + 136) = v63;
  *(v0 + 144) = v108;
  *(v0 + 152) = v115;
  *(v0 + 160) = v125;
  v80 = *v170;
  *(v0 + 164) = *(v0 + 396);
  *(v0 + 161) = v80;
  *(v0 + 184) = v103;
  *(v0 + 168) = v105;
  *(v0 + 200) = v147;
  v81 = *(v0 + 80);
  v82 = *(v0 + 96);
  v83 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v83;
  *(v0 + 272) = v81;
  *(v0 + 288) = v82;
  v84 = *(v0 + 16);
  v85 = *(v0 + 32);
  v86 = *(v0 + 64);
  *(v0 + 240) = *(v0 + 48);
  *(v0 + 256) = v86;
  *(v0 + 208) = v84;
  *(v0 + 224) = v85;
  v87 = *(v0 + 144);
  v88 = *(v0 + 160);
  v89 = *(v0 + 176);
  *(v0 + 377) = *(v0 + 185);
  *(v0 + 352) = v88;
  *(v0 + 368) = v89;
  *(v0 + 336) = v87;
  sub_1000AE3D0(v0 + 16, v0 + 400);
  sub_1000A7D80();
  sub_1000A7DD4();
  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(v122);
  if (v90)
  {
    v91 = *(v0 + 3016);
    v104 = *(v0 + 2992);
    v92 = *(v0 + 2912);
    v93 = *(v0 + 2904);
    v94 = *(v0 + 2896);
    v109 = *(v0 + 2640);
    v106 = *(v0 + 2632);
    v118 = *(v0 + 2656);
    v121 = *(v0 + 2672);

    (*(v93 + 8))(v92, v94);
    v32(v91, v104);
    *(v0 + 592) = v77;
    *(v0 + 600) = v111;
    *(v0 + 608) = v140;
    *(v0 + 616) = v144;
    *(v0 + 624) = v124;
    *(v0 + 632) = v136;
    *(v0 + 640) = v128;
    *(v0 + 648) = v132;
    *(v0 + 656) = v76;
    *(v0 + 672) = v164;
    *(v0 + 680) = v161;
    *(v0 + 688) = v157;
    *(v0 + 696) = v61;
    *(v0 + 704) = v152;
    *(v0 + 712) = v63;
    *(v0 + 720) = v106;
    *(v0 + 728) = v109;
    *(v0 + 736) = v125;
    *(v0 + 737) = *v170;
    *(v0 + 740) = *(v0 + 396);
    *(v0 + 744) = v118;
    *(v0 + 760) = v121;
    *(v0 + 776) = v147;
    sub_1000AE408(v0 + 592);
    goto LABEL_2;
  }

  v95 = *(v0 + 2912);
  v96 = *(v0 + 2896);
  v97 = *(v0 + 2688);

  JWSSignedJSON.setKid(_:)();
  v98 = async function pointer to JWSSignedJSON.sign(_:)[1];
  v99 = swift_task_alloc();
  *(v0 + 3208) = v99;
  *v99 = v0;
  v99[1] = sub_10037FA98;
  v100 = *(v0 + 2912);
  v101 = *(v0 + 2896);
  v102 = *(v0 + 2688);

  return JWSSignedJSON.sign(_:)(v102, v101);
}

uint64_t sub_10037FA98()
{
  v2 = *(*v1 + 3208);
  v5 = *v1;
  *(*v1 + 3216) = v0;

  if (v0)
  {
    v3 = sub_100381814;
  }

  else
  {
    v3 = sub_10037FBAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10037FBAC()
{
  v1 = *sub_10000BA08((v0[337] + 16), *(v0[337] + 40));
  v2 = swift_task_alloc();
  v0[403] = v2;
  *v2 = v0;
  v2[1] = sub_10037FC58;
  v3 = v0[364];
  v4 = v0[360];

  return sub_1005F08FC(v4, v3);
}

uint64_t sub_10037FC58()
{
  v2 = *(*v1 + 3224);
  v5 = *v1;
  *(*v1 + 3232) = v0;

  if (v0)
  {
    v3 = sub_1003809F0;
  }

  else
  {
    v3 = sub_10037FD6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10037FD6C()
{
  v1 = (v0 + 585);
  v156 = (v0 + 393);
  v2 = *(v0 + 2888);
  sub_100381F00(*(v0 + 2880), v2, type metadata accessor for RegisterTerminalResponse);
  if (!*(v2 + 112))
  {
    v148 = *(v0 + 3200);
    v152 = v0 + 1744;
    v94 = *(v0 + 3192);
    v141 = *(v0 + 3176);
    v145 = *(v0 + 3184);
    v138 = *(v0 + 3168);
    v135 = *(v0 + 3160);
    v128 = *(v0 + 3152);
    v125 = *(v0 + 3144);
    v122 = *(v0 + 3136);
    v116 = *(v0 + 3128);
    v131 = *(v0 + 586);
    v119 = *(v0 + 3120);
    v110 = *(v0 + 3104);
    v112 = *(v0 + 3112);
    v108 = *(v0 + 3096);
    v102 = *(v0 + 3080);
    v90 = *(v0 + 3064);
    v92 = *(v0 + 3072);
    v86 = *(v0 + 2992);
    v88 = *(v0 + 3016);
    v84 = *(v0 + 2912);
    v36 = *(v0 + 2904);
    v37 = *(v0 + 2896);
    v104 = *(v0 + 2888);
    v105 = *(v0 + 3088);
    v38 = *(v0 + 2824);
    v39 = *v1;
    v40 = *(v0 + 2656);
    v98 = v40;
    v100 = *(v0 + 2672);
    v96 = *(v0 + 2632);
    v97 = *(v0 + 2640);
    (*(*(v0 + 2776) + 104))(*(v0 + 2792), enum case for DIPError.Code.serverResponseInconsistent(_:), *(v0 + 2768));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v10 = v39;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v36 + 8))(v84, v37);
    v90(v88, v86);
    v12 = 1928;
    v13 = 1920;
    *(v0 + 1744) = v94;
    v14 = 1912;
    v15 = 1904;
    v16 = 1896;
    v17 = 1889;
    v18 = 1888;
    v19 = 1880;
    v20 = 1872;
    v21 = 1864;
    v22 = 1856;
    v23 = 1848;
    v24 = 1840;
    v25 = 1832;
    v26 = 1824;
    v27 = 1816;
    v28 = 1808;
    v29 = 1800;
    v30 = 1792;
    v31 = 1784;
    v32 = 1776;
    v33 = 1768;
    v34 = 1760;
    v35 = 1752;
    goto LABEL_5;
  }

  v3 = *(v0 + 3232);
  v4 = decodeCertificateChain(fromBase64DER:)();
  if (v3)
  {
    v148 = *(v0 + 3200);
    v152 = v0 + 1936;
    v5 = *(v0 + 3192);
    v141 = *(v0 + 3176);
    v145 = *(v0 + 3184);
    v138 = *(v0 + 3168);
    v135 = *(v0 + 3160);
    v128 = *(v0 + 3152);
    v125 = *(v0 + 3144);
    v122 = *(v0 + 3136);
    v116 = *(v0 + 3128);
    v131 = *(v0 + 586);
    v119 = *(v0 + 3120);
    v110 = *(v0 + 3104);
    v112 = *(v0 + 3112);
    v108 = *(v0 + 3096);
    v102 = *(v0 + 3080);
    v6 = *(v0 + 3072);
    v7 = *(v0 + 3064);
    v8 = *(v0 + 3016);
    v9 = *(v0 + 2992);
    v104 = *(v0 + 2888);
    v105 = *(v0 + 3088);
    v10 = *v1;
    v11 = *(v0 + 2656);
    v98 = v11;
    v100 = *(v0 + 2672);
    v96 = *(v0 + 2632);
    v97 = *(v0 + 2640);
    (*(*(v0 + 2904) + 8))(*(v0 + 2912), *(v0 + 2896));
    v7(v8, v9);
    v12 = 2120;
    v13 = 2112;
    *(v0 + 1936) = v5;
    v14 = 2104;
    v15 = 2096;
    v16 = 2088;
    v17 = 2081;
    v18 = 2080;
    v19 = 2072;
    v20 = 2064;
    v21 = 2056;
    v22 = 2048;
    v23 = 2040;
    v24 = 2032;
    v25 = 2024;
    v26 = 2016;
    v27 = 2008;
    v28 = 2000;
    v29 = 1992;
    v30 = 1984;
    v31 = 1976;
    v32 = 1968;
    v33 = 1960;
    v34 = 1952;
    v35 = 1944;
LABEL_5:
    *(v0 + v35) = v148;
    *(v0 + v34) = v116;
    *(v0 + v33) = v122;
    *(v0 + v32) = v125;
    *(v0 + v31) = v128;
    *(v0 + v30) = v135;
    *(v0 + v29) = v138;
    *(v0 + v28) = v141;
    *(v0 + v27) = v145;
    *(v0 + v26) = v102;
    *(v0 + v25) = v105;
    *(v0 + v24) = v108;
    *(v0 + v23) = v110;
    *(v0 + v22) = v112;
    *(v0 + v21) = v119;
    v41 = (v0 + v17);
    *(v0 + v20) = v96;
    *(v0 + v19) = v97;
    *(v0 + v18) = v10;
    v42 = *v156;
    *(v41 + 3) = *(v0 + 396);
    *v41 = v42;
    *(v0 + v16) = v98;
    *(v0 + v15) = *(&v98 + 1);
    *(v0 + v14) = v100;
    *(v0 + v13) = *(&v100 + 1);
    *(v0 + v12) = v131;
    sub_1000AE408(v152);
    sub_100381F68(v104, type metadata accessor for RegisterTerminalResponse);
    v43 = *(v0 + 3056);
    v44 = *(v0 + 3048);
    v45 = *(v0 + 3040);
    v46 = *(v0 + 3016);
    v47 = *(v0 + 3008);
    v48 = *(v0 + 2984);
    v49 = *(v0 + 2960);
    v50 = *(v0 + 2936);
    v51 = *(v0 + 2912);
    v52 = *(v0 + 2888);
    v113 = *(v0 + 2880);
    v117 = *(v0 + 2864);
    v120 = *(v0 + 2856);
    v123 = *(v0 + 2848);
    v126 = *(v0 + 2840);
    v129 = *(v0 + 2816);
    v132 = *(v0 + 2792);
    v136 = *(v0 + 2784);
    v139 = *(v0 + 2760);
    v142 = *(v0 + 2752);
    v146 = *(v0 + 2744);
    v149 = *(v0 + 2720);
    v153 = *(v0 + 2712);
    v157 = *(v0 + 2704);

    v53 = *(v0 + 8);
    goto LABEL_6;
  }

  if (v4 >> 62)
  {
    v75 = v4;
    v76 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v75;
    if (v76)
    {
      goto LABEL_11;
    }

LABEL_13:
    v148 = *(v0 + 3200);
    v152 = v0 + 2320;
    v95 = *(v0 + 3192);
    v141 = *(v0 + 3176);
    v145 = *(v0 + 3184);
    v138 = *(v0 + 3168);
    v135 = *(v0 + 3160);
    v128 = *(v0 + 3152);
    v125 = *(v0 + 3144);
    v122 = *(v0 + 3136);
    v116 = *(v0 + 3128);
    v131 = *(v0 + 586);
    v119 = *(v0 + 3120);
    v110 = *(v0 + 3104);
    v112 = *(v0 + 3112);
    v108 = *(v0 + 3096);
    v102 = *(v0 + 3080);
    v91 = *(v0 + 3064);
    v93 = *(v0 + 3072);
    v87 = *(v0 + 2992);
    v89 = *(v0 + 3016);
    v85 = *(v0 + 2912);
    v77 = *(v0 + 2904);
    v78 = *(v0 + 2896);
    v104 = *(v0 + 2888);
    v105 = *(v0 + 3088);
    v79 = *(v0 + 2824);
    v80 = *(v0 + 2792);
    v81 = *(v0 + 2776);
    v82 = *(v0 + 2768);
    v83 = *v1;
    v98 = *(v0 + 2656);
    v100 = *(v0 + 2672);
    v96 = *(v0 + 2632);
    v97 = *(v0 + 2640);

    (*(v81 + 104))(v80, enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v82);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v10 = v83;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v77 + 8))(v85, v78);
    v91(v89, v87);
    v12 = 2504;
    v13 = 2496;
    *(v0 + 2320) = v95;
    v14 = 2488;
    v15 = 2480;
    v16 = 2472;
    v17 = 2465;
    v18 = 2464;
    v19 = 2456;
    v20 = 2448;
    v21 = 2440;
    v22 = 2432;
    v23 = 2424;
    v24 = 2416;
    v25 = 2408;
    v26 = 2400;
    v27 = 2392;
    v28 = 2384;
    v29 = 2376;
    v30 = 2368;
    v31 = 2360;
    v32 = 2352;
    v33 = 2344;
    v34 = 2336;
    v35 = 2328;
    goto LABEL_5;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_11:
  v147 = *(v0 + 3176);
  v137 = *(v0 + 3160);
  v140 = *(v0 + 3192);
  v130 = *(v0 + 3144);
  v124 = *(v0 + 3128);
  v150 = *(v0 + 586);
  v127 = *(v0 + 3112);
  v118 = *(v0 + 3080);
  v121 = *(v0 + 3096);
  v114 = *(v0 + 3072);
  v107 = *(v0 + 3064);
  v101 = *(v0 + 3016);
  v55 = *(v0 + 2992);
  v56 = *(v0 + 2912);
  v57 = *(v0 + 2904);
  v58 = *(v0 + 2896);
  v154 = *(v0 + 2888);
  v133 = *(v0 + 2872);
  v59 = *(v0 + 2816);
  v60 = *(v0 + 2808);
  v61 = *(v0 + 2800);
  v111 = *v1;
  v99 = *(v0 + 2632);
  v62 = *(v0 + 2624);
  v106 = *(v0 + 2640);
  v109 = *(v0 + 2656);
  v103 = *(v0 + 2672);
  v143 = v4;
  static MobileDocumentReaderMilestone.prepareCertificateFetched.getter();
  Milestone.log()();
  (*(v60 + 8))(v59, v61);
  (*(v57 + 8))(v56, v58);
  v107(v101, v55);
  *(v0 + 2128) = v140;
  *(v0 + 2144) = v124;
  *(v0 + 2160) = v130;
  *(v0 + 2176) = v137;
  *(v0 + 2192) = v147;
  *(v0 + 2208) = v118;
  *(v0 + 2224) = v121;
  *(v0 + 2240) = v127;
  *(v0 + 2256) = v99;
  *(v0 + 2264) = v106;
  *(v0 + 2272) = v111;
  *(v0 + 2273) = *v156;
  *(v0 + 2276) = *(v0 + 396);
  *(v0 + 2280) = v109;
  *(v0 + 2296) = v103;
  *(v0 + 2312) = v150;
  sub_1000AE408(v0 + 2128);
  v63 = *(v133 + 28);
  v64 = type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult();
  sub_10000BBC4(v154 + v63, v62 + *(v64 + 20), &qword_100835D88, &qword_1006DE890);
  *v62 = v143;
  sub_100381F68(v154, type metadata accessor for RegisterTerminalResponse);
  v65 = *(v0 + 3056);
  v66 = *(v0 + 3048);
  v67 = *(v0 + 3040);
  v68 = *(v0 + 3016);
  v69 = *(v0 + 3008);
  v70 = *(v0 + 2984);
  v71 = *(v0 + 2960);
  v72 = *(v0 + 2936);
  v73 = *(v0 + 2912);
  v74 = *(v0 + 2888);
  v115 = *(v0 + 2880);
  *&v118 = *(v0 + 2864);
  *&v121 = *(v0 + 2856);
  *&v124 = *(v0 + 2848);
  *&v127 = *(v0 + 2840);
  *&v130 = *(v0 + 2816);
  v134 = *(v0 + 2792);
  *&v137 = *(v0 + 2784);
  *&v140 = *(v0 + 2760);
  v144 = *(v0 + 2752);
  *&v147 = *(v0 + 2744);
  v151 = *(v0 + 2720);
  v155 = *(v0 + 2712);
  v158 = *(v0 + 2704);

  v53 = *(v0 + 8);
LABEL_6:

  return v53();
}

uint64_t sub_1003809F0()
{
  v1 = (v0 + 585);
  v148 = (v0 + 393);
  v2 = *(v0 + 2864);
  v3 = *(v0 + 2824);
  *(v0 + 2592) = *(v0 + 3232);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 2792);
    v5 = *(v0 + 2784);
    v6 = *(v0 + 2776);
    v7 = *(v0 + 2768);
    (*(*(v0 + 2832) + 32))(*(v0 + 2856), *(v0 + 2864), *(v0 + 2824));
    DIPError.code.getter();
    (*(v6 + 104))(v5, enum case for DIPError.Code.topekaMobileDocumentReaderTermsAndConditionsAcceptanceRequired(_:), v7);
    sub_100381EB8(&qword_10083B4D0, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v8 = *(v6 + 8);
    v8(v5, v7);
    v8(v4, v7);
    if (*(v0 + 2608) == *(v0 + 2616))
    {
      v9 = *(v0 + 3232);
      v139 = *(v0 + 3192);
      v142 = *(v0 + 3176);
      v133 = *(v0 + 3144);
      v136 = *(v0 + 3160);
      v145 = *(v0 + 586);
      v127 = *(v0 + 3128);
      v130 = *(v0 + 3112);
      v121 = *(v0 + 3080);
      v124 = *(v0 + 3096);
      v100 = *(v0 + 3016);
      v10 = *(v0 + 2992);
      v11 = *(v0 + 2912);
      v12 = *(v0 + 2904);
      v13 = *(v0 + 2896);
      v14 = *(v0 + 2856);
      v15 = *(v0 + 2832);
      v16 = *(v0 + 2824);
      v115 = *v1;
      v106 = *(v0 + 2640);
      v108 = *(v0 + 3072);
      v102 = *(v0 + 2632);
      v104 = *(v0 + 3064);
      v118 = *(v0 + 2656);
      v110 = *(v0 + 2672);

      sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      (*(v15 + 16))(v17, v14, v16);
      swift_willThrow();
      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
      v104(v100, v10);
      *(v0 + 1552) = v139;
      *(v0 + 1568) = v127;
      *(v0 + 1584) = v133;
      *(v0 + 1600) = v136;
      *(v0 + 1616) = v142;
      *(v0 + 1632) = v121;
      *(v0 + 1648) = v124;
      *(v0 + 1664) = v130;
      *(v0 + 1680) = v102;
      *(v0 + 1688) = v106;
      *(v0 + 1696) = v115;
      *(v0 + 1697) = *v148;
      *(v0 + 1700) = *(v0 + 396);
      *(v0 + 1704) = v118;
      *(v0 + 1720) = v110;
      *(v0 + 1736) = v145;
      sub_1000AE408(v0 + 1552);
      v18 = *(v0 + 2592);

      goto LABEL_14;
    }

    (*(*(v0 + 2832) + 8))(*(v0 + 2856), *(v0 + 2824));
  }

  v19 = *(v0 + 3232);
  v20 = *(v0 + 2832);
  v21 = *(v0 + 2824);
  v22 = *(v0 + 2712);
  v23 = *(v0 + 2704);
  v24 = *(v0 + 2592);

  *(v0 + 2600) = v19;
  swift_errorRetain();
  v25 = swift_dynamicCast();
  v26 = 1;
  (*(v20 + 56))(v22, v25 ^ 1u, 1, v21);
  sub_10000BBC4(v22, v23, &qword_100833A88, qword_1006BF8E0);
  if ((*(v20 + 48))(v23, 1, v21) != 1)
  {
    v27 = *(v0 + 2848);
    v28 = *(v0 + 2840);
    v29 = *(v0 + 2832);
    v30 = *(v0 + 2824);
    v31 = *(v0 + 2720);
    (*(v29 + 32))(v27, *(v0 + 2704), v30);
    (*(v29 + 16))(v28, v27, v30);
    sub_1003C94CC(v28, v31);
    (*(v29 + 8))(v27, v30);
    v26 = 0;
  }

  v32 = *(v0 + 2720);
  v33 = *(v0 + 2712);
  v34 = type metadata accessor for MobileDocumentReaderSession.Error();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v32, v26, 1, v34);
  sub_10000BE18(v33, &qword_100833A88, qword_1006BF8E0);
  v36 = (*(v35 + 48))(v32, 1, v34);
  v37 = *(v0 + 2760);
  if (v36 == 1)
  {
    v38 = *(v0 + 2736);
    v39 = *(v0 + 2728);
    sub_10000BE18(*(v0 + 2720), &qword_100842070, &unk_1006DEF50);
    v40 = enum case for MobileDocumentReaderSession.Error.Code.unknown(_:);
    v41 = *(v38 + 104);
    v41(v37, enum case for MobileDocumentReaderSession.Error.Code.unknown(_:), v39);
  }

  else
  {
    v42 = *(v0 + 2752);
    v43 = *(v0 + 2736);
    v44 = *(v0 + 2728);
    v45 = *(v0 + 2720);
    MobileDocumentReaderSession.Error.code.getter();
    (*(v35 + 8))(v45, v34);
    (*(v43 + 32))(v37, v42, v44);
    v40 = enum case for MobileDocumentReaderSession.Error.Code.unknown(_:);
    v41 = *(v43 + 104);
  }

  v46 = *(v0 + 2760);
  v47 = *(v0 + 2744);
  v48 = *(v0 + 2736);
  v49 = *(v0 + 2728);
  v41(v47, v40, v49);
  v50 = static MobileDocumentReaderSession.Error.Code.== infix(_:_:)();
  v101 = *(v48 + 8);
  v101(v47, v49);
  v51 = *(v0 + 3232);
  v111 = *(v0 + 3200);
  v107 = *(v0 + 3192);
  v140 = *(v0 + 3184);
  v134 = *(v0 + 3176);
  v128 = *(v0 + 3168);
  v122 = *(v0 + 3160);
  v116 = *(v0 + 3152);
  v109 = *(v0 + 3144);
  v103 = *(v0 + 3128);
  v105 = *(v0 + 3136);
  v146 = *(v0 + 586);
  v143 = *(v0 + 3120);
  v137 = *(v0 + 3112);
  v131 = *(v0 + 3104);
  v125 = *(v0 + 3096);
  v119 = *(v0 + 3088);
  v113 = *(v0 + 3080);
  v52 = *(v0 + 3064);
  v98 = v52;
  v99 = *(v0 + 3072);
  if (v50)
  {
    v53 = *(v0 + 3040);
    v54 = *(v0 + 3032);
    v55 = *(v0 + 3024);
    v92 = *(v0 + 2992);
    v94 = *(v0 + 3016);
    v80 = *(v0 + 2896);
    v82 = *(v0 + 2912);
    v74 = *(v0 + 2824);
    v56 = *(v0 + 2792);
    v57 = *(v0 + 2776);
    v58 = *(v0 + 2768);
    v78 = *(v0 + 2760);
    v75 = *(v0 + 2904);
    v76 = *(v0 + 2728);
    v96 = *(v0 + 585);
    v90 = *(v0 + 2640);
    v86 = *(v0 + 2632);
    v88 = *(v0 + 2672);
    v84 = *(v0 + 2656);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v54 + 8))(v53, v55);
    (*(v57 + 104))(v56, enum case for DIPError.Code.unexpectedServerResponse(_:), v58);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v101(v78, v76);
    (*(v75 + 8))(v82, v80);
    v98(v94, v92);
    *(v0 + 1360) = v107;
    *(v0 + 1368) = v111;
    *(v0 + 1376) = v103;
    *(v0 + 1384) = v105;
    *(v0 + 1392) = v109;
    *(v0 + 1400) = v116;
    *(v0 + 1408) = v122;
    *(v0 + 1416) = v128;
    *(v0 + 1424) = v134;
    *(v0 + 1432) = v140;
    *(v0 + 1440) = v113;
    *(v0 + 1448) = v119;
    *(v0 + 1456) = v125;
    *(v0 + 1464) = v131;
    *(v0 + 1472) = v137;
    *(v0 + 1480) = v143;
    *(v0 + 1488) = v86;
    *(v0 + 1496) = v90;
    *(v0 + 1504) = v96;
    *(v0 + 1505) = *v148;
    *(v0 + 1508) = *(v0 + 396);
    *(v0 + 1512) = v84;
    *(v0 + 1528) = v88;
    *(v0 + 1544) = v146;
    v59 = v0 + 1360;
  }

  else
  {
    v91 = *(v0 + 3016);
    v89 = *(v0 + 2992);
    v60 = *(v0 + 2904);
    v81 = *(v0 + 2896);
    v83 = *(v0 + 2912);
    v61 = *(v0 + 2824);
    v77 = *(v0 + 2728);
    v79 = *(v0 + 2760);
    v97 = *v1;
    v93 = *(v0 + 2632);
    v95 = *(v0 + 2640);
    v87 = *(v0 + 2672);
    v85 = *(v0 + 2656);
    (*(*(v0 + 2776) + 104))(*(v0 + 2792), enum case for DIPError.Code.internalError(_:), *(v0 + 2768));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v101(v79, v77);
    (*(v60 + 8))(v83, v81);
    v98(v91, v89);
    *(v0 + 1168) = v107;
    *(v0 + 1176) = v111;
    *(v0 + 1184) = v103;
    *(v0 + 1192) = v105;
    *(v0 + 1200) = v109;
    *(v0 + 1208) = v116;
    *(v0 + 1216) = v122;
    *(v0 + 1224) = v128;
    *(v0 + 1232) = v134;
    *(v0 + 1240) = v140;
    *(v0 + 1248) = v113;
    *(v0 + 1256) = v119;
    *(v0 + 1264) = v125;
    *(v0 + 1272) = v131;
    *(v0 + 1280) = v137;
    *(v0 + 1288) = v143;
    *(v0 + 1296) = v93;
    *(v0 + 1304) = v95;
    *(v0 + 1312) = v97;
    *(v0 + 1313) = *v148;
    *(v0 + 1316) = *(v0 + 396);
    *(v0 + 1320) = v85;
    *(v0 + 1336) = v87;
    *(v0 + 1352) = v146;
    v59 = v0 + 1168;
  }

  sub_1000AE408(v59);
LABEL_14:
  v62 = *(v0 + 3056);
  v63 = *(v0 + 3048);
  v64 = *(v0 + 3040);
  v65 = *(v0 + 3016);
  v66 = *(v0 + 3008);
  v67 = *(v0 + 2984);
  v68 = *(v0 + 2960);
  v69 = *(v0 + 2936);
  v70 = *(v0 + 2912);
  v71 = *(v0 + 2888);
  v112 = *(v0 + 2880);
  v114 = *(v0 + 2864);
  v117 = *(v0 + 2856);
  v120 = *(v0 + 2848);
  v123 = *(v0 + 2840);
  v126 = *(v0 + 2816);
  v129 = *(v0 + 2792);
  v132 = *(v0 + 2784);
  v135 = *(v0 + 2760);
  v138 = *(v0 + 2752);
  v141 = *(v0 + 2744);
  v144 = *(v0 + 2720);
  v147 = *(v0 + 2712);
  v149 = *(v0 + 2704);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_100381814()
{
  v32 = *(v0 + 3192);
  v33 = *(v0 + 3176);
  v30 = *(v0 + 3144);
  v31 = *(v0 + 3160);
  v28 = *(v0 + 3128);
  v34 = *(v0 + 586);
  v29 = *(v0 + 3112);
  v26 = *(v0 + 3080);
  v27 = *(v0 + 3096);
  v1 = *(v0 + 3072);
  v2 = *(v0 + 3064);
  v3 = *(v0 + 3016);
  v4 = *(v0 + 2992);
  v5 = *(v0 + 585);
  v6 = *(v0 + 2640);
  v7 = *(v0 + 2632);
  v8 = *(v0 + 2672);
  v24 = v8;
  v25 = *(v0 + 2656);
  (*(*(v0 + 2904) + 8))(*(v0 + 2912), *(v0 + 2896));
  v2(v3, v4);
  *(v0 + 976) = v32;
  *(v0 + 992) = v28;
  *(v0 + 1008) = v30;
  *(v0 + 1024) = v31;
  *(v0 + 1040) = v33;
  *(v0 + 1056) = v26;
  *(v0 + 1072) = v27;
  *(v0 + 1088) = v29;
  *(v0 + 1104) = v7;
  *(v0 + 1112) = v6;
  *(v0 + 1120) = v5;
  *(v0 + 1121) = *(v0 + 393);
  *(v0 + 1124) = *(v0 + 396);
  *(v0 + 1128) = v25;
  *(v0 + 1144) = v24;
  *(v0 + 1160) = v34;
  sub_1000AE408(v0 + 976);
  v36 = *(v0 + 3216);
  v9 = *(v0 + 3056);
  v10 = *(v0 + 3048);
  v11 = *(v0 + 3040);
  v12 = *(v0 + 3016);
  v13 = *(v0 + 3008);
  v14 = *(v0 + 2984);
  v15 = *(v0 + 2960);
  v16 = *(v0 + 2936);
  v17 = *(v0 + 2912);
  v18 = *(v0 + 2888);
  v21 = *(v0 + 2880);
  v22 = *(v0 + 2864);
  v23 = *(v0 + 2856);
  *&v24 = *(v0 + 2848);
  *&v25 = *(v0 + 2840);
  *&v26 = *(v0 + 2816);
  *&v27 = *(v0 + 2792);
  *&v28 = *(v0 + 2784);
  *&v29 = *(v0 + 2760);
  *&v30 = *(v0 + 2752);
  *&v31 = *(v0 + 2744);
  *&v32 = *(v0 + 2720);
  *&v33 = *(v0 + 2712);
  v35 = *(v0 + 2704);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100381B08()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult()
{
  result = qword_1008420D8;
  if (!qword_1008420D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100381BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100381E78(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000B8B8(result, a2);
  }

  return result;
}

uint64_t sub_100381EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100381F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100381F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100381FDC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_100835D88, &qword_1006DE890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1003820AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100835D88, &qword_1006DE890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10038215C()
{
  sub_1003821E0();
  if (v0 <= 0x3F)
  {
    sub_100382238();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003821E0()
{
  if (!qword_1008420E8)
  {
    type metadata accessor for SecCertificate(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008420E8);
    }
  }
}

void sub_100382238()
{
  if (!qword_100835DF8)
  {
    sub_10000B870(&unk_100835E00, &qword_1006C46A0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100835DF8);
    }
  }
}

uint64_t sub_10038229C()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = type metadata accessor for SHA256();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = type metadata accessor for SHA256Digest();
  v0[8] = v7;
  v8 = *(v7 - 8);
  v0[9] = v8;
  v9 = *(v8 + 64) + 15;
  v0[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_10038243C;

  return sub_100382A70();
}

uint64_t sub_10038243C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_1003828C4;
  }

  else
  {
    v5 = sub_100382550;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100382550()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = sub_100355C34();
  if (v2)
  {
    v5 = v0[12];

    v6 = v0[10];
    v7 = v0[7];
    (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.internalError(_:), v0[2]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[10];
    v21 = v0[12];
    v22 = v0[9];
    v11 = v0[7];
    v20 = v0[8];
    v12 = v0[5];
    v13 = v0[6];
    v23 = v0[4];
    v14 = v3;
    v15 = v4;
    sub_10039361C(&qword_1008336E0, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v14, v15);
    sub_10037939C(v14, v15);
    sub_10000B90C(v14, v15);
    dispatch thunk of HashFunction.finalize()();
    (*(v13 + 8))(v11, v12);
    sub_10039361C(&qword_1008336E8, &type metadata accessor for SHA256Digest);
    v16 = Digest.base64Str.getter();
    v18 = v17;

    sub_10000B90C(v14, v15);
    (*(v22 + 8))(v10, v20);

    v19 = v0[1];

    return v19(v16, v18);
  }
}

uint64_t sub_1003828C4()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.internalError(_:), v0[2]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100382A70()
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
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v1[18] = v8;
  v9 = *(v8 - 8);
  v1[19] = v9;
  v10 = *(v9 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  v1[22] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v13 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  v1[25] = v14;
  v15 = *(v14 - 8);
  v1[26] = v15;
  v16 = *(v15 + 64) + 15;
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100382CDC, 0, 0);
}

uint64_t sub_100382CDC()
{
  v46 = v0;
  sub_10000BBC4(v0[7] + 208, (v0 + 2), &qword_100842208, &qword_1006DF0C0);
  v1 = v0[5];
  if (v1)
  {
    v2 = *sub_10000BA08(v0 + 2, v1);
    v3 = swift_task_alloc();
    v0[28] = v3;
    *v3 = v0;
    v3[1] = sub_1003832C4;

    return sub_1003C8C70();
  }

  else
  {
    sub_10000BE18((v0 + 2), &qword_100842208, &qword_1006DF0C0);
    v5 = v0[27];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[7];
    static DaemonSignposts.MobileDocumentReader.identityKeyStatus.getter();
    DIPSignpost.init(_:)();
    v9 = sub_100387E44(v7);
    v11 = v0[22];
    v10 = v0[23];
    v13 = v0[20];
    v12 = v0[21];
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    v17 = *(v10 + 32);
    v0[30] = v17;
    v18 = *(v10 + 40);
    v0[31] = v18;
    v19 = *(v14 + 16);
    v19(v12, v10 + *(v11 + 28), v15, v9);
    defaultLogger()();
    (v19)(v13, v12, v15);
    v20 = v18;

    v21 = Logger.logObject.getter();
    LOBYTE(v12) = static os_log_type_t.debug.getter();

    v44 = v12;
    v22 = os_log_type_enabled(v21, v12);
    v24 = v0[19];
    v23 = v0[20];
    v26 = v0[17];
    v25 = v0[18];
    v27 = v0[11];
    v28 = v0[12];
    if (v22)
    {
      v42 = v0[11];
      v29 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_100141FE4(v17, v20, v45);
      *(v29 + 12) = 2080;
      sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID);
      log = v21;
      v41 = v26;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v20;
      v32 = v31;
      v33 = v17;
      v34 = *(v24 + 8);
      v34(v23, v25);
      v35 = sub_100141FE4(v30, v32, v45);
      v20 = v43;

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, log, v44, "MobileDocumentReaderAuthenticationManager attempting to look up existing identity key for %s and %s", v29, 0x16u);
      swift_arrayDestroy();

      v36 = *(v28 + 8);
      v36(v41, v42);
    }

    else
    {

      v33 = v17;
      v34 = *(v24 + 8);
      v34(v23, v25);
      v36 = *(v28 + 8);
      v36(v26, v27);
    }

    v0[32] = v34;
    v0[33] = v36;
    v37 = *sub_10000BA08((v0[7] + 88), *(v0[7] + 112));
    v38 = swift_task_alloc();
    v0[34] = v38;
    *v38 = v0;
    v38[1] = sub_100383B1C;
    v39 = v0[21];

    return sub_10034DCAC(v33, v20, v39);
  }
}

uint64_t sub_1003832C4()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100383908;
  }

  else
  {
    v3 = sub_1003833D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003833D8()
{
  v55 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[29];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[7];
  static DaemonSignposts.MobileDocumentReader.identityKeyStatus.getter();
  DIPSignpost.init(_:)();
  v6 = sub_100387E44(v4);
  if (v1)
  {
    (*(v0[26] + 8))(v0[27], v0[25], v6);
    v7 = v0[27];
    v8 = v0[24];
    v41 = v0[23];
    v42 = v0[21];
    log = v0[20];
    v45 = v0[17];
    v47 = v0[16];
    v48 = v0[15];
    v50 = v0[14];
    v52 = v0[13];
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[22];
    v11 = v0[23];
    v14 = v0[20];
    v13 = v0[21];
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    v18 = *(v11 + 32);
    v0[30] = v18;
    v19 = *(v11 + 40);
    v0[31] = v19;
    v20 = *(v15 + 16);
    v20(v13, v11 + *(v12 + 28), v16, v6);
    defaultLogger()();
    (v20)(v14, v13, v16);
    v21 = v19;

    v22 = Logger.logObject.getter();
    LOBYTE(v13) = static os_log_type_t.debug.getter();

    v53 = v13;
    v23 = os_log_type_enabled(v22, v13);
    v25 = v0[19];
    v24 = v0[20];
    v27 = v0[17];
    v26 = v0[18];
    v28 = v0[11];
    v29 = v0[12];
    if (v23)
    {
      v49 = v0[11];
      v30 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_100141FE4(v18, v21, v54);
      *(v30 + 12) = 2080;
      sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID);
      loga = v22;
      v46 = v27;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v21;
      v33 = v32;
      v34 = v18;
      v35 = *(v25 + 8);
      v35(v24, v26);
      v36 = sub_100141FE4(v31, v33, v54);
      v21 = v51;

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, loga, v53, "MobileDocumentReaderAuthenticationManager attempting to look up existing identity key for %s and %s", v30, 0x16u);
      swift_arrayDestroy();

      v37 = *(v29 + 8);
      v37(v46, v49);
    }

    else
    {

      v34 = v18;
      v35 = *(v25 + 8);
      v35(v24, v26);
      v37 = *(v29 + 8);
      v37(v27, v28);
    }

    v0[32] = v35;
    v0[33] = v37;
    v38 = *sub_10000BA08((v0[7] + 88), *(v0[7] + 112));
    v39 = swift_task_alloc();
    v0[34] = v39;
    *v39 = v0;
    v39[1] = sub_100383B1C;
    v40 = v0[21];

    return sub_10034DCAC(v34, v21, v40);
  }
}

uint64_t sub_100383908()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v6 = v0[23];
  v7 = v0[21];
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[16];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100383B1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v7 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v5 = sub_100383F74;
  }

  else
  {
    v5 = sub_100383C30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100383C30()
{
  v1 = *(v0 + 280);
  if (sub_100356114())
  {
    v2 = *(v0 + 128);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderAuthenticationManager found identity key", v5, 2u);
    }

    v6 = *(v0 + 264);
    v7 = *(v0 + 216);
    v8 = *(v0 + 128);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);

    v6(v8, v9);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v40 = *(v0 + 280);
    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v37 = *(v0 + 120);
    v38 = *(v0 + 112);
    v19 = *(v0 + 104);
    v39 = *(v0 + 80);
    v20 = (*(v0 + 152) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 256))(*(v0 + 168), *(v0 + 144));
    (*(v11 + 8))(v12, v13);
    sub_1003935BC(v15, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

    v21 = *(v0 + 8);

    return v21(v40);
  }

  else
  {
    v23 = *(v0 + 120);
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "MobileDocumentReaderAuthenticationManager found identity key but it is not valid. Deleting and generating new one...", v26, 2u);
    }

    v27 = *(v0 + 264);
    v28 = *(v0 + 120);
    v29 = *(v0 + 88);
    v30 = *(v0 + 96);
    v31 = *(v0 + 56);

    v27(v28, v29);
    v32 = *sub_10000BA08((v31 + 88), *(v31 + 112));
    v33 = swift_task_alloc();
    *(v0 + 296) = v33;
    *v33 = v0;
    v33[1] = sub_1003841A0;
    v35 = *(v0 + 240);
    v34 = *(v0 + 248);
    v36 = *(v0 + 168);

    return sub_10035053C(v35, v34, v36);
  }
}

uint64_t sub_100383F74()
{
  v1 = v0[36];
  v22 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[21];
  v5 = v0[18];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  _StringGuts.grow(_:)(100);
  v9._countAndFlagsBits = 0xD000000000000044;
  v9._object = 0x8000000100711DC0;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v3;
  v10._object = v2;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x20646E6120;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._object = 0x8000000100711E10;
  v13._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v13);
  defaultLogger()();
  DIPLogError(_:message:log:)();

  v22(v6, v8);
  v14 = v0[27];
  v15 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v16 = *sub_10000BA08((v15 + 88), *(v15 + 112));
  v17 = swift_task_alloc();
  v0[39] = v17;
  *v17 = v0;
  v17[1] = sub_1003845B0;
  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[21];

  return sub_10034ED04(v19, v18, v20);
}

uint64_t sub_1003841A0()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_10038437C;
  }

  else
  {
    v3 = sub_1003842B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003842B4()
{
  v1 = v0[35];

  v2 = v0[27];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v4 = *sub_10000BA08((v3 + 88), *(v3 + 112));
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1003845B0;
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[21];

  return sub_10034ED04(v7, v6, v8);
}

uint64_t sub_10038437C()
{
  v1 = v0[35];

  v2 = v0[38];
  v23 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[21];
  v6 = v0[18];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  _StringGuts.grow(_:)(100);
  v10._countAndFlagsBits = 0xD000000000000044;
  v10._object = 0x8000000100711DC0;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v4;
  v11._object = v3;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x20646E6120;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._object = 0x8000000100711E10;
  v14._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v14);
  defaultLogger()();
  DIPLogError(_:message:log:)();

  v23(v7, v9);
  v15 = v0[27];
  v16 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v17 = *sub_10000BA08((v16 + 88), *(v16 + 112));
  v18 = swift_task_alloc();
  v0[39] = v18;
  *v18 = v0;
  v18[1] = sub_1003845B0;
  v20 = v0[30];
  v19 = v0[31];
  v21 = v0[21];

  return sub_10034ED04(v20, v19, v21);
}

uint64_t sub_1003845B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_1003848B8;
  }

  else
  {
    v5 = sub_1003846C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003846C4()
{
  v1 = *(v0 + 112);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationManager generated new identity key. Returning.", v4, 2u);
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  v5(v6, v7);
  v24 = *(v0 + 320);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v21 = *(v0 + 120);
  v22 = *(v0 + 112);
  v17 = *(v0 + 104);
  v23 = *(v0 + 80);
  v18 = (*(v0 + 152) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 256))(*(v0 + 168), *(v0 + 144));
  (*(v9 + 8))(v10, v11);
  sub_1003935BC(v13, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

  v19 = *(v0 + 8);

  return v19(v24);
}

uint64_t sub_1003848B8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152) + 8;
  (*(v0 + 256))(*(v0 + 168), *(v0 + 144));
  (*(v2 + 8))(v1, v3);
  sub_1003935BC(v4, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v6 = *(v0 + 328);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v11 = *(v0 + 184);
  v12 = *(v0 + 168);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 128);
  v16 = *(v0 + 120);
  v17 = *(v0 + 112);
  v18 = *(v0 + 104);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100384B20(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v3[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  v3[18] = v11;
  v12 = *(v11 - 8);
  v3[19] = v12;
  v13 = *(v12 + 64) + 15;
  v3[20] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v3[21] = v14;
  v15 = *(v14 - 8);
  v3[22] = v15;
  v16 = *(v15 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v17 = *(*(sub_100007224(&qword_1008419D8, &qword_1006DEAB0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v18 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v3[31] = v18;
  v19 = *(v18 - 8);
  v3[32] = v19;
  v20 = *(v19 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v21 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  v3[35] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_100384E6C, 0, 0);
}

uint64_t sub_100384E6C()
{
  v1 = *(v0 + 64);
  sub_100387E44(*(v0 + 288));
  v2 = *(v0 + 288);
  v3 = *(v0 + 56);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(*(v0 + 280) + 28);
  v7 = MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  v9 = sub_100391B94(v7, v8, v4, v5);
  v11 = v10;
  *(v0 + 296) = v9;
  *(v0 + 304) = v10;

  v12 = swift_task_alloc();
  *(v0 + 312) = v12;
  *v12 = v0;
  v12[1] = sub_1003851A0;
  v13 = *(v0 + 240);
  v14 = *(v0 + 64);

  return sub_100389664(v13, v9, v11);
}

uint64_t sub_1003851A0()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_100387330;
  }

  else
  {
    v3 = sub_1003852B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003852B4()
{
  v30 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = *(v2 + 48);
  v0[41] = v4;
  v0[42] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_10000BE18(v3, &qword_1008419D8, &qword_1006DEAB0);
    v5 = *sub_10000BA08((v0[8] + 88), *(v0[8] + 112));
    v6 = swift_task_alloc();
    v0[50] = v6;
    *v6 = v0;
    v6[1] = sub_100386960;
    v8 = v0[37];
    v7 = v0[38];

    return sub_100352FB4(v8, v7);
  }

  else
  {
    v10 = v0[38];
    v11 = v0[28];
    sub_100355438(v3, v0[34]);
    defaultLogger()();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[37];
      v14 = v0[38];
      v16 = v0[28];
      v17 = v0[21];
      v18 = v0[22];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(v15, v14, &v29);
      _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderAuthenticationManager found existing session for sessionIdentifier %s. Returning.", v19, 0xCu);
      sub_10000BB78(v20);

      v21 = *(v18 + 8);
      v21(v16, v17);
    }

    else
    {
      v22 = v0[28];
      v23 = v0[21];
      v24 = v0[22];

      v21 = *(v24 + 8);
      v21(v22, v23);
    }

    v0[43] = v21;
    v25 = swift_task_alloc();
    v0[44] = v25;
    *v25 = v0;
    v25[1] = sub_100385580;
    v26 = v0[34];
    v27 = v0[29];
    v28 = v0[8];

    return sub_10038AEFC(v27, v26);
  }
}

uint64_t sub_100385580()
{
  v1 = *(*v0 + 352);
  v3 = *v0;

  return _swift_task_switch(sub_10038567C, 0, 0);
}

uint64_t sub_10038567C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 232);
  if ((*(v0 + 328))(v2, 1, *(v0 + 248)) != 1)
  {
    v22 = *(v0 + 304);
    v23 = *(v0 + 288);
    v24 = *(v0 + 272);
    v25 = *(v0 + 48);

    sub_1003935BC(v23, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    sub_100355438(v2, v25);
    sub_1003935BC(v24, type metadata accessor for MobileDocumentReaderAuthenticationSession);
LABEL_16:
    v28 = *(v0 + 288);
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v33 = *(v0 + 216);
    v34 = *(v0 + 224);
    v36 = *(v0 + 200);
    v35 = *(v0 + 208);
    v37 = *(v0 + 192);
    v106 = *(v0 + 184);
    v109 = *(v0 + 160);
    v112 = *(v0 + 136);
    v113 = *(v0 + 112);
    v114 = *(v0 + 104);
    v115 = *(v0 + 96);
    v116 = *(v0 + 88);
    v120 = *(v0 + 80);

    v38 = *(v0 + 8);
LABEL_17:

    return v38();
  }

  v3 = *(v0 + 56);
  sub_10000BE18(v2, &qword_1008419D8, &qword_1006DEAB0);
  MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  if (!v4 || (v5 = *(v0 + 272), v6 = *(v0 + 248), , *(v5 + *(v6 + 40) + 8) >> 60 != 15))
  {
    v26 = *(v0 + 304);
    v27 = *(v0 + 288);

    sub_1003935BC(v27, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    sub_100355438(*(v0 + 272), *(v0 + 48));
    goto LABEL_16;
  }

  v7 = *(v0 + 216);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "MobileDocumentReaderAuthenticationManager existing session with token has missing merchantLogo, refetching", v10, 2u);
  }

  v11 = *(v0 + 344);
  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 216);
  v15 = *(v0 + 168);
  v16 = *(v0 + 176);

  v11(v14, v15);
  v17 = *(v12 + *(v13 + 28));
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v39 = *(v12 + *(v13 + 28));
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_8;
    }

LABEL_23:
    v40 = *(v0 + 272);
    (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), *(v0 + 144));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1003935BC(v40, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v42 = *(v0 + 144);
    v41 = *(v0 + 152);
    v44 = *(v0 + 96);
    v43 = *(v0 + 104);
    v45 = *(v0 + 80);
    v117 = *(v0 + 72);
    swift_getErrorValue();
    v46 = *(v0 + 16);
    v47 = *(v0 + 24);
    v48 = *(v0 + 32);
    swift_errorRetain();
    Error.dipErrorCode.getter();
    v110 = enum case for DIPError.Code.documentReaderSessionExpired(_:);
    v107 = *(v41 + 104);
    v107(v44);
    (*(v41 + 56))(v44, 0, 1, v42);
    v49 = *(v117 + 48);
    sub_10000BBC4(v43, v45, &qword_10083B020, &unk_1006D8ED0);
    sub_10000BBC4(v44, v45 + v49, &qword_10083B020, &unk_1006D8ED0);
    v50 = *(v41 + 48);
    v51 = v50(v45, 1, v42);
    v52 = *(v0 + 144);
    if (v51 == 1)
    {
      v53 = *(v0 + 104);
      sub_10000BE18(*(v0 + 96), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v53, &qword_10083B020, &unk_1006D8ED0);
      if (v50(v45 + v49, 1, v52) == 1)
      {
        sub_10000BE18(*(v0 + 80), &qword_10083B020, &unk_1006D8ED0);

LABEL_34:
        v72 = *(v0 + 56);
        MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
        if (v73)
        {
          v74 = *(v0 + 304);
          v75 = *(v0 + 200);

          defaultLogger()();
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&_mh_execute_header, v76, v77, "MobileDocumentReaderAuthenticationManager found stored session for token that is expired. A new token must be created.", v78, 2u);
          }

          v121 = *(v0 + 288);
          v79 = *(v0 + 200);
          v81 = *(v0 + 168);
          v80 = *(v0 + 176);
          v82 = *(v0 + 160);
          v83 = *(v0 + 144);

          (*(v80 + 8))(v79, v81);
          (v107)(v82, v110, v83);
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          sub_1003935BC(v121, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
          v84 = *(v0 + 288);
          v93 = *(v0 + 272);
          v94 = *(v0 + 264);
          v95 = *(v0 + 240);
          v96 = *(v0 + 232);
          v97 = *(v0 + 224);
          v98 = *(v0 + 216);
          v99 = *(v0 + 208);
          v100 = *(v0 + 200);
          v101 = *(v0 + 192);
          v102 = *(v0 + 184);
          v103 = *(v0 + 136);
          v105 = *(v0 + 112);
          v108 = *(v0 + 104);
          v111 = *(v0 + 96);
          v119 = *(v0 + 88);
          v122 = *(v0 + 80);
          (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.internalError(_:), *(v0 + 144));
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v38 = *(v0 + 8);
          goto LABEL_17;
        }

        v85 = *(v0 + 192);
        defaultLogger()();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        v88 = os_log_type_enabled(v86, v87);
        v89 = *(v0 + 192);
        v91 = *(v0 + 168);
        v90 = *(v0 + 176);
        if (v88)
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "MobileDocumentReaderAuthenticationManager found stored session for tokenless that is expired. Creating new one.", v92, 2u);
        }

        else
        {
        }

        (*(v90 + 8))(v89, v91);
LABEL_30:
        v61 = *sub_10000BA08((*(v0 + 64) + 88), *(*(v0 + 64) + 112));
        v62 = swift_task_alloc();
        *(v0 + 400) = v62;
        *v62 = v0;
        v62[1] = sub_100386960;
        v64 = *(v0 + 296);
        v63 = *(v0 + 304);

        return sub_100352FB4(v64, v63);
      }
    }

    else
    {
      sub_10000BBC4(*(v0 + 80), *(v0 + 88), &qword_10083B020, &unk_1006D8ED0);
      if (v50(v45 + v49, 1, v52) != 1)
      {
        v66 = *(v0 + 152);
        v65 = *(v0 + 160);
        v67 = *(v0 + 144);
        v68 = *(v0 + 96);
        v104 = *(v0 + 104);
        v69 = *(v0 + 88);
        v118 = *(v0 + 80);
        (*(v66 + 32))(v65, v45 + v49, v67);
        sub_10039361C(&qword_100834B68, &type metadata accessor for DIPError.Code);
        v70 = dispatch thunk of static Equatable.== infix(_:_:)();
        v71 = *(v66 + 8);
        v71(v65, v67);
        sub_10000BE18(v68, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v104, &qword_10083B020, &unk_1006D8ED0);
        v71(v69, v67);
        sub_10000BE18(v118, &qword_10083B020, &unk_1006D8ED0);

        if (v70)
        {
          goto LABEL_34;
        }

LABEL_29:
        v58 = *(v0 + 176);
        v59 = *(v0 + 184);
        v60 = *(v0 + 168);
        defaultLogger()();
        DIPLogError(_:message:log:)();

        (*(v58 + 8))(v59, v60);
        goto LABEL_30;
      }

      v55 = *(v0 + 144);
      v54 = *(v0 + 152);
      v56 = *(v0 + 104);
      v57 = *(v0 + 88);
      sub_10000BE18(*(v0 + 96), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v56, &qword_10083B020, &unk_1006D8ED0);
      (*(v54 + 8))(v57, v55);
    }

    sub_10000BE18(*(v0 + 80), &qword_100834B60, &qword_1006C0310);

    goto LABEL_29;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;
  *(v0 + 360) = v19;
  v21 = swift_task_alloc();
  *(v0 + 368) = v21;
  *v21 = v0;
  v21[1] = sub_100386338;

  return sub_100391EBC(v20);
}

uint64_t sub_100386338(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v6 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = a2;

  return _swift_task_switch(sub_100386438, 0, 0);
}

uint64_t sub_100386438()
{
  if (*(v0 + 384) >> 60 == 15)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 288);

    sub_1003935BC(v2, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    sub_100355438(*(v0 + 272), *(v0 + 48));
    v3 = *(v0 + 288);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v8 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 192);
    v21 = *(v0 + 184);
    v22 = *(v0 + 160);
    v23 = *(v0 + 136);
    v24 = *(v0 + 112);
    v25 = *(v0 + 104);
    v26 = *(v0 + 96);
    v27 = *(v0 + 88);
    v28 = *(v0 + 80);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *sub_10000BA08((*(v0 + 64) + 88), *(*(v0 + 64) + 112));
    v16 = swift_task_alloc();
    *(v0 + 392) = v16;
    *v16 = v0;
    v16[1] = sub_100386660;
    v18 = *(v0 + 376);
    v17 = *(v0 + 384);
    v19 = *(v0 + 296);
    v20 = *(v0 + 304);

    return sub_100354B5C(v18, v17, v19, v20);
  }
}

uint64_t sub_100386660(char a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 440) = a1;

  return _swift_task_switch(sub_100386780, 0, 0);
}

uint64_t sub_100386780()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 288);

  sub_1003935BC(v2, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  if (v1 == 1)
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 48);
    sub_100355110(v5, v7);
    v8 = v7 + *(v6 + 40);
    sub_10000BD94(*v8, *(v8 + 8));
    *v8 = v3;
    *(v8 + 8) = v4;
    sub_1003935BC(v5, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  }

  else
  {
    sub_10000BD94(*(v0 + 376), *(v0 + 384));
    sub_100355438(*(v0 + 272), *(v0 + 48));
  }

  v9 = *(v0 + 288);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 200);
  v16 = *(v0 + 208);
  v18 = *(v0 + 192);
  v21 = *(v0 + 184);
  v22 = *(v0 + 160);
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v25 = *(v0 + 104);
  v26 = *(v0 + 96);
  v27 = *(v0 + 88);
  v28 = *(v0 + 80);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100386960()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_100386A78, 0, 0);
}

uint64_t sub_100386A78()
{
  v1 = v0[26];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationManager successfully cleaned up existing certificate.", v4, 2u);
  }

  v5 = v0[26];
  v6 = v0[21];
  v7 = v0[22];

  (*(v7 + 8))(v5, v6);
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_100386BB0;
  v9 = v0[33];
  v10 = v0[7];
  v11 = v0[8];

  return sub_10038C984(v9, v10);
}

uint64_t sub_100386BB0()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_100387BCC;
  }

  else
  {
    v3 = sub_100386CC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100386CC4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[8];
  static DaemonSignposts.MobileDocumentReader.storeSession.getter();
  DIPSignpost.init(_:)();
  v4 = *sub_10000BA08((v3 + 88), *(v3 + 112));
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_100386D90;
  v6 = v0[33];

  return sub_1003520AC(v6);
}

uint64_t sub_100386D90()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_100387064;
  }

  else
  {
    v3 = sub_100386EA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100386EA4()
{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  sub_100355110(v2, v0[6]);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);
  sub_1003935BC(v2, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v6 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[12];
  v24 = v0[11];
  v25 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100387064()
{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);
  sub_1003935BC(v2, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v6 = v0[54];
  v7 = v0[36];
  v8 = v0[34];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[10];
  (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100387330()
{
  v1 = v0[40];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v73 = v0[9];
  swift_getErrorValue();
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v71 = enum case for DIPError.Code.documentReaderSessionExpired(_:);
  v69 = *(v3 + 104);
  v69(v5);
  (*(v3 + 56))(v5, 0, 1, v2);
  v10 = *(v73 + 48);
  sub_10000BBC4(v4, v6, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v5, v6 + v10, &qword_10083B020, &unk_1006D8ED0);
  v11 = *(v3 + 48);
  v12 = v11(v6, 1, v2);
  v13 = v0[18];
  if (v12 != 1)
  {
    sub_10000BBC4(v0[10], v0[11], &qword_10083B020, &unk_1006D8ED0);
    if (v11(v6 + v10, 1, v13) != 1)
    {
      v28 = v0[19];
      v27 = v0[20];
      v29 = v0[18];
      v30 = v0[12];
      v67 = v0[13];
      v31 = v0[11];
      v74 = v0[10];
      (*(v28 + 32))(v27, v6 + v10, v29);
      sub_10039361C(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v28 + 8);
      v33(v27, v29);
      sub_10000BE18(v30, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v67, &qword_10083B020, &unk_1006D8ED0);
      v33(v31, v29);
      sub_10000BE18(v74, &qword_10083B020, &unk_1006D8ED0);

      if (v32)
      {
        goto LABEL_12;
      }

LABEL_7:
      v19 = v0[22];
      v20 = v0[23];
      v21 = v0[21];
      defaultLogger()();
      DIPLogError(_:message:log:)();

      (*(v19 + 8))(v20, v21);
      goto LABEL_8;
    }

    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[13];
    v18 = v0[11];
    sub_10000BE18(v0[12], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v17, &qword_10083B020, &unk_1006D8ED0);
    (*(v15 + 8))(v18, v16);
LABEL_6:
    sub_10000BE18(v0[10], &qword_100834B60, &qword_1006C0310);

    goto LABEL_7;
  }

  v14 = v0[13];
  sub_10000BE18(v0[12], &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v14, &qword_10083B020, &unk_1006D8ED0);
  if (v11(v6 + v10, 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(v0[10], &qword_10083B020, &unk_1006D8ED0);

LABEL_12:
  v34 = v0[7];
  MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  if (v35)
  {
    v36 = v0[38];
    v37 = v0[25];

    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "MobileDocumentReaderAuthenticationManager found stored session for token that is expired. A new token must be created.", v40, 2u);
    }

    v75 = v0[36];
    v41 = v0[25];
    v43 = v0[21];
    v42 = v0[22];
    v44 = v0[20];
    v45 = v0[18];

    (*(v42 + 8))(v41, v43);
    (v69)(v44, v71, v45);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1003935BC(v75, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    v46 = v0[36];
    v56 = v0[34];
    v57 = v0[33];
    v58 = v0[30];
    v59 = v0[29];
    v60 = v0[28];
    v61 = v0[27];
    v62 = v0[26];
    v63 = v0[25];
    v64 = v0[24];
    v65 = v0[23];
    v66 = v0[17];
    v68 = v0[14];
    v70 = v0[13];
    v72 = v0[12];
    v76 = v0[11];
    v77 = v0[10];
    (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v47 = v0[1];

    return v47();
  }

  v48 = v0[24];
  defaultLogger()();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v0[24];
  v54 = v0[21];
  v53 = v0[22];
  if (v51)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "MobileDocumentReaderAuthenticationManager found stored session for tokenless that is expired. Creating new one.", v55, 2u);
  }

  else
  {
  }

  (*(v53 + 8))(v52, v54);
LABEL_8:
  v22 = *sub_10000BA08((v0[8] + 88), *(v0[8] + 112));
  v23 = swift_task_alloc();
  v0[50] = v23;
  *v23 = v0;
  v23[1] = sub_100386960;
  v25 = v0[37];
  v24 = v0[38];

  return sub_100352FB4(v25, v24);
}

uint64_t sub_100387BCC()
{
  sub_1003935BC(v0[36], type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v1 = v0[52];
  v2 = v0[36];
  v3 = v0[34];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[29];
  v9 = v0[28];
  v10 = v0[27];
  v11 = v0[26];
  v12 = v0[25];
  v13 = v0[24];
  v14 = v0[23];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[10];
  (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

double sub_100387E44@<D0>(Swift::String_optional *a1@<X8>)
{
  v150 = a1;
  v152 = type metadata accessor for Logger();
  v151 = *(v152 - 8);
  v2 = *(v151 + 64);
  v3 = __chkstk_darwin(v152);
  v147 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v149 = &v141 - v6;
  __chkstk_darwin(v5);
  v148 = &v141 - v7;
  v8 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v156 = &v141 - v10;
  v11 = type metadata accessor for UUID();
  v157 = *(v11 - 8);
  v158 = v11;
  v12 = *(v157 + 64);
  __chkstk_darwin(v11);
  v155 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for DIPError.Code();
  v164 = *(v166 - 8);
  v14 = *(v164 + 64);
  __chkstk_darwin(v166);
  v171 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v160 = &v141 - v18;
  v19 = type metadata accessor for BundleRecord.RecordType();
  v161 = *(v19 - 8);
  v162 = v19;
  v20 = *(v161 + 64);
  v21 = __chkstk_darwin(v19);
  v154 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v153 = &v141 - v24;
  __chkstk_darwin(v23);
  v26 = &v141 - v25;
  v27 = type metadata accessor for BundleRecord();
  v163 = *(v27 - 8);
  v28 = *(v163 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v141 - v33;
  __chkstk_darwin(v32);
  v36 = &v141 - v35;
  countAndFlagsBits = v1[5].value._countAndFlagsBits;
  sub_10000BA08(&v1[3].value._countAndFlagsBits, v1[4].value._object);
  v38 = v1[1].value._countAndFlagsBits;
  object = v1[1].value._object;
  v40 = v1[2].value._countAndFlagsBits;
  v41 = v1[2].value._object;
  v42 = v165;
  dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
  if (v42)
  {
    v43 = *(v164 + 104);
    v44 = v171;
LABEL_3:
    v45 = v166;
LABEL_4:
    v43(v44, enum case for DIPError.Code.internalError(_:), v45);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return result;
  }

  v47 = v160;
  v145 = v31;
  v165 = 0;
  v144 = v1 + 1;
  v146 = v34;
  v159 = v27;
  BundleRecord.recordType.getter();
  v49 = v161;
  v48 = v162;
  v50 = (*(v161 + 88))(v26, v162);
  v51 = enum case for BundleRecord.RecordType.application(_:);
  if (v50 == enum case for BundleRecord.RecordType.application(_:) || v50 == enum case for BundleRecord.RecordType.appClip(_:))
  {
    v55 = v163;
    v56 = v146;
    (*(v163 + 16))(v146, v36, v159);
    v44 = v171;
  }

  else
  {
    v52 = v26;
    v53 = v159;
    v44 = v171;
    if (v50 != enum case for BundleRecord.RecordType.applicationExtension(_:))
    {
      v143 = v36;
      v69 = v164;
      if (v50 != enum case for BundleRecord.RecordType.unknown(_:))
      {
        (*(v49 + 8))(v52, v48);
      }

      v43 = *(v69 + 104);
      v70 = v166;
      v43(v44, enum case for DIPError.Code.documentReaderUnsupportedBundleType(_:), v166);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v163 + 8))(v143, v159);
      v45 = v70;
      goto LABEL_4;
    }

    BundleRecord.containingBundleRecord.getter();
    v54 = v163;
    if ((*(v163 + 48))(v47, 1, v53) == 1)
    {
      sub_10000BE18(v47, &qword_10083ACF8, &qword_1006D8FC0);
      v43 = *(v164 + 104);
      v43(v44, enum case for DIPError.Code.documentReaderUnsupportedBundleType(_:), v166);
      v165 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v54 + 8))(v36, v159);
      goto LABEL_3;
    }

    v143 = v36;
    v78 = *(v54 + 32);
    v160 = (v54 + 32);
    v142 = v78;
    v78(v145, v47, v53);
    v79 = v153;
    BundleRecord.recordType.getter();
    v80 = v154;
    (*(v49 + 104))(v154, v51, v48);
    v81 = static BundleRecord.RecordType.== infix(_:_:)();
    v82 = *(v49 + 8);
    v82(v80, v48);
    v82(v79, v48);
    if ((v81 & 1) == 0)
    {
      v43 = *(v164 + 104);
      v43(v44, enum case for DIPError.Code.unexpectedDeviceState(_:), v166);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v165 = *(v163 + 8);
      v100 = v159;
      v165(v145, v159);
      v165(v143, v100);
      goto LABEL_3;
    }

    v56 = v146;
    v142(v146, v145, v53);
    v55 = v163;
    v36 = v143;
  }

  v57 = BundleRecord.applicationIdentifier.getter();
  if (!v58)
  {
    v43 = *(v164 + 104);
    v43(v44, enum case for DIPError.Code.documentReaderIdentifiersMissing(_:), v166);
    v165 = 0x8000000100711950;
    sub_1000402AC(_swiftEmptyArrayStorage);
    v71 = v36;
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v72 = *(v55 + 8);
    v73 = v159;
    v72(v146, v159);
    v74 = v71;
    v44 = v171;
    v75 = v73;
LABEL_20:
    v72(v74, v75);
    goto LABEL_3;
  }

  v59 = v58;
  v60 = v57;
  v61 = BundleRecord.bundleIdentifier.getter();
  if (!v62)
  {

    v43 = *(v164 + 104);
    v43(v171, enum case for DIPError.Code.documentReaderIdentifiersMissing(_:), v166);
    v165 = 0x80000001007115C0;
    sub_1000402AC(_swiftEmptyArrayStorage);
    v76 = v36;
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v44 = v171;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v72 = *(v55 + 8);
    v77 = v159;
    v72(v146, v159);
    v74 = v76;
    v75 = v77;
    goto LABEL_20;
  }

  v161 = v62;
  v162 = v59;
  v160 = v61;
  v63 = v156;
  BundleRecord.deviceIdentifierForVendor.getter();
  v64 = v157;
  v65 = v158;
  if ((*(v157 + 48))(v63, 1, v158) == 1)
  {

    sub_10000BE18(v63, &unk_100849F90, &qword_1006DEAA0);
    v165 = *(v164 + 104);
    (v165)(v171, enum case for DIPError.Code.documentReaderIdentifiersMissing(_:), v166);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v66 = v36;
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v44 = v171;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v67 = *(v55 + 8);
    v68 = v159;
    v67(v146, v159);
    v67(v66, v68);
    v43 = v165;
    goto LABEL_3;
  }

  v143 = v36;
  v83 = v155;
  v171 = *(v64 + 32);
  (v171)(v155, v63, v65);
  v84 = BundleRecord.teamIdentifier.getter();
  v156 = v85;
  if (!v85)
  {

    v171 = "exist, cannot continue.";
    v43 = *(v164 + 104);
    v43(v44, enum case for DIPError.Code.documentReaderIdentifiersMissing(_:), v166);
    v165 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v64 + 8))(v83, v65);
    v101 = *(v163 + 8);
    v102 = v159;
    v101(v146, v159);
    v101(v143, v102);
    v45 = v166;
    goto LABEL_4;
  }

  v164 = v84;
  v166 = v60;
  v86 = objc_opt_self();
  v87 = [v86 standardUserDefaults];
  v88._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.overrideApplicationIdentifier.getter();
  v89 = NSUserDefaults.internalString(forKey:)(v88);

  v154 = (v64 + 32);
  if (v89.value._object)
  {
    v169 = v89;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    v90 = v168;
    if (v168)
    {
      v91 = v86;
      v92 = v167;

      v93 = v148;
      defaultLogger()();

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.debug.getter();

      v96 = os_log_type_enabled(v94, v95);
      v97 = v151;
      v166 = v92;
      if (v96)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v169.value._countAndFlagsBits = v99;
        *v98 = 136315138;
        *(v98 + 4) = sub_100141FE4(v92, v90, &v169.value._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v94, v95, "MobileDocumentReaderAuthenticationManager using override applicationIdentifier %s for storing and fetching terminal authentication certificates.", v98, 0xCu);
        sub_10000BB78(v99);
        v56 = v146;

        (*(v97 + 8))(v148, v152);
      }

      else
      {

        (*(v97 + 8))(v93, v152);
      }

      v162 = v90;
      v86 = v91;
    }
  }

  v103 = [v86 standardUserDefaults];
  v104._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.overrideBundleIdentifier.getter();
  v105 = NSUserDefaults.internalString(forKey:)(v104);

  if (v105.value._object)
  {
    v169 = v105;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    v106 = v168;
    if (v168)
    {
      v107 = v167;

      v108 = v149;
      defaultLogger()();

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();

      v111 = os_log_type_enabled(v109, v110);
      v160 = v107;
      if (v111)
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v169.value._countAndFlagsBits = v113;
        *v112 = 136315138;
        *(v112 + 4) = sub_100141FE4(v107, v106, &v169.value._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v109, v110, "MobileDocumentReaderAuthenticationManager using override bundleIdentifier %s for fetching terminal authentication certificates.", v112, 0xCu);
        sub_10000BB78(v113);
        v56 = v146;

        (*(v151 + 8))(v149, v152);
      }

      else
      {

        (*(v151 + 8))(v108, v152);
      }

      v161 = v106;
    }
  }

  v114 = [v86 standardUserDefaults];
  v115._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.overrideTeamIdentifier.getter();
  v116 = NSUserDefaults.internalString(forKey:)(v115);

  if (v116.value._object && (v169 = v116, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , (v117 = v168) != 0))
  {
    v118 = v167;

    v119 = v147;
    defaultLogger()();

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();

    v122 = os_log_type_enabled(v120, v121);
    v123 = v159;
    v164 = v118;
    if (v122)
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v169.value._countAndFlagsBits = v125;
      *v124 = 136315138;
      *(v124 + 4) = sub_100141FE4(v118, v117, &v169.value._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v120, v121, "MobileDocumentReaderAuthenticationManager using override teamIdentifier %s for fetching terminal authentication certificates.", v124, 0xCu);
      sub_10000BB78(v125);
    }

    (*(v151 + 8))(v119, v152);
    v126 = *(v163 + 8);
    v126(v146, v123);
    v126(v143, v123);
    v127 = v117;
    v128 = v155;
    v129 = v150;
    v130 = v144;
    v131 = v166;
  }

  else
  {
    v132 = *(v163 + 8);
    v133 = v159;
    v132(v56, v159);
    v132(v143, v133);
    v128 = v155;
    v127 = v156;
    v129 = v150;
    v130 = v144;
    v131 = v166;
  }

  v134 = v171;
  v135 = v130[1];
  v169 = *v130;
  v170 = v135;
  v136 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  (v134)(v129 + *(v136 + 28), v128, v158);
  result = *&v169.value._countAndFlagsBits;
  v137 = v170;
  *v129 = v169;
  v129[1] = v137;
  v138 = v162;
  v129[2].value._countAndFlagsBits = v131;
  v129[2].value._object = v138;
  v139 = v161;
  v129[3].value._countAndFlagsBits = v160;
  v129[3].value._object = v139;
  v140 = (&v129->value._countAndFlagsBits + *(v136 + 32));
  *v140 = v164;
  v140[1] = v127;
  return result;
}

uint64_t sub_100389664(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for UUID();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  v4[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = type metadata accessor for Milestone();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v19 = *(*(sub_100007224(&qword_1008419D8, &qword_1006DEAB0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v20 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v4[23] = v20;
  v21 = *(v20 - 8);
  v4[24] = v21;
  v22 = *(v21 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v23 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v24 = type metadata accessor for DIPSignpost();
  v4[30] = v24;
  v25 = *(v24 - 8);
  v4[31] = v25;
  v26 = *(v25 + 64) + 15;
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003899C4, 0, 0);
}

uint64_t sub_1003899C4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.useHardcodedSession.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = *(v0 + 40);
    sub_10038FE14(*(v0 + 16));
    (*(*(v0 + 192) + 56))(*(v0 + 16), 0, 1, *(v0 + 184));
    v14 = *(v0 + 256);
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 200);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 160);
    v23 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 96);
    v27 = *(v0 + 88);
    v28 = *(v0 + 64);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 232);
    v7 = *(v0 + 40);
    static DaemonSignposts.MobileDocumentReader.sessionStatus.getter();
    DIPSignpost.init(_:)();
    v8 = *sub_10000BA08((v7 + 88), *(v7 + 112));
    v9 = swift_task_alloc();
    *(v0 + 264) = v9;
    *v9 = v0;
    v9[1] = sub_100389DE4;
    v10 = *(v0 + 176);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);

    return sub_100351150(v10, v11, v12);
  }
}

uint64_t sub_100389DE4()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_10038AC84;
  }

  else
  {
    v3 = sub_100389EF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100389EF8()
{
  v149 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v20 = v0[27];
    v19 = v0[28];
    v21 = v0[21];
    v22 = v0[4];
    sub_100355438(v3, v19);
    defaultLogger()();
    sub_100355110(v19, v20);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[27];
    if (v25)
    {
      v27 = v0[23];
      v28 = v0[19];
      v139 = v0[18];
      v144 = v0[21];
      v30 = v0[3];
      v29 = v0[4];
      v31 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_100141FE4(v30, v29, v148);
      *(v31 + 12) = 2080;
      v32 = *(v26 + *(v27 + 28));
      type metadata accessor for SecCertificate(0);
      Array<A>.base64EncodedStrings.getter();
      v33 = Array.description.getter();
      v35 = v34;

      sub_1003935BC(v26, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      v36 = sub_100141FE4(v33, v35, v148);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v23, v24, "MobileDocumentReaderAuthenticationManager found certificate for sessionIdentifier %s. Certificate Chain: %s", v31, 0x16u);
      swift_arrayDestroy();

      v37 = *(v28 + 8);
      v37(v144, v139);
    }

    else
    {
      v38 = v0[21];
      v39 = v0[18];
      v40 = v0[19];

      v37 = *(v40 + 8);
      v37(v38, v39);
      sub_1003935BC(v26, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    }

    v41 = v0[34];
    v43 = v0[16];
    v42 = v0[17];
    v45 = v0[14];
    v44 = v0[15];
    v46 = v0[5];
    static MobileDocumentReaderMilestone.prepareCertificateFound.getter();
    Milestone.log()();
    (*(v43 + 8))(v42, v44);
    v47 = sub_100387E44(v45);
    v48 = v0[28];
    if (!v41)
    {
      v49 = v0[14];
      v50 = *(v49 + 32);
      v51 = *(v49 + 40);
      v52 = *(v0[10] + 16);
      (v52)(v0[12], v49 + *(v0[13] + 28), v0[9], v47);
      if (*(v48 + 16) == v50 && *(v48 + 24) == v51 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v53 = v0[28], v54 = v0[12], v55 = *(v0[23] + 24), (static UUID.== infix(_:_:)()))
      {
        v56 = *(v0[23] + 28);
        v57 = *(v0[28] + v56);
        if (v57 >> 62)
        {
          if (v57 < 0)
          {
            v118 = *(v0[28] + v56);
          }

          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
            goto LABEL_14;
          }
        }

        else
        {
          result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_14:
            if ((v57 & 0xC000000000000001) != 0)
            {
              v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v59 = *(v57 + 32);
            }

            v60 = v59;
            v61 = v0[14];
            v62 = v0[12];
            v64 = v0[9];
            v63 = v0[10];
            v65 = v0[5];
            sub_10039107C(v59);
            (*(v63 + 8))(v62, v64);

            sub_1003935BC(v61, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
            v113 = v0[31];
            v112 = v0[32];
            v114 = v0[30];
            v115 = v0[23];
            v116 = v0[24];
            v117 = v0[2];
            sub_100355438(v0[28], v117);
            (*(v116 + 56))(v117, 0, 1, v115);
            DIPSignpost.end(workflowID:isBackground:)(0, 2);
            (*(v113 + 8))(v112, v114);
            goto LABEL_3;
          }
        }

        v48 = v0[28];
        v147 = v0[14];
        v119 = v0[12];
        v120 = v0[9];
        v121 = v0[10];
        (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v0[6]);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v121 + 8))(v119, v120);
        v105 = v147;
      }

      else
      {
        v136 = v50;
        v66 = v0[28];
        v67 = v0[26];
        v140 = v0[25];
        v145 = v37;
        v68 = v0[20];
        v69 = v51;
        v71 = v0[11];
        v70 = v0[12];
        v72 = v0[9];
        defaultLogger()();
        v52(v71, v70, v72);
        sub_100355110(v66, v67);
        sub_100355110(v66, v140);

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.debug.getter();

        v75 = os_log_type_enabled(v73, v74);
        v77 = v0[25];
        v76 = v0[26];
        if (v75)
        {
          v123 = v0[23];
          v128 = v0[19];
          v130 = v0[18];
          v133 = v0[20];
          v125 = v74;
          v79 = v0[10];
          v78 = v0[11];
          v80 = v0[9];
          v81 = swift_slowAlloc();
          v148[0] = swift_slowAlloc();
          *v81 = 136315906;
          *(v81 + 4) = sub_100141FE4(v136, v69, v148);
          *(v81 + 12) = 2080;
          v82 = UUID.uuidString.getter();
          v84 = v83;
          v141 = *(v79 + 8);
          v141(v78, v80);
          v85 = sub_100141FE4(v82, v84, v148);

          *(v81 + 14) = v85;
          *(v81 + 22) = 2080;
          v86 = *(v76 + 16);
          v87 = *(v76 + 24);

          sub_1003935BC(v76, type metadata accessor for MobileDocumentReaderAuthenticationSession);
          v88 = sub_100141FE4(v86, v87, v148);

          *(v81 + 24) = v88;
          *(v81 + 32) = 2080;
          v89 = *(v123 + 24);
          sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          sub_1003935BC(v77, type metadata accessor for MobileDocumentReaderAuthenticationSession);
          v93 = sub_100141FE4(v90, v92, v148);

          *(v81 + 34) = v93;
          _os_log_impl(&_mh_execute_header, v73, v125, "MobileDocumentReaderAuthenticationManager found mismatch between calling app identifiers %s, %s and stored session app identifiers %s, %s", v81, 0x2Au);
          swift_arrayDestroy();

          v94 = v130;
          v95 = v133;
        }

        else
        {
          v97 = v0[19];
          v96 = v0[20];
          v98 = v0[18];
          v100 = v0[10];
          v99 = v0[11];
          v101 = v0[9];

          sub_1003935BC(v77, type metadata accessor for MobileDocumentReaderAuthenticationSession);
          sub_1003935BC(v76, type metadata accessor for MobileDocumentReaderAuthenticationSession);
          v141 = *(v100 + 8);
          v141(v99, v101);
          v95 = v96;
          v94 = v98;
        }

        v145(v95, v94);
        v48 = v0[28];
        v102 = v0[14];
        v103 = v0[12];
        v104 = v0[9];
        (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.documentReaderSessionAppMismatch(_:), v0[6]);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v141(v103, v104);
        v105 = v102;
      }

      sub_1003935BC(v105, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    }

    sub_1003935BC(v48, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v106 = v0[31];
    v107 = v0[32];
    v108 = v0[30];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v106 + 8))(v107, v108);
    v109 = v0[32];
    v110 = v0[28];
    v111 = v0[29];
    v122 = v0[27];
    v124 = v0[26];
    v126 = v0[25];
    v127 = v0[22];
    v129 = v0[21];
    v131 = v0[20];
    v134 = v0[17];
    v137 = v0[14];
    v142 = v0[12];
    v146 = v0[11];
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v0[1];
    goto LABEL_24;
  }

  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = v0[2];
  sub_10000BE18(v3, &qword_1008419D8, &qword_1006DEAB0);
  (*(v2 + 56))(v7, 1, 1, v1);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);
LABEL_3:
  v8 = v0[32];
  v9 = v0[28];
  v10 = v0[29];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[20];
  v17 = v0[17];
  v132 = v0[14];
  v135 = v0[12];
  v138 = v0[11];
  v143 = v0[8];

  v18 = v0[1];
LABEL_24:

  return v18();
}

uint64_t sub_10038AC84()
{
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);
  v5 = v0[32];
  v6 = v0[28];
  v7 = v0[29];
  v10 = v0[27];
  v11 = v0[26];
  v12 = v0[25];
  v13 = v0[22];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10038AEFC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for MobileDocumentReaderConfiguration();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[20] = v10;
  v11 = *(v10 - 8);
  v3[21] = v11;
  v12 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_10038B170, 0, 0);
}

uint64_t sub_10038B170()
{
  v126 = v0;
  v1 = v0[12];
  v2 = v0[7];
  if (*(v2 + *(v1 + 44) + 8) || *(v2 + *(v1 + 40) + 8) >> 60 != 15)
  {
    v35 = v0[23];
    v36 = v0[15];
    defaultLogger()();
    sub_100355110(v2, v36);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[23];
    v41 = v0[20];
    v42 = v0[21];
    v43 = v0[15];
    if (v39)
    {
      v121 = v0[23];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v125 = v45;
      *v44 = 136315138;
      v46 = *v43;
      v47 = v43[1];

      sub_1003935BC(v43, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      v48 = sub_100141FE4(v46, v47, &v125);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "MobileDocumentReaderAuthenticationManager can only refresh tokenless sessions, returning existing session for sessionIdentifier %s", v44, 0xCu);
      sub_10000BB78(v45);

      (*(v42 + 8))(v121, v41);
    }

    else
    {

      sub_1003935BC(v43, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      (*(v42 + 8))(v40, v41);
    }

    (*(v0[13] + 56))(v0[6], 1, 1, v0[12]);
  }

  else
  {
    v3 = v0[33];
    v4 = v0[30];
    v114 = v0[29];
    v119 = v0[32];
    v5 = v0[28];
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[8];
    v9 = v8[35];
    sub_10000BA08(v8 + 31, v8[34]);
    dispatch thunk of DateProviding.now.getter();
    sub_100393D4C();
    v11 = v10;
    defaultLogger()();
    sub_100355110(v2, v6);
    sub_100355110(v2, v7);
    (*(v4 + 16))(v119, v3, v114);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[32];
    v17 = v0[29];
    v16 = v0[30];
    v18 = v0[28];
    v19 = v0[20];
    v20 = v0[21];
    v21 = v0[19];
    v115 = v18;
    v120 = v0[18];
    if (v14)
    {
      v22 = v0[12];
      v104 = v22;
      v106 = v0[32];
      v23 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v125 = v111;
      *v23 = 134218498;
      *(v23 + 4) = v11;
      *(v23 + 12) = 2080;
      v108 = v13;
      v24 = *(v22 + 52);
      sub_10039361C(&qword_10083ACE0, &type metadata accessor for Date);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1003935BC(v21, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      v28 = sub_100141FE4(v25, v27, &v125);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2048;
      v29 = v120 + *(v104 + 52);
      Date.timeIntervalSince(_:)();
      v31 = v30;
      v32 = v17;
      v33 = *(v16 + 8);
      v33(v106, v32);
      sub_1003935BC(v120, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      *(v23 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v12, v108, "MobileDocumentReaderAuthenticationManager got certificate refresh threshold = %f; session expiration is %s (%f seconds from now)", v23, 0x20u);
      sub_10000BB78(v111);

      v34 = *(v20 + 8);
      v34(v115, v19);
    }

    else
    {

      v61 = v17;
      v33 = *(v16 + 8);
      v33(v15, v61);
      sub_1003935BC(v120, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      sub_1003935BC(v21, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      v34 = *(v20 + 8);
      v34(v115, v19);
    }

    v0[34] = v33;
    v0[35] = v34;
    if (v11 <= 0.0)
    {
      v117 = v33;
      v123 = v34;
      v80 = v0[24];
      defaultLogger()();
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "MobileDocumentReaderAuthenticationManager got certificate refresh threshold <= 0, disabling optimistic refresh", v83, 2u);
      }

      v84 = v0[33];
      v85 = v0[29];
      v86 = v0[30];
      v87 = v0[24];
      v88 = v0[20];
      v89 = v0[21];
      v90 = v0[13];
      v113 = v0[12];
      v91 = v0[6];

      v123(v87, v88);
      v117(v84, v85);
      (*(v90 + 56))(v91, 1, 1, v113);
    }

    else
    {
      v62 = v0[33];
      v64 = v0[30];
      v63 = v0[31];
      v65 = v0[29];
      v66 = v0[7];
      v67 = *(v0[12] + 52);
      Date.addingTimeInterval(_:)();
      LOBYTE(v62) = static Date.< infix(_:_:)();
      v0[36] = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v33(v63, v65);
      if (v62)
      {
        v68 = v0[27];
        defaultLogger()();
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 134217984;
          *(v71 + 4) = v11;
          _os_log_impl(&_mh_execute_header, v69, v70, "MobileDocumentReaderAuthenticationManager got session that will expire in less than  %f seconds from now; optimistically refreshing", v71, 0xCu);
        }

        v72 = v0[27];
        v73 = v0[20];
        v74 = v0[21];
        v75 = v0[11];

        v0[37] = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34(v72, v73);
        MobileDocumentReaderConfiguration.init(merchantServerAccessToken:userAcceptedTermsAndConditions:)();
        v76 = swift_task_alloc();
        v0[38] = v76;
        *v76 = v0;
        v76[1] = sub_10038BAA4;
        v77 = v0[17];
        v78 = v0[11];
        v79 = v0[8];

        return sub_10038C984(v77, v78);
      }

      v124 = v34;
      v92 = v0[25];
      defaultLogger()();
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "MobileDocumentReaderAuthenticationManager got certificate that is not nearing expiry, will not optimistically refresh", v95, 2u);
      }

      v96 = v0[33];
      v97 = v0[29];
      v98 = v0[25];
      v99 = v0[20];
      v100 = v0[21];
      v101 = v93;
      v102 = v0[13];
      v118 = v0[12];
      v103 = v0[6];

      v124(v98, v99);
      v33(v96, v97);
      (*(v102 + 56))(v103, 1, 1, v118);
    }
  }

  v50 = v0[32];
  v49 = v0[33];
  v51 = v0[31];
  v53 = v0[27];
  v52 = v0[28];
  v55 = v0[25];
  v54 = v0[26];
  v56 = v0[23];
  v57 = v0[24];
  v58 = v0[22];
  v105 = v0[19];
  v107 = v0[18];
  v109 = v0[17];
  v110 = v0[16];
  v112 = v0[15];
  v116 = v0[14];
  v122 = v0[11];

  v59 = v0[1];

  return v59();
}

uint64_t sub_10038BAA4()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_10038C5F8;
  }

  else
  {
    v3 = sub_10038BBB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10038BBB8()
{
  v1 = v0[7];
  v2 = sub_10000BA08((v0[8] + 88), *(v0[8] + 112));
  v4 = *v1;
  v3 = v1[1];
  v5 = *v2;
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_10038BC6C;

  return sub_100352FB4(v4, v3);
}

uint64_t sub_10038BC6C()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_10038BD68, 0, 0);
}

uint64_t sub_10038BD68()
{
  v1 = *sub_10000BA08((v0[8] + 88), *(v0[8] + 112));
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_10038BE10;
  v3 = v0[17];

  return sub_1003520AC(v3);
}

uint64_t sub_10038BE10()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_10038C250;
  }

  else
  {
    v3 = sub_10038BF24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10038BF24()
{
  v50 = v0;
  v1 = v0[26];
  v3 = v0[16];
  v2 = v0[17];
  defaultLogger()();
  sub_100355110(v2, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[36];
  v8 = v0[34];
  v45 = v0[35];
  v47 = v0[37];
  v9 = v0[33];
  v10 = v0[29];
  v11 = v0[20];
  v12 = v0[16];
  v13 = v0[10];
  v43 = v0[11];
  v39 = v0[26];
  v41 = v0[9];
  if (v6)
  {
    v37 = v0[29];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49 = v15;
    *v14 = 136315138;
    v34 = v9;
    v35 = v8;
    v16 = *v12;
    v17 = v12[1];

    sub_1003935BC(v12, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v18 = sub_100141FE4(v16, v17, &v49);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentReaderAuthenticationManager returning refreshed session for sessionIdentifier %s", v14, 0xCu);
    sub_10000BB78(v15);

    v45(v39, v11);
    (*(v13 + 8))(v43, v41);
    v35(v34, v37);
  }

  else
  {

    sub_1003935BC(v12, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v45(v39, v11);
    (*(v13 + 8))(v43, v41);
    v8(v9, v10);
  }

  v19 = v0[12];
  v20 = v0[13];
  v21 = v0[6];
  sub_100355438(v0[17], v21);
  (*(v20 + 56))(v21, 0, 1, v19);
  v23 = v0[32];
  v22 = v0[33];
  v24 = v0[31];
  v26 = v0[27];
  v25 = v0[28];
  v28 = v0[25];
  v27 = v0[26];
  v29 = v0[23];
  v30 = v0[24];
  v31 = v0[22];
  v36 = v0[19];
  v38 = v0[18];
  v40 = v0[17];
  v42 = v0[16];
  v44 = v0[15];
  v46 = v0[14];
  v48 = v0[11];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10038C250()
{
  v56 = v0;
  sub_1003935BC(v0[17], type metadata accessor for MobileDocumentReaderAuthenticationSession);
  v1 = v0[42];
  v2 = v0[22];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  defaultLogger()();
  sub_100355110(v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v52 = v0[36];
    v48 = v0[37];
    v50 = v0[34];
    v46 = v0[33];
    v42 = v0[35];
    v44 = v0[29];
    v40 = v0[22];
    v7 = v0[20];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = *v8;
    v11 = v8[1];

    sub_1003935BC(v8, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v12 = sub_100141FE4(v10, v11, &v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = Error.localizedDescription.getter();
    v18 = sub_100141FE4(v16, v17, &v55);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderAuthenticationManager optimistic refresh failed for sessionIdentifier %s: %s", v9, 0x16u);
    swift_arrayDestroy();

    v42(v40, v7);
    v20 = v44;
    v19 = v46;
  }

  else
  {
    v21 = v0[37];
    v22 = v0[35];
    v50 = v0[34];
    v53 = v0[36];
    v23 = v0[33];
    v24 = v0[29];
    v25 = v0[22];
    v26 = v0[20];
    v27 = v0[14];

    sub_1003935BC(v27, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v22(v25, v26);
    v19 = v23;
    v20 = v24;
  }

  v50(v19, v20);
  (*(v0[13] + 56))(v0[6], 1, 1, v0[12]);
  v29 = v0[32];
  v28 = v0[33];
  v30 = v0[31];
  v32 = v0[27];
  v31 = v0[28];
  v34 = v0[25];
  v33 = v0[26];
  v35 = v0[23];
  v36 = v0[24];
  v37 = v0[22];
  v41 = v0[19];
  v43 = v0[18];
  v45 = v0[17];
  v47 = v0[16];
  v49 = v0[15];
  v51 = v0[14];
  v54 = v0[11];

  v38 = v0[1];

  return v38();
}

uint64_t sub_10038C5F8()
{
  v56 = v0;
  v1 = v0[39];
  v2 = v0[22];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  defaultLogger()();
  sub_100355110(v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v52 = v0[36];
    v48 = v0[37];
    v50 = v0[34];
    v46 = v0[33];
    v42 = v0[35];
    v44 = v0[29];
    v40 = v0[22];
    v7 = v0[20];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = *v8;
    v11 = v8[1];

    sub_1003935BC(v8, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v12 = sub_100141FE4(v10, v11, &v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = Error.localizedDescription.getter();
    v18 = sub_100141FE4(v16, v17, &v55);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderAuthenticationManager optimistic refresh failed for sessionIdentifier %s: %s", v9, 0x16u);
    swift_arrayDestroy();

    v42(v40, v7);
    v20 = v44;
    v19 = v46;
  }

  else
  {
    v21 = v0[37];
    v22 = v0[35];
    v50 = v0[34];
    v53 = v0[36];
    v23 = v0[33];
    v24 = v0[29];
    v25 = v0[22];
    v26 = v0[20];
    v27 = v0[14];

    sub_1003935BC(v27, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v22(v25, v26);
    v19 = v23;
    v20 = v24;
  }

  v50(v19, v20);
  (*(v0[13] + 56))(v0[6], 1, 1, v0[12]);
  v29 = v0[32];
  v28 = v0[33];
  v30 = v0[31];
  v32 = v0[27];
  v31 = v0[28];
  v34 = v0[25];
  v33 = v0[26];
  v35 = v0[23];
  v36 = v0[24];
  v37 = v0[22];
  v41 = v0[19];
  v43 = v0[18];
  v45 = v0[17];
  v47 = v0[16];
  v49 = v0[15];
  v51 = v0[14];
  v54 = v0[11];

  v38 = v0[1];

  return v38();
}

uint64_t sub_10038C984(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(sub_100007224(&qword_100841B98, &unk_1006DF0D0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100007224(&qword_100841BB0, &unk_1006DF080) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(sub_100007224(&qword_100835D88, &qword_1006DE890) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = *(*(type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult() - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v3[16] = v9;
  v10 = *(v9 - 8);
  v3[17] = v10;
  v11 = *(v10 + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v15 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v16 = type metadata accessor for DIPSignpost();
  v3[24] = v16;
  v17 = *(v16 - 8);
  v3[25] = v17;
  v18 = *(v17 + 64) + 15;
  v3[26] = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  v3[27] = v19;
  v20 = *(v19 - 8);
  v3[28] = v20;
  v21 = *(v20 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v22 = type metadata accessor for UUID();
  v3[34] = v22;
  v23 = *(v22 - 8);
  v3[35] = v23;
  v24 = *(v23 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v25 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  v3[39] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_10038CD80, 0, 0);
}

uint64_t sub_10038CD80()
{
  v1 = *(v0 + 72);
  v2 = sub_100387E44(*(v0 + 320));
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v8 = *(v0 + 64);
  v9 = *(v3 + 32);
  *(v0 + 328) = v9;
  v10 = *(v3 + 40);
  *(v0 + 336) = v10;
  v11 = *(v4 + 28);
  v12 = *(v7 + 16);
  *(v0 + 344) = v12;
  *(v0 + 352) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v5, v3 + v11, v6, v2);
  v13 = MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  *(v0 + 360) = sub_100391B94(v13, v14, v9, v10);
  *(v0 + 368) = v15;

  MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  if (v16)
  {
    v17 = *(v0 + 256);
    v18 = *(v0 + 208);
    v19 = *(v0 + 184);

    static DaemonSignposts.MobileDocumentReader.sessionIdentityKeyStatus.getter();
    DIPSignpost.init(_:)();
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "MobileDocumentReaderAuthenticationManager token exists, so there must be an identity key stored. Looking up now...", v22, 2u);
    }

    v23 = *(v0 + 256);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    v26 = *(v0 + 72);

    v27 = *(v25 + 8);
    *(v0 + 400) = v27;
    v27(v23, v24);
    v28 = *sub_10000BA08((v26 + 88), *(v26 + 112));
    v29 = swift_task_alloc();
    *(v0 + 408) = v29;
    *v29 = v0;
    v29[1] = sub_10038D3CC;
    v30 = *(v0 + 304);

    return sub_10034DCAC(v9, v10, v30);
  }

  else
  {
    v32 = *(v0 + 264);
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "MobileDocumentReaderAuthenticationManager token does not exist, will create a new identity key if needed.", v35, 2u);
    }

    v36 = *(v0 + 264);
    v37 = *(v0 + 216);
    v38 = *(v0 + 224);

    (*(v38 + 8))(v36, v37);
    v39 = swift_task_alloc();
    *(v0 + 376) = v39;
    *v39 = v0;
    v39[1] = sub_10038D1CC;
    v40 = *(v0 + 72);

    return sub_100382A70();
  }
}

uint64_t sub_10038D1CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v7 = *(v4 + 368);

    v8 = sub_10038FC74;
  }

  else
  {
    *(v4 + 392) = a1;
    v8 = sub_10038D2FC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10038D2FC()
{
  v0[54] = v0[49];
  v1 = v0[9];
  sub_10000BA08(v1 + 41, v1[44]);
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = swift_task_alloc();
  v0[55] = v6;
  *v6 = v0;
  v6[1] = sub_10038DBB8;

  return sub_10059C7F0(v2, v3, v4, v5);
}

uint64_t sub_10038D3CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v8 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
    v5 = v3[46];

    v6 = sub_10038D9F8;
  }

  else
  {
    v6 = sub_10038D4E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10038D4E8()
{
  v1 = v0[52];
  v2 = v0[22];
  v3 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate);
  v4 = v0[19];
  v5 = v0[20];
  v6 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider + 32);
  sub_10000BA08((v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider), *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider + 24));

  dispatch thunk of DateProviding.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v5 + 8))(v2, v4);
  IsValid = SecCertificateIsValid();

  if (IsValid)
  {
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[24];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v9 + 8))(v8, v10);
    v0[54] = v0[52];
    v11 = v0[9];
    sub_10000BA08(v11 + 41, v11[44]);
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[5];
    v16 = swift_task_alloc();
    v0[55] = v16;
    *v16 = v0;
    v16[1] = sub_10038DBB8;

    return sub_10059C7F0(v12, v13, v14, v15);
  }

  else
  {
    v18 = v0[46];
    v19 = v0[31];

    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "MobileDocumentReaderAuthenticationManager stored identity key has an expired attestation certificate. There is no way that the provided token will have the valid readerIdentifier.", v22, 2u);
    }

    v51 = v0[52];
    v23 = v0[50];
    v57 = v0[40];
    v53 = v0[34];
    v55 = v0[38];
    v24 = v0[31];
    v25 = v0[27];
    v26 = v0[28];
    v27 = v0[26];
    v45 = v0[25];
    v47 = v0[24];
    v49 = v0[35];
    v28 = v0[17];
    v29 = v0[18];
    v30 = v0[16];

    v23(v24, v25);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v28 + 104))(v29, enum case for DIPError.Code.documentReaderExpiredAttestationCertificate(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v45 + 8))(v27, v47);
    (*(v49 + 8))(v55, v53);
    sub_1003935BC(v57, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    v31 = v0[40];
    v32 = v0[37];
    v33 = v0[38];
    v34 = v0[36];
    v36 = v0[32];
    v35 = v0[33];
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[29];
    v40 = v0[26];
    v42 = v0[23];
    v43 = v0[22];
    v44 = v0[21];
    v46 = v0[18];
    v48 = v0[15];
    v50 = v0[14];
    v52 = v0[13];
    v54 = v0[12];
    v56 = v0[11];
    v58 = v0[10];

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_10038D9F8()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v4 + 8))(v2, v3);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v27 = v0[53];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[38];
  v8 = v0[36];
  v10 = v0[32];
  v9 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[29];
  v14 = v0[26];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[15];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[12];
  v25 = v0[11];
  v26 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10038DBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 440);
  v8 = *v4;
  v5[56] = a1;
  v5[57] = a2;
  v5[58] = a3;
  v5[59] = a4;

  return _swift_task_switch(sub_10038DCBC, 0, 0);
}

uint64_t sub_10038DCBC()
{
  v1 = v0[54];
  v2 = v0[8];
  v3 = sub_10000BA08((v0[9] + 128), *(v0[9] + 152));
  v4 = MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  v6 = v5;
  v0[60] = v5;
  v0[5] = type metadata accessor for MobileDocumentReaderIdentityKey();
  v0[6] = sub_10039361C(&qword_100842200, type metadata accessor for MobileDocumentReaderIdentityKey);
  v0[2] = v1;

  MobileDocumentReaderConfiguration.userAcceptedTermsAndConditions.getter();
  v7 = *v3;
  v8 = swift_task_alloc();
  v0[61] = v8;
  *v8 = v0;
  v8[1] = sub_10038DE0C;
  v9 = v0[58];
  v10 = v0[59];
  v11 = v0[56];
  v12 = v0[57];
  v13 = v0[40];
  v14 = v0[15];

  return sub_10037D944(v14, v4, v6, v13, v11, v12, v9, v10);
}

uint64_t sub_10038DE0C()
{
  v2 = *v1;
  v3 = (*v1)[61];
  v9 = *v1;
  (*v1)[62] = v0;

  if (v0)
  {
    v4 = v2[60];
    v5 = v2[46];

    v6 = sub_10038EE28;
  }

  else
  {
    v7 = v2[60];

    sub_10000BB78(v2 + 2);
    v6 = sub_10038DF44;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10038DF44()
{
  v193 = v0;
  v1 = *v0[15];
  v0[63] = v1;
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_33:
    v163 = v0[57];
    v169 = v0[58];
    v157 = v0[56];
    v174 = v0[54];
    v179 = v0[59];
    v112 = v0[46];
    v113 = v0[40];
    v114 = v0[35];
    v184 = v0[34];
    v189 = v0[38];
    v115 = v0[17];
    v116 = v0[18];
    v117 = v0[15];
    v118 = v0[16];

    (*(v115 + 104))(v116, enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v118);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    v13 = v113;
    swift_allocError();
    v14 = v117;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000AE33C(v157, v163, v169, v179);

    (*(v114 + 8))(v189, v184);
    goto LABEL_34;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v0[64] = v3;
  v5 = v0[62];
  v6 = v0[9];
  sub_10039107C(v3);
  v0[65] = v5;
  if (v5)
  {
    v8 = v0[58];
    v7 = v0[59];
    v10 = v0[56];
    v9 = v0[57];
    v11 = v0[54];
    v12 = v0[46];
    v13 = v0[40];
    v14 = v0[15];
    (*(v0[35] + 8))(v0[38], v0[34]);

    sub_1000AE33C(v10, v9, v8, v7);

LABEL_34:
    sub_1003935BC(v14, type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
    sub_1003935BC(v13, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    v119 = v0[40];
    v120 = v0[37];
    v121 = v0[38];
    v122 = v0[36];
    v124 = v0[32];
    v123 = v0[33];
    v126 = v0[30];
    v125 = v0[31];
    v127 = v0[29];
    v128 = v0[26];
    v143 = v0[23];
    v148 = v0[22];
    v153 = v0[21];
    v158 = v0[18];
    v164 = v0[15];
    v170 = v0[14];
    v175 = v0[13];
    v180 = v0[12];
    v185 = v0[11];
    v190 = v0[10];

    v108 = v0[1];
LABEL_35:

    return v108();
  }

  v15 = v0[8];
  MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  if (!v16)
  {
    v18 = v0[30];
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[30];
    v23 = v0[27];
    v24 = v0[28];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "MobileDocumentReaderAuthenticationManager merchantServerAccessToken is nil, return nil merchantLogo", v25, 2u);
    }

    (*(v24 + 8))(v22, v23);
    v26 = v0[54];
    v28 = v0[43];
    v27 = v0[44];
    v29 = v0[37];
    v30 = v0[38];
    v31 = v0[34];
    v33 = v0[13];
    v32 = v0[14];
    v34 = v0[63] & 0xC000000000000001;
    v35 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
    (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
    v28(v29, v30, v31);
    v37 = *(v26 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
    v36 = *(v26 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8);
    sub_10000BBC4(v32, v33, &qword_100835D88, &qword_1006DE890);
    v38 = v0[42];
    if (v34)
    {

      sub_10000B8B8(v37, v36);
      sub_1000363B4(0, 0xF000000000000000);
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v40 = *(v0[63] + 32);

      sub_10000B8B8(v37, v36);
      sub_1000363B4(0, 0xF000000000000000);
      v39 = v40;
    }

    v41 = v39;
    v42 = v0[19];
    v43 = v0[20];
    v44 = v0[12];
    SecCertificateRef.expirationDate.getter();
    v181 = v37;
    v186 = v36;
    if ((*(v43 + 48))(v44, 1, v42) == 1)
    {
      v45 = v0[63];
      v137 = v0[58];
      v139 = v0[59];
      v133 = v0[56];
      v135 = v0[57];
      v149 = v0[64];
      v154 = v0[54];
      v46 = v0[46];
      v47 = v0[42];
      v171 = v0[37];
      v176 = v0[38];
      v129 = v0[35];
      v131 = v0[40];
      v49 = v0[17];
      v48 = v0[18];
      v50 = v0[15];
      v51 = v0[16];
      v159 = v0[14];
      v165 = v0[34];
      v144 = v0[13];
      v52 = v0[12];
      sub_10000BD94(0, 0xF000000000000000);

      sub_10000BE18(v52, &unk_100849400, &unk_1006BFBB0);
      (*(v49 + 104))(v48, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v51);
      v14 = v50;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v13 = v131;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000AE33C(v133, v135, v137, v139);
      sub_10000BD94(0, 0xF000000000000000);
      sub_10000B90C(v181, v186);

      sub_10000BE18(v144, &qword_100835D88, &qword_1006DE890);
      v53 = *(v129 + 8);
      v53(v171, v165);
      sub_10000BE18(v159, &qword_100835D88, &qword_1006DE890);
      v53(v176, v165);
      goto LABEL_34;
    }

    v54 = v0[65];
    v55 = v0[11];
    v166 = *(v0[20] + 32);
    v166(v0[21], v0[12], v0[19]);
    v56 = SecCertificateRef.pseudonym.getter();
    v58 = v57;
    SecCertificateRef.logotype.getter();
    v59 = v0[11];
    if (v54)
    {

      v60 = type metadata accessor for Logotype();
      (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
      sub_10000BE18(v59, &qword_100841BB0, &unk_1006DF080);
      v61 = 0;
    }

    else
    {
      v109 = type metadata accessor for Logotype();
      v110 = (*(*(v109 - 8) + 48))(v59, 1, v109);
      sub_10000BE18(v59, &qword_100841BB0, &unk_1006DF080);
      v61 = 0;
      if (v110 != 1 && v58)
      {
        v111 = v0[10];
        SecCertificateRef.localizedRelyingPartyNames.getter();
        v62 = v56;
        v61 = 1;
        goto LABEL_22;
      }
    }

    v62 = v56;
    v63 = v0[10];
    v64 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
    (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
LABEL_22:
    v65 = v0[44];
    v66 = v0[37];
    v68 = v0[34];
    v67 = v0[35];
    (v0[43])(v0[36], v66, v68);
    v69 = SecCertificateRef.uid()();

    v70 = *(v67 + 8);
    v70(v66, v68);
    v177 = v70;
    if (v61)
    {
      v140 = v62;
      v145 = v58;
    }

    else
    {
      sub_10000BD94(0, 0xF000000000000000);

      v140 = 0;
      v145 = 0;
    }

    v72 = v0[45];
    v71 = v0[46];
    v73 = v0[41];
    v74 = v0[35];
    v134 = v0[36];
    v136 = v0[63];
    v130 = v0[42];
    v132 = v0[34];
    v150 = v0[29];
    v75 = v0[21];
    v76 = v0[19];
    v138 = v0[13];
    v77 = v0[10];
    v78 = v0[7];
    v79 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
    sub_1000B1FC8(v77, &v78[v79[12]], &qword_100841B98, &unk_1006DF0D0);
    v166(&v78[v79[13]], v75, v76);
    *v78 = v72;
    *(v78 + 1) = v71;
    *(v78 + 2) = v73;
    *(v78 + 3) = v130;
    (*(v74 + 32))(&v78[v79[6]], v134, v132);
    *&v78[v79[7]] = v136;
    v80 = &v78[v79[8]];
    *v80 = v181;
    v80[1] = v186;
    *&v78[v79[9]] = v69;
    *&v78[v79[10]] = xmmword_1006BF650;
    v81 = &v78[v79[11]];
    *v81 = v140;
    v81[1] = v145;
    sub_1000B1FC8(v138, &v78[v79[14]], &qword_100835D88, &qword_1006DE890);

    defaultLogger()();

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    v84 = os_log_type_enabled(v82, v83);
    v182 = v0[64];
    v167 = v0[58];
    v172 = v0[59];
    v85 = v0[56];
    v86 = v0[57];
    v187 = v0[54];
    v87 = v0[46];
    if (v84)
    {
      v88 = v0[45];
      v155 = v0[34];
      v160 = v0[38];
      v89 = v0[28];
      v141 = v0[27];
      v146 = v0[29];
      v151 = v0[14];
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v192 = v91;
      *v90 = 136315138;
      v92 = sub_100141FE4(v88, v87, &v192);

      *(v90 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v82, v83, "MobileDocumentReaderAuthenticationManager createSession returning sessionIdentifier %s", v90, 0xCu);
      sub_10000BB78(v91);

      sub_1000AE33C(v85, v86, v167, v172);

      sub_10000BD94(0, 0xF000000000000000);

      (*(v89 + 8))(v146, v141);
      sub_10000BE18(v151, &qword_100835D88, &qword_1006DE890);
      v94 = v155;
      v93 = v160;
    }

    else
    {
      v161 = v0[38];
      v95 = v0[34];
      v97 = v0[28];
      v96 = v0[29];
      v98 = v0[27];
      v99 = v0[14];

      sub_1000AE33C(v85, v86, v167, v172);

      sub_10000BD94(0, 0xF000000000000000);

      (*(v97 + 8))(v96, v98);
      sub_10000BE18(v99, &qword_100835D88, &qword_1006DE890);
      v93 = v161;
      v94 = v95;
    }

    v177(v93, v94);
    v100 = v0[40];
    v102 = v0[37];
    v101 = v0[38];
    v103 = v0[36];
    v104 = v0[32];
    v105 = v0[33];
    v107 = v0[30];
    v106 = v0[31];
    v142 = v0[29];
    v147 = v0[26];
    v152 = v0[23];
    v156 = v0[22];
    v162 = v0[21];
    v168 = v0[18];
    v173 = v0[14];
    v178 = v0[13];
    v183 = v0[12];
    v188 = v0[11];
    v191 = v0[10];
    sub_1003935BC(v0[15], type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
    sub_1003935BC(v100, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

    v108 = v0[1];
    goto LABEL_35;
  }

  v17 = swift_task_alloc();
  v0[66] = v17;
  *v17 = v0;
  v17[1] = sub_10038EFF0;

  return sub_100391EBC(v4);
}

uint64_t sub_10038EE28()
{
  v1 = v0[54];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[35];
  sub_1000AE33C(v0[56], v0[57], v0[58], v0[59]);

  (*(v5 + 8))(v3, v4);
  sub_1003935BC(v2, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  sub_10000BB78(v0 + 2);
  v28 = v0[62];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[38];
  v9 = v0[36];
  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];
  v15 = v0[26];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[12];
  v26 = v0[11];
  v27 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10038EFF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v6 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = a2;

  return _swift_task_switch(sub_10038F0F4, 0, 0);
}

uint64_t sub_10038F0F4()
{
  v164 = v0;
  v157 = v0[67];
  v160 = v0[68];
  v1 = v0[54];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[34];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[63] & 0xC000000000000001;
  v10 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v3(v4, v5, v6);
  v11 = v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob;
  v13 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v12 = *(v11 + 8);
  sub_10000BBC4(v7, v8, &qword_100835D88, &qword_1006DE890);
  v14 = v0[42];
  v153 = v12;
  if (v9)
  {

    sub_10000B8B8(v13, v12);
    v16 = v157;
    v15 = v160;
    sub_1000363B4(v157, v160);
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v18 = *(v0[63] + 32);

    sub_10000B8B8(v13, v12);
    v16 = v157;
    v15 = v160;
    sub_1000363B4(v157, v160);
    v17 = v18;
  }

  v19 = v17;
  v20 = v0[19];
  v21 = v0[20];
  v22 = v0[12];
  SecCertificateRef.expirationDate.getter();
  v149 = v13;
  if ((*(v21 + 48))(v22, 1, v20) != 1)
  {
    v45 = v0[65];
    v46 = v0[11];
    v137 = *(v0[20] + 32);
    v137(v0[21], v0[12], v0[19]);
    v47 = SecCertificateRef.pseudonym.getter();
    v49 = v48;
    SecCertificateRef.logotype.getter();
    v50 = v0[11];
    if (v45)
    {

      v51 = type metadata accessor for Logotype();
      (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
      sub_10000BE18(v50, &qword_100841BB0, &unk_1006DF080);
      v52 = 0;
    }

    else
    {
      v100 = type metadata accessor for Logotype();
      v101 = (*(*(v100 - 8) + 48))(v50, 1, v100);
      sub_10000BE18(v50, &qword_100841BB0, &unk_1006DF080);
      v52 = 0;
      if (v101 != 1 && v49)
      {
        v102 = v0[10];
        SecCertificateRef.localizedRelyingPartyNames.getter();
        v53 = v47;
        v52 = 1;
        goto LABEL_9;
      }
    }

    v53 = v47;
    v54 = v0[10];
    v55 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
    (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
LABEL_9:
    v56 = v0[44];
    v57 = v0[37];
    v59 = v0[34];
    v58 = v0[35];
    (v0[43])(v0[36], v57, v59);
    v60 = SecCertificateRef.uid()();

    v144 = *(v58 + 8);
    v144(v57, v59);
    if (v52)
    {
      v114 = v15;
      v116 = v16;
      v119 = v53;
      v123 = v49;
    }

    else
    {
      sub_10000BD94(v16, v15);

      v119 = 0;
      v123 = 0;
      v114 = 0xF000000000000000;
      v116 = 0;
    }

    v61 = v0[45];
    v62 = v0[46];
    v63 = v0[41];
    v64 = v0[35];
    v106 = v0[36];
    v108 = v0[63];
    v103 = v0[42];
    v104 = v0[34];
    v65 = v0[21];
    v66 = v0[19];
    v110 = v0[13];
    v112 = v0[29];
    v67 = v0[10];
    v68 = v0[7];
    v69 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
    sub_1000B1FC8(v67, &v68[v69[12]], &qword_100841B98, &unk_1006DF0D0);
    v137(&v68[v69[13]], v65, v66);
    *v68 = v61;
    *(v68 + 1) = v62;
    *(v68 + 2) = v63;
    *(v68 + 3) = v103;
    (*(v64 + 32))(&v68[v69[6]], v106, v104);
    *&v68[v69[7]] = v108;
    v70 = &v68[v69[8]];
    *v70 = v149;
    v70[1] = v153;
    *&v68[v69[9]] = v60;
    v71 = &v68[v69[10]];
    *v71 = v116;
    v71[1] = v114;
    v72 = &v68[v69[11]];
    *v72 = v119;
    v72[1] = v123;
    sub_1000B1FC8(v110, &v68[v69[14]], &qword_100835D88, &qword_1006DE890);

    defaultLogger()();

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();

    v75 = os_log_type_enabled(v73, v74);
    v151 = v0[64];
    v138 = v0[58];
    v142 = v0[59];
    v76 = v0[56];
    v77 = v0[57];
    v155 = v0[54];
    v78 = v0[46];
    if (v75)
    {
      v79 = v0[45];
      v128 = v0[34];
      v132 = v0[38];
      v80 = v0[28];
      v117 = v0[27];
      v120 = v0[29];
      v124 = v0[14];
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v163 = v82;
      *v81 = 136315138;
      v83 = sub_100141FE4(v79, v78, &v163);

      *(v81 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v73, v74, "MobileDocumentReaderAuthenticationManager createSession returning sessionIdentifier %s", v81, 0xCu);
      sub_10000BB78(v82);

      sub_1000AE33C(v76, v77, v138, v142);

      sub_10000BD94(v157, v160);

      (*(v80 + 8))(v120, v117);
      sub_10000BE18(v124, &qword_100835D88, &qword_1006DE890);
      v85 = v128;
      v84 = v132;
    }

    else
    {
      v133 = v0[38];
      v86 = v0[34];
      v88 = v0[28];
      v87 = v0[29];
      v89 = v0[27];
      v90 = v0[14];

      sub_1000AE33C(v76, v77, v138, v142);

      sub_10000BD94(v157, v160);

      (*(v88 + 8))(v87, v89);
      sub_10000BE18(v90, &qword_100835D88, &qword_1006DE890);
      v84 = v133;
      v85 = v86;
    }

    v144(v84, v85);
    v91 = v0[40];
    v93 = v0[37];
    v92 = v0[38];
    v94 = v0[36];
    v95 = v0[32];
    v96 = v0[33];
    v98 = v0[30];
    v97 = v0[31];
    v125 = v0[29];
    v129 = v0[26];
    v134 = v0[23];
    v139 = v0[22];
    v143 = v0[21];
    v145 = v0[18];
    v148 = v0[14];
    v152 = v0[13];
    v156 = v0[12];
    v159 = v0[11];
    v162 = v0[10];
    sub_1003935BC(v0[15], type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
    sub_1003935BC(v91, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

    v44 = v0[1];
    goto LABEL_16;
  }

  v23 = v15;
  v24 = v0[63];
  v109 = v0[58];
  v111 = v0[59];
  v105 = v0[56];
  v107 = v0[57];
  v115 = v0[64];
  v118 = v0[54];
  v25 = v16;
  v26 = v0[46];
  v27 = v0[42];
  v146 = v0[40];
  v130 = v0[37];
  v135 = v0[38];
  v28 = v0[35];
  v30 = v0[17];
  v29 = v0[18];
  v31 = v0[16];
  v140 = v0[15];
  v121 = v0[14];
  v126 = v0[34];
  v113 = v0[13];
  v32 = v0[12];
  sub_10000BD94(v25, v23);

  sub_10000BE18(v32, &unk_100849400, &unk_1006BFBB0);
  (*(v30 + 104))(v29, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v31);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1000AE33C(v105, v107, v109, v111);
  sub_10000BD94(v157, v160);
  sub_10000B90C(v149, v153);

  sub_10000BE18(v113, &qword_100835D88, &qword_1006DE890);
  v33 = *(v28 + 8);
  v33(v130, v126);
  sub_10000BE18(v121, &qword_100835D88, &qword_1006DE890);
  v33(v135, v126);
  sub_1003935BC(v140, type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
  sub_1003935BC(v146, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v34 = v0[40];
  v35 = v0[37];
  v36 = v0[38];
  v37 = v0[36];
  v39 = v0[32];
  v38 = v0[33];
  v41 = v0[30];
  v40 = v0[31];
  v42 = v0[29];
  v43 = v0[26];
  v122 = v0[23];
  v127 = v0[22];
  v131 = v0[21];
  v136 = v0[18];
  v141 = v0[15];
  v147 = v0[14];
  v150 = v0[13];
  v154 = v0[12];
  v158 = v0[11];
  v161 = v0[10];

  v44 = v0[1];
LABEL_16:

  return v44();
}

uint64_t sub_10038FC74()
{
  v1 = v0[40];
  (*(v0[35] + 8))(v0[38], v0[34]);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v24 = v0[48];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[36];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  v11 = v0[26];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[15];
  v19 = v0[14];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[11];
  v23 = v0[10];

  v12 = v0[1];

  return v12();
}

void sub_10038FE14(char *a1@<X8>)
{
  v120 = a1;
  v1 = sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v129 = &v111 - v3;
  v4 = type metadata accessor for DIPError.Code();
  v139 = *(v4 - 8);
  v140 = v4;
  v5 = *(v139 + 64);
  __chkstk_darwin(v4);
  v138 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100841BB0, &unk_1006DF080);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v119 = &v111 - v9;
  v10 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  object = &v111 - v12;
  v130 = type metadata accessor for Date();
  v132 = *(v130 - 8);
  v13 = *(v132 + 64);
  __chkstk_darwin(v130);
  v127 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for UUID();
  v131 = *(v128 - 8);
  v15 = *(v131 + 64);
  v16 = __chkstk_darwin(v128);
  v126 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v18;
  v19 = type metadata accessor for Logger();
  v123 = *(v19 - 8);
  v124 = v19;
  v20 = *(v123 + 64);
  __chkstk_darwin(v19);
  v122 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v133 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v135 = &v111 - v26;
  v27 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  countAndFlagsBits = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v136 = &v111 - v31;
  v32 = type metadata accessor for URL();
  v137 = *(v32 - 8);
  v33 = *(v137 + 64);
  __chkstk_darwin(v32);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SecKeyRef.KeyClass();
  v141 = *(v36 - 8);
  v37 = *(v141 + 64);
  __chkstk_darwin(v36);
  v39 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecCertificate(0);
  v40 = sub_10034CE68();
  v41 = static NSBundle.internalSettings.getter();
  v42 = v142;
  v43 = static SecCertificateRef.make(with:in:)();
  if (v42)
  {

    return;
  }

  v117 = v40;
  v115 = 0xD000000000000015;
  v44 = v39;
  v45 = v141;
  v142 = v43;
  v116 = v35;
  v118 = v32;

  v46 = Data.init(base64Encoded:options:)();
  if (v47 >> 60 == 15)
  {
    (*(v139 + 104))(v138, enum case for DIPError.Code.documentReaderMissingReaderAuthKey(_:), v140);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_12:

    return;
  }

  v48 = v46;
  v49 = v47;
  type metadata accessor for SecKey(0);
  (*(v45 + 104))(v44, enum case for SecKeyRef.KeyClass.private(_:), v36);
  v50 = static SecKeyRef.makeECKey(from:keyClass:)();
  v113 = v48;
  v114 = v49;
  (*(v45 + 8))(v44, v36);
  v51 = static NSBundle.internalSettings.getter();
  if (!v51)
  {
    v62 = v136;
    (*(v137 + 56))(v136, 1, 1, v118);
    v56 = v139;
    v61 = v140;
LABEL_11:
    sub_10000BE18(v62, &unk_100844540, &unk_1006BFBC0);
    (*(v56 + 104))(v138, enum case for DIPError.Code.unexpectedDaemonState(_:), v61);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BD94(v113, v114);
    goto LABEL_12;
  }

  v52 = v51;
  v53 = String._bridgeToObjectiveC()();
  v54 = String._bridgeToObjectiveC()();
  v55 = [v52 URLForResource:v53 withExtension:v54];

  v56 = v139;
  if (v55)
  {
    v57 = countAndFlagsBits;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = 0;
    v59 = v118;
    v60 = v116;
    v61 = v140;
  }

  else
  {
    v58 = 1;
    v59 = v118;
    v60 = v116;
    v61 = v140;
    v57 = countAndFlagsBits;
  }

  v63 = v137;
  (*(v137 + 56))(v57, v58, 1, v59);
  v64 = v57;
  v62 = v136;
  sub_1000B1FC8(v64, v136, &unk_100844540, &unk_1006BFBC0);
  v65 = (*(v63 + 48))(v62, 1, v59);
  v66 = v135;
  if (v65 == 1)
  {
    goto LABEL_11;
  }

  (*(v63 + 32))(v60, v62, v59);
  v136 = Data.init(contentsOf:options:)();
  v141 = v67;
  v68 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  (*(*(v68 - 8) + 56))(v66, 1, 1, v68);
  v69 = v122;
  defaultLogger()();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "MobileDocumentReaderAuthenticationManager using hardcoded reader authentication session.", v72, 2u);
  }

  (*(v123 + 8))(v69, v124);
  v73 = v121;
  UUID.init()();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1006DAE90;
  v75 = v142;
  *(v74 + 32) = v142;
  sub_10000BBC4(v66, v133, &qword_100835D88, &qword_1006DE890);
  v76 = v75;
  v77 = v138;
  v78 = object;
  v112 = v50;
  v142 = v76;
  if ((v74 & 0xC000000000000001) != 0)
  {
    v110 = v50;
    v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v79 = v76;
    v80 = v50;
  }

  SecCertificateRef.expirationDate.getter();
  v81 = v78;
  v82 = v132;
  v83 = v130;
  if ((*(v132 + 48))(v81, 1, v130) == 1)
  {

    v84 = v112;

    sub_10000BE18(v81, &unk_100849400, &unk_1006BFBB0);
    (*(v139 + 104))(v77, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v140);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v136, v141);

    sub_10000BD94(v113, v114);
    sub_10000BE18(v133, &qword_100835D88, &qword_1006DE890);
    (*(v131 + 8))(v73, v128);
    sub_10000BE18(v135, &qword_100835D88, &qword_1006DE890);
    (*(v137 + 8))(v116, v118);
  }

  else
  {
    v139 = 0x8000000100711810;
    v140 = 0x8000000100711830;
    v138 = *(v82 + 32);
    (v138)(v127, v81, v83);
    v124 = SecCertificateRef.pseudonym.getter();
    v86 = v85;
    v87 = v119;
    SecCertificateRef.logotype.getter();
    v132 = v82 + 32;
    v106 = type metadata accessor for Logotype();
    v107 = (*(*(v106 - 8) + 48))(v87, 1, v106);
    sub_10000BE18(v87, &qword_100841BB0, &unk_1006DF080);
    v108 = 0;
    v109 = v126;
    if (v107 == 1 || !v86)
    {
      v88 = v86;
      v89 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
      (*(*(v89 - 8) + 56))(v129, 1, 1, v89);
    }

    else
    {
      SecCertificateRef.localizedRelyingPartyNames.getter();
      v88 = v86;
      v108 = 1;
    }

    v90 = v131;
    v91 = v128;
    (*(v131 + 16))(v109, v73, v128);
    v92 = SecCertificateRef.uid()();
    countAndFlagsBits = v92.value._countAndFlagsBits;
    object = v92.value._object;
    sub_10000BD94(v113, v114);

    (*(v90 + 8))(v73, v91);
    sub_10000BE18(v135, &qword_100835D88, &qword_1006DE890);
    (*(v137 + 8))(v116, v118);
    if (v108)
    {
      v93 = v120;
      v94 = v141;
      v95 = v136;
      v96 = v124;
    }

    else
    {
      sub_10000B90C(v136, v141);

      v96 = 0;
      v88 = 0;
      v95 = 0;
      v94 = 0xF000000000000000;
      v93 = v120;
    }

    v97 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
    sub_1000B1FC8(v129, &v93[v97[12]], &qword_100841B98, &unk_1006DF0D0);
    (v138)(&v93[v97[13]], v127, v130);
    v98 = v139;
    *v93 = 0xD00000000000001ALL;
    *(v93 + 1) = v98;
    v99 = v140;
    *(v93 + 2) = 0xD00000000000001ELL;
    *(v93 + 3) = v99;
    (*(v131 + 32))(&v93[v97[6]], v126, v91);
    *&v93[v97[7]] = v74;
    v100 = &v93[v97[8]];
    *v100 = v112;
    *(v100 + 1) = 0x2000000000000000;
    v101 = &v93[v97[9]];
    v102 = v133;
    v103 = object;
    *v101 = countAndFlagsBits;
    *(v101 + 1) = v103;
    v104 = &v93[v97[10]];
    *v104 = v95;
    v104[1] = v94;
    v105 = &v93[v97[11]];
    *v105 = v96;
    v105[1] = v88;
    sub_1000B1FC8(v102, &v93[v97[14]], &qword_100835D88, &qword_1006DE890);
  }
}

uint64_t sub_10039107C(uint64_t a1)
{
  v40 = a1;
  v36 = type metadata accessor for DIPError.Code();
  v41 = *(v36 - 8);
  v2 = *(v41 + 64);
  __chkstk_darwin(v36);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v35);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  v10 = __chkstk_darwin(v8);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1[35];
  sub_10000BA08(v1 + 31, v1[34]);
  dispatch thunk of DateProviding.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v15 + 8))(v18, v14);
  if (SecCertificateIsValid())
  {
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "MobileDocumentReaderAuthenticationManager successfully validated reader authentication certificate", v22, 2u);
    }

    return (*(v38 + 8))(v13, v39);
  }

  else
  {
    type metadata accessor for DaemonAnalytics();
    v24 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.certificateExpired(_:);
    v25 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
    (*(*(v25 - 8) + 104))(v7, v24, v25);
    v26 = v35;
    (*(v4 + 104))(v7, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v35);
    static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
    (*(v4 + 8))(v7, v26);
    v27 = *(v41 + 104);
    v41 += 104;
    v27(v37, enum case for DIPError.Code.documentReaderSessionExpired(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v28 = objc_opt_self();
    swift_errorRetain();
    v29 = [v28 standardUserDefaults];
    v30._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableSessionValidityCheck.getter();
    v31 = NSUserDefaults.internalBool(forKey:)(v30);

    if (v31)
    {
      v32 = v34;
      defaultLogger()();
      DIPLogError(_:message:log:)();

      (*(v38 + 8))(v32, v39);
    }

    else
    {
      v27(v37, enum case for DIPError.Code.internalError(_:), v36);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1003916E8(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_1003917AC, 0, 0);
}

uint64_t sub_1003917AC()
{
  v1 = *sub_10000BA08((v0[4] + 88), *(v0[4] + 112));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100391854;
  v4 = v0[2];
  v3 = v0[3];

  return sub_100352FB4(v4, v3);
}

uint64_t sub_100391854()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_100391950, 0, 0);
}

uint64_t sub_100391950()
{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderAuthenticationManager successfully cleaned up session for identifier %s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100391AF0()
{
  sub_10000BB78(v0 + 6);
  sub_10000BB78(v0 + 11);
  sub_10000BB78(v0 + 16);
  sub_10000BB78(v0 + 21);
  sub_10000BE18((v0 + 26), &qword_100842208, &qword_1006DF0C0);
  sub_10000BB78(v0 + 31);
  sub_10000BB78(v0 + 36);
  sub_10000BB78(v0 + 41);

  return swift_deallocClassInstance();
}

uint64_t sub_100391B94(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SHA256();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = type metadata accessor for SHA256Digest();
  v13 = *(v27[0] - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v27[0]);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = a1;
    v29 = a2;

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a3;
    v18._object = a4;
    String.append(_:)(v18);
  }

  else
  {
    v28 = a3;
    v29 = a4;
  }

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  type metadata accessor for UUID();
  sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21 = sub_100343B88(v28, v29);
  v23 = v22;
  sub_10039361C(&qword_1008336E0, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_10000B8B8(v21, v23);
  sub_10037939C(v21, v23);
  sub_10000B90C(v21, v23);
  dispatch thunk of HashFunction.finalize()();
  (*(v9 + 8))(v12, v8);
  sub_10039361C(&qword_1008336E8, &type metadata accessor for SHA256Digest);
  v24 = v27[0];
  v25 = Digest.hexStr.getter();
  sub_10000B90C(v21, v23);
  (*(v13 + 8))(v16, v24);
  return v25;
}

uint64_t sub_100391EBC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_100007224(&qword_1008421F8, &qword_1006DF0B0);
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_100007224(&qword_100841BA0, &qword_1006DEA88);
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v14 = sub_100007224(&qword_100841BA8, &unk_1006DEA90);
  v1[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v16 = type metadata accessor for HashDigest();
  v1[17] = v16;
  v17 = *(v16 - 8);
  v1[18] = v17;
  v18 = *(v17 + 64) + 15;
  v1[19] = swift_task_alloc();
  v19 = *(*(sub_100007224(&qword_100841BB0, &unk_1006DF080) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v20 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v21 = type metadata accessor for DIPSignpost();
  v1[23] = v21;
  v22 = *(v21 - 8);
  v1[24] = v22;
  v23 = *(v22 + 64) + 15;
  v1[25] = swift_task_alloc();
  v24 = type metadata accessor for Logger();
  v1[26] = v24;
  v25 = *(v24 - 8);
  v1[27] = v25;
  v26 = *(v25 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10039228C, 0, 0);
}

uint64_t sub_10039228C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableLogoFetch.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v5 = v0 + 30;
    v4 = v0[30];
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentReaderAuthenticationManager fetchLogo disabled by UserDefaults. Returning nil image data", v8, 2u);
    }

    v9 = 26;
    v10 = 27;
    goto LABEL_13;
  }

  v5 = v0 + 25;
  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[2];
  static DaemonSignposts.MobileDocumentReader.sessionFetchLogo.getter();
  DIPSignpost.init(_:)();
  SecCertificateRef.logotype.getter();
  v15 = v0[20];
  sub_10000BBC4(v0[21], v15, &qword_100841BB0, &unk_1006DF080);
  v16 = type metadata accessor for Logotype();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  v19 = v0[20];
  if (v18 == 1)
  {
    sub_10000BE18(v0[20], &qword_100841BB0, &unk_1006DF080);
LABEL_11:
    v40 = v0[6];
    v41 = v0[7];
    v43 = v0[4];
    v42 = v0[5];
    v44 = v0[3];
    type metadata accessor for DaemonAnalytics();
    v45 = enum case for DaemonAnalytics.MobileDocumentReaderFetchLogoError.documentReaderCertificateLogotypeMissing(_:);
    LogoError = type metadata accessor for DaemonAnalytics.MobileDocumentReaderFetchLogoError();
    (*(*(LogoError - 8) + 104))(v41, v45, LogoError);
    swift_storeEnumTagMultiPayload();
    static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();
    sub_10000BE18(v41, &qword_1008421F8, &qword_1006DF0B0);
    (*(v43 + 104))(v42, enum case for DIPError.Code.documentReaderCertificateLogotypeMissing(_:), v44);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_12;
  }

  v20 = v0[20];
  v21 = Logotype.logotypeTuples.getter();
  (*(v17 + 8))(v19, v16);
  if (!*(v21 + 16))
  {

    goto LABEL_11;
  }

  v22 = v0[18];
  v23 = v0[16];
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[12];
  v70 = v0[19];
  v73 = v0[10];
  v76 = v0[9];
  v65 = v0[17];
  v67 = v0[8];
  v27 = *(v0[13] + 80);
  sub_10000BBC4(v21 + ((v27 + 32) & ~v27), v25, &qword_100841BA0, &qword_1006DEA88);

  v28 = (v25 + *(v26 + 48));
  v29 = *v28;
  v30 = v28[1];
  v31 = (v23 + *(v24 + 48));
  v32 = *(v22 + 32);
  v32(v23, v25, v65);
  *v31 = v29;
  v31[1] = v30;
  v33 = (v23 + *(v24 + 48));
  v0[31] = *v33;
  v0[32] = v33[1];
  v32(v70, v23, v65);
  URL.init(string:encodingInvalidCharacters:)();
  if ((*(v73 + 48))(v67, 1, v76) == 1)
  {
    v74 = v0[17];
    v77 = v0[19];
    v34 = v0[7];
    v36 = v0[5];
    v35 = v0[6];
    v37 = v0[4];
    v68 = v0[3];
    v71 = v0[18];
    sub_10000BE18(v0[8], &unk_100844540, &unk_1006BFBC0);
    type metadata accessor for DaemonAnalytics();
    v38 = enum case for DaemonAnalytics.MobileDocumentReaderFetchLogoError.documentReaderCertificateInvalidLogoURL(_:);
    v39 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderFetchLogoError();
    (*(*(v39 - 8) + 104))(v34, v38, v39);
    swift_storeEnumTagMultiPayload();
    static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();

    sub_10000BE18(v34, &qword_1008421F8, &qword_1006DF0B0);
    (*(v37 + 104))(v36, enum case for DIPError.Code.documentReaderCertificateInvalidLogoURL(_:), v68);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v71 + 8))(v77, v74);
LABEL_12:
    sub_10000BE18(v0[21], &qword_100841BB0, &unk_1006DF080);
    v48 = v0[27];
    v47 = v0[28];
    v49 = v0[25];
    v50 = v0[26];
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v48 + 8))(v47, v50);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v9 = 23;
    v10 = 24;
LABEL_13:
    v51 = *v5;
    v53 = v0[29];
    v52 = v0[30];
    v54 = v0[28];
    v55 = v0[25];
    v57 = v0[21];
    v56 = v0[22];
    v59 = v0[19];
    v58 = v0[20];
    v60 = v0[16];
    v66 = v0[14];
    v69 = v0[11];
    v72 = v0[8];
    v75 = v0[7];
    v78 = v0[5];
    (*(v0[v10] + 8))(v51, v0[v9]);

    v61 = v0[1];

    return v61(0, 0xF000000000000000);
  }

  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v63 = swift_task_alloc();
  v0[33] = v63;
  *v63 = v0;
  v63[1] = sub_100392B30;
  v64 = v0[11];

  return sub_1003A1518(v64);
}

uint64_t sub_100392B30(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 264);
  v8 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = v2;

  if (v2)
  {
    v6 = sub_1003931F4;
  }

  else
  {
    v6 = sub_100392C48;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100392C48()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[19];
  v5 = HashDigest.equalsHash(of:)();
  if (v2)
  {
    v6 = v0[32];
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    sub_10000B90C(v0[34], v0[35]);

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
LABEL_8:
    sub_10000BE18(v0[21], &qword_100841BB0, &unk_1006DF080);
    v35 = v0[27];
    v34 = v0[28];
    v36 = v0[25];
    v37 = v0[26];
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v35 + 8))(v34, v37);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v65 = 0;
    v68 = 0xF000000000000000;
    goto LABEL_9;
  }

  if ((v5 & 1) == 0)
  {
    v26 = v0[31];
    v25 = v0[32];
    v59 = v0[35];
    v62 = v0[18];
    v66 = v0[17];
    v69 = v0[19];
    v53 = v0[34];
    v56 = v0[11];
    v48 = v0[10];
    v50 = v0[9];
    v28 = v0[6];
    v27 = v0[7];
    v29 = v0[4];
    v30 = v0[5];
    v31 = v0[3];
    type metadata accessor for DaemonAnalytics();
    v32 = enum case for DaemonAnalytics.MobileDocumentReaderFetchLogoError.documentReaderCertificateDataHashMismatch(_:);
    LogoError = type metadata accessor for DaemonAnalytics.MobileDocumentReaderFetchLogoError();
    (*(*(LogoError - 8) + 104))(v27, v32, LogoError);
    swift_storeEnumTagMultiPayload();
    static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();

    sub_10000BE18(v27, &qword_1008421F8, &qword_1006DF0B0);
    (*(v29 + 104))(v30, enum case for DIPError.Code.documentReaderCertificateDataHashMismatch(_:), v31);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v53, v59);
    (*(v48 + 8))(v56, v50);
    (*(v62 + 8))(v69, v66);
    goto LABEL_8;
  }

  v13 = v0[29];
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "MobileDocumentReaderAuthenticationManager fetchLogo successfully verified logo hashes. fetchLogo was a success.", v16, 2u);
  }

  v17 = v0[32];
  v18 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  v64 = v0[21];
  v67 = v0[25];
  v21 = v0[18];
  v58 = v0[17];
  v61 = v0[19];
  v22 = v0[10];
  v55 = v0[11];
  v49 = v0[31];
  v52 = v0[9];
  v24 = v0[6];
  v23 = v0[7];

  (*(v19 + 8))(v18, v20);
  type metadata accessor for DaemonAnalytics();
  swift_storeEnumTagMultiPayload();
  static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();

  sub_10000BE18(v23, &qword_1008421F8, &qword_1006DF0B0);
  (*(v22 + 8))(v55, v52);
  (*(v21 + 8))(v61, v58);
  sub_10000BE18(v64, &qword_100841BB0, &unk_1006DF080);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v65 = v0[34];
  v68 = v0[35];
LABEL_9:
  v38 = v0[22];
  v40 = v0[29];
  v39 = v0[30];
  v41 = v0[28];
  v42 = v0[20];
  v43 = v0[21];
  v44 = v0[19];
  v45 = v0[16];
  v51 = v0[14];
  v54 = v0[11];
  v57 = v0[8];
  v60 = v0[7];
  v63 = v0[5];
  (*(v0[24] + 8))(v0[25], v0[23]);

  v46 = v0[1];

  return v46(v65, v68);
}

uint64_t sub_1003931F4()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[32];
  v32 = v0[17];
  v34 = v0[19];
  v4 = v0[10];
  v28 = v0[11];
  v30 = v0[18];
  v26 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v24 = v0[5];
  v25 = v0[3];
  type metadata accessor for DaemonAnalytics();
  v8 = enum case for DaemonAnalytics.MobileDocumentReaderFetchLogoError.documentReaderCertificateLogoFetchFailed(_:);
  LogoError = type metadata accessor for DaemonAnalytics.MobileDocumentReaderFetchLogoError();
  (*(*(LogoError - 8) + 104))(v5, v8, LogoError);
  swift_storeEnumTagMultiPayload();
  static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();

  sub_10000BE18(v5, &qword_1008421F8, &qword_1006DF0B0);
  (*(v7 + 104))(v24, enum case for DIPError.Code.internalError(_:), v25);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v4 + 8))(v28, v26);
  (*(v30 + 8))(v34, v32);
  sub_10000BE18(v0[21], &qword_100841BB0, &unk_1006DF080);
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[25];
  v13 = v0[26];
  defaultLogger()();
  DIPLogError(_:message:log:)();

  (*(v11 + 8))(v10, v13);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v14 = v0[22];
  v16 = v0[29];
  v15 = v0[30];
  v17 = v0[28];
  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[19];
  v21 = v0[16];
  v27 = v0[14];
  v29 = v0[11];
  v31 = v0[8];
  v33 = v0[7];
  v35 = v0[5];
  (*(v0[24] + 8))(v0[25], v0[23]);

  v22 = v0[1];

  return v22(0, 0xF000000000000000);
}

uint64_t sub_1003935BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10039361C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100393678(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v13 = type metadata accessor for Date();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v15 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_100393858(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v13 = type metadata accessor for Date();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v15 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for MobileDocumentReaderAuthenticationSession()
{
  result = qword_100842268;
  if (!qword_100842268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100393A70()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100393C08(319, &qword_1008420E8, type metadata accessor for SecCertificate, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100133F18(319, &qword_100835140);
      if (v2 <= 0x3F)
      {
        sub_100133F18(319, &qword_10083AA40);
        if (v3 <= 0x3F)
        {
          sub_100393C08(319, &unk_100842278, &type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v5 <= 0x3F)
            {
              sub_100382238();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100393C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100393C78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100393CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_100393D4C()
{
  v0 = type metadata accessor for Logger();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v32 - v5;
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = static DaemonInternalDefaultsKeys.MobileDocumentReader.tokenlessCertificateMinimumRefreshThreshold.getter();
  v14 = v13;
  v15 = [objc_opt_self() standardUserDefaults];
  v16._countAndFlagsBits = refreshed;
  v16._object = v14;
  v17 = NSUserDefaults.internalString(forKey:)(v16);

  if (v17.value._object)
  {
    v37[0] = v17;
    static CharacterSet.whitespaces.getter();
    sub_10001F298();
    v18 = StringProtocol.trimmingCharacters(in:)();
    v20 = v19;
    (*(v8 + 8))(v11, v7);

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v37[0].value._countAndFlagsBits = 0;
      v22 = sub_1006594FC(v18, v20);

      if (v22)
      {
        countAndFlagsBits = v37[0].value._countAndFlagsBits;
        defaultLogger()();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = countAndFlagsBits;
          _os_log_impl(&_mh_execute_header, v24, v25, "MobileDocumentReaderAuthenticationSessionRefreshThresholdProvider found override value for tokenlessCertificateMinimumRefreshThreshold: %f", v26, 0xCu);
        }

        return (*(v33 + 8))(v6, v34);
      }

      defaultLogger()();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "MobileDocumentReaderAuthenticationSessionRefreshThresholdProvider unable to parse tokenlessCertificateMinimumRefreshThreshold override in settings; using configured value from server", v30, 2u);
      }

      (*(v33 + 8))(v4, v34);
    }

    else
    {
    }
  }

  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v31 = *(qword_100882440 + 56);
  os_unfair_lock_lock(v31 + 126);
  memcpy(v36, &v31[4], sizeof(v36));
  sub_100394180(v36, &v35);
  os_unfair_lock_unlock(v31 + 126);
  memcpy(v37, v36, 0x1E8uLL);
  result = sub_1000A257C(v37);
  if (result != 1)
  {
    return sub_1003941F0(v36);
  }

  return result;
}

uint64_t sub_100394180(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100839998, &qword_1006DCAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003941F0(uint64_t a1)
{
  v2 = sub_100007224(&qword_100839998, &qword_1006DCAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100394268()
{
  v1 = type metadata accessor for Date();
  v0[32] = v1;
  v2 = *(v1 - 8);
  v0[33] = v2;
  v3 = *(v2 + 64) + 15;
  v0[34] = swift_task_alloc();

  return _swift_task_switch(sub_100394324, 0, 0);
}

uint64_t sub_100394324()
{
  v1 = type metadata accessor for SESKeystore();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = SESKeystore.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v5 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v5 + 54);
  sub_1000318FC(&v5[4], v0 + 16);
  v6 = *(v0 + 272);
  os_unfair_lock_unlock(v5 + 54);
  v7 = *(v0 + 80);

  sub_100031918(v0 + 16);
  *(v0 + 240) = type metadata accessor for MobileDocumentReaderDataContainer();
  *(v0 + 248) = sub_10039469C();
  *(v0 + 216) = v7;
  type metadata accessor for MobileDocumentReaderAuthenticationStorage();
  v8 = swift_allocObject();
  *(v0 + 280) = v8;
  *(v8 + 16) = v4;
  sub_10001F358((v0 + 216), v8 + 24);
  static Date.now.getter();
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = sub_1003944DC;
  v10 = *(v0 + 272);

  return sub_100353530(v10);
}

uint64_t sub_1003944DC()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100394634, 0, 0);
}

uint64_t sub_100394634()
{
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[1];

  return v3();
}

unint64_t sub_10039469C()
{
  result = qword_100841BD0;
  if (!qword_100841BD0)
  {
    type metadata accessor for MobileDocumentReaderDataContainer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841BD0);
  }

  return result;
}

uint64_t sub_100394708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003947C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration()
{
  result = qword_100842328;
  if (!qword_100842328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003948B8()
{
  type metadata accessor for audit_token_t(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10039494C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100842398, &qword_1006DF3A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1003954F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v22[15] = 0;
  type metadata accessor for audit_token_t(0);
  sub_100395604(&qword_1008423A0, type metadata accessor for audit_token_t);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 4);
    v13 = *(v3 + 5);
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 6);
    v15 = *(v3 + 7);
    LOBYTE(v23) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
    v17 = *(v16 + 28);
    LOBYTE(v23) = 3;
    type metadata accessor for UUID();
    sub_100395604(&qword_1008423A8, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = (v3 + *(v16 + 32));
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100394C04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for UUID();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100842378, &qword_1006DF3A0);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v35 = a1;
  sub_10000BA08(a1, v15);
  sub_1003954F0();
  v17 = v10;
  v18 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000BB78(v35);
  }

  v34 = v6;
  v19 = v32;
  type metadata accessor for audit_token_t(0);
  v39 = 0;
  sub_100395604(&qword_100842388, type metadata accessor for audit_token_t);
  v20 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v37;
  *v14 = v36;
  *(v14 + 1) = v21;
  v38 = 1;
  *(v14 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v14 + 5) = v22;
  v38 = 2;
  *(v14 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v14 + 7) = v23;
  v38 = 3;
  sub_100395604(&qword_100842390, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v31 + 32))(&v14[*(v11 + 28)], v34, v3);
  v38 = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v25;
  v26 = v24;
  (*(v19 + 8))(v17, v20);
  v27 = &v14[*(v11 + 32)];
  v28 = v34;
  *v27 = v26;
  *(v27 + 1) = v28;
  sub_100395544(v14, v30);
  sub_10000BB78(v35);
  return sub_1003955A8(v14);
}

unint64_t sub_100395098()
{
  v1 = *v0;
  v2 = 0x6B6F547469647561;
  v3 = 0xD000000000000016;
  if (v1 != 3)
  {
    v3 = 0x6E6564496D616574;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10039514C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100395864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100395174(uint64_t a1)
{
  v2 = sub_1003954F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003951B0(uint64_t a1)
{
  v2 = sub_1003954F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10039521C(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  audit_token_t.hash(into:)();
  v8 = v1[4];
  v9 = v1[5];
  String.hash(into:)();
  v10 = v1[6];
  v11 = v1[7];
  String.hash(into:)();
  v12 = *(a1 + 28);
  type metadata accessor for UUID();
  sub_100395604(&qword_1008423B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v13 = (v3 + *(a1 + 32));
  v14 = *v13;
  v15 = v13[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003952F8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  audit_token_t.hash(into:)();
  v9 = v2[4];
  v10 = v2[5];
  String.hash(into:)();
  v11 = v2[6];
  v12 = v2[7];
  String.hash(into:)();
  v13 = *(a2 + 28);
  type metadata accessor for UUID();
  sub_100395604(&qword_1008423B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v14 = (v4 + *(a2 + 32));
  v15 = *v14;
  v16 = v14[1];

  return String.hash(into:)();
}

Swift::Int sub_1003953CC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  audit_token_t.hash(into:)();
  v9 = v2[4];
  v10 = v2[5];
  String.hash(into:)();
  v11 = v2[6];
  v12 = v2[7];
  String.hash(into:)();
  v13 = *(a2 + 28);
  type metadata accessor for UUID();
  sub_100395604(&qword_1008423B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v14 = (v4 + *(a2 + 32));
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1003954F0()
{
  result = qword_100842380;
  if (!qword_100842380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842380);
  }

  return result;
}

uint64_t sub_100395544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003955A8(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100395604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10039564C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  if ((static audit_token_t.== infix(_:_:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration();
  v13 = *(v12 + 28);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v12 + 32);
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  if (v15 == *v17 && v16 == v17[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100395760()
{
  result = qword_1008423B8;
  if (!qword_1008423B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008423B8);
  }

  return result;
}

unint64_t sub_1003957B8()
{
  result = qword_1008423C0;
  if (!qword_1008423C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008423C0);
  }

  return result;
}

unint64_t sub_100395810()
{
  result = qword_1008423C8;
  if (!qword_1008423C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008423C8);
  }

  return result;
}

uint64_t sub_100395864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6F547469647561 && a2 == 0xEA00000000006E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FDC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDC90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010070FBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6564496D616574 && a2 == 0xEE00726569666974)
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

uint64_t sub_100395A34()
{
  v0 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for COSESignatureValidator();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = type metadata accessor for DateProvider();
  v13 = v5;
  v14 = &protocol witness table for DateProvider;
  sub_100032DBC(&v12);
  DateProvider.init()();
  v16 = type metadata accessor for ISO18013DocumentValidator();
  v17 = &protocol witness table for ISO18013DocumentValidator;
  sub_100032DBC(&v15);
  ISO18013DocumentValidator.init(signatureValidator:dateProvider:)();
  v10 = v5;
  v11 = &protocol witness table for DateProvider;
  sub_100032DBC(&v9);
  DateProvider.init()();
  v13 = type metadata accessor for DIPOIDVerifier();
  v14 = &protocol witness table for DIPOIDVerifier;
  sub_100032DBC(&v12);
  DIPOIDVerifier.init(dateProvider:)();
  v10 = v5;
  v11 = &protocol witness table for DateProvider;
  sub_100032DBC(&v9);
  DateProvider.init()();
  type metadata accessor for ISO18013IssuerAuthenticator();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 232) = &_swiftEmptySetSingleton;
  sub_10001F358(&v15, v6 + 112);
  sub_10001F358(&v12, v6 + 152);
  sub_10001F358(&v9, v6 + 192);
  return v6;
}

uint64_t sub_100395BE8@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v1 = type metadata accessor for COSESignatureValidator();
  v88 = *(v1 - 8);
  v2 = *(v88 + 64);
  __chkstk_darwin(v1);
  v72 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPError.Code();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v4);
  v71 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v82 = &v71 - v9;
  v10 = __chkstk_darwin(v8);
  v78 = &v71 - v11;
  __chkstk_darwin(v10);
  v74 = &v71 - v12;
  v13 = type metadata accessor for COSEMACValidator();
  v87 = *(v13 - 8);
  v14 = v87;
  v15 = *(v87 + 64);
  __chkstk_darwin(v13);
  v75 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ISO18013PresentmentType();
  v17 = *(v73 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v73);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ISO18013DeviceAuthenticator();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v79 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v71 - v29;
  v31 = sub_100007224(&qword_100842550, &qword_1006DF5E0);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = (&v71 - v36);
  (*(v14 + 56))(&v71 - v36, 1, 1, v13);
  v38 = *(v88 + 56);
  v81 = v30;
  v86 = v1;
  v38(v30, 1, 1, v1);
  v89[3] = type metadata accessor for FeatureFlagProvider();
  v89[4] = &protocol witness table for FeatureFlagProvider;
  sub_100032DBC(v89);
  FeatureFlagProvider.init()();
  v83 = v21;
  v39 = v80;
  v80[3] = v21;
  v39[4] = &off_10080E308;
  v76 = sub_100032DBC(v39);
  v40 = type metadata accessor for CBOREncoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = CBOREncoder.init()();
  v77 = v24;
  *v24 = v43;
  (*(v17 + 104))(v20, enum case for ISO18013PresentmentType.physical(_:), v73);

  CBOREncoder.presentmentType.setter();

  sub_100020260(v89, (v24 + 1));
  v80 = v37;
  sub_10000BBC4(v37, v35, &qword_100842550, &qword_1006DF5E0);
  v44 = *(v87 + 48);
  v45 = v35;
  v46 = v13;
  if (v44(v35, 1, v13) == 1)
  {
    v47 = v85;
    v48 = *(v84 + 104);
    v49 = v74;
    v48(v74, enum case for DIPError.Code.documentReaderInvalidDeviceMAC(_:), v85);
    v50 = v78;
    v48(v78, enum case for DIPError.Code.documentReaderInvalidDeviceAuthPublicKey(_:), v47);
    v51 = v82;
    v48(v82, enum case for DIPError.Code.documentReaderUnknownDeviceAuthAlgorithm(_:), v47);
    v52 = v75;
    COSEMACValidator.init(errorCodeInvalidMAC:errorCodeInvalidPublicKey:errorCodeUnknownAlgorithm:)();
    v53 = v44(v45, 1, v46);
    v54 = v49;
    v55 = v50;
    v56 = v87;
    v57 = v52;
    if (v53 != 1)
    {
      sub_10000BE18(v45, &qword_100842550, &qword_1006DF5E0);
      v57 = v52;
    }
  }

  else
  {
    v56 = v87;
    v58 = v75;
    (*(v87 + 32))(v75, v45, v13);
    v51 = v82;
    v55 = v78;
    v54 = v74;
    v57 = v58;
  }

  v59 = v83;
  v60 = v77;
  (*(v56 + 32))(v77 + *(v83 + 24), v57, v46);
  v61 = v81;
  v62 = v79;
  sub_10000BBC4(v81, v79, &qword_10083AB90, &unk_1006DE370);
  v63 = v88;
  v64 = v86;
  if ((*(v88 + 48))(v62, 1, v86) == 1)
  {
    sub_10000BE18(v62, &qword_10083AB90, &unk_1006DE370);
    v65 = v85;
    v66 = *(v84 + 104);
    v66(v54, enum case for DIPError.Code.documentReaderUnknownDeviceAuthAlgorithm(_:), v85);
    v66(v55, enum case for DIPError.Code.documentReaderInvalidDeviceAuthPublicKey(_:), v65);
    v66(v51, enum case for DIPError.Code.documentReaderMisformattedDeviceAuthSignature(_:), v65);
    v66(v71, enum case for DIPError.Code.documentReaderInvalidDeviceAuthSignature(_:), v65);
    v67 = v60 + *(v59 + 28);
    COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
    sub_10000BE18(v61, &qword_10083AB90, &unk_1006DE370);
    sub_10000BE18(v80, &qword_100842550, &qword_1006DF5E0);
    sub_10000BB78(v89);
  }

  else
  {
    sub_10000BE18(v61, &qword_10083AB90, &unk_1006DE370);
    sub_10000BE18(v80, &qword_100842550, &qword_1006DF5E0);
    sub_10000BB78(v89);
    v68 = *(v63 + 32);
    v69 = v72;
    v68(v72, v62, v64);
    v68((v60 + *(v59 + 28)), v69, v64);
  }

  return sub_1003A103C(v60, v76, type metadata accessor for ISO18013DeviceAuthenticator);
}

uint64_t sub_100396430(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Milestone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDocumentReaderSession.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for MobileDocumentReaderSession.State.finished(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for MobileDocumentReaderSession.State.ready(_:))
  {
    static MobileDocumentReaderMilestone.readDocumentReaderReady.getter();
LABEL_9:
    Milestone.log()();
    (*(v5 + 8))(v8, v4);
    return a2(a1);
  }

  if (v14 == enum case for MobileDocumentReaderSession.State.connecting(_:))
  {
    static MobileDocumentReaderMilestone.readDocumentReaderConnecting.getter();
    goto LABEL_9;
  }

  if (v14 == enum case for MobileDocumentReaderSession.State.awaitingApproval(_:))
  {
    static MobileDocumentReaderMilestone.readDocumentReaderAwaitingApproval.getter();
    goto LABEL_9;
  }

LABEL_2:
  (*(v10 + 8))(v13, v9);
  return a2(a1);
}

void *sub_100396660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v204 = *(v10 - 8);
  v205 = v10;
  v11 = *(v204 + 64);
  __chkstk_darwin(v10);
  v203 = v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v5[17] = a4;
  v5[18] = 0;
  v208 = a1;
  v209 = a2;
  v5[14] = a1;
  v5[15] = a2;
  v210 = a3;
  v211 = a4;
  v5[16] = a3;
  v13 = type metadata accessor for UserDefaultsConfiguration();
  v249 = 0u;
  v250 = 0u;
  v251 = 0;
  v14 = static UserDefaultsConfiguration.standard.getter();
  v15 = type metadata accessor for MobileDocumentReaderIssuerRootStorage();
  swift_allocObject();
  v16 = sub_100348254(&v249, v14);
  v206 = v15;
  v5[49] = v15;
  v5[50] = &off_10080DF10;
  v5[46] = v16;
  v262 = 0;
  v260 = 0u;
  v261 = 0u;
  v202 = type metadata accessor for BundleRecordFetcher();
  v258 = v202;
  v259 = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v257);
  BundleRecordFetcher.init()();
  v17 = type metadata accessor for SESKeystore();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = SESKeystore.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v196 = v5;
  v207 = v13;
  v21 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v21 + 54);
  sub_1000318FC(&v21[4], &v249);
  os_unfair_lock_unlock(v21 + 54);
  v22 = v253;

  sub_100031918(&v249);
  *(&v255 + 1) = type metadata accessor for MobileDocumentReaderDataContainer();
  v256 = sub_1003A1158(&qword_100841BD0, 255, type metadata accessor for MobileDocumentReaderDataContainer);
  *&v254 = v22;
  v23 = type metadata accessor for MobileDocumentReaderAuthenticationStorage();
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  sub_10001F358(&v254, v24 + 24);
  v256 = 0;
  v254 = 0u;
  v255 = 0u;
  v25 = type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v26 = qword_1008823E0;
  v252 = qword_1008823E0;
  v247 = &type metadata for FairPlayProvisioner;
  v248 = &off_100817E20;
  v246[0] = swift_allocObject();
  sub_1003A06EC(&v249, v246[0] + 16);
  v27 = type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetcher();
  v194 = v27;
  v28 = swift_allocObject();
  v29 = sub_10001F370(v246, &type metadata for FairPlayProvisioner);
  __chkstk_darwin(v29);
  v31 = (v188 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = v26;
  v34 = sub_1003A0B44(&v254, v31, v28);
  sub_1003A0EB8(&v249);
  sub_10000BB78(v246);
  v35 = type metadata accessor for MobileDocumentReaderLogoFetcher();
  v36 = swift_allocObject();
  *(&v255 + 1) = type metadata accessor for DateProvider();
  v256 = &protocol witness table for DateProvider;
  sub_100032DBC(&v254);
  DateProvider.init()();
  v201 = v25;
  static DIPAccountManager.sharedInstance.getter();
  v195 = qword_1008823E0;
  v252 = qword_1008823E0;
  v248 = &off_10080E120;
  v247 = v23;
  v246[0] = v24;
  v245 = &off_10080E458;
  v244 = v27;
  v193 = v34;
  v243[0] = v34;
  v242 = &off_10080E728;
  v241 = v35;
  v240[0] = v36;
  v238 = &type metadata for MobileDocumentReaderAuthenticationSessionRefreshThresholdProvider;
  v239 = &off_10080E570;
  v235 = &type metadata for FairPlayProvisioner;
  v236 = &off_100817E20;
  v234[0] = swift_allocObject();
  sub_1003A06EC(&v249, v234[0] + 16);
  v212 = type metadata accessor for MobileDocumentReaderAuthenticationManager();
  v37 = swift_allocObject();
  v38 = sub_10001F370(v246, v23);
  v200 = v188;
  v39 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v42 + 16);
  v191 = v40;
  v192 = (v42 + 16);
  v189 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v43;
  (v43)(v41);
  v44 = v244;
  v45 = sub_10001F370(v243, v244);
  v199 = v188;
  v46 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = (v188 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = v241;
  v51 = sub_10001F370(v240, v241);
  v198 = v188;
  v52 = *(v50[-1].Description + 8);
  __chkstk_darwin(v51);
  v54 = (v188 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  sub_10001F370(v237, v238);
  v56 = v235;
  v57 = sub_10001F370(v234, v235);
  v197 = v188;
  v58 = *(v56[-1].Description + 8);
  __chkstk_darwin(v57);
  v60 = (v188 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = *v41;
  v63 = *v48;
  v64 = *v54;
  v233 = &off_10080E120;
  v232 = v23;
  v231[0] = v62;
  v229 = v194;
  v230 = &off_10080E458;
  v228[0] = v63;
  v226 = v35;
  v227 = &off_10080E728;
  *&v225 = v64;
  v223 = &type metadata for MobileDocumentReaderAuthenticationSessionRefreshThresholdProvider;
  v224 = &off_10080E570;
  v220 = &type metadata for FairPlayProvisioner;
  v221 = &off_100817E20;
  v65 = swift_allocObject();
  *&v219 = v65;
  v66 = v60[1];
  v65[1] = *v60;
  v65[2] = v66;
  v65[3] = v60[2];
  v67 = v209;
  v37[2] = v208;
  v37[3] = v67;
  v68 = v211;
  v37[4] = v210;
  v37[5] = v68;
  sub_100020260(v257, (v37 + 6));
  sub_100020260(v231, (v37 + 11));
  sub_100020260(v228, (v37 + 16));
  sub_100020260(&v225, (v37 + 21));
  sub_10000BBC4(&v260, &v214, &qword_100842208, &qword_1006DF0C0);
  v69 = v215;
  v70 = v195;
  if (v69)
  {
    sub_1003A0EB8(&v249);
    sub_10000BE18(&v260, &qword_100842208, &qword_1006DF0C0);
    sub_10000BB78(v257);
    sub_10000BB78(&v225);
    sub_10000BB78(v228);
    sub_10000BB78(v231);
    sub_10001F358(&v214, &v217);
    sub_10001F358(&v217, (v37 + 26));
  }

  else
  {

    sub_10000BE18(&v214, &qword_100842208, &qword_1006DF0C0);
    sub_100020260(v231, &v217);
    v71 = type metadata accessor for SEPairingManager();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = SEPairingManager.init()();
    v215 = v71;
    v216 = &protocol witness table for SEPairingManager;
    *&v214 = v74;
    v75 = v218;
    v76 = sub_10001F370(&v217, v218);
    v77 = *(*(v75 - 8) + 64);
    __chkstk_darwin(v76);
    v79 = (v188 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))(v79);
    v81 = *v79;
    v213[3] = v23;
    v213[4] = &off_10080E120;
    v213[0] = v81;
    v82 = type metadata accessor for MobileDocumentReaderSecureElementManager();
    v83 = swift_allocObject();
    v84 = sub_10001F370(v213, v23);
    __chkstk_darwin(v84);
    v85 = (v188 - v189);
    (v190)(v188 - v189);
    v86 = *v85;
    v83[5] = v23;
    v83[6] = &off_10080E120;
    v83[2] = v86;
    sub_10001F358(&v214, (v83 + 7));
    sub_10000BB78(v213);
    sub_10000BB78(&v217);
    v37[29] = v82;
    v37[30] = &off_10080E890;
    v37[26] = v83;

    sub_1003A0EB8(&v249);
    sub_10000BE18(&v260, &qword_100842208, &qword_1006DF0C0);
    sub_10000BB78(v257);
    sub_10000BB78(&v225);
    sub_10000BB78(v228);
    sub_10000BB78(v231);
  }

  v87 = v196;
  sub_10001F358(&v254, (v37 + 31));
  sub_10001F358(&v222, (v37 + 36));
  sub_10001F358(&v219, (v37 + 41));
  sub_10000BB78(v234);
  sub_10000BB78(v237);
  sub_10000BB78(v240);
  sub_10000BB78(v243);
  sub_10000BB78(v246);
  v87[21] = v37;
  v87[24] = v212;
  v87[25] = &off_10080E498;
  v200 = objc_opt_self();
  v88 = [v200 standardUserDefaults];
  static DaemonDefaultsKeys.mobileDocumentReaderTestMode.getter();
  v89 = String._bridgeToObjectiveC()();

  v90 = [v88 stringForKey:v89];

  if (!v90)
  {
    static DaemonDefaultsKeys.mobileDocumentReaderTestModeIdentityTestKey.getter();
    goto LABEL_14;
  }

  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  v94 = static DaemonDefaultsKeys.mobileDocumentReaderTestModeIdentityTestKey.getter();
  if (!v93)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v94 != v91 || v93 != v95)
  {
    v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v166)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_100020260((v87 + 21), &v260);
    sub_100020260((v87 + 46), v257);
    v96 = type metadata accessor for BluetoothManager();
    v195 = swift_allocObject();
    v97 = type metadata accessor for MobileDocumentReaderNFCManager();
    v194 = v97;
    v98 = swift_allocObject();
    swift_defaultActor_initialize();
    type metadata accessor for SecureTransactionServiceManager();
    v99 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v99 + 112) = 0;
    *(v99 + 120) = 0;
    v198 = v99;
    sub_100007224(&qword_100842540, &qword_1006DF5C8);
    v100 = swift_allocObject();
    *(v100 + 32) = 0;
    *(v100 + 16) = nullsub_7;
    *(v100 + 24) = 0;
    *(v99 + 128) = v100;
    *(&v250 + 1) = type metadata accessor for FeatureFlagProvider();
    v251 = &protocol witness table for FeatureFlagProvider;
    sub_100032DBC(&v249);
    FeatureFlagProvider.init()();
    v252 = static UserDefaultsConfiguration.standard.getter();
    sub_100397F50(&v254);
    v101 = *(&v255 + 1);
    v102 = sub_10001F370(&v254, *(&v255 + 1));
    v199 = v188;
    v103 = *(*(v101 - 8) + 64);
    __chkstk_darwin(v102);
    v105 = (v188 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v106 + 16))(v105);
    v107 = *(&v261 + 1);
    v108 = sub_10001F370(&v260, *(&v261 + 1));
    v197 = v188;
    v109 = *(*(v107 - 8) + 64);
    __chkstk_darwin(v108);
    v111 = (v188 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v112 + 16))(v111);
    v113 = v258;
    v114 = sub_10001F370(v257, v258);
    v196 = v188;
    v115 = *(*(v113 - 8) + 64);
    __chkstk_darwin(v114);
    v117 = (v188 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v118 + 16))(v117);
    v119 = *v105;
    v120 = *v111;
    v121 = *v117;
    v248 = &off_1008157E8;
    v247 = v96;
    v246[0] = v195;
    v245 = &off_10080E768;
    v244 = v97;
    v243[0] = v98;
    v241 = &type metadata for ISO18013RequestBuilder;
    v242 = &off_10080E3B0;
    v240[0] = swift_allocObject();
    sub_1003A0F4C(&v249, v240[0] + 16);
    v193 = type metadata accessor for ISO18013ResponseValidator();
    v239 = &off_10080E3C8;
    v238 = v193;
    v237[0] = v119;
    v235 = &type metadata for MobileDocumentReaderResponseProcessor;
    v236 = &off_10080E880;
    v233 = &off_10080E498;
    v232 = v212;
    v231[0] = v120;
    v229 = v206;
    v230 = &off_10080DF10;
    v228[0] = v121;
    type metadata accessor for MobileDocumentReaderManager();
    v122 = swift_allocObject();
    v123 = sub_10001F370(v246, v96);
    v195 = v188;
    v190 = v96;
    v124 = *(*(v96 - 8) + 64);
    __chkstk_darwin(v123);
    v126 = (v188 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v127 + 16))(v126);
    v128 = v244;
    v129 = sub_10001F370(v243, v244);
    v192 = v188;
    v130 = *(*(v128 - 8) + 64);
    __chkstk_darwin(v129);
    v132 = (v188 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v133 + 16))(v132);
    v134 = v241;
    v135 = sub_10001F370(v240, v241);
    v191 = v188;
    v136 = *(v134[-1].Description + 8);
    __chkstk_darwin(v135);
    v138 = (v188 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v139 + 16))(v138);
    v140 = v238;
    v141 = sub_10001F370(v237, v238);
    v189 = v188;
    v142 = *(v140[-1].Description + 8);
    __chkstk_darwin(v141);
    v144 = (v188 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v145 + 16))(v144);
    sub_10001F370(v234, v235);
    v146 = v232;
    v147 = sub_10001F370(v231, v232);
    v188[1] = v188;
    v148 = *(*(v146 - 8) + 64);
    __chkstk_darwin(v147);
    v150 = (v188 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v151 + 16))(v150);
    v152 = v229;
    v153 = sub_10001F370(v228, v229);
    v188[0] = v188;
    v154 = *(*(v152 - 8) + 64);
    __chkstk_darwin(v153);
    v156 = (v188 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v157 + 16))(v156);
    v158 = *v126;
    v159 = *v132;
    v160 = *v144;
    v161 = *v150;
    v162 = *v156;
    v226 = v190;
    v227 = &off_1008157E8;
    *&v225 = v158;
    v223 = v194;
    v224 = &off_10080E768;
    *&v222 = v159;
    v220 = &type metadata for ISO18013RequestBuilder;
    v221 = &off_10080E3B0;
    v163 = swift_allocObject();
    *&v219 = v163;
    v164 = v138[1];
    v163[1] = *v138;
    v163[2] = v164;
    v163[3] = v138[2];
    v122[23] = v193;
    v122[24] = &off_10080E3C8;
    v122[20] = v160;
    v122[28] = &type metadata for MobileDocumentReaderResponseProcessor;
    v122[29] = &off_10080E880;
    v122[33] = v212;
    v122[34] = &off_10080E498;
    v122[30] = v161;
    v122[38] = v206;
    v122[39] = &off_10080DF10;
    v122[35] = v162;
    sub_10001F358(&v225, (v122 + 2));
    sub_10001F358(&v222, (v122 + 7));
    v122[12] = v198;
    v122[13] = &off_100815CB8;
    v122[14] = &off_100815CC8;
    sub_10001F358(&v219, (v122 + 15));
    sub_10000BB78(v228);
    sub_10000BB78(v231);
    sub_10000BB78(v234);
    sub_10000BB78(v237);
    sub_10000BB78(v240);
    sub_10000BB78(v243);
    sub_10000BB78(v246);
    sub_10000BB78(v257);
    sub_10000BB78(&v260);
    sub_10000BB78(&v254);
    sub_1003A0FA8(&v249);
    v165 = &off_10080E738;
    goto LABEL_18;
  }

LABEL_17:
  type metadata accessor for SimulatedMobileDocumentReaderManager();
  v122 = swift_allocObject();
  sub_100007224(&qword_100842540, &qword_1006DF5C8);
  v167 = swift_allocObject();
  *(v167 + 32) = 0;
  *(v167 + 16) = nullsub_7;
  *(v167 + 24) = 0;
  v122[2] = v167;
  v165 = &off_10080EAC8;
LABEL_18:
  v87[19] = v122;
  v87[20] = v165;
  v168 = type metadata accessor for BiometricsHelper();
  v169 = *(v168 + 48);
  v170 = *(v168 + 52);
  swift_allocObject();
  v171 = BiometricsHelper.init()();
  v87[29] = v168;
  v87[30] = &protocol witness table for BiometricsHelper;
  v87[26] = v171;
  *(&v250 + 1) = &type metadata for MobileDocumentReaderRequestValidator;
  v251 = &off_10080E800;
  v172 = swift_allocObject();
  *&v249 = v172;
  v172[9] = v202;
  v172[10] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v172 + 6);
  BundleRecordFetcher.init()();
  v173 = [v200 standardUserDefaults];
  v174 = v209;
  v172[2] = v208;
  v172[3] = v174;
  v175 = v211;
  v172[4] = v210;
  v172[5] = v175;
  v172[11] = v173;
  sub_10001F358(&v249, (v87 + 31));
  v176 = type metadata accessor for MobileDocumentReaderTermsAndConditionsFetcher();
  v177 = swift_allocObject();
  *(&v250 + 1) = &type metadata for BootstrapURLManager;
  v251 = &off_100818018;
  type metadata accessor for DIPConfigWebService();
  v178 = swift_allocObject();
  sub_10001F370(&v249, &type metadata for BootstrapURLManager);
  v179 = sub_1005BDE58(v178);
  sub_10000BB78(&v249);
  *(v177 + 16) = v179;
  v87[39] = v176;
  v87[40] = &off_10080E8A0;
  v87[36] = v177;
  static DIPAccountManager.sharedInstance.getter();
  sub_10001F358(&v249, (v87 + 41));
  v87[51] = static UserDefaultsConfiguration.standard.getter();
  v180 = v203;
  defaultLogger()();

  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    *&v249 = swift_slowAlloc();
    *v183 = 136315394;
    *&v260 = v87;
    v184 = String.init<A>(describing:)();
    v186 = sub_100141FE4(v184, v185, &v249);

    *(v183 + 4) = v186;
    *(v183 + 12) = 2080;
    *(v183 + 14) = sub_100141FE4(0xD000000000000011, 0x8000000100711F60, &v249);
    _os_log_impl(&_mh_execute_header, v181, v182, "MobileDocumentReaderFlow %s %s", v183, 0x16u);
    swift_arrayDestroy();
  }

  (*(v204 + 8))(v180, v205);
  return v87;
}

uint64_t sub_100397F50@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DateProvider();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38[-1] - v8;
  v37 = sub_100395A34();
  sub_100395BE8(v42);
  type metadata accessor for KRLTrustValidator();
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  swift_allocObject();
  v10 = sub_10010F338();

  DateProvider.init()();
  (*(v3 + 16))(v7, v9, v2);
  v11 = sub_1003A0748(&v39, v10, v7);

  (*(v3 + 8))(v9, v2);
  v12 = v43;
  v13 = sub_10001F370(v42, v43);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v38[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = type metadata accessor for ISO18013DeviceAuthenticator();
  *(&v40 + 1) = v18;
  v41 = &off_10080E308;
  v19 = sub_100032DBC(&v39);
  sub_1003A103C(v16, v19, type metadata accessor for ISO18013DeviceAuthenticator);
  v20 = type metadata accessor for PresentmentKeyRevocationValidator();
  v38[3] = v20;
  v38[4] = &off_100809510;
  v38[0] = v11;
  v21 = type metadata accessor for ISO18013ResponseValidator();
  v22 = swift_allocObject();
  v23 = *(&v40 + 1);
  v24 = sub_10001F370(&v39, *(&v40 + 1));
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v38[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  v29 = sub_10001F370(v38, v20);
  v30 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = (&v38[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v22[7] = v18;
  v22[8] = &off_10080E308;
  v35 = sub_100032DBC(v22 + 4);
  sub_1003A103C(v27, v35, type metadata accessor for ISO18013DeviceAuthenticator);
  v22[12] = v20;
  v22[13] = &off_100809510;
  v22[9] = v34;
  v22[2] = v37;
  v22[3] = &off_10080E318;
  sub_10000BB78(v38);
  sub_10000BB78(&v39);
  result = sub_10000BB78(v42);
  a1[3] = v21;
  a1[4] = &off_10080E3C8;
  *a1 = v22;
  return result;
}

uint64_t *sub_10039836C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v1;
    v19 = v10;
    *v9 = 136315394;
    v11 = String.init<A>(describing:)();
    v13 = sub_100141FE4(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentReaderFlow %s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v6, v2);
  v14 = v1[18];

  v15 = v1[19];
  swift_unknownObjectRelease();
  sub_10000BB78(v1 + 21);
  sub_10000BB78(v1 + 26);
  sub_10000BB78(v1 + 31);
  sub_10000BB78(v1 + 36);
  sub_10000BB78(v1 + 41);
  sub_10000BB78(v1 + 46);
  v16 = v1[51];

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1003985B0()
{
  sub_10039836C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100398600()
{
  v1[3] = v0;
  v2 = type metadata accessor for Milestone();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100398728, v0, 0);
}

uint64_t sub_100398728()
{
  v24 = v0;
  v1 = v0[10];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315394;
    v0[2] = v8;
    v10 = String.init<A>(describing:)();
    v12 = sub_100141FE4(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, &v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderFlow %s %s", v9, 0x16u);
    swift_arrayDestroy();

    v13 = *(v7 + 8);
    v13(v5, v6);
  }

  else
  {
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  v0[11] = 0x8000000100711E70;
  v0[12] = v13;
  v18 = v0[5];
  v17 = v0[6];
  v19 = v0[4];
  static MobileDocumentReaderMilestone.readerIdentifierCalled.getter();
  Milestone.log()();
  (*(v18 + 8))(v17, v19);
  v20 = swift_task_alloc();
  v0[13] = v20;
  *v20 = v0;
  v20[1] = sub_1003989A4;
  v21 = v0[3];

  return sub_10039C498(0xD00000000000001ALL, 0x8000000100711E70, 151);
}

uint64_t sub_1003989A4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[6];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {
    v10 = v2[3];

    return _swift_task_switch(sub_100398AFC, v10, 0);
  }
}

uint64_t sub_100398AFC()
{
  v1 = *sub_10000BA08((*(v0 + 24) + 168), *(*(v0 + 24) + 192));
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_100398B9C;

  return sub_10038229C();
}

uint64_t sub_100398B9C(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 112);
  v5 = *v3;
  v5[15] = a1;
  v5[16] = a2;

  if (v2)
  {
    v7 = v5[9];
    v6 = v5[10];
    v8 = v5[6];

    v9 = v5[1];

    return v9();
  }

  else
  {
    v11 = v5[3];

    return _swift_task_switch(sub_100398CF8, v11, 0);
  }
}

uint64_t sub_100398CF8()
{
  v25 = v0;
  v1 = v0[16];
  v2 = v0[9];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[11];
    v8 = v0[8];
    v22 = v0[9];
    v23 = v0[12];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0xD00000000000001ALL, v7, &v24);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100141FE4(v6, v5, &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderFlow %s returning %s", v10, 0x16u);
    swift_arrayDestroy();

    v23(v22, v9);
  }

  else
  {
    v11 = v0[12];
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];

    v11(v12, v14);
  }

  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[6];

  v18 = v0[1];
  v19 = v0[15];
  v20 = v0[16];

  return v18(v19, v20);
}

uint64_t sub_100398EF0(uint64_t a1, uint64_t a2)
{
  v3[105] = v2;
  v3[99] = a2;
  v3[93] = a1;
  v4 = type metadata accessor for Date();
  v3[106] = v4;
  v5 = *(v4 - 8);
  v3[107] = v5;
  v6 = *(v5 + 64) + 15;
  v3[108] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v3[109] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[110] = swift_task_alloc();
  v9 = type metadata accessor for Milestone();
  v3[111] = v9;
  v10 = *(v9 - 8);
  v3[112] = v10;
  v11 = *(v10 + 64) + 15;
  v3[113] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentReaderConfiguration();
  v3[114] = v12;
  v13 = *(v12 - 8);
  v3[115] = v13;
  v14 = *(v13 + 64) + 15;
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v3[118] = v15;
  v16 = *(v15 - 8);
  v3[119] = v16;
  v17 = *(v16 + 64) + 15;
  v3[120] = swift_task_alloc();

  return _swift_task_switch(sub_100399108, v2, 0);
}

uint64_t sub_100399108()
{
  v40 = v0;
  v1 = v0[120];
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[105];
  v6 = v0[99];
  defaultLogger()();
  v7 = *(v3 + 16);
  v7(v2, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v36 = v0[119];
    v37 = v0[118];
    v38 = v0[120];
    v34 = v0[117];
    v10 = v0[116];
    v11 = v0[115];
    v35 = v9;
    v12 = v0[114];
    v13 = v0[105];
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v14 = 136315650;
    v0[87] = v13;
    v15 = String.init<A>(describing:)();
    v17 = sub_100141FE4(v15, v16, &v39);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, &v39);
    *(v14 + 22) = 2080;
    v7(v10, v34, v12);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v11 + 8))(v34, v12);
    v21 = sub_100141FE4(v18, v20, &v39);

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v35, "MobileDocumentReaderFlow %s %s Configuration: %s", v14, 0x20u);
    swift_arrayDestroy();

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v22 = v0[120];
    v23 = v0[119];
    v24 = v0[118];
    v25 = v0[117];
    v26 = v0[115];
    v27 = v0[114];

    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
  }

  v28 = v0[113];
  v29 = v0[112];
  v30 = v0[111];
  static MobileDocumentReaderMilestone.prepareCalled.getter();
  Milestone.log()();
  (*(v29 + 8))(v28, v30);
  v31 = swift_task_alloc();
  v0[121] = v31;
  *v31 = v0;
  v31[1] = sub_100399480;
  v32 = v0[105];

  return sub_10039C498(0x2865726170657270, 0xEE00293A68746977, 166);
}

uint64_t sub_100399480()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[120];
    v6 = v2[117];
    v7 = v2[116];
    v8 = v2[113];
    v9 = v2[110];
    v10 = v2[108];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    v13 = v2[105];

    return _swift_task_switch(sub_10039960C, v13, 0);
  }
}

uint64_t sub_10039960C()
{
  v1 = v0[105];

  swift_asyncLet_begin();
  v2 = swift_task_alloc();
  v0[122] = v2;
  *v2 = v0;
  v2[1] = sub_1003996E4;
  v3 = v0[110];
  v4 = v0[105];
  v5 = v0[99];

  return sub_10039D198(v3, v5);
}

uint64_t sub_1003996E4()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v6 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v4 = *(v2 + 840);

    return _swift_task_switch(sub_100399A0C, v4, 0);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v2 + 16);
  }
}

uint64_t sub_100399820()
{
  *(v1 + 992) = v0;
  if (v0)
  {
    v2 = sub_100399AFC;
  }

  else
  {
    v2 = sub_100399854;
  }

  return _swift_task_switch(v2, *(v1 + 840), 0);
}

uint64_t sub_100399854()
{
  v1 = v0[110];
  v2 = v0[93];
  v3 = *v1;
  v4 = *(v1 + 1);
  (*(v0[107] + 16))(v0[108], &v1[*(v0[109] + 52)], v0[106]);

  MobileDocumentReaderConfigurationResponse.init(sessionIdentifier:sessionExpirationDate:)();
  sub_1003A10A4(v1, type metadata accessor for MobileDocumentReaderAuthenticationSession);

  return _swift_asyncLet_finish(v0 + 2);
}

uint64_t sub_100399950()
{
  v1 = v0[120];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[113];
  v5 = v0[110];
  v6 = v0[108];
  v7 = v0[105];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100399A44()
{
  v1 = v0[123];
  v2 = v0[105];

  v3 = v0[120];
  v4 = v0[117];
  v5 = v0[116];
  v6 = v0[113];
  v7 = v0[110];
  v8 = v0[108];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100399AFC()
{
  sub_1003A10A4(*(v0 + 880), type metadata accessor for MobileDocumentReaderAuthenticationSession);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100399B94()
{
  v1 = v0[124];
  v2 = v0[105];

  v3 = v0[120];
  v4 = v0[117];
  v5 = v0[116];
  v6 = v0[113];
  v7 = v0[110];
  v8 = v0[108];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100399C6C()
{
  v1 = *sub_10000BA08((*(v0 + 16) + 368), *(*(v0 + 16) + 392));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100399D0C;

  return sub_10034979C();
}

uint64_t sub_100399D0C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100399E00(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = *(*(sub_100007224(&qword_100841B98, &unk_1006DF0D0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_100842570, &qword_1006DF610) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_1008419D8, &qword_1006DEAB0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = type metadata accessor for MobileDocumentReaderAuthenticationSession();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v17 = type metadata accessor for Milestone();
  v4[19] = v17;
  v18 = *(v17 - 8);
  v4[20] = v18;
  v19 = *(v18 + 64) + 15;
  v4[21] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v4[22] = v20;
  v21 = *(v20 - 8);
  v4[23] = v21;
  v22 = *(v21 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10039A0DC, v3, 0);
}

uint64_t sub_10039A0DC()
{
  v23 = v0;
  v1 = v0[24];
  v2 = v0[6];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v21 = v0[24];
    v6 = v0[22];
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315394;
    v0[2] = v7;
    v9 = String.init<A>(describing:)();
    v11 = sub_100141FE4(v9, v10, &v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderFlow %s %s", v8, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v21, v6);
  }

  else
  {
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[22];

    (*(v13 + 8))(v12, v14);
  }

  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  static MobileDocumentReaderMilestone.merchantCalled.getter();
  Milestone.log()();
  (*(v16 + 8))(v15, v17);
  v18 = swift_task_alloc();
  v0[25] = v18;
  *v18 = v0;
  v18[1] = sub_10039A36C;
  v19 = v0[6];

  return sub_10039C498(0x746E61686372656DLL, 0xEE00293A726F6628, 192);
}

uint64_t sub_10039A36C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[24];
    v6 = v2[21];
    v7 = v2[18];
    v9 = v2[14];
    v8 = v2[15];
    v11 = v2[12];
    v10 = v2[13];
    v12 = v2[9];

    v13 = *(v4 + 8);

    return v13();
  }

  else
  {
    v15 = v2[6];

    return _swift_task_switch(sub_10039A514, v15, 0);
  }
}

uint64_t sub_10039A514()
{
  v1 = *sub_10000BA08((v0[6] + 168), *(v0[6] + 192));
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_10039A5C0;
  v3 = v0[15];
  v4 = v0[4];
  v5 = v0[5];

  return sub_100389664(v3, v4, v5);
}

uint64_t sub_10039A5C0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_10039ACD4;
  }

  else
  {
    v6 = sub_10039A6EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039A6EC()
{
  v1 = v0[16];
  v2 = v0[15];
  if ((*(v0[17] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[8];
    v55 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    sub_10000BE18(v2, &qword_1008419D8, &qword_1006DEAB0);
    type metadata accessor for DaemonAnalytics();
    v10 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.sessionMissing(_:);
    v11 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
    (*(*(v11 - 8) + 104))(v4, v10, v11);
    (*(v3 + 104))(v4, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v6);
    static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
    (*(v3 + 8))(v4, v6);
    _StringGuts.grow(_:)(37);

    v12._countAndFlagsBits = v9;
    v12._object = v8;
    String.append(_:)(v12);
    (*(v7 + 104))(v5, enum case for DIPError.Code.documentReaderMissingSession(_:), v55);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v0[24];
    v14 = v0[21];
    v15 = v0[18];
    v17 = v0[14];
    v16 = v0[15];
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[9];

    v21 = v0[1];
    goto LABEL_13;
  }

  v22 = v0[18];
  v23 = v0[13];
  sub_1003A103C(v2, v22, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  sub_10000BBC4(v22 + *(v1 + 48), v23, &qword_100841B98, &unk_1006DF0D0);
  v24 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v26 = v0[13];
    v27 = &qword_100841B98;
    v28 = &unk_1006DF0D0;
  }

  else
  {
    v29 = v0[13];
    v30 = v0[14];
    static Locale.preferredLanguages.getter();
    ReaderAuthenticationLocalizedRelyingPartyNames.preferredLocalization(preferredLanguages:)();

    (*(v25 + 8))(v29, v24);
    v31 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNamePair();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v30, 1, v31);
    v34 = v0[14];
    if (v33 != 1)
    {
      ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter();
      (*(v32 + 8))(v34, v31);
      v35 = v0[18];
      v36 = v0[16];
      goto LABEL_11;
    }

    v27 = &unk_100842570;
    v28 = &unk_1006DF610;
    v26 = v0[14];
  }

  sub_10000BE18(v26, v27, v28);
  v35 = v0[18];
  v36 = v0[16];
  v37 = (v35 + v36[11]);
  if (v37[1])
  {
    v38 = *v37;
    v39 = v37[1];

LABEL_11:
    v41 = v0[3];
    v42 = v36[9];
    v43 = *(v35 + v42);
    v44 = *(v35 + v42 + 8);
    sub_1000363B4(*(v35 + v36[10]), *(v35 + v36[10] + 8));

    MobileDocumentReaderMerchant.init(name:logoData:identifier:)();
    v40 = 0;
    goto LABEL_12;
  }

  v40 = 1;
LABEL_12:
  sub_1003A10A4(v35, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  v45 = v0[24];
  v46 = v0[21];
  v47 = v0[18];
  v49 = v0[14];
  v48 = v0[15];
  v51 = v0[12];
  v50 = v0[13];
  v56 = v0[9];
  v52 = v0[3];
  v53 = type metadata accessor for MobileDocumentReaderMerchant();
  (*(*(v53 - 8) + 56))(v52, v40, 1, v53);

  v21 = v0[1];
LABEL_13:

  return v21();
}