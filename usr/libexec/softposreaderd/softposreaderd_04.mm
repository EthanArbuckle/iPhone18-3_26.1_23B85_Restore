void sub_1000611D4()
{
  swift_beginAccess();
  atomic_flag_clear(v0 + 16);
  swift_endAccess();
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_10039FF28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "install operation ended", v4, 2u);
  }
}

uint64_t sub_1000612D8(char a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_10039FF28);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD00000000000001DLL, 0x8000000100348390, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, v18);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = sub_10000BE18(v2 + 55, v2[58]);
  v18[3] = &type metadata for Bool;
  LOBYTE(v18[0]) = a1 & 1;
  v17 = *v15;
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A800(v18, 3, 0, 0, 0.0);
  sub_10000959C(v18);
  return 1;
}

void sub_100061524(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v26 = 0;
  v8 = [v7 embeddedSecureElementWithError:&v26];
  if (v8)
  {
    v9 = v8;
    v10 = v26;
    v11 = [v9 serialNumber];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = [v9 isProductionSigned];
      if (qword_10039D5D0 != -1)
      {
        swift_once();
      }

      v17 = sub_10000403C(v2, qword_1003A6D18);
      (*(v3 + 16))(v6, v17, v2);
      v18 = type metadata accessor for KernelManagerWrapper();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      sub_100092B40(v6, v13, v15, v16);
      sub_100095A94(a1);
    }

    else
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000403C(v22, qword_10039FF28);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "no secure element found", v25, 2u);
      }

      sub_100020148(2046, 0xD000000000000012, 0x8000000100348840, 0);
      swift_willThrow();
    }
  }

  else
  {
    v21 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100061908(char a1)
{
  v2 = *v1;
  sub_1000612D8(a1);
  return 1;
}

uint64_t sub_100061930(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_100065074(a1 + 32, &v48, &qword_10039E4D0, &qword_1002C94A0);
  v8 = v48;
  v7 = v49;
  v46 = v48;
  v47 = v49;
  sub_100019D3C(v50, v45);
  v9 = *a3;
  v10 = sub_1000F5A28(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10017CA5C(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_1000F5A28(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_1001811FC();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v51 = v19;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000959C(v45);
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_100019D3C(v45, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_100065074(v26, &v48, &qword_10039E4D0, &qword_1002C94A0);
      v29 = v48;
      v28 = v49;
      v46 = v48;
      v47 = v49;
      sub_100019D3C(v50, v45);
      v30 = *a3;
      v31 = sub_1000F5A28(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_10017CA5C(v35, 1);
        v37 = *a3;
        v31 = sub_1000F5A28(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_100019D3C(v45, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  v43._object = 0x8000000100347B20;
  v43._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v43);
  _print_unlocked<A, B>(_:_:)();
  v44._countAndFlagsBits = 39;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100061D0C(void *a1, void *a2)
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

uint64_t *sub_100061D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v86 = *a19;
  v157 = type metadata accessor for CertificateManager();
  v158 = &off_100381288;
  *&v156 = a2;
  v154 = type metadata accessor for ProfileManager();
  v155 = &off_100380E88;
  *&v153 = a3;
  v151 = type metadata accessor for MPOCDefaultAttestationManager();
  v152 = &off_100380AA8;
  *&v150 = a4;
  v148 = type metadata accessor for MPOCDefaultMonitorManager();
  v149 = &off_100382710;
  *&v147 = a5;
  v146 = &off_100386330;
  v145 = type metadata accessor for SystemInfo();
  *&v144 = a7;
  v143 = &off_100386190;
  v142 = type metadata accessor for DefaultManagedDictionary();
  *&v141 = a8;
  v140 = &off_100385348;
  v139 = type metadata accessor for SignerFactory();
  *&v138 = a9;
  v137 = &off_100384E70;
  v136 = type metadata accessor for DefaultSecureTimeKeeper();
  *&v135 = a10;
  v134 = &off_1003849A0;
  v133 = type metadata accessor for SecureElement();
  *&v132 = a12;
  v131 = &off_100384FB0;
  v130 = type metadata accessor for DefaultTimeTokenManager();
  *&v129 = a13;
  v128 = &off_1003823C0;
  v127 = type metadata accessor for LaunchFeedbackFramework();
  *&v126 = a15;
  v125 = &off_100382050;
  v124 = type metadata accessor for KernelManagerWrapper();
  *&v123 = a17;
  v122 = &off_100380B28;
  v121 = type metadata accessor for SESnapshotWrapper();
  *&v120 = a18;
  *(a19 + 16) = 0;
  *(a19 + 648) = 0;
  a19[82] = 0;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_10039FF28);
  v26 = a1;
  sub_10000CCE4(a1, v118);
  sub_10000CCE4(&v156, v116);
  sub_10000CCE4(&v153, v114);
  sub_10000CCE4(&v150, v112);
  sub_10000CCE4(&v147, v110);
  v27 = a6;
  sub_10000CCE4(a6, v108);
  sub_10000CCE4(&v144, v106);
  sub_10000CCE4(&v141, v104);
  sub_10000CCE4(&v138, v102);
  sub_10000CCE4(&v135, v100);
  sub_10000CCE4(&v132, v98);
  sub_10000CCE4(&v129, v96);
  sub_10000CCE4(&v126, v94);
  sub_10000CCE4(&v123, v92);
  sub_10000CCE4(&v120, v90);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v30 = 136315394;
    v31 = _typeName(_:qualified:)();
    v33 = sub_100008F6C(v31, v32, &v89);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1002C3AC0;
    v35 = v119;
    v36 = sub_10000BE18(v118, v119);
    *(v34 + 56) = v35;
    v37 = sub_10000BE5C((v34 + 32));
    (*(*(v35 - 8) + 16))(v37, v36, v35);
    v38 = v117;
    v39 = sub_10000BE18(v116, v117);
    *(v34 + 88) = v38;
    v40 = sub_10000BE5C((v34 + 64));
    (*(*(v38 - 8) + 16))(v40, v39, v38);
    v41 = v115;
    v42 = sub_10000BE18(v114, v115);
    *(v34 + 120) = v41;
    v43 = sub_10000BE5C((v34 + 96));
    (*(*(v41 - 8) + 16))(v43, v42, v41);
    v44 = v113;
    v45 = sub_10000BE18(v112, v113);
    *(v34 + 152) = v44;
    v46 = sub_10000BE5C((v34 + 128));
    (*(*(v44 - 8) + 16))(v46, v45, v44);
    v47 = v111;
    v48 = sub_10000BE18(v110, v111);
    *(v34 + 184) = v47;
    v49 = sub_10000BE5C((v34 + 160));
    (*(*(v47 - 8) + 16))(v49, v48, v47);
    v50 = v109;
    v51 = sub_10000BE18(v108, v109);
    *(v34 + 216) = v50;
    v52 = sub_10000BE5C((v34 + 192));
    (*(*(v50 - 8) + 16))(v52, v51, v50);
    v53 = v107;
    v54 = sub_10000BE18(v106, v107);
    *(v34 + 248) = v53;
    v55 = sub_10000BE5C((v34 + 224));
    (*(*(v53 - 8) + 16))(v55, v54, v53);
    v56 = v105;
    v57 = sub_10000BE18(v104, v105);
    *(v34 + 280) = v56;
    v58 = sub_10000BE5C((v34 + 256));
    (*(*(v56 - 8) + 16))(v58, v57, v56);
    v59 = v103;
    v60 = sub_10000BE18(v102, v103);
    *(v34 + 312) = v59;
    v61 = sub_10000BE5C((v34 + 288));
    (*(*(v59 - 8) + 16))(v61, v60, v59);
    v62 = v101;
    v63 = sub_10000BE18(v100, v101);
    *(v34 + 344) = v62;
    v64 = sub_10000BE5C((v34 + 320));
    (*(*(v62 - 8) + 16))(v64, v63, v62);
    *(v34 + 376) = type metadata accessor for ConfiguratorAnalytics();
    *(v34 + 352) = a11;
    v65 = v99;
    v66 = sub_10000BE18(v98, v99);
    *(v34 + 408) = v65;
    v67 = sub_10000BE5C((v34 + 384));
    (*(*(v65 - 8) + 16))(v67, v66, v65);
    v68 = v97;
    v69 = sub_10000BE18(v96, v97);
    *(v34 + 440) = v68;
    v70 = sub_10000BE5C((v34 + 416));
    (*(*(v68 - 8) + 16))(v70, v69, v68);
    *(v34 + 472) = &type metadata for Bool;
    v71 = a14 & 1;
    *(v34 + 448) = a14 & 1;
    v72 = v95;
    v73 = sub_10000BE18(v94, v95);
    *(v34 + 504) = v72;
    v74 = sub_10000BE5C((v34 + 480));
    (*(*(v72 - 8) + 16))(v74, v73, v72);
    *(v34 + 536) = &type metadata for Int;
    *(v34 + 512) = a16;
    v75 = v93;
    v76 = sub_10000BE18(v92, v93);
    *(v34 + 568) = v75;
    v77 = sub_10000BE5C((v34 + 544));
    (*(*(v75 - 8) + 16))(v77, v76, v75);
    v78 = v91;
    v79 = sub_10000BE18(v90, v91);
    *(v34 + 600) = v78;
    v80 = sub_10000BE5C((v34 + 576));
    (*(*(v78 - 8) + 16))(v80, v79, v78);

    v81 = showFunction(signature:_:)(0xD000000000000122, 0x8000000100348260, v34);
    v83 = v82;

    sub_10000959C(v118);
    sub_10000959C(v116);
    sub_10000959C(v114);
    sub_10000959C(v112);
    sub_10000959C(v110);
    sub_10000959C(v108);
    sub_10000959C(v106);
    sub_10000959C(v104);
    sub_10000959C(v102);
    sub_10000959C(v100);
    sub_10000959C(v98);
    sub_10000959C(v96);
    sub_10000959C(v94);
    sub_10000959C(v92);
    sub_10000959C(v90);
    v84 = sub_100008F6C(v81, v83, &v89);

    *(v30 + 14) = v84;
    v27 = a6;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s.%s", v30, 0x16u);
    swift_arrayDestroy();

    v26 = a1;
  }

  else
  {

    sub_10000959C(v118);
    sub_10000959C(v116);
    sub_10000959C(v114);
    sub_10000959C(v112);
    sub_10000959C(v110);
    sub_10000959C(v108);
    sub_10000959C(v106);
    sub_10000959C(v104);
    sub_10000959C(v102);
    sub_10000959C(v100);
    sub_10000959C(v98);
    sub_10000959C(v96);
    sub_10000959C(v94);
    sub_10000959C(v92);
    sub_10000959C(v90);
    v71 = a14 & 1;
  }

  sub_100029790(v26, (a19 + 3));
  sub_100029790(&v156, (a19 + 8));
  sub_100029790(&v153, (a19 + 13));
  sub_100029790(&v150, (a19 + 18));
  sub_100029790(&v147, (a19 + 23));
  sub_100029790(v27, (a19 + 33));
  sub_100029790(&v144, (a19 + 40));
  sub_100029790(&v141, (a19 + 55));
  sub_100029790(&v138, (a19 + 76));
  sub_100029790(&v135, (a19 + 28));
  a19[38] = a11;
  sub_100029790(&v132, (a19 + 45));
  sub_100029790(&v129, (a19 + 50));
  *(a19 + 312) = v71;
  sub_100029790(&v126, (a19 + 60));
  a19[65] = a16;
  sub_100029790(&v123, (a19 + 66));
  sub_100029790(&v120, (a19 + 71));
  return a19;
}

uint64_t *sub_1000628DC(uint64_t *a1)
{
  v3 = a1;
  sub_1000E6B70(v265);
  if (v1)
  {
  }

  else
  {
    sub_1000E7738(v264);
    sub_1000E7D9C(v262);
    sub_1000E8400(v260);
    sub_1000E8A64(v258);
    sub_1000E31EC(v256);
    v5 = v266;
    v6 = v267;
    sub_10000BE18(v265, v266);
    sub_1000C289C(1u, v5, v6);
    sub_1000E90C8(v253);
    sub_1000E972C(v251);
    sub_1000E9D90(v249);
    sub_1000E4518(v247);
    sub_1000E71D4();
    v8 = v7;
    sub_1000E5844(v245);
    sub_1000EA3F4(v243);
    v9 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v10 = type metadata accessor for Settings();
    v268 = v9[*(v10 + 60)];
    sub_1000EAA58(v241);
    v199 = *&v9[*(v10 + 80)];
    sub_1000EB0BC(v239);
    sub_1000EB720(v237);
    v11 = v263;
    v12 = sub_100022438(v262, v263);
    v198 = v164;
    v13 = *(*(v11 - 8) + 64);
    __chkstk_darwin(v12);
    v15 = (v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = v261;
    v18 = sub_100022438(v260, v261);
    v197 = v164;
    v19 = *(*(v17 - 8) + 64);
    __chkstk_darwin(v18);
    v185 = (v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))();
    v22 = v259;
    v23 = sub_100022438(v258, v259);
    v196 = v164;
    v24 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v23);
    v184 = (v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))();
    v27 = v257;
    v28 = sub_100022438(v256, v257);
    v195 = v164;
    v29 = *(*(v27 - 8) + 64);
    __chkstk_darwin(v28);
    v183 = (v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))();
    v32 = v254;
    v33 = sub_100022438(v253, v254);
    v194 = v164;
    v34 = *(*(v32 - 8) + 64);
    __chkstk_darwin(v33);
    v182 = (v164 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))();
    v37 = v252;
    v38 = sub_100022438(v251, v252);
    v193 = v164;
    v39 = *(*(v37 - 8) + 64);
    __chkstk_darwin(v38);
    v181 = (v164 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))();
    v42 = v250;
    v43 = sub_100022438(v249, v250);
    v192 = v164;
    v44 = *(*(v42 - 8) + 64);
    __chkstk_darwin(v43);
    v180 = (v164 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))();
    v47 = v248;
    v48 = sub_100022438(v247, v248);
    v191 = v164;
    v49 = *(*(v47 - 8) + 64);
    __chkstk_darwin(v48);
    v179 = (v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))();
    v52 = v246;
    v53 = sub_100022438(v245, v246);
    v190 = v164;
    v54 = *(*(v52 - 8) + 64);
    __chkstk_darwin(v53);
    v178 = (v164 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))();
    v57 = v244;
    v58 = sub_100022438(v243, v244);
    v189 = v164;
    v59 = *(*(v57 - 8) + 64);
    __chkstk_darwin(v58);
    v177 = (v164 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v61 + 16))();
    v62 = v242;
    v63 = sub_100022438(v241, v242);
    v188 = v164;
    v64 = *(*(v62 - 8) + 64);
    __chkstk_darwin(v63);
    v66 = (v164 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v67 + 16))(v66);
    v68 = v240;
    v69 = sub_100022438(v239, v240);
    v187 = v164;
    v70 = *(*(v68 - 8) + 64);
    __chkstk_darwin(v69);
    v72 = (v164 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72);
    v74 = v238;
    v75 = sub_100022438(v237, v238);
    v186 = v164;
    v76 = *(*(v74 - 8) + 64);
    __chkstk_darwin(v75);
    v78 = (v164 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v79 + 16))(v78);
    v80 = *v15;
    v81 = *v185;
    v82 = *v183;
    v173 = *v184;
    v174 = v82;
    v83 = *v181;
    v175 = *v182;
    v176 = v83;
    v84 = *v179;
    v181 = *v180;
    v182 = v84;
    v85 = *v177;
    v183 = *v178;
    v184 = v85;
    v185 = *v66;
    v86 = *v72;
    v87 = *v78;
    v88 = type metadata accessor for CertificateManager();
    v236[4] = &off_100381288;
    v236[3] = v88;
    v236[0] = v80;
    v89 = type metadata accessor for ProfileManager();
    v235 = &off_100380E88;
    v234 = v89;
    v233[0] = v81;
    v90 = type metadata accessor for MPOCDefaultAttestationManager();
    v232 = &off_100380AA8;
    v231 = v90;
    v230[0] = v173;
    v91 = type metadata accessor for MPOCDefaultMonitorManager();
    v229 = &off_100382710;
    v228 = v91;
    v227[0] = v174;
    v92 = type metadata accessor for SystemInfo();
    v226 = &off_100386330;
    v225 = v92;
    v224[0] = v175;
    v93 = type metadata accessor for DefaultManagedDictionary();
    v223 = &off_100386190;
    v222 = v93;
    v221[0] = v176;
    v94 = type metadata accessor for SignerFactory();
    v220 = &off_100385348;
    v219 = v94;
    v218[0] = v181;
    v95 = type metadata accessor for DefaultSecureTimeKeeper();
    v217 = &off_100384E70;
    v216 = v95;
    v215[0] = v182;
    v213 = type metadata accessor for SecureElement();
    v214 = &off_1003849A0;
    v212[0] = v183;
    v210 = type metadata accessor for DefaultTimeTokenManager();
    v211 = &off_100384FB0;
    v209[0] = v184;
    v207 = type metadata accessor for LaunchFeedbackFramework();
    v208 = &off_1003823C0;
    v206[0] = v185;
    v204 = type metadata accessor for KernelManagerWrapper();
    v205 = &off_100382050;
    v203[0] = v86;
    v201 = type metadata accessor for SESnapshotWrapper();
    v202 = &off_100380B28;
    v200[0] = v87;
    type metadata accessor for Configurator();
    v182 = swift_allocObject();
    v96 = sub_100022438(v236, v88);
    v185 = v164;
    v97 = *(*(v88 - 8) + 64);
    __chkstk_darwin(v96);
    v180 = (v164 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v99 + 16))();
    v100 = v234;
    v101 = sub_100022438(v233, v234);
    v184 = v164;
    v102 = *(*(v100 - 8) + 64);
    __chkstk_darwin(v101);
    v178 = (v164 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v104 + 16))();
    v105 = v231;
    v106 = sub_100022438(v230, v231);
    v183 = v164;
    v107 = *(*(v105 - 8) + 64);
    __chkstk_darwin(v106);
    v176 = (v164 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v109 + 16))();
    v110 = v228;
    v111 = sub_100022438(v227, v228);
    v181 = v164;
    v112 = *(*(v110 - 8) + 64);
    __chkstk_darwin(v111);
    v175 = (v164 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v114 + 16))();
    v115 = v225;
    v116 = sub_100022438(v224, v225);
    v179 = v164;
    v117 = *(*(v115 - 8) + 64);
    __chkstk_darwin(v116);
    v173 = (v164 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v119 + 16))();
    v120 = v222;
    v121 = sub_100022438(v221, v222);
    v177 = v164;
    v122 = *(*(v120 - 8) + 64);
    __chkstk_darwin(v121);
    v171 = (v164 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v124 + 16))();
    v125 = v219;
    v126 = sub_100022438(v218, v219);
    v174 = v164;
    v127 = *(*(v125 - 8) + 64);
    __chkstk_darwin(v126);
    v169 = (v164 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v129 + 16))();
    v130 = v216;
    v131 = sub_100022438(v215, v216);
    v172 = v164;
    v132 = *(*(v130 - 8) + 64);
    __chkstk_darwin(v131);
    v167 = (v164 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v134 + 16))();
    v135 = v213;
    v136 = sub_100022438(v212, v213);
    v170 = v164;
    v137 = *(*(v135 - 8) + 64);
    __chkstk_darwin(v136);
    v165 = (v164 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v139 + 16))();
    v140 = v210;
    v141 = sub_100022438(v209, v210);
    v168 = v164;
    v142 = *(*(v140 - 8) + 64);
    __chkstk_darwin(v141);
    v144 = (v164 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v145 + 16))(v144);
    v146 = v207;
    v147 = sub_100022438(v206, v207);
    v166 = v164;
    v148 = *(*(v146 - 8) + 64);
    __chkstk_darwin(v147);
    v150 = (v164 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v151 + 16))(v150);
    v152 = v204;
    v153 = sub_100022438(v203, v204);
    v164[2] = v164;
    v154 = *(*(v152 - 8) + 64);
    __chkstk_darwin(v153);
    v156 = (v164 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v157 + 16))(v156);
    v158 = v201;
    v159 = sub_100022438(v200, v201);
    v164[1] = v164;
    v160 = *(*(v158 - 8) + 64);
    __chkstk_darwin(v159);
    v162 = (v164 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v163 + 16))(v162);
    v3 = sub_100061D64(v264, *v180, *v178, *v176, *v175, &v255, *v173, *v171, *v169, *v167, v8, *v165, *v144, v268, *v150, v199, *v156, *v162, v182);

    sub_10000959C(v200);
    sub_10000959C(v203);
    sub_10000959C(v206);
    sub_10000959C(v209);
    sub_10000959C(v212);
    sub_10000959C(v215);
    sub_10000959C(v218);
    sub_10000959C(v221);
    sub_10000959C(v224);
    sub_10000959C(v227);
    sub_10000959C(v230);
    sub_10000959C(v233);
    sub_10000959C(v236);
    sub_10000959C(v237);
    sub_10000959C(v239);
    sub_10000959C(v241);
    sub_10000959C(v243);
    sub_10000959C(v245);
    sub_10000959C(v247);
    sub_10000959C(v249);
    sub_10000959C(v251);
    sub_10000959C(v253);
    sub_10000959C(v256);
    sub_10000959C(v258);
    sub_10000959C(v260);
    sub_10000959C(v262);
    sub_10000959C(v265);
  }

  return v3;
}

uint64_t sub_100064190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100064238()
{
  result = qword_10039E278;
  if (!qword_10039E278)
  {
    sub_1000040BC(&qword_10039E270, &unk_1002C3BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E278);
  }

  return result;
}

uint64_t sub_1000642B8(void *a1)
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

