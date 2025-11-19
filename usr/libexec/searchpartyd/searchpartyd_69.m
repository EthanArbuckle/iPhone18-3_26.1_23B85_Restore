void sub_10073C058(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  Transaction.capture()();
  if (a3 == 3)
  {
    sub_1009971C0();
  }

  else if (a3 == 2)
  {
    a4(a1, a2);
    sub_1009971E8();
  }
}

uint64_t sub_10073C0D8()
{
  v1 = *(sub_10073B6B0() + 40);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  static os_log_type_t.default.getter();
  if (qword_101695078 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  _StringGuts.grow(_:)(18);

  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100008C00();
  *(v2 + 32) = 0x656863534350583CLL;
  *(v2 + 40) = 0xEF203A72656C7564;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10073C278()
{
  v1 = v0[3];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_10073C2E4()
{
  v1 = *v0;
  _StringGuts.grow(_:)(18);

  String.append(_:)(v1[1]);
  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0x656863534350583CLL;
}

uint64_t sub_10073C384(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_1000BC4D4(&qword_1016A8050, &qword_1013B7228);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10073EB08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10073C518(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8028, &qword_1013B7218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10073E994();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v30) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for LegacyBeaconState();
    v14 = v13[5];
    LOBYTE(v30) = 1;
    type metadata accessor for UUID();
    sub_10073E9E8(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v30) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v30) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v13[8]);
    LOBYTE(v30) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = (v3 + v13[9]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v30) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = (v3 + v13[10]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v30) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = *(v3 + v13[11]);
    v29[7] = 7;
    sub_1000BC4D4(&qword_1016A8038, &qword_1013B7220);
    sub_10073EA30();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10073C818(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A8000, &qword_1013B7208);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10073E88C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000BC4D4(&qword_1016A8010, &qword_1013B7210);
  sub_10073E8E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10073C974()
{
  if (*v0)
  {
    result = 0x7461447472617473;
  }

  else
  {
    result = 0x61446E6F63616562;
  }

  *v0;
  return result;
}

uint64_t sub_10073C9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61446E6F63616562 && a2 == 0xEA00000000006174;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
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

uint64_t sub_10073CAA4(uint64_t a1)
{
  v2 = sub_10073EB08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073CAE0(uint64_t a1)
{
  v2 = sub_10073EB08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10073CB3C()
{
  v1 = *v0;
  v2 = 0x614E6E6F63616562;
  v3 = 0x3050766461;
  if (v1 != 6)
  {
    v3 = 0x6E696E6F63616562;
  }

  v4 = 0x656E694D7369;
  if (v1 != 4)
  {
    v4 = 0x6574614472696170;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x754E6C6169726573;
  if (v1 != 2)
  {
    v5 = 0x6F69737265567766;
  }

  if (*v0)
  {
    v2 = 0x55556E6F63616562;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10073CC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10073EEA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10073CC78(uint64_t a1)
{
  v2 = sub_10073E994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073CCB4(uint64_t a1)
{
  v2 = sub_10073E994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10073CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F63616562 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10073CDA8(uint64_t a1)
{
  v2 = sub_10073E88C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10073CDE4(uint64_t a1)
{
  v2 = sub_10073E88C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10073CE3C()
{
  v1 = objc_allocWithZone(FMStateCapture);

  v2 = [v1 init];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10073CFD8;
  *(v3 + 24) = v0;
  v6[4] = sub_10073CFE0;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10015013C;
  v6[3] = &unk_10162FDC0;
  v4 = _Block_copy(v6);

  [v2 setStateCaptureBlock:v4];
  _Block_release(v4);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_legacyStateCapture);
  *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_legacyStateCapture) = v2;
}

void sub_10073CF70(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = _swiftEmptyArrayStorage;
  v4 = objc_autoreleasePoolPush();
  sub_10073CFE8(a1, &v5);
  objc_autoreleasePoolPop(v4);
  *a2 = v5;
}

void sub_10073CFE8(uint64_t a1, size_t *a2)
{
  v4 = v2;
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setDateFormat:v8];

  v9 = *(a1 + 280);
  v10 = sub_100007F54();
  v11 = v10;
  v12 = v10[2];
  if (v12)
  {
    v13 = 0;
    v14 = (v10 + 4);
    while (v13 < v11[2])
    {
      sub_10001F280(v14, v15);
      v3 = objc_autoreleasePoolPush();
      sub_10073D130(a1, v15, a2, v7);
      if (v4)
      {
        goto LABEL_8;
      }

      v4 = 0;
      ++v13;
      sub_100007BAC(v15);
      objc_autoreleasePoolPop(v3);
      v14 += 40;
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    sub_100007BAC(v15);
    objc_autoreleasePoolPop(v3);
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_10073D130(uint64_t a1, void *a2, size_t *a3, void *a4)
{
  v232 = a4;
  v242 = a3;
  v233 = type metadata accessor for StableIdentifier();
  v6 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v234 = (&v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v241 = type metadata accessor for LegacyBeaconState();
  v243 = *(v241 - 8);
  v8 = *(v243 + 64);
  v9 = __chkstk_darwin(v241);
  v226 = &v224 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v229 = (&v224 - v12);
  v13 = __chkstk_darwin(v11);
  v225 = &v224 - v14;
  v15 = __chkstk_darwin(v13);
  v228 = (&v224 - v16);
  v17 = __chkstk_darwin(v15);
  v230 = &v224 - v18;
  v19 = __chkstk_darwin(v17);
  v231 = (&v224 - v20);
  v21 = __chkstk_darwin(v19);
  v224 = &v224 - v22;
  v23 = __chkstk_darwin(v21);
  v227 = &v224 - v24;
  v25 = __chkstk_darwin(v23);
  v238 = &v224 - v26;
  __chkstk_darwin(v25);
  v237 = (&v224 - v27);
  v28 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v236 = &v224 - v30;
  v239 = type metadata accessor for OwnedBeaconRecord();
  v235 = *(v239 - 8);
  v31 = *(v235 + 64);
  __chkstk_darwin(v239);
  v240 = &v224 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v246 = &v224 - v35;
  v36 = type metadata accessor for SharedBeaconRecord(0);
  v244 = *(v36 - 8);
  v245 = v36;
  v37 = *(v244 + 64);
  __chkstk_darwin(v36);
  v247 = &v224 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v258 = *(v39 - 8);
  v40 = *(v258 + 64);
  __chkstk_darwin(v39);
  v42 = &v224 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = &v224 - v45;
  v47 = type metadata accessor for BeaconNamingRecord();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v250 = &v224 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 + 280);
  v52 = a2;
  v53 = a2[3];
  v54 = v52[4];
  v248 = v52;
  sub_1000035D0(v52, v53);
  (*(*(*(v54 + 8) + 8) + 32))(v53);
  v55 = *(v51 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  v252 = v51;
  v253 = v42;
  v56 = v251;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v57 = v47;
  v58 = *(v258 + 8);
  v251 = v42;
  v249 = v39;
  v58(v42, v39);
  if ((*(v48 + 48))(v46, 1, v57) == 1)
  {
    return sub_10000B3A8(v46, &unk_1016B29E0, &unk_1013B70E0);
  }

  v60 = v46;
  v61 = v250;
  sub_100038E74(v60, v250, type metadata accessor for BeaconNamingRecord);
  v62 = v248;
  sub_10001F280(v248, v254);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v64 = v245;
  v63 = v246;
  v65 = swift_dynamicCast();
  v66 = *(v244 + 56);
  if (v65)
  {
    v66(v63, 0, 1, v64);
    v67 = v247;
    sub_100038E74(v63, v247, type metadata accessor for SharedBeaconRecord);
    v68 = (v61 + *(v57 + 32));
    v69 = *v68;
    v70 = v68[1];
    v71 = *(v64 + 20);
    v72 = v237;
    *v237 = v69;
    *(v72 + 8) = v70;
    v73 = v241;
    (*(v258 + 16))(v72 + *(v241 + 20), v67 + v71, v249);
    v74 = (v72 + v73[6]);
    *v74 = 0;
    v74[1] = 0;
    v75 = (v72 + v73[7]);
    *v75 = 0;
    v75[1] = 0;
    *(v72 + v73[8]) = 0;
    v76 = (v72 + v73[9]);
    *v76 = 0;
    v76[1] = 0;
    v77 = (v72 + v73[10]);
    *v77 = 0;
    v77[1] = 0;
    *(v72 + v73[11]) = _swiftEmptyArrayStorage;
    v78 = v238;
    sub_10003256C(v72, v238, type metadata accessor for LegacyBeaconState);
    v79 = v242;
    v80 = *v242;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v79 = v80;
    v82 = v243;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = sub_100A5DDF0(0, v80[2] + 1, 1, v80);
      *v79 = v80;
    }

    v84 = v80[2];
    v83 = v80[3];
    if (v84 >= v83 >> 1)
    {
      *v79 = sub_100A5DDF0(v83 > 1, v84 + 1, 1, v80);
    }

    sub_10002FEE8(v72, type metadata accessor for LegacyBeaconState);
    sub_10002FEE8(v247, type metadata accessor for SharedBeaconRecord);
    sub_10002FEE8(v61, type metadata accessor for BeaconNamingRecord);
    v85 = *v79;
    *(*v79 + 16) = v84 + 1;
    goto LABEL_9;
  }

  v66(v63, 1, 1, v64);
  sub_10000B3A8(v63, &unk_101698C30, &unk_101392630);
  sub_10001F280(v62, v254);
  v88 = v236;
  v89 = v239;
  v90 = swift_dynamicCast();
  v91 = *(v235 + 56);
  if (v90)
  {
    v92 = v88;
    v93 = v58;
    v91(v92, 0, 1, v89);
    v94 = v92;
    v95 = v240;
    sub_100038E74(v94, v240, type metadata accessor for OwnedBeaconRecord);
    v96 = v234;
    sub_10003256C(v95 + v89[6], v234, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v197 = *(v96 + 1);
        v198 = *(v96 + 3);
        v251 = *(v96 + 4);
        v199 = *(v96 + 5);
        v247 = v56;
        v248 = v199;

        v200 = (v61 + *(v57 + 32));
        v202 = *v200;
        v201 = v200[1];
        v203 = v240;
        v204 = v241;
        v205 = v227;
        (*(v258 + 16))(&v227[*(v241 + 20)], v240 + v89[5], v249);
        v206 = (v203 + v89[15]);
        v208 = *v206;
        v207 = v206[1];
        v209 = v89[8];

        isa = Date._bridgeToObjectiveC()().super.isa;
        v211 = [v232 stringFromDate:isa];

        v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v214 = v213;

        *v205 = v202;
        v205[1] = v201;
        v215 = (v205 + v204[6]);
        v216 = v248;
        *v215 = v251;
        v215[1] = v216;
        v217 = (v205 + v204[7]);
        *v217 = v208;
        v217[1] = v207;
        *(v205 + v204[8]) = 1;
        v218 = (v205 + v204[9]);
        *v218 = v212;
        v218[1] = v214;
        v219 = (v205 + v204[10]);
        *v219 = 0;
        v219[1] = 0;
        *(v205 + v204[11]) = _swiftEmptyArrayStorage;
        v167 = v224;
        sub_10003256C(v205, v224, type metadata accessor for LegacyBeaconState);
        v168 = v242;
        v220 = *v242;
        v221 = swift_isUniquelyReferenced_nonNull_native();
        *v168 = v220;
        if ((v221 & 1) == 0)
        {
          v220 = sub_100A5DDF0(0, v220[2] + 1, 1, v220);
          *v168 = v220;
        }

        v171 = v243;
        v173 = v220[2];
        v222 = v220[3];
        v174 = v173 + 1;
        v175 = v250;
        if (v173 >= v222 >> 1)
        {
          *v168 = sub_100A5DDF0(v222 > 1, v173 + 1, 1, v220);
        }

        v176 = &v255;
        goto LABEL_44;
      }

      sub_10002FEE8(v96, type metadata accessor for StableIdentifier);
      v112 = (v61 + *(v57 + 32));
      v114 = *v112;
      v113 = v112[1];
      v115 = v89[5];
      v116 = v89[8];

      v117 = v240;
      v118 = Date._bridgeToObjectiveC()().super.isa;
      v119 = [v232 stringFromDate:v118];

      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      v123 = v228;
      *v228 = v114;
      *(v123 + 8) = v113;
      v124 = v241;
      (*(v258 + 16))(v123 + *(v241 + 20), v117 + v115, v249);
      v125 = (v123 + v124[6]);
      *v125 = 0;
      v125[1] = 0;
      v126 = (v123 + v124[7]);
      *v126 = 0;
      v126[1] = 0;
      *(v123 + v124[8]) = 1;
      v127 = (v123 + v124[9]);
      *v127 = v120;
      v127[1] = v122;
      v128 = (v123 + v124[10]);
      *v128 = 0;
      v128[1] = 0;
      *(v123 + v124[11]) = _swiftEmptyArrayStorage;
      v78 = v225;
      sub_10003256C(v123, v225, type metadata accessor for LegacyBeaconState);
      v129 = v242;
      v130 = *v242;
      v131 = swift_isUniquelyReferenced_nonNull_native();
      *v129 = v130;
      if ((v131 & 1) == 0)
      {
        v130 = sub_100A5DDF0(0, v130[2] + 1, 1, v130);
        *v129 = v130;
      }

      v82 = v243;
      v84 = v130[2];
      v132 = v130[3];
      v133 = v84 + 1;
      if (v84 >= v132 >> 1)
      {
        *v129 = sub_100A5DDF0(v132 > 1, v84 + 1, 1, v130);
      }

      v134 = &v256;
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v98 = v57;
        v247 = v56;
        v135 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v136 = *&v96[v135[12] + 8];

        v137 = *&v96[v135[16] + 8];

        v138 = &v96[v135[20]];
        v140 = *v138;
        v139 = v138[1];
        v251 = v140;
        v248 = v139;
        v141 = *&v96[v135[28] + 8];

        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v98 = v57;
        v247 = v56;
        v99 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v100 = *&v96[v99[12] + 8];

        v101 = *&v96[v99[16] + 8];

        v102 = &v96[v99[20]];
        v104 = *v102;
        v103 = v102[1];
        v251 = v104;
        v248 = v103;
LABEL_26:
        v93(v96, v249);
        static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v142 = swift_allocObject();
        *(v142 + 16) = xmmword_101385D80;
        v143 = v239;
        v144 = *(v239 + 20);
        v145 = v240;
        v146 = UUID.uuidString.getter();
        v148 = v147;
        *(v142 + 56) = &type metadata for String;
        *(v142 + 64) = sub_100008C00();
        *(v142 + 32) = v146;
        *(v142 + 40) = v148;
        os_log(_:dso:log:_:_:)();

        v149 = (v250 + *(v98 + 32));
        v151 = *v149;
        v150 = v149[1];
        v152 = (v145 + *(v143 + 60));
        v153 = v152[1];
        v246 = *v152;
        v154 = *(v143 + 32);

        v155 = Date._bridgeToObjectiveC()().super.isa;
        v156 = [v232 stringFromDate:v155];

        v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v159 = v158;

        v160 = v231;
        *v231 = v151;
        *(v160 + 8) = v150;
        v161 = v241;
        (*(v258 + 16))(v160 + *(v241 + 20), v145 + v144, v249);
        v162 = (v160 + v161[6]);
        v163 = v248;
        *v162 = v251;
        v162[1] = v163;
        v164 = (v160 + v161[7]);
        *v164 = v246;
        v164[1] = v153;
        *(v160 + v161[8]) = 1;
        v165 = (v160 + v161[9]);
        *v165 = v157;
        v165[1] = v159;
        v166 = (v160 + v161[10]);
        *v166 = 0;
        v166[1] = 0;
        *(v160 + v161[11]) = _swiftEmptyArrayStorage;
        v167 = v230;
        sub_10003256C(v160, v230, type metadata accessor for LegacyBeaconState);
        v168 = v242;
        v169 = *v242;
        v170 = swift_isUniquelyReferenced_nonNull_native();
        *v168 = v169;
        if ((v170 & 1) == 0)
        {
          v169 = sub_100A5DDF0(0, v169[2] + 1, 1, v169);
          *v168 = v169;
        }

        v171 = v243;
        v173 = v169[2];
        v172 = v169[3];
        v174 = v173 + 1;
        v175 = v250;
        if (v173 >= v172 >> 1)
        {
          *v168 = sub_100A5DDF0(v172 > 1, v173 + 1, 1, v169);
        }

        v176 = &v258;
LABEL_44:
        sub_10002FEE8(*(v176 - 32), type metadata accessor for LegacyBeaconState);
        sub_10002FEE8(v240, type metadata accessor for OwnedBeaconRecord);
        sub_10002FEE8(v175, type metadata accessor for BeaconNamingRecord);
        v223 = *v168;
        *(v223 + 16) = v174;
        v86 = v223 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v173;
        v87 = v167;
        return sub_100038E74(v87, v86, type metadata accessor for LegacyBeaconState);
      }

      sub_10002FEE8(v96, type metadata accessor for StableIdentifier);
      v177 = (v61 + *(v57 + 32));
      v179 = *v177;
      v178 = v177[1];
      v180 = v89[5];
      v181 = v89[8];

      v182 = v240;
      v183 = Date._bridgeToObjectiveC()().super.isa;
      v184 = [v232 stringFromDate:v183];

      v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v187 = v186;

      v188 = v229;
      *v229 = v179;
      *(v188 + 8) = v178;
      v189 = v241;
      (*(v258 + 16))(v188 + *(v241 + 20), v182 + v180, v249);
      v190 = (v188 + v189[6]);
      *v190 = 0;
      v190[1] = 0;
      v191 = (v188 + v189[7]);
      *v191 = 0;
      v191[1] = 0;
      *(v188 + v189[8]) = 1;
      v192 = (v188 + v189[9]);
      *v192 = v185;
      v192[1] = v187;
      v193 = (v188 + v189[10]);
      *v193 = 0;
      v193[1] = 0;
      *(v188 + v189[11]) = _swiftEmptyArrayStorage;
      v78 = v226;
      sub_10003256C(v188, v226, type metadata accessor for LegacyBeaconState);
      v129 = v242;
      v194 = *v242;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      *v129 = v194;
      if ((v195 & 1) == 0)
      {
        v194 = sub_100A5DDF0(0, v194[2] + 1, 1, v194);
        *v129 = v194;
      }

      v82 = v243;
      v84 = v194[2];
      v196 = v194[3];
      v133 = v84 + 1;
      if (v84 >= v196 >> 1)
      {
        *v129 = sub_100A5DDF0(v196 > 1, v84 + 1, 1, v194);
      }

      v134 = &v257;
    }

    sub_10002FEE8(*(v134 - 32), type metadata accessor for LegacyBeaconState);
    sub_10002FEE8(v240, type metadata accessor for OwnedBeaconRecord);
    sub_10002FEE8(v61, type metadata accessor for BeaconNamingRecord);
    v85 = *v129;
    *(*v129 + 16) = v133;
LABEL_9:
    v86 = v85 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v84;
    v87 = v78;
    return sub_100038E74(v87, v86, type metadata accessor for LegacyBeaconState);
  }

  v247 = v56;
  v91(v88, 1, 1, v89);
  sub_10000B3A8(v88, &unk_1016A9A20, &qword_10138B280);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_101385D80;
  v107 = v62[3];
  v106 = v62[4];
  sub_1000035D0(v62, v107);
  v108 = v251;
  (*(*(*(v106 + 8) + 8) + 32))(v107);
  v109 = UUID.uuidString.getter();
  v111 = v110;
  v58(v108, v249);
  *(v105 + 56) = &type metadata for String;
  *(v105 + 64) = sub_100008C00();
  *(v105 + 32) = v109;
  *(v105 + 40) = v111;
  os_log(_:dso:log:_:_:)();

  return sub_10002FEE8(v250, type metadata accessor for BeaconNamingRecord);
}

uint64_t type metadata accessor for LegacyBeaconState()
{
  result = qword_1016A7FA8;
  if (!qword_1016A7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10073E68C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10073E794(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10073E794(319, &unk_1016A7FB8, &type metadata for LegacyBeaconingKey, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10073E794(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10073E7E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10073E82C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10073E88C()
{
  result = qword_1016A8008;
  if (!qword_1016A8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8008);
  }

  return result;
}

unint64_t sub_10073E8E0()
{
  result = qword_1016A8018;
  if (!qword_1016A8018)
  {
    sub_1000BC580(&qword_1016A8010, &qword_1013B7210);
    sub_10073E9E8(&qword_1016A8020, type metadata accessor for LegacyBeaconState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8018);
  }

  return result;
}

unint64_t sub_10073E994()
{
  result = qword_1016A8030;
  if (!qword_1016A8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8030);
  }

  return result;
}

uint64_t sub_10073E9E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10073EA30()
{
  result = qword_1016A8040;
  if (!qword_1016A8040)
  {
    sub_1000BC580(&qword_1016A8038, &qword_1013B7220);
    sub_10073EAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8040);
  }

  return result;
}

unint64_t sub_10073EAB4()
{
  result = qword_1016A8048;
  if (!qword_1016A8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8048);
  }

  return result;
}

unint64_t sub_10073EB08()
{
  result = qword_1016A8058;
  if (!qword_1016A8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8058);
  }

  return result;
}

unint64_t sub_10073EB90()
{
  result = qword_1016A8060;
  if (!qword_1016A8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8060);
  }

  return result;
}

unint64_t sub_10073EBE8()
{
  result = qword_1016A8068;
  if (!qword_1016A8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8068);
  }

  return result;
}

unint64_t sub_10073EC40()
{
  result = qword_1016A8070;
  if (!qword_1016A8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8070);
  }

  return result;
}

unint64_t sub_10073EC98()
{
  result = qword_1016A8078;
  if (!qword_1016A8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8078);
  }

  return result;
}

unint64_t sub_10073ECF0()
{
  result = qword_1016A8080;
  if (!qword_1016A8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8080);
  }

  return result;
}

unint64_t sub_10073ED48()
{
  result = qword_1016A8088;
  if (!qword_1016A8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8088);
  }

  return result;
}

unint64_t sub_10073EDA0()
{
  result = qword_1016A8090;
  if (!qword_1016A8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8090);
  }

  return result;
}

unint64_t sub_10073EDF8()
{
  result = qword_1016A8098;
  if (!qword_1016A8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8098);
  }

  return result;
}

unint64_t sub_10073EE50()
{
  result = qword_1016A80A0;
  if (!qword_1016A80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A80A0);
  }

  return result;
}

