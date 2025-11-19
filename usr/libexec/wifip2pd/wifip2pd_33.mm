uint64_t BroadcomDriver<>.update(electionMetric:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v9 = HIBYTE(a1);
  v10 = a1;
  type metadata accessor for wl_nan_election_metric_config(0);
  return sub_10029A50C(514, &v9, a2, v7, a3, a4);
}

uint64_t sub_10028BD6C()
{
  sub_1002940E0(7233902, 0xE300000000000000, 1026, 0, 0x4000000000000, 0);
  v1 = v0;
  v3 = v2;
  v5 = sub_1002A9CDC(v0, v2);
  sub_1000124C8(v1, v3);
  v6 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v5);
  if (v6 == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(HIBYTE(v5));
  if (v8 == 5)
  {
    v8 = 0;
  }

  return v7 | (v8 << 8);
}

uint64_t BroadcomDriver<>.dwAwakePeriods.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for wl_nan_awake_dws(0);
  sub_10029AA78(0x402u, a1, v6, a2, a3, v13);
  v7 = v13[1];
  v8 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v13[0]);
  if (v8 == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v7);
  if (v10 == 5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v9 | (v11 << 8);
}

uint64_t sub_10028BF08(unsigned int a1)
{
  v8[0] = 0x1008040100uLL >> (8 * a1);
  v8[1] = 0x1008040100uLL >> ((a1 >> 5) & 0xF8);
  v9 = 0;
  v2 = sub_10004F3B0(v8, &v10);
  v4 = v3;
  sub_1002940E0(7233902, 0xE300000000000000, 1026, v2, v3, 1);
  if (!v1)
  {
    sub_1000124C8(v5, v6);
  }

  return sub_1000124C8(v2, v4);
}

uint64_t BroadcomDriver<>.update(dwAwakePeriods:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = 0x1008040100uLL >> (8 * a1);
  v9[1] = 0x1008040100uLL >> ((a1 >> 5) & 0xF8);
  v10 = 0;
  type metadata accessor for wl_nan_awake_dws(0);
  return sub_10029A8F4(1026, v9, a2, v7, a3, a4);
}

BOOL sub_10028C0A0()
{
  sub_1002940E0(7233902, 0xE300000000000000, 513, 0, 0x1000000000000, 0);
  v1 = v0;
  v3 = v2;
  v4 = sub_100033CDC(v0, v2);
  sub_1000124C8(v1, v3);
  return v4 != 0;
}

uint64_t sub_10028C198(char a1)
{
  v3 = *v1;
  v10 = a1 & 1;
  v4 = sub_10004F3B0(&v10, &v11);
  v6 = v5;
  sub_1002940E0(7233902, 0xE300000000000000, 513, v4, v5, 1);
  if (!v2)
  {
    sub_1000124C8(v7, v8);
  }

  return sub_1000124C8(v4, v6);
}

uint64_t sub_10028C29C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchTimeInterval();
  v109 = *(v5 - 8);
  v6 = *(v109 + 64);
  __chkstk_darwin();
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for SHA256Digest();
  v110 = *(v106 - 8);
  v9 = *(v110 + 64);
  __chkstk_darwin();
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = xmmword_100480A90;
  v123 = xmmword_100480A90;
  v111 = type metadata accessor for NANSubscribe.Configuration();
  v112 = a1;
  v17 = (a1 + v111[12]);
  v18 = *(v17 + 1);
  if (*(v18 + 16))
  {
    v107 = v5;
    v19 = v16;
    v20 = v13;
    v21 = v11;
    v22 = v12;
    v23 = sub_10029B424(*v17, v18);
    if (v2)
    {
      return sub_1000124C8(v123, *(&v123 + 1));
    }

    v25 = v23;
    v26 = v24;
    v105 = v8;
    sub_10029A0C4(258, v23, v24);
    v3 = 0;
    sub_1000124C8(v25, v26);
    v8 = v105;
    v12 = v22;
    v11 = v21;
    v13 = v20;
    v16 = v19;
    v5 = v107;
  }

  v27 = (v112 + v111[11]);
  v28 = *(v27 + 1);
  if (!*(v28 + 16))
  {
    v104 = v12;
    goto LABEL_9;
  }

  v29 = sub_10029B424(*v27, v28);
  if (v3)
  {
    return sub_1000124C8(v123, *(&v123 + 1));
  }

  v107 = v5;
  v102 = v16;
  v104 = v12;
  v31 = v29;
  v32 = v30;
  sub_10029A0C4(257, v29, v30);
  v3 = 0;
  sub_1000124C8(v31, v32);
  v16 = v102;
  v5 = v107;
