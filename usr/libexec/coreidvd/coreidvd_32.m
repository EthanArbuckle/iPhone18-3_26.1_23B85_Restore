uint64_t sub_10032AD28(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100027B9C;

  return sub_1003273BC(a1, a2, v6, v7, v8);
}

unint64_t sub_10032ADEC()
{
  result = qword_1008412A0;
  if (!qword_1008412A0)
  {
    sub_10000B870(&qword_100841298, &qword_1006DDD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008412A0);
  }

  return result;
}

void *sub_10032AE50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v97 = a2;
  v98 = a1;
  v102 = type metadata accessor for MobileDocumentRegistration();
  v99 = *(v102 - 8);
  v6 = *(v99 + 64);
  __chkstk_darwin(v102);
  v101 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest.DocumentProviderType();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  __chkstk_darwin(v8);
  v92 = (&v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v89 = &v87 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v87 - v20;
  v22 = __chkstk_darwin(v19);
  v100 = &v87 - v23;
  __chkstk_darwin(v22);
  v25 = &v87 - v24;
  defaultLogger()();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v28 = os_log_type_enabled(v26, v27);
  v95 = a3;
  v96 = a4;
  v91 = v21;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v103[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100141FE4(a3, a4, v103);
    _os_log_impl(&_mh_execute_header, v26, v27, "MobileDocumentProviderFilter beginning to filter registrations on applicationIdentifier %s", v29, 0xCu);
    sub_10000BB78(v30);
  }

  v31 = *(v12 + 8);
  v31(v25, v11);
  v32 = v11;
  v33 = [objc_opt_self() standardUserDefaults];
  v34._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.disableFilteringInSelectionSheet.getter();
  v35 = NSUserDefaults.internalBool(forKey:)(v34);

  v36 = v98;
  if (v35)
  {
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "MobileDocumentProviderDataSource disabling filtering in selection sheet override set to true. Returning all stored registrations.", v39, 2u);
    }

    v31(v16, v32);
  }

  else
  {
    v40 = v100;
    defaultLogger()();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    v43 = os_log_type_enabled(v41, v42);
    v90 = v31;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v103[0] = v45;
      *v44 = 136315138;
      v46 = Array.description.getter();
      v48 = sub_100141FE4(v46, v47, v103);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "MobileDocumentProviderDataSource using request to filter stored registrations: %s", v44, 0xCu);
      sub_10000BB78(v45);

      v90(v40, v32);
    }

    else
    {

      v31(v40, v32);
    }

    v49 = *(v36 + 16);
    v50 = _swiftEmptyArrayStorage;
    if (v49)
    {
      v87 = v12;
      v88 = v32;
      v103[0] = _swiftEmptyArrayStorage;
      sub_100172D4C(0, v49, 0);
      v50 = v103[0];
      v51 = v99 + 16;
      v52 = *(v99 + 16);
      v53 = v36 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v99 = *(v99 + 72);
      v100 = v52;
      v54 = (v51 - 8);
      do
      {
        v55 = v101;
        v56 = v102;
        (v100)(v101, v53, v102);
        v57 = MobileDocumentRegistration.documentType.getter();
        v59 = v58;
        (*v54)(v55, v56);
        v103[0] = v50;
        v61 = v50[2];
        v60 = v50[3];
        if (v61 >= v60 >> 1)
        {
          sub_100172D4C((v60 > 1), v61 + 1, 1);
          v50 = v103[0];
        }

        v50[2] = v61 + 1;
        v62 = &v50[2 * v61];
        v62[4] = v57;
        v62[5] = v59;
        v53 += v99;
        --v49;
      }

      while (v49);
      v63 = v88;
    }

    else
    {
      v63 = v32;
    }

    sub_1006973D4(v50);

    v65 = v95;
    v64 = v96;
    v67 = v92;
    v66 = v93;
    *v92 = v95;
    v67[1] = v64;
    v68 = v94;
    (*(v66 + 104))(v67, enum case for PartialWebPresentmentMobileDocumentRequest.DocumentProviderType.thirdParty(_:), v94);

    v69 = v97;
    v70 = PartialWebPresentmentMobileDocumentRequest.evaluate(as:against:)();

    (*(v66 + 8))(v67, v68);
    if (v70)
    {
      v71 = v91;
      defaultLogger()();

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();

      v74 = os_log_type_enabled(v72, v73);
      v75 = v98;
      if (v74)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v103[0] = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_100141FE4(v65, v64, v103);
        _os_log_impl(&_mh_execute_header, v72, v73, "MobileDocumentProviderDataSource request can be handled by %s. Filtering registrations to include only those relevant to the request.", v76, 0xCu);
        sub_10000BB78(v77);

        v78 = v91;
      }

      else
      {

        v78 = v71;
      }

      v84 = (v90)(v78, v63);
      __chkstk_darwin(v84);
      *(&v87 - 2) = v69;
      *(&v87 - 1) = v85;

      return sub_10046D0E8(sub_10032D1DC, (&v87 - 4), v75);
    }

    else
    {
      v79 = v89;
      defaultLogger()();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v103[0] = v83;
        *v82 = 136315138;
        *(v82 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v103);
        _os_log_impl(&_mh_execute_header, v80, v81, "MobileDocumentProviderDataSource %s. Request cannot be handled. Returning no registrations.", v82, 0xCu);
        sub_10000BB78(v83);
      }

      v90(v79, v63);
      return _swiftEmptyArrayStorage;
    }
  }

  return v36;
}

uint64_t sub_10032B788(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  v12 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v60 - v14;
  v16 = type metadata accessor for BundleRecord();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v67 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v60 - v21;
  __chkstk_darwin(v20);
  v24 = &v60 - v23;
  v25 = a1;
  v27 = v26;
  sub_10032D16C(v25, v15);
  if ((*(v27 + 48))(v15, 1, v16) == 1)
  {
    sub_10000BE18(v15, &qword_10083ACF8, &qword_1006D8FC0);
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "MobileDocumentProviderDataSource encountered extension with no containing record.", v30, 2u);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  v63 = v4;
  v64 = v11;
  v62 = v5;
  (*(v27 + 32))(v24, v15, v16);
  v32 = *(v2 + 40);
  v33 = *(v2 + 48);
  v34 = *(v27 + 16);
  v65 = v24;
  v66 = v16;
  v60 = v34;
  v61 = v27 + 16;
  v34(v22, v24, v16);
  v71[3] = v32;
  v71[4] = v33;
  sub_100032DBC(v71);
  dispatch thunk of MobileDocumentProviderRegistrationEntitlementChecking.init(applicationBundleRecord:)();
  v35 = v69 + 56;
  v36 = 1 << *(v69 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v69 + 56);
  v39 = (v36 + 63) >> 6;

  v40 = 0;
  v68 = v27;
  if (v38)
  {
    while (1)
    {
      v41 = v40;
LABEL_13:
      v42 = (*(v69 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v38)))));
      v44 = *v42;
      v43 = v42[1];

      if ((dispatch thunk of MobileDocumentProviderRegistrationEntitlementChecking.checkEntitled(for:)() & 1) == 0)
      {
        break;
      }

      v38 &= v38 - 1;

      v40 = v41;
      v27 = v68;
      if (!v38)
      {
        goto LABEL_10;
      }
    }

    v45 = v64;
    defaultLogger()();
    v47 = v66;
    v46 = v67;
    v48 = v65;
    v60(v67, v65, v66);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70 = v61;
      *v51 = 136315394;
      v52 = sub_100141FE4(v44, v43, &v70);

      *(v51 + 4) = v52;
      *(v51 + 12) = 2080;
      v53 = BundleRecord.applicationIdentifier.getter();
      if (v54)
      {
        v55 = v53;
      }

      else
      {
        v55 = 7104878;
      }

      if (v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = 0xE300000000000000;
      }

      v57 = *(v68 + 8);
      v57(v46, v47);
      v58 = sub_100141FE4(v55, v56, &v70);

      *(v51 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "MobileDocumentProviderFilter requestedDocumentTypes contains %s, but %s is not entitled.", v51, 0x16u);
      swift_arrayDestroy();

      (*(v62 + 8))(v64, v63);
      v57(v48, v47);
    }

    else
    {

      v59 = *(v68 + 8);
      v59(v46, v47);
      (*(v62 + 8))(v45, v63);
      v59(v48, v47);
    }

    sub_10000BB78(v71);
    return 0;
  }

LABEL_10:
  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {
      (*(v27 + 8))(v65, v66);

      sub_10000BB78(v71);
      return 1;
    }

    v38 = *(v35 + 8 * v41);
    ++v40;
    if (v38)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10032BDE8(NSObject *a1, uint64_t a2, void *a3)
{
  v157 = a3;
  v164 = type metadata accessor for Certificate();
  v169 = *(v164 - 8);
  v5 = *(v169 + 64);
  v6 = __chkstk_darwin(v164);
  v150 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v165 = &v147 - v8;
  v9 = type metadata accessor for MobileDocumentRegistration();
  v162 = *(v9 - 8);
  v10 = *(v162 + 64);
  v11 = __chkstk_darwin(v9);
  v167 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v151 = &v147 - v14;
  v15 = __chkstk_darwin(v13);
  v159 = &v147 - v16;
  v17 = __chkstk_darwin(v15);
  v149 = &v147 - v18;
  v19 = __chkstk_darwin(v17);
  v158 = &v147 - v20;
  __chkstk_darwin(v19);
  v148 = &v147 - v21;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v160 = v22;
  v161 = v23;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v168 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v155 = &v147 - v28;
  v29 = __chkstk_darwin(v27);
  v152 = &v147 - v30;
  v31 = __chkstk_darwin(v29);
  v154 = &v147 - v32;
  __chkstk_darwin(v31);
  v153 = &v147 - v33;
  v34 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v147 - v36;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v43 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v166 = &v147 - v44;
  v156 = a2;
  v45 = PartialWebPresentmentMobileDocumentRequest.allDocumentTypes.getter();
  v46 = MobileDocumentRegistration.documentType.getter();
  v48 = sub_1006932A8(v46, v47, v45);

  if ((v48 & 1) == 0)
  {
    defaultLogger()();
    v49 = v162;
    v50 = *(v162 + 16);
    v50(v167, a1, v9);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v170[0] = v169;
      *v53 = 136315394;
      *(v53 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v170);
      *(v53 + 12) = 2080;
      v54 = v167;
      v50(v158, v167, v9);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v49 + 8))(v54, v9);
      v58 = sub_100141FE4(v55, v57, v170);

      *(v53 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "MobileDocumentProviderDataSource %s. Filtering registration: %s due to irrelevant document type.", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v49 + 8))(v167, v9);
    }

    (*(v161 + 8))(v168, v160);
    return 0;
  }

  v147 = v9;
  MobileDocumentRegistration.invalidationDate.getter();
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_10000BE18(v37, &unk_100849400, &unk_1006BFBB0);
  }

  else
  {
    v59 = v166;
    (*(v39 + 32))(v166, v37, v38);
    v60 = v157[11];
    sub_10000BA08(v157 + 7, v157[10]);
    dispatch thunk of DateProviding.now.getter();
    v61 = static Date.< infix(_:_:)();
    v64 = *(v39 + 8);
    v62 = (v39 + 8);
    v63 = v64;
    v64(v43, v38);
    if (v61)
    {
      v168 = v62;
      v169 = v38;
      v65 = v153;
      defaultLogger()();
      v66 = v162;
      v67 = v148;
      v68 = v147;
      v167 = *(v162 + 16);
      (v167)(v148, a1, v147);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v170[0] = v165;
        *v71 = 136315394;
        *(v71 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v170);
        *(v71 + 12) = 2080;
        (v167)(v158, v67, v68);
        v72 = String.init<A>(describing:)();
        v73 = v70;
        v75 = v74;
        (*(v66 + 8))(v67, v68);
        v76 = sub_100141FE4(v72, v75, v170);

        *(v71 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v69, v73, "MobileDocumentProviderDataSource %s. Filtering registration: %s due to invalid date.", v71, 0x16u);
        swift_arrayDestroy();

        (*(v161 + 8))(v153, v160);
      }

      else
      {

        (*(v66 + 8))(v67, v68);
        (*(v161 + 8))(v65, v160);
      }

      v63(v166, v169);
      return 0;
    }

    v63(v59, v38);
  }

  v78 = v162;
  v79 = *(MobileDocumentRegistration.authorityKeyIdentifiers.getter() + 16);

  v80 = v165;
  v81 = v159;
  if (v79)
  {
    result = PartialWebPresentmentMobileDocumentRequest.authenticationCertificateChains.getter();
    v82 = *(result + 16);
    if (v82)
    {
      v83 = 0;
      v84 = (result + 32);
      v166 = (v169 + 8);
      v167 = (v169 + 16);
      v85 = v164;
      v86 = v171;
      v163 = a1;
      v155 = v82;
      v156 = result;
      v153 = (result + 32);
      do
      {
        if (v83 >= *(result + 16))
        {
LABEL_42:
          __break(1u);
          return result;
        }

        v87 = *&v84[8 * v83];
        v88 = *(v87 + 16);
        if (v88)
        {
          v157 = v83;
          v171 = v86;
          v168 = (v87 + ((*(v169 + 80) + 32) & ~*(v169 + 80)));

          v89 = 0;
          while (1)
          {
            if (v89 >= *(v87 + 16))
            {
              __break(1u);
              goto LABEL_42;
            }

            v90 = *(v169 + 16);
            v90(v80, &v168[*(v169 + 72) * v89], v85);
            v91 = Certificate.wrapped.getter();
            v92 = SecCertificateRef.authorityKeyIdentifier.getter();
            v94 = v93;

            if (v94 >> 60 == 15)
            {
              result = (*v166)(v80, v85);
            }

            else
            {
              v95 = MobileDocumentRegistration.authorityKeyIdentifiers.getter();
              v170[0] = v92;
              v170[1] = v94;
              __chkstk_darwin(v95);
              *(&v147 - 2) = v170;
              v96 = v171;
              v97 = sub_10035C990(sub_10032D1FC, (&v147 - 4), v95);
              v171 = v96;

              if (v97)
              {
                v169 = v92;

                v109 = v154;
                defaultLogger()();
                v110 = v162;
                v111 = *(v162 + 16);
                v112 = v149;
                v113 = v147;
                v111(v149, v163, v147);
                v114 = v150;
                v90(v150, v165, v164);
                v115 = Logger.logObject.getter();
                LODWORD(v168) = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v115, v168))
                {
                  v116 = swift_slowAlloc();
                  v163 = v115;
                  v117 = v110;
                  v118 = v112;
                  v119 = v116;
                  v167 = swift_slowAlloc();
                  v170[0] = v167;
                  *v119 = 136315650;
                  *(v119 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v170);
                  *(v119 + 12) = 2080;
                  v111(v158, v118, v113);
                  v120 = String.init<A>(describing:)();
                  v122 = v121;
                  (*(v117 + 8))(v118, v113);
                  v123 = sub_100141FE4(v120, v122, v170);

                  *(v119 + 14) = v123;
                  *(v119 + 22) = 2080;
                  v124 = Certificate.wrapped.getter();
                  v125 = SecCertificateRef.derRepresentation.getter();
                  v126 = v114;
                  v128 = v127;

                  v129 = Data.base64EncodedString(options:)(0);
                  sub_10000B90C(v125, v128);
                  v130 = *v166;
                  v131 = v126;
                  v132 = v164;
                  (*v166)(v131, v164);
                  v133 = sub_100141FE4(v129._countAndFlagsBits, v129._object, v170);

                  *(v119 + 24) = v133;
                  v134 = v163;
                  _os_log_impl(&_mh_execute_header, v163, v168, "MobileDocumentProviderDataSource %s. Including registration: %s. Certificate: %s authority key identifier matches a provided authorizer identifier.", v119, 0x20u);
                  swift_arrayDestroy();

                  sub_10000BD94(v169, v94);

                  (*(v161 + 8))(v154, v160);
                  v130(v165, v132);
                }

                else
                {
                  sub_10000BD94(v169, v94);

                  v135 = *v166;
                  v136 = v164;
                  (*v166)(v114, v164);
                  (*(v110 + 8))(v112, v113);
                  (*(v161 + 8))(v109, v160);
                  v135(v165, v136);
                }

                return 1;
              }

              v80 = v165;
              v85 = v164;
              (*v166)(v165, v164);
              result = sub_10000BD94(v92, v94);
            }

            if (v88 == ++v89)
            {

              v86 = v171;
              v82 = v155;
              result = v156;
              v83 = v157;
              v84 = v153;
              break;
            }
          }
        }

        ++v83;
        v78 = v162;
        a1 = v163;
        v81 = v159;
      }

      while (v83 != v82);
      v171 = v86;
    }

    v137 = v152;
    defaultLogger()();
    v138 = *(v78 + 16);
    v139 = v147;
    v138(v81, a1, v147);
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v170[0] = v169;
      *v142 = 136315394;
      *(v142 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v170);
      *(v142 + 12) = 2080;
      v138(v158, v81, v139);
      v143 = String.init<A>(describing:)();
      v145 = v144;
      (*(v78 + 8))(v81, v139);
      v146 = sub_100141FE4(v143, v145, v170);

      *(v142 + 14) = v146;
      _os_log_impl(&_mh_execute_header, v140, v141, "MobileDocumentProviderDataSource %s. Filtering registration: %s due to no certificate matching provided authorizer identifiers.", v142, 0x16u);
      swift_arrayDestroy();

      (*(v161 + 8))(v152, v160);
    }

    else
    {

      (*(v78 + 8))(v81, v139);
      (*(v161 + 8))(v137, v160);
    }

    return 0;
  }

  v98 = v155;
  defaultLogger()();
  v99 = *(v78 + 16);
  v100 = v151;
  v101 = v147;
  v99(v151, a1, v147);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v170[0] = v169;
    *v104 = 136315394;
    *(v104 + 4) = sub_100141FE4(0xD000000000000024, 0x800000010070E470, v170);
    *(v104 + 12) = 2080;
    v99(v158, v100, v101);
    v105 = String.init<A>(describing:)();
    v107 = v106;
    (*(v78 + 8))(v100, v101);
    v108 = sub_100141FE4(v105, v107, v170);

    *(v104 + 14) = v108;
    _os_log_impl(&_mh_execute_header, v102, v103, "MobileDocumentProviderDataSource %s. Including registration: %s. No authorizer identifiers provided.", v104, 0x16u);
    swift_arrayDestroy();

    (*(v161 + 8))(v155, v160);
  }

  else
  {

    (*(v78 + 8))(v100, v101);
    (*(v161 + 8))(v98, v160);
  }

  return 1;
}