uint64_t sub_10073EEA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6E6F63616562 && a2 == 0xEA0000000000656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55556E6F63616562 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69737265567766 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E694D7369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574614472696170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x3050766461 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E696E6F63616562 && a2 == 0xED00007379654B67)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_10073F164(uint64_t a1)
{
  *(a1 + 8) = sub_10073F194();
  result = sub_10064D61C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10073F194()
{
  result = qword_1016A80A8;
  if (!qword_1016A80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A80A8);
  }

  return result;
}

unint64_t sub_10073F1E8(uint64_t a1)
{
  *(a1 + 8) = sub_10073F218();
  result = sub_10073F26C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10073F218()
{
  result = qword_1016A80B0;
  if (!qword_1016A80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A80B0);
  }

  return result;
}

unint64_t sub_10073F26C()
{
  result = qword_1016A80B8;
  if (!qword_1016A80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A80B8);
  }

  return result;
}

uint64_t sub_10073F2C0(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v13 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v13, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, *(&v6 + 1));
  if (!v2)
  {
    v12 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v12, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v11 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[4];
    v6 = v1[4];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
  }

  return sub_100007BAC(v7);
}

__n128 sub_10073F50C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10073F558(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10073F558@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v46, v47);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v46);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v46, v47);
  v48 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  sub_10015049C(v46, v47);
  v43 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v44 = v12;
  sub_10015049C(v46, v47);
  v41 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v42 = v13;
  sub_10015049C(v46, v47);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    v17 = v48;
    if (!v16)
    {
      v18 = BYTE6(v9);
LABEL_13:
      v19 = v43;
      v20 = v44;
      goto LABEL_14;
    }

LABEL_11:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v18 = HIDWORD(v8) - v8;
    goto LABEL_13;
  }

  v17 = v48;
  v19 = v43;
  v20 = v44;
  if (v16 != 2)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v22 = *(v8 + 16);
  v21 = *(v8 + 24);
  v23 = __OFSUB__(v21, v22);
  v18 = v21 - v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  if (v18 != 89)
  {
    goto LABEL_60;
  }

  if ((v11 >> 62) <= 1)
  {
    if (v11 >> 62 == 1)
    {
      LODWORD(v24) = HIDWORD(v17) - v17;
      if (!__OFSUB__(HIDWORD(v17), v17))
      {
        v24 = v24;
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v11 >> 62 != 2)
  {
    goto LABEL_59;
  }

  v26 = *(v17 + 16);
  v25 = *(v17 + 24);
  v23 = __OFSUB__(v25, v26);
  v24 = v25 - v26;
  if (v23)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_21:
  if (v24 != 1040)
  {
    goto LABEL_59;
  }

  v27 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(v20);
      goto LABEL_31;
    }

LABEL_29:
    LODWORD(v28) = HIDWORD(v19) - v19;
    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      v28 = v28;
      goto LABEL_31;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 != 2)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v30 = *(v19 + 16);
  v29 = *(v19 + 24);
  v23 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v23)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_31:
  if (v28 != 32)
  {
    goto LABEL_61;
  }

  v31 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(v15);
      goto LABEL_41;
    }

LABEL_39:
    LODWORD(v32) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v32 = v32;
      goto LABEL_41;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v31 != 2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v34 = *(result + 16);
  v33 = *(result + 24);
  v23 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v23)
  {
    __break(1u);
    goto LABEL_39;
  }