void sub_100064310(char a1@<W0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = *v2;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_10039FF28);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v43 = v11;
    v15 = sub_100008F6C(v13, v14, &v45);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002C1660;
    *(v16 + 56) = &type metadata for Bool;
    *(v16 + 32) = a1 & 1;
    v17 = showFunction(signature:_:)(0xD00000000000001DLL, 0x80000001003487F0, v16);
    v19 = v18;

    v20 = sub_100008F6C(v17, v19, &v45);
    v4 = v3;

    *(v12 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v43, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();

    if ((a1 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if ((a1 & 1) == 0)
    {
LABEL_10:
      v31 = *sub_10000BE18(v5 + 18, v5[21]);
      sub_100034704(v47);
      memcpy(a2, v47, 0x122uLL);
      return;
    }
  }

  v22 = v5[26];
  v21 = v5[27];
  sub_10000BE18(v5 + 23, v22);
  (*(*(v21 + 8) + 8))(v22);
  if (!v4)
  {
    goto LABEL_10;
  }

  v44 = v4;
  v23 = v5[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  inited = swift_initStackObject();
  *(inited + 32) = 12;
  v25 = inited + 32;
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 7;
  sub_100184144(inited);
  swift_setDeallocating();
  v26 = sub_10000BD44(v25, &qword_10039FED8, &unk_1002C37D0);
  v27 = *(v23 + 56);
  __chkstk_darwin(v26);
  os_unfair_lock_lock((v27 + 32));
  sub_10006535C((v27 + 16));
  os_unfair_lock_unlock((v27 + 32));

  v29 = *(v23 + 56);
  __chkstk_darwin(v28);
  os_unfair_lock_lock((v29 + 32));
  sub_1000653BC((v29 + 16));
  os_unfair_lock_unlock((v29 + 32));
  v48 = v44;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  if (swift_dynamicCast())
  {
    v30 = sub_100098F34(v45, v46);
  }

  else
  {
    swift_errorRetain();
    v30 = sub_100020148(2029, 0, 0, v44);
  }

  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45 = v36;
    *v35 = 136446210;
    v48 = v32;
    type metadata accessor for ConfigurationError(0);
    v37 = v32;
    v38 = String.init<A>(describing:)();
    v40 = sub_100008F6C(v38, v39, &v45);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Configuration error while fetching attestation state: %{public}s", v35, 0xCu);
    sub_10000959C(v36);
  }

  v41 = *sub_10000BE18(v5 + 60, v5[63]);
  v42 = v32;
  sub_10013F4E4(v42, v41);

  swift_willThrow();
}

void sub_1000648EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = [objc_opt_self() sharedHardwareManager];
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v7;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v6;
  v12[4] = sub_100064FDC;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001E61C;
  v12[3] = &unk_1003816A8;
  v10 = _Block_copy(v12);

  v11 = [v8 startSecureElementManagerSession:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();
}

uint64_t sub_100064A78()
{
  sub_10000959C((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100064AB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100064ABC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064B18()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100064BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064C68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_100004074(&qword_1003A0178, &unk_1002C3BB0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 2);

  v11 = *(v0 + 4);

  v12 = *(v0 + 6);

  v13 = *(v2 + 8);
  v13(&v0[v4], v1);
  if (!(*(v2 + 48))(&v0[v8], 1, v1))
  {
    v13(&v0[v8], v1);
  }

  v14 = (v8 + v9) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *&v0[v14 + 16];

  v18 = *&v0[v15 + 8];

  v19 = *&v0[v16];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v16 + 8, v3 | v7 | 7);
}

void sub_100064E24(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(sub_100004074(&qword_1003A0178, &unk_1002C3BB0) - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  sub_10005A560(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v8, v3 + v11, *(v3 + v12), *(v3 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + (v12 & 0xFFFFFFFFFFFFFFF8) + 16), *(v3 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)), *(v3 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + (((((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100064F94()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100064FF0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100065000()
{
  sub_100064FF0(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100065074(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004074(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000650DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for Configurator.StoreAndForwardState()
{
  result = qword_1003A0240;
  if (!qword_1003A0240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100065170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configurator.StoreAndForwardState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000651D4(uint64_t a1)
{
  v2 = type metadata accessor for Configurator.StoreAndForwardState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100065230()
{
  result = qword_1003A01C8;
  if (!qword_1003A01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A01C8);
  }

  return result;
}

uint64_t sub_1000652D4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000653D4(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v26 = _swiftEmptyArrayStorage;
  sub_10004E444(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v21[0] = *(i - 1);
    v21[1] = v9;

    a1(&v22, v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v22;
    v10 = v23;
    v13 = v24;
    v12 = v25;
    v26 = v6;
    v15 = v6[2];
    v14 = v6[3];
    if (v15 >= v14 >> 1)
    {
      v19 = v23;
      v17 = v25;
      sub_10004E444((v14 > 1), v15 + 1, 1);
      v12 = v17;
      v10 = v19;
      v6 = v26;
    }

    v6[2] = v15 + 1;
    v16 = &v6[4 * v15];
    v16[4] = v11;
    v16[5] = v10;
    v16[6] = v13;
    v16[7] = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100065514(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = _swiftEmptyArrayStorage;
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_10004E2DC(0, v8[2] + 1, 1);
          v8 = v19;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_10004E2DC((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        v8[2] = v13 + 1;
        v14 = &v8[2 * v13];
        v14[4] = v10;
        v14[5] = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_16:

    return v8;
  }

  return result;
}

void sub_10006568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void, void *), uint64_t a15)
{
  v149 = a8;
  v148 = a7;
  v153 = a6;
  v152 = a5;
  v151 = a2;
  v150 = a1;
  v18 = *v15;
  v146 = type metadata accessor for OSSignpostID();
  v145 = *(v146 - 8);
  v19 = *(v145 + 64);
  v20 = __chkstk_darwin(v146);
  v143 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v144 = &v124 - v22;
  v23 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v138 = &v124 - v25;
  v135 = type metadata accessor for DispatchTime();
  v133 = *(v135 - 8);
  v26 = *(v133 + 64);
  __chkstk_darwin(v135);
  v132 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v129 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v128 = &v124 - v32;
  v154 = type metadata accessor for StopWatch();
  v130 = *(v154 - 8);
  v33 = *(v130 + 64);
  __chkstk_darwin(v154);
  v131 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v140 = *(v35 - 8);
  v36 = *(v140 + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v157 = &v124 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v134 = &v124 - v40;
  v141 = v41;
  __chkstk_darwin(v39);
  v43 = &v124 - v42;
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v156 = &v124 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v48;
  __chkstk_darwin(v47);
  v50 = &v124 - v49;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v158 = a14;
  v51 = type metadata accessor for Logger();
  v52 = sub_10000403C(v51, qword_1003A0278);
  v53 = *(v45 + 16);
  v147 = a3;
  v53(v50, a3, v44);
  sub_100065074(a4, v43, &qword_1003A0178, &unk_1002C3BB0);
  v127 = v52;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  v56 = os_log_type_enabled(v54, v55);
  v159 = a4;
  v142 = v45;
  v137 = v45 + 16;
  v136 = v53;
  v155 = v44;
  if (v56)
  {
    LODWORD(v126) = v55;
    v57 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v163 = v125;
    *v57 = 136315394;
    v58 = _typeName(_:qualified:)();
    v60 = sub_100008F6C(v58, v59, &v163);

    *(v57 + 4) = v60;
    *(v57 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1002C1790;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 32) = 0x746E6573657270;
    *(v61 + 40) = 0xE700000000000000;
    *(v61 + 88) = v44;
    v62 = sub_10000BE5C((v61 + 64));
    v53(v62, v50, v44);
    v63 = v134;
    sub_100065074(v43, v134, &qword_1003A0178, &unk_1002C3BB0);
    if ((*(v45 + 48))(v63, 1, v44) == 1)
    {
      sub_10000BD44(v63, &qword_1003A0178, &unk_1002C3BB0);
      *(v61 + 120) = &type metadata for String;
      *(v61 + 96) = 0;
      *(v61 + 104) = 0xE000000000000000;
    }

    else
    {
      v162 = v44;
      v64 = sub_10000BE5C(&v161);
      (*(v45 + 32))(v64, v63, v44);
      sub_100019D3C(&v161, (v61 + 96));
    }

    v65 = showFunction(signature:_:)(0xD000000000000099, 0x8000000100348A40, v61);
    v67 = v66;

    sub_10000BD44(v43, &qword_1003A0178, &unk_1002C3BB0);
    (*(v45 + 8))(v50, v44);
    v68 = sub_100008F6C(v65, v67, &v163);

    *(v57 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v54, v126, "%s.%s", v57, 0x16u);
    swift_arrayDestroy();

    a4 = v159;
  }

  else
  {

    sub_10000BD44(v43, &qword_1003A0178, &unk_1002C3BB0);
    (*(v45 + 8))(v50, v44);
  }

  v69 = *sub_10000BE18(v160 + 23, v160[26]);
  if (sub_1000B100C(a4, 0.0))
  {
    v134 = a15;
    v125 = a13;
    if (a13)
    {
      ObjectType = swift_getObjectType();
      v71 = sub_10009CAF8(2, ObjectType);
      v73 = v72;

      v127 = v71;
      v71(0);
      v126 = v73;
    }

    else
    {
      v127 = 0;
      v126 = 0;
    }

    v124 = *(v160[38] + 56);
    os_unfair_lock_lock(v124 + 8);
    v84 = v133;
    v85 = *(v133 + 56);
    v86 = v128;
    v87 = v135;
    v85(v128, 1, 1, v135);
    v88 = v129;
    v85(v129, 1, 1, v87);
    v89 = v131;
    v85(v131, 1, 1, v87);
    v90 = *(v154 + 20);
    v85((v89 + v90), 1, 1, v87);
    sub_100082A14(v86, v89, &qword_10039E290, &unk_1002C37C0);
    sub_100082A14(v88, v89 + v90, &qword_10039E290, &unk_1002C37C0);
    v91 = v132;
    static DispatchTime.now()();
    sub_10000BD44(v89, &qword_10039E290, &unk_1002C37C0);
    (*(v84 + 32))(v89, v91, v87);
    v85(v89, 0, 1, v87);
    v92 = v138;
    sub_10008289C(v89, v138, type metadata accessor for StopWatch);
    (*(v130 + 56))(v92, 0, 1, v154);
    v93 = v124;
    sub_10002D278(v92, 0x637465464D414C53, 0xED0000656D695468);
    sub_100082008(v89, type metadata accessor for StopWatch);
    os_unfair_lock_unlock(v93 + 8);
    if (qword_10039D388 != -1)
    {
      swift_once();
    }

    v154 = a12;
    v135 = a11;
    v138 = a10;
    v133 = a9;
    v94 = type metadata accessor for OSSignposter();
    sub_10000403C(v94, qword_1003A0290);
    v95 = v144;
    static OSSignpostID.exclusive.getter();
    v96 = OSSignposter.logHandle.getter();
    v97 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, v97, v99, "config-install-fetchSLAM", "begin fetch SLAM", v98, 2u);
    }

    v100 = v145;
    v101 = v146;
    (*(v145 + 16))(v143, v95, v146);
    v102 = type metadata accessor for OSSignpostIntervalState();
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    swift_allocObject();
    v105 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v100 + 8))(v95, v101);
    v106 = v160;
    v145 = v160[6];
    v144 = v160[7];
    v146 = sub_10000BE18(v160 + 3, v145);
    sub_100065074(v159, v157, &qword_1003A0178, &unk_1002C3BB0);
    v136(v156, v147, v155);
    v107 = (*(v140 + 80) + 48) & ~*(v140 + 80);
    v108 = v142;
    v109 = (v141 + *(v142 + 80) + v107) & ~*(v142 + 80);
    v110 = v109 + v139;
    v111 = (v109 + v139 + 9) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + 23) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    *(v113 + 2) = v105;
    *(v113 + 3) = v106;
    v114 = v134;
    *(v113 + 4) = v158;
    *(v113 + 5) = v114;
    sub_1000829AC(v157, &v113[v107], &qword_1003A0178, &unk_1002C3BB0);
    (*(v108 + 32))(&v113[v109], v156, v155);
    v115 = &v113[v110];
    v116 = v148 & 1;
    *v115 = v116;
    v115[1] = v149 & 1;
    v117 = &v113[v111];
    v118 = v138;
    *v117 = v133;
    *(v117 + 1) = v118;
    v119 = &v113[v112];
    v120 = v154;
    *v119 = v135;
    v119[1] = v120;
    *&v113[(v112 + 23) & 0xFFFFFFFFFFFFFFF8] = v125;
    v121 = v144;
    v122 = *(v144 + 2);
    swift_unknownObjectRetain();

    v123 = v127;
    v122(v150, v151, v152, v153, v116, v127, v126, sub_100081E50, v113, v145, v121);
    sub_1000048A0(v123);
  }

  else
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Not attested before OTA", v76, 2u);
    }

    v77 = sub_100020148(2029, 0, 0, 0);
    v78 = v160[38];
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 4;
    *&v161 = v77;
    type metadata accessor for ConfigurationError(0);
    sub_100081B2C(&qword_10039DC00, type metadata accessor for ConfigurationError);
    v80 = _BridgedStoredNSError.errorCode.getter();
    *(inited + 64) = &type metadata for Int;
    *(inited + 40) = v80;
    sub_100184144(inited);
    swift_setDeallocating();
    v81 = sub_10000BD44(inited + 32, &qword_10039FED8, &unk_1002C37D0);
    v82 = *(v78 + 56);
    __chkstk_darwin(v81);
    os_unfair_lock_lock((v82 + 32));
    sub_1000507B4((v82 + 16));
    os_unfair_lock_unlock((v82 + 32));

    v83 = v77;
    v158(0, v77);
  }
}

uint64_t sub_100066728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v45 = a5;
  v47 = a3;
  v48 = a4;
  v46 = a2;
  v44 = a1;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v39 - v11;
  v41 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v39[0] = v13 + 16;
  v14 = swift_allocObject();
  v50 = v14;
  *(v14 + 16) = 0;
  v39[1] = v14 + 16;
  v15 = swift_allocObject();
  v49 = v15;
  *(v15 + 16) = 0;
  v43 = v15 + 16;
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v40 = v13;
  v16 = type metadata accessor for OSSignposter();
  sub_10000403C(v16, qword_1003A0290);
  static OSSignpostID.exclusive.getter();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "config-status-checkForRemoteUpdates", "begin check for remote updates", v19, 2u);
  }

  (*(v6 + 16))(v10, v12, v5);
  v21 = type metadata accessor for OSSignpostIntervalState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v6 + 8))(v12, v5);
  v26 = v42[6];
  v25 = v42[7];
  v39[3] = sub_10000BE18(v42 + 3, v26);
  v27 = swift_allocObject();
  v29 = v40;
  v28 = v41;
  v27[2] = v24;
  v27[3] = v29;
  v30 = v50;
  v31 = v49;
  v27[4] = v50;
  v27[5] = v31;
  v27[6] = v28;
  v32 = *(v25 + 16);
  v42 = v24;

  v33 = v28;
  v32(v44, v46, v47, v48, v45 & 1, 0, 0, sub_100081C68, v27, v26, v25);

  OS_dispatch_semaphore.wait()();
  swift_beginAccess();
  if (*(v31 + 16))
  {
    v34 = *(v31 + 16);
    swift_willThrow();
    swift_errorRetain();
  }

  else
  {

    swift_beginAccess();
    v36 = *(v29 + 16);
    swift_beginAccess();
    v37 = *(v30 + 16);

    if (v37)
    {
      v38 = 256;
    }

    else
    {
      v38 = 0;
    }

    return v38 | v36;
  }
}

uint64_t sub_100066B68()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0278);
  sub_10000403C(v0, qword_1003A0278);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

uint64_t sub_100066BD4()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A0290);
  v1 = sub_10000403C(v0, qword_1003A0290);
  if (qword_10039D738 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100066C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100004074(&qword_1003A0558, &qword_1002C3EC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100083270();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_1000430C8(&qword_10039FBD8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_100066E64()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_100066E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x8000000100348E50 == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100348E70 == a2)
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

uint64_t sub_100066F7C(uint64_t a1)
{
  v2 = sub_100083270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066FB8(uint64_t a1)
{
  v2 = sub_100083270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066FF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100081084(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100067044(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3 && (sub_10015140C(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000670C0()
{
  v2 = v1;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v23 - v9;
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  sub_10000403C(v11, qword_1003A0290);
  static OSSignpostID.exclusive.getter();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    v23[1] = v0;
    v15 = v14;
    *v14 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, "config-prepare-getCertificates", "begin get cert with chain", v15, 2u);
    v2 = v1;
  }

  (*(v4 + 16))(v8, v10, v3);
  v17 = type metadata accessor for OSSignpostIntervalState();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v4 + 8))(v10, v3);
  v20 = sub_1000675C8();
  if (v2)
  {
    sub_10006733C();
  }

  else
  {
    v22 = v20;
    sub_10006733C();

    return v22;
  }
}

uint64_t sub_10006733C()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A0290);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end get cert with chain";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "config-prepare-getCertificates", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000675C8()
{
  v2 = v1;
  v75 = *v0;
  v79 = type metadata accessor for DecodingError();
  v77 = *(v79 - 8);
  v3 = *(v77 + 64);
  v4 = __chkstk_darwin(v79);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v75 - v6;
  v7 = type metadata accessor for URLRequest();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  __chkstk_darwin(v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v75 - v17;
  URL.appendingPathComponent(_:)();
  v83 = v12;
  v19 = v12;
  v20 = v10;
  v21 = *(v19 + 16);
  v80 = v18;
  v84 = v11;
  v21(v16, v18, v11);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v22 = (v0 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel);
  v23 = 1;
  *&v24 = 138412290;
  v85 = v24;
  v86 = v10;
  while (1)
  {
    v25 = v23;
    v26 = v22[3];
    v27 = v22[4];
    sub_10000BE18(v22, v26);
    v28 = sub_10013C2A4(v20, 0, v26, v27);
    v89 = v2;
    if (!v2)
    {
      v30 = v28;
      v31 = v29;
      type metadata accessor for JSONDecoder();
      sub_10009A814(_swiftEmptyArrayStorage);
      sub_100081B74();
      static JSONDecoder.decodeClean<A>(_:from:userInfo:)();

      (*(v81 + 8))(v20, v82);
      (*(v83 + 8))(v80, v84);
      sub_100009548(v30, v31);
      return v90;
    }

    _s3__C4CodeOMa_12(0);
    v90 = 5006;
    swift_errorRetain();
    sub_100081B2C(&qword_10039D9B8, _s3__C4CodeOMa_12);
    v32 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v32)
    {

      v43 = 2034;
LABEL_16:
      sub_100020148(v43, 0, 0, 0);
      swift_willThrow();
      goto LABEL_17;
    }

    type metadata accessor for Code(0);
    v90 = 404;
    swift_errorRetain();
    sub_100081B2C(&qword_10039DF38, type metadata accessor for Code);
    v33 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v33)
    {

      v43 = 2032;
      goto LABEL_16;
    }

    v90 = v2;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    type metadata accessor for SPRHTTPError(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v34 = v91;
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000403C(v35, qword_1003A0278);
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = v85;
      v41 = v36;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v40 = v42;
      _os_log_impl(&_mh_execute_header, v37, v38, "HTTP error when renewing certificates: %@", v39, 0xCu);
      sub_10000BD44(v40, &unk_10039E220, &qword_1002C3D60);

      v36 = v37;
      v37 = v41;
      v20 = v86;
    }

    v2 = 0;

    if (!v89)
    {
      sub_100009548(v87, v88);
    }

    v23 = 0;
    if ((v25 & 1) == 0)
    {
      sub_100020148(2000, 0xD000000000000019, 0x80000001003489B0, 0);
      swift_willThrow();
      (*(v81 + 8))(v20, v82);
      return (*(v83 + 8))(v80, v84);
    }
  }

  v90 = v2;
  swift_errorRetain();
  v44 = v78;
  v45 = v79;
  if (!swift_dynamicCast())
  {

    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000403C(v56, qword_1003A0278);
    swift_errorRetain();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *&v85 = swift_slowAlloc();
      v90 = v85;
      *v59 = 136315650;
      v60 = _typeName(_:qualified:)();
      v62 = sub_100008F6C(v60, v61, &v90);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_100008F6C(0xD000000000000012, 0x8000000100348990, &v90);
      *(v59 + 22) = 2080;
      v91 = v2;
      swift_errorRetain();
      v63 = String.init<A>(describing:)();
      v65 = sub_100008F6C(v63, v64, &v90);
      v20 = v86;

      *(v59 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s.%s: client error when renewing certificates: %s", v59, 0x20u);
      swift_arrayDestroy();
    }

    v90 = 5005;
    swift_errorRetain();
    v66 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v66)
    {
      goto LABEL_35;
    }

    v90 = 5004;
    swift_errorRetain();
    v67 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v67 & 1) != 0 || (v90 = 5003, swift_errorRetain(), v68 = static _ErrorCodeProtocol.~= infix(_:_:)(), , (v68))
    {
LABEL_35:
      swift_getErrorValue();
      v69 = Error.localizedDescription.getter();
      v71 = v70;
      v72 = 2000;
    }

    else
    {
      swift_getErrorValue();
      v69 = Error.localizedDescription.getter();
      v71 = v74;
      v72 = 2999;
    }

    sub_100020148(v72, v69, v71, 0);
    swift_willThrow();

LABEL_17:
    (*(v81 + 8))(v20, v82);
    result = (*(v83 + 8))(v80, v84);
    if (v89)
    {
      return result;
    }

    return sub_100009548(v87, v88);
  }

  v46 = v77;
  v47 = v76;
  (*(v77 + 32))(v76, v44, v45);
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_10000403C(v48, qword_1003A0278);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v89;
  if (v51)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "cannot decode server response", v53, 2u);
  }

  v54 = Error.localizedDescription.getter();
  sub_100020148(2025, v54, v55, 0);
  swift_willThrow();
  (*(v46 + 8))(v47, v45);
  (*(v81 + 8))(v20, v82);
  (*(v83 + 8))(v80, v84);

  if (!v52)
  {
    return sub_100009548(v87, v88);
  }

  return result;
}

uint64_t sub_1000681C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v65 = a3;
  v66 = a8;
  v68 = a6;
  v69 = a7;
  LODWORD(v10) = a5;
  v64._countAndFlagsBits = a1;
  v64._object = a2;
  v12 = v9;
  v13 = *v9;
  v14 = type metadata accessor for URLRequest();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  __chkstk_darwin(v14);
  v17 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for URL();
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v72 = &v61[-v23];
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v63 = sub_10000403C(v24, qword_1003A0278);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v67 = v13;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v62 = v10;
    v10 = v28;
    v76[0].value._countAndFlagsBits = swift_slowAlloc();
    *v10 = 136315394;
    v29 = _typeName(_:qualified:)();
    v31 = v12;
    v32 = a4;
    v33 = sub_100008F6C(v29, v30, &v76[0].value._countAndFlagsBits);

    *(v10 + 4) = v33;
    *(v10 + 12) = 2080;
    v34 = showFunction(signature:_:)(0xD000000000000044, 0x80000001003488F0, _swiftEmptyArrayStorage);
    v36 = sub_100008F6C(v34, v35, &v76[0].value._countAndFlagsBits);
    a4 = v32;
    v12 = v31;

    *(v10 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();

    LOBYTE(v10) = v62;
  }

  v37 = v72;
  URL.appendingPathComponent(_:)();

  (*(v73 + 16))(v22, v37, v74);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v76[0].value._countAndFlagsBits = 0x20726572616542;
  v76[0].value._object = 0xE700000000000000;
  String.append(_:)(v64);
  v38._object = 0x8000000100344E90;
  v38._countAndFlagsBits = 0xD000000000000015;
  URLRequest.setValue(_:forHTTPHeaderField:)(v76[0], v38);

  sub_1000094F4(v65, a4);
  URLRequest.httpBody.setter();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v76[0].value._countAndFlagsBits = v42;
    *v41 = 136315138;
    v43 = swift_beginAccess();
    v44 = sub_10009E644(v43);
    v46 = sub_100008F6C(v44, v45, &v76[0].value._countAndFlagsBits);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "kernel manager request: %s", v41, 0xCu);
    sub_10000959C(v42);
  }

  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v48 = *(v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel + 24);
  v49 = *(v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel + 32);
  sub_10000BE18((v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel), v48);
  swift_beginAccess();
  v50 = swift_allocObject();
  v65 = v47;
  *(v50 + 16) = v47;
  *(v50 + 24) = v10 & 1;
  v51 = v67;
  *(v50 + 32) = v66;
  *(v50 + 40) = a9;
  *(v50 + 48) = v12;
  *(v50 + 56) = v51;
  v52 = *(v49 + 32);

  v53 = v52(v17, 0, sub_10006963C, v50, v48, v49);

  v75 = v53;
  swift_getKeyPath();
  v54 = swift_allocObject();
  v55 = v68;
  v56 = v69;
  *(v54 + 16) = v68;
  *(v54 + 24) = v56;
  sub_1000696D8(v55);
  v57 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  swift_beginAccess();
  v58 = *(v47 + 16);
  *(v47 + 16) = v57;

  [v53 resume];
  (*(v73 + 8))(v72, v74);
  v59 = *(v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask);
  *(v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask) = v53;

  return (*(v70 + 8))(v17, v71);
}

void sub_1000688BC(uint64_t a1, void *a2, uint64_t a3, int a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v68 = a4;
  v13 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v65 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v73 = v17;
  v74 = v18;
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v71 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = v65 - v23;
  __chkstk_darwin(v22);
  v26 = v65 - v25;
  swift_beginAccess();
  v27 = *(a3 + 16);
  if (v27)
  {
    v28 = v27;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  sub_100065074(a1, v16, &qword_1003A03D0, &unk_1002C3D50);
  v30 = v73;
  v29 = v74;
  if ((v74[6])(v16, 1, v73) == 1)
  {
    sub_10000BD44(v16, &qword_1003A03D0, &unk_1002C3D50);
    if (a2)
    {
      swift_errorRetain();
      if (qword_10039D380 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000403C(v31, qword_1003A0278);
      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v78[0] = v74;
        *v34 = 136446210;
        v77[0] = a2;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v35 = String.init<A>(describing:)();
        v37 = a5;
        v38 = sub_100008F6C(v35, v36, v78);

        *(v34 + 4) = v38;
        a5 = v37;
        _os_log_impl(&_mh_execute_header, v32, v33, "OTA client error: %{public}s", v34, 0xCu);
        sub_10000959C(v74);
      }

      v78[0] = a2;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      type metadata accessor for SPRHTTPError(0);
      if (swift_dynamicCast())
      {
        v39 = v77[0];
        v40 = sub_100081614(v77[0]);

        v41 = v40;
      }

      else
      {

        _s3__C4CodeOMa_12(0);
        v78[0] = 5008;
        swift_errorRetain();
        sub_100081B2C(&qword_10039D9B8, _s3__C4CodeOMa_12);
        v61 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if (v61)
        {
          v41 = sub_100020148(2040, 0, 0, 0);
        }

        else
        {
          swift_errorRetain();
          v62 = sub_100020148(2000, 0, 0, a2);

          v63 = *sub_10000BE18((a7 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_launchFeedbackFramework), *(a7 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_launchFeedbackFramework + 24));
          v41 = v62;
          sub_10013F4E4(v41, v63);
        }
      }

      sub_100081054(v77);
      memcpy(v78, v77, 0x111uLL);
      a5(v78, v41);
    }
  }

  else
  {
    v70 = a6;
    (v29[4])(v26, v16, v30);
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    v43 = sub_10000403C(v42, qword_1003A0278);
    v44 = v29[2];
    v69 = v26;
    v66 = v44;
    v44(v24, v26, v30);
    v45 = v29;
    v65[1] = v43;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    v48 = os_log_type_enabled(v46, v47);
    v67 = a7;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      v78[0] = v65[0];
      *v49 = 136315138;
      sub_100081B2C(&qword_1003A3C40, &type metadata accessor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = a5;
      v53 = v52;
      v72 = v45[1];
      v72(v24, v73);
      v54 = sub_100008F6C(v50, v53, v78);
      a5 = v51;

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "using streaming type custom decoder: %s", v49, 0xCu);
      sub_10000959C(v65[0]);

      v30 = v73;
    }

    else
    {

      v72 = v29[1];
      v72(v24, v30);
    }

    v55 = v71;
    v56 = v69;
    v66(v71, v69, v30);
    type metadata accessor for KCSOTAResponseParser();
    v57 = swift_allocObject();
    v58 = Data.init(contentsOf:options:)();
    v60 = v59;
    v72(v55, v30);
    *(v57 + 16) = v58;
    *(v57 + 24) = v60;
    sub_1000864B8(v68 & 1, v77);
    memcpy(v76, v77, 0x111uLL);
    nullsub_1(v76);
    memcpy(v78, v76, 0x111uLL);
    sub_100081A7C(v77, &v75);
    a5(v78, 0);
    sub_100081AD8(v77);

    sub_100081AD8(v77);
    a7 = v67;
    v72(v56, v30);
  }

  v64 = *(a7 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask);
  *(a7 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask) = 0;
}

uint64_t sub_1000692B4(id *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  result = [*a1 countOfBytesReceived];
  v6 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = [v4 countOfBytesExpectedToReceive];
  if (!a3)
  {
    return result;
  }

  v7 = ceil(v6 / result);
  if (v7 <= 100.0)
  {
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v7 > -9.22337204e18)
      {
        if (v7 < 9.22337204e18)
        {
          v8 = v7;
          return a3(v8);
        }

LABEL_14:
        __break(1u);
        return result;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = 100;
  return a3(v8);
}

uint64_t sub_100069398()
{
  v1 = OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_configuratorUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000959C((v0 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel));
  sub_10000959C((v0 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_launchFeedbackFramework));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10006948C()
{
  result = type metadata accessor for URL();
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

uint64_t sub_100069530()
{
  v2 = *v0;
  result = sub_1000670C0();
  if (v1)
  {
    return v4;
  }

  return result;
}

id sub_100069598()
{
  result = *(*v0 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t sub_1000695BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000695F4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10006965C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 countOfBytesReceived];
  *a2 = result;
  return result;
}

uint64_t sub_100069690()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000696D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000696E8(void *__src, uint64_t a2, int a3, void *a4, void (*a5)(void, uint64_t), uint64_t a6, uint64_t *a7, uint64_t *a8, unsigned __int8 a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v170 = a8;
  v174 = a7;
  v178 = a6;
  v179 = a5;
  v181 = a4;
  v177 = __src;
  memcpy(v189, __src, sizeof(v189));
  v169 = _s14InstallPackageVMa(0);
  v16 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v173 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OSSignpostError();
  v175 = *(v18 - 8);
  v176 = v18;
  v19 = *(v175 + 64);
  v20 = __chkstk_darwin(v18);
  v167 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v157 - v22;
  v180 = type metadata accessor for OSSignpostID();
  v24 = *(v180 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v180);
  v168 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v171 = &v157 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v157 - v31;
  __chkstk_darwin(v30);
  v34 = &v157 - v33;
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for OSSignposter();
  v172 = sub_10000403C(v35, qword_1003A0290);
  v36 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v37 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v39 = v175;
    v38 = v176;
    if ((*(v175 + 88))(v23, v176) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v40 = "[Error] Interval already ended";
    }

    else
    {
      (*(v39 + 8))(v23, v38);
      v40 = "end fetch SLAM";
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, v37, v42, "config-install-fetchSLAM", v40, v41, 2u);
  }

  v43 = *(v24 + 8);
  v44 = v34;
  v45 = v180;
  v43(v44, v180);
  if (a2)
  {
    swift_errorRetain();
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000403C(v46, qword_1003A0278);
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v188[0] = v50;
      *v49 = 136446210;
      v187[0] = a2;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v51 = String.init<A>(describing:)();
      v53 = sub_100008F6C(v51, v52, v188);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "OTA client error: %{public}s", v49, 0xCu);
      sub_10000959C(v50);
    }

    v54 = _convertErrorToNSError(_:)();
    v55 = [v54 userInfo];
    v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v56 + 16))
    {
      v59 = sub_1000F5A28(v57, v58);
      v61 = v60;

      if (v61)
      {
        sub_10000BDA4(*(v56 + 56) + 32 * v59, v188);

        type metadata accessor for SPRHTTPError(0);
        v62 = swift_dynamicCast();
        v63 = v181;
        if (v62)
        {
          v64 = v187[0];
        }

        else
        {
          v64 = 0;
        }

LABEL_25:
        v79 = v63[38];
        sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_1002C1790;
        *(v80 + 32) = 4;
        v81 = [v54 code];
        *(v80 + 64) = &type metadata for Int;
        *(v80 + 40) = v81;
        *(v80 + 72) = 6;
        v181 = v64;
        if (v64)
        {
          v188[0] = v64;
          type metadata accessor for SPRHTTPError(0);
          sub_100081B2C(&qword_10039DF50, type metadata accessor for SPRHTTPError);
          v82 = v79;
          v83 = a2;
          v84 = v54;
          v85 = v64;
          v86 = _BridgedStoredNSError.errorCode.getter();
          *(v80 + 104) = &type metadata for Int;
          *(v80 + 80) = v86;

          *(v80 + 112) = 7;
          v87 = v85;
          v88 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
          v90 = v89;

          v54 = v84;
          a2 = v83;
          v79 = v82;
          if (v90)
          {
            *(v80 + 144) = &type metadata for String;
            *(v80 + 120) = v88;
            *(v80 + 128) = v90;
LABEL_30:
            sub_100184144(v80);
            swift_setDeallocating();
            sub_100004074(&qword_10039FED8, &unk_1002C37D0);
            swift_arrayDestroy();
            v91 = swift_deallocClassInstance();
            v92 = *(v79 + 56);
            __chkstk_darwin(v91);
            os_unfair_lock_lock((v92 + 32));
            sub_10006535C((v92 + 16));
            os_unfair_lock_unlock((v92 + 32));

            swift_errorRetain();
            v179(0, a2);

            return;
          }
        }

        else
        {
          *(v80 + 80) = 0u;
          *(v80 + 96) = 0u;
          *(v80 + 112) = 7;
        }

        *(v80 + 120) = 0;
        *(v80 + 128) = 0;
        *(v80 + 136) = 0;
        *(v80 + 144) = 0;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v64 = 0;
    v63 = v181;
    goto LABEL_25;
  }

  v65 = v177;
  memcpy(v187, v177, 0x111uLL);
  v66 = sub_100081C78(v187);
  v67 = v181;
  if (v66 == 1)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_10000403C(v68, qword_1003A0278);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "no response from server", v71, 2u);
    }

    v72 = sub_100020148(2000, 0, 0, 0);
    v73 = v67[38];
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1002C1660;
    *(v74 + 32) = 4;
    v188[0] = v72;
    type metadata accessor for ConfigurationError(0);
    sub_100081B2C(&qword_10039DC00, type metadata accessor for ConfigurationError);
    v75 = _BridgedStoredNSError.errorCode.getter();
    *(v74 + 64) = &type metadata for Int;
    *(v74 + 40) = v75;
    sub_100184144(v74);
    swift_setDeallocating();
    sub_10000BD44(v74 + 32, &qword_10039FED8, &unk_1002C37D0);
    v76 = swift_deallocClassInstance();
    v77 = *(v73 + 56);
    __chkstk_darwin(v76);
    os_unfair_lock_lock((v77 + 32));
    sub_10006535C((v77 + 16));
    os_unfair_lock_unlock((v77 + 32));

    v78 = v72;
    v179(0, v72);
  }

  else
  {
    v165 = v43;
    memcpy(v188, v187, 0x111uLL);
    memcpy(v185, v189, 0x111uLL);
    sub_100081A7C(v185, v184);
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    v94 = sub_10000403C(v93, qword_1003A0278);
    memcpy(v186, v189, 0x111uLL);
    sub_100081A7C(v186, v184);
    v166 = v94;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    sub_10000BD44(v65, &qword_1003A03E0, &qword_1002C3D68);
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v183 = v98;
      *v97 = 136315138;
      memcpy(v184, v189, 0x111uLL);
      v99 = sub_100081A7C(v184, &v182);
      v100 = sub_100086EEC(v99);
      v102 = v101;
      sub_10000BD44(v177, &qword_1003A03E0, &qword_1002C3D68);
      v103 = sub_100008F6C(v100, v102, &v183);
      v65 = v177;

      *(v97 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v95, v96, "%s", v97, 0xCu);
      sub_10000959C(v98);
      v45 = v180;

      v67 = v181;
    }

    v104 = *sub_10000BE18(v67 + 23, v67[26]);
    if (sub_1000B100C(v174, 0.0))
    {
      v164 = v67[38];
      v105 = *(v164 + 56);
      os_unfair_lock_lock(v105 + 8);
      sub_10011CF8C(&v105[4], 0);
      os_unfair_lock_unlock(v105 + 8);
      static OSSignpostID.exclusive.getter();
      v106 = OSSignposter.logHandle.getter();
      v107 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        v109 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, v107, v109, "config-install-validateSLAM", "begin validate and persist SLAM", v108, 2u);
        v45 = v180;
      }

      (*(v24 + 16))(v171, v32, v45);
      v110 = type metadata accessor for OSSignpostIntervalState();
      v111 = *(v110 + 48);
      v112 = *(v110 + 52);
      swift_allocObject();
      v113 = OSSignpostIntervalState.init(id:isOpen:)();
      v165(v32, v45);
      v114 = v181;
      sub_10006B17C(v188, v173);
      v171 = a14;
      v163 = a13;
      v162 = a12;
      v161 = a11;
      v160 = a9;
      v125 = v114[36];
      v158 = v114[37];
      sub_10000BE18(v114 + 33, v125);
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      v126 = swift_allocObject();
      v159 = xmmword_1002C1660;
      *(v126 + 16) = xmmword_1002C1660;
      *(v126 + 32) = 1684631668;
      *(v126 + 40) = 0xE400000000000000;
      v127 = UUID.uuidString.getter();
      *(v126 + 72) = &type metadata for String;
      *(v126 + 80) = &protocol witness table for String;
      *(v126 + 48) = v127;
      *(v126 + 56) = v128;
      v129 = sub_100184010(v126);
      swift_setDeallocating();
      sub_10000BD44(v126 + 32, &qword_10039FEC8, &unk_1002C37B0);
      swift_deallocClassInstance();
      sub_1000C2288(0x10u, v129, v125, v158);

      v130 = OSSignposter.logHandle.getter();
      v131 = v113;
      v132 = v168;
      v172 = v131;
      OSSignpostIntervalState.signpostID.getter();
      v133 = static os_signpost_type_t.end.getter();
      v134 = OS_os_log.signpostsEnabled.getter();
      if (v134)
      {

        v135 = v167;
        checkForErrorAndConsumeState(state:)();

        v137 = v175;
        v136 = v176;
        if ((*(v175 + 88))(v135, v176) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v138 = "[Error] Interval already ended";
        }

        else
        {
          (*(v137 + 8))(v135, v136);
          v138 = "end validate and persist SLAM";
        }

        v139 = swift_slowAlloc();
        *v139 = 0;
        v140 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v130, v133, v140, "config-install-validateSLAM", v138, v139, 2u);
      }

      v165(v132, v180);
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v141 = swift_allocObject();
      *(v141 + 16) = v159;
      *(v141 + 32) = 0;
      v142 = v173;
      v143 = &v173[*(v169 + 36)];
      v144 = sub_100055298();
      *(v141 + 64) = &type metadata for String;
      *(v141 + 40) = v144;
      *(v141 + 48) = v145;
      sub_100184144(v141);
      swift_setDeallocating();
      sub_10000BD44(v141 + 32, &qword_10039FED8, &unk_1002C37D0);
      v146 = swift_deallocClassInstance();
      v147 = *(v164 + 56);
      __chkstk_darwin(v146);
      os_unfair_lock_lock((v147 + 32));
      sub_10006535C((v147 + 16));
      os_unfair_lock_unlock((v147 + 32));

      if (v160)
      {
        sub_100071DB4(v142, v170, v174, a10 & 1, v161, v162, v163, v171, a15);
      }

      else
      {
        sub_100075824(v142, v170, v174, a10 & 1, v161, v162, v163, v171, a15);
      }

      v149 = v148;
      v150 = sub_100055298();
      sub_100024864(v150, v151, 40);

      v179(v149, 0);

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v180 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
      v152 = *(*(v180 - 8) + 72);
      v153 = (*(*(v180 - 8) + 80) + 32) & ~*(*(v180 - 8) + 80);
      v154 = swift_allocObject();
      *(v154 + 16) = xmmword_1002C1690;
      v155 = v154 + v153;
      v156 = v169;
      sub_100065074(&v142[*(v169 + 20)], v155, &qword_1003A03F0, &qword_1002C3D88);
      sub_100065074(&v142[v156[6]], v155 + v152, &qword_1003A03F0, &qword_1002C3D88);
      sub_100065074(&v142[v156[7]], v155 + 2 * v152, &qword_1003A03F0, &qword_1002C3D88);
      sub_100065074(&v142[v156[8]], v155 + 3 * v152, &qword_1003A03F0, &qword_1002C3D88);
      sub_1000792D4(v154);
      sub_10000BD44(v177, &qword_1003A03E0, &qword_1002C3D68);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_100082008(v142, _s14InstallPackageVMa);
    }

    else
    {
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v115, v116, "Not attested after OTA response", v117, 2u);
      }

      v118 = sub_100020148(2029, 0, 0, 0);
      v119 = v67[38];
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1002C1660;
      *(v120 + 32) = 4;
      v184[0] = v118;
      type metadata accessor for ConfigurationError(0);
      sub_100081B2C(&qword_10039DC00, type metadata accessor for ConfigurationError);
      v121 = _BridgedStoredNSError.errorCode.getter();
      *(v120 + 64) = &type metadata for Int;
      *(v120 + 40) = v121;
      sub_100184144(v120);
      swift_setDeallocating();
      sub_10000BD44(v120 + 32, &qword_10039FED8, &unk_1002C37D0);
      v122 = swift_deallocClassInstance();
      v123 = *(v119 + 56);
      __chkstk_darwin(v122);
      os_unfair_lock_lock((v123 + 32));
      sub_10006535C((v123 + 16));
      os_unfair_lock_unlock((v123 + 32));

      v124 = v118;
      v179(0, v118);

      sub_10000BD44(v65, &qword_1003A03E0, &qword_1002C3D68);
    }
  }
}

