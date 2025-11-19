uint64_t sub_10009C5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009C660(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = sub_100003998(&qword_1000DED80, &unk_1000AF218);
  sub_10000AC48(v6);
  v117 = v7;
  v9 = *(v8 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v10);
  v114 = &v103 - v11;
  v12 = type metadata accessor for MetricsFieldsContext();
  v13 = sub_10000AC48(v12);
  v115 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_100045D70();
  v112 = v17 - v18;
  sub_1000498EC();
  __chkstk_darwin(v19);
  v113 = &v103 - v20;
  v21 = type metadata accessor for MetricsData();
  v22 = sub_10000AC48(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_10000ADA0();
  v29 = (v28 - v27);
  v30 = sub_100003998(&qword_1000DF5E8, &unk_1000AFBF0);
  sub_10001C3C4(v30);
  v32 = *(v31 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v33);
  v35 = &v103 - v34;
  v36 = [objc_allocWithZone(ACAccountStore) init];
  ACAccountStore.activeAccount.getter();

  v37 = type metadata accessor for Account();
  if (sub_100008B84(v35, 1, v37) == 1)
  {
    return sub_10000A7A8(v35, &qword_1000DF5E8, &unk_1000AFBF0);
  }

  v106 = v24;
  v107 = v21;
  sub_10000A7A8(v35, &qword_1000DF5E8, &unk_1000AFBF0);
  v125 = a1;
  v126 = v4 & 0x101;
  v39 = &OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_loadUrlLottery;
  if (v4)
  {
    v39 = &OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_notificationLottery;
  }

  v40 = (v3 + *v39);
  v41 = *v40;
  v42 = v40[1];
  v43 = 0x80000001000B2B50;
  v44 = 0x6C725564616F6CLL;
  if ((v4 & 1) == 0)
  {
    v43 = 0xE700000000000000;
  }

  isUniquelyReferenced_nonNull_native = &type metadata for String;
  *(&v121 + 1) = &type metadata for String;
  if (v4)
  {
    v44 = 0xD000000000000011;
  }

  *&v120 = v44;
  *(&v120 + 1) = v43;

  sub_100079618(&v120, 4);
  *(&v121 + 1) = &type metadata for Double;
  *&v120 = v41;
  sub_100079618(&v120, 19);
  *(&v121 + 1) = &type metadata for Double;
  *&v120 = v42;
  sub_100079618(&v120, 20);
  *(&v121 + 1) = &type metadata for String;
  *&v120 = 0xD000000000000011;
  *(&v120 + 1) = 0x80000001000B0480;
  sub_100079618(&v120, 0);
  if (qword_1000DBA88 != -1)
  {
LABEL_54:
    swift_once();
  }

  *(&v121 + 1) = isUniquelyReferenced_nonNull_native;
  v120 = xmmword_1000DF4C0;

  sub_100079618(&v120, 2);
  v46 = v125;
  sub_10007BFB0(1uLL, v125, &v120);
  v47 = *(&v121 + 1);
  sub_10000A7A8(&v120, &qword_1000DE878, &qword_1000AE970);
  if (v47 == 1)
  {
    *(&v121 + 1) = isUniquelyReferenced_nonNull_native;
    strcpy(&v120, "com.apple.tv");
    BYTE13(v120) = 0;
    HIWORD(v120) = -5120;
    sub_100079618(&v120, 1);
    v46 = v125;
  }

  sub_10007BFB0(0x2BuLL, v46, &v123);
  v109 = v29;
  v105 = v6;
  v104 = v12;
  v108 = v4;
  if (*(&v124 + 1) == 1)
  {
    v48 = &qword_1000DE878;
    v49 = &qword_1000AE970;
    v50 = &v123;
LABEL_18:
    sub_10000A7A8(v50, v48, v49);
    goto LABEL_19;
  }

  v120 = v123;
  v121 = v124;
  if (!*(&v124 + 1))
  {
    v48 = &qword_1000DBD08;
    v49 = &qword_1000AA690;
    v50 = &v120;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v54 = *(v3 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter + 8);
    if (v54)
    {
      v55 = *(v3 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter);
      v56 = &type metadata for String;
    }

    else
    {
      v55 = 0;
      *&v121 = 0;
      v56 = 1;
    }

    *&v120 = v55;
    *(&v120 + 1) = v54;
    *(&v121 + 1) = v56;

    sub_100079618(&v120, 43);
    goto LABEL_23;
  }

  v51 = *(&v119[0] + 1);
  v52 = (v3 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter);
  v53 = *(v3 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter + 8);
  *v52 = *&v119[0];
  v52[1] = v51;

LABEL_23:
  v110 = v3;
  sub_10009FBE0(&v125);
  v3 = v125;
  v57 = v125 + 64;
  v58 = 1 << *(v125 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v12 = v59 & *(v125 + 64);
  v60 = (v58 + 63) >> 6;

  v61 = 0;
  v62 = &_swiftEmptyDictionarySingleton;
  v4 = &qword_1000DBD08;
  isUniquelyReferenced_nonNull_native = &qword_1000AA690;
  v6 = v117;
  v116 = v3;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v63 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v63 >= v60)
        {
          goto LABEL_48;
        }

        v12 = *(v57 + 8 * v63);
        ++v61;
        if (v12)
        {
          v61 = v63;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_31:
    v64 = __clz(__rbit64(v12)) | (v61 << 6);
    v29 = *(*(v3 + 48) + v64);
    sub_10000A744(*(v3 + 56) + 32 * v64, &v120, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
    if (*(&v121 + 1) == 1)
    {
      break;
    }

    v12 &= v12 - 1;
    if ((v29 & 0xFE) == 0x2C)
    {
      sub_10000A7A8(&v120, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v6 = sub_100083914(v29);
      v29 = v65;
      sub_10000A744(&v120, &v123, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
      if (*(&v124 + 1))
      {
        sub_100008EA8(&v123, v119);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v62;
        v66 = v29;
        v29 = v6;
        v111 = v66;
        v67 = sub_100017538();
        v69 = v62[2];
        v70 = (v68 & 1) == 0;
        v3 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          goto LABEL_53;
        }

        v71 = v67;
        v72 = v68;
        sub_100003998(&qword_1000DEA68, &unk_1000AFC00);
        v73 = sub_1000A2578();
        if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v73, v74))
        {
          v3 = v116;
          v75 = v29;
          v29 = v111;
          if ((v72 & 1) == 0)
          {
            goto LABEL_39;
          }

LABEL_44:

          v62 = v118;
          v90 = (v118[7] + 32 * v71);
          sub_100008A94(v90);
          sub_100008EA8(v119, v90);
          v91 = &v120;
          v4 = &qword_1000DBD08;
          isUniquelyReferenced_nonNull_native = &qword_1000AA690;
          goto LABEL_47;
        }

        v75 = v29;
        v29 = v111;
        v76 = sub_100017538();
        v3 = v116;
        if ((v72 & 1) != (v77 & 1))
        {
          goto LABEL_56;
        }

        v71 = v76;
        if (v72)
        {
          goto LABEL_44;
        }

LABEL_39:
        v62 = v118;
        v118[(v71 >> 6) + 8] |= 1 << v71;
        v78 = (v62[6] + 16 * v71);
        *v78 = v75;
        v78[1] = v29;
        sub_100008EA8(v119, (v62[7] + 32 * v71));
        v4 = &qword_1000DBD08;
        isUniquelyReferenced_nonNull_native = &qword_1000AA690;
        sub_10000A7A8(&v120, &qword_1000DBD08, &qword_1000AA690);
        v79 = v62[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          __break(1u);
LABEL_56:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v62[2] = v81;
        v6 = v117;
      }

      else
      {
        sub_10000A7A8(&v123, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
        v82 = sub_100017538();
        v83 = isUniquelyReferenced_nonNull_native;
        v85 = v84;

        if (v85)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v118 = v62;
          v29 = v83;
          v86 = v62[3];
          sub_100003998(&qword_1000DEA68, &unk_1000AFC00);
          v87 = sub_1000A2578();
          v3 = v116;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v87, v88);
          v62 = v118;
          v89 = *(v118[6] + 16 * v82 + 8);

          sub_100008EA8((v62[7] + 32 * v82), v119);
          _NativeDictionary._delete(at:)();
          sub_10000A7A8(&v120, &qword_1000DBD08, v29);
          isUniquelyReferenced_nonNull_native = v29;
        }

        else
        {
          sub_10000A7A8(&v120, &qword_1000DBD08, v83);
          memset(v119, 0, sizeof(v119));
          isUniquelyReferenced_nonNull_native = v83;
          v3 = v116;
        }

        v91 = v119;
LABEL_47:
        sub_10000A7A8(v91, &qword_1000DBD08, isUniquelyReferenced_nonNull_native);
        v6 = v117;
      }
    }
  }

LABEL_48:

  MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
  if (sub_1000A05A8(v3, v108 & 1))
  {
    v92 = v112;
    MetricsFieldsContext.init()();
    *&v120 = 0xD000000000000012;
    *(&v120 + 1) = 0x80000001000B0440;
    v93 = v114;
    static MetricsFieldsContext.Property<A>.topic.getter();
    v94 = v113;
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v6 + 8))(v93, v105);
    v95 = *(v115 + 8);
    v96 = v104;
    v95(v92, v104);
    MetricsPipeline.process(_:using:)();
    v95(v94, v96);
    v97 = sub_10001BDC0(0, &qword_1000DC5D8, OS_dispatch_queue_ptr);
    v98 = static OS_dispatch_queue.main.getter();
    *(&v121 + 1) = v97;
    v122 = &protocol witness table for OS_dispatch_queue;
    *&v120 = v98;
    Promise.then(perform:orCatchError:on:)();

    v99 = sub_1000A24AC();
    v100(v99);
    sub_100008A94(&v120);
  }

  else
  {
    v101 = sub_1000A24AC();
    v102(v101);
  }
}