uint64_t type metadata accessor for MobileDocumentProviderApplication()
{
  result = qword_100841328;
  if (!qword_100841328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10032D00C()
{
  result = qword_1008412B0;
  if (!qword_1008412B0)
  {
    type metadata accessor for BundleRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008412B0);
  }

  return result;
}

uint64_t sub_10032D0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032D108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032D16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032D238()
{
  result = type metadata accessor for BundleRecord();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ExtensionIdentity();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10032D2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10032D2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_10032D364(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEA0000000000656DLL;
    v9 = 0x616E2D6E65766967;
    switch(*v4)
    {
      case 1:
        v9 = 0x6E2D796C696D6166;
        v8 = 0xEB00000000656D61;
        break;
      case 2:
        v8 = 0xE300000000000000;
        v9 = 7890291;
        break;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x7469617274726F70;
        break;
      case 4:
        v8 = 0xE700000000000000;
        v9 = 0x73736572646461;
        break;
      case 5:
        v8 = 0xE600000000000000;
        v9 = 0x746867696568;
        break;
      case 6:
        v9 = 0x746867696577;
        v8 = 0xE600000000000000;
        break;
      case 7:
        v9 = 0x6F6C6F632D657965;
        v8 = 0xE900000000000072;
        break;
      case 8:
        v8 = 0xEA0000000000726FLL;
        v9 = 0x6C6F632D72696168;
        break;
      case 9:
        v9 = 0xD000000000000012;
        v8 = 0x80000001006F9D10;
        break;
      case 0xA:
        v9 = 0x2D6E617265746576;
        v8 = 0xEE00737574617473;
        break;
      case 0xB:
        v9 = 0xD000000000000011;
        v8 = 0x80000001006F9D40;
        break;
      case 0xC:
        v9 = 0xD00000000000001ELL;
        v8 = 0x80000001006F9D60;
        break;
      case 0xD:
        v9 = 0xD000000000000018;
        v8 = 0x80000001006F9D80;
        break;
      case 0xE:
        v9 = 0x746E656D75636F64;
        v8 = 0xEF7265626D756E2DLL;
        break;
      case 0xF:
        v9 = 0xD000000000000013;
        v8 = 0x80000001006F9DB0;
        break;
      case 0x10:
        v9 = 0xD000000000000012;
        v8 = 0x80000001006F9DD0;
        break;
      case 0x11:
        v8 = 0xE300000000000000;
        v9 = 6645601;
        break;
      case 0x12:
        v9 = 0x2D666F2D65746164;
        v8 = 0xED00006874726962;
        break;
      case 0x13:
        v9 = 0xD000000000000014;
        v8 = 0x80000001006F9E00;
        break;
      default:
        break;
    }

    v10 = 0x616E2D6E65766967;
    v11 = 0xEA0000000000656DLL;
    switch(a1)
    {
      case 1:
        v11 = 0xEB00000000656D61;
        if (v9 == 0x6E2D796C696D6166)
        {
          goto LABEL_62;
        }

        goto LABEL_2;
      case 2:
        v11 = 0xE300000000000000;
        if (v9 != 7890291)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 3:
        v11 = 0xE800000000000000;
        if (v9 != 0x7469617274726F70)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 4:
        v11 = 0xE700000000000000;
        if (v9 != 0x73736572646461)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 5:
        v11 = 0xE600000000000000;
        if (v9 != 0x746867696568)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 6:
        v11 = 0xE600000000000000;
        if (v9 != 0x746867696577)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 7:
        v11 = 0xE900000000000072;
        if (v9 != 0x6F6C6F632D657965)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 8:
        v11 = 0xEA0000000000726FLL;
        v10 = 0x6C6F632D72696168;
        goto LABEL_61;
      case 9:
        v11 = 0x80000001006F9D10;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 10:
        v11 = 0xEE00737574617473;
        if (v9 != 0x2D6E617265746576)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 11:
        v11 = 0x80000001006F9D40;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 12:
        v11 = 0x80000001006F9D60;
        if (v9 != 0xD00000000000001ELL)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 13:
        v11 = 0x80000001006F9D80;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 14:
        v11 = 0xEF7265626D756E2DLL;
        if (v9 != 0x746E656D75636F64)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 15:
        v11 = 0x80000001006F9DB0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 16:
        v11 = 0x80000001006F9DD0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 17:
        v11 = 0xE300000000000000;
        if (v9 != 6645601)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 18:
        v11 = 0xED00006874726962;
        if (v9 != 0x2D666F2D65746164)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      case 19:
        v11 = 0x80000001006F9E00;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      default:
LABEL_61:
        if (v9 != v10)
        {
          goto LABEL_2;
        }

LABEL_62:
        if (v8 != v11)
        {
LABEL_2:
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_10032DA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_10032F51C(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_10032DB58()
{
  sub_100007224(&qword_100841380, &qword_1006DDE50);
  v0 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BF740;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRequest(_:), v0);
  result = (v6)(v5 + v2, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRawRequest(_:), v0);
  off_100841360 = v4;
  return result;
}

uint64_t sub_10032DCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10032DEAC, 0, 0);
}

uint64_t sub_10032DEAC()
{
  v58 = v0;
  v1 = v0[3];
  v2 = sub_100330370();
  v0[20] = v2;
  v0[21] = v3;
  if (v3)
  {
    v49 = v2;
    v55 = v3;
    if (qword_100832C58 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v4 = off_100841360;
      v50 = *(off_100841360 + 2);
      if (!v50)
      {
        break;
      }

      v5 = 0;
      v6 = v0[17];
      v54 = (v6 + 8);
      while (2)
      {
        if (v5 < *(v4 + 2))
        {
          v7 = v0[3];
          v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
          v9 = *(v6 + 72);
          v51 = *(v6 + 16);
          v52 = v5 + 1;
          v51(v0[19], &v4[v8 + v9 * v5], v0[16]);
          v10 = *(v7 + *(type metadata accessor for MobileDocumentProviderRecord(0) + 24));
          v11 = v10 + v8;
          v12 = *(v10 + 16) + 1;
          while (1)
          {
            v13 = v0[19];
            v14 = v0[16];
            if (!--v12)
            {
              break;
            }

            sub_10032F51C(&qword_100841368, &type metadata accessor for IdentityDocumentRequestSceneIdentifier);
            v11 += v9;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              v19 = v0[18];
              v18 = v0[19];
              v21 = v0[15];
              v20 = v0[16];
              defaultLogger()();
              v51(v19, v18, v20);

              v22 = Logger.logObject.getter();
              v23 = static os_log_type_t.debug.getter();

              v24 = os_log_type_enabled(v22, v23);
              v25 = v0[18];
              v26 = v0[15];
              v27 = v0[16];
              v29 = v0[13];
              v28 = v0[14];
              if (v24)
              {
                v53 = v0[13];
                v30 = swift_slowAlloc();
                v57[0] = swift_slowAlloc();
                *v30 = 136315394;
                *(v30 + 4) = sub_100141FE4(v49, v55, v57);
                *(v30 + 12) = 2080;
                v31 = IdentityDocumentRequestSceneIdentifier.rawValue.getter();
                v56 = v26;
                v33 = v32;
                v34 = *v54;
                (*v54)(v25, v27);
                v35 = sub_100141FE4(v31, v33, v57);

                *(v30 + 14) = v35;
                _os_log_impl(&_mh_execute_header, v22, v23, "Decided on a third party credential provider: %s with scene identifier %s.", v30, 0x16u);
                swift_arrayDestroy();

                (*(v28 + 8))(v56, v53);
              }

              else
              {

                v34 = *v54;
                (*v54)(v25, v27);
                (*(v28 + 8))(v26, v29);
              }

              v0[22] = v34;
              v44 = swift_task_alloc();
              v0[23] = v44;
              *v44 = v0;
              v44[1] = sub_10032E518;
              v45 = v0[19];
              v46 = v0[12];
              v47 = v0[4];
              v48 = v0[5];

              return sub_10032E844(v46, v45, v47, v48);
            }
          }

          (*v54)(v0[19], v0[16]);
          v5 = v52;
          if (v52 != v50)
          {
            continue;
          }

          goto LABEL_11;
        }

        break;
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_11:
    v15 = v0[7];
    v16 = v0[8];
    v17 = v0[6];

    (*(v15 + 104))(v16, enum case for DIPError.Code.unexpectedDaemonState(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentInvalidDocumentProviderRecord(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v37 = v0[18];
  v36 = v0[19];
  v38 = v0[15];
  v40 = v0[11];
  v39 = v0[12];
  v41 = v0[8];

  v42 = v0[1];

  return v42();
}

uint64_t sub_10032E518()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);

    v5 = sub_10032E780;
  }

  else
  {
    v5 = sub_10032E634;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10032E634()
{
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v14 = v0[22];
  v15 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v16 = v0[8];
  v9 = v0[2];
  v8 = v0[3];
  v12 = v0[17] + 8;
  v13 = v0[16];
  (*(v6 + 16))(v0[11], v5, v7);
  sub_100330648();
  MobileDocumentProviderPresentmentRequest.init(applicationExtensionBundleIdentifier:sceneConfiguration:localizedDisplayName:)();
  (*(v6 + 8))(v5, v7);
  v14(v3, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10032E780()
{
  v1 = *(v0 + 136) + 8;
  (*(v0 + 176))(*(v0 + 152), *(v0 + 128));
  v2 = *(v0 + 192);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10032E844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_100841370, &unk_1006DDE40) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = type metadata accessor for WebPresentmentRequest();
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v11 = *(v10 + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10032E9F8, 0, 0);
}

uint64_t sub_10032E9F8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v2 + 16))(v1, v0[13], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRawRequest(_:))
  {
    v5 = v0[15];
    os_unfair_lock_lock(v5 + 14);
    sub_10032F4AC(&v5[4], (v0 + 2));
    os_unfair_lock_unlock(v5 + 14);
    sub_10032F4AC((v0 + 2), (v0 + 7));
    v6 = v0[10];
    if (v6)
    {
      v7 = v0[11];
      sub_10000BA08(v0 + 7, v0[10]);
      v8 = *(v7 + 24);
      v40 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      v0[26] = v10;
      *v10 = v0;
      v10[1] = sub_10032EFEC;
      v11 = v0[19];

      return v40(v11, v6, v7);
    }

    v26 = v0[20];
    v27 = v0[21];
    v28 = v0[19];
    sub_10000BE18((v0 + 7), &qword_100841378, &qword_1006E12F0);
    (*(v27 + 56))(v28, 1, 1, v26);
    v29 = v0[18];
    v30 = v0[16];
    v31 = v0[17];
    sub_10000BE18(v0[19], &qword_100841370, &unk_1006DDE40);
    (*(v31 + 104))(v29, enum case for DIPError.Code.internalError(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18((v0 + 2), &qword_100841378, &qword_1006E12F0);
    goto LABEL_12;
  }

  if (v4 != enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRequest(_:))
  {
    v23 = enum case for IdentityDocumentRequestSceneIdentifier.unknown(_:);
    v24 = v4;
    (*(v0[17] + 104))(v0[18], enum case for DIPError.Code.webPresentmentIncorrectSceneConfiguration(_:), v0[16]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    if (v24 == v23)
    {
      v25 = v0[18];
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v33 = v0[24];
      v32 = v0[25];
      v34 = v0[23];
      v35 = v0[18];
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v33 + 8))(v32, v34);
    }

LABEL_12:
    v36 = v0[25];
    v37 = v0[22];
    v39 = v0[18];
    v38 = v0[19];

    v22 = v0[1];
    goto LABEL_13;
  }

  v13 = v0[14];
  v14 = v0[12];
  v15 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v15 - 8) + 16))(v14, v13, v15);
  v16 = enum case for MobileDocumentProviderSceneConfiguration.iso18013MobileDocumentRequest(_:);
  v17 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
  (*(*(v17 - 8) + 104))(v14, v16, v17);
  v18 = v0[25];
  v19 = v0[22];
  v21 = v0[18];
  v20 = v0[19];

  v22 = v0[1];
LABEL_13:

  return v22();
}

uint64_t sub_10032EFEC()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_10032F400;
  }

  else
  {
    v3 = sub_10032F100;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10032F100()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  (*(v2 + 56))(v3, 0, 1, v1);
  sub_10000BB78(v0 + 7);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    v5 = v0[16];
    v6 = v0[17];
    sub_10000BE18(v0[19], &qword_100841370, &unk_1006DDE40);
    (*(v6 + 104))(v4, enum case for DIPError.Code.internalError(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10032F51C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18((v0 + 2), &qword_100841378, &qword_1006E12F0);
    v7 = v0[25];
    v8 = v0[22];
    v10 = v0[18];
    v9 = v0[19];
  }

  else
  {
    v13 = v0[21];
    v12 = v0[22];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[12];
    sub_10000BE18((v0 + 2), &qword_100841378, &qword_1006E12F0);
    v17 = *(v13 + 32);
    v17(v12, v15, v14);
    v17(v16, v12, v14);
    v18 = enum case for MobileDocumentProviderSceneConfiguration.iso18013MobileDocumentRawRequest(_:);
    v19 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    v20 = v0[25];
    v21 = v0[22];
    v23 = v0[18];
    v22 = v0[19];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10032F400()
{
  sub_10000BE18((v0 + 2), &qword_100841378, &qword_1006E12F0);
  sub_10000BB78(v0 + 7);
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10032F4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100841378, &qword_1006E12F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032F51C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10032F588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10032F678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10032F750()
{
  type metadata accessor for MobileDocumentProviderRecord.RecordSource(319);
  if (v0 <= 0x3F)
  {
    sub_10032F7EC();
    if (v1 <= 0x3F)
    {
      sub_10032F83C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10032F7EC()
{
  if (!qword_100835450)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100835450);
    }
  }
}

void sub_10032F83C()
{
  if (!qword_1008413F8)
  {
    type metadata accessor for IdentityDocumentRequestSceneIdentifier();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008413F8);
    }
  }
}

void sub_10032F894()
{
  sub_10032F908();
  if (v0 <= 0x3F)
  {
    sub_10032F988();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10032F908()
{
  if (!qword_1008414B0)
  {
    type metadata accessor for BundleRecord();
    sub_10000B870(&qword_10083ACF8, &qword_1006D8FC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1008414B0);
    }
  }
}

void sub_10032F988()
{
  if (!qword_1008414B8)
  {
    type metadata accessor for BundleRecord();
    sub_10000B870(&unk_1008414C0, &qword_1006DDEF8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1008414B8);
    }
  }
}

uint64_t sub_10032FA04()
{
  v1 = v0;
  v2 = type metadata accessor for SHA256();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  __chkstk_darwin(v2);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  __chkstk_darwin(v5);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  v15 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v49 - v20;
  v57 = 0;
  v58 = 0xE000000000000000;
  v49 = v1;
  sub_100330D14(v1, v14, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *&v14[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

    v23 = type metadata accessor for BundleRecord();
    v24 = *(v23 - 8);
    (*(v24 + 32))(v21, v14, v23);
    (*(v24 + 56))(v21, 0, 1, v23);
  }

  else
  {
    v25 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(&v14[*(v25 + 48)], v21);
    v23 = type metadata accessor for BundleRecord();
    (*(*(v23 - 8) + 8))(v14, v23);
  }

  type metadata accessor for BundleRecord();
  v26 = *(v23 - 8);
  v27 = *(v26 + 48);
  if (v27(v21, 1, v23) == 1)
  {
    sub_1003309C0(v21);
  }

  else
  {
    v28 = BundleRecord.applicationIdentifier.getter();
    v30 = v29;
    (*(v26 + 8))(v21, v23);
    if (v30)
    {
      v56._countAndFlagsBits = v28;
      v56._object = v30;

      v31._countAndFlagsBits = 124;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);

      String.append(_:)(v56);
    }
  }

  sub_100330D14(v49, v12, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *&v12[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

    (*(v26 + 56))(v19, 1, 1, v23);
    (*(v26 + 8))(v12, v23);
  }

  else
  {
    v33 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    (*(v26 + 32))(v19, v12, v23);
    (*(v26 + 56))(v19, 0, 1, v23);
    sub_1003309C0(&v12[v33]);
  }

  if (v27(v19, 1, v23) == 1)
  {
    sub_1003309C0(v19);
  }

  else
  {
    v34 = BundleRecord.bundleIdentifier.getter();
    v36 = v35;
    (*(v26 + 8))(v19, v23);
    if (v36)
    {
      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);
    }
  }

  v39 = v57;
  v38 = v58;

  v40 = sub_100343B88(v39, v38);
  v42 = v41;
  sub_100330CCC(&qword_1008336E0, &type metadata accessor for SHA256);
  v43 = v50;
  v44 = v53;
  dispatch thunk of HashFunction.init()();
  sub_10000B8B8(v40, v42);
  sub_10037939C(v40, v42);
  sub_10000B90C(v40, v42);
  v45 = v51;
  dispatch thunk of HashFunction.finalize()();
  (*(v52 + 8))(v43, v44);
  sub_100330CCC(&qword_1008336E8, &type metadata accessor for SHA256Digest);
  v46 = v55;
  v47 = Digest.hexStr.getter();
  sub_10000B90C(v40, v42);
  (*(v54 + 8))(v45, v46);

  return v47;
}

uint64_t sub_1003300F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48);
  v12 = type metadata accessor for BundleRecord();
  v28 = *(v12 - 8);
  (*(v28 + 16))(a3, a1, v12);
  *(a3 + v11) = a2;
  type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  swift_storeEnumTagMultiPayload();
  v13 = *(a2 + 16);
  if (v13)
  {
    v25[0] = v12;
    v26 = a1;
    v27 = a3;
    v29 = _swiftEmptyArrayStorage;

    sub_100172D4C(0, v13, 0);
    v14 = v29;
    v15 = *(v7 + 80);
    v25[1] = a2;
    v16 = a2 + ((v15 + 32) & ~v15);
    v17 = *(v7 + 72);
    do
    {
      sub_100330D14(v16, v10, type metadata accessor for DigitalPresentmentEligibleProposalData);
      v18 = *(v10 + 8);
      v19 = *(v10 + 9);

      sub_100177514(v10);
      v29 = v14;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_100172D4C((v20 > 1), v21 + 1, 1);
        v14 = v29;
      }

      v14[2] = v21 + 1;
      v22 = &v14[2 * v21];
      v22[4] = v18;
      v22[5] = v19;
      v16 += v17;
      --v13;
    }

    while (v13);

    a1 = v26;
    a3 = v27;
    v12 = v25[0];
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v23 = type metadata accessor for MobileDocumentProviderRecord(0);
  *(a3 + *(v23 + 20)) = v14;
  result = (*(v28 + 8))(a1, v12);
  *(a3 + *(v23 + 24)) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100330370()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  sub_100330D14(v1, v5, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *&v5[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

    v11 = type metadata accessor for BundleRecord();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v9, 1, 1, v11);
    (*(v12 + 8))(v5, v11);
  }

  else
  {
    v13 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    v11 = type metadata accessor for BundleRecord();
    v14 = *(v11 - 8);
    (*(v14 + 32))(v9, v5, v11);
    (*(v14 + 56))(v9, 0, 1, v11);
    sub_1003309C0(&v5[v13]);
  }

  type metadata accessor for BundleRecord();
  v15 = *(v11 - 8);
  if ((*(v15 + 48))(v9, 1, v11) == 1)
  {
    sub_1003309C0(v9);
    return 0;
  }

  else
  {
    v17 = BundleRecord.bundleIdentifier.getter();
    (*(v15 + 8))(v9, v11);
    return v17;
  }
}

uint64_t sub_100330648()
{
  v1 = v0;
  v2 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for BundleRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100330D14(v1, v20, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *&v20[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

    (*(v10 + 32))(v14, v20, v9);
    v22 = BundleRecord.localizedName.getter();
    v16 = v14;
  }

  else
  {
    v23 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    (*(v10 + 32))(v16, v20, v9);
    sub_100330950(&v20[v23], v8);
    sub_10032D16C(v8, v6);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_1003309C0(v6);
      v22 = BundleRecord.localizedName.getter();
    }

    else
    {
      v22 = BundleRecord.localizedName.getter();
      (*(v10 + 8))(v6, v9);
    }

    sub_1003309C0(v8);
  }

  (*(v10 + 8))(v16, v9);
  return v22;
}

uint64_t sub_100330950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003309C0(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100330A28()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  sub_100330D14(v1, v5, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *&v5[*(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48)];

    v11 = type metadata accessor for BundleRecord();
    v12 = *(v11 - 8);
    (*(v12 + 32))(v9, v5, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  else
  {
    v13 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(&v5[*(v13 + 48)], v9);
    v11 = type metadata accessor for BundleRecord();
    (*(*(v11 - 8) + 8))(v5, v11);
  }

  type metadata accessor for BundleRecord();
  v14 = *(v11 - 8);
  if ((*(v14 + 48))(v9, 1, v11) == 1)
  {
    sub_1003309C0(v9);
    return 0;
  }

  else
  {
    v16 = BundleRecord.bundleIdentifier.getter();
    (*(v14 + 8))(v9, v11);
    return v16;
  }
}

uint64_t sub_100330CCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100330D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100330D88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 105))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 104);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100330DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_100330E18(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
}

double sub_100330E58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v31 = a3;
  *(&v31 + 1) = a4;
  v30 = a2;
  v9 = type metadata accessor for BundleRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = BundleRecord.applicationIdentifier.getter();
  if (v20)
  {
    *&v32 = a1;
    *(&v32 + 1) = v30;
    v33 = v31;
    *&v34 = v19;
    *(&v34 + 1) = v20;
    *&v35 = BundleRecord.localizedName.getter();
    *(&v35 + 1) = v21;
    (*(v10 + 16))(v13, a5, v9);
    *&v37[8] = type metadata accessor for MobileDocumentProviderRegistrationEntitlementChecker();
    *&v37[16] = &protocol witness table for MobileDocumentProviderRegistrationEntitlementChecker;
    sub_100032DBC(&v36);
    MobileDocumentProviderRegistrationEntitlementChecker.init(applicationBundleRecord:)();
    (*(v10 + 8))(a5, v9);
    v37[24] = 0;
    v22 = *v37;
    *(a6 + 64) = v36;
    *(a6 + 80) = v22;
    v23 = v33;
    *a6 = v32;
    *(a6 + 16) = v23;
    v24 = v35;
    *(a6 + 32) = v34;
    *(a6 + 48) = v24;
    result = *&v37[9];
    *(a6 + 89) = *&v37[9];
  }

  else
  {
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "MobileDocumentProviderCallingProcessConfiguration cannot find applicationIdentifier, returning nil.", v28, 2u);
    }

    (*(v10 + 8))(a5, v9);
    (*(v15 + 8))(v18, v14);
    *(a6 + 96) = 0;
    result = 0.0;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 104) = -1;
  }

  return result;
}