LABEL_41:
  if (v32 != 100)
  {
    goto LABEL_62;
  }

  v35 = v42 >> 62;
  if ((v42 >> 62) <= 1)
  {
    if (!v35)
    {
      v36 = BYTE6(v42);
      goto LABEL_51;
    }

LABEL_49:
    LODWORD(v36) = HIDWORD(v41) - v41;
    if (!__OFSUB__(HIDWORD(v41), v41))
    {
      v36 = v36;
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  if (v35 != 2)
  {
    goto LABEL_63;
  }

  v38 = *(v41 + 16);
  v37 = *(v41 + 24);
  v23 = __OFSUB__(v37, v38);
  v36 = v37 - v38;
  if (v23)
  {
    __break(1u);
    goto LABEL_49;
  }

LABEL_51:
  if (v36 == 60)
  {
    v39 = v17;
    v40 = v19;
    v48 = result;
    v45 = v15;
    sub_100007BAC(v46);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v39;
    a2[3] = v11;
    a2[4] = v40;
    a2[5] = v20;
    a2[6] = v41;
    a2[7] = v42;
    a2[8] = v48;
    a2[9] = v45;
    return result;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10073F8F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
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

uint64_t sub_10073F94C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata accessor for OfflineLostModeInfoLookupResponse()
{
  result = qword_1016A8118;
  if (!qword_1016A8118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10073FA34()
{
  sub_1000E3404();
  if (v0 <= 0x3F)
  {
    sub_10073FACC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10073FACC()
{
  if (!qword_1016A8128)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A8128);
    }
  }
}

uint64_t sub_10073FB24(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8180, &qword_1013B7950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10074035C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v22[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    v22[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    v22[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3[7];
    v19 = v3[8];
    v22[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(type metadata accessor for OfflineLostModeInfoLookupResponse() + 36);
    v22[10] = 5;
    type metadata accessor for URL();
    sub_100740470(&qword_1016A8188);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10073FD8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v37 = sub_1000BC4D4(&qword_1016A8168, &qword_1013B7948);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v11 = &v33 - v10;
  v12 = type metadata accessor for OfflineLostModeInfoLookupResponse();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v38 = a1;
  sub_1000035D0(a1, v16);
  sub_10074035C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v38);
  }

  v18 = v36;
  v44 = 0;
  *v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 1) = v20;
  v43 = 1;
  v21 = v8;
  v15[16] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v42 = 2;
  *(v15 + 3) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 4) = v22;
  v41 = 3;
  *(v15 + 5) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 6) = v23;
  v40 = 4;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = 0;
  v34 = 0;
  *(v15 + 7) = v24;
  *(v15 + 8) = v28;
  type metadata accessor for URL();
  v39 = 5;
  sub_100740470(&qword_1016A8178);
  v29 = v37;
  v30 = v35;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v21 + 8))(v11, v29);
  v35 = v30;
  if (v30)
  {
    sub_100007BAC(v38);
    v31 = *(v15 + 1);
    v32 = v34;

    v25 = *(v15 + 4);

    if (!v32)
    {
      v26 = *(v15 + 6);
    }

    v27 = *(v15 + 8);
  }

  else
  {
    sub_1000D55F0(v7, &v15[*(v12 + 36)]);
    sub_1007403B0(v15, v18);
    sub_100007BAC(v38);
    return sub_100740414(v15);
  }
}

unint64_t sub_1007401AC()
{
  v1 = *v0;
  v2 = 0x6D754E656E6F6870;
  v3 = 0xD000000000000010;
  v4 = 0x7373654D74736F6CLL;
  if (v1 != 4)
  {
    v4 = 0x48746C7561666564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F4D74736F4C6E69;
  if (v1 != 1)
  {
    v5 = 0x6C69616D65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10074028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007405CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007402B4(uint64_t a1)
{
  v2 = sub_10074035C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007402F0(uint64_t a1)
{
  v2 = sub_10074035C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10074035C()
{
  result = qword_1016A8170;
  if (!qword_1016A8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8170);
  }

  return result;
}

uint64_t sub_1007403B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLostModeInfoLookupResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100740414(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLostModeInfoLookupResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100740470(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007404C8()
{
  result = qword_1016A8190;
  if (!qword_1016A8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8190);
  }

  return result;
}

unint64_t sub_100740520()
{
  result = qword_1016A8198;
  if (!qword_1016A8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8198);
  }

  return result;
}

unint64_t sub_100740578()
{
  result = qword_1016A81A0;
  if (!qword_1016A81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81A0);
  }

  return result;
}

uint64_t sub_1007405CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4D74736F4C6E69 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010135DF40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373654D74736F6CLL && a2 == 0xEF74786554656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x48746C7561666564 && a2 == 0xEF6E6F63496F7265)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10074080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746143656C6F72 && a2 == 0xEE00736569726F67)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10074089C(uint64_t a1)
{
  v2 = sub_1007413A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007408D8(uint64_t a1)
{
  v2 = sub_1007413A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100740914@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1007411F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100740940(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A81D8, &qword_1013B7C48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100741780();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v17[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[3];
  v16 = v3[4];
  v17[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100740AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = a3;
  v15[2] = a4;
  v8 = sub_1000BC4D4(&qword_1016A8208, &qword_1013B7C60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100741B58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15[3] = a5;
    v16 = 2;
    sub_1000BC4D4(&qword_1016A81F0, &qword_1013B7C58);
    sub_100741C7C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100740CE0()
{
  v1 = 1701605234;
  if (*v0 != 1)
  {
    v1 = 0x6A6F6D45656C6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449656C6F72;
  }
}

uint64_t sub_100740D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100741450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100740D5C(uint64_t a1)
{
  v2 = sub_100741780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100740D98(uint64_t a1)
{
  v2 = sub_100741780();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100740DD4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10074156C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100740E34(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100740EE8()
{
  v1 = 0x73656C6F72;
  if (*v0 == 1)
  {
    v1 = 0x79726F6765746163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_100740F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007417D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100740F64(uint64_t a1)
{
  v2 = sub_100741B58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100740FA0(uint64_t a1)
{
  v2 = sub_100741B58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100740FDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1007418F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10074102C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10038F8F4(v2, v3);
}

uint64_t sub_1007410C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100741108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100741160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1007411A8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void *sub_1007411F8(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A81A8, &qword_1013B7C38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1007413A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101697EA0, &qword_10138EB60);
    sub_100741BAC(&qword_1016A81B8, &qword_101697EA0, &qword_10138EB60, sub_1007413FC);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_1007413A8()
{
  result = qword_1016A81B0;
  if (!qword_1016A81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81B0);
  }

  return result;
}

unint64_t sub_1007413FC()
{
  result = qword_1016A81C0;
  if (!qword_1016A81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81C0);
  }

  return result;
}

uint64_t sub_100741450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C6F72 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6A6F6D45656C6F72 && a2 == 0xE900000000000069)
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

uint64_t sub_10074156C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A81C8, &qword_1013B7C40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100741780();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100007BAC(a1);
  v20 = v22;
  *a2 = v11;
  a2[1] = v20;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v18;
  return result;
}

unint64_t sub_100741780()
{
  result = qword_1016A81D0;
  if (!qword_1016A81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81D0);
  }

  return result;
}

uint64_t sub_1007417D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656C6F72 && a2 == 0xE500000000000000)
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

uint64_t sub_1007418F4(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A81E0, &qword_1013B7C50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100741B58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[30] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000BC4D4(&qword_1016A81F0, &qword_1013B7C58);
    v10[29] = 2;
    sub_100741BAC(&qword_1016A81F8, &qword_1016A81F0, &qword_1013B7C58, sub_100741C28);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_100741B58()
{
  result = qword_1016A81E8;
  if (!qword_1016A81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A81E8);
  }

  return result;
}

uint64_t sub_100741BAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100741C28()
{
  result = qword_1016A8200;
  if (!qword_1016A8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8200);
  }

  return result;
}

unint64_t sub_100741C7C()
{
  result = qword_1016A8210;
  if (!qword_1016A8210)
  {
    sub_1000BC580(&qword_1016A81F0, &qword_1013B7C58);
    sub_100741D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8210);
  }

  return result;
}

unint64_t sub_100741D00()
{
  result = qword_1016A8218;
  if (!qword_1016A8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8218);
  }

  return result;
}

unint64_t sub_100741D88()
{
  result = qword_1016A8220;
  if (!qword_1016A8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8220);
  }

  return result;
}

unint64_t sub_100741DE0()
{
  result = qword_1016A8228;
  if (!qword_1016A8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8228);
  }

  return result;
}

unint64_t sub_100741E38()
{
  result = qword_1016A8230;
  if (!qword_1016A8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8230);
  }

  return result;
}

unint64_t sub_100741E90()
{
  result = qword_1016A8238;
  if (!qword_1016A8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8238);
  }

  return result;
}

unint64_t sub_100741EE8()
{
  result = qword_1016A8240;
  if (!qword_1016A8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8240);
  }

  return result;
}

unint64_t sub_100741F40()
{
  result = qword_1016A8248;
  if (!qword_1016A8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8248);
  }

  return result;
}

unint64_t sub_100741F98()
{
  result = qword_1016A8250;
  if (!qword_1016A8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8250);
  }

  return result;
}

unint64_t sub_100741FF0()
{
  result = qword_1016A8258;
  if (!qword_1016A8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8258);
  }

  return result;
}

unint64_t sub_100742048()
{
  result = qword_1016A8260;
  if (!qword_1016A8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8260);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateStateInfo()
{
  result = qword_1016A82C0;
  if (!qword_1016A82C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10074211C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016BD350);
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &unk_1016A82D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1007421F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100742240(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100742354()
{
  result = qword_1016A8310;
  if (!qword_1016A8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8310);
  }

  return result;
}

uint64_t sub_1007423A8(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(56);
  v4._object = 0x800000010135DFB0;
  v4._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x6F43726F72726520;
  v6._object = 0xEB00000000206564;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  return 0;
}

uint64_t sub_100742484(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_1000BC4D4(&qword_1016A8340, &qword_1013B8298);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007434A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100742618()
{
  if (*v0)
  {
    result = 0x646F43726F727265;
  }

  else
  {
    result = 0x6D6F44726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_100742660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
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

uint64_t sub_100742748(uint64_t a1)
{
  v2 = sub_1007434A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100742784(uint64_t a1)
{
  v2 = sub_1007434A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007427C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1007432C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

BOOL sub_100742810(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

Swift::Int sub_10074286C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1007428D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100742908()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_100742978()
{
  result = qword_1016A8318;
  if (!qword_1016A8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8318);
  }

  return result;
}

uint64_t sub_1007429CC()
{
  v1 = v0;
  _StringGuts.grow(_:)(117);
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x800000010135DF60;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  sub_100743178(&qword_101696930, &type metadata accessor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x657461647075202CLL;
  v4._object = 0xEE00206574617453;
  String.append(_:)(v4);
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v13 = *(v0 + updated[5]);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 0x6470557473616C20;
  v6._object = 0xEC00000020657461;
  String.append(_:)(v6);
  v7 = updated[6];
  type metadata accessor for Date();
  sub_100743178(&qword_1016969A0, &type metadata accessor for Date);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._object = 0x800000010135DF90;
  v9._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v9);
  v14 = *(v1 + updated[7]);
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x4565746164707520;
  v10._object = 0xED000020726F7272;
  String.append(_:)(v10);
  v11 = (v1 + updated[8]);
  v15 = *v11;
  v16 = *(v11 + 2);
  sub_1000BC4D4(&qword_1016A8328, &qword_1013B8288);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void sub_100742C68()
{
  v1 = v0;
  type metadata accessor for UUID();
  sub_100743178(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  Hasher._combine(_:)(*(v0 + updated[5]));
  v3 = updated[6];
  type metadata accessor for Date();
  sub_100743178(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v1 + updated[7]);
  if (v4[1])
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = (v1 + updated[8]);
  if (v6[1])
  {
    v7 = v6[2];
    v8 = *v6;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100742DEC()
{
  v1 = v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100743178(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  Hasher._combine(_:)(*(v0 + updated[5]));
  v3 = updated[6];
  type metadata accessor for Date();
  sub_100743178(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v1 + updated[7]);
  if (v4[1])
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = (v1 + updated[8]);
  if (v6[1])
  {
    v7 = v6[2];
    v8 = *v6;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100742F94(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100743178(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[5]));
  v5 = a2[6];
  type metadata accessor for Date();
  sub_100743178(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v6 = (v4 + a2[7]);
  if (v6[1])
  {
    v7 = *v6;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = (v4 + a2[8]);
  if (v8[1])
  {
    v9 = v8[2];
    v10 = *v8;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v9);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100743178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007431C0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  if (*(a1 + *(updated + 20)) != *(a2 + *(updated + 20)))
  {
    return 0;
  }

  v5 = updated;
  v6 = *(updated + 24);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 28);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(v5 + 32);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = v14[2];
      v19 = v16[2];
      v20 = *v14 == *v16 && v15 == v17;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v18 == v19)
      {
        return 1;
      }
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1007432C8(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8330, &qword_1013B8290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007434A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_1007434A0()
{
  result = qword_1016A8338;
  if (!qword_1016A8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8338);
  }

  return result;
}

unint64_t sub_1007434F4()
{
  result = qword_1016A8348;
  if (!qword_1016A8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8348);
  }

  return result;
}

unint64_t sub_10074355C()
{
  result = qword_1016A8350;
  if (!qword_1016A8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8350);
  }

  return result;
}

unint64_t sub_1007435B4()
{
  result = qword_1016A8358;
  if (!qword_1016A8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8358);
  }

  return result;
}

unint64_t sub_10074360C()
{
  result = qword_1016A8360;
  if (!qword_1016A8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8360);
  }

  return result;
}

uint64_t sub_100743714@<X0>(uint64_t a1@<X8>)
{
  if (qword_101694858 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000076D4(v2, qword_10177B0A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10074396C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for URL();
  v6 = sub_1000076D4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100743A08()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B090);
  v1 = sub_1000076D4(v0, qword_10177B090);
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B5D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100743AD0()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100743B6C, v0, 0);
}

uint64_t sub_100743B6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013B8548, v5);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);
  v4(v2, 1, 1, v3);
  v7 = sub_100748690(&qword_1016A8450, v6, type metadata accessor for ObservationPruneSchedulerService);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v1;
  swift_retain_n();
  sub_10025EDD4(0, 0, v2, &unk_1013B8558, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100743D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101696C40, &unk_1013B8520) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = type metadata accessor for FinderStateInfo(0);
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101696C48, &unk_10138B590) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_101696C50, &unk_1013B8560);
  v4[10] = v11;
  v12 = *(v11 - 8);
  v4[11] = v12;
  v13 = *(v12 + 64) + 15;
  v4[12] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_101696C58, &unk_10138B5A0);
  v4[13] = v14;
  v15 = *(v14 - 8);
  v4[14] = v15;
  v16 = *(v15 + 64) + 15;
  v4[15] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v4[16] = v18;
  *v18 = v4;
  v18[1] = sub_100743FB4;

  return daemon.getter();
}

uint64_t sub_100743FB4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FinderStateObserver();
  v9 = sub_100748690(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100748690(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver);
  *v6 = v12;
  v6[1] = sub_100744198;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100744198(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100744D0C, 0, 0);
  }

  else
  {
    v7 = v4[17];

    v8 = swift_task_alloc();
    v4[21] = v8;
    *v8 = v6;
    v8[1] = sub_100744324;
    v9 = v4[12];

    return sub_1008488EC(v9);
  }
}

uint64_t sub_100744324()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_100744420, 0, 0);
}

uint64_t sub_100744420()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1007444FC;
  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_1007444FC()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_1007445F8, 0, 0);
}

uint64_t sub_1007445F8()
{
  v1 = v0[9];
  v2 = sub_1000BC4D4(&qword_101696C60, &qword_1013B8570);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[19];
    v4 = v0[12];
    v6 = v0[7];
    v5 = v0[8];
    v8 = v0[3];
    v7 = v0[4];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v9 = v0[1];

    return v9();
  }

  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];
  v15 = *v1;

  v16 = v1 + *(v2 + 48);
  v17 = sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0);
  sub_1000DD6A4(v16 + *(v17 + 48), v11);
  sub_100748840(v16, v14);
  v18 = (*(v13 + 48))(v14, 1, v12);
  v19 = v0[8];
  if (v18 == 1)
  {
    v20 = v0[4];
    sub_1000DD708(v0[8]);
    sub_10000B3A8(v20, &qword_101696C40, &unk_1013B8520);
LABEL_12:
    v24 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_1007444FC;
    v26 = v0[15];
    v27 = v0[13];
    v28 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v28, 0, 0, v27);
  }

  v21 = v0[7];
  sub_1000DD6A4(v0[4], v21);
  if (*v21 == *v19)
  {
    v23 = v0[8];
    sub_1000DD708(v0[7]);
    sub_1000DD708(v23);
    goto LABEL_12;
  }

  v22 = v0[2];

  return _swift_task_switch(sub_1007448C8, v22, 0);
}

uint64_t sub_1007448C8()
{
  *(v0 + 184) = *(*(v0 + 16) + 128);

  return _swift_task_switch(sub_10074493C, 0, 0);
}

uint64_t sub_10074493C()
{
  if (v0[23])
  {
    v1 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
    v13 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_100744AE0;
    v3 = v0[3];

    return v13(v3);
  }

  else
  {
    v5 = v0[8];
    v6 = v0[3];
    sub_1000DD708(v0[7]);
    sub_1000DD708(v5);
    v7 = type metadata accessor for XPCActivity.State();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10000B3A8(v6, &unk_10169BA88, &qword_101395670);
    v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_1007444FC;
    v10 = v0[15];
    v11 = v0[13];
    v12 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v12, 0, 0, v11);
  }
}

uint64_t sub_100744AE0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_100744BF8, 0, 0);
}

uint64_t sub_100744BF8()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_1000DD708(v0[7]);
  sub_1000DD708(v1);
  v3 = type metadata accessor for XPCActivity.State();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_10000B3A8(v2, &unk_10169BA88, &qword_101395670);
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1007444FC;
  v6 = v0[15];
  v7 = v0[13];
  v8 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v8, 0, 0, v7);
}

uint64_t sub_100744D0C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  v9 = v0[1];
  v10 = v0[20];

  return v9();
}

uint64_t sub_100744DD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100744E64();
}

uint64_t sub_100744E64()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_100744F4C;

  return daemon.getter();
}