void sub_10006B17C(unint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v1003 = a1;
  v920 = a2;
  v998 = *v2;
  v4 = type metadata accessor for URL();
  v966 = *(v4 - 8);
  v5 = *(v966 + 64);
  v6 = __chkstk_darwin(v4);
  v919 = &v900 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v922 = &v900 - v9;
  v10 = __chkstk_darwin(v8);
  v939 = (&v900 - v11);
  v12 = __chkstk_darwin(v10);
  v938 = (&v900 - v13);
  v14 = __chkstk_darwin(v12);
  v952 = &v900 - v15;
  v16 = __chkstk_darwin(v14);
  v954 = &v900 - v17;
  v18 = __chkstk_darwin(v16);
  v959 = &v900 - v19;
  v20 = __chkstk_darwin(v18);
  v903 = &v900 - v21;
  v22 = __chkstk_darwin(v20);
  v936 = &v900 - v23;
  v24 = __chkstk_darwin(v22);
  v949 = &v900 - v25;
  v26 = __chkstk_darwin(v24);
  v934 = &v900 - v27;
  v28 = __chkstk_darwin(v26);
  v947 = &v900 - v29;
  v30 = __chkstk_darwin(v28);
  v950 = &v900 - v31;
  v32 = __chkstk_darwin(v30);
  v955 = &v900 - v33;
  v34 = __chkstk_darwin(v32);
  v976 = &v900 - v35;
  v36 = __chkstk_darwin(v34);
  v985 = &v900 - v37;
  __chkstk_darwin(v36);
  v984 = (&v900 - v38);
  v39 = type metadata accessor for SLAMScript(0);
  v1000 = *(v39 - 8);
  v40 = *(v1000 + 64);
  v41 = __chkstk_darwin(v39);
  v902 = &v900 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v900 = &v900 - v44;
  v45 = __chkstk_darwin(v43);
  v961 = &v900 - v46;
  v47 = __chkstk_darwin(v45);
  v904 = &v900 - v48;
  v49 = __chkstk_darwin(v47);
  v901 = &v900 - v50;
  v51 = __chkstk_darwin(v49);
  v963 = &v900 - v52;
  v53 = __chkstk_darwin(v51);
  v924 = &v900 - v54;
  v55 = __chkstk_darwin(v53);
  v912 = &v900 - v56;
  v57 = __chkstk_darwin(v55);
  v980 = &v900 - v58;
  v59 = __chkstk_darwin(v57);
  v945 = &v900 - v60;
  v61 = __chkstk_darwin(v59);
  v932 = &v900 - v62;
  v63 = __chkstk_darwin(v61);
  v994 = &v900 - v64;
  v65 = __chkstk_darwin(v63);
  v910 = &v900 - v66;
  v67 = __chkstk_darwin(v65);
  v940 = &v900 - v68;
  v69 = __chkstk_darwin(v67);
  v926 = &v900 - v70;
  v71 = __chkstk_darwin(v69);
  v991 = &v900 - v72;
  v73 = __chkstk_darwin(v71);
  v982 = (&v900 - v74);
  v75 = __chkstk_darwin(v73);
  v969 = &v900 - v76;
  __chkstk_darwin(v75);
  v981 = &v900 - v77;
  v78 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v957 = *(v78 - 8);
  v958 = v78;
  v79 = *(v957 + 64);
  v80 = __chkstk_darwin(v78);
  v956 = &v900 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __chkstk_darwin(v80);
  v962 = &v900 - v83;
  v84 = __chkstk_darwin(v82);
  v960 = &v900 - v85;
  v86 = __chkstk_darwin(v84);
  v964 = &v900 - v87;
  v88 = __chkstk_darwin(v86);
  v979 = &v900 - v89;
  v90 = __chkstk_darwin(v88);
  v978 = &v900 - v91;
  v92 = __chkstk_darwin(v90);
  v993 = (&v900 - v93);
  v94 = __chkstk_darwin(v92);
  v992 = (&v900 - v95);
  v96 = __chkstk_darwin(v94);
  v931 = &v900 - v97;
  v98 = __chkstk_darwin(v96);
  v943 = (&v900 - v99);
  v100 = __chkstk_darwin(v98);
  v942 = (&v900 - v101);
  v102 = __chkstk_darwin(v100);
  v941 = &v900 - v103;
  v104 = __chkstk_darwin(v102);
  v923 = &v900 - v105;
  v106 = __chkstk_darwin(v104);
  v921 = &v900 - v107;
  v108 = __chkstk_darwin(v106);
  v944 = &v900 - v109;
  v110 = __chkstk_darwin(v108);
  v953 = &v900 - v111;
  v112 = __chkstk_darwin(v110);
  v965 = &v900 - v113;
  v114 = __chkstk_darwin(v112);
  v967 = &v900 - v115;
  v116 = __chkstk_darwin(v114);
  v968 = &v900 - v117;
  v118 = __chkstk_darwin(v116);
  v974 = &v900 - v119;
  v120 = __chkstk_darwin(v118);
  v906 = &v900 - v121;
  v122 = __chkstk_darwin(v120);
  v917 = &v900 - v123;
  v124 = __chkstk_darwin(v122);
  v916 = &v900 - v125;
  v126 = __chkstk_darwin(v124);
  v915 = &v900 - v127;
  v128 = __chkstk_darwin(v126);
  v909 = &v900 - v129;
  v130 = __chkstk_darwin(v128);
  v927 = &v900 - v131;
  v132 = __chkstk_darwin(v130);
  v935 = &v900 - v133;
  v134 = __chkstk_darwin(v132);
  v933 = &v900 - v135;
  v136 = __chkstk_darwin(v134);
  v948 = &v900 - v137;
  v138 = __chkstk_darwin(v136);
  v990 = (&v900 - v139);
  v140 = __chkstk_darwin(v138);
  v989 = &v900 - v141;
  v142 = __chkstk_darwin(v140);
  v970 = &v900 - v143;
  v144 = __chkstk_darwin(v142);
  v975 = &v900 - v145;
  v146 = __chkstk_darwin(v144);
  v972 = &v900 - v147;
  __chkstk_darwin(v146);
  v973 = &v900 - v148;
  v1005 = type metadata accessor for UUID();
  v149 = *(v1005 - 8);
  v150 = *(v149 + 64);
  v151 = __chkstk_darwin(v1005);
  v930 = &v900 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __chkstk_darwin(v151);
  v929 = &v900 - v154;
  v155 = __chkstk_darwin(v153);
  v908 = &v900 - v156;
  v157 = __chkstk_darwin(v155);
  v918 = &v900 - v158;
  v159 = __chkstk_darwin(v157);
  *&v937 = &v900 - v160;
  v161 = __chkstk_darwin(v159);
  v951 = &v900 - v162;
  v163 = __chkstk_darwin(v161);
  v977 = &v900 - v164;
  v165 = __chkstk_darwin(v163);
  v996 = &v900 - v166;
  v167 = __chkstk_darwin(v165);
  v905 = &v900 - v168;
  v169 = __chkstk_darwin(v167);
  v914 = &v900 - v170;
  v171 = __chkstk_darwin(v169);
  v907 = &v900 - v172;
  v173 = __chkstk_darwin(v171);
  v911 = &v900 - v174;
  v175 = __chkstk_darwin(v173);
  v925 = &v900 - v176;
  v177 = __chkstk_darwin(v175);
  v946 = &v900 - v178;
  v179 = __chkstk_darwin(v177);
  v971 = &v900 - v180;
  v181 = __chkstk_darwin(v179);
  v983 = (&v900 - v182);
  __chkstk_darwin(v181);
  v995 = &v900 - v183;
  v184 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v185 = *(*(v184 - 8) + 64);
  v186 = __chkstk_darwin(v184 - 8);
  *&v928 = &v900 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = __chkstk_darwin(v186);
  v987 = (&v900 - v189);
  v190 = __chkstk_darwin(v188);
  v192 = &v900 - v191;
  v193 = __chkstk_darwin(v190);
  v1002 = (&v900 - v194);
  v195 = __chkstk_darwin(v193);
  v1007 = &v900 - v196;
  v197 = __chkstk_darwin(v195);
  v1009 = &v900 - v198;
  v199 = __chkstk_darwin(v197);
  v913 = &v900 - v200;
  v201 = __chkstk_darwin(v199);
  v986 = &v900 - v202;
  v203 = __chkstk_darwin(v201);
  v205 = &v900 - v204;
  v206 = __chkstk_darwin(v203);
  v1001 = &v900 - v207;
  v208 = __chkstk_darwin(v206);
  v1006 = &v900 - v209;
  __chkstk_darwin(v208);
  v1008 = &v900 - v210;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v211 = type metadata accessor for Logger();
  v1010 = sub_10000403C(v211, qword_1003A0278);
  v212 = Logger.logObject.getter();
  v213 = static os_log_type_t.debug.getter();
  v214 = os_log_type_enabled(v212, v213);
  v1028 = v3;
  v999 = v39;
  v1004 = v149;
  v988 = v4;
  if (v214)
  {
    v215 = swift_slowAlloc();
    v1013[0] = swift_slowAlloc();
    *v215 = 136315394;
    v216 = _typeName(_:qualified:)();
    v218 = sub_100008F6C(v216, v217, v1013);

    *(v215 + 4) = v218;
    *(v215 + 12) = 2080;
    v219 = showFunction(signature:_:)(0xD000000000000023, 0x8000000100348DD0, _swiftEmptyArrayStorage);
    v221 = sub_100008F6C(v219, v220, v1013);

    *(v215 + 14) = v221;
    v149 = v1004;
    _os_log_impl(&_mh_execute_header, v212, v213, "%s.%s", v215, 0x16u);
    swift_arrayDestroy();
  }

  v222 = v1003;
  if (*(v1003 + 272))
  {
    v223 = Logger.logObject.getter();
    v224 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      *v225 = 0;
      _os_log_impl(&_mh_execute_header, v223, v224, "using legacy flow for persistDownloadedScripts", v225, 2u);
    }

    if (*(v222 + 32))
    {
      v226 = v192;
      v227 = *(v222 + 48);
      v992 = *(v222 + 40);
      v994 = v227;
      v228 = *(v222 + 24);
      UUID.init(uuidString:)();
      v229 = *(v222 + 88);
      v230 = *(v222 + 96);
      v231 = *(v222 + 112);
      v990 = *(v222 + 104);
      v991 = v231;
      v232 = *(v222 + 136);
      v1014 = *(v222 + 120);
      v1015[0] = v232;
      *(v1015 + 9) = *(v222 + 145);
      UUID.init(uuidString:)();
      v234 = *(v222 + 176);
      v233 = *(v222 + 184);
      v235 = *(v222 + 200);
      v989 = *(v222 + 192);
      v1008 = v235;
      v236 = *(v222 + 216);
      v998 = *(v222 + 208);
      v1001 = v236;
      v237 = *(v222 + 224);
      v1006 = *(v222 + 232);
      LODWORD(v993) = *(v222 + 240);
      v986 = v233;
      v995 = v234;
      if (v234)
      {
        v238 = *(v222 + 168);
      }

      v253 = v1028;
      UUID.init(uuidString:)();

      sub_100065074(v1009, v192, &qword_1003A0178, &unk_1002C3BB0);
      v254 = v1004;
      v255 = *(v1004 + 48);
      v256 = v1005;
      if (v255(v226, 1, v1005) == 1)
      {
        sub_10000BD44(v226, &qword_1003A0178, &unk_1002C3BB0);
LABEL_36:
        v291 = Logger.logObject.getter();
        v292 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v291, v292))
        {
          v293 = swift_slowAlloc();
          *v293 = 0;
          _os_log_impl(&_mh_execute_header, v291, v292, "malformed response from backend", v293, 2u);
        }

        v294 = sub_10000BE18((v253 + 480), *(v253 + 504));
        v295 = sub_100020148(2027, 0, 0, 0);
        sub_10013F4E4(v295, *v294);

        sub_100020148(2027, 0, 0, 0);
        swift_willThrow();
        sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1007, &qword_1003A0178, &unk_1002C3BB0);
        v296 = v1009;
LABEL_50:
        sub_10000BD44(v296, &qword_1003A0178, &unk_1002C3BB0);
        return;
      }

      v985 = v237;
      v257 = *(v254 + 32);
      v258 = v996;
      v257(v996, v226, v256);
      v259 = v987;
      sub_100065074(v1007, v987, &qword_1003A0178, &unk_1002C3BB0);
      if (v255(v259, 1, v256) == 1)
      {
        (*(v254 + 8))(v258, v256);
        sub_10000BD44(v259, &qword_1003A0178, &unk_1002C3BB0);
LABEL_35:
        v253 = v1028;
        goto LABEL_36;
      }

      v266 = v977;
      v257(v977, v259, v256);
      v1016 = v1014;
      v1017[0] = v1015[0];
      *(v1017 + 9) = *(v1015 + 9);
      sub_100065074(&v1016, v1013, &qword_1003A0428, &qword_1002C3DD0);
      if ((sub_100082354(&v1016) & 1) == 0)
      {
        goto LABEL_34;
      }

      object = v995;
      if (v995)
      {
        v268 = v1008;
        v269 = v1008;
        v270 = v998;
        v271 = v1001;
        v272 = v985;
        v273 = v1006;
        v274 = v993;
        v275 = v993;
        v276 = v999;
        v277 = v974;
      }

      else
      {
        v270 = 0;
        v271 = 0;
        v272 = 0;
        v273 = 0;
        v275 = 0;
        v269 = 1;
        v276 = v999;
        v277 = v974;
        v268 = v1008;
        v274 = v993;
      }

      v1024[0] = v269;
      v1024[1] = v270;
      v1024[2] = v271;
      v1024[3] = v272;
      v1024[4] = v273;
      v1025 = v275;
      if ((sub_100082354(v1024) & 1) == 0)
      {
LABEL_34:
        sub_10000BD44(&v1016, &qword_1003A0428, &qword_1002C3DD0);
        v290 = *(v1004 + 8);
        v290(v266, v256);
        v290(v996, v256);
        goto LABEL_35;
      }

      if (object)
      {
        v1011[0] = v274;
        if (v268 != 1)
        {
          v289 = v1006;
          sub_100082A7C(v268);
          v1006 = sub_100082610(v289, v274 & 1);
          v1011[0] = 0;
        }
      }

      else
      {
        v998 = 0;
        v1001 = 0;
        v985 = 0;
        v1006 = 0;
        v1011[0] = 0;
        v268 = 1;
      }

      v1008 = v268;
      v304 = v1000 + 56;
      v303 = *(v1000 + 56);
      v305 = 1;
      (v303)(v277, 1, 1, v276);
      (v303)(v968, 1, 1, v276);
      (v303)(v967, 1, 1, v276);
      (v303)(v965, 1, 1, v276);
      v1012[0] = 1;
      v306 = v994;
      v987 = v304;
      v993 = v303;
      if (v994 >> 60 == 15)
      {
        while (1)
        {
          v307 = 1;
          v308 = v953;
          (v303)(v953, v305, 1, v276);
          v309 = v308;
          v310 = v974;
          sub_100082A14(v309, v974, &qword_1003A03F0, &qword_1002C3D88);
          v311 = *(v1003 + 16);
          if (v311 >> 60 == 15)
          {
            break;
          }

          v469 = *(v1003 + 8);
          v470 = objc_opt_self();
          sub_1000094F4(v469, v311);
          v471 = [v470 defaultManager];
          v472 = [v471 temporaryDirectory];

          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          v473 = v937;
          UUID.init()();
          UUID.uuidString.getter();
          v475 = v474;
          v476 = *(v1004 + 8);
          v992 = (v1004 + 8);
          v984 = v476;
          (v476)(v473, v1005);
          v477 = v976;
          v994 = v475;
          URL.appendingPathComponent(_:)();
          v478 = v938;
          URL.appendingPathExtension(_:)();
          v480 = (v966 + 8);
          v479 = *(v966 + 8);
          v479(v477, v988);
          sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
          v481 = swift_allocObject();
          *(v481 + 16) = xmmword_1002C1660;
          v1003 = v311;
          *(v481 + 32) = NSFileProtectionKey;
          type metadata accessor for FileProtectionType(0);
          *(v481 + 64) = v482;
          *(v481 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v483 = NSFileProtectionKey;
          v484 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v485 = sub_1001845BC(v481);
          swift_setDeallocating();
          v486 = v1003;
          sub_10000BD44(v481 + 32, &qword_1003A0448, &qword_1002C3DF0);
          swift_deallocClassInstance();
          v487 = v997;
          sub_1000833FC(v478, v485, v469, v486);
          if (v487)
          {
            v997 = v487;
            v488 = v478;
            v489 = v988;
            v479(v488, v988);

            v535 = v1005;
            v536 = v974;
            v537 = v996;
LABEL_115:
            v479(v952, v489);

            sub_10001A074(v469, v486);
            sub_10000BD44(&v1016, &qword_1003A0428, &qword_1002C3DD0);
            v538 = v968;
            v539 = v967;
            v540 = v965;
            sub_10007AA54(v1012, v536, v968, v967, v965, v1028);
            v541 = v984;
            (v984)(v977, v535);
            v541(v537, v535);
            sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v1007, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v1009, &qword_1003A0178, &unk_1002C3BB0);
            v542 = v540;
            goto LABEL_231;
          }

          v982 = v480;
          v983 = v479;

          v534 = URL.generateSHA256Digest()();
          v997 = 0;
          v350 = v478;
          v615 = v534;
          v582 = v616;
          v981 = v469;
          sub_1000094F4(v534, v616);
          v617 = Logger.logObject.getter();
          v353 = static os_log_type_t.default.getter();
          sub_100009548(v615, v582);
          v618 = os_log_type_enabled(v617, v353);
          v980 = v615;
          if (v618)
          {
            v619 = swift_slowAlloc();
            v979 = swift_slowAlloc();
            v1013[0] = v979;
            *v619 = 136315394;
            *(v619 + 4) = sub_100008F6C(0xD000000000000014, 0x8000000100348D90, v1013);
            *(v619 + 12) = 2080;
            v620 = Data.hexString()();
            v621 = sub_100008F6C(v620._countAndFlagsBits, v620._object, v1013);

            *(v619 + 14) = v621;
            _os_log_impl(&_mh_execute_header, v617, v353, "Got script data for: %s with digest: %s", v619, 0x16u);
            swift_arrayDestroy();
          }

          v276 = v999;
          v622 = v944;
          v623 = URL.path(percentEncoded:)(0);
          countAndFlagsBits = v623._countAndFlagsBits;
          object = v623._object;
          v624 = v1003 >> 62;
          if ((v1003 >> 62) <= 1)
          {
            if (!v624)
            {
              v625 = BYTE6(v1003);
              goto LABEL_298;
            }

            goto LABEL_295;
          }

          if (v624 != 2)
          {
            v625 = 0;
            goto LABEL_298;
          }

          v749 = *(v981 + 16);
          v593 = *(v981 + 24);
          v625 = v593 - v749;
          if (!__OFSUB__(v593, v749))
          {
            goto LABEL_298;
          }

          __break(1u);
LABEL_225:
          if (__OFSUB__(HIDWORD(v992), v992))
          {
            goto LABEL_341;
          }

          v594 = HIDWORD(v992) - v992;
LABEL_228:
          v750 = v997;
          sub_10007B4F8(countAndFlagsBits, v617, 2, v594, 0, v593);
          v997 = v750;
          if (v750)
          {
            v751 = v988;
            v752 = v582;
            v342 = v276;
            (v276)(v954, v988);

            sub_100009548(v981, v752);
            v352 = v751;
            v351 = v1028;
            goto LABEL_230;
          }

          v756 = v988;
          (v276)(v954, v988);

          sub_100009548(v981, v582);
          (v276)(v959, v756);

          sub_10001A074(v992, v994);
          v305 = 0;
          v276 = v999;
          v303 = v993;
        }

        while (1)
        {
          v312 = 1;
          v313 = v944;
          (v993)(v944, v307, 1, v276);
          sub_100082A14(v313, v968, &qword_1003A03F0, &qword_1002C3D88);
          v314 = v991;
          if (v991 >> 60 == 15)
          {
            goto LABEL_55;
          }

          v513 = objc_opt_self();
          sub_1000094F4(v990, v314);
          v514 = [v513 defaultManager];
          v515 = [v514 temporaryDirectory];

          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          v516 = v918;
          UUID.init()();
          UUID.uuidString.getter();
          v518 = v517;
          v519 = *(v1004 + 8);
          v994 = v1004 + 8;
          v992 = v519;
          (v519)(v516, v1005);
          v520 = v976;
          v1003 = v518;
          URL.appendingPathComponent(_:)();
          v521 = v922;
          URL.appendingPathExtension(_:)();
          v522 = v988;
          v523 = *(v966 + 8);
          v523(v520, v988);
          sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
          v524 = swift_allocObject();
          *(v524 + 16) = xmmword_1002C1660;
          *(v524 + 32) = NSFileProtectionKey;
          type metadata accessor for FileProtectionType(0);
          *(v524 + 64) = v525;
          *(v524 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v526 = NSFileProtectionKey;
          v527 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v528 = sub_1001845BC(v524);
          swift_setDeallocating();
          sub_10000BD44(v524 + 32, &qword_1003A0448, &qword_1002C3DF0);
          swift_deallocClassInstance();
          v529 = v997;
          sub_1000833FC(v521, v528, v990, v991);
          if (v529)
          {
            v523(v521, v522);

            v530 = v1005;
            v531 = v974;
LABEL_335:
            v523(v939, v522);

            sub_10001A074(v990, v991);
            sub_10000BD44(&v1016, &qword_1003A0428, &qword_1002C3DD0);
            v895 = v968;
            v896 = v967;
            v897 = v965;
            sub_10007AA54(v1012, v531, v968, v967, v965, v1028);
            v898 = v992;
            (v992)(v977, v530);
            v898(v996, v530);
            sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v1007, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v1009, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v897, &qword_1003A03F0, &qword_1002C3D88);
            sub_10000BD44(v896, &qword_1003A03F0, &qword_1002C3D88);
            sub_10000BD44(v895, &qword_1003A03F0, &qword_1002C3D88);
            sub_10000BD44(v531, &qword_1003A03F0, &qword_1002C3D88);
            sub_100082AD0(v1008);
            return;
          }

          v601 = URL.generateSHA256Digest()();
          v704 = v601;
          v622 = v602;
          sub_1000094F4(v601, v602);
          v705 = Logger.logObject.getter();
          object = static os_log_type_t.default.getter();
          sub_100009548(v704, v622);
          v706 = os_log_type_enabled(v705, object);
          v997 = 0;
          v984 = v704;
          if (v706)
          {
            v707 = swift_slowAlloc();
            v983 = swift_slowAlloc();
            v1013[0] = v983;
            *v707 = 136315394;
            *(v707 + 4) = sub_100008F6C(0xD000000000000014, 0x8000000100348DB0, v1013);
            *(v707 + 12) = 2080;
            v708 = Data.hexString()();
            v709 = sub_100008F6C(v708._countAndFlagsBits, v708._object, v1013);

            *(v707 + 14) = v709;
            _os_log_impl(&_mh_execute_header, v705, object, "Got script data for: %s with digest: %s", v707, 0x16u);
            swift_arrayDestroy();
          }

          v276 = v921;
          v852 = URL.path(percentEncoded:)(0);
          countAndFlagsBits = v852._countAndFlagsBits;
          v582 = v852._object;
          v853 = v991 >> 62;
          if ((v991 >> 62) <= 1)
          {
            break;
          }

          v350 = v987;
          if (v853 != 2)
          {
            v854 = 0;
            goto LABEL_333;
          }

          v856 = *(v990 + 2);
          v855 = *(v990 + 3);
          v854 = v855 - v856;
          if (!__OFSUB__(v855, v856))
          {
            goto LABEL_333;
          }

          __break(1u);
LABEL_295:
          if (__OFSUB__(HIDWORD(v981), v981))
          {
            goto LABEL_343;
          }

          v625 = HIDWORD(v981) - v981;
LABEL_298:
          v857 = v582;
          v858 = v997;
          sub_10007B4F8(countAndFlagsBits, object, 0, v625, 0, v622);
          v997 = v858;
          if (v858)
          {
            v859 = v988;
            v479 = v983;
            v983(v350, v988);

            v860 = v857;
            v489 = v859;
            sub_100009548(v980, v860);
            v536 = v974;
            v537 = v996;
            v535 = v1005;
            v469 = v981;
            v486 = v1003;
            goto LABEL_115;
          }

          v861 = v988;
          v862 = v983;
          v983(v350, v988);

          sub_100009548(v980, v582);
          v862(v952, v861);

          sub_10001A074(v981, v1003);
          v307 = 0;
          v310 = v974;
          object = v995;
        }

        if (v853)
        {
          if (__OFSUB__(HIDWORD(v990), v990))
          {
            goto LABEL_345;
          }

          v854 = HIDWORD(v990) - v990;
        }

        else
        {
          v854 = BYTE6(v991);
        }

LABEL_333:
        v894 = v997;
        sub_10007B4F8(v852._countAndFlagsBits, v852._object, 3, v854, 0, v276);
        v997 = v894;
        if (v894)
        {
          v522 = v988;
          v523(v922, v988);

          sub_100009548(v984, v622);
          v531 = v974;
          v530 = v1005;
          goto LABEL_335;
        }

        v899 = v988;
        v523(v922, v988);

        sub_100009548(v984, v622);
        v523(v939, v899);

        sub_10001A074(v990, v991);
        v312 = 0;
        v276 = v999;
        v310 = v974;
        object = v995;
LABEL_55:
        v315 = 1;
        v316 = v921;
        (v993)(v921, v312, 1, v276);
        sub_100082A14(v316, v967, &qword_1003A03F0, &qword_1002C3D88);
        v317 = v919;
        if (!object || (v318 = v989, v989 >> 60 == 15))
        {
          v578 = v310;
          v579 = v1004;
          goto LABEL_184;
        }

        v319 = objc_opt_self();
        v320 = v986;
        sub_1000094F4(v986, v318);
        v321 = [v319 defaultManager];
        v322 = [v321 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v323 = v908;
        UUID.init()();
        UUID.uuidString.getter();
        object = v317;
        v1003 = *(v1004 + 8);
        (v1003)(v323, v1005);
        v324 = v1028;
        v325 = v997;
        sub_10007AF98(v320, v318, 4, v923);
        v997 = v325;
        if (!v325)
        {
          goto LABEL_183;
        }

        (*(v966 + 8))(v317, v988);

        sub_10001A074(v986, v989);
        sub_10000BD44(&v1016, &qword_1003A0428, &qword_1002C3DD0);
        v326 = v974;
        v327 = v968;
        v328 = v967;
        v329 = v1005;
        v330 = v965;
        sub_10007AA54(v1012, v974, v968, v967, v965, v324);
        v331 = v1003;
        (v1003)(v977, v329);
        v331(v996, v329);
        sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1007, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1009, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v330, &qword_1003A03F0, &qword_1002C3D88);
        sub_10000BD44(v328, &qword_1003A03F0, &qword_1002C3D88);
        sub_10000BD44(v327, &qword_1003A03F0, &qword_1002C3D88);
        v332 = v326;
      }

      else
      {
        v333 = objc_opt_self();
        sub_1000094F4(v992, v306);
        v334 = [v333 defaultManager];
        v335 = [v334 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v336 = v951;
        UUID.init()();
        UUID.uuidString.getter();
        v338 = v337;
        v339 = *(v1004 + 8);
        v983 = (v1004 + 8);
        v982 = v339;
        (v339)(v336, v256);
        v340 = v976;
        v984 = v338;
        URL.appendingPathComponent(_:)();
        v341 = v954;
        URL.appendingPathExtension(_:)();
        v342 = *(v966 + 8);
        v343 = v988;
        v342(v340, v988);
        sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
        v344 = swift_allocObject();
        *(v344 + 16) = xmmword_1002C1660;
        *(v344 + 32) = NSFileProtectionKey;
        type metadata accessor for FileProtectionType(0);
        *(v344 + 64) = v345;
        *(v344 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
        v346 = NSFileProtectionKey;
        v347 = NSFileProtectionCompleteUntilFirstUserAuthentication;
        v348 = sub_1001845BC(v344);
        swift_setDeallocating();
        sub_10000BD44(v344 + 32, &qword_1003A0448, &qword_1002C3DF0);
        swift_deallocClassInstance();
        v349 = v997;
        sub_1000833FC(v341, v348, v992, v994);
        if (!v349)
        {
          v276 = v342;

          v490 = URL.generateSHA256Digest()();
          v997 = 0;
          v580 = v490;
          v582 = v581;
          sub_1000094F4(v490, v581);
          v583 = Logger.logObject.getter();
          v584 = static os_log_type_t.default.getter();
          sub_100009548(v580, v582);
          v585 = os_log_type_enabled(v583, v584);
          v353 = v974;
          v981 = v580;
          if (v585)
          {
            v586 = swift_slowAlloc();
            LODWORD(v979) = v584;
            v587 = v586;
            v980 = swift_slowAlloc();
            v1013[0] = v980;
            *v587 = 136315394;
            *(v587 + 4) = sub_100008F6C(0x6F436C61626F6C67, 0xEC0000006769666ELL, v1013);
            *(v587 + 12) = 2080;
            v588 = Data.hexString()();
            v589 = sub_100008F6C(v588._countAndFlagsBits, v588._object, v1013);

            *(v587 + 14) = v589;
            _os_log_impl(&_mh_execute_header, v583, v979, "Got script data for: %s with digest: %s", v587, 0x16u);
            swift_arrayDestroy();
          }

          object = v995;
          v591 = URL.path(percentEncoded:)(0);
          countAndFlagsBits = v591._countAndFlagsBits;
          v617 = v591._object;
          v592 = v994 >> 62;
          if ((v994 >> 62) <= 1)
          {
            v350 = v1005;
            v593 = v953;
            if (!v592)
            {
              v594 = BYTE6(v994);
              goto LABEL_228;
            }

            goto LABEL_225;
          }

          v350 = v1005;
          v593 = v953;
          if (v592 != 2)
          {
            v594 = 0;
            goto LABEL_228;
          }

          v665 = v992[2];
          v666 = v992[3];
          v594 = v666 - v665;
          if (!__OFSUB__(v666, v665))
          {
            goto LABEL_228;
          }

          __break(1u);
LABEL_183:
          (*(v966 + 8))(object, v988);

          sub_10001A074(v986, v989);
          v315 = 0;
          v579 = v1004;
          v578 = v974;
LABEL_184:
          v667 = v923;
          (v993)(v923, v315, 1, v276);
          v668 = v965;
          sub_100082A14(v667, v965, &qword_1003A03F0, &qword_1002C3D88);
          v1012[0] = 0;
          v669 = Logger.logObject.getter();
          v670 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v669, v670))
          {
            LODWORD(v1010) = v670;
            v671 = swift_slowAlloc();
            v1003 = swift_slowAlloc();
            v1013[0] = v1003;
            *v671 = 136446978;
            v672 = v968;
            swift_beginAccess();
            v673 = v276;
            v674 = *(v1000 + 48);
            if (v674(v672, 1, v276))
            {
              v675 = 0;
              v676 = 0xE000000000000000;
            }

            else
            {
              v710 = (v672 + *(v276 + 36));
              v675 = *v710;
              v676 = v710[1];
            }

            v711 = sub_100008F6C(v675, v676, v1013);

            *(v671 + 4) = v711;
            *(v671 + 12) = 2082;
            v712 = v974;
            swift_beginAccess();
            if (v674(v712, 1, v673))
            {
              v713 = 0;
              v714 = 0xE000000000000000;
            }

            else
            {
              v715 = (v712 + *(v673 + 36));
              v713 = *v715;
              v714 = v715[1];
            }

            v716 = sub_100008F6C(v713, v714, v1013);

            *(v671 + 14) = v716;
            *(v671 + 22) = 2082;
            v717 = v967;
            swift_beginAccess();
            if (v674(v717, 1, v673))
            {
              v718 = 0;
              v719 = 0xE000000000000000;
            }

            else
            {
              v720 = (v717 + *(v673 + 36));
              v718 = *v720;
              v719 = v720[1];
            }

            v668 = v965;
            v721 = sub_100008F6C(v718, v719, v1013);

            *(v671 + 24) = v721;
            *(v671 + 32) = 2082;
            swift_beginAccess();
            if (v674(v668, 1, v673))
            {
              v722 = 0;
              v723 = 0xE000000000000000;
            }

            else
            {
              v724 = (v668 + *(v673 + 36));
              v722 = *v724;
              v723 = v724[1];
            }

            v725 = sub_100008F6C(v722, v723, v1013);

            *(v671 + 34) = v725;
            _os_log_impl(&_mh_execute_header, v669, v1010, "LoadAndInstall: %{public}s, GlobalConfig: %{public}s, PartnerConfig: %{public}s, PartnerSAFConfig: %{public}s,", v671, 0x2Au);
            swift_arrayDestroy();

            v677 = v1005;
            v579 = v1004;
            v578 = v974;
          }

          else
          {

            v677 = v1005;
          }

          v726 = v968;
          swift_beginAccess();
          sub_100065074(v726, v941, &qword_1003A03F0, &qword_1002C3D88);
          swift_beginAccess();
          sub_100065074(v578, v942, &qword_1003A03F0, &qword_1002C3D88);
          v727 = v967;
          swift_beginAccess();
          sub_100065074(v727, v943, &qword_1003A03F0, &qword_1002C3D88);
          swift_beginAccess();
          v728 = v931;
          sub_100065074(v668, v931, &qword_1003A03F0, &qword_1002C3D88);
          v729 = *(v579 + 16);
          v729(v929, v977, v677);
          v729(v930, v996, v677);
          sub_100065074(v1002, v928, &qword_1003A0178, &unk_1002C3BB0);
          v730 = v920;
          *v920 = _swiftEmptyArrayStorage;
          LODWORD(v1010) = v1011[0];
          v731 = _s14InstallPackageVMa(0);
          sub_100065074(v941, &v730[v731[5]], &qword_1003A03F0, &qword_1002C3D88);
          sub_100065074(v942, &v730[v731[6]], &qword_1003A03F0, &qword_1002C3D88);
          sub_100065074(v943, &v730[v731[7]], &qword_1003A03F0, &qword_1002C3D88);
          sub_100065074(v728, &v730[v731[8]], &qword_1003A03F0, &qword_1002C3D88);
          v732 = v929;
          v733 = v1005;
          v729(&v730[v731[9]], v929, v1005);
          v734 = v930;
          v729(&v730[v731[10]], v930, v733);
          v735 = v928;
          sub_100065074(v928, &v730[v731[11]], &qword_1003A0178, &unk_1002C3BB0);
          v736 = &v730[v731[12]];
          v737 = v1017[0];
          *v736 = v1016;
          *(v736 + 1) = v737;
          *(v736 + 25) = *(v1017 + 9);
          v738 = &v730[v731[13]];
          v739 = v1008;
          v740 = v998;
          *v738 = v1008;
          *(v738 + 1) = v740;
          v741 = v985;
          *(v738 + 2) = v1001;
          *(v738 + 3) = v741;
          *(v738 + 4) = v1006;
          v738[40] = v1010;
          sub_100082A7C(v739);
          sub_10000BD44(v735, &qword_1003A0178, &unk_1002C3BB0);
          v742 = *(v579 + 8);
          v743 = v734;
          v744 = v1005;
          v742(v743, v1005);
          v742(v732, v744);
          sub_10000BD44(v931, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v943, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v942, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v941, &qword_1003A03F0, &qword_1002C3D88);
          *&v730[v731[14]] = _swiftEmptyArrayStorage;
          *&v730[v731[15]] = xmmword_1002C3C70;
          v730[v731[16]] = 1;
          v745 = v968;
          v746 = v967;
          v747 = v965;
          sub_10007AA54(v1012, v974, v968, v967, v965, v1028);
          v742(v977, v744);
          v742(v996, v744);
          sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
          sub_10000BD44(v1007, &qword_1003A0178, &unk_1002C3BB0);
          sub_10000BD44(v1009, &qword_1003A0178, &unk_1002C3BB0);
          sub_10000BD44(v747, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v746, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v745, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v974, &qword_1003A03F0, &qword_1002C3D88);
          v748 = v1008;
          goto LABEL_328;
        }

        v997 = v349;
        v342(v341, v343);

        v350 = v1005;
        v351 = v1028;
        v352 = v343;
        v353 = v974;
LABEL_230:
        v342(v959, v352);

        sub_10001A074(v992, v994);
        sub_10000BD44(&v1016, &qword_1003A0428, &qword_1002C3DD0);
        v753 = v353;
        v538 = v968;
        v539 = v967;
        v536 = v353;
        v754 = v965;
        sub_10007AA54(v1012, v753, v968, v967, v965, v351);
        v755 = v982;
        (v982)(v977, v350);
        v755(v996, v350);
        sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1007, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1009, &qword_1003A0178, &unk_1002C3BB0);
        v542 = v754;