uint64_t sub_10033111C()
{
  sub_1003311DC(v0, v4);
  if (v6)
  {
    if (v6 == 1)
    {
      v1 = 0;
    }

    else
    {
      v1 = v4[0];
    }
  }

  else
  {

    sub_10001F358(&v5, v3);
    sub_10000BA08(v3, v3[3]);
    v1 = dispatch thunk of MobileDocumentProviderRegistrationEntitlementChecking.checkEntitled(for:)();
    sub_10000BB78(v3);
  }

  return v1 & 1;
}

uint64_t sub_100331214()
{
  v1[2] = v0;
  v2 = *(*(sub_100007224(&qword_10083ACF8, &qword_1006D8FC0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for ExtensionIdentity();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100331398, v0, 0);
}

uint64_t sub_100331398()
{
  v18 = v0;
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v6 = v0[8];
  v7 = v0[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010070E6A0, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationCleanUpManager %s.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[14] = v10;
  v11 = v0[2];
  v12 = v11[22];
  v13 = v11[23];
  sub_10000BA08(v11 + 19, v12);
  v14 = async function pointer to dispatch thunk of ExtensionPointManaging.queryExtensionPoint()[1];
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_100331554;

  return dispatch thunk of ExtensionPointManaging.queryExtensionPoint()(v12, v13);
}

uint64_t sub_100331554(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_10033166C, v3, 0);
}

uint64_t sub_10033166C()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v34 = *(v3 + 56);
    v35 = v4;
    v33 = (v3 - 8);
    v32 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[3];
      v35(v0[7], v5, v0[5]);
      ExtensionIdentity.applicationExtensionRecord.getter();
      v8 = type metadata accessor for BundleRecord();
      v9 = *(v8 - 8);
      v10 = *(v9 + 48);
      if (v10(v7, 1, v8) == 1)
      {
        v6 = v0[3];
        (*v33)(v0[7], v0[5]);
        sub_10000BE18(v6, &qword_10083ACF8, &qword_1006D8FC0);
      }

      else
      {
        v11 = v0[3];
        v12 = v0[4];
        BundleRecord.containingBundleRecord.getter();
        v13 = *(v9 + 8);
        v13(v11, v8);
        v14 = v10(v12, 1, v8);
        v15 = v0[7];
        v17 = v0[4];
        v16 = v0[5];
        if (v14 == 1)
        {
          (*v33)(v0[7], v0[5]);
          sub_10000BE18(v17, &qword_10083ACF8, &qword_1006D8FC0);
        }

        else
        {
          v18 = v0[4];
          v31 = BundleRecord.applicationIdentifier.getter();
          v20 = v19;
          (*v33)(v15, v16);
          v13(v17, v8);
          if (v20)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v21 = v32;
            }

            else
            {
              v21 = sub_1003C5110(0, *(v32 + 2) + 1, 1, v32);
            }

            v23 = *(v21 + 2);
            v22 = *(v21 + 3);
            if (v23 >= v22 >> 1)
            {
              v21 = sub_1003C5110((v22 > 1), v23 + 1, 1, v21);
            }

            *(v21 + 2) = v23 + 1;
            v32 = v21;
            v24 = &v21[16 * v23];
            *(v24 + 4) = v31;
            *(v24 + 5) = v20;
          }
        }
      }

      v5 += v34;
      --v2;
    }

    while (v2);
    v25 = v0[16];

    v26 = v32;
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
  }

  v27 = v0[2];
  v0[17] = sub_1006973D4(v26);

  v28 = *sub_10000BA08((v27 + 112), *(v27 + 136));
  v29 = swift_task_alloc();
  v0[18] = v29;
  *v29 = v0;
  v29[1] = sub_1003319B0;

  return sub_10033E1A4();
}

uint64_t sub_1003319B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v10 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[17];
    v6 = v3[2];

    v7 = sub_100331F48;
    v8 = v6;
  }

  else
  {
    v8 = v3[2];
    v7 = sub_100331AD8;
  }

  return _swift_task_switch(v7, v8, 0);
}

void sub_100331AD8()
{
  v54 = v0;
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 136);
    v5 = v4 + 56;
    v51 = *(v1 + 16);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = (v1 + 32 + 16 * v3);
      v8 = *v6;
      v7 = v6[1];
      ++v3;
      if (*(v4 + 16))
      {
        v9 = *(v4 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();
        v11 = -1 << *(v4 + 32);
        v12 = v10 & ~v11;
        if ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (1)
          {
            v14 = (*(v4 + 48) + 16 * v12);
            v15 = *v14 == v8 && v14[1] == v7;
            if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          continue;
        }
      }

      else
      {
      }

LABEL_15:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100172D4C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_100172D4C((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v8;
      v18[5] = v7;
      v2 = v51;
    }

    while (v3 != v2);
  }

  v19 = v50;
  v50[21] = _swiftEmptyArrayStorage;
  v20 = v50[19];
  v21 = v50[17];
  v22 = v50[11];

  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v50[14];
  v27 = v50[11];
  v29 = v50[8];
  v28 = v50[9];
  if (v25)
  {
    v52 = v50[11];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v53 = v31;
    *v30 = 136315138;
    v32 = Array.description.getter();
    v34 = sub_100141FE4(v32, v33, &v53);

    *(v30 + 4) = v34;
    v19 = v50;
    _os_log_impl(&_mh_execute_header, v23, v24, "MobileDocumentProviderRegistrationCleanUpManager will delete the following identifiers: %s", v30, 0xCu);
    sub_10000BB78(v31);

    v26(v52, v29);
  }

  else
  {

    v26(v27, v29);
  }

  v35 = _swiftEmptyArrayStorage[2];
  v19[22] = v35;
  if (v35)
  {
    v19[23] = 0;
    v36 = v19[21];
    v37 = v19[2];
    v38 = *(v36 + 32);
    v19[24] = v38;
    v39 = *(v36 + 40);
    v19[25] = v39;
    v40 = *sub_10000BA08((v37 + 112), *(v37 + 136));

    v41 = swift_task_alloc();
    v19[26] = v41;
    *v41 = v19;
    v41[1] = sub_100332110;

    sub_100341328(v38, v39);
  }

  else
  {

    v43 = v19[12];
    v42 = v19[13];
    v45 = v19[10];
    v44 = v19[11];
    v46 = v19[7];
    v48 = v19[3];
    v47 = v19[4];

    v49 = v19[1];

    v49();
  }
}

uint64_t sub_100331F48()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationCleanUpManager aborting clean up; failed to fetch application installations: %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v10 = *(v0 + 160);
  }

  v11 = *(v0 + 72) + 8;
  (*(v0 + 112))(*(v0 + 96), *(v0 + 64));
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v0 + 56);
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100332110()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1003323AC;
  }

  else
  {
    v6 = *(v2 + 200);
    v7 = *(v2 + 16);

    v5 = sub_100332238;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100332238()
{
  v1 = v0[23] + 1;
  if (v1 == v0[22])
  {
    v2 = v0[21];

    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[7];
    v9 = v0[3];
    v8 = v0[4];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v0[23] = v1;
    v12 = v0[2];
    v13 = v0[21] + 16 * v1;
    v14 = *(v13 + 32);
    v0[24] = v14;
    v15 = *(v13 + 40);
    v0[25] = v15;
    v16 = *sub_10000BA08((v12 + 112), *(v12 + 136));

    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = sub_100332110;

    return sub_100341328(v14, v15);
  }
}

uint64_t sub_1003323AC()
{
  v42 = v0;
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[10];
  defaultLogger()();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  v8 = v0[25];
  if (v6)
  {
    v9 = v0[24];
    v39 = v0[10];
    v40 = v0[14];
    v10 = v0[8];
    v38 = v0[9] + 8;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v11 = 136315394;
    v14 = sub_100141FE4(v9, v8, &v41);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderRegistrationCleanUpManager failed to clean up identifier %s: %@", v11, 0x16u);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v13);

    v40(v39, v10);
  }

  else
  {
    v16 = v0[14];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];
    v20 = v0[25];

    v16(v17, v19);
  }

  v21 = v0[23] + 1;
  if (v21 == v0[22])
  {
    v22 = v0[21];

    v24 = v0[12];
    v23 = v0[13];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[7];
    v29 = v0[3];
    v28 = v0[4];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v0[23] = v21;
    v32 = v0[2];
    v33 = v0[21] + 16 * v21;
    v34 = *(v33 + 32);
    v0[24] = v34;
    v35 = *(v33 + 40);
    v0[25] = v35;
    v36 = *sub_10000BA08((v32 + 112), *(v32 + 136));

    v37 = swift_task_alloc();
    v0[26] = v37;
    *v37 = v0;
    v37[1] = sub_100332110;

    return sub_100341328(v34, v35);
  }
}

uint64_t sub_100332704()
{
  sub_10000BB78((v0 + 112));
  sub_10000BB78((v0 + 152));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100332768(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for DeviceClass();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1003328C0, v1, 0);
}

uint64_t sub_1003328C0()
{
  v58 = v0;
  v1 = *(v0 + 240);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 240);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010070EB90, &v57);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 248) = v10;
  v11 = *(v0 + 152);
  v12 = v11[54];
  sub_10000BA08(v11 + 50, v11[53]);
  if ((dispatch thunk of DeviceInformationProviding.isPhone.getter() & 1) == 0)
  {
    v21 = *(v0 + 200);
    v23 = *(v0 + 168);
    v22 = *(v0 + 176);
    v24 = *(v0 + 160);
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    v25 = v11[54];
    sub_10000BA08(v11 + 50, v11[53]);
    dispatch thunk of DeviceInformationProviding.deviceClass.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v23 + 8))(v22, v24);
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    defaultLogger()();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 192);
    v32 = *(v0 + 200);
    v18 = *(v0 + 184);
    if (v30)
    {
      v56 = *(v0 + 200);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = v34;
      *v33 = 136315138;
      v35 = sub_100141FE4(v27, v26, &v57);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "MobileDocumentProviderRegistrationFlow authStatus: application is running on %s; returning notSupported", v33, 0xCu);
      sub_10000BB78(v34);

      v20 = v56;
    }

    else
    {

      v20 = v32;
    }

LABEL_11:
    v10(v20, v18);
    v36 = *(v0 + 232);
    v37 = *(v0 + 240);
    v39 = *(v0 + 216);
    v38 = *(v0 + 224);
    v41 = *(v0 + 200);
    v40 = *(v0 + 208);
    v42 = *(v0 + 176);
    v43 = *(v0 + 144);
    v44 = enum case for MobileDocumentProviderRegistrationSession.Status.notSupported(_:);
    v45 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
    (*(*(v45 - 8) + 104))(v43, v44, v45);

    v46 = *(v0 + 8);

    return v46();
  }

  sub_1003311DC(*(v0 + 152) + 112, v0 + 16);
  if (*(v0 + 120))
  {
    v13 = *(v0 + 208);
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "MobileDocumentProviderRegistrationFlow authStatus: application does not have application identifier; returning notSupported", v16, 2u);
    }

    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);

    v20 = v17;
    goto LABEL_11;
  }

  v48 = *(v0 + 152);
  v50 = *(v0 + 48);
  v49 = *(v0 + 56);
  *(v0 + 256) = v50;
  *(v0 + 264) = v49;
  v51 = *(v0 + 72);

  sub_10000BB78((v0 + 80));
  v52 = v48[36];
  v53 = v48[37];
  sub_10000BA08(v48 + 33, v52);
  v54 = async function pointer to dispatch thunk of ExtensionPointManaging.isUnelected(for:)[1];
  v55 = swift_task_alloc();
  *(v0 + 272) = v55;
  *v55 = v0;
  v55[1] = sub_100332DD4;

  return dispatch thunk of ExtensionPointManaging.isUnelected(for:)(v50, v49, v52, v53);
}

uint64_t sub_100332DD4(char a1)
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 121) = a1;

  return _swift_task_switch(sub_100332EEC, v3, 0);
}

uint64_t sub_100332EEC()
{
  v40 = v0;
  if (*(v0 + 121) == 1)
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 232);
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 264);
    if (v5)
    {
      v7 = *(v0 + 256);
      v38 = *(v0 + 248);
      v8 = *(v0 + 232);
      v9 = *(v0 + 184);
      v10 = *(v0 + 192);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v11 = 136315138;
      v13 = sub_100141FE4(v7, v6, &v39);

      *(v11 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationFlow authStatus: application is unelected for %s; returning notDetermined", v11, 0xCu);
      sub_10000BB78(v12);

      v38(v8, v9);
    }

    else
    {
      v21 = *(v0 + 248);
      v22 = *(v0 + 232);
      v23 = *(v0 + 184);
      v24 = *(v0 + 192);
      v25 = *(v0 + 264);

      v21(v22, v23);
    }

    v26 = *(v0 + 232);
    v27 = *(v0 + 240);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 176);
    v33 = *(v0 + 144);
    v34 = enum case for MobileDocumentProviderRegistrationSession.Status.notDetermined(_:);
    v35 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
    (*(*(v35 - 8) + 104))(v33, v34, v35);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v14 = *(v0 + 152);
    v15 = v14[36];
    v16 = v14[37];
    sub_10000BA08(v14 + 33, v15);
    v17 = async function pointer to dispatch thunk of ExtensionPointManaging.isEnabled(for:)[1];
    v18 = swift_task_alloc();
    *(v0 + 280) = v18;
    *v18 = v0;
    v18[1] = sub_1003331E8;
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);

    return dispatch thunk of ExtensionPointManaging.isEnabled(for:)(v20, v19, v15, v16);
  }
}

uint64_t sub_1003331E8(char a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 122) = a1;

  return _swift_task_switch(sub_100333300, v3, 0);
}

uint64_t sub_100333300()
{
  v52 = v0;
  v1 = *(v0 + 264);
  if (*(v0 + 122) == 1)
  {
    v2 = *(v0 + 224);
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 264);
    if (v5)
    {
      v7 = *(v0 + 256);
      v49 = *(v0 + 248);
      v8 = *(v0 + 224);
      v9 = *(v0 + 184);
      v10 = *(v0 + 192);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = sub_100141FE4(v7, v6, &v51);

      *(v11 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationFlow authStatus: application is enabled for %s; returning authorized", v11, 0xCu);
      sub_10000BB78(v12);

      v49(v8, v9);
    }

    else
    {
      v26 = *(v0 + 248);
      v27 = *(v0 + 224);
      v28 = *(v0 + 184);
      v29 = *(v0 + 192);
      v30 = *(v0 + 264);

      v26(v27, v28);
    }

    v31 = &enum case for MobileDocumentProviderRegistrationSession.Status.authorized(_:);
  }

  else
  {
    v14 = *(v0 + 216);
    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 264);
    if (v17)
    {
      v19 = *(v0 + 256);
      v50 = *(v0 + 248);
      v20 = *(v0 + 216);
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51 = v24;
      *v23 = 136315138;
      v25 = sub_100141FE4(v19, v18, &v51);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "MobileDocumentProviderRegistrationFlow authStatus: application is disabled for %s; returning notAuthorized", v23, 0xCu);
      sub_10000BB78(v24);

      v50(v20, v21);
    }

    else
    {
      v32 = *(v0 + 248);
      v33 = *(v0 + 216);
      v34 = *(v0 + 184);
      v35 = *(v0 + 192);
      v36 = *(v0 + 264);

      v32(v33, v34);
    }

    v31 = &enum case for MobileDocumentProviderRegistrationSession.Status.notAuthorized(_:);
  }

  v37 = *(v0 + 232);
  v38 = *(v0 + 240);
  v40 = *(v0 + 216);
  v39 = *(v0 + 224);
  v42 = *(v0 + 200);
  v41 = *(v0 + 208);
  v43 = *(v0 + 176);
  v44 = *(v0 + 144);
  v45 = *v31;
  v46 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  (*(*(v46 - 8) + 104))(v44, v45, v46);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1003336A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WalletSettingsAnalyticsReporter();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = WalletSettingsAnalyticsReporter.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for WalletSettingsAnalyticsReporter;
  *a1 = result;
  return result;
}

uint64_t sub_100333700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentRegistration();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v17 = *(v16 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10033391C, v3, 0);
}

uint64_t sub_10033391C()
{
  v50 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  defaultLogger()();
  (*(v3 + 16))(v2, v6, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  if (v9)
  {
    v46 = *(v0 + 160);
    v47 = *(v0 + 144);
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);
    v41 = *(v0 + 80);
    v43 = *(v0 + 24);
    v44 = *(v0 + 32);
    v45 = v8;
    v18 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010070EB70, v49);
    *(v18 + 12) = 2080;
    log = v7;
    MobileDocumentProviderRegistrationRequest.registration.getter();
    v19 = MobileDocumentRegistration.documentIdentifier.getter();
    v21 = v20;
    (*(v17 + 8))(v16, v41);
    (*(v14 + 8))(v13, v15);
    v22 = sub_100141FE4(v19, v21, v49);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_100141FE4(v43, v44, v49);
    _os_log_impl(&_mh_execute_header, log, v45, "MobileDocumentProviderRegistrationFlow %s document with document identifier %s and application identifier %s", v18, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v46, v47);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  sub_10033AB98();
  v23 = *(v0 + 104);
  v24 = *(v0 + 88);
  v48 = *(v0 + 80);
  v25 = *(v0 + 16);
  sub_100007224(&qword_1008416F0, &qword_1006DE1A8);
  v26 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  *(v0 + 168) = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = *(v27 + 80);
  *(v0 + 264) = v29;
  v30 = (v29 + 32) & ~v29;
  v31 = swift_allocObject();
  *(v0 + 176) = v31;
  *(v31 + 16) = xmmword_1006BF740;
  v32 = v31 + v30;
  v33 = *(v27 + 104);
  v33(v32, enum case for MobileDocumentProviderRegistrationSession.Status.authorized(_:), v26);
  v33(v32 + v28, enum case for MobileDocumentProviderRegistrationSession.Status.notDetermined(_:), v26);
  MobileDocumentProviderRegistrationRequest.registration.getter();
  v34 = MobileDocumentRegistration.documentType.getter();
  v36 = v35;
  *(v0 + 184) = v35;
  v37 = *(v24 + 8);
  *(v0 + 192) = v37;
  *(v0 + 200) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v23, v48);
  v38 = swift_task_alloc();
  *(v0 + 208) = v38;
  *v38 = v0;
  v38[1] = sub_100333DD0;
  v39 = *(v0 + 40);

  return sub_100337B90(v31, v34, v36);
}