uint64_t sub_10009D150()
{
  v1 = v0;
  v2 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10001C3C4(v2);
  v4 = *(v3 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v5);
  v140 = &v133 - v6;
  v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v8 = sub_10001C3C4(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100045D70();
  v143 = v11 - v12;
  sub_1000498EC();
  __chkstk_darwin(v13);
  sub_1000498F8();
  v142 = v14;
  sub_1000498EC();
  __chkstk_darwin(v15);
  sub_1000498F8();
  v141 = v16;
  sub_1000498EC();
  __chkstk_darwin(v17);
  sub_1000498F8();
  v139 = v18;
  sub_1000498EC();
  __chkstk_darwin(v19);
  sub_1000498F8();
  v137 = v20;
  sub_1000498EC();
  __chkstk_darwin(v21);
  sub_1000498F8();
  v136 = v22;
  sub_1000498EC();
  __chkstk_darwin(v23);
  sub_1000498F8();
  v134 = v24;
  sub_1000498EC();
  __chkstk_darwin(v25);
  v27 = &v133 - v26;
  __chkstk_darwin(v28);
  v30 = &v133 - v29;
  __chkstk_darwin(v31);
  v33 = &v133 - v32;
  __chkstk_darwin(v34);
  v36 = &v133 - v35;
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AFAA0;
  *(inited + 32) = 6;
  v38 = type metadata accessor for ApiRequestMetrics();
  v135 = v38[10];
  sub_10000A744(v1 + v135, v36, &qword_1000DC5A0, &unk_1000AB0E0);
  v39 = type metadata accessor for Date();
  if (sub_100008B84(v36, 1, v39) == 1)
  {
    sub_10000A7A8(v36, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 40) = 0u;
    *(inited + 56) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 64) = &type metadata for UInt64;
    *(inited + 40) = v40;
    sub_1000A23C0();
    v42 = *(v41 + 8);
    v43 = sub_1000A256C();
    v44(v43);
  }

  *(inited + 72) = 7;
  v138 = v38[15];
  sub_10000A744(v1 + v138, v33, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v33);
  v45 = v140;
  if (v46)
  {
    sub_10000A7A8(v33, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 80) = 0u;
    *(inited + 96) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 104) = &type metadata for UInt64;
    *(inited + 80) = v47;
    sub_1000A23C0();
    (*(v48 + 8))(v33, v39);
  }

  *(inited + 112) = 26;
  sub_10000A744(v1, v30, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v30);
  if (v46)
  {
    sub_10000A7A8(v30, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 120) = 0u;
    *(inited + 136) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 144) = &type metadata for UInt64;
    *(inited + 120) = v49;
    sub_1000A23C0();
    (*(v50 + 8))(v30, v39);
  }

  *(inited + 152) = 27;
  v51 = *(v1 + v38[11]);
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = v51;
  *(inited + 192) = 28;
  sub_10000A744(v1 + v38[5], v27, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v27);
  v52 = v137;
  if (v46)
  {
    sub_10000A7A8(v27, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 200) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 224) = &type metadata for UInt64;
    *(inited + 200) = v53;
    sub_1000A23C0();
    (*(v54 + 8))(v27, v39);
  }

  v55 = v134;
  *(inited + 232) = 29;
  sub_10000A744(v1 + v38[8], v55, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v55);
  v56 = v139;
  if (v46)
  {
    sub_10000A7A8(v55, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 264) = &type metadata for UInt64;
    *(inited + 240) = v57;
    sub_1000A23C0();
    v59 = *(v58 + 8);
    v60 = sub_1000A256C();
    v61(v60);
  }

  v62 = v136;
  *(inited + 272) = 30;
  sub_10000A744(v1 + v38[9], v62, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v62);
  if (v46)
  {
    sub_10000A7A8(v62, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 280) = 0u;
    *(inited + 296) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 304) = &type metadata for UInt64;
    *(inited + 280) = v63;
    sub_1000A23C0();
    v65 = *(v64 + 8);
    v66 = sub_1000A256C();
    v67(v66);
  }

  *(inited + 312) = 31;
  sub_10000A744(v1 + v135, v52, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v52);
  if (v46)
  {
    sub_10000A7A8(v52, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 320) = 0u;
    *(inited + 336) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 344) = &type metadata for UInt64;
    *(inited + 320) = v68;
    sub_1000A23C0();
    (*(v69 + 8))(v52, v39);
  }

  *(inited + 352) = 32;
  v70 = (v1 + v38[12]);
  v71 = v70[1];
  if (v71)
  {
    v72 = *v70;
    v73 = &type metadata for String;
    v74 = v71;
  }

  else
  {
    sub_1000A2414();
    *(inited + 376) = 0;
  }

  *(inited + 360) = v72;
  *(inited + 368) = v74;
  *(inited + 384) = v73;
  *(inited + 392) = 33;
  v75 = *(v1 + v38[6]);
  *(inited + 424) = &type metadata for Int64;
  *(inited + 400) = v75;
  *(inited + 432) = 34;
  sub_10000A744(v1 + v38[13], v56, &qword_1000DC5A0, &unk_1000AB0E0);
  v76 = v56;
  v77 = sub_100008B84(v56, 1, v39);

  if (v77 == 1)
  {
    sub_10000A7A8(v76, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 464) = &type metadata for UInt64;
    *(inited + 440) = v78;
    sub_1000A23C0();
    v80 = *(v79 + 8);
    v81 = sub_1000A256C();
    v82(v81);
  }

  *(inited + 472) = 5;
  sub_10000A744(v1 + v38[14], v45, &unk_1000DD7B0, &qword_1000AC150);
  v83 = type metadata accessor for URL();
  if (sub_100008B84(v45, 1, v83) == 1)
  {
    sub_10000A7A8(v45, &unk_1000DD7B0, &qword_1000AC150);
    *(inited + 480) = 0u;
    *(inited + 496) = 0u;
  }

  else
  {
    v84 = URL.absoluteString.getter();
    *(inited + 504) = &type metadata for String;
    *(inited + 480) = v84;
    *(inited + 488) = v85;
    sub_10000ACDC(v83);
    (*(v86 + 8))(v45, v83);
  }

  v87 = v143;
  v88 = v141;
  *(inited + 512) = 35;
  sub_10000A744(v1 + v138, v88, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v88);
  if (v46)
  {
    sub_10000A7A8(v88, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 520) = 0u;
    *(inited + 536) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 544) = &type metadata for UInt64;
    *(inited + 520) = v89;
    sub_1000A23C0();
    (*(v90 + 8))(v88, v39);
  }

  *(inited + 552) = 36;
  v91 = *(v1 + v38[7]);
  *(inited + 584) = &type metadata for Int64;
  *(inited + 560) = v91;
  *(inited + 592) = 37;
  v92 = v142;
  sub_10000A744(v1 + v38[16], v142, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v92);
  if (v46)
  {
    sub_10000A7A8(v92, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 600) = 0u;
    *(inited + 616) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 624) = &type metadata for UInt64;
    *(inited + 600) = v93;
    sub_1000A23C0();
    (*(v94 + 8))(v92, v39);
  }

  *(inited + 632) = 38;
  sub_10000A744(v1 + v38[17], v87, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A23D0(v87);
  if (v46)
  {
    sub_10000A7A8(v87, &qword_1000DC5A0, &unk_1000AB0E0);
    *(inited + 640) = 0u;
    *(inited + 656) = 0u;
  }

  else
  {
    sub_10008C99C();
    *(inited + 664) = &type metadata for UInt64;
    *(inited + 640) = v95;
    sub_1000A23C0();
    (*(v96 + 8))(v87, v39);
  }

  *(inited + 672) = 39;
  v97 = v1 + v38[18];
  if (*(v97 + 8))
  {
    v98 = 0;
    v99 = 0;
    *(inited + 688) = 0u;
  }

  else
  {
    v98 = *v97;
    v99 = &type metadata for Int;
  }

  *(inited + 680) = v98;
  *(inited + 704) = v99;
  *(inited + 712) = 40;
  v100 = (v1 + v38[19]);
  v101 = v100[1];
  if (v101)
  {
    v102 = *v100;
    v103 = &type metadata for String;
    v104 = v101;
  }

  else
  {
    sub_1000A2414();
    *(inited + 736) = 0;
  }

  *(inited + 720) = v102;
  *(inited + 728) = v104;
  *(inited + 744) = v103;
  *(inited + 752) = 41;
  v105 = (v1 + v38[20]);
  v106 = v105[1];
  if (v106)
  {
    v107 = *v105;
    v108 = &type metadata for String;
    v109 = v106;
  }

  else
  {
    sub_1000A2414();
    *(inited + 776) = 0;
  }

  *(inited + 760) = v107;
  *(inited + 768) = v109;
  *(inited + 784) = v108;
  *(inited + 792) = 42;
  v110 = (v1 + v38[21]);
  v111 = v110[1];
  if (v111)
  {
    v112 = *v110;
    v113 = &type metadata for String;
    v114 = v111;
  }

  else
  {
    sub_1000A2414();
    *(inited + 816) = 0;
  }

  *(inited + 800) = v112;
  *(inited + 808) = v114;
  *(inited + 824) = v113;
  *(inited + 832) = 43;
  v115 = (v1 + v38[22]);
  v116 = v115[1];
  if (v116)
  {
    v117 = *v115;
    v118 = &type metadata for String;
    v119 = v116;
  }

  else
  {
    sub_1000A2414();
    *(inited + 856) = 0;
  }

  *(inited + 840) = v117;
  *(inited + 848) = v119;
  *(inited + 864) = v118;
  *(inited + 872) = 16;
  v120 = (v1 + v38[23]);
  v121 = v120[1];
  if (v121)
  {
    v122 = *v120;
    v123 = &type metadata for String;
    v124 = v121;
  }

  else
  {
    sub_1000A2414();
    *(inited + 896) = 0;
  }

  *(inited + 880) = v122;
  *(inited + 888) = v124;
  *(inited + 904) = v123;
  v125 = (inited + 920);
  *(inited + 912) = 47;
  v126 = *(v1 + v38[24]);
  if (v126 == 2)
  {
    v127 = 0;
    *v125 = 0;
    *(inited + 928) = 0;
    *(inited + 936) = 0;
  }

  else
  {
    *v125 = v126 & 1;
    v127 = &type metadata for Bool;
  }

  *(inited + 944) = v127;
  *(inited + 952) = 48;
  v128 = (v1 + v38[25]);
  v129 = v128[1];
  if (v129)
  {
    v130 = *v128;
    v131 = &type metadata for String;
  }

  else
  {
    v130 = 0;
    v131 = 0;
    *(inited + 976) = 0;
  }

  *(inited + 960) = v130;
  *(inited + 968) = v129;
  *(inited + 984) = v131;

  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10009DDF4()
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AA5B0;
  *(inited + 32) = 39;
  type metadata accessor for AMSError(0);
  sub_1000A2218(&qword_1000DBB28, type metadata accessor for AMSError);
  v1 = _BridgedStoredNSError.errorUserInfo.getter();
  sub_10007BF54(v1, (inited + 40));

  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10009DF18(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1000A1764(a1, sub_1000A16BC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_10009DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v5 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10001C3C4(v5);
  v7 = *(v6 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  v10 = v42 - v9;
  v11 = type metadata accessor for Date();
  v12 = sub_10000AC48(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000ADA0();
  v19 = v18 - v17;
  sub_10007C2F4(44, a2, v42);
  if (v43)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_10000A7A8(v42, &qword_1000DBD08, &qword_1000AA690);
  }

  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 10;
  Date.init()();
  sub_10008C99C();
  v22 = v21;
  (*(v14 + 8))(v19, v11);
  *(inited + 64) = &type metadata for UInt64;
  *(inited + 40) = v22;
  *(inited + 72) = 5;
  URLRequest.url.getter();
  v23 = type metadata accessor for URL();
  if (sub_100008B84(v10, 1, v23) == 1)
  {
    sub_10000A7A8(v10, &unk_1000DD7B0, &qword_1000AC150);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    *(inited + 96) = 0;
  }

  else
  {
    v24 = URL.absoluteString.getter();
    v25 = v27;
    sub_10000ACDC(v23);
    (*(v28 + 8))(v10, v23);
    v26 = &type metadata for String;
  }

  *(inited + 80) = v24;
  *(inited + 88) = v25;
  *(inited + 104) = v26;
  *(inited + 112) = 40;
  v29 = URLRequest.httpMethod.getter();
  if (v30)
  {
    v31 = &type metadata for String;
  }

  else
  {
    v29 = 0;
    v31 = 0;
    *(inited + 136) = 0;
  }

  *(inited + 120) = v29;
  *(inited + 128) = v30;
  *(inited + 144) = v31;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v32 = Dictionary.init(dictionaryLiteral:)();
  v33 = sub_10009E380(a2);
  v34 = sub_10009DF18(v33, v32);

  v36 = sub_10009DF18(v35, v34);
  sub_10000A744(v41, v42, &qword_1000DD548, &qword_1000ABF90);
  v37 = v43;
  if (v43)
  {
    v38 = v44;
    sub_100008614(v42, v43);
    v39 = (*(v38 + 8))(v37, v38);
    sub_100008A94(v42);
  }

  else
  {
    sub_10000A7A8(v42, &qword_1000DD548, &qword_1000ABF90);
    v39 = Dictionary.init(dictionaryLiteral:)();
  }

  return sub_10009DF18(v39, v36);
}

uint64_t sub_10009E380(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003998(&qword_1000DF5F0, &qword_1000AFC10);
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_10001B798(*(a1 + 56) + 32 * v11, v27 + 8);
    LOBYTE(v27[0]) = v12;
    v25[0] = v27[0];
    v25[1] = v27[1];
    v26 = v28;
    sub_100008EA8((v25 + 8), &v23);
    sub_100003998(&qword_1000DBD08, &qword_1000AA690);
    swift_dynamicCast();
    *v24 = *&v24[8];
    *&v24[16] = *&v24[24];
    v13 = v2[5];
    Hasher.init(_seed:)();
    sub_100083914(v12);
    String.hash(into:)();

    result = Hasher._finalize()();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v7[8 * (v15 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v16];
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*&v7[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    *(v2[6] + v17) = v12;
    v22 = (v2[7] + 32 * v17);
    *v22 = *v24;
    v22[1] = *&v24[16];
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10009E64C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = sub_10000AC48(v0);
  v34 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_10000ADA0();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  v9 = sub_10000AC48(v8);
  v32 = v10;
  v33 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000ADA0();
  v15 = v14 - v13;
  v16 = type metadata accessor for DispatchTime();
  v31 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100045D70();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v29 - v23;
  sub_10001BDC0(0, &qword_1000DC5D8, OS_dispatch_queue_ptr);
  v29 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v17 + 8);
  v30(v21, v16);
  v25 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000A21F8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007B4E8;
  aBlock[3] = &unk_1000D4AB0;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000A2218(&qword_1000DF620, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003998(&qword_1000DF628, &qword_1000AFC40);
  sub_10000A6FC(&qword_1000DF630, &qword_1000DF628, &qword_1000AFC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v29;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v34 + 8))(v7, v0);
  (*(v32 + 8))(v15, v33);
  return (v30)(v24, v31);
}

unint64_t sub_10009E9F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CFAA0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009EA40(char a1)
{
  result = 0x6172747369676572;
  switch(a1)
  {
    case 1:
      result = 0x7473696765726E75;
      break;
    case 2:
      result = 0x6C6C416863746566;
      break;
    case 3:
      result = 0x61684364756F6C63;
      break;
    case 4:
      result = 0x4D7370416C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009EB3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009E9F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009EB6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009EA40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_10009EB98()
{
  v0 = type metadata accessor for SportsPerformanceMeasurement();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10009EC60();
  qword_1000E6E10 = result;
  return result;
}

void sub_10009EBD8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  v2 = 0x6C616E7265746E69;
  if (!v1)
  {
    v2 = 0x72656D6F74737563;
  }

  qword_1000DF4C0 = v2;
  *algn_1000DF4C8 = 0xE800000000000000;
}

void *sub_10009EC60()
{
  v1 = v0;
  v104 = *v0;
  v103 = type metadata accessor for MetricsPipeline();
  v102 = *(v103 - 8);
  v2 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for MetricsFieldExclusionRequest();
  v98 = *(v100 - 8);
  v4 = *(v98 + 64);
  __chkstk_darwin(v100);
  v96 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for MetricsFieldsAggregator();
  v97 = *(v99 - 8);
  v6 = *(v97 + 64);
  v7 = __chkstk_darwin(v99);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v94 = &v87 - v9;
  v112 = type metadata accessor for MetricsPipeline.Configuration();
  v95 = *(v112 - 8);
  v10 = *(v95 + 64);
  v11 = __chkstk_darwin(v112);
  v91 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v92 = &v87 - v14;
  __chkstk_darwin(v13);
  v111 = &v87 - v15;
  v16 = sub_100003998(&qword_1000DF608, &qword_1000AFC28);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v90 = &v87 - v18;
  v19 = type metadata accessor for AMSMetricsIdentifierFieldsProvider();
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = *(v109 + 64);
  __chkstk_darwin(v19);
  v107 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Bag();
  v106 = *(v108 - 8);
  v22 = *(v106 + 64);
  v23 = __chkstk_darwin(v108);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v87 = &v87 - v26;
  v27 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_dataRepository;
  if (qword_1000DB9C8 != -1)
  {
    swift_once();
  }

  *(v1 + v27) = qword_1000E6CD0;
  v105 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_activityCapUtility;
  v28 = type metadata accessor for ActivityAuthorization();
  v29 = objc_allocWithZone(v28);

  v30 = [v29 init];
  v31 = sub_1000499E0();
  v33 = v32;
  v114 = v28;
  v115 = &off_1000D1900;
  v113[0] = v30;
  type metadata accessor for ActivityCapUtility();
  v34 = swift_allocObject();
  v35 = sub_10000B90C(v113, v28);
  v36 = *(*(v28 - 1) + 64);
  __chkstk_darwin(v35);
  v38 = (&v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v38;
  v34[5] = v28;
  v34[6] = &off_1000D1900;
  v34[2] = v40;
  v34[7] = v31;
  v34[8] = v33;
  sub_100008A94(v113);

  *(v1 + v105) = v34;
  v89 = v1;
  v41 = (v1 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter);
  *v41 = 0;
  v41[1] = 0;
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v42 = *(qword_1000E6CC0 + 16);
  v43 = v87;
  Bag.init(from:)();
  v88 = sub_100003998(&qword_1000DED90, &unk_1000AFC30);
  v44 = *(v106 + 16);
  v45 = v108;
  v44(v25, v43);
  v105 = LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:bag:rules:)();
  v46 = [objc_allocWithZone(ACAccountStore) init];
  v114 = sub_10001BDC0(0, &qword_1000DF610, ACAccountStore_ptr);
  v115 = &protocol witness table for ACAccountStore;
  v113[0] = v46;
  v47 = v90;
  (v44)(v90, v43, v45);
  sub_100008E2C(v47, 0, 1, v45);
  sub_100003998(&qword_1000DC4A8, &qword_1000AAF20);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1000AFAB0;
  sub_10001BDC0(0, &qword_1000DF618, AMSMetricsIdentifierKey_ptr);
  *(v48 + 32) = sub_10009F8B0(0x6449746E65696C63, 0xE800000000000000, 0);
  v49 = [objc_opt_self() currentProcess];
  static AMSMetricsIdentifierFieldsProvider.metricsResetInterval.getter();
  v50 = v107;
  AMSMetricsIdentifierFieldsProvider.init(accountProvider:process:bag:shouldMigrate:resetInterval:keys:activeITunesAccountRequired:)();
  v51 = type metadata accessor for AMSMetricsEventRecorder();
  v52 = v45;
  (v44)(v25, v43, v45);
  sub_1000592AC(&off_1000CEF28);
  v53 = AMSMetricsEventRecorder.__allocating_init(bag:defaultTopic:anonymousTopics:)();
  v54 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_eventRecorder;
  v55 = v89;
  *(v89 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_eventRecorder) = v53;
  (v44)(v25, v43, v52);
  v114 = v88;
  v115 = sub_10000A6FC(&qword_1000DEDA0, &qword_1000DED90, &unk_1000AFC30);
  v113[0] = v105;

  sub_1000592AC(&off_1000CEF58);
  v56 = v91;
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  v57 = *(v55 + v54);
  v114 = v51;
  v115 = &protocol witness table for AMSMetricsEventRecorder;
  v113[0] = v57;

  v58 = v92;
  MetricsPipeline.Configuration.withRecorder(_:)();
  v59 = v95;
  v88 = *(v95 + 8);
  v90 = (v95 + 8);
  v88(v56, v112);
  sub_100008A94(v113);
  v60 = v93;
  MetricsFieldsAggregator.init()();
  v61 = v110;
  v114 = v110;
  v115 = &protocol witness table for AMSMetricsIdentifierFieldsProvider;
  v62 = sub_10003F5B0(v113);
  (*(v109 + 16))(v62, v50, v61);
  v63 = v96;
  static MetricsFieldExclusionRequest.amsMetricsID.getter();
  v64 = v94;
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  (*(v98 + 8))(v63, v100);
  v65 = *(v97 + 8);
  v66 = v55;
  v67 = v99;
  v65(v60, v99);
  sub_100008A94(v113);
  v68 = v111;
  MetricsPipeline.Configuration.withAggregator(_:)();
  v65(v64, v67);
  v69 = v112;
  v70 = v88;
  v88(v58, v112);
  (*(v59 + 16))(v58, v68, v69);
  v71 = v101;
  MetricsPipeline.init(from:)();
  (*(v102 + 32))(v66 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_metricsPipeline, v71, v103);
  v72 = COERCE_DOUBLE(sub_10009F91C(v43, 0xD000000000000017, 0x80000001000B2BA0));
  v74 = 1.0;
  if (v73)
  {
    v75 = 1.0;
  }

  else
  {
    v75 = v72;
  }

  v76 = COERCE_DOUBLE(sub_10009F91C(v43, 0x446E6F6973736573, 0xEF6E6F6974617275));
  if (v77)
  {
    v78 = 60.0;
  }

  else
  {
    v78 = v76 / 1000.0;
  }

  v79 = COERCE_DOUBLE(sub_10009F91C(v43, 0xD000000000000028, 0x80000001000B2BC0));
  if ((v80 & 1) == 0)
  {
    v74 = v79;
  }

  v81 = COERCE_DOUBLE(sub_10009F91C(v43, 0xD000000000000020, 0x80000001000B2BF0));
  if (v82)
  {
    v83 = 60.0;
  }

  else
  {
    v83 = v81 / 1000.0;
  }

  v84 = v66 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_loadUrlLottery;
  *v84 = v75;
  *(v84 + 8) = v78;
  *(v84 + 16) = 0x6C725564616F6CLL;
  *(v84 + 24) = 0xE700000000000000;

  v70(v111, v69);
  (*(v109 + 8))(v107, v110);
  (*(v106 + 8))(v43, v108);
  v85 = v66 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_notificationLottery;
  *v85 = v74;
  *(v85 + 8) = v83;
  *(v85 + 16) = 0xD000000000000011;
  *(v85 + 24) = 0x80000001000B2B50;
  return v66;
}

id sub_10009F8B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() keyWithName:v4 crossDeviceSync:a3 & 1];

  return v5;
}

id sub_10009F91C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = Bag.amsBag.getter();
  _StringGuts.grow(_:)(41);

  v26 = 0x80000001000B2C20;
  v6._countAndFlagsBits = a2;
  v6._object = a3;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 doubleForKey:v7];

  swift_unknownObjectRelease();
  v25 = 0;
  v9 = [v8 valueWithError:&v25];

  v10 = v25;
  if (v9)
  {
    v25 = 0;
    LOBYTE(v26) = 1;
    v11 = v10;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v12 = v25;
    v13 = v26;
  }

  else
  {
    v14 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v12 = 0;
    v13 = 1;
  }

  v15 = Bag.amsBag.getter();
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v25 = 0xD000000000000014;
  v26 = 0x80000001000B2C50;
  v16._countAndFlagsBits = a2;
  v16._object = a3;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v15 doubleForKey:v17];

  swift_unknownObjectRelease();
  v25 = 0;
  v19 = [v18 valueWithError:&v25];

  v20 = v25;
  if (v19)
  {
    v25 = 0;
    LOBYTE(v26) = 1;
    v21 = v20;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v22 = v25;
  }

  else
  {
    v23 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v22 = 0;
  }

  if (v13)
  {
    return v22;
  }

  else
  {
    return v12;
  }
}