LABEL_9:
  v33 = v112 + v111[14];
  v34 = *(v33 + 16);
  v103 = v1;
  v105 = v8;
  if ((v34 & 0xFF00) == 0x200)
  {
    v101 = v11;
    v107 = v5;
    goto LABEL_22;
  }

  v36 = *v33;
  v35 = *(v33 + 8);
  v102 = v36;
  v107 = v35;
  v37 = sub_100286B98(1u, 0, 1uLL);
  if (!v3)
  {
    v38 = v37;
    v39 = sub_100286B80((v34 >> 8) & 1, 1, 1uLL);
    v40 = v39;
    v98 = v13;
    v41 = sub_100286B98(v34, 2, 2uLL);
    v101 = 0;
    v42 = v34;
    if ((v40 & ~v38) != 0)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43 | v38;
    if ((v41 & ~v44) != 0)
    {
      v45 = v41;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45 | v44;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100480F40;
    *(v47 + 32) = v46;
    v48 = v102;
    v49 = v107;
    sub_10011A008(v102, v107, v42);
    v50 = sub_10002D874(v47);
    v100 = v42;
    v52 = v51;

    v113 = v50;
    v114 = v52;
    v121 = &type metadata for Data;
    v122 = &protocol witness table for Data;
    *&v119 = v48;
    *(&v119 + 1) = v49;
    v53 = sub_100029B34(&v119, &type metadata for Data);
    v54 = *v53;
    v99 = v53[1];
    sub_10011A008(v48, v49, v42);
    sub_10000AB0C(v50, v52);
    v55 = v101;
    sub_100178A18(v54, v99);
    v3 = v55;
    sub_1000124C8(v50, v52);
    sub_100002A00(&v119);
    v56 = v113;
    v57 = v114;
    sub_10029A0C4(259, v113, v114);
    sub_10011A01C(v48, v107, v100);
    sub_1000124C8(v56, v57);
    if (v55)
    {
      return sub_1000124C8(v123, *(&v123 + 1));
    }

    v101 = v11;
    v107 = v5;
    v13 = v98;
LABEL_22:
    LODWORD(v102) = NANSubscribe.Configuration.serviceInfo.getter();
    v59 = v58;
    v61 = v60;
    v62 = sub_100033AA8(_swiftEmptyArrayStorage);
    v63 = type metadata accessor for BinaryEncoder();
    v64 = swift_allocObject();
    *(v64 + 16) = v108;
    *(v64 + 32) = v62;
    v121 = v63;
    v122 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    *&v119 = v64;

    NANServiceInfo.encode(to:)(&v119, v102, v59, v61);
    if (v3)
    {

      sub_1000124C8(v59, v61);

      sub_100002A00(&v119);
      v66 = v109;
      v65 = v110;
      goto LABEL_34;
    }

    sub_1000124C8(v59, v61);
    sub_100002A00(&v119);
    swift_beginAccess();
    v68 = *(v64 + 16);
    v67 = *(v64 + 24);
    sub_10000AB0C(v68, v67);

    v69 = v67 >> 62;
    v66 = v109;
    if ((v67 >> 62) > 1)
    {
      v65 = v110;
      if (v69 != 2)
      {
        goto LABEL_32;
      }

      v70 = *(v68 + 16);
      v71 = *(v68 + 24);
    }

    else
    {
      if (!v69)
      {
        v65 = v110;
        if ((v67 & 0xFF000000000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_33:
        sub_10029A0C4(780, v68, v67);
        sub_1000124C8(v68, v67);
LABEL_34:
        v72 = *(&v123 + 1) >> 62;
        if ((*(&v123 + 1) >> 62) > 1)
        {
          if (v72 == 2)
          {
            v75 = *(v123 + 16);
            v76 = *(v123 + 24);
            v77 = __OFSUB__(v76, v75);
            v74 = v76 - v75;
            if (v77)
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v73 = v16;
          }

          else
          {
            v73 = v16;
            v74 = 0;
          }
        }

        else if (v72)
        {
          LODWORD(v74) = DWORD1(v123) - v123;
          if (__OFSUB__(DWORD1(v123), v123))
          {
            goto LABEL_67;
          }

          v73 = v16;
          v74 = v74;
        }

        else
        {
          v73 = v16;
          v74 = BYTE14(v123);
        }

        v78 = v74 + 20;
        if (__OFADD__(v74, 20))
        {
          __break(1u);
        }

        else
        {
          v79 = v13;
          v117 = sub_10014345C(v74 + 20);
          v118 = v80;
          v119 = 0uLL;
          v120 = 0;
          v81 = *(v112 + 8);
          v82 = *(v112 + 16);
          SHA256.init()();
          v83 = String.lowercased()();

          sub_1001F93A4(v83._countAndFlagsBits, v83._object);

          v84 = v101;
          SHA256.finalize()();
          SHA256Digest.withUnsafeBytes<A>(_:)();
          (*(v65 + 8))(v84, v106);
          v85 = v115;
          v86 = v116;
          (*(v79 + 8))(v73, v104);
          v115 = v85;
          v116 = v86;
          sub_1000BA0A4();
          DataProtocol.copyBytes(to:)();
          sub_1000124C8(v115, v116);
          if (v78 >= 2)
          {
            v87 = v107;
            if (!((v78 - 2) >> 16))
            {
              LOWORD(v119) = v78 - 2;
              v88 = v112 + v111[9];
              v89 = sub_100028EF8();
              v90 = v105;
              *v105 = 0x80000;
              (*(v66 + 104))(v90, enum case for DispatchTimeInterval.microseconds(_:), v87);
              v91 = sub_100028EF8();
              (*(v66 + 8))(v90, v87);
              if (v91)
              {
                if (v89 == 0x8000000000000000 && v91 == -1)
                {
                  goto LABEL_65;
                }

                if (((v89 / v91) & 0x8000000000000000) == 0)
                {
                  if ((v89 / v91) <= 0xFF)
                  {
                    BYTE2(v119) = v89 / v91;
                    BYTE10(v119) = *v112;
                    if (*(v112 + 32) == 1)
                    {
                    }

                    else
                    {
                      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v92 & 1) == 0)
                      {
                        goto LABEL_55;
                      }
                    }

                    HIDWORD(v119) = 4096;
LABEL_55:
                    LODWORD(v120) = -1;
                    sub_10029D13C(&v117, &v119, &v123, 0x14uLL);
                    v93 = v117;
                    v94 = v118;
                    sub_10000AB0C(v117, v118);
                    sub_1002940E0(7233902, 0xE300000000000000, 773, v93, v94, 1);
                    sub_1000124C8(v95, v96);
                    sub_1000124C8(v93, v94);
                    sub_1000124C8(v93, v94);
                    return sub_1000124C8(v123, *(&v123 + 1));
                  }

                  goto LABEL_64;
                }

LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
                goto LABEL_66;
              }

LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        __break(1u);
        goto LABEL_61;
      }

      v70 = v68;
      v71 = v68 >> 32;
      v65 = v110;
    }

    if (v70 != v71)
    {
      goto LABEL_33;
    }

LABEL_32:
    sub_1000124C8(v68, v67);
    goto LABEL_34;
  }

  sub_10000AB0C(v102, v107);
  swift_unexpectedError();
  __break(1u);
  sub_10000AB0C(v102, v107);
  swift_unexpectedError();
  __break(1u);
  sub_10000AB0C(v102, v107);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t BroadcomDriver<>.start(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = type metadata accessor for DispatchTimeInterval();
  v105 = *(v12 - 8);
  v13 = *(v105 + 64);
  __chkstk_darwin();
  v15 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SHA256Digest();
  v110 = *(v16 - 8);
  v111 = v16;
  v17 = *(v110 + 64);
  __chkstk_darwin();
  v108 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SHA256();
  v107 = *(v109 - 8);
  v19 = *(v107 + 64);
  __chkstk_darwin();
  v106 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = xmmword_100480A90;
  v124 = xmmword_100480A90;
  v21 = type metadata accessor for NANSubscribe.Configuration();
  v22 = v21[12];
  v113 = a1;
  v23 = (a1 + v22);
  v24 = *(v23 + 1);
  if (*(v24 + 16))
  {
    v104 = a2;
    v25 = a3;
    v26 = sub_10029B424(*v23, v24);
    if (v5)
    {
      return sub_1000124C8(v124, *(&v124 + 1));
    }

    v28 = v26;
    v29 = v27;
    v103 = v15;
    v102 = v12;
    sub_10029A0C4(258, v26, v27);
    v6 = 0;
    sub_1000124C8(v28, v29);
    v12 = v102;
    v15 = v103;
    a3 = v25;
    a2 = v104;
  }

  v30 = (v113 + v21[11]);
  v31 = *(v30 + 1);
  if (!*(v31 + 16))
  {
    v103 = v15;
    v104 = a2;
    goto LABEL_9;
  }

  v32 = sub_10029B424(*v30, v31);
  if (v6)
  {
    return sub_1000124C8(v124, *(&v124 + 1));
  }

  v101 = a3;
  v103 = v15;
  v34 = v32;
  v35 = v33;
  sub_10029A0C4(257, v32, v33);
  v6 = 0;
  sub_1000124C8(v34, v35);
  v104 = a2;
  a3 = v101;
LABEL_9:
  v36 = v113 + v21[14];
  v37 = *(v36 + 16);
  v99[1] = v7;
  v101 = a3;
  v99[0] = a4;
  v100 = v21;
  if ((v37 & 0xFF00) == 0x200)
  {
    goto LABEL_20;
  }

  v38 = *(v36 + 8);
  v102 = *v36;
  v39 = sub_100286B98(1u, 0, 1uLL);
  if (!v6)
  {
    v40 = v39;
    v41 = sub_100286B80((v37 >> 8) & 1, 1, 1uLL);
    v42 = v41;
    v43 = sub_100286B98(v37, 2, 2uLL);
    if ((v42 & ~v40) != 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44 | v40;
    if ((v43 & ~v45) != 0)
    {
      v46 = v43;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46 | v45;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100480F40;
    *(v48 + 32) = v47;
    v49 = v102;
    sub_10011A008(v102, v38, v37);
    v50 = sub_10002D874(v48);
    v52 = v51;

    v114 = v50;
    v115 = v52;
    v122 = &type metadata for Data;
    v123 = &protocol witness table for Data;
    *&v120 = v49;
    *(&v120 + 1) = v38;
    v53 = sub_100029B34(&v120, &type metadata for Data);
    v54 = *v53;
    v55 = v53[1];
    sub_10011A008(v49, v38, v37);
    sub_10000AB0C(v50, v52);
    sub_100178A18(v54, v55);
    sub_1000124C8(v50, v52);
    sub_100002A00(&v120);
    v57 = v114;
    v56 = v115;
    sub_10029A0C4(259, v114, v115);
    v6 = 0;
    sub_10011A01C(v49, v38, v37);
    sub_1000124C8(v57, v56);
LABEL_20:
    v102 = v12;
    v58 = NANSubscribe.Configuration.serviceInfo.getter();
    v60 = v59;
    v62 = v61;
    v63 = sub_100033AA8(_swiftEmptyArrayStorage);
    v64 = type metadata accessor for BinaryEncoder();
    v65 = swift_allocObject();
    *(v65 + 16) = v112;
    *(v65 + 32) = v63;
    v122 = v64;
    v123 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    *&v120 = v65;

    NANServiceInfo.encode(to:)(&v120, v58, v60, v62);
    if (v6)
    {

      sub_1000124C8(v60, v62);

      sub_100002A00(&v120);
      goto LABEL_32;
    }

    sub_1000124C8(v60, v62);
    sub_100002A00(&v120);
    swift_beginAccess();
    v67 = *(v65 + 16);
    v66 = *(v65 + 24);
    sub_10000AB0C(v67, v66);

    v68 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v68 != 2)
      {
        goto LABEL_30;
      }

      v69 = *(v67 + 16);
      v70 = *(v67 + 24);
    }

    else
    {
      if (!v68)
      {
        if ((v66 & 0xFF000000000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_31:
        sub_10029A0C4(780, v67, v66);
        sub_1000124C8(v67, v66);
LABEL_32:
        v71 = v124;
        v72 = *(&v124 + 1) >> 62;
        if ((*(&v124 + 1) >> 62) > 1)
        {
          if (v72 != 2)
          {
            v71 = 0;
            goto LABEL_42;
          }

          v73 = *(v124 + 16);
          v74 = *(v124 + 24);
          v75 = __OFSUB__(v74, v73);
          v71 = v74 - v73;
          if (!v75)
          {
LABEL_42:
            v76 = v71 + 20;
            if (__OFADD__(v71, 20))
            {
              __break(1u);
            }

            else
            {
              v118 = sub_10014345C(v71 + 20);
              v119 = v77;
              v120 = 0uLL;
              v121 = 0;
              v78 = *(v113 + 8);
              v79 = *(v113 + 16);
              v80 = v106;
              SHA256.init()();
              v81 = String.lowercased()();

              sub_1001F93A4(v81._countAndFlagsBits, v81._object);

              v82 = v108;
              SHA256.finalize()();
              SHA256Digest.withUnsafeBytes<A>(_:)();
              (*(v110 + 8))(v82, v111);
              v83 = v116;
              v84 = v117;
              (*(v107 + 8))(v80, v109);
              v116 = v83;
              v117 = v84;
              sub_1000BA0A4();
              DataProtocol.copyBytes(to:)();
              sub_1000124C8(v116, v117);
              v85 = v76 - 2;
              if (v76 >= 2)
              {
                v86 = v104;
                v87 = v102;
                v88 = v103;
                if (!(v85 >> 16))
                {
                  LOWORD(v120) = v85;
                  v89 = v113 + v100[9];
                  v90 = sub_100028EF8();
                  *v88 = 0x80000;
                  v91 = v105;
                  (*(v105 + 104))(v88, enum case for DispatchTimeInterval.microseconds(_:), v87);
                  v92 = sub_100028EF8();
                  (*(v91 + 8))(v88, v87);
                  if (v92)
                  {
                    if (v90 == 0x8000000000000000 && v92 == -1)
                    {
                      goto LABEL_64;
                    }

                    if (((v90 / v92) & 0x8000000000000000) == 0)
                    {
                      if ((v90 / v92) <= 0xFF)
                      {
                        BYTE2(v120) = v90 / v92;
                        BYTE10(v120) = *v113;
                        if (*(v113 + 32) == 1)
                        {
                        }

                        else
                        {
                          v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v93 & 1) == 0)
                          {
                            goto LABEL_54;
                          }
                        }

                        HIDWORD(v120) = 4096;
LABEL_54:
                        LODWORD(v121) = -1;
                        sub_10029D13C(&v118, &v120, &v124, 0x14uLL);
                        v94 = v118;
                        v95 = v119;
                        sub_10000AB0C(v118, v119);
                        sub_1002949B4(7233902, 0xE300000000000000, 773, v94, v95, 1, v86, v101, *(v99[0] + 16));
                        sub_1000124C8(v96, v97);
                        sub_1000124C8(v94, v95);
                        sub_1000124C8(v94, v95);
                        return sub_1000124C8(v124, *(&v124 + 1));
                      }

                      goto LABEL_63;
                    }

LABEL_62:
                    __break(1u);
LABEL_63:
                    __break(1u);
LABEL_64:
                    __break(1u);
LABEL_65:
                    __break(1u);
                  }

LABEL_61:
                  __break(1u);
                  goto LABEL_62;
                }

LABEL_60:
                __break(1u);
                goto LABEL_61;
              }
            }

            __break(1u);
            goto LABEL_60;
          }

          __break(1u);
        }

        else if (!v72)
        {
          v71 = BYTE14(v124);
          goto LABEL_42;
        }

        v75 = __OFSUB__(HIDWORD(v71), v71);
        LODWORD(v71) = HIDWORD(v71) - v71;
        if (v75)
        {
          goto LABEL_65;
        }

        v71 = v71;
        goto LABEL_42;
      }

      v69 = v67;
      v70 = v67 >> 32;
    }

    if (v69 != v70)
    {
      goto LABEL_31;
    }

LABEL_30:
    sub_1000124C8(v67, v66);
    goto LABEL_32;
  }

  sub_10000AB0C(v102, v38);
  swift_unexpectedError();
  __break(1u);
  sub_10000AB0C(v102, v38);
  swift_unexpectedError();
  __break(1u);
  sub_10000AB0C(v102, v38);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

{
  v6 = v5;
  v137 = type metadata accessor for DispatchTimeInterval();
  v139 = *(v137 - 8);
  v11 = *(v139 + 64);
  __chkstk_darwin();
  v138 = (&v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for SHA256Digest();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v142 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for SHA256();
  v141 = *(v143 - 8);
  v17 = *(v141 + 64);
  __chkstk_darwin();
  v140 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = xmmword_100480A90;
  v145 = a1;
  v19 = *(a1 + 48);
  v20 = *(v19 + 16);
  v144 = xmmword_100480A90;
  if (v20)
  {
    v21 = sub_10029B424(*(v145 + 40), v19);
    if (v5)
    {
      return sub_1000124C8(v154, *(&v154 + 1));
    }

    v23 = v21;
    v24 = v22;
    v136 = v14;
    v135 = v13;
    sub_10029A0C4(258, v21, v22);
    sub_1000124C8(v23, v24);
    v6 = 0;
    v13 = v135;
    v14 = v136;
  }

  v25 = *(v145 + 64);
  if (*(v25 + 16))
  {
    v26 = sub_10029B424(*(v145 + 56), v25);
    if (v6)
    {
      return sub_1000124C8(v154, *(&v154 + 1));
    }

    v38 = v26;
    v39 = v27;
    v136 = v14;
    v134 = v4;
    sub_10029A0C4(257, v26, v27);
    v28 = 0;
    v135 = v13;
    v130 = a4;
    v133 = a2;
    v131 = a3;
    sub_1000124C8(v38, v39);
  }

  else
  {
    v136 = v14;
    v135 = v13;
    v28 = v6;
    v130 = a4;
    v133 = a2;
    v131 = a3;
    v134 = v4;
  }

  v29 = NANPublish.Configuration.serviceInfo.getter();
  v31 = v30;
  v33 = v32;
  v34 = sub_100033AA8(_swiftEmptyArrayStorage);
  v35 = type metadata accessor for BinaryEncoder();
  v36 = swift_allocObject();
  *(v36 + 16) = v144;
  *(v36 + 32) = v34;
  v132 = v35;
  v152 = v35;
  v37 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v153 = v37;
  *&v150 = v36;

  NANServiceInfo.encode(to:)(&v150, v29, v31, v33);
  if (v28)
  {

    sub_1000124C8(v31, v33);

    sub_100002A00(&v150);
    goto LABEL_20;
  }

  sub_1000124C8(v31, v33);
  sub_100002A00(&v150);
  swift_beginAccess();
  v41 = *(v36 + 16);
  v40 = *(v36 + 24);
  sub_10000AB0C(v41, v40);

  v42 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v42 != 2 || *(v41 + 16) == *(v41 + 24))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!v42)
  {
    if ((v40 & 0xFF000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    sub_10029A0C4(780, v41, v40);
    sub_1000124C8(v41, v40);
    goto LABEL_20;
  }

  if (v41 != v41 >> 32)
  {
    goto LABEL_17;
  }

LABEL_19:
  sub_1000124C8(v41, v40);
LABEL_20:
  v43 = type metadata accessor for NANPublish.Configuration();
  v44 = v43;
  v45 = v145 + *(v43 + 84);
  v46 = *(v45 + 16);
  if (*(v46 + 16))
  {
    v47 = 68;
  }

  else
  {
    v47 = 4;
  }

  v48 = v47 | 0x200;
  v49 = *(v145 + *(v43 + 136));
  v50 = *(v145 + 77);
  v51 = v47 | 0x600;
  if ((v49 & 1) == 0)
  {
    v51 = v48;
  }

  if (v49 == 2)
  {
    v51 = v48;
  }

  if (v50)
  {
    v52 = 3;
  }

  else
  {
    v52 = 1;
  }

  if (v50 == 2)
  {
    v52 = 0;
  }

  LOWORD(v150) = v51 | v52;
  v53 = sub_1002AAFAC(&v150, 2);
  v55 = v54;
  sub_10029A0C4(772, v53, v54);
  v128 = v44;
  sub_1000124C8(v53, v55);
  v57 = "traffic_statistics";
  if (*(v46 + 16))
  {
    v127 = v45;
    v126 = v37;
    v58 = *(v46 + 32);
    v59 = *(v46 + 40);
    v60 = *(v46 + 48);
    v62 = *(v46 + 56);
    v61 = *(v46 + 64);
    v63 = *(v46 + 80);
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100480F40;
    *(v64 + 32) = v58 + 1;
    sub_10000AB0C(v59, v60);
    sub_10005D67C(v62, v61);
    v129 = v63;

    v65 = sub_10002D874(v64);
    v67 = v66;

    sub_10029A0C4(264, v65, v67);
    sub_1000124C8(v65, v67);
    sub_10000AB0C(v59, v60);
    sub_10029A0C4(265, v59, v60);
    sub_1000124C8(v59, v60);
    v68 = v62;
    if (v61 >> 60 == 15)
    {
      sub_1000124C8(v59, v60);
      sub_100017554(v62, v61);

      v57 = "apple80211_nan_low_latency_peer_traffic_statistics" + 32;
      v37 = v126;
      v45 = v127;
    }

    else
    {
      sub_10000AB0C(v62, v61);
      sub_10029A0C4(266, v62, v61);
      v45 = v127;
      sub_1000124C8(v59, v60);
      sub_100017554(v68, v61);

      sub_100017554(v68, v61);
      v57 = "traffic_statistics";
      v37 = v126;
    }
  }

  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v69 = swift_allocObject();
  *(v69 + 16) = *(v57 + 244);
  *(v69 + 32) = *(v145 + 32);
  v70 = sub_10002D874(v69);
  v72 = v71;

  sub_10029A0C4(781, v70, v72);
  sub_1000124C8(v70, v72);
  v73 = v145;
  v74 = *(v145 + 88);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1004817D0;
  *(v75 + 32) = *(v73 + 84);
  *(v75 + 36) = v74;
  v76 = sub_10002D874(v75);
  v78 = v77;

  sub_10029A0C4(782, v76, v78);
  sub_1000124C8(v76, v78);
  v79 = NANGenericServiceProtocol.packetData(for:)(3, *(v45 + 8));
  if (v80 >> 60 == 15)
  {
    v81 = 0;
  }

  else
  {
    v81 = v79;
  }

  if (v80 >> 60 == 15)
  {
    v82 = 0xC000000000000000;
  }

  else
  {
    v82 = v80;
  }

  v83 = sub_100033AA8(_swiftEmptyArrayStorage);
  v84 = v132;
  v85 = swift_allocObject();
  *(v85 + 16) = v144;
  *(v85 + 32) = v83;
  v152 = v84;
  v153 = v37;
  *&v150 = v85;

  NANServiceInfo.encode(to:)(&v150, 2, v81, v82);
  sub_1000124C8(v81, v82);
  sub_100002A00(&v150);
  swift_beginAccess();
  v86 = *(v85 + 16);
  v87 = *(v85 + 24);
  sub_10000AB0C(v86, v87);

  v88 = v87 >> 62;
  if ((v87 >> 62) > 1)
  {
    v89 = v133;
    if (v88 != 2)
    {
LABEL_52:
      result = sub_1000124C8(v86, v87);
      goto LABEL_53;
    }

    v90 = *(v86 + 16);
    v91 = *(v86 + 24);
LABEL_51:
    if (v90 == v91)
    {
      goto LABEL_52;
    }

    if (v88 == 2)
    {
      v119 = *(v86 + 16);
      v118 = *(v86 + 24);
      v120 = v118 - v119;
      if (!__OFSUB__(v118, v119))
      {
LABEL_80:
        sub_10000AB0C(v86, v87);
        if (v120 < 0xFFFF)
        {
          goto LABEL_81;
        }

        sub_1000124C8(v86, v87);
        sub_10000B02C();
        swift_allocError();
        *v123 = xmmword_100481860;
        *(v123 + 16) = 0;
        swift_willThrow();
        sub_1000124C8(v86, v87);
        return sub_1000124C8(v154, *(&v154 + 1));
      }

      __break(1u);
    }

    if (__OFSUB__(HIDWORD(v86), v86))
    {
      goto LABEL_91;
    }

    v120 = HIDWORD(v86) - v86;
    goto LABEL_80;
  }

  if (v88)
  {
    v90 = v86;
    v91 = v86 >> 32;
    v89 = v133;
    goto LABEL_51;
  }

  v89 = v133;
  if ((v87 & 0xFF000000000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_81:
  v121 = sub_100033AA8(_swiftEmptyArrayStorage);
  v122 = swift_allocObject();
  *(v122 + 16) = v144;
  *(v122 + 32) = v121;
  v152 = v84;
  v153 = v37;
  *&v150 = v122;

  sub_10029C7B0(&v150, 1, v86, v87);
  sub_1000124C8(v86, v87);
  sub_100002A00(&v150);
  swift_beginAccess();
  v124 = *(v122 + 16);
  v125 = *(v122 + 24);
  sub_10000AB0C(v124, v125);

  sub_10029A0C4(784, v124, v125);
  sub_1000124C8(v124, v125);
  result = sub_1000124C8(v86, v87);
LABEL_53:
  v92 = v154;
  v93 = *(&v154 + 1) >> 62;
  if ((*(&v154 + 1) >> 62) <= 1)
  {
    if (!v93)
    {
      v92 = BYTE14(v154);
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (v93 != 2)
  {
    v92 = 0;
    goto LABEL_63;
  }

  v94 = *(v154 + 16);
  v95 = *(v154 + 24);
  v96 = __OFSUB__(v95, v94);
  v92 = v95 - v94;
  if (!v96)
  {
LABEL_63:
    v133 = v89;
    v97 = v92 + 20;
    if (__OFADD__(v92, 20))
    {
      __break(1u);
    }

    else
    {
      v148 = sub_10014345C(v92 + 20);
      v149 = v98;
      v150 = 0uLL;
      v151 = 0;
      v99 = *(v145 + 8);
      v100 = *(v145 + 16);
      v101 = v140;
      SHA256.init()();
      v102 = String.lowercased()();

      sub_1001F93A4(v102._countAndFlagsBits, v102._object);

      v103 = v142;
      SHA256.finalize()();
      SHA256Digest.withUnsafeBytes<A>(_:)();
      (*(v136 + 8))(v103, v135);
      v104 = v146;
      v105 = v147;
      (*(v141 + 8))(v101, v143);
      v146 = v104;
      v147 = v105;
      sub_1000BA0A4();
      DataProtocol.copyBytes(to:)();
      sub_1000124C8(v146, v147);
      if (v97 >= 2)
      {
        if (!((v97 - 2) >> 16))
        {
          LOWORD(v150) = v97 - 2;
          v106 = v145 + *(v128 + 72);
          v107 = sub_100028EF8();
          v108 = v138;
          *v138 = 0x80000;
          v109 = v139;
          v110 = v137;
          (*(v139 + 104))(v108, enum case for DispatchTimeInterval.microseconds(_:), v137);
          v111 = sub_100028EF8();
          (*(v109 + 8))(v108, v110);
          v112 = v133;
          if (v111)
          {
            if (v107 == 0x8000000000000000 && v111 == -1)
            {
LABEL_89:
              __break(1u);
            }

            if (((v107 / v111) & 0x8000000000000000) == 0)
            {
              if ((v107 / v111) <= 0xFF)
              {
                BYTE2(v150) = v107 / v111;
                BYTE10(v150) = *v145;
                v113 = *(v145 + 72) << 12;
                HIDWORD(v150) = v113 + 4096;
                if (*(v145 + 74) == 1)
                {
                  HIDWORD(v150) = v113 + 36864;
                }

                LODWORD(v151) = -1;
                sub_10029D13C(&v148, &v150, &v154, 0x14uLL);
                v114 = v148;
                v115 = v149;
                sub_10000AB0C(v148, v149);
                sub_1002949B4(7233902, 0xE300000000000000, 770, v114, v115, 1, v112, v131, *(v130 + 16));
                sub_1000124C8(v116, v117);
                sub_1000124C8(v114, v115);
                sub_1000124C8(v114, v115);
                return sub_1000124C8(v154, *(&v154 + 1));
              }

              goto LABEL_88;
            }

LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __break(1u);
LABEL_60:
  v96 = __OFSUB__(HIDWORD(v92), v92);
  LODWORD(v92) = HIDWORD(v92) - v92;
  if (!v96)
  {
    v92 = v92;
    goto LABEL_63;
  }

  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_10028D8AC(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for SHA256Digest();
  v147 = *(v142 - 8);
  v10 = *(v147 + 64);
  __chkstk_darwin();
  v145 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for SHA256();
  v144 = *(v146 - 8);
  v12 = *(v144 + 64);
  __chkstk_darwin();
  v143 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = xmmword_100480A90;
  v14 = *(a1 + 48);
  v15 = *(v14 + 16);
  v148 = xmmword_100480A90;
  if (v15)
  {
    v16 = sub_10029B424(*(a1 + 40), v14);
    if (v2)
    {
      return sub_1000124C8(v157, *(&v157 + 1));
    }

    v18 = v16;
    v19 = v17;
    v141 = a1;
    sub_10029A0C4(258, v16, v17);
    v3 = 0;
    sub_1000124C8(v18, v19);
    a1 = v141;
  }

  v20 = *(a1 + 64);
  if (*(v20 + 16))
  {
    v21 = sub_10029B424(*(a1 + 56), v20);
    if (!v3)
    {
      v23 = v21;
      v24 = v22;
      v141 = v1;
      sub_10029A0C4(257, v21, v22);
      v3 = 0;
      v137 = v9;
      v140 = v6;
      v138 = v5;
      sub_1000124C8(v23, v24);
      goto LABEL_8;
    }

    return sub_1000124C8(v157, *(&v157 + 1));
  }

  v137 = v9;
  v140 = v6;
  v138 = v5;
  v141 = v1;
LABEL_8:
  v25 = NANPublish.Configuration.serviceInfo.getter();
  v27 = v26;
  v29 = v28;
  v30 = sub_100033AA8(_swiftEmptyArrayStorage);
  v31 = type metadata accessor for BinaryEncoder();
  v32 = swift_allocObject();
  *(v32 + 16) = v148;
  *(v32 + 32) = v30;
  v139 = v31;
  v155 = v31;
  v33 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v156 = v33;
  *&v153 = v32;

  NANServiceInfo.encode(to:)(&v153, v25, v27, v29);
  if (v3)
  {

    sub_1000124C8(v27, v29);

    sub_100002A00(&v153);
    goto LABEL_19;
  }

  sub_1000124C8(v27, v29);
  sub_100002A00(&v153);
  swift_beginAccess();
  v35 = *(v32 + 16);
  v34 = *(v32 + 24);
  sub_10000AB0C(v35, v34);

  v36 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v36 != 2 || *(v35 + 16) == *(v35 + 24))
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (!v36)
  {
    if ((v34 & 0xFF000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    sub_10029A0C4(780, v35, v34);
    sub_1000124C8(v35, v34);
    goto LABEL_19;
  }

  if (v35 != v35 >> 32)
  {
    goto LABEL_16;
  }

LABEL_18:
  sub_1000124C8(v35, v34);
LABEL_19:
  v37 = type metadata accessor for NANPublish.Configuration();
  v38 = v37;
  v39 = a1 + *(v37 + 84);
  v40 = *(v39 + 16);
  if (*(v40 + 16))
  {
    v41 = 68;
  }

  else
  {
    v41 = 4;
  }

  v42 = v41 | 0x200;
  v43 = *(a1 + *(v37 + 136));
  v44 = *(a1 + 77);
  v45 = v41 | 0x600;
  if ((v43 & 1) == 0)
  {
    v45 = v42;
  }

  if (v43 == 2)
  {
    v45 = v42;
  }

  if (v44)
  {
    v46 = 3;
  }

  else
  {
    v46 = 1;
  }

  if (v44 == 2)
  {
    v46 = 0;
  }

  LOWORD(v153) = v45 | v46;
  v47 = sub_1002AAFAC(&v153, 2);
  v49 = v48;
  sub_10029A0C4(772, v47, v48);
  v133 = v38;
  sub_1000124C8(v47, v49);
  v52 = "traffic_statistics";
  if (*(v40 + 16))
  {
    v131 = v39;
    v132 = v33;
    v53 = *(v40 + 32);
    v54 = *(v40 + 40);
    v55 = *(v40 + 48);
    v56 = *(v40 + 56);
    v135 = *(v40 + 64);
    v57 = *(v40 + 80);
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100480F40;
    *(v58 + 32) = v53 + 1;
    v136 = v54;
    v59 = v54;
    v60 = v55;
    sub_10000AB0C(v59, v55);
    v134 = v56;
    v61 = v56;
    v62 = v57;
    v63 = v135;
    sub_10005D67C(v61, v135);

    v64 = sub_10002D874(v58);
    v66 = v65;

    sub_10029A0C4(264, v64, v66);
    v130 = v62;
    sub_1000124C8(v64, v66);
    v84 = v136;
    sub_10000AB0C(v136, v60);
    sub_10029A0C4(265, v84, v60);
    sub_1000124C8(v84, v60);
    v85 = v63;
    if (v63 >> 60 == 15)
    {
      sub_1000124C8(v84, v60);
      sub_100017554(v134, v63);

      v67 = v140;
    }

    else
    {
      v86 = v84;
      v87 = v134;
      sub_10000AB0C(v134, v63);
      sub_10029A0C4(266, v87, v63);
      v67 = v140;
      sub_1000124C8(v86, v60);
      sub_100017554(v87, v85);

      sub_100017554(v87, v85);
    }

    v52 = "apple80211_nan_low_latency_peer_traffic_statistics" + 32;
    v33 = v132;
    v39 = v131;
  }

  else
  {
    v67 = v140;
  }

  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v68 = swift_allocObject();
  *(v68 + 16) = *(v52 + 244);
  *(v68 + 32) = *(a1 + 32);
  v69 = sub_10002D874(v68);
  v71 = v70;

  sub_10029A0C4(781, v69, v71);
  sub_1000124C8(v69, v71);
  LOWORD(v71) = *(a1 + 88);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1004817D0;
  *(v72 + 32) = *(a1 + 84);
  *(v72 + 36) = v71;
  v73 = sub_10002D874(v72);
  v75 = v74;

  sub_10029A0C4(782, v73, v75);
  sub_1000124C8(v73, v75);
  v140 = v67;
  v76 = NANGenericServiceProtocol.packetData(for:)(3, *(v39 + 8));
  if (v77 >> 60 == 15)
  {
    v78 = 0;
  }

  else
  {
    v78 = v76;
  }

  if (v77 >> 60 == 15)
  {
    v79 = 0xC000000000000000;
  }

  else
  {
    v79 = v77;
  }

  v80 = sub_100033AA8(_swiftEmptyArrayStorage);
  v81 = v33;
  v82 = v139;
  v83 = swift_allocObject();
  *(v83 + 16) = v148;
  *(v83 + 32) = v80;
  v155 = v82;
  v156 = v81;
  *&v153 = v83;

  NANServiceInfo.encode(to:)(&v153, 2, v78, v79);
  sub_1000124C8(v78, v79);
  sub_100002A00(&v153);
  swift_beginAccess();
  v88 = *(v83 + 16);
  v89 = *(v83 + 24);
  sub_10000AB0C(v88, v89);

  v90 = v89 >> 62;
  if ((v89 >> 62) > 1)
  {
    if (v90 != 2)
    {
LABEL_56:
      result = sub_1000124C8(v88, v89);
      goto LABEL_57;
    }

    v91 = *(v88 + 16);
    v92 = *(v88 + 24);
LABEL_55:
    if (v91 == v92)
    {
      goto LABEL_56;
    }

    if (v90 == 2)
    {
      v120 = *(v88 + 16);
      v119 = *(v88 + 24);
      v121 = v119 - v120;
      if (!__OFSUB__(v119, v120))
      {
LABEL_84:
        sub_10000AB0C(v88, v89);
        if (v121 >= 0xFFFF)
        {
          sub_1000124C8(v88, v89);
          sub_10000B02C();
          swift_allocError();
          *v126 = xmmword_100481860;
          *(v126 + 16) = 0;
          swift_willThrow();
          v118 = v88;
          v50 = v89;
LABEL_32:
          sub_1000124C8(v118, v50);
          return sub_1000124C8(v157, *(&v157 + 1));
        }

        goto LABEL_85;
      }

      __break(1u);
    }

    if (__OFSUB__(HIDWORD(v88), v88))
    {
      goto LABEL_95;
    }

    v121 = HIDWORD(v88) - v88;
    goto LABEL_84;
  }

  if (v90)
  {
    v91 = v88;
    v92 = v88 >> 32;
    goto LABEL_55;
  }

  if ((v89 & 0xFF000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_85:
  v122 = sub_100033AA8(_swiftEmptyArrayStorage);
  v136 = v88;
  v123 = v122;
  v124 = swift_allocObject();
  *(v124 + 16) = v148;
  *(v124 + 32) = v123;
  v125 = v136;
  v155 = v82;
  v156 = v81;
  *&v153 = v124;

  sub_10029C7B0(&v153, 1, v125, v89);
  sub_1000124C8(v125, v89);
  sub_100002A00(&v153);
  swift_beginAccess();
  v127 = v89;
  v128 = *(v124 + 16);
  v129 = *(v124 + 24);
  sub_10000AB0C(v128, v129);

  sub_10029A0C4(784, v128, v129);
  sub_1000124C8(v128, v129);
  result = sub_1000124C8(v125, v127);
LABEL_57:
  v93 = v138;
  v94 = v157;
  v95 = *(&v157 + 1) >> 62;
  if ((*(&v157 + 1) >> 62) <= 1)
  {
    if (!v95)
    {
      v94 = BYTE14(v157);
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  if (v95 != 2)
  {
    v94 = 0;
    goto LABEL_67;
  }

  v96 = *(v157 + 16);
  v97 = *(v157 + 24);
  v98 = __OFSUB__(v97, v96);
  v94 = v97 - v96;
  if (!v98)
  {
LABEL_67:
    v99 = v94 + 20;
    if (__OFADD__(v94, 20))
    {
      __break(1u);
    }

    else
    {
      v151 = sub_10014345C(v94 + 20);
      v152 = v100;
      v153 = 0uLL;
      v154 = 0;
      v101 = *(a1 + 8);
      v102 = *(a1 + 16);
      v103 = v143;
      SHA256.init()();
      v104 = String.lowercased()();

      sub_1001F93A4(v104._countAndFlagsBits, v104._object);

      v105 = v145;
      SHA256.finalize()();
      SHA256Digest.withUnsafeBytes<A>(_:)();
      (*(v147 + 8))(v105, v142);
      v106 = v149;
      v107 = v150;
      (*(v144 + 8))(v103, v146);
      v149 = v106;
      v150 = v107;
      sub_1000BA0A4();
      DataProtocol.copyBytes(to:)();
      sub_1000124C8(v149, v150);
      if (v99 >= 2)
      {
        v108 = v137;
        v109 = v140;
        if (!((v99 - 2) >> 16))
        {
          LOWORD(v153) = v99 - 2;
          v110 = a1 + *(v133 + 72);
          v111 = sub_100028EF8();
          *v108 = 0x80000;
          (*(v109 + 104))(v108, enum case for DispatchTimeInterval.microseconds(_:), v93);
          v112 = sub_100028EF8();
          (*(v109 + 8))(v108, v93);
          if (v112)
          {
            if (v111 == 0x8000000000000000 && v112 == -1)
            {
LABEL_93:
              __break(1u);
            }

            if (((v111 / v112) & 0x8000000000000000) == 0)
            {
              if ((v111 / v112) <= 0xFF)
              {
                BYTE2(v153) = v111 / v112;
                BYTE10(v153) = *a1;
                v113 = *(a1 + 72) << 12;
                HIDWORD(v153) = v113 + 4096;
                if (*(a1 + 74) == 1)
                {
                  HIDWORD(v153) = v113 + 36864;
                }

                LODWORD(v154) = -1;
                sub_10029D13C(&v151, &v153, &v157, 0x14uLL);
                v114 = v151;
                v115 = v152;
                sub_10000AB0C(v151, v152);
                sub_1002940E0(7233902, 0xE300000000000000, 770, v114, v115, 1);
                sub_1000124C8(v116, v117);
                sub_1000124C8(v114, v115);
                v118 = v114;
                v50 = v115;
                goto LABEL_32;
              }

              goto LABEL_92;
            }

LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    __break(1u);
    goto LABEL_89;
  }

  __break(1u);
LABEL_64:
  v98 = __OFSUB__(HIDWORD(v94), v94);
  LODWORD(v94) = HIDWORD(v94) - v94;
  if (!v98)
  {
    v94 = v94;
    goto LABEL_67;
  }

  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10028F7E0(uint64_t a1)
{
  v82 = type metadata accessor for SHA256Digest();
  v81 = *(v82 - 8);
  v3 = *(v81 + 64);
  __chkstk_darwin();
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256();
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin();
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = 0;
  v91 = 0;
  v84 = xmmword_100480A90;
  v90 = xmmword_100480A90;
  v10 = sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v11 = swift_allocObject();
  v83 = xmmword_100480F40;
  *(v11 + 16) = xmmword_100480F40;
  *(v11 + 32) = *a1;
  v12 = sub_10002D874(v11);
  v14 = v13;

  sub_10029A0C4(269, v12, v14);
  if (v1)
  {
    sub_1000124C8(v90, *(&v90 + 1));
    v15 = v12;
    v16 = v14;
    return sub_1000124C8(v15, v16);
  }

  v78 = v10;
  v76 = v9;
  v77 = v5;
  sub_1000124C8(v12, v14);
  v79 = a1;
  v18 = NANGenericServiceProtocol.packetData(for:)(3, *(a1 + 40));
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  if (v19 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  else
  {
    v21 = v19;
  }

  v22 = sub_100033AA8(_swiftEmptyArrayStorage);
  v23 = type metadata accessor for BinaryEncoder();
  v24 = swift_allocObject();
  *(v24 + 16) = v84;
  v25 = v24 + 16;
  *(v24 + 32) = v22;
  v88 = v23;
  v26 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v89 = v26;
  v87[0] = v24;

  NANServiceInfo.encode(to:)(v87, 2, v20, v21);
  v75 = v6;
  sub_1000124C8(v20, v21);
  sub_100002A00(v87);
  swift_beginAccess();
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  sub_10000AB0C(v27, v28);

  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    v30 = v79;
    if (v29 != 2 || *(v27 + 16) == *(v27 + 24))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v30 = v79;
    if (v29)
    {
      if (v27 == v27 >> 32)
      {
LABEL_18:
        sub_1000124C8(v27, v28);
        v31 = 0;
LABEL_19:
        v32 = *(v30 + 96);
        if (v32 == 1)
        {
LABEL_20:
          v33 = *(v30 + 24);
          v34 = *(v30 + 5);
          v35 = *(v30 + 29);
          v93[0] = 0;
          v93[1] = v33;
          v94 = v31;
          v95 = *(v30 + 25);
          v96 = v35;
          v97 = v91;
          v98 = v92;
          v99 = *(v30 + 1);
          v100 = v34;
          v101 = 0;
          v102 = -65536;
          v36 = v90;
          sub_10000AB0C(v90, *(&v90 + 1));
          v37 = sub_10029AB84(v93, 0, 34, v36, *(&v36 + 1));
          v39 = v38;
          sub_1000124C8(v36, *(&v36 + 1));
          sub_1002940E0(7233902, 0xE300000000000000, 1284, v37, v39, 0);
          sub_1000124C8(v57, v58);
          sub_1000124C8(v37, v39);
          v16 = v36 >> 64;
          v15 = v36;
          return sub_1000124C8(v15, v16);
        }

        v74 = v31;
        v40 = *(v30 + 48);
        v41 = *(v30 + 56);
        v42 = *(v30 + 64);
        v43 = *(v30 + 72);
        v44 = *(v30 + 80);
        v79 = *(v30 + 88);
        v45 = swift_allocObject();
        *(v45 + 16) = v83;
        *&v84 = v40;
        *(v45 + 32) = v40 + 1;
        *&v83 = v41;
        sub_10000AB0C(v41, v42);
        sub_10005D67C(v43, v44);

        v46 = sub_10002D874(v45);
        v47 = v32;
        v49 = v48;

        sub_10029A0C4(264, v46, v49);
        v71 = v47;
        v72 = v42;
        v73 = v43;
        v78 = v44;
        sub_1000124C8(v46, v49);
        v50 = *(v30 + 8);
        v51 = *(v30 + 16);
        v52 = v76;
        SHA256.init()();
        v53 = String.lowercased()();

        sub_1001F93A4(v53._countAndFlagsBits, v53._object);

        v54 = v77;
        SHA256.finalize()();
        SHA256Digest.withUnsafeBytes<A>(_:)();
        (*(v81 + 8))(v54, v82);
        v55 = v85;
        v56 = v86;
        (*(v80 + 8))(v52, v75);
        sub_10029A0C4(263, v55, v56);
        sub_1000124C8(v55, v56);
        v23 = v83;
        v25 = v72;
        sub_10000AB0C(v83, v72);
        sub_10029A0C4(265, v23, v25);
        v27 = v79;
LABEL_27:
        LOWORD(v31) = v74 | 8;
        sub_1000124C8(v23, v25);
        v62 = v78;
        v63 = v73;
        if (v78 >> 60 == 15)
        {
          sub_10011A270(v84, v23, v25, v73, v78, v27, v71);
        }

        else
        {
          sub_10000AB0C(v73, v78);
          sub_10000AB0C(v63, v62);
          sub_10029A0C4(266, v63, v62);
          sub_10011A270(v84, v23, v25, v63, v62, v27, v71);
          sub_100017554(v63, v62);
          sub_100017554(v63, v62);
        }

        goto LABEL_20;
      }
    }

    else if ((v28 & 0xFF000000000000) == 0)
    {
      goto LABEL_18;
    }
  }

  result = sub_10029A0C4(769, v27, v28);
  if (!v29)
  {
LABEL_32:
    v64 = sub_100033AA8(_swiftEmptyArrayStorage);
    v79 = v27;
    v65 = v64;
    v66 = swift_allocObject();
    *(v66 + 16) = v84;
    *(v66 + 32) = v65;
    v67 = v79;
    v88 = v23;
    v89 = v26;
    v87[0] = v66;

    sub_10029C7B0(v87, 1, v67, v28);
    sub_1000124C8(v67, v28);
    sub_100002A00(v87);
    swift_beginAccess();
    v69 = *(v66 + 16);
    v70 = *(v66 + 24);
    sub_10000AB0C(v69, v70);

    sub_10029A0C4(784, v69, v70);
    sub_1000124C8(v69, v70);
    sub_1000124C8(v67, v28);
    v31 = 1;
    goto LABEL_19;
  }

  if (v29 == 2)
  {
    v60 = *(v27 + 16);
    v59 = *(v27 + 24);
    v61 = v59 - v60;
    if (__OFSUB__(v59, v60))
    {
      __break(1u);
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (!__OFSUB__(HIDWORD(v27), v27))
  {
    v61 = HIDWORD(v27) - v27;
LABEL_31:
    sub_10000AB0C(v27, v28);
    if (v61 >= 0xFFFF)
    {
      sub_1000124C8(v27, v28);
      sub_10000B02C();
      swift_allocError();
      *v68 = xmmword_100481860;
      *(v68 + 16) = 0;
      swift_willThrow();
      sub_1000124C8(v27, v28);
      v16 = *(&v90 + 1);
      v15 = v90;
      return sub_1000124C8(v15, v16);
    }

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t BroadcomDriver<>.start(configuration:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v94 = a3;
  v95 = a2;
  v91 = type metadata accessor for SHA256Digest();
  v90 = *(v91 - 8);
  v6 = *(v90 + 64);
  __chkstk_darwin();
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256();
  v89 = *(v9 - 8);
  v10 = *(v89 + 64);
  __chkstk_darwin();
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = 0;
  v103 = 0;
  v96 = xmmword_100480A90;
  v102 = xmmword_100480A90;
  v13 = sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v14 = swift_allocObject();
  v92 = xmmword_100480F40;
  *(v14 + 16) = xmmword_100480F40;
  v15 = a1;
  *(v14 + 32) = *a1;
  v16 = sub_10002D874(v14);
  v18 = v17;

  sub_10029A0C4(269, v16, v18);
  if (v4)
  {
    sub_1000124C8(v102, *(&v102 + 1));
    v19 = v16;
    v20 = v18;
    return sub_1000124C8(v19, v20);
  }

  v88 = v13;
  v85 = v12;
  v86 = v8;
  v87 = v9;
  sub_1000124C8(v16, v18);
  v22 = NANGenericServiceProtocol.packetData(for:)(3, *(v15 + 5));
  if (v23 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  if (v23 >> 60 == 15)
  {
    v25 = 0xC000000000000000;
  }

  else
  {
    v25 = v23;
  }

  v26 = sub_100033AA8(_swiftEmptyArrayStorage);
  v27 = type metadata accessor for BinaryEncoder();
  v28 = swift_allocObject();
  *(v28 + 16) = v96;
  *(v28 + 32) = v26;
  *&v101[2] = v27;
  v29 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  *&v101[10] = v29;
  v97 = v28;

  NANServiceInfo.encode(to:)(&v97, 2, v24, v25);
  sub_1000124C8(v24, v25);
  sub_100002A00(&v97);
  swift_beginAccess();
  v30 = *(v28 + 16);
  v31 = *(v28 + 24);
  sub_10000AB0C(v30, v31);

  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v32 != 2 || *(v30 + 16) == *(v30 + 24))
    {
      goto LABEL_18;
    }
  }

  else if (v32)
  {
    if (v30 == v30 >> 32)
    {
LABEL_18:
      sub_1000124C8(v30, v31);
      v33 = 0;
LABEL_19:
      v34 = *(v15 + 12);
      if (v34 == 1)
      {
LABEL_20:
        v35 = v15[24];
        v36 = *(v15 + 5);
        v37 = *(v15 + 29);
        *(&v98 + 2) = v103;
        HIWORD(v98) = v104;
        LOBYTE(v97) = 0;
        BYTE1(v97) = v35;
        WORD1(v97) = v33;
        HIDWORD(v97) = *(v15 + 25);
        LOWORD(v98) = v37;
        v99 = *(v15 + 1);
        v100 = v36;
        *v101 = 0;
        *&v101[8] = -65536;
        v38 = v102;
        sub_10000AB0C(v102, *(&v102 + 1));
        type metadata accessor for wl_nan_dp_req(0);
        v40 = v39;
        v41 = sub_100037FF8();
        v42 = v93;
        v43 = v94;
        v54 = sub_10029E5DC(&v97, 0, 34, v38, *(&v38 + 1), v95, v40, &type metadata for UInt16, v94, v93, v41);
        v56 = v55;
        sub_1000124C8(v38, *(&v38 + 1));
        sub_1002949B4(7233902, 0xE300000000000000, 1284, v54, v56, 0, v95, v43, *(v42 + 16));
        sub_1000124C8(v64, v65);
        v66 = v54;
        v67 = v56;
LABEL_34:
        sub_1000124C8(v66, v67);
        v20 = *(&v102 + 1);
        v19 = v102;
        return sub_1000124C8(v19, v20);
      }

      v83 = v33;
      v44 = *(v15 + 6);
      v45 = *(v15 + 7);
      v46 = *(v15 + 8);
      v47 = *(v15 + 9);
      v48 = *(v15 + 10);
      v84 = *(v15 + 11);
      v49 = swift_allocObject();
      *(v49 + 16) = v92;
      *&v96 = v44;
      *(v49 + 32) = v44 + 1;
      *&v92 = v45;
      sub_10000AB0C(v45, v46);
      sub_10005D67C(v47, v48);

      v50 = sub_10002D874(v49);
      v51 = v34;
      v53 = v52;

      sub_10029A0C4(264, v50, v53);
      v81 = v46;
      v80 = v51;
      v82 = v47;
      v88 = v48;
      sub_1000124C8(v50, v53);
      v57 = *(v15 + 1);
      v58 = *(v15 + 2);
      v59 = v85;
      SHA256.init()();
      v60 = String.lowercased()();

      sub_1001F93A4(v60._countAndFlagsBits, v60._object);

      v61 = v86;
      SHA256.finalize()();
      SHA256Digest.withUnsafeBytes<A>(_:)();
      (*(v90 + 8))(v61, v91);
      v62 = v97;
      v63 = v98;
      (*(v89 + 8))(v59, v87);
      sub_10029A0C4(263, v62, v63);
      sub_1000124C8(v62, v63);
      v31 = v92;
      v30 = v81;
      sub_10000AB0C(v92, v81);
      sub_10029A0C4(265, v31, v30);
      v27 = v84;
LABEL_27:
      LOWORD(v33) = v83 | 8;
      sub_1000124C8(v31, v30);
      v71 = v88;
      v72 = v82;
      if (v88 >> 60 == 15)
      {
        sub_10011A270(v96, v31, v30, v82, v88, v27, v80);
      }

      else
      {
        sub_10005D67C(v82, v88);
        sub_10000AB0C(v72, v71);
        sub_10029A0C4(266, v72, v71);
        sub_10011A270(v96, v31, v30, v72, v71, v27, v80);
        sub_100017554(v72, v71);
        sub_100017554(v72, v71);
      }

      goto LABEL_20;
    }
  }

  else if ((v31 & 0xFF000000000000) == 0)
  {
    goto LABEL_18;
  }

  result = sub_10029A0C4(769, v30, v31);
  if (!v32)
  {
LABEL_32:
    v73 = sub_100033AA8(_swiftEmptyArrayStorage);
    v74 = swift_allocObject();
    *(v74 + 16) = v96;
    *(v74 + 32) = v73;
    *&v101[2] = v27;
    *&v101[10] = v29;
    v97 = v74;

    sub_10029C7B0(&v97, 1, v30, v31);
    sub_1000124C8(v30, v31);
    sub_100002A00(&v97);
    swift_beginAccess();
    v76 = v30;
    v77 = *(v74 + 16);
    v78 = *(v74 + 24);
    sub_10000AB0C(v77, v78);

    sub_10029A0C4(784, v77, v78);
    sub_1000124C8(v77, v78);
    sub_1000124C8(v76, v31);
    v33 = 1;
    goto LABEL_19;
  }

  if (v32 == 2)
  {
    v69 = *(v30 + 16);
    v68 = *(v30 + 24);
    v70 = v68 - v69;
    if (__OFSUB__(v68, v69))
    {
      __break(1u);
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (!__OFSUB__(HIDWORD(v30), v30))
  {
    v70 = HIDWORD(v30) - v30;
LABEL_31:
    sub_10000AB0C(v30, v31);
    if (v70 >= 0xFFFF)
    {
      sub_1000124C8(v30, v31);
      sub_10000B02C();
      swift_allocError();
      *v75 = xmmword_100481860;
      *(v75 + 16) = 0;
      swift_willThrow();
      v66 = v30;
      v67 = v31;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_100290DC8(char a1, uint64_t a2)
{
  v4 = *v2;
  v11[0] = a1;
  v11[1] = 0;
  v12 = a2;
  v13 = BYTE2(a2);
  v14 = BYTE3(a2);
  v15 = BYTE4(a2);
  v16 = BYTE5(a2);
  v5 = sub_10004F3B0(v11, &v17);
  v7 = v6;
  sub_1002940E0(7233902, 0xE300000000000000, 1286, v5, v6, 1);
  if (!v3)
  {
    sub_1000124C8(v8, v9);
  }

  return sub_1000124C8(v5, v7);
}

uint64_t BroadcomDriver<>.terminate(datapathID:initiatorAddress:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = 0;
  v11 = a2;
  v12 = BYTE2(a2);
  v13 = BYTE3(a2);
  v14 = BYTE4(a2);
  v15 = BYTE5(a2);
  type metadata accessor for wl_nan_dp_end(0);
  return sub_10029A8F4(1286, v10, a3, v8, a4, a5);
}

uint64_t sub_10029102C(char a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *v4;
  v14 = a1;
  v8 = sub_10004F3B0(&v14, &v15);
  v10 = v9;
  sub_1002940E0(7233902, 0xE300000000000000, a4, v8, v9, 1);
  if (!v5)
  {
    sub_1000124C8(v11, v12);
  }

  return sub_1000124C8(v8, v10);
}

uint64_t sub_100291164(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v10 = v9;
  v78 = a2;
  v79 = a3;
  v17 = type metadata accessor for Data.Deallocator();
  v18 = *(*(v17 - 8) + 64);
  result = __chkstk_darwin();
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a7 - a6;
  if (a7 < a6)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v75 = v8;
  v76 = a4;
  v77 = a5;
  v73 = v22;
  v74 = v20;
  v24 = _swiftEmptyArrayStorage;
  if (v23 >= 0x80)
  {
    v70 = v9;
    v71 = a1;
    v72 = v17;
    v25 = v23 >> 7;
    v80[0] = _swiftEmptyArrayStorage;
    result = sub_10002D838(0, v23 >> 7, 0);
    v24 = v80[0];
    v26 = *(v80[0] + 16);
    v27 = a6 >> 7;
    while (1)
    {
      v81 = a8;
      v28 = *(&v81 + v27);
      v80[0] = v24;
      v29 = v24[3];
      if (v26 >= v29 >> 1)
      {
        result = sub_10002D838((v29 > 1), v26 + 1, 1);
        v24 = v80[0];
      }

      v24[2] = v26 + 1;
      *(v24 + v26 + 32) = v28;
      if (a6 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      a6 += 128;
      ++v27;
      ++v26;
      if (!--v25)
      {
        a1 = v71;
        v17 = v72;
        v10 = v70;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_9:
  v30 = sub_10002D874(v24);
  v32 = v31;

  v33 = sub_1002AB53C(v30, v32);
  result = sub_1000124C8(v30, v32);
  if (!v10)
  {
    if (a1[32] != 2)
    {
      sub_10000B02C();
      swift_allocError();
      *v42 = xmmword_1004817E0;
      *(v42 + 16) = 0;
      return swift_willThrow();
    }

    v34 = *a1;
    v36 = *(a1 + 2);
    v35 = *(a1 + 3);
    v71 = v33;
    v72 = v35;
    v37 = *(a1 + 1);
    v38 = sub_100033AA8(_swiftEmptyArrayStorage);
    v39 = type metadata accessor for BinaryEncoder();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100480A90;
    *(v40 + 32) = v38;
    v80[3] = v39;
    v41 = v34;
    v80[4] = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v80[0] = v40;

    IEEE80211Frame.Management.ActionFrame.encode(to:)(v80, v34, v37);
    sub_100002A00(v80);
    swift_beginAccess();
    v44 = *(v40 + 16);
    v43 = *(v40 + 24);
    sub_10000AB0C(v44, v43);

    v45 = v41 == 4;
    v46 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      v47 = 0;
      if (v46 != 2)
      {
        goto LABEL_30;
      }

      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      v50 = __OFSUB__(v48, v49);
      v51 = v48 - v49;
      if (!v50)
      {
LABEL_22:
        if (v51 >= 0x10000)
        {
          sub_10000B02C();
          swift_allocError();
          *v52 = xmmword_100481860;
          *(v52 + 16) = 0;
          swift_willThrow();
          return sub_1000124C8(v44, v43);
        }

        if (v46 == 2)
        {
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          v50 = __OFSUB__(v53, v54);
          v47 = v53 - v54;
          if (!v50)
          {
            goto LABEL_30;
          }

          __break(1u);
        }

        LODWORD(v47) = HIDWORD(v44) - v44;
        if (__OFSUB__(HIDWORD(v44), v44))
        {
LABEL_62:
          __break(1u);
          return result;
        }

        v47 = v47;
LABEL_30:
        v55 = v47 + 40;
        if (__OFADD__(v47, 40))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        result = swift_slowAlloc();
        v56 = result;
        if (v46 > 1)
        {
          if (v46 != 2)
          {
            goto LABEL_43;
          }

          v59 = *(v44 + 16);
          v58 = *(v44 + 24);
          v50 = __OFSUB__(v58, v59);
          v57 = v58 - v59;
          if (!v50)
          {
LABEL_40:
            if ((v57 & 0x8000000000000000) != 0)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            if (!(v57 >> 16))
            {
LABEL_44:
              *result = v71;
              v60 = v76;
              v61 = v78;
              v62 = v79;
              *(result + 8) = v78;
              *(result + 10) = BYTE2(v61);
              *(result + 11) = BYTE3(v61);
              *(result + 12) = BYTE4(v61);
              *(result + 13) = BYTE5(v61);
              *(result + 14) = v62;
              *(result + 16) = BYTE2(v62);
              *(result + 17) = BYTE3(v62);
              *(result + 18) = BYTE4(v62);
              *(result + 19) = BYTE5(v62);
              *(result + 20) = v60;
              *(result + 22) = BYTE2(v60);
              *(result + 23) = BYTE3(v60);
              *(result + 24) = BYTE4(v60);
              *(result + 25) = BYTE5(v60);
              *(result + 26) = v45;
              *(result + 27) = v77;
              *(result + 28) = 3000;
              *(result + 30) = 0;
              *(result + 38) = v57;
              if (v46 > 1)
              {
                if (v46 != 2 || !__OFSUB__(*(v44 + 24), *(v44 + 16)))
                {
                  goto LABEL_52;
                }

                __break(1u);
              }

              else if (!v46)
              {
LABEL_52:
                Data.copyBytes(to:count:)();
                v63 = v73;
                (*(v74 + 104))(v73, enum case for Data.Deallocator.none(_:), v17);
                v64 = sub_100002DE8(v56, v55, v63);
                v66 = v65;
                sub_1002940E0(7233902, 0xE300000000000000, 2051, v64, v65, 1);
                sub_1000124C8(v67, v68);
                sub_1000124C8(v64, v66);

                return sub_1000124C8(v44, v43);
              }

              if (__OFSUB__(HIDWORD(v44), v44))
              {
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              goto LABEL_52;
            }

            __break(1u);
LABEL_43:
            LOWORD(v57) = 0;
            goto LABEL_44;
          }

          __break(1u);
        }

        else if (!v46)
        {
          LOWORD(v57) = BYTE6(v43);
          goto LABEL_44;
        }

        LODWORD(v57) = HIDWORD(v44) - v44;
        if (__OFSUB__(HIDWORD(v44), v44))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v57 = v57;
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v46)
    {
      v47 = BYTE6(v43);
      goto LABEL_30;
    }

    LODWORD(v51) = HIDWORD(v44) - v44;
    if (__OFSUB__(HIDWORD(v44), v44))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v51 = v51;
    goto LABEL_22;
  }

  return result;
}

uint64_t BroadcomDriver<>.transmit(outOfBoundFrame:from:to:on:mapID:using:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v12;
  v86 = a2;
  v87 = a3;
  v20 = type metadata accessor for Data.Deallocator();
  v21 = *(*(v20 - 8) + 64);
  result = __chkstk_darwin();
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a7 - a6;
  if (a7 < a6)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v83 = v11;
  v84 = a4;
  v85 = a5;
  v81 = v25;
  v82 = v23;
  v27 = _swiftEmptyArrayStorage;
  if (v26 >= 0x80)
  {
    v78 = v12;
    v79 = a1;
    v80 = v20;
    v28 = v26 >> 7;
    v88[0] = _swiftEmptyArrayStorage;
    result = sub_10002D838(0, v26 >> 7, 0);
    v27 = v88[0];
    v29 = *(v88[0] + 16);
    v30 = a6 >> 7;
    while (1)
    {
      v89 = a8;
      v31 = *(&v89 + v30);
      v88[0] = v27;
      v32 = v27[3];
      if (v29 >= v32 >> 1)
      {
        result = sub_10002D838((v32 > 1), v29 + 1, 1);
        v27 = v88[0];
      }

      v27[2] = v29 + 1;
      *(v27 + v29 + 32) = v31;
      if (a6 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      a6 += 128;
      ++v30;
      ++v29;
      if (!--v28)
      {
        a1 = v79;
        v20 = v80;
        v13 = v78;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_9:
  v33 = sub_10002D874(v27);
  v35 = v34;

  v36 = sub_1002AB53C(v33, v35);
  result = sub_1000124C8(v33, v35);
  if (!v13)
  {
    if (a1[32] != 2)
    {
      sub_10000B02C();
      swift_allocError();
      *v45 = xmmword_1004817E0;
      *(v45 + 16) = 0;
      return swift_willThrow();
    }

    v37 = *a1;
    v39 = *(a1 + 2);
    v38 = *(a1 + 3);
    v79 = v36;
    v80 = v38;
    v40 = *(a1 + 1);
    v41 = sub_100033AA8(_swiftEmptyArrayStorage);
    v42 = type metadata accessor for BinaryEncoder();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100480A90;
    *(v43 + 32) = v41;
    v88[3] = v42;
    v44 = v37;
    v88[4] = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v88[0] = v43;

    IEEE80211Frame.Management.ActionFrame.encode(to:)(v88, v37, v40);
    sub_100002A00(v88);
    swift_beginAccess();
    v47 = *(v43 + 16);
    v46 = *(v43 + 24);
    sub_10000AB0C(v47, v46);

    v48 = v44 == 4;
    v49 = v46 >> 62;
    if ((v46 >> 62) > 1)
    {
      v50 = 0;
      if (v49 != 2)
      {
        goto LABEL_30;
      }

      v52 = *(v47 + 16);
      v51 = *(v47 + 24);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      if (!v53)
      {
LABEL_22:
        if (v54 >= 0x10000)
        {
          sub_10000B02C();
          swift_allocError();
          *v55 = xmmword_100481860;
          *(v55 + 16) = 0;
          swift_willThrow();
          v56 = v47;
          v57 = v46;
          return sub_1000124C8(v56, v57);
        }

        if (v49 == 2)
        {
          v59 = *(v47 + 16);
          v58 = *(v47 + 24);
          v53 = __OFSUB__(v58, v59);
          v50 = v58 - v59;
          if (!v53)
          {
            goto LABEL_30;
          }

          __break(1u);
        }

        LODWORD(v50) = HIDWORD(v47) - v47;
        if (__OFSUB__(HIDWORD(v47), v47))
        {
LABEL_63:
          __break(1u);
          return result;
        }

        v50 = v50;
LABEL_30:
        v60 = v50 + 40;
        if (__OFADD__(v50, 40))
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        result = swift_slowAlloc();
        v61 = result;
        if (v49 > 1)
        {
          if (v49 != 2)
          {
            goto LABEL_43;
          }

          v64 = *(v47 + 16);
          v63 = *(v47 + 24);
          v53 = __OFSUB__(v63, v64);
          v62 = v63 - v64;
          if (!v53)
          {
LABEL_40:
            if ((v62 & 0x8000000000000000) != 0)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            if (!(v62 >> 16))
            {
LABEL_44:
              *result = v79;
              v65 = v84;
              v66 = v86;
              v67 = v87;
              *(result + 8) = v86;
              *(result + 10) = BYTE2(v66);
              *(result + 11) = BYTE3(v66);
              *(result + 12) = BYTE4(v66);
              *(result + 13) = BYTE5(v66);
              *(result + 14) = v67;
              *(result + 16) = BYTE2(v67);
              *(result + 17) = BYTE3(v67);
              *(result + 18) = BYTE4(v67);
              *(result + 19) = BYTE5(v67);
              *(result + 20) = v65;
              *(result + 22) = BYTE2(v65);
              *(result + 23) = BYTE3(v65);
              *(result + 24) = BYTE4(v65);
              *(result + 25) = BYTE5(v65);
              *(result + 26) = v48;
              *(result + 27) = v85;
              *(result + 28) = 3000;
              *(result + 30) = 0;
              *(result + 38) = v62;
              v80 = v60;
              if (v49 > 1)
              {
                v68 = v47;
                v69 = v46;
                if (v49 != 2 || !__OFSUB__(*(v47 + 24), *(v47 + 16)))
                {
                  goto LABEL_53;
                }

                __break(1u);
              }

              else if (!v49)
              {
                v68 = v47;
                v69 = v46;
LABEL_53:
                v70 = v68;
                Data.copyBytes(to:count:)();
                v71 = v81;
                (*(v82 + 104))(v81, enum case for Data.Deallocator.none(_:), v20);
                v72 = sub_100002DE8(v61, v80, v71);
                v74 = v73;
                sub_1002949B4(7233902, 0xE300000000000000, 2051, v72, v73, 1, a9, a10, *(a11 + 16));
                sub_1000124C8(v75, v76);
                sub_1000124C8(v72, v74);

                v56 = v70;
                v57 = v69;
                return sub_1000124C8(v56, v57);
              }

              if (__OFSUB__(HIDWORD(v47), v47))
              {
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

              v68 = v47;
              v69 = v46;
              goto LABEL_53;
            }

            __break(1u);
LABEL_43:
            LOWORD(v62) = 0;
            goto LABEL_44;
          }

          __break(1u);
        }

        else if (!v49)
        {
          LOWORD(v62) = BYTE6(v46);
          goto LABEL_44;
        }

        LODWORD(v62) = HIDWORD(v47) - v47;
        if (__OFSUB__(HIDWORD(v47), v47))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v62 = v62;
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v49)
    {
      v50 = BYTE6(v46);
      goto LABEL_30;
    }

    LODWORD(v54) = HIDWORD(v47) - v47;
    if (__OFSUB__(HIDWORD(v47), v47))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v54 = v54;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100291DF4(unsigned __int8 *a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  __chkstk_darwin();
  v77 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for SHA256();
  v76 = *(v78 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin();
  v75 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = xmmword_100480A90;
  v7 = a1[8];
  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v11 = a1[12];
  v12 = a1[13];
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004817D0;
  v81 = v8;
  v82 = v7;
  *(v13 + 32) = v7;
  *(v13 + 33) = v8;
  *(v13 + 34) = v9;
  *(v13 + 35) = v10;
  *(v13 + 36) = v11;
  *(v13 + 37) = v12;
  v14 = sub_10002D874(v13);
  v16 = v15;

  v17 = v86;
  sub_10029A0C4(270, v14, v16);
  if (v17)
  {
    sub_1000124C8(v85, *(&v85 + 1));
    v18 = v14;
    v19 = v16;
    return sub_1000124C8(v18, v19);
  }

  v71 = v12;
  v72 = v10;
  v73 = v9;
  v74 = v11;
  v86 = 0;
  sub_1000124C8(v14, v16);
  v21 = *(a1 + 16);
  v22 = a1;
  if (v21 == 1)
  {
    LODWORD(v23) = 0;
    v24 = v74;
LABEL_6:
    v25 = v22[74] != 2;
    if (v22[74])
    {
      v23 = v23;
    }

    else
    {
      v23 = v23 | 0x10;
    }

    v79 = v22[50];
    v80 = v23;
    v78 = v22[49];
    v26 = v22[48];
    v27 = v22[47];
    v28 = v22[46];
    v29 = *v22;
    v30 = v85;
    v31 = v22[51];
    sub_10000AB0C(v85, *(&v85 + 1));
    v32 = v86;
    v33 = sub_10029AD24((v25 << 8) | (v29 << 24), (v82 << 32) | (v81 << 40) | (v73 << 48) | (v72 << 56), v24 | (v71 << 8) | (v31 << 56) | (v79 << 48) | (v78 << 40) | (v26 << 32) | (v27 << 24) | (v28 << 16), v80 | 0xFFFF00000000, 0, 30, v30, *(&v30 + 1));
    v35 = v34;
    sub_1000124C8(v30, *(&v30 + 1));
    if (!v32)
    {
      sub_1002940E0(7233902, 0xE300000000000000, 1285, v33, v35, 0);
      sub_1000124C8(v55, v56);
      sub_1000124C8(v33, v35);
    }

    v19 = *(&v30 + 1);
    v18 = v30;
    return sub_1000124C8(v18, v19);
  }

  v37 = *(a1 + 10);
  v36 = *(v22 + 11);
  v38 = *(v22 + 12);
  v39 = *(v22 + 13);
  v40 = *(v22 + 14);
  v70 = *(v22 + 15);
  v41 = v36;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100480F40;
  v69 = v37;
  *(v42 + 32) = v37 + 1;
  sub_10000AB0C(v41, v38);
  sub_10005D67C(v39, v40);

  v43 = v21;
  v44 = sub_10002D874(v42);
  v46 = v45;

  v47 = v86;
  sub_10029A0C4(264, v44, v46);
  if (v47)
  {
    sub_1000124C8(v44, v46);
    sub_10011A270(v69, v41, v38, v39, v40, v70, v43);
    v19 = *(&v85 + 1);
    v18 = v85;
    return sub_1000124C8(v18, v19);
  }

  v64 = v43;
  v65 = v40;
  v66 = v39;
  v67 = v41;
  v68 = v38;
  sub_1000124C8(v44, v46);
  v48 = *(v22 + 7);
  v49 = *(v22 + 8);
  v50 = v75;
  SHA256.init()();
  v51 = String.lowercased()();

  sub_1001F93A4(v51._countAndFlagsBits, v51._object);

  v52 = v77;
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v79 + 8))(v52, v80);
  v53 = v83;
  v54 = v84;
  (*(v76 + 8))(v50, v78);
  sub_10029A0C4(263, v53, v54);
  sub_1000124C8(v53, v54);
  v57 = v67;
  v58 = v68;
  sub_10000AB0C(v67, v68);
  sub_10029A0C4(265, v57, v58);
  sub_1000124C8(v57, v58);
  v24 = v74;
  v86 = 0;
  v59 = v70;
  if (v65 >> 60 == 15)
  {
    sub_10011A270(v69, v57, v68, v66, v65, v70, v64);
LABEL_19:
    LODWORD(v23) = 8;
    goto LABEL_6;
  }

  v60 = v69;
  v61 = v66;
  v62 = v65;
  sub_10000AB0C(v66, v65);
  sub_10000AB0C(v61, v62);
  v63 = v86;
  sub_10029A0C4(266, v61, v62);
  if (!v63)
  {
    v86 = 0;
    sub_10011A270(v60, v57, v68, v61, v62, v59, v64);
    sub_100017554(v61, v62);
    sub_100017554(v61, v62);
    goto LABEL_19;
  }

  sub_1000124C8(v85, *(&v85 + 1));
  sub_100017554(v61, v62);
  sub_100017554(v61, v62);
  return sub_10011A270(v60, v57, v68, v61, v62, v59, v64);
}

uint64_t BroadcomDriver<>.send(datapathResponse:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a4;
  v92 = a2;
  v93 = a3;
  v5 = type metadata accessor for SHA256Digest();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  __chkstk_darwin();
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SHA256();
  v87 = *(v89 - 8);
  v8 = *(v87 + 64);
  __chkstk_darwin();
  v86 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = xmmword_100480A90;
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  v15 = a1[13];
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004817D0;
  v95 = v11;
  v96 = v10;
  *(v16 + 32) = v10;
  *(v16 + 33) = v11;
  *(v16 + 34) = v12;
  *(v16 + 35) = v13;
  *(v16 + 36) = v14;
  *(v16 + 37) = v15;
  v17 = sub_10002D874(v16);
  v19 = v18;

  v20 = v105;
  sub_10029A0C4(270, v17, v19);
  if (v20)
  {
    sub_1000124C8(v104, *(&v104 + 1));
    return sub_1000124C8(v17, v19);
  }

  v82 = v15;
  v83 = v14;
  v105 = 0;
  v84 = v13;
  v85 = v12;
  sub_1000124C8(v17, v19);
  v22 = *(a1 + 16);
  v23 = a1;
  if (v22 == 1)
  {
    v24 = 0;
LABEL_5:
    v25 = v94;
    v27 = v95;
    v26 = v96;
    v29 = v84;
    v28 = v85;
    v31 = v82;
    v30 = v83;
LABEL_6:
    v32 = v23[74];
    v33 = v32 != 2;
    v34 = v32 == 0;
    v35 = *v23;
    if (v34)
    {
      v24 |= 0x10u;
    }

    v36 = *(v23 + 25);
    LOBYTE(v97) = 0;
    *(&v97 + 1) = v33;
    BYTE3(v97) = v35;
    *(&v97 + 4) = 0;
    BYTE12(v97) = v26;
    BYTE13(v97) = v27;
    BYTE14(v97) = v28;
    HIBYTE(v97) = v29;
    v98 = v30;
    v99 = v31;
    v100 = *(v23 + 46);
    v101 = v36;
    v102 = v24;
    v103 = -65536;
    v37 = v104;
    sub_10000AB0C(v104, *(&v104 + 1));
    type metadata accessor for wl_nan_dp_resp(0);
    v39 = v38;
    v40 = sub_100037FF8();
    v41 = v93;
    v42 = v92;
    v43 = v105;
    v44 = sub_10029E5DC(&v97, 0, 30, v37, *(&v37 + 1), v92, v39, &type metadata for UInt16, v93, v25, v40);
    if (v43)
    {
      sub_1000124C8(v104, *(&v104 + 1));
      return sub_1000124C8(v37, *(&v37 + 1));
    }

    v58 = v44;
    v59 = v45;
    sub_1000124C8(v37, *(&v37 + 1));
    sub_1002949B4(7233902, 0xE300000000000000, 1285, v58, v59, 0, v42, v41, *(v25 + 16));
    sub_1000124C8(v66, v67);
    sub_1000124C8(v58, v59);
    return sub_1000124C8(v104, *(&v104 + 1));
  }

  v47 = *(a1 + 10);
  v46 = *(a1 + 11);
  v48 = *(a1 + 12);
  v49 = *(a1 + 13);
  v50 = *(a1 + 14);
  v81 = *(a1 + 15);
  v51 = v46;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100480F40;
  v80 = v47;
  *(v52 + 32) = v47 + 1;
  sub_10000AB0C(v51, v48);
  sub_10005D67C(v49, v50);

  v53 = v22;
  v54 = sub_10002D874(v52);
  v56 = v55;

  v57 = v105;
  sub_10029A0C4(264, v54, v56);
  if (v57)
  {
    sub_1000124C8(v54, v56);
    sub_10011A270(v80, v51, v48, v49, v50, v81, v53);
    return sub_1000124C8(v104, *(&v104 + 1));
  }

  v75 = v50;
  v77 = v53;
  v78 = v51;
  v79 = v48;
  v76 = v49;
  sub_1000124C8(v54, v56);
  v60 = *(v23 + 7);
  v61 = *(v23 + 8);
  v62 = v86;
  SHA256.init()();
  v63 = String.lowercased()();

  sub_1001F93A4(v63._countAndFlagsBits, v63._object);

  v64 = v88;
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v90 + 8))(v64, v91);
  v65 = v97;
  (*(v87 + 8))(v62, v89);
  sub_10029A0C4(263, v65, *(&v65 + 1));
  sub_1000124C8(v65, *(&v65 + 1));
  v68 = v78;
  v69 = v79;
  sub_10000AB0C(v78, v79);
  sub_10029A0C4(265, v68, v69);
  sub_1000124C8(v68, v69);
  v105 = 0;
  v70 = v76;
  if (v75 >> 60 == 15)
  {
    sub_10011A270(v80, v68, v69, v76, v75, v81, v77);
    v24 = 8;
    goto LABEL_5;
  }

  v71 = v75;
  sub_10005D67C(v76, v75);
  sub_10000AB0C(v70, v71);
  v72 = v105;
  sub_10029A0C4(266, v70, v71);
  v25 = v94;
  v27 = v95;
  v26 = v96;
  v73 = v70;
  v29 = v84;
  v28 = v85;
  v105 = v72;
  v31 = v82;
  v30 = v83;
  if (!v72)
  {
    sub_10011A270(v80, v78, v79, v73, v71, v81, v77);
    sub_100017554(v76, v71);
    sub_100017554(v76, v71);
    v24 = 8;
    goto LABEL_6;
  }

  v74 = v73;
  sub_1000124C8(v104, *(&v104 + 1));
  sub_100017554(v74, v71);
  sub_100017554(v74, v71);
  return sub_10011A270(v80, v78, v79, v74, v71, v81, v77);
}

uint64_t sub_100292CD0(unint64_t a1)
{
  v3 = *v1;
  v10[0] = a1;
  v10[1] = HIBYTE(a1) != 2;
  v11 = 0;
  v4 = sub_10004F3B0(v10, &v12);
  v6 = v5;
  sub_1002940E0(7233902, 0xE300000000000000, 1294, v4, v5, 1);
  if (!v2)
  {
    sub_1000124C8(v7, v8);
  }

  return sub_1000124C8(v4, v6);
}

uint64_t BroadcomDriver<>.send(datapathConfirmation:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a1;
  v9[1] = HIBYTE(a1) != 2;
  v10 = 0;
  type metadata accessor for wl_nan_dp_conf(0);
  return sub_10029A8F4(1294, v9, a2, v7, a3, a4);
}

uint64_t BroadcomDriver<>.getMatchingSlotCount(peer:)()
{
  sub_10000B02C();
  swift_allocError();
  *v0 = xmmword_1004817E0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_100292EA4(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v29 = result + 32;
    while (1)
    {
      v4 = v29 + 16 * v3;
      v5 = *(v4 + 2);
      v6 = *(v4 + 8);
      v38 = xmmword_100480A90;
      v7 = *(v6 + 16);
      swift_bridgeObjectRetain_n();
      if (v7)
      {
        v8 = 0;
        v9 = (v6 + 80);
        while (v8 < *(v6 + 16))
        {
          v10 = *v9;
          v11 = *(v9 - 1);
          v12 = *(v9 - 16);
          v13 = *(v9 - 4);
          v14 = *(v9 - 3);
          v15 = *(v9 - 5);
          LOWORD(v31) = *(v9 - 24);
          v32 = v15;
          v33 = v13;
          v34 = v14;
          v35 = v12;
          v36 = v11;
          v37 = v10;
          sub_10005D4F4(v15, v13, v14);

          sub_10029BE3C(&v38, &v31);
          if (v1)
          {

            sub_10002F75C(v32, v33, v34);

            sub_1000124C8(v38, *(&v38 + 1));
            __break(1u);
            goto LABEL_48;
          }

          ++v8;
          sub_10002F75C(v32, v33, v34);

          v9 += 56;
          if (v7 == v8)
          {
            v17 = *(&v38 + 1);
            v16 = v38;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v16 = 0;
      v17 = 0xC000000000000000;
LABEL_10:

      v31 = 0;
      v32 = 0;
      v18 = sub_1000E5540(0, 4uLL, v5);
      if (v1)
      {
        break;
      }

      BYTE4(v31) = v18 & 0xF;
      v19 = *(v6 + 16);
      if (v19 > 0xFF)
      {
        goto LABEL_41;
      }

      BYTE6(v32) = *(v6 + 16);
      if ((v5 & 0x20) != 0)
      {
        v20 = 8200;
      }

      else
      {
        v20 = 0x2000;
      }

      if ((v5 & 0x10) != 0)
      {
        v21 = 8201;
      }

      else
      {
        v21 = v20;
      }

      if ((v5 & 0x30) != 0)
      {
        if ((v5 & 0x10) != 0)
        {
          v22 = 9;
        }

        else
        {
          v22 = 8;
        }

        WORD1(v31) = v22;
      }

      if (!v19)
      {
        WORD1(v31) = v21;
      }

      v23 = v17 >> 62;
      if ((v17 >> 62) > 1)
      {
        if (v23 == 2)
        {
          v26 = *(v16 + 16);
          v25 = *(v16 + 24);
          v27 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (v27)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else if (v23)
      {
        LODWORD(v24) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_46;
        }

        v24 = v24;
      }

      else
      {
        v24 = BYTE6(v17);
      }

      v27 = __OFADD__(v24, 16);
      v28 = v24 + 16;
      if (v27)
      {
        goto LABEL_42;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v28 >> 16)
      {
        goto LABEL_44;
      }

      LOWORD(v31) = v28;
      sub_10029C55C(&v31, &v33, v30, v16, v17);
      result = sub_1000124C8(v16, v17);
      if (++v3 == v2)
      {
        return result;
      }
    }

LABEL_48:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t BroadcomDriver<>.update(availability:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v32 = result + 32;
    while (1)
    {
      v7 = v32 + 16 * v6;
      v8 = *(v7 + 2);
      v9 = *(v7 + 8);
      v45 = xmmword_100480A90;
      v10 = *(v9 + 16);
      swift_bridgeObjectRetain_n();
      if (v10)
      {
        v11 = 0;
        v12 = (v9 + 80);
        while (v11 < *(v9 + 16))
        {
          v13 = *v12;
          v14 = *(v12 - 1);
          v15 = *(v12 - 16);
          v16 = *(v12 - 4);
          v17 = *(v12 - 3);
          v18 = *(v12 - 5);
          LOWORD(v38) = *(v12 - 24);
          v39 = v18;
          v40 = v16;
          v41 = v17;
          v42 = v15;
          v43 = v14;
          v44 = v13;
          sub_10005D4F4(v18, v16, v17);

          sub_10029BE3C(&v45, &v38);
          if (v4)
          {

            sub_10002F75C(v39, v40, v41);

            sub_1000124C8(v45, *(&v45 + 1));
            __break(1u);
            goto LABEL_49;
          }

          ++v11;
          sub_10002F75C(v39, v40, v41);

          v12 += 56;
          if (v10 == v11)
          {
            v20 = *(&v45 + 1);
            v19 = v45;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v19 = 0;
      v20 = 0xC000000000000000;
LABEL_10:

      v38 = 0;
      v39 = 0;
      v21 = sub_1000E5540(0, 4uLL, v8);
      if (v4)
      {
        break;
      }

      BYTE4(v38) = v21 & 0xF;
      v22 = *(v9 + 16);
      if (v22 > 0xFF)
      {
        goto LABEL_42;
      }

      BYTE6(v39) = *(v9 + 16);
      if ((v8 & 0x20) != 0)
      {
        v23 = 8200;
      }

      else
      {
        v23 = 0x2000;
      }

      if ((v8 & 0x10) != 0)
      {
        v24 = 8201;
      }

      else
      {
        v24 = v23;
      }

      if ((v8 & 0x30) != 0)
      {
        if ((v8 & 0x10) != 0)
        {
          v25 = 9;
        }

        else
        {
          v25 = 8;
        }

        WORD1(v38) = v25;
      }

      if (!v22)
      {
        WORD1(v38) = v24;
      }

      v26 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v26 == 2)
        {
          v29 = *(v19 + 16);
          v28 = *(v19 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else if (v26)
      {
        LODWORD(v27) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_47;
        }

        v27 = v27;
      }

      else
      {
        v27 = BYTE6(v20);
      }

      v30 = __OFADD__(v27, 16);
      v31 = v27 + 16;
      if (v30)
      {
        goto LABEL_43;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v31 >> 16)
      {
        goto LABEL_45;
      }

      LOWORD(v38) = v31;
      sub_10029C664(&v38, &v40, v36, v19, v20, a2, a3, a4, &v37);
      result = sub_1000124C8(v19, v20);
      if (++v6 == v5)
      {
        return result;
      }
    }

LABEL_49:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1002934C8(unint64_t a1, uint64_t a2)
{
  sub_1002940E0(7233902, 0xE300000000000000, 277, 0, 0x4000000000000, 0);
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_10003462C(v5, v6);
    sub_1000124C8(v7, v8);
    LODWORD(v56) = v9 & 0xFFEFFFFF | ((a2 != 0) << 20);
    v10 = sub_10004F3B0(&v56, &v56 + 4);
    v12 = v11;
    sub_1002940E0(7233902, 0xE300000000000000, 277, v10, v11, 1);
    sub_1000124C8(v13, v14);
    sub_1000124C8(v10, v12);
    v15 = 100;
    if (a2)
    {
      v15 = a1;
    }

    if (v15 >> 16)
    {
      goto LABEL_47;
    }

    LOWORD(v56) = v15;
    v16 = sub_10004F3B0(&v56, &v56 + 2);
    v18 = v17;
    sub_1002940E0(7233902, 0xE300000000000000, 270, v16, v17, 1);
    sub_1000124C8(v19, v20);
    sub_1000124C8(v16, v18);
    if (a2)
    {
      v21 = *(a2 + 16);
      if (v21)
      {
        v55 = _swiftEmptyArrayStorage;
        sub_1000C08B4(0, v21, 0);
        v22 = _swiftEmptyArrayStorage;
        v23 = (a2 + 56);
        while (1)
        {
          v24 = *(v23 - 24);
          v25 = *(v23 - 1);
          v26 = *v23;
          v54 = 0;
          v53 = 0;
          v52 = v24;
          v27 = v26 >> 62;
          if ((v26 >> 62) > 1)
          {
            if (v27 != 2)
            {
              LOBYTE(v28) = 0;
              goto LABEL_23;
            }

            v30 = *(v25 + 16);
            v29 = *(v25 + 24);
            v28 = v29 - v30;
            if (__OFSUB__(v29, v30))
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (!v27)
            {
              v28 = HIWORD(v26);
              goto LABEL_23;
            }

            if (__OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_43;
            }

            v28 = HIDWORD(v25) - v25;
          }

          sub_10000AB0C(v25, v26);
          if ((v28 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
          }

          if (v28 > 0xFF)
          {
            goto LABEL_42;
          }

LABEL_23:
          LOBYTE(v53) = v28;
          v31 = sub_100170260(&v52, &v55);
          v33 = v32;
          *&v59 = v31;
          *(&v59 + 1) = v32;
          v57 = &type metadata for Data;
          v58 = &protocol witness table for Data;
          *&v56 = v25;
          *(&v56 + 1) = v26;
          v34 = sub_100029B34(&v56, &type metadata for Data);
          v35 = *v34;
          v36 = v34[1] >> 62;
          v50 = v22;
          if (v36 > 1)
          {
            if (v36 != 2)
            {
LABEL_36:
              Data._Representation.append(contentsOf:)();
              goto LABEL_37;
            }

            v37 = v33;
            v38 = *(v35 + 16);
            v47 = *(v35 + 24);
            v48 = v21;
            sub_10000AB0C(v25, v26);
            v49 = v37;
            sub_10000AB0C(v31, v37);
            if (__DataStorage._bytes.getter() && __OFSUB__(v38, __DataStorage._offset.getter()))
            {
              goto LABEL_48;
            }

            if (__OFSUB__(v47, v38))
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (!v36)
            {
              goto LABEL_36;
            }

            v48 = v21;
            v49 = v33;
            v39 = v35;
            if (v35 >> 32 < v35)
            {
              goto LABEL_45;
            }

            sub_10000AB0C(v25, v26);
            sub_10000AB0C(v31, v33);
            if (__DataStorage._bytes.getter() && __OFSUB__(v39, __DataStorage._offset.getter()))
            {
              goto LABEL_49;
            }
          }

          __DataStorage._length.getter();
          Data._Representation.append(contentsOf:)();
          sub_1000124C8(v31, v49);
          sub_1000124C8(v25, v26);
          v21 = v48;
LABEL_37:
          sub_100002A00(&v56);
          v40 = v59;
          v22 = v50;
          v55 = v50;
          v42 = v50[2];
          v41 = v50[3];
          if (v42 >= v41 >> 1)
          {
            v51 = v59;
            sub_1000C08B4((v41 > 1), v42 + 1, 1);
            v40 = v51;
            v22 = v55;
          }

          v23 += 4;
          v22[2] = v42 + 1;
          v43 = &v22[3 * v42];
          *(v43 + 8) = 271;
          *(v43 + 5) = v40;
          if (!--v21)
          {
            v56 = xmmword_100480A90;
            sub_100288EA0(v22);

            v44 = v56;
            sub_10000AB0C(v56, *(&v56 + 1));
            sub_1000124C8(v44, *(&v44 + 1));
            sub_1002940E0(7233902, 0xE300000000000000, 284, v44, *(&v44 + 1), 1);
            sub_1000124C8(v45, v46);
            sub_1000124C8(v44, *(&v44 + 1));
            return;
          }
        }
      }
    }
  }
}

uint64_t BroadcomDriver<>.update(discoveryBeaconTransmissionSchedule:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  result = sub_10029AA78(0x115u, a3, &type metadata for UInt32, a4, a5, &v53);
  if (!v5)
  {
    LODWORD(v54) = v53 & 0xFFEFFFFF | ((a2 != 0) << 20);
    sub_10029A8F4(277, &v54, a3, &type metadata for UInt32, a4, v6);
    v12 = 100;
    if (a2)
    {
      v12 = a1;
    }

    if (v12 >> 16)
    {
      goto LABEL_47;
    }

    LOWORD(v54) = v12;
    result = sub_10029A8F4(270, &v54, a3, &type metadata for UInt16, a4, v6);
    if (a2)
    {
      v13 = *(a2 + 16);
      if (v13)
      {
        v42 = a3;
        v43 = a4;
        v52 = _swiftEmptyArrayStorage;
        sub_1000C08B4(0, v13, 0);
        v14 = _swiftEmptyArrayStorage;
        v15 = (a2 + 56);
        v44 = v6;
        v16 = v13;
        while (1)
        {
          v17 = *(v15 - 24);
          v18 = *(v15 - 1);
          v19 = *v15;
          v51 = 0;
          v50 = 0;
          v49 = v17;
          v20 = v19 >> 62;
          if ((v19 >> 62) > 1)
          {
            if (v20 != 2)
            {
              LOBYTE(v21) = 0;
              goto LABEL_23;
            }

            v23 = *(v18 + 16);
            v22 = *(v18 + 24);
            v21 = v22 - v23;
            if (__OFSUB__(v22, v23))
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (!v20)
            {
              v21 = HIWORD(v19);
              goto LABEL_23;
            }

            if (__OFSUB__(HIDWORD(v18), v18))
            {
              goto LABEL_43;
            }

            v21 = HIDWORD(v18) - v18;
          }

          sub_10000AB0C(v18, v19);
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
          }

          if (v21 > 0xFF)
          {
            goto LABEL_42;
          }

LABEL_23:
          LOBYTE(v50) = v21;
          v24 = sub_100170260(&v49, &v52);
          v26 = v25;
          *&v57 = v24;
          *(&v57 + 1) = v25;
          v55 = &type metadata for Data;
          v56 = &protocol witness table for Data;
          *&v54 = v18;
          *(&v54 + 1) = v19;
          v27 = sub_100029B34(&v54, &type metadata for Data);
          v28 = *v27;
          v29 = v27[1] >> 62;
          if (v29 > 1)
          {
            if (v29 != 2)
            {
LABEL_36:
              Data._Representation.append(contentsOf:)();
              goto LABEL_37;
            }

            v30 = *(v28 + 16);
            v45 = *(v28 + 24);
            v47 = v16;
            sub_10000AB0C(v18, v19);
            sub_10000AB0C(v24, v26);
            if (__DataStorage._bytes.getter() && __OFSUB__(v30, __DataStorage._offset.getter()))
            {
              goto LABEL_48;
            }

            if (__OFSUB__(v45, v30))
            {
              goto LABEL_46;
            }

            __DataStorage._length.getter();
            Data._Representation.append(contentsOf:)();
            v31 = v24;
            v32 = v26;
          }

          else
          {
            if (!v29)
            {
              goto LABEL_36;
            }

            v46 = v24;
            v47 = v16;
            v33 = v26;
            v34 = v28;
            if (v28 >> 32 < v28)
            {
              goto LABEL_45;
            }

            sub_10000AB0C(v18, v19);
            sub_10000AB0C(v46, v33);
            if (__DataStorage._bytes.getter() && __OFSUB__(v34, __DataStorage._offset.getter()))
            {
              goto LABEL_49;
            }

            __DataStorage._length.getter();
            Data._Representation.append(contentsOf:)();
            v31 = v46;
            v32 = v33;
          }

          sub_1000124C8(v31, v32);
          sub_1000124C8(v18, v19);
          v6 = v44;
          v16 = v47;
LABEL_37:
          sub_100002A00(&v54);
          v35 = v57;
          v52 = v14;
          v37 = v14[2];
          v36 = v14[3];
          if (v37 >= v36 >> 1)
          {
            v48 = v57;
            sub_1000C08B4((v36 > 1), v37 + 1, 1);
            v35 = v48;
            v14 = v52;
          }

          v15 += 4;
          v14[2] = v37 + 1;
          v38 = &v14[3 * v37];
          *(v38 + 8) = 271;
          *(v38 + 5) = v35;
          if (!--v16)
          {
            v54 = xmmword_100480A90;
            sub_100288EA0(v14);

            v39 = v54;
            sub_10000AB0C(v54, *(&v54 + 1));
            sub_1000124C8(v39, *(&v39 + 1));
            sub_1002949B4(7233902, 0xE300000000000000, 284, v39, *(&v39 + 1), 1, v42, v43, *(v6 + 16));
            sub_1000124C8(v40, v41);
            return sub_1000124C8(v39, *(&v39 + 1));
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100293FD4@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  result = AppleBroadcomDriver.init(device:role:name:)(v10, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_100294064@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7CoreP2P19AppleBroadcomDriver_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1002940E0(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t *a5, int a6)
{
  v8 = v6;
  v95 = a6;
  v96 = a3;
  v101 = a5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v15) = *(v6 + 32);
  v94 = v7;
  Logger.init(subsystem:category:)();
  v17 = String.count.getter();
  v100 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v18 = v17;
  v97 = a1;
  v98 = a2;
  v99 = v16;
  swift_getKeyPath();
  v19 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v21 = v20;

  if (v21)
  {
LABEL_86:
    __break(1u);
    return;
  }

  v22 = v19;
  v23 = __OFADD__(v100, v19);
  v24 = v100 + v19;
  if (v23)
  {
    goto LABEL_69;
  }

  v25 = v101 >> 62;
  if ((v101 >> 62) <= 1)
  {
    if (!v25)
    {
      v26 = BYTE6(v101);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v25 != 2)
  {
    v26 = 0;
    goto LABEL_14;
  }

  v28 = *(a4 + 16);
  v27 = *(a4 + 24);
  v23 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v23)
  {
    __break(1u);
LABEL_11:
    LODWORD(v26) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v26 = v26;
  }

LABEL_14:
  v23 = __OFADD__(v26, 8);
  v29 = v26 + 8;
  if (v23)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v23 = __OFADD__(v29, 3);
  v30 = v29 + 3;
  if (v23)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v92 = v13;
  v93 = v12;
  v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = v24 + (v30 & 0xFFFFFFFFFFFFFFFCLL);
  if (__OFADD__(v24, v30 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v33 = swift_slowAlloc();
  if (v32 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v34 = v33;
  if (v32)
  {
    bzero(v33, v22 + v18 + v31 + 1);
  }

  v35 = v98;

  v36 = v35;
  v37 = v94;
  sub_1002890F8(v97, v36, v34);
  v38 = v37;
  v39 = v95;
  v40 = &v34[v100];
  *v40 = 0x8000;
  v40[2] = 1;
  v40[3] = v39 & 1;
  if (v25 <= 1)
  {
    if (!v25)
    {
      v41 = BYTE6(v101);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v25 != 2)
  {
    v41 = 0;
    goto LABEL_30;
  }

  v43 = *(a4 + 16);
  v42 = *(a4 + 24);
  v23 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v23)
  {
    __break(1u);
LABEL_27:
    LODWORD(v41) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v41 = v41;
  }

LABEL_30:
  v23 = __OFADD__(v41, 4);
  v44 = v41 + 4;
  if (v23)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v44 >> 16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v45 = &v34[v24];
  *v45 = v96;
  *(v45 + 1) = v44;
  *(v45 + 1) = 1;
  v45[8] = 0;
  if (__OFADD__(v24, 8))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v25 > 1)
  {
    if (v25 != 2 || !__OFSUB__(*(a4 + 24), *(a4 + 16)))
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  else if (!v25)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_42:
  Data.copyBytes(to:count:)();
  v46 = v8[5];
  v47 = v8[2];
  v48 = v8[3];

  v49 = &v34[v32];
  if (v39)
  {
    AppleDevice.setRequest(requestType:data:on:)(0xFFFFFFFFuLL, v34, v49, 0, v47, v48);
    if (!v38)
    {
      v50 = v100;
      goto LABEL_53;
    }

LABEL_46:

    v51 = v98;

    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v100 = v55;
      v101 = swift_slowAlloc();
      v102 = v101;
      *v54 = 138413314;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v56;
      *v55 = v56;
      *(v54 + 12) = 2080;
      if (v39)
      {
        v57 = 7628147;
      }

      else
      {
        v57 = 7628135;
      }

      v58 = sub_100002320(v57, 0xE300000000000000, &v102);

      *(v54 + 14) = v58;
      *(v54 + 22) = 2080;
      *(v54 + 24) = sub_100002320(v97, v51, &v102);
      *(v54 + 32) = 512;
      *(v54 + 34) = v96;
      *(v54 + 36) = 2080;
      v59 = sub_100170260(v34, &v34[v32]);
      v61 = v60;
      v62 = Data.hexString.getter(v59, v60);
      v64 = v63;
      sub_1000124C8(v59, v61);
      v65 = sub_100002320(v62, v64, &v102);

      *(v54 + 38) = v65;
      _os_log_impl(&_mh_execute_header, v52, v53, "Error %@ while sending %s %s: %hu %s", v54, 0x2Eu);
      sub_100016290(v100, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    v67 = v92;
    v66 = v93;
    goto LABEL_66;
  }

  AppleDevice.getRequest(requestType:data:on:)(0xFFFFFFFFuLL, v34, v49, 0, v47, v48);
  if (v38)
  {
    goto LABEL_46;
  }

  v50 = 0;
LABEL_53:

  v68 = v50 + v22;
  if (__OFADD__(v50, v22))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v69 = v68 + 8;
  if (__OFADD__(v68, 8))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v70 = &v34[v68];
  v71 = *(v70 + 1);
  if (v71)
  {
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v102 = v101;
      *v74 = 67109378;
      *(v74 + 4) = v71;
      *(v74 + 8) = 2080;
      v75 = sub_100170260(v34, &v34[v32]);
      v77 = v76;
      v78 = Data.hexString.getter(v75, v76);
      v80 = v79;
      sub_1000124C8(v75, v77);
      v81 = sub_100002320(v78, v80, &v102);

      *(v74 + 10) = v81;
      _os_log_impl(&_mh_execute_header, v72, v73, "Error returned in command status: %u %s", v74, 0x12u);
      sub_100002A00(v101);
    }

    v67 = v92;
    v66 = v93;
    if ((v71 & 0x80000000) == 0)
    {
      sub_10000B02C();
      swift_allocError();
      *v82 = v71;
      *(v82 + 8) = 0;
      *(v82 + 16) = 0;
LABEL_66:
      swift_willThrow();

      (*(v67 + 8))(v99, v66);
      return;
    }

    goto LABEL_83;
  }

  v83 = *(v70 + 1);
  v84 = v69 + v83;
  if (__OFADD__(v69, v83))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v23 = __OFSUB__(v84, 4);
  v85 = v84 - 4;
  if (v23)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v32 < v85)
  {
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    v88 = os_log_type_enabled(v86, v87);
    v67 = v92;
    v66 = v93;
    if (v88)
    {
      v89 = swift_slowAlloc();
      *v89 = 67109120;
      _os_log_impl(&_mh_execute_header, v86, v87, "Error while parsing returned command: %u", v89, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v90 = 0;
    *(v90 + 8) = 0;
    *(v90 + 16) = 2;
    goto LABEL_66;
  }

  sub_1002AAFAC(&v34[v69], v83);

  (*(v92 + 8))(v99, v93);
}

void sub_1002949B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v116 = a6;
  v117 = a5;
  v113 = a3;
  v106 = a8;
  v103 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v107 = AssociatedTypeWitness;
  v108 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v109 = &v100 - v17;
  v18 = type metadata accessor for Logger();
  v102 = *(v18 - 8);
  v19 = *(v102 + 64);
  __chkstk_darwin();
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a9 + 32);
  v104 = a9;
  v105 = v9;
  v22(a7, a9);
  Logger.init(subsystem:category:)();
  v23 = String.count.getter();
  v24 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v25 = v23;
  v112 = a1;
  v26 = a2;
  v115 = v21;
  swift_getKeyPath();
  v27 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v29 = v28;

  if (v29)
  {
LABEL_87:
    __break(1u);
    return;
  }

  v110 = v27;
  v30 = __OFADD__(v24, v27);
  v31 = v24 + v27;
  if (v30)
  {
    goto LABEL_69;
  }

  v32 = v117 >> 62;
  if ((v117 >> 62) <= 1)
  {
    if (!v32)
    {
      v33 = BYTE6(v117);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v32 != 2)
  {
    v33 = 0;
    goto LABEL_14;
  }

  v35 = *(a4 + 16);
  v34 = *(a4 + 24);
  v30 = __OFSUB__(v34, v35);
  v33 = v34 - v35;
  if (v30)
  {
    __break(1u);
LABEL_11:
    LODWORD(v33) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v33 = v33;
  }

LABEL_14:
  v30 = __OFADD__(v33, 8);
  v36 = v33 + 8;
  if (v30)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v30 = __OFADD__(v36, 3);
  v37 = v36 + 3;
  if (v30)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v114 = v24;
  v101 = v18;
  v38 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = v31 + (v37 & 0xFFFFFFFFFFFFFFFCLL);
  if (__OFADD__(v31, v37 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v40 = swift_slowAlloc();
  if (v39 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v41 = v40;
  if (v39)
  {
    bzero(v40, v110 + v25 + v38 + 1);
  }

  v42 = v111;
  sub_1002890F8(v112, v26, v41);
  v43 = v116;
  v44 = &v41[v114];
  *v44 = 0x8000;
  v44[2] = 1;
  v44[3] = v43 & 1;
  if (v32 <= 1)
  {
    v45 = v113;
    if (!v32)
    {
      v46 = BYTE6(v117);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v45 = v113;
  if (v32 != 2)
  {
    v46 = 0;
    goto LABEL_30;
  }

  v48 = *(a4 + 16);
  v47 = *(a4 + 24);
  v30 = __OFSUB__(v47, v48);
  v46 = v47 - v48;
  if (v30)
  {
    __break(1u);
LABEL_27:
    LODWORD(v46) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v46 = v46;
  }

LABEL_30:
  v30 = __OFADD__(v46, 4);
  v49 = v46 + 4;
  if (v30)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if ((v49 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v49 >> 16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v50 = &v41[v31];
  *v50 = v45;
  *(v50 + 1) = v49;
  *(v50 + 1) = 1;
  v50[8] = 0;
  if (__OFADD__(v31, 8))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v100 = v26;
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      v51 = v42;
      goto LABEL_43;
    }

    v52 = v109;
    if (__OFSUB__(*(a4 + 24), *(a4 + 16)))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v51 = v42;
  }

  else
  {
    if (!v32)
    {
      v51 = v42;
LABEL_43:
      v52 = v109;
      goto LABEL_44;
    }

    v52 = v109;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v51 = v42;
  }

LABEL_44:
  Data.copyBytes(to:count:)();
  (*(v103 + 56))(a7);
  v53 = (*(v104 + 40))(a7);
  v55 = v54;
  v56 = v107;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v116;
  (*(AssociatedConformanceWitness + 16))(v41, &v41[v39], v116 & 1, v53, v55, v56, AssociatedConformanceWitness);
  if (v51)
  {
    (*(v108 + 8))(v52, v56);

    v59 = v100;

    swift_errorRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v114 = v63;
      v117 = swift_slowAlloc();
      v118 = v117;
      *v62 = 138413314;
      swift_errorRetain();
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v64;
      *v63 = v64;
      *(v62 + 12) = 2080;
      if (v116)
      {
        v65 = 7628147;
      }

      else
      {
        v65 = 7628135;
      }

      v66 = sub_100002320(v65, 0xE300000000000000, &v118);

      *(v62 + 14) = v66;
      *(v62 + 22) = 2080;
      *(v62 + 24) = sub_100002320(v112, v59, &v118);
      *(v62 + 32) = 512;
      *(v62 + 34) = v113;
      *(v62 + 36) = 2080;
      v67 = sub_100170260(v41, &v41[v39]);
      v69 = v68;
      v70 = Data.hexString.getter(v67, v68);
      v72 = v71;
      sub_1000124C8(v67, v69);
      v73 = sub_100002320(v70, v72, &v118);

      *(v62 + 38) = v73;
      _os_log_impl(&_mh_execute_header, v60, v61, "Error %@ while sending %s %s: %hu %s", v62, 0x2Eu);
      sub_100016290(v114, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    v74 = v101;
    v75 = v102;
    goto LABEL_66;
  }

  (*(v108 + 8))(v52, v56);

  v76 = v114;
  if ((v58 & 1) == 0)
  {
    v76 = 0;
  }

  v77 = v76 + v110;
  if (__OFADD__(v76, v110))
  {
    goto LABEL_78;
  }

  v78 = v77 + 8;
  if (__OFADD__(v77, 8))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v79 = &v41[v77];
  v80 = *(v79 + 1);
  if (v80)
  {
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      *v83 = 67109378;
      *(v83 + 4) = v80;
      *(v83 + 8) = 2080;
      v84 = sub_100170260(v41, &v41[v39]);
      v86 = v85;
      v87 = Data.hexString.getter(v84, v85);
      v89 = v88;
      sub_1000124C8(v84, v86);
      v90 = sub_100002320(v87, v89, &v118);

      *(v83 + 10) = v90;
      _os_log_impl(&_mh_execute_header, v81, v82, "Error returned in command status: %u %s", v83, 0x12u);
      sub_100002A00(v117);
    }

    v74 = v101;
    v75 = v102;
    if ((v80 & 0x80000000) == 0)
    {
      sub_10000B02C();
      swift_allocError();
      *v91 = v80;
      *(v91 + 8) = 0;
      *(v91 + 16) = 0;
LABEL_66:
      swift_willThrow();

      (*(v75 + 8))(v115, v74);
      return;
    }

    goto LABEL_84;
  }

  v92 = *(v79 + 1);
  v93 = v78 + v92;
  if (__OFADD__(v78, v92))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v30 = __OFSUB__(v93, 4);
  v94 = v93 - 4;
  if (v30)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v39 < v94)
  {
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    v97 = os_log_type_enabled(v95, v96);
    v74 = v101;
    v75 = v102;
    if (v97)
    {
      v98 = swift_slowAlloc();
      *v98 = 67109120;
      _os_log_impl(&_mh_execute_header, v95, v96, "Error while parsing returned command: %u", v98, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v99 = 0;
    *(v99 + 8) = 0;
    *(v99 + 16) = 2;
    goto LABEL_66;
  }

  sub_1002AAFAC(&v41[v78], v92);

  (*(v102 + 8))(v115, v101);
}

void sub_1002953E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  if (a1)
  {
    *(a1 + 2) = 112;
    *a1 = 24931;
  }

  v8 = a3[5];
  AppleDevice.getRequest(requestType:data:on:)(0xFFFFFFFFuLL, a1, a2, 0, a3[2], a3[3]);
  if (v3)
  {

    return;
  }

  if (a1)
  {
    v9 = a2 - a1 - 1;
    if (__OFSUB__(a2 - a1, 1))
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0 && v9 < a2 - a1)
    {
      *(a2 - 1) = 0;

      static String.Encoding.utf8.getter();
      String.init(cString:encoding:)();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10029550C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v31 = a6;
  v33 = a2;
  v10 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v30[1] = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = v30 - v16;
  if (a1)
  {
    *(a1 + 2) = 112;
    *a1 = 24931;
  }

  (*(v12 + 56))(a3, v12);
  v18 = (*(a5 + 40))(a3, a5);
  v20 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = v33;
  v23 = v32;
  (*(AssociatedConformanceWitness + 16))(a1, v33, 0, v18, v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v23)
  {
    (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  (*(v14 + 8))(v17, AssociatedTypeWitness);

  if (!a1)
  {
    goto LABEL_17;
  }

  v25 = v22 - a1 - 1;
  if (__OFSUB__(v22 - a1, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v25 < 0 || v25 >= v22 - a1)
  {
    goto LABEL_17;
  }

  *(v22 - 1) = 0;

  static String.Encoding.utf8.getter();
  result = String.init(cString:encoding:)();
  if (v26)
  {
    v27 = result;
  }

  else
  {
    v27 = 0;
  }

  v28 = 0xE000000000000000;
  if (v26)
  {
    v28 = v26;
  }

  v29 = v31;
  *v31 = v27;
  v29[1] = v28;
  return result;
}

uint64_t sub_1002957D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1 == 0x7478655F747665 && a1[1] == 0xE700000000000000;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  v7 = (*(a4 + 40))(v10, a3, a4);
  *v8 |= 1uLL;
  v7(v10, 0);
  return 0;
}

uint64_t sub_1002958A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10029E4E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *static BroadcomDriver.parse(event:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v256.i64[0] = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v259 = v8;
  v260 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v261 = &v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = sub_100033AA8(_swiftEmptyArrayStorage);
  v13 = type metadata accessor for BinaryDecoder();
  swift_allocObject();
  v14 = BinaryDecoder.init(data:userInfo:)(a1, a2, v12);
  v15 = swift_allocObject();
  v15[5] = &type metadata for BinaryDecoder.UnkeyedContainer;
  v16 = sub_1000325F0();
  v15[6] = v16;
  v15[2] = v14;
  sub_100031694((v15 + 2), &type metadata for BinaryDecoder.UnkeyedContainer);
  v258.i64[0] = a1;
  v257.i64[0] = a2;
  sub_10000AB0C(a1, a2);
  sub_10029EBEC();

  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v253.i64[0] = a3;
  v254 = v15;
  v255 = v14;
  if ((LODWORD(v268[0]) - 100) <= 0x3B && ((1 << (LOBYTE(v268[0]) - 100)) & 0xC00000000000001) != 0)
  {
    switch(DWORD1(v268[0]))
    {
      case 5:
        LOBYTE(v268[0]) = 0;
        v27 = v254;
        v28 = sub_100299B4C(778, v255, v254);
        if ((v28 & 0xFF00000000) == 0x300000000)
        {
          v116 = 0;
        }

        else
        {
          v116 = v29;
        }

        KeyPath = swift_getKeyPath();
        v118 = swift_getKeyPath();
        v119 = sub_100037FF8();
        v120 = sub_100298EB8(v268, 778, KeyPath, v118, v27, v253.i64[0], v256.i64[0], v119);

        v121 = type metadata accessor for DriverEvent(0);
        v122.i64[0] = *&v268[0];
        v258 = v122;
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v123 = *(*(v121 - 8) + 72);
        v124 = (*(*(v121 - 8) + 80) + 32) & ~*(*(v121 - 8) + 80);
        v190 = swift_allocObject();
        *(v190 + 16) = xmmword_100480F40;
        v125.i64[0] = v258.i64[0];
        v125.i64[1] = v258.i64[0];
        *&v268[0] = vqtbl1_s8(v125, 0x706050403020001);
        *(&v268[0] + 1) = v116;
        *&v268[1] = v120;
        sub_1000B2574(v268);
        goto LABEL_48;
      case 6:
        LOBYTE(v268[0]) = 0;
        v74 = v254;
        v75 = sub_100299B4C(776, v255, v254);
        if ((v75 & 0xFF00000000) == 0x300000000)
        {
          v126 = 0;
        }

        else
        {
          v126 = v76;
        }

        v127 = swift_getKeyPath();
        v128 = swift_getKeyPath();
        v129 = sub_100037FF8();
        v131 = sub_100298EB8(v268, 776, v127, v128, v74, v253.i64[0], v256.i64[0], v129);

        v132 = type metadata accessor for DriverEvent(0);
        v133 = *&v268[0];
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v134 = *(*(v132 - 8) + 72);
        v124 = (*(*(v132 - 8) + 80) + 32) & ~*(*(v132 - 8) + 80);
        v190 = swift_allocObject();
        *(v190 + 16) = xmmword_100480F40;
        *&v268[0] = vext_s8(v133, v133, 6uLL);
        *(&v268[0] + 1) = v126;
        *&v268[1] = v131;
        sub_1000B2568(v268);
LABEL_48:
        memcpy((v190 + v124), v268, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
        goto LABEL_49;
      case 7:
        type metadata accessor for wl_nan_ev_terminated(0);
        sub_100297D88(775, v254, v58, v268);
        v98 = BYTE2(v268[0]);
        v99 = v258.i64[0];
        if ((BYTE1(v268[0]) - 1) > 3u)
        {
          v100 = 3;
        }

        else
        {
          v100 = qword_1004AC818[(BYTE1(v268[0]) - 1)];
        }

        v182 = v268[0];
        if (BYTE2(v268[0]) == 1)
        {
          sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
          v195 = *(type metadata accessor for DriverEvent(0) - 8);
          v196 = *(v195 + 72);
          v197 = (*(v195 + 80) + 32) & ~*(v195 + 80);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_100480F40;
          LOBYTE(v268[0]) = v182;
          *(&v268[0] + 1) = v100;
          LOBYTE(v268[1]) = 0;
          sub_1000B24F8(v268);
          memcpy((v47 + v197), v268, 0x16AuLL);
          swift_storeEnumTagMultiPayload();

          (*(v260 + 8))(v261, v259);
          goto LABEL_77;
        }

        if (BYTE2(v268[0]))
        {
          v198 = Logger.logObject.getter();
          v199 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v198, v199))
          {
            v200 = swift_slowAlloc();
            *v200 = 16777472;
            v200[4] = v98;
            _os_log_impl(&_mh_execute_header, v198, v199, "Failed to convert %hhu into service type", v200, 5u);
          }

          sub_10000B02C();
          swift_allocError();
          *v201 = xmmword_10047CE70;
          *(v201 + 16) = 2;
          swift_willThrow();

          v130 = v257.i64[0];
          goto LABEL_2;
        }

        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v183 = *(type metadata accessor for DriverEvent(0) - 8);
        v184 = *(v183 + 72);
        v111 = (*(v183 + 80) + 32) & ~*(v183 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100480F40;
        LOBYTE(v268[0]) = v182;
        *(&v268[0] + 1) = v100;
        LOBYTE(v268[1]) = 0;
        sub_1000B24EC(v268);
LABEL_75:
        memcpy((v47 + v111), v268, 0x16AuLL);
LABEL_76:
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
        goto LABEL_77;
      case 8:
        LOBYTE(v268[0]) = 0;
        v81 = v254;
        sub_100299B4C(777, v255, v254);
        v82 = v256.i64[0];
        v83 = swift_getKeyPath();
        v84 = swift_getKeyPath();
        v85 = sub_100037FF8();
        v86 = sub_100298EB8(v262, 777, v83, v84, v81, v253.i64[0], v82, v85);

        v87 = SBYTE8(v262[0]);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v88 = *(type metadata accessor for DriverEvent(0) - 8);
        v89 = *(v88 + 72);
        v90 = (*(v88 + 80) + 32) & ~*(v88 + 80);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_100480F40;
        *&v268[0] = vext_s8(*&v262[0], *&v262[0], 6uLL);
        *(&v268[0] + 1) = v87;
        *&v268[1] = v86;
        sub_1000B24E0(v268);
        memcpy((v145 + v90), v268, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
        goto LABEL_78;
      case 0xA:
        type metadata accessor for wl_nan_conf_status(0);
        sub_100297D88(261, v254, v91, v262);
        v92 = WORD6(v262[0]);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v93 = *(type metadata accessor for DriverEvent(0) - 8);
        v94 = *(v93 + 72);
        v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100480F40;
        LODWORD(v268[0]) = DWORD2(v262[0]);
        WORD2(v268[0]) = v92;
        sub_1000B258C(v268);
        goto LABEL_58;
      case 0x14:
        v59 = v258.i64[0];
        v60 = v257.i64[0];
        sub_10000AB0C(v258.i64[0], v257.u64[0]);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        sub_1000124C8(v59, v60);
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&v268[0] = v64;
          *v63 = 136315138;
          v65 = Data.hexString.getter(v59, v60);
          v67 = sub_100002320(v65, v66, v268);

          *(v63 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v61, v62, "Got DP Indication: %s", v63, 0xCu);
          sub_100002A00(v64);
        }

        sub_10029988C(v254, v253.i64[0], v256.i64[0], v268);
        v101 = BYTE1(v268[0]);
        v102 = BYTE2(v268[0]);
        v103 = *(v268 + 4);
        v258.i32[0] = BYTE8(v268[0]);
        v104 = BYTE9(v268[0]);
        v105 = v268[1];
        v106 = BYTE1(v268[1]);
        v107 = *(&v268[1] + 2);
        v108 = *(&v268[2] + 1);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v109 = *(type metadata accessor for DriverEvent(0) - 8);
        v110 = *(v109 + 72);
        v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100480F40;
        LOBYTE(v268[0]) = v101;
        BYTE1(v268[0]) = v102;
        BYTE2(v268[0]) = v105;
        BYTE3(v268[0]) = v106;
        *(v268 + 4) = vzip1_s32(v107, v103);
        BYTE12(v268[0]) = v258.i8[0];
        BYTE13(v268[0]) = v104;
        *&v268[1] = v108;
        sub_1000B255C(v268);
        goto LABEL_75;
      case 0x15:
        type metadata accessor for wl_nan_ev_datapath_cmn(0);
        sub_100297D88(1282, v254, v77, v268);
        v135 = LOBYTE(v268[0]);
        v136 = BYTE1(v268[0]);
        v137 = WORD4(v268[0]);
        v138 = HIWORD(v268[0]);
        v139 = type metadata accessor for DriverEvent(0);
        v140 = v135 == 1;
        v141 = DWORD1(v268[0]);
        v142 = *(v268 + 10);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v143 = *(*(v139 - 8) + 72);
        v144 = (*(*(v139 - 8) + 80) + 32) & ~*(*(v139 - 8) + 80);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_100480F40;
        LOBYTE(v268[0]) = v136;
        *(v268 + 1) = v141;
        *(v268 + 5) = v137;
        BYTE7(v268[0]) = v140;
        DWORD2(v268[0]) = v142;
        WORD6(v268[0]) = v138;
        sub_1000B2538(v268);
        memcpy((v145 + v144), v268, 0x16AuLL);
        goto LABEL_50;
      case 0x17:
        type metadata accessor for wl_nan_ev_datapath_cmn(0);
        sub_100297D88(1282, v254, v78, v268);
        v146 = LOBYTE(v268[0]);
        v147 = BYTE1(v268[0]);
        v148 = WORD4(v268[0]);
        v149 = type metadata accessor for DriverEvent(0);
        v150 = v146 == 1;
        v151 = DWORD1(v268[0]);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v152 = *(*(v149 - 8) + 72);
        v153 = (*(*(v149 - 8) + 80) + 32) & ~*(*(v149 - 8) + 80);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_100480F40;
        LOBYTE(v268[0]) = v147;
        *(v268 + 1) = v151;
        *(v268 + 5) = v148;
        BYTE7(v268[0]) = v150;
        *(&v268[0] + 1) = 2;
        LOBYTE(v268[1]) = 0;
        sub_1000B2510(v268);
        memcpy((v145 + v153), v268, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
        goto LABEL_78;
      case 0x18:
        LOBYTE(v268[0]) = 1;
        v96 = v254;
        v97 = sub_100299B4C(0x100000000, v255, v254);
        v251 = v171;
        v252.i64[0] = v170;
        v172 = v97;
        v173 = swift_getKeyPath();
        v174 = swift_getKeyPath();
        v175 = sub_100037FF8();
        sub_100298D48(&v264, v262, 1025, v173, v174, sub_100299E4C, 0, v96, v253.i64[0], &type metadata for IEEE80211Frame, v256.i64[0], v175);

        v191 = v264;
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v192 = *(type metadata accessor for DriverEvent(0) - 8);
        v193 = *(v192 + 72);
        v194 = (*(v192 + 80) + 32) & ~*(v192 + 80);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_100480F40;
        v268[0] = v262[0];
        v268[1] = v262[1];
        v268[2] = v263[0];
        *(&v268[2] + 9) = *(v263 + 9);
        *&v268[4] = v251;
        DWORD2(v268[4]) = v172;
        BYTE12(v268[4]) = BYTE4(v172);
        BYTE13(v268[4]) = BYTE5(v172);
        *&v268[5] = v252.i64[0];
        *(&v268[5] + 1) = v191;
        sub_1000B24C8(v268);
        memcpy((v145 + v194), v268, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
        goto LABEL_78;
      case 0x19:
        sub_10029988C(v254, v253.i64[0], v256.i64[0], v268);
        v256 = *(v268 + 1);
        v252 = *(v268 + 6);
        v253 = *(v268 + 4);
        v258 = *(v268 + 10);
        v257 = vmovl_u8(__PAIR64__(*(v268 + 14), *(&v268[1] + 2)));
        v166 = *(&v268[2] + 1);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v167 = *(type metadata accessor for DriverEvent(0) - 8);
        v168 = *(v167 + 72);
        v95 = (*(v167 + 80) + 32) & ~*(v167 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100480F40;
        *&v169 = vzip1q_s32(vzip1q_s16(v256, v253), v252).u64[0];
        *(&v169 + 1) = v258.i64[0];
        v268[0] = v169;
        LODWORD(v268[1]) = vuzp1_s8(*v257.i8, *v257.i8).u32[0];
        *(&v268[1] + 1) = v166;
        sub_1000B2550(v268);
LABEL_58:
        memcpy((v47 + v95), v268, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
        goto LABEL_77;
      case 0x1A:
        sub_10029988C(v254, v253.i64[0], v256.i64[0], v268);
        v36 = BYTE1(v268[0]);
        v258.i32[0] = BYTE4(v268[0]);
        v37 = BYTE5(v268[0]);
        v38 = *(v268 + 6);
        v39 = *&v268[1];
        v40 = BYTE4(v268[1]);
        v41 = BYTE5(v268[1]);
        v42 = BYTE6(v268[1]);
        v43 = *(&v268[2] + 1);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v44 = *(type metadata accessor for DriverEvent(0) - 8);
        v45 = *(v44 + 72);
        v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100480F40;
        v48 = v42 == 1;
        LOBYTE(v268[0]) = v36;
        if (v42 == 2)
        {
          v48 = 2;
        }

        BYTE1(v268[0]) = v48;
        BYTE2(v268[0]) = v258.i8[0];
        BYTE3(v268[0]) = v37;
        *(v268 + 4) = vzip1_s32(v38, v39);
        BYTE12(v268[0]) = v40;
        BYTE13(v268[0]) = v41;
        *&v268[1] = v43;
        sub_1000B2544(v268);
        memcpy((v47 + v46), v268, 0x16AuLL);
        goto LABEL_76;
      case 0x1F:
        LODWORD(v262[0]) = 308;
        v68 = swift_getKeyPath();
        type metadata accessor for wl_nan_cmd_xtlv_id(0);
        v70 = v69;
        v71 = sub_10029EFDC(&qword_100593930, type metadata accessor for wl_nan_cmd_xtlv_id);
        v72 = sub_100037FF8();
        v73 = sub_10003A734();
        v112 = sub_1002992D4(v268, v262, v68, v254, v253.i64[0], v70, v256.i64[0], v71, v72, v73);

        v113 = v268[0];
        v114 = BYTE4(v268[0]);
        v99 = v258.i64[0];
        if (LOBYTE(v268[0]) == 1)
        {
          goto LABEL_84;
        }

        if (LOBYTE(v268[0]))
        {
          if (BYTE1(v268[0]) != 1)
          {
            goto LABEL_94;
          }

LABEL_84:
          v115 = 0;
        }

        else
        {
          v115 = BYTE1(v268[0]) - 1;
          if ((BYTE1(v268[0]) - 1) >= 4u)
          {
LABEL_94:
            v216 = BYTE1(v268[0]);

            v217 = Logger.logObject.getter();
            v218 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v217, v218))
            {
              v219 = swift_slowAlloc();
              v220 = swift_slowAlloc();
              *&v268[0] = v220;
              *v219 = 16777986;
              *(v219 + 4) = v113;
              *(v219 + 5) = 256;
              *(v219 + 7) = v216;
              *(v219 + 8) = 2080;
              *(v219 + 10) = sub_100002320(0xD000000000000019, 0x80000001004BDAC0, v268);
              _os_log_impl(&_mh_execute_header, v217, v218, "Failed to convert status: %hhu, reason: %hhu into %s", v219, 0x12u);
              sub_100002A00(v220);
            }

            v130 = v257.i64[0];
            sub_10000B02C();
            swift_allocError();
            *v221 = xmmword_10047CE70;
            *(v221 + 16) = 2;
            swift_willThrow();

LABEL_2:
            sub_10000AB0C(v99, v130);
            swift_errorRetain();
            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.error.getter();
            sub_1000124C8(v99, v130);

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v20 = swift_slowAlloc();
              v21 = swift_slowAlloc();
              *&v268[0] = v21;
              *v19 = 136315394;
              v22 = Data.hexString.getter(v99, v130);
              v24 = sub_100002320(v22, v23, v268);

              *(v19 + 4) = v24;
              *(v19 + 12) = 2112;
              swift_errorRetain();
              v25 = _swift_stdlib_bridgeErrorToNSError();
              *(v19 + 14) = v25;
              *v20 = v25;
              _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse event %s: %@", v19, 0x16u);
              sub_100016290(v20, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v21);
            }

            (*(v260 + 8))(v261, v259);
            return _swiftEmptyArrayStorage;
          }
        }

        v252.i64[0] = v13;
        v258.i32[0] = v115;
        v202 = *(v112 + 16);
        v203 = (v112 + 32);
        v204 = v202 + 1;
        v205 = (v112 + 32);
        while (--v204)
        {
          v206 = v205 + 12;
          v207 = *v205;
          v205 += 12;
          if (v207 == 1284)
          {
            v208 = *(v206 - 2);
            v209 = *(v206 - 1);
            sub_10000AB0C(v208, v209);
            sub_1002A9A10(v208, v209, v268);

            sub_1000124C8(v208, v209);
            v222 = v268[0];
            v4.i32[0] = *(v268 + 2);
            v223 = BYTE6(v268[0]);
            v224 = BYTE7(v268[0]);
            v225 = sub_10029EC40(v114);
            if (v225 == 15)
            {
              v226 = Logger.logObject.getter();
              v227 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v226, v227))
              {
                v228 = swift_slowAlloc();
                *v228 = 16777472;
                v228[4] = v114;
                _os_log_impl(&_mh_execute_header, v226, v227, "Failed to convert %hhu into a management frame type", v228, 5u);
              }

              goto LABEL_11;
            }

            v240 = v225;
            v257 = vmovl_u8(v4);
            sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
            v241 = *(type metadata accessor for DriverEvent(0) - 8);
            v242 = *(v241 + 72);
            v243 = (*(v241 + 80) + 32) & ~*(v241 + 80);
            v145 = swift_allocObject();
            *(v145 + 16) = xmmword_100480F40;
            LOBYTE(v268[0]) = v222;
            *(v268 + 1) = vuzp1_s8(*v257.i8, *v257.i8).u32[0];
            BYTE5(v268[0]) = v223;
            BYTE6(v268[0]) = v224;
            BYTE7(v268[0]) = v240;
            BYTE8(v268[0]) = v258.i8[0];
            sub_10029EC64(v268);
            memcpy((v145 + v243), v268, 0x16AuLL);
            goto LABEL_50;
          }
        }

        v210 = -1;
        v211 = (v112 + 32);
        while (1)
        {
          if (v210 - v202 == -1)
          {
LABEL_105:

            (*(v260 + 8))(v261, v259);
            goto LABEL_12;
          }

          if (++v210 >= *(v112 + 16))
          {
            break;
          }

          v212 = v211 + 12;
          v213 = *v211;
          v211 += 12;
          if (v213 == 779)
          {
            v214 = *(v212 - 2);
            v215 = *(v212 - 1);
            sub_10000AB0C(v214, v215);
            v229 = sub_1000285B8(v214, v215);
            result = sub_1000124C8(v214, v215);
            v230 = -1;
            do
            {
              if (v230 - v202 == -1)
              {
                goto LABEL_105;
              }

              if (++v230 >= *(v112 + 16))
              {
                goto LABEL_108;
              }

              v231 = v203 + 12;
              v232 = *v203;
              v203 += 12;
            }

            while (v232 != 787);
            v233 = *(v231 - 2);
            v234 = *(v231 - 1);
            sub_10000AB0C(v233, v234);

            sub_10000AB0C(v233, v234);
            v235 = sub_100033AA8(_swiftEmptyArrayStorage);
            v236 = v252.i64[0];
            swift_allocObject();
            v237 = BinaryDecoder.init(data:userInfo:)(v233, v234, v235);
            *(&v262[1] + 1) = &type metadata for BinaryDecoder.UnkeyedContainer;
            *&v263[0] = v16;
            *&v262[0] = v237;
            v238 = *sub_100031694(v262, &type metadata for BinaryDecoder.UnkeyedContainer);
            v266 = v236;
            v267 = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
            v264 = v238;

            v239 = sub_1000380FC(&v264);
            v257.i64[0] = v239 >> 40;
            v256.i64[0] = HIDWORD(v239);
            v253.i64[0] = v239 >> 24;
            v244 = v239 >> 16;
            v245 = v239 >> 8;
            v246 = v239;
            sub_100002A00(v262);
            sub_1000124C8(v233, v234);
            sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
            v247 = *(type metadata accessor for DriverEvent(0) - 8);
            v248 = *(v247 + 72);
            v249 = (*(v247 + 80) + 32) & ~*(v247 + 80);
            v145 = swift_allocObject();
            *(v145 + 16) = xmmword_100480F40;
            LOWORD(v268[0]) = v229;
            BYTE2(v268[0]) = v246;
            BYTE3(v268[0]) = v245;
            BYTE4(v268[0]) = v244;
            BYTE5(v268[0]) = v253.i8[0];
            BYTE6(v268[0]) = v256.i8[0];
            BYTE7(v268[0]) = v257.i8[0];
            BYTE8(v268[0]) = v258.i8[0];
            sub_1000B24D4(v268);
            memcpy((v145 + v249), v268, 0x16AuLL);
LABEL_50:
            swift_storeEnumTagMultiPayload();

            (*(v260 + 8))(v261, v259);
LABEL_78:

            return v145;
          }
        }

        __break(1u);
LABEL_108:
        __break(1u);
        break;
      case 0x29:
        type metadata accessor for wl_nan_ev_datapath_cmn(0);
        sub_100297D88(1282, v254, v49, v268);
        if (BYTE6(v268[1]) != 6)
        {

          (*(v260 + 8))(v261, v259);
          goto LABEL_12;
        }

        v51 = LOBYTE(v268[0]);
        v52 = BYTE1(v268[0]);
        v50.i32[0] = DWORD1(v268[0]);
        v258 = vmovl_u8(v50);
        v53 = BYTE8(v268[0]);
        v54 = BYTE9(v268[0]);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v55 = *(type metadata accessor for DriverEvent(0) - 8);
        v56 = *(v55 + 72);
        v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100480F40;
        LOBYTE(v268[0]) = v52;
        *(v268 + 1) = vuzp1_s8(*v258.i8, *v258.i8).u32[0];
        BYTE5(v268[0]) = v53;
        BYTE6(v268[0]) = v54;
        BYTE7(v268[0]) = v51 == 1;
        *(&v268[0] + 1) = 1;
        LOBYTE(v268[1]) = 0;
        sub_1000B2510(v268);
        memcpy((v47 + v57), v268, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
LABEL_77:

        return v47;
      case 0x2C:
        type metadata accessor for wl_nan_host_assist_req(0);
        sub_100297D88(1538, v254, v30, v268);
        v31 = *&v268[0];
        v32.i32[0] = DWORD2(v268[0]);
        v258 = vmovl_u8(v32);
        v33 = BYTE12(v268[0]);
        v34 = HIBYTE(v268[0]);
        if ((BYTE13(v268[0]) - 1) > 0xFu)
        {
          v35 = 15;
        }

        else
        {
          v35 = byte_1004AC260[(BYTE13(v268[0]) - 1)];
        }

        if (BYTE14(v268[0]) == 9)
        {
          v176 = 8;
        }

        else
        {
          v176 = 9;
        }

        if (BYTE14(v268[0]) == 8)
        {
          v177 = 7;
        }

        else
        {
          v177 = v176;
        }

        if (BYTE14(v268[0]) - 1 >= 7)
        {
          v178 = v177;
        }

        else
        {
          v178 = BYTE14(v268[0]) - 1;
        }

        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v179 = *(type metadata accessor for DriverEvent(0) - 8);
        v180 = *(v179 + 72);
        v181 = (*(v179 + 80) + 32) & ~*(v179 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100480F40;
        LOBYTE(v268[0]) = v33;
        BYTE1(v268[0]) = v34;
        *(v268 + 2) = v31;
        *(v268 + 10) = vuzp1_s8(*v258.i8, *v258.i8).u32[0];
        BYTE14(v268[0]) = v35;
        HIBYTE(v268[0]) = v178;
        sub_1000B2504(v268);
        memcpy((v47 + v181), v268, 0x16AuLL);
        goto LABEL_76;
      case 0x2F:
        type metadata accessor for wl_nan_event_oob_af_txs(0);
        sub_100297D88(2051, v254, v79, v268);
        v154 = WORD1(v268[0]);
        if (LOBYTE(v268[0]) <= 5uLL)
        {
          v155 = 0x40302010005uLL >> (8 * LOBYTE(v268[0]));
        }

        else
        {
          v155 = 5;
        }

        if (BYTE1(v268[0]) <= 3u)
        {
          v156 = 0x2010003u >> (8 * BYTE1(v268[0]));
        }

        else
        {
          v156 = 3;
        }

        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v157 = *(type metadata accessor for DriverEvent(0) - 8);
        v158 = *(v157 + 72);
        v159 = (*(v157 + 80) + 32) & ~*(v157 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100480F40;
        LOWORD(v268[0]) = v154;
        BYTE2(v268[0]) = v155;
        BYTE3(v268[0]) = v156;
        sub_1000B24BC(v268);
        memcpy((v47 + v159), v268, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
        goto LABEL_77;
      case 0x30:
        LOBYTE(v268[0]) = 0;
        v80 = v254;
        sub_100299B4C(2051, v255, v254);
        v269[0] = 2051;
        v160 = swift_getKeyPath();
        type metadata accessor for wl_nan_tlv(0);
        v162 = v161;
        v163 = sub_10029EFDC(&qword_100593928, type metadata accessor for wl_nan_tlv);
        v164 = sub_100037FF8();
        v165 = sub_10003A734();
        sub_100297F40(&v264, v262, v269, v160, 20, sub_100299F90, 0, v80, v253.i64[0], v162, &type metadata for IEEE80211Frame.Management.ActionFrame, v256.i64[0], v163, v164, v165);

        v185 = LOBYTE(v262[0]);
        v258 = *(v262 + 8);
        v186 = *(&v262[1] + 1);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v187 = *(type metadata accessor for DriverEvent(0) - 8);
        v188 = *(v187 + 72);
        v189 = (*(v187 + 80) + 32) & ~*(v187 + 80);
        v190 = swift_allocObject();
        *(v190 + 16) = xmmword_100480F40;
        *&v268[0] = v264;
        DWORD2(v268[0]) = v265;
        *(&v268[1] + 8) = v258;
        *&v268[1] = v185;
        *(&v268[2] + 1) = v186;
        LOBYTE(v268[3]) = 2;
        sub_1000B24B0(v268);
        memcpy((v190 + v189), v268, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v260 + 8))(v261, v259);
LABEL_49:

        return v190;
      default:
        goto LABEL_10;
    }
  }

  else
  {
LABEL_10:

LABEL_11:
    (*(v260 + 8))(v261, v259);
LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100297D88@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_10005DC58(&qword_10058D5F0, &qword_100487160);
  swift_beginAccess();
  v9 = *(a2 + 48);
  sub_100031694(a2 + 16, *(a2 + 40));
  sub_10000CADC(&qword_100593AF0, &qword_10058D5F0, &qword_100487160);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (!v4)
  {
    if (v13 == a1)
    {
      v11 = sub_10000CADC(&qword_100593AF8, &qword_10058D5F0, &qword_100487160);
      LengthValueHelper.load<A>(_:)(v8, a3, v11, a4);
    }

    else
    {
      sub_10000B02C();
      swift_allocError();
      *v12 = xmmword_10047CE70;
      *(v12 + 16) = 2;
      swift_willThrow();
    }

    return sub_1000124C8(v14, v15);
  }

  return result;
}

uint64_t sub_100297F40(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(unint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v111 = a7;
  v110 = a6;
  v117 = a5;
  v130 = a3;
  v108 = a2;
  v115 = a1;
  v112 = a4;
  v16 = *a4;
  v123 = *(a14 + 8);
  v17 = (v16 + class metadata base offset for KeyPath);
  v18 = *(v16 + class metadata base offset for KeyPath + 8);
  v107 = *(*(v123 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v105 = &v102[-v20];
  v113 = v18;
  v116 = *(v18 - 8);
  v21 = *(v116 + 64);
  __chkstk_darwin();
  v114 = &v102[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v118 = &v102[-v23];
  v121 = *v17;
  v109 = *(v121 - 8);
  v122 = *(v109 + 64);
  __chkstk_darwin();
  v124 = &v102[-v24];
  v126 = *(a15 + 8);
  v25 = *(*(v126 + 24) + 16);
  v127 = a13;
  v129 = a10;
  swift_getAssociatedTypeWitness();
  v125 = v25;
  v120 = swift_getAssociatedTypeWitness();
  v26 = *(*(v120 - 8) + 64);
  __chkstk_darwin();
  v119 = &v102[-v27];
  v28 = swift_checkMetadataState();
  v128 = *(v28 - 8);
  v29 = *(v128 + 64);
  __chkstk_darwin();
  v31 = &v102[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v33 = &v102[-v32];
  sub_10005DC58(&qword_10058D5F0, &qword_100487160);
  swift_beginAccess();
  v34 = *(a8 + 48);
  sub_100031694(a8 + 16, *(a8 + 40));
  sub_10000CADC(&qword_100593AF0, &qword_10058D5F0, &qword_100487160);
  v35 = v134;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v36 = v35;
  if (v35)
  {
    return swift_endAccess();
  }

  v38 = v31;
  swift_endAccess();
  v103 = v131;
  v134 = v132;
  v104 = v133;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v39 = v126;
  v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v130 = v33;
  v41 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v42 = v28;
  if (v40)
  {
    if (v41 > 16)
    {
      LOWORD(v131) = v103;
      sub_100119DCC();
      v43 = v38;
      goto LABEL_8;
    }

    v129 = 0;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v49 = *(*(v39 + 32) + 8);
    v50 = v28;
    v51 = v130;
    v52 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v36 = *(v128 + 8);
    v36(v38, v28);
    if ((v52 & 1) == 0)
    {
      goto LABEL_22;
    }

    v53 = dispatch thunk of BinaryInteger._lowWord.getter();
    result = v36(v51, v28);
    v54 = v103 == v53;
    v36 = v129;
LABEL_13:
    v48 = v104;
    if (!v54)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if (v41 < 17)
  {
    v55 = v130;
    v56 = dispatch thunk of BinaryInteger._lowWord.getter();
    result = (*(v128 + 8))(v55, v28);
    v54 = v103 == v56;
    goto LABEL_13;
  }

  v43 = v38;
  LOWORD(v131) = v103;
  sub_100119DCC();
LABEL_8:
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v44 = *(*(v39 + 16) + 8);
  v45 = v130;
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v128 + 8);
  v47(v43, v42);
  result = (v47)(v45, v42);
  v48 = v104;
  if ((v46 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v51 = v48;
  v57 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    v59 = v121;
    v58 = v122;
    if (!v57)
    {
      v60 = BYTE6(v48);
      goto LABEL_32;
    }

    v61 = v134;
    LODWORD(v65) = HIDWORD(v134) - v134;
    v50 = v123;
    v66 = v124;
    if (__OFSUB__(HIDWORD(v134), v134))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v65 = v65;
LABEL_26:
    if ((v65 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v65 >> 16))
    {
      if (v65 >= v58)
      {
        goto LABEL_33;
      }

LABEL_29:
      sub_10000B02C();
      swift_allocError();
      *v68 = 0;
      *(v68 + 8) = 0;
      *(v68 + 16) = 2;
      swift_willThrow();
      v69 = v61;
      return sub_1000124C8(v69, v51);
    }

    __break(1u);
    goto LABEL_91;
  }

  v59 = v121;
  v58 = v122;
  if (v57 == 2)
  {
    v61 = v134;
    v63 = *(v134 + 16);
    v62 = *(v134 + 24);
    v64 = __OFSUB__(v62, v63);
    v65 = v62 - v63;
    v50 = v123;
    v66 = v124;
    if (!v64)
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_22:
    v36(v51, v50);
    v48 = v104;
LABEL_23:
    sub_10000B02C();
    swift_allocError();
    *v67 = xmmword_10047CE70;
    *(v67 + 16) = 2;
    swift_willThrow();
    return sub_1000124C8(v134, v48);
  }

  v60 = 0;
LABEL_32:
  v50 = v123;
  v66 = v124;
  v61 = v134;
  if (v60 < v58)
  {
    goto LABEL_29;
  }

LABEL_33:
  sub_10000AB0C(v61, v48);
  Data.load<A>(as:)(v61, v48, v59, v66);
  v129 = v36;
  if (v36)
  {
    sub_1000124C8(v61, v48);
    return sub_1000124C8(v61, v48);
  }

  v70 = v118;
  swift_getAtKeyPath();
  v71 = v113;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_49;
  }

  v131 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v70 = v118;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      sub_100086E78();
      v72 = v114;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v73 = *(*(v50 + 32) + 8);
      goto LABEL_43;
    }

LABEL_48:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_49;
  }

  v74 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v75 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v74 & 1) == 0)
  {
    v70 = v118;
    if (v75 >= 64)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v75 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v78 = v114;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v79 = *(*(v50 + 32) + 8);
    v70 = v118;
    v80 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v116 + 8))(v78, v71);
    if (v80)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      return result;
    }

    goto LABEL_48;
  }

  sub_100086E78();
  v72 = v114;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v76 = *(*(v50 + 32) + 8);
  v70 = v118;
LABEL_43:
  v77 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v116 + 8))(v72, v71);
  if (v77)
  {
    goto LABEL_97;
  }

LABEL_49:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v131 = 0x7FFFFFFFFFFFFFFFLL;
    v81 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v82 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v81)
    {
      v83 = v82 < 65;
    }

    else
    {
      v83 = v82 < 64;
    }

    if (!v83)
    {
      sub_100086E78();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v84 = *(*(v50 + 32) + 8);
      v70 = v118;
      v85 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v116 + 8))(v114, v71);
      if ((v85 & 1) == 0)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    v70 = v118;
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_60:
  v86 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(v116 + 8))(v70, v71);
  v64 = __OFADD__(v117, v86);
  v87 = v117 + v86;
  if (v64)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = v115;
  v88 = v110;
  if (v57 <= 1)
  {
    v89 = v109;
    if (!v57)
    {
      v90 = BYTE6(v51);
      goto LABEL_74;
    }

    goto LABEL_68;
  }

  v89 = v109;
  if (v57 != 2)
  {
    goto LABEL_73;
  }

  v92 = *(v134 + 16);
  v91 = *(v134 + 24);
  v64 = __OFSUB__(v91, v92);
  v90 = v91 - v92;
  if (v64)
  {
    __break(1u);
LABEL_68:
    LODWORD(v90) = HIDWORD(v134) - v134;
    if (__OFSUB__(HIDWORD(v134), v134))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v90 = v90;
  }

  if (v90 < 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (!(v90 >> 16))
  {
    goto LABEL_74;
  }

  __break(1u);
LABEL_73:
  v90 = 0;
LABEL_74:
  if (v90 < v87)
  {
    sub_10000B02C();
    swift_allocError();
    *v93 = 0;
    *(v93 + 8) = 0;
    *(v93 + 16) = 2;
    swift_willThrow();
    v94 = v134;
    sub_1000124C8(v134, v51);
    sub_1000124C8(v94, v51);
    return (*(v89 + 8))(v66, v59);
  }

  (*(v89 + 16))(result, v66, v59);
  v95 = 0;
  if (v57 <= 1)
  {
    result = v117;
    if (!v57)
    {
      goto LABEL_83;
    }

    v95 = v134;
    result = v134 + v117;
    if (!__OFADD__(v134, v117))
    {
      goto LABEL_83;
    }

    __break(1u);
  }

  result = v117;
  if (v57 == 2)
  {
    v95 = *(v134 + 16);
    result = v95 + v117;
    if (__OFADD__(v95, v117))
    {
      goto LABEL_98;
    }
  }

LABEL_83:
  if (__OFADD__(v95, v87))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v95 + v87 < result)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v96 = v134;
  v97 = Data._Representation.subscript.getter();
  v99 = v98;
  v100 = v129;
  v88();
  if (!v100)
  {
    (*(v89 + 8))(v66, v59);
    sub_1000124C8(v97, v99);
    sub_1000124C8(v96, v51);
    v69 = v96;
    return sub_1000124C8(v69, v51);
  }

  sub_1000124C8(v97, v99);
  sub_1000124C8(v96, v51);
  sub_1000124C8(v96, v51);
  v101 = *(v89 + 8);
  v101(v115, v59);
  return (v101)(v66, v59);
}

uint64_t sub_100298D48(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v20)
  {
    sub_10000B02C();
    swift_allocError();
    *v21 = xmmword_10047CE70;
    *(v21 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v23 = v19;
    v28 = a3;
    type metadata accessor for wl_nan_tlv(0);
    v27 = v24;
    v25 = sub_10029EFDC(&qword_100593928, type metadata accessor for wl_nan_tlv);
    v26 = sub_10003A734();
    return sub_100297F40(a1, a2, &v28, a4, v23, a6, a7, a8, a9, v27, a10, a11, v25, a12, v26);
  }
}

uint64_t sub_100298EB8(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
  result = sub_100298D48(a1, &v19, a2, a3, a4, sub_100298F80, 0, a5, a6, v17, a7, a8);
  if (!v8)
  {
    return v19;
  }

  return result;
}

uint64_t sub_100298F80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v30 = *(type metadata accessor for NANAttribute(0) - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100033AA8(_swiftEmptyArrayStorage);
  v12 = type metadata accessor for BinaryDecoder();
  v13 = swift_allocObject();
  v14 = 0;
  v13[5] = &_swiftEmptyDictionarySingleton;
  v13[2] = a1;
  v13[3] = a2;
  v15 = a2 >> 62;
  v31 = a3;
  if ((a2 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v14 = *(a1 + 16);
    }
  }

  else if (v15)
  {
    v14 = a1;
  }

  v13[4] = v14;
  swift_beginAccess();
  v13[5] = v11;
  v17 = v13[2];
  v16 = v13[3];
  sub_10000AB0C(a1, a2);
  v18 = v16 >> 62;
  v33 = v17 >> 32;
  v34 = v17;
  v32 = _swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      v19 = v13[4];
      if (v18 <= 1)
      {
        v20 = BYTE6(v16);
        if (v18)
        {
          v20 = v33;
        }

LABEL_12:
        if (v19 >= v20)
        {
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      if (v18 == 2)
      {
        v20 = *(v34 + 24);
        goto LABEL_12;
      }

      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_25:

        *v31 = v32;
        return result;
      }

LABEL_15:
      v37 = v12;
      v38 = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      v35[0] = v13;

      NANAttribute.init(from:)(v35, v10);
      if (v4)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10011640C(0, v32[2] + 1, 1, v32);
      }

      v22 = v32[2];
      v21 = v32[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = v32[2];
        v29 = v22 + 1;
        v25 = sub_10011640C(v21 > 1, v22 + 1, 1, v32);
        v22 = v28;
        v23 = v29;
        v32 = v25;
      }

      v24 = v32;
      v32[2] = v23;
      sub_10029F21C(v10, v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22);
    }

    v39 = v4;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v36 != 2)
    {
      break;
    }

    if ((v35[0] & 1) == 0)
    {
      goto LABEL_27;
    }

    v4 = 0;
  }

  sub_1000B2594(v35[0], v35[1], v36);
LABEL_27:
}

uint64_t sub_1002992D4(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_1002993B0(a3);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v19 = sub_10005DC58(&qword_100593AE0, &qword_1004AC7E0);
    result = sub_100297F40(a1, &v23, a2, a3, v18, sub_100299438, 0, a4, a5, a6, v19, a7, a8, a9, a10);
    if (!v22)
    {
      return v23;
    }
  }

  return result;
}

uint64_t sub_1002993B0(uint64_t *a1)
{
  v1 = *a1;
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if ((v3 & 1) == 0)
  {
    v4 = *(*(*(v1 + class metadata base offset for KeyPath + 8) - 8) + 64);
    v5 = __OFADD__(result, v4);
    result += v4;
    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100299438@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  sub_10005DC58(&qword_100593AE8, &qword_1004AC7E8);
  v8 = (sub_10005DC58(&qword_10058BA70, &qword_1004AC7F0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100480F40;
  v12 = v11 + v10;
  v13 = v12 + v8[14];
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for CodingUserInfoKey();
  v15 = sub_100037644(v14, static CodingUserInfoKey.fourByteAlignedValue);
  (*(*(v14 - 8) + 16))(v12, v15, v14);
  *(v13 + 24) = &type metadata for Bool;
  *v13 = 1;
  v16 = sub_100033AA8(v11);
  swift_setDeallocating();
  sub_100016290(v12, &qword_10058BA70, &qword_1004AC7F0);
  swift_deallocClassInstance();
  v17 = type metadata accessor for BinaryDecoder();
  v18 = swift_allocObject();
  v19 = 0;
  v18[5] = &_swiftEmptyDictionarySingleton;
  v18[2] = a1;
  v18[3] = a2;
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v19 = *(a1 + 16);
    }
  }

  else if (v20)
  {
    v19 = a1;
  }

  v18[4] = v19;
  swift_beginAccess();
  v18[5] = v16;
  v22 = v18[2];
  v21 = v18[3];
  sub_10000AB0C(a1, a2);
  v23 = v21 >> 62;
  v44 = v22;
  v38 = _swiftEmptyArrayStorage;
  v24 = BYTE6(v21);
  while (1)
  {
    while (1)
    {
      v25 = v18[4];
      if (v23 <= 1)
      {
        v26 = v24;
        if (v23)
        {
          v26 = v22 >> 32;
        }

LABEL_14:
        if (v25 >= v26)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }

      if (v23 == 2)
      {
        v26 = *(v44 + 24);
        goto LABEL_14;
      }

      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_27:

        *a3 = v38;
        return result;
      }

LABEL_17:
      v41 = v17;
      v42 = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      v39[0] = v18;

      sub_100264EC4(v39, v43);
      if (v4)
      {
        break;
      }

      v37 = v43[0];
      v35 = v43[2];
      v36 = v43[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_10011802C(0, v38[2] + 1, 1, v38);
      }

      v28 = v38[2];
      v27 = v38[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v33 = v38[2];
        v34 = v28 + 1;
        v31 = sub_10011802C((v27 > 1), v28 + 1, 1, v38);
        v28 = v33;
        v29 = v34;
        v38 = v31;
      }

      v38[2] = v29;
      v30 = &v38[3 * v28];
      *(v30 + 16) = v37;
      v30[5] = v36;
      v30[6] = v35;
    }

    v43[0] = v4;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v40 != 2)
    {
      break;
    }

    if ((v39[0] & 1) == 0)
    {
      goto LABEL_29;
    }

    v4 = 0;
  }

  sub_1000B2594(v39[0], v39[1], v40);
LABEL_29:
}

uint64_t sub_10029988C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = 1282;
  KeyPath = swift_getKeyPath();
  type metadata accessor for wl_nan_tlv(0);
  v11 = v10;
  v12 = sub_10029EFDC(&qword_100593928, type metadata accessor for wl_nan_tlv);
  v13 = sub_100037FF8();
  v14 = sub_10003A734();
  v15 = sub_1002992D4(v39, &v44, KeyPath, a1, a2, v11, a3, v12, v13, v14);

  if (!v4)
  {
    v36 = v39[1];
    v37 = v39[0];
    v17 = v40;
    v18 = v41;
    v19 = v42;
    v20 = (v15 + 32);
    v21 = *(v15 + 16) + 1;
    do
    {
      if (!--v21)
      {

        v31 = _swiftEmptyArrayStorage;
        goto LABEL_16;
      }

      v22 = v20 + 12;
      v23 = *v20;
      v20 += 12;
    }

    while (v23 != 774);
    v43 = v40;
    v25 = *(v22 - 2);
    v24 = *(v22 - 1);
    sub_10000AB0C(v25, v24);

    v26 = sub_100033AA8(_swiftEmptyArrayStorage);
    v27 = type metadata accessor for BinaryDecoder();
    v28 = swift_allocObject();
    v28[5] = &_swiftEmptyDictionarySingleton;
    v28[2] = v25;
    v28[3] = v24;
    v29 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      v30 = 0;
      if (v29 == 2)
      {
        v30 = *(v25 + 16);
      }
    }

    else
    {
      v30 = v25;
      if (!v29)
      {
        v30 = 0;
      }
    }

    v28[4] = v30;
    swift_beginAccess();
    v28[5] = v26;
    v38[3] = v27;
    v38[4] = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
    v38[0] = v28;
    sub_10000AB0C(v25, v24);
    sub_10003132C(v38);
    if ((v32 & 0xC0000000) != 0)
    {
      sub_100048C4C(v32);
      result = sub_1000124C8(v25, v24);
      v31 = _swiftEmptyArrayStorage;
    }

    else
    {
      v34 = v24;
      v35 = v33;
      result = sub_1000124C8(v25, v34);
      v31 = v35;
    }

    v17 = v43;
LABEL_16:
    *a4 = v37;
    *(a4 + 16) = v36;
    *(a4 + 32) = v17;
    *(a4 + 33) = v18;
    *(a4 + 34) = v19;
    *(a4 + 40) = v31;
  }

  return result;
}

uint64_t sub_100299B4C(uint64_t a1, void *a2, uint64_t a3)
{
  result = a2[4];
  v7 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = a2[2];
  v8 = a2[3];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      if (*(v9 + 24) >= v7)
      {
        goto LABEL_7;
      }
    }

    else if (v7 < 1)
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
LABEL_15:
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  if (v10)
  {
    v11 = v9 >> 32;
  }

  else
  {
    v11 = BYTE6(v8);
  }

  if (v11 < v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v7 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = a1;
  v14 = Data._Representation.subscript.getter();
  v16 = v15;
  v17 = sub_100037568(v14, v15);
  if (v3)
  {
    return sub_1000124C8(v14, v16);
  }

  v19 = v17;
  result = sub_1000124C8(v14, v16);
  if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  if ((v12 & 0xFFFF0000) == 0)
  {
    if (v19 == v12)
    {
LABEL_24:
      sub_10000B02C();
      swift_allocError();
      *v18 = xmmword_10047CE70;
      goto LABEL_15;
    }

LABEL_19:
    v20 = bswap32(v19) >> 16;
    if (v20 == 1)
    {
      swift_beginAccess();
      v26 = *(a3 + 40);
      sub_100031694(a3 + 16, v26);
      v27 = UnkeyedDecodingContainer.decodeData(with:)(16, v26);
      v29 = v28;
      swift_endAccess();
      v30 = sub_1002A97D0(v27, v29);
      sub_1000124C8(v27, v29);
      v25 = sub_10003B238(bswap32(v30));
      if ((v25 & 0xFF00000000) != 0x300000000)
      {
        return v25 & 0xFFFFFFFFFFFFLL;
      }
    }

    else if (v20 == 2)
    {
      swift_beginAccess();
      v21 = *(a3 + 40);
      sub_100031694(a3 + 16, v21);
      v22 = UnkeyedDecodingContainer.decodeData(with:)(24, v21);
      v24 = v23;
      swift_endAccess();
      sub_1002A6510(v22, v24, v31);
      sub_1000124C8(v22, v24);
      v25 = sub_10003B238(bswap32(v32) >> 16);
      if ((v25 & 0xFF00000000) != 0x300000000)
      {
        return v25 & 0xFFFFFFFFFFFFLL;
      }
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_100299E4C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  v8 = type metadata accessor for BinaryDecoder();
  v9 = swift_allocObject();
  v9[5] = &_swiftEmptyDictionarySingleton;
  v9[2] = a1;
  v9[3] = a2;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(a1 + 16);
    }
  }

  else
  {
    v11 = a1;
    if (!v10)
    {
      v11 = 0;
    }
  }

  v9[4] = v11;
  swift_beginAccess();
  v9[5] = v7;
  v14[3] = v8;
  v14[4] = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v14[0] = v9;
  sub_10000AB0C(a1, a2);
  sub_1001F507C(v14, v15);
  if (!v3)
  {
    v13 = v15[1];
    *a3 = v15[0];
    a3[1] = v13;
    a3[2] = v16[0];
    result = *(v16 + 9);
    *(a3 + 41) = *(v16 + 9);
  }

  return result;
}

uint64_t sub_100299F90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  v8 = type metadata accessor for BinaryDecoder();
  v9 = swift_allocObject();
  v9[5] = &_swiftEmptyDictionarySingleton;
  v9[2] = a1;
  v9[3] = a2;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(a1 + 16);
    }
  }

  else
  {
    v11 = a1;
    if (!v10)
    {
      v11 = 0;
    }
  }

  v9[4] = v11;
  swift_beginAccess();
  v9[5] = v7;
  v16[3] = v8;
  v16[4] = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v16[0] = v9;
  sub_10000AB0C(a1, a2);
  result = sub_10003132C(v16);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
  }

  return result;
}

uint64_t sub_10029A0C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (WORD1(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_8;
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_10000AB0C(a2, a3);
    v11 = sub_10029A1DC(v3, a2, a3);
    v13 = v12;
    sub_1000124C8(a2, a3);
    Data.append(_:)();
    return sub_1000124C8(v11, v13);
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v5;
LABEL_8:
  if (v5 < 0xFFFF)
  {
    goto LABEL_9;
  }

  sub_10000B02C();
  swift_allocError();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_10029A1DC(__int16 a1, uint64_t a2, unint64_t a3)
{
  v43 = a1;
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      LOWORD(v6) = BYTE6(a3);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  LOWORD(v6) = 0;
  if (v5 != 2)
  {
    goto LABEL_12;
  }

  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    __break(1u);
LABEL_8:
    LODWORD(v6) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v6 = v6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v6 >> 16)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_12:
  v42 = v6;
  v41 = a3 >> 62;
  v10 = sub_1002AAFAC(&v43, 2);
  v12 = v11;
  v13 = sub_1002AAFAC(&v42, 2);
  v15 = v14;
  v50 = v10;
  v51 = v12;
  v46 = &type metadata for Data;
  v47 = &protocol witness table for Data;
  v44 = v13;
  v45 = v14;
  v16 = sub_100029B34(&v44, &type metadata for Data);
  v17 = *v16;
  v18 = v16[1];
  sub_10000AB0C(v10, v12);
  sub_10000AB0C(v13, v15);
  sub_100178A18(v17, v18);
  sub_1000124C8(v13, v15);
  sub_1000124C8(v10, v12);
  sub_100002A00(&v44);
  v19 = v50;
  v20 = v51;
  v48 = v50;
  v49 = v51;
  v46 = &type metadata for Data;
  v47 = &protocol witness table for Data;
  v44 = a2;
  v45 = a3;
  v21 = sub_100029B34(&v44, &type metadata for Data);
  v22 = *v21;
  v23 = v21[1];
  sub_10000AB0C(v19, v20);
  sub_10000AB0C(a2, a3);
  sub_100178A18(v22, v23);
  sub_1000124C8(v19, v20);
  sub_100002A00(&v44);
  v24 = v48;
  v25 = v49;
  if (v41 <= 1)
  {
    if (!v41)
    {
      LOWORD(v26) = BYTE6(a3);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v41 != 2)
  {
    goto LABEL_24;
  }

  v28 = *(a2 + 16);
  v27 = *(a2 + 24);
  v9 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v9)
  {
    __break(1u);
LABEL_19:
    LODWORD(v26) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v26 = v26;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!(v26 >> 16))
  {
    goto LABEL_25;
  }

  __break(1u);
LABEL_24:
  LOWORD(v26) = 0;
LABEL_25:
  v29 = v26 + 3;
  if ((v29 & 0x10000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v41 <= 1)
  {
    if (!v41)
    {
      LOWORD(v30) = BYTE6(a3);
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v41 != 2)
  {
    goto LABEL_38;
  }

  v32 = *(a2 + 16);
  v31 = *(a2 + 24);
  v9 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  if (v9)
  {
    __break(1u);
LABEL_33:
    LODWORD(v30) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_49;
    }

    v30 = v30;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!(v30 >> 16))
  {
    goto LABEL_39;
  }

  __break(1u);
LABEL_38:
  LOWORD(v30) = 0;
LABEL_39:
  v33 = (v29 & 0xFFFC) - v30;
  if ((v33 & 0xFFFF0000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v34 = sub_10014345C(v33);
  v36 = v35;
  v50 = v24;
  v51 = v25;
  v46 = &type metadata for Data;
  v47 = &protocol witness table for Data;
  v44 = v34;
  v45 = v35;
  v37 = sub_100029B34(&v44, &type metadata for Data);
  v38 = *v37;
  v39 = v37[1];
  sub_10000AB0C(v24, v25);
  sub_10000AB0C(v34, v36);
  sub_100178A18(v38, v39);
  sub_1000124C8(v34, v36);
  sub_1000124C8(v24, v25);
  sub_100002A00(&v44);
  return v50;
}

uint64_t sub_10029A50C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a2;
  v27 = v6;
  v28 = a1;
  v17 = sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  sub_1002892A0(v16, sub_10029F2C0, v21, a4, v17, &type metadata for () + 8, &protocol self-conformance witness table for Error, &v20);
  return (*(v13 + 8))(v16, a4);
}

uint64_t sub_10029A6B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v31 = a2;
  v32 = a7;
  v14 = *(*(type metadata accessor for Data.Deallocator() - 8) + 64);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a6 - 8);
  v17 = *(v30 + 64);
  __chkstk_darwin();
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v16, enum case for Data.Deallocator.none(_:));
  result = sub_100002DE8(a1, v17, v16);
  if (a4 >= 0x10000)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    v23 = v21;
    v24 = v33;
    sub_1002949B4(7233902, 0xE300000000000000, a4, result, v21, 1, a5, v32, *(a8 + 16));
    v26 = v25;
    v28 = v27;
    result = sub_1000124C8(v22, v23);
    if (v24)
    {
      *a9 = v24;
    }

    else
    {
      Data.load<A>(as:)(v26, v28, a6, v18);
      sub_1000124C8(v26, v28);
      return (*(v30 + 40))(v31, v18, a6);
    }
  }

  return result;
}

uint64_t sub_10029A8F4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v11 = a1;
  v8 = sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  return sub_100289004(a2, sub_10029F2F8, v10, a4, v8, &type metadata for () + 8, &protocol self-conformance witness table for Error, &v12);
}

uint64_t sub_10029A99C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = sub_10004F3B0(a1, a2);
  if (a4 >= 0x10000)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v17 = v15;
    sub_1002949B4(7233902, 0xE300000000000000, a4, result, v15, 1, a5, a7, *(a8 + 16));
    if (v9)
    {
      result = sub_1000124C8(v16, v17);
      *a9 = v9;
    }

    else
    {
      sub_1000124C8(v18, v19);
      return sub_1000124C8(v16, v17);
    }
  }

  return result;
}

uint64_t sub_10029AA78@<X0>(unsigned int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = sub_10014345C(*(*(a3 - 8) + 64));
  if (a1 >= 0x10000)
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = v13;
    sub_1002949B4(7233902, 0xE300000000000000, a1, result, v13, 0, a2, a4, *(a5 + 16));
    v17 = v16;
    v19 = v18;
    result = sub_1000124C8(v14, v15);
    if (!v6)
    {
      Data.load<A>(as:)(v17, v19, a3, a6);
      return sub_1000124C8(v17, v19);
    }
  }

  return result;
}

uint64_t sub_10029AB84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = *result;
  v16 = *(result + 16);
  v17 = *(result + 32);
  v5 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v8 = *(a4 + 16);
    v7 = *(a4 + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (v9)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    LODWORD(v6) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v6 = v6;
  }

  if (v6 >= 0x10000)
  {
LABEL_12:
    sub_10000B02C();
    swift_allocError();
    *v11 = xmmword_100481860;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }

LABEL_8:
  if (a3 > 34)
  {
    goto LABEL_12;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      v10 = BYTE6(a5);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v5 != 2)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v13 = *(a4 + 16);
  v12 = *(a4 + 24);
  v9 = __OFSUB__(v12, v13);
  v10 = v12 - v13;
  if (v9)
  {
    __break(1u);
LABEL_17:
    LODWORD(v10) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v10 = v10;
  }

LABEL_20:
  result = a3 + v10;
  if (__OFADD__(a3, v10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = sub_10014345C(result);
  __chkstk_darwin();
  sub_10029D6F4(sub_10029F1DC);
  return v14;
}

uint64_t sub_10029AD24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a8 >> 62;
  if ((a8 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v11 = *(a7 + 16);
      v10 = *(a7 + 24);
      v12 = __OFSUB__(v10, v11);
      v9 = v10 - v11;
      if (v12)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_7:
      if (v9 >= 0x10000 || a6 > 30)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  else if (v8)
  {
    LODWORD(v9) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v9 = v9;
    goto LABEL_7;
  }

  if (a6 > 30)
  {
LABEL_16:
    sub_10000B02C();
    swift_allocError();
    *v15 = xmmword_100481860;
    *(v15 + 16) = 0;
    return swift_willThrow();
  }

LABEL_12:
  if (v8 <= 1)
  {
    if (!v8)
    {
      v14 = BYTE6(a8);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    v14 = 0;
    goto LABEL_24;
  }

  v17 = *(a7 + 16);
  v16 = *(a7 + 24);
  v12 = __OFSUB__(v16, v17);
  v14 = v16 - v17;
  if (v12)
  {
    __break(1u);
LABEL_21:
    LODWORD(v14) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v14 = v14;
  }

LABEL_24:
  result = a6 + v14;
  if (__OFADD__(a6, v14))
  {
    __break(1u);
    goto LABEL_28;
  }

  v18 = sub_10014345C(result);
  __chkstk_darwin();
  sub_10029D6F4(sub_10029F1B8);
  return v18;
}

uint64_t sub_10029AECC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!result)
  {
    goto LABEL_42;
  }

  v6 = BYTE6(a6);
  v8 = *(a3 + 16);
  *result = *a3;
  *(result + 16) = v8;
  *(result + 32) = *(a3 + 32);
  v9 = a6 >> 62;
  if (a4)
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
LABEL_15:

        swift_setAtWritableKeyPath();

        goto LABEL_16;
      }

      v11 = *(a5 + 16);
      v10 = *(a5 + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!v12)
      {
LABEL_12:
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v13 >> 16)
        {
          __break(1u);
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v9)
    {
      goto LABEL_15;
    }

    LODWORD(v13) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    v13 = v13;
    goto LABEL_12;
  }

LABEL_16:
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      return result;
    }

    v16 = *(a5 + 16);
    v15 = *(a5 + 24);
    v12 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v12)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v14 = v6;
    goto LABEL_26;
  }

  LODWORD(v14) = HIDWORD(a5) - a5;
  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = v14;
LABEL_25:
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_26:
  if (!v14)
  {
    return result;
  }

  if (v9)
  {
    if (v9 == 2)
    {
      v17 = *(a5 + 16);
    }

    else
    {
      v17 = a5;
    }
  }

  else
  {
    v17 = 0;
  }

  if (__OFADD__(v17, v14))
  {
    goto LABEL_38;
  }

  if (v17 + v14 < v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return Data._copyBytesHelper(to:from:)();
}

uint64_t sub_10029B04C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!result)
  {
    goto LABEL_42;
  }

  *result = a3;
  *(result + 8) = a4;
  *(result + 16) = a5;
  *(result + 24) = a6;
  *(result + 28) = WORD2(a6);
  v10 = a9 >> 62;
  if (a7)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
LABEL_15:

        swift_setAtWritableKeyPath();

        goto LABEL_16;
      }

      v12 = *(a8 + 16);
      v11 = *(a8 + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (!v13)
      {
LABEL_12:
        if ((v14 & 0x8000000000000000) != 0)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v14 >> 16)
        {
          __break(1u);
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v10)
    {
      goto LABEL_15;
    }

    LODWORD(v14) = HIDWORD(a8) - a8;
    if (__OFSUB__(HIDWORD(a8), a8))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    v14 = v14;
    goto LABEL_12;
  }

LABEL_16:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      return result;
    }

    v17 = *(a8 + 16);
    v16 = *(a8 + 24);
    v13 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v15 = BYTE6(a9);
    goto LABEL_26;
  }

  LODWORD(v15) = HIDWORD(a8) - a8;
  if (__OFSUB__(HIDWORD(a8), a8))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = v15;
LABEL_25:
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_26:
  if (!v15)
  {
    return result;
  }

  if (v10)
  {
    if (v10 == 2)
    {
      v18 = *(a8 + 16);
    }

    else
    {
      v18 = a8;
    }
  }

  else
  {
    v18 = 0;
  }

  if (__OFADD__(v18, v15))
  {
    goto LABEL_38;
  }

  if (v18 + v15 < v18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return Data._copyBytesHelper(to:from:)();
}

uint64_t sub_10029B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(*(a10 - 8) + 64);
  result = __chkstk_darwin();
  if (!result)
  {
    goto LABEL_39;
  }

  result = (*(*(a9 - 8) + 24))(a1, v20, a9);
  if (a4)
  {
    v29 = BYTE6(a6);
    v21 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      goto LABEL_11;
    }

    if (!v21)
    {
      v22 = a7;
      goto LABEL_17;
    }

    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    v22 = a7;
LABEL_17:
    while (1)
    {
      v27 = *(a13 + 8);
      sub_100086E78();

      dispatch thunk of BinaryInteger.init<A>(_:)();
      swift_setAtWritableKeyPath();

      a7 = v22;
      BYTE6(a6) = v29;
      if (v21 <= 1)
      {
        break;
      }

LABEL_7:
      if (v21 != 2)
      {
        return result;
      }

      v24 = *(a5 + 16);
      v23 = *(a5 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (!v25)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_11:
      if (v21 == 2)
      {
        if (__OFSUB__(*(a5 + 24), *(a5 + 16)))
        {
          goto LABEL_37;
        }

        v22 = a7;
      }

      else
      {
        v22 = a7;
      }
    }
  }

  else
  {
    v21 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      goto LABEL_7;
    }
  }

  if (v21)
  {
    LODWORD(v26) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_36;
    }

    v26 = v26;
LABEL_22:
    if (v26 < 0)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
    v26 = BYTE6(a6);
  }

  if (!v26)
  {
    return result;
  }

  if (v21)
  {
    if (v21 == 2)
    {
      v28 = *(a5 + 16);
    }

    else
    {
      v28 = a5;
    }
  }

  else
  {
    v28 = 0;
  }

  if (__OFADD__(v28, v26))
  {
    goto LABEL_34;
  }

  if (v28 + v26 < v28)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  return Data._copyBytesHelper(to:from:)();
}

uint64_t sub_10029B424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = xmmword_100480A90;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a2 + 32); ; ++i)
  {
    v6 = *i;
    v7 = *(i + 1);
    v8 = v7 >> 62;
    v32 = *i;
    if ((v7 >> 62) > 1)
    {
      break;
    }

    if (v8)
    {
      v9 = *i;
      if (__OFSUB__(DWORD1(v6), v6))
      {
        goto LABEL_52;
      }

      v12 = DWORD1(v6) - v6;
      goto LABEL_15;
    }

    if (BYTE6(v7) == 255)
    {
      goto LABEL_47;
    }

LABEL_16:
    type metadata accessor for BinaryEncoder();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100480A90;
    *(v13 + 32) = &_swiftEmptyDictionarySingleton;
    v34 = &type metadata for BinaryEncoder.UnkeyedContainer;
    v35 = sub_1000D12E4();
    v33[0] = v13;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
LABEL_28:
        v18 = &type metadata for BinaryEncoder.UnkeyedContainer;
        goto LABEL_29;
      }

      v14 = v32;
      v15 = *(v32 + 16);
      v16 = *(v32 + 24);
      v17 = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v14 = v32;
      if (__OFSUB__(DWORD1(v32), v32))
      {
        goto LABEL_54;
      }

      v17 = DWORD1(v32) - v32;
    }

    sub_10000AB0C(v14, v7);
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    if (v17 > 0xFF)
    {
      goto LABEL_50;
    }

    v18 = v34;
LABEL_29:
    sub_100031694(v33, v18);
    swift_retain_n();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (v3)
    {
      sub_1000124C8(v32, v7);
      sub_100002A00(v33);
      sub_1000124C8(v32, v7);
      sub_1000124C8(v32, v7);

      return sub_1000124C8(v36, *(&v36 + 1));
    }

    v31 = v4;
    v19 = v7;
    sub_100031694(v33, v34);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v32, *(&v32 + 1));
    sub_100002A00(v33);
    sub_1000124C8(v32, v7);

    swift_beginAccess();
    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    sub_10000AB0C(v21, v20);

    v34 = &type metadata for Data;
    v35 = &protocol witness table for Data;
    v33[0] = v21;
    v33[1] = v20;
    v22 = sub_100029B34(v33, &type metadata for Data);
    v23 = *v22;
    v24 = v22[1] >> 62;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *(v23 + 16);
        v29 = *(v23 + 24);
        sub_10000AB0C(v21, v20);
        v30 = v19;
        if (__DataStorage._bytes.getter() && __OFSUB__(v25, __DataStorage._offset.getter()))
        {
          goto LABEL_57;
        }

        v3 = 0;
        if (__OFSUB__(v29, v25))
        {
          goto LABEL_56;
        }

        goto LABEL_43;
      }
    }

    else if (v24)
    {
      v30 = v7;
      v26 = v23;
      if (v23 >> 32 < v23)
      {
        goto LABEL_55;
      }

      sub_10000AB0C(v21, v20);
      if (__DataStorage._bytes.getter())
      {
        v3 = 0;
        if (__OFSUB__(v26, __DataStorage._offset.getter()))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v3 = 0;
      }

LABEL_43:
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_1000124C8(v21, v20);
      sub_1000124C8(v32, v30);
      goto LABEL_4;
    }

    Data._Representation.append(contentsOf:)();
    sub_1000124C8(v32, v7);
    v3 = 0;
LABEL_4:
    sub_100002A00(v33);
    v4 = v31 - 1;
    if (v31 == 1)
    {
      return v36;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_16;
  }

  v9 = *i;
  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    goto LABEL_51;
  }

LABEL_15:
  sub_10000AB0C(v9, v7);
  sub_10000AB0C(v9, v7);
  if (v12 < 255)
  {
    goto LABEL_16;
  }

LABEL_47:
  sub_10000B02C();
  swift_allocError();
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 2;
  swift_willThrow();
  sub_1000124C8(v32, v7);
  sub_1000124C8(v32, v7);
  return sub_1000124C8(v36, *(&v36 + 1));
}

uint64_t BroadcomDriver<>.transmit(followUp:with:for:to:with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = 0;
  v33 = 0;
  v27[0] = a5;
  v27[1] = a7;
  v28 = a6;
  v29 = BYTE2(a6);
  v30 = BYTE3(a6);
  v31 = BYTE4(a6);
  v32 = BYTE5(a6);
  KeyPath = swift_getKeyPath();
  sub_10005DC58(&qword_10058CC30, &qword_100482F30);
  inited = swift_initStackObject();
  *(inited + 32) = 780;
  v17 = inited + 32;
  *(inited + 16) = xmmword_100480F40;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  sub_10000AB0C(a1, a2);
  sub_100288EA0(inited);
  if (v11)
  {

    swift_setDeallocating();
    sub_100016290(v17, &qword_10058CC38, &qword_100482F38);
    v19 = 0xC000000000000000;
    v18 = 0;
  }

  else
  {
    v35 = v10;
    swift_setDeallocating();
    sub_100016290(v17, &qword_10058CC38, &qword_100482F38);
    sub_10000AB0C(0, 0xC000000000000000);
    sub_1000124C8(0, 0xC000000000000000);
    v21 = sub_100037FF8();
    v22 = sub_10029EC70(v27, KeyPath, 0, 0xC000000000000000, a8, a9, a10, v21);
    v24 = v23;
    sub_1000124C8(0, 0xC000000000000000);

    sub_1002949B4(7233902, 0xE300000000000000, 779, v22, v24, 1, a8, a9, *(a10 + 16));
    sub_1000124C8(v25, v26);
    v18 = v22;
    v19 = v24;
  }

  return sub_1000124C8(v18, v19);
}

uint64_t BroadcomDriver<>.transmit(followUp:with:for:to:with:nik:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = 0;
  v33 = 0;
  v27[0] = a5;
  v27[1] = a7;
  v28 = a6;
  v29 = BYTE2(a6);
  v30 = BYTE3(a6);
  v31 = BYTE4(a6);
  v32 = BYTE5(a6);
  KeyPath = swift_getKeyPath();
  sub_10005DC58(&qword_10058CC30, &qword_100482F30);
  inited = swift_initStackObject();
  *(inited + 32) = 780;
  v17 = inited + 32;
  *(inited + 16) = xmmword_100480F40;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  sub_10000AB0C(a1, a2);
  sub_100288EA0(inited);
  if (v12)
  {

    swift_setDeallocating();
    sub_100016290(v17, &qword_10058CC38, &qword_100482F38);
    v19 = 0xC000000000000000;
    v18 = 0;
  }

  else
  {
    v35 = v11;
    swift_setDeallocating();
    sub_100016290(v17, &qword_10058CC38, &qword_100482F38);
    sub_10000AB0C(0, 0xC000000000000000);
    sub_1000124C8(0, 0xC000000000000000);
    v21 = sub_100037FF8();
    v22 = sub_10029EC70(v27, KeyPath, 0, 0xC000000000000000, a9, a10, a11, v21);
    v24 = v23;
    sub_1000124C8(0, 0xC000000000000000);

    sub_1002949B4(7233902, 0xE300000000000000, 779, v22, v24, 1, a9, a10, *(a11 + 16));
    sub_1000124C8(v25, v26);
    v18 = v22;
    v19 = v24;
  }

  return sub_1000124C8(v18, v19);
}

uint64_t sub_10029BE3C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v45 = v4;
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  if ((v3 & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = 1;
  }

  LOWORD(v54) = v4;
LABEL_6:
  v9 = sub_1000D3CF8(3, 2uLL, v3, v4);
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v10 = v54 | (16 * (v9 & 0x30u));
  LOWORD(v54) = v54 | (16 * (v9 & 0x30));
  result = sub_1000E5558(8, 4uLL, v3, v10);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  if ((result & 0xF000) != 0)
  {
    goto LABEL_42;
  }

  if (v6 >> 60 == 15)
  {
    HIBYTE(v53) = 0;
    v12 = v54;
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_10000AB0C(v5, v6);
    sub_10029C370(&v52, v45, v5, v6, v27);
    result = sub_10002F75C(v45, v5, v6);
    v12 = v54;
    if ((v8 & 1) == 0)
    {
LABEL_12:
      LOWORD(v54) = v12 | 0x100;
      v13 = *(v7 + 16);
      if (v13)
      {
        v14 = (v7 + 32);
        do
        {
          v15 = *v14++;
          swift_beginAccess();
          HIDWORD(v52) = v15;
          v50 = &type metadata for UnsafeMutableRawBufferPointer;
          v51 = &protocol witness table for UnsafeMutableRawBufferPointer;
          v48 = &v52;
          v49 = v55;
          v16 = sub_100029B34(&v48, &type metadata for UnsafeMutableRawBufferPointer);
          v17 = *v16;
          if (*v16 && (v18 = v16[1], v19 = v18 - v17, v18 != v17))
          {
            if (v19 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v47 = v18 - v17;
              memcpy(__dst, v17, v18 - v17);
              v20 = *__dst;
              v21 = v44 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v47 << 16)) << 32);
              v44 = v21;
            }

            else
            {
              v22 = type metadata accessor for __DataStorage();
              v23 = *(v22 + 48);
              v24 = *(v22 + 52);
              swift_allocObject();
              v25 = __DataStorage.init(bytes:length:)();
              v26 = v25;
              if (v19 >= 0x7FFFFFFF)
              {
                type metadata accessor for Data.RangeReference();
                v20 = swift_allocObject();
                *(v20 + 16) = 0;
                *(v20 + 24) = v19;
                v21 = v26 | 0x8000000000000000;
              }

              else
              {
                v20 = v19 << 32;
                v21 = v25 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v20 = 0;
            v21 = 0xC000000000000000;
          }

          sub_100002A00(&v48);
          Data.append(_:)();
          swift_endAccess();
          result = sub_1000124C8(v20, v21);
          if (v6 >> 60 != 15)
          {
            sub_10000AB0C(v5, v6);
            Data.append(_:)();
            result = sub_10002F75C(v45, v5, v6);
          }

          --v13;
        }

        while (v13);
      }

      return result;
    }
  }

  LOWORD(v54) = v12 | 0x200;
  v28 = *(v7 + 16);
  if (v28)
  {
    v29 = (v7 + 36);
    do
    {
      v30 = *(v29 - 4);
      v31 = *(v29 - 1);
      v32 = *v29;
      swift_beginAccess();
      HIDWORD(v52) = v30 | (v31 << 16) | (v32 << 24);
      v50 = &type metadata for UnsafeMutableRawBufferPointer;
      v51 = &protocol witness table for UnsafeMutableRawBufferPointer;
      v48 = &v52;
      v49 = v55;
      v33 = sub_100029B34(&v48, &type metadata for UnsafeMutableRawBufferPointer);
      v34 = *v33;
      if (*v33 && (v35 = v33[1], v36 = v35 - v34, v35 != v34))
      {
        if (v36 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v47 = v35 - v34;
          memcpy(__dst, v34, v35 - v34);
          v37 = *__dst;
          v38 = v44 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v47 << 16)) << 32);
          v44 = v38;
        }

        else
        {
          v39 = type metadata accessor for __DataStorage();
          v40 = *(v39 + 48);
          v41 = *(v39 + 52);
          swift_allocObject();
          v42 = __DataStorage.init(bytes:length:)();
          v43 = v42;
          if (v36 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v37 = swift_allocObject();
            *(v37 + 16) = 0;
            *(v37 + 24) = v36;
            v38 = v43 | 0x8000000000000000;
          }

          else
          {
            v37 = v36 << 32;
            v38 = v42 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v37 = 0;
        v38 = 0xC000000000000000;
      }

      sub_100002A00(&v48);
      Data.append(_:)();
      swift_endAccess();
      result = sub_1000124C8(v37, v38);
      if (v6 >> 60 != 15)
      {
        sub_10000AB0C(v5, v6);
        Data.append(_:)();
        result = sub_10002F75C(v45, v5, v6);
      }

      v29 += 10;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t sub_10029C370@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_10002F214(6, 9uLL, a2, a5);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v9 >> 16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(a1 + 2) = v9;
  v10 = sub_10002F09C(3uLL, 3uLL, a2);
  v11 = a4 >> 62;
  v12 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v10);
  if (v12 != 8)
  {
    *(a1 + 14) = v12;
    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_11:
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v15 = *(a3 + 16);
    v14 = *(a3 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (v16)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_13:
    if ((v13 & 0x8000000000000000) == 0)
    {
      if (v13 <= 0xFF)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_16:
      LOBYTE(v13) = 0;
      goto LABEL_17;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(a1 + 14) = 0;
  if (v11 > 1)
  {
    goto LABEL_11;
  }

  if (v11)
  {
LABEL_9:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = v13;
    goto LABEL_13;
  }

LABEL_6:
  v13 = HIWORD(a4);
LABEL_17:
  *(a1 + 15) = v13;
  v17 = sub_10002F09C(0, 3uLL, a2);
  result = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v17);
  if (v11 <= 1)
  {
    if (!v11)
    {
      LOWORD(v18) = BYTE6(a4);
      goto LABEL_31;
    }
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_30;
    }

    v21 = *(a3 + 16);
    v20 = *(a3 + 24);
    v16 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (!v16)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  LODWORD(v18) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v18 = v18;
LABEL_27:
    if ((v18 & 0x8000000000000000) == 0)
    {
      if (!(v18 >> 16))
      {
        goto LABEL_31;
      }

      __break(1u);
LABEL_30:
      LOWORD(v18) = 0;
LABEL_31:
      v22 = v18 + 18;
      if ((v22 & 0x10000) == 0)
      {
        v23 = v22 + 1;
        if ((v23 & 0x10000) == 0)
        {
          *a1 = v23;
          return result;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_42:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10029C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = sub_100170260(a1, a2);
  v10 = v9;
  v20 = v8;
  v21 = v9;
  v19[3] = &type metadata for Data;
  v19[4] = &protocol witness table for Data;
  v19[0] = a4;
  v19[1] = a5;
  v11 = sub_100029B34(v19, &type metadata for Data);
  v12 = *v11;
  v13 = v11[1];
  sub_10000AB0C(v8, v10);
  sub_10000AB0C(a4, a5);
  sub_100178A18(v12, v13);
  sub_1000124C8(v8, v10);
  sub_100002A00(v19);
  v14 = v20;
  v15 = v21;
  sub_1002940E0(7233902, 0xE300000000000000, 274, v20, v21, 1);
  if (!v5)
  {
    sub_1000124C8(v16, v17);
  }

  return sub_1000124C8(v14, v15);
}

uint64_t sub_10029C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v28 = a7;
  v13 = sub_100170260(a1, a2);
  v15 = v14;
  v26 = v13;
  v27 = v14;
  v25[3] = &type metadata for Data;
  v25[4] = &protocol witness table for Data;
  v25[0] = a4;
  v25[1] = a5;
  v16 = sub_100029B34(v25, &type metadata for Data);
  v17 = *v16;
  v18 = v16[1];
  sub_10000AB0C(v13, v15);
  sub_10000AB0C(a4, a5);
  sub_100178A18(v17, v18);
  sub_1000124C8(v13, v15);
  sub_100002A00(v25);
  v19 = v26;
  v20 = v27;
  sub_1002949B4(7233902, 0xE300000000000000, 274, v26, v27, 1, a6, v28, *(a8 + 16));
  if (v9)
  {
    result = sub_1000124C8(v19, v20);
    *a9 = v9;
  }

  else
  {
    sub_1000124C8(v21, v22);
    return sub_1000124C8(v19, v20);
  }

  return result;
}

uint64_t sub_10029C7B0(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v16, v17);
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v4)
  {
    return sub_100002A00(v16);
  }

  v7 = v19;
  v8 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_14:
      sub_100031694(v16, v17);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v12 = v19;
      v13 = v20;
      v14 = v19;
      v15 = v20;
      sub_100031694(v16, v17);
      sub_10000AB0C(v12, v13);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v14, v15);
      return sub_100002A00(v16);
    }

    v9 = *(v19 + 16);
    v10 = *(v19 + 24);
    v11 = __OFSUB__(v10, v9);
    v7 = v10 - v9;
    if (!v11)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v8)
  {
    goto LABEL_14;
  }

  v11 = __OFSUB__(HIDWORD(v7), v7);
  LODWORD(v7) = HIDWORD(v7) - v7;
  if (v11)
  {
    goto LABEL_17;
  }

  v7 = v7;
LABEL_11:
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7 >> 16)
    {
      __break(1u);
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10029C95C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_10029C9D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100117F20(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100117F20((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100117F20(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100117F20(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100117F20((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10029CD98(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000124C8(v6, v5);
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

    sub_1000124C8(v6, v5);
    *v3 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
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

      v17 = sub_10029E180(v6, v6 >> 32, a1);

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

    sub_1000124C8(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100480A90;
    sub_1000124C8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10029E180(*(v19 + 2), *(v19 + 3), a1);
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