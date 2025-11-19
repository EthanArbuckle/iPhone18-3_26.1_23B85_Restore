uint64_t sub_10038CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + qword_10059BAA0;
  v5 = type metadata accessor for NANPeer(0);
  WiFiAddress.description.getter(*(v4 + *(v5 + 20)) | (*(v4 + *(v5 + 20) + 2) << 16));
  String.uppercased()();

  sub_10005E2E4();
  LOBYTE(v4) = StringProtocol.contains<A>(_:)();

  return v4 & 1;
}

Class sub_10038CC1C()
{
  v1 = v0;
  v2 = *(v0 + qword_10059BAC8);
  swift_unownedRetainStrong();
  v3 = v1 + qword_10059BAA0;
  v4 = type metadata accessor for NANPeer(0);
  v5 = sub_1004109E4(*(v3 + *(v4 + 20)) | (*(v3 + *(v4 + 20) + 2) << 16));
  v7 = v6;

  result = 0;
  if ((v7 & 1) == 0)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = RSSI.description.getter();
      v15 = sub_100002320(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "RSSI: %s", v11, 0xCu);
      sub_100002A00(v12);
    }

    sub_10036CDE8();
    v16 = RSSI.scaled.getter(v5);
    return NSNumber.init(floatLiteral:)(v16).super.super.isa;
  }

  return result;
}

Class sub_10038CD9C()
{
  v0 = sub_10038D144();
  if (v1)
  {
    return 0;
  }

  v3 = *&v0;
  sub_10038D970();
  v6 = v5;
  if (v5 >= v3)
  {
    v6 = v3;
  }

  if ((v4 & 1) == 0)
  {
    v3 = v6;
  }

  sub_10036CDE8();
  return NSNumber.init(floatLiteral:)(v3).super.super.isa;
}

Class sub_10038CE00()
{
  v1 = v0;
  v2 = *(*(*v0 + 88) + 8);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21 - v7;
  v9 = *(v1 + qword_10059BAC8);
  swift_unownedRetainStrong();
  v10 = *(*v9 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9 + v10, AssociatedTypeWitness);

  v11 = v1 + qword_10059BAA0;
  v12 = (v11 + *(type metadata accessor for NANPeer(0) + 20));
  v13 = *(v12 + 1);
  v14 = *v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 352))(v14 | (v13 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  result = sub_10038CD9C();
  if (result)
  {
    v18 = result;
    [(objc_class *)result floatValue];
    v20 = v19;

    sub_10036CDE8();
    return NSNumber.init(floatLiteral:)(vcvtd_n_f64_u32(v16, 6uLL) * v20).super.super.isa;
  }

  return result;
}

uint64_t sub_10038D144()
{
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v1 = v0 + qword_10059BA98;
  v2 = type metadata accessor for NANDriverCapabilities();
  v3 = (v1 + v2[19]);
  if (v3[5])
  {
    v4 = (v1 + v2[18]);
    if (*(v4 + 20))
    {
      v5 = (v1 + v2[17]);
      if (v5[4])
      {
        goto LABEL_8;
      }

      v7 = *v5;
      v6 = v5[1];
      v8 = HIDWORD(*v5);
      v9 = *v5 >> 40;
      v10 = HIWORD(*v5);
      v12 = v5[2];
      v11 = v5[3];
      v75 = HIDWORD(v6);
      v76 = v6 >> 40;
      v77 = HIWORD(v6);
      v78 = HIBYTE(v6);
      v79 = v12 >> 8;
      v80 = v12 >> 16;
      v81 = v12 >> 24;
      v82 = HIDWORD(v12);
      v83 = v12 >> 40;
      v84 = HIWORD(v12);
      v85 = HIBYTE(v12);
      v86 = v11 >> 8;
      v87 = v11 >> 24;
      v88 = HIBYTE(v11);
      type metadata accessor for apple80211_ht_capability(0);
      v92 = v13;
      v93 = &protocol witness table for apple80211_ht_capability;
      v14 = swift_allocObject();
      *&v90 = v14;
      *(v14 + 16) = v7;
      *(v14 + 20) = v8;
      *(v14 + 21) = v9;
      *(v14 + 22) = v10;
      *(v14 + 24) = v6;
      *(v14 + 26) = BYTE2(v6);
      *(v14 + 27) = BYTE3(v6);
      *(v14 + 28) = v75;
      *(v14 + 29) = v76;
      *(v14 + 30) = v77;
      *(v14 + 31) = v78;
      *(v14 + 32) = v12;
      *(v14 + 33) = v79;
      *(v14 + 34) = v80;
      *(v14 + 35) = v81;
      *(v14 + 36) = v82;
      *(v14 + 37) = v83;
      *(v14 + 38) = v84;
      *(v14 + 39) = v85;
      *(v14 + 40) = v11;
      *(v14 + 41) = v86;
      *(v14 + 43) = v87;
      *(v14 + 47) = v88;
    }

    else
    {
      v27 = *v4;
      v26 = v4[1];
      v28 = HIDWORD(*v4);
      v29 = *v4 >> 40;
      v30 = *(v4 + 4);
      v31 = HIWORD(*v4) | (v26 << 16);
      v32 = v26 >> 16;
      v33 = HIDWORD(v26);
      v34 = HIWORD(v26);
      type metadata accessor for apple80211_vht_capability(0);
      v92 = v35;
      v93 = &protocol witness table for apple80211_vht_capability;
      LODWORD(v90) = v27;
      BYTE4(v90) = v28;
      BYTE5(v90) = v29;
      *(&v90 + 6) = v31;
      WORD5(v90) = v32;
      WORD6(v90) = v33;
      HIWORD(v90) = v34;
      v91 = v30;
    }
  }

  else
  {
    v15 = *v3;
    v16 = v3[1];
    v17 = HIDWORD(*v3);
    v18 = *v3 >> 40;
    v20 = v3[3];
    v19 = v3[4];
    v21 = HIWORD(*v3);
    v22 = HIBYTE(*v3);
    v23 = v3[2];
    v71 = v16 >> 16;
    v72 = v16 >> 24;
    v73 = HIDWORD(v16);
    v74 = v16 >> 40;
    v75 = HIWORD(v16);
    v76 = HIBYTE(v16);
    v77 = v23 >> 8;
    v78 = v23 >> 16;
    v79 = v23 >> 24;
    v80 = HIDWORD(v23);
    v81 = v23 >> 40;
    v82 = HIWORD(v23);
    v83 = HIBYTE(v23);
    v84 = v20 >> 16;
    v85 = HIDWORD(v20);
    v86 = HIWORD(v20);
    v87 = v19 >> 16;
    v88 = HIDWORD(v19);
    type metadata accessor for apple80211_he_capability(0);
    v92 = v24;
    v93 = &protocol witness table for apple80211_he_capability;
    v25 = swift_allocObject();
    *&v90 = v25;
    *(v25 + 16) = v15;
    *(v25 + 20) = v17;
    *(v25 + 21) = v18;
    *(v25 + 22) = v21;
    *(v25 + 23) = v22;
    *(v25 + 24) = v16;
    *(v25 + 26) = v71;
    *(v25 + 27) = v72;
    *(v25 + 28) = v73;
    *(v25 + 29) = v74;
    *(v25 + 30) = v75;
    *(v25 + 31) = v76;
    *(v25 + 32) = v23;
    *(v25 + 33) = v77;
    *(v25 + 34) = v78;
    *(v25 + 35) = v79;
    *(v25 + 36) = v80;
    *(v25 + 37) = v81;
    *(v25 + 38) = v82;
    *(v25 + 39) = v83;
    *(v25 + 40) = v20;
    *(v25 + 42) = v84;
    *(v25 + 44) = v85;
    *(v25 + 46) = v86;
    *(v25 + 48) = v19;
    *(v25 + 50) = v87;
    *(v25 + 52) = v88;
  }

  sub_10038FBE4(&v90, &v95);
LABEL_8:
  v36 = *(&v96 + 1);
  if (*(&v96 + 1))
  {
    v37 = v97;
    sub_100029B34(&v95, *(&v96 + 1));
    v38 = *(v36 - 8);
    v39 = *(v38 + 64);
    __chkstk_darwin();
    v41 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41);
    (*(v37 + 24))(v98, v36, v37);
    (*(v38 + 8))(v41, v36);
    v42 = BYTE1(v98[0]);
    if (BYTE1(v98[0]) == 7)
    {
      v43 = 7;
    }

    else if (static Bandwidth.< infix(_:_:)(4, BYTE1(v98[0])))
    {
      v43 = 4;
    }

    else
    {
      v43 = v42;
    }

    v45 = v102;
    v46 = v100;
    v47 = v101;
    v48 = v98[1];
    LODWORD(v49) = v99;
    v50 = LOBYTE(v98[0]);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v89 = v49;
      v49 = v53;
      v54 = swift_slowAlloc();
      LODWORD(v88) = v50;
      v94 = v54;
      *v49 = 136315394;
      LOBYTE(v90) = v88;
      BYTE1(v90) = v43;
      *(&v90 + 1) = v48;
      LOBYTE(v91) = v89;
      v92 = v46;
      LOBYTE(v93) = v47;
      BYTE1(v93) = v45;
      v55 = PHYCapabilities.description.getter();
      v57 = sub_100002320(v55, v56, &v94);
      v87 = v48;
      v58 = v47;
      v59 = v46;
      v60 = v45;
      v61 = v43;
      v62 = v57;

      *(v49 + 4) = v62;
      *(v49 + 12) = 2080;
      PHYCapabilities.PHYDataRateMbps.getter();
      v103 = v63;
      LOBYTE(v104) = v64 & 1;
      sub_10005DC58(&qword_100591C10, &qword_1004B2410);
      v65 = String.init<A>(describing:)();
      v67 = sub_100002320(v65, v66, &v94);

      *(v49 + 14) = v67;
      v43 = v61;
      v45 = v60;
      v46 = v59;
      v47 = v58;
      v48 = v87;
      _os_log_impl(&_mh_execute_header, v51, v52, "[Datapath Performance] SELF: %s, Data Rate: %s Mbps", v49, 0x16u);
      swift_arrayDestroy();
      LOBYTE(v50) = v88;

      LOBYTE(v49) = v89;
    }

    LOBYTE(v103) = v50;
    BYTE1(v103) = v43;
    v104 = v48;
    v105 = v49;
    v106 = v46;
    v107 = v47;
    v108 = v45;
    PHYCapabilities.PHYDataRateMbps.getter();
    v44 = v68;
  }

  else
  {
    v44 = 0;
  }

  sub_100016290(&v95, &qword_1005983A8, &unk_1004B2418);
  return v44;
}

double sub_10038D970()
{
  v1 = v0 + qword_10059BAA0;
  v2 = (v1 + *(type metadata accessor for NANPeer(0) + 112));
  v4 = *v2;
  if (*v2 != 3)
  {
    v5 = *(v2 + 16);
    v6 = v2[3];
    v7 = *(v2 + 4);
    v8 = v2[1];
    v19 = v4;
    v20 = v8;
    v21 = v7 & 1;
    v22 = v6;
    v23 = v5 & 0xFF01;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = PHYCapabilities.description.getter();
      v14 = sub_100002320(v12, v13, &v18);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      PHYCapabilities.PHYDataRateMbps.getter();
      sub_10005DC58(&qword_100591C10, &qword_1004B2410);
      v15 = String.init<A>(describing:)();
      v17 = sub_100002320(v15, v16, &v18);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "[Datapath Performance] PEER: %s, Data Rate: %s Mbps", v11, 0x16u);
      swift_arrayDestroy();
    }

    return PHYCapabilities.PHYDataRateMbps.getter();
  }

  return result;
}