void sub_10009FBE0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Sport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v100 - v10;
  v12 = type metadata accessor for SportingEventProgressStatus();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (!*(*a1 + 16))
  {
    return;
  }

  v18 = sub_1000175AC(3);
  if ((v19 & 1) == 0)
  {
    return;
  }

  sub_10000A744(*(v17 + 56) + 32 * v18, &v110, &qword_1000DBD08, &qword_1000AA690);
  v112 = v110;
  v113 = v111;
  if (!*(&v111 + 1))
  {
LABEL_29:
    v45 = &qword_1000DBD08;
    v46 = &qword_1000AA690;
    v47 = &v112;
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v106 = v13;
  v107 = v5;
  v20 = *(v2 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_dataRepository);
  v108 = a1;
  v21 = a1[9];
  v22 = v20[6];
  sub_100008614(v20 + 2, v20[5]);
  v23 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();

  if (!v23)
  {
    return;
  }

  v24 = SportingEventSubscription.qosRegistrationId.getter();
  if (v25)
  {
    v26 = &type metadata for String;
  }

  else
  {
    v24 = 0;
    *&v113 = 0;
    v26 = 1;
  }

  v27 = v108;
  *&v112 = v24;
  *(&v112 + 1) = v25;
  *(&v113 + 1) = v26;
  sub_100079618(&v112, 21);
  v28 = SportingEventSubscription.sportingEventDetails.getter();
  v29 = dispatch thunk of SportingEvent.coverage.getter();

  if (v29 && (v30 = dispatch thunk of SportingEventCoverage.ingestion.getter(), v29, v30) && (dispatch thunk of SportingEventCoverageIngestion.last.getter(), v32 = v31, v30, (v32 & 1) == 0))
  {
    sub_10008CA40();
    *(&v113 + 1) = &type metadata for UInt64;
    *&v112 = v51;
  }

  else
  {
    v112 = 0uLL;
    *&v113 = 0;
    *(&v113 + 1) = 1;
  }

  v33 = v106;
  sub_100079618(&v112, 15);
  v34 = SportingEventSubscription.applicationType.getter();
  if (v35)
  {
    v36 = &type metadata for String;
  }

  else
  {
    v34 = 0;
    *&v113 = 0;
    v36 = 1;
  }

  *&v112 = v34;
  *(&v112 + 1) = v35;
  *(&v113 + 1) = v36;
  sub_100079618(&v112, 22);
  v37 = SportingEventSubscription.clientApp.getter();
  *(&v113 + 1) = &type metadata for String;
  *&v112 = v37;
  *(&v112 + 1) = v38;
  sub_100079618(&v112, 1);
  v39 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  v40 = SportingEventProgressStatus.rawValue.getter();
  v42 = v41;
  (*(v33 + 8))(v16, v12);
  *(&v113 + 1) = &type metadata for String;
  *&v112 = v40;
  *(&v112 + 1) = v42;
  sub_100079618(&v112, 46);
  SportingEventSubscription.sport.getter();
  Sport.init(rawValue:)();
  v43 = v107;
  (*(v107 + 104))(v9, enum case for Sport.baseball(_:), v4);
  LOBYTE(v40) = sub_100064D34(v11, v9);
  v44 = *(v43 + 8);
  v44(v9, v4);
  v44(v11, v4);
  if ((v40 & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_10007BFB0(0x2DuLL, *v27, &v110);
  if (*(&v111 + 1) == 1)
  {

    v45 = &qword_1000DE878;
    v46 = &qword_1000AE970;
    v47 = &v110;
LABEL_30:
    sub_10000A7A8(v47, v45, v46);
    return;
  }

  v112 = v110;
  v113 = v111;
  if (!*(&v111 + 1))
  {

    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_79:

    return;
  }

  if (sub_10009EA40(v109) == 0x4D7370416C6C7566 && v48 == 0xEE00656761737365)
  {
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  v52 = SportingEventSubscription.sportingEventDetails.getter();
  v53 = dispatch thunk of SportingEvent.competitors.getter();

  v54 = sub_10001BE20(v53);
  v55 = 0;
  v100 = 0;
  v106 = v53 & 0xC000000000000001;
  v107 = v54;
  v56 = _swiftEmptyArrayStorage;
  v105 = v53 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
  for (i = v55; v107 != i; ++i)
  {
    if (v106)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(v105 + 16))
      {
        goto LABEL_83;
      }

      v58 = *(v53 + 8 * i + 32);
    }

    v59 = v58;
    v55 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return;
    }

    v60 = SportingEventCompetitorContainer.competitor.getter();
    v61 = dispatch thunk of SportingEventCompetitor.members.getter();

    if (v61)
    {
      v102 = v56;
      v103 = v23;
      *&v112 = _swiftEmptyArrayStorage;
      v62 = sub_10001BE20(v61);
      v63 = 0;
      v104 = (v61 & 0xC000000000000001);
      while (v62 != v63)
      {
        if (v104)
        {
          v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v64 = *(v61 + 8 * v63 + 32);
        }

        v65 = v64;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_84;
        }

        v66 = dispatch thunk of SportingEventParticipant.images.getter();
        if (v66 && (v66 >> 62 ? (v67 = _CocoaArrayWrapper.endIndex.getter()) : (v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v67))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v68 = v53;
          v69 = *(v112 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v53 = v68;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v63;
      }

      v101 = v53;

      v70 = v112;
      v71 = sub_10001BE20(v112);
      v72 = 0;
      v104 = _swiftEmptyArrayStorage;
      while (v71 != v72)
      {
        if ((v70 & 0xC000000000000001) != 0)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v72 >= *(v70 + 16))
          {
            goto LABEL_87;
          }

          v73 = *(v70 + 8 * v72 + 32);
        }

        v74 = v73;
        v75 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_86;
        }

        v76 = dispatch thunk of SportingEventParticipant.displayName.getter();
        v78 = v77;

        ++v72;
        if (v78)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = v104[2];
            sub_100016520();
            v104 = v83;
          }

          v79 = v104[2];
          if (v79 >= v104[3] >> 1)
          {
            sub_100016520();
            v104 = v84;
          }

          v80 = v104;
          v104[2] = v79 + 1;
          v81 = &v80[2 * v79];
          v81[4] = v76;
          v81[5] = v78;
          v72 = v75;
        }
      }

      *&v112 = v104;
      sub_100003998(&qword_1000DC420, &unk_1000ADE60);
      sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60);
      v85 = BidirectionalCollection<>.joined(separator:)();
      v87 = v86;

      v88 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = v88[2];
        sub_100016520();
        v88 = v93;
      }

      v27 = v108;
      v23 = v103;
      v89 = v88[2];
      v90 = v88;
      if (v89 >= v88[3] >> 1)
      {
        sub_100016520();
        v90 = v94;
      }

      v90[2] = v89 + 1;
      v56 = v90;
      v91 = &v90[2 * v89];
      v91[4] = v85;
      v91[5] = v87;
      v53 = v101;
      goto LABEL_33;
    }
  }

  *&v112 = v56;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60);
  v95 = BidirectionalCollection<>.joined(separator:)();
  v97 = v96;

  v98 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v98 = v95 & 0xFFFFFFFFFFFFLL;
  }

  if (v98)
  {
    v99 = sub_10001D984(v95, v97);

    sub_1000A16F0(v99, sub_1000A16BC, 0, v27);
    goto LABEL_79;
  }
}