LABEL_231:
        sub_10000BD44(v542, &qword_1003A03F0, &qword_1002C3D88);
        sub_10000BD44(v539, &qword_1003A03F0, &qword_1002C3D88);
        sub_10000BD44(v538, &qword_1003A03F0, &qword_1002C3D88);
        v332 = v536;
      }

      sub_10000BD44(v332, &qword_1003A03F0, &qword_1002C3D88);
      v748 = v1008;
LABEL_328:
      sub_100082AD0(v748);
      return;
    }

LABEL_339:
    __break(1u);
    goto LABEL_340;
  }

  if (!*(v1003 + 64))
  {
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
    goto LABEL_346;
  }

  v239 = v149;
  v240 = *(v1003 + 80);
  v968 = *(v1003 + 72);
  v974 = v240;
  v241 = *(v1003 + 56);
  UUID.init(uuidString:)();
  v242 = *(v222 + 88);
  v243 = *(v222 + 96);
  v244 = *(v222 + 104);
  v967 = *(v222 + 112);
  v245 = *(v222 + 136);
  v1020 = *(v222 + 120);
  v1021[0] = v245;
  *(v1021 + 9) = *(v222 + 145);
  UUID.init(uuidString:)();
  v246 = *(v222 + 176);
  v247 = *(v222 + 184);
  v248 = *(v222 + 192);
  v1009 = *(v222 + 200);
  v249 = *(v222 + 216);
  v987 = *(v222 + 208);
  v998 = v249;
  v250 = *(v222 + 232);
  v996 = *(v222 + 224);
  v1007 = v250;
  LODWORD(v977) = *(v222 + 240);
  v251 = v1005;
  v959 = v247;
  v1002 = v246;
  v965 = v244;
  if (v246)
  {
    v252 = *(v222 + 168);
  }

  v260 = v1028;
  UUID.init(uuidString:)();

  sub_100065074(v1008, v205, &qword_1003A0178, &unk_1002C3BB0);
  v261 = *(v239 + 48);
  v262 = v251;
  if (v261(v205, 1, v251) == 1)
  {
    sub_10000BD44(v205, &qword_1003A0178, &unk_1002C3BB0);
LABEL_47:
    v298 = Logger.logObject.getter();
    v299 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v298, v299))
    {
      v300 = swift_slowAlloc();
      *v300 = 0;
      _os_log_impl(&_mh_execute_header, v298, v299, "malformed response from backend", v300, 2u);
    }

    v301 = sub_10000BE18((v260 + 480), *(v260 + 504));
    v302 = sub_100020148(2027, 0, 0, 0);
    sub_10013F4E4(v302, *v301);

    sub_100020148(2027, 0, 0, 0);
    swift_willThrow();
    sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v1006, &qword_1003A0178, &unk_1002C3BB0);
    v296 = v1008;
    goto LABEL_50;
  }

  v954 = v248;
  v263 = *(v239 + 32);
  v264 = v995;
  v263(v995, v205, v262);
  v265 = v986;
  sub_100065074(v1006, v986, &qword_1003A0178, &unk_1002C3BB0);
  if (v261(v265, 1, v262) == 1)
  {
    (*(v239 + 8))(v264, v262);
    sub_10000BD44(v265, &qword_1003A0178, &unk_1002C3BB0);
LABEL_46:
    v260 = v1028;
    goto LABEL_47;
  }

  v278 = v983;
  v263(v983, v265, v262);
  v1022 = v1020;
  v1023[0] = v1021[0];
  *(v1023 + 9) = *(v1021 + 9);
  sub_100065074(&v1022, v1013, &qword_1003A0428, &qword_1002C3DD0);
  if ((sub_100082354(&v1022) & 1) == 0)
  {
    sub_10000BD44(&v1022, &qword_1003A0428, &qword_1002C3DD0);
    v288 = *(v239 + 8);
    v288(v278, v262);
LABEL_45:
    v288(v995, v262);
    goto LABEL_46;
  }

  v929 = v263;
  v279 = v1002;
  if (v1002)
  {
    v280 = v1009;
    v281 = v1009;
    v279 = v987;
    v282 = v998;
    v283 = v996;
    v284 = v1007;
    v285 = v977;
    v286 = v977;
    v287 = v975;
  }

  else
  {
    v282 = 0;
    v283 = 0;
    v284 = 0;
    v286 = 0;
    v281 = 1;
    v287 = v975;
    v280 = v1009;
    v285 = v977;
  }

  v1026[0] = v281;
  v1026[1] = v279;
  v1026[2] = v282;
  v1026[3] = v283;
  v1026[4] = v284;
  v1027 = v286;
  if ((sub_100082354(v1026) & 1) == 0)
  {
    sub_10000BD44(&v1022, &qword_1003A0428, &qword_1002C3DD0);
    v288 = *(v239 + 8);
    v288(v983, v262);
    goto LABEL_45;
  }

  if (v1002)
  {
    v1012[0] = v285;
    if (v280 == 1)
    {
      v297 = 1;
    }

    else
    {
      v354 = v280;
      v355 = v1007;
      sub_100082A7C(v354);
      v297 = v1009;
      v1007 = sub_100082610(v355, v285 & 1);
      v1012[0] = 0;
    }
  }

  else
  {
    v987 = 0;
    v998 = 0;
    v996 = 0;
    v1007 = 0;
    v1012[0] = 0;
    v297 = 1;
  }

  v356 = v1000 + 56;
  v357 = *(v1000 + 56);
  v358 = v999;
  v357(v973, 1, 1, v999);
  v357(v972, 1, 1, v358);
  v357(v287, 1, 1, v358);
  v922 = v357;
  v923 = v356;
  v357(v970, 1, 1, v358);
  v359 = *v1003;
  v1009 = v297;
  v921 = (v239 + 32);
  if (v359)
  {
    v360 = *(v359 + 16);
    if (v360)
    {
      v941 = objc_opt_self();
      v942 = (v239 + 8);
      v938 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v939 = NSFileProtectionKey;
      v361 = (v966 + 8);
      v362 = (v359 + 40);
      v363 = _swiftEmptyArrayStorage;
      *(&v364 + 1) = 2;
      v937 = xmmword_1002C1660;
      *&v364 = 136315394;
      v928 = v364;
      v365 = v976;
      v931 = v966 + 8;
      while (1)
      {
        v943 = v362;
        v944 = v360;
        v953 = v363;
        v366 = *(v362 - 1);
        v367 = *v362;
        sub_1000094F4(v366, *v362);
        sub_1000094F4(v366, v367);
        sub_1000094F4(v366, v367);
        v368 = [v941 defaultManager];
        v369 = [v368 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v370 = v971;
        UUID.init()();
        UUID.uuidString.getter();
        v372 = v371;
        v930 = *v942;
        (v930)(v370, v1005);
        v951 = v372;
        URL.appendingPathComponent(_:)();
        v373 = v985;
        URL.appendingPathExtension(_:)();
        v374 = v365;
        v375 = v988;
        v952 = *v361;
        (v952)(v374, v988);
        sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
        v376 = swift_allocObject();
        *(v376 + 16) = v937;
        v377 = v939;
        *(v376 + 32) = v939;
        type metadata accessor for FileProtectionType(0);
        *(v376 + 64) = v378;
        v379 = v938;
        *(v376 + 40) = v938;
        v380 = v377;
        v381 = v379;
        v382 = sub_1001845BC(v376);
        swift_setDeallocating();
        sub_10000BD44(v376 + 32, &qword_1003A0448, &qword_1002C3DF0);
        swift_deallocClassInstance();
        v977 = v366;
        v986 = v367;
        v383 = v997;
        sub_1000833FC(v373, v382, v366, v367);
        v384 = v383;
        if (v383)
        {
          v997 = v383;
          v533 = v952;
          (v952)(v373, v375);

          goto LABEL_117;
        }

        v385 = URL.generateSHA256Digest()();
        v387 = v386;
        sub_1000094F4(v385, v386);
        v388 = Logger.logObject.getter();
        v389 = static os_log_type_t.default.getter();
        sub_100009548(v385, v387);
        if (os_log_type_enabled(v388, v389))
        {
          v390 = swift_slowAlloc();
          v391 = swift_slowAlloc();
          v997 = 0;
          v1013[0] = v391;
          *v390 = v928;
          *(v390 + 4) = sub_100008F6C(0x6F436C61626F6C67, 0xEC0000006769666ELL, v1013);
          *(v390 + 12) = 2080;
          v392 = Data.hexString()();
          v393 = sub_100008F6C(v392._countAndFlagsBits, v392._object, v1013);

          *(v390 + 14) = v393;
          _os_log_impl(&_mh_execute_header, v388, v389, "Got script data for: %s with digest: %s", v390, 0x16u);
          swift_arrayDestroy();
          v384 = v997;
        }

        v394 = URL.path(percentEncoded:)(0);
        v395 = v986 >> 62;
        if ((v986 >> 62) > 1)
        {
          if (v395 == 2)
          {
            v398 = *(v977 + 16);
            v397 = *(v977 + 24);
            v396 = v397 - v398;
            if (__OFSUB__(v397, v398))
            {
              goto LABEL_338;
            }
          }

          else
          {
            v396 = 0;
          }
        }

        else if (v395)
        {
          if (__OFSUB__(HIDWORD(v977), v977))
          {
            __break(1u);
LABEL_338:
            __break(1u);
            goto LABEL_339;
          }

          v396 = HIDWORD(v977) - v977;
        }

        else
        {
          v396 = BYTE6(v986);
        }

        v399 = v969;
        sub_10007B4F8(v394._countAndFlagsBits, v394._object, 2, v396, 0, v969);
        v997 = v384;
        if (v384)
        {
          break;
        }

        v400 = v988;
        v401 = v931;
        v402 = v952;
        (v952)(v985, v988);

        v403 = v387;
        v361 = v401;
        sub_100009548(v385, v403);

        v404 = v977;
        v405 = v986;
        sub_100009548(v977, v986);
        sub_100009548(v404, v405);
        v402(v984, v400);
        v406 = v981;
        sub_100082B74(v399, v981, type metadata accessor for SLAMScript);
        sub_10008289C(v406, v982, type metadata accessor for SLAMScript);
        v363 = v953;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v363 = sub_10004DC8C(0, *(v363 + 2) + 1, 1, v363);
        }

        v365 = v976;
        v408 = *(v363 + 2);
        v407 = *(v363 + 3);
        if (v408 >= v407 >> 1)
        {
          v363 = sub_10004DC8C(v407 > 1, v408 + 1, 1, v363);
        }

        v362 = v943 + 2;
        sub_100009548(v977, v986);
        sub_100082008(v981, type metadata accessor for SLAMScript);
        *(v363 + 2) = v408 + 1;
        sub_100082B74(v982, &v363[((*(v1000 + 80) + 32) & ~*(v1000 + 80)) + *(v1000 + 72) * v408], type metadata accessor for SLAMScript);
        v360 = v944 - 1;
        if (v944 == 1)
        {
          goto LABEL_87;
        }
      }

      v543 = v988;
      v533 = v952;
      (v952)(v985, v988);
      v375 = v543;

      sub_100009548(v385, v387);
LABEL_117:
      sub_10000BD44(&v1022, &qword_1003A0428, &qword_1002C3DD0);
      v544 = v977;
      v545 = v986;
      sub_100009548(v977, v986);

      sub_100009548(v544, v545);
      sub_100009548(v544, v545);
      v533(v984, v375);
      v546 = Logger.logObject.getter();
      v547 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v546, v547))
      {
        v548 = swift_slowAlloc();
        *v548 = 0;
        _os_log_impl(&_mh_execute_header, v546, v547, "invalid SLAM, delete already saved SLAM if necessary", v548, 2u);
      }

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v549 = *(v957 + 72);
      v550 = (*(v957 + 80) + 32) & ~*(v957 + 80);
      v1003 = swift_allocObject();
      v551 = (v1003 + v550);
      v552 = v973;
      swift_beginAccess();
      sub_100065074(v552, v551, &qword_1003A03F0, &qword_1002C3D88);
      v553 = v972;
      swift_beginAccess();
      sub_100065074(v553, v551 + v549, &qword_1003A03F0, &qword_1002C3D88);
      v554 = v975;
      swift_beginAccess();
      sub_100065074(v554, v551 + 2 * v549, &qword_1003A03F0, &qword_1002C3D88);
      v1004 = v549;
      v555 = v970;
      swift_beginAccess();
      sub_100065074(v555, v551 + 3 * v549, &qword_1003A03F0, &qword_1002C3D88);
      v556 = (v1000 + 48);
      v1010 = _swiftEmptyArrayStorage;
      v557 = 4;
      v1002 = v551;
      v558 = v999;
      do
      {
        v559 = v989;
        sub_100065074(v551, v989, &qword_1003A03F0, &qword_1002C3D88);
        v560 = v559;
        v561 = v990;
        sub_1000829AC(v560, v990, &qword_1003A03F0, &qword_1002C3D88);
        if ((*v556)(v561, 1, v558) == 1)
        {
          sub_10000BD44(v561, &qword_1003A03F0, &qword_1002C3D88);
        }

        else
        {
          sub_100082B74(v561, v991, type metadata accessor for SLAMScript);
          v562 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v562 = sub_10004DC8C(0, v562[2] + 1, 1, v562);
          }

          v564 = v562[2];
          v563 = v562[3];
          if (v564 >= v563 >> 1)
          {
            v562 = sub_10004DC8C(v563 > 1, v564 + 1, 1, v562);
          }

          v562[2] = v564 + 1;
          v565 = (*(v1000 + 80) + 32) & ~*(v1000 + 80);
          v1010 = v562;
          sub_100082B74(v991, v562 + v565 + *(v1000 + 72) * v564, type metadata accessor for SLAMScript);
          v558 = v999;
        }

        v551 = (v551 + v1004);
        --v557;
      }

      while (v557);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v566 = *(v1010 + 16);
      if (v566)
      {
        v567 = v1010 + ((*(v1000 + 80) + 32) & ~*(v1000 + 80));
        v568 = *(v1000 + 72);
        v569 = v926;
        v570 = v940;
        do
        {
          sub_10008289C(v567, v569, type metadata accessor for SLAMScript);
          sub_10007BCAC(v569);
          sub_100082008(v569, type metadata accessor for SLAMScript);
          v567 += v568;
          --v566;
        }

        while (v566);

        v571 = v973;
      }

      else
      {

        v571 = v973;
        v570 = v940;
      }

      v572 = *(v953 + 2);
      if (v572)
      {
        v573 = &v953[(*(v1000 + 80) + 32) & ~*(v1000 + 80)];
        v574 = *(v1000 + 72);
        do
        {
          sub_10008289C(v573, v570, type metadata accessor for SLAMScript);
          sub_10007BCAC(v570);
          sub_100082008(v570, type metadata accessor for SLAMScript);
          v573 += v574;
          --v572;
        }

        while (v572);
      }

      v575 = v1005;
      v576 = v930;
      (v930)(v983, v1005);
      goto LABEL_137;
    }
  }

  v363 = _swiftEmptyArrayStorage;
  v365 = v976;