uint64_t sub_100333DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(v2 + 216) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  v7 = *(v2 + 264);
  v8 = *(v2 + 168);
  if (v0)
  {
    v9 = *(v2 + 40);
    v10 = *(v2 + 184);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return _swift_task_switch(sub_10033478C, v9, 0);
  }

  else
  {
    v11 = *(v2 + 176);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v12 = swift_task_alloc();
    *(v2 + 224) = v12;
    *v12 = v4;
    v12[1] = sub_100334018;
    v13 = *(v2 + 40);

    return sub_1003385A0();
  }
}

uint64_t sub_100334018()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[20];
    v6 = v2[17];
    v8 = v2[13];
    v7 = v2[14];
    v9 = v2[12];
    v10 = v2[9];
    v11 = v2[6];

    v12 = *(v4 + 8);

    return v12();
  }

  else
  {
    v14 = v2[5];

    return _swift_task_switch(sub_1003341B8, v14, 0);
  }
}

uint64_t sub_1003341B8()
{
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[2];
  static DaemonSignposts.WebPresentment.addRegistration.getter();
  DIPSignpost.init(_:)();
  v6 = sub_10000BA08((v4 + 224), *(v4 + 248));
  MobileDocumentProviderRegistrationRequest.registration.getter();
  v7 = *v6;
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_1003342A0;
  v9 = v0[12];
  v10 = v0[3];
  v11 = v0[4];

  return sub_10033B5A4(v9, v10, v11);
}

uint64_t sub_1003342A0()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[25];
  v6 = v2[24];
  v7 = v2[12];
  v8 = v2[10];
  if (v0)
  {
    v9 = v2[5];
    v6(v7, v8);

    return _swift_task_switch(sub_1003345A8, v9, 0);
  }

  else
  {
    v6(v7, v8);
    v10 = swift_task_alloc();
    v2[31] = v10;
    *v10 = v4;
    v10[1] = sub_10033447C;
    v11 = v2[4];
    v12 = v2[5];
    v13 = v2[3];

    return sub_1003373D0(v13, v11);
  }
}

uint64_t sub_10033447C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10033484C;
  }

  else
  {
    v6 = sub_100334698;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003345A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[30];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100334698()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10033478C()
{
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10033484C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[32];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10033493C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderUnregisterRequest();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100334AE4, v3, 0);
}

uint64_t sub_100334AE4()
{
  v38 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  defaultLogger()();
  (*(v3 + 16))(v2, v6, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  if (v9)
  {
    v33 = *(v0 + 24);
    v34 = *(v0 + 32);
    v36 = *(v0 + 104);
    v16 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010070EB50, v37);
    *(v16 + 12) = 2080;
    v17 = MobileDocumentProviderUnregisterRequest.documentIdentifier.getter();
    v35 = v10;
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = sub_100141FE4(v17, v19, v37);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100141FE4(v33, v34, v37);
    _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentProviderRegistrationFlow %s document identifier %s and application identifier %s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v11 + 8))(v35, v36);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v21 = *(v0 + 72);
  v22 = *(v0 + 48);
  static DaemonSignposts.WebPresentment.removeRegistration.getter();
  DIPSignpost.init(_:)();
  sub_10033AB98();
  sub_100007224(&qword_1008416F0, &qword_1006DE1A8);
  v23 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  *(v0 + 128) = v23;
  v24 = *(v23 - 8);
  v25 = v24;
  *(v0 + 136) = v24;
  v26 = *(v24 + 72);
  v27 = *(v25 + 80);
  *(v0 + 208) = v27;
  v28 = (v27 + 32) & ~v27;
  v29 = swift_allocObject();
  *(v0 + 144) = v29;
  *(v29 + 16) = xmmword_1006BF520;
  (*(v25 + 104))(v29 + v28, enum case for MobileDocumentProviderRegistrationSession.Status.authorized(_:), v23);
  v30 = swift_task_alloc();
  *(v0 + 152) = v30;
  *v30 = v0;
  v30[1] = sub_100334F14;
  v31 = *(v0 + 40);

  return sub_100337B90(v29, 0, 0);
}

uint64_t sub_100334F14()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v13 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1003355B0;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);
    v8 = *(v2 + 208);
    v9 = *(v2 + 128);
    v10 = *(v2 + 40);
    v11 = (v8 + 32) & ~v8;
    swift_setDeallocating();
    (*(v7 + 8))(v6 + v11, v9);
    swift_deallocClassInstance();
    v5 = sub_100335088;
    v4 = v10;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100335088()
{
  v1 = v0[2];
  v2 = sub_10000BA08((v0[5] + 224), *(v0[5] + 248));
  v3 = MobileDocumentProviderUnregisterRequest.documentIdentifier.getter();
  v5 = v4;
  v0[21] = v4;
  v6 = *v2;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_100335154;
  v8 = v0[3];
  v9 = v0[4];

  return sub_10033FF40(v3, v5, v8, v9);
}

uint64_t sub_100335154()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *v1;
  v4[23] = v0;

  if (v0)
  {
    v5 = v4[5];

    return _swift_task_switch(sub_10033541C, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[24] = v6;
    *v6 = v4;
    v6[1] = sub_1003352F0;
    v7 = v4[4];
    v8 = v4[5];
    v9 = v4[3];

    return sub_1003373D0(v9, v7);
  }
}

uint64_t sub_1003352F0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1003356C4;
  }

  else
  {
    v6 = sub_1003354EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10033541C()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003354EC()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003355B0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = (*(v0 + 208) + 32) & ~*(v0 + 208);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();
  v5 = *(v0 + 160);
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v9 + 8))(v8, v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1003356C4()
{
  v1 = v0[25];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100335794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10033593C, v3, 0);
}

uint64_t sub_10033593C()
{
  v25 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);
  if (v5)
  {
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010070EAF0, v24);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100141FE4(v10, v9, v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationFlow %s for application identifier %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v6, v8);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);
  static DaemonSignposts.WebPresentment.getRegistrations.getter();
  DIPSignpost.init(_:)();
  sub_10033AB98();
  sub_100007224(&qword_1008416F0, &qword_1006DE1A8);
  v14 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  *(v0 + 128) = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  *(v0 + 136) = v15;
  v17 = *(v15 + 72);
  v18 = *(v16 + 80);
  *(v0 + 200) = v18;
  v19 = (v18 + 32) & ~v18;
  v20 = swift_allocObject();
  *(v0 + 144) = v20;
  *(v20 + 16) = xmmword_1006BF520;
  (*(v16 + 104))(v20 + v19, enum case for MobileDocumentProviderRegistrationSession.Status.authorized(_:), v14);
  v21 = swift_task_alloc();
  *(v0 + 152) = v21;
  *v21 = v0;
  v21[1] = sub_100335CBC;
  v22 = *(v0 + 40);

  return sub_100337B90(v20, 0, 0);
}

uint64_t sub_100335CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v13 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_100336358;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);
    v8 = *(v2 + 200);
    v9 = *(v2 + 128);
    v10 = *(v2 + 40);
    v11 = (v8 + 32) & ~v8;
    swift_setDeallocating();
    (*(v7 + 8))(v6 + v11, v9);
    swift_deallocClassInstance();
    v5 = sub_100335E30;
    v4 = v10;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100335E30()
{
  v1 = *sub_10000BA08((v0[5] + 224), *(v0[5] + 248));
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_100335EDC;
  v3 = v0[8];
  v4 = v0[3];
  v5 = v0[4];

  return sub_10033C418(v3, v4, v5);
}

uint64_t sub_100335EDC()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[5];

    return _swift_task_switch(sub_10033617C, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v3;
    v5[1] = sub_100336050;
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[3];

    return sub_1003373D0(v8, v6);
  }
}

uint64_t sub_100336050()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10033646C;
  }

  else
  {
    v6 = sub_10033624C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10033617C()
{
  v1 = v0[22];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10033624C()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v11 = v0[9];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[2];
  MobileDocumentProviderRegisteredApplication.registrations.getter();
  MobileDocumentProviderQueryRegistrationsResponse.init(registrations:)();
  (*(v5 + 8))(v6, v7);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100336358()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = (*(v0 + 200) + 32) & ~*(v0 + 200);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();
  v5 = *(v0 + 160);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v8 + 8))(v7, v9);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10033646C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[24];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100336554()
{
  v1[17] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100336670, v0, 0);
}

uint64_t sub_100336670()
{
  v17 = v0;
  v1 = *(v0 + 184);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  if (isInternalBuild()())
  {
    sub_1003311DC(*(v0 + 136) + 112, v0 + 16);
    if (*(v0 + 120))
    {
      if (*(v0 + 120) != 1 && (*(v0 + 16) & 1) != 0)
      {
        *(v0 + 192) = *sub_10000BA08((*(v0 + 136) + 224), *(*(v0 + 136) + 248));

        return _swift_task_switch(sub_100336990, 0, 0);
      }
    }

    else
    {
      v10 = *(v0 + 56);

      v11 = *(v0 + 72);

      sub_10000BB78((v0 + 80));
    }
  }

  (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), *(v0 + 144));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v12 = *(v0 + 184);
  v13 = *(v0 + 160);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100336990()
{
  v1 = *(v0 + 192);
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  v6 = sub_100007224(&qword_1008416E8, &qword_1006DE1A0);
  *v5 = v0;
  v5[1] = sub_100336A80;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 128, sub_10033E964, 0, v6, v2, v3);
}

uint64_t sub_100336A80()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100336C0C;
  }

  else
  {
    v3 = sub_100336B94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100336B94()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100336C0C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100336C7C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a2;
  *(v4 + 121) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 152) = v5;
  v6 = *(v5 - 8);
  *(v4 + 160) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v4 + 176) = v8;
  v9 = *(v8 - 8);
  *(v4 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100336DA0, v3, 0);
}

uint64_t sub_100336DA0()
{
  v27 = v0;
  v1 = *(v0 + 192);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 176);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070EA60, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  sub_1003311DC(*(v0 + 144) + 112, v0 + 16);
  if (*(v0 + 120) == 1)
  {
    v10 = *(v0 + 144);
    if (*(v0 + 121) == 1)
    {
      v11 = *sub_10000BA08(v10 + 45, v10[48]);
      v12 = swift_task_alloc();
      *(v0 + 200) = v12;
      *v12 = v0;
      v12[1] = sub_100337168;
      v14 = *(v0 + 128);
      v13 = *(v0 + 136);

      return sub_100323814(v14, v13);
    }

    else
    {
      v22 = *sub_10000BA08(v10 + 28, v10[31]);
      v23 = swift_task_alloc();
      *(v0 + 208) = v23;
      *v23 = v0;
      v23[1] = sub_10033729C;
      v25 = *(v0 + 128);
      v24 = *(v0 + 136);

      return sub_100341328(v25, v24);
    }
  }

  else
  {
    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
    v18 = *(v0 + 152);
    sub_10033A9D0(v0 + 16);
    (*(v17 + 104))(v16, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v18);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = *(v0 + 192);
    v20 = *(v0 + 168);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100337168()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v7 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 168);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10033729C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v7 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 168);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1003373D0(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_100337494, v2, 0);
}

uint64_t sub_100337494()
{
  v1 = *sub_10000BA08((v0[4] + 360), *(v0[4] + 384));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10033753C;
  v4 = v0[2];
  v3 = v0[3];

  return sub_100321B6C(v4, v3);
}

uint64_t sub_10033753C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_100337888;
  }

  else
  {
    v4[10] = a1;
    v8 = sub_100337678;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100337678()
{
  v1 = *sub_10000BA08((v0[4] + 224), *(v0[4] + 248));
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100337724;
  v3 = v0[10];
  v4 = v0[2];
  v5 = v0[3];

  return sub_100342338(v3, v4, v5);
}

uint64_t sub_100337724()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[12] = v0;

  if (v0)
  {
    v5 = v4[4];

    return _swift_task_switch(sub_100337A0C, v5, 0);
  }

  else
  {
    v6 = v4[7];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_100337888()
{
  v1 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100337A0C()
{
  v1 = v0[12];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100337B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v5 = type metadata accessor for MobileDocumentProviderRegistrationSession.Status();
  v4[48] = v5;
  v6 = *(v5 - 8);
  v4[49] = v6;
  v7 = *(v6 + 64) + 15;
  v4[50] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[51] = v8;
  v9 = *(v8 - 8);
  v4[52] = v9;
  v10 = *(v9 + 64) + 15;
  v4[53] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[54] = v11;
  v12 = *(v11 - 8);
  v4[55] = v12;
  v13 = *(v12 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_100337D18, v3, 0);
}

uint64_t sub_100337D18()
{
  v1 = *(v0 + 376);
  if (isInternalBuild()())
  {
    sub_1003311DC(v1 + 112, v0 + 240);
    if (*(v0 + 344))
    {
      if (*(v0 + 344) != 1 && (*(v0 + 240) & 1) != 0)
      {
        v2 = *(v0 + 456);
        defaultLogger()();
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationFlow calling process is has privileged testing entitlement present; proceeding", v5, 2u);
        }

        v6 = *(v0 + 448);
        v7 = *(v0 + 424);
        v8 = *(v0 + 400);
        (*(*(v0 + 440) + 8))(*(v0 + 456), *(v0 + 432));

        v9 = *(v0 + 8);
        goto LABEL_15;
      }
    }

    else
    {
      v10 = *(v0 + 280);

      v11 = *(v0 + 296);

      sub_10000BB78((v0 + 304));
    }
  }

  if (*(v0 + 368))
  {
    v12 = *(v0 + 360);
    if ((sub_10033111C() & 1) == 0)
    {
      (*(*(v0 + 416) + 104))(*(v0 + 424), enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), *(v0 + 408));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v18 = *(v0 + 448);
      v17 = *(v0 + 456);
      v19 = *(v0 + 424);
      v20 = *(v0 + 400);

      v9 = *(v0 + 8);
LABEL_15:

      return v9();
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 464) = v13;
  *v13 = v0;
  v13[1] = sub_100338068;
  v14 = *(v0 + 400);
  v15 = *(v0 + 376);

  return sub_100332768(v14);
}

uint64_t sub_100338068()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return _swift_task_switch(sub_100338178, v2, 0);
}

uint64_t sub_100338178()
{
  sub_1003311DC(*(v0 + 376) + 112, v0 + 16);
  if (*(v0 + 120))
  {
    sub_10033A9D0(v0 + 16);
LABEL_7:
    sub_1003311DC(*(v0 + 376) + 112, v0 + 128);
    v18 = *(v0 + 416);
    v17 = *(v0 + 424);
    v19 = *(v0 + 400);
    v20 = *(v0 + 408);
    v21 = *(v0 + 384);
    v22 = *(v0 + 392);
    if (*(v0 + 232))
    {
      sub_10033A9D0(v0 + 128);
      (*(v18 + 104))(v17, enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:), v20);
    }

    else
    {
      v23 = *(v0 + 168);

      v24 = *(v0 + 184);

      sub_10000BB78((v0 + 192));
      (*(v18 + 104))(v17, enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), v20);
    }

    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v22 + 8))(v19, v21);
    v26 = *(v0 + 448);
    v25 = *(v0 + 456);
    v27 = *(v0 + 424);
    v28 = *(v0 + 400);

    v16 = *(v0 + 8);
    goto LABEL_11;
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 352);
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_10000BB78((v0 + 80));
  if (!sub_10032DB10(v1, v2))
  {
    goto LABEL_7;
  }

  v5 = *(v0 + 448);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 440);
  v9 = *(v0 + 448);
  v11 = *(v0 + 432);
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentProviderRegistrationFlow calling process is an authorized extension app; proceeding", v12, 2u);
  }

  (*(v10 + 8))(v9, v11);
  v14 = *(v0 + 448);
  v13 = *(v0 + 456);
  v15 = *(v0 + 424);
  (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

  v16 = *(v0 + 8);
LABEL_11:

  return v16();
}

uint64_t sub_1003385A0()
{
  v1[38] = v0;
  v2 = type metadata accessor for DIPError();
  v1[39] = v2;
  v3 = *(v2 - 8);
  v1[40] = v3;
  v4 = *(v3 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[43] = v5;
  v6 = *(v5 - 8);
  v1[44] = v6;
  v7 = *(v6 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v8 = type metadata accessor for WalletSettingsAnalyticsReporter.IssuerType();
  v1[47] = v8;
  v9 = *(v8 - 8);
  v1[48] = v9;
  v10 = *(v9 + 64) + 15;
  v1[49] = swift_task_alloc();
  v11 = type metadata accessor for WalletSettingsAnalyticsReporter.ReferralSource();
  v1[50] = v11;
  v12 = *(v11 - 8);
  v1[51] = v12;
  v13 = *(v12 + 64) + 15;
  v1[52] = swift_task_alloc();
  v14 = type metadata accessor for WalletSettingsAnalyticsReporter.EventType();
  v1[53] = v14;
  v15 = *(v14 - 8);
  v1[54] = v15;
  v16 = *(v15 + 64) + 15;
  v1[55] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v1[56] = v17;
  v18 = *(v17 - 8);
  v1[57] = v18;
  v19 = *(v18 + 64) + 15;
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();

  return _swift_task_switch(sub_100338868, v0, 0);
}

uint64_t sub_100338868()
{
  sub_1003311DC(*(v0 + 304) + 112, v0 + 16);
  if (*(v0 + 120))
  {
    v1 = *(v0 + 464);
    sub_10033A9D0(v0 + 16);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 456);
    v5 = *(v0 + 464);
    v7 = *(v0 + 448);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationFlow calling process is not extension app; skipping", v8, 2u);
    }

    (*(v6 + 8))(v5, v7);
    v10 = *(v0 + 480);
    v9 = *(v0 + 488);
    v12 = *(v0 + 464);
    v11 = *(v0 + 472);
    v13 = *(v0 + 440);
    v14 = *(v0 + 416);
    v15 = *(v0 + 392);
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 336);
    v29 = *(v0 + 328);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 304);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    *(v0 + 496) = v23;
    *(v0 + 504) = v22;
    v24 = *(v0 + 72);
    *(v0 + 512) = *(v0 + 64);
    *(v0 + 520) = v24;
    sub_10000BB78((v0 + 80));
    v25 = v21[36];
    v26 = v21[37];
    sub_10000BA08(v21 + 33, v25);
    v27 = async function pointer to dispatch thunk of ExtensionPointManaging.isUnelected(for:)[1];
    v28 = swift_task_alloc();
    *(v0 + 528) = v28;
    *v28 = v0;
    v28[1] = sub_100338AD0;

    return dispatch thunk of ExtensionPointManaging.isUnelected(for:)(v23, v22, v25, v26);
  }
}