uint64_t sub_1000A05A8(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (*(a1 + 16))
    {
      v5 = sub_1000175AC(3);
      if (v6)
      {
        sub_10000A744(*(a1 + 56) + 32 * v5, &v17, &qword_1000DBD08, &qword_1000AA690);
        sub_10000A7A8(&v17, &qword_1000DE878, &qword_1000AE970);
LABEL_9:
        v9 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_notificationLottery;
        goto LABEL_10;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    sub_10000A7A8(&v17, &qword_1000DE878, &qword_1000AE970);
    sub_10007BFB0(0x17uLL, a1, &v17);
    v10 = v20;
    sub_10000A7A8(&v17, &qword_1000DE878, &qword_1000AE970);
    if (v10 != 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    v15 = 0;
    return v15 & 1;
  }

  if (!*(a1 + 16) || (v7 = sub_1000175AC(5), (v8 & 1) == 0))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    sub_10000A7A8(&v17, &qword_1000DE878, &qword_1000AE970);
    goto LABEL_12;
  }

  sub_10000A744(*(a1 + 56) + 32 * v7, &v17, &qword_1000DBD08, &qword_1000AA690);
  sub_10000A7A8(&v17, &qword_1000DE878, &qword_1000AE970);
  v9 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_loadUrlLottery;
LABEL_10:
  v11 = v3 + v9;
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  v15 = sub_1000A0904(*v11);
  return v15 & 1;
}

void sub_1000A0728()
{
  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007DE8(v0, qword_1000E6D30);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SportsPerformanceMeasurement: error: %@", v2, 0xCu);
    sub_10000A7A8(v3, &unk_1000DD790, &unk_1000AB7A0);
  }
}