LABEL_87:
  v409 = v974;
  v953 = v363;
  if (v974 >> 60 != 15)
  {
    v449 = objc_opt_self();
    v450 = v968;
    sub_1000094F4(v968, v409);
    v451 = [v449 defaultManager];
    v452 = [v451 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v453 = v946;
    UUID.init()();
    UUID.uuidString.getter();
    v455 = v454;
    v456 = *(v1004 + 8);
    v990 = (v1004 + 8);
    v989 = v456;
    v456(v453, v1005);
    v991 = v455;
    URL.appendingPathComponent(_:)();
    v457 = v950;
    URL.appendingPathExtension(_:)();
    v459 = (v966 + 8);
    v458 = *(v966 + 8);
    v458(v365, v988);
    sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
    v460 = swift_allocObject();
    *(v460 + 16) = xmmword_1002C1660;
    *(v460 + 32) = NSFileProtectionKey;
    type metadata accessor for FileProtectionType(0);
    *(v460 + 64) = v461;
    *(v460 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v462 = NSFileProtectionKey;
    v463 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v464 = v457;
    v465 = v974;
    v466 = sub_1001845BC(v460);
    swift_setDeallocating();
    sub_10000BD44(v460 + 32, &qword_1003A0448, &qword_1002C3DF0);
    swift_deallocClassInstance();
    v467 = v997;
    sub_1000833FC(v464, v466, v450, v465);
    if (v467)
    {
      v997 = v467;
      v468 = v988;
      v458(v464, v988);

LABEL_253:
      v458(v955, v468);

      sub_10001A074(v968, v465);
      sub_10000BD44(&v1022, &qword_1003A0428, &qword_1002C3DD0);
      v778 = Logger.logObject.getter();
      v779 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v778, v779))
      {
        v780 = swift_slowAlloc();
        *v780 = 0;
        _os_log_impl(&_mh_execute_header, v778, v779, "invalid SLAM, delete already saved SLAM if necessary", v780, 2u);
      }

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v781 = *(v957 + 72);
      v782 = (*(v957 + 80) + 32) & ~*(v957 + 80);
      v1003 = swift_allocObject();
      v783 = (v1003 + v782);
      v784 = v973;
      swift_beginAccess();
      sub_100065074(v784, v783, &qword_1003A03F0, &qword_1002C3D88);
      v785 = v972;
      swift_beginAccess();
      sub_100065074(v785, v783 + v781, &qword_1003A03F0, &qword_1002C3D88);
      v786 = v975;
      swift_beginAccess();
      sub_100065074(v786, v783 + 2 * v781, &qword_1003A03F0, &qword_1002C3D88);
      v1004 = v781;
      v787 = v970;
      swift_beginAccess();
      sub_100065074(v787, v783 + 3 * v781, &qword_1003A03F0, &qword_1002C3D88);
      v788 = (v1000 + 48);
      v1010 = _swiftEmptyArrayStorage;
      v789 = 4;
      v1002 = v783;
      v790 = v999;
      do
      {
        v791 = v992;
        sub_100065074(v783, v992, &qword_1003A03F0, &qword_1002C3D88);
        v792 = v791;
        v793 = v993;
        sub_1000829AC(v792, v993, &qword_1003A03F0, &qword_1002C3D88);
        if ((*v788)(v793, 1, v790) == 1)
        {
          sub_10000BD44(v793, &qword_1003A03F0, &qword_1002C3D88);
        }

        else
        {
          sub_100082B74(v793, v994, type metadata accessor for SLAMScript);
          v794 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v794 = sub_10004DC8C(0, v794[2] + 1, 1, v794);
          }

          v796 = v794[2];
          v795 = v794[3];
          if (v796 >= v795 >> 1)
          {
            v794 = sub_10004DC8C(v795 > 1, v796 + 1, 1, v794);
          }

          v794[2] = v796 + 1;
          v797 = (*(v1000 + 80) + 32) & ~*(v1000 + 80);
          v1010 = v794;
          sub_100082B74(v994, v794 + v797 + *(v1000 + 72) * v796, type metadata accessor for SLAMScript);
          v790 = v999;
        }

        v783 = (v783 + v1004);
        --v789;
      }

      while (v789);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v798 = *(v1010 + 16);
      if (v798)
      {
        v799 = v1010 + ((*(v1000 + 80) + 32) & ~*(v1000 + 80));
        v800 = *(v1000 + 72);
        v801 = v973;
        v802 = v932;
        do
        {
          sub_10008289C(v799, v802, type metadata accessor for SLAMScript);
          sub_10007BCAC(v802);
          sub_100082008(v802, type metadata accessor for SLAMScript);
          v799 += v800;
          --v798;
        }

        while (v798);
      }

      else
      {

        v801 = v973;
      }

      v803 = *(v953 + 2);
      v804 = v945;
      if (v803)
      {
        v805 = &v953[(*(v1000 + 80) + 32) & ~*(v1000 + 80)];
        v806 = *(v1000 + 72);
        do
        {
          sub_10008289C(v805, v804, type metadata accessor for SLAMScript);
          sub_10007BCAC(v804);
          sub_100082008(v804, type metadata accessor for SLAMScript);
          v805 += v806;
          --v803;
        }

        while (v803);
      }

      v807 = v1005;
      v808 = v989;
      (v989)(v983, v1005);
LABEL_326:
      v808(v995, v807);
      sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1006, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1008, &qword_1003A0178, &unk_1002C3BB0);

      sub_10000BD44(v970, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v975, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v972, &qword_1003A03F0, &qword_1002C3D88);
      v577 = v801;
      goto LABEL_327;
    }

    v985 = v459;
    v986 = v458;

    v532 = URL.generateSHA256Digest()();
    v997 = 0;
    v503 = v532;
    v604 = v603;
    sub_1000094F4(v532, v603);
    v605 = Logger.logObject.getter();
    v606 = static os_log_type_t.default.getter();
    sub_100009548(v503, v604);
    if (os_log_type_enabled(v605, v606))
    {
      v607 = swift_slowAlloc();
      v1013[0] = swift_slowAlloc();
      *v607 = 136315394;
      *(v607 + 4) = sub_100008F6C(0x6F436C61626F6C67, 0xEC0000006769666ELL, v1013);
      *(v607 + 12) = 2080;
      v608 = Data.hexString()();
      v609 = sub_100008F6C(v608._countAndFlagsBits, v608._object, v1013);

      *(v607 + 14) = v609;
      _os_log_impl(&_mh_execute_header, v605, v606, "Got script data for: %s with digest: %s", v607, 0x16u);
      swift_arrayDestroy();
    }

    v365 = v976;
    v411 = v948;
    v412 = v949;
    v612 = URL.path(percentEncoded:)(0);
    v611 = v612._object;
    v610 = v612._countAndFlagsBits;
    v613 = v974 >> 62;
    if ((v974 >> 62) <= 1)
    {
      if (!v613)
      {
        v614 = BYTE6(v974);
        goto LABEL_251;
      }

      goto LABEL_248;
    }

    if (v613 != 2)
    {
      v614 = 0;
      goto LABEL_251;
    }

    v700 = *(v968 + 16);
    v699 = *(v968 + 24);
    v614 = v699 - v700;
    if (!__OFSUB__(v699, v700))
    {
      goto LABEL_251;
    }

    __break(1u);
    goto LABEL_202;
  }

  v410 = 1;
  v411 = v948;
  v412 = v949;
  while (1)
  {
    v413 = 1;
    (v922)(v411, v410, 1, v999);
    sub_100082A14(v411, v973, &qword_1003A03F0, &qword_1002C3D88);
    v414 = *(v1003 + 16);
    v415 = v966;
    if (v414 >> 60 == 15)
    {
      goto LABEL_90;
    }

    v491 = *(v1003 + 8);
    v492 = objc_opt_self();
    sub_1000094F4(v491, v414);
    v493 = [v492 defaultManager];
    v494 = [v493 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v994 = v414;
    v495 = v925;
    UUID.init()();
    UUID.uuidString.getter();
    v497 = v496;
    v498 = *(v1004 + 8);
    v992 = (v1004 + 8);
    v991 = v498;
    v498(v495, v1005);
    v993 = v497;
    URL.appendingPathComponent(_:)();
    v499 = v934;
    URL.appendingPathExtension(_:)();
    v500 = v365;
    v501 = *(v415 + 8);
    v501(v500, v988);
    sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
    v502 = swift_allocObject();
    *(v502 + 16) = xmmword_1002C1660;
    *(v502 + 32) = NSFileProtectionKey;
    v503 = (v502 + 32);
    type metadata accessor for FileProtectionType(0);
    *(v502 + 64) = v504;
    *(v502 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v505 = NSFileProtectionKey;
    v506 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v507 = sub_1001845BC(v502);
    swift_setDeallocating();
    sub_10000BD44(v502 + 32, &qword_1003A0448, &qword_1002C3DF0);
    v508 = v499;
    v509 = v994;
    swift_deallocClassInstance();
    v510 = v997;
    sub_1000833FC(v508, v507, v491, v509);
    if (v510)
    {
      v997 = v510;
      v511 = v988;
      v501(v508, v988);

      v512 = v972;
LABEL_306:
      v501(v947, v511);

      sub_10001A074(v491, v509);
      sub_10000BD44(&v1022, &qword_1003A0428, &qword_1002C3DD0);
      v865 = Logger.logObject.getter();
      v866 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v865, v866))
      {
        v867 = swift_slowAlloc();
        *v867 = 0;
        _os_log_impl(&_mh_execute_header, v865, v866, "invalid SLAM, delete already saved SLAM if necessary", v867, 2u);
      }

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v868 = *(v957 + 72);
      v869 = (*(v957 + 80) + 32) & ~*(v957 + 80);
      v1003 = swift_allocObject();
      v870 = (v1003 + v869);
      v871 = v973;
      swift_beginAccess();
      sub_100065074(v871, v870, &qword_1003A03F0, &qword_1002C3D88);
      swift_beginAccess();
      sub_100065074(v512, v870 + v868, &qword_1003A03F0, &qword_1002C3D88);
      v872 = v975;
      swift_beginAccess();
      sub_100065074(v872, v870 + 2 * v868, &qword_1003A03F0, &qword_1002C3D88);
      v1004 = v868;
      v873 = v970;
      swift_beginAccess();
      sub_100065074(v873, v870 + 3 * v868, &qword_1003A03F0, &qword_1002C3D88);
      v874 = (v1000 + 48);
      v1010 = _swiftEmptyArrayStorage;
      v875 = 4;
      v1002 = v870;
      v876 = v999;
      do
      {
        v877 = v978;
        sub_100065074(v870, v978, &qword_1003A03F0, &qword_1002C3D88);
        v878 = v877;
        v879 = v979;
        sub_1000829AC(v878, v979, &qword_1003A03F0, &qword_1002C3D88);
        if ((*v874)(v879, 1, v876) == 1)
        {
          sub_10000BD44(v879, &qword_1003A03F0, &qword_1002C3D88);
        }

        else
        {
          sub_100082B74(v879, v980, type metadata accessor for SLAMScript);
          v880 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v880 = sub_10004DC8C(0, v880[2] + 1, 1, v880);
          }

          v882 = v880[2];
          v881 = v880[3];
          if (v882 >= v881 >> 1)
          {
            v880 = sub_10004DC8C(v881 > 1, v882 + 1, 1, v880);
          }

          v880[2] = v882 + 1;
          v883 = (*(v1000 + 80) + 32) & ~*(v1000 + 80);
          v1010 = v880;
          sub_100082B74(v980, v880 + v883 + *(v1000 + 72) * v882, type metadata accessor for SLAMScript);
          v876 = v999;
        }

        v870 = (v870 + v1004);
        --v875;
      }

      while (v875);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v884 = *(v1010 + 16);
      if (v884)
      {
        v885 = v1010 + ((*(v1000 + 80) + 32) & ~*(v1000 + 80));
        v886 = *(v1000 + 72);
        v801 = v973;
        v887 = v912;
        do
        {
          sub_10008289C(v885, v887, type metadata accessor for SLAMScript);
          sub_10007BCAC(v887);
          sub_100082008(v887, type metadata accessor for SLAMScript);
          v885 += v886;
          --v884;
        }

        while (v884);
      }

      else
      {

        v801 = v973;
      }

      v888 = *(v953 + 2);
      v889 = v924;
      if (v888)
      {
        v890 = &v953[(*(v1000 + 80) + 32) & ~*(v1000 + 80)];
        v891 = *(v1000 + 72);
        do
        {
          sub_10008289C(v890, v889, type metadata accessor for SLAMScript);
          sub_10007BCAC(v889);
          sub_100082008(v889, type metadata accessor for SLAMScript);
          v890 += v891;
          --v888;
        }

        while (v888);
      }

      v807 = v1005;
      v808 = v991;
      (v991)(v983, v1005);
      goto LABEL_326;
    }

    v990 = v501;

    v595 = URL.generateSHA256Digest()();
    v997 = 0;
    v678 = v595;
    v365 = v679;
    v989 = v491;
    sub_1000094F4(v595, v679);
    v680 = Logger.logObject.getter();
    v681 = static os_log_type_t.default.getter();
    sub_100009548(v678, v365);
    v682 = os_log_type_enabled(v680, v681);
    v986 = v678;
    if (v682)
    {
      v683 = swift_slowAlloc();
      LODWORD(v985) = v681;
      v684 = v683;
      v1013[0] = swift_slowAlloc();
      *v684 = 136315394;
      *(v684 + 4) = sub_100008F6C(0xD000000000000014, 0x8000000100348D90, v1013);
      *(v684 + 12) = 2080;
      v685 = Data.hexString()();
      v503 = sub_100008F6C(v685._countAndFlagsBits, v685._object, v1013);

      *(v684 + 14) = v503;
      _os_log_impl(&_mh_execute_header, v680, v985, "Got script data for: %s with digest: %s", v684, 0x16u);
      swift_arrayDestroy();
    }

    v412 = v949;
    v411 = v933;
    v686 = URL.path(percentEncoded:)(0);
    v611 = v686._object;
    v610 = v686._countAndFlagsBits;
    v604 = v686._object;
    v687 = v994 >> 62;
    if ((v994 >> 62) <= 1)
    {
      break;
    }

    if (v687 != 2)
    {
      v688 = 0;
      goto LABEL_304;
    }

    v776 = *(v989 + 16);
    v775 = *(v989 + 24);
    v688 = v775 - v776;
    if (!__OFSUB__(v775, v776))
    {
      goto LABEL_304;
    }

    __break(1u);
LABEL_248:
    if (__OFSUB__(HIDWORD(v968), v968))
    {
      goto LABEL_342;
    }

    v614 = HIDWORD(v968) - v968;
LABEL_251:
    v982 = v503;
    v984 = v604;
    v777 = v997;
    sub_10007B4F8(v610, v611, 2, v614, 0, v411);
    v997 = v777;
    if (v777)
    {
      v468 = v988;
      v458 = v986;
      (v986)(v950, v988);

      sub_100009548(v982, v984);
      v465 = v974;
      goto LABEL_253;
    }

    v809 = v988;
    v810 = v986;
    (v986)(v950, v988);

    sub_100009548(v982, v984);
    v810(v955, v809);

    sub_10001A074(v968, v974);
    v410 = 0;
  }

  if (v687)
  {
    if (__OFSUB__(HIDWORD(v989), v989))
    {
      goto LABEL_344;
    }

    v688 = HIDWORD(v989) - v989;
  }

  else
  {
    v688 = BYTE6(v994);
  }

LABEL_304:
  v863 = v997;
  sub_10007B4F8(v686._countAndFlagsBits, v686._object, 0, v688, 0, v411);
  v997 = v863;
  if (v863)
  {
    v511 = v988;
    v864 = v365;
    v501 = v990;
    v990(v934, v988);

    sub_100009548(v986, v864);
    v512 = v972;
    v491 = v989;
    v509 = v994;
    goto LABEL_306;
  }

  v892 = v988;
  v893 = v990;
  v990(v934, v988);

  sub_100009548(v986, v365);
  v893(v947, v892);

  sub_10001A074(v989, v994);
  v413 = 0;
LABEL_90:
  v416 = v997;
  v417 = v1005;
  v418 = 1;
  v419 = v933;
  (v922)(v933, v413, 1, v999);
  sub_100082A14(v419, v972, &qword_1003A03F0, &qword_1002C3D88);
  v420 = v967;
  v421 = v936;
  v422 = v927;
  if (v967 >> 60 != 15)
  {
    v423 = v927;
    v424 = objc_opt_self();
    v425 = v965;
    sub_1000094F4(v965, v420);
    v426 = [v424 defaultManager];
    v427 = [v426 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v428 = v911;
    UUID.init()();
    UUID.uuidString.getter();
    v429 = *(v1004 + 8);
    v430 = v428;
    v431 = v967;
    v994 = v1004 + 8;
    v993 = v429;
    (v429)(v430, v417);
    sub_10007AF98(v425, v431, 3, v935);
    if (v416)
    {
      v997 = v416;
      (*(v966 + 8))(v412, v988);

      sub_10001A074(v425, v431);
      sub_10000BD44(&v1022, &qword_1003A0428, &qword_1002C3DD0);
      v432 = Logger.logObject.getter();
      v433 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v432, v433))
      {
        v434 = swift_slowAlloc();
        *v434 = 0;
        _os_log_impl(&_mh_execute_header, v432, v433, "invalid SLAM, delete already saved SLAM if necessary", v434, 2u);
      }

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v435 = *(v957 + 72);
      v436 = (*(v957 + 80) + 32) & ~*(v957 + 80);
      v1004 = swift_allocObject();
      v437 = v1004 + v436;
      v438 = v973;
      swift_beginAccess();
      sub_100065074(v438, v437, &qword_1003A03F0, &qword_1002C3D88);
      v439 = v972;
      swift_beginAccess();
      sub_100065074(v439, v437 + v435, &qword_1003A03F0, &qword_1002C3D88);
      v440 = v975;
      swift_beginAccess();
      sub_100065074(v440, v437 + 2 * v435, &qword_1003A03F0, &qword_1002C3D88);
      v1010 = v435;
      v441 = v970;
      swift_beginAccess();
      sub_100065074(v441, v437 + 3 * v435, &qword_1003A03F0, &qword_1002C3D88);
      v442 = (v1000 + 48);
      v443 = _swiftEmptyArrayStorage;
      v444 = 4;
      v1003 = v437;
      v445 = v960;
      do
      {
        v446 = v964;
        sub_100065074(v437, v964, &qword_1003A03F0, &qword_1002C3D88);
        sub_1000829AC(v446, v445, &qword_1003A03F0, &qword_1002C3D88);
        if ((*v442)(v445, 1, v999) == 1)
        {
          sub_10000BD44(v445, &qword_1003A03F0, &qword_1002C3D88);
        }

        else
        {
          sub_100082B74(v445, v963, type metadata accessor for SLAMScript);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v443 = sub_10004DC8C(0, v443[2] + 1, 1, v443);
          }

          v448 = v443[2];
          v447 = v443[3];
          if (v448 >= v447 >> 1)
          {
            v443 = sub_10004DC8C(v447 > 1, v448 + 1, 1, v443);
          }

          v443[2] = v448 + 1;
          sub_100082B74(v963, v443 + ((*(v1000 + 80) + 32) & ~*(v1000 + 80)) + *(v1000 + 72) * v448, type metadata accessor for SLAMScript);
          v445 = v960;
        }

        v437 += v1010;
        --v444;
      }

      while (v444);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v596 = v443[2];
      if (v596)
      {
        v597 = v443 + ((*(v1000 + 80) + 32) & ~*(v1000 + 80));
        v598 = *(v1000 + 72);
        v599 = v904;
        v600 = v901;
        do
        {
          sub_10008289C(v597, v600, type metadata accessor for SLAMScript);
          sub_10007BCAC(v600);
          sub_100082008(v600, type metadata accessor for SLAMScript);
          v597 += v598;
          --v596;
        }

        while (v596);

        v571 = v973;
        goto LABEL_203;
      }

LABEL_202:

      v571 = v973;
      v599 = v904;
LABEL_203:
      v701 = *(v953 + 2);
      if (v701)
      {
        v702 = &v953[(*(v1000 + 80) + 32) & ~*(v1000 + 80)];
        v703 = *(v1000 + 72);
        do
        {
          sub_10008289C(v702, v599, type metadata accessor for SLAMScript);
          sub_10007BCAC(v599);
          sub_100082008(v599, type metadata accessor for SLAMScript);
          v702 += v703;
          --v701;
        }

        while (v701);
      }

      v575 = v1005;
      v576 = v993;
      (v993)(v983, v1005);
LABEL_137:
      v576(v995, v575);
      sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1006, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1008, &qword_1003A0178, &unk_1002C3BB0);

      sub_10000BD44(v970, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v975, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v972, &qword_1003A03F0, &qword_1002C3D88);
      v577 = v571;
LABEL_327:
      sub_10000BD44(v577, &qword_1003A03F0, &qword_1002C3D88);
      v748 = v1009;
      goto LABEL_328;
    }

    (*(v966 + 8))(v412, v988);

    sub_10001A074(v425, v431);
    v418 = 0;
    v422 = v423;
    v421 = v936;
  }

  v626 = 1;
  v627 = v935;
  (v922)(v935, v418, 1, v999);
  sub_100082A14(v627, v975, &qword_1003A03F0, &qword_1002C3D88);
  v628 = v1004;
  if (v1002)
  {
    v629 = v954;
    if (v954 >> 60 != 15)
    {
      v630 = objc_opt_self();
      v997 = v416;
      v631 = v959;
      sub_1000094F4(v959, v629);
      v632 = [v630 defaultManager];
      v633 = [v632 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v634 = v907;
      UUID.init()();
      UUID.uuidString.getter();
      v635 = v422;
      v636 = v628;
      v637 = v631;
      v639 = *(v636 + 8);
      v638 = v636 + 8;
      v640 = v634;
      v641 = v954;
      v1002 = v639;
      (v639)(v640, v1005);
      v642 = v997;
      sub_10007AF98(v631, v641, 4, v635);
      v416 = v642;
      if (v642)
      {
        v1004 = v638;
        v997 = v642;
        (*(v966 + 8))(v421, v988);

        sub_10001A074(v637, v641);
        sub_10000BD44(&v1022, &qword_1003A0428, &qword_1002C3DD0);
        v643 = Logger.logObject.getter();
        v644 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v643, v644))
        {
          v645 = swift_slowAlloc();
          *v645 = 0;
          _os_log_impl(&_mh_execute_header, v643, v644, "invalid SLAM, delete already saved SLAM if necessary", v645, 2u);
        }

        sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
        v646 = *(v957 + 72);
        v647 = (*(v957 + 80) + 32) & ~*(v957 + 80);
        v1003 = swift_allocObject();
        v648 = v1003 + v647;
        v649 = v973;
        swift_beginAccess();
        sub_100065074(v649, v648, &qword_1003A03F0, &qword_1002C3D88);
        v650 = v972;
        swift_beginAccess();
        sub_100065074(v650, v648 + v646, &qword_1003A03F0, &qword_1002C3D88);
        v651 = v975;
        swift_beginAccess();
        sub_100065074(v651, v648 + 2 * v646, &qword_1003A03F0, &qword_1002C3D88);
        v1010 = v646;
        v652 = v970;
        swift_beginAccess();
        sub_100065074(v652, v648 + 3 * v646, &qword_1003A03F0, &qword_1002C3D88);
        v653 = (v1000 + 48);
        v654 = _swiftEmptyArrayStorage;
        v655 = 4;
        v994 = v648;
        v656 = v956;
        do
        {
          v657 = v962;
          sub_100065074(v648, v962, &qword_1003A03F0, &qword_1002C3D88);
          sub_1000829AC(v657, v656, &qword_1003A03F0, &qword_1002C3D88);
          if ((*v653)(v656, 1, v999) == 1)
          {
            sub_10000BD44(v656, &qword_1003A03F0, &qword_1002C3D88);
          }

          else
          {
            sub_100082B74(v656, v961, type metadata accessor for SLAMScript);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v654 = sub_10004DC8C(0, v654[2] + 1, 1, v654);
            }

            v659 = v654[2];
            v658 = v654[3];
            if (v659 >= v658 >> 1)
            {
              v654 = sub_10004DC8C(v658 > 1, v659 + 1, 1, v654);
            }

            v654[2] = v659 + 1;
            sub_100082B74(v961, v654 + ((*(v1000 + 80) + 32) & ~*(v1000 + 80)) + *(v1000 + 72) * v659, type metadata accessor for SLAMScript);
            v656 = v956;
          }

          v648 += v1010;
          --v655;
        }

        while (v655);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v660 = v654[2];
        if (v660)
        {
          v661 = v654 + ((*(v1000 + 80) + 32) & ~*(v1000 + 80));
          v662 = *(v1000 + 72);
          v663 = v902;
          v664 = v900;
          do
          {
            sub_10008289C(v661, v664, type metadata accessor for SLAMScript);
            sub_10007BCAC(v664);
            sub_100082008(v664, type metadata accessor for SLAMScript);
            v661 += v662;
            --v660;
          }

          while (v660);

          v571 = v973;
        }

        else
        {

          v571 = v973;
          v663 = v902;
        }

        v772 = *(v953 + 2);
        if (v772)
        {
          v773 = &v953[(*(v1000 + 80) + 32) & ~*(v1000 + 80)];
          v774 = *(v1000 + 72);
          do
          {
            sub_10008289C(v773, v663, type metadata accessor for SLAMScript);
            sub_10007BCAC(v663);
            sub_100082008(v663, type metadata accessor for SLAMScript);
            v773 += v774;
            --v772;
          }

          while (v772);
        }

        v575 = v1005;
        v576 = v1002;
        (v1002)(v983, v1005);
        goto LABEL_137;
      }

      (*(v966 + 8))(v421, v988);

      sub_10001A074(v637, v641);
      v626 = 0;
      v628 = v1004;
      v422 = v635;
    }
  }

  v689 = v999;
  (v922)(v422, v626, 1, v999);
  sub_100082A14(v422, v970, &qword_1003A03F0, &qword_1002C3D88);
  v690 = v909;
  sub_100065074(v972, v909, &qword_1003A03F0, &qword_1002C3D88);
  v691 = *(v1000 + 48);
  v1000 += 48;
  v692 = v691(v690, 1, v689);
  v693 = v910;
  if (v692 == 1)
  {
    v997 = v416;
    sub_10000BD44(v690, &qword_1003A03F0, &qword_1002C3D88);
  }

  else
  {
    sub_100082B74(v690, v910, type metadata accessor for SLAMScript);
    v694 = sub_10000BE18((v1028 + 528), *(v1028 + 552));
    v695 = v903;
    sub_10008D798(v903);
    v696 = *v694;
    sub_100095CC0(v695, 1);
    if (v416)
    {
      sub_10000BD44(&v1022, &qword_1003A0428, &qword_1002C3DD0);
      (*(v966 + 8))(v695, v988);
      sub_100082008(v693, type metadata accessor for SLAMScript);
      v697 = *(v628 + 8);
      v698 = v1005;
      v697(v983, v1005);
      v697(v995, v698);
      sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1006, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1008, &qword_1003A0178, &unk_1002C3BB0);

      sub_10000BD44(v970, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v975, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v972, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v973, &qword_1003A03F0, &qword_1002C3D88);
      sub_100082AD0(v1009);
      return;
    }

    v997 = 0;
    (*(v966 + 8))(v695, v988);
    sub_100082008(v693, type metadata accessor for SLAMScript);
  }

  v757 = Logger.logObject.getter();
  v758 = static os_log_type_t.default.getter();
  v759 = os_log_type_enabled(v757, v758);
  v760 = v953;
  if (v759)
  {
    v761 = swift_slowAlloc();
    v762 = swift_slowAlloc();
    v1013[0] = v762;
    *v761 = 136446978;
    v763 = v972;
    swift_beginAccess();
    v764 = v999;
    v765 = v691(v763, 1, v999);
    v1028 = v762;
    if (v765)
    {
      v766 = 0;
      v767 = 0xE000000000000000;
    }

    else
    {
      v811 = (v763 + *(v764 + 36));
      v812 = *v811;
      v767 = v811[1];

      v766 = v812;
    }

    v813 = sub_100008F6C(v766, v767, v1013);

    *(v761 + 4) = v813;
    *(v761 + 12) = 2082;
    v814 = v973;
    swift_beginAccess();
    if (v691(v814, 1, v764))
    {
      v815 = 0;
      v816 = 0xE000000000000000;
    }

    else
    {
      v817 = (v814 + *(v764 + 36));
      v818 = *v817;
      v816 = v817[1];

      v815 = v818;
    }

    v819 = sub_100008F6C(v815, v816, v1013);

    *(v761 + 14) = v819;
    *(v761 + 22) = 2082;
    v820 = v975;
    swift_beginAccess();
    if (v691(v820, 1, v764))
    {
      v821 = 0;
      v822 = 0xE000000000000000;
    }

    else
    {
      v823 = (v820 + *(v764 + 36));
      v824 = *v823;
      v822 = v823[1];

      v821 = v824;
    }

    v825 = sub_100008F6C(v821, v822, v1013);

    *(v761 + 24) = v825;
    *(v761 + 32) = 2082;
    v826 = v970;
    swift_beginAccess();
    if (v691(v826, 1, v764))
    {
      v827 = 0;
      v828 = 0xE000000000000000;
    }

    else
    {
      v829 = (v826 + *(v764 + 36));
      v830 = *v829;
      v828 = v829[1];

      v827 = v830;
    }

    v768 = v973;
    v769 = v913;
    v831 = sub_100008F6C(v827, v828, v1013);

    *(v761 + 34) = v831;
    _os_log_impl(&_mh_execute_header, v757, v758, "LoadAndInstall: %{public}s, GlobalConfig: %{public}s, PartnerConfig: %{public}s, PartnerSAFConfig: %{public}s,", v761, 0x2Au);
    swift_arrayDestroy();

    v771 = v1005;
    v770 = v1004;
    v760 = v953;
  }

  else
  {

    v768 = v973;
    v769 = v913;
    v770 = v1004;
    v771 = v1005;
  }

  v832 = v972;
  swift_beginAccess();
  sub_100065074(v832, v915, &qword_1003A03F0, &qword_1002C3D88);
  swift_beginAccess();
  sub_100065074(v768, v916, &qword_1003A03F0, &qword_1002C3D88);
  v833 = v975;
  swift_beginAccess();
  sub_100065074(v833, v917, &qword_1003A03F0, &qword_1002C3D88);
  v834 = v970;
  swift_beginAccess();
  v835 = v834;
  v836 = v906;
  sub_100065074(v835, v906, &qword_1003A03F0, &qword_1002C3D88);
  v837 = *(v770 + 16);
  v837(v914, v983, v771);
  v838 = v905;
  v837(v905, v995, v771);
  sub_100065074(v1001, v769, &qword_1003A0178, &unk_1002C3BB0);
  v839 = *(v1003 + 248);
  v1019 = v839;
  if (v839)
  {
    LODWORD(v1028) = v1012[0];
    v1018 = *(v1003 + 256);
    v840 = v1009;
    if (*(&v1018 + 1) >> 60 == 15)
    {
      goto LABEL_347;
    }

    v841 = v920;
    *v920 = v760;
    v842 = _s14InstallPackageVMa(0);
    sub_1000829AC(v915, &v841[v842[5]], &qword_1003A03F0, &qword_1002C3D88);
    sub_1000829AC(v916, &v841[v842[6]], &qword_1003A03F0, &qword_1002C3D88);
    sub_1000829AC(v917, &v841[v842[7]], &qword_1003A03F0, &qword_1002C3D88);
    sub_1000829AC(v836, &v841[v842[8]], &qword_1003A03F0, &qword_1002C3D88);
    v843 = v1005;
    v844 = v929;
    (v929)(&v841[v842[9]], v914, v1005);
    v844(&v841[v842[10]], v838, v843);
    sub_1000829AC(v913, &v841[v842[11]], &qword_1003A0178, &unk_1002C3BB0);
    v845 = &v841[v842[12]];
    v846 = v1023[0];
    *v845 = v1022;
    *(v845 + 1) = v846;
    *(v845 + 25) = *(v1023 + 9);
    v847 = &v841[v842[13]];
    v848 = v987;
    *v847 = v840;
    *(v847 + 1) = v848;
    v849 = v996;
    *(v847 + 2) = v998;
    *(v847 + 3) = v849;
    *(v847 + 4) = v1007;
    v847[40] = v1028;
    *&v841[v842[14]] = v839;
    *&v841[v842[15]] = v1018;
    v841[v842[16]] = 0;

    sub_100082A7C(v840);
    sub_100065074(&v1019, v1011, &qword_1003A0430, &qword_1002C3DD8);
    sub_100065074(&v1018, v1011, &qword_1003A0438, &qword_1002C3DE0);
    v850 = *(v1004 + 8);
    v851 = v1005;
    v850(v983, v1005);
    v850(v995, v851);
    sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v1006, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v1008, &qword_1003A0178, &unk_1002C3BB0);

    sub_10000BD44(v970, &qword_1003A03F0, &qword_1002C3D88);
    sub_10000BD44(v975, &qword_1003A03F0, &qword_1002C3D88);
    sub_10000BD44(v972, &qword_1003A03F0, &qword_1002C3D88);
    sub_10000BD44(v973, &qword_1003A03F0, &qword_1002C3D88);
    v748 = v1009;
    goto LABEL_328;
  }

LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
}

void sub_100071DB4(uint64_t a1, unint64_t a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v446 = a7;
  v447 = a8;
  v444 = a5;
  v445 = a6;
  v451 = a4;
  v479 = a2;
  v480 = a3;
  v488 = a1;
  v466 = *v9;
  *&v467 = v10;
  v470 = type metadata accessor for SESnapshot.ProposedKernelInfo();
  v472 = *(v470 - 8);
  v11 = v472[8];
  v12 = __chkstk_darwin(v470);
  v461 = &v441 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v465 = (&v441 - v14);
  v15 = sub_100004074(&qword_1003A03F8, &qword_1002C3D90);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v460 = &v441 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v455 = &v441 - v20;
  __chkstk_darwin(v19);
  v475 = (&v441 - v21);
  v22 = type metadata accessor for SLAMScript(0);
  v490 = *(v22 - 8);
  v491 = v22;
  v23 = v490[8];
  v24 = __chkstk_darwin(v22);
  v487 = &v441 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v494 = (&v441 - v26);
  v486 = _s14InstallPackageVMa(0);
  v27 = *(*(v486 - 1) + 64);
  v28 = __chkstk_darwin(v486);
  v448 = &v441 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v453 = &v441 - v31;
  v32 = __chkstk_darwin(v30);
  v471 = &v441 - v33;
  v34 = __chkstk_darwin(v32);
  v469 = &v441 - v35;
  __chkstk_darwin(v34);
  v468 = &v441 - v36;
  v464 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v462 = *(v464 - 8);
  v37 = *(v462 + 64);
  v38 = __chkstk_darwin(v464);
  v449 = &v441 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v458 = &v441 - v41;
  v42 = __chkstk_darwin(v40);
  v457 = &v441 - v43;
  v44 = __chkstk_darwin(v42);
  isa = (&v441 - v45);
  v46 = __chkstk_darwin(v44);
  v463 = &v441 - v47;
  v48 = __chkstk_darwin(v46);
  v493 = &v441 - v49;
  __chkstk_darwin(v48);
  v500 = (&v441 - v50);
  v51 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v52 = *(*(v51 - 8) + 64);
  v53 = __chkstk_darwin(v51 - 8);
  v450 = &v441 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v454 = &v441 - v56;
  v57 = __chkstk_darwin(v55);
  v456 = &v441 - v58;
  v59 = __chkstk_darwin(v57);
  v495 = (&v441 - v60);
  __chkstk_darwin(v59);
  v62 = (&v441 - v61);
  v63 = type metadata accessor for UUID();
  v64 = *(v63 - 8);
  v65 = v64[8];
  v66 = __chkstk_darwin(v63);
  v452 = &v441 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v70 = &v441 - v69;
  __chkstk_darwin(v68);
  v72 = &v441 - v71;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  v74 = sub_10000403C(v73, qword_1003A0278);
  v75 = v64[2];
  v75(v72, v479, v63);
  sub_100065074(v480, v62, &qword_1003A0178, &unk_1002C3BB0);
  v481 = v74;
  v76 = Logger.logObject.getter();
  LODWORD(v489) = static os_log_type_t.debug.getter();
  v77 = os_log_type_enabled(v76, v489);
  v485 = v70;
  v478 = v63;
  v483 = v64;
  if (v77)
  {
    v482 = v76;
    v78 = swift_slowAlloc();
    v477 = swift_slowAlloc();
    v496[0] = v477;
    *v78 = 136315394;
    v79 = _typeName(_:qualified:)();
    v81 = sub_100008F6C(v79, v80, v496);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1002C1790;
    *(v82 + 56) = &type metadata for String;
    *(v82 + 32) = 0x746E6573657270;
    *(v82 + 40) = 0xE700000000000000;
    *(v82 + 88) = v63;
    v83 = sub_10000BE5C((v82 + 64));
    v75(v83, v72, v63);
    v84 = v483;
    v85 = v495;
    sub_100065074(v62, v495, &qword_1003A0178, &unk_1002C3BB0);
    v86 = (v84[6])(v85, 1, v63);
    v476 = v62;
    if (v86 == 1)
    {
      sub_10000BD44(v85, &qword_1003A0178, &unk_1002C3BB0);
      *(v82 + 120) = &type metadata for String;
      *(v82 + 96) = 0;
      *(v82 + 104) = 0xE000000000000000;
    }

    else
    {
      v498 = v63;
      v87 = sub_10000BE5C(&v497);
      (v84[4])(v87, v85, v63);
      sub_100019D3C(&v497, (v82 + 96));
    }

    v88 = v489;
    v89 = showFunction(signature:_:)(0xD00000000000006FLL, 0x8000000100348B20, v82);
    v91 = v90;

    sub_10000BD44(v476, &qword_1003A0178, &unk_1002C3BB0);
    v476 = v84[1];
    v476(v72, v63);
    v92 = sub_100008F6C(v89, v91, v496);

    *(v78 + 14) = v92;
    v93 = v482;
    _os_log_impl(&_mh_execute_header, v482, v88, "%s.%s", v78, 0x16u);
    swift_arrayDestroy();

    v70 = v485;
  }

  else
  {

    sub_10000BD44(v62, &qword_1003A0178, &unk_1002C3BB0);
    v476 = v64[1];
    v476(v72, v63);
  }

  UUID.init()();
  sub_10000CCE4((v484 + 33), &v497);
  v94 = v498;
  v482 = v499;
  v474 = sub_10000BE18(&v497, v498);
  v459 = sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1690;
  *(inited + 32) = 0x655674656C707061;
  v473 = inited + 32;
  *(inited + 40) = 0xED00006E6F697372;
  v477 = v486[5];
  v96 = v500;
  sub_100065074(v488 + v477, v500, &qword_1003A03F0, &qword_1002C3D88);
  v97 = v491;
  v98 = v490[6];
  v489 = v490 + 6;
  v495 = v98;
  if ((v98)(v96, 1, v491) == 1)
  {
    sub_10000BD44(v96, &qword_1003A03F0, &qword_1002C3D88);
    v99 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
  }

  else
  {
    v100 = (v96 + *(v97 + 36));
    v102 = *v100;
    v101 = v100[1];

    sub_100082008(v96, type metadata accessor for SLAMScript);
    v99 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    if (v101)
    {
      *v99 = v102;
      v70 = v485;
      goto LABEL_15;
    }

    v70 = v485;
  }

  *v99 = 7104878;
  v101 = 0xE300000000000000;
LABEL_15:
  *(inited + 56) = v101;
  strcpy((inited + 88), "globalConfig");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v103 = v486;
  v104 = v488 + v486[10];
  v105 = UUID.uuidString.getter();
  *(inited + 128) = &type metadata for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v105;
  *(inited + 112) = v106;
  strcpy((inited + 144), "partnerConfig");
  *(inited + 158) = -4864;
  v107 = v103[9];
  v108 = UUID.uuidString.getter();
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v108;
  *(inited + 168) = v109;
  *(inited + 200) = 1684632949;
  *(inited + 208) = 0xE400000000000000;
  v110 = UUID.uuidString.getter();
  *(inited + 240) = &type metadata for String;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v110;
  *(inited + 224) = v111;
  v112 = v70;
  v113 = sub_100184010(inited);
  swift_setDeallocating();
  v114 = sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0x1Du, v113, v94, v482);

  sub_10000959C(&v497);
  static Double.longWait.getter();
  v116 = sub_1000827B8(v115);
  if (!v116)
  {
    sub_100020148(2026, 0, 0, 0);
    swift_willThrow();
    v134 = v112;
    goto LABEL_119;
  }

  v473 = v107;
  v117 = qword_10039D3C0;
  v118 = v116;
  if (v117 != -1)
  {
    swift_once();
  }

  v119 = v467;
  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v120 = v488;
  v482 = v118;
  v121 = v468;
  v122 = v469;
  if (v119)
  {

    swift_errorRetain();
    v123 = sub_100171840(25392);

    if (v123)
    {
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *&v497 = swift_slowAlloc();
        *v126 = 136315394;
        v127 = _typeName(_:qualified:)();
        v129 = sub_100008F6C(v127, v128, &v497);

        *(v126 + 4) = v129;
        *(v126 + 12) = 2080;
        v130 = showFunction(signature:_:)(0xD00000000000006FLL, 0x8000000100348B20, _swiftEmptyArrayStorage);
        v132 = sub_100008F6C(v130, v131, &v497);

        *(v126 + 14) = v132;
        _os_log_impl(&_mh_execute_header, v124, v125, "%s.%s Cannot select pay applet during install. May be from prohibit timer.", v126, 0x16u);
        swift_arrayDestroy();
        v118 = v482;
      }

      v133 = v485;
      sub_100020148(2009, 0, 0, 0);
      swift_willThrow();
      [v118 endSession];

      v134 = v133;
      goto LABEL_119;
    }

    v474 = 0;
  }

  else
  {

    v474 = 0;
  }

  sub_10008289C(v120, v121, _s14InstallPackageVMa);
  sub_10008289C(v120, v122, _s14InstallPackageVMa);
  v135 = v471;
  sub_10008289C(v120, v471, _s14InstallPackageVMa);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  v138 = os_log_type_enabled(v136, v137);
  v443 = v114;
  *&v467 = v119;
  if (v138)
  {
    LODWORD(v466) = v137;
    v500 = v136;
    v139 = swift_slowAlloc();
    v442 = swift_slowAlloc();
    *&v497 = v442;
    *v139 = 136315906;
    if (v119)
    {
      v140 = 7630702;
    }

    else
    {
      v140 = 0x79646165726C61;
    }

    if (v119)
    {
      v141 = 0xE300000000000000;
    }

    else
    {
      v141 = 0xE700000000000000;
    }

    v142 = v121;
    v143 = sub_100008F6C(v140, v141, &v497);

    *(v139 + 4) = v143;
    *(v139 + 12) = 2080;
    v144 = v486;
    v145 = v142 + v486[10];
    v146 = sub_100055298();
    v148 = v147;
    sub_100082008(v142, _s14InstallPackageVMa);
    v149 = sub_100008F6C(v146, v148, &v497);

    *(v139 + 14) = v149;
    *(v139 + 22) = 2080;
    v150 = v122 + v144[9];
    v151 = sub_100055298();
    v153 = v152;
    sub_100082008(v122, _s14InstallPackageVMa);
    v154 = sub_100008F6C(v151, v153, &v497);

    *(v139 + 24) = v154;
    *(v139 + 32) = 2080;
    v155 = v456;
    sub_100065074(&v471[v144[11]], v456, &qword_1003A0178, &unk_1002C3BB0);
    v156 = v478;
    if ((v483[6])(v155, 1, v478) == 1)
    {
      v157 = 4271950;
      sub_10000BD44(v155, &qword_1003A0178, &unk_1002C3BB0);
      v158 = 0xE300000000000000;
    }

    else
    {
      v157 = sub_100055298();
      v158 = v160;
      v476(v155, v156);
    }

    v159 = v491;
    sub_100082008(v471, _s14InstallPackageVMa);
    v161 = sub_100008F6C(v157, v158, &v497);

    *(v139 + 34) = v161;
    v162 = v500;
    _os_log_impl(&_mh_execute_header, v500, v466, "An applet is %s installed. globalID: %s, profileID: %s, 2nd profile ID: %s", v139, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100082008(v135, _s14InstallPackageVMa);
    sub_100082008(v122, _s14InstallPackageVMa);
    sub_100082008(v121, _s14InstallPackageVMa);
    v159 = v491;
  }

  v466 = a9;
  sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
  v163 = *(v462 + 72);
  v164 = (*(v462 + 80) + 32) & ~*(v462 + 80);
  v471 = swift_allocObject();
  v165 = &v471[v164];
  v166 = v488;
  sub_100065074(v488 + v477, &v471[v164], &qword_1003A03F0, &qword_1002C3D88);
  v167 = v486;
  v468 = v486[6];
  sub_100065074(v166 + v468, &v165[v163], &qword_1003A03F0, &qword_1002C3D88);
  sub_100065074(v166 + v167[7], &v165[2 * v163], &qword_1003A03F0, &qword_1002C3D88);
  sub_100065074(v166 + v167[8], &v165[3 * v163], &qword_1003A03F0, &qword_1002C3D88);
  v168 = 4;
  v469 = v165;
  v169 = v165;
  v500 = _swiftEmptyArrayStorage;
  do
  {
    v170 = v493;
    sub_100065074(v169, v493, &qword_1003A03F0, &qword_1002C3D88);
    v171 = v170;
    v172 = isa;
    sub_1000829AC(v171, isa, &qword_1003A03F0, &qword_1002C3D88);
    if ((v495)(v172, 1, v159) == 1)
    {
      sub_10000BD44(v172, &qword_1003A03F0, &qword_1002C3D88);
    }

    else
    {
      sub_100082B74(v172, v494, type metadata accessor for SLAMScript);
      v173 = v500;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v173 = sub_10004DC8C(0, v173[2] + 1, 1, v173);
      }

      v175 = v173[2];
      v174 = v173[3];
      v500 = v173;
      if (v175 >= v174 >> 1)
      {
        v500 = sub_10004DC8C(v174 > 1, v175 + 1, 1, v500);
      }

      v176 = v500;
      v500[2].isa = (v175 + 1);
      sub_100082B74(v494, v176 + ((*(v490 + 80) + 32) & ~*(v490 + 80)) + v490[9] * v175, type metadata accessor for SLAMScript);
      v159 = v491;
    }

    v169 += v163;
    --v168;
  }

  while (v168);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v177 = v488;
  v178 = v463;
  sub_100065074(v488 + v477, v463, &qword_1003A03F0, &qword_1002C3D88);
  v179 = v495;
  v180 = (v495)(v178, 1, v159);
  sub_10000BD44(v178, &qword_1003A03F0, &qword_1002C3D88);
  if (v180 == 1)
  {
    v181 = v457;
    sub_100065074(v177 + v468, v457, &qword_1003A03F0, &qword_1002C3D88);
    v182 = v179(v181, 1, v159);
    sub_10000BD44(v181, &qword_1003A03F0, &qword_1002C3D88);
    v183 = v484;
    if (v182 == 1)
    {
      v184 = &off_10037E330;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_10004D4B0(0, 2, 1, &off_10037E330);
      }

      v186 = *(v184 + 2);
      v185 = *(v184 + 3);
      if (v186 >= v185 >> 1)
      {
        v184 = sub_10004D4B0((v185 > 1), v186 + 1, 1, v184);
      }

      *(v184 + 2) = v186 + 1;
      v187 = &v184[16 * v186];
      *(v187 + 4) = 0x6C61626F6C67;
      *(v187 + 5) = 0xE600000000000000;
      goto LABEL_70;
    }

    if (v467 || !sub_10007C3C8(0))
    {
      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        v202 = "Install global config: failed to reset keys.";
        goto LABEL_68;
      }
    }

    else
    {
      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        v202 = "Install global config: reset CAPK and CRL.";
LABEL_68:
        _os_log_impl(&_mh_execute_header, v199, v200, v202, v201, 2u);
      }
    }

    v184 = &off_10037E330;
LABEL_70:
    v203 = v474;
    v204 = sub_100090AB0();
    if (v203)
    {
      v474 = 0;
      swift_errorRetain();
      v205 = Logger.logObject.getter();
      v206 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *v207 = 138412290;
        swift_errorRetain();
        v209 = _swift_stdlib_bridgeErrorToNSError();
        *(v207 + 4) = v209;
        *v208 = v209;
        _os_log_impl(&_mh_execute_header, v205, v206, "failed to retrieve profile list: %@", v207, 0xCu);
        sub_10000BD44(v208, &unk_10039E220, &qword_1002C3D60);

        v177 = v488;
      }

      else
      {
      }

      v197 = _swiftEmptyArrayStorage;
      v192 = v482;
      v193 = v479;
      v198 = v480;
    }

    else
    {
      v210 = v204;
      v493 = v184;

      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        v494 = swift_slowAlloc();
        *&v497 = v494;
        *v213 = 136315138;
        v214 = Array.description.getter();
        v216 = sub_100008F6C(v214, v215, &v497);

        *(v213 + 4) = v216;
        _os_log_impl(&_mh_execute_header, v211, v212, "existing configs: %s", v213, 0xCu);
        sub_10000959C(v494);
      }

      __chkstk_darwin(v217);
      *(&v441 - 2) = v488;
      v494 = sub_1000653D4(sub_10008296C, (&v441 - 4), v210);
      v218 = v183[38];
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v219 = swift_allocObject();
      *(v219 + 16) = xmmword_1002C1670;
      *(v219 + 32) = 3;
      *&v497 = v210;
      sub_100004074(&qword_10039E270, &unk_1002C3BE0);
      sub_100064238();
      v220 = BidirectionalCollection<>.joined(separator:)();
      *(v219 + 64) = &type metadata for String;
      *(v219 + 40) = v220;
      *(v219 + 48) = v221;
      *(v219 + 72) = 2;
      v222 = *(v210 + 16);

      *(v219 + 104) = &type metadata for Int;
      *(v219 + 80) = v222;
      v223 = sub_100184144(v219);
      swift_setDeallocating();
      sub_100004074(&qword_10039FED8, &unk_1002C37D0);
      swift_arrayDestroy();
      v224 = swift_deallocClassInstance();
      v225 = *(v218 + 56);
      __chkstk_darwin(v224);
      *(&v441 - 2) = v223;
      os_unfair_lock_lock((v225 + 32));
      sub_10006535C((v225 + 16));
      v474 = 0;
      os_unfair_lock_unlock((v225 + 32));

      v183 = v484;
      v177 = v488;
      v192 = v482;
      v193 = v479;
      v198 = v480;
      v184 = v493;
      v197 = v494;
    }

    goto LABEL_78;
  }

  v188 = Logger.logObject.getter();
  v189 = static os_log_type_t.default.getter();
  v190 = os_log_type_enabled(v188, v189);
  v183 = v484;
  if (v190)
  {
    v191 = swift_slowAlloc();
    *v191 = 0;
    _os_log_impl(&_mh_execute_header, v188, v189, "fresh install of kernel", v191, 2u);
  }

  v192 = v482;
  v193 = v479;
  if (!v467 && sub_10007C3C8(0))
  {
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      *v196 = 0;
      _os_log_impl(&_mh_execute_header, v194, v195, "reset CAPK and CRL for the old kernel", v196, 2u);
      v192 = v482;
    }
  }

  v184 = 0;
  v197 = _swiftEmptyArrayStorage;
  v198 = v480;
  v177 = v488;
LABEL_78:
  v226 = *sub_10000BE18(v183 + 13, v183[16]);
  v494 = v197;
  sub_10003E51C(v197);
  v227 = v198;
  v228 = v192;
  sub_10007C874(v193, v227, v177, v192);
  v229 = v475;
  if (v184)
  {
    v230 = v183[36];
    isa = v183[37];
    v480 = sub_10000BE18(v183 + 33, v230);
    v231 = v184;
    v232 = swift_allocObject();
    *(v232 + 16) = xmmword_1002C1670;
    *(v232 + 32) = 1684631668;
    *(v232 + 40) = 0xE400000000000000;
    v233 = UUID.uuidString.getter();
    *(v232 + 72) = &type metadata for String;
    *(v232 + 48) = v233;
    *(v232 + 56) = v234;
    *(v232 + 80) = &protocol witness table for String;
    *(v232 + 88) = 1701869940;
    *(v232 + 96) = 0xE400000000000000;
    *&v497 = v231;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v235 = v231;
    sub_100064238();
    v236 = BidirectionalCollection<>.joined(separator:)();
    *(v232 + 128) = &type metadata for String;
    *(v232 + 136) = &protocol witness table for String;
    *(v232 + 104) = v236;
    *(v232 + 112) = v237;
    v238 = sub_100184010(v232);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v239 = v230;
    v228 = v482;
    v229 = v475;
    sub_1000C2288(0x11u, v238, v239, isa);
    v184 = v235;
  }

  v240 = v472;
  v241 = v472[7];
  v242 = v470;
  v241(v229, 1, 1, v470);
  isa = v500[2].isa;
  if (isa)
  {
    v243 = v458;
    sub_100065074(v488 + v477, v458, &qword_1003A03F0, &qword_1002C3D88);
    v244 = (v495)(v243, 1, v491);
    sub_10000BD44(v243, &qword_1003A03F0, &qword_1002C3D88);
    if (v244 == 1)
    {
      v493 = v184;
      v245 = v455;
      SESnapshot.ProposedKernelInfo.init(nvm:cod:cor:idx:)();
      v246 = v482;
    }

    else
    {
      v247 = *sub_10000BE18(v484 + 66, v484[69]);
      v246 = v482;
      v248 = v474;
      sub_100095A94(v482);
      if (v248)
      {
        sub_10000BD44(v229, &qword_1003A03F8, &qword_1002C3D90);

        [v246 endSession];

        goto LABEL_86;
      }

      v493 = v184;
      v474 = 0;
      v245 = v455;
      SESnapshot.ProposedKernelInfo.init(nvm:cod:cor:idx:)();
    }

    sub_10000BD44(v229, &qword_1003A03F8, &qword_1002C3D90);
    v242 = v470;
    v241(v245, 0, 1, v470);
    sub_1000829AC(v245, v229, &qword_1003A03F8, &qword_1002C3D90);
    v240 = v472;
  }

  else
  {
    v493 = v184;
    v246 = v228;
  }

  v249 = v460;
  sub_100065074(v229, v460, &qword_1003A03F8, &qword_1002C3D90);
  v250 = (v240[6])(v249, 1, v242);
  v251 = v485;
  v252 = v465;
  v253 = v461;
  if (v250 != 1)
  {
    (v240[4])(v465, v249, v242);
    (v240[2])(v253, v252, v242);
    v259 = v242;
    v260 = Logger.logObject.getter();
    v261 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v260, v261))
    {
      v262 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      *&v497 = v263;
      *v262 = 136315138;
      v264 = SESnapshot.ProposedKernelInfo.description.getter();
      v266 = v265;
      v267 = v259;
      v268 = v472[1];
      (v268)(v253, v267);
      v269 = sub_100008F6C(v264, v266, &v497);
      v270 = v493;

      *(v262 + 4) = v269;
      _os_log_impl(&_mh_execute_header, v260, v261, "Evaluated kernel asset: %s", v262, 0xCu);
      sub_10000959C(v263);
      v251 = v485;

      v246 = v482;

      v271 = v268;
      v272 = v474;
      v254 = v500;
    }

    else
    {

      v271 = v240[1];
      (v271)(v253, v242);
      v272 = v474;
      v254 = v500;
      v270 = v493;
    }

    [v246 endSession];
    v256 = v465;
    v273 = sub_1000365F0(v465);
    if (v272)
    {
    }

    else
    {
      v474 = 0;
      v274 = v273;
      static Double.longWait.getter();
      v276 = sub_1000827B8(v275);
      if (v276)
      {
        v229 = v276;

        if (v274)
        {
          v493 = v270;

          (v271)(v256, v470);
          v246 = v229;
          goto LABEL_102;
        }

        v482 = v271;
        v296 = Logger.logObject.getter();
        v297 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v296, v297))
        {
          v298 = swift_slowAlloc();
          *v298 = 0;
          _os_log_impl(&_mh_execute_header, v296, v297, "Kernel asset will not fit on the SE", v298, 2u);
        }

        if ((v451 & 1) == 0)
        {

          v246 = v229;
LABEL_129:

          sub_100020148(2028, 0, 0, 0);
          swift_willThrow();

          (v482)(v256, v470);
          sub_10000BD44(v475, &qword_1003A03F8, &qword_1002C3D90);
LABEL_117:

          [v246 endSession];

          v134 = v251;
          goto LABEL_119;
        }

        v493 = v270;
        v299 = v484;
        swift_beginAccess();
        v300 = v299[48];
        v301 = sub_10000BE18(v299 + 45, v300);
        v302 = *&v300[-2]._os_unfair_lock_opaque;
        v303 = *(v302 + 64);
        __chkstk_darwin(v301);
        v305 = &v441 - ((v304 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v302 + 16))(v305);
        v306 = [*(*v305 + 16) serialNumber];
        if (!v306)
        {
          __break(1u);
          os_unfair_lock_unlock(0);
          __break(1u);
          os_unfair_lock_unlock(v254 + 8);
          __break(1u);
LABEL_210:
          os_unfair_lock_unlock(v300 + 8);
          __break(1u);
          return;
        }

        v307 = v306;

        v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v310 = v309;

        (*(v302 + 8))(v305, v300);
        v311 = v474;
        v312 = sub_100036A44(v229, v308, v310);
        if (v311)
        {

          (v482)(v465, v470);
          sub_10000BD44(v475, &qword_1003A03F8, &qword_1002C3D90);

          [v229 endSession];

          goto LABEL_86;
        }

        v277 = v312;
        v474 = 0;

        [v229 endSession];
        v422 = Logger.logObject.getter();
        v423 = static os_log_type_t.info.getter();
        v424 = os_log_type_enabled(v422, v423);
        v256 = v465;
        v254 = v500;
        if (v424)
        {
          v425 = swift_slowAlloc();
          *v425 = 0;
          _os_log_impl(&_mh_execute_header, v422, v423, "Launching SE storage management sheet", v425, 2u);
        }

        v426 = v474;
        LOBYTE(v279) = sub_100036E04(v277, v256, v444, v445, v446, v447);
        v290 = v426;
        v251 = v485;
        if (!v426)
        {
          goto LABEL_205;
        }

LABEL_198:
        (v482)(v256, v470);
LABEL_98:
        sub_10000BD44(v475, &qword_1003A03F8, &qword_1002C3D90);
        v476(v251, v478);

        return;
      }

      sub_100020148(2026, 0, 0, 0);
      swift_willThrow();
    }

    (v271)(v256, v470);
    goto LABEL_98;
  }

  sub_10000BD44(v249, &qword_1003A03F8, &qword_1002C3D90);
  v254 = v500;
  if (!v466)
  {
    goto LABEL_103;
  }

LABEL_91:
  ObjectType = swift_getObjectType();
  v256 = sub_10009CAF8(3, ObjectType);
  for (i = v257; ; i = 0)
  {
    v277 = v254[2];
    v482 = v246;
    v494 = v256;
    if (!v277)
    {
      break;
    }

    v480 = i;
    *&v497 = _swiftEmptyArrayStorage;
    v278 = v246;
    sub_10004E424(0, v277, 0);
    v279 = v497;
    v280 = v254 + ((*(v490 + 80) + 32) & ~*(v490 + 80));
    v281 = v490[9];
    do
    {
      v282 = v279;
      v283 = v487;
      sub_10008289C(v280, v487, type metadata accessor for SLAMScript);
      v284 = *(v283 + *(v491 + 20));
      sub_100082008(v283, type metadata accessor for SLAMScript);
      v279 = v282;
      *&v497 = v282;
      v285 = v282[2];
      v286 = v279[3];
      v287 = v285 + 1;
      if (v285 >= v286 >> 1)
      {
        sub_10004E424((v286 > 1), v285 + 1, 1);
        v279 = v497;
      }

      v279[2] = v287;
      v279[v285 + 4] = v284;
      v280 += v281;
      v277 = (v277 - 1);
    }

    while (v277);
    v251 = v485;
    v229 = v475;
    v254 = v500;
    i = v480;
    v256 = v494;
LABEL_112:
    v290 = 0;
    v291 = 4;
    while (1)
    {
      v292 = v279[v291];
      v293 = __OFADD__(v290, v292);
      v290 = (v290 + v292);
      if (v293)
      {
        break;
      }

      ++v291;
      if (!--v287)
      {
        goto LABEL_115;
      }
    }

    __break(1u);
LABEL_205:
    v474 = v290;
    v438 = v279;
    static Double.longWait.getter();
    v440 = sub_1000827B8(v439);
    if (!v440)
    {

      sub_100020148(2026, 0, 0, 0);
      swift_willThrow();

      goto LABEL_198;
    }

    v246 = v440;

    if ((v438 & 1) == 0)
    {
      goto LABEL_129;
    }

    (v482)(v256, v470);

LABEL_102:
    v229 = v475;
    if (v466)
    {
      goto LABEL_91;
    }

LABEL_103:
    v256 = 0;
  }

  v288 = v246;
  v287 = _swiftEmptyArrayStorage[2];
  v289 = v288;
  if (v287)
  {
    v251 = v485;
    v279 = _swiftEmptyArrayStorage;
    goto LABEL_112;
  }

  v290 = 0;
  v251 = v485;