uint64_t sub_100338AD0(char a1)
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 121) = a1;

  return _swift_task_switch(sub_100338BE8, v3, 0);
}

uint64_t sub_100338BE8()
{
  v86 = v0;
  if (*(v0 + 121) == 1)
  {
    sub_1003311DC(*(v0 + 304) + 112, v0 + 128);
    if (!*(v0 + 232))
    {
      v80 = *(v0 + 128);
      v78 = *(v0 + 132);
      v72 = *(v0 + 140);
      v70 = *(v0 + 144);
      v68 = *(v0 + 148);
      v74 = *(v0 + 136);
      v76 = *(v0 + 152);
      v83 = *(v0 + 156);
      v31 = *(v0 + 168);

      v32 = *(v0 + 184);

      sub_10000BB78((v0 + 192));
      goto LABEL_12;
    }

    if (*(v0 + 232) == 1)
    {
      v79 = *(v0 + 128);
      v77 = *(v0 + 132);
      v71 = *(v0 + 140);
      v69 = *(v0 + 144);
      v67 = *(v0 + 148);
      v73 = *(v0 + 136);
      v75 = *(v0 + 152);
      v81 = *(v0 + 156);
LABEL_12:
      v33 = *(v0 + 488);
      defaultLogger()();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Presenting the web presentment provider opt in alert with process visibility monitor", v36, 2u);
      }

      v37 = *(v0 + 520);
      v38 = *(v0 + 504);
      v39 = *(v0 + 512);
      v40 = *(v0 + 488);
      v41 = *(v0 + 496);
      v42 = *(v0 + 448);
      v43 = *(v0 + 456);
      v44 = *(v0 + 304);

      (*(v43 + 8))(v40, v42);
      v46 = v44[58];
      v45 = v44[59];
      sub_10000BA08(v44 + 55, v46);
      sub_10033AA24(&qword_1008416E0, v47, type metadata accessor for MobileDocumentProviderRegistrationFlow);
      v48 = swift_allocObject();
      *(v0 + 536) = v48;
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v44;
      v48[5] = v41;
      v48[6] = v38;
      v48[7] = v39;
      v48[8] = v37;
      v49 = _s13CoreIDVShared27ProcessVisibilityMonitoringPAAE014withForegroundC7Monitor10auditToken9isolation9operationqd__So0I8_token_ta_ScA_pSgYiqd__yYaYbKYActYaKs8SendableRd__lFTu[1];

      v50 = swift_task_alloc();
      *(v0 + 544) = v50;
      *v50 = v0;
      v50[1] = sub_10033927C;
      v91 = v45;
      v89 = v46;
      v90 = &type metadata for () + 8;
      v88 = v48;

      return __s13CoreIDVShared27ProcessVisibilityMonitoringPAAE014withForegroundC7Monitor10auditToken9isolation9operationqd__So0I8_token_ta_ScA_pSgYiqd__yYaYbKYActYaKs8SendableRd__lF();
    }

    v51 = *(v0 + 480);
    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Presenting the web presentment provider opt in alert", v54, 2u);
    }

    v55 = *(v0 + 480);
    v56 = *(v0 + 448);
    v57 = *(v0 + 456);
    v58 = *(v0 + 304);

    (*(v57 + 8))(v55, v56);
    v60 = *(v58 + 344);
    v59 = *(v58 + 352);
    v84 = (*(v59 + 8) + **(v59 + 8));
    v61 = *(*(v59 + 8) + 4);
    v62 = swift_task_alloc();
    *(v0 + 560) = v62;
    *v62 = v0;
    v62[1] = sub_100339494;
    v63 = *(v0 + 520);
    v64 = *(v0 + 504);
    v65 = *(v0 + 512);
    v66 = *(v0 + 496);

    return v84(v66, v64, v65, v63, v60, v59);
  }

  else
  {
    v1 = *(v0 + 520);
    v2 = *(v0 + 504);
    v3 = *(v0 + 472);

    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 504);
    if (v6)
    {
      v8 = *(v0 + 496);
      v9 = *(v0 + 472);
      v10 = *(v0 + 448);
      v11 = *(v0 + 456);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v85 = v13;
      *v12 = 136315138;
      v14 = sub_100141FE4(v8, v7, &v85);

      *(v12 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderRegistrationFlow user has already made an election for %s", v12, 0xCu);
      sub_10000BB78(v13);

      (*(v11 + 8))(v9, v10);
    }

    else
    {
      v15 = *(v0 + 472);
      v16 = *(v0 + 448);
      v17 = *(v0 + 456);
      v18 = *(v0 + 504);

      (*(v17 + 8))(v15, v16);
    }

    v20 = *(v0 + 480);
    v19 = *(v0 + 488);
    v22 = *(v0 + 464);
    v21 = *(v0 + 472);
    v23 = *(v0 + 440);
    v24 = *(v0 + 416);
    v25 = *(v0 + 392);
    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v28 = *(v0 + 336);
    v82 = *(v0 + 328);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_10033927C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  v2[69] = v0;

  v5 = v2[67];
  if (v0)
  {
    v6 = v2[63];
    v7 = v2[38];

    v8 = sub_10033A22C;
    v9 = v7;
  }

  else
  {
    v10 = v2[38];

    v8 = sub_1003393D4;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1003393D4()
{
  v1 = v0[38];
  v2 = v1[36];
  v3 = v1[37];
  sub_10000BA08(v1 + 33, v2);
  v4 = async function pointer to dispatch thunk of ExtensionPointManaging.isEnabled(for:)[1];
  v5 = swift_task_alloc();
  v0[72] = v5;
  *v5 = v0;
  v5[1] = sub_1003395E4;
  v7 = v0[62];
  v6 = v0[63];

  return dispatch thunk of ExtensionPointManaging.isEnabled(for:)(v7, v6, v2, v3);
}

uint64_t sub_100339494()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  v2[71] = v0;

  v5 = v2[65];
  if (v0)
  {
    v6 = v2[63];
    v7 = v2[38];

    v8 = sub_100339D5C;
  }

  else
  {
    v7 = v2[38];

    v8 = sub_1003393D4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003395E4(char a1)
{
  v2 = *(*v1 + 576);
  v3 = *(*v1 + 504);
  v4 = *(*v1 + 304);
  v6 = *v1;
  *(*v1 + 122) = a1;

  return _swift_task_switch(sub_100339718, v4, 0);
}

uint64_t sub_100339718()
{
  v1 = *(v0 + 122);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);
  v8 = *(v0 + 384);
  v18 = *(v0 + 376);
  v19 = *(v0 + 392);
  v9 = *(v0 + 304);
  v10 = *(v9 + 488);
  (*(v9 + 480))();
  v20 = *(v0 + 264);
  v21 = *(v0 + 272);
  sub_10000BA08((v0 + 240), v20);
  v11 = &enum case for WalletSettingsAnalyticsReporter.EventType.enable(_:);
  if (!v1)
  {
    v11 = &enum case for WalletSettingsAnalyticsReporter.EventType.disable(_:);
  }

  (*(v3 + 104))(v2, *v11, v4);
  (*(v7 + 104))(v5, enum case for WalletSettingsAnalyticsReporter.ReferralSource.thirdPartyApp(_:), v6);
  (*(v8 + 104))(v19, enum case for WalletSettingsAnalyticsReporter.IssuerType.thirdParty(_:), v18);
  v12 = async function pointer to dispatch thunk of WalletSettingsAnalyticsReporting.sendWalletSettingsToggled(eventType:referralSource:issuerType:)[1];
  v13 = swift_task_alloc();
  *(v0 + 584) = v13;
  *v13 = v0;
  v13[1] = sub_100339898;
  v14 = *(v0 + 440);
  v15 = *(v0 + 416);
  v16 = *(v0 + 392);

  return dispatch thunk of WalletSettingsAnalyticsReporting.sendWalletSettingsToggled(eventType:referralSource:issuerType:)(v14, v15, v16, v20, v21);
}

uint64_t sub_100339898()
{
  v1 = *(*v0 + 584);
  v12 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);
  v4 = *(*v0 + 416);
  v5 = *(*v0 + 408);
  v6 = *(*v0 + 400);
  v7 = *(*v0 + 392);
  v8 = *(*v0 + 384);
  v9 = *(*v0 + 376);
  v10 = *(*v0 + 304);
  v13 = *v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v12, v3);

  return _swift_task_switch(sub_100339AC8, v10, 0);
}

uint64_t sub_100339AC8()
{
  if (*(v0 + 122) == 1)
  {
    sub_10000BB78((v0 + 240));
    v2 = *(v0 + 480);
    v1 = *(v0 + 488);
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);
    v5 = *(v0 + 440);
    v6 = *(v0 + 416);
    v7 = *(v0 + 392);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 336);
    v25 = *(v0 + 328);
  }

  else
  {
    v12 = *(v0 + 312);
    (*(*(v0 + 352) + 104))(*(v0 + 368), enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), *(v0 + 344));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BB78((v0 + 240));
    v14 = *(v0 + 480);
    v13 = *(v0 + 488);
    v16 = *(v0 + 464);
    v15 = *(v0 + 472);
    v17 = *(v0 + 440);
    v18 = *(v0 + 416);
    v19 = *(v0 + 392);
    v21 = *(v0 + 360);
    v20 = *(v0 + 368);
    v22 = *(v0 + 336);
    v24 = *(v0 + 328);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100339D5C()
{
  v1 = v0[42];
  v2 = v0[39];
  v0[35] = v0[71];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v4 = v0[45];
    v3 = v0[46];
    v5 = v0[43];
    v6 = v0[44];
    (*(v0[40] + 32))(v0[41], v0[42], v0[39]);
    DIPError.code.getter();
    v7 = *(v6 + 104);
    v7(v4, enum case for DIPError.Code.processNotVisible(_:), v5);
    sub_10033AA24(&qword_10083B4D0, 255, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
    if (v0[36] == v0[37])
    {
      v9 = v0[46];
      v10 = v0[43];
      v12 = v0[40];
      v11 = v0[41];
      v13 = v0[39];

      sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
      swift_allocError();
      (*(v12 + 16))(v14, v11, v13);
      v7(v9, enum case for DIPError.Code.internalError(_:), v10);
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v12 + 8))(v11, v13);
      v15 = v0[35];
      goto LABEL_6;
    }

    (*(v0[40] + 8))(v0[41], v0[39]);
  }

  v16 = v0[46];
  v17 = v0[43];
  v18 = v0[44];
  v19 = v0[39];
  v20 = v0[35];

  (*(v18 + 104))(v16, enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), v17);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_6:

  v22 = v0[60];
  v21 = v0[61];
  v24 = v0[58];
  v23 = v0[59];
  v25 = v0[55];
  v26 = v0[52];
  v27 = v0[49];
  v29 = v0[45];
  v28 = v0[46];
  v30 = v0[42];
  v33 = v0[41];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10033A22C()
{
  v1 = v0[42];
  v2 = v0[39];
  v0[35] = v0[69];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v4 = v0[45];
    v3 = v0[46];
    v5 = v0[43];
    v6 = v0[44];
    (*(v0[40] + 32))(v0[41], v0[42], v0[39]);
    DIPError.code.getter();
    v7 = *(v6 + 104);
    v7(v4, enum case for DIPError.Code.processNotVisible(_:), v5);
    sub_10033AA24(&qword_10083B4D0, 255, &type metadata accessor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
    if (v0[36] == v0[37])
    {
      v9 = v0[46];
      v10 = v0[43];
      v12 = v0[40];
      v11 = v0[41];
      v13 = v0[39];

      sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
      swift_allocError();
      (*(v12 + 16))(v14, v11, v13);
      v7(v9, enum case for DIPError.Code.internalError(_:), v10);
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v12 + 8))(v11, v13);
      v15 = v0[35];
      goto LABEL_6;
    }

    (*(v0[40] + 8))(v0[41], v0[39]);
  }

  v16 = v0[46];
  v17 = v0[43];
  v18 = v0[44];
  v19 = v0[39];
  v20 = v0[35];

  (*(v18 + 104))(v16, enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:), v17);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_6:

  v22 = v0[60];
  v21 = v0[61];
  v24 = v0[58];
  v23 = v0[59];
  v25 = v0[55];
  v26 = v0[52];
  v27 = v0[49];
  v29 = v0[45];
  v28 = v0[46];
  v30 = v0[42];
  v33 = v0[41];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10033A6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10033A724, 0, 0);
}

uint64_t sub_10033A724()
{
  v1 = v0[2];
  v3 = *(v1 + 344);
  v2 = *(v1 + 352);
  v4 = *(v2 + 8);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10033A848;
  v7 = v0[5];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];

  return v12(v10, v9, v7, v8, v3, v2);
}

uint64_t sub_10033A848()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10033A93C()
{
  sub_10033A9D0((v0 + 14));
  sub_10000BB78(v0 + 28);
  sub_10000BB78(v0 + 33);
  sub_10000BB78(v0 + 38);
  sub_10000BB78(v0 + 45);
  sub_10000BB78(v0 + 50);
  sub_10000BB78(v0 + 55);
  v1 = v0[61];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10033AA24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10033AA6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10033AABC(uint64_t a1)
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
  v11[1] = sub_100027B9C;

  return sub_10033A6FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10033AB98()
{
  v0 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.mobileDocumentProviderRegistrationFlowTestErrorCode.getter();
  v17 = NSUserDefaults.internalInt(forKey:)(v13);
  is_nil = v17.is_nil;

  if (!is_nil)
  {
    DIPError.Code.init(rawValue:)();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      return sub_1000451E8(v3);
    }

    else
    {
      (*(v5 + 32))(v11, v3, v4);
      (*(v5 + 16))(v9, v11, v4);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10033AA24(&qword_100834130, 255, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v5 + 8))(v11, v4);
    }
  }

  return result;
}

void *sub_10033AE8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_1008417A0, &qword_1006DE270);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v81 = &v62 - v11;
  v80 = type metadata accessor for MobileDocumentRegistration();
  v12 = *(v80 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v80);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v62 - v16;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for StoredMobileDocumentRegistration();
    sub_100342EF8(&qword_1008417A8, &type metadata accessor for StoredMobileDocumentRegistration);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v84;
    v19 = v85;
    v20 = v86;
    v21 = v87;
    v22 = v88;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v19 = a1 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 56);

    v21 = 0;
  }

  v67 = v20;
  v26 = (v20 + 64) >> 6;
  v77 = (v12 + 56);
  v75 = (v5 + 8);
  v76 = (v12 + 48);
  v68 = _swiftEmptyArrayStorage;
  v64 = v12;
  v65 = (v12 + 32);
  *&v18 = 136315138;
  v70 = v18;
  v78 = v26;
  v79 = v19;
  v71 = a1;
  v69 = v8;
LABEL_8:
  v27 = v21;
  v28 = v81;
  if (a1 < 0)
  {
LABEL_9:
    v29 = __CocoaSet.Iterator.next()();
    if (v29)
    {
      v83 = v29;
      type metadata accessor for StoredMobileDocumentRegistration();
      swift_dynamicCast();
      v30 = v89;
      v21 = v27;
      v82 = v22;
      v28 = v81;
      if (v89)
      {
        goto LABEL_17;
      }
    }

LABEL_31:
    sub_10001FA6C();
    return v68;
  }

  else
  {
    while (1)
    {
      v31 = v27;
      v32 = v22;
      v21 = v27;
      if (!v22)
      {
        break;
      }

LABEL_16:
      v82 = (v32 - 1) & v32;
      v30 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v32)))));
      if (!v30)
      {
        goto LABEL_31;
      }

LABEL_17:
      v33 = v30;
      sub_10033DE18(v33, v28);
      if (v2)
      {
        defaultLogger()();
        v34 = v8;
        v35 = v33;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v74 = v2;
          v39 = v38;
          v73 = swift_slowAlloc();
          v89 = v73;
          *v39 = v70;
          v40 = v35;
          v41 = [v40 description];
          v72 = v36;
          v42 = v41;
          v43 = v37;
          v44 = v4;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v48 = v45;
          v4 = v44;
          v49 = sub_100141FE4(v48, v47, &v89);
          a1 = v71;

          *(v39 + 4) = v49;
          v50 = v43;
          v51 = v72;
          _os_log_impl(&_mh_execute_header, v72, v50, "MobileDocumentProviderRegistrationStorage could not map stored registration %s. Skipping", v39, 0xCu);
          sub_10000BB78(v73);

          v8 = v69;
          (*v75)(v69, v44);
          v2 = 0;
          v52 = 1;
        }

        else
        {

          (*v75)(v34, v4);
          v2 = 0;
          v52 = 1;
          v8 = v34;
        }

        v28 = v81;
      }

      else
      {
        v52 = 0;
      }

      v22 = v82;
      v53 = v80;
      (*v77)(v28, v52, 1, v80);

      if ((*v76)(v28, 1, v53) != 1)
      {
        v54 = *v65;
        v55 = v63;
        v56 = v28;
        v57 = v80;
        (*v65)(v63, v56, v80);
        v54(v66, v55, v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v79;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = sub_1003C610C(0, v68[2] + 1, 1, v68);
        }

        v60 = v68[2];
        v59 = v68[3];
        if (v60 >= v59 >> 1)
        {
          v68 = sub_1003C610C(v59 > 1, v60 + 1, 1, v68);
        }

        v61 = v68;
        v68[2] = v60 + 1;
        result = (v54)(v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v60, v66, v80);
        v26 = v78;
        v22 = v82;
        goto LABEL_8;
      }

      result = sub_10000BE18(v28, &qword_1008417A0, &qword_1006DE270);
      v27 = v21;
      v26 = v78;
      v19 = v79;
      if (a1 < 0)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v21 >= v26)
      {
        goto LABEL_31;
      }

      v32 = *(v19 + 8 * v21);
      ++v31;
      if (v32)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10033B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentRegistration();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v4[14] = *(v12 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v4[17] = v13;
  v14 = *(v13 - 8);
  v4[18] = v14;
  v15 = *(v14 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10033B790, 0, 0);
}

uint64_t sub_10033B790()
{
  v30 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[2];
  defaultLogger()();
  v6 = *(v4 + 16);
  v0[20] = v6;
  v0[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[16];
  v13 = v0[17];
  v15 = v0[12];
  v14 = v0[13];
  if (v9)
  {
    v28 = v0[17];
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100141FE4(0xD000000000000010, 0x800000010070EDF0, &v29);
    *(v16 + 12) = 2080;
    v17 = MobileDocumentRegistration.documentIdentifier.getter();
    v27 = v10;
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = sub_100141FE4(v17, v19, &v29);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentProviderRegistrationStorage %s document %s.", v16, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v27, v28);
  }

  else
  {

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
  }

  v21 = swift_task_alloc();
  v0[22] = v21;
  *v21 = v0;
  v21[1] = sub_10033BA08;
  v22 = v0[11];
  v23 = v0[4];
  v24 = v0[5];
  v25 = v0[3];

  return sub_10033C418(v22, v25, v23);
}

uint64_t sub_10033BA08()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10033C068;
  }

  else
  {
    v3 = sub_10033BB1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033BB1C()
{
  v1 = v0[23];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v3[11];
  sub_10000BA08(v3 + 7, v3[10]);
  v6 = *(MobileDocumentProviderRegisteredApplication.registrations.getter() + 16);

  dispatch thunk of MobileDocumentProviderRegistrationValidating.validate(_:numberOfRegistrations:)();
  if (v1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    v7 = v0[19];
    v8 = v0[16];
    v25 = v0[15];
    v26 = v0[11];
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:), v0[6]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[14];
    v14 = v0[15];
    v16 = v0[12];
    v15 = v0[13];
    v18 = v0[4];
    v17 = v0[5];
    v20 = v0[2];
    v19 = v0[3];
    v27 = v17[6];
    sub_10000BA08(v17 + 2, v17[5]);
    v12(v14, v20, v16);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = swift_allocObject();
    v0[24] = v22;
    *(v22 + 16) = v19;
    *(v22 + 24) = v18;
    (*(v15 + 32))(v22 + v21, v14, v16);
    v23 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];

    v24 = swift_task_alloc();
    v0[25] = v24;
    *v24 = v0;
    v24[1] = sub_10033BE80;

    return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
  }
}