uint64_t sub_10038DB5C()
{
  v1 = sub_1002DE59C(_swiftEmptyArrayStorage);
  v2 = *(v0 + qword_10059BAC0);
  if (!v2)
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "[Datapath Performance] Bad self.lastIntervalMetrics", v63, 2u);
    }

    v60 = *(v1 + 16);
    if (!v60)
    {
      goto LABEL_77;
    }

    goto LABEL_80;
  }

  v98 = v1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v100 = *(v0 + qword_10059BAC0);

  v8 = 0;
  while (1)
  {
    if (!v6)
    {
      if (v7 <= v8 + 1)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v10 - 1;
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v6 = 0;
          v103 = 0u;
          v104 = 0u;
          v8 = v11;
          v102 = 0u;
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_104;
    }

    v9 = v8;
LABEL_17:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(v100 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_100002B30(*(v100 + 56) + 32 * v13, v101);
    *&v102 = v15;
    *(&v102 + 1) = v16;
    sub_100085188(v101, &v103);

LABEL_18:
    v105 = v102;
    v106[0] = v103;
    v106[1] = v104;
    v17 = *(&v102 + 1);
    if (!*(&v102 + 1))
    {
      break;
    }

    v18 = v105;
    sub_100085188(v106, &v102);
    *&v101[0] = v18;
    *(&v101[0] + 1) = v17;
    sub_10005E2E4();
    if (StringProtocol.contains<A>(_:)() & 1) != 0 && (*&v101[0] = v18, *(&v101[0] + 1) = v17, (StringProtocol.contains<A>(_:)()) && (sub_100002B30(&v102, v101), (swift_dynamicCast()))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v101[0] = v98;
      v20 = sub_10000B8DC(1);
      v22 = *(v98 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_110;
      }

      v26 = v21;
      if (*(v98 + 24) >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = v20;
          sub_10046ADEC();
          v20 = v56;
        }
      }

      else
      {
        sub_100310060(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_10000B8DC(1);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_118;
        }
      }

      v50 = *&v101[0];
      v98 = *&v101[0];
      if ((v26 & 1) == 0)
      {
        *(*&v101[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(v50[6] + 8 * v20) = 1;
        *(v50[7] + 8 * v20) = 0x636E6574614C7874;
        sub_100002A00(&v102);
        v51 = v50[2];
        v24 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v24)
        {
          goto LABEL_114;
        }

        goto LABEL_71;
      }

LABEL_69:
      *(v50[7] + 8 * v20) = 0x636E6574614C7874;
      sub_100002A00(&v102);
    }

    else
    {
      *&v101[0] = v18;
      *(&v101[0] + 1) = v17;
      if (StringProtocol.contains<A>(_:)())
      {
        *&v101[0] = v18;
        *(&v101[0] + 1) = v17;
        if (StringProtocol.contains<A>(_:)())
        {
          sub_100002B30(&v102, v101);
          if (swift_dynamicCast())
          {

            v28 = swift_isUniquelyReferenced_nonNull_native();
            *&v101[0] = v98;
            v20 = sub_10000B8DC(2);
            v30 = *(v98 + 16);
            v31 = (v29 & 1) == 0;
            v24 = __OFADD__(v30, v31);
            v32 = v30 + v31;
            if (v24)
            {
              goto LABEL_111;
            }

            v33 = v29;
            if (*(v98 + 24) >= v32)
            {
              if ((v28 & 1) == 0)
              {
                v57 = v20;
                sub_10046ADEC();
                v20 = v57;
              }
            }

            else
            {
              sub_100310060(v32, v28);
              v20 = sub_10000B8DC(2);
              if ((v33 & 1) != (v34 & 1))
              {
                goto LABEL_118;
              }
            }

            v50 = *&v101[0];
            v98 = *&v101[0];
            if (v33)
            {
              goto LABEL_69;
            }

            *(*&v101[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
            *(v50[6] + 8 * v20) = 2;
            *(v50[7] + 8 * v20) = 0x636E6574614C7874;
            sub_100002A00(&v102);
            v53 = v50[2];
            v24 = __OFADD__(v53, 1);
            v52 = v53 + 1;
            if (v24)
            {
              goto LABEL_115;
            }

            goto LABEL_71;
          }
        }
      }

      *&v101[0] = v18;
      *(&v101[0] + 1) = v17;
      if (StringProtocol.contains<A>(_:)())
      {
        *&v101[0] = v18;
        *(&v101[0] + 1) = v17;
        if (StringProtocol.contains<A>(_:)())
        {
          sub_100002B30(&v102, v101);
          if (swift_dynamicCast())
          {

            v35 = swift_isUniquelyReferenced_nonNull_native();
            *&v101[0] = v98;
            v20 = sub_10000B8DC(4);
            v37 = *(v98 + 16);
            v38 = (v36 & 1) == 0;
            v24 = __OFADD__(v37, v38);
            v39 = v37 + v38;
            if (v24)
            {
              goto LABEL_112;
            }

            v40 = v36;
            if (*(v98 + 24) >= v39)
            {
              if ((v35 & 1) == 0)
              {
                v58 = v20;
                sub_10046ADEC();
                v20 = v58;
              }
            }

            else
            {
              sub_100310060(v39, v35);
              v20 = sub_10000B8DC(4);
              if ((v40 & 1) != (v41 & 1))
              {
                goto LABEL_118;
              }
            }

            v50 = *&v101[0];
            v98 = *&v101[0];
            if (v40)
            {
              goto LABEL_69;
            }

            *(*&v101[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
            *(v50[6] + 8 * v20) = 4;
            *(v50[7] + 8 * v20) = 0x636E6574614C7874;
            sub_100002A00(&v102);
            v54 = v50[2];
            v24 = __OFADD__(v54, 1);
            v52 = v54 + 1;
            if (v24)
            {
              goto LABEL_116;
            }

            goto LABEL_71;
          }
        }
      }

      *&v101[0] = v18;
      *(&v101[0] + 1) = v17;
      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {

        goto LABEL_6;
      }

      *&v101[0] = v18;
      *(&v101[0] + 1) = v17;
      v42 = StringProtocol.contains<A>(_:)();

      if (v42 & 1) != 0 && (sub_100002B30(&v102, v101), (swift_dynamicCast()))
      {
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *&v101[0] = v98;
        v20 = sub_10000B8DC(3);
        v45 = *(v98 + 16);
        v46 = (v44 & 1) == 0;
        v24 = __OFADD__(v45, v46);
        v47 = v45 + v46;
        if (v24)
        {
          goto LABEL_113;
        }

        v48 = v44;
        if (*(v98 + 24) >= v47)
        {
          if ((v43 & 1) == 0)
          {
            v59 = v20;
            sub_10046ADEC();
            v20 = v59;
          }
        }

        else
        {
          sub_100310060(v47, v43);
          v20 = sub_10000B8DC(3);
          if ((v48 & 1) != (v49 & 1))
          {
            goto LABEL_118;
          }
        }

        v50 = *&v101[0];
        v98 = *&v101[0];
        if (v48)
        {
          goto LABEL_69;
        }

        *(*&v101[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(v50[6] + 8 * v20) = 3;
        *(v50[7] + 8 * v20) = 0x636E6574614C7874;
        sub_100002A00(&v102);
        v55 = v50[2];
        v24 = __OFADD__(v55, 1);
        v52 = v55 + 1;
        if (v24)
        {
          goto LABEL_117;
        }

LABEL_71:
        v50[2] = v52;
      }

      else
      {
LABEL_6:
        sub_100002A00(&v102);
      }
    }
  }

  v1 = v98;
  v60 = *(v98 + 16);
  if (v60)
  {
    goto LABEL_80;
  }

LABEL_77:
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "[Datapath Performance] avgLatency has no data", v66, 2u);
  }

  v60 = *(v1 + 16);
  if (v60)
  {
LABEL_80:
    *&v105 = _swiftEmptyArrayStorage;
    sub_1003678C8(0, v60, 0);
    v67 = v105;
    v68 = v1 + 64;
    v69 = -1 << *(v1 + 32);
    v70 = _HashTable.startBucket.getter();
    v71 = *(v1 + 36);
    v99 = v71;
    sub_10036CDE8();
    v72 = 0;
    v96 = v1 + 72;
    v97 = v60;
    while ((v70 & 0x8000000000000000) == 0 && v70 < 1 << *(v1 + 32))
    {
      v75 = v70 >> 6;
      if ((*(v68 + 8 * (v70 >> 6)) & (1 << v70)) == 0)
      {
        goto LABEL_105;
      }

      if (v71 != *(v1 + 36))
      {
        goto LABEL_106;
      }

      v76 = v68;
      v77 = *(*(v1 + 56) + 8 * v70);
      v78.super.super.isa = NSNumber.init(integerLiteral:)(*(*(v1 + 48) + 8 * v70)).super.super.isa;
      v79.super.super.isa = NSNumber.init(floatLiteral:)(v77).super.super.isa;
      *&v105 = v67;
      v80 = v1;
      v82 = *(v67 + 16);
      v81 = *(v67 + 24);
      v83 = v67;
      if (v82 >= v81 >> 1)
      {
        isa = v79.super.super.isa;
        sub_1003678C8((v81 > 1), v82 + 1, 1);
        v79.super.super.isa = isa;
        v83 = v105;
      }

      *(v83 + 16) = v82 + 1;
      v84 = (v83 + 16 * v82);
      v84[4].super.super.isa = v78.super.super.isa;
      v84[5].super.super.isa = v79.super.super.isa;
      v73 = 1 << *(v80 + 32);
      if (v70 >= v73)
      {
        goto LABEL_107;
      }

      v85 = *(v76 + 8 * v75);
      if ((v85 & (1 << v70)) == 0)
      {
        goto LABEL_108;
      }

      v1 = v80;
      v67 = v83;
      v68 = v76;
      v71 = v99;
      if (v99 != *(v80 + 36))
      {
        goto LABEL_109;
      }

      v86 = v85 & (-2 << (v70 & 0x3F));
      if (v86)
      {
        v73 = __clz(__rbit64(v86)) | v70 & 0x7FFFFFFFFFFFFFC0;
        v74 = v97;
      }

      else
      {
        v87 = v75 << 6;
        v88 = v75 + 1;
        v74 = v97;
        v89 = (v96 + 8 * v75);
        while (v88 < (v73 + 63) >> 6)
        {
          v91 = *v89++;
          v90 = v91;
          v87 += 64;
          ++v88;
          if (v91)
          {
            sub_10002BEB8(v70, v99, 0);
            v73 = __clz(__rbit64(v90)) + v87;
            goto LABEL_82;
          }
        }

        sub_10002BEB8(v70, v99, 0);
      }

LABEL_82:
      ++v72;
      v70 = v73;
      if (v72 == v74)
      {

        if (!*(v67 + 16))
        {
          goto LABEL_101;
        }

        goto LABEL_99;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
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
    type metadata accessor for WiFiAwareAccessCategory(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    if (_swiftEmptyArrayStorage[2])
    {
LABEL_99:
      sub_10005DC58(&unk_10059B230, &unk_1004B2400);
      v92 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
LABEL_101:
      v92 = &_swiftEmptyDictionarySingleton;
    }

    *&v105 = v92;

    sub_10038EB34(v93, 1, &v105);

    return v105;
  }

  return result;
}

double sub_10038E770()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_10038E854()
{
  sub_10038FCA4(v0 + qword_10059BA98, type metadata accessor for NANDriverCapabilities);
  sub_10038FCA4(v0 + qword_10059BAA0, type metadata accessor for NANPeer);
  v1 = qword_10059BAA8;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_10059BAB0;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_10059BAB8);

  v6 = *(v0 + qword_10059BAC0);

  v7 = *(v0 + qword_10059BAC8);
  swift_unownedRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10038E974()
{
  sub_10038E854();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SampleEntry()
{
  result = qword_100598370;
  if (!qword_100598370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10038EA2C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_10038EAA4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
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

    v8 = sub_10038F770(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10038EB34(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_1003E096C(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_10030FDF8(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_1003E096C(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_10036CDE8();
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_10046AC8C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x80000001004BD5D0;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_10036CDE8();
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_1003E096C(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_10030FDF8(v32, 1);
        v33 = *a3;
        v28 = sub_1003E096C(v9);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v35[6] + 8 * v28) = v9;
      *(v35[7] + 8 * v28) = v10;
      v36 = v35[2];
      v15 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v35[2] = v37;
      v6 += 2;
      if (v4 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_10038EE9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = type metadata accessor for SampleEntry();
  v58 = *(v60 - 8);
  v10 = *(v58 + 8);
  __chkstk_darwin();
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = &v56 - v12;
  __chkstk_darwin();
  v14 = &v56 - v13;
  __chkstk_darwin();
  v16 = &v56 - v15;
  v17 = (type metadata accessor for NANPeer(0) - 8);
  v18 = *(*v17 + 64);
  __chkstk_darwin();
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  Date.init()();
  *(v5 + qword_10059BAC0) = 0;
  *(v5 + 112) = a1;
  *(v5 + qword_10059BAC8) = a2;
  v21 = *(*a2 + 736);
  swift_beginAccess();
  sub_10038F6A0(a2 + v21, v5 + qword_10059BA98, type metadata accessor for NANDriverCapabilities);
  swift_unownedRetain();
  sub_10040CD68(a3 & 0xFFFFFFFFFFFFLL, v20);
  sub_10038F708(v20, v5 + qword_10059BAA0, type metadata accessor for NANPeer);
  v22 = qword_10059BAB0;
  v23 = type metadata accessor for Logger();
  v61 = *(v23 - 8);
  v62 = a4;
  (*(v61 + 16))(v5 + v22, a4, v23);
  v24 = qword_10059BAB8;
  *(v5 + qword_10059BAB8) = _swiftEmptyArrayStorage;
  v25 = (v5 + qword_10059BAA0 + v17[7]);
  static WAAnalytics.samplePeerStats(macAddress:)(*v25 | (*(v25 + 1) << 16), v63);
  if (v64)
  {
    sub_100085188(v63, v65);
    static Date.now.getter();
    sub_100002B30(v65, &v16[*(v60 + 20)]);
    sub_10038F6A0(v16, v14, type metadata accessor for SampleEntry);
    swift_beginAccess();
    v26 = *(v5 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v24) = v26;
    v56 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1003A72AC(0, v26[2] + 1, 1, v26);
      *(v5 + v24) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_1003A72AC(v28 > 1, v29 + 1, 1, v26);
    }

    v26[2] = v29 + 1;
    sub_10038F708(v14, v26 + ((v58[80] + 32) & ~v58[80]) + *(v58 + 9) * v29, type metadata accessor for SampleEntry);
    *(v5 + v24) = v26;
    swift_endAccess();
    v30 = v59;
    sub_10038F6A0(v16, v59, type metadata accessor for SampleEntry);
    swift_retain_n();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v58 = v16;
      v34 = v33;
      v63[0] = swift_slowAlloc();
      *v34 = 16777986;
      *(v34 + 4) = *(v5 + 112);
      *(v34 + 5) = 2080;
      v35 = *(v25 + 1);
      v36 = *v25;

      v37 = WiFiAddress.description.getter(v36 | (v35 << 16));
      v39 = v38;

      v40 = sub_100002320(v37, v39, v63);

      *(v34 + 7) = v40;
      *(v34 + 15) = 2080;
      sub_10038F6A0(v30, v57, type metadata accessor for SampleEntry);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      sub_10038FCA4(v30, type metadata accessor for SampleEntry);
      v44 = sub_100002320(v41, v43, v63);

      *(v34 + 17) = v44;
      _os_log_impl(&_mh_execute_header, v31, v32, "[Datapath Performance] ID: %hhu: %s, Query samplePeerStats on init ok %s", v34, 0x19u);
      swift_arrayDestroy();

      (*(v61 + 8))(v62, v56);
      v45 = v58;
    }

    else
    {

      (*(v61 + 8))(v62, v56);
      sub_10038FCA4(v30, type metadata accessor for SampleEntry);
      v45 = v16;
    }

    sub_10038FCA4(v45, type metadata accessor for SampleEntry);
    sub_100002A00(v65);
  }

  else
  {
    sub_100016290(v63, &qword_10058BA80, &qword_1004818C0);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v65[0] = v49;
      *v48 = 16777730;
      *(v48 + 4) = *(v5 + 112);
      *(v48 + 5) = 2080;
      v50 = WiFiAddress.description.getter(*v25 | (*(v25 + 1) << 16));
      v51 = v23;
      v53 = v52;

      v54 = sub_100002320(v50, v53, v65);

      *(v48 + 7) = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "[Datapath Performance] ID: %hhu: %s, Failed to samplePeerStats on init", v48, 0xFu);
      sub_100002A00(v49);

      (*(v61 + 8))(v62, v51);
    }

    else
    {

      (*(v61 + 8))(v62, v23);
    }
  }

  return v5;
}

uint64_t sub_10038F634(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  v11 = type metadata accessor for NANDatapathPerformanceInstance();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return sub_10038EE9C(a1, a2, a3 & 0xFFFFFFFFFFFFLL, a4);
}

uint64_t sub_10038F6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038F708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10038F770(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  v23 = a4;
  v20 = result;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_100002B30(*(a3 + 56) + 32 * v14, v22);

    LOBYTE(v16) = v23(v16, v17, v22);
    sub_100002A00(v22);

    if (v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_10036849C(v20, a2, v21, a3);
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
      return sub_10036849C(v20, a2, v21, a3);
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

uint64_t sub_10038F8E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *))
{
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_10038F770(v8, v6, a1, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_10038EAA4(v10, v6, a1, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_10038FA60()
{
  v0 = type metadata accessor for ContinuousClock.Instant();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ContinuousClock.Instant.now.getter();
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10038FC5C(&unk_1005983D0, &type metadata accessor for ContinuousClock.Instant);
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  (*(v1 + 8))(v4, v0);

  return v8;
}

uint64_t sub_10038FBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005983A8, &unk_1004B2418);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038FC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10038FCA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10038FD04()
{
  v0 = type metadata accessor for NANSubscribe.Configuration();
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    v2 = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      v5 = type metadata accessor for Logger();
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_1002FD83C();
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10038FEC4(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin();
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v24 - v5;
  v6 = *(a1 + 64);
  v25 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v30 = a1;

  v12 = 0;
  for (i = v26; v9; result = sub_100016290(i, &unk_100595C80, &qword_1004AFD40))
  {
    v14 = v12;
LABEL_9:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v30 + 56);
    v18 = *(v30 + 48) - v16 + 8 * v16;
    v19 = *(v18 + 4);
    v31 = *(v18 + 6);
    v20 = v17 + *(*(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8) + 72) * v16;
    v21 = v28;
    LODWORD(v17) = *v18;
    sub_1003A4E40(v20, i + *(v28 + 48), type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *i = v17;
    *(i + 4) = v19;
    *(i + 6) = v31;
    v22 = v27;
    sub_100012400(i, v27, &unk_100595C80, &qword_1004AFD40);
    v23 = *(v21 + 48);
    sub_10046F438(v32, *(v22 + 1) | (*(v22 + 3) << 16));
    sub_1003A4664(v22 + v23, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v25 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039011C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v115 = a4;
  v125 = a2;
  v114 = a5;
  v123 = a3 >> 16;
  v7 = *(*(type metadata accessor for NANIdentityKey(0) - 8) + 64);
  __chkstk_darwin();
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v113 = *(v126 - 8);
  v10 = *(v113 + 64);
  __chkstk_darwin();
  v131 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v108 - v12;
  __chkstk_darwin();
  v124 = &v108 - v13;
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v127 = a1;

  v21 = 0;
  v122 = v9;
  if (v17)
  {
    while (1)
    {
LABEL_8:
      v23 = __clz(__rbit64(v17)) | (v21 << 6);
      v24 = v127;
      v25 = *(v127 + 48);
      v26 = type metadata accessor for UUID();
      v128 = *(v26 - 8);
      v27 = v25 + *(v128 + 72) * v23;
      v28 = *(v128 + 16);
      v29 = v124;
      v129 = v26;
      v28(v124, v27);
      v30 = *(v24 + 56);
      v31 = v30 + *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 72) * v23;
      v32 = v126;
      sub_1003A4E40(v31, v29 + *(v126 + 48), type metadata accessor for NANPairedDeviceSharedAssociation);
      v33 = v132;
      sub_10001CEA8(v29, v132, &unk_100597500, &unk_1004939B0);
      v34 = v33;
      v35 = v131;
      sub_100012400(v34, v131, &unk_100597500, &unk_1004939B0);
      v36 = *(v32 + 48);
      sub_1003A4E40(v35 + v36, v9, type metadata accessor for NANIdentityKey);
      sub_1003A4664(v35 + v36, type metadata accessor for NANPairedDeviceSharedAssociation);
      v5 = v125[1];
      if (v5 >> 60 == 15)
      {
        goto LABEL_141;
      }

      v9 = *v125;
      v37 = v125[2];
      v38 = v125[3];
      sub_10000AB0C(*v125, v125[1]);
      sub_10000AB0C(v37, v38);
      v19 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(v123, v9, v5);
      v41 = v40;
      v42 = v20 >> 62;
      v43 = v5 >> 62;
      v130 = v38;
      if (v20 >> 62 == 3)
      {
        break;
      }

      if (v42 <= 1)
      {
        if (!v42)
        {
          v44 = BYTE6(v20);
          if (v43 <= 1)
          {
            goto LABEL_27;
          }

          goto LABEL_32;
        }

        LODWORD(v44) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_128;
        }

        v44 = v44;
        goto LABEL_26;
      }

      if (v42 == 2)
      {
        v46 = *(v19 + 16);
        v45 = *(v19 + 24);
        v47 = __OFSUB__(v45, v46);
        v44 = v45 - v46;
        if (v47)
        {
          goto LABEL_127;
        }

        goto LABEL_26;
      }

      v44 = 0;
      if (v43 <= 1)
      {
LABEL_27:
        if (v43)
        {
          LODWORD(v48) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
          }

          v48 = v48;
        }

        else
        {
          v48 = BYTE6(v5);
        }

        goto LABEL_34;
      }

LABEL_32:
      if (v43 != 2)
      {
        if (v44)
        {
          goto LABEL_94;
        }

        goto LABEL_62;
      }

      v50 = *(v9 + 2);
      v49 = *(v9 + 3);
      v47 = __OFSUB__(v49, v50);
      v48 = v49 - v50;
      if (v47)
      {
        goto LABEL_126;
      }

LABEL_34:
      if (v44 != v48)
      {
        goto LABEL_94;
      }

      if (v44 < 1)
      {
        goto LABEL_62;
      }

      v119 = v37;
      v120 = v20;
      if (v42 > 1)
      {
        v117 = v39;
        if (v42 != 2)
        {
          v52 = v19;
          memset(v134, 0, 14);
          sub_10000AB0C(v9, v5);
          v64 = v121;
          sub_100031E04(v134, v9, v5, &v133);
          v121 = v64;
          if (v64)
          {
            goto LABEL_144;
          }

          sub_1000124C8(v9, v5);
          v54 = v133;
          v39 = v117;
LABEL_52:
          v38 = v130;
          v19 = v52;
          v37 = v119;
          v20 = v120;
          if (!v54)
          {
            goto LABEL_94;
          }

          goto LABEL_62;
        }

        v118 = v40;
        v56 = *(v19 + 16);
        v55 = *(v19 + 24);
        v116 = v19;
        v112 = v55;
        sub_10000AB0C(v9, v5);
        v57 = __DataStorage._bytes.getter();
        if (v57)
        {
          v111 = v57;
          v58 = __DataStorage._offset.getter();
          if (__OFSUB__(v56, v58))
          {
            goto LABEL_137;
          }

          v111 += v56 - v58;
        }

        else
        {
          v111 = 0;
        }

        if (__OFSUB__(v112, v56))
        {
          goto LABEL_134;
        }

        __DataStorage._length.getter();
        v65 = v121;
        sub_100031E04(v111, v9, v5, v134);
        v121 = v65;
        if (v65)
        {
          goto LABEL_144;
        }

        sub_1000124C8(v9, v5);
        v66 = v134[0];
        v37 = v119;
      }

      else
      {
        v112 = v9;
        v118 = v40;
        if (!v42)
        {
          v51 = v39;
          v134[0] = v19;
          v52 = v19;
          LODWORD(v134[1]) = v120;
          WORD2(v134[1]) = WORD2(v120);
          v9 = v112;
          sub_10000AB0C(v112, v5);
          v53 = v121;
          sub_100031E04(v134, v9, v5, &v133);
          v121 = v53;
          if (v53)
          {
            goto LABEL_144;
          }

          sub_1000124C8(v9, v5);
          v54 = v133;
          v41 = v118;
          v39 = v51;
          goto LABEL_52;
        }

        v116 = v19;
        v117 = v39;
        v111 = (v19 >> 32) - v19;
        if (v19 >> 32 < v19)
        {
          goto LABEL_133;
        }

        v59 = v19;
        sub_10000AB0C(v112, v5);
        v60 = __DataStorage._bytes.getter();
        if (v60)
        {
          v61 = v60;
          v62 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v62))
          {
            goto LABEL_138;
          }

          v63 = v59 - v62 + v61;
        }

        else
        {
          v63 = 0;
        }

        v37 = v119;
        __DataStorage._length.getter();
        v67 = v63;
        v9 = v112;
        v68 = v121;
        sub_100031E04(v67, v112, v5, v134);
        v121 = v68;
        if (v68)
        {
          goto LABEL_144;
        }

        sub_1000124C8(v9, v5);
        v66 = v134[0];
      }

      v39 = v117;
      v41 = v118;
      v38 = v130;
      v20 = v120;
      v19 = v116;
      if ((v66 & 1) == 0)
      {
        goto LABEL_94;
      }

LABEL_62:
      v69 = v41 >> 62;
      v70 = v38 >> 62;
      if (v41 >> 62 == 3)
      {
        v71 = 0;
        if (!v39 && v41 == 0xC000000000000000 && v38 >> 62 == 3)
        {
          v71 = 0;
          if (!v37 && v38 == 0xC000000000000000)
          {
            goto LABEL_122;
          }
        }

LABEL_79:
        if (v70 <= 1)
        {
          goto LABEL_80;
        }

        goto LABEL_85;
      }

      if (v69 <= 1)
      {
        if (!v69)
        {
          v71 = BYTE6(v41);
          if (v70 <= 1)
          {
            goto LABEL_80;
          }

          goto LABEL_85;
        }

        LODWORD(v71) = HIDWORD(v39) - v39;
        if (__OFSUB__(HIDWORD(v39), v39))
        {
          goto LABEL_131;
        }

        v71 = v71;
        goto LABEL_79;
      }

      if (v69 == 2)
      {
        v73 = *(v39 + 16);
        v72 = *(v39 + 24);
        v47 = __OFSUB__(v72, v73);
        v71 = v72 - v73;
        if (v47)
        {
          goto LABEL_132;
        }

        goto LABEL_79;
      }

      v71 = 0;
      if (v70 <= 1)
      {
LABEL_80:
        if (v70)
        {
          LODWORD(v74) = HIDWORD(v37) - v37;
          if (__OFSUB__(HIDWORD(v37), v37))
          {
            goto LABEL_130;
          }

          v74 = v74;
        }

        else
        {
          v74 = BYTE6(v38);
        }

        goto LABEL_87;
      }

LABEL_85:
      if (v70 != 2)
      {
        if (!v71)
        {
LABEL_120:
          v102 = v39;
          sub_1000124C8(v19, v20);
          sub_1000124C8(v102, v41);
          v103 = v9;
          v104 = v5;
          v105 = v37;
          v106 = v38;
          goto LABEL_123;
        }

LABEL_94:
        v80 = v39;
        sub_1000124C8(v19, v20);
        sub_1000124C8(v80, v41);
        sub_1002E9FD4(v9, v5, v37, v130);
        v9 = v122;
        sub_1003A4664(v122, type metadata accessor for NANIdentityKey);
        v82 = v128;
        v81 = v129;
        goto LABEL_95;
      }

      v76 = *(v37 + 16);
      v75 = *(v37 + 24);
      v47 = __OFSUB__(v75, v76);
      v74 = v75 - v76;
      if (v47)
      {
        goto LABEL_129;
      }

LABEL_87:
      if (v71 != v74)
      {
        goto LABEL_94;
      }

      if (v71 < 1)
      {
        goto LABEL_120;
      }

      v120 = v20;
      v116 = v19;
      if (v69 > 1)
      {
        v112 = v9;
        v9 = v37;
        v117 = v39;
        if (v69 != 2)
        {
          memset(v134, 0, 14);
          sub_10000AB0C(v37, v38);
          v92 = v121;
          sub_100031E04(v134, v37, v38, &v133);
          v121 = v92;
          if (v92)
          {
            goto LABEL_143;
          }

          sub_1000124C8(v37, v38);
          sub_1000124C8(v116, v120);
          sub_1000124C8(v117, v41);
          v79 = v112;
          goto LABEL_107;
        }

        v83 = *(v39 + 24);
        v111 = *(v39 + 16);
        v110 = v83;
        sub_10000AB0C(v37, v38);
        v118 = v41;
        v84 = __DataStorage._bytes.getter();
        v119 = v37;
        if (v84)
        {
          v85 = v84;
          v86 = __DataStorage._offset.getter();
          v87 = v111;
          if (__OFSUB__(v111, v86))
          {
            goto LABEL_139;
          }

          v109 = v111 - v86 + v85;
          v88 = v118;
        }

        else
        {
          v109 = 0;
          v88 = v118;
          v87 = v111;
        }

        if (__OFSUB__(v110, v87))
        {
          goto LABEL_136;
        }

        v9 = v88;
        __DataStorage._length.getter();
        v37 = v119;
        v94 = v121;
        sub_100031E04(v109, v119, v38, v134);
        v121 = v94;
        if (v94)
        {
          goto LABEL_143;
        }

        sub_1000124C8(v37, v38);
        sub_1000124C8(v116, v120);
        sub_1000124C8(v117, v9);
        v95 = v112;
        v96 = v5;
        v97 = v37;
        v98 = v38;
      }

      else
      {
        v118 = v41;
        v119 = v37;
        if (!v69)
        {
          v134[0] = v39;
          LOWORD(v134[1]) = v41;
          BYTE2(v134[1]) = BYTE2(v41);
          BYTE3(v134[1]) = BYTE3(v41);
          BYTE4(v134[1]) = BYTE4(v41);
          BYTE5(v134[1]) = BYTE5(v41);
          v112 = v134 + BYTE6(v41);
          v37 = v119;
          v77 = v39;
          sub_10000AB0C(v119, v38);
          v78 = v121;
          sub_100031E04(v134, v37, v38, &v133);
          v121 = v78;
          if (v78)
          {
            goto LABEL_143;
          }

          sub_1000124C8(v37, v38);
          sub_1000124C8(v116, v120);
          sub_1000124C8(v77, v118);
          v79 = v9;
LABEL_107:
          sub_1002E9FD4(v79, v5, v37, v38);
          v93 = v133;
          goto LABEL_116;
        }

        v117 = v39;
        v112 = ((v39 >> 32) - v39);
        if (v39 >> 32 < v39)
        {
          goto LABEL_135;
        }

        v89 = v39;
        sub_10000AB0C(v119, v38);
        v90 = __DataStorage._bytes.getter();
        if (v90)
        {
          v111 = v90;
          v91 = __DataStorage._offset.getter();
          if (__OFSUB__(v89, v91))
          {
            goto LABEL_140;
          }

          v111 += v89 - v91;
        }

        else
        {
          v111 = 0;
        }

        v38 = v118;
        __DataStorage._length.getter();
        v99 = v119;
        v37 = v130;
        v100 = v121;
        sub_100031E04(v111, v119, v130, v134);
        v121 = v100;
        if (v100)
        {
          sub_1000124C8(v99, v37);
          __break(1u);
LABEL_143:
          sub_1000124C8(v37, v38);
          __break(1u);
LABEL_144:
          result = sub_1000124C8(v9, v5);
          __break(1u);
          return result;
        }

        sub_1000124C8(v99, v37);
        sub_1000124C8(v116, v120);
        sub_1000124C8(v117, v38);
        v95 = v9;
        v96 = v5;
        v97 = v99;
        v98 = v37;
      }

      sub_1002E9FD4(v95, v96, v97, v98);
      v93 = v134[0];
LABEL_116:
      v9 = v122;
      sub_1003A4664(v122, type metadata accessor for NANIdentityKey);
      v82 = v128;
      v81 = v129;
      if (v93)
      {
        goto LABEL_124;
      }

LABEL_95:
      v17 &= v17 - 1;
      (*(v82 + 8))(v131, v81);
      v19 = sub_100016290(v132, &unk_100597500, &unk_1004939B0);
      if (!v17)
      {
        goto LABEL_4;
      }
    }

    v44 = 0;
    if (v5 >> 62 == 3 && !v19 && v20 == 0xC000000000000000)
    {
      v44 = 0;
      if (!v9 && v5 == 0xC000000000000000)
      {
        goto LABEL_62;
      }
    }

LABEL_26:
    if (v43 <= 1)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_4:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v18)
    {

      (*(v113 + 56))(v114, 1, 1, v126);
    }

    v17 = *(v14 + 8 * v22);
    ++v21;
    if (v17)
    {
      v21 = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_122:
  sub_1000124C8(v19, v20);
  sub_1000124C8(0, 0xC000000000000000);
  v103 = v9;
  v104 = v5;
  v105 = 0;
  v106 = 0xC000000000000000;
LABEL_123:
  sub_1002E9FD4(v103, v104, v105, v106);
  sub_1003A4664(v122, type metadata accessor for NANIdentityKey);
  v82 = v128;
  v81 = v129;
LABEL_124:
  (*(v82 + 8))(v131, v81);

  v107 = v114;
  sub_10001CEA8(v132, v114, &unk_100597500, &unk_1004939B0);
  (*(v113 + 56))(v107, 0, 1, v126);
}

uint64_t sub_100390F88()
{
  v1 = v0 + qword_10059BAE8;
  swift_beginAccess();
  result = type metadata accessor for NANSubscribe.Configuration();
  *(v1 + *(result + 60)) = 0;
  return result;
}

uint64_t sub_100390FDC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + qword_1005983F8);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + qword_1005983F8);
    swift_unknownObjectRetain();
    v7 = WiFiAddress.apiAddress.getter(a2 & 0xFFFFFFFFFFFFLL);
    [v3 subscribeDetectedMulticastError:v5 fromMulticastSender:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10039106C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + qword_1005983F8);
  if (v4)
  {
    v6 = *(v3 + qword_1005983F8);
    swift_unknownObjectRetain();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = WiFiAddress.apiAddress.getter(a3 & 0xFFFFFFFFFFFFLL);
    [v4 subscribeReceivedDataBlobForMulticastSession:isa fromPeer:v8];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100391120(uint64_t a1, unint64_t a2, int a3)
{
  v7 = v3;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2080;
    v13 = v7;
    *(v10 + 14) = sub_100002320(a1, a2, &v18);
    *(v10 + 22) = 1024;
    *(v10 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ updated bundleID to: %s and pid to %d", v10, 0x1Cu);
    sub_100016290(v11, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v12);
  }

  v14 = &v7[qword_100598430];
  v15 = *&v7[qword_100598430 + 8];
  *v14 = a1;
  v14[1] = a2;

  v16 = &v7[qword_100598438];
  *v16 = a3;
  v16[4] = 0;

  result = static LaunchServiceRecord.isExternalApi(for:)(a1, a2);
  v7[qword_100598440] = result & 1;
  return result;
}

uint64_t sub_1003912F4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_1005983F8);
  if (v3)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = ObjectType;

  return swift_unknownObjectRetain();
}

uint64_t sub_100391354()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v6 = *v5;
  *v4 = *v5;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v4, v0);
  if (v6)
  {
    return sub_100394D24();
  }

  __break(1u);
  return result;
}

uint64_t sub_100391474@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059BAE8;
  swift_beginAccess();
  return sub_1003A4E40(v1 + v3, a1, type metadata accessor for NANSubscribe.Configuration);
}

uint64_t sub_1003914E0(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    goto LABEL_5;
  }

  sub_10005DC58(&unk_1005974E0, &qword_1004B1818);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v5;
LABEL_6:
  v3 = *(v1 + qword_1005983F8);
  *(v1 + qword_1005983F8) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_100391580@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059BB00;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1003915F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = *(*(v3 + 0x58) + 8);
  v5 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Preferences();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v34 - v9;
  v11 = *(v1 + qword_1005983E0);
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  LOBYTE(v11) = Preferences.subscribeFilterEnabled.getter(v6);
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) != 0 && *(v1 + qword_10059BAF0) == 1)
  {
    v13 = v1 + qword_100598400;
    swift_beginAccess();
    if (*(*v13 + 16))
    {
      v14 = *(v13 + 1);
      v15 = v13[16];
      v16 = v13[17];

      LOBYTE(v22) = sub_1002EA604(v17, v14, v15 | (v16 << 8));
      v19 = v18;
      v21 = v20;

      v22 = v22;
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v22 = 512;
    }

    v23 = v1 + qword_10059BAE8;
    swift_beginAccess();
    v24 = &v23[*(type metadata accessor for NANSubscribe.Configuration() + 56)];
    v26 = *v24;
    v25 = *(v24 + 1);
    v27 = *(v24 + 8);
    v28 = v27 & 0xFF00;
    if (v22 > 0x1FF)
    {
      if (v28 == 512)
      {
        sub_10011A008(v26, v25, v27);
        return sub_10011A01C(v19, v21, v22);
      }
    }

    else if (v28 != 512)
    {
      sub_10011A008(v26, v25, v27);
      sub_10011A008(v26, v25, v27);
      sub_10011A008(v19, v21, v22);
      v29 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v21, v26, v25);
      sub_10011A01C(v26, v25, v27);
      if (v29)
      {
        sub_10011A01C(v26, v25, v27);
        if (v22 == v27)
        {
          sub_10011A01C(v19, v21, v22);
          if ((v27 & 0x100) != 0)
          {
            goto LABEL_19;
          }

          return sub_10011A01C(v19, v21, v22);
        }
      }

      else
      {
        sub_10011A01C(v26, v25, v27);
      }

      v30 = v19;
      v31 = v21;
      v32 = v22;
LABEL_18:
      sub_10011A01C(v30, v31, v32);
LABEL_19:
      __chkstk_darwin();
      *(&v34 - 4) = v1;
      *(&v34 - 3) = v19;
      *(&v34 - 2) = v21;
      *(&v34 - 4) = v22;
      WitnessTable = swift_getWitnessTable();
      sub_10036E438(sub_1003A4DA8, &v34 - 48, ObjectType, WitnessTable);
      return sub_10011A01C(v19, v21, v22);
    }

    sub_10011A008(v26, v25, v27);
    sub_10011A008(v19, v21, v22);
    sub_10011A01C(v19, v21, v22);
    v30 = v26;
    v31 = v25;
    v32 = v27;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100391A68()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v9 = (&v28 - v8);
  __chkstk_darwin();
  v11 = (&v28 - v10);
  v12 = qword_10059BB10;
  result = swift_beginAccess();
  if (*(*(v1 + v12) + 16) || (v14 = qword_100598400, result = swift_beginAccess(), *(*(v1 + v14) + 16)) || (v15 = qword_10059BB08, result = swift_beginAccess(), *(*(v1 + v15) + 16)))
  {
    v16 = qword_100598410;
    if (*(v1 + qword_100598410))
    {
      return result;
    }

    *v11 = 5;
    v29 = v2;
    v17 = enum case for DispatchTimeInterval.seconds(_:);
    v18 = *(v4 + 104);
    v18(v11, enum case for DispatchTimeInterval.seconds(_:), v3);
    v30 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    *v9 = 5;
    v18(v9, v17, v3);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v21 = v29;
    v20[2] = *(v29 + 80);
    v20[3] = *(v21 + 88);
    v20[4] = v19;
    *v7 = 100;
    v18(v7, enum case for DispatchTimeInterval.milliseconds(_:), v3);
    v22 = type metadata accessor for P2PTimer();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v11, v30, v9, v7, sub_1003A4D74, v20);
    v26 = *(v1 + v16);
    *(v1 + v16) = v25;
  }

  else
  {
    v27 = *(v1 + qword_100598410);
    *(v1 + qword_100598410) = 0;
  }
}

uint64_t sub_100391D70(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v7 = a3 >> 8;
  v8 = (v3 + qword_100598400);
  swift_beginAccess();
  v9 = *v8;
  *v8 = a1;
  v8[1] = a2;
  *(v8 + 16) = v4 & 1;
  *(v8 + 17) = v7;

  v10 = sub_1003915F8();
  return sub_100391A68(v10);
}

uint64_t sub_100391DF4()
{
  v1 = v0;
  v2 = v0 + qword_10059BAE8;
  swift_beginAccess();
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);

  v5 = NANServiceName.description.getter(v4, v3);
  v7 = v6;

  v8 = v1 + qword_10059BB18;
  swift_beginAccess();
  v9 = *(v8 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 64) = 2;

  v10 = *(v1 + qword_1005983E0);
  swift_unownedRetainStrong();
  v11 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  v12 = sub_1003F06BC();

  *(v1 + qword_100598448) = v12;
  swift_unownedRetainStrong();
  v13 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  v14 = sub_1003F06D8();

  *(v1 + qword_100598450) = v14;
  swift_unownedRetainStrong();
  v15 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  (*(*v15 + 200))(v16);

  v23 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  LOBYTE(v15) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  *(v8 + 105) = v15 & 1;
  swift_unownedRetainStrong();
  v17 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  sub_1003EB084();
  v19 = v18;
  v21 = v20;

  if (v19)
  {
  }

  else
  {
    v21 = 0;
  }

  *(v8 + 100) = v21;
  return result;
}

uint64_t sub_10039205C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v69) = a2;
  v71 = a1;
  v4 = swift_isaMask & *v2;
  v5 = *(*(v4 + 0x58) + 8);
  v6 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  v78 = AssociatedTypeWitness;
  v8 = *(v77 + 64);
  __chkstk_darwin();
  v76 = &v66 - v9;
  v10 = swift_checkMetadataState();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 64);
  __chkstk_darwin();
  v72 = &v66 - v12;
  v70 = type metadata accessor for DispatchTime();
  v13 = *(v70 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v66 - v17;
  v19 = *(v3 + qword_100598430 + 8);
  v68 = (v3 + qword_100598430);
  if (v19)
  {
    v20 = *(v3 + qword_100598430);
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = v3 + qword_10059BB18;
  swift_beginAccess();
  v23 = *(v22 + 1);
  *v22 = v20;
  *(v22 + 1) = v21;

  v22[68] = *(v3 + qword_100598440);
  swift_endAccess();
  v24 = *(v3 + qword_1005983E0);
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v25 = sub_100337438();

  *(v22 + 6) = v25;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v26 = sub_10033746C();

  *(v22 + 5) = v26;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v27 = sub_100337590();

  *(v22 + 7) = v27;
  if ((v71 + 1) >= 6)
  {
    v28 = 5;
  }

  else
  {
    v28 = 0x50403020501uLL >> (8 * (v71 + 1));
  }

  v22[33] = v28;
  v22[34] = v69;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v29 = DispatchTime.uptimeNanoseconds.getter();
  v30 = v13;
  v31 = *(v13 + 8);
  v32 = v18;
  v33 = v70;
  v31(v32, v70);
  (*(v30 + 16))(v16, v3 + qword_100598458, v33);
  v34 = DispatchTime.uptimeNanoseconds.getter();
  result = (v31)(v16, v33);
  if (v29 < v34)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v22 + 11) = (v29 - v34) / 0xF4240;
  swift_unownedRetainStrong();
  v36 = *(v24 + *(*v24 + 800));
  swift_unownedRetainStrong();

  v37 = sub_1003F06BC();

  v38 = *(v3 + qword_100598448);
  v39 = v37 >= v38;
  v40 = v37 - v38;
  if (!v39)
  {
    goto LABEL_22;
  }

  *(v22 + 33) = v40;
  swift_unownedRetainStrong();
  v41 = *(v24 + *(*v24 + 800));
  swift_unownedRetainStrong();

  v42 = sub_1003F06D8();

  v43 = *(v3 + qword_100598450);
  v39 = v42 >= v43;
  v44 = v42 - v43;
  if (!v39)
  {
    goto LABEL_23;
  }

  *(v22 + 34) = v44;
  v45 = v68[1];
  if (!v45)
  {
LABEL_20:
    swift_unownedRetainStrong();
    v59 = v72;
    v60 = v73;
    v61 = v74;
    (*(v73 + 16))(v72, v24 + *(*v24 + 112), v74);

    v62 = v76;
    (*(AssociatedConformanceWitness + 152))(v61, AssociatedConformanceWitness);
    (*(v60 + 8))(v59, v61);
    memcpy(v80, v22, sizeof(v80));
    v63 = v78;
    v64 = swift_getAssociatedConformanceWitness();
    v65 = *(v64 + 32);
    sub_1002CB02C(v80, &v79);
    v65(v80, v63, v64);
    sub_1002CB088(v80);
    return (*(v77 + 8))(v62, v63);
  }

  v46 = *v68;
  swift_unownedRetainStrong();

  sub_10040CAE8();

  v47 = sub_100337438();

  if ((v47 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v47 >> 16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v48 = sub_10033746C();

  if ((v48 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v48 >> 16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v49 = sub_100337594();

  if ((v49 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!(v49 >> 16))
  {
    v71 = *(v22 + 11);
    LODWORD(v70) = v22[64];
    swift_unownedRetainStrong();
    v50 = *(*v24 + 112);
    v68 = v47;
    v69 = v45;
    v51 = v72;
    v52 = v73;
    v53 = *(v73 + 16);
    v67 = v46;
    v54 = v74;
    v53(v72, v24 + v50, v74);

    v55 = v48;
    v56 = v76;
    (*(AssociatedConformanceWitness + 152))(v54, AssociatedConformanceWitness);
    (*(v52 + 8))(v51, v54);
    v81[0] = v67;
    v81[1] = v69;
    v82 = v68;
    v83 = v55;
    v84 = v49;
    v85 = 0u;
    memset(v86, 0, sizeof(v86));
    v87 = v70;
    *v88 = v80[0];
    *&v88[3] = *(v80 + 3);
    v89 = v71;
    v57 = v78;
    v58 = swift_getAssociatedConformanceWitness();
    (*(v58 + 40))(v81, v57, v58);
    sub_1002CB0DC(v81);
    (*(v77 + 8))(v56, v57);
    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
  return result;
}

_BYTE *sub_100392964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v121 = a6;
  v119 = a3;
  v120 = a5;
  v126 = a4;
  v123 = a2;
  v135 = a1;
  ObjectType = swift_getObjectType();
  v8 = *v6;
  v9 = swift_isaMask;
  v10 = type metadata accessor for Logger();
  v128 = *(v10 - 8);
  v129 = v10;
  v11 = *(v128 + 64);
  __chkstk_darwin();
  v130 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LongTermPairingKeys(0);
  v124 = *(v13 - 8);
  v125 = v13;
  v14 = *(v124 + 64);
  __chkstk_darwin();
  v96 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *((v9 & v8) + 0x58);
  v16 = *((v9 & v8) + 0x50);
  v115 = *(v95 + 8);
  v122 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = *(AssociatedTypeWitness - 8);
  v117 = AssociatedTypeWitness;
  v18 = *(v116 + 64);
  __chkstk_darwin();
  v114 = &v94 - v19;
  v20 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v118 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v113 = &v94 - v22;
  v23 = type metadata accessor for DispatchTimeInterval();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DispatchTime();
  v28 = *(v131 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin();
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + qword_10059BAF0) = 0;
  v32 = qword_1005983E8;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v33 = NANConstants.maximumServiceRetryRate.unsafeMutableAddressor();
  (*(v24 + 16))(v27, v33, v23);
  v110 = v32;
  - infix(_:_:)();
  v34 = v27;
  v35 = v135;
  (*(v24 + 8))(v34, v23);
  v36 = v123;
  v111 = *(v28 + 8);
  v112 = (v28 + 8);
  v111(v31, v131);
  v103 = qword_1005983F0;
  *(v7 + qword_1005983F0) = 0;
  v104 = qword_10059BAF8;
  *(v7 + qword_10059BAF8) = 0;
  v105 = qword_1005983F8;
  *(v7 + qword_1005983F8) = 0;
  v109 = qword_10059BB00;
  Logger.init(subsystem:category:)();
  v37 = v7 + qword_100598400;
  *v37 = &_swiftEmptySetSingleton;
  *(v37 + 1) = 0;
  *(v37 + 8) = 1025;
  v38 = qword_10059BB08;
  *(v7 + qword_10059BB08) = &_swiftEmptyDictionarySingleton;
  v106 = v38;
  v107 = qword_100598410;
  *(v7 + qword_100598410) = 0;
  v108 = qword_100598418;
  *(v7 + qword_100598418) = 0;
  *(v7 + qword_100598420) = 0;
  v39 = (v7 + qword_100598428);
  *v39 = static Duration.zero.getter();
  v39[1] = v40;
  v101 = qword_10059BB10;
  *(v7 + qword_10059BB10) = &_swiftEmptySetSingleton;
  v41 = (v7 + qword_100598430);
  *v41 = 0;
  v41[1] = 0;
  v102 = v41;
  v42 = v7 + qword_100598438;
  *v42 = 0;
  v42[4] = 1;
  *(v7 + qword_100598440) = 0;
  v43 = qword_10059BB18;
  NANWiFiAwareStatistics.init()(&v134);
  v100 = v43;
  memcpy(v7 + v43, &v134, 0x120uLL);
  *(v7 + qword_100598448) = 0;
  *(v7 + qword_100598450) = 0;
  v99 = qword_100598458;
  variable initialization expression of AWDLPeer.lastUpdated();
  v97 = qword_1005983E0;
  *(v7 + qword_1005983E0) = v35;
  v98 = qword_10059BAE8;
  sub_1003A4E40(v36, v7 + qword_10059BAE8, type metadata accessor for NANSubscribe.Configuration);
  v44 = type metadata accessor for NANSubscribe.Configuration();
  if (*(v36 + *(v44 + 68)))
  {
    v46 = v124;
    v45 = v125;
    (*(v124 + 56))(v7 + qword_100598408, 1, 1, v125);
    swift_unownedRetain();
    v47 = v128;
  }

  else
  {
    v94 = v37;
    swift_unownedRetainStrong();
    v49 = v116;
    v48 = v117;
    v50 = v114;
    (*(v116 + 16))(v114, v35 + *(*v35 + 112), v117);
    swift_unownedRetain();

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 128))(v48, AssociatedConformanceWitness);
    (*(v49 + 8))(v50, v48);
    v52 = v113;
    LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)(*(v36 + 8), *(v36 + 16), 1, v113);

    v53 = qword_100598408;
    sub_10001CEA8(v52, v7 + qword_100598408, &qword_10058C8D8, &qword_100482300);
    v54 = v118;
    sub_100012400(v7 + v53, v118, &qword_10058C8D8, &qword_100482300);
    v46 = v124;
    v45 = v125;
    if ((*(v124 + 48))(v54, 1, v125) == 1)
    {

      sub_100016290(v54, &qword_10058C8D8, &qword_100482300);
      v55 = 6;
      v47 = v128;
      v37 = v94;
LABEL_9:
      sub_10000B02C();
      swift_allocError();
      *v56 = v55;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      swift_willThrow();
      sub_1003A4664(v36, type metadata accessor for NANSubscribe.Configuration);

      v57 = *(v7 + v97);
      swift_unownedRelease();
      sub_1003A4664(v7 + v98, type metadata accessor for NANSubscribe.Configuration);
      v58 = v111;
      v59 = v131;
      v60 = v112;
      v111(v7 + v110, v131);
      v61 = *(v7 + v103);

      v62 = *(v7 + v104);

      v63 = *(v7 + v105);
      swift_unknownObjectRelease();
      (*(v47 + 8))(v7 + v109, v129);
      v64 = *v37;

      sub_100016290(v7 + qword_100598408, &qword_10058C8D8, &qword_100482300);
      v65 = *(v7 + v106);

      v66 = *(v7 + v107);

      v67 = *(v7 + v108);

      v68 = *(v7 + v101);

      v69 = v102[1];

      memcpy(v132, v7 + v100, sizeof(v132));
      sub_1002CB088(v132);
      v58(v7 + v99, v59);
      v70 = *((swift_isaMask & *v7) + 0x30);
      v71 = *((swift_isaMask & *v7) + 0x34);
      swift_deallocPartialClassInstance();
      return v60;
    }

    sub_100016290(v54, &qword_10058C8D8, &qword_100482300);
    v47 = v128;
    v37 = v94;
  }

  if (*(v36 + *(v44 + 84)) && (static Duration.< infix(_:_:)() & 1) != 0)
  {

    v55 = 2;
    goto LABEL_9;
  }

  v133.receiver = v7;
  v133.super_class = ObjectType;
  v72 = v46;
  v73 = objc_msgSendSuper2(&v133, "init");
  v74 = &v73[qword_100598430];
  v75 = *&v73[qword_100598430 + 8];
  v76 = v126;
  *v74 = v119;
  v74[1] = v76;

  v77 = &v73[qword_100598438];
  v78 = BYTE4(v120);
  *v77 = v120;
  v77[4] = v78 & 1;
  v73[qword_100598440] = v121 & 1;
  v79 = v45;
  v80 = qword_100598408;
  if (!(*(v72 + 48))(&v73[qword_100598408], 1, v79))
  {
    v81 = &v73[v80];
    v82 = v96;
    sub_1003A4E40(v81, v96, type metadata accessor for LongTermPairingKeys);
    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v84 = swift_allocObject();
    v85 = v95;
    v84[2] = v122;
    v84[3] = v85;
    v84[4] = v83;

    LongTermPairingKeys.updatedPairedDevicesHandler.setter(sub_1003A4EA8, v84);
    sub_1003A4664(v82, type metadata accessor for LongTermPairingKeys);
  }

  v86 = v129;
  (*(v47 + 16))(v130, &v73[qword_10059BB00], v129);
  v60 = v73;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = v36;
    v91 = swift_slowAlloc();
    *v89 = 138412290;
    *(v89 + 4) = v60;
    *v91 = v60;
    v92 = v60;
    _os_log_impl(&_mh_execute_header, v87, v88, "Created %@", v89, 0xCu);
    sub_100016290(v91, &qword_10058B780, &qword_100480AC0);
    v36 = v90;
  }

  (*(v47 + 8))(v130, v86);
  sub_1003A4664(v36, type metadata accessor for NANSubscribe.Configuration);

  return v60;
}

uint64_t sub_1003935DC()
{
  v1 = (v0 + qword_100598400);
  swift_beginAccess();
  v2 = v1[1];
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v14 = *v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v5 = qword_10059BB08;
  swift_beginAccess();
  v6 = *(v0 + v5);

  v8 = sub_1003A3638(v7, &v14);

  v9 = *(v0 + v5);
  *(v0 + v5) = v8;

  v10 = v15;
  LODWORD(v5) = v16;
  v11 = v17;

  sub_100391D70(v12, v10, v5 | (v11 << 8));
}

id sub_1003936C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = swift_isaMask;
  v5 = type metadata accessor for Logger();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v11 = &v36 - v10;
  v12 = *(*((v4 & v3) + 0x58) + 8);
  v13 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v36 - v17;
  if (v1[qword_10059BAF0] == 1)
  {
    v36 = v5;
    v37 = ObjectType;
    v19 = *&v1[qword_1005983E0];
    swift_unownedRetainStrong();
    v20 = *(*v19 + 96);
    swift_beginAccess();
    (*(v15 + 16))(v18, v19 + v20, AssociatedTypeWitness);

    v21 = qword_10059BAE8;
    swift_beginAccess();
    v22 = v1[v21];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 248))(v22, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v15 + 8))(v18, AssociatedTypeWitness);
    v5 = v36;
    ObjectType = v37;
  }

  v24 = qword_1005983F8;
  v25 = *&v1[qword_1005983F8];
  if (v25)
  {
    [v25 subscribeTerminatedWithReason:-1];
    v26 = *&v1[v24];
  }

  v27 = v38;
  *&v1[v24] = 0;
  swift_unknownObjectRelease();
  sub_100012400(&v1[qword_100598408], v11, &qword_10058C8D8, &qword_100482300);
  v28 = type metadata accessor for LongTermPairingKeys(0);
  if ((*(*(v28 - 8) + 48))(v11, 1, v28) == 1)
  {
    sub_100016290(v11, &qword_10058C8D8, &qword_100482300);
  }

  else
  {
    LongTermPairingKeys.updatedPairedDevicesHandler.setter(0, 0);
    sub_1003A4664(v11, type metadata accessor for LongTermPairingKeys);
  }

  (*(v27 + 16))(v8, &v1[qword_10059BB00], v5);
  v29 = v1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v1;
    v34 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "Destroyed %@", v32, 0xCu);
    sub_100016290(v33, &qword_10058B780, &qword_100480AC0);
  }

  (*(v27 + 8))(v8, v5);
  v39.receiver = v29;
  v39.super_class = ObjectType;
  return objc_msgSendSuper2(&v39, "dealloc");
}