LABEL_115:

  v498 = sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
  v499 = sub_100082904();
  v246 = v482;
  *&v497 = v482;
  type metadata accessor for SLAMSwift();
  v294 = swift_allocObject();
  *(v294 + 88) = sub_1001846E4(_swiftEmptyArrayStorage);
  *(v294 + 96) = 0;
  sub_100029790(&v497, v294 + 16);
  *(v294 + 56) = v256;
  *(v294 + 64) = i;
  *(v294 + 72) = 0;
  *(v294 + 80) = v290;
  sub_1000696D8(v256);
  v295 = v474;
  sub_10007D7D0(v254, v294, v251);
  if (v295)
  {
    sub_10000BD44(v229, &qword_1003A03F8, &qword_1002C3D90);
    sub_1000048A0(v256);

    goto LABEL_117;
  }

  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v313 = sub_10011DBA8();
  v315 = v314;
  v316 = v484[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  v317 = swift_initStackObject();
  v467 = xmmword_1002C1660;
  *(v317 + 16) = xmmword_1002C1660;
  *(v317 + 32) = 1;
  v318 = v317 + 32;
  v487 = v313;
  v479 = v315;
  if (v315)
  {
    v319 = &type metadata for String;
    v468 = v315;
    v490 = v315;
  }

  else
  {
    v313 = 0;
    v319 = 0;
    *(v317 + 56) = 0;
    v490 = 0xE300000000000000;
    v468 = 0xE800000000000000;
  }

  *(v317 + 40) = v313;
  *(v317 + 48) = v315;
  *(v317 + 64) = v319;
  v320 = v317;

  v321 = sub_100184144(v320);
  swift_setDeallocating();
  v322 = sub_10000BD44(v318, &qword_10039FED8, &unk_1002C37D0);
  v500 = v316;
  v323 = v316[7];
  __chkstk_darwin(v322);
  *(&v441 - 2) = v321;
  os_unfair_lock_lock((v323 + 32));
  sub_10006535C((v323 + 16));
  v474 = 0;
  v480 = i;
  os_unfair_lock_unlock((v323 + 32));

  v324 = v488;
  v325 = v453;
  sub_10008289C(v488, v453, _s14InstallPackageVMa);

  v326 = Logger.logObject.getter();
  v327 = static os_log_type_t.default.getter();

  v328 = os_log_type_enabled(v326, v327);
  v470 = v315;
  if (v328)
  {
    v329 = swift_slowAlloc();
    v477 = swift_slowAlloc();
    *&v497 = v477;
    *v329 = 136315394;
    if (v479)
    {
      v330 = v487;
    }

    else
    {
      v330 = 4271950;
    }

    LODWORD(v472) = v327;
    v331 = sub_100008F6C(v330, v490, &v497);

    *(v329 + 4) = v331;
    *(v329 + 12) = 2080;
    v332 = v325;
    v333 = v486;
    v334 = v449;
    sub_100065074(v325 + v486[5], v449, &qword_1003A03F0, &qword_1002C3D88);
    v335 = (v495)(v334, 1, v491);
    sub_10000BD44(v334, &qword_1003A03F0, &qword_1002C3D88);
    if (v335 == 1)
    {
      v336 = 7302688;
    }

    else
    {
      v336 = 0;
    }

    if (v335 == 1)
    {
      v337 = 0xE300000000000000;
    }

    else
    {
      v337 = 0xE000000000000000;
    }

    sub_100082008(v332, _s14InstallPackageVMa);
    v338 = sub_100008F6C(v336, v337, &v497);
    v324 = v488;

    *(v329 + 14) = v338;
    _os_log_impl(&_mh_execute_header, v326, v472, "current version is %s after%s installation", v329, 0x16u);
    swift_arrayDestroy();

    v339 = v478;
  }

  else
  {

    sub_100082008(v325, _s14InstallPackageVMa);
    v339 = v478;
    v333 = v486;
  }

  v340 = v454;
  v341 = v324 + v333[13];
  v342 = *v341;
  v495 = *(v341 + 32);
  v343 = *(v341 + 40);
  v491 = v342;
  if (v342 == 1 || (v343 & 1) != 0)
  {
    v344 = Logger.logObject.getter();
    v345 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v344, v345))
    {
      v346 = swift_slowAlloc();
      *v346 = 0;
      _os_log_impl(&_mh_execute_header, v344, v345, "Could not retrieve saf storage duration", v346, 2u);
      v324 = v488;
    }

    v339 = v478;
  }

  LODWORD(v469) = v343;
  sub_100004074(&qword_1003A0408, &qword_1002C3D98);
  v347 = swift_allocObject();
  v347[4] = UUID.uuidString.getter();
  v490 = v347 + 4;
  v347[5] = v348;
  v477 = v333[11];
  sub_100065074(v324 + v477, v340, &qword_1003A0178, &unk_1002C3BB0);
  v471 = v483[6];
  v472 = v483 + 6;
  if ((v471)(v340, 1, v339) == 1)
  {
    sub_10000BD44(v340, &qword_1003A0178, &unk_1002C3BB0);
    v349 = 0;
    v350 = 0;
  }

  else
  {
    v351 = v339;
    v349 = UUID.uuidString.getter();
    v350 = v352;
    v476(v340, v351);
  }

  v353 = 0;
  v347[6] = v349;
  v347[7] = v350;
  v354 = v347 + 5;
  v355 = _swiftEmptyArrayStorage;
  v356 = v488;
LABEL_154:
  v357 = &v354[2 * v353];
  while (++v353 != 3)
  {
    v358 = v357 + 2;
    v359 = *v357;
    v357 += 2;
    if (v359)
    {
      v360 = *(v358 - 3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v489 = v354;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v355 = sub_10004D4B0(0, *(v355 + 2) + 1, 1, v355);
      }

      v363 = *(v355 + 2);
      v362 = *(v355 + 3);
      if (v363 >= v362 >> 1)
      {
        v355 = sub_10004D4B0((v362 > 1), v363 + 1, 1, v355);
      }

      *(v355 + 2) = v363 + 1;
      v364 = &v355[16 * v363];
      *(v364 + 4) = v360;
      *(v364 + 5) = v359;
      v356 = v488;
      v354 = v489;
      goto LABEL_154;
    }
  }

  swift_setDeallocating();
  sub_100004074(&qword_1003A0410, &unk_1002C3DA0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v365 = (v356 + v486[12]);
  if (*v365 == 1)
  {
    v366 = 0;
  }

  else
  {
    v367 = v365[2];
    v366 = v365[3];
  }

  v368 = v495;
  if (v491 == 1 || (v469 & 1) != 0)
  {
    v368 = -1;
  }

  v369.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v366)
  {
    v370 = String._bridgeToObjectiveC()();
  }

  else
  {
    v370 = 0;
  }

  v371 = v475;
  v372 = [objc_allocWithZone(SPRInstallData) initWithKernelsInstalled:v369.super.isa countryCode:v370 safStorageDuration:v368];

  if (!isa)
  {

    v378 = Logger.logObject.getter();
    v379 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v378, v379))
    {
      v380 = swift_slowAlloc();
      *v380 = 0;
      _os_log_impl(&_mh_execute_header, v378, v379, "nothing was installed, skip profile activation", v380, 2u);

      sub_1000048A0(v494);
    }

    else
    {
      sub_1000048A0(v494);
    }

    v394 = v485;
    goto LABEL_187;
  }

  v300 = v500[7].isa;
  os_unfair_lock_lock(v300 + 8);
  v373 = v474;
  sub_10011C498(&v300[4], 1);
  if (v373)
  {
    goto LABEL_210;
  }

  os_unfair_lock_unlock(v300 + 8);
  v374 = v450;
  sub_100065074(v356 + v477, v450, &qword_1003A0178, &unk_1002C3BB0);
  v375 = v478;
  v376 = (v471)(v374, 1, v478);
  v377 = v452;
  if (v376 == 1)
  {
    sub_10000BD44(v374, &qword_1003A0178, &unk_1002C3BB0);
    goto LABEL_179;
  }

  (v483[4])(v452, v374, v375);
  v381 = sub_100055298();
  v383 = sub_10011F658(v381, v382);

  if (v383)
  {
    v476(v377, v375);
LABEL_179:
    v384 = sub_100055298();
    v386 = sub_10011F658(v384, v385);

    v387 = v500;
    if (v386)
    {

      v388 = v387[7].isa;
      os_unfair_lock_lock(v388 + 8);
      sub_10011CF8C(&v388[4], 1);
      v474 = 0;
      os_unfair_lock_unlock(v388 + 8);
      v389 = v484[36];
      v500 = v484[37];
      sub_10000BE18(v484 + 33, v389);
      v390 = swift_allocObject();
      *(v390 + 16) = v467;
      *(v390 + 32) = 1684632949;
      *(v390 + 40) = 0xE400000000000000;
      v391 = UUID.uuidString.getter();
      *(v390 + 72) = &type metadata for String;
      *(v390 + 80) = &protocol witness table for String;
      *(v390 + 48) = v391;
      *(v390 + 56) = v392;
      v393 = sub_100184010(v390);
      swift_setDeallocating();
      sub_10000BD44(v390 + 32, &qword_10039FEC8, &unk_1002C37B0);
      swift_deallocClassInstance();
      sub_1000C2288(0x1Eu, v393, v389, v500);
      v394 = v485;

      sub_1000048A0(v494);
      v371 = v475;
LABEL_187:
      sub_10000BD44(v371, &qword_1003A03F8, &qword_1002C3D90);

      v407 = v482;
      [v482 endSession];

      v476(v394, v478);
      return;
    }

    v395 = Logger.logObject.getter();
    v396 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v395, v396))
    {
      v397 = swift_slowAlloc();
      *v397 = 0;
      _os_log_impl(&_mh_execute_header, v395, v396, "cannot activate config", v397, 2u);
    }

    v398 = v448;
    sub_10008289C(v488, v448, _s14InstallPackageVMa);
    v399 = Logger.logObject.getter();
    v400 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v399, v400))
    {
      v401 = swift_slowAlloc();
      v500 = swift_slowAlloc();
      *&v497 = v500;
      *v401 = 136446210;
      v402 = v398 + v486[9];
      v403 = UUID.uuidString.getter();
      v405 = v404;
      sub_100082008(v398, _s14InstallPackageVMa);
      v406 = sub_100008F6C(v403, v405, &v497);

      *(v401 + 4) = v406;
      _os_log_impl(&_mh_execute_header, v399, v400, "Partner Profile ID: %{public}s", v401, 0xCu);
      sub_10000959C(v500);
    }

    else
    {

      sub_100082008(v398, _s14InstallPackageVMa);
    }

    v427 = v484;
    sub_10000CCE4((v484 + 33), &v497);
    v428 = v498;
    v500 = v499;
    v495 = sub_10000BE18(&v497, v498);
    v429 = swift_allocObject();
    *(v429 + 16) = xmmword_1002C1670;
    *(v429 + 32) = 1684631668;
    *(v429 + 40) = 0xE400000000000000;
    v430 = UUID.uuidString.getter();
    *(v429 + 72) = &type metadata for String;
    *(v429 + 48) = v430;
    *(v429 + 56) = v431;
    *(v429 + 80) = &protocol witness table for String;
    *(v429 + 88) = 7497078;
    *(v429 + 96) = 0xE300000000000000;
    *(v429 + 128) = &type metadata for String;
    *(v429 + 136) = &protocol witness table for String;
    if (v479)
    {
      v432 = v487;
    }

    else
    {
      v432 = 0x65756C61765F6F6ELL;
    }

    v433 = v468;
    *(v429 + 104) = v432;
    *(v429 + 112) = v433;
    v434 = sub_100184010(v429);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000C2288(0x16u, v434, v428, v500);

    sub_10000959C(&v497);
    v435 = sub_10000BE18(v427 + 60, v427[63]);
    v436 = sub_100020148(2010, 0, 0, 0);
    sub_10013F4E4(v436, *v435);

    sub_100020148(2010, 0, 0, 0);
    swift_willThrow();

    sub_1000048A0(v494);
    sub_10000BD44(v475, &qword_1003A03F8, &qword_1002C3D90);

    v437 = v482;
    [v482 endSession];

LABEL_86:
    v134 = v485;
LABEL_119:
    v476(v134, v478);
  }

  else
  {
    v408 = Logger.logObject.getter();
    v409 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v408, v409))
    {
      v410 = swift_slowAlloc();
      *v410 = 0;
      _os_log_impl(&_mh_execute_header, v408, v409, "Cannot activate SAF profile", v410, 2u);
    }

    sub_10000CCE4((v484 + 33), &v497);
    v411 = v498;
    v500 = v499;
    v495 = sub_10000BE18(&v497, v498);
    v412 = swift_allocObject();
    *(v412 + 16) = xmmword_1002C1670;
    *(v412 + 32) = 1684631668;
    *(v412 + 40) = 0xE400000000000000;
    v413 = v452;
    v414 = UUID.uuidString.getter();
    *(v412 + 72) = &type metadata for String;
    *(v412 + 48) = v414;
    *(v412 + 56) = v415;
    *(v412 + 80) = &protocol witness table for String;
    *(v412 + 88) = 7497078;
    *(v412 + 96) = 0xE300000000000000;
    *(v412 + 128) = &type metadata for String;
    *(v412 + 136) = &protocol witness table for String;
    if (v479)
    {
      v416 = v487;
    }

    else
    {
      v416 = 0x65756C61765F6F6ELL;
    }

    v417 = v468;
    *(v412 + 104) = v416;
    *(v412 + 112) = v417;
    v418 = sub_100184010(v412);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000C2288(0x16u, v418, v411, v500);

    sub_10000959C(&v497);
    sub_100020148(2010, 0, 0, 0);
    swift_willThrow();

    sub_1000048A0(v494);
    v419 = v478;
    v420 = v476;
    v476(v413, v478);
    sub_10000BD44(v475, &qword_1003A03F8, &qword_1002C3D90);

    v421 = v482;
    [v482 endSession];

    v420(v485, v419);
  }
}

void sub_100075824(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v387 = a7;
  v388 = a8;
  v385 = a5;
  v386 = a6;
  v389 = a4;
  v429 = a2;
  v430 = a3;
  v435 = a1;
  v416 = *v9;
  v417 = v10;
  v11 = type metadata accessor for SESnapshot.ProposedKernelInfo();
  v12 = *(v11 - 8);
  v395 = v11;
  v396 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v397 = &v385 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for KernelAssetEvaluation();
  v16 = *(v15 - 8);
  v398 = v15;
  v399 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v401 = &v385 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v400 = &v385 - v20;
  v21 = type metadata accessor for KernelAsset();
  v414 = *(v21 - 8);
  v415 = v21;
  v22 = *(v414 + 64);
  __chkstk_darwin(v21);
  v403 = &v385 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100004074(&qword_1003A0420, &qword_1002C3DC8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v402 = &v385 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v410 = (&v385 - v29);
  __chkstk_darwin(v28);
  v426 = &v385 - v30;
  v431 = _s14InstallPackageVMa(0);
  v31 = *(*(v431 - 1) + 64);
  v32 = __chkstk_darwin(v431);
  v391 = &v385 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v420 = (&v385 - v35);
  v36 = __chkstk_darwin(v34);
  v419 = &v385 - v37;
  __chkstk_darwin(v36);
  v418 = &v385 - v38;
  v39 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v390 = &v385 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v405 = &v385 - v44;
  v45 = __chkstk_darwin(v43);
  *&v409 = &v385 - v46;
  __chkstk_darwin(v45);
  v424 = (&v385 - v47);
  v48 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v393 = &v385 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v392 = &v385 - v53;
  v54 = __chkstk_darwin(v52);
  v404 = &v385 - v55;
  v56 = __chkstk_darwin(v54);
  v425 = (&v385 - v57);
  __chkstk_darwin(v56);
  v59 = &v385 - v58;
  v60 = type metadata accessor for UUID();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  v63 = __chkstk_darwin(v60);
  v65 = &v385 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v63);
  v68 = &v385 - v67;
  __chkstk_darwin(v66);
  v70 = &v385 - v69;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  v72 = sub_10000403C(v71, qword_1003A0278);
  v422 = *(v61 + 16);
  (v422)(v70, v429, v60);
  sub_100065074(v430, v59, &qword_1003A0178, &unk_1002C3BB0);
  v432 = v72;
  v73 = Logger.logObject.getter();
  LODWORD(v423) = static os_log_type_t.debug.getter();
  v74 = os_log_type_enabled(v73, v423);
  v434 = v68;
  v394 = v65;
  v427 = v61;
  v428 = v60;
  if (v74)
  {
    v421 = v73;
    v75 = swift_slowAlloc();
    v413 = swift_slowAlloc();
    v436[0] = v413;
    *v75 = 136315394;
    v76 = _typeName(_:qualified:)();
    v77 = v60;
    v79 = sub_100008F6C(v76, v78, v436);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1002C1790;
    *(v80 + 56) = &type metadata for String;
    *(v80 + 32) = 0x746E6573657270;
    *(v80 + 40) = 0xE700000000000000;
    *(v80 + 88) = v77;
    v81 = sub_10000BE5C((v80 + 64));
    (v422)(v81, v70, v77);
    v82 = v425;
    sub_100065074(v59, v425, &qword_1003A0178, &unk_1002C3BB0);
    v83 = v70;
    if ((*(v61 + 48))(v82, 1, v77) == 1)
    {
      sub_10000BD44(v82, &qword_1003A0178, &unk_1002C3BB0);
      *(v80 + 120) = &type metadata for String;
      *(v80 + 96) = 0;
      *(v80 + 104) = 0xE000000000000000;
    }

    else
    {
      v439 = v77;
      v84 = sub_10000BE5C(&v438);
      (*(v61 + 32))(v84, v82, v77);
      sub_100019D3C(&v438, (v80 + 96));
    }

    v85 = showFunction(signature:_:)(0xD000000000000069, 0x8000000100348D20, v80);
    v87 = v86;

    sub_10000BD44(v59, &qword_1003A0178, &unk_1002C3BB0);
    v425 = *(v61 + 8);
    (v425)(v83, v77);
    v88 = sub_100008F6C(v85, v87, v436);

    *(v75 + 14) = v88;
    v89 = v421;
    _os_log_impl(&_mh_execute_header, v421, v423, "%s.%s", v75, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000BD44(v59, &qword_1003A0178, &unk_1002C3BB0);
    v425 = *(v61 + 8);
    (v425)(v70, v60);
  }

  UUID.init()();
  sub_10000CCE4((v433 + 33), &v438);
  v422 = v440;
  v423 = v439;
  v421 = sub_10000BE18(&v438, v439);
  v406 = sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1690;
  strcpy((inited + 32), "appletVersion");
  *(inited + 46) = -4864;
  v91 = v431;
  v92 = v435;
  v408 = v431[5];
  v93 = v424;
  sub_100065074(v408 + v435, v424, &qword_1003A03F0, &qword_1002C3D88);
  v94 = type metadata accessor for SLAMScript(0);
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  v411 = v95 + 48;
  v412 = v96;
  v97 = v96(v93, 1, v94);
  v413 = v94;
  if (v97 == 1)
  {
    sub_10000BD44(v93, &qword_1003A03F0, &qword_1002C3D88);
    v98 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
  }

  else
  {
    v99 = (v93 + *(v94 + 36));
    v101 = *v99;
    v100 = v99[1];

    sub_100082008(v93, type metadata accessor for SLAMScript);
    v98 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    if (v100)
    {
      *v98 = v101;
      v92 = v435;
      goto LABEL_15;
    }

    v92 = v435;
  }

  *v98 = 7104878;
  v100 = 0xE300000000000000;
LABEL_15:
  *(inited + 56) = v100;
  strcpy((inited + 88), "globalConfig");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v102 = v92 + v91[10];
  v103 = UUID.uuidString.getter();
  *(inited + 128) = &type metadata for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v103;
  *(inited + 112) = v104;
  strcpy((inited + 144), "partnerConfig");
  *(inited + 158) = -4864;
  v407 = v91[9];
  v105 = UUID.uuidString.getter();
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v105;
  *(inited + 168) = v106;
  *(inited + 200) = 1684632949;
  *(inited + 208) = 0xE400000000000000;
  v107 = v434;
  v108 = UUID.uuidString.getter();
  *(inited + 240) = &type metadata for String;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v108;
  *(inited + 224) = v109;
  v110 = sub_100184010(inited);
  swift_setDeallocating();
  v111 = sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0x1Du, v110, v423, v422);

  sub_10000959C(&v438);
  static Double.longWait.getter();
  v113 = sub_1000827B8(v112);
  if (!v113)
  {
    sub_100020148(2026, 0, 0, 0);
    swift_willThrow();
    v132 = v107;
LABEL_70:
    (v425)(v132, v428);
    return;
  }

  v114 = qword_10039D3C0;
  v115 = v113;
  if (v114 != -1)
  {
    swift_once();
  }

  v116 = v417;
  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v117 = v435;
  v119 = v419;
  v118 = v420;
  v120 = v418;
  if (v116)
  {

    swift_errorRetain();
    v121 = sub_100171840(25392);

    if (v121)
    {
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *&v438 = swift_slowAlloc();
        *v124 = 136315394;
        v125 = _typeName(_:qualified:)();
        v127 = sub_100008F6C(v125, v126, &v438);

        *(v124 + 4) = v127;
        *(v124 + 12) = 2080;
        v128 = showFunction(signature:_:)(0xD000000000000069, 0x8000000100348D20, _swiftEmptyArrayStorage);
        v130 = sub_100008F6C(v128, v129, &v438);

        *(v124 + 14) = v130;
        _os_log_impl(&_mh_execute_header, v122, v123, "%s.%s Cannot select pay applet during install. May be from prohibit timer.", v124, 0x16u);
        swift_arrayDestroy();
      }

      v131 = v434;
      sub_100020148(2009, 0, 0, 0);
      swift_willThrow();
      [v115 endSession];

      v132 = v131;
      goto LABEL_70;
    }

    v417 = v111;
    v423 = 0;
  }

  else
  {
    v417 = v111;

    v423 = 0;
  }

  sub_10008289C(v117, v120, _s14InstallPackageVMa);
  sub_10008289C(v117, v119, _s14InstallPackageVMa);
  sub_10008289C(v117, v118, _s14InstallPackageVMa);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.default.getter();
  v135 = os_log_type_enabled(v133, v134);
  v424 = v115;
  if (v135)
  {
    LODWORD(v422) = v134;
    v136 = swift_slowAlloc();
    v421 = swift_slowAlloc();
    *&v438 = v421;
    *v136 = 136315906;
    if (v116)
    {
      v137 = 7630702;
    }

    else
    {
      v137 = 0x79646165726C61;
    }

    if (v116)
    {
      v138 = 0xE300000000000000;
    }

    else
    {
      v138 = 0xE700000000000000;
    }

    v139 = sub_100008F6C(v137, v138, &v438);

    *(v136 + 4) = v139;
    *(v136 + 12) = 2080;
    v140 = v431;
    v141 = v120 + v431[10];
    v142 = sub_100055298();
    v144 = v143;
    sub_100082008(v120, _s14InstallPackageVMa);
    v145 = sub_100008F6C(v142, v144, &v438);

    *(v136 + 14) = v145;
    *(v136 + 22) = 2080;
    v146 = v119 + v140[9];
    v147 = sub_100055298();
    v149 = v148;
    sub_100082008(v119, _s14InstallPackageVMa);
    v150 = sub_100008F6C(v147, v149, &v438);

    *(v136 + 24) = v150;
    *(v136 + 32) = 2080;
    v151 = v420;
    v152 = v420 + v140[11];
    v153 = v404;
    sub_100065074(v152, v404, &qword_1003A0178, &unk_1002C3BB0);
    v154 = v428;
    if ((*(v427 + 48))(v153, 1, v428) == 1)
    {
      v155 = 4271950;
      sub_10000BD44(v153, &qword_1003A0178, &unk_1002C3BB0);
      v156 = 0xE300000000000000;
    }

    else
    {
      v155 = sub_100055298();
      v156 = v158;
      (v425)(v153, v154);
    }

    v157 = v413;
    sub_100082008(v151, _s14InstallPackageVMa);
    v159 = sub_100008F6C(v155, v156, &v438);

    *(v136 + 34) = v159;
    _os_log_impl(&_mh_execute_header, v133, v422, "An applet is %s installed. globalID: %s, profileID: %s, 2nd profile ID: %s", v136, 0x2Au);
    swift_arrayDestroy();

    v117 = v435;
  }

  else
  {

    sub_100082008(v118, _s14InstallPackageVMa);
    sub_100082008(v119, _s14InstallPackageVMa);
    sub_100082008(v120, _s14InstallPackageVMa);
    v157 = v413;
  }

  v160 = v409;
  sub_100065074(v408 + v117, v409, &qword_1003A03F0, &qword_1002C3D88);
  v161 = v412;
  v162 = v412(v160, 1, v157);
  sub_10000BD44(v160, &qword_1003A03F0, &qword_1002C3D88);
  if (v162 != 1)
  {
    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&_mh_execute_header, v169, v170, "fresh install of kernel", v171, 2u);
    }

    v165 = 0;
    goto LABEL_55;
  }

  v163 = v405;
  sub_100065074(v117 + v431[6], v405, &qword_1003A03F0, &qword_1002C3D88);
  v164 = v161(v163, 1, v157);
  sub_10000BD44(v163, &qword_1003A03F0, &qword_1002C3D88);
  v165 = &off_10037E360;
  if (v164 == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v165 = sub_10004D4B0(0, 2, 1, &off_10037E360);
    }

    v167 = *(v165 + 2);
    v166 = *(v165 + 3);
    if (v167 >= v166 >> 1)
    {
      v165 = sub_10004D4B0((v166 > 1), v167 + 1, 1, v165);
    }

    *(v165 + 2) = v167 + 1;
    v168 = &v165[16 * v167];
    *(v168 + 4) = 0x6C61626F6C67;
    *(v168 + 5) = 0xE600000000000000;
  }

  v172 = v423;
  v173 = sub_100090AB0();
  if (v172)
  {
    v423 = 0;
    swift_errorRetain();
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *v176 = 138412290;
      swift_errorRetain();
      v178 = _swift_stdlib_bridgeErrorToNSError();
      *(v176 + 4) = v178;
      *v177 = v178;
      _os_log_impl(&_mh_execute_header, v174, v175, "failed to retrieve profile list: %@", v176, 0xCu);
      sub_10000BD44(v177, &unk_10039E220, &qword_1002C3D60);
    }

    else
    {
    }