uint64_t sub_10033BE80()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_10033C234;
  }

  else
  {
    v4 = sub_10033BFB0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10033BFB0()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10033C068()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[16];
  v6 = v0[15];
  v7 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10033C234()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[16];
  v6 = v0[15];
  v7 = v0[11];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10033C418(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10033C538, 0, 0);
}

uint64_t sub_10033C538()
{
  v24 = v0;
  v1 = v0[11];
  v2 = v0[4];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(0xD00000000000001BLL, 0x800000010070ED80, &v23);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100141FE4(v10, v9, &v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationStorage %s for %s.", v11, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v6, v8);
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  v15 = v12[5];
  v16 = v12[6];
  sub_10000BA08(v12 + 2, v15);
  v17 = swift_allocObject();
  v0[12] = v17;
  *(v17 + 16) = v14;
  *(v17 + 24) = v13;
  v18 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)[1];

  v19 = swift_task_alloc();
  v0[13] = v19;
  v20 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  *v19 = v0;
  v19[1] = sub_10033C798;
  v21 = v0[2];

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v21, sub_100342F40, v17, v20, v15, v16);
}

uint64_t sub_10033C798()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10033C8EC, 0, 0);
  }

  else
  {
    v5 = v3[11];
    v4 = v3[12];
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_10033C8EC()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 104))(v4, enum case for DIPError.Code.webPresentmentFetchRegistrationFailed(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

void sub_10033CA94(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v108 = a3;
  v106 = a4;
  v107 = type metadata accessor for MobileDocumentRegistration();
  v103 = *(v107 - 8);
  v6 = *(v103 + 64);
  v7 = __chkstk_darwin(v107);
  v102 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v101 = &v92 - v10;
  __chkstk_darwin(v9);
  v12 = &v92 - v11;
  v13 = type metadata accessor for Logger();
  v105 = *(v13 - 8);
  v14 = *(v105 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v92 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v92 - v22;
  __chkstk_darwin(v21);
  v25 = &v92 - v24;
  v26 = *a1;
  v27 = v109;
  v109 = sub_100586A84(a2, v108);
  if (!v27)
  {
    v95 = v20;
    v93 = v12;
    v94 = v25;
    v96 = v17;
    v97 = a2;
    v99 = v23;
    v100 = v26;
    v98 = v13;
    v104 = 0;
    if (!v109)
    {
      type metadata accessor for StoredIdentityDocumentApplicationInstallation();
      v47 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v100 + 16)];
      v48 = v97;
      v49 = v108;
      v50 = String._bridgeToObjectiveC()();
      v109 = v47;
      [v47 setApplicationIdentifier:v50];

      v51 = v95;
      defaultLogger()();

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v110 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_100141FE4(v48, v49, &v110);
        _os_log_impl(&_mh_execute_header, v52, v53, "Created new installation for application identifier %s.", v54, 0xCu);
        sub_10000BB78(v55);
      }

      v56 = *(v105 + 8);
      v57 = v98;
      v56(v51, v98);
      v58 = v102;
      v59 = v106;
      v60 = v104;
      v61 = sub_100586C6C(v106, v109);
      v62 = v107;
      v63 = v103;
      if (v60)
      {
        goto LABEL_16;
      }

      v104 = 0;

      defaultLogger()();
      (*(v63 + 16))(v58, v59, v62);
      v64 = v108;

      v65 = v62;
      v66 = v63;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        LODWORD(v102) = v68;
        v71 = v65;
        v72 = v58;
        v106 = v70;
        *&v110 = v70;
        *v69 = 136315394;
        v73 = MobileDocumentRegistration.documentIdentifier.getter();
        v75 = v74;
        (*(v66 + 8))(v72, v71);
        v76 = sub_100141FE4(v73, v75, &v110);

        *(v69 + 4) = v76;
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_100141FE4(v97, v64, &v110);
        _os_log_impl(&_mh_execute_header, v67, v102, "Registered new document %s for application identifier %s.", v69, 0x16u);
        swift_arrayDestroy();

        v77 = v96;
        v78 = v98;
      }

      else
      {

        (*(v66 + 8))(v58, v65);
        v77 = v96;
        v78 = v57;
      }

      v56(v77, v78);
LABEL_22:
      sub_100586EA0();
      return;
    }

    v28 = [v109 mobileDocumentRegistrations];
    v29 = v108;
    if (v28)
    {
      v30 = v28;
      __chkstk_darwin(v28);
      v31 = v106;
      *(&v92 - 2) = v106;
      v32 = v104;
      sub_100161D84(sub_100343100, &v110);
      v104 = v32;

      v33 = v107;
      if (*(&v111 + 1))
      {
        type metadata accessor for StoredMobileDocumentRegistration();
        v34 = swift_dynamicCast();
        v35 = v99;
        if (v34)
        {
          v36 = *(v100 + 16);
          v102 = v112;
          [v36 deleteObject:?];
          v37 = v94;
          defaultLogger()();
          v38 = v103;
          v39 = v93;
          (*(v103 + 16))(v93, v31, v33);

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            *&v110 = v96;
            *v42 = 136315394;
            v43 = MobileDocumentRegistration.documentIdentifier.getter();
            v45 = v44;
            (*(v38 + 8))(v39, v107);
            v46 = sub_100141FE4(v43, v45, &v110);
            v35 = v99;

            *(v42 + 4) = v46;
            *(v42 + 12) = 2080;
            *(v42 + 14) = sub_100141FE4(v97, v29, &v110);
            _os_log_impl(&_mh_execute_header, v40, v41, "Deleted existing registration with documentIdentifier %s for application identifier %s.", v42, 0x16u);
            swift_arrayDestroy();

            v33 = v107;
          }

          else
          {

            (*(v38 + 8))(v39, v33);
          }

          (*(v105 + 8))(v37, v98);
          v31 = v106;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
      v31 = v106;
      v33 = v107;
    }

    v35 = v99;
    sub_10000BE18(&v110, &unk_100845ED0, &qword_1006DA1D0);
LABEL_15:
    v79 = v104;
    v80 = sub_100586C6C(v31, v109);
    if (v79)
    {
LABEL_16:

      return;
    }

    v81 = v80;
    v104 = 0;
    [v109 addMobileDocumentRegistrationsObject:v80];
    defaultLogger()();
    v82 = v103;
    v83 = v101;
    (*(v103 + 16))(v101, v31, v33);

    v84 = v35;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *&v110 = swift_slowAlloc();
      *v87 = 136315394;
      v88 = MobileDocumentRegistration.documentIdentifier.getter();
      v90 = v89;
      (*(v82 + 8))(v83, v107);
      v91 = sub_100141FE4(v88, v90, &v110);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_100141FE4(v97, v108, &v110);
      _os_log_impl(&_mh_execute_header, v85, v86, "Registered new document %s for application identifier %s.", v87, 0x16u);
      swift_arrayDestroy();

      (*(v105 + 8))(v99, v98);
    }

    else
    {

      (*(v82 + 8))(v83, v33);
      (*(v105 + 8))(v84, v98);
    }

    goto LABEL_22;
  }
}

uint64_t sub_10033D4F8(uint64_t a1)
{
  sub_10001F2EC(a1, &v10);
  type metadata accessor for StoredMobileDocumentRegistration();
  if ((swift_dynamicCast() & 1) == 0 || (v1 = v11, v2 = [v11 documentIdentifier], v1, !v2))
  {
    MobileDocumentRegistration.documentIdentifier.getter();
    goto LABEL_8;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v7 = MobileDocumentRegistration.documentIdentifier.getter();
  if (!v5)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (v3 == v7 && v5 == v6)
  {

    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_9:

  return v8 & 1;
}

void sub_10033D620(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v7 = type metadata accessor for DIPError.Code();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v60 - v17;
  __chkstk_darwin(v16);
  v20 = &v60 - v19;
  v21 = *a1;
  v22 = v69;
  v23 = sub_100586A84(a2, a3);
  if (!v22)
  {
    v24 = v15;
    v60 = v20;
    v61 = v18;
    v62 = v7;
    v64 = v10;
    v65 = v11;
    v25 = v68;
    v69 = 0;
    if (v23)
    {
      v63 = v23;
      v26 = [v23 mobileDocumentRegistrations];
      v27 = v25;
      v28 = a3;
      v29 = a2;
      if (!v26 || (v30 = v26, v70 = 0, type metadata accessor for StoredMobileDocumentRegistration(), sub_100342EF8(&qword_1008417A8, &type metadata accessor for StoredMobileDocumentRegistration), static Set._conditionallyBridgeFromObjectiveC(_:result:)(), v30, !v70))
      {
        v41 = v61;
        defaultLogger()();

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();

        v44 = os_log_type_enabled(v42, v43);
        v45 = v65;
        v46 = v62;
        if (v44)
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v49 = v29;
          v50 = v48;
          v70 = v48;
          *v47 = 136315138;
          *(v47 + 4) = sub_100141FE4(v49, v28, &v70);
          _os_log_impl(&_mh_execute_header, v42, v43, "Failed to cast mobile document registrations for %s.", v47, 0xCu);
          sub_10000BB78(v50);
        }

        (*(v27 + 8))(v41, v45);
        (*(v67 + 104))(v64, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v46);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        goto LABEL_10;
      }

      v31 = v69;
      v32 = sub_10033AE8C(v70);
      v69 = v31;

      v33 = v60;
      defaultLogger()();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      v36 = os_log_type_enabled(v34, v35);
      v37 = v65;
      if (v36)
      {
        v38 = v32;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v70 = v40;
        *v39 = 134218242;
        *(v39 + 4) = v38[2];

        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_100141FE4(v29, v28, &v70);
        _os_log_impl(&_mh_execute_header, v34, v35, "Retrieved %ld registrations for applicationIdentifier %s.", v39, 0x16u);
        sub_10000BB78(v40);

        (*(v27 + 8))(v33, v65);
      }

      else
      {

        (*(v27 + 8))(v33, v37);
      }

      v56 = v64;
      v57 = [v63 sceneIdentifiers];
      v58 = v67;
      if (v57)
      {
        v70 = 0;
        v59 = v57;
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();

        if (!v70)
        {

          (*(v58 + 104))(v56, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v62);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
LABEL_10:
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          return;
        }
      }

      MobileDocumentProviderRegisteredApplication.init(registrations:sceneIdentifiers:)();
    }

    else
    {
      v51 = v24;
      defaultLogger()();

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v70 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_100141FE4(a2, a3, &v70);
        _os_log_impl(&_mh_execute_header, v52, v53, "Could not find installation for application identifier %s, returning an empty application.", v54, 0xCu);
        sub_10000BB78(v55);
      }

      (*(v25 + 8))(v51, v65);
      MobileDocumentProviderRegisteredApplication.init(registrations:sceneIdentifiers:)();
    }
  }
}

void sub_10033DE18(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = [a1 documentIdentifier];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v23[3] = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 documentType];
  if (!v15)
  {
LABEL_8:

LABEL_9:
    (*(v5 + 104))(v8, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_10;
  }

  v23[2] = a2;
  v16 = v15;
  v23[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [a1 authorityKeyIdentifiers];
  if (!v17 || (v24 = 0, v18 = v17, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v18, !v24))
  {

    goto LABEL_8;
  }

  v19 = [a1 invalidationDate];
  if (v19)
  {
    v20 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  }

  else
  {
    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  }

  MobileDocumentRegistration.init(documentType:authorityKeyIdentifiers:documentIdentifier:invalidationDate:)();
LABEL_10:
}

uint64_t sub_10033E1A4()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
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

  return _swift_task_switch(sub_10033E2C0, 0, 0);
}

uint64_t sub_10033E2C0()
{
  v18 = v0;
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001BLL, 0x800000010070EE40, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentProviderRegistrationStorage %s.", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = v0[3];
  v11 = v10[5];
  v12 = v10[6];
  sub_10000BA08(v10 + 2, v11);
  v13 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)[1];
  v14 = swift_task_alloc();
  v0[10] = v14;
  v15 = sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  *v14 = v0;
  v14[1] = sub_10033E4B0;

  return dispatch thunk of AsyncCoreDataContaining.performRead<A>(_:)(v0 + 2, sub_10033E764, 0, v15, v11, v12);
}

uint64_t sub_10033E4B0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10033E5C4;
  }

  else
  {
    v3 = sub_100188EC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033E5C4()
{
  v1 = v0[11];
  v2 = v0[9];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.webPresentmentFetchRegistrationFailed(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_10033E764(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  v5 = static StoredIdentityDocumentApplicationInstallation.fetchRequest()();
  v6 = *(v4 + 16);
  v7 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v2)
  {
    if (v7 >> 62)
    {
LABEL_22:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
LABEL_4:
        v9 = 0;
        v22 = _swiftEmptyArrayStorage;
        do
        {
          v10 = v9;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v11 = *(v7 + 8 * v10 + 32);
            }

            v12 = v11;
            v9 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v13 = [v11 applicationIdentifier];
            if (v13)
            {
              break;
            }

            ++v10;
            if (v9 == v8)
            {
              goto LABEL_24;
            }
          }

          v21 = a2;
          v14 = v13;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1003C5110(0, *(v22 + 2) + 1, 1, v22);
          }

          v18 = *(v22 + 2);
          v17 = *(v22 + 3);
          if (v18 >= v17 >> 1)
          {
            v22 = sub_1003C5110((v17 > 1), v18 + 1, 1, v22);
          }

          *(v22 + 2) = v18 + 1;
          v19 = &v22[16 * v18];
          a2 = v21;
          *(v19 + 4) = v15;
          *(v19 + 5) = v20;
        }

        while (v9 != v8);
        goto LABEL_24;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v22 = _swiftEmptyArrayStorage;
LABEL_24:

    *a2 = v22;
  }
}