uint64_t sub_100744F4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100748690(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100748690(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100745130;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100745130(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;

  v8 = *(v4 + 48);
  v9 = *(v4 + 16);
  if (v1)
  {

    v10 = sub_100745578;
  }

  else
  {

    *(v5 + 64) = a1;
    v10 = sub_100745298;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100745298()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  v6 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1007453E4;
  v8 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD00000000000003ALL, 0x800000010135E020, v8, &unk_1013B8508, v4, &unk_1013B8518, v5);
}

uint64_t sub_1007453E4(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1007454FC, v3, 0);
}

uint64_t sub_1007454FC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[2];

  v4 = *(v3 + 128);
  *(v3 + 128) = v1;

  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100745578()
{
  if (qword_101694850 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B090);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing ObservationStoreService.", v4, 2u);
  }

  v5 = *(v0 + 32);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100745694(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Priority();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = type metadata accessor for XPCActivity.Criteria();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v2[16] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v2[19] = v16;
  *v16 = v2;
  v16[1] = sub_1007458C8;

  return daemon.getter();
}

uint64_t sub_1007458C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FinderStateObserver();
  v9 = sub_100748690(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100748690(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver);
  *v6 = v12;
  v6[1] = sub_100745AAC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100745AAC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 168);
  v7 = *v2;

  v8 = *(v4 + 160);
  if (v1)
  {

    v9 = sub_100746990;
  }

  else
  {

    *(v5 + 176) = a1;
    v9 = sub_100745C00;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100745C00()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[22];

    return _swift_task_switch(sub_100745DF4, v1, 0);
  }

  else
  {
    if (qword_101694850 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B090);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109376;
      *(v6 + 8) = 1024;
      *(v6 + 10) = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "finderState:%{BOOL}d isLeechScannerEnabled:%{BOOL}d, prune activity unregistered.", v6, 0xEu);
    }

    v7 = v0[12];
    v8 = v0[13];
    v9 = v0[3];

    (*(v8 + 56))(v9, 1, 1, v7);
    v11 = v0[17];
    v10 = v0[18];
    v13 = v0[14];
    v12 = v0[15];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[7];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100745DF4()
{
  v1 = v0[22];
  v2 = sub_100748690(&qword_101696CC8, 255, type metadata accessor for FinderStateObserver);
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_100745F0C;
  v5 = v0[22];
  v6 = v0[18];
  v7 = v0[16];

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF74, v5, v7);
}

uint64_t sub_100745F0C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_100746024, 0, 0);
}

uint64_t sub_100746024()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for FinderStateInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
    *(v0 + 209) = 0;
    v3 = *(v0 + 176);

    return _swift_task_switch(sub_100746310, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = sub_100746160;
    v5 = *(v0 + 144);

    return sub_1008DC594();
  }
}

uint64_t sub_100746160(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_100746B30;
  }

  else
  {
    *(v4 + 208) = a1 & 1;
    v7 = sub_100746290;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100746290()
{
  sub_1000DD708(*(v0 + 144));
  *(v0 + 209) = *(v0 + 208);
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_100746310, v1, 0);
}

uint64_t sub_100746310()
{
  v1 = v0[22];
  v2 = sub_100748690(&qword_101696CC8, 255, type metadata accessor for FinderStateObserver);
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_100746424;
  v5 = v0[22];
  v7 = v0[16];
  v6 = v0[17];

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF14, v5, v7);
}

uint64_t sub_100746424()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_10074653C, 0, 0);
}

uint64_t sub_10074653C()
{
  v1 = *(v0 + 136);
  v2 = type metadata accessor for FinderStateInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 209);
  if (v3 != 1)
  {
    v13 = *v1;
    sub_1000DD708(v1);
    if (((v13 | v4) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    sub_100748620(*(v0 + 32), v16);
    v17 = (*(v15 + 48))(v16, 1, v14);
    v18 = *(v0 + 176);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    v21 = *(v0 + 88);
    if (v17 == 1)
    {
      v22 = *(v0 + 72);
      v23 = *(v0 + 80);
      v24 = *(v0 + 64);
      v43 = *(v0 + 56);
      v44 = *(v0 + 112);
      v25 = *(v0 + 40);
      v26 = *(v0 + 48);
      v45 = *(v0 + 24);
      sub_10000B3A8(v21, &qword_10169E370, &qword_1013BA3F0);
      (*(v22 + 104))(v23, enum case for XPCActivity.Priority.maintenance(_:), v24);
      sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
      v27 = *(v26 + 72);
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_101385D80;
      static XPCActivity.Criteria.Options.requiresClassC.getter();
      *(v0 + 16) = v29;
      sub_100748690(&qword_101696CE0, 255, &type metadata accessor for XPCActivity.Criteria.Options);
      sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
      sub_100359D10();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();

      (*(v20 + 32))(v45, v44, v19);
      (*(v20 + 56))(v45, 0, 1, v19);
    }

    else
    {
      v30 = *(v0 + 120);
      v31 = *(v0 + 24);
      v32 = *(v0 + 176);

      v33 = *(v20 + 32);
      v33(v30, v21, v19);
      v33(v31, v30, v19);
      (*(v20 + 56))(v31, 0, 1, v19);
    }

    goto LABEL_12;
  }

  sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = *(v0 + 176);
  if (qword_101694850 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B090);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 8) = 1024;
    *(v9 + 10) = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "finderState:%{BOOL}d isLeechScannerEnabled:%{BOOL}d, prune activity unregistered.", v9, 0xEu);
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 24);

  (*(v11 + 56))(v12, 1, 1, v10);
LABEL_12:
  v35 = *(v0 + 136);
  v34 = *(v0 + 144);
  v37 = *(v0 + 112);
  v36 = *(v0 + 120);
  v39 = *(v0 + 80);
  v38 = *(v0 + 88);
  v40 = *(v0 + 56);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100746990()
{
  if (qword_101694850 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B090);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109376;
    *(v4 + 8) = 1024;
    *(v4 + 10) = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "finderState:%{BOOL}d isLeechScannerEnabled:%{BOOL}d, prune activity unregistered.", v4, 0xEu);
  }

  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[3];

  (*(v6 + 56))(v7, 1, 1, v5);
  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100746B30()
{
  sub_1000DD708(*(v0 + 144));
  *(v0 + 209) = 0;
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_100746310, v1, 0);
}

uint64_t sub_100746BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100746C7C, 0, 0);
}

uint64_t sub_100746C7C()
{
  v42 = v0;
  if (qword_101694850 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[10] = v5;
  v0[11] = sub_1000076D4(v5, qword_10177B090);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  if (v9)
  {
    buf = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *buf = 136315138;
    sub_100748690(&qword_101696CD0, 255, &type metadata accessor for XPCActivity.State);
    v38 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v41);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v38, "Publisher prune activity state: %s.", buf, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];
  v6(v20, v0[4], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v24 = v0[5];
      v25 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v0[12] = 0;
      v0[13] = sub_1010749D4(v0[2]);

      v26 = sub_10074716C;
      v27 = v24;
      v28 = 0;
      goto LABEL_14;
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      v29 = v0[3];
      type metadata accessor for XPCActivity();
      sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
      v26 = sub_100747104;
      v27 = v30;
      v28 = v32;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:) && v23 != enum case for XPCActivity.State.invalidated(_:))
    {
      v33 = v0[7] + 8;
      v17(v0[8], v0[6]);
    }
  }

  v35 = v0[8];
  v34 = v0[9];

  v36 = v0[1];

  return v36();
}

uint64_t sub_100747104()
{
  v1 = *(v0 + 24);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1007488B0, 0, 0);
}

uint64_t sub_10074716C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = sub_1010D1AD8(*(v0 + 104));
  *(v0 + 112) = v1;
  *(v0 + 120) = v3;
  *(v0 + 184) = v4;
  if (v1)
  {
    v5 = sub_100747954;
  }

  else
  {
    v6 = *(v0 + 104);

    v5 = sub_100747204;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100747204()
{
  if (qword_101694A58 != -1)
  {
    swift_once();
  }

  sub_1000076D4(*(v0 + 80), qword_10177B5D8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    *(v5 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Scheduled observation purge removed %ld observations.", v5, 0xCu);
  }

  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_100747370;
  v8 = *(v0 + 40);

  return sub_1010CE4F4();
}

uint64_t sub_100747370(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_100747B1C;
  }

  else
  {
    v5 = sub_100747484;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100747484()
{
  v1 = v0[11];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted %lld redundant reconciled observations.", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_10074759C;
  v7 = v0[5];

  return sub_1010CCED0();
}

uint64_t sub_10074759C()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100747CDC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[21] = v4;
    *v4 = v3;
    v4[1] = sub_100747708;
    v5 = v3[5];

    return sub_1010D1C20();
  }
}

uint64_t sub_100747708()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v12 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_100747E9C;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v2 + 24);
    type metadata accessor for XPCActivity();
    sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v4 = sub_100747884;
    v5 = v8;
    v6 = v10;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100747884()
{
  v1 = *(v0 + 24);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1007478EC, 0, 0);
}

uint64_t sub_1007478EC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100747954()
{
  v1 = v0[13];

  v2 = v0[14];
  v3 = v0[11];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to run scheduled obsevation purge: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[3];
  type metadata accessor for XPCActivity();
  sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100747884, v11, v10);
}

uint64_t sub_100747B1C()
{
  v1 = v0[18];
  v2 = v0[11];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to run scheduled obsevation purge: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[3];
  type metadata accessor for XPCActivity();
  sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100747884, v10, v9);
}

uint64_t sub_100747CDC()
{
  v1 = v0[20];
  v2 = v0[11];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to run scheduled obsevation purge: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[3];
  type metadata accessor for XPCActivity();
  sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100747884, v10, v9);
}

uint64_t sub_100747E9C()
{
  v1 = v0[22];
  v2 = v0[11];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to run scheduled obsevation purge: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[3];
  type metadata accessor for XPCActivity();
  sub_100748690(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100747884, v10, v9);
}

uint64_t sub_100748080(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ObservationPruneSchedulerService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100748128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ObservationPruneSchedulerService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1007481EC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ObservationPruneSchedulerService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100748294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100743AD0();
}

uint64_t sub_100748320(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ObservationPruneSchedulerService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1007483C8()
{
  v1 = *v0;
  type metadata accessor for ObservationPruneSchedulerService();
  sub_100748690(&qword_1016B1010, v2, type metadata accessor for ObservationPruneSchedulerService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1007484C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_100745694(a1, a2);
}

uint64_t sub_100748570(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100746BAC(a1, a2, v7);
}

uint64_t sub_100748620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100748690(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1007486D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100743D40(a1, v4, v5, v6);
}

uint64_t sub_10074878C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100744DD4();
}

uint64_t sub_100748840(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100748978()
{
  result = qword_1016A8458;
  if (!qword_1016A8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8458);
  }

  return result;
}

unint64_t sub_100748A58()
{
  result = qword_1016A8460;
  if (!qword_1016A8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8460);
  }

  return result;
}

uint64_t sub_100748AAC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177B0A8);
  sub_1000076D4(v0, qword_10177B0A8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100748C08()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_10177B0C0);
  sub_1000076D4(v0, qword_10177B0C0);
  v1 = String.utf8Data.getter();
  v3 = v2;
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  return sub_100016590(v1, v3);
}