LABEL_55:
    v198 = _swiftEmptyArrayStorage;
    v197 = v426;
    v188 = v433;
    goto LABEL_56;
  }

  v179 = v173;

  v180 = Logger.logObject.getter();
  v181 = static os_log_type_t.default.getter();

  v182 = os_log_type_enabled(v180, v181);
  v422 = v165;
  if (v182)
  {
    v183 = swift_slowAlloc();
    v423 = swift_slowAlloc();
    *&v438 = v423;
    *v183 = 136315138;
    v184 = Array.description.getter();
    v186 = sub_100008F6C(v184, v185, &v438);
    v117 = v435;

    *(v183 + 4) = v186;
    _os_log_impl(&_mh_execute_header, v180, v181, "existing configs: %s", v183, 0xCu);
    sub_10000959C(v423);
  }

  __chkstk_darwin(v187);
  *(&v385 - 2) = v117;
  v421 = sub_1000653D4(sub_1000833E0, (&v385 - 4), v179);
  v188 = v433;
  v189 = v433[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1002C1670;
  *(v190 + 32) = 3;
  *&v438 = v179;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_100064238();
  v191 = BidirectionalCollection<>.joined(separator:)();
  *(v190 + 64) = &type metadata for String;
  *(v190 + 40) = v191;
  *(v190 + 48) = v192;
  *(v190 + 72) = 2;
  v193 = *(v179 + 16);

  *(v190 + 104) = &type metadata for Int;
  *(v190 + 80) = v193;
  v194 = sub_100184144(v190);
  swift_setDeallocating();
  sub_100004074(&qword_10039FED8, &unk_1002C37D0);
  swift_arrayDestroy();
  v195 = swift_deallocClassInstance();
  v196 = *(v189 + 56);
  __chkstk_darwin(v195);
  *(&v385 - 2) = v194;
  os_unfair_lock_lock((v196 + 32));
  sub_10006535C((v196 + 16));
  v423 = 0;
  os_unfair_lock_unlock((v196 + 32));

  v197 = v426;
  v198 = v421;
  v165 = v422;
  v117 = v435;
LABEL_56:
  v200 = v429;
  v199 = v430;
  v201 = *sub_10000BE18(v188 + 13, v188[16]);
  v421 = v198;
  sub_10003E51C(v198);
  sub_10007C874(v200, v199, v117, v424);
  v202 = v165;
  if (v165)
  {
    v203 = v188[36];
    v430 = v188[37];
    v429 = sub_10000BE18(v188 + 33, v203);
    v204 = swift_allocObject();
    *(v204 + 16) = xmmword_1002C1670;
    *(v204 + 32) = 1684631668;
    *(v204 + 40) = 0xE400000000000000;
    v205 = UUID.uuidString.getter();
    *(v204 + 72) = &type metadata for String;
    *(v204 + 48) = v205;
    *(v204 + 56) = v206;
    *(v204 + 80) = &protocol witness table for String;
    *(v204 + 88) = 1701869940;
    *(v204 + 96) = 0xE400000000000000;
    *&v438 = v202;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    v207 = BidirectionalCollection<>.joined(separator:)();
    *(v204 + 128) = &type metadata for String;
    *(v204 + 136) = &protocol witness table for String;
    *(v204 + 104) = v207;
    *(v204 + 112) = v208;
    v209 = sub_100184010(v204);
    swift_setDeallocating();
    v117 = v435;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v210 = v203;
    v197 = v426;
    sub_1000C2288(0x11u, v209, v210, v430);
    v188 = v433;
  }

  v422 = v202;
  v212 = v414;
  v211 = v415;
  (*(v414 + 56))(v197, 1, 1, v415);
  v213 = *sub_10000BE18(v188 + 66, v188[69]);
  v214 = v410;
  v215 = v423;
  v216 = sub_100093C7C(v410, v117);
  if (v215)
  {

    swift_errorRetain();
    v217 = Logger.logObject.getter();
    v218 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v217, v218))
    {
      v219 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      *&v438 = v220;
      *v219 = 136315138;
      swift_getErrorValue();
      v221 = Error.localizedDescription.getter();
      v223 = sub_100008F6C(v221, v222, &v438);

      *(v219 + 4) = v223;
      _os_log_impl(&_mh_execute_header, v217, v218, "Could not generate kernel asset: %s", v219, 0xCu);
      sub_10000959C(v220);
    }

    v224 = v424;
    swift_errorRetain();
    sub_100020148(2009, 0xD00000000000001FLL, 0x8000000100348CA0, v215);

    swift_willThrow();

    sub_10000BD44(v426, &qword_1003A0420, &qword_1002C3DC8);

    [v224 endSession];

    goto LABEL_69;
  }

  LODWORD(v430) = v216;
  sub_10000BD44(v197, &qword_1003A0420, &qword_1002C3DC8);
  sub_1000829AC(v214, v197, &qword_1003A0420, &qword_1002C3DC8);
  v225 = v402;
  sub_100065074(v197, v402, &qword_1003A0420, &qword_1002C3DC8);
  if ((*(v212 + 48))(v225, 1, v211) != 1)
  {
    (*(v212 + 32))(v403, v225, v211);
    v227 = *sub_10000BE18(v188 + 66, v188[69]);
    v228 = v401;
    sub_100095654(v424);
    (*(v399 + 32))(v400, v228, v398);
    v230 = sub_1000980A0();
    v231 = Logger.logObject.getter();
    v232 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v231, v232))
    {
      v233 = swift_slowAlloc();
      v423 = v233;
      v429 = swift_slowAlloc();
      *&v438 = v429;
      *v233 = 136315138;
      v234 = [v230 description];
      v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v237 = v236;

      v188 = v433;
      v238 = sub_100008F6C(v235, v237, &v438);
      v212 = v414;

      v239 = v423;
      *(v423 + 4) = v238;
      _os_log_impl(&_mh_execute_header, v231, v232, "Evaluated kernel asset: %s", v239, 0xCu);
      sub_10000959C(v429);
    }

    if (v430)
    {
      v240 = *sub_10000BE18(v188 + 66, v188[69]);
      sub_100095A94(v424);
    }

    [v230 nvm];
    [v230 cod];
    [v230 cor];
    [v230 idx];
    v241 = v397;
    SESnapshot.ProposedKernelInfo.init(nvm:cod:cor:idx:)();
    [v424 endSession];
    v242 = sub_1000365F0(v241);
    v243 = 0;
    v430 = v230;
    v244 = v242;
    static Double.longWait.getter();
    v246 = sub_1000827B8(v245);
    if (v246)
    {
      v247 = v246;

      v248 = v247;
      v249 = v415;
      v429 = v248;
      if (v244)
      {
        v250 = v248;

        v424 = v250;
LABEL_76:
        if (a9)
        {
          ObjectType = swift_getObjectType();
          sub_10009CAF8(3, ObjectType);
        }

        v373 = v400;
        v374 = *sub_10000BE18(v433 + 66, v433[69]);
        sub_100095314(v424);

        (*(v396 + 8))(v397, v395);
        (*(v399 + 8))(v373, v398);
        (*(v212 + 8))(v403, v249);
        goto LABEL_64;
      }

      v359 = Logger.logObject.getter();
      v360 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v359, v360))
      {
        v361 = swift_slowAlloc();
        *v361 = 0;
        _os_log_impl(&_mh_execute_header, v359, v360, "Kernel asset will not fit on the SE", v361, 2u);
      }

      if ((v389 & 1) == 0)
      {

        v424 = v429;
        goto LABEL_144;
      }

      swift_beginAccess();
      v310 = v188[48];
      v362 = sub_10000BE18(v188 + 45, v310);
      v424 = &v385;
      v363 = *&v310[-2]._os_unfair_lock_opaque;
      v364 = *(v363 + 64);
      __chkstk_darwin(v362);
      v366 = &v385 - ((v365 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v363 + 16))(v366);
      v367 = [*(*v366 + 16) serialNumber];
      if (!v367)
      {
        __break(1u);
        os_unfair_lock_unlock(0);
        __break(1u);
LABEL_154:
        os_unfair_lock_unlock(v310 + 8);
        __break(1u);
        os_unfair_lock_unlock(v243 + 8);
        __break(1u);
        return;
      }

      v368 = v367;

      v369 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v371 = v370;

      (*(v363 + 8))(v366, v310);
      v372 = v429;
      v376 = sub_100036A44(v429, v369, v371);

      [v372 endSession];
      v377 = Logger.logObject.getter();
      v378 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v377, v378))
      {
        v379 = swift_slowAlloc();
        *v379 = 0;
        _os_log_impl(&_mh_execute_header, v377, v378, "Launching SE storage management sheet", v379, 2u);
      }

      v380 = sub_100036E04(v376, v397, v385, v386, v387, v388);
      v381 = v428;
      v212 = v414;
      v249 = v415;
      v382 = v380;
      static Double.longWait.getter();
      v424 = sub_1000827B8(v383);
      if (v424)
      {

        if (v382)
        {
          goto LABEL_76;
        }

LABEL_144:
        sub_100020148(2028, 0, 0, 0);
        swift_willThrow();

        (*(v396 + 8))(v397, v395);
        (*(v399 + 8))(v400, v398);
        (*(v212 + 8))(v403, v249);
        sub_10000BD44(v426, &qword_1003A0420, &qword_1002C3DC8);

        goto LABEL_146;
      }

      sub_100020148(2026, 0, 0, 0);
      swift_willThrow();

      v384 = v429;
      (*(v396 + 8))(v397, v395);
      (*(v399 + 8))(v400, v398);
      (*(v212 + 8))(v403, v249);
      sub_10000BD44(v426, &qword_1003A0420, &qword_1002C3DC8);
      v343 = v434;
      v342 = v381;
    }

    else
    {

      sub_100020148(2026, 0, 0, 0);
      swift_willThrow();

      (*(v396 + 8))(v397, v395);
      (*(v399 + 8))(v400, v398);
      (*(v212 + 8))(v403, v415);
      sub_10000BD44(v426, &qword_1003A0420, &qword_1002C3DC8);
      v342 = v428;
      v343 = v434;
    }

    (v425)(v343, v342);

    return;
  }

  sub_10000BD44(v225, &qword_1003A0420, &qword_1002C3DC8);
LABEL_64:
  v226 = v424;
  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v229 = *sub_10000BE18(v433 + 66, v433[69]);
  sub_100095890(v226);
  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v252 = sub_10011DBA8();
  v254 = v253;
  v255 = v433[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  v256 = swift_initStackObject();
  v257 = v256;
  *(v256 + 16) = xmmword_1002C1660;
  *(v256 + 32) = 1;
  v258 = v256 + 32;
  v429 = v254;
  v409 = xmmword_1002C1660;
  if (v254)
  {
    v259 = &type metadata for String;
    v410 = v254;
    v420 = v254;
    v260 = v254;
    v261 = v252;
  }

  else
  {
    v260 = 0;
    v261 = 0;
    v259 = 0;
    *(v256 + 56) = 0;
    v420 = 0xE300000000000000;
    v410 = 0xE800000000000000;
  }

  *(v256 + 40) = v261;
  *(v256 + 48) = v260;
  *(v256 + 64) = v259;

  v262 = sub_100184144(v257);
  swift_setDeallocating();
  v263 = sub_10000BD44(v258, &qword_10039FED8, &unk_1002C37D0);
  v430 = v255;
  v264 = v255[7];
  __chkstk_darwin(v263);
  *(&v385 - 2) = v262;
  os_unfair_lock_lock((v264 + 32));
  sub_10006535C((v264 + 16));
  v421 = 0;
  os_unfair_lock_unlock((v264 + 32));

  v265 = v435;
  v266 = v391;
  sub_10008289C(v435, v391, _s14InstallPackageVMa);

  v267 = Logger.logObject.getter();
  v268 = static os_log_type_t.default.getter();

  v269 = os_log_type_enabled(v267, v268);
  v423 = v252;
  v408 = v260;
  if (v269)
  {
    v270 = swift_slowAlloc();
    v419 = swift_slowAlloc();
    *&v438 = v419;
    *v270 = 136315394;
    if (v429)
    {
      v271 = v252;
    }

    else
    {
      v271 = 4271950;
    }

    LODWORD(v418) = v268;
    v272 = sub_100008F6C(v271, v420, &v438);

    *(v270 + 4) = v272;
    *(v270 + 12) = 2080;
    v273 = v431;
    v274 = v390;
    sub_100065074(v266 + v431[5], v390, &qword_1003A03F0, &qword_1002C3D88);
    v275 = v266;
    v276 = v412(v274, 1, v413);
    sub_10000BD44(v274, &qword_1003A03F0, &qword_1002C3D88);
    if (v276 == 1)
    {
      v277 = 7302688;
    }

    else
    {
      v277 = 0;
    }

    if (v276 == 1)
    {
      v278 = 0xE300000000000000;
    }

    else
    {
      v278 = 0xE000000000000000;
    }

    sub_100082008(v275, _s14InstallPackageVMa);
    v279 = sub_100008F6C(v277, v278, &v438);

    *(v270 + 14) = v279;
    _os_log_impl(&_mh_execute_header, v267, v418, "current version is %s after%s installation", v270, 0x16u);
    swift_arrayDestroy();

    v265 = v435;

    v281 = v427;
    v280 = v428;
  }

  else
  {

    sub_100082008(v266, _s14InstallPackageVMa);
    v281 = v427;
    v280 = v428;
    v273 = v431;
  }

  v282 = v392;
  v283 = v265 + v273[13];
  v284 = *v283;
  v420 = *(v283 + 32);
  LODWORD(v415) = *(v283 + 40);
  v414 = v284;
  if (v284 == 1 || (v415 & 1) != 0)
  {
    v285 = Logger.logObject.getter();
    v286 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      *v287 = 0;
      _os_log_impl(&_mh_execute_header, v285, v286, "Could not retrieve saf storage duration", v287, 2u);
    }
  }

  v436[22] = UUID.uuidString.getter();
  v437[0] = v288;
  v419 = v273[11];
  sub_100065074(v265 + v419, v282, &qword_1003A0178, &unk_1002C3BB0);
  v289 = *(v281 + 48);
  v418 = (v281 + 48);
  v416 = v289;
  if (v289(v282, 1, v280) == 1)
  {
    sub_10000BD44(v282, &qword_1003A0178, &unk_1002C3BB0);
    v290 = 0;
    v291 = 0;
  }

  else
  {
    v290 = UUID.uuidString.getter();
    v291 = v292;
    (v425)(v282, v280);
  }

  v293 = 0;
  v437[1] = v290;
  v437[2] = v291;
  v294 = _swiftEmptyArrayStorage;
LABEL_102:
  v295 = &v437[2 * v293];
  while (++v293 != 3)
  {
    v296 = v295 + 2;
    v297 = *v295;
    v295 += 2;
    if (v297)
    {
      v298 = v280;
      v299 = *(v296 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v294 = sub_10004D4B0(0, *(v294 + 2) + 1, 1, v294);
      }

      v301 = *(v294 + 2);
      v300 = *(v294 + 3);
      if (v301 >= v300 >> 1)
      {
        v294 = sub_10004D4B0((v300 > 1), v301 + 1, 1, v294);
      }

      *(v294 + 2) = v301 + 1;
      v302 = &v294[16 * v301];
      *(v302 + 4) = v299;
      *(v302 + 5) = v297;
      v280 = v298;
      v265 = v435;
      v273 = v431;
      goto LABEL_102;
    }
  }

  sub_100004074(&qword_1003A0410, &unk_1002C3DA0);
  swift_arrayDestroy();
  v303 = (v265 + v273[12]);
  if (*v303 == 1)
  {
    v304 = 0;
  }

  else
  {
    v305 = v303[2];
    v304 = v303[3];
  }

  v306 = v420;
  if (v414 == 1 || (v415 & 1) != 0)
  {
    v306 = -1;
  }

  v307.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v304)
  {
    v308 = String._bridgeToObjectiveC()();
  }

  else
  {
    v308 = 0;
  }

  v243 = v435;
  v309 = [objc_allocWithZone(SPRInstallData) initWithKernelsInstalled:v307.super.isa countryCode:v308 safStorageDuration:v306];

  v310 = *(v430 + 56);
  os_unfair_lock_lock(v310 + 8);
  v311 = v421;
  sub_10011C498(&v310[4], 1);
  if (v311)
  {
    goto LABEL_154;
  }

  os_unfair_lock_unlock(v310 + 8);
  v312 = v393;
  sub_100065074(v243 + v419, v393, &qword_1003A0178, &unk_1002C3BB0);
  v313 = v416(v312, 1, v280);
  v314 = v394;
  if (v313 == 1)
  {
    sub_10000BD44(v312, &qword_1003A0178, &unk_1002C3BB0);
LABEL_124:
    v318 = sub_100055298();
    v320 = sub_10011F658(v318, v319);

    v321 = v423;
    if (v320)
    {

      v322 = *(v430 + 56);
      os_unfair_lock_lock(v322 + 8);
      sub_10011CF8C(&v322[4], 1);
      os_unfair_lock_unlock(v322 + 8);
      v323 = v433[36];
      v435 = v433[37];
      v433 = sub_10000BE18(v433 + 33, v323);
      v324 = swift_initStackObject();
      *(v324 + 16) = v409;
      *(v324 + 32) = 1684632949;
      *(v324 + 40) = 0xE400000000000000;
      v325 = v434;
      v326 = UUID.uuidString.getter();
      *(v324 + 72) = &type metadata for String;
      *(v324 + 80) = &protocol witness table for String;
      *(v324 + 48) = v326;
      *(v324 + 56) = v327;
      v328 = sub_100184010(v324);
      swift_setDeallocating();
      sub_10000BD44(v324 + 32, &qword_10039FEC8, &unk_1002C37B0);
      sub_1000C2288(0x1Eu, v328, v323, v435);

      sub_10000BD44(v426, &qword_1003A0420, &qword_1002C3DC8);

      v329 = v424;
      [v424 endSession];

      (v425)(v325, v428);
      return;
    }

    v330 = Logger.logObject.getter();
    v331 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      *v332 = 0;
      _os_log_impl(&_mh_execute_header, v330, v331, "cannot activate config", v332, 2u);
    }

    v333 = v433;
    sub_10000CCE4((v433 + 33), &v438);
    v334 = v439;
    v432 = v440;
    sub_10000BE18(&v438, v439);
    v335 = swift_allocObject();
    *(v335 + 16) = xmmword_1002C1670;
    *(v335 + 32) = 1684631668;
    *(v335 + 40) = 0xE400000000000000;
    v336 = UUID.uuidString.getter();
    *(v335 + 72) = &type metadata for String;
    *(v335 + 48) = v336;
    *(v335 + 56) = v337;
    *(v335 + 80) = &protocol witness table for String;
    *(v335 + 88) = 7497078;
    *(v335 + 128) = &type metadata for String;
    *(v335 + 136) = &protocol witness table for String;
    v338 = 0x65756C61765F6F6ELL;
    if (v429)
    {
      v338 = v321;
    }

    *(v335 + 96) = 0xE300000000000000;
    *(v335 + 104) = v338;
    *(v335 + 112) = v410;
    v339 = sub_100184010(v335);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000C2288(0x16u, v339, v334, v432);

    sub_10000959C(&v438);
    v340 = sub_10000BE18(v333 + 60, v333[63]);
    v341 = sub_100020148(2010, 0, 0, 0);
    sub_10013F4E4(v341, *v340);

    sub_100020148(2010, 0, 0, 0);
    swift_willThrow();

    sub_10000BD44(v426, &qword_1003A0420, &qword_1002C3DC8);

LABEL_146:
    v375 = v424;
    [v424 endSession];

LABEL_69:
    v132 = v434;
    goto LABEL_70;
  }

  (*(v427 + 32))(v394, v312, v280);
  v315 = sub_100055298();
  v317 = sub_10011F658(v315, v316);

  if (v317)
  {
    (v425)(v314, v280);
    goto LABEL_124;
  }

  v344 = Logger.logObject.getter();
  v345 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v344, v345))
  {
    v346 = swift_slowAlloc();
    *v346 = 0;
    _os_log_impl(&_mh_execute_header, v344, v345, "Cannot activate SAF profile", v346, 2u);
  }

  sub_10000CCE4((v433 + 33), &v438);
  v347 = v439;
  v435 = v440;
  sub_10000BE18(&v438, v439);
  v348 = swift_allocObject();
  *(v348 + 16) = xmmword_1002C1670;
  *(v348 + 32) = 1684631668;
  *(v348 + 40) = 0xE400000000000000;
  v349 = UUID.uuidString.getter();
  *(v348 + 72) = &type metadata for String;
  *(v348 + 48) = v349;
  *(v348 + 56) = v350;
  *(v348 + 80) = &protocol witness table for String;
  *(v348 + 88) = 7497078;
  *(v348 + 96) = 0xE300000000000000;
  *(v348 + 128) = &type metadata for String;
  *(v348 + 136) = &protocol witness table for String;
  if (v429)
  {
    v351 = v423;
  }

  else
  {
    v351 = 0x65756C61765F6F6ELL;
  }

  v352 = v410;
  *(v348 + 104) = v351;
  *(v348 + 112) = v352;
  v353 = v314;
  v354 = sub_100184010(v348);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000C2288(0x16u, v354, v347, v435);

  sub_10000959C(&v438);
  sub_100020148(2010, 0, 0, 0);
  swift_willThrow();

  v355 = v428;
  v356 = v353;
  v357 = v425;
  (v425)(v356, v428);
  sub_10000BD44(v426, &qword_1003A0420, &qword_1002C3DC8);

  v358 = v424;
  [v424 endSession];

  v357(v434, v355);
}

uint64_t sub_1000792D4(uint64_t a1)
{
  v45 = a1;
  v1 = type metadata accessor for SLAMScript(0);
  v44 = *(v1 - 8);
  v2 = *(v44 + 64);
  v3 = __chkstk_darwin(v1);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v40 - v5;
  v7 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for OSSignposter();
  sub_10000403C(v22, qword_1003A0290);
  static OSSignpostID.exclusive.getter();
  v23 = OSSignposter.logHandle.getter();
  LODWORD(v41) = static os_signpost_type_t.begin.getter();
  v24 = OS_os_log.signpostsEnabled.getter();
  v43 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v41, v26, "config-install-postProcessing", "begin clean up after install", v25, 2u);
    v13 = v43;
  }

  (*(v15 + 16))(v19, v21, v14);
  v27 = type metadata accessor for OSSignpostIntervalState();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v41 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v15 + 8))(v21, v14);
  v30 = *(v45 + 16);
  if (v30)
  {
    v31 = v45 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v45 = *(v42 + 72);
    v32 = (v44 + 48);
    v33 = _swiftEmptyArrayStorage;
    v42 = v1;
    do
    {
      sub_100065074(v31, v13, &qword_1003A03F0, &qword_1002C3D88);
      sub_1000829AC(v13, v11, &qword_1003A03F0, &qword_1002C3D88);
      if ((*v32)(v11, 1, v1) == 1)
      {
        sub_10000BD44(v11, &qword_1003A03F0, &qword_1002C3D88);
      }

      else
      {
        sub_100082B74(v11, v46, type metadata accessor for SLAMScript);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_10004DC8C(0, v33[2] + 1, 1, v33);
        }

        v35 = v33[2];
        v34 = v33[3];
        if (v35 >= v34 >> 1)
        {
          v33 = sub_10004DC8C(v34 > 1, v35 + 1, 1, v33);
        }

        v33[2] = v35 + 1;
        sub_100082B74(v46, v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v35, type metadata accessor for SLAMScript);
        v1 = v42;
        v13 = v43;
      }

      v31 += v45;
      --v30;
    }

    while (v30);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v36 = v33[2];
  if (v36)
  {
    v37 = v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v38 = *(v44 + 72);
    do
    {
      sub_10008289C(v37, v6, type metadata accessor for SLAMScript);
      sub_10007BCAC(v6);
      sub_100082008(v6, type metadata accessor for SLAMScript);
      v37 += v38;
      --v36;
    }

    while (v36);
  }

  sub_10007F394();
}

Swift::Int sub_100079834(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v126 = a5;
  v127 = a7;
  v122 = a4;
  v123 = a6;
  v125 = a2;
  v128 = __src;
  memcpy(v132, __src, sizeof(v132));
  v7 = type metadata accessor for OSSignpostError();
  v124 = *(v7 - 8);
  v8 = *(v124 + 64);
  __chkstk_darwin(v7);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSSignposter();
  sub_10000403C(v16, qword_1003A0290);
  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v19 = v124;
    if ((*(v124 + 88))(v10, v7) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v19 + 8))(v10, v7);
      v20 = "end check for remote updates";
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v22, "config-status-checkForRemoteUpdates", v20, v21, 2u);
  }

  (*(v12 + 8))(v15, v11);
  memcpy(v131, v128, 0x111uLL);
  if (sub_100081C78(v131) == 1)
  {
    v23 = v125;
    if (v125)
    {
      swift_errorRetain();
      if (qword_10039D380 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000403C(v24, qword_1003A0278);
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v130[0] = v28;
        *v27 = 136446210;
        v129[0] = v23;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v29 = String.init<A>(describing:)();
        v31 = sub_100008F6C(v29, v30, v130);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "OTA client error: %{public}s", v27, 0xCu);
        sub_10000959C(v28);
      }

      v32 = v123;
      swift_beginAccess();
      v33 = *(v32 + 16);
      *(v32 + 16) = v23;
    }

    return OS_dispatch_semaphore.signal()();
  }

  v34 = v131[3];
  v35 = v131[4];
  v36 = v131[6];
  v37 = v131[8];
  v38 = v131[10];
  v118 = v131[7];
  v119 = v131[11];
  v124 = v131[14];
  v125 = v131[0];
  v120 = v131[12];
  v121 = v131[21];
  v39 = &unk_10039D000;
  v40 = v131[22];
  v123 = v131[24];
  if (v131[2] >> 60 == 15)
  {
    memcpy(v130, v132, 0x111uLL);
    sub_100081A7C(v130, v129);
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_1003A0278);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "No applet update available", v44, 2u);
      v39 = &unk_10039D000;
    }

    v45 = qword_10039D380;
    if (!v35)
    {
      goto LABEL_32;
    }
  }

  else
  {
    memcpy(v130, v132, 0x111uLL);
    sub_100081A7C(v130, v129);
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000403C(v46, qword_1003A0278);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "applet update available", v49, 2u);
      v39 = &unk_10039D000;
    }

    v50 = v122;
    swift_beginAccess();
    *(v50 + 16) = 1;
    v45 = qword_10039D380;
    if (!v35)
    {
      goto LABEL_32;
    }
  }

  if (v36 >> 60 != 15)
  {
    if (v45 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000403C(v51, qword_1003A0278);
    v52 = v128;
    sub_100065074(v128, v130, &qword_1003A03E0, &qword_1002C3D68);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v130[0] = v56;
      *v55 = 136315138;

      sub_10000BD44(v128, &qword_1003A03E0, &qword_1002C3D68);
      v57 = sub_100008F6C(v34, v35, v130);

      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "globalKernelConfig id: %s", v55, 0xCu);
      sub_10000959C(v56);
      v52 = v128;

      v39 = &unk_10039D000;
    }

    else
    {

      sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);
    }

    v62 = v126;
    swift_beginAccess();
    *(v62 + 16) = 1;
    v64 = v39[112];
    if (!v37)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_32:
  if (v45 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_10000403C(v58, qword_1003A0278);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v126;
  if (v61)
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "No globalKernelConfig update available", v63, 2u);
  }

  v52 = v128;
  v64 = qword_10039D380;
  if (!v37)
  {
    goto LABEL_45;
  }

LABEL_40:
  if (v38 >> 60 == 15)
  {
LABEL_45:
    if (v64 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000403C(v72, qword_1003A0278);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    v68 = v40;
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "No coreConfig update available", v75, 2u);
    }

    v76 = v125;
    goto LABEL_52;
  }

  if (v64 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_10000403C(v65, qword_1003A0278);
  sub_100065074(v52, v130, &qword_1003A03E0, &qword_1002C3D68);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v68 = v40;
  if (os_log_type_enabled(v66, v67))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v130[0] = v70;
    *v69 = 136315138;

    sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);
    v71 = sub_100008F6C(v118, v37, v130);

    *(v69 + 4) = v71;
    v52 = v128;
    _os_log_impl(&_mh_execute_header, v66, v67, "coreConfig id: %s", v69, 0xCu);
    sub_10000959C(v70);
    v39 = &unk_10039D000;
  }

  else
  {

    sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);
  }

  v76 = v125;
  swift_beginAccess();
  *(v62 + 16) = 1;
LABEL_52:
  v77 = v39[112];
  if (v124 >> 60 == 15)
  {
    if (v77 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_10000403C(v78, qword_1003A0278);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "No onlinePartnerProfile update available", v81, 2u);
    }

    v82 = v39[112];
    if (!v68)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (v77 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_10000403C(v83, qword_1003A0278);
    sub_100065074(v52, v130, &qword_1003A03E0, &qword_1002C3D68);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v130[0] = v87;
      *v86 = 136315138;
      v88 = v52;
      v89 = v62;
      v90 = v68;
      v91 = v120;

      v92 = sub_100008F6C(v119, v91, v130);
      v68 = v90;
      v62 = v89;
      v52 = v88;
      v76 = v125;

      *(v86 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v84, v85, "onlinePartnerProfile id: %s", v86, 0xCu);
      sub_10000959C(v87);
    }

    v39 = &unk_10039D000;
    swift_beginAccess();
    *(v62 + 16) = 1;
    v82 = qword_10039D380;
    if (!v68)
    {
      goto LABEL_69;
    }
  }

  if (v123 >> 60 != 15)
  {
    if (v82 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_10000403C(v93, qword_1003A0278);
    sub_100065074(v52, v130, &qword_1003A03E0, &qword_1002C3D68);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v130[0] = v97;
      *v96 = 136315138;
      sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);

      v98 = sub_100008F6C(v121, v68, v130);

      *(v96 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v94, v95, "safPartnerProfile id: %s", v96, 0xCu);
      sub_10000959C(v97);
      v39 = &unk_10039D000;
    }

    else
    {

      sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);
    }

    swift_beginAccess();
    *(v62 + 16) = 1;
    if (!v76)
    {
      goto LABEL_82;
    }

    goto LABEL_77;
  }

LABEL_69:
  if (v82 != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  sub_10000403C(v99, qword_1003A0278);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&_mh_execute_header, v100, v101, "No safPartnerProfile update available", v102, 2u);
  }

  if (!v76)
  {
    goto LABEL_82;
  }

LABEL_77:
  if (!*(v76 + 16))
  {
LABEL_82:
    if (v39[112] != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    sub_10000403C(v113, qword_1003A0278);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "No capks update available", v116, 2u);
    }

    sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);
    return OS_dispatch_semaphore.signal()();
  }

  v103 = v39[112];

  if (v103 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_10000403C(v104, qword_1003A0278);

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v130[0] = v108;
    *v107 = 136315138;
    v109 = Array.description.getter();
    v111 = v110;

    v112 = sub_100008F6C(v109, v111, v130);

    *(v107 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v105, v106, "capks: %s", v107, 0xCu);
    sub_10000959C(v108);

    sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);
  }

  else
  {

    sub_10000BD44(v52, &qword_1003A03E0, &qword_1002C3D68);
  }

  swift_beginAccess();
  *(v62 + 16) = 1;
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10007AA54(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a3;
  v11 = type metadata accessor for SLAMScript(0);
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  v13 = __chkstk_darwin(v11);
  v53 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v47 - v15;
  v17 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v20);
  v25 = v47 - v24;
  if (*a1 == 1)
  {
    v49 = result;
    v50 = a4;
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v47[0] = v16;
    v47[1] = a6;
    v26 = type metadata accessor for Logger();
    sub_10000403C(v26, qword_1003A0278);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "invalid SLAM, delete already saved SLAM if necessary", v29, 2u);
    }

    sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
    v30 = *(v18 + 72);
    v31 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v48 = swift_allocObject();
    v32 = v48 + v31;
    swift_beginAccess();
    v33 = v32;
    sub_100065074(a2, v32, &qword_1003A03F0, &qword_1002C3D88);
    v34 = v51;
    swift_beginAccess();
    v35 = v33;
    sub_100065074(v34, v33 + v30, &qword_1003A03F0, &qword_1002C3D88);
    v36 = v50;
    swift_beginAccess();
    sub_100065074(v36, v35 + 2 * v30, &qword_1003A03F0, &qword_1002C3D88);
    swift_beginAccess();
    v37 = v35;
    sub_100065074(a5, v35 + 3 * v30, &qword_1003A03F0, &qword_1002C3D88);
    v38 = (v52 + 48);
    v39 = _swiftEmptyArrayStorage;
    v40 = 4;
    v47[2] = v37;
    v50 = v30;
    v51 = v11;
    do
    {
      sub_100065074(v37, v25, &qword_1003A03F0, &qword_1002C3D88);
      sub_1000829AC(v25, v22, &qword_1003A03F0, &qword_1002C3D88);
      if ((*v38)(v22, 1, v11) == 1)
      {
        sub_10000BD44(v22, &qword_1003A03F0, &qword_1002C3D88);
      }

      else
      {
        sub_100082B74(v22, v53, type metadata accessor for SLAMScript);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_10004DC8C(0, v39[2] + 1, 1, v39);
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v39 = sub_10004DC8C(v41 > 1, v42 + 1, 1, v39);
        }

        v39[2] = v42 + 1;
        sub_100082B74(v53, v39 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42, type metadata accessor for SLAMScript);
        v30 = v50;
        v11 = v51;
      }

      v37 += v30;
      --v40;
    }

    while (v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v43 = v39[2];
    if (v43)
    {
      v44 = v39 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v45 = *(v52 + 72);
      v46 = v47[0];
      do
      {
        sub_10008289C(v44, v46, type metadata accessor for SLAMScript);
        sub_10007BCAC(v46);
        sub_100082008(v46, type metadata accessor for SLAMScript);
        v44 += v45;
        --v43;
      }

      while (v43);
    }
  }

  return result;
}