uint64_t sub_100393BCC(uint64_t a1)
{
  v2 = *(a1 + qword_1005983E0);
  swift_unownedRelease();
  sub_1003A4664(a1 + qword_10059BAE8, type metadata accessor for NANSubscribe.Configuration);
  v3 = qword_1005983E8;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(*(v4 - 8) + 8);
  v5(a1 + v3, v4);
  v6 = *(a1 + qword_1005983F0);

  v7 = *(a1 + qword_10059BAF8);

  v8 = *(a1 + qword_1005983F8);
  swift_unknownObjectRelease();
  v9 = qword_10059BB00;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(a1 + v9, v10);
  v11 = *(a1 + qword_100598400);

  sub_100016290(a1 + qword_100598408, &qword_10058C8D8, &qword_100482300);
  v12 = *(a1 + qword_10059BB08);

  v13 = *(a1 + qword_100598410);

  v14 = *(a1 + qword_100598418);

  v15 = *(a1 + qword_10059BB10);

  v16 = *(a1 + qword_100598430 + 8);

  memcpy(v18, (a1 + qword_10059BB18), sizeof(v18));
  sub_1002CB088(v18);
  return (v5)(a1 + qword_100598458, v4);
}

void sub_100393DAC()
{
  v2 = v0;
  v3 = swift_isaMask & *v0;
  v61 = *(v3 + 0x58);
  v4 = *(v61 + 8);
  v5 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Preferences();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  __chkstk_darwin();
  v55 = &v54 - v8;
  v58 = type metadata accessor for NANSubscribe.Configuration();
  v9 = *(*(v58 - 1) + 64);
  __chkstk_darwin();
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v13 = *(v59 + 64);
  __chkstk_darwin();
  v15 = &v54 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v22 = *v21;
  *v20 = *v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (v2[qword_10059BAF0])
  {
    return;
  }

  v54 = qword_10059BAF0;
  v24 = *&v2[qword_1005983E0];
  swift_unownedRetainStrong();
  sub_10040CBA8();
  if (v1)
  {

    v65 = v1;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (swift_dynamicCast())
    {
      if (v64 == 1)
      {
        if (v62 == 7)
        {

          swift_unownedRetainStrong();
          v29 = sub_100019F94();

          if (v29)
          {

LABEL_14:
            v31 = v2;
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              v35 = swift_slowAlloc();
              *v34 = 138412290;
              *(v34 + 4) = v31;
              *v35 = v2;
              v36 = v31;
              _os_log_impl(&_mh_execute_header, v32, v33, "%@ faking start until NAN becomes available", v34, 0xCu);
              sub_100016290(v35, &qword_10058B780, &qword_100480AC0);
            }

            goto LABEL_17;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v30)
          {
            goto LABEL_14;
          }

          sub_10000B02C();
          swift_allocError();
          *v53 = xmmword_10047CE50;
          *(v53 + 16) = 1;
          swift_willThrow();
        }
      }

      else
      {
        sub_1000B2594(v62, v63, v64);
      }
    }

    return;
  }

  swift_unownedRetainStrong();
  v25 = *(*v24 + 96);
  swift_beginAccess();
  v26 = v59;
  (*(v59 + 16))(v15, v24 + v25, AssociatedTypeWitness);

  v27 = qword_10059BAE8;
  swift_beginAccess();
  sub_1003A4E40(&v2[v27], v11, type metadata accessor for NANSubscribe.Configuration);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 200))(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1003A4664(v11, type metadata accessor for NANSubscribe.Configuration);
  (*(v26 + 8))(v15, AssociatedTypeWitness);
LABEL_17:
  v2[v54] = 1;
  v37 = v2;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v2;
    v42 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "%@ was started", v40, 0xCu);
    sub_100016290(v41, &qword_10058B780, &qword_100480AC0);
  }

  v43 = &v37[qword_10059BAE8];
  swift_beginAccess();
  v44 = v58;
  if ((v43[v58[18] + 6] & 1) == 0 && (v43[v58[20]] & 1) == 0)
  {
    if (v43[v58[25] + 7])
    {
      v45 = 1;
    }

    else
    {
      swift_unownedRetainStrong();
      v46 = v55;
      WiFiInterface.preferences.getter();

      v47 = v57;
      v48 = Preferences.disableMulticastRateAdapter.getter(v57);
      (*(v56 + 8))(v46, v47);
      v45 = v48 ^ 1;
    }

    type metadata accessor for MulticastReceiverManager();
    v49 = swift_unownedRetainStrong();
    v50 = sub_1004275B4(v49, *v43, v45 & 1, *&v43[v44[23]] | (*&v43[v44[23] + 4] << 32), *&v43[v44[24]] | (v43[v44[24] + 2] << 16));

    v51 = *&v37[qword_10059BAF8];
    *&v37[qword_10059BAF8] = v50;
  }

  v52 = *&v37[qword_1005983F8];
  if (v52)
  {
    [v52 subscribeStartedWithInstanceID:*v43];
  }

  sub_100391DF4();
  sub_1003946C4(*&v43[v44[21]]);
}

void sub_1003946C4(unint64_t a1)
{
  v2 = v1;
  v38 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = &v33 - v9;
  __chkstk_darwin();
  v12 = (&v33 - v11);
  if (a1)
  {
    v13 = &v2[qword_100598428];
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    static Duration.+ infix(_:_:)();
    if ((static Duration.< infix(_:_:)() & 1) == 0)
    {
      v2[qword_100598420] = 0;
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v34 = a1;
        *v12 = a1;
        v16 = *(v5 + 104);
        v16(v12, enum case for DispatchTimeInterval.seconds(_:), v4);
        v35 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v17 = swift_allocObject();
        v37 = 1000000000000000000 * a1;
        v18 = v17;
        swift_unknownObjectWeakInit();
        v19 = swift_allocObject();
        v36 = (a1 * 0xDE0B6B3A7640000uLL) >> 64;
        v20 = v19;
        v21 = v38;
        v19[2] = *(v38 + 80);
        v19[3] = *(v21 + 88);
        v19[4] = v18;
        v16(v10, enum case for DispatchTimeInterval.never(_:), v4);
        *v8 = 100;
        v16(v8, enum case for DispatchTimeInterval.milliseconds(_:), v4);
        v22 = type metadata accessor for P2PTimer();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        v25 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v12, v35, v10, v8, sub_1003A4E34, v20);
        v26 = *&v2[qword_100598418];
        *&v2[qword_100598418] = v25;

        swift_beginAccess();
        static Duration.+= infix(_:_:)();
        swift_endAccess();
        v27 = v2;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412546;
          *(v30 + 4) = v27;
          *v31 = v2;
          *(v30 + 12) = 2048;
          *(v30 + 14) = v34;
          v32 = v27;
          _os_log_impl(&_mh_execute_header, v28, v29, "%@ timeout set to %lu seconds", v30, 0x16u);
          sub_100016290(v31, &qword_10058B780, &qword_100480AC0);
        }
      }
    }
  }
}

void sub_100394AC4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(v1 + 16))(v4, Strong + qword_10059BB00, v0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "%@ timed out. Stopping.", v9, 0xCu);
      sub_100016290(v10, &qword_10058B780, &qword_100480AC0);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v12[qword_100598420] = 1;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_100394D24();
  }
}