Swift::Int sub_100748CB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100748D24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100748D78@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101609CF0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100748E08@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101609D28, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100748E60(uint64_t a1)
{
  v2 = sub_100749B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100748E9C(uint64_t a1)
{
  v2 = sub_100749B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100748ED8@<X0>(uint64_t a1@<X8>)
{
  if (qword_101694860 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_1000076D4(v2, qword_10177B0C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_100748F80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10074988C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100748FDC(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  return sub_100749028(a1);
}

uint64_t sub_100749028(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A85E8, &qword_1013B87D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100749B0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v2 + 48);
  v17 = *(v2 + 32);
  v18 = v10;
  v19 = *(v2 + 64);
  v20 = *(v2 + 80);
  v11 = *(v2 + 16);
  v15 = *v2;
  v16 = v11;
  sub_100749BB4(v2, v13);
  sub_100749BEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  sub_100749C40(v13);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1007491D4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x4B664F6F4E78616DLL;
    if (a1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 == 2)
    {
      v3 = 0xD000000000000019;
    }

    v4 = 0xD000000000000016;
    if (!a1)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 7u)
  {
    v5 = 0xD000000000000028;
    if (a1 != 9)
    {
      v5 = 0xD00000000000002ALL;
    }

    if (a1 == 8)
    {
      return 0xD000000000000026;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 6)
    {
      v1 = 0xD000000000000028;
    }

    if (a1 == 5)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100749358(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8620, &qword_1013B89D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10074A67C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v26[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v26[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v26[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v26[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 1);
    v26[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 2);
    v26[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 3);
    v26[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[32];
    v26[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 5);
    v20 = *(v3 + 6);
    v26[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 7);
    v22 = *(v3 + 8);
    v26[6] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + 9);
    v24 = *(v3 + 10);
    v26[5] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100749608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100749E34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100749630(uint64_t a1)
{
  v2 = sub_10074A67C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074966C(uint64_t a1)
{
  v2 = sub_10074A67C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007496A8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10074A1A0(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100749750()
{
  type metadata accessor for OwnedDevicePublishPolicy();
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_10177B0D8 = result;
  return result;
}

unint64_t sub_1007497B4(uint64_t a1)
{
  *(a1 + 8) = sub_1007497E4();
  result = sub_100749838();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1007497E4()
{
  result = qword_1016A85C0;
  if (!qword_1016A85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85C0);
  }

  return result;
}

unint64_t sub_100749838()
{
  result = qword_1016A85C8;
  if (!qword_1016A85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85C8);
  }

  return result;
}

uint64_t sub_10074988C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A85D0, &qword_1013B87C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100749B0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  sub_100749B60();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v39;
  if (v39)
  {
    v29 = v42;
    v30 = v43;
    v44 = v41;
    v14 = v38;
    v16 = v35;
    v15 = v36;
    v31 = v34;
    v11.i32[0] = v33;
    v32 = vmovl_u8(v11);
    v17 = v37;
    v18 = v9;
    v19 = v40;
    (*(v6 + 8))(v18, v5);
    v20 = v17;
    v21 = v29;
    v22 = v30;
    v23.i64[1] = v32.i64[1];
    v23.i64[0] = v32.i64[0] & 0xFF01FF01FF01FF01;
    v32 = v23;
  }

  else
  {
    v24 = v9;
    v19 = 808334129;
    v25 = (*(v6 + 8))(v24, v5);
    v14 = 808334897;
    v22 = 0xE300000000000000;
    v25.i64[0] = 0x1000100010001;
    v32 = v25;
    v13 = 0xE400000000000000;
    v20 = 1;
    v21 = 3157561;
    v15 = 0x417E133800000000;
    v16 = 0x416E133800000000;
    v31 = 5;
    v44 = 0xE400000000000000;
  }

  v26 = v20 & 1;
  result = sub_100007BAC(a1);
  *a2 = vuzp1_s8(*v32.i8, *v32.i8).u32[0];
  *(a2 + 8) = v31;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v26;
  *(a2 + 40) = v14;
  *(a2 + 48) = v13;
  v27 = v44;
  *(a2 + 56) = v19;
  *(a2 + 64) = v27;
  *(a2 + 72) = v21;
  *(a2 + 80) = v22;
  return result;
}

unint64_t sub_100749B0C()
{
  result = qword_1016A85D8;
  if (!qword_1016A85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85D8);
  }

  return result;
}

unint64_t sub_100749B60()
{
  result = qword_1016A85E0;
  if (!qword_1016A85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85E0);
  }

  return result;
}

unint64_t sub_100749BEC()
{
  result = qword_1016A85F0;
  if (!qword_1016A85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85F0);
  }

  return result;
}

uint64_t sub_100749C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100749CC8(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_100749D30()
{
  result = qword_1016A85F8;
  if (!qword_1016A85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A85F8);
  }

  return result;
}

unint64_t sub_100749D88()
{
  result = qword_1016A8600;
  if (!qword_1016A8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8600);
  }

  return result;
}

unint64_t sub_100749DE0()
{
  result = qword_1016A8608;
  if (!qword_1016A8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8608);
  }

  return result;
}

uint64_t sub_100749E34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000017 && 0x800000010135E100 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010135E120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010135E140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010135E160 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B664F6F4E78616DLL && a2 == 0xEB00000000737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135E180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010135E1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000028 && 0x800000010135E1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000026 && 0x800000010135E1F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000028 && 0x800000010135E220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000010135E250 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_10074A1A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A8610, &qword_1013B89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10074A67C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v50[0] = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v50[0] = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v50[0] = 2;
  v61 = KeyedDecodingContainer.decode(_:forKey:)();
  v50[0] = 3;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v50[0] = 4;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v50[0] = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v50[0] = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v50[0] = 7;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v50[0] = 8;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v17;
  v50[0] = 9;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v18;
  v62 = 10;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v19;
  v34 = v11 & 1;
  v33 = v12 & 1;
  v20 = v61 & 1;
  HIDWORD(v32) = v61 & 1;
  v21 = v43 & 1;
  v61 = v43 & 1;
  v22 = v39 & 1;
  v43 = v39 & 1;
  (*(v6 + 8))(v9, v5);
  LOBYTE(v44) = v34;
  BYTE1(v44) = v33;
  BYTE2(v44) = v20;
  BYTE3(v44) = v21;
  v23 = v42;
  *(&v44 + 1) = v42;
  *&v45 = v14;
  *(&v45 + 1) = v16;
  LOBYTE(v46) = v22;
  v24 = v40;
  v25 = v41;
  *(&v46 + 1) = v40;
  *&v47 = v41;
  v26 = v37;
  v27 = v38;
  *(&v47 + 1) = v37;
  *&v48 = v38;
  v28 = v35;
  *(&v48 + 1) = v36;
  v49 = v35;
  sub_10074A6D0(&v44, v50);
  sub_100007BAC(a1);
  v50[0] = v34;
  v50[1] = v33;
  v50[2] = BYTE4(v32);
  v50[3] = v61;
  v51 = v23;
  v52 = v14;
  v53 = v16;
  v54 = v43;
  v55 = v24;
  v56 = v25;
  v57 = v26;
  v58 = v27;
  v59 = v36;
  v60 = v28;
  result = sub_100749C40(v50);
  v30 = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v30;
  *(a2 + 64) = v48;
  *(a2 + 80) = v49;
  v31 = v45;
  *a2 = v44;
  *(a2 + 16) = v31;
  return result;
}

unint64_t sub_10074A67C()
{
  result = qword_1016A8618;
  if (!qword_1016A8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8618);
  }

  return result;
}

unint64_t sub_10074A71C()
{
  result = qword_1016A8628;
  if (!qword_1016A8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8628);
  }

  return result;
}

unint64_t sub_10074A774()
{
  result = qword_1016A8630;
  if (!qword_1016A8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8630);
  }

  return result;
}

unint64_t sub_10074A7CC()
{
  result = qword_1016A8638;
  if (!qword_1016A8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8638);
  }

  return result;
}