void sub_10033E964(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v140 = a2;
  v3 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v150 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for DIPError.Code();
  v181 = *(v165 - 8);
  isa = v181[8].isa;
  __chkstk_darwin(v165);
  v169 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v148 = &v135 - v10;
  v11 = sub_100007224(&qword_1008417A0, &qword_1006DE270);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v179 = &v135 - v13;
  v172 = type metadata accessor for MobileDocumentRegistration();
  v144 = *(v172 - 8);
  v14 = *(v144 + 64);
  v15 = __chkstk_darwin(v172);
  v145 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v143 = &v135 - v17;
  v176 = type metadata accessor for Logger();
  v180 = *(v176 - 8);
  v18 = v180[8];
  v19 = __chkstk_darwin(v176);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v135 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v135 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v135 - v29;
  __chkstk_darwin(v28);
  v32 = &v135 - v31;
  v33 = *a1;
  type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  v34 = static StoredIdentityDocumentApplicationInstallation.fetchRequest()();
  v35 = *(v33 + 16);
  v36 = v182;
  v37 = NSManagedObjectContext.fetch<A>(_:)();

  if (v36)
  {
    return;
  }

  v182 = v32;
  v39 = v180;
  v38 = v181;
  v160 = v30;
  v146 = v27;
  v149 = v21;
  v136 = v24;
  if (v37 >> 62)
  {
    goto LABEL_78;
  }

  v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v41 = v169;
    v42 = v160;
    v43 = v39;
    v44 = v38;
    v45 = v149;
    v39 = v176;
    if (!v40)
    {

      v119 = v182;
      defaultLogger()();
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = v39;
        v124 = swift_slowAlloc();
        v189 = v124;
        *v122 = 136315138;
        *(v122 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010070EAD0, &v189);
        _os_log_impl(&_mh_execute_header, v120, v121, "MobileDocumentProviderRegistrationStorage %s No installations found. Returning an empty dictonary.", v122, 0xCu);
        sub_10000BB78(v124);

        (*(v43 + 8))(v119, v123);
      }

      else
      {

        (*(v43 + 8))(v119, v39);
      }

      v134 = v140;
      *v134 = sub_10003F808(_swiftEmptyArrayStorage);
      return;
    }

    v164 = v36;
    v38 = v40;
    v156 = sub_10003F808(_swiftEmptyArrayStorage);
    v46 = 0;
    v152 = v37 & 0xC000000000000001;
    v142 = v37 & 0xFFFFFFFFFFFFFF8;
    v147 = v37;
    v141 = v37 + 32;
    v171 = (v144 + 56);
    v166 = enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:);
    v167 = v44 + 13;
    v168 = "ring a mobile document";
    v175 = (v43 + 8);
    v161 = 0x800000010070EAD0;
    v170 = (v144 + 48);
    v138 = (v144 + 32);
    *&v47 = 136315138;
    v137 = v47;
    *&v47 = 136315394;
    v157 = v47;
    *&v47 = 136315650;
    v139 = v47;
    v48 = v165;
    v151 = v38;
    while (1)
    {
LABEL_7:
      if (v152)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *(v142 + 16))
        {
          goto LABEL_77;
        }

        v52 = *(v141 + 8 * v46);
      }

      v38 = v52;
      v53 = __OFADD__(v46, 1);
      v54 = v46 + 1;
      if (v53)
      {
        goto LABEL_76;
      }

      v55 = [v52 applicationIdentifier];
      if (v55)
      {
        break;
      }

      v37 = v54;
      v63 = v38;
      defaultLogger()();
      v64 = v45;
      v65 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v38))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v189 = v67;
        *v66 = v137;
        *(v66 + 4) = sub_100141FE4(0xD000000000000011, v161, &v189);
        _os_log_impl(&_mh_execute_header, v65, v38, "MobileDocumentProviderRegistrationStorage %s Installation without applicationIdentifier found. Unexpected daemon state. Skipping.", v66, 0xCu);
        sub_10000BB78(v67);
        v48 = v165;
      }

      else
      {
      }

      (*v175)(v64, v39);
      v45 = v64;
      v42 = v160;
      v46 = v37;
      if (v37 == v151)
      {
LABEL_69:

        *v140 = v156;
        return;
      }
    }

    v56 = v55;
    v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v57;

    v159 = v38;
    v58 = [v38 mobileDocumentRegistrations];
    if (v58)
    {
      v38 = v58;
      v189 = 0;
      v59 = type metadata accessor for StoredMobileDocumentRegistration();
      sub_100342EF8(&qword_1008417A8, &type metadata accessor for StoredMobileDocumentRegistration);
      v163 = v59;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v189)
      {
        v155 = v54;
        v154 = v189;
        if ((v189 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v60 = v184;
          v36 = v185;
          v61 = v186;
          v39 = v187;
          v62 = v188;
        }

        else
        {
          v68 = -1 << *(v189 + 32);
          v36 = (v189 + 56);
          v61 = ~v68;
          v69 = -v68;
          if (v69 < 64)
          {
            v70 = ~(-1 << v69);
          }

          else
          {
            v70 = -1;
          }

          v62 = v70 & *(v189 + 56);

          v39 = 0;
        }

        v153 = v61;
        v71 = (v61 + 64) >> 6;
        v162 = _swiftEmptyArrayStorage;
        v173 = v71;
        v174 = v37;
        v177 = v60;
        v178 = v36;
LABEL_24:
        v72 = v39;
        if ((v60 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v73 = v72;
          v74 = v62;
          v39 = v72;
          if (v62)
          {
LABEL_29:
            v75 = (v74 - 1) & v74;
            v76 = *(*(v60 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v74)))));
            if (v76)
            {
              goto LABEL_33;
            }

LABEL_58:
            v36 = v178;
LABEL_59:
            sub_10001FA6C();

            v108 = v146;
            defaultLogger()();
            v109 = v162;

            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.debug.getter();

            v112 = os_log_type_enabled(v110, v111);
            v113 = v176;
            if (v112)
            {
              v114 = swift_slowAlloc();
              v189 = swift_slowAlloc();
              *v114 = v139;
              *(v114 + 4) = sub_100141FE4(0xD000000000000011, v161, &v189);
              *(v114 + 12) = 2048;
              *(v114 + 14) = v109[2];

              *(v114 + 22) = 2080;
              *(v114 + 24) = sub_100141FE4(v158, v37, &v189);
              _os_log_impl(&_mh_execute_header, v110, v111, "MobileDocumentProviderRegistrationStorage %s Retrieved %ld registrations for applicationIdentifier %s.", v114, 0x20u);
              swift_arrayDestroy();
              v48 = v165;
            }

            else
            {
            }

            (*v175)(v108, v113);
            v115 = v150;
            v39 = v113;
            v116 = [v159 sceneIdentifiers];
            v117 = v151;
            v46 = v155;
            v41 = v169;
            if (v116)
            {
              v189 = 0;
              v118 = v116;
              static Array._conditionallyBridgeFromObjectiveC(_:result:)();

              if (!v189)
              {

                (v167->isa)(v41, v166, v48);
                sub_1000402AC(_swiftEmptyArrayStorage);
                type metadata accessor for DIPError();
                sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
                swift_allocError();
                goto LABEL_74;
              }
            }

            MobileDocumentProviderRegisteredApplication.init(registrations:sceneIdentifiers:)();
            v49 = v156;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v189 = v49;
            v51 = v115;
            v38 = &v189;
            sub_10016E05C(v51, v158, v37, isUniquelyReferenced_nonNull_native);

            v156 = v189;
            v45 = v149;
            if (v46 == v117)
            {
              goto LABEL_69;
            }

            goto LABEL_7;
          }

          while (1)
          {
            v39 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (v39 >= v71)
            {
              goto LABEL_59;
            }

            v74 = *&v36[8 * v39];
            ++v73;
            if (v74)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          v40 = _CocoaArrayWrapper.endIndex.getter();
          continue;
        }

        while (1)
        {
          v77 = __CocoaSet.Iterator.next()();
          if (!v77)
          {
            goto LABEL_58;
          }

          v183 = v77;
          swift_dynamicCast();
          v76 = v189;
          v39 = v72;
          v75 = v62;
          if (!v189)
          {
            goto LABEL_58;
          }

LABEL_33:
          v182 = v75;
          v180 = v76;
          v78 = v76;
          v79 = [v78 documentIdentifier];
          if (v79)
          {
            v80 = v79;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v81;

            v82 = [v78 documentType];
            if (v82)
            {
              v83 = v82;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v84 = [v78 authorityKeyIdentifiers];
              if (v84)
              {
                v189 = 0;
                v85 = v84;
                static Array._conditionallyBridgeFromObjectiveC(_:result:)();

                if (v189)
                {
                  v86 = [v78 invalidationDate];
                  if (v86)
                  {
                    v87 = v148;
                    v88 = v86;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v89 = 0;
                  }

                  else
                  {
                    v89 = 1;
                    v87 = v148;
                  }

                  v101 = type metadata accessor for Date();
                  (*(*(v101 - 8) + 56))(v87, v89, 1, v101);
                  MobileDocumentRegistration.init(documentType:authorityKeyIdentifiers:documentIdentifier:invalidationDate:)();

                  v97 = 0;
                  v48 = v165;
                  v41 = v169;
                  v42 = v160;
                  goto LABEL_44;
                }
              }

              v42 = v160;
            }
          }

          (v167->isa)(v41, v166, v48);
          type metadata accessor for DIPError();
          sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          v164 = 0;

          defaultLogger()();
          v181 = v78;
          v90 = v78;
          v38 = Logger.logObject.getter();
          v91 = v42;
          v92 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v38, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v189 = v95;
            *v93 = v157;
            *(v93 + 4) = sub_100141FE4(0xD000000000000011, v161, &v189);
            *(v93 + 12) = 2112;
            *(v93 + 14) = v90;
            *v94 = v180;
            v96 = v90;
            _os_log_impl(&_mh_execute_header, v38, v92, "MobileDocumentProviderRegistrationStorage %s Could not map stored registration %@. Skipping", v93, 0x16u);
            sub_10000BE18(v94, &unk_100833B50, &unk_1006D8FB0);
            v48 = v165;

            sub_10000BB78(v95);
            v41 = v169;
          }

          (*v175)(v91, v176);
          v97 = 1;
          v42 = v91;
          v78 = v181;
LABEL_44:
          v98 = v172;
          v99 = v179;
          (*v171)(v179, v97, 1, v172);

          v100 = (*v170)(v99, 1, v98);
          v62 = v182;
          if (v100 != 1)
          {
            v38 = *v138;
            v102 = v143;
            (*v138)(v143, v99, v98);
            (v38)(v145, v102, v98);
            v103 = v162;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = sub_1003C610C(0, v103[2] + 1, 1, v103);
            }

            v104 = v144;
            v162 = v103;
            v106 = v103[2];
            v105 = v103[3];
            if (v106 >= v105 >> 1)
            {
              v162 = sub_1003C610C(v105 > 1, v106 + 1, 1, v162);
            }

            v107 = v162;
            v162[2] = v106 + 1;
            (v38)(v107 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v106, v145, v98);
            v71 = v173;
            v37 = v174;
            v60 = v177;
            v36 = v178;
            v62 = v182;
            goto LABEL_24;
          }

          sub_10000BE18(v99, &qword_1008417A0, &qword_1006DE270);
          v72 = v39;
          v71 = v173;
          v37 = v174;
          v60 = v177;
          v36 = v178;
          if ((v177 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }
        }
      }
    }

    break;
  }

  v125 = v136;
  defaultLogger()();
  v126 = v159;
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = v39;
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v189 = v132;
    *v129 = v157;
    *(v129 + 4) = sub_100141FE4(0xD000000000000011, v161, &v189);
    *(v129 + 12) = 2112;
    *(v129 + 14) = v126;
    *v131 = v126;
    v133 = v126;
    _os_log_impl(&_mh_execute_header, v127, v128, "MobileDocumentProviderRegistrationStorage %s No registrations found for installation %@.", v129, 0x16u);
    sub_10000BE18(v131, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v132);

    (*v175)(v125, v130);
  }

  else
  {

    (*v175)(v125, v39);
  }

  (v167->isa)(v41, v166, v165);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
LABEL_74:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10033FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100340064, 0, 0);
}

uint64_t sub_100340064()
{
  v26 = v0;
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[3];
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  if (v6)
  {
    v23 = v0[4];
    v24 = v0[5];
    v10 = v0[2];
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010070EDD0, &v25);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100141FE4(v10, v11, &v25);
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_100141FE4(v23, v24, &v25);
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentProviderRegistrationStorage %s documentIdentifier %s for applicationIdentifier %s.", v12, 0x20u);
    swift_arrayDestroy();

    (*(v8 + 8))(v7, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];
  v18 = v13[6];
  sub_10000BA08(v13 + 2, v13[5]);
  v19 = swift_allocObject();
  v0[13] = v19;
  v19[2] = v16;
  v19[3] = v14;
  v19[4] = v17;
  v19[5] = v15;
  v20 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];

  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_100340310;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_100340310()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10034049C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_10034042C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10034042C()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10034049C()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 104))(v4, enum case for DIPError.Code.webPresentmentDeleteRegistrationFailed(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

void sub_100340644(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v106 = a5;
  v104 = a4;
  v107 = a3;
  v7 = type metadata accessor for DIPError.Code();
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  __chkstk_darwin(v7);
  v101 = &v88[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v102 = *(v10 - 8);
  v103 = v10;
  v11 = *(v102 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v88[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v88[-v16];
  v18 = __chkstk_darwin(v15);
  v20 = &v88[-v19];
  __chkstk_darwin(v18);
  v22 = &v88[-v21];
  v23 = type metadata accessor for NSFastEnumerationIterator();
  v98 = *(v23 - 8);
  v24 = *(v98 + 64);
  __chkstk_darwin(v23);
  v26 = &v88[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *a1;
  v28 = v105;
  v29 = sub_100586A84(a2, v107);
  if (v28)
  {
    return;
  }

  v97 = v26;
  v30 = v103;
  v95 = v17;
  v93 = v27;
  v91 = v22;
  v92 = v20;
  v96 = a2;
  if (!v29)
  {
    v38 = v14;
    defaultLogger()();
    v39 = v107;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v110 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_100141FE4(v96, v39, &v110);
      _os_log_impl(&_mh_execute_header, v40, v41, "MobileDocumentProviderRegistrationStorage could not find installation for application identifier %s.", v42, 0xCu);
      sub_10000BB78(v43);
    }

    (*(v102 + 8))(v38, v30);
    (*(v99 + 104))(v101, enum case for DIPError.Code.webPresentmentRegistrationInvalidRequest(_:), v100);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v90 = 0;
  v31 = v29;
  v32 = [v29 mobileDocumentRegistrations];
  if (v32)
  {
    v33 = v32;
    v34 = v31;
    v35 = [v32 count];

    v36 = v34;
    v37 = v35 > 1;
  }

  else
  {
    v37 = 0;
    v36 = v31;
  }

  v44 = v23;
  v94 = v36;
  v45 = [v36 mobileDocumentRegistrations];
  v46 = v97;
  if (!v45)
  {
LABEL_51:
    v82 = v95;
    defaultLogger()();
    v83 = v106;

    v84 = v107;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *&v110 = swift_slowAlloc();
      *v87 = 136315394;
      *(v87 + 4) = sub_100141FE4(v104, v83, &v110);
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_100141FE4(v96, v84, &v110);
      _os_log_impl(&_mh_execute_header, v85, v86, "MobileDocumentProviderRegistrationStorage could not find a registered documentIdentifier %s for application identifier %s.", v87, 0x16u);
      swift_arrayDestroy();
    }

    (*(v102 + 8))(v82, v30);
    (*(v99 + 104))(v101, enum case for DIPError.Code.webPresentmentRegistrationNotFound(_:), v100);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v47 = v45;
  v112 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_100342EF8(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v111)
  {
    v105 = _swiftEmptyArrayStorage;
    v48 = v98;
    do
    {
      sub_10001F348(&v110, &v108);
      type metadata accessor for StoredMobileDocumentRegistration();
      if ((swift_dynamicCast() & 1) != 0 && v109)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v48 = v98;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v105 = v112;
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v111);
  }

  else
  {
    v105 = _swiftEmptyArrayStorage;
    v48 = v98;
  }

  (*(v48 + 8))(v46, v44);
  v49 = v105;
  v89 = v37;
  if (v105 >> 62)
  {
LABEL_49:
    v50 = _CocoaArrayWrapper.endIndex.getter();
    if (v50)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

  v50 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
LABEL_50:

    v30 = v103;
    goto LABEL_51;
  }

LABEL_15:
  v51 = 0;
  v52 = v49 & 0xC000000000000001;
  v53 = v49 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v52)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v51 >= *(v53 + 16))
      {
        goto LABEL_48;
      }

      v54 = *(v49 + 8 * v51 + 32);
    }

    v55 = v54;
    v56 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v57 = [v54 documentIdentifier];
    if (!v57)
    {
      goto LABEL_16;
    }

    v58 = v57;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    if (v59 == v104 && v61 == v106)
    {
      break;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v49 = v105;
    if (v63)
    {
      goto LABEL_36;
    }

LABEL_16:

    ++v51;
    if (v56 == v50)
    {
      goto LABEL_50;
    }
  }

LABEL_36:

  [v94 removeMobileDocumentRegistrationsObject:v55];
  [*(v93 + 16) deleteObject:v55];
  v66 = v102;
  v65 = v103;
  v67 = v92;
  if (!v89)
  {
    v68 = v91;
    defaultLogger()();
    v69 = v106;

    v70 = v107;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *&v110 = swift_slowAlloc();
      *v73 = 136315394;
      *(v73 + 4) = sub_100141FE4(v104, v69, &v110);
      *(v73 + 12) = 2080;
      *(v73 + 14) = sub_100141FE4(v96, v70, &v110);
      _os_log_impl(&_mh_execute_header, v71, v72, "MobileDocumentProviderRegistrationStorage After deleting %s for application identifier %s, no registrations remain. Deleting installation record.", v73, 0x16u);
      swift_arrayDestroy();

      v67 = v92;

      v74 = *(v66 + 8);
      v75 = v91;
    }

    else
    {

      v74 = *(v66 + 8);
      v75 = v68;
    }

    v65 = v103;
    v74(v75, v103);
    [*(v93 + 16) deleteObject:v94];
  }

  v76 = v90;
  sub_100586EA0();
  if (v76)
  {
  }

  else
  {
    defaultLogger()();
    v77 = v106;

    v78 = v107;

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *&v110 = swift_slowAlloc();
      *v81 = 136315394;
      *(v81 + 4) = sub_100141FE4(v104, v77, &v110);
      *(v81 + 12) = 2080;
      *(v81 + 14) = sub_100141FE4(v96, v78, &v110);
      _os_log_impl(&_mh_execute_header, v79, v80, "MobileDocumentProviderRegistrationStorage successfully removed documentIdentifier %s for applicationIdentifier %s.", v81, 0x16u);
      swift_arrayDestroy();

      (*(v66 + 8))(v92, v103);
    }

    else
    {

      (*(v66 + 8))(v67, v65);
    }
  }
}

uint64_t sub_100341328(uint64_t a1, uint64_t a2)
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
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100341454, 0, 0);
}

uint64_t sub_100341454()
{
  v22 = v0;
  v1 = v0[11];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(0xD00000000000001FLL, 0x800000010070ECE0, &v21);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100141FE4(v10, v9, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationStorage %s for applicationIdentifier %s.", v11, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v8 + 8);
  v12(v6, v7);
  v0[12] = v12;
  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  v16 = v13[6];
  sub_10000BA08(v13 + 2, v13[5]);
  v17 = swift_allocObject();
  v0[13] = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;
  v18 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];

  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_1003416B4;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003416B4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100341848;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1003417D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003417D0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100341848()
{
  v28 = v0;
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[3];

  defaultLogger()();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = v0[9];
    v25 = v0[10];
    v26 = v0[12];
    v24 = v0[8];
    v9 = v0[2];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(v9, v10, &v27);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentProviderRegistrationStorage failed to remove all data for applicationIdentifier %s: %@", v11, 0x16u);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v13);

    v26(v25, v24);
  }

  else
  {
    v15 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[8];

    v15(v16, v18);
  }

  v19 = v0[15];
  v20 = v0[10];
  v21 = v0[11];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentDeleteInstallationDataFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

void sub_100341B98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v65 = type metadata accessor for DIPError.Code();
  v61 = *(v65 - 1);
  v6 = v61[8];
  __chkstk_darwin(v65);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v15 = type metadata accessor for NSFastEnumerationIterator();
  v63 = *(v15 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = v66;
  v21 = sub_100586A84(a2, a3);
  if (v20)
  {
    return;
  }

  v59 = a3;
  v60 = v15;
  v22 = v12;
  v23 = v65;
  v57 = v14;
  v58 = a2;
  v66 = v8;
  if (v21)
  {
    v62 = 0;
    v65 = v21;
    v24 = [v21 mobileDocumentRegistrations];
    v25 = _swiftEmptyArrayStorage;
    if (v24)
    {
      v26 = v24;
      v71 = _swiftEmptyArrayStorage;
      v27 = v18;
      NSSet.makeIterator()();
      sub_100342EF8(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator);
      dispatch thunk of IteratorProtocol.next()();
      v28 = v19;
      if (v70)
      {
        v29 = v63;
        v30 = v60;
        v61 = v26;
        do
        {
          while (1)
          {
            sub_10001F348(&v69, &v67);
            type metadata accessor for StoredMobileDocumentRegistration();
            if ((swift_dynamicCast() & 1) == 0 || !v68)
            {
              break;
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v31 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v25 = v71;
            dispatch thunk of IteratorProtocol.next()();
            v26 = v61;
            if (!v70)
            {
              goto LABEL_19;
            }
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v70);
        v26 = v61;
      }

      else
      {
        v29 = v63;
        v30 = v60;
      }

LABEL_19:

      (*(v29 + 8))(v27, v30);
    }

    else
    {
      v28 = v19;
    }

    v41 = sub_100343978(v25);
    v42 = v41;
    v43 = v66;
    if (v41 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (v44)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
LABEL_22:
        if (v44 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v44; ++i)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v46 = *(v42 + 8 * i + 32);
          }

          v47 = v46;
          [*(v28 + 16) deleteObject:v46];
        }
      }
    }

    v48 = v65;
    [*(v28 + 16) deleteObject:v65];
    v49 = v62;
    sub_100586EA0();
    if (v49)
    {
    }

    else
    {
      v50 = v57;
      defaultLogger()();
      v51 = v59;

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v69 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_100141FE4(v58, v51, &v69);
        _os_log_impl(&_mh_execute_header, v52, v53, "MobileDocumentProviderRegistrationStorage successfully removed all data for applicationIdentifier %s.", v54, 0xCu);
        sub_10000BB78(v55);
      }

      else
      {
      }

      (*(v64 + 8))(v50, v43);
    }

    return;
  }

  v32 = v22;
  defaultLogger()();
  v33 = v59;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v64;
  v38 = v58;
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v69 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_100141FE4(v38, v33, &v69);
    _os_log_impl(&_mh_execute_header, v34, v35, "MobileDocumentProviderRegistrationStorage could not find installation for application identifier %s.", v39, 0xCu);
    sub_10000BB78(v40);
  }

  (*(v37 + 8))(v32, v66);
  (v61[13])(v62, enum case for DIPError.Code.webPresentmentRegistrationInvalidRequest(_:), v23);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100342338(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100342458, 0, 0);
}

uint64_t sub_100342458()
{
  v24 = v0;
  v1 = v0[11];
  v2 = v0[2];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(0xD00000000000001ELL, 0x800000010070EC90, &v23);
    *(v10 + 12) = 2080;
    type metadata accessor for IdentityDocumentRequestSceneIdentifier();
    v11 = Array.description.getter();
    v13 = sub_100141FE4(v11, v12, &v23);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentProviderRegistrationStorage %s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[2];
  v17 = v0[3];
  v18 = v14[6];
  sub_10000BA08(v14 + 2, v14[5]);
  v19 = swift_allocObject();
  v0[12] = v19;
  v19[2] = v17;
  v19[3] = v15;
  v19[4] = v16;
  v20 = async function pointer to dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)[1];

  v21 = swift_task_alloc();
  v0[13] = v21;
  *v21 = v0;
  v21[1] = sub_1003426D8;

  return dispatch thunk of AsyncCoreDataContaining.performWrite<A>(_:)();
}