uint64_t sub_1000A0884()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_eventRecorder);

    AMSMetricsEventRecorder.flush()();
  }

  return result;
}

uint64_t sub_1000A0904(double a1)
{
  v2 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 < 1.0)
  {
    sub_1000A1468(v8);
    if (sub_100008B84(v8, 1, v9) == 1)
    {
      sub_10000A7A8(v8, &qword_1000DC5A0, &unk_1000AB0E0);
      goto LABEL_7;
    }

    (*(v10 + 32))(v16, v8, v9);
    Date.init()();
    v17 = static Date.< infix(_:_:)();
    v18 = *(v10 + 8);
    v18(v13, v9);
    v18(v16, v9);
    if ((v17 & 1) == 0)
    {
LABEL_7:
      sub_1000A1F40(0.0, 1.0);
      if (v20 != 0.0 && v20 <= a1)
      {
        Date.init()();
        v19 = 1;
        sub_100008E2C(v5, 0, 1, v9);
        sub_1000A128C(v5);
        return v19;
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000A0B90()
{
  v1 = OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_metricsPipeline;
  v2 = type metadata accessor for MetricsPipeline();
  sub_10000ACDC(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_loadUrlLottery + 24);

  v5 = *(v0 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_notificationLottery + 24);

  v6 = *(v0 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_dataRepository);

  v7 = *(v0 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_eventRecorder);

  v8 = *(v0 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_activityCapUtility);

  v9 = *(v0 + OBJC_IVAR____TtC7sportsd28SportsPerformanceMeasurement_environmentDataCenter + 8);

  return v0;
}

uint64_t sub_1000A0C58()
{
  sub_1000A0B90();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000A0CB0()
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 23;
  sub_1000A25A0([v0 code], &type metadata for Int);
  v2 = [v0 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v3;
  *(inited + 88) = v5;
  *(inited + 112) = 25;
  v6 = [v0 localizedDescription];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 144) = &type metadata for String;
  *(inited + 120) = v7;
  *(inited + 128) = v9;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000A0E04()
{
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 23;
  v1 = CloudChannelError.errorCode.getter();
  sub_1000A25A0(v1, &type metadata for Int);
  v2 = static CloudChannelError.errorDomain.getter();
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v2;
  *(inited + 88) = v3;
  *(inited + 112) = 25;
  v4 = CloudChannelError.errorUserInfo.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007BF54(v4, (inited + 120));

  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t type metadata accessor for SportsPerformanceMeasurement()
{
  result = qword_1000DF530;
  if (!qword_1000DF530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A0F60()
{
  result = type metadata accessor for MetricsPipeline();
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

uint64_t sub_1000A1018(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A1058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A10A8()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

uint64_t sub_1000A1128@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1000A10A8();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_10000A7A8(v10, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  v5 = 0;
LABEL_9:
  v6 = type metadata accessor for Date();
  return sub_100008E2C(a1, v5, 1, v6);
}

uint64_t sub_1000A128C(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_10000A744(a1, v5, &qword_1000DC5A0, &unk_1000AB0E0);
  v7 = type metadata accessor for Date();
  if (sub_100008B84(v5, 1, v7) == 1)
  {
    sub_10000A7A8(v5, &qword_1000DC5A0, &unk_1000AB0E0);
    v8 = 0;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v12[1] = v9;
    (*(*(v7 - 8) + 8))(v5, v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  sub_1000A10A8();
  v10 = String._bridgeToObjectiveC()();

  [v6 setObject:v8 forKey:v10];

  swift_unknownObjectRelease();
  return sub_10000A7A8(a1, &qword_1000DC5A0, &unk_1000AB0E0);
}

uint64_t sub_1000A1468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1128(v5);
  if (sub_100008B84(v5, 1, v6) == 1)
  {
    sub_10000A7A8(v5, &qword_1000DC5A0, &unk_1000AB0E0);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    Date.addingTimeInterval(_:)();
    (*(v7 + 8))(v10, v6);
    v11 = 0;
  }

  return sub_100008E2C(a1, v11, 1, v6);
}

uint64_t sub_1000A162C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_1000A16BC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A1678((a2 + 8), *a1, (a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000A16F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_1000A1764(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_1000A1764(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1000A2048(a1, a2, a3, &v46);
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v35 = a1;

  v34 = a3;

  while (1)
  {
    sub_1000A2084(&v39 + 8);
    if (*(&v41 + 1) == 1)
    {
      sub_10001B8A0();
    }

    v9 = BYTE8(v39);
    v37 = v40;
    v38 = v41;
    v10 = *a5;
    v18 = sub_1000175AC(SBYTE8(v39));
    v19 = *(v10 + 16);
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v11;
    if (*(v10 + 24) >= v21)
    {
      if (a4)
      {
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
        _NativeDictionary.copy()();
        if (v22)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1000A1BAC(v21, a4 & 1, v12, v13, v14, v15, v16, v17, v34, v35, v36[0], v36[1], v36[2], v36[3], v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, *(&v46 + 1), v47);
      v23 = *a5;
      v24 = sub_1000175AC(v9);
      if ((v22 & 1) != (v25 & 1))
      {
        goto LABEL_18;
      }

      v18 = v24;
      if (v22)
      {
LABEL_10:
        v26 = *a5;
        sub_10000A744(*(*a5 + 56) + 32 * v18, v36, &qword_1000DBD08, &qword_1000AA690);
        sub_10000A7A8(&v37, &qword_1000DBD08, &qword_1000AA690);
        sub_100045358(v36, *(v26 + 56) + 32 * v18);
        goto LABEL_14;
      }
    }

    v27 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v27[6] + v18) = v9;
    v28 = (v27[7] + 32 * v18);
    v29 = v38;
    *v28 = v37;
    v28[1] = v29;
    v30 = v27[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_17;
    }

    v27[2] = v32;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000A199C()
{
  sub_1000A25D0();
  v2 = v0;
  v3 = *v0;
  if (*(*v0 + 24) > v4)
  {
    v5 = *(*v0 + 24);
  }

  v45 = v1;
  sub_100003998(&qword_1000DF5F8, &qword_1000AFC18);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v3 + 16))
  {
LABEL_30:

LABEL_31:
    *v2 = v6;
    sub_1000A25B4();
    return;
  }

  v43 = v2;
  v44 = v3;
  v7 = 0;
  v8 = v3;
  sub_1000A23F0();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_6:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v8 + 8 * v7))
      {
        sub_1000A2504();
        v11 = v18 & v17;
        goto LABEL_11;
      }
    }

    if ((v45 & 1) == 0)
    {

      v2 = v43;
      goto LABEL_31;
    }

    v39 = *(v3 + 32);
    sub_1000A2514();
    v2 = v43;
    if (v41 != v42)
    {
      sub_1000A24E4(v40);
    }

    else
    {
      sub_1000A248C(v40);
    }

    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v19 = v15 | (v7 << 6);
    v20 = (*(v3 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v3 + 56) + 16 * v19);
    v24 = v23[1];
    v46 = *v23;
    if ((v45 & 1) == 0)
    {
    }

    v25 = v6[5];
    Hasher.init(_seed:)();
    String.hash(into:)();
    v26 = Hasher._finalize()();
    sub_1000A2424(v26);
    if (((v29 << v28) & ~v14[v27]) == 0)
    {
      break;
    }

    sub_1000A2478();
LABEL_22:
    sub_1000A243C();
    *(v14 + v34) |= v35;
    v37 = (v6[6] + 16 * v36);
    *v37 = v21;
    v37[1] = v22;
    v38 = (v6[7] + 16 * v36);
    *v38 = v46;
    v38[1] = v24;
    sub_1000A24F4();
    v3 = v44;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  sub_1000A2464();
  while (++v30 != v32 || (v31 & 1) == 0)
  {
    v33 = v30 == v32;
    if (v30 == v32)
    {
      v30 = 0;
    }

    v31 |= v33;
    if (v14[v30] != -1)
    {
      sub_1000A2450();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1000A1BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1000A25D0();
  a31 = v35;
  a32 = v36;
  sub_1000A24C8(v37);
  sub_100003998(&qword_1000DF5F0, &qword_1000AFC10);
  v38 = sub_1000A2548();
  if (!*(v33 + 16))
  {
LABEL_29:

LABEL_30:
    *v32 = v38;
    sub_1000A25B4();
    return;
  }

  v71 = v32;
  v39 = 0;
  sub_1000A23F0();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;
  v45 = v38 + 64;
  if ((v41 & v40) == 0)
  {
LABEL_4:
    v47 = v39;
    while (1)
    {
      v39 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v39 >= v44)
      {
        break;
      }

      ++v47;
      if (*(v33 + 8 * v39))
      {
        sub_1000A2504();
        v42 = v49 & v48;
        goto LABEL_9;
      }
    }

    if ((v34 & 1) == 0)
    {

      v32 = v71;
      goto LABEL_30;
    }

    v67 = *(v33 + 32);
    sub_1000A2514();
    v32 = v71;
    if (v69 != v70)
    {
      sub_1000A24E4(v68);
    }

    else
    {
      sub_1000A248C(v68);
    }

    *(v33 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v46 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_9:
    v50 = v46 | (v39 << 6);
    v51 = *(*(v33 + 48) + v50);
    v52 = (*(v33 + 56) + 32 * v50);
    if (v34)
    {
      v53 = v52[1];
      a19 = *v52;
      a20 = v53;
    }

    else
    {
      sub_10000A744(v52, &a19, &qword_1000DBD08, &qword_1000AA690);
    }

    v54 = *(v38 + 40);
    Hasher.init(_seed:)();
    sub_100083914(v51);
    sub_1000A2524();

    v55 = Hasher._finalize()();
    sub_1000A2424(v55);
    if (((v58 << v57) & ~*(v45 + 8 * v56)) == 0)
    {
      break;
    }

    sub_1000A2478();
LABEL_21:
    sub_1000A243C();
    sub_1000A258C();
    *(v64 + v63) = v51;
    v65 = (*(v38 + 56) + 32 * v63);
    v66 = a20;
    *v65 = a19;
    v65[1] = v66;
    sub_1000A24F4();
    if (!v42)
    {
      goto LABEL_4;
    }
  }

  sub_1000A2464();
  while (++v59 != v61 || (v60 & 1) == 0)
  {
    v62 = v59 == v61;
    if (v59 == v61)
    {
      v59 = 0;
    }

    v60 |= v62;
    if (*(v45 + 8 * v59) != -1)
    {
      sub_1000A2450();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1000A1D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1000A25D0();
  a32 = v36;
  a33 = v37;
  sub_1000A24C8(v38);
  sub_100003998(&qword_1000DF600, &qword_1000AFC20);
  v39 = sub_1000A2548();
  if (!*(v34 + 16))
  {
LABEL_29:

LABEL_30:
    *v33 = v39;
    sub_1000A25B4();
    return;
  }

  v69 = v33;
  v40 = 0;
  sub_1000A23F0();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v46 = v39 + 64;
  if ((v42 & v41) == 0)
  {
LABEL_4:
    v48 = v40;
    while (1)
    {
      v40 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v40 >= v45)
      {
        break;
      }

      ++v48;
      if (*(v34 + 8 * v40))
      {
        sub_1000A2504();
        v43 = v50 & v49;
        goto LABEL_9;
      }
    }

    if ((v35 & 1) == 0)
    {

      v33 = v69;
      goto LABEL_30;
    }

    v65 = *(v34 + 32);
    sub_1000A2514();
    v33 = v69;
    if (v67 != v68)
    {
      sub_1000A24E4(v66);
    }

    else
    {
      sub_1000A248C(v66);
    }

    *(v34 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v47 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
LABEL_9:
    v51 = v47 | (v40 << 6);
    v52 = *(*(v34 + 48) + v51);
    v53 = (*(v34 + 56) + 32 * v51);
    if (v35)
    {
      sub_100008EA8(v53, &a19);
    }

    else
    {
      sub_10001B798(v53, &a19);
    }

    v54 = *(v39 + 40);
    Hasher.init(_seed:)();
    sub_100083914(v52);
    sub_1000A2524();

    v55 = Hasher._finalize()();
    sub_1000A2424(v55);
    if (((v58 << v57) & ~*(v46 + 8 * v56)) == 0)
    {
      break;
    }

    sub_1000A2478();
LABEL_21:
    sub_1000A243C();
    sub_1000A258C();
    *(v64 + v63) = v52;
    sub_100008EA8(&a19, (*(v39 + 56) + 32 * v63));
    sub_1000A24F4();
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  sub_1000A2464();
  while (++v59 != v61 || (v60 & 1) == 0)
  {
    v62 = v59 == v61;
    if (v59 == v61)
    {
      v59 = 0;
    }

    v60 |= v62;
    if (*(v46 + 8 * v59) != -1)
    {
      sub_1000A2450();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1000A1F40(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1000A1FB8(0x20000000000001uLL);
  }
}

unint64_t sub_1000A1FB8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A2048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1000A2084@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_8:
    v10 = (v7 - 1) & v7;
    v11 = __clz(__rbit64(v7)) | (v8 << 6);
    v12 = *(*(v3 + 48) + v11);
    result = sub_10000A744(*(v3 + 56) + 32 * v11, v18, &qword_1000DBD08, &qword_1000AA690);
    v14 = *v18;
    v15 = *&v18[16];
    v9 = v19;
LABEL_9:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v10;
    if (v9 == 1)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 1;
    }

    else
    {
      v17 = v1[5];
      v16 = v1[6];
      *v18 = v12;
      *&v18[8] = v14;
      v19 = v15;
      v20 = v9;
      v17(v18);
      return sub_10000A7A8(v18, &qword_1000DD030, &unk_1000AC840);
    }
  }

  else
  {
    v9 = 1;
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v12 = 0;
        v10 = 0;
        v14 = 0uLL;
        goto LABEL_9;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A21C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A2218(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for EventType.EventName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A232CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A2368()
{
  result = qword_1000DF638;
  if (!qword_1000DF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF638);
  }

  return result;
}

uint64_t sub_1000A248C@<X0>(uint64_t a1@<X8>)
{

  return sub_10008BE9C(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_1000A24AC()
{
  v2 = *(*(v1 - 328) + 8);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

uint64_t sub_1000A24C8(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_1000A2524()
{

  return String.hash(into:)();
}

uint64_t sub_1000A2548()
{

  return static _DictionaryStorage.resize(original:capacity:move:)();
}

uint64_t sub_1000A25A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 64) = a2;
  *(v2 + 40) = result;
  *(v2 + 72) = 24;
  return result;
}

uint64_t sub_1000A25EC()
{
  v1 = v0;
  v2 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v96 = sub_10000AC48(v2);
  v97 = v3;
  v5 = *(v4 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v6);
  sub_10000ADEC();
  v98 = v7;
  refreshed = type metadata accessor for SubscriptionRefreshOperation();
  v83 = *(refreshed - 8);
  v9 = *(v83 + 64);
  __chkstk_darwin(refreshed - 8);
  v84 = v10;
  v85 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003998(&qword_1000DF640, &qword_1000AFD08);
  v12 = sub_10000AC48(v11);
  v87 = v13;
  v88 = v12;
  v15 = *(v14 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v16);
  sub_10000ADEC();
  v86 = v17;
  v18 = sub_100003998(&qword_1000DF648, &qword_1000AFD10);
  v19 = sub_10000AC48(v18);
  v91 = v20;
  v92 = v19;
  v22 = *(v21 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v23);
  sub_10000ADEC();
  v89 = v24;
  v25 = sub_100003998(&qword_1000DF650, &qword_1000AFD18);
  v26 = sub_10000AC48(v25);
  v93 = v27;
  v94 = v26;
  v29 = *(v28 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v30);
  sub_10000ADEC();
  v90 = v31;
  v32 = *(*(sub_100003998(&unk_1000DD7B0, &qword_1000AC150) - 8) + 64);
  sub_10000ACFC();
  __chkstk_darwin(v33);
  v35 = &v81 - v34;
  v99 = type metadata accessor for URL();
  v36 = sub_10000AC48(v99);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  v41 = &v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v95 = &v81 - v43;
  v44 = *v0;
  v45 = *(v0 + 56);
  v46 = *(v0 + 64);
  v47 = *(v0 + 72);
  v48 = v44[6];
  sub_100008614(v44 + 2, v44[5]);
  v49 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (v49)
  {
    v50 = v49;
    v51 = v98;
    SportingEventSubscription.eventStateURL.getter();
    if (sub_100008B84(v35, 1, v99) == 1)
    {
      sub_1000261E8(v35, &unk_1000DD7B0, &qword_1000AC150);
      v100 = 0;
      v101 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v52._object = 0x80000001000B2CB0;
      v52._countAndFlagsBits = 0xD000000000000035;
      String.append(_:)(v52);
      v53._countAndFlagsBits = v45;
      v53._object = v46;
      String.append(_:)(v53);
      v54 = sub_100029E04(4u, v100, v101);

      v100 = v54;
      sub_100003998(&qword_1000DC470, &qword_1000AA620);
      Fail.init(error:)();
      sub_1000A4504(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
      v55 = v96;
      v56 = Publisher.eraseToAnyPublisher()();

      (v97[1])(v51, v55);
    }

    else
    {
      v98 = *(v38 + 32);
      v62 = v95;
      v98(v95, v35, v99);
      v63 = sub_100008614((v1 + 16), *(v1 + 40));
      v64 = sub_1000A2FC0();
      v97 = sub_100008614(v63, v63[3]);
      v82 = v38;
      v65 = v99;
      (*(v38 + 16))(v41, v62, v99);
      v96 = sub_1000698CC();
      v66 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v67 = swift_allocObject();
      v98(v67 + v66, v41, v65);
      *(v67 + ((v40 + v66 + 7) & 0xFFFFFFFFFFFFFFF8)) = v96;
      v68 = v63[5];

      v69 = sub_1000A3BD4(sub_10005BF74, v67, v64, 0, v68, v97);
      swift_bridgeObjectRelease_n();

      v100 = v69;
      v70 = v85;
      sub_1000A3F24(v1, v85);
      v71 = (*(v83 + 80) + 24) & ~*(v83 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = v50;
      sub_1000A4084(v70, v72 + v71);
      v73 = v50;
      sub_100003998(&qword_1000DF658, &unk_1000AFD20);
      sub_10000A6FC(&qword_1000DF660, &qword_1000DF658, &unk_1000AFD20);
      v74 = v86;
      Publisher.tryFilter(_:)();

      sub_10000A6FC(&qword_1000DF668, &qword_1000DF640, &qword_1000AFD08);
      v75 = v88;
      v76 = v89;
      Publisher.map<A>(_:)();
      (*(v87 + 8))(v74, v75);
      sub_100003998(&qword_1000DCC18, &qword_1000AB790);
      sub_10000A6FC(&qword_1000DF670, &qword_1000DF648, &qword_1000AFD10);
      sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
      v77 = v90;
      v78 = v92;
      Publisher.catch<A>(_:)();
      (*(v91 + 8))(v76, v78);
      sub_10000A6FC(&qword_1000DF678, &qword_1000DF650, &qword_1000AFD18);
      v79 = v94;
      v56 = Publisher.eraseToAnyPublisher()();

      (*(v93 + 8))(v77, v79);
      (*(v82 + 8))(v95, v65);
    }
  }

  else
  {
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v57._countAndFlagsBits = 0xD00000000000003FLL;
    v57._object = 0x80000001000B2C70;
    String.append(_:)(v57);
    v58._countAndFlagsBits = v45;
    v58._object = v46;
    String.append(_:)(v58);
    v59 = sub_100029E04(3u, v100, v101);

    v100 = v59;
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    v60 = v98;
    Fail.init(error:)();
    sub_1000A4504(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
    v61 = v96;
    v56 = Publisher.eraseToAnyPublisher()();
    (v97[1])(v60, v61);
  }

  return v56;
}

uint64_t type metadata accessor for SubscriptionRefreshOperation()
{
  result = qword_1000DF700;
  if (!qword_1000DF700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A2FC0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB8E0;
  *(inited + 32) = 3;
  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v9;
  *(inited + 48) = v8;
  *(inited + 72) = 8;

  Date.init()();
  sub_10008C99C();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  *(inited + 104) = &type metadata for UInt64;
  *(inited + 80) = v11;
  *(inited + 112) = 9;
  v12 = *(v1 + *(type metadata accessor for SubscriptionRefreshOperation() + 40));
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v12;
  *(inited + 152) = 44;
  LOBYTE(v12) = *(v1 + 72);
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = v12;
  *(inited + 192) = 45;
  *(inited + 224) = &type metadata for EventType.EventName;
  *(inited + 200) = 2;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = sub_10005B41C(v13);

  return v14;
}

uint64_t sub_1000A31AC()
{
  v1 = type metadata accessor for URL();
  sub_100026794(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000A323C(uint64_t a1, void *a2, uint64_t *a3)
{
  v70 = a2;
  refreshed = type metadata accessor for SubscriptionRefreshOperation();
  v5 = *(*(refreshed - 8) + 64);
  __chkstk_darwin(refreshed);
  v65 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = &v60[-v9];
  v10 = type metadata accessor for SportsManager.RefreshOptions();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for SportingEventProgressStatus();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v60[-v21];
  v62 = sub_100003998(&qword_1000DBD38, &qword_1000AA6B0);
  v63 = a1;
  v23 = *(a1 + *(v62 + 40));
  if (sub_10001BE20(v23))
  {
    v67 = a3;
    sub_1000835D4(0, (v23 & 0xC000000000000001) == 0, v23);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v23 + 32);
    }

    v66 = v24;
    v25 = v70;
    v26 = SportingEventSubscription.sportingEventDetails.getter();
    SportingEvent.progressStatus.getter();

    (*(v16 + 104))(v19, enum case for SportingEventProgressStatus.unknown(_:), v15);
    v61 = sub_100064D7C(v22, v19);
    v27 = *(v16 + 8);
    v27(v19, v15);
    v27(v22, v15);
    v28 = *(refreshed + 36);
    static SportsManager.RefreshOptions.subscription.getter();
    sub_1000A415C();
    v29 = v67;
    LOBYTE(v27) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v30 = *(v11 + 8);
    v30(v14, v10);
    if (v27 & 1) != 0 || (static SportsManager.RefreshOptions.subscriptionIfUnknown.getter(), v52 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v30(v14, v10), (v52) && (v25 = v70, (v61))
    {
      v31 = v66;
      v32 = SportingEvent.partialSportingEvent.getter();
      v33 = dispatch thunk of SportingEvent.versionNumber.getter();

      v34 = SportingEventSubscription.sportingEventDetails.getter();
      v35 = dispatch thunk of SportingEvent.versionNumber.getter();

      if (v33 >= v35)
      {
        v53 = SportingEvent.partialSportingEvent.getter();
        v54 = type metadata accessor for Date();
        v55 = v64;
        sub_100008E2C(v64, 1, 1, v54);
        SportingEventSubscription.update(sportingEventDetails:updatedAt:)();

        sub_1000261E8(v55, &qword_1000DC5A0, &unk_1000AB0E0);
        v56 = *(v29 + 72);
        v57 = *(*v29 + 48);
        sub_100008614((*v29 + 16), *(*v29 + 40));
        v58 = v69;
        dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
        if (!v58)
        {
          sub_1000A38AC(*(v63 + *(v62 + 36)), *(v63 + *(v62 + 36) + 8), v29[7], v29[8], v56);
        }
      }

      else
      {
        if (qword_1000DBA18 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100007DE8(v36, qword_1000E6D30);
        v37 = v65;
        sub_1000A3F24(v29, v65);
        v38 = v31;
        v39 = v25;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v71 = v43;
          *v42 = 136315650;
          v44 = v37;
          v45 = *(v37 + 7);
          v46 = *(v37 + 8);

          sub_1000A41B4(v44);
          v47 = sub_1000170D4(v45, v46, &v71);

          *(v42 + 4) = v47;
          *(v42 + 12) = 2048;
          v48 = SportingEvent.partialSportingEvent.getter();
          v49 = dispatch thunk of SportingEvent.versionNumber.getter();

          *(v42 + 14) = v49;
          *(v42 + 22) = 2048;
          v50 = SportingEventSubscription.sportingEventDetails.getter();
          v51 = dispatch thunk of SportingEvent.versionNumber.getter();

          *(v42 + 24) = v51;
          _os_log_impl(&_mh_execute_header, v40, v41, "Skipped stale subscription refresh update for canonical id: %s. (%ld < %ld)", v42, 0x20u);
          sub_100008A94(v43);
        }

        else
        {

          sub_1000A41B4(v37);
        }
      }
    }

    else
    {
    }
  }

  else
  {
    sub_100029E04(5u, 0xD000000000000013, 0x80000001000B2CF0);
    swift_willThrow();
  }

  return 1;
}

void sub_1000A38AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007DE8(v8, qword_1000E6D48);

    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000170D4(a3, a4, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v9, "Unexpected empty response from Tempo current event state for canonicalId: %s", v10, 0xCu);
      sub_100008A94(v11);
    }
  }

  else
  {
    v15 = *v5;
    sub_100008B28(a1, a2);
    sub_10002D244(a1, a2, a3, a4, a5 & 1);

    sub_10001F19C(a1, a2);
  }
}

uint64_t sub_1000A3A6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v11[1] = *a1;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
  v9 = Publisher.eraseToAnyPublisher()();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_1000A3BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = sub_100003998(&qword_1000DF688, &unk_1000AFD30);
  v25 = *(v24 - 8);
  v12 = *(v25 + 64);
  __chkstk_darwin(v24);
  v14 = v23 - v13;
  v29[3] = &type metadata for AMSApiRequest;
  v29[4] = &off_1000D0740;
  v15 = swift_allocObject();
  v29[0] = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = a4;

  sub_100008180();
  v23[1] = v17;
  v28 = v17;
  sub_100008A38(a6, __src);
  sub_10000BC8C(v29, v26);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  memcpy((v18 + 24), __src, 0x60uLL);
  sub_10000AC3C(v26, v18 + 120);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000A42B8;
  *(v19 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBD38, &qword_1000AA6B0);
  sub_100003998(&qword_1000DF690, &unk_1000AFD40);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630);
  sub_10000A6FC(&qword_1000DF698, &qword_1000DF690, &unk_1000AFD40);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DF6A0, &qword_1000DF688, &unk_1000AFD30);
  v20 = v24;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v25 + 8))(v14, v20);
  sub_100008A94(v29);
  return v21;
}

uint64_t sub_1000A3F24(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for SubscriptionRefreshOperation();
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_1000A3F88()
{
  v1 = (type metadata accessor for SubscriptionRefreshOperation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  sub_100008A94((v0 + v3 + 16));
  v7 = *(v0 + v3 + 64);

  v8 = v1[11];
  refreshed = type metadata accessor for SportsManager.RefreshOptions();
  sub_100026794(refreshed);
  (*(v10 + 8))(v0 + v3 + v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A4084(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for SubscriptionRefreshOperation();
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

unint64_t sub_1000A415C()
{
  result = qword_1000DF680;
  if (!qword_1000DF680)
  {
    type metadata accessor for SportsManager.RefreshOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF680);
  }

  return result;
}

uint64_t sub_1000A41B4(uint64_t a1)
{
  refreshed = type metadata accessor for SubscriptionRefreshOperation();
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

uint64_t sub_1000A4210()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A4258()
{
  v1 = *(v0 + 16);

  sub_100008A94((v0 + 32));
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 80));
  sub_100008A94((v0 + 120));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000A42C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4314(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    refreshed = type metadata accessor for SportsManager.RefreshOptions();
    v9 = a1 + *(a3 + 36);

    return sub_100008B84(v9, a2, refreshed);
  }
}

void *sub_1000A43B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    refreshed = type metadata accessor for SportsManager.RefreshOptions();
    v8 = v5 + *(a4 + 36);

    return sub_100008E2C(v8, a2, a2, refreshed);
  }

  return result;
}

unint64_t sub_1000A4430()
{
  result = type metadata accessor for DataRepository();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlaysStore();
    if (v2 <= 0x3F)
    {
      result = sub_10005D748();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SportsManager.RefreshOptions();
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

uint64_t sub_1000A4504(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000A6FC(a1, a2, a3);
}

uint64_t sub_1000A4528(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1000A45FC()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for Box();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000A46D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      if (a4)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 5:
      if (a4 != 5)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 6:
      if (a4 != 6)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 7:
      if (a4 != 7)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    case 8:
      if (a4 == 8)
      {
        return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
      }

      return 0;
    case 9:
      if (a4 != 9)
      {
        return 0;
      }

      return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
    default:
      if (a4 < 0xA)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
  }
}

uint64_t sub_1000A47C0(uint64_t a1)
{
  v2 = sub_1000A5144();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A47FC(uint64_t a1)
{
  v2 = sub_1000A5144();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A484C(uint64_t a1, void *a2)
{
  switch(a2)
  {
    case 0uLL:
      sub_1000A566C();
      result = v3 - 22;
      break;
    case 1uLL:
      sub_1000A566C();
      result = v8 - 16;
      break;
    case 2uLL:
      sub_1000A566C();
      result = v6 - 1;
      break;
    case 3uLL:
      result = 0xD00000000000002ALL;
      break;
    case 4uLL:
      result = 0xD00000000000002ALL;
      break;
    case 5uLL:
      sub_1000A566C();
      result = v9 - 26;
      break;
    case 6uLL:
      sub_1000A566C();
      result = v10 - 4;
      break;
    case 7uLL:
      sub_1000A566C();
      result = v7 | 1;
      break;
    case 8uLL:
      sub_1000A566C();
      result = v13 - 3;
      break;
    case 9uLL:
      sub_1000A566C();
      result = v5 - 5;
      break;
    default:
      sub_1000A5680();
      _StringGuts.grow(_:)(36);

      sub_1000A5690();
      v12._countAndFlagsBits = a1;
      v12._object = a2;
      String.append(_:)(v12);
      result = 0xD000000000000022;
      break;
  }

  return result;
}

uint64_t sub_1000A4A08(uint64_t a1, unint64_t a2)
{
  if (a2 > 9)
  {
    return 3;
  }

  else
  {
    return qword_1000B02F8[a2];
  }
}

uint64_t sub_1000A4A28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xA)
  {
    return sub_1000A569C();
  }

  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AA5B0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000A4B34(uint64_t a1)
{
  v2 = sub_1000A5198();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A4B70(uint64_t a1)
{
  v2 = sub_1000A5198();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A4C38(uint64_t a1)
{
  v2 = sub_1000A51EC();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A4C74(uint64_t a1)
{
  v2 = sub_1000A51EC();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A4D48(uint64_t a1)
{
  v2 = sub_1000A5240();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A4D84(uint64_t a1)
{
  v2 = sub_1000A5240();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000A4F1C(uint64_t a1, uint64_t a2)
{
  if (a2 == 10)
  {
    return 1;
  }

  else
  {
    return 2 * (a2 == 11);
  }
}

uint64_t sub_1000A4F34(uint64_t a1, unint64_t a2)
{
  if (a2 == 10 || a2 == 11)
  {
    v2 = sub_1000A5294();
    swift_dynamicCast();
    v3 = v7;
  }

  else
  {
    sub_100091068(a1, a2);
    v2 = sub_1000A5294();
    swift_dynamicCast();
    v3 = v8;
  }

  sub_100003998(&qword_1000DCB50, &qword_1000B00D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AA5B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  sub_1000A5294();
  *(inited + 72) = v2;
  *(inited + 48) = v3;
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t sub_1000A5090()
{
  result = qword_1000DF7D0;
  if (!qword_1000DF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7D0);
  }

  return result;
}

unint64_t sub_1000A50E8()
{
  result = qword_1000DF7D8;
  if (!qword_1000DF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7D8);
  }

  return result;
}

unint64_t sub_1000A5144()
{
  result = qword_1000DF7E0;
  if (!qword_1000DF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7E0);
  }

  return result;
}

unint64_t sub_1000A5198()
{
  result = qword_1000DF7E8;
  if (!qword_1000DF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7E8);
  }

  return result;
}

unint64_t sub_1000A51EC()
{
  result = qword_1000DF7F0;
  if (!qword_1000DF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7F0);
  }

  return result;
}

unint64_t sub_1000A5240()
{
  result = qword_1000DF7F8;
  if (!qword_1000DF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF7F8);
  }

  return result;
}

unint64_t sub_1000A5294()
{
  result = qword_1000DF800;
  if (!qword_1000DF800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DF800);
  }

  return result;
}

uint64_t sub_1000A52D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000A52F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 16))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A5348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

_BYTE *sub_1000A53B4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000A5450);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A5484(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 10;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A54A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 < 0xB)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A550C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_1000A555C(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483638;
  }

  else if (a2)
  {
    result[1] = a2 + 9;
  }

  return result;
}

unint64_t sub_1000A55A0()
{
  result = qword_1000DF808;
  if (!qword_1000DF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF808);
  }

  return result;
}

unint64_t sub_1000A55F8()
{
  result = qword_1000DF810;
  if (!qword_1000DF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF810);
  }

  return result;
}

uint64_t sub_1000A569C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

void *sub_1000A56B0()
{
  v0 = type metadata accessor for URL();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10000ADA0();
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  v2 = qword_1000E6D10;
  v3 = type metadata accessor for LiveActivityManager();

  sub_10001EF70(&v44, &qword_1000DD648, &qword_1000AC0E0);
  *&v44 = v2;
  *(&v45 + 1) = v3;
  v46 = &off_1000D1920;
  sub_10003FA5C(&v44, v43, &qword_1000DD648, &qword_1000AC0E0);
  bzero(v42, 0xB8uLL);
  if (qword_1000DB9C8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000E6CD0;
  v5 = qword_1000DBA80;

  if (v5 != -1)
  {
    swift_once();
  }

  v36 = qword_1000E6E10;
  v6 = [objc_opt_self() defaultManager];
  NSFileManager.currentContainerURL.getter();

  v7 = type metadata accessor for PlaysStore();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v37 = PlaysStore.init(storeUrl:)();
  v10 = type metadata accessor for ActivityAuthorization();
  v11 = [objc_allocWithZone(v10) init];
  v12 = sub_1000499E0();
  v14 = v13;
  v40 = v10;
  v41 = &off_1000D1900;
  v39[0] = v11;
  type metadata accessor for ActivityCapUtility();
  v15 = swift_allocObject();
  sub_10000B90C(v39, v10);
  sub_1000A6560();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  sub_10000ADA0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v21;
  v15[5] = v10;
  v15[6] = &off_1000D1900;
  v15[2] = v23;
  v15[7] = v12;
  v15[8] = v14;
  sub_100008A94(v39);

  v24 = type metadata accessor for SportsPerformanceMeasurement();
  v40 = v24;
  v41 = &off_1000D4A78;
  v39[0] = v36;
  v25 = swift_allocObject();
  sub_10000B90C(v39, v24);
  sub_1000A6560();
  v27 = *(v26 + 64);
  __chkstk_darwin(v28);
  sub_10000ADA0();
  v31 = (v30 - v29);
  (*(v32 + 16))(v30 - v29);
  v33 = *v31;
  v38[3] = v24;
  v38[4] = &off_1000D4A78;
  v38[0] = v33;
  bzero(v25 + 17, 0xB8uLL);
  v25[2] = v4;
  sub_10000BC8C(v38, (v25 + 3));
  v25[8] = v37;
  sub_10003FA5C(v43, (v25 + 9), &qword_1000DD648, &qword_1000AC0E0);
  v25[40] = v15;
  v25[15] = sub_1000669B4;
  v25[16] = 0;
  swift_beginAccess();

  sub_1000A64F0(v42, (v25 + 17));
  swift_endAccess();
  v34 = [objc_allocWithZone(NSOperationQueue) init];
  v25[14] = v34;
  [v34 setMaxConcurrentOperationCount:1];
  sub_10001EF70(v42, &qword_1000DCD20, &unk_1000AB820);
  sub_10001EF70(v43, &qword_1000DD648, &qword_1000AC0E0);
  sub_10001EF70(&v44, &qword_1000DD648, &qword_1000AC0E0);
  sub_100008A94(v38);
  sub_100008A94(v39);
  return v25;
}

uint64_t sub_1000A5B88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 120);
  v6 = *(v5 + 128);
  v9[2] = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  return v7(0xD00000000000001DLL, 0x80000001000B30B0, sub_1000A6468, v9);
}

void sub_1000A5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a6;
  v59 = a7;
  v57 = a5;
  v54 = a3;
  v60 = a1;
  v61 = a2;
  v10 = type metadata accessor for Date();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v51 - v16;
  v18 = *(a4 + 64);
  v51 = *(a4 + 16);
  v52 = v18;
  sub_10003FA5C(a4 + 72, v70, &qword_1000DD648, &qword_1000AC0E0);
  v53 = *(a4 + 320);
  swift_beginAccess();
  sub_10003FA5C(a4 + 136, v69, &qword_1000DCD20, &unk_1000AB820);
  sub_10000BC8C(a4 + 24, v67);
  sub_10003FA5C(a8, v17, &qword_1000DC5A0, &unk_1000AB0E0);
  v19 = v68;
  v20 = sub_10000B90C(v67, v68);
  v21 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v24 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  v27 = type metadata accessor for SportsPerformanceMeasurement();
  v65 = v27;
  v66 = &off_1000D4A78;
  v64[0] = v26;
  v28 = type metadata accessor for ApsMessageProcessingOperation();
  v29 = objc_allocWithZone(v28);
  v30 = v65;
  v31 = sub_10000B90C(v64, v65);
  v32 = *(*(v30 - 8) + 64);
  v33 = __chkstk_darwin(v31);
  v35 = (&v51 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v63[3] = v27;
  v63[4] = &off_1000D4A78;
  v63[0] = v37;
  *&v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellable] = 0;
  *&v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellables] = _swiftEmptyArrayStorage;
  v38 = &v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion];
  *v38 = 0;
  v38[1] = 0;
  *&v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_message] = v54;
  v39 = v52;
  *&v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_dataRepository] = v51;
  *&v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_playsStore] = v39;
  sub_10003FA5C(v70, &v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateable], &qword_1000DD648, &qword_1000AC0E0);
  *&v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityCapUtility] = v53;
  sub_10003FA5C(v69, &v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_subscriptionOperationFactory], &qword_1000DCD20, &unk_1000AB820);

  Date.init()();
  sub_10008C99C();
  v41 = v40;
  (*(v55 + 8))(v13, v56);
  *&v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_notificationReceiptTime] = v41;
  sub_10000BC8C(v63, &v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_performance]);
  v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity] = v57;
  v42 = &v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion];
  v44 = v58;
  v43 = v59;
  *v42 = v58;
  v42[1] = v43;
  sub_10003FA5C(v17, &v29[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_processDate], &qword_1000DC5A0, &unk_1000AB0E0);
  sub_1000A64E0(v44);
  v62.receiver = v29;
  v62.super_class = v28;
  v45 = objc_msgSendSuper2(&v62, "init");
  sub_10001EF70(v17, &qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001EF70(v69, &qword_1000DCD20, &unk_1000AB820);
  sub_10001EF70(v70, &qword_1000DD648, &qword_1000AC0E0);
  sub_100008A94(v63);
  sub_100008A94(v64);
  sub_100008A94(v67);
  v46 = swift_allocObject();
  v47 = v60;
  v48 = v61;
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = v48;
  v69[4] = sub_1000A64BC;
  v69[5] = v46;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 1107296256;
  v69[2] = sub_10007B4E8;
  v69[3] = &unk_1000D4F70;
  v49 = _Block_copy(v69);
  v50 = v45;

  sub_1000A64E0(sub_1000A64BC);

  [v50 setCompletionBlock:v49];
  _Block_release(v49);

  [*(a4 + 112) addOperation:v50];
}