uint64_t sub_100394D24()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *(v2 + 8);
  v62 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v4 = *(v61 + 64);
  __chkstk_darwin();
  v60 = &v54 - v5;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v59 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v58 = &v54 - v10;
  __chkstk_darwin();
  v57 = &v54 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v18 = *v17;
  *v16 = *v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v18)
  {
    v21 = qword_10059BAF0;
    if (*(v1 + qword_10059BAF0) == 1)
    {
      v22 = qword_10059BB00;
      v23 = v1;
      v54 = v22;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      v26 = os_log_type_enabled(v24, v25);
      v55 = v2;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v23;
        *v28 = v1;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "%@ will attempt to stop", v27, 0xCu);
        sub_100016290(v28, &qword_10058B780, &qword_100480AC0);
        v2 = v55;
      }

      *(v1 + v21) = 0;
      v30 = NANConstants.serviceTerminateEventTimeout.unsafeMutableAddressor();
      v31 = v57;
      (*(v7 + 16))(v57, v30, v6);
      v32 = *v17;
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v34[2] = v62;
      v34[3] = v2;
      v34[4] = v33;
      v35 = *(v7 + 104);
      v36 = v58;
      v35(v58, enum case for DispatchTimeInterval.never(_:), v6);
      v37 = v59;
      *v59 = 100;
      v35(v37, enum case for DispatchTimeInterval.milliseconds(_:), v6);
      v38 = type metadata accessor for P2PTimer();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      v41 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v31, v32, v36, v37, sub_1003A099C, v34);
      v42 = *&v23[qword_1005983F0];
      *&v23[qword_1005983F0] = v41;

      v43 = qword_10059BAF8;
      if (*&v23[qword_10059BAF8])
      {
        v44 = *&v23[qword_10059BAF8];

        sub_100426450();

        v45 = *&v23[v43];
      }

      v47 = v60;
      v46 = v61;
      *&v23[v43] = 0;

      v48 = *&v23[qword_1005983E0];
      swift_unownedRetainStrong();
      sub_10040CBA8();

      swift_unownedRetainStrong();
      v49 = *(*v48 + 96);
      swift_beginAccess();
      v50 = AssociatedTypeWitness;
      (*(v46 + 16))(v47, v48 + v49, AssociatedTypeWitness);

      v51 = qword_10059BAE8;
      swift_beginAccess();
      v52 = v23[v51];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 248))(v52, v50, AssociatedConformanceWitness);
      return (*(v46 + 8))(v47, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003954EC(uint64_t a1)
{
  v348 = a1;
  v2 = *v1;
  v3 = swift_isaMask;
  v347 = type metadata accessor for NANSubscribe.Configuration();
  v4 = *(*(v347 - 1) + 64);
  __chkstk_darwin();
  v328 = &v303 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v324 = &v303 - v6;
  v330 = *((v3 & v2) + 0x58);
  v7 = *(v330 + 8);
  v349 = v1;
  v8 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v339 = *(AssociatedTypeWitness - 8);
  v9 = *(v339 + 64);
  __chkstk_darwin();
  v338 = &v303 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v323 = &v303 - v11;
  v12 = type metadata accessor for DispatchTime();
  v341 = *(v12 - 8);
  v342 = v12;
  v13 = *(v341 + 64);
  __chkstk_darwin();
  v335 = &v303 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v340 = &v303 - v15;
  v16 = type metadata accessor for DispatchTimeInterval();
  v336 = *(v16 - 8);
  v337 = v16;
  v17 = *(v336 + 64);
  __chkstk_darwin();
  v334 = &v303 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v333 = &v303 - v19;
  v308 = type metadata accessor for NANPeer(0);
  v20 = *(*(v308 - 8) + 64);
  __chkstk_darwin();
  v307 = &v303 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v318 = *(v22 - 8);
  v319 = v22;
  v23 = *(v318 + 64);
  __chkstk_darwin();
  v306 = &v303 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v317 = &v303 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v312 = *(v26 - 8);
  v27 = *(v312 + 64);
  __chkstk_darwin();
  v310 = &v303 - v28;
  v29 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v315 = &v303 - v30;
  v314 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v311 = *(v314 - 8);
  v31 = *(v311 + 64);
  __chkstk_darwin();
  v305 = &v303 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v316 = &v303 - v33;
  v329 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v309 = AssociatedConformanceWitness;
  v313 = v26;
  swift_getAssociatedConformanceWitness();
  v35 = type metadata accessor for Preferences();
  v326 = *(v35 - 8);
  v327 = v35;
  v36 = *(v326 + 64);
  __chkstk_darwin();
  v325 = &v303 - v37;
  v332 = type metadata accessor for NANAttribute(0);
  *&v344 = *(v332 - 8);
  v38 = *(v344 + 64);
  __chkstk_darwin();
  v321 = (&v303 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v320 = &v303 - v40;
  v41 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v304 = &v303 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v322 = &v303 - v43;
  __chkstk_darwin();
  v346 = &v303 - v44;
  __chkstk_darwin();
  *&v343 = &v303 - v45;
  v46 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v48 = &v303 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v345 = &v303 - v49;
  __chkstk_darwin();
  v51 = &v303 - v50;
  __chkstk_darwin();
  v53 = &v303 - v52;
  __chkstk_darwin();
  v55 = &v303 - v54;
  v56 = type metadata accessor for DispatchPredicate();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  __chkstk_darwin();
  v60 = (&v303 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v62 = *v61;
  *v60 = *v61;
  (*(v57 + 104))(v60, enum case for DispatchPredicate.onQueue(_:), v56);
  v63 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  (*(v57 + 8))(v60, v56);
  if ((v62 & 1) == 0)
  {
    __break(1u);
    goto LABEL_91;
  }

  v64 = v348;
  sub_1003A4E40(v348, v55, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v66 = v55;
  if (EnumCaseMultiPayload == 4)
  {
    sub_1003A4E40(v55, v51, type metadata accessor for DriverEvent);
    v67 = v349;
    if (*v51 == 1)
    {
      if (*(v349 + qword_10059BAF0) == 1)
      {
        v75 = *(v349 + qword_1005983E0);
        swift_unownedRetainStrong();
        sub_10040CBA8();

        v134 = *&v67[qword_10059BAF8];
        if (!v134 || *(v134 + qword_10059BBF8) == 1)
        {
          swift_unownedRetainStrong();
          v135 = *(*v75 + 96);
          swift_beginAccess();
          v136 = v75 + v135;
          v137 = v349;
          v138 = AssociatedTypeWitness;
          (*(v339 + 16))(v338, v136, AssociatedTypeWitness);

          v139 = qword_10059BAE8;
          swift_beginAccess();
          v140 = v328;
          sub_1003A4E40(v137 + v139, v328, type metadata accessor for NANSubscribe.Configuration);
          v141 = swift_getAssociatedConformanceWitness();
          (*(v141 + 200))(v140, v138, v141);
          sub_1003A4664(v140, type metadata accessor for NANSubscribe.Configuration);
          (*(v339 + 8))(v338, v138);
          return sub_1003A4664(v66, type metadata accessor for DriverEvent);
        }

        v150 = qword_10059BAE8;
        swift_beginAccess();
        LOBYTE(v359[0]) = v67[v150];
        v359[1] = 3;
        LOBYTE(v359[2]) = 3;
        sub_1000B24F8(v359);
        v151 = v345;
        memcpy(v345, v359, 0x16AuLL);
        swift_storeEnumTagMultiPayload();
        sub_1003954EC(v151);
        v116 = v151;
        goto LABEL_27;
      }

      return sub_1003A4664(v66, type metadata accessor for DriverEvent);
    }

LABEL_24:
    sub_1003A4E40(v64, v48, type metadata accessor for DriverEvent);
    v104 = v67;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = v67;
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v359[0] = v110;
      *v108 = 138412546;
      *(v108 + 4) = v104;
      *v109 = v107;
      *(v108 + 12) = 2080;
      v111 = v104;
      v112 = DriverEvent.description.getter();
      v114 = v113;
      sub_1003A4664(v48, type metadata accessor for DriverEvent);
      v115 = sub_100002320(v112, v114, v359);

      *(v108 + 14) = v115;
      _os_log_impl(&_mh_execute_header, v105, v106, "%@ received an unexpected %s", v108, 0x16u);
      sub_100016290(v109, &qword_10058B780, &qword_100480AC0);
      v66 = v55;

      sub_100002A00(v110);

      return sub_1003A4664(v66, type metadata accessor for DriverEvent);
    }

    v116 = v48;
LABEL_27:
    sub_1003A4664(v116, type metadata accessor for DriverEvent);
    return sub_1003A4664(v66, type metadata accessor for DriverEvent);
  }

  v67 = v349;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_24;
  }

  sub_1003A4E40(v55, v53, type metadata accessor for DriverEvent);
  memcpy(v358, v53, 0x16AuLL);
  memcpy(v359, v53, 0x16AuLL);
  v68 = sub_100185198(v359);
  if (v68 != 13)
  {
    if (v68 != 11)
    {
      if (v68 == 2)
      {
        v348 = v55;
        v69 = NANBitmap.Channel.operatingClass.getter(v359);
        v70 = *v69;
        v337 = v69[1];
        v339 = v69[2];
        v71 = v69[3];
        v340 = v69[4];
        v341 = v69[5];
        v342 = v69[6];
        v345 = v69[7];
        v72 = *(v69 + 2);
        v338 = *(v69 + 1);
        v73 = &v67[qword_10059BAE8];
        swift_beginAccess();
        if (v73[*(v347 + 22)] > 1u)
        {
          v74 = v346;
          if (v73[*(v347 + 22)] != 2)
          {

            goto LABEL_39;
          }
        }

        else
        {
          v74 = v346;
        }

        v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v125 = v344;
        v126 = v343;
        if (v124)
        {
          goto LABEL_39;
        }

        memcpy(v357, v358, 0x16AuLL);
        v127 = *(NANBitmap.Channel.operatingClass.getter(v357) + 16);

        Array<A>.retrieve(attribute:)(42, v72, v126);
        sub_1001854F8(v358);
        v128 = *(v125 + 48);
        v129 = v332;
        v130 = v128(v126, 1, v332);
        v336 = v72;
        if (v130 == 1)
        {
          v131 = v70;
          v132 = v71;
          v133 = v339;
          sub_100016290(v126, &unk_100595C00, &qword_10048F790);
LABEL_46:
          v356[0] = 0;
          v356[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v152._object = 0x80000001004C07C0;
          v152._countAndFlagsBits = 0xD00000000000001BLL;
          String.append(_:)(v152);
          v154 = v340;
          v153 = v341;
          v155 = v342;
          v156 = v345;
          v157._countAndFlagsBits = WiFiAddress.description.getter((v340 << 16) | (v132 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40) | v133);
          String.append(_:)(v157);

          v158._countAndFlagsBits = 0xD000000000000017;
          v158._object = 0x80000001004C07E0;
          String.append(_:)(v158);
          sub_100398410(v356[0], v356[1], v349, v131 | (v337 << 8) | (v133 << 16) | (v132 << 24) | (v154 << 32) | (v153 << 40) | (v155 << 48) | (v156 << 56));

LABEL_47:
          sub_1001854F8(v358);
          v66 = v348;
          return sub_1003A4664(v66, type metadata accessor for DriverEvent);
        }

        if (swift_getEnumCaseMultiPayload() != 37)
        {
          v131 = v70;
          v132 = v71;
          v133 = v339;
          sub_1003A4664(v126, type metadata accessor for NANAttribute);
          goto LABEL_46;
        }

        v145 = *v126;
        v354 = xmmword_100483C50;
        v355 = 0uLL;
        memcpy(v356, v358, 0x16AuLL);
        v146 = *(NANBitmap.Channel.operatingClass.getter(v356) + 16);

        Array<A>.retrieve(attribute:)(43, v72, v74);
        sub_1001854F8(v358);
        v147 = v128(v74, 1, v129);
        v346 = v145;
        if (v147 == 1)
        {
          v148 = v74;
          v149 = v71;
          sub_100016290(v148, &unk_100595C00, &qword_10048F790);
        }

        else
        {
          v159 = v74;
          v160 = v320;
          sub_1003A46C4(v159, v320, type metadata accessor for NANAttribute);
          v161 = v321;
          sub_1003A46C4(v160, v321, type metadata accessor for NANAttribute);
          v149 = v71;
          if (swift_getEnumCaseMultiPayload() == 38)
          {
            v162 = *v161;
            v343 = v161[1];
            v344 = v162;
            sub_1002E9FD4(0, 0xF000000000000000, 0, 0);
            v355 = v343;
            v354 = v344;
          }

          else
          {
            sub_1003A4664(v161, type metadata accessor for NANAttribute);
          }
        }

        v163 = *(v349 + qword_1005983E0);
        swift_unownedRetainStrong();
        v164 = v325;
        WiFiInterface.preferences.getter();
        *&v344 = v163;

        v165 = v327;
        LOBYTE(v163) = Preferences.enableMulticastKeys.getter(v327);
        (*(v326 + 8))(v164, v165);
        if ((v163 & 1) == 0)
        {
LABEL_100:
          v71 = v149;
          if (v73[*(v347 + 22)] - 1 >= 2)
          {
            v229 = v346;
            if (v73[*(v347 + 22)])
            {
            }

            else
            {
              v353[0] = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();
              v352[0] = v229;
              sub_10027B614();

              v230 = dispatch thunk of SetAlgebra.isSuperset(of:)();

              if ((v230 & 1) == 0)
              {
                v353[0] = 0;
                v353[1] = 0xE000000000000000;
                _StringGuts.grow(_:)(56);
                v231._object = 0x80000001004C07C0;
                v231._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v231);
                v233 = v340;
                v232 = v341;
                v234 = v342;
                v211 = v345;
                v235 = v339;
                v236._countAndFlagsBits = WiFiAddress.description.getter((v340 << 16) | (v71 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40) | v339);
                String.append(_:)(v236);

                v237._object = 0x80000001004C0880;
                v237._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v237);
                v215 = v353[0];
                v216 = v353[1];
                v218 = v70 | (v337 << 8) | (v235 << 16) | (v71 << 24) | (v233 << 32) | (v232 << 40) | (v234 << 48);
                goto LABEL_109;
              }
            }

LABEL_132:
            sub_1002E9FD4(v354, *(&v354 + 1), v355, *(&v355 + 1));
LABEL_39:
            if (*(v349 + qword_10059BAF0) == 1)
            {
              v142 = v72;
              v143 = v70 | (v337 << 8) | (v339 << 16) | (v71 << 24) | (v340 << 32) | (v341 << 40) | (v342 << 48) | (v345 << 56);
              v144 = v338;
              sub_10039860C(v143, v338, v142, 0);
              sub_10039B884(v143, v144);
            }

            goto LABEL_47;
          }

          v225 = NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
          v353[0] = *v225;
          v226 = v346;
          v352[0] = v346;
          sub_10027B614();
          if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0 || *(&v354 + 1) >> 60 == 15)
          {

            v353[0] = 0;
            v353[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(58);
            v238._object = 0x80000001004C07C0;
            v238._countAndFlagsBits = 0xD00000000000001BLL;
            String.append(_:)(v238);
            v240 = v340;
            v239 = v341;
            v241 = v342;
            v211 = v345;
            v242 = v339;
            v243._countAndFlagsBits = WiFiAddress.description.getter((v340 << 16) | (v71 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40) | v339);
            String.append(_:)(v243);

            v244._countAndFlagsBits = 0xD00000000000001DLL;
            v244._object = 0x80000001004C0800;
            String.append(_:)(v244);
            v215 = v353[0];
            v216 = v353[1];
            v218 = v70 | (v337 << 8) | (v242 << 16) | (v71 << 24) | (v240 << 32) | (v239 << 40) | (v241 << 48);
            goto LABEL_109;
          }

          v227 = v73[*(v347 + 22)];
          v335 = v70;
          if (v227 > 1)
          {
            v228 = v313;
            if (v227 == 2)
            {

              v248 = v312;
              goto LABEL_116;
            }
          }

          else
          {
            v228 = v313;
          }

          v248 = v312;
          v249 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v249 & 1) == 0)
          {
LABEL_118:

            v250 = v344;
            swift_unownedRetainStrong();
            v251 = v310;
            (*(v248 + 16))(v310, v250 + *(*v250 + 112), v228);

            (*(v309 + 128))(v228);
            (*(v248 + 8))(v251, v228);
            v252 = LongTermPairingKeyStore.getPairedPeersWithIDs()();

            v253 = v336;
            v254 = v339;
            v255 = v335 | (v337 << 8) | (v339 << 16) | (v149 << 24) | (v340 << 32) | (v341 << 40) | (v342 << 48) | (v345 << 56);

            v256 = v315;
            v346 = v255;
            sub_10039011C(v252, &v354, v255, v253, v315);

            v257 = v314;
            if ((*(v311 + 48))(v256, 1, v314) == 1)
            {
              sub_100016290(v256, &unk_1005985B0, &unk_1004939A0);
              if (v73[*(v347 + 22)] <= 1u && v73[*(v347 + 22)])
              {

LABEL_135:
                v353[0] = 0;
                v353[1] = 0xE000000000000000;
                _StringGuts.grow(_:)(68);
                v300._object = 0x80000001004C07C0;
                v300._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v300);
                v301._countAndFlagsBits = WiFiAddress.description.getter((v340 << 16) | (v149 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40) | v254);
                String.append(_:)(v301);

                v302._countAndFlagsBits = 0xD000000000000027;
                v302._object = 0x80000001004C0820;
                String.append(_:)(v302);
                v215 = v353[0];
                v246 = v353[1];
                v247 = v349;
                v245 = v346;
                goto LABEL_110;
              }

              v285 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v285)
              {
                goto LABEL_135;
              }
            }

            else
            {
              v258 = v256;
              v259 = v316;
              sub_10001CEA8(v258, v316, &unk_100597500, &unk_1004939B0);
              v260 = v259;
              v261 = v305;
              sub_100012400(v260, v305, &unk_100597500, &unk_1004939B0);
              v262 = *(v257 + 48);
              v264 = v317;
              v263 = v318;
              v265 = v319;
              (*(v318 + 32))(v317, v261, v319);
              v266 = v261 + v262;
              v267 = v265;
              sub_1003A4664(v266, type metadata accessor for NANPairedDeviceSharedAssociation);
              v268 = v306;
              (*(v263 + 16))(v306, v264, v265);
              memcpy(v353, v358, 0x16AuLL);
              v269 = *(NANBitmap.Channel.operatingClass.getter(v353) + 16);

              v270 = Logger.logObject.getter();
              v271 = static os_log_type_t.default.getter();
              sub_1001854F8(v358);
              if (os_log_type_enabled(v270, v271))
              {
                v272 = v263;
                v273 = swift_slowAlloc();
                *&v343 = swift_slowAlloc();
                v352[0] = v343;
                *v273 = 136315394;
                sub_1003A461C(&qword_100597520, &type metadata accessor for UUID);
                v274 = v268;
                LODWORD(v334) = v271;
                v275 = dispatch thunk of CustomStringConvertible.description.getter();
                v276 = v267;
                v278 = v277;
                v279 = *(v272 + 8);
                v279(v274, v276);
                v280 = sub_100002320(v275, v278, v352);

                *(v273 + 4) = v280;
                *(v273 + 12) = 2080;
                v254 = v339;
                v281 = WiFiAddress.description.getter((v340 << 16) | (v71 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40) | v339);
                v283 = sub_100002320(v281, v282, v352);

                *(v273 + 14) = v283;
                _os_log_impl(&_mh_execute_header, v270, v334, "Discovery: Found matching UUID: %s for paired peers %s", v273, 0x16u);
                swift_arrayDestroy();

                v284 = v279;
              }

              else
              {

                v284 = *(v263 + 8);
                v284(v268, v267);
                v254 = v339;
              }

              v286 = *(v347 + 19);
              v287 = *&v73[v286];
              v288 = v317;
              if (v287)
              {
                v289 = *&v73[v286];

                if (!sub_10030BDDC(v288, v287))
                {
                  v352[0] = 0;
                  v352[1] = 0xE000000000000000;
                  _StringGuts.grow(_:)(71);
                  v292._object = 0x80000001004C07C0;
                  v292._countAndFlagsBits = 0xD00000000000001BLL;
                  String.append(_:)(v292);
                  v293._countAndFlagsBits = WiFiAddress.description.getter((v340 << 16) | (v71 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40) | v254);
                  String.append(_:)(v293);

                  v294._countAndFlagsBits = 0xD000000000000028;
                  v294._object = 0x80000001004C0850;
                  String.append(_:)(v294);
                  v295 = v319;
                  v296 = Array.description.getter();
                  v298 = v297;

                  v299._countAndFlagsBits = v296;
                  v299._object = v298;
                  String.append(_:)(v299);

                  sub_100398410(v352[0], v352[1], v349, v346);

                  sub_1001854F8(v358);
                  v284(v288, v295);
                  sub_100016290(v316, &unk_100597500, &unk_1004939B0);
                  goto LABEL_111;
                }
              }

              v284(v288, v319);
              sub_100016290(v316, &unk_100597500, &unk_1004939B0);
            }

            swift_unownedRetainStrong();
            v290 = (v340 << 16) | (v71 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40);
            v291 = v307;
            sub_10040CD68(v290 | v254, v307);
            *(v291 + *(v308 + 108)) = 0;
            sub_10040E430(v291, v290 | v254);

            v70 = v335;
            v72 = v336;
            goto LABEL_132;
          }

LABEL_116:
          v353[0] = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();
          v352[0] = v226;
          if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
          {
            v353[0] = *v225;
            v352[0] = v226;

            dispatch thunk of SetAlgebra.isSuperset(of:)();
          }

          goto LABEL_118;
        }

        *&v343 = v149;
        memcpy(v353, v358, 0x16AuLL);
        v166 = *(NANBitmap.Channel.operatingClass.getter(v353) + 16);

        v167 = v322;
        Array<A>.retrieve(attribute:)(34, v72, v322);
        sub_1001854F8(v358);
        v168 = v128(v167, 1, v332);
        v335 = v70;
        if (v168 == 1)
        {

          sub_100016290(v167, &unk_100595C00, &qword_10048F790);
LABEL_92:
          v206 = v343;
          v352[0] = 0;
          v352[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(74);
          v207._object = 0x80000001004C07C0;
          v207._countAndFlagsBits = 0xD00000000000001BLL;
          String.append(_:)(v207);
          v209 = v340;
          v208 = v341;
          v210 = v342;
          v211 = v345;
          v212 = v339;
          v213._countAndFlagsBits = WiFiAddress.description.getter((v340 << 16) | (v206 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40) | v339);
          String.append(_:)(v213);

          v214._countAndFlagsBits = 0xD00000000000002DLL;
          v214._object = 0x80000001004C08A0;
          String.append(_:)(v214);
          v215 = v352[0];
          v216 = v352[1];
          v217 = v335 | (v337 << 8) | (v212 << 16) | (v206 << 24) | (v209 << 32);
LABEL_93:
          v218 = v217 | (v208 << 40) | (v210 << 48);
LABEL_109:
          v245 = v218 | (v211 << 56);
          v246 = v216;
          v247 = v349;
LABEL_110:
          sub_100398410(v215, v246, v247, v245);
          sub_1001854F8(v358);

LABEL_111:
          sub_1002E9FD4(v354, *(&v354 + 1), v355, *(&v355 + 1));
          v66 = v348;
          return sub_1003A4664(v66, type metadata accessor for DriverEvent);
        }

        if (swift_getEnumCaseMultiPayload() != 30)
        {

          sub_1003A4664(v167, type metadata accessor for NANAttribute);
          goto LABEL_92;
        }

        v169 = *(v167 + 1);
        v170 = NANAttribute.CipherSuiteInformation.Capabilities.groupKeySupport.getter(*v167);

        if (v170 == 2)
        {
          memcpy(v352, v358, 0x16AuLL);
          v171 = *(NANBitmap.Channel.operatingClass.getter(v352) + 16);

          v172 = v304;
          v72 = v336;
          Array<A>.retrieve(attribute:)(14, v336, v304);
          sub_1001854F8(v358);
          v173 = v128(v172, 1, v332);
          v149 = v343;
          if (v173 == 1)
          {

            sub_100016290(v172, &unk_100595C00, &qword_10048F790);
LABEL_98:
            v350 = 0;
            v351 = 0xE000000000000000;
            _StringGuts.grow(_:)(70);
            v220._countAndFlagsBits = 0xD000000000000022;
            v220._object = 0x80000001004C08D0;
            String.append(_:)(v220);
            v221 = v340;
            v208 = v341;
            v210 = v342;
            v211 = v345;
            v222 = v339;
            v223._countAndFlagsBits = WiFiAddress.description.getter((v340 << 16) | (v149 << 8) | (v341 << 24) | (v342 << 32) | (v345 << 40) | v339);
            String.append(_:)(v223);

            v224._countAndFlagsBits = 0xD000000000000022;
            v224._object = 0x80000001004C0900;
            String.append(_:)(v224);
            v215 = v350;
            v216 = v351;
            v217 = v335 | (v337 << 8) | (v222 << 16) | (v149 << 24) | (v221 << 32);
            goto LABEL_93;
          }

          if (swift_getEnumCaseMultiPayload() != 14)
          {

            sub_1003A4664(v172, type metadata accessor for NANAttribute);
            goto LABEL_98;
          }

          v219 = *(v172 + 2);
          sub_1001842D0(*(v172 + 16), *(v172 + 24), *(v172 + 32));
          if ((v219 & 0x400) == 0)
          {

            goto LABEL_98;
          }

          v70 = v335;
          goto LABEL_100;
        }

LABEL_91:

        goto LABEL_92;
      }

      sub_1001854F8(v358);
      goto LABEL_24;
    }

    v76 = NANBitmap.Channel.operatingClass.getter(v359);
    v77 = *(v76 + 8);
    v78 = *(v76 + 16);
    v346 = qword_10059BAF0;
    if (v67[qword_10059BAF0] == 1)
    {
      v79 = type metadata accessor for P2PTimer();
      LODWORD(v345) = v78;
      v80 = v340;
      v338 = v79;
      variable initialization expression of AWDLPeer.lastUpdated();
      v81 = qword_1005983E8;
      swift_beginAccess();
      v83 = v341;
      v82 = v342;
      v84 = *(v341 + 16);
      *&v343 = v81;
      v85 = v335;
      v84(v335, &v67[v81], v342);
      v86 = v333;
      DispatchTime.distance(to:)();
      v87 = *(v83 + 8);
      v87(v85, v82);
      v88 = v80;
      v78 = v345;
      v87(v88, v82);
      v89 = NANConstants.maximumServiceRetryRate.unsafeMutableAddressor();
      v91 = v336;
      v90 = v337;
      v92 = v334;
      (*(v336 + 16))(v334, v89, v337);
      LOBYTE(v81) = static DispatchTimeInterval.< infix(_:_:)();
      v93 = *(v91 + 8);
      v93(v92, v90);
      v93(v86, v90);
      v67 = v349;
      if ((v81 & 1) != 0 && v77 != 1)
      {
        v94 = v349 + qword_10059BAE8;
        swift_beginAccess();
        if (*(v94 + *(v347 + 20)) == 1)
        {
          v348 = v66;
          v95 = v67;
          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v96, v97))
          {

LABEL_66:
            v176 = v343;
            v177 = v340;
            variable initialization expression of AWDLPeer.lastUpdated();
            swift_beginAccess();
            (*(v341 + 40))(&v67[v176], v177, v342);
            swift_endAccess();
            v178 = *&v95[qword_1005983E0];
            swift_unownedRetainStrong();
            sub_10040CBA8();

            v347 = v95;
            swift_unownedRetainStrong();
            v179 = *(*v178 + 96);
            swift_beginAccess();
            v180 = v339;
            v181 = v178 + v179;
            v182 = v323;
            v183 = AssociatedTypeWitness;
            (*(v339 + 16))(v323, v181, AssociatedTypeWitness);

            v184 = v94;
            v185 = v324;
            sub_1003A4E40(v184, v324, type metadata accessor for NANSubscribe.Configuration);
            v186 = swift_getAssociatedConformanceWitness();
            (*(v186 + 200))(v185, v183, v186);
            sub_1003A4664(v185, type metadata accessor for NANSubscribe.Configuration);
            (*(v180 + 8))(v182, v183);
            v66 = v348;
            return sub_1003A4664(v66, type metadata accessor for DriverEvent);
          }

          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v353[0] = v100;
          *v98 = 138412546;
          *(v98 + 4) = v95;
          *v99 = v67;
          *(v98 + 12) = 2080;
          *&v344 = v77;
          v347 = v100;
          if (v77 > 2)
          {
            if (v77 == 3)
            {
              v101 = 0x6961462070696843;
              v102 = 0xEC0000006572756CLL;
              goto LABEL_65;
            }

            if (v77 == 4)
            {
              v102 = 0x80000001004BA540;
              v101 = 0xD000000000000018;
              goto LABEL_65;
            }
          }

          else
          {
            if (v77 == -1)
            {
              v102 = 0x80000001004BA5E0;
              v101 = 0xD000000000000011;
              goto LABEL_65;
            }

            if (v77 == 2)
            {
              v101 = 0x7165522072657355;
              v102 = 0xEE00646574736575;
LABEL_65:
              v174 = v95;
              v175 = sub_100002320(v101, v102, v353);

              *(v98 + 14) = v175;
              _os_log_impl(&_mh_execute_header, v96, v97, "%@ got an early termination with reason: %s. Retrying", v98, 0x16u);
              sub_100016290(v99, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v347);

              v67 = v349;
              goto LABEL_66;
            }
          }

          v102 = 0xE700000000000000;
          v101 = 0x6E776F6E6B6E55;
          goto LABEL_65;
        }
      }
    }

    v187 = qword_100598418;
    if (*&v67[qword_100598418] && (v67[qword_100598420] & 1) != 0)
    {
      v77 = 1;
    }

    sub_10039205C(v77, v78);
    v188 = v67;
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v189, v190))
    {

LABEL_85:
      v67[v346] = 0;
      v199 = *&v188[qword_1005983F0];
      *&v188[qword_1005983F0] = 0;

      v200 = qword_1005983F8;
      v201 = *&v188[qword_1005983F8];
      if (v201)
      {
        [v201 subscribeTerminatedWithReason:v77];
        v202 = *&v188[v200];
      }

      *&v188[v200] = 0;
      swift_unknownObjectRelease();
      v203 = *&v67[v187];
      *&v67[v187] = 0;

      v188[qword_100598420] = 0;
      v204 = *&v188[qword_1005983E0];
      swift_unownedRetainStrong();
      sub_10040CAE8();

      sub_100367078(v188);

      return sub_1003A4664(v66, type metadata accessor for DriverEvent);
    }

    v348 = v66;
    v191 = v67;
    v192 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v352[0] = v194;
    *v192 = 138412546;
    *(v192 + 4) = v188;
    *v193 = v191;
    *(v192 + 12) = 2080;
    *&v344 = v77;
    if (v77 <= 1)
    {
      if (v77 == -1)
      {
        v195 = 0x80000001004BA5E0;
        v196 = 0xD000000000000011;
        goto LABEL_84;
      }

      if (v77 == 1)
      {
        v195 = 0xE900000000000074;
        v196 = 0x754F2064656D6954;
        goto LABEL_84;
      }
    }

    else
    {
      switch(v77)
      {
        case 2:
          v196 = 0x7165522072657355;
          v195 = 0xEE00646574736575;
          goto LABEL_84;
        case 3:
          v196 = 0x6961462070696843;
          v195 = 0xEC0000006572756CLL;
          goto LABEL_84;
        case 4:
          v195 = 0x80000001004BA540;
          v196 = 0xD000000000000018;
LABEL_84:
          v197 = v188;
          v198 = sub_100002320(v196, v195, v352);

          *(v192 + 14) = v198;
          _os_log_impl(&_mh_execute_header, v189, v190, "%@ was terminated with reason %s", v192, 0x16u);
          sub_100016290(v193, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v194);

          v66 = v348;
          v67 = v349;
          v77 = v344;
          goto LABEL_85;
      }
    }

    v195 = 0xE700000000000000;
    v196 = 0x6E776F6E6B6E55;
    goto LABEL_84;
  }

  v103 = NANBitmap.Channel.operatingClass.getter(v359);
  if (v67[qword_10059BAF0] == 1)
  {
    sub_10039CA30(*v103, *(v103 + 8), *(v103 + 16));
    sub_1001854F8(v358);
  }

  else
  {
    sub_1001854F8(v358);
    v117 = v67;
    v118 = Logger.logObject.getter();
    v119 = v67;
    v120 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v118, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v121 = 138412290;
      *(v121 + 4) = v117;
      *v122 = v119;
      v123 = v117;
      _os_log_impl(&_mh_execute_header, v118, v120, "%@ Failed to handle follow-up frame because interface is not active", v121, 0xCu);
      sub_100016290(v122, &qword_10058B780, &qword_100480AC0);
    }
  }

  return sub_1003A4664(v66, type metadata accessor for DriverEvent);
}

uint64_t sub_100398410(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a4 >> 16;
  v8 = type metadata accessor for NANPeer(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + qword_1005983E0);
  swift_unownedRetainStrong();
  sub_10040CD68(v7, v11);

  v13 = v11[*(v8 + 108)];
  result = sub_1003A4664(v11, type metadata accessor for NANPeer);
  if ((v13 & 1) == 0)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100002320(a1, a2, &v20);
      _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
      sub_100002A00(v18);
    }

    swift_unownedRetainStrong();
    sub_10040CD68(v7, v11);
    v11[*(v8 + 108)] = 1;
    sub_10040E430(v11, v7);
  }

  return result;
}