uint64_t sub_1003426D8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_100342864;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1003427F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003427F4()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100342864()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 104))(v4, enum case for DIPError.Code.webPresentmentUpdateSceneIdentifiersFailed(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100342EF8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

void sub_100342A0C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v46 = a4;
  v47 = type metadata accessor for Logger();
  v8 = *(v47 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v47);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = sub_100586A84(a2, a3);
  if (!v4)
  {
    v43 = a2;
    v44 = v17;
    v48 = v16;
    v49 = v12;
    v45 = v8;
    if (v18)
    {
      v42 = v18;
      v43 = 0;
      v19 = v46;
      v20 = *(v46 + 16);
      if (v20)
      {
        v50 = _swiftEmptyArrayStorage;
        sub_100172D4C(0, v20, 0);
        v21 = v50;
        v23 = v13 + 16;
        v22 = *(v13 + 16);
        v24 = v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v46 = *(v13 + 72);
        v47 = v22;
        v45 = (v13 + 8);
        v26 = v48;
        v25 = v49;
        do
        {
          v27 = v23;
          v47(v26, v24, v25);
          v28 = IdentityDocumentRequestSceneIdentifier.rawValue.getter();
          v25 = v49;
          v29 = v28;
          v31 = v30;
          (*v45)(v26, v49);
          v50 = v21;
          v33 = v21[2];
          v32 = v21[3];
          if (v33 >= v32 >> 1)
          {
            sub_100172D4C((v32 > 1), v33 + 1, 1);
            v25 = v49;
            v21 = v50;
          }

          v21[2] = v33 + 1;
          v34 = &v21[2 * v33];
          v34[4] = v29;
          v34[5] = v31;
          v24 += v46;
          --v20;
          v23 = v27;
          v26 = v48;
        }

        while (v20);
      }

      isa = Array._bridgeToObjectiveC()().super.isa;

      v36 = v42;
      [v42 setSceneIdentifiers:isa];

      sub_100586EA0();
    }

    else
    {
      v37 = v11;
      defaultLogger()();

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v50 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_100141FE4(v43, a3, &v50);
        _os_log_impl(&_mh_execute_header, v38, v39, "MobileDocumentProviderRegistrationStorage skipping update scene identifiers because no existing application exists for %s", v40, 0xCu);
        sub_10000BB78(v41);
      }

      v45[1](v37, v47);
    }
  }
}

uint64_t sub_100342DE0()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100342E44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100342EA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100342EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100342F5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100342FBC()
{
  v1 = type metadata accessor for MobileDocumentRegistration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100343124(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderRegistrationSession.Error.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DIPError.code.getter();
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for DIPError.Code.processNotVisible(_:))
  {
    goto LABEL_2;
  }

  if (v12 == enum case for DIPError.Code.unexpectedDaemonState(_:))
  {
LABEL_4:
    v13 = &enum case for MobileDocumentProviderRegistrationSession.Error.Code.unknown(_:);
    goto LABEL_7;
  }

  if (v12 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:))
  {
    goto LABEL_6;
  }

  v19 = v12 == enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:) || v12 == enum case for DIPError.Code.webPresentmentFetchRegistrationFailed(_:) || v12 == enum case for DIPError.Code.webPresentmentDeleteRegistrationFailed(_:);
  if (v19 || v12 == enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:))
  {
    goto LABEL_4;
  }

  if (v12 == enum case for DIPError.Code.webPresentmentRegistrationNotFound(_:))
  {
    goto LABEL_6;
  }

  if (v12 == enum case for DIPError.Code.webPresentmentRegistrationUnsupportedBundleType(_:) || v12 == enum case for DIPError.Code.webPresentmentRegistrationIdentifiersMissing(_:))
  {
    v13 = &enum case for MobileDocumentProviderRegistrationSession.Error.Code.notSupported(_:);
    goto LABEL_7;
  }

  if (v12 == enum case for DIPError.Code.webPresentmentRegistrationInvalidRequest(_:) || v12 == enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:))
  {
LABEL_6:
    v13 = &enum case for MobileDocumentProviderRegistrationSession.Error.Code.invalidRequest(_:);
    goto LABEL_7;
  }

  if (v12 != enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:))
  {
    if (v12 != enum case for DIPError.Code.webPresentmentUpdateSceneIdentifiersFailed(_:) && v12 != enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:) && v12 != enum case for DIPError.Code.webPresentmentDeleteInstallationDataFailed(_:) && v12 != enum case for DIPError.Code.webPresentmentCouldNotCreateAppExtensionProcess(_:) && v12 != enum case for DIPError.Code.webPresentmentCouldNotCreateXPCConnection(_:) && v12 != enum case for DIPError.Code.coreDataErrorMobileDocumentRegistrationSaveFailed(_:) && v12 != enum case for DIPError.Code.appExtensionNotFoundForApp(_:) && v12 != enum case for DIPError.Code.tooManyAppExtensionsForApp(_:) && v12 != enum case for DIPError.Code.appExtensionDisabledForApp(_:) && v12 != enum case for DIPError.Code.appExtensionNotLoaded(_:) && v12 != enum case for DIPError.Code.appExtensionMissingApplicationIdentifier(_:))
    {
      (*(v3 + 104))(v6, enum case for MobileDocumentProviderRegistrationSession.Error.Code.unknown(_:), v2);
      MobileDocumentProviderRegistrationSession.Error.init(code:underlyingError:debugDescription:)();
      (*(v8 + 8))(v11, v7);
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_2:
  v13 = &enum case for MobileDocumentProviderRegistrationSession.Error.Code.notAuthorized(_:);
LABEL_7:
  (*(v3 + 104))(v6, *v13, v2);
  MobileDocumentProviderRegistrationSession.Error.init(code:underlyingError:debugDescription:)();
LABEL_8:
  v14 = type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v16, a1, v14);
  MobileDocumentProviderRegistrationSession.Error.underlyingError.setter();
  sub_1003435AC();
  MobileDocumentProviderRegistrationSession.Error.debugDescription.setter();
  return (*(v15 + 8))(a1, v14);
}

unint64_t sub_1003435AC()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DIPError.code.getter();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for DIPError.Code.processNotVisible(_:))
  {
    return 0xD000000000000051;
  }

  if (v5 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:))
  {
    return 0xD00000000000002CLL;
  }

  if (v5 == enum case for DIPError.Code.webPresentmentWriteRegistrationFailed(_:) || v5 == enum case for DIPError.Code.webPresentmentFetchRegistrationFailed(_:) || v5 == enum case for DIPError.Code.webPresentmentDeleteRegistrationFailed(_:))
  {
    return 0xD000000000000042;
  }

  if (v5 == enum case for DIPError.Code.webPresentmentRegistrationNotFound(_:))
  {
    return 0xD00000000000003ELL;
  }

  if (v5 == enum case for DIPError.Code.webPresentmentRegistrationUnsupportedBundleType(_:))
  {
    return 0xD000000000000033;
  }

  if (v5 == enum case for DIPError.Code.webPresentmentRegistrationInvalidRequest(_:))
  {
    return 0xD00000000000002CLL;
  }

  if (v5 == enum case for DIPError.Code.webPresentmentRegistrationEntitlementMissing(_:))
  {
    return 0xD00000000000004FLL;
  }

  if (v5 == enum case for DIPError.Code.webPresentmentRegistrationFlowNotAuthorized(_:))
  {
    return 0xD000000000000044;
  }

  if (v5 == enum case for DIPError.Code.webPresentmentUpdateSceneIdentifiersFailed(_:) || v5 == enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:) || v5 == enum case for DIPError.Code.webPresentmentDeleteInstallationDataFailed(_:) || v5 == enum case for DIPError.Code.coreDataErrorMobileDocumentRegistrationSaveFailed(_:))
  {
    return 0xD000000000000042;
  }

  if (v5 == enum case for DIPError.Code.appExtensionNotFoundForApp(_:))
  {
    return 0xD000000000000028;
  }

  if (v5 == enum case for DIPError.Code.tooManyAppExtensionsForApp(_:))
  {
    return 0xD000000000000035;
  }

  if (v5 == enum case for DIPError.Code.appExtensionDisabledForApp(_:))
  {
    return 0xD000000000000033;
  }

  if (v5 == enum case for DIPError.Code.appExtensionNotLoaded(_:))
  {
    return 0xD000000000000026;
  }

  if (v5 == enum case for DIPError.Code.appExtensionMissingApplicationIdentifier(_:))
  {
    return 0xD00000000000003DLL;
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

void *sub_100343978(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1003BE178(v3, 0);
  sub_10031EEF8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_100343A0C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_10000B90C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100142424(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_10000B90C(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100343B88(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100007224(&qword_1008418C8, &qword_1006DE398);
  if (swift_dynamicCast())
  {
    sub_10001F358(__src, &v41);
    sub_10000BA08(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_10000BB78(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000BE18(__src, &qword_1008418D0, &qword_1006DE3A0);
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

  sub_10034B18C(v4, v5, &v41);
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
  *&__src[0] = sub_10034C234(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_10034B254(sub_10034D044);
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
      v28 = sub_10010075C(v16, v14, v15);
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

    v16 = sub_10010075C(v16, v14, v15);
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
    sub_10000BD94(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_10000BD94(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_10000B8B8(*&__src[0], *(&__src[0] + 1));

  sub_10000B90C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1003440A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007224(&qword_100841888, &qword_1006DE350);
  v18[3] = v8;
  v18[4] = sub_1000BA30C(&qword_100841890, &qword_100841888, &qword_1006DE350);
  v9 = swift_allocObject();
  v18[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = sub_10000BA08(v18, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_10034B5F8((v10[1] + v11), (v10[1] + v11 + v14), &v17);
    v15 = v17;
    sub_10000BB78(v18);
    return v15;
  }

  return result;
}

uint64_t sub_1003441C0()
{
  v1 = *v0;
  v2 = v0[1];
  return Data.base16EncodedString()()._countAndFlagsBits;
}

Swift::Int sub_1003441DC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100344228()
{
  v1 = *v0;
  v2 = v0[1];
  return Data.hash(into:)();
}

Swift::Int sub_100344230()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100344278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v50[-v11];
  __chkstk_darwin(v10);
  v14 = &v50[-v13];
  v15 = SecCertificateRef.serialNumber.getter();
  if (v16 >> 60 == 15)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "IssuerRevocationList provided certificate is missing serial number.", v19, 2u);
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v16;
  v22 = SecCertificateRef.serialNumber.getter();
  if (v23 >> 60 == 15)
  {
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "IssuerRevocationList provided root certificate is missing serial number.", v26, 2u);

      sub_10000BD94(v20, v21);
    }

    else
    {
      sub_10000BD94(v20, v21);
    }

    (*(v5 + 8))(v12, v4);
LABEL_17:
    v41 = 0;
    return v41 & 1;
  }

  v27 = v22;
  v28 = v23;
  sub_1000363B4(v20, v21);
  v55 = sub_10034C2D4(v20, v21);
  v56 = v29;
  v57 = v20;
  sub_10000BD94(v20, v21);
  sub_10000B8B8(v27, v28);
  v30 = sub_10034C2D4(v27, v28);
  v32 = v31;
  sub_10000BD94(v27, v28);
  v33 = *(a3 + 16);
  sub_10000B8B8(v30, v32);
  if (!v33 || (v34 = sub_10003B554(v30, v32), (v35 & 1) == 0))
  {
    defaultLogger()();
    sub_10000B8B8(v30, v32);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    sub_10000B90C(v30, v32);
    v54 = v42;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v53 = v44;
      v52 = swift_slowAlloc();
      v58[0] = v52;
      *v44 = 136315138;
      sub_10000B8B8(v30, v32);
      v45 = Data.base16EncodedString()();
      v51 = v43;
      sub_10000B90C(v30, v32);
      sub_10000B90C(v30, v32);
      v46 = sub_100141FE4(v45._countAndFlagsBits, v45._object, v58);

      v47 = v53;
      *(v53 + 1) = v46;
      v48 = v54;
      _os_log_impl(&_mh_execute_header, v54, v51, "IssuerRevocationList certificate revocation list is missing for serial number %s", v47, 0xCu);
      sub_10000BB78(v52);

      sub_10000B90C(v55, v56);

      sub_10000B90C(v30, v32);
      sub_10000BD94(v27, v28);
      sub_10000BD94(v57, v21);
    }

    else
    {
      sub_10000B90C(v55, v56);

      sub_10000B90C(v30, v32);
      sub_10000BD94(v27, v28);
      sub_10000BD94(v57, v21);
      sub_10000B90C(v30, v32);
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_17;
  }

  v36 = v34;
  v37 = sub_10000B90C(v30, v32);
  v54 = v50;
  v38 = *(*(a3 + 56) + 8 * v36);
  v39 = v55;
  v40 = v56;
  v58[0] = v55;
  v58[1] = v56;
  __chkstk_darwin(v37);
  *&v50[-16] = v58;

  v41 = sub_10035C990(sub_10032D1FC, &v50[-32], v38);

  sub_10000BD94(v27, v28);
  sub_10000BD94(v57, v21);
  sub_10000B90C(v30, v32);
  sub_10000B90C(v39, v40);
  return v41 & 1;
}

uint64_t sub_1003447E4(uint64_t a1)
{
  v2[224] = v1;
  v2[223] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[225] = v3;
  v4 = *(v3 - 8);
  v2[226] = v4;
  v5 = *(v4 + 64) + 15;
  v2[227] = swift_task_alloc();
  v6 = type metadata accessor for DIPOIDVerifier();
  v2[228] = v6;
  v7 = *(v6 - 8);
  v2[229] = v7;
  v8 = *(v7 + 64) + 15;
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_10083AB90, &unk_1006DE370) - 8) + 64) + 15;
  v2[232] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[233] = v10;
  v11 = *(v10 - 8);
  v2[234] = v11;
  v12 = *(v11 + 64) + 15;
  v2[235] = swift_task_alloc();
  v2[236] = swift_task_alloc();
  v13 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v2[239] = v14;
  v15 = *(v14 - 8);
  v2[240] = v15;
  v16 = *(v15 + 64) + 15;
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();
  v2[244] = swift_task_alloc();

  return _swift_task_switch(sub_100344A74, 0, 0);
}

uint64_t sub_100344A74()
{
  v81 = v0;
  v1 = *(*(v0 + 1792) + 24);
  *(v0 + 1960) = v1;
  os_unfair_lock_lock((v1 + 56));
  sub_10000BBC4(v1 + 16, v0 + 1592, &qword_100841860, &qword_1006DE330);
  os_unfair_lock_unlock((v1 + 56));
  if (*(v0 + 1616))
  {
    v2 = *(v0 + 1784);
    sub_10001F358((v0 + 1592), v0 + 1552);
    sub_10001F358((v0 + 1552), v2);
LABEL_3:
    v3 = *(v0 + 1952);
    v4 = *(v0 + 1944);
    v5 = *(v0 + 1936);
    v6 = *(v0 + 1928);
    v7 = *(v0 + 1904);
    v8 = *(v0 + 1896);
    v9 = *(v0 + 1888);
    v10 = *(v0 + 1880);
    v11 = *(v0 + 1856);
    v12 = *(v0 + 1848);
    v76 = *(v0 + 1840);
    v78 = *(v0 + 1816);

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 1792);
  sub_10000BE18(v0 + 1592, &qword_100841860, &qword_1006DE330);
  v16 = *(v15 + 16);
  v17 = UserDefaultsConfiguration.userDefaults.getter();
  static DaemonDefaultsKeys.overrideMobileDocumentReaderVICALURL.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 stringForKey:v18];

  if (v19)
  {
    v20 = *(v0 + 1920);
    v21 = *(v0 + 1912);
    v22 = *(v0 + 1904);
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    URL.init(string:)();
    if ((*(v20 + 48))(v22, 1, v21) != 1)
    {
      v36 = *(v0 + 1952);
      v37 = *(v0 + 1944);
      v38 = *(v0 + 1920);
      v39 = *(v0 + 1912);
      v40 = *(v0 + 1904);
      v41 = *(v0 + 1888);

      (*(v38 + 32))(v36, v40, v39);
      defaultLogger()();
      v79 = *(v38 + 16);
      v79(v37, v36, v39);
      v42 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      v43 = os_log_type_enabled(v42, v77);
      v44 = *(v0 + 1944);
      v45 = *(v0 + 1920);
      v46 = *(v0 + 1912);
      v47 = *(v0 + 1888);
      v48 = *(v0 + 1872);
      v49 = *(v0 + 1864);
      if (v43)
      {
        v74 = *(v0 + 1864);
        v50 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v80[0] = v73;
        *v50 = 136315138;
        sub_10034D0CC(&qword_1008418B0, &type metadata accessor for URL);
        log = v42;
        v72 = v47;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v75 = *(v45 + 8);
        v75(v44, v46);
        v54 = sub_100141FE4(v51, v53, v80);

        *(v50 + 4) = v54;
        _os_log_impl(&_mh_execute_header, log, v77, "MobileDocumentReaderIssuerRootStorage found override VICAL URL %s", v50, 0xCu);
        sub_10000BB78(v73);

        (*(v48 + 8))(v72, v74);
      }

      else
      {

        v75 = *(v45 + 8);
        v75(v44, v46);
        (*(v48 + 8))(v47, v49);
      }

      v57 = *(v0 + 1936);
      v58 = *(v0 + 1856);
      v59 = *(v0 + 1848);
      v60 = *(v0 + 1840);
      v61 = *(v0 + 1832);
      v62 = *(v0 + 1824);
      v79(v57, *(v0 + 1952), *(v0 + 1912));
      v63 = type metadata accessor for COSESignatureValidator();
      (*(*(v63 - 8) + 56))(v58, 1, 1, v63);
      *(v0 + 1736) = type metadata accessor for DateProvider();
      *(v0 + 1744) = &protocol witness table for DateProvider;
      sub_100032DBC((v0 + 1712));
      DateProvider.init()();
      DIPOIDVerifier.init(dateProvider:)();
      (*(v61 + 16))(v60, v59, v62);
      v64 = sub_10034B7FC(v58, v60);
      (*(v61 + 8))(v59, v62);
      v65 = type metadata accessor for VICALWebService();
      v66 = sub_10034BCA0(v57, v64, objc_allocWithZone(v65));
      *(swift_task_alloc() + 16) = v66;
      os_unfair_lock_lock((v1 + 56));
      sub_10034CF24((v1 + 16));
      os_unfair_lock_unlock((v1 + 56));
      v67 = *(v0 + 1952);
      v68 = *(v0 + 1920);
      v69 = *(v0 + 1912);
      v70 = *(v0 + 1784);

      v70[3] = v65;
      v70[4] = &off_1008181E8;
      *v70 = v66;
      v75(v67, v69);
      goto LABEL_3;
    }

    v26 = *(v0 + 1880);
    sub_10000BE18(*(v0 + 1904), &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1880);
    v31 = *(v0 + 1872);
    v32 = *(v0 + 1864);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v80[0] = v34;
      *v33 = 136315138;
      v35 = sub_100141FE4(v23, v25, v80);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "DIPTopekaStaticWebService found override VICAL URL string %s, but could not cast it into URL. Falling back to default URL.", v33, 0xCu);
      sub_10000BB78(v34);
    }

    else
    {
    }

    (*(v31 + 8))(v30, v32);
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v55 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v55 + 54);
  sub_1000318FC(&v55[4], v0 + 1352);
  os_unfair_lock_unlock(v55 + 54);
  sub_100020260(v0 + 1352, v0 + 1632);
  sub_100031918(v0 + 1352);
  *(v0 + 1968) = *sub_10000BA08((v0 + 1632), *(v0 + 1656));
  v56 = swift_task_alloc();
  *(v0 + 1976) = v56;
  *v56 = v0;
  v56[1] = sub_100345274;

  return sub_10050886C(v0 + 16);
}

uint64_t sub_100345274()
{
  v2 = *v1;
  v3 = *(*v1 + 1976);
  v7 = *v1;
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v4 = *(v2 + 1968);
    v5 = sub_10034595C;
  }

  else
  {
    v5 = sub_100345390;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}