uint64_t sub_1000A61F8(void *a1, uint64_t (*a2)(void))
{
  if (qword_1000DBA10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D18);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    if (*&v5[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion + 8])
    {
      v10 = *&v5[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion];
      v11 = *&v5[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion + 8];
    }

    else
    {
      v11 = 0xE300000000000000;
      v10 = 7104878;
    }

    v12 = sub_1000170D4(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "releasing os_transaction taken for message version %s", v8, 0xCu);
    sub_100008A94(v9);
  }

  return a2();
}

uint64_t sub_1000A6398()
{
  v1 = *(v0 + 16);

  sub_100008A94((v0 + 24));
  v2 = *(v0 + 64);

  sub_10001EF70(v0 + 72, &qword_1000DD648, &qword_1000AC0E0);

  v3 = *(v0 + 128);

  sub_10001EF70(v0 + 136, &qword_1000DCD20, &unk_1000AB820);
  v4 = *(v0 + 320);

  return v0;
}

uint64_t sub_1000A6410()
{
  sub_1000A6398();

  return _swift_deallocClassInstance(v0, 328, 7);
}

uint64_t sub_1000A647C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A64C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A64E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000A64F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCD20, &unk_1000AB820);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

uint64_t Publisher<>.flatMap<A>(maxPublishers:_:)()
{
  return Publisher<>.flatMap<A>(maxPublishers:_:)();
}

{
  return Publisher<>.flatMap<A>(maxPublishers:_:)();
}

Swift::OpaquePointer_optional __swiftcall SportingEventCompetitor.contextualShootouts()()
{
  v0 = SportingEventCompetitor.contextualShootouts()();
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}