void sub_10039860C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v432 = a4;
  v465 = a1;
  v466 = a2;
  v467 = a3;
  v6 = *v4;
  v7 = swift_isaMask;
  v8 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v431 = &v381 - v9;
  v10 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v405 = &v381 - v11;
  v430 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v433 = *(v430 - 8);
  v12 = *(v433 + 64);
  __chkstk_darwin();
  v406 = &v381 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v412 = &v381 - v14;
  __chkstk_darwin();
  v408 = &v381 - v15;
  __chkstk_darwin();
  v409 = &v381 - v16;
  v17 = *(*(sub_10005DC58(&unk_100597460, &qword_1004AFD18) - 8) + 64);
  __chkstk_darwin();
  v404 = &v381 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v418 = &v381 - v19;
  __chkstk_darwin();
  v417 = &v381 - v20;
  v423 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v21 = *(*(v423 - 8) + 64);
  __chkstk_darwin();
  v411 = &v381 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v401 = &v381 - v23;
  __chkstk_darwin();
  v407 = &v381 - v24;
  __chkstk_darwin();
  v413 = &v381 - v25;
  __chkstk_darwin();
  v416 = &v381 - v26;
  v27 = type metadata accessor for NANIdentityKey(0);
  v402 = *(v27 - 8);
  v403 = v27;
  v28 = *(v402 + 64);
  __chkstk_darwin();
  v457 = &v381 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v427 = *(v447 - 8);
  v30 = *(v427 + 64);
  __chkstk_darwin();
  v458 = &v381 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v459 = &v381 - v32;
  __chkstk_darwin();
  v444 = &v381 - v33;
  v422 = *((v7 & v6) + 0x58);
  v34 = *(v422 + 8);
  v434 = *((v7 & v6) + 0x50);
  v435 = v34;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v441 = *(AssociatedTypeWitness - 8);
  v442 = AssociatedTypeWitness;
  v36 = *(v441 + 64);
  __chkstk_darwin();
  v429 = &v381 - v37;
  v38 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v426 = &v381 - v39;
  v451 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  v40 = *(*(v451 - 8) + 64);
  __chkstk_darwin();
  v440 = &v381 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v437 = &v381 - v42;
  __chkstk_darwin();
  v428 = &v381 - v43;
  v456 = type metadata accessor for NANPeer(0);
  v44 = *(*(v456 - 8) + 64);
  __chkstk_darwin();
  v439 = &v381 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v438 = &v381 - v46;
  __chkstk_darwin();
  v436 = &v381 - v47;
  __chkstk_darwin();
  v445 = &v381 - v48;
  __chkstk_darwin();
  v443 = &v381 - v49;
  __chkstk_darwin();
  v51 = &v381 - v50;
  v52 = *(*(sub_10005DC58(&unk_1005985D0, &unk_1004B17A0) - 8) + 64);
  __chkstk_darwin();
  v453 = &v381 - v53;
  v462 = type metadata accessor for NANPeer.Service(0);
  v446 = *(v462 - 1);
  v54 = *(v446 + 64);
  __chkstk_darwin();
  v420 = v55;
  v421 = &v381 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v461 = &v381 - v56;
  v57 = BYTE1(v465);
  v58 = BYTE2(v465);
  v59 = BYTE3(v465);
  v60 = BYTE4(v465);
  v61 = BYTE5(v465);
  v62 = BYTE6(v465);
  v63 = HIBYTE(v465);
  v64 = *&v5[qword_1005983E0];
  v65 = swift_unownedRetainStrong();
  v455 = v60;
  v454 = v59;
  v66 = (v60 << 16) | (v59 << 8);
  v67 = v65;
  v450 = v61;
  v449 = v62;
  v68 = v66 | (v61 << 24) | (v62 << 32);
  v69 = v57;
  v452 = v63;
  v463 = v58;
  v460 = v68 | (v63 << 40);
  sub_10040CD68(v460 | v58, v51);

  v70 = &v5[qword_10059BAE8];
  swift_beginAccess();
  v71 = *(v70 + 1);
  v72 = *(v70 + 2);

  v73 = v453;
  sub_1002E7050(v69, v453);

  v448 = v51;
  sub_1003A4664(v51, type metadata accessor for NANPeer);
  if ((*(v446 + 48))(v73, 1, v462) == 1)
  {
    v74 = v454;
    v75 = v455;
    v76 = v463;
    v77 = v69;
    sub_100016290(v73, &unk_1005985D0, &unk_1004B17A0);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v471 = v81;
      *v80 = 136315138;
      v82 = NANPeerServiceIdentifier.description.getter(v77 | (v76 << 8) | (v74 << 16) | (v75 << 24) | (v450 << 32) | (v449 << 40) | (v452 << 48));
      v84 = sub_100002320(v82, v83, &v471);

      *(v80 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "Failed to find the service descriptor or service descriptor extension attributes for %s", v80, 0xCu);
      sub_100002A00(v81);
    }

    return;
  }

  v419 = v5;
  sub_1003A46C4(v73, v461, type metadata accessor for NANPeer.Service);
  sub_10005DC58(&unk_1005985E8, &qword_1004B25C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  v410 = v69;
  LOBYTE(v471) = v69;
  AnyHashable.init<A>(_:)();
  v86 = v463;
  LOBYTE(v471) = v463;
  BYTE1(v471) = v454;
  BYTE2(v471) = v455;
  BYTE3(v471) = v450;
  BYTE4(v471) = v449;
  BYTE5(v471) = v452;
  sub_1002CAFC4();
  AnyHashable.init<A>(_:)();
  v87 = *(v70 + 1);
  v88 = *(v70 + 2);
  v414 = v70;
  *&v471 = v87;
  *(&v471 + 1) = v88;
  sub_1003A472C();

  AnyHashable.init<A>(_:)();
  v393 = static WiFiP2PHasher.hash(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v415 = swift_allocBox();
  v90 = v89;
  v91 = type metadata accessor for UUID();
  v453 = *(v91 - 1);
  v92 = *(v453 + 56);
  v399 = v453 + 56;
  v400 = v90;
  v462 = v91;
  v398 = v92;
  (v92)(v90, 1, 1);
  swift_unownedRetainStrong();
  v93 = v460;
  v94 = v443;
  sub_10040CD68(v460 | v86, v443);

  v95 = *(v94 + *(v456 + 56));
  v96 = v67;
  if (v95)
  {
    *&v471 = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();
    *&v468 = v95;
    sub_10027B614();
    dispatch thunk of SetAlgebra.isSuperset(of:)();
  }

  sub_1003A4664(v94, type metadata accessor for NANPeer);
  swift_unownedRetainStrong();
  v97 = v445;
  sub_10040CD68(v93 | v86, v445);

  v98 = v456;
  v99 = (v97 + *(v456 + 84));
  v100 = v86;
  v101 = v99[1];
  v103 = v99[2];
  v102 = v99[3];
  v451 = *v99;
  sub_1003A4780(v451, v101, v103, v102);
  sub_1003A4664(v97, type metadata accessor for NANPeer);
  swift_unownedRetainStrong();
  v445 = v96;
  if (v101 >> 60 == 15)
  {
    v104 = v437;
    v398(v437, 1, 1, v462);
    v105 = v448;
    sub_10040CD68(v93 | v100, v448);
    sub_10036C8F0(v104, v105 + *(v98 + 88));
    sub_10040E430(v105, v93 | v100);
    goto LABEL_146;
  }

  swift_unownedRetainStrong();
  v107 = v441;
  v106 = v442;
  v108 = v429;
  (*(v441 + 16))(v429, v96 + *(*v96 + 112), v442);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 128))(v106, AssociatedConformanceWitness);
  (*(v107 + 8))(v108, v106);
  v110 = LongTermPairingKeyStore.getPairedPeersWithIDs()();
  v442 = v110;

  v111 = v110 + 64;
  v112 = 1 << *(v110 + 32);
  v113 = -1;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  v114 = v113 & *(v110 + 64);
  v435 = (v112 + 63) >> 6;
  v429 = (v453 + 16);
  v115 = v451;
  if (v451)
  {
    v116 = 0;
  }

  else
  {
    v116 = v101 == 0xC000000000000000;
  }

  v117 = !v116;
  v395 = v117;
  v425 = v101 >> 62;
  v118 = __OFSUB__(HIDWORD(v451), v451);
  v388 = v118;
  v387 = HIDWORD(v451) - v451;
  v441 = v101;
  v392 = BYTE6(v101);
  if (v103)
  {
    v119 = 0;
  }

  else
  {
    v119 = v102 == 0xC000000000000000;
  }

  v120 = !v119;
  v390 = v120;
  v396 = v102 >> 62;
  v443 = v103;
  v121 = __OFSUB__(HIDWORD(v103), v103);
  v386 = v121;
  v385 = HIDWORD(v103) - v103;
  v389 = BYTE6(v102);
  v424 = (v453 + 8);

  v122 = 0;
  v397 = 0;
  v394 = v102;
  v123 = v435;
  if (!v114)
  {
LABEL_30:
    while (1)
    {
      v124 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        break;
      }

      if (v124 >= v123)
      {

        v191 = v426;
        v190 = v427;
        v192 = v447;
        (*(v427 + 56))(v426, 1, 1, v447);
        v100 = v463;
        goto LABEL_142;
      }

      v114 = *(v111 + 8 * v124);
      ++v122;
      if (v114)
      {
        v122 = v124;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_237;
  }

  while (1)
  {
LABEL_34:
    v125 = __clz(__rbit64(v114)) | (v122 << 6);
    v126 = v442;
    v127 = v444;
    (*(v453 + 16))(v444, *(v442 + 48) + *(v453 + 72) * v125, v462);
    v128 = *(v126 + 56);
    v129 = v128 + *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 72) * v125;
    v130 = v447;
    sub_1003A4E40(v129, v127 + *(v447 + 48), type metadata accessor for NANPairedDeviceSharedAssociation);
    v131 = v459;
    sub_10001CEA8(v127, v459, &unk_100597500, &unk_1004939B0);
    v132 = v458;
    sub_100012400(v131, v458, &unk_100597500, &unk_1004939B0);
    v133 = *(v130 + 48);
    v97 = v457;
    sub_1003A4E40(&v132[v133], v457, type metadata accessor for NANIdentityKey);
    sub_1003A4664(&v132[v133], type metadata accessor for NANPairedDeviceSharedAssociation);
    v134 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(v460 | v463, v115, v441);
    v136 = v134;
    v138 = v137;
    v140 = v139;
    v141 = v135 >> 62;
    if (v135 >> 62 == 3)
    {
      if (v134)
      {
        v142 = 0;
      }

      else
      {
        v142 = v135 == 0xC000000000000000;
      }

      v143 = v425;
      v145 = !v142 || v425 < 3;
      v146 = v443;
      if (((v145 | v395) & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_56:
      v147 = 0;
      if (v143 <= 1)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    v146 = v443;
    v143 = v425;
    if (v141 > 1)
    {
      if (v141 != 2)
      {
        goto LABEL_56;
      }

      v149 = *(v134 + 16);
      v148 = *(v134 + 24);
      v150 = __OFSUB__(v148, v149);
      v147 = v148 - v149;
      if (v150)
      {
        goto LABEL_247;
      }

      if (v425 <= 1)
      {
        goto LABEL_53;
      }
    }

    else if (v141)
    {
      LODWORD(v147) = HIDWORD(v134) - v134;
      if (__OFSUB__(HIDWORD(v134), v134))
      {
        goto LABEL_246;
      }

      v147 = v147;
      if (v425 <= 1)
      {
LABEL_53:
        v151 = v392;
        if (v143)
        {
          v151 = v387;
          if (v388)
          {
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
LABEL_246:
            __break(1u);
LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
LABEL_249:
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
          }
        }

        goto LABEL_59;
      }
    }

    else
    {
      v147 = BYTE6(v135);
      if (v425 <= 1)
      {
        goto LABEL_53;
      }
    }

LABEL_57:
    if (v143 != 2)
    {
      if (v147)
      {
        goto LABEL_117;
      }

      goto LABEL_86;
    }

    v153 = *(v451 + 16);
    v152 = *(v451 + 24);
    v150 = __OFSUB__(v152, v153);
    v151 = v152 - v153;
    if (v150)
    {
      goto LABEL_243;
    }

LABEL_59:
    if (v147 != v151)
    {
      goto LABEL_117;
    }

    if (v147 < 1)
    {
      goto LABEL_86;
    }

    if (v141 > 1)
    {
      if (v141 != 2)
      {
        *(&v471 + 6) = 0;
        *&v471 = 0;
        v163 = v135;
        v97 = v397;
        sub_100031E04(&v471, v451, v441, &v468);
        v135 = v163;
        v397 = v97;
        v146 = v443;
        if ((v468 & 1) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_86;
      }

      v155 = *(v134 + 16);
      v384 = *(v134 + 24);
      v391 = v135;
      v156 = __DataStorage._bytes.getter();
      if (v156)
      {
        v157 = v156;
        v158 = __DataStorage._offset.getter();
        if (__OFSUB__(v155, v158))
        {
          goto LABEL_256;
        }

        v383 = v155 - v158 + v157;
      }

      else
      {
        v383 = 0;
      }

      if (__OFSUB__(v384, v155))
      {
        goto LABEL_253;
      }

      __DataStorage._length.getter();
      v97 = v397;
      sub_100031E04(v383, v451, v441, &v471);
      v135 = v391;
    }

    else
    {
      if (!v141)
      {
        *&v471 = v134;
        WORD4(v471) = v135;
        BYTE10(v471) = BYTE2(v135);
        BYTE11(v471) = BYTE3(v135);
        BYTE12(v471) = BYTE4(v135);
        BYTE13(v471) = BYTE5(v135);
        v154 = v135;
        v97 = v397;
        sub_100031E04(&v471, v451, v441, &v468);
        v135 = v154;
        v146 = v443;
        v397 = v97;
        if ((v468 & 1) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_86;
      }

      v384 = (v134 >> 32) - v134;
      if (v134 >> 32 < v134)
      {
        goto LABEL_252;
      }

      v391 = v135;
      v159 = __DataStorage._bytes.getter();
      if (v159)
      {
        v160 = v159;
        v161 = __DataStorage._offset.getter();
        if (__OFSUB__(v136, v161))
        {
          goto LABEL_257;
        }

        v162 = v136 - v161 + v160;
      }

      else
      {
        v162 = 0;
      }

      v164 = v391;
      __DataStorage._length.getter();
      v165 = v162;
      v97 = v397;
      sub_100031E04(v165, v451, v441, &v471);
      v135 = v164;
    }

    v397 = v97;
    v146 = v443;
    if ((v471 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_86:
    v166 = v140 >> 62;
    if (v140 >> 62 == 3)
    {
      if (v138)
      {
        v167 = 0;
      }

      else
      {
        v167 = v140 == 0xC000000000000000;
      }

      v168 = v396;
      v170 = !v167 || v396 < 3;
      v100 = v463;
      if (((v170 | v390) & 1) == 0)
      {
        sub_1000124C8(v136, v135);
        sub_1000124C8(0, 0xC000000000000000);
        goto LABEL_234;
      }

LABEL_108:
      v171 = 0;
      if (v168 > 1)
      {
        goto LABEL_109;
      }

      goto LABEL_105;
    }

    v168 = v396;
    if (v166 <= 1)
    {
      break;
    }

    if (v166 != 2)
    {
      goto LABEL_108;
    }

    v173 = *(v138 + 16);
    v172 = *(v138 + 24);
    v150 = __OFSUB__(v172, v173);
    v171 = v172 - v173;
    if (v150)
    {
      goto LABEL_248;
    }

    if (v396 > 1)
    {
      goto LABEL_109;
    }

LABEL_105:
    v174 = v389;
    if (v168)
    {
      v174 = v385;
      if (v386)
      {
        goto LABEL_244;
      }
    }

LABEL_111:
    if (v171 != v174)
    {
      goto LABEL_117;
    }

    if (v171 < 1)
    {
      goto LABEL_233;
    }

    if (v166 > 1)
    {
      v384 = v138;
      v391 = v135;
      v100 = v463;
      if (v166 != 2)
      {
        *(&v471 + 6) = 0;
        *&v471 = 0;
        v97 = v397;
        sub_100031E04(&v471, v146, v394, &v468);
        v397 = v97;
        sub_1000124C8(v136, v391);
        v178 = v384;
        goto LABEL_132;
      }

      v179 = *(v384 + 16);
      v383 = *(v384 + 24);
      v180 = __DataStorage._bytes.getter();
      if (v180)
      {
        v181 = v180;
        v182 = __DataStorage._offset.getter();
        if (__OFSUB__(v179, v182))
        {
          goto LABEL_254;
        }

        v382 = v179 - v182 + v181;
      }

      else
      {
        v382 = 0;
      }

      if (__OFSUB__(v383, v179))
      {
        goto LABEL_251;
      }

      __DataStorage._length.getter();
      v189 = v382;
    }

    else
    {
      v100 = v463;
      if (!v166)
      {
        *&v471 = v138;
        WORD4(v471) = v140;
        BYTE10(v471) = BYTE2(v140);
        BYTE11(v471) = BYTE3(v140);
        BYTE12(v471) = BYTE4(v140);
        BYTE13(v471) = BYTE5(v140);
        v177 = v135;
        v97 = v397;
        sub_100031E04(&v471, v146, v394, &v468);
        v397 = v97;
        sub_1000124C8(v136, v177);
        v178 = v138;
LABEL_132:
        sub_1000124C8(v178, v140);
        v188 = v468;
        goto LABEL_139;
      }

      v391 = v135;
      v183 = v138;
      v383 = (v138 >> 32) - v138;
      v384 = v138;
      if (v138 >> 32 < v138)
      {
        goto LABEL_250;
      }

      v184 = __DataStorage._bytes.getter();
      if (v184)
      {
        v185 = v184;
        v186 = __DataStorage._offset.getter();
        if (__OFSUB__(v183, v186))
        {
          goto LABEL_255;
        }

        v187 = v183 - v186 + v185;
      }

      else
      {
        v187 = 0;
      }

      __DataStorage._length.getter();
      v189 = v187;
    }

    v97 = v397;
    sub_100031E04(v189, v443, v394, &v471);
    v397 = v97;
    sub_1000124C8(v136, v391);
    sub_1000124C8(v384, v140);
    v188 = v471;
LABEL_139:
    sub_1003A4664(v457, type metadata accessor for NANIdentityKey);
    if (v188)
    {
      goto LABEL_235;
    }

LABEL_118:
    v114 &= v114 - 1;
    (*v424)(v458, v462);
    sub_100016290(v459, &unk_100597500, &unk_1004939B0);
    v115 = v451;
    v123 = v435;
    if (!v114)
    {
      goto LABEL_30;
    }
  }

  if (!v166)
  {
    v171 = BYTE6(v140);
    if (v396 > 1)
    {
      goto LABEL_109;
    }

    goto LABEL_105;
  }

  LODWORD(v171) = HIDWORD(v138) - v138;
  if (__OFSUB__(HIDWORD(v138), v138))
  {
    goto LABEL_249;
  }

  v171 = v171;
  if (v396 <= 1)
  {
    goto LABEL_105;
  }

LABEL_109:
  if (v168 == 2)
  {
    v176 = *(v146 + 16);
    v175 = *(v146 + 24);
    v150 = __OFSUB__(v175, v176);
    v174 = v175 - v176;
    if (v150)
    {
      goto LABEL_245;
    }

    goto LABEL_111;
  }

  if (v171)
  {
LABEL_117:
    sub_1000124C8(v136, v135);
    sub_1000124C8(v138, v140);
    sub_1003A4664(v457, type metadata accessor for NANIdentityKey);
    goto LABEL_118;
  }

LABEL_233:
  sub_1000124C8(v136, v135);
  sub_1000124C8(v138, v140);
  v100 = v463;
LABEL_234:
  sub_1003A4664(v457, type metadata accessor for NANIdentityKey);
LABEL_235:
  (*v424)(v458, v462);

  v191 = v426;
  sub_10001CEA8(v459, v426, &unk_100597500, &unk_1004939B0);
  v190 = v427;
  v192 = v447;
  (*(v427 + 56))(v191, 0, 1, v447);
LABEL_142:

  v193 = (*(v190 + 48))(v191, 1, v192);
  v93 = v460;
  v105 = v448;
  v104 = v437;
  if (v193 == 1)
  {
    sub_100016290(v191, &unk_1005985B0, &unk_1004939A0);
    v194 = v428;
    v398(v428, 1, 1, v462);
  }

  else
  {
    v195 = *(v192 + 48);
    v196 = v428;
    v197 = v462;
    (*(v453 + 32))(v428, v191, v462);
    v398(v196, 0, 1, v197);
    v194 = v196;
    sub_1003A4664(v191 + v195, type metadata accessor for NANPairedDeviceSharedAssociation);
  }

  sub_10040CD68(v93 | v100, v105);
  v98 = v456;
  sub_10036C8F0(v194, v105 + *(v456 + 88));
  sub_10040E430(v105, v93 | v100);
  sub_1002E9FD4(v451, v441, v443, v394);
LABEL_146:

  v198 = v400;
  swift_unownedRetainStrong();
  sub_10040CD68(v93 | v100, v105);

  sub_100012400(v105 + *(v98 + 88), v104, &qword_10058F4D0, &qword_100491AB0);
  sub_1003A4664(v105, type metadata accessor for NANPeer);
  sub_10036C8F0(v104, v198);
  swift_unownedRetainStrong();
  v199 = v93 | v100;
  v200 = v436;
  sub_10040CD68(v199, v436);

  v201 = v200 + *(v98 + 80);
  v202 = *v201;
  v203 = *(v201 + 8);
  v204 = *(v201 + 16);
  v205 = *(v201 + 24);
  v206 = *(v201 + 32);
  v207 = *(v201 + 40);
  sub_10036CC58(*v201, v203, v204, v205, v206);
  sub_1003A4664(v200, type metadata accessor for NANPeer);
  if ((v202 & 0xFF0000) != 0xE0000)
  {
    sub_1002EA024(v202, v203, v204, v205, v206);
    v208 = NANAttribute.PairingBootstrapping.Method.validAdvertiseAPIValues.getter(v207);
    v209 = *(v208 + 2);
    if (v209)
    {
      *&v471 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v210 = 32;
      do
      {
        v211 = *&v208[v210];
        Int._bridgeToObjectiveC()();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v212 = *(v471 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v210 += 8;
        --v209;
      }

      while (v209);
    }
  }

  swift_unownedRetainStrong();
  v213 = v460;
  v214 = v463;
  v215 = v438;
  sub_10040CD68(v460 | v463, v438);

  v216 = v456;
  v217 = *(v215 + *(v456 + 56));

  sub_1003A4664(v215, type metadata accessor for NANPeer);
  if (v217)
  {
    *&v471 = *NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
    *&v468 = v217;
    sub_10027B614();

    v218 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  }

  else
  {
    v218 = 0;
  }

  v219 = v410;
  v220 = v440;
  v221 = objc_allocWithZone(WiFiAwarePairingConfiguration);
  sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v458 = [v221 initWithSupportedPairSetupMethods:isa pairingCachingEnabled:v218 & 1];

  swift_unownedRetainStrong();
  v223 = v439;
  sub_10040CD68(v213 | v214, v439);

  sub_100012400(v223 + *(v216 + 88), v220, &qword_10058F4D0, &qword_100491AB0);
  sub_1003A4664(v223, type metadata accessor for NANPeer);
  v224 = *(v453 + 48);
  LODWORD(v459) = 1;
  LODWORD(v223) = v224(v220, 1, v462) == 1;
  sub_100016290(v220, &qword_10058F4D0, &qword_100491AB0);
  swift_unownedRetainStrong();
  v225 = v448;
  sub_10040CD68(v213 | v214, v448);
  v226 = *(v216 + 96);
  LODWORD(v462) = v223;
  *(v225 + v226) = v223;
  sub_10040E430(v225, v213 | v214);

  v227 = sub_1002E1478();
  v228 = v419;
  v229 = v414;
  v230 = v219;
  if ((v227 & 1) == 0)
  {
    if (*(v461 + 96) != 5)
    {
      v231 = *(v461 + 82);
      if (v231)
      {
        if ((v231 & 2) == 0)
        {

          goto LABEL_160;
        }

        v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v232)
        {
LABEL_160:
          if (v432)
          {
            LODWORD(v459) = 1;
            goto LABEL_163;
          }
        }
      }
    }

    swift_unownedRetainStrong();
    v233 = *v229;
    v234 = v448;
    sub_10040CD68(v213 | v214, v448);
    LODWORD(v459) = sub_1002E18E0(v233);
    v235 = v234;
    v230 = v219;
    sub_10040E430(v235, v213 | v214);
  }

LABEL_163:
  v236 = type metadata accessor for NANSubscribe.Configuration();
  if ((v229[*(v236 + 68)] & 1) == 0)
  {
    v248 = qword_10059BB08;
    v249 = v452;
    v237 = v449;
    if (v459)
    {
      swift_beginAccess();
      v250 = v230 | (v214 << 8) | (v454 << 16) | (v455 << 24) | (v450 << 32) | (v237 << 40) | (v249 << 48);
      v251 = v417;
      sub_1003AD5FC(v250, v417);
      swift_endAccess();
      if ((*(v433 + 48))(v251, 1, v430) == 1)
      {

        sub_100016290(v251, &unk_100597460, &qword_1004AFD18);
LABEL_204:

        goto LABEL_210;
      }

      v259 = v416;
      sub_1003A4E40(v251, v416, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_1003A4664(v251, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_182:
        sub_1003A4664(v259, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        goto LABEL_183;
      }
    }

    else
    {
      swift_beginAccess();
      v252 = *&v228[v248];
      if (*(v252 + 16) && (v253 = sub_10007CD94(v230 | (v214 << 8) | (v454 << 16) | (v455 << 24) | (v450 << 32) | (v237 << 40) | (v249 << 48)), (v254 & 1) != 0))
      {
        v255 = v418;
        sub_1003A4E40(*(v252 + 56) + *(v433 + 72) * v253, v418, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v256 = 0;
      }

      else
      {
        v256 = 1;
        v255 = v418;
      }

      v257 = v433;
      v258 = v430;
      (*(v433 + 56))(v255, v256, 1, v430);
      if ((*(v257 + 48))(v255, 1, v258))
      {
        sub_100016290(v255, &unk_100597460, &qword_1004AFD18);
        swift_endAccess();
        goto LABEL_209;
      }

      v259 = v413;
      sub_1003A4E40(v255, v413, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_100016290(v255, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v229 = v414;
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_182;
      }
    }

    sub_1003A4664(v259, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    goto LABEL_204;
  }

  v237 = v449;
  if (*(v461 + 96) == 5 || (*(v461 + 80) & 0x30000) != 0x10000 || v432)
  {
LABEL_183:
    swift_beginAccess();
    v260 = v230 | (v214 << 8) | (v454 << 16) | (v455 << 24) | (v450 << 32) | (v237 << 40) | (v452 << 48);
    v261 = sub_10046F5A4(&v468, v260);
    swift_endAccess();
    sub_100391A68();
    v262 = BYTE5(v468);
    if (v261)
    {
      v263 = BYTE1(v468);
      v454 = BYTE2(v468);
      v455 = BYTE3(v468);
      v456 = v468;
      v457 = BYTE4(v468);
      v459 = BYTE6(v468);
      v264 = v228;
      sub_100185384(&v465, &v471);
      v265 = Logger.logObject.getter();
      v266 = static os_log_type_t.default.getter();
      v463 = v264;

      sub_1003A47D0(&v465);
      v267 = os_log_type_enabled(v265, v266);
      v453 = v260;
      if (v267)
      {
        v268 = swift_slowAlloc();
        v269 = swift_slowAlloc();
        *&v471 = swift_slowAlloc();
        *v268 = 138412802;
        v270 = v463;
        *(v268 + 4) = v463;
        *v269 = v228;
        *(v268 + 12) = 2080;
        v271 = v456 | (v263 << 8) | (v454 << 16) | (v455 << 24) | (v457 << 32) | (v262 << 40) | (v459 << 48);
        v272 = v270;
        v273 = NANPeerServiceIdentifier.description.getter(v271);
        v275 = sub_100002320(v273, v274, &v471);

        *(v268 + 14) = v275;
        *(v268 + 22) = 2080;
        v276 = RSSI.description.getter();
        v278 = sub_100002320(v276, v277, &v471);

        *(v268 + 24) = v278;
        _os_log_impl(&_mh_execute_header, v265, v266, "%@ received a new discovery result %s at %s", v268, 0x20u);
        sub_100016290(v269, &qword_10058B780, &qword_100480AC0);

        swift_arrayDestroy();
      }

      v279 = type metadata accessor for TaskPriority();
      (*(*(v279 - 8) + 56))(v431, 1, 1, v279);
      v280 = v421;
      sub_1003A4E40(v461, v421, type metadata accessor for NANPeer.Service);
      v281 = v466;
      v282 = v467;
      v283 = (*(v446 + 80) + 80) & ~*(v446 + 80);
      v460 = (v283 + v420 + 7) & 0xFFFFFFFFFFFFFFF8;
      v284 = (v283 + v420 + 23) & 0xFFFFFFFFFFFFFFF8;
      v285 = (v284 + 15) & 0xFFFFFFFFFFFFFFF8;
      v286 = swift_allocObject();
      v286[2] = 0;
      v286[3] = 0;
      v287 = v422;
      v286[4] = v434;
      v286[5] = v287;
      v286[6] = v465;
      v286[7] = v281;
      v286[8] = v282;
      v288 = v463;
      v286[9] = v463;
      sub_1003A46C4(v280, v286 + v283, type metadata accessor for NANPeer.Service);
      v289 = v286 + v460;
      *v289 = v432;
      v289[8] = v462;
      v290 = v458;
      *(v286 + v284) = v458;
      *(v286 + v285) = v415;
      *(v286 + ((v285 + 15) & 0xFFFFFFFFFFFFFFF8)) = v393;
      v291 = v288;
      sub_100185384(&v465, &v471);

      v292 = v290;

      sub_1003ACB3C(0, 0, v431, &unk_1004B25E0, v286);

      v293 = qword_10059BB08;
      swift_beginAccess();
      v294 = *&v291[v293];
      if (*(v294 + 16))
      {
        v295 = *&v291[v293];

        v296 = sub_10007CD94(v453);
        v297 = v461;
        if ((v298 & 1) == 0)
        {

LABEL_227:
          v228 = v419;
          goto LABEL_228;
        }

        v299 = v296;
        v300 = *(v294 + 36);

        v301 = v412;
        sub_1002CEEA4(&v468, v412, v299, v300, 0, *&v291[v293]);
        v302 = v411;
        sub_1003A4E40(v301, v411, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        sub_1003A4664(v301, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          sub_1003A4664(v302, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          swift_beginAccess();
          v302 = v406;
          sub_10046E9E8(&v464, v406, v299, v300);
          swift_endAccess();

          v303 = type metadata accessor for NANPeer.Service.AuthenticationStatus;
        }

        else
        {

          v303 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
        }

        sub_1003A4664(v302, v303);
LABEL_226:

        goto LABEL_227;
      }

      v228 = v419;
    }

    else
    {
      if (v459)
      {
        v451 = BYTE1(v468);
        v454 = BYTE2(v468);
        v455 = BYTE3(v468);
        v456 = v468;
        v457 = BYTE4(v468);
        v452 = BYTE5(v468);
        v459 = BYTE6(v468);
        v304 = v229[*(v236 + 68)];
        v115 = v228;
        if ((v304 & 1) == 0)
        {
          v453 = v260;
          v329 = Logger.logObject.getter();
          v330 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v329, v330))
          {
            v331 = swift_slowAlloc();
            v332 = swift_slowAlloc();
            v462 = swift_slowAlloc();
            *&v471 = v462;
            *v331 = 138412546;
            *(v331 + 4) = v115;
            *v332 = v228;
            *(v331 + 12) = 2080;
            v333 = v456 | (v451 << 8) | (v454 << 16) | (v455 << 24) | (v457 << 32) | (v452 << 40) | (v459 << 48);
            v334 = v115;
            v335 = NANPeerServiceIdentifier.description.getter(v333);
            v337 = sub_100002320(v335, v336, &v471);

            *(v331 + 14) = v337;
            _os_log_impl(&_mh_execute_header, v329, v330, "%@ aging out discovery result %s because re-authentication is required", v331, 0x16u);
            sub_100016290(v332, &qword_10058B780, &qword_100480AC0);
            v230 = v410;

            sub_100002A00(v462);
          }

          v297 = v461;
          v338 = v463;
          v339 = *&v115[qword_1005983F8];
          if (v339)
          {
            v340 = *&v115[qword_1005983F8];
            swift_unknownObjectRetain();
            v341 = WiFiAddress.apiAddress.getter(v460 | v338);
            [v339 subscribeLostDiscoveryResultForPublishID:v230 address:v341];

            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          sub_10037E5E4(v453, &v468);
          swift_endAccess();
          sub_100391A68();

          goto LABEL_228;
        }

        sub_100185384(&v465, &v471);
        v305 = Logger.logObject.getter();
        v306 = static os_log_type_t.default.getter();

        sub_1003A47D0(&v465);
        if (os_log_type_enabled(v305, v306))
        {
          v307 = v228;
          v308 = swift_slowAlloc();
          v309 = swift_slowAlloc();
          *&v471 = swift_slowAlloc();
          *v308 = 138412802;
          *(v308 + 4) = v115;
          *v309 = v307;
          *(v308 + 12) = 2080;
          v310 = v456 | (v451 << 8) | (v454 << 16) | (v455 << 24) | (v457 << 32) | (v452 << 40) | (v459 << 48);
          v311 = v115;
          v312 = NANPeerServiceIdentifier.description.getter(v310);
          v314 = sub_100002320(v312, v313, &v471);

          *(v308 + 14) = v314;
          *(v308 + 22) = 2080;
          v315 = RSSI.description.getter();
          v317 = sub_100002320(v315, v316, &v471);

          *(v308 + 24) = v317;
          v230 = v410;
          _os_log_impl(&_mh_execute_header, v305, v306, "%@ received new service specific info for %s at %s", v308, 0x20u);
          sub_100016290(v309, &qword_10058B780, &qword_100480AC0);

          swift_arrayDestroy();
        }

        v318 = v463;
        v319 = v460;
        v320 = qword_1005983F8;
        if (*&v115[qword_1005983F8] && (v464 = *&v115[qword_1005983F8], swift_unknownObjectRetain(), sub_10005DC58(&unk_1005974E0, &qword_1004B1818), sub_10005DC58(&unk_100597CB0, &unk_1004B1E80), (swift_dynamicCast() & 1) != 0))
        {
          if (*(&v469 + 1))
          {
            sub_100029954(&v468, &v471);
            v321 = v432;
            if (v432)
            {
              goto LABEL_240;
            }

            v97 = v461;
            v322 = *(v461 + 96);
            if ((v322 & 0xFE) != 4)
            {
              v323 = NANServiceInfo.genericServiceProtocol.getter(v322, *(v461 + 104), *(v461 + 112));
              if (v323)
              {
                v321 = v323;
                goto LABEL_240;
              }
            }

LABEL_237:
            v377 = *(v97 + 56);
            if (v377 == 4)
            {

LABEL_242:
              v378 = 0;
              goto LABEL_241;
            }

            v321 = NANServiceInfo.genericServiceProtocol.getter(v377, *(v97 + 64), *(v97 + 72));

            if (!v321)
            {
              goto LABEL_242;
            }

LABEL_240:

            v378 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v321);

LABEL_241:
            v379 = v472;
            v380 = v473;
            sub_100029B34(&v471, v472);
            (*(v380 + 16))(v378, v456 | (v451 << 8) | (v454 << 16) | (v455 << 24) | (v457 << 32) | (v452 << 40) | (v459 << 48), v379, v380);

            sub_100002A00(&v471);

            v326 = v465;
            v327 = v115;
            goto LABEL_211;
          }
        }

        else
        {
          v470 = 0;
          v468 = 0u;
          v469 = 0u;
        }

        sub_100016290(&v468, &unk_100597CA0, &unk_1004B1E70);
        v460 = v115;
        v362 = *&v115[v320];
        if (v362)
        {
          v363 = *&v115[v320];
          swift_unknownObjectRetain();
          v364 = WiFiAddress.apiAddress.getter(v319 | v318);
          [v362 subscribeLostDiscoveryResultForPublishID:v230 address:v364];

          swift_unknownObjectRelease();
        }

        v365 = type metadata accessor for TaskPriority();
        (*(*(v365 - 8) + 56))(v431, 1, 1, v365);
        v297 = v461;
        v366 = v421;
        sub_1003A4E40(v461, v421, type metadata accessor for NANPeer.Service);
        v367 = v466;
        v368 = v467;
        v369 = (*(v446 + 80) + 80) & ~*(v446 + 80);
        v463 = (v369 + v420 + 7) & 0xFFFFFFFFFFFFFFF8;
        v370 = (v369 + v420 + 23) & 0xFFFFFFFFFFFFFFF8;
        v371 = (v370 + 15) & 0xFFFFFFFFFFFFFFF8;
        v372 = swift_allocObject();
        v372[2] = 0;
        v372[3] = 0;
        v373 = v422;
        v372[4] = v434;
        v372[5] = v373;
        v372[6] = v465;
        v372[7] = v367;
        v372[8] = v368;
        v374 = v460;
        v372[9] = v460;
        sub_1003A46C4(v366, v372 + v369, type metadata accessor for NANPeer.Service);
        v375 = v372 + v463;
        *v375 = v432;
        v375[8] = v462;
        *(v372 + v370) = v458;
        *(v372 + v371) = v415;
        *(v372 + ((v371 + 15) & 0xFFFFFFFFFFFFFFF8)) = v393;
        v376 = v374;
        sub_100185384(&v465, &v471);

        sub_1003ACB3C(0, 0, v431, &unk_1004B25D0, v372);

        goto LABEL_226;
      }
    }

    v297 = v461;
LABEL_228:
    sub_1003A09A8(v228, v465);
    v328 = v297;
    goto LABEL_229;
  }

  v238 = qword_10059BB08;
  swift_beginAccess();
  v239 = *&v228[v238];
  v240 = v452;
  if (!*(v239 + 16) || (v241 = sub_10007CD94(v230 | (v214 << 8) | (v454 << 16) | (v455 << 24) | (v450 << 32) | (v237 << 40) | (v452 << 48)), (v242 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_208;
  }

  v243 = *(v239 + 56) + *(v433 + 72) * v241;
  v244 = v408;
  sub_1003A4E40(v243, v408, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  v245 = v409;
  sub_1003A46C4(v244, v409, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  swift_endAccess();
  v246 = v407;
  sub_1003A4E40(v245, v407, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1003A4664(v245, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_1003A4664(v246, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    v240 = v452;
    goto LABEL_208;
  }

  sub_1003A4664(v246, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  v247 = sub_1002E1190();
  sub_1003A4664(v245, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  v240 = v452;
  if (v247)
  {
LABEL_208:
    v325 = v466;
    if (v325 < *RSSI.minimumDiscoveryThreshold.unsafeMutableAddressor())
    {
      goto LABEL_209;
    }

    v342 = qword_10059BB10;
    swift_beginAccess();
    v343 = *&v228[v342];
    v344 = v228;
    v345 = v230 | (v214 << 8) | (v454 << 16) | (v455 << 24) | (v450 << 32) | (v237 << 40) | (v240 << 48);

    v346 = sub_100447E24(v345, v343);

    if (v459 & 1 | !v346)
    {
      v347 = v401;
      swift_storeEnumTagMultiPayload();
      v348 = v404;
      sub_1003A4E40(v347, v404, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      type metadata accessor for P2PTimer();
      v349 = v430;
      v350 = v348 + *(v430 + 20);
      variable initialization expression of AWDLPeer.lastUpdated();
      sub_1003A4664(v347, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      (*(v433 + 56))(v348, 0, 1, v349);
      swift_beginAccess();
      sub_100338448(v348, v345);
      swift_endAccess();
      *&v468 = NANGenericServiceProtocol.init()();
      NANGenericServiceProtocol.furtherServiceDiscoveryFollowUp.setter(1);
      swift_unownedRetainStrong();
      v351 = sub_10040CAE8();

      v352 = *(v351 + *(*v351 + 296));

      v353 = v468;
      v354 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
      LODWORD(v353) = NANServiceInfo.init(information:filter:)(v353, *v354);
      v356 = v355;
      v358 = v357;
      v359 = v214;
      v360 = *v414;
      v361 = v405;
      (*(v402 + 56))(v405, 1, 1, v403);
      sub_10036DE50(v353, v356, v358, _swiftEmptyArrayStorage, v460 | v359, v230, v360, v361);
      sub_1000124C8(v356, v358);

      sub_100016290(v361, &unk_100595C50, &unk_1004AFD20);
    }

    else
    {
    }

    v326 = v465;
    v327 = v344;
    goto LABEL_211;
  }

LABEL_209:

LABEL_210:
  v326 = v465;
  v327 = v228;
LABEL_211:
  sub_1003A09A8(v327, v326);
  v328 = v461;
LABEL_229:
  sub_1003A4664(v328, type metadata accessor for NANPeer.Service);
}

uint64_t sub_10039B884(unint64_t a1, uint64_t a2)
{
  v153 = a1;
  v154 = a2;
  v3 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v141 = &v128 - v4;
  v5 = *(*(type metadata accessor for OWEKeys() - 8) + 64);
  __chkstk_darwin();
  v142 = (&v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(*(sub_10005DC58(&qword_1005985C0, &qword_1004B25B0) - 8) + 64);
  __chkstk_darwin();
  v143 = &v128 - v8;
  v140 = sub_10005DC58(&qword_1005985C8, &qword_1004B25B8);
  v9 = *(*(v140 - 8) + 64);
  __chkstk_darwin();
  v139 = &v128 - v10;
  v11 = *(*(type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(type metadata accessor for NANPeer(0) - 8) + 64);
  __chkstk_darwin();
  v148 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(sub_10005DC58(&unk_1005985D0, &unk_1004B17A0) - 8) + 64);
  __chkstk_darwin();
  v18 = &v128 - v17;
  v19 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v21 = &v128 - v20;
  v22 = type metadata accessor for LongTermPairingKeys(0);
  v152 = *(v22 - 8);
  v23 = *(v152 + 64);
  __chkstk_darwin();
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(*(sub_10005DC58(&unk_100597460, &qword_1004AFD18) - 8) + 64);
  __chkstk_darwin();
  v147 = &v128 - v27;
  v149 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v28 = *(*(v149 - 8) + 64);
  __chkstk_darwin();
  v144 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v128 - v30;
  v145 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v150 = *(v145 - 8);
  v32 = *(v150 + 64);
  __chkstk_darwin();
  v34 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v128 - v35;
  v37 = (v2 + qword_10059BAE8);
  swift_beginAccess();
  result = type metadata accessor for NANSubscribe.Configuration();
  v146 = result;
  v39 = *(result + 68);
  v151 = v37;
  if ((v37[v39] & 1) == 0)
  {
    result = RSSI.minimumDiscoveryThreshold.unsafeMutableAddressor();
    if (*result <= v154)
    {
      v133 = v18;
      v130 = v13;
      v134 = v25;
      v40 = v153;
      v154 = v153 >> 24;
      v138 = HIDWORD(v153);
      v137 = v153 >> 40;
      v136 = HIWORD(v153);
      v41 = qword_10059BB08;
      v42 = HIBYTE(v153);
      swift_beginAccess();
      v131 = v41;
      v43 = *(v2 + v41);
      v44 = *(v43 + 16);
      v135 = v2;
      if (v44)
      {
        v45 = (v42 << 48) | (v136 << 40) | (v137 << 32) | (v138 << 24) | (v154 << 16) | (BYTE2(v40) << 8) | BYTE1(v40);
        v46 = sub_10007CD94(v45);
        v2 = v135;
        if (v47)
        {
          sub_1003A4E40(*(v43 + 56) + *(v150 + 72) * v46, v34, type metadata accessor for NANPeer.Service.AuthenticationStatus);
          sub_1003A46C4(v34, v36, type metadata accessor for NANPeer.Service.AuthenticationStatus);
          swift_endAccess();
          sub_1003A4E40(v36, v31, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1003A4664(v36, type metadata accessor for NANPeer.Service.AuthenticationStatus);
            v48 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
            v49 = v31;
          }

          else
          {
            sub_1003A4664(v31, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
            if (sub_1002E1190())
            {
              swift_beginAccess();
              v92 = v147;
              sub_1003AD5FC(v45, v147);
              swift_endAccess();
              sub_100016290(v92, &unk_100597460, &qword_1004AFD18);
            }

            v48 = type metadata accessor for NANPeer.Service.AuthenticationStatus;
            v49 = v36;
          }

          return sub_1003A4664(v49, v48);
        }
      }

      v50 = v136;
      v51 = v137;
      v52 = v138;
      v53 = v154;
      v132 = v42;
      swift_endAccess();
      sub_100012400(v2 + qword_100598408, v21, &qword_10058C8D8, &qword_100482300);
      if ((*(v152 + 48))(v21, 1, v22) == 1)
      {
        return sub_100016290(v21, &qword_10058C8D8, &qword_100482300);
      }

      v54 = v153;
      v55 = v153 >> 8;
      sub_1003A46C4(v21, v134, type metadata accessor for LongTermPairingKeys);
      v56 = *(v2 + qword_1005983E0);
      swift_unownedRetainStrong();
      v129 = BYTE6(v54);
      v136 = BYTE5(v54);
      v137 = BYTE4(v54);
      v152 = BYTE3(v54);
      v154 = BYTE2(v54);
      v57 = (v132 << 40) | (v50 << 32) | (v51 << 24) | (v52 << 16) | (v53 << 8) | BYTE2(v54);
      v58 = v148;
      sub_10040CD68(v57, v148);

      v59 = v151;
      v60 = *(v151 + 1);
      v61 = *(v151 + 2);

      v62 = v133;
      sub_1002E7050(BYTE1(v54), v133);

      sub_1003A4664(v58, type metadata accessor for NANPeer);
      v63 = type metadata accessor for NANPeer.Service(0);
      if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
      {
        sub_100016290(v62, &unk_1005985D0, &unk_1004B17A0);
      }

      else
      {
        v138 = v56;
        v148 = v57;
        v128 = v55;
        v64 = v62[10];
        v65 = v62[11];
        v66 = v62[12];
        v67 = v62[13];
        v68 = v62[14];
        sub_1002EA048(v64, v65, v66, v67, v68);
        sub_1003A4664(v62, type metadata accessor for NANPeer.Service);
        if ((v66 & 0xFE) != 4)
        {
          v69 = NANServiceInfo.genericServiceProtocol.getter(v66, v67, v68);
          sub_1002EA068(v64, v65, v66, v67, v68);
          if (v69)
          {
            v70 = v142;
            sub_1003A4E40(&v59[*(v146 + 64)], v142, type metadata accessor for OWEKeys);
            swift_unownedRetainStrong();
            v71 = WiFiInterface.macAddress.getter();

            v72 = *(v59 + 3);

            v73 = v143;
            LongTermPairingKeys.authenticationRequest(forPeer:with:using:on:myServiceSpecificInfo:)(v148, v69, v70, v71 & 0xFFFFFFFFFFFFLL, v72, v143);

            sub_1003A4664(v70, type metadata accessor for OWEKeys);
            v74 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
            if ((*(*(v74 - 8) + 48))(v73, 1, v74) == 1)
            {
              sub_100016290(v73, &qword_1005985C0, &qword_1004B25B0);
              v75 = Logger.logObject.getter();
              v76 = static os_log_type_t.error.getter();
              v77 = os_log_type_enabled(v75, v76);
              v78 = v132;
              if (v77)
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v155[0] = v80;
                *v79 = 136315138;
                v81 = (v78 << 48) | (v129 << 40) | (v136 << 32) | (v137 << 24) | (v152 << 16) | (v154 << 8) | BYTE1(v54);
                v82 = NANPeerServiceIdentifier.description.getter(v81);
                v84 = sub_100002320(v82, v83, v155);

                *(v79 + 4) = v84;
                _os_log_impl(&_mh_execute_header, v75, v76, "Failed while generating the authentication follow up message for %s", v79, 0xCu);
                sub_100002A00(v80);
              }

              else
              {

                v81 = (v78 << 48) | (v129 << 40) | (v136 << 32) | (v137 << 24) | (v152 << 16) | (v154 << 8) | BYTE1(v54);
              }

              v124 = v144;
              swift_storeEnumTagMultiPayload();
              v125 = v147;
              sub_1003A4E40(v124, v147, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
              type metadata accessor for P2PTimer();
              v126 = v145;
              v127 = v125 + *(v145 + 20);
              variable initialization expression of AWDLPeer.lastUpdated();
              sub_1003A4664(v124, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
              (*(v150 + 56))(v125, 0, 1, v126);
              swift_beginAccess();
              sub_100338448(v125, v81);
              swift_endAccess();
            }

            else
            {
              v93 = *(v73 + *(v74 + 48));
              v94 = v140;
              v95 = *(v140 + 48);
              v96 = v73;
              v97 = v139;
              sub_1003A46C4(v96, v139, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
              *(v97 + v95) = v93;
              v98 = *(v97 + *(v94 + 48));
              v99 = v130;
              sub_1003A46C4(v97, v130, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
              v100 = v144;
              sub_1003A4E40(v99, v144, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
              swift_storeEnumTagMultiPayload();
              v101 = v147;
              sub_1003A4E40(v100, v147, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
              type metadata accessor for P2PTimer();
              v102 = v145;
              v103 = v101 + *(v145 + 20);
              variable initialization expression of AWDLPeer.lastUpdated();
              sub_1003A4664(v100, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
              (*(v150 + 56))(v101, 0, 1, v102);
              swift_beginAccess();
              v104 = (v132 << 48) | (v129 << 40) | (v136 << 32) | (v137 << 24) | (v152 << 16) | (v154 << 8) | BYTE1(v54);
              sub_100338448(v101, v104);
              swift_endAccess();
              v105 = Logger.logObject.getter();
              v106 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v105, v106))
              {
                v107 = swift_slowAlloc();
                v108 = swift_slowAlloc();
                v155[0] = v108;
                *v107 = 136315138;
                v109 = NANPeerServiceIdentifier.description.getter(v104);
                v111 = sub_100002320(v109, v110, v155);

                *(v107 + 4) = v111;
                _os_log_impl(&_mh_execute_header, v105, v106, "Providing encrypted follow up to %s", v107, 0xCu);
                sub_100002A00(v108);
              }

              swift_unownedRetainStrong();
              v112 = sub_10040CAE8();

              v113 = *(v112 + *(*v112 + 296));

              v114 = v151;
              v115 = Optional<A>.attributeFilter.getter(v151[*(v146 + 68)]);
              v116 = NANServiceInfo.init(information:filter:)(v98, v115);
              v118 = v117;
              v120 = v119;
              v121 = *v114;
              v122 = type metadata accessor for NANIdentityKey(0);
              v123 = v141;
              (*(*(v122 - 8) + 56))(v141, 1, 1, v122);
              sub_10036DE50(v116, v118, v120, _swiftEmptyArrayStorage, v148, v128, v121, v123);
              sub_1000124C8(v118, v120);

              sub_100016290(v123, &unk_100595C50, &unk_1004AFD20);
              sub_1003A4664(v99, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
            }

            goto LABEL_19;
          }
        }
      }

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v155[0] = v88;
        *v87 = 136315138;
        v89 = NANPeerServiceIdentifier.description.getter((v132 << 48) | (v129 << 40) | (v136 << 32) | (v137 << 24) | (v152 << 16) | (v154 << 8) | BYTE1(v54));
        v91 = sub_100002320(v89, v90, v155);

        *(v87 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v85, v86, "Unable to generate an authentication follow up message for %s because no service specific info was found in the publish", v87, 0xCu);
        sub_100002A00(v88);
      }

LABEL_19:
      v48 = type metadata accessor for LongTermPairingKeys;
      v49 = v134;
      return sub_1003A4664(v49, v48);
    }
  }

  return result;
}

void sub_10039CA30(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v366 = a1;
  v367 = a2;
  v368 = a3;
  v323 = swift_isaMask & *v3;
  v5 = type metadata accessor for DispatchTime();
  v304 = *(v5 - 8);
  v305 = v5;
  v6 = *(v304 + 64);
  __chkstk_darwin();
  v303 = &v300 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v324 = *(v322 - 8);
  v8 = *(v324 + 64);
  __chkstk_darwin();
  v302 = &v300 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for OWEKeys() - 8) + 64);
  __chkstk_darwin();
  v307 = (&v300 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*(type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0) - 8) + 64);
  __chkstk_darwin();
  v308 = &v300 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v318 = &v300 - v15;
  v321 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v319 = *(v321 - 8);
  v16 = *(v319 + 64);
  __chkstk_darwin();
  v313 = &v300 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(sub_10005DC58(&qword_10058C8D8, &qword_100482300) - 8) + 64);
  __chkstk_darwin();
  v329 = &v300 - v19;
  v20 = type metadata accessor for LongTermPairingKeys(0);
  v325 = *(v20 - 8);
  v326 = v20;
  v21 = *(v325 + 64);
  __chkstk_darwin();
  v328 = &v300 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(sub_10005DC58(&unk_100597460, &qword_1004AFD18) - 8) + 64);
  __chkstk_darwin();
  v316 = &v300 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v311 = &v300 - v25;
  __chkstk_darwin();
  v312 = &v300 - v26;
  v315 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v27 = *(*(v315 - 8) + 64);
  __chkstk_darwin();
  v314 = &v300 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v301 = &v300 - v29;
  __chkstk_darwin();
  v306 = (&v300 - v30);
  __chkstk_darwin();
  v309 = &v300 - v31;
  __chkstk_darwin();
  v310 = &v300 - v32;
  v33 = *(*(type metadata accessor for NANPeer(0) - 8) + 64);
  __chkstk_darwin();
  v327 = &v300 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(*(sub_10005DC58(&unk_1005985D0, &unk_1004B17A0) - 8) + 64);
  __chkstk_darwin();
  v317 = (&v300 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v320 = (&v300 - v37);
  v38 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v333 = &v300 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v332 = (&v300 - v40);
  v348 = type metadata accessor for NANAttribute(0);
  v336 = *(v348 - 8);
  v41 = *(v336 + 64);
  __chkstk_darwin();
  v347 = (&v300 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v44 = (&v300 - v43);
  __chkstk_darwin();
  v346 = &v300 - v45;
  __chkstk_darwin();
  v47 = &v300 - v46;
  v335 = BYTE1(v366);
  v339 = BYTE2(v366);
  v340 = BYTE3(v366);
  v341 = BYTE4(v366);
  v342 = BYTE5(v366);
  v337 = BYTE6(v366);
  v338 = HIBYTE(v366);
  v48 = &v3[qword_10059BAE8];
  swift_beginAccess();
  v330 = v48;
  v49 = *(v48 + 1);
  v50 = *(v48 + 2);

  v51 = NANConstants.csaMatterServiceName.unsafeMutableAddressor();
  v52 = *v51;
  v53 = v51[1];
  v54 = String.lowercased()();

  v55 = String.lowercased()();

  if (v54._countAndFlagsBits == v55._countAndFlagsBits && v54._object == v55._object)
  {
  }

  else
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v57 = NANFollowUpReceivedEvent.serviceInfo.getter(v366, v367, v368);
  if (v57 != 4)
  {
    v60 = v57;
    v61 = v58;
    v62 = v59;
    v63 = NANServiceInfo.csaMatterPayload.getter(v57, v58, v59);
    v65 = v64;
    sub_1001842D0(v60, v61, v62);
    if (v65 >> 60 != 15)
    {
      v174 = *&v4[qword_1005983F8];
      if (v174)
      {
        v175 = *&v4[qword_1005983F8];
        swift_unknownObjectRetain();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v177 = WiFiAddress.apiAddress.getter(v339 | (v340 << 8) | (v341 << 16) | (v342 << 24) | (v337 << 32) | (v338 << 40));
        [v174 subscribeReceivedMessage:isa fromPublishID:v335 address:v177];
        sub_100017554(v63, v65);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_100017554(v63, v65);
      }

      return;
    }
  }

LABEL_7:
  v66 = *(v368 + 16);
  v344 = v4;
  v331 = v368;
  if (v66)
  {
    v67 = qword_10059BB00;
    v68 = v336;
    v69 = (v368 + ((*(v336 + 80) + 32) & ~*(v336 + 80)));
    sub_1001852A4(&v366, &v357);
    sub_1001852A4(&v366, &v357);
    v70 = v69;
    v345 = *(v68 + 72);
    v71 = v346;
    v343 = v67;
    while (1)
    {
      v369 = v70;
      sub_1003A4E40(v70, v47, type metadata accessor for NANAttribute);
      sub_1003A4E40(v47, v71, type metadata accessor for NANAttribute);
      v73 = Logger.logObject.getter();
      v74 = v71;
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 16777472;
        v77 = v66;
        v78 = v47;
        v79 = v44;
        v80 = byte_1004B25FA[NANAttribute.attributeType.getter()];
        sub_1003A4664(v74, type metadata accessor for NANAttribute);
        v76[4] = v80;
        v44 = v79;
        v47 = v78;
        v66 = v77;
        _os_log_impl(&_mh_execute_header, v73, v75, "follow-up attribute: %hhu", v76, 5u);
        v4 = v344;
      }

      else
      {
        sub_1003A4664(v74, type metadata accessor for NANAttribute);
      }

      sub_1003A4E40(v47, v44, type metadata accessor for NANAttribute);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v82 = v347;
      if (EnumCaseMultiPayload == 39)
      {
        v83 = v44[1];
        v364 = *v44;
        v365[0] = v83;
        *(v365 + 10) = *(v44 + 26);
        if (NANAttribute.PairingBootstrapping.type.getter() == 2)
        {
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v84, v85, "pairing bootstrap type: response", v86, 2u);
          }

          sub_1001440B0(&v364);

          v82 = v347;
        }

        else
        {
          sub_1001440B0(&v364);
        }
      }

      else
      {
        sub_1003A4664(v44, type metadata accessor for NANAttribute);
      }

      sub_1003A4E40(v47, v82, type metadata accessor for NANAttribute);
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        v87 = *(v82 + 1);
        v362 = *v82;
        v363[0] = v87;
        *(v363 + 10) = *(v82 + 26);
        if (NANAttribute.PairingBootstrapping.type.getter() != 1)
        {
          sub_1003A4664(v47, type metadata accessor for NANAttribute);
          sub_1001440B0(&v362);
          goto LABEL_11;
        }

        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&_mh_execute_header, v88, v89, "pairing bootstrap type: request", v90, 2u);
        }

        sub_1001440B0(&v362);

        v72 = v47;
      }

      else
      {
        sub_1003A4664(v47, type metadata accessor for NANAttribute);
        v72 = v82;
      }

      sub_1003A4664(v72, type metadata accessor for NANAttribute);
LABEL_11:
      v71 = v346;
      v70 = (v369 + v345);
      if (!--v66)
      {
        goto LABEL_29;
      }
    }
  }

  sub_1001852A4(&v366, &v357);
  sub_1001852A4(&v366, &v357);
LABEL_29:
  v92 = v331;
  v91 = v332;
  Array<A>.retrieve(attribute:)(44, v331, v332);
  v93 = *(v336 + 48);
  if (v93(v91, 1, v348) == 1)
  {
    sub_100016290(v91, &unk_100595C00, &qword_10048F790);
    v94 = v338;
    v95 = v333;
    goto LABEL_35;
  }

  v96 = swift_getEnumCaseMultiPayload();
  v94 = v338;
  v95 = v333;
  if (v96 == 39)
  {
    v97 = v91[1];
    v360 = *v91;
    v361[0] = v97;
    *(v361 + 10) = *(v91 + 26);
    if (NANAttribute.PairingBootstrapping.type.getter() != 2)
    {
LABEL_33:
      sub_1001440B0(&v360);
      goto LABEL_35;
    }

    v204 = *&v4[qword_1005983E0];
    swift_unownedRetainStrong();
    v205 = sub_10040CAE8();

    v206 = qword_10059B9C8;
    swift_beginAccess();
    v207 = *(v205 + v206);

    v350 = v339;
    v351 = v340;
    v352 = v341;
    v353 = v342;
    v354 = v337;
    v355 = v94;
    v208 = *(v323 + 80);
    v209 = *(v323 + 88);
    _s17InitiatorInstanceCMa_0();
    _s17ResponderInstanceCMa_0();
    type metadata accessor for Either();
    sub_1002CAFC4();
    Dictionary.subscript.getter();

    v210 = v358;
    if (v358 != 255)
    {
      v211 = v357;
      v92 = v331;
      v95 = v333;
      if ((v358 & 1) == 0)
      {
        sub_1003011F8(&v366);
        sub_1003011F8(&v366);
        sub_100429AF8(v366, v367, v368);
        sub_1002CB018(v211, v210);
        sub_1001440B0(&v360);
        return;
      }

      sub_1002CB018(v357, v358);
      goto LABEL_33;
    }

    sub_1001440B0(&v360);
    v92 = v331;
    v95 = v333;
  }

  else
  {
    sub_1003A4664(v91, type metadata accessor for NANAttribute);
  }

LABEL_35:
  Array<A>.retrieve(attribute:)(36, v92, v95);
  if (v93(v95, 1, v348) == 1)
  {
    sub_100016290(v95, &unk_100595C00, &qword_10048F790);
    v98 = v342;
  }

  else
  {
    v99 = swift_getEnumCaseMultiPayload();
    sub_1003A4664(v95, type metadata accessor for NANAttribute);
    v98 = v342;
    if (v99 == 32)
    {
      v100 = *&v4[qword_1005983E0];
      swift_unownedRetainStrong();
      v101 = sub_10040CAE8();

      v102 = qword_10059B9C8;
      swift_beginAccess();
      v103 = *(v101 + v102);

      LOBYTE(v349[0]) = v339;
      BYTE1(v349[0]) = v340;
      BYTE2(v349[0]) = v341;
      BYTE3(v349[0]) = v98;
      BYTE4(v349[0]) = v337;
      BYTE5(v349[0]) = v94;
      v104 = *(v323 + 80);
      v105 = *(v323 + 88);
      _s17InitiatorInstanceCMa_0();
      _s17ResponderInstanceCMa_0();
      type metadata accessor for Either();
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v106 = v358;
      if (v358 != 255)
      {
        v107 = v357;
        sub_1003011F8(&v366);
        sub_1003011F8(&v366);
        v108 = v334;
        sub_100428AE8(v366, v367, v368, v107, v106 & 1);
        v334 = v108;
        if (!v108)
        {
          v109 = &v4[qword_100598400];
          swift_beginAccess();
          v110 = *v109;
          v111 = v339 | (v340 << 8) | (v341 << 16) | (v98 << 24) | (v337 << 32) | (v94 << 40);

          v112 = sub_100447BC4(v111, v110);

          if (v112)
          {
            v113 = v4;
            sub_1001852A4(&v366, v349);
            v114 = v113;
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.error.getter();
            sub_1003011F8(&v366);
            v369 = v115;
            if (os_log_type_enabled(v115, v116))
            {
              v117 = swift_slowAlloc();
              v347 = swift_slowAlloc();
              v349[0] = v347;
              *v117 = 136315394;
              v118 = WiFiAddress.description.getter(v111);
              v348 = v111;
              v120 = sub_100002320(v118, v119, v349);

              *(v117 + 4) = v120;
              *(v117 + 12) = 2080;
              v121 = *v109;
              v345 = *(v109 + 1);
              LODWORD(v346) = v116;
              v122 = v109[16];
              v123 = v109[17];

              v124 = sub_1002EAA6C(v121);
              v126 = v125;

              v127 = v124;
              v111 = v348;
              v128 = sub_100002320(v127, v126, v349);

              *(v117 + 14) = v128;
              v129 = v369;
              _os_log_impl(&_mh_execute_header, v369, v346, "Removed the mac address %s from the bloom filter because we received a follow up from %s", v117, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            swift_beginAccess();
            sub_10037E3A4(v111);
            swift_endAccess();
            sub_1003915F8();
            sub_100391A68();
          }
        }

        sub_1002CB018(v107, v106);
        return;
      }
    }
  }

  v130 = NANFollowUpReceivedEvent.followUpMessage.getter(v366, v367, v368);
  if (!v130)
  {
    sub_1003011F8(&v366);
    sub_1003011F8(&v366);
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v357 = v156;
      *v155 = 136315138;
      v157 = NANPeerServiceIdentifier.description.getter(v335 | (v339 << 8) | (v340 << 16) | (v341 << 24) | (v98 << 32) | (v337 << 40) | (v94 << 48));
      v159 = sub_100002320(v157, v158, &v357);

      *(v155 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v153, v154, "Failed to parse the follow up received from %s", v155, 0xCu);
      sub_100002A00(v156);
    }

    return;
  }

  v369 = v130;
  v348 = qword_10059BB00;
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v357 = v134;
    *v133 = 136315138;
    v135 = NANPeerServiceIdentifier.description.getter(v335 | (v339 << 8) | (v340 << 16) | (v341 << 24) | (v98 << 32) | (v337 << 40) | (v94 << 48));
    v137 = sub_100002320(v135, v136, &v357);

    *(v133 + 4) = v137;
    _os_log_impl(&_mh_execute_header, v131, v132, "Received a follow up message from %s", v133, 0xCu);
    sub_100002A00(v134);
  }

  v347 = type metadata accessor for NANSubscribe.Configuration();
  v138 = v330;
  if (v330[v347[17]] != 1)
  {
    sub_1003011F8(&v366);
    v151 = v337;
    v152 = v342;
    v150 = v335;
LABEL_53:
    v148 = v329;
    goto LABEL_54;
  }

  v139 = *&v4[qword_1005983E0];
  swift_unownedRetainStrong();
  v140 = v94;
  v141 = v337;
  v142 = v327;
  sub_10040CD68((v341 << 16) | (v340 << 8) | (v342 << 24) | (v337 << 32) | (v140 << 40) | v339, v327);

  v143 = *(v138 + 1);
  v144 = *(v138 + 2);

  v145 = v320;
  v146 = v335;
  sub_1002E7050(v335, v320);

  sub_1003A4664(v142, type metadata accessor for NANPeer);
  v147 = type metadata accessor for NANPeer.Service(0);
  if ((*(*(v147 - 8) + 48))(v145, 1, v147) == 1)
  {
    sub_1003011F8(&v366);
    sub_100016290(v145, &unk_1005985D0, &unk_1004B17A0);
    v148 = v329;
    v149 = v141;
    v94 = v338;
    v150 = v146;
    v151 = v149;
    v152 = v342;
    goto LABEL_54;
  }

  v178 = v145[10];
  v179 = v145[11];
  v180 = v145[12];
  v181 = v145[13];
  v182 = v145[14];
  sub_1002EA048(v178, v179, v180, v181, v182);
  sub_1003A4664(v145, type metadata accessor for NANPeer.Service);
  if (v180 == 5)
  {
    sub_1003011F8(&v366);
    v151 = v337;
    v94 = v338;
    v152 = v342;
    v150 = v335;
    v148 = v329;
    v138 = v330;
    goto LABEL_54;
  }

  sub_1002EA068(v178, v179, v180, v181, v182);
  v94 = v338;
  if ((v178 & 0x10000) == 0)
  {
    sub_1003011F8(&v366);
    v4 = v344;
    v151 = v337;
    v152 = v342;
    v150 = v335;
    v138 = v330;
    goto LABEL_53;
  }

  v151 = v337;
  v152 = v342;
  v150 = v335;
  v138 = v330;
  if ((v178 & 0x20000) != 0)
  {
    sub_1003011F8(&v366);
    v4 = v344;
    goto LABEL_53;
  }

  v230 = qword_10059BB08;
  v4 = v344;
  swift_beginAccess();
  v231 = *&v4[v230];
  if (*(v231 + 16))
  {
    v232 = sub_10007CD94(v150 | (v339 << 8) | (v340 << 16) | (v341 << 24) | (v152 << 32) | (v151 << 40) | (v94 << 48));
    v233 = v312;
    v234 = v150;
    if (v235)
    {
      sub_1003A4E40(*(v231 + 56) + *(v324 + 72) * v232, v312, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      v236 = 0;
    }

    else
    {
      v236 = 1;
    }
  }

  else
  {
    v234 = v150;
    v236 = 1;
    v233 = v312;
  }

  v244 = v324;
  v245 = v322;
  (*(v324 + 56))(v233, v236, 1, v322);
  if ((*(v244 + 48))(v233, 1, v245))
  {
    sub_1003011F8(&v366);
    sub_100016290(v233, &unk_100597460, &qword_1004AFD18);
    swift_endAccess();
    v148 = v329;
  }

  else
  {
    v246 = v310;
    sub_1003A4E40(v233, v310, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    sub_100016290(v233, &unk_100597460, &qword_1004AFD18);
    swift_endAccess();
    v247 = swift_getEnumCaseMultiPayload() == 4;
    v148 = v329;
    if (v247)
    {
      sub_1003011F8(&v366);
      sub_1003A4664(v246, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      LOBYTE(v357) = v366;
      BYTE1(v357) = v234;
      BYTE2(v357) = v339;
      BYTE3(v357) = v340;
      BYTE4(v357) = v341;
      BYTE5(v357) = v342;
      BYTE6(v357) = v151;
      HIBYTE(v357) = v94;
      v358 = v367;
      v359 = v331;
      sub_10039860C((v234 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40) | (v151 << 48) | (v94 << 56) | v366, v367, v331, v369);

      sub_1003A47D0(&v357);
      return;
    }

    sub_1003011F8(&v366);
    sub_1003A4664(v246, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  }

  v150 = v234;
  v152 = v342;
LABEL_54:
  sub_100012400(&v4[qword_100598408], v148, &qword_10058C8D8, &qword_100482300);
  if ((*(v325 + 48))(v148, 1, v326) == 1)
  {
    sub_1003011F8(&v366);
    sub_100016290(v148, &qword_10058C8D8, &qword_100482300);
    v160 = v366;
    v161 = v150 | (v339 << 8) | (v340 << 16) | (v341 << 24) | (v152 << 32) | (v151 << 40) | (v94 << 48);
LABEL_88:
    v224 = v369;
    v225 = v4;
LABEL_89:
    sub_1003A1D94(v224, v225, v161, v160);

    return;
  }

  sub_1003A46C4(v148, v328, type metadata accessor for LongTermPairingKeys);
  v162 = *&v4[qword_1005983E0];
  swift_unownedRetainStrong();
  v163 = (v341 << 16) | (v340 << 8) | (v152 << 24) | (v151 << 32) | (v94 << 40);
  v164 = v327;
  sub_10040CD68(v163 | v339, v327);

  v165 = v150;
  v166 = *(v138 + 1);
  v167 = *(v138 + 2);

  v168 = v317;
  v169 = v165;
  sub_1002E7050(v165, v317);

  sub_1003A4664(v164, type metadata accessor for NANPeer);
  v170 = type metadata accessor for NANPeer.Service(0);
  v171 = &unk_10059B000;
  if ((*(*(v170 - 8) + 48))(v168, 1, v170) == 1)
  {
    sub_1003011F8(&v366);
    sub_100016290(v168, &unk_1005985D0, &unk_1004B17A0);
    v173 = v318;
    v172 = v319;
LABEL_66:
    (*(v172 + 56))(v173, 1, 1, v321);
    v188 = v338;
    v189 = v339;
    v190 = v341;
LABEL_67:
    sub_100016290(v173, &unk_100595C40, &qword_100499070);
LABEL_68:
    v191 = v171[353];
    swift_beginAccess();
    v192 = *&v4[v191];
    if (*(v192 + 16) && (v193 = sub_10007CD94(v169 | (v189 << 8) | (v340 << 16) | (v190 << 24) | (v342 << 32) | (v151 << 40) | (v188 << 48)), (v194 & 1) != 0))
    {
      v195 = v316;
      sub_1003A4E40(*(v192 + 56) + *(v324 + 72) * v193, v316, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      v196 = 0;
    }

    else
    {
      v196 = 1;
      v195 = v316;
    }

    v197 = v324;
    v198 = v322;
    (*(v324 + 56))(v195, v196, 1, v322);
    if ((*(v197 + 48))(v195, 1, v198))
    {
      sub_100016290(v195, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
    }

    else
    {
      v199 = v314;
      sub_1003A4E40(v195, v314, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_100016290(v195, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
      v200 = swift_getEnumCaseMultiPayload();
      v201 = v341;
      if (v200 == 2)
      {
        sub_1003A4664(v328, type metadata accessor for LongTermPairingKeys);
        sub_1003A4664(v199, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        v202 = v189;
        v203 = v340;
        goto LABEL_86;
      }

      sub_1003A4664(v199, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    }

    v212 = Logger.logObject.getter();
    v213 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v348 = v214;
      v215 = swift_slowAlloc();
      v357 = v215;
      *v214 = 136315138;
      v216 = v335 | (v189 << 8);
      v203 = v340;
      v217 = v338;
      v218 = NANPeerServiceIdentifier.description.getter(v216 | (v340 << 16) | (v341 << 24) | (v342 << 32) | (v151 << 40) | (v338 << 48));
      v220 = sub_100002320(v218, v219, &v357);
      v221 = v342;

      v222 = v348;
      *(v348 + 4) = v220;
      v223 = v337;
      _os_log_impl(&_mh_execute_header, v212, v213, "Received an authentication response from %s but failed to verify the peer because missing peer's public OWE key or authentication state", v222, 0xCu);
      sub_100002A00(v215);
      v169 = v335;

      v201 = v341;

      sub_1003A4664(v328, type metadata accessor for LongTermPairingKeys);
      v202 = v339;
LABEL_87:
      v160 = v366;
      v161 = v169 | (v202 << 8) | (v203 << 16) | (v201 << 24) | (v221 << 32) | (v223 << 40) | (v217 << 48);
      goto LABEL_88;
    }

    sub_1003A4664(v328, type metadata accessor for LongTermPairingKeys);
    v202 = v189;
    v203 = v340;
    v201 = v341;
LABEL_86:
    v223 = v151;
    v221 = v342;
    v217 = v338;
    goto LABEL_87;
  }

  v183 = v168[10];
  v184 = v168[11];
  v185 = v168[12];
  v186 = v168[13];
  v187 = v168[14];
  sub_1002EA048(v183, v184, v185, v186, v187);
  sub_1003A4664(v168, type metadata accessor for NANPeer.Service);
  if (v185 == 4 || v185 == 5)
  {
    sub_1003011F8(&v366);
LABEL_65:
    v151 = v337;
    v169 = v335;
    v173 = v318;
    v172 = v319;
    v171 = &unk_10059B000;
    goto LABEL_66;
  }

  v226 = NANServiceInfo.genericServiceProtocol.getter(v185, v186, v187);
  sub_1002EA068(v183, v184, v185, v186, v187);
  if (!v226)
  {
    sub_1003011F8(&v366);
    v4 = v344;
    goto LABEL_65;
  }

  v173 = v318;
  NANGenericServiceProtocol.publicKey.getter(v226, v318);

  v227 = v319;
  v228 = v321;
  v229 = (*(v319 + 48))(v173, 1, v321);
  v151 = v337;
  if (v229 == 1)
  {
    sub_1003011F8(&v366);
    v4 = v344;
    v188 = v338;
    v189 = v339;
    v190 = v341;
    v169 = v335;
    v171 = &unk_10059B000;
    goto LABEL_67;
  }

  (*(v227 + 32))(v313, v173, v228);
  v237 = qword_10059BB08;
  v4 = v344;
  swift_beginAccess();
  v238 = *&v4[v237];
  if (*(v238 + 16))
  {
    v239 = sub_10007CD94(v335 | (v339 << 8) | (v340 << 16) | (v341 << 24) | (v342 << 32) | (v151 << 40) | (v338 << 48));
    v240 = v311;
    v241 = v347;
    if (v242)
    {
      sub_1003A4E40(*(v238 + 56) + *(v324 + 72) * v239, v311, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      v243 = 0;
    }

    else
    {
      v243 = 1;
    }
  }

  else
  {
    v243 = 1;
    v240 = v311;
    v241 = v347;
  }

  v248 = v324;
  v249 = v322;
  (*(v324 + 56))(v240, v243, 1, v322);
  if ((*(v248 + 48))(v240, 1, v249))
  {
    sub_1003011F8(&v366);
    sub_100016290(v240, &unk_100597460, &qword_1004AFD18);
    swift_endAccess();
    (*(v227 + 8))(v313, v321);
    v188 = v338;
    v189 = v339;
    v190 = v341;
    v169 = v335;
    v151 = v337;
LABEL_120:
    v171 = &unk_10059B000;
    goto LABEL_68;
  }

  v250 = v309;
  sub_1003A4E40(v240, v309, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  sub_100016290(v240, &unk_100597460, &qword_1004AFD18);
  swift_endAccess();
  v251 = swift_getEnumCaseMultiPayload();
  v151 = v337;
  if (v251)
  {
    sub_1003011F8(&v366);
    (*(v227 + 8))(v313, v321);
    sub_1003A4664(v250, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    v188 = v338;
    v189 = v339;
    v190 = v341;
    v169 = v335;
    goto LABEL_120;
  }

  v347 = v237;
  v252 = v337;
  v253 = v250;
  v254 = v308;
  sub_1003A46C4(v253, v308, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v349[0] = 0;
  v255 = v330;
  v256 = v307;
  sub_1003A4E40(&v330[v241[16]], v307, type metadata accessor for OWEKeys);
  LOBYTE(v254) = LongTermPairingKeys.verifyAuthenticationResponse(forPeer:with:publisherKeys:using:extraServiceSpecificInfo:)(v163 | v339, v369, v254, v256, v349);
  sub_1003A4664(v256, type metadata accessor for OWEKeys);
  if ((v254 & 1) == 0)
  {
    sub_1003011F8(&v366);

    v262 = Logger.logObject.getter();
    v263 = static os_log_type_t.error.getter();
    v271 = os_log_type_enabled(v262, v263);
    v272 = v338;
    v273 = v340;
    if (!v271)
    {

      sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
      (*(v227 + 8))(v313, v321);
      sub_1003A4664(v328, type metadata accessor for LongTermPairingKeys);
      v266 = v335 | (v339 << 8) | (v273 << 16) | (v341 << 24) | (v342 << 32) | (v252 << 40) | (v272 << 48);
      goto LABEL_135;
    }

    v264 = swift_slowAlloc();
    v265 = swift_slowAlloc();
    v357 = v265;
    *v264 = 136315138;
    v266 = v335 | (v339 << 8) | (v273 << 16) | (v341 << 24) | (v342 << 32) | (v252 << 40) | (v272 << 48);
    v274 = NANPeerServiceIdentifier.description.getter(v266);
    v276 = sub_100002320(v274, v275, &v357);

    *(v264 + 4) = v276;
    v4 = v344;
    v270 = "Received an authentication response from %s but failed to verify because authentication failed";
LABEL_128:
    _os_log_impl(&_mh_execute_header, v262, v263, v270, v264, 0xCu);
    sub_100002A00(v265);

    sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v319 + 8))(v313, v321);
    sub_1003A4664(v328, type metadata accessor for LongTermPairingKeys);
LABEL_135:
    v160 = v366;
    v224 = v369;
    v225 = v4;
    v161 = v266;
    goto LABEL_89;
  }

  sub_1003A4E40(&v255[v241[16]], v256, type metadata accessor for OWEKeys);
  v257 = OWEKeys.generatePMK(for:asClient:)(v313, 1);
  v259 = v258;
  sub_1003A4664(v256, type metadata accessor for OWEKeys);
  v260 = v338;
  v261 = v340;
  if (v259 >> 60 == 15)
  {
    sub_1003011F8(&v366);

    v262 = Logger.logObject.getter();
    v263 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v262, v263))
    {

      sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
      (*(v319 + 8))(v313, v321);
      sub_1003A4664(v328, type metadata accessor for LongTermPairingKeys);
      v266 = v335 | (v339 << 8) | (v261 << 16) | (v341 << 24) | (v342 << 32) | (v337 << 40) | (v260 << 48);
      goto LABEL_135;
    }

    v264 = swift_slowAlloc();
    v265 = swift_slowAlloc();
    v357 = v265;
    *v264 = 136315138;
    v266 = v335 | (v339 << 8) | (v261 << 16) | (v341 << 24) | (v342 << 32) | (v337 << 40) | (v260 << 48);
    v267 = NANPeerServiceIdentifier.description.getter(v266);
    v269 = sub_100002320(v267, v268, &v357);

    *(v264 + 4) = v269;
    v4 = v344;
    v270 = "Received an authentication response from %s but failed to verify because PMK generation failed";
    goto LABEL_128;
  }

  v277 = v306;
  *v306 = v257;
  v277[1] = v259;
  swift_storeEnumTagMultiPayload();
  v278 = v347;
  swift_beginAccess();
  sub_10000AB0C(v257, v259);
  v279 = *(v278 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v281 = v4;
  v282 = isUniquelyReferenced_nonNull_native;
  v356 = *(v278 + v281);
  v283 = v356;
  *(v278 + v281) = 0x8000000000000000;
  v284 = (v261 << 16) | (v339 << 8) | (v341 << 24) | (v342 << 32) | (v337 << 40) | (v260 << 48);
  v286 = sub_10007CD94(v284 | v335);
  v287 = v283[2];
  v288 = (v285 & 1) == 0;
  v289 = v287 + v288;
  if (__OFADD__(v287, v288))
  {
    __break(1u);
    goto LABEL_141;
  }

  LOBYTE(v260) = v285;
  v290 = v283[3];
  v348 = v284;
  if (v290 >= v289)
  {
    if (v282)
    {
      goto LABEL_137;
    }

LABEL_141:
    sub_10046C560();
    v283 = v356;
    goto LABEL_137;
  }

  sub_1003122C8(v289, v282);
  v283 = v356;
  v291 = sub_10007CD94(v284 | v335);
  if ((v260 & 1) == (v292 & 1))
  {
    v286 = v291;
LABEL_137:
    v4 = v344;
    *(v347 + v344) = v283;
    if ((v260 & 1) == 0)
    {
      v293 = v301;
      swift_storeEnumTagMultiPayload();
      v294 = v302;
      sub_1003A4E40(v293, v302, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      type metadata accessor for P2PTimer();
      v295 = v294 + *(v322 + 20);
      variable initialization expression of AWDLPeer.lastUpdated();
      sub_1003A4664(v293, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_1002DD754(v286, v348 | v335, v294, v283);
    }

    v296 = v283[7] + *(v324 + 72) * v286;
    v297 = v306;
    sub_1003A4DCC(v306, v296, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    type metadata accessor for P2PTimer();
    v298 = v303;
    variable initialization expression of AWDLPeer.lastUpdated();
    sub_1003A4664(v297, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    (*(v304 + 40))(v296 + *(v322 + 20), v298, v305);
    swift_endAccess();
    LOBYTE(v357) = v366;
    v299 = v335;
    BYTE1(v357) = v335;
    BYTE2(v357) = v339;
    BYTE3(v357) = v340;
    BYTE4(v357) = v341;
    BYTE5(v357) = v342;
    BYTE6(v357) = v337;
    HIBYTE(v357) = v338;
    v358 = v367;
    v359 = v331;
    sub_10039860C((v335 << 8) | (v339 << 16) | (v340 << 24) | (v341 << 32) | (v342 << 40) | (v337 << 48) | (v338 << 56) | v366, v367, v331, v349[0]);

    sub_1003A47D0(&v357);
    sub_100017554(v257, v259);
    sub_1003A4664(v308, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v319 + 8))(v313, v321);
    sub_1003A4664(v328, type metadata accessor for LongTermPairingKeys);
    v160 = v366;
    v161 = v348 | v299;
    goto LABEL_88;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10039F430(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v9)
  {
    v12 = qword_10059BAE8;
    swift_beginAccess();
    sub_1003A4DCC(a1, v1 + v12, type metadata accessor for NANSubscribe.Configuration);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10039F588()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v2;
      *v6 = v1;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, v4, "%@ timed out while waiting for terminate event", v5, 0xCu);
      sub_100016290(v6, &qword_10058B780, &qword_100480AC0);
    }

    v8 = qword_1005983F8;
    v9 = *&v2[qword_1005983F8];
    if (v9)
    {
      [v9 subscribeTerminatedWithReason:2];
      v10 = *&v2[v8];
    }

    *&v2[v8] = 0;
    swift_unknownObjectRelease();
    v11 = *&v2[qword_1005983E0];
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_100367078(v2);

    sub_10039205C(2, 1);
  }
}

uint64_t sub_10039F72C()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Terminating %@ because it's client was invalidated", v4, 0xCu);
    sub_100016290(v5, &qword_10058B780, &qword_100480AC0);
  }

  memset(v8, 0, sizeof(v8));
  sub_1003914E0(v8);
  return sub_100394D24();
}

void sub_10039F848(void *a1)
{
  v1 = a1;
  sub_100391354();
}

uint64_t sub_10039F890(uint64_t a1, unint64_t a2, void *a3, unsigned int a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v69 = a4;
  v68 = a3;
  v11 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v13 = &v62 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v20 = *v19;
  *v18 = *v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (v6[qword_10059BAF0] != 1)
  {
    return a5(3);
  }

  v66 = a6;
  v67 = a5;
  v23 = &v6[qword_10059BAE8];
  swift_beginAccess();
  v65 = v23;
  v24 = *(v23 + 1);
  v25 = *(v23 + 2);

  v26 = NANConstants.csaMatterServiceName.unsafeMutableAddressor();
  v27 = *v26;
  v28 = v26[1];
  v29 = String.lowercased()();

  v30 = String.lowercased()();

  if (v29._countAndFlagsBits == v30._countAndFlagsBits && v29._object == v30._object)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
      sub_10000AB0C(a1, a2);
      NANGenericServiceProtocol.blob.setter(a1, a2);
      v36 = rawValue;
      v37 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
      v64 = NANServiceInfo.init(information:filter:)(v36, *v37);
      v33 = v38;
      v35 = v39;
      goto LABEL_10;
    }
  }

  v64 = NANServiceInfo.init(csaMatterPayload:)();
  v33 = v32;
  v35 = v34;
  sub_10000AB0C(a1, a2);
LABEL_10:
  v40 = v68;
  v41 = v6;
  v42 = v40;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v63 = v35;
    v47 = v46;
    v48 = swift_slowAlloc();
    v68 = v33;
    v49 = v48;
    rawValue = v48;
    *v45 = 138412546;
    *(v45 + 4) = v41;
    *v47 = v41;
    *(v45 + 12) = 2080;
    v50 = v41;
    v51 = WiFiMACAddress.wifiAddress.getter();
    v52 = WiFiAddress.description.getter(v51 & 0xFFFFFFFFFFFFLL);
    v54 = sub_100002320(v52, v53, &rawValue);

    *(v45 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "%@ intiator sending follow-up to %s", v45, 0x16u);
    sub_100016290(v47, &qword_10058B780, &qword_100480AC0);
    v35 = v63;

    sub_100002A00(v49);
    v33 = v68;
  }

  v55 = v67;
  v56 = *&v41[qword_1005983E0];
  swift_unownedRetainStrong();
  v57 = sub_10040CAE8();

  v58 = *(v57 + *(*v57 + 296));

  v59 = WiFiMACAddress.wifiAddress.getter();
  v60 = *v65;
  v61 = type metadata accessor for NANIdentityKey(0);
  (*(*(v61 - 8) + 56))(v13, 1, 1, v61);
  sub_10036DE50(v64, v33, v35, _swiftEmptyArrayStorage, v59 & 0xFFFFFFFFFFFFLL, v69, v60, v13);

  sub_100016290(v13, &unk_100595C50, &unk_1004AFD20);
  v55(0);
  return sub_1000124C8(v33, v35);
}

void sub_10039FDDC(void *a1, int a2, void *a3, void *a4, unsigned int a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v17 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  sub_10039F890(v13, v15, v12, a5, sub_100303F18, v16);

  sub_1000124C8(v13, v15);
}

uint64_t sub_10039FED0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void))
{
  if (*(v5 + qword_10059BAF0) == 1)
  {
    if (*(v5 + qword_10059BAF8))
    {
      v10 = a5;
      v11 = *(v5 + qword_10059BAF8);
      if (a3)
      {

        v12 = WiFiMACAddress.wifiAddress.getter() & 0xFFFFFFFFFFFFLL;
      }

      else
      {

        v12 = 0;
      }

      sub_100426810(a1, a2, v12 | ((a3 == 0) << 48), a4 & 1);

      v13 = 0;
      a5 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 3;
  }

  return a5(v13);
}

void sub_10039FFC4(void *a1, int a2, void *a3, void *a4, char a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v16 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(swift_allocObject() + 16) = v10;
  sub_10039FED0(v13, v15, a4, a5, sub_100303F18);

  sub_1000124C8(v13, v15);
}

uint64_t sub_1003A00C0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    if (v2[qword_10059BAF0] == 1 && (v14 = qword_100598418, *&v2[qword_100598418]) && (v2[qword_100598420] & 1) == 0)
    {
      if (a1 && (v16 = &v2[qword_100598428], swift_beginAccess(), v17 = *v16, v18 = *(v16 + 1), static Duration.+ infix(_:_:)(), (static Duration.< infix(_:_:)() & 1) == 0))
      {
        v19 = &v2[qword_10059BAE8];
        swift_beginAccess();
        *&v19[*(type metadata accessor for NANSubscribe.Configuration() + 84)] = a1;
        v20 = v2;
        v34 = v2;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 138412290;
          *(v23 + 4) = v20;
          *v24 = v20;
          v25 = v20;
          _os_log_impl(&_mh_execute_header, v21, v22, "%@ cancelling current expiry timer", v23, 0xCu);
          sub_100016290(v24, &qword_10058B780, &qword_100480AC0);
        }

        v26 = *&v34[v14];
        *&v34[v14] = 0;

        v27 = v20;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412546;
          *(v30 + 4) = v27;
          *v31 = v27;
          *(v30 + 12) = 2048;
          *(v30 + 14) = a1;
          v32 = v27;
          _os_log_impl(&_mh_execute_header, v28, v29, "%@ setting new timeout to %lu seconds", v30, 0x16u);
          sub_100016290(v31, &qword_10058B780, &qword_100480AC0);
        }

        sub_1003946C4(a1);
        v15 = 0;
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 3;
    }

    return a2(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003A0494(void *a1, int a2, unint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a1;
  sub_1003A00C0(a3, sub_1000104EC);
}

id sub_1003A0528(void *a1)
{
  v1 = a1;
  sub_1003A0590();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_1003A0590()
{
  strcpy(v12, "NANSubscribe [");
  HIBYTE(v12[1]) = -18;
  v1 = (v0 + qword_10059BAE8);
  swift_beginAccess();
  v11 = *v1;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8285;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);

  v6 = NANServiceName.description.getter(v5, v4);
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v12[0];
}

void sub_1003A0688(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_10030112C();
}

uint64_t sub_1003A07AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003A0830(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003A086C()
{
  v0 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UUID();
  sub_100068888(v4, qword_10059BAD0);
  v5 = sub_100037644(v4, qword_10059BAD0);
  UUID.init(uuidString:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

void sub_1003A099C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_10039F588();
}

void sub_1003A09A8(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 16;
  v4 = qword_100598400;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = sub_100447BC4(v3, v5);

  if (!v6)
  {
    swift_beginAccess();
    sub_10046F438(v14, v3);
    swift_endAccess();
    sub_1003915F8();
    sub_100391A68();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = WiFiAddress.description.getter(v3);
      v13 = sub_100002320(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Added bloom filter entry for %s", v9, 0xCu);
      sub_100002A00(v10);
    }
  }
}

uint64_t sub_1003A0B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v15;
  *(v8 + 360) = v16;
  *(v8 + 441) = v14;
  *(v8 + 336) = a8;
  *(v8 + 344) = v13;
  *(v8 + 320) = a6;
  *(v8 + 328) = a7;
  *(v8 + 304) = a4;
  *(v8 + 312) = a5;
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_projectBox();
  v10 = v15;

  return _swift_task_switch(sub_1003A0C2C, 0, 0);
}

uint64_t sub_1003A0C2C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  *(v0 + 392) = sub_100018AB4(0, &unk_100598600, WiFiAwareDiscoveryResult_ptr);
  v8 = v7 + qword_10059BAE8;
  swift_beginAccess();
  *(v0 + 400) = *(v8 + 8);
  *(v0 + 408) = *(v8 + 16);
  *(v0 + 16) = *v5;
  v9 = *(v5 + 16);
  v10 = *(v5 + 32);
  v11 = *(v5 + 64);
  *(v0 + 64) = *(v5 + 48);
  *(v0 + 80) = v11;
  *(v0 + 32) = v9;
  *(v0 + 48) = v10;
  v12 = *(v5 + 80);
  v13 = *(v5 + 96);
  *(v0 + 208) = *(v5 + 112);
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  swift_beginAccess();
  sub_100012400(v1, v2, &qword_10058F4D0, &qword_100491AB0);
  sub_100012400(v1, v3, &qword_10058F4D0, &qword_100491AB0);

  sub_10028676C(v0 + 16, v0 + 96);
  sub_100012400(v0 + 176, v0 + 216, &qword_10058F2D8, &qword_100491AB8);

  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  *v14 = v0;
  v14[1] = sub_1003A0DF0;
  v15 = *(v0 + 368);
  v16 = *(v0 + 328);

  return sub_1003A1054(v15);
}

uint64_t sub_1003A0DF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v5 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = a2;

  sub_100016290(v5, &qword_10058F4D0, &qword_100491AB0);

  return _swift_task_switch(sub_1003A0F20, 0, 0);
}

uint64_t sub_1003A0F20()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = WiFiAwareDiscoveryResult.init(nanDiscoveryResultEvent:serviceName:serviceDescriptor:serviceDescriptorExtension:extraServiceSpecificInfo:pairSetupRequired:pairingConfiguration:pairedUUID:pairedDeviceName:signature:)(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 400), *(v0 + 408), v0 + 16, (v0 + 176), *(v0 + 344), *(v0 + 441), *(v0 + 352), *(v0 + 376), *(v0 + 424), *(v0 + 432), *(v0 + 360));
  v5 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = v5;
  sub_10005DC58(&unk_100598610, &qword_1004B25F0);
  OS_dispatch_queue.sync<A>(execute:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003A1054(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = swift_isaMask & *v1;
  v2[13] = *(*(v3 + 0x58) + 8);
  v2[14] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[15] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003A1208, 0, 0);
}

uint64_t sub_1003A1208()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_100012400(v0[11], v3, &qword_10058F4D0, &qword_100491AB0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100016290(v0[18], &qword_10058F4D0, &qword_100491AB0);
    v5 = v0[21];
    v4 = v0[22];
    v7 = v0[17];
    v6 = v0[18];

    v8 = v0[1];

    return v8(0, 0);
  }

  else
  {
    v10 = v0[17];
    v11 = v0[15];
    v12 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[12];
    (*(v0[20] + 32))(v0[22], v0[18], v0[19]);
    v16 = *(v15 + qword_1005983E0);
    swift_unownedRetainStrong();
    (*(v12 + 16))(v10, v16 + *(*v16 + 112), v11);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = (*(AssociatedConformanceWitness + 136))(v11, AssociatedConformanceWitness);
    v0[23] = v18;
    (*(v12 + 8))(v10, v11);
    v19 = *v18 + 400;
    v0[24] = *v19;
    v0[25] = v19 & 0xFFFFFFFFFFFFLL | 0xB23A000000000000;

    return _swift_task_switch(sub_1003A1434, v18, 0);
  }
}

uint64_t sub_1003A1434()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  (*(v0 + 192))(*(v0 + 176));
  *(v0 + 208) = 0;
  v3 = *(v0 + 184);

  return _swift_task_switch(sub_1003A14D0, 0, 0);
}

uint64_t sub_1003A14D0()
{
  (*(v0[20] + 8))(v0[22], v0[19]);
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
  }

  else
  {
    v2 = v0[4];
    v1 = v0[5];
  }

  sub_1000B7220((v0 + 2));
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[17];
  v5 = v0[18];

  v7 = v0[1];

  return v7(v2, v1);
}

uint64_t sub_1003A15A0()
{
  v34 = v0;
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[12];

  (*(v5 + 16))(v4, v3, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[26];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[20];
  if (v10)
  {
    v32 = v0[22];
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v16 = 136315394;
    sub_1003A461C(&qword_100597520, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v12, v14);
    v21 = sub_100002320(v17, v19, &v33);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v30 = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to get paired device metadata for: %s. Error: %@", v16, 0x16u);
    sub_100016290(v30, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v31);

    v20(v32, v14);
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v12, v14);
    v23(v13, v14);
  }

  v25 = v0[21];
  v24 = v0[22];
  v27 = v0[17];
  v26 = v0[18];

  v28 = v0[1];

  return v28(0, 0);
}

uint64_t sub_1003A1884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v15;
  *(v8 + 360) = v16;
  *(v8 + 441) = v14;
  *(v8 + 336) = a8;
  *(v8 + 344) = v13;
  *(v8 + 320) = a6;
  *(v8 + 328) = a7;
  *(v8 + 304) = a4;
  *(v8 + 312) = a5;
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_projectBox();
  v10 = v15;

  return _swift_task_switch(sub_1003A196C, 0, 0);
}

uint64_t sub_1003A196C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  *(v0 + 392) = sub_100018AB4(0, &unk_100598600, WiFiAwareDiscoveryResult_ptr);
  v8 = v7 + qword_10059BAE8;
  swift_beginAccess();
  *(v0 + 400) = *(v8 + 8);
  *(v0 + 408) = *(v8 + 16);
  *(v0 + 16) = *v5;
  v9 = *(v5 + 16);
  v10 = *(v5 + 32);
  v11 = *(v5 + 64);
  *(v0 + 64) = *(v5 + 48);
  *(v0 + 80) = v11;
  *(v0 + 32) = v9;
  *(v0 + 48) = v10;
  v12 = *(v5 + 80);
  v13 = *(v5 + 96);
  *(v0 + 208) = *(v5 + 112);
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  swift_beginAccess();
  sub_100012400(v1, v2, &qword_10058F4D0, &qword_100491AB0);
  sub_100012400(v1, v3, &qword_10058F4D0, &qword_100491AB0);

  sub_10028676C(v0 + 16, v0 + 96);
  sub_100012400(v0 + 176, v0 + 216, &qword_10058F2D8, &qword_100491AB8);

  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  *v14 = v0;
  v14[1] = sub_1003A1B30;
  v15 = *(v0 + 368);
  v16 = *(v0 + 328);

  return sub_1003A1054(v15);
}

uint64_t sub_1003A1B30(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v5 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = a2;

  sub_100016290(v5, &qword_10058F4D0, &qword_100491AB0);

  return _swift_task_switch(sub_1003A1C60, 0, 0);
}

uint64_t sub_1003A1C60()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = WiFiAwareDiscoveryResult.init(nanDiscoveryResultEvent:serviceName:serviceDescriptor:serviceDescriptorExtension:extraServiceSpecificInfo:pairSetupRequired:pairingConfiguration:pairedUUID:pairedDeviceName:signature:)(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 400), *(v0 + 408), v0 + 16, (v0 + 176), *(v0 + 344), *(v0 + 441), *(v0 + 352), *(v0 + 376), *(v0 + 424), *(v0 + 432), *(v0 + 360));
  v5 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = v5;
  sub_10005DC58(&unk_100598610, &qword_1004B25F0);
  OS_dispatch_queue.sync<A>(execute:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003A1D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = NANGenericServiceProtocol.blob.getter(a1);
  if (v8 >> 60 == 15)
  {
    return result;
  }

  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2 && *(result + 16) != *(result + 24))
    {
      goto LABEL_8;
    }

LABEL_14:

    return sub_100017554(result, v8);
  }

  if (v9)
  {
    if (result != result >> 32)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = result;
  v11 = v8;
  v12 = qword_10059BB10;
  swift_beginAccess();
  v13 = *(a2 + v12);

  v14 = sub_100447E24(a3 & 0xFFFFFFFFFFFFFFLL, v13);

  if (!v14)
  {
    return sub_100017554(v10, v11);
  }

  v15 = *(a2 + qword_1005983F8);
  if (!v15)
  {
    return sub_100017554(v10, v11);
  }

  v16 = a4 >> 8;
  swift_unknownObjectRetain();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = WiFiAddress.apiAddress.getter(a4 >> 16);
  [v15 subscribeReceivedMessage:isa fromPublishID:v16 address:v18];
  sub_100017554(v10, v11);

  return swift_unknownObjectRelease();
}

void sub_1003A1F1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + qword_10059BAF0) == 1)
    {
      a4();
    }
  }
}

uint64_t sub_1003A1F8C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v145 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v145 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v136 = (&v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v135 = &v120 - v5;
  __chkstk_darwin();
  v134 = &v120 - v6;
  __chkstk_darwin();
  v146 = &v120 - v7;
  __chkstk_darwin();
  v147 = &v120 - v8;
  v121 = type metadata accessor for DispatchTime();
  v120 = *(v121 - 8);
  v9 = *(v120 + 64);
  __chkstk_darwin();
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (&v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v18 = *v17;
  *v16 = *v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v20)
  {
    v152 = &_swiftEmptySetSingleton;
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    v22 = swift_allocObject();
    v23 = v1;
    *(v22 + 16) = &_swiftEmptySetSingleton;
    v24 = v22 + 16;
    *(v22 + 24) = 0;
    v140 = v22;
    *(v22 + 32) = 1025;
    v25 = qword_10059BB08;
    swift_beginAccess();
    v26 = *&v23[v25];

    v28 = sub_1003A37A4(v27);

    v29 = *&v23[v25];
    *&v23[v25] = v28;

    v139 = v24;
    v30 = v24;
    v31 = v23;
    sub_10038FEC4(v28, v30);
    v123 = 0;

    v32 = qword_10059BB10;
    swift_beginAccess();
    v122 = v32;
    v33 = *&v23[v32];
    v34 = v33 + 56;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v33 + 56);
    v141 = qword_10059BB00;
    v38 = (v35 + 63) >> 6;
    v130 = (v2 + 16);
    v129 = v2 + 8;
    v39 = enum case for DispatchTimeInterval.seconds(_:);
    v127 = (v2 + 104);
    v138 = v33;

    v40 = 0;
    *&v41 = 136315650;
    v125 = v41;
    *&v41 = 138412546;
    v124 = v41;
    v132 = v34;
    v131 = v38;
    v42 = v11;
    v142 = v31;
    v133 = v11;
    for (i = v39; v37; v42 = v100)
    {
      while (1)
      {
LABEL_11:
        v44 = __clz(__rbit64(v37));
        v45 = (*(v138 + 48) - (v44 | (v40 << 6)) + 8 * (v44 | (v40 << 6)));
        v46 = v45[2];
        v47 = v45[3];
        v48 = v45[4];
        v49 = v45[5];
        v50 = v45[6];
        v51 = *v45 | (v45[1] << 8) | (v46 << 16) | (v47 << 24) | (v48 << 32) | (v49 << 40) | (v50 << 48);
        v52 = v146;
        v143 = v45[1];
        v144 = v51;
        sub_1003A2B64(v147, v146, v31, v51, v42);
        swift_beginAccess();
        sub_10046F438(&v148, (v47 << 16) | (v46 << 8) | (v48 << 24) | (v49 << 32) | (v50 << 40) | v143);
        swift_endAccess();
        v53 = *v130;
        v54 = v134;
        v55 = v145;
        (*v130)(v134, v52, v145);
        v56 = v135;
        v53(v135, v147, v55);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v151 = v143;
          *v59 = v125;
          v60 = NANPeerServiceIdentifier.description.getter(v144);
          v62 = sub_100002320(v60, v61, &v151);
          v126 = v58;
          v63 = v56;
          v64 = v62;

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          v65 = DispatchTimeInterval.description.getter();
          v67 = v66;
          v68 = v54;
          v69 = *v129;
          v70 = v129 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v129)(v68, v145);
          v71 = sub_100002320(v65, v67, &v151);

          *(v59 + 14) = v71;
          *(v59 + 22) = 2080;
          v72 = DispatchTimeInterval.description.getter();
          v74 = v73;
          v69(v63, v145);
          v75 = sub_100002320(v72, v74, &v151);

          *(v59 + 24) = v75;
          _os_log_impl(&_mh_execute_header, v57, v126, "Considering aging out peer %s. Last saw peer %s ago and last saw service information %s ago.", v59, 0x20u);
          swift_arrayDestroy();

          v55 = v145;
        }

        else
        {

          v76 = v54;
          v69 = *v129;
          v70 = v129 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v129)(v56, v55);
          v69(v76, v55);
        }

        v77 = i;
        v143 = v69;
        v37 &= v37 - 1;
        v78 = v136;
        *v136 = 9;
        v79 = *v127;
        (*v127)(v78, v77, v55);
        v80 = static DispatchTimeInterval.< infix(_:_:)();
        v69(v78, v55);
        v31 = v142;
        v81 = v77;
        v82 = v70;
        v83 = v147;
        v84 = v80 ? 8 : 20;
        *v78 = v84;
        v79(v78, v81, v55);
        v85 = v144;
        v86 = sub_1003A2EDC(v78, v83, v140, v144, v31);
        v87 = v78;
        v88 = v143;
        (v143)(v87, v55);
        if (v86)
        {
          break;
        }

        v88(v146, v55);
        result = (v88)(v83, v55);
        v42 = v133;
        v34 = v132;
        v38 = v131;
        if (!v37)
        {
          goto LABEL_7;
        }
      }

      v144 = v82;
      v89 = v31;
      v90 = Logger.logObject.getter();
      v91 = v31;
      v92 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v90, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v151 = v95;
        *v93 = v124;
        *(v93 + 4) = v89;
        *v94 = v91;
        *(v93 + 12) = 2080;
        v96 = v89;
        v97 = NANPeerServiceIdentifier.description.getter(v85);
        v99 = sub_100002320(v97, v98, &v151);

        *(v93 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v90, v92, "%@ aging out discovery result %s", v93, 0x16u);
        sub_100016290(v94, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v95);

        v55 = v145;
      }

      v100 = v133;
      sub_10046F5A4(&v151, v85);
      v101 = v143;
      (v143)(v146, v55);
      result = v101(v147, v55);
      v31 = v142;
      v34 = v132;
      v38 = v131;
    }

    while (1)
    {
LABEL_7:
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v43 >= v38)
      {
        break;
      }

      v37 = *(v34 + 8 * v43);
      ++v40;
      if (v37)
      {
        v40 = v43;
        goto LABEL_11;
      }
    }

    v102 = v42;

    swift_beginAccess();
    v103 = *(v140 + 16);
    v104 = *(v140 + 24);
    v105 = *(v140 + 32);
    v106 = *(v140 + 33);

    sub_100391D70(v107, v104, v105 | (v106 << 8));
    v108 = v152;
    swift_beginAccess();

    sub_1003A4500(v109);
    v110 = swift_endAccess();
    sub_100391A68(v110);
    v111 = 1 << v108[32];
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v113 = v112 & *(v108 + 7);
    v114 = (v111 + 63) >> 6;

    for (j = 0; v113; result = sub_1003A32E4(&v148, v31))
    {
      v116 = j;
LABEL_30:
      v117 = __clz(__rbit64(v113));
      v118 = *(v108 + 6) - (v117 | (v116 << 6)) + 8 * (v117 | (v116 << 6));
      LOWORD(v117) = *(v118 + 4);
      v119 = *(v118 + 6);
      v113 &= v113 - 1;
      v148 = *v118;
      v149 = v117;
      v150 = v119;
    }

    while (1)
    {
      v116 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v116 >= v114)
      {

        (*(v120 + 8))(v102, v121);

        return swift_bridgeObjectRelease_n();
      }

      v113 = *&v108[8 * v116 + 56];
      ++j;
      if (v113)
      {
        j = v116;
        goto LABEL_30;
      }
    }

LABEL_34:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A2B64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v32 = a5;
  v35 = a1;
  v36 = a2;
  v7 = *(*(sub_10005DC58(&unk_1005985D0, &unk_1004B17A0) - 8) + 64);
  __chkstk_darwin();
  v9 = &v32 - v8;
  v33 = type metadata accessor for NANPeer.Service(0);
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (type metadata accessor for NANPeer(0) - 8);
  v19 = *(*v18 + 64);
  __chkstk_darwin();
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + qword_1005983E0);
  swift_unownedRetainStrong();
  sub_10040CD68((a4 >> 8) & 0xFFFFFFFFFFFFLL, v21);

  v23 = v18[8];
  DispatchTime.distance(to:)();
  v24 = a3 + qword_10059BAE8;
  swift_beginAccess();
  v26 = *(v24 + 8);
  v25 = *(v24 + 16);

  sub_1002E7050(a4, v9);
  v27 = v33;

  if ((*(v10 + 48))(v9, 1, v27) == 1)
  {
    sub_1003A4664(v21, type metadata accessor for NANPeer);
    sub_100016290(v9, &unk_1005985D0, &unk_1004B17A0);
    v28 = v34;
    (*(v14 + 104))(v35, enum case for DispatchTimeInterval.never(_:), v34);
    v29 = v28;
  }

  else
  {
    sub_1003A46C4(v9, v13, type metadata accessor for NANPeer.Service);
    v30 = &v13[*(v27 + 32)];
    DispatchTime.distance(to:)();
    sub_1003A4664(v13, type metadata accessor for NANPeer.Service);
    sub_1003A4664(v21, type metadata accessor for NANPeer);
    v29 = v34;
  }

  return (*(v14 + 32))(v36, v17, v29);
}

BOOL sub_1003A2EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = (v41 - v14);
  __chkstk_darwin();
  v17 = (v41 - v16);
  if (!static DispatchTimeInterval.< infix(_:_:)())
  {
    return 0;
  }

  v41[1] = a1;
  v42 = v13;
  v43 = a2;
  v44 = v10;
  v45 = v9;
  swift_beginAccess();
  v41[0] = BYTE5(a4);
  v18 = (BYTE5(a4) << 32) & 0xFFFF00FF00000000 | (BYTE6(a4) << 40) | (BYTE4(a4) << 24) | (BYTE3(a4) << 16) | (BYTE2(a4) << 8) | BYTE1(a4);
  sub_10037E3A4(v18);
  swift_endAccess();
  v19 = qword_100598400;
  swift_beginAccess();
  v20 = *(a5 + v19);

  LOBYTE(v18) = sub_100447BC4(v18, v20);

  if (v18)
  {
    v21 = v44;
    v22 = v42;
    v23 = v45;
    (*(v44 + 16))(v42, v43, v45);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v21;
      v27 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v27 = 136315394;
      v28 = NANPeerServiceIdentifier.description.getter((v41[0] << 40) | (BYTE6(a4) << 48) | (BYTE4(a4) << 32) | (BYTE3(a4) << 24) | (BYTE2(a4) << 16) | (BYTE1(a4) << 8) | a4);
      v30 = sub_100002320(v28, v29, &v46);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v31 = v42;
      v32 = DispatchTimeInterval.description.getter();
      v34 = v33;
      (*(v26 + 8))(v31, v45);
      v35 = sub_100002320(v32, v34, &v46);

      *(v27 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Reset the peer %s from the bloom filter because its been %s since we last saw the advertised service descriptor", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v21 + 8))(v22, v23);
    }

    return 0;
  }

  *v15 = 5;
  v37 = v44;
  v36 = v45;
  (*(v44 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v45);
  static DispatchTimeInterval.+ infix(_:_:)(v15, v17);
  v38 = *(v37 + 8);
  v38(v15, v36);
  v39 = static DispatchTimeInterval.< infix(_:_:)();
  v38(v17, v36);
  return v39;
}

uint64_t sub_1003A32E4(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for NANPeer(0) - 8) + 64);
  __chkstk_darwin();
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_100597460, &qword_1004AFD18) - 8) + 64);
  __chkstk_darwin();
  v8 = &v29 - v7;
  v9 = *a1;
  v10 = a1[1];
  v29 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  swift_beginAccess();
  v30 = v9;
  v16 = v9 | (v10 << 8);
  v17 = v29;
  sub_100338448(v8, v16 | (v29 << 16) | (v11 << 24) | (v12 << 32) | (v13 << 40) | (v14 << 48));
  swift_endAccess();
  v18 = *(a2 + qword_1005983F8);
  v19 = (v11 << 16) | (v17 << 8) | (v12 << 24) | (v13 << 32) | (v14 << 40) | v10;
  if (v18)
  {
    v20 = *(a2 + qword_1005983F8);
    swift_unknownObjectRetain();
    v21 = WiFiAddress.apiAddress.getter(v19);
    v22 = v30;
    [v18 subscribeLostDiscoveryResultForPublishID:v30 address:v21];

    swift_unknownObjectRelease();
  }

  else
  {
    v22 = v30;
  }

  v23 = *(a2 + qword_1005983E0);
  swift_unownedRetainStrong();
  v24 = a2 + qword_10059BAE8;
  swift_beginAccess();
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);

  v27 = v31;
  sub_10040CD68(v19, v31);
  sub_1002E7248(v25, v26, v22);

  sub_10040E430(v27, v19);
}