__n128 sub_10074A828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10074A844(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_10074A88C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10074A934()
{
  sub_1002359B8(319, &qword_1016A86A8);
  if (v0 <= 0x3F)
  {
    sub_10074AAE0(319, &qword_1016A86B0, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    if (v1 <= 0x3F)
    {
      sub_10074AAE0(319, &qword_1016A86B8, type metadata accessor for AccessoryInfoResponseContent.Assets);
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &qword_1016BD350);
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016A86C0);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ServerStatusCode();
            if (v5 <= 0x3F)
            {
              sub_1002ECE54(319, &qword_1016A86C8, &unk_1016A86D0, "֫\n");
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

void sub_10074AAE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10074AB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10074AB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AccessoryInfoCapabilities(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryInfoCapabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[13])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryInfoCapabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10074ACB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10074AD00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10074AD8C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10074AE3C()
{
  sub_1002359B8(319, &qword_1016BD350);
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_10169C548);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016A8838);
      if (v2 <= 0x3F)
      {
        sub_10074AAE0(319, &qword_1016A8128, &type metadata accessor for URL);
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &unk_1016A0CD8);
          if (v4 <= 0x3F)
          {
            sub_1002ECE54(319, &qword_1016A8840, &qword_1016B0470, &qword_10138EB80);
            if (v5 <= 0x3F)
            {
              sub_1002359B8(319, &unk_1016A8848);
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

uint64_t sub_10074B008@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v82 = &v80 - v3;
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v86 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v85 = &v80 - v9;
  v10 = __chkstk_darwin(v8);
  v89 = &v80 - v11;
  v12 = __chkstk_darwin(v10);
  v90 = &v80 - v13;
  v14 = __chkstk_darwin(v12);
  v91 = &v80 - v15;
  v16 = __chkstk_darwin(v14);
  v92 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v93 = &v80 - v19;
  v20 = __chkstk_darwin(v18);
  v94 = &v80 - v21;
  v22 = __chkstk_darwin(v20);
  v95 = &v80 - v23;
  v24 = __chkstk_darwin(v22);
  v96 = &v80 - v25;
  v26 = __chkstk_darwin(v24);
  v97 = &v80 - v27;
  v28 = __chkstk_darwin(v26);
  v98 = &v80 - v29;
  v30 = __chkstk_darwin(v28);
  v88 = &v80 - v31;
  v32 = __chkstk_darwin(v30);
  v87 = &v80 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v80 - v35;
  __chkstk_darwin(v34);
  v99 = &v80 - v37;
  v38 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = &v80 - v40;
  URL.init(string:)();
  v42 = type metadata accessor for URL();
  v43 = *(v42 - 8);
  v44 = v43[6];
  result = v44(v36, 1, v42);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v46 = v43[4];
  v47 = v99;
  v84 = v43 + 4;
  v46(v99, v36, v42);
  v48 = v43[7];
  v48(v47, 0, 1, v42);
  v49 = v88;
  URL.init(string:)();
  result = v44(v49, 1, v42);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v50 = v87;
  v81 = v46;
  v46(v87, v49, v42);
  v48(v50, 0, 1, v42);
  v88 = 0x800000010135E310;
  *v41 = 0xD000000000000017;
  *(v41 + 1) = 0x800000010135E2D0;
  *(v41 + 2) = 0x6E6F796E6143;
  *(v41 + 3) = 0xE600000000000000;
  strcpy(v41 + 32, "Endurace CF7");
  v41[45] = 0;
  *(v41 + 23) = -5120;
  *(v41 + 24) = 0;
  *(v41 + 56) = xmmword_1013B8AE0;
  *(v41 + 72) = xmmword_1013B8AF0;
  v41[88] = 0;
  v51 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  sub_1000D2AD8(v99, &v41[v51[11]], &unk_101696AC0, &qword_101390A60);
  sub_1000D2AD8(v50, &v41[v51[12]], &unk_101696AC0, &qword_101390A60);
  v52 = &v41[v51[13]];
  *v52 = 0;
  v52[8] = 0;
  v53 = &v41[v51[14]];
  *v53 = 0x4034000000000000;
  v53[8] = 0;
  v54 = &v41[v51[15]];
  *v54 = 0xD000000000000012;
  *(v54 + 1) = 0x800000010135E2F0;
  *&v41[v51[16]] = &off_101608A68;
  v55 = &v41[v51[17]];
  v56 = v88;
  *v55 = 0xD000000000000010;
  *(v55 + 1) = v56;
  *&v41[v51[18]] = &off_101608A98;
  v57 = &v41[v51[19]];
  *v57 = 0;
  *(v57 + 1) = 0;
  v57[16] = 1;
  v58 = &v41[v51[20]];
  *v58 = 0;
  *(v58 + 1) = 0;
  v58[16] = 1;
  (*(*(v51 - 1) + 56))(v41, 0, 1, v51);
  v59 = v98;
  URL.init(string:)();
  result = v44(v59, 1, v42);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v60 = v97;
  URL.init(string:)();
  result = v44(v60, 1, v42);
  v62 = v85;
  v61 = v86;
  if (result == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v63 = v96;
  URL.init(string:)();
  result = v44(v63, 1, v42);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v64 = v95;
  URL.init(string:)();
  result = v44(v64, 1, v42);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v65 = v94;
  URL.init(string:)();
  result = v44(v65, 1, v42);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v66 = v93;
  URL.init(string:)();
  result = v44(v66, 1, v42);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v67 = v92;
  URL.init(string:)();
  result = v44(v67, 1, v42);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v68 = v91;
  URL.init(string:)();
  result = v44(v68, 1, v42);
  if (result == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v69 = v90;
  URL.init(string:)();
  result = v44(v69, 1, v42);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v70 = v89;
  URL.init(string:)();
  result = v44(v70, 1, v42);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  URL.init(string:)();
  result = v44(v62, 1, v42);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  URL.init(string:)();
  result = v44(v61, 1, v42);
  if (result != 1)
  {
    v102 = 1;
    v71 = v82;
    v72 = v81;
    v81(v82, v98, v42);
    v73 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
    v72(v71 + v73[5], v97, v42);
    v72(v71 + v73[6], v96, v42);
    v72(v71 + v73[7], v95, v42);
    v72(v71 + v73[8], v94, v42);
    v72(v71 + v73[9], v93, v42);
    v72(v71 + v73[10], v92, v42);
    v72(v71 + v73[11], v91, v42);
    v72(v71 + v73[12], v90, v42);
    v72(v71 + v73[13], v89, v42);
    v72(v71 + v73[14], v62, v42);
    v72(v71 + v73[15], v61, v42);
    (*(*(v73 - 1) + 56))(v71, 0, 1, v73);
    v74 = type metadata accessor for AccessoryInfoResponseContent(0);
    v75 = v74[10];
    v76 = enum case for ServerStatusCode.success(_:);
    v77 = type metadata accessor for ServerStatusCode();
    v78 = v83;
    (*(*(v77 - 8) + 104))(v83 + v75, v76, v77);
    *v78 = 0;
    *(v78 + 8) = v102;
    *(v78 + 9) = *v101;
    *(v78 + 12) = *&v101[3];
    *(v78 + 16) = 0x64695F6B636F6DLL;
    *(v78 + 24) = 0xE700000000000000;
    *(v78 + 32) = 1;
    *(v78 + 33) = 0x202020202020202;
    *(v78 + 41) = *v100;
    *(v78 + 44) = *&v100[3];
    *(v78 + 48) = 0u;
    *(v78 + 64) = 0u;
    *(v78 + 80) = 0x101010101010101;
    *(v78 + 92) = 0;
    *(v78 + 88) = 16843009;
    sub_1000D2AD8(v41, v78 + v74[6], &qword_1016A62E8, &qword_1013B3CB0);
    result = sub_1000D2AD8(v71, v78 + v74[7], &qword_1016A62E0, &unk_1013B8C30);
    *(v78 + v74[8]) = xmmword_1013B8B00;
    v79 = (v78 + v74[9]);
    v79[1] = 0u;
    v79[2] = 0u;
    *v79 = 0u;
    *(v78 + v74[11]) = 0;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10074BC38(unint64_t a1, unint64_t a2)
{
  v2 = a1 & 0x10000;
  if (a1)
  {
    v3 = v2 == 0;
    if ((a1 & 0x100) == 0)
    {
      v4 = 5;
      if (v3)
      {
        v4 = 1;
      }

      if ((a1 & 0x1000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_16:
      v4 |= 8uLL;
      goto LABEL_17;
    }

    v4 = 7;
    v5 = 3;
  }

  else
  {
    if ((a1 & 0x100) == 0)
    {
      v4 = v2 >> 14;
      if ((a1 & 0x1000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v3 = v2 == 0;
    v4 = 6;
    v5 = 2;
  }

  if (v3)
  {
    v4 = v5;
  }

  if ((a1 & 0x1000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v6 = vdupq_n_s64(a1);
  v7 = vandq_s8(vbicq_s8(vshlq_u64(v6, xmmword_1013B8B20), vceqq_s64(vandq_s8(v6, xmmword_1013B8B10), xmmword_1013B8B30)), xmmword_1013B8B40);
  v8 = vdupq_laneq_s64(v7, 1);
  if ((a1 & 0xFF000000000000) == 0x2000000000000)
  {
    v9 = 0;
  }

  else
  {
    v9 = (a1 >> 41) & 0x80;
  }

  v10 = vorrq_s8(v7, v8).u64[0] | v9 | v4;
  v11 = v10 | 0x100;
  if ((a1 & 0x100000000000000) == 0)
  {
    v11 = v10;
  }

  if (HIBYTE(a1) != 2)
  {
    v10 = v11;
  }

  v12 = v10 | 0x400;
  if ((a2 & 1) == 0)
  {
    v12 = v10;
  }

  if (a2 != 2)
  {
    v10 = v12;
  }

  v13 = vdupq_n_s64(a2);
  v14.i64[0] = vshlq_u64(v13, xmmword_1013B8B80).u64[0];
  v14.i64[1] = vshlq_u64(*&v13, xmmword_1013B8B90).i64[1];
  v15 = vorrq_s8(vandq_s8(vbicq_s8(v14, vceqq_s64(vandq_s8(v13, xmmword_1013B8B50), xmmword_1013B8BB0)), xmmword_1013B8BC0), vandq_s8(vbicq_s8(vshlq_u64(v13, xmmword_1013B8B70), vceqq_s64(vandq_s8(v13, xmmword_1013B8B60), xmmword_1013B8BA0)), xmmword_1013B8BD0));
  return *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | v10;
}

uint64_t sub_10074BDB4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8A88, &qword_1013B9478);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758CA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_10074BF3C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(*&v3);
}

Swift::Int sub_10074BF8C(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  Hasher._combine(_:)(*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher._finalize()();
}

uint64_t sub_10074C008()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_10074C020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10074C0E8(uint64_t a1)
{
  v2 = sub_100758CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074C124(uint64_t a1)
{
  v2 = sub_100758CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10074C160(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100755AF4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_10074C18C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10074BDB4(a1);
}

Swift::Int sub_10074C1B8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  Hasher._combine(_:)(*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

unint64_t sub_10074C25C()
{
  result = qword_1016A88B8;
  if (!qword_1016A88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88B8);
  }

  return result;
}

Swift::Int sub_10074C2B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10074C314()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10074C360@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101609D60, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10074C3E0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101609D98, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10074C438(uint64_t a1)
{
  v2 = sub_100759B70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074C474(uint64_t a1)
{
  v2 = sub_100759B70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10074C4B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1000BC4D4(&qword_1016A8C70, &qword_1013B9E88);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = type metadata accessor for AccessoryInfoResponseType(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v24 - v12);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100759B70();
  v15 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v25 = v11;
    v26 = v13;
    v30 = v7;
    v16 = v28;
    v17 = v3;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v6;
    v19 = a1[4];
    sub_1000035D0(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    v20 = v16;
    if (v18 == 200)
    {
      sub_1000035D0(v29, v29[3]);
      type metadata accessor for AccessoryInfoResponseContent(0);
      sub_100751E3C(&qword_1016A8C50, type metadata accessor for AccessoryInfoResponseContent);
      v21 = v25;
      dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
      (*(v20 + 8))(v24, v17);
      swift_storeEnumTagMultiPayload();
      v22 = v26;
      sub_100757BEC(v21, v26, type metadata accessor for AccessoryInfoResponseType);
    }

    else
    {
      (*(v16 + 8))(v24, v17);
      v22 = v26;
      *v26 = v18;
      swift_storeEnumTagMultiPayload();
    }

    sub_100007BAC(v29);
    sub_100757BEC(v22, v27, type metadata accessor for AccessoryInfoResponseType);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10074C814(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryInfoResponseContent(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryInfoResponseType(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100758AD4(v2, v11, type metadata accessor for AccessoryInfoResponseType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v11;
    v14 = type metadata accessor for GenericError();
    sub_100751E3C(&qword_1016978C0, &type metadata accessor for GenericError);
    swift_allocError();
    v16 = v15;
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v21, "Server error: ");
    HIBYTE(v21[1]) = -18;
    v22[6] = v13;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18 = v21[1];
    *v16 = v21[0];
    v16[1] = v18;
    (*(*(v14 - 8) + 104))(v16, enum case for GenericError.error(_:), v14);
    swift_willThrow();
  }

  else
  {
    sub_100757BEC(v11, v7, type metadata accessor for AccessoryInfoResponseContent);
    sub_10015049C(v22, v22[3]);
    sub_100751E3C(&qword_1016A8C80, type metadata accessor for AccessoryInfoResponseContent);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_100757B8C(v7, type metadata accessor for AccessoryInfoResponseContent);
  }

  return sub_100007BAC(v22);
}

uint64_t sub_10074CB24()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryInfoResponseContent(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AccessoryInfoResponseType(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100758AD4(v1, v9, type metadata accessor for AccessoryInfoResponseType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v17 = 0x6572756C6961662ELL;
    v18 = 0xE900000000000028;
    v16[1] = v10;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    return v17;
  }

  else
  {
    sub_100757BEC(v9, v5, type metadata accessor for AccessoryInfoResponseContent);
    v17 = 0x737365636375732ELL;
    v18 = 0xE900000000000028;
    String.append(_:)(v5[1]);
    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v13 = v17;
    sub_100757B8C(v5, type metadata accessor for AccessoryInfoResponseContent);
  }

  return v13;
}

uint64_t sub_10074CCF8(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A8C58, &qword_1013B9E80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007596E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000BC4D4(&qword_1016A8C18, &qword_1013B9E68);
  sub_100759AD4(&qword_1016A8C60, &qword_1016A8C68);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10074CE8C(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A8C88, &qword_1013B9E90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007599E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000BC4D4(&qword_1016A8C40, &qword_1013B9E78);
  sub_100759A38(&qword_1016A8C90, &qword_1016A8C80);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_10074D020(char a1)
{
  result = 0x7250796D646E6966;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6341454C45487369;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x6E6564646968;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0x6761547269417369;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x5565636166727573;
      break;
    case 11:
      result = 0x496B726F7774656ELL;
      break;
    case 12:
      result = 0x70756B6F6F4C6E73;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10074D1B8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8A28, &qword_1013B9448);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758A2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v29[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v29[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 32);
    v29[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 33);
    v29[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 34);
    v29[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 35);
    v29[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 36);
    v29[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 37);
    v29[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 38);
    v29[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 39);
    v29[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 40);
    v29[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v3[6];
    v25 = v3[7];
    v29[4] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = v3[8];
    v27 = v3[9];
    v29[3] = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10074D4B4()
{
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  String.hash(into:)();
  v4 = *(v0 + 32);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = v4 & 1;
  }

  Hasher._combine(_:)(v5);
  v6 = *(v0 + 33);
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = v6 & 1;
  }

  Hasher._combine(_:)(v7);
  v8 = *(v0 + 34);
  if (v8 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = v8 & 1;
  }

  Hasher._combine(_:)(v9);
  v10 = *(v0 + 35);
  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v11 = v10 & 1;
  }

  Hasher._combine(_:)(v11);
  v12 = *(v0 + 36);
  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = v12 & 1;
  }

  Hasher._combine(_:)(v13);
  v14 = *(v0 + 37);
  if (v14 == 2)
  {
    v15 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v15 = v14 & 1;
  }

  Hasher._combine(_:)(v15);
  v16 = *(v0 + 38);
  if (v16 == 2)
  {
    v17 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v17 = v16 & 1;
  }

  Hasher._combine(_:)(v17);
  v18 = *(v0 + 39);
  if (v18 == 2)
  {
    v19 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v19 = v18 & 1;
  }

  Hasher._combine(_:)(v19);
  v20 = *(v0 + 40);
  if (v20 == 2)
  {
    v21 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v21 = v20 & 1;
  }

  Hasher._combine(_:)(v21);
  if (!*(v0 + 56))
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 72))
    {
      goto LABEL_33;
    }

LABEL_37:
    Hasher._combine(_:)(0);
    return;
  }

  v22 = *(v0 + 48);
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v0 + 72))
  {
    goto LABEL_37;
  }

LABEL_33:
  v23 = *(v0 + 64);
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_10074D6D8(char a1)
{
  result = 0x6E756F5379616C70;
  switch(a1)
  {
    case 1:
      result = 0x6C656363417475;
      break;
    case 2:
      v3 = 1281582702;
      goto LABEL_9;
    case 3:
      v3 = 1281715298;
LABEL_9:
      result = v3 | 0x756B6F6F00000000;
      break;
    case 4:
      result = 0x65646F4D74736F6CLL;
      break;
    case 5:
      result = 0x6857796669746F6ELL;
      break;
    case 6:
      result = 0x7449656D616E6572;
      break;
    case 7:
      result = 0x65676E6172;
      break;
    case 8:
      result = 0x6E69646E69467462;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 1886544245;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x325665676E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10074D844(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8A10, &qword_1013B9438);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007589D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[31] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[30] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[29] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[28] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[27] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[26] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[25] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[24] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[15] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[14] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[12] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_10074DB48(uint64_t a1, unint64_t a2, unint64_t a3)
{
  Hasher._combine(_:)(a2 & 1);
  Hasher._combine(_:)(BYTE1(a2) & 1);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  Hasher._combine(_:)(BYTE3(a2) & 1);
  if ((a2 & 0xFF00000000) == 0x200000000)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = HIDWORD(a2) & 1;
  }

  Hasher._combine(_:)(v5);
  if ((a2 & 0xFF0000000000) == 0x20000000000)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = (a2 >> 40) & 1;
  }

  Hasher._combine(_:)(v6);
  if ((a2 & 0xFF000000000000) == 0x2000000000000)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = HIWORD(a2) & 1;
  }

  Hasher._combine(_:)(v7);
  if (HIBYTE(a2) == 2)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = HIBYTE(a2) & 1;
  }

  Hasher._combine(_:)(v8);
  if (a3 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = a3 & 1;
  }

  Hasher._combine(_:)(v9);
  if ((a3 & 0xFF00) == 0x200)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = (a3 >> 8) & 1;
  }

  Hasher._combine(_:)(v10);
  if ((a3 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v11 = WORD1(a3) & 1;
  }

  Hasher._combine(_:)(v11);
  if ((a3 & 0xFF000000) == 0x2000000)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = BYTE3(a3) & 1;
  }

  Hasher._combine(_:)(v12);
  if ((a3 & 0xFF00000000) == 0x200000000)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = HIDWORD(a3) & 1;
  }

  Hasher._combine(_:)(v13);
}

uint64_t sub_10074DD3C(uint64_t a1)
{
  v2 = sub_1007596E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074DD78(uint64_t a1)
{
  v2 = sub_1007596E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10074DDB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100755CA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10074DDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746375646F7270 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10074DE84(uint64_t a1)
{
  v2 = sub_1007599E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074DEC0(uint64_t a1)
{
  v2 = sub_1007599E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10074DEFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100755E60(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10074DF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10075601C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10074DF74(uint64_t a1)
{
  v2 = sub_100758A2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074DFB0(uint64_t a1)
{
  v2 = sub_100758A2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10074DFEC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10075644C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_10074E050()
{
  Hasher.init(_seed:)();
  sub_10074D4B4();
  return Hasher._finalize()();
}

Swift::Int sub_10074E094()
{
  Hasher.init(_seed:)();
  sub_10074D4B4();
  return Hasher._finalize()();
}

uint64_t sub_10074E0D0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100753FD8(v8, v9) & 1;
}

uint64_t sub_10074E134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007569D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10074E15C(uint64_t a1)
{
  v2 = sub_1007589D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074E198(uint64_t a1)
{
  v2 = sub_1007589D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10074E1D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100756E00(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 1) = BYTE1(result) & 1;
    *(a2 + 2) = BYTE2(result) & 1;
    *(a2 + 3) = BYTE3(result) & 1;
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
    *(a2 + 7) = HIBYTE(result);
    *(a2 + 8) = v5;
    *(a2 + 10) = BYTE2(v5);
    *(a2 + 11) = BYTE3(v5);
    *(a2 + 12) = BYTE4(v5);
  }

  return result;
}

uint64_t sub_10074E260(void *a1)
{
  v2 = 256;
  if ((*(v1 + 1) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((*(v1 + 2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((*(v1 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = (*(v1 + 4) << 32) | (*(v1 + 5) << 40) | (*(v1 + 6) << 48) | *v1 & 1 | v2 | v3 | v4 | (*(v1 + 7) << 56);
  v6 = *(v1 + 8) | (*(v1 + 12) << 32);
  return sub_10074D844(a1);
}

Swift::Int sub_10074E2E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 2);
  v9 = v0[12];
  v10 = v0[7];
  Hasher.init(_seed:)();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  sub_10074DB48(v15, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v11 | v12 | v13 | (v10 << 56), v8 | (v9 << 32));
  return Hasher._finalize()();
}

void sub_10074E3B8(uint64_t a1)
{
  v2 = 256;
  if ((*(v1 + 1) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((*(v1 + 2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((*(v1 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  sub_10074DB48(a1, (*(v1 + 4) << 32) | (*(v1 + 5) << 40) | (*(v1 + 6) << 48) | *v1 & 1 | v2 | v3 | v4 | (*(v1 + 7) << 56), *(v1 + 8) | (*(v1 + 12) << 32));
}

Swift::Int sub_10074E42C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 2);
  v9 = v0[12];
  v10 = v0[7];
  Hasher.init(_seed:)();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  sub_10074DB48(v15, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v11 | v12 | v13 | (v10 << 56), v8 | (v9 << 32));
  return Hasher._finalize()();
}

uint64_t sub_10074E4F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = 256;
  if (*(a1 + 1))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x10000;
  if (*(a1 + 2))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if (*(a1 + 3))
  {
    v10 = 0x1000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48) | *a1 & 1 | v6 | v8 | v10 | (*(a1 + 7) << 56);
  if ((*(a2 + 1) & 1) == 0)
  {
    v5 = 0;
  }

  if ((*(a2 + 2) & 1) == 0)
  {
    v7 = 0;
  }

  if ((*(a2 + 3) & 1) == 0)
  {
    v9 = 0;
  }

  v12 = (*(a2 + 4) << 32) | (*(a2 + 5) << 40) | (*(a2 + 6) << 48) | *a2 & 1 | v5 | v7 | v9 | (*(a2 + 7) << 56);
  v13 = *(a2 + 8) | (*(a2 + 12) << 32);

  return sub_1007542C0(v11, v3 | (v4 << 32), v12, v13);
}

uint64_t sub_10074E770(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8930, &qword_1013B93F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1007576AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 1);
  v13 = *(v3 + 2);
  v20[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v20[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = *(v3 + 5);
  v17 = *(v3 + 6);
  v20[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = v3[56];
  v20[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

void sub_10074E950()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  String.hash(into:)();
  if (*(v0 + 48))
  {
    v5 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = *(v0 + 56);
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = v6 & 1;
  }

  Hasher._combine(_:)(v7);
}

Swift::Int sub_10074E9F0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  String.hash(into:)();
  if (*(v0 + 48))
  {
    v5 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = *(v0 + 56);
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = v6 & 1;
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

unint64_t sub_10074EABC(char a1)
{
  result = 0x6D614E6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x5479726574746162;
      break;
    case 4:
      result = 0x79726F6765746163;
      break;
    case 6:
      result = 0x52746C7561666564;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 15:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      v3 = 5;
      goto LABEL_16;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x726F4D6E7261656CLL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      v3 = 10;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_10074ECC0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8A68, &qword_1013B9468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758B3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v44) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v44) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v44) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 48);
    v18 = *(v3 + 49);
    LOBYTE(v44) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[7];
    LOBYTE(v44) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[8];
    v21 = v3[9];
    LOBYTE(v44) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[10];
    v23 = *(v3 + 88);
    LOBYTE(v44) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    v25 = v24[11];
    LOBYTE(v44) = 7;
    type metadata accessor for URL();
    sub_100751E3C(&qword_1016A8188, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = v24[12];
    LOBYTE(v44) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = (v3 + v24[13]);
    v28 = *v27;
    v29 = *(v27 + 8);
    LOBYTE(v44) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = (v3 + v24[14]);
    v31 = *v30;
    v32 = *(v30 + 8);
    LOBYTE(v44) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = (v3 + v24[15]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v44) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v44 = *(v3 + v24[16]);
    v46 = 12;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_100758BE4(&qword_1016B2860);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36 = (v3 + v24[17]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v44) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v44 = *(v3 + v24[18]);
    v46 = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39 = (v3 + v24[19]);
    v40 = *(v39 + 16);
    v44 = *v39;
    v45 = v40;
    v46 = 15;
    sub_100758C50();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v41 = (v3 + v24[20]);
    v42 = *(v41 + 16);
    v44 = *v41;
    v45 = v42;
    v46 = 16;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10074F1C0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  if (v0[1])
  {
    v13 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v14 = v0[2];
  v15 = v0[3];
  String.hash(into:)();
  v16 = v0[4];
  v17 = v0[5];
  String.hash(into:)();
  if (*(v0 + 49))
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v0 + 48);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v0[7]);
  if (v0[9])
  {
    v19 = v0[8];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 88) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v0[10];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v20);
  }

  v21 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  sub_1000D2A70(v0 + v21[11], v12, &unk_101696AC0, &qword_101390A60);
  v22 = *(v3 + 48);
  if (v22(v12, 1, v2) == 1)
  {
    v23 = v3;
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = *(v3 + 32);
    v60 = v10;
    v25 = v61;
    v24(v61, v12, v2);
    Hasher._combine(_:)(1u);
    sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    v23 = v3;
    v26 = v25;
    v10 = v60;
    (*(v3 + 8))(v26, v2);
  }

  sub_1000D2A70(v0 + v21[12], v10, &unk_101696AC0, &qword_101390A60);
  if (v22(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v27 = v61;
    (*(v23 + 32))(v61, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v23 + 8))(v27, v2);
  }

  v28 = v0 + v21[13];
  if (*(v28 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v29 = *v28;
    Hasher._combine(_:)(1u);
    if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    Hasher._combine(_:)(v30);
  }

  v31 = v0 + v21[14];
  if (*(v31 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v32 = *v31;
    Hasher._combine(_:)(1u);
    if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    Hasher._combine(_:)(v33);
  }

  v34 = (v0 + v21[15]);
  v35 = *v34;
  v36 = v34[1];
  String.hash(into:)();
  v37 = *(v0 + v21[16]);
  if (v37)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v37 + 16));
    v38 = *(v37 + 16);
    if (v38)
    {
      v39 = (v37 + 40);
      do
      {
        v40 = *(v39 - 1);
        v41 = *v39;

        String.hash(into:)();

        v39 += 2;
        --v38;
      }

      while (v38);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v42 = (v1 + v21[17]);
  v43 = *v42;
  v44 = v42[1];
  String.hash(into:)();
  v45 = *(v1 + v21[18]);
  if (v45)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v45 + 16));
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = (v45 + 40);
      do
      {
        v48 = *(v47 - 1);
        v49 = *v47;

        String.hash(into:)();

        v47 += 2;
        --v46;
      }

      while (v46);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v50 = v1 + v21[19];
  if (*(v50 + 16))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v52 = *v50;
    v51 = *(v50 + 8);
    Hasher._combine(_:)(1u);
    if ((v52 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    Hasher._combine(_:)(v53);
    if ((v51 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v54 = v51;
    }

    else
    {
      v54 = 0;
    }

    Hasher._combine(_:)(v54);
  }

  v55 = v1 + v21[20];
  if (*(v55 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v57 = *v55;
    v56 = *(v55 + 8);
    Hasher._combine(_:)(1u);
    if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    Hasher._combine(_:)(v58);
    if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v59 = v56;
    }

    else
    {
      v59 = 0;
    }

    Hasher._combine(_:)(v59);
  }
}

uint64_t sub_10074F7E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v67 - v9;
  v73 = sub_1000BC4D4(&qword_1016A8A48, &qword_1013B9460);
  v71 = *(v73 - 8);
  v11 = *(v71 + 64);
  __chkstk_darwin(v73);
  v13 = &v67 - v12;
  v14 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v18 = a1[4];
  v74 = a1;
  sub_1000035D0(a1, v19);
  sub_100758B3C();
  v72 = v13;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v74);
  }

  v20 = v10;
  v21 = v8;
  v23 = v71;
  v22 = v72;
  v69 = v17;
  LOBYTE(v75) = 0;
  v24 = v73;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v69;
  *v69 = v25;
  v27[1] = v28;
  LOBYTE(v75) = 1;
  v27[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v27[3] = v29;
  LOBYTE(v75) = 2;
  v67 = 0;
  v27[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v27[5] = v30;
  LOBYTE(v75) = 3;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v27 + 48) = v31;
  *(v27 + 49) = HIBYTE(v31) & 1;
  LOBYTE(v75) = 4;
  v27[7] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v75) = 5;
  v27[8] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27[9] = v38;
  LOBYTE(v75) = 6;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = 0;
  v27[10] = v39;
  *(v27 + 88) = v40 & 1;
  type metadata accessor for URL();
  LOBYTE(v75) = 7;
  sub_100751E3C(&qword_1016A8178, &type metadata accessor for URL);
  v41 = v68;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v68 = v41;
  if (v41)
  {
    (*(v23 + 8))(v22, v24);
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  else
  {
    sub_1000D2AD8(v20, v69 + v14[11], &unk_101696AC0, &qword_101390A60);
    LOBYTE(v75) = 8;
    v45 = v68;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v68 = v45;
    if (v45)
    {
      (*(v23 + 8))(v22, v24);
      v43 = 0;
      v44 = 0;
      v42 = 1;
    }

    else
    {
      sub_1000D2AD8(v21, v69 + v14[12], &unk_101696AC0, &qword_101390A60);
      LOBYTE(v75) = 9;
      v46 = v68;
      v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v68 = v46;
      if (v46)
      {
        (*(v23 + 8))(v72, v73);
        v44 = 0;
        v42 = 1;
        v43 = 1;
      }

      else
      {
        v49 = v69 + v14[13];
        *v49 = v47;
        v49[8] = v48 & 1;
        LOBYTE(v75) = 10;
        v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v68 = 0;
        v51 = v69 + v14[14];
        *v51 = v50;
        v51[8] = v52 & 1;
        LOBYTE(v75) = 11;
        v53 = KeyedDecodingContainer.decode(_:forKey:)();
        v68 = 0;
        v56 = (v69 + v14[15]);
        *v56 = v53;
        v56[1] = v54;
        sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
        v77 = 12;
        sub_100758BE4(&qword_1016A8A58);
        v57 = v68;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v68 = v57;
        if (!v57)
        {
          *(v69 + v14[16]) = v75;
          LOBYTE(v75) = 13;
          v58 = KeyedDecodingContainer.decode(_:forKey:)();
          v59 = (v69 + v14[17]);
          *v59 = v58;
          v59[1] = v60;
          v77 = 14;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          *(v69 + v14[18]) = v75;
          v77 = 15;
          sub_100758B90();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v61 = v76;
          v62 = v69 + v14[19];
          *v62 = v75;
          v62[16] = v61;
          v77 = 16;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v23 + 8))(v72, v73);
          v63 = v76;
          v65 = v69;
          v64 = v70;
          v66 = v69 + v14[20];
          *v66 = v75;
          v66[16] = v63;
          sub_100758AD4(v65, v64, type metadata accessor for AccessoryInfoResponseContent.Configuration);
          sub_100007BAC(v74);
          return sub_100757B8C(v65, type metadata accessor for AccessoryInfoResponseContent.Configuration);
        }

        (*(v23 + 8))(v72, v73);
        v42 = 1;
        v43 = 1;
        v44 = 1;
      }
    }
  }

  v55 = v69;
  v32 = v67;
  sub_100007BAC(v74);
  v33 = v55[1];

  if (!v32)
  {
    v36 = v55[3];
  }

  v34 = v55[5];

  v37 = v55[9];

  if (v42)
  {
    result = sub_10000B3A8(v55 + v14[11], &unk_101696AC0, &qword_101390A60);
    if (v43)
    {
      goto LABEL_13;
    }

LABEL_8:
    if (!v44)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!v43)
  {
    goto LABEL_8;
  }

LABEL_13:
  result = sub_10000B3A8(v55 + v14[12], &unk_101696AC0, &qword_101390A60);
  if (v44)
  {
LABEL_9:
    v35 = *(v55 + v14[15] + 8);
  }

  return result;
}

unint64_t sub_100750194(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v4 = 0xD00000000000001BLL;
    v5 = 0x726F4D6E7261656CLL;
    if (a1 != 10)
    {
      v5 = 0xD00000000000001BLL;
    }

    if (a1 != 9)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000019;
    if (a1 != 7)
    {
      v6 = 0x726F4D6E7261656CLL;
    }

    if (a1 == 6)
    {
      v6 = 0x726F4D6E7261656CLL;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x48746C7561666564;
    v2 = 0x4C746C7561666564;
    if (a1 != 1)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v2;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000011;
    }
  }
}

uint64_t sub_10075036C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A8A40, &qword_1013B9458);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758A80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22[31] = 0;
  type metadata accessor for URL();
  sub_100751E3C(&qword_1016A8188, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
    v10 = v9[5];
    v22[30] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v9[6];
    v22[29] = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v9[7];
    v22[28] = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v9[8];
    v22[27] = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v9[9];
    v22[26] = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v9[10];
    v22[25] = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v9[11];
    v22[24] = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v9[12];
    v22[15] = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v9[13];
    v22[14] = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v9[14];
    v22[13] = 10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v9[15];
    v22[12] = 11;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100750744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v77 = type metadata accessor for URL();
  v72 = *(v77 - 8);
  v3 = *(v72 + 64);
  v4 = __chkstk_darwin(v77);
  v63 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v64 = v58 - v7;
  v8 = __chkstk_darwin(v6);
  v65 = v58 - v9;
  v10 = __chkstk_darwin(v8);
  v66 = v58 - v11;
  v12 = __chkstk_darwin(v10);
  v67 = v58 - v13;
  v14 = __chkstk_darwin(v12);
  v68 = v58 - v15;
  v16 = __chkstk_darwin(v14);
  v69 = v58 - v17;
  v18 = __chkstk_darwin(v16);
  v70 = v58 - v19;
  v20 = __chkstk_darwin(v18);
  v71 = v58 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v58 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v58 - v26;
  __chkstk_darwin(v25);
  v73 = v58 - v28;
  v29 = sub_1000BC4D4(&qword_1016A8A30, &qword_1013B9450);
  v74 = *(v29 - 8);
  v75 = v29;
  v30 = *(v74 + 64);
  __chkstk_darwin(v29);
  v32 = v58 - v31;
  v33 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758A80();
  v76 = v32;
  v38 = v78;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    return sub_100007BAC(a1);
  }

  v39 = v27;
  v59 = v24;
  v60 = v33;
  v61 = v36;
  v78 = a1;
  v90 = 0;
  v40 = sub_100751E3C(&qword_1016A8178, &type metadata accessor for URL);
  v41 = v73;
  v42 = v77;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v72 + 32;
  v44 = v61;
  v73 = *(v72 + 32);
  (v73)(v61, v41, v42);
  v89 = 1;
  v45 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v60;
  v47 = &v44[v60[5]];
  v58[0] = v43;
  (v73)(v47, v45, v42);
  v88 = 2;
  v48 = v59;
  v58[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v73)(&v44[v46[6]], v48, v42);
  v87 = 3;
  v49 = v71;
  v59 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v73)(&v44[v46[7]], v49, v42);
  v86 = 4;
  v50 = v70;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = v44;
  (v73)(&v44[v46[8]], v50, v42);
  v85 = 5;
  v52 = v69;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v73)(&v51[v46[9]], v52, v42);
  v84 = 6;
  v53 = v68;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v73)(&v51[v46[10]], v53, v42);
  v83 = 7;
  v54 = v67;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v73)(&v51[v46[11]], v54, v77);
  v82 = 8;
  v55 = v66;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v73)(&v51[v60[12]], v55, v77);
  v81 = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v73)(&v61[v60[13]], v65, v77);
  v80 = 10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v73)(&v61[v60[14]], v64, v77);
  v79 = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v74 + 8))(v76, v75);
  v56 = v61;
  (v73)(&v61[v60[15]], v63, v77);
  sub_100758AD4(v56, v62, type metadata accessor for AccessoryInfoResponseContent.Assets);
  sub_100007BAC(v78);
  return sub_100757B8C(v56, type metadata accessor for AccessoryInfoResponseContent.Assets);
}

uint64_t sub_100751480()
{
  v1 = *v0;
  v2 = 0x6E65644974726170;
  v3 = 0x656D614E74726170;
  v4 = 0x626D795374726170;
  if (v1 != 3)
  {
    v4 = 0x72616D6972507369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6570795474726170;
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

uint64_t sub_100751530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007571AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100751558(uint64_t a1)
{
  v2 = sub_1007576AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100751594(uint64_t a1)
{
  v2 = sub_1007576AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007515D0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100757374(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

Swift::Int sub_10075163C()
{
  Hasher.init(_seed:)();
  sub_10074E950();
  return Hasher._finalize()();
}

uint64_t sub_10075167C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_100754528(v5, v7) & 1;
}

uint64_t sub_1007516E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100757CA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100751708(uint64_t a1)
{
  v2 = sub_100758B3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100751744(uint64_t a1)
{
  v2 = sub_100758B3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100751838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007581F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100751860(uint64_t a1)
{
  v2 = sub_100758A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10075189C(uint64_t a1)
{
  v2 = sub_100758A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100751908(int *a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v1 + a1[5];
  dispatch thunk of Hashable.hash(into:)();
  v5 = v3 + a1[6];
  dispatch thunk of Hashable.hash(into:)();
  v6 = v3 + a1[7];
  dispatch thunk of Hashable.hash(into:)();
  v7 = v3 + a1[8];
  dispatch thunk of Hashable.hash(into:)();
  v8 = v3 + a1[9];
  dispatch thunk of Hashable.hash(into:)();
  v9 = v3 + a1[10];
  dispatch thunk of Hashable.hash(into:)();
  v10 = v3 + a1[11];
  dispatch thunk of Hashable.hash(into:)();
  v11 = v3 + a1[12];
  dispatch thunk of Hashable.hash(into:)();
  v12 = v3 + a1[13];
  dispatch thunk of Hashable.hash(into:)();
  v13 = v3 + a1[14];
  dispatch thunk of Hashable.hash(into:)();
  v14 = v3 + a1[15];
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100751AB4(uint64_t a1, int *a2)
{
  v4 = v2;
  type metadata accessor for URL();
  sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v2 + a2[5];
  dispatch thunk of Hashable.hash(into:)();
  v6 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  v7 = v4 + a2[7];
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[8];
  dispatch thunk of Hashable.hash(into:)();
  v9 = v4 + a2[9];
  dispatch thunk of Hashable.hash(into:)();
  v10 = v4 + a2[10];
  dispatch thunk of Hashable.hash(into:)();
  v11 = v4 + a2[11];
  dispatch thunk of Hashable.hash(into:)();
  v12 = v4 + a2[12];
  dispatch thunk of Hashable.hash(into:)();
  v13 = v4 + a2[13];
  dispatch thunk of Hashable.hash(into:)();
  v14 = v4 + a2[14];
  dispatch thunk of Hashable.hash(into:)();
  v15 = v4 + a2[15];
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100751C48(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v5 = v2 + a2[5];
  dispatch thunk of Hashable.hash(into:)();
  v6 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  v7 = v4 + a2[7];
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[8];
  dispatch thunk of Hashable.hash(into:)();
  v9 = v4 + a2[9];
  dispatch thunk of Hashable.hash(into:)();
  v10 = v4 + a2[10];
  dispatch thunk of Hashable.hash(into:)();
  v11 = v4 + a2[11];
  dispatch thunk of Hashable.hash(into:)();
  v12 = v4 + a2[12];
  dispatch thunk of Hashable.hash(into:)();
  v13 = v4 + a2[13];
  dispatch thunk of Hashable.hash(into:)();
  v14 = v4 + a2[14];
  dispatch thunk of Hashable.hash(into:)();
  v15 = v4 + a2[15];
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100751E3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100751E88()
{
  result = qword_1016A88D0;
  if (!qword_1016A88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88D0);
  }

  return result;
}

unint64_t sub_100751EE0()
{
  result = qword_1016A88D8;
  if (!qword_1016A88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88D8);
  }

  return result;
}

uint64_t sub_100751F34()
{
  _StringGuts.grow(_:)(51);
  v1._countAndFlagsBits = 0x7972636E4531653CLL;
  v1._object = 0xEE003A6E6F697470;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x7972636E45326520;
  v2._object = 0xEE003A6E6F697470;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._object = 0x800000010135E620;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_100752020(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A89F8, &qword_1013B9428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100758984();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1007521C0()
{
  v1 = 0x707972636E453265;
  if (*v0 != 1)
  {
    v1 = 0x6966697265563273;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707972636E453165;
  }
}

uint64_t sub_100752220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100758614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100752248(uint64_t a1)
{
  v2 = sub_100758984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100752284(uint64_t a1)
{
  v2 = sub_100758984();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007522C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100758738(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_10075231C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1007523A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10075240C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100752490(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10075258C()
{
  result = qword_1016A88E0;
  if (!qword_1016A88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88E0);
  }

  return result;
}

uint64_t sub_1007525E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A8980, &qword_1013B9408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100757768();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = *(v3 + 48);
  v39 = *(v3 + 32);
  v40 = v12;
  v13 = *(v3 + 48);
  v41 = *(v3 + 64);
  v14 = *(v3 + 16);
  v38[0] = *v3;
  v38[1] = v14;
  v35 = v39;
  v36 = v13;
  v37 = *(v3 + 64);
  v33 = v38[0];
  v34 = v11;
  v43 = 0;
  sub_10075798C(v38, &v28);
  sub_1007579C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v28 = v33;
    v29 = v34;
    sub_10075780C(&v28);
  }

  else
  {
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v28 = v33;
    v29 = v34;
    sub_10075780C(&v28);
    v15 = *(v3 + 88);
    v16 = *(v3 + 92);
    *&v27[0] = *(v3 + 80);
    BYTE12(v27[0]) = v16;
    DWORD2(v27[0]) = v15;
    v42 = 1;
    sub_100757A18();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = type metadata accessor for AccessoryInfoResponseContent(0);
    v18 = v17[6];
    LOBYTE(v27[0]) = 2;
    type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    sub_100751E3C(&qword_1016A8998, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v17[7];
    LOBYTE(v27[0]) = 3;
    type metadata accessor for AccessoryInfoResponseContent.Assets(0);
    sub_100751E3C(&qword_1016A89A0, type metadata accessor for AccessoryInfoResponseContent.Assets);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = (v3 + v17[8]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v27[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = (v3 + v17[9]);
    v24 = v23[1];
    v27[0] = *v23;
    v27[1] = v24;
    v27[2] = v23[2];
    v42 = 5;
    sub_100757A6C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = v17[10];
    LOBYTE(v27[0]) = 6;
    type metadata accessor for ServerStatusCode();
    sub_100751E3C(&qword_1016A89B0, &type metadata accessor for ServerStatusCode);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v27[0] = *(v3 + v17[11]);
    v42 = 7;
    sub_1000BC4D4(&unk_1016A86D0, "֫\n");
    sub_100757AC0(&qword_1016A89B8, sub_100757B38);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100752A78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  v49 = *(v4 - 1);
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v48 = &v46 - v10;
  v47 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  v11 = *(v47 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v47);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v46 - v17;
  v19 = v1[3];
  v52 = v1[2];
  v53 = v19;
  v54 = v1[4];
  v20 = v1[1];
  v50 = *v1;
  v51 = v20;
  sub_10074D4B4();
  v21 = *(v1 + 10);
  if (v21 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v22 = *(v1 + 22) | (*(v1 + 92) << 32);
    Hasher._combine(_:)(1u);
    sub_10074DB48(a1, v21 & 0xFFFFFFFF01010101, v22);
  }

  v23 = type metadata accessor for AccessoryInfoResponseContent(0);
  sub_1000D2A70(v1 + v23[6], v18, &qword_1016A62E8, &qword_1013B3CB0);
  if ((*(v11 + 48))(v18, 1, v47) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100757BEC(v18, v14, type metadata accessor for AccessoryInfoResponseContent.Configuration);
    Hasher._combine(_:)(1u);
    sub_10074F1C0();
    sub_100757B8C(v14, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  }

  v24 = v48;
  sub_1000D2A70(v2 + v23[7], v48, &qword_1016A62E0, &unk_1013B8C30);
  if ((*(v49 + 48))(v24, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100757BEC(v24, v7, type metadata accessor for AccessoryInfoResponseContent.Assets);
    Hasher._combine(_:)(1u);
    type metadata accessor for URL();
    sub_100751E3C(&qword_1016A8908, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    v25 = &v7[v4[5]];
    dispatch thunk of Hashable.hash(into:)();
    v26 = &v7[v4[6]];
    dispatch thunk of Hashable.hash(into:)();
    v27 = &v7[v4[7]];
    dispatch thunk of Hashable.hash(into:)();
    v28 = &v7[v4[8]];
    dispatch thunk of Hashable.hash(into:)();
    v29 = &v7[v4[9]];
    dispatch thunk of Hashable.hash(into:)();
    v30 = &v7[v4[10]];
    dispatch thunk of Hashable.hash(into:)();
    v31 = &v7[v4[11]];
    dispatch thunk of Hashable.hash(into:)();
    v32 = &v7[v4[12]];
    dispatch thunk of Hashable.hash(into:)();
    v33 = &v7[v4[13]];
    dispatch thunk of Hashable.hash(into:)();
    v34 = &v7[v4[14]];
    dispatch thunk of Hashable.hash(into:)();
    v35 = &v7[v4[15]];
    dispatch thunk of Hashable.hash(into:)();
    sub_100757B8C(v7, type metadata accessor for AccessoryInfoResponseContent.Assets);
  }

  v36 = (v2 + v23[8]);
  if (v36[1])
  {
    v37 = *v36;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v38 = (v2 + v23[9]);
  if (v38[1])
  {
    v40 = v38[4];
    v39 = v38[5];
    v42 = v38[2];
    v41 = v38[3];
    v43 = *v38;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v44 = v23[10];
  type metadata accessor for ServerStatusCode();
  sub_100751E3C(&qword_1016A89C8, &type metadata accessor for ServerStatusCode);
  dispatch thunk of Hashable.hash(into:)();
  v45 = *(v2 + v23[11]);
  if (v45)
  {
    Hasher._combine(_:)(1u);
    sub_10083C3DC(a1, v45);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_1007530B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v45 = type metadata accessor for ServerStatusCode();
  v44 = *(v45 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin(v45);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A62E0, &unk_1013B8C30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v10 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v40 - v12;
  v46 = sub_1000BC4D4(&qword_1016A8938, &qword_1013B9400);
  v43 = *(v46 - 8);
  v14 = *(v43 + 64);
  __chkstk_darwin(v46);
  v16 = &v40 - v15;
  v17 = type metadata accessor for AccessoryInfoResponseContent(0);
  v18 = *(*(v17 - 1) + 64);
  __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v49 = a1;
  sub_1000035D0(a1, v22);
  sub_100757768();
  v47 = v16;
  v23 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_100007BAC(v49);
  }

  v48 = v13;
  v41 = v9;
  v40 = v5;
  v24 = v43;
  v25 = v44;
  v26 = v20;
  v27 = v45;
  v59 = 0;
  sub_10075783C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v56;
  *(v26 + 32) = v55;
  *(v26 + 48) = v28;
  *(v26 + 64) = v57;
  v29 = v54;
  *v26 = v53;
  *(v26 + 16) = v29;
  v58 = 1;
  sub_100757890();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = DWORD2(v50);
  v31 = BYTE12(v50);
  *(v26 + 80) = v50;
  *(v26 + 92) = v31;
  *(v26 + 88) = v30;
  type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  LOBYTE(v50) = 2;
  sub_100751E3C(&qword_1016A8958, type metadata accessor for AccessoryInfoResponseContent.Configuration);
  v32 = v48;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v32, v26 + v17[6], &qword_1016A62E8, &qword_1013B3CB0);
  type metadata accessor for AccessoryInfoResponseContent.Assets(0);
  LOBYTE(v50) = 3;
  sub_100751E3C(&qword_1016A8960, type metadata accessor for AccessoryInfoResponseContent.Assets);
  v33 = v41;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v33, v26 + v17[7], &qword_1016A62E0, &unk_1013B8C30);
  LOBYTE(v50) = 4;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = (v26 + v17[8]);
  *v35 = v34;
  v35[1] = v36;
  v58 = 5;
  sub_1007578E4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37 = (v26 + v17[9]);
  v38 = v51;
  *v37 = v50;
  v37[1] = v38;
  v37[2] = v52;
  LOBYTE(v50) = 6;
  sub_100751E3C(&qword_10169A810, &type metadata accessor for ServerStatusCode);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 32))(v26 + v17[10], v40, v27);
  sub_1000BC4D4(&unk_1016A86D0, "֫\n");
  v58 = 7;
  sub_100757AC0(&qword_1016A8970, sub_100757938);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v24 + 8))(v47, v46);
  *(v26 + v17[11]) = v50;
  sub_100758AD4(v26, v42, type metadata accessor for AccessoryInfoResponseContent);
  sub_100007BAC(v49);
  return sub_100757B8C(v26, type metadata accessor for AccessoryInfoResponseContent);
}

uint64_t sub_100753940()
{
  v1 = *v0;
  v2 = 0x6572617774666F73;
  v3 = 0x737574617473;
  if (v1 != 6)
  {
    v3 = 0x655474756F79616CLL;
  }

  v4 = 0x6E6F6973726576;
  if (v1 != 4)
  {
    v4 = 0x654B63696C627570;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x72756769666E6F63;
  if (v1 != 2)
  {
    v5 = 0x737465737361;
  }

  if (*v0)
  {
    v2 = 0x696C696261706163;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100753A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100759738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100753A88(uint64_t a1)
{
  v2 = sub_100757768();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100753AC4(uint64_t a1)
{
  v2 = sub_100757768();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100753B48(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100753BAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

unint64_t sub_100753C40()
{
  result = qword_1016A88F0;
  if (!qword_1016A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A88F0);
  }

  return result;
}

uint64_t sub_100753C94()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v26 = v21;
  v6._countAndFlagsBits = 60;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v0[3];
  v23 = v0[2];
  v24 = v7;
  v25 = v0[4];
  v8 = v0[1];
  v21 = *v0;
  v22 = v8;
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 0x3A73757461747320;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10 = type metadata accessor for AccessoryInfoResponseContent(0);
  v11 = v10[10];
  type metadata accessor for ServerStatusCode();
  sub_100751E3C(&qword_1016A88F8, &type metadata accessor for ServerStatusCode);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x6E6F697372657620;
  v13._object = 0xE90000000000003ALL;
  String.append(_:)(v13);
  v21 = *(v1 + v10[8]);
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0x3A6769666E6F6320;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  sub_1000D2A70(v1 + v10[6], v5, &qword_1016A62E8, &qword_1013B3CB0);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x4B63696C62757020;
  v16._object = 0xEC0000003A737965;
  String.append(_:)(v16);
  v17 = (v1 + v10[9]);
  v18 = v17[1];
  v21 = *v17;
  v22 = v18;
  v23 = v17[2];
  sub_1000BC4D4(&qword_1016A8900, &unk_1013B93E0);
  _print_unlocked<A, B>(_:_:)();
  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return v26;
}

unint64_t sub_100753F4C()
{
  v1 = *v0;
  _StringGuts.grow(_:)(34);

  type metadata accessor for AccessoryInfoResponseContent(0);
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000020;
}

uint64_t sub_100753FD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return *(a2 + 8);
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v5 = a1;
    v6 = *(a1 + 16);
    v7 = a2;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v7;
    v9 = v8;
    a1 = v5;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
    {
      return v12;
    }
  }

  v13 = *(a1 + 33);
  v14 = *(a2 + 33);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return v12;
    }
  }

  v15 = *(a1 + 34);
  v16 = *(a2 + 34);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v16 == 2 || ((v16 ^ v15) & 1) != 0)
    {
      return v12;
    }
  }

  v17 = *(a1 + 35);
  v18 = *(a2 + 35);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v18 == 2 || ((v18 ^ v17) & 1) != 0)
    {
      return v12;
    }
  }

  v19 = *(a1 + 36);
  v20 = *(a2 + 36);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v20 == 2 || ((v20 ^ v19) & 1) != 0)
    {
      return v12;
    }
  }

  v21 = *(a1 + 37);
  v22 = *(a2 + 37);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v22 == 2 || ((v22 ^ v21) & 1) != 0)
    {
      return v12;
    }
  }

  v23 = *(a1 + 38);
  v24 = *(a2 + 38);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v24 == 2 || ((v24 ^ v23) & 1) != 0)
    {
      return v12;
    }
  }

  v25 = *(a1 + 39);
  v26 = *(a2 + 39);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v26 == 2 || ((v26 ^ v25) & 1) != 0)
    {
      return v12;
    }
  }

  v27 = *(a1 + 40);
  v28 = *(a2 + 40);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v28 == 2 || ((v28 ^ v27) & 1) != 0)
    {
      return v12;
    }
  }

  v29 = *(a1 + 56);
  v30 = *(a2 + 56);
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v29 != v30)
    {
      v31 = a1;
      v32 = *(a1 + 48);
      v33 = a2;
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v33;
      v35 = v34;
      a1 = v31;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  v36 = *(a1 + 72);
  v37 = *(a2 + 72);
  if (!v36)
  {
    return !v37;
  }

  return v37 && (*(a1 + 64) == *(a2 + 64) && v36 == v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}