uint64_t sub_1003A3588(uint64_t a1, uint64_t a2, unint64_t a3, __int16 a4)
{
  v7 = a1 + qword_10059BAE8;
  swift_beginAccess();
  v8 = v7 + *(type metadata accessor for NANSubscribe.Configuration() + 56);
  v9 = *v8;
  v10 = *(v8 + 8);
  *v8 = a2;
  *(v8 + 8) = a3;
  v11 = *(v8 + 16);
  *(v8 + 16) = a4;
  sub_10011A008(a2, a3, a4);
  return sub_10011A01C(v9, v10, v11);
}

uint64_t sub_1003A3638(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1003A3904(v8, v6, a1, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1003A4400(v10, v6, a1, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1003A37A4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin();
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1003A3D8C(v6, v4, a1);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1003A4488(v8, v4, a1);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1003A3904(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a2;
  v46 = a4;
  v43 = a1;
  v53 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  v5 = *(*(v53 - 8) + 64);
  __chkstk_darwin();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  v8 = *(*(v51 - 8) + 64);
  __chkstk_darwin();
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v42 - v10;
  __chkstk_darwin();
  v12 = &v42 - v11;
  v49 = *(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8);
  v13 = *(v49 + 64);
  result = __chkstk_darwin();
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v17 = 0;
  v54 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v47 = v24;
  v48 = v19;
  v52 = v7;
  while (v23)
  {
    v25 = v16;
    v26 = __clz(__rbit64(v23));
    v55 = (v23 - 1) & v23;
LABEL_11:
    v29 = v26 | (v17 << 6);
    v30 = v54[6] - v29 + 8 * v29;
    v31 = *(v30 + 4);
    v32 = *(v30 + 6);
    v33 = *v30;
    sub_1003A4E40(v54[7] + *(v49 + 72) * v29, v25, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v12 = v33;
    *(v12 + 2) = v31;
    v12[6] = v32;
    v34 = v51;
    sub_1003A4E40(v25, &v12[*(v51 + 48)], type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v35 = v50;
    v36 = v34;
    sub_100012400(v12, v50, &unk_100595C80, &qword_1004AFD40);
    v37 = *(v34 + 48);
    v38 = v52;
    sub_1003A4E40(v35 + v37, v52, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    sub_1003A4664(v35 + v37, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1003A4664(v38, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      v39 = v45;
      sub_100012400(v12, v45, &unk_100595C80, &qword_1004AFD40);
      v40 = *(v36 + 48);
      sub_10037E3A4(*(v39 + 1) | (*(v39 + 3) << 16));
      sub_100016290(v12, &unk_100595C80, &qword_1004AFD40);
      sub_1003A4664(v39 + v40, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      result = sub_1003A4664(v25, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      v16 = v25;
      v24 = v47;
      v19 = v48;
      v23 = v55;
    }

    else
    {
      sub_100016290(v12, &unk_100595C80, &qword_1004AFD40);
      sub_1003A4664(v38, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      result = sub_1003A4664(v25, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      *(v43 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v41 = __OFADD__(v44++, 1);
      v16 = v25;
      v24 = v47;
      v19 = v48;
      v23 = v55;
      if (v41)
      {
        __break(1u);
        return sub_1003686EC(v43, v42, v44, v54);
      }
    }
  }

  v27 = v17;
  while (1)
  {
    v17 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      return sub_1003686EC(v43, v42, v44, v54);
    }

    v28 = v19[v17];
    ++v27;
    if (v28)
    {
      v25 = v16;
      v26 = __clz(__rbit64(v28));
      v55 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}