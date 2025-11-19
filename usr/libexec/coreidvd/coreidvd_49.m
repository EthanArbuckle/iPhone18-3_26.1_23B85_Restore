uint64_t sub_10051DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10051DF5C, 0, 0);
}

uint64_t sub_10051DF5C()
{
  if (v0[4])
  {
    v1 = v0[3];
    v2 = v0[4];
  }

  else
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[7];
    UUID.init()();
    v1 = UUID.uuidString.getter();
    v2 = v6;
    (*(v4 + 8))(v3, v5);
  }

  v0[10] = v2;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10051E074;
  v8 = v0[5];
  v9 = v0[6];

  return sub_1005AFCD4(v1, v2, v8, v9);
}

uint64_t sub_10051E074(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10051E194, 0, 0);
}

uint64_t sub_10051E194()
{
  v1 = *(v0 + 72);
  **(v0 + 16) = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10051E200(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10051E294;

  return sub_100545B38();
}

uint64_t sub_10051E294(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return _swift_task_switch(sub_10051E394, 0, 0);
}

uint64_t sub_10051E3B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10051E444;

  return sub_100547540();
}

uint64_t sub_10051E444(uint64_t a1, unint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = *(v6 + 8);

  return v9(v7, v8);
}

uint64_t sub_10051E554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v45 = a1;
  v46 = a2;
  v5 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v52 = &v44 - v7;
  v8 = sub_100007224(&unk_10084A130, &qword_1006E9ED0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for DIPPregeneratedAssessment(0);
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v44 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPSignpost.Config();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for DIPSignpost();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() standardUserDefaults];
  v27._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODIN.getter();
  v28 = NSUserDefaults.internalBool(forKey:)(v27);

  if (v28)
  {
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Skipping ODIN due to setting", v31, 2u);
    }

    (*(v22 + 8))(v25, v21);
    v32 = v53;
    swift_beginAccess();
    sub_10000BBC4(v32 + 216, a4, &qword_100834EB0, &qword_1006E78F0);
    v34 = *(v32 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    v33 = *(v32 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
    v35 = *(type metadata accessor for ODNAssessmentResult(0) + 44);
    v36 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v36 - 8) + 56))(a4 + v35, 1, 1, v36);
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;
    *(a4 + 120) = 1;
    *(a4 + 144) = 0;
    *(a4 + 152) = 0u;
    *(a4 + 168) = 0u;
    *(a4 + 184) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 216) = v34;
    *(a4 + 224) = v33;
  }

  else
  {
    static DaemonSignposts.getVerificationResultFetchAssesssment.getter();
    DIPSignpost.init(_:)();
    sub_10000BBC4(v49, v11, &unk_10084A130, &qword_1006E9ED0);
    if ((*(v47 + 48))(v11, 1, v48) == 1)
    {
      sub_10000BE18(v11, &unk_10084A130, &qword_1006E9ED0);
      v38 = sub_10051F568(v45, v46, 1);
      memset(v54, 0, sizeof(v54));
      v55 = 1;
      v39 = type metadata accessor for AugmentedProfile(0);
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v40 = v52;
      (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
      sub_100522400(v38, 0, v54, v40, 1, a4);

      sub_10000BE18(v40, &unk_10084A160, &unk_1006E7978);
    }

    else
    {
      v41 = v44;
      sub_100537B28(v11, v44, type metadata accessor for DIPPregeneratedAssessment);
      v42 = type metadata accessor for AugmentedProfile(0);
      v43 = v52;
      (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
      sub_100520B1C(v41, v43, a4);
      sub_10000BE18(v43, &unk_10084A160, &unk_1006E7978);
      sub_100537B90(v41, type metadata accessor for DIPPregeneratedAssessment);
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v50 + 8))(v20, v51);
  }
}

uint64_t sub_10051EB94@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v5 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for DIPError.PropertyKey();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_100833A88, qword_1006BF8E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v35 - v16;
  v38 = a1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v18 = type metadata accessor for DIPError();
  v19 = swift_dynamicCast();
  v20 = *(*(v18 - 8) + 56);
  if (!v19)
  {
    v20(v17, 1, 1, v18);
    sub_10000BE18(v17, &qword_100833A88, qword_1006BF8E0);
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    goto LABEL_11;
  }

  v21 = *(v18 - 8);
  v20(v17, 0, 1, v18);
  v22 = DIPError.properties.getter();
  (*(v21 + 8))(v17, v18);
  (*(v10 + 104))(v13, enum case for DIPError.PropertyKey.underlyingErrno(_:), v9);
  if (!*(v22 + 16) || (v23 = sub_10003AF10(v13), (v24 & 1) == 0))
  {

    (*(v10 + 8))(v13, v9);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_11;
  }

  sub_100020260(*(v22 + 56) + 40 * v23, &v39);
  (*(v10 + 8))(v13, v9);

  if (!*(&v40 + 1))
  {
LABEL_11:
    sub_10000BE18(&v39, &qword_10083BD10, &qword_1006DA228);
    v26 = 0;
    v27 = 1;
    goto LABEL_12;
  }

  sub_100007224(&unk_100833A90, &unk_1006DEE50);
  v25 = swift_dynamicCast();
  if (v25)
  {
    v26 = v38;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 ^ 1;
LABEL_12:
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v28 = type metadata accessor for DIPError.Code();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v8, 1, v28) == 1)
  {
    sub_10000BE18(v8, &qword_10083B020, &unk_1006D8ED0);
    v30 = -1;
  }

  else
  {
    v30 = DIPError.Code.rawValue.getter();
    (*(v29 + 8))(v8, v28);
  }

  v32 = *(v36 + 32);
  v31 = *(v36 + 40);
  LOBYTE(v39) = *(v36 + 208);
  sub_10053B8D4();

  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a3 = v30;
  *(a3 + 8) = v26;
  *(a3 + 16) = v27;
  *(a3 + 24) = v32;
  *(a3 + 32) = v31;
  *(a3 + 40) = result;
  *(a3 + 48) = v34;
  *(a3 + 56) = v37;
  return result;
}

unint64_t sub_10051F010(uint64_t *a1)
{
  _StringGuts.grow(_:)(30);

  v2 = *a1;

  v3 = Dictionary.description.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD00000000000001CLL;
}

uint64_t sub_10051F0D0(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v33 = a2;
  v5 = type metadata accessor for Locale();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  if (qword_100832C80 != -1)
  {
    swift_once();
  }

  v13 = [objc_allocWithZone(NSNumber) initWithBool:byte_100882380];
  v14 = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
  v35 = v14;
  v34[0] = v13;
  sub_10014BD20(v34, 0xD000000000000014, 0x800000010071E1C0);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v15 = [objc_allocWithZone(NSNumber) initWithBool:MKBGetDeviceLockState() - 1 < 2];
  v35 = v14;
  v34[0] = v15;
  sub_10014BD20(v34, 0x6563697665447369, 0xEE0064656B636F4CLL);
  if (a3)
  {
    v16 = a3;
    v17 = v33;
  }

  else
  {
    static Locale.current.getter();
    Locale.region.getter();
    (*(v32 + 8))(v8, v5);
    v18 = type metadata accessor for Locale.Region();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v12, 1, v18) == 1)
    {
      sub_10000BE18(v12, &unk_100849BA0, &qword_1006D95F0);
      v17 = 0;
      v16 = 0xE000000000000000;
    }

    else
    {
      v17 = Locale.Region.identifier.getter();
      v16 = v20;
      (*(v19 + 8))(v12, v18);
    }
  }

  v21 = sub_1005A1364(v17, v16);

  v35 = &type metadata for Int;
  v34[0] = v21;
  sub_10014BD20(v34, 0xD000000000000011, 0x800000010071E1E0);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v34, v35);
  v22 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccount()();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 appleID];

    sub_10000BB78(v34);
    if (v24)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v35 = &type metadata for String;
      v34[0] = v25;
      v34[1] = v27;
      sub_10014BD20(v34, 0x6469656C707061, 0xE700000000000000);
    }
  }

  else
  {
    sub_10000BB78(v34);
  }

  sub_100533D54(a1);
  v28 = sub_1005330EC(*a1);
  v29 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = *a1;
  sub_100535E1C(v28, sub_100535960, 0, isUniquelyReferenced_nonNull_native, v34);

  *a1 = v34[0];
  return result;
}

uint64_t sub_10051F568(uint64_t a1, uint64_t a2, int a3)
{
  v219 = a2;
  v221 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v216 = &v195 - v11;
  v12 = __chkstk_darwin(v10);
  v217 = &v195 - v13;
  v14 = __chkstk_darwin(v12);
  v205 = &v195 - v15;
  v16 = __chkstk_darwin(v14);
  v207 = &v195 - v17;
  v18 = __chkstk_darwin(v16);
  v206 = &v195 - v19;
  v20 = __chkstk_darwin(v18);
  v208 = &v195 - v21;
  __chkstk_darwin(v20);
  v23 = &v195 - v22;
  defaultLogger()();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Preparing bindings dict from claim", v26, 2u);
  }

  v28 = *(v5 + 8);
  v27 = v5 + 8;
  v220 = v28;
  v28(v23, v4);
  v29 = sub_10003D8DC(_swiftEmptyArrayStorage);
  v227 = v29;
  if (!v221 || !v219)
  {
LABEL_85:
    if (*(v218 + 144) && (v175 = sub_10059A2CC()) != 0)
    {
      v176 = v175;
      [v175 coordinate];
      v177 = Double.description.getter();
      *(&v226 + 1) = &type metadata for String;
      *&v225 = v177;
      *(&v225 + 1) = v178;
      sub_10001F348(&v225, &v223);
      v179 = v227;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v222 = v179;
      sub_10016CC40(&v223, 0xD000000000000018, 0x800000010071E160, isUniquelyReferenced_nonNull_native);
      v181 = v222;
      [v176 coordinate];
      v182 = Double.description.getter();
      *(&v226 + 1) = &type metadata for String;
      *&v225 = v182;
      *(&v225 + 1) = v183;
      sub_10001F348(&v225, &v223);
      v184 = swift_isUniquelyReferenced_nonNull_native();
      v222 = v181;
      sub_10016CC40(&v223, 0xD000000000000019, 0x800000010071E180, v184);
      v185 = v222;
      [v176 horizontalAccuracy];
      v186 = Double.description.getter();
      *(&v226 + 1) = &type metadata for String;
      *&v225 = v186;
      *(&v225 + 1) = v187;
      sub_10001F348(&v225, &v223);
      v188 = swift_isUniquelyReferenced_nonNull_native();
      v222 = v185;
      sub_10016CC40(&v223, 0xD000000000000022, 0x800000010071E870, v188);
      v227 = v222;
      defaultLogger()();
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&_mh_execute_header, v189, v190, "got GPS data", v191, 2u);
      }

      v9 = v216;
    }

    else
    {
      defaultLogger()();
      v176 = Logger.logObject.getter();
      v192 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v176, v192))
      {
        v193 = swift_slowAlloc();
        *v193 = 0;
        _os_log_impl(&_mh_execute_header, v176, v192, "no GPS location available", v193, 2u);
      }
    }

    v220(v9, v4);
    if (a3)
    {
      sub_10051F0D0(&v227, 0, 0);
    }

    return v227;
  }

  v196 = v29;
  v212 = v27;
  v202 = a3;
  v30 = *(v221 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v214 = (v32 + 63) >> 6;

  v35 = 0;
  *&v36 = 136315394;
  v195 = v36;
  *&v36 = 136315138;
  v200 = v36;
  v213 = v4;
  v201 = v9;
  v204 = v30;
  v203 = v30 + 64;
LABEL_8:
  v37 = v35;
  while (v34)
  {
    v35 = v37;
LABEL_14:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v39 = v38 | (v35 << 6);
    v40 = (*(v30 + 48) + 16 * v39);
    v42 = *v40;
    v41 = v40[1];
    v43 = *(v30 + 56) + 96 * v39;
    v45 = *(v43 + 72);
    v44 = *(v43 + 80);

    v197 = sub_1005905A8(v42, v41);
    v210 = v48;
    v211 = v42;
    v215 = v41;
    v199 = v45;
    v49 = *(v219 + 16);
    v209 = v44;
    if (v49)
    {
      v50 = v47;
      v51 = v46;
      sub_10003ADCC(v211, v215);
      v46 = v51;
      v47 = v50;
      v198 = v52;
    }

    else
    {
      v198 = 0;
    }

    *&v225 = v46;
    *(&v225 + 1) = v47;
    *&v223 = 0x6E692D646579656BLL;
    *(&v223 + 1) = 0xE800000000000000;
    v53 = v47;
    v54 = v46;
    sub_1000348A0();
    sub_1000348F4();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {

      v64 = [objc_opt_self() standardUserDefaults];
      v65._countAndFlagsBits = static DaemonInternalDefaultsKeys.logODNBindingValues.getter();
      v66 = NSUserDefaults.internalBool(forKey:)(v65);

      v67 = v209;
      if (v66 && v209)
      {

        v68 = v208;
        defaultLogger()();

        v69 = v210;

        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *&v225 = swift_slowAlloc();
          *v72 = v195;
          *(v72 + 4) = sub_100141FE4(v197, v69, &v225);
          *(v72 + 12) = 2080;
          v73 = v199;
          v74 = sub_100141FE4(v199, v67, &v225);

          *(v72 + 14) = v74;
          _os_log_impl(&_mh_execute_header, v70, v71, "ODN bindings keyed-in attribute %s: %s", v72, 0x16u);
          swift_arrayDestroy();

          v220(v208, v213);
          v75 = v198;
        }

        else
        {

          v220(v68, v213);
          v75 = v198;
          v73 = v199;
        }

        goto LABEL_46;
      }

      v90 = v206;
      defaultLogger()();
      v91 = v210;

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v225 = v95;
        *v94 = v200;
        *(v94 + 4) = sub_100141FE4(v197, v91, &v225);
        _os_log_impl(&_mh_execute_header, v92, v93, "ODN bindings keyed-in attribute %s", v94, 0xCu);
        sub_10000BB78(v95);
      }

      v220(v90, v213);
      v75 = v198;
      v73 = v199;
      if (v67)
      {
LABEL_46:
        *(&v226 + 1) = &type metadata for String;
        *&v225 = v73;
        *(&v225 + 1) = v67;
        sub_10001F348(&v225, &v223);
        v112 = v227;
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v222 = v112;
        v114 = v197;
        v115 = v210;
        sub_10016CC40(&v223, v197, v210, v113);
        v99 = v222;
        v227 = v222;
      }

      else
      {
        v96 = sub_10003ADCC(v197, v210);
        if (v97)
        {
          v98 = v96;
          v99 = v227;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v222 = v99;
          if ((v100 & 1) == 0)
          {
            sub_10016F6B4();
            v99 = v222;
          }

          v101 = *(*(v99 + 48) + 16 * v98 + 8);

          sub_10001F348((*(v99 + 56) + 32 * v98), &v223);
          sub_1001501BC(v98, v99);
          v227 = v99;
        }

        else
        {
          v223 = 0u;
          v224 = 0u;
          v99 = v227;
        }

        sub_10000BE18(&v223, &unk_100845ED0, &qword_1006DA1D0);
        v115 = v210;
        v114 = v197;
      }

      *&v225 = v114;
      *(&v225 + 1) = v115;
LABEL_51:
      v118._countAndFlagsBits = 0x657261685373692ELL;
      v118._object = 0xE900000000000064;
      String.append(_:)(v118);
      v120 = *(&v225 + 1);
      v119 = v225;
      v121 = [objc_allocWithZone(NSNumber) initWithBool:v75 & 1];
      *(&v226 + 1) = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
      *&v225 = v121;
      sub_10001F348(&v225, &v223);
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v222 = v99;
      sub_10016CC40(&v223, v119, v120, v122);

      v196 = v222;
      v227 = v222;
      v30 = v204;
      v31 = v203;
      goto LABEL_8;
    }

    *&v225 = v54;
    *(&v225 + 1) = v53;
    *&v223 = 0x746E656D75636F64;
    *(&v223 + 1) = 0xE800000000000000;
    v55 = BidirectionalCollection<>.starts<A>(with:)();

    if (v55)
    {
      v76 = [objc_opt_self() standardUserDefaults];
      v77._countAndFlagsBits = static DaemonInternalDefaultsKeys.logODNBindingValues.getter();
      v78 = NSUserDefaults.internalBool(forKey:)(v77);

      v79 = v209;
      v80 = v215;
      if (v78 && v209)
      {

        v81 = v207;
        defaultLogger()();

        v82 = Logger.logObject.getter();
        v83 = v80;
        v84 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v82, v84))
        {
          v85 = swift_slowAlloc();
          *&v225 = swift_slowAlloc();
          *v85 = v195;
          v86 = v211;
          *(v85 + 4) = sub_100141FE4(v211, v83, &v225);
          *(v85 + 12) = 2080;
          v87 = sub_100141FE4(v199, v79, &v225);

          *(v85 + 14) = v87;
          _os_log_impl(&_mh_execute_header, v82, v84, "ODN bindings document attribute %s: %s", v85, 0x16u);
          swift_arrayDestroy();

          v88 = v86;

          v220(v207, v213);
          v89 = v199;
          v75 = v198;
          v80 = v215;
        }

        else
        {

          v220(v81, v213);
          v75 = v198;
          v89 = v199;
          v80 = v83;
          v88 = v211;
        }

        goto LABEL_49;
      }

      v102 = v205;
      defaultLogger()();

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *&v225 = v106;
        *v105 = v200;
        *(v105 + 4) = sub_100141FE4(v211, v80, &v225);
        _os_log_impl(&_mh_execute_header, v103, v104, "ODN bindings document attribute %s", v105, 0xCu);
        sub_10000BB78(v106);
      }

      v220(v102, v213);
      v75 = v198;
      v89 = v199;
      v88 = v211;
      if (v79)
      {
LABEL_49:
        *(&v226 + 1) = &type metadata for String;
        *&v225 = v89;
        *(&v225 + 1) = v79;
        sub_10001F348(&v225, &v223);
        v116 = v227;
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v222 = v116;
        sub_10016CC40(&v223, v88, v80, v117);
        v99 = v222;
        v227 = v222;
      }

      else
      {
        v107 = sub_10003ADCC(v211, v80);
        if (v108)
        {
          v109 = v107;
          v99 = v227;
          v110 = swift_isUniquelyReferenced_nonNull_native();
          v222 = v99;
          if ((v110 & 1) == 0)
          {
            sub_10016F6B4();
            v99 = v222;
          }

          v111 = *(*(v99 + 48) + 16 * v109 + 8);

          sub_10001F348((*(v99 + 56) + 32 * v109), &v223);
          sub_1001501BC(v109, v99);
          v227 = v99;
        }

        else
        {
          v223 = 0u;
          v224 = 0u;
          v99 = v227;
        }

        sub_10000BE18(&v223, &unk_100845ED0, &qword_1006DA1D0);
      }

      *&v225 = v88;
      *(&v225 + 1) = v80;
      goto LABEL_51;
    }

    v56 = v217;
    defaultLogger()();
    v57 = v215;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v225 = v61;
      *v60 = v200;
      v62 = sub_100141FE4(v211, v57, &v225);

      *(v60 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v58, v59, "Skipping ODN bindings for attribute %s", v60, 0xCu);
      sub_10000BB78(v61);

      v63 = v217;
    }

    else
    {

      v63 = v56;
    }

    v220(v63, v213);
    v37 = v35;
    v30 = v204;
    v31 = v203;
  }

  while (1)
  {
    v35 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_96;
    }

    if (v35 >= v214)
    {
      break;
    }

    v34 = *(v31 + 8 * v35);
    ++v37;
    if (v34)
    {
      goto LABEL_14;
    }
  }

  v123 = *(v221 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);
  v124 = v123 + 64;
  v125 = 1 << *(v123 + 32);
  v126 = -1;
  if (v125 < 64)
  {
    v126 = ~(-1 << v125);
  }

  v127 = v126 & *(v123 + 64);
  v128 = (v125 + 63) >> 6;
  v129 = *(v221 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);

  v130 = 0;
  while (1)
  {
    v131 = v130;
    if (!v127)
    {
      break;
    }

LABEL_63:
    v132 = __clz(__rbit64(v127));
    v127 &= v127 - 1;
    v133 = v132 | (v130 << 6);
    v134 = (*(v123 + 48) + 16 * v133);
    v136 = *v134;
    v135 = v134[1];
    v137 = *(v123 + 56) + 96 * v133;
    v138 = *(v137 + 72);
    v139 = *(v137 + 80);

    v140 = sub_1005905A8(v136, v135);
    v214 = v123;
    v215 = v140;
    v217 = v141;

    if (*(v219 + 16))
    {
      sub_10003ADCC(v136, v135);
      v143 = v142;

      if (v139)
      {
        goto LABEL_65;
      }
    }

    else
    {

      v143 = 0;
      if (v139)
      {
LABEL_65:
        *(&v226 + 1) = &type metadata for String;
        *&v225 = v138;
        *(&v225 + 1) = v139;
        sub_10001F348(&v225, &v223);
        v144 = v227;
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v222 = v144;
        sub_10016CC40(&v223, v215, v217, v145);
        v146 = v222;
        v227 = v222;
        goto LABEL_73;
      }
    }

    v147 = sub_10003ADCC(v215, v217);
    if (v148)
    {
      v149 = v147;
      v146 = v227;
      v150 = swift_isUniquelyReferenced_nonNull_native();
      *&v223 = v146;
      if ((v150 & 1) == 0)
      {
        sub_10016F6B4();
        v146 = v223;
      }

      v151 = *(v146[6] + 16 * v149 + 8);

      sub_10001F348((v146[7] + 32 * v149), &v225);
      sub_1001501BC(v149, v146);
      v227 = v146;
    }

    else
    {
      v225 = 0u;
      v226 = 0u;
      v146 = v227;
    }

    sub_10000BE18(&v225, &unk_100845ED0, &qword_1006DA1D0);
LABEL_73:
    *&v225 = v215;
    *(&v225 + 1) = v217;
    v152._countAndFlagsBits = 0x657261685373692ELL;
    v152._object = 0xE900000000000064;
    String.append(_:)(v152);
    v153 = *(&v225 + 1);
    v217 = v225;
    v154 = objc_allocWithZone(NSNumber);
    v155 = v143 & 1;
    v156 = v153;
    v157 = [v154 initWithBool:v155];
    *(&v226 + 1) = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
    *&v225 = v157;
    sub_10001F348(&v225, &v223);
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v222 = v146;
    v215 = v156;
    v159 = sub_10003ADCC(v217, v156);
    v161 = v146[2];
    v162 = (v160 & 1) == 0;
    v163 = __OFADD__(v161, v162);
    v164 = v161 + v162;
    if (v163)
    {
      goto LABEL_97;
    }

    v165 = v160;
    if (v146[3] < v164)
    {
      sub_100166280(v164, v158);
      v159 = sub_10003ADCC(v217, v215);
      if ((v165 & 1) != (v166 & 1))
      {
        goto LABEL_99;
      }

LABEL_78:
      if (v165)
      {
        goto LABEL_79;
      }

      goto LABEL_81;
    }

    if (v158)
    {
      goto LABEL_78;
    }

    v170 = v159;
    sub_10016F6B4();
    v159 = v170;
    if (v165)
    {
LABEL_79:
      v167 = v159;

      v168 = v222;
      v169 = (*(v222 + 56) + 32 * v167);
      sub_10000BB78(v169);
      sub_10001F348(&v223, v169);
      goto LABEL_83;
    }

LABEL_81:
    v168 = v222;
    *(v222 + 8 * (v159 >> 6) + 64) |= 1 << v159;
    v171 = (v168[6] + 16 * v159);
    v172 = v215;
    *v171 = v217;
    v171[1] = v172;
    sub_10001F348(&v223, (v168[7] + 32 * v159));
    v173 = v168[2];
    v163 = __OFADD__(v173, 1);
    v174 = v173 + 1;
    if (v163)
    {
      goto LABEL_98;
    }

    v168[2] = v174;
LABEL_83:
    v123 = v214;
    v196 = v168;
    v227 = v168;
  }

  while (1)
  {
    v130 = v131 + 1;
    if (__OFADD__(v131, 1))
    {
      break;
    }

    if (v130 >= v128)
    {

      LOBYTE(a3) = v202;
      v4 = v213;
      v9 = v201;
      goto LABEL_85;
    }

    v127 = *(v124 + 8 * v130);
    ++v131;
    if (v127)
    {
      goto LABEL_63;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100520B1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a2;
  v143 = a1;
  v134 = type metadata accessor for DIPError.Code();
  v133 = *(v134 - 8);
  v4 = *(v133 + 64);
  __chkstk_darwin(v134);
  v135 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v138 = *(v142 - 8);
  v6 = v138[8];
  __chkstk_darwin(v142);
  v127 = &v125 - v7;
  v8 = sub_100007224(&qword_100836328, &unk_1006C51B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v132 = &v125 - v10;
  v11 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v137 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v145 = &v125 - v15;
  v16 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v131 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v136 = &v125 - v21;
  __chkstk_darwin(v20);
  v144 = &v125 - v22;
  v23 = type metadata accessor for AugmentedProfile(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v139 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v125 - v28;
  v30 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v126 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v125 - v35;
  __chkstk_darwin(v34);
  v146 = &v125 - v37;
  v141 = type metadata accessor for Logger();
  v38 = *(v141 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v141);
  v130 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v129 = (&v125 - v43);
  __chkstk_darwin(v42);
  v45 = &v125 - v44;
  defaultLogger()();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Using pre-computed assessment", v48, 2u);
  }

  (*(v38 + 8))(v45, v141);
  v49 = *(v24 + 56);
  v50 = v146;
  v49(v146, 1, 1, v23);
  sub_10000BBC4(v140, v36, &unk_10084A160, &unk_1006E7978);
  if ((*(v24 + 48))(v36, 1, v23) == 1)
  {
    sub_10000BE18(v36, &unk_10084A160, &unk_1006E7978);

    sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    runAsyncAndBlock<A>(file:function:line:_:)();

    if (*(&v153 + 1))
    {
      v140 = 0x800000010071E760;
      v51 = v139;
      sub_10053CD68(v139);

      sub_10052DC18(v51);
      v120 = v146;
      sub_10000BE18(v146, &unk_10084A160, &unk_1006E7978);
      v121 = v51;
      v122 = v126;
      sub_100537B28(v121, v126, type metadata accessor for AugmentedProfile);
      v49(v122, 0, 1, v23);
      sub_1000B1FC8(v122, v120, &unk_10084A160, &unk_1006E7978);
    }
  }

  else
  {
    sub_10000BE18(v50, &unk_10084A160, &unk_1006E7978);
    sub_100537B28(v36, v29, type metadata accessor for AugmentedProfile);
    sub_10053BFD8(v29, v50);
    v49(v50, 0, 1, v23);
    sub_10052DC18(v29);
    sub_100537B90(v29, type metadata accessor for AugmentedProfile);
  }

  v52 = type metadata accessor for DIPPregeneratedAssessment(0);
  v53 = v143;
  v54 = (v143 + v52[7]);
  v55 = *v54;
  v56 = v54[1];
  v57 = (v143 + v52[6]);
  v59 = *v57;
  v58 = v57[1];
  v141 = v59;
  v140 = v58;
  v60 = (v143 + v52[12]);
  v61 = v60[1];
  v139 = *v60;
  type metadata accessor for DIPODNator(0);

  LODWORD(v134) = sub_100536710(v55, v56);
  v135 = v62;
  v64 = v63;
  v65 = (v53 + v52[10]);
  v66 = v65[1];
  v133 = *v65;
  swift_bridgeObjectRetain_n();

  v67 = v136;
  v68 = v137;
  sub_100521D68(v136, v137, v53);
  v69 = v144;
  sub_1000B1FC8(v67, v144, &qword_100835180, &unk_1006C0CE0);
  v70 = v68;
  v71 = v145;
  sub_1000B1FC8(v70, v145, &qword_100835248, &unk_1006E7940);
  v72 = v53 + v52[5];
  Date.timeIntervalSinceNow.getter();
  v74 = v73;
  if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v73 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v73 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v136 = v64;
  v75 = *(v53 + v52[13]);
  v76 = v138[6];
  v77 = v76(v69, 1, v142);
  if (v77 == 1)
  {
    v130 = 0;
  }

  else
  {
    if (__OFADD__(v75, 1))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v130 = v75 + 1;
  }

  v78 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v79 = (*(*(v78 - 8) + 48))(v71, 1, v78);
  v129 = v76;
  v128 = a3;
  if (v79 == 1)
  {
    v80 = 0;
  }

  else
  {
    v80 = v75 + 2;
    if (__OFADD__(v75, 2))
    {
LABEL_32:
      __break(1u);
      return;
    }
  }

  v81 = v79 == 1;
  *&v148 = v139;
  *(&v148 + 1) = v61;
  v149 = v139;
  v150 = v61;
  v151 = v133;
  v152 = v66;
  v153 = 0u;
  v154 = 0u;
  v82 = v134 & 1;
  *&v155[16] = 0;
  *v155 = 1uLL;
  v155[24] = 0;
  v137 = v61;
  v83 = v140;

  v134 = -v74;
  v124 = v81;
  v123 = v80;
  v84 = v144;
  v85 = v137;
  v86 = v135;
  LODWORD(v135) = v82;
  sub_100529B68(v141, v83, &v148, v86, v136, v75, &v153, v82, v144, v130, v77 == 1, v145, v123, v124, v146, v134, 0);

  swift_bridgeObjectRelease_n();

  v87 = v75 + 1;
  if (__OFADD__(v75, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v88 = v131;
  sub_10000BBC4(v84, v131, &qword_100835180, &unk_1006C0CE0);
  v89 = v142;
  if (v129(v88, 1, v142) == 1)
  {
    sub_10000BE18(v88, &qword_100835180, &unk_1006C0CE0);
    v90 = v143;
    v91 = v128;
  }

  else
  {
    v92 = v138;
    v93 = v138[4];
    v94 = v127;
    v93(v127, v88, v89);
    v95 = *(v147 + 32);
    v96 = *(v147 + 384);
    v136 = *(v147 + 40);
    v97 = String.hasPrefix(_:)(v96);
    v91 = v128;
    if (v97)
    {
      v98 = type metadata accessor for AssessmentAdditionalInfo(0);
      v133 = v87;
      v99 = v98;
      v100 = *(v98 + 28);
      v101 = v94;
      v102 = v89;
      v103 = v132;
      v93(&v132[v100], v101, v102);
      v104 = v145;
      (v92[7])(v103 + v100, 0, 1, v102);
      v85 = v137;
      v105 = v136;
      *v103 = v95;
      *(v103 + 8) = v105;
      *(v103 + 16) = v135;
      *(v103 + 24) = v134;
      *(v103 + 32) = 0;
      v106 = v103 + *(v99 + 32);
      *v106 = v133;
      *(v106 + 8) = 0;
      (*(*(v99 - 8) + 56))(v103, 0, 1, v99);

      v90 = v143;
      v107 = v146;
      goto LABEL_24;
    }

    (v92[1])(v94, v89);
    v90 = v143;
  }

  v108 = type metadata accessor for AssessmentAdditionalInfo(0);
  v103 = v132;
  (*(*(v108 - 8) + 56))(v132, 1, 1, v108);
  v104 = v145;
  v107 = v146;
LABEL_24:
  v109 = (v90 + v52[8]);
  v111 = *v109;
  v110 = v109[1];
  *(v91 + 24) = &type metadata for String;
  *(v91 + 32) = &off_1007FDA60;
  *v91 = v111;
  *(v91 + 8) = v110;

  sub_10000BE18(v107, &unk_10084A160, &unk_1006E7978);
  v112 = v154;
  *(v91 + 88) = v153;
  v113 = v147;
  v114 = *(v147 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v115 = *(v147 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  *(v91 + 40) = v139;
  *(v91 + 48) = v85;
  v116 = v140;
  *(v91 + 56) = v141;
  *(v91 + 64) = v116;
  *(v91 + 72) = 0;
  *(v91 + 80) = 0;
  *(v91 + 104) = v112;
  *(v91 + 120) = *v155;
  *(v91 + 129) = *&v155[9];
  *(v91 + 200) = 0u;
  *(v91 + 184) = 0u;
  *(v91 + 168) = 0u;
  *(v91 + 152) = 0u;
  *(v91 + 216) = v114;
  *(v91 + 224) = v115;
  v117 = type metadata accessor for ODNAssessmentResult(0);
  sub_1000B1FC8(v103, v91 + *(v117 + 44), &qword_100836328, &unk_1006C51B0);

  sub_10000BE18(v104, &qword_100835248, &unk_1006E7940);
  sub_10000BE18(v144, &qword_100835180, &unk_1006C0CE0);
  v118 = *(v113 + 376);
  if (v118)
  {
    v119 = v118;
    OS_dispatch_semaphore.signal()();
  }
}

uint64_t sub_100521BB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100521BD4, 0, 0);
}

uint64_t sub_100521BD4()
{
  v1 = *(*(v0 + 24) + 152);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100521C68;

  return sub_100545B38();
}

uint64_t sub_100521C68(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v6 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return _swift_task_switch(sub_10053CD28, 0, 0);
}

uint64_t sub_100521D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a1;
  v57 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  __chkstk_darwin(v4);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Logger();
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v55);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v58 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v58);
  v16 = &v47 - v15;
  v17 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  v22 = type metadata accessor for DIPPregeneratedAssessment(0);
  v23 = (a3 + *(v22 + 60));
  if (v23[1])
  {
    v24 = v22;
    v25 = *v23;
    v26 = Data.init(base64Encoded:options:)();
    if (v27 >> 60 != 15)
    {
      v28 = v27;
      v29 = (a3 + *(v24 + 64));
      if (v29[1])
      {
        v50 = v26;
        v51 = v27;
        v30 = *v29;
        v32 = Data.init(base64Encoded:options:)();
        v26 = v50;
        v28 = v51;
        if (v31 >> 60 != 15)
        {
          v48 = v31;
          v49 = v32;
          v40 = type metadata accessor for JSONDecoder();
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          sub_1000BA30C(&qword_100835728, &unk_100835208, &unk_1006C0D10);
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          sub_1000BA30C(&qword_100835788, &qword_1008352C8, &qword_1006C0D50);
          v43 = v48;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          sub_10000BD94(v50, v51);

          sub_10000BD94(v49, v43);
          v44 = v56;
          (*(v18 + 32))(v56, v21, v17);
          (*(v18 + 56))(v44, 0, 1, v17);
          v45 = v57;
          v46 = v58;
          (*(v13 + 32))(v57, v16, v58);
          v38 = v46;
          v37 = v45;
          v36 = 0;
          return (*(v13 + 56))(v37, v36, 1, v38);
        }
      }

      sub_10000BD94(v26, v28);
    }
  }

  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "No Encrypted Containers from pre-generated assessment", v35, 2u);
  }

  (*(v7 + 8))(v12, v55);
  v36 = 1;
  (*(v18 + 56))(v56, 1, 1, v17);
  v37 = v57;
  v38 = v58;
  return (*(v13 + 56))(v37, v36, 1, v38);
}

uint64_t sub_100522400@<X0>(NSObject *a1@<X0>, int a2@<W1>, _OWORD *a3@<X2>, NSObject *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v7 = v6;
  v417 = a5;
  v444 = a6;
  v445 = a4;
  v418 = a3;
  v410 = a2;
  v421 = a1;
  v8 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v419 = *(v8 - 8);
  v420 = v8;
  v9 = v419[8];
  __chkstk_darwin(v8);
  v407 = &v394 - v10;
  v11 = sub_100007224(&qword_100836328, &unk_1006C51B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v409 = &v394 - v13;
  v404 = type metadata accessor for String.Encoding();
  v408 = *(v404 - 8);
  isa = v408[8].isa;
  __chkstk_darwin(v404);
  v405 = &v394 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  v424 = *(v16 - 8);
  v425 = v16;
  v17 = *(v424 + 64);
  __chkstk_darwin(v16);
  v411 = (&v394 - v18);
  v19 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v415 = *(v19 - 8);
  v20 = *(v415 + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v423 = &v394 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v402 = &v394 - v24;
  v416 = v25;
  __chkstk_darwin(v23);
  v428 = &v394 - v26;
  v27 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v413 = *(v27 - 8);
  v28 = *(v413 + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v406 = &v394 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v422 = &v394 - v32;
  v33 = __chkstk_darwin(v31);
  v412 = (&v394 - v34);
  v414 = v35;
  __chkstk_darwin(v33);
  v426 = (&v394 - v36);
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v431 = v37;
  v432 = v38;
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v430 = &v394 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v433 = &v394 - v42;
  v43 = type metadata accessor for DIPError.Code();
  v441 = *(v43 - 8);
  v442 = v43;
  v44 = *(v441 + 64);
  __chkstk_darwin(v43);
  v448 = (&v394 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = &v394 - v48;
  v450 = type metadata accessor for AugmentedProfile(0);
  v50 = *(v450 - 1);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v450);
  v436 = &v394 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v440 = &v394 - v55;
  v56 = __chkstk_darwin(v54);
  v435 = (&v394 - v57);
  __chkstk_darwin(v56);
  v59 = &v394 - v58;
  countAndFlagsBits = type metadata accessor for Logger();
  v60 = *(countAndFlagsBits - 8);
  v61 = *(v60 + 64);
  v62 = __chkstk_darwin(countAndFlagsBits);
  v438 = &v394 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v439 = &v394 - v65;
  v66 = __chkstk_darwin(v64);
  v437 = (&v394 - v67);
  v68 = __chkstk_darwin(v66);
  v434 = &v394 - v69;
  v70 = __chkstk_darwin(v68);
  v403 = &v394 - v71;
  v72 = __chkstk_darwin(v70);
  v429 = &v394 - v73;
  v74 = __chkstk_darwin(v72);
  v427 = &v394 - v75;
  v76 = __chkstk_darwin(v74);
  v443 = &v394 - v77;
  v78 = __chkstk_darwin(v76);
  v80 = &v394 - v79;
  __chkstk_darwin(v78);
  v82 = &v394 - v81;
  defaultLogger()();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  v85 = os_log_type_enabled(v83, v84);
  v447 = v7;
  if (v85)
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "Computing new assessment", v86, 2u);
    v7 = v447;
  }

  v87 = (v60 + 8);
  object = *(v60 + 8);
  object(v82, countAndFlagsBits);
  v88 = v450;
  v446 = swift_allocBox();
  v90 = v89;
  sub_10000BBC4(v445, v49, &unk_10084A160, &unk_1006E7978);
  v91 = (*(v50 + 48))(v49, 1, v88);
  v449 = v87;
  if (v91 == 1)
  {
    sub_10000BE18(v49, &unk_10084A160, &unk_1006E7978);

    sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    runAsyncAndBlock<A>(file:function:line:_:)();

    if (!*(&v471 + 1))
    {
      v445 = 0x800000010071E6B0;
      v450 = "sessment GUID to use";
      defaultLogger()();
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 0;
        _os_log_impl(&_mh_execute_header, v154, v155, "assessment profile is missing, skip assessment", v156, 2u);
      }

      object(v80, countAndFlagsBits);
      (*(v441 + 104))(v448, enum case for DIPError.Code.odnMissingProfile(_:), v442);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v157 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v442 = v157;
      v158 = *(*(v157 - 8) + 72);
      v159 = (*(*(v157 - 8) + 80) + 32) & ~*(*(v157 - 8) + 80);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_1006BF740;
      v161 = v160 + v159;
      v162 = (v160 + v159 + *(v157 + 48));
      v163 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
      v164 = type metadata accessor for DIPError.PropertyKey();
      v165 = *(*(v164 - 8) + 104);
      (v165)(v161, v163, v164);
      v166 = v447;
      v167 = *(v447 + 16);
      v168 = *(v447 + 24);
      v162[3] = &type metadata for String;
      v162[4] = &protocol witness table for String;
      *v162 = v167;
      v162[1] = v168;
      v169 = (v161 + v158 + *(v442 + 48));
      v165();
      v170 = *(v166 + 32);
      v171 = *(v166 + 40);
      v169[3] = &type metadata for String;
      v169[4] = &protocol witness table for String;
      *v169 = v170;
      v169[1] = v171;

      sub_10003C9C0(v160);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v392 = 500;
      v390 = 0xD000000000000070;
      v391 = v445;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v172 = v443;
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      object(v172, countAndFlagsBits);

      swift_beginAccess();
      v173 = v444;
      sub_10000BBC4(v166 + 216, v444, &qword_100834EB0, &qword_1006E78F0);
      v175 = *(v166 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
      v174 = *(v166 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
      v176 = *(type metadata accessor for ODNAssessmentResult(0) + 44);
      v177 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v177 - 8) + 56))(v173 + v176, 1, 1, v177);
      *(v173 + 13) = 0u;
      *(v173 + 11) = 0u;
      *(v173 + 9) = 0u;
      *(v173 + 7) = 0u;
      *(v173 + 5) = 0u;
      v173[16] = 0;
      v173[17] = 0;
      v173[15] = 1;
      *(v173 + 144) = 0;
      *(v173 + 19) = 0u;
      *(v173 + 21) = 0u;
      *(v173 + 23) = 0u;
      *(v173 + 25) = 0u;
      v173[27] = v175;
      v173[28] = v174;
      swift_deallocBox();
    }

    v92 = v440;
    sub_10053CD68(v440);

    sub_10052DC18(v92);
    v178 = v435;
    sub_100537B28(v92, v435, type metadata accessor for AugmentedProfile);
    sub_100537B28(v178, v90, type metadata accessor for AugmentedProfile);
    v59 = v436;
    sub_10053BFD8(v90, v436);
    sub_10053D32C(v59);
  }

  else
  {
    sub_100537B28(v49, v59, type metadata accessor for AugmentedProfile);
    sub_10053BFD8(v59, v90);
    sub_10052DC18(v59);
  }

  sub_100537B90(v59, type metadata accessor for AugmentedProfile);
  v93 = v450;
  v94 = (v90 + v450[5]);
  v95 = *v94;
  v96 = v94[1];

  v97 = Data.init(base64Encoded:options:)();
  v99 = v98;

  if (v99 >> 60 == 15)
  {
    v100 = v439;
    defaultLogger()();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "assessment profile is missing, skip assessment", v103, 2u);
    }

    object(v100, countAndFlagsBits);
    (*(v441 + 104))(v448, enum case for DIPError.Code.odnMissingProfile(_:), v442);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v104 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v450 = v104;
    v105 = *(*(v104 - 8) + 72);
    v106 = (*(*(v104 - 8) + 80) + 32) & ~*(*(v104 - 8) + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1006BF740;
    v108 = v107 + v106;
    v109 = (v107 + v106 + *(v104 + 48));
    v110 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
    v111 = type metadata accessor for DIPError.PropertyKey();
    v112 = *(*(v111 - 8) + 104);
    (v112)(v108, v110, v111);
    v113 = v447;
    v114 = *(v447 + 16);
    v115 = *(v447 + 24);
    v109[3] = &type metadata for String;
    v109[4] = &protocol witness table for String;
    *v109 = v114;
    v109[1] = v115;
    v116 = (v108 + v105 + v450[12]);
    v112();
    v117 = *(v113 + 32);
    v118 = *(v113 + 40);
    v119 = v113;
    v116[3] = &type metadata for String;
    v116[4] = &protocol witness table for String;
    *v116 = v117;
    v116[1] = v118;

    sub_10003C9C0(v107);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v391 = 0x800000010071E6B0;
    v392 = 509;
    v390 = 0xD000000000000070;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v120 = v443;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
LABEL_16:
    object(v120, countAndFlagsBits);

    swift_beginAccess();
    v147 = v444;
    sub_10000BBC4(v119 + 216, v444, &qword_100834EB0, &qword_1006E78F0);
    v148 = (v119 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
LABEL_17:
    v150 = *v148;
    v149 = v148[1];
    v151 = *(type metadata accessor for ODNAssessmentResult(0) + 44);
    v152 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v152 - 8) + 56))(v147 + v151, 1, 1, v152);

    *(v147 + 13) = 0u;
    *(v147 + 11) = 0u;
    *(v147 + 9) = 0u;
    *(v147 + 7) = 0u;
    *(v147 + 5) = 0u;
    v147[16] = 0;
    v147[17] = 0;
    v147[15] = 1;
    *(v147 + 144) = 0;
    *(v147 + 19) = 0u;
    *(v147 + 21) = 0u;
    *(v147 + 23) = 0u;
    *(v147 + 25) = 0u;
    v147[27] = v150;
    v147[28] = v149;
    return result;
  }

  v121 = v93[6];
  v439 = v90;
  v122 = (v90 + v121);
  if (!v122[1] || (v123 = *v122, v124 = v122[1], , v125 = Data.init(base64Encoded:options:)(), v127 = v126, , v127 >> 60 == 15))
  {
    v445 = v97;
    v440 = v99;
    v128 = v437;
    defaultLogger()();
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "assessment profileInfo is missing, skip assessment", v131, 2u);
    }

    object(v128, countAndFlagsBits);
    (*(v441 + 104))(v448, enum case for DIPError.Code.assessmentProfileInfoMissing(_:), v442);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v132 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v450 = v132;
    v133 = *(*(v132 - 8) + 72);
    v134 = (*(*(v132 - 8) + 80) + 32) & ~*(*(v132 - 8) + 80);
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_1006BF740;
    v136 = v135 + v134;
    v137 = (v135 + v134 + *(v132 + 48));
    v138 = enum case for DIPError.PropertyKey.inoWorkflowID(_:);
    v139 = type metadata accessor for DIPError.PropertyKey();
    v140 = *(*(v139 - 8) + 104);
    (v140)(v136, v138, v139);
    v141 = v447;
    v142 = *(v447 + 16);
    v143 = *(v447 + 24);
    v137[3] = &type metadata for String;
    v137[4] = &protocol witness table for String;
    *v137 = v142;
    v137[1] = v143;
    v144 = (v136 + v133 + v450[12]);
    v140();
    v145 = *(v141 + 32);
    v146 = *(v141 + 40);
    v119 = v141;
    v144[3] = &type metadata for String;
    v144[4] = &protocol witness table for String;
    *v144 = v145;
    v144[1] = v146;

    sub_10003C9C0(v135);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v391 = 0x800000010071E6B0;
    v392 = 515;
    v390 = 0xD000000000000070;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v120 = v443;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    sub_10000BD94(v445, v440);
    goto LABEL_16;
  }

  v448 = v125;
  swift_beginAccess();
  sub_10000BBC4(v7 + 216, &v471, &qword_100834EB0, &qword_1006E78F0);
  v179 = *(&v472 + 1);
  sub_10000BE18(&v471, &qword_100834EB0, &qword_1006E78F0);
  if (v179 && *(v7 + 280) >> 60 != 15 && *(v7 + 264) && (swift_beginAccess(), sub_10000BBC4(v7 + 288, &v471, &qword_100834EB0, &qword_1006E78F0), v180 = *(&v472 + 1), sub_10000BE18(&v471, &qword_100834EB0, &qword_1006E78F0), v180) && *(v7 + 352) >> 60 != 15 && *(v7 + 336))
  {
    v181 = 0;
  }

  else
  {

    v392 = v7;
    v393 = &type metadata for () + 8;
    runAsyncAndBlock<A>(timeout:file:function:line:_:)();
    v181 = 0;
  }

  v198 = *(v7 + 280);
  v199 = v434;
  if (v198 >> 60 == 15 || (v200 = *(v7 + 264)) == 0)
  {
    defaultLogger()();
    v209 = Logger.logObject.getter();
    v210 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      *v211 = 0;
      _os_log_impl(&_mh_execute_header, v209, v210, "No assessment guid was set; skipping assessment", v211, 2u);

      sub_10000BD94(v97, v99);

      sub_10000BD94(v448, v127);
    }

    else
    {
      sub_10000BD94(v448, v127);
      sub_10000BD94(v97, v99);
    }

    object(v199, countAndFlagsBits);
    v212 = v7 + 216;
    v213 = v7;
    v147 = v444;
    sub_10000BBC4(v212, v444, &qword_100834EB0, &qword_1006E78F0);
    v148 = (v213 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    goto LABEL_17;
  }

  v201 = *(v7 + 256);
  v437 = *(v7 + 272);
  v441 = v198;
  sub_1000363B4(v437, v198);
  v442 = v200;

  UUID.init()();
  v202 = UUID.uuidString.getter();
  v203 = v202;
  v205 = v204;
  v206 = *(v7 + 72);
  v399 = v201;
  if (v206)
  {
    v207 = *(v7 + 64);
    if (qword_100832CA8 != -1)
    {
      v388 = v206;
      v389 = *(v7 + 64);
      swift_once();
      v207 = v389;
      v206 = v388;
    }

    v208 = sub_100555FD4(*(v7 + 48), *(v7 + 56), v207, v206);
    v436 = v203;
    v221 = 0;
    v222 = (v208 + 16);
    v223 = *(v208 + 16);
    v445 = v97;
    v400 = v127;
    if (v223)
    {
      v224 = v208;

      if (v223 > *v222)
      {
        __break(1u);
        goto LABEL_108;
      }

      v225 = &v222[2 * v223];
      v220 = v225[1];
      v436 = *v225;

      v181 = 0;
    }

    else
    {

      v181 = 0;
      v220 = v205;
    }

    v219 = v430;
  }

  else
  {
    v436 = v202;
    v214 = v427;
    defaultLogger()();
    v215 = Logger.logObject.getter();
    v216 = static os_log_type_t.info.getter();
    v217 = os_log_type_enabled(v215, v216);
    v445 = v97;
    v400 = v127;
    if (v217)
    {
      v218 = swift_slowAlloc();
      *v218 = 0;
      _os_log_impl(&_mh_execute_header, v215, v216, "No launch tiers, so no sessions to search for", v218, 2u);
    }

    object(v214, countAndFlagsBits);
    v219 = v430;
    v220 = v205;
  }

  v226 = v433;
  v434 = UUID.uuidString.getter();
  v228 = v227;
  v229 = *(v7 + 336);
  v401 = *(v7 + 328);
  v427 = v229;

  v435 = v220;

  v230 = v429;
  defaultLogger()();
  v231 = v431;
  v232 = v432;
  (*(v432 + 16))(v219, v226, v431);

  v233 = Logger.logObject.getter();
  v234 = static os_log_type_t.debug.getter();

  v396 = v234;
  if (os_log_type_enabled(v233, v234))
  {
    v394 = v233;
    v395 = 0;
    v398 = v228;
    v440 = v99;
    v235 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    v237 = v430;
    *&v471 = v236;
    *v235 = 136315394;
    v238 = UUID.uuidString.getter();
    v240 = v239;
    v241 = *(v232 + 8);
    v241(v237, v231);
    v242 = sub_100141FE4(v238, v240, &v471);

    *(v235 + 4) = v242;
    *(v235 + 12) = 2080;
    v243 = *(v7 + 336);
    v397 = v241;
    if (v243)
    {
      v244 = *(v7 + 328);
      v245 = v243;
    }

    else
    {
      v245 = 0xE500000000000000;
      v244 = 0x3E6C696E3CLL;
    }

    v246 = v436;
    v248 = v429;
    v249 = v396;

    v250 = sub_100141FE4(v244, v245, &v471);

    *(v235 + 14) = v250;
    v251 = v394;
    _os_log_impl(&_mh_execute_header, v394, v249, "using tsid %s ts session %%@ tguid %s", v235, 0x16u);
    swift_arrayDestroy();

    object(v248, countAndFlagsBits);
    v7 = v447;
    v99 = v440;
    v181 = v395;
    v247 = v398;
  }

  else
  {

    v397 = *(v232 + 8);
    v397(v430, v231);
    object(v230, countAndFlagsBits);
    v246 = v436;
    v247 = v228;
  }

  v252 = v435;
  v253 = type metadata accessor for JSONEncoder();
  v254 = *(v253 + 48);
  v255 = *(v253 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v256 = v434;
  *&v471 = v434;
  *(&v471 + 1) = v247;
  *&v472 = v246;
  *(&v472 + 1) = v252;
  *&v473[0] = v401;
  *(&v473[0] + 1) = v427;
  sub_10053B49C();
  v257 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v259 = v445;
  if (v181)
  {

    sub_10000BD94(v437, v441);

    sub_10000BD94(v448, v400);

    sub_10000BD94(v259, v99);
    v397(v433, v431);

    v271 = object;
    v272 = v438;
LABEL_29:
    defaultLogger()();
    swift_errorRetain();
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = v181;
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *&v471 = v186;
      *v185 = 136446210;
      *&v462 = v184;
      swift_errorRetain();
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      v187 = String.init<A>(reflecting:)();
      v189 = sub_100141FE4(v187, v188, &v471);
      v7 = v447;

      *(v185 + 4) = v189;
      _os_log_impl(&_mh_execute_header, v182, v183, "ignoring failed to generate assessment data. error %{public}s", v185, 0xCu);
      sub_10000BB78(v186);

      v181 = v184;
    }

    v190 = countAndFlagsBits;
    v271(v272, countAndFlagsBits);
    v191 = v443;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v271(v191, v190);
    sub_10051EB94(v181, 2, &v471);

    swift_beginAccess();
    v192 = v444;
    sub_10000BBC4(v7 + 216, v444, &qword_100834EB0, &qword_1006E78F0);
    v194 = *(v7 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    v193 = *(v7 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
    v195 = *(type metadata accessor for ODNAssessmentResult(0) + 44);
    v196 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v196 - 8) + 56))(v192 + v195, 1, 1, v196);
    v197 = v472;
    *(v192 + 11) = v471;
    *(v192 + 9) = 0u;
    *(v192 + 7) = 0u;
    *(v192 + 5) = 0u;
    *(v192 + 13) = v197;
    *(v192 + 15) = v473[0];
    *(v192 + 129) = *(v473 + 9);
    *(v192 + 19) = 0u;
    *(v192 + 21) = 0u;
    *(v192 + 23) = 0u;
    *(v192 + 25) = 0u;
    v192[27] = v194;
    v192[28] = v193;
  }

  v398 = v247;
  v260 = v257;
  v261 = v258;

  sub_100007224(&qword_10083C068, &qword_1006DEC10);
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_1006BF520;
  *(v262 + 32) = v260;
  *(v262 + 40) = v261;
  v429 = v260;
  v430 = v261;
  sub_10000B8B8(v260, v261);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v440 = v99;
  v396 = MKBGetDeviceLockState();
  v264 = v424;
  v263 = v425;
  v265 = v439;
  v266 = (*(v424 + 48))(v439, 1, v425);
  v267 = 0;
  v268 = 0;
  if (!v266)
  {
    v269 = v411;
    (*(v264 + 16))(v411, v265, v263);
    JWSSignedJSON.payload.getter();
    (*(v264 + 8))(v269, v263);
    v473[1] = v465;
    v474 = v466;
    v475[0] = v467[0];
    *(v475 + 13) = *(v467 + 13);
    v471 = v462;
    v472 = v463;
    v473[0] = v464;
    sub_10000BBC4(&v471, &v453, &qword_100835658, &qword_1006C1A50);
    sub_10009E858(&v471);
    if (*(&v471 + 1))
    {
      v268 = *(&v473[1] + 1);
      v270 = *&v473[1];

      sub_10000BE18(&v471, &qword_100835658, &qword_1006C1A50);
      v267 = v270;
    }

    else
    {
      v267 = 0;
      v268 = 0;
    }
  }

  v99 = v426;
  sub_1005259FC(v426, v428, v267, v268, v256, v398, v399, v442);
  v395 = 0;

  v273 = v412;
  sub_10000BBC4(v99, v412, &qword_100835180, &unk_1006C0CE0);
  v275 = v419;
  v274 = v420;
  v276 = v419[6];
  v397 = (v419 + 6);
  v394 = v276;
  if ((v276)(v273, 1, v420) == 1)
  {
    sub_10000BE18(v273, &qword_100835180, &unk_1006C0CE0);
    v221 = v428;
  }

  else
  {
    EncryptedDataContainer.data.getter();
    v278 = v277;
    (v275[1])(v273, v274);
    v221 = v428;
    if (v278)
    {
      v279 = v405;
      static String.Encoding.utf8.getter();
      v280 = String.data(using:allowLossyConversion:)();
      v282 = v281;

      v283 = v408 + 1;
      v284 = v408[1].isa;
      v285 = v279;
      v286 = v404;
      v284(v285, v404);
      if (v282 >> 60 != 15)
      {
        v425 = v280;
        v408 = v283;
        v287 = v402;
        sub_10000BBC4(v221, v402, &qword_100835248, &unk_1006E7940);
        v288 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
        v289 = *(v288 - 8);
        if ((*(v289 + 48))(v287, 1, v288) == 1)
        {
          sub_10000BD94(v425, v282);
          sub_10000BE18(v287, &qword_100835248, &unk_1006E7940);
          v7 = v447;
        }

        else
        {
          v290 = v282;
          v291 = v262;
          EncryptedDataContainer.data.getter();
          v293 = v292;
          (*(v289 + 8))(v287, v288);
          if (v293)
          {
            v294 = v405;
            static String.Encoding.utf8.getter();
            v295 = String.data(using:allowLossyConversion:)();
            v297 = v296;

            v284(v294, v286);
            if (v297 >> 60 != 15)
            {
              sub_10000B8B8(v425, v290);
              isEscapingClosureAtFileLocation = *(v291 + 2);
              v298 = *(v291 + 3);
              v300 = v298 >> 1;
              v301 = isEscapingClosureAtFileLocation + 1;
              if (v298 >> 1 > isEscapingClosureAtFileLocation)
              {
                goto LABEL_75;
              }

              goto LABEL_111;
            }
          }

          sub_10000BD94(v425, v290);
          v7 = v447;
          v221 = v428;
          v99 = v426;
          v262 = v291;
        }
      }
    }
  }

  while (1)
  {
    v408 = v262;
    v224 = v396 - 1;
    if (qword_100832C98 != -1)
    {
LABEL_108:
      swift_once();
    }

    v304 = v224 < 2;
    v305 = off_1008475C8;
    os_unfair_lock_lock(off_1008475C8 + 6);
    v425 = *(v305 + 2);

    os_unfair_lock_unlock(v305 + 6);
    v306 = *(v7 + 40);
    v424 = *(v7 + 32);
    LODWORD(v405) = *(v7 + 208);
    v307 = *(v7 + 368);
    v411 = v306;
    v412 = v307;
    sub_10000BBC4(v99, v422, &qword_100835180, &unk_1006C0CE0);
    sub_10000BBC4(v221, v423, &qword_100835248, &unk_1006E7940);
    v308 = (*(v413 + 80) + 64) & ~*(v413 + 80);
    v309 = (v414 + *(v415 + 80) + v308) & ~*(v415 + 80);
    v310 = v309 + v416;
    v311 = (v309 + v416) & 0xFFFFFFFFFFFFFFF8;
    v312 = swift_allocObject();
    *(v312 + 16) = v7;
    LODWORD(v416) = v304;
    *(v312 + 24) = v304;
    v313 = v435;
    v314 = v436;
    *(v312 + 32) = v446;
    *(v312 + 40) = v314;
    v291 = v421;
    *(v312 + 48) = v313;
    *(v312 + 56) = v291;
    sub_1000B1FC8(v422, v312 + v308, &qword_100835180, &unk_1006C0CE0);
    sub_1000B1FC8(v423, v312 + v309, &qword_100835248, &unk_1006E7940);
    *(v312 + v310) = v417 & 1;
    v315 = (v312 + v311);
    v316 = v398;
    v315[1] = v434;
    v315[2] = v316;
    v315[3] = v314;
    v315[4] = v313;
    v317 = v427;
    v315[5] = v401;
    v315[6] = v317;
    v318 = (v312 + ((v311 + 63) & 0xFFFFFFFFFFFFFFF8));
    v319 = v418;
    *(v318 + 41) = *(v418 + 41);
    v320 = v319[2];
    v318[1] = v319[1];
    v318[2] = v320;
    *v318 = *v319;
    v482 = xmmword_1006BF650;
    v483 = xmmword_1006DE2A0;
    v484 = xmmword_1006BF650;
    LODWORD(v485) = 0;
    *(&v485 + 1) = 0xBFF0000000000000;
    v321 = v425;
    v436 = *(v425 + 32);
    v301 = swift_allocObject();
    v322 = v424;
    *(v301 + 16) = v321;
    *(v301 + 24) = v322;
    v290 = v411;
    *(v301 + 32) = v411;
    v323 = swift_allocObject();
    *(v323 + 16) = sub_10053CD64;
    *(v323 + 24) = v301;
    *&v464 = sub_10026CBB8;
    *(&v464 + 1) = v323;
    *&v462 = _NSConcreteStackBlock;
    *(&v462 + 1) = 1107296256;
    *&v463 = sub_10057E264;
    *(&v463 + 1) = &unk_100816380;
    v324 = _Block_copy(&v462);
    v297 = *(&v464 + 1);

    v325 = v400;
    sub_1000363B4(v448, v400);
    v435 = v412;

    sub_10000BBC4(v319, &v471, &qword_100835768, &qword_1006DB770);
    v295 = v436;

    dispatch_sync(v295, v324);

    _Block_release(v324);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_110;
    }

    v327 = *(v425 + 16);
    __chkstk_darwin(v326);
    v328 = v424;
    *(&v394 - 18) = v329;
    *(&v394 - 17) = v328;
    *(&v394 - 16) = v290;
    LOBYTE((&v394)[-15]) = v405;
    v330 = v440;
    v331 = v441;
    *(&v394 - 14) = v437;
    *(&v394 - 13) = v331;
    v332 = v445;
    *(&v394 - 12) = v445;
    *(&v394 - 11) = v330;
    v333 = v448;
    *(&v394 - 10) = v448;
    *(&v394 - 9) = v325;
    v334 = v408;
    *(&v394 - 8) = v421;
    *(&v394 - 7) = v334;
    *(&v394 - 6) = v412;
    LOBYTE((&v394)[-5]) = v410 & 1;
    v390 = sub_10053C600;
    v391 = v312;
    v392 = &v482;
    v335 = v395;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v335)
    {
      v336 = v335;

      v337 = [objc_opt_self() standardUserDefaults];
      v338._countAndFlagsBits = static DaemonInternalDefaultsKeys.enableTapToRadarForNotableErrors.getter();
      v339 = NSUserDefaults.internalBool(forKey:)(v338);

      v340 = v431;
      if (v339)
      {
        v341 = v403;
        defaultLogger()();
        v342 = Logger.logObject.getter();
        v343 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v342, v343))
        {
          v344 = swift_slowAlloc();
          *v344 = 0;
          _os_log_impl(&_mh_execute_header, v342, v343, "Triggering tap-to-radar for ODN mypg due to user defaults setting", v344, 2u);
        }

        object(v341, countAndFlagsBits);
        if (static DIPFeatures.sharedInstance.getter())
        {
          ObjectType = swift_getObjectType();
          swift_errorRetain();
          v392 = 0;
          v393 = ObjectType;
          DIPFeaturesProtocol.triggerTapToRadar(forContext:title:error:attachmentFilePaths:deleteOnAttach:description:)();
          swift_unknownObjectRelease();
        }
      }

      v181 = v336;
      swift_willThrow();
      sub_10000BD94(v437, v441);
      sub_10000BD94(v445, v440);

      v346 = v448;
      sub_10000BD94(v448, v325);
      sub_10000BD94(v346, v325);
      sub_10000B90C(v429, v430);
      sub_10000BE18(v428, &qword_100835248, &unk_1006E7940);
      sub_10000BE18(v426, &qword_100835180, &unk_1006C0CE0);
      (*(v432 + 8))(v433, v340);
      v471 = v482;
      v472 = v483;
      v473[0] = v484;
      v473[1] = v485;
      sub_10053B540(&v471);

      v7 = v447;
      v272 = v438;
      v271 = object;
      goto LABEL_29;
    }

    v445 = v332;
    v347 = v424;
    v449 = &v394;

    sub_10000BD94(v333, v325);

    v478[0] = v482;
    v478[1] = v483;
    v479 = v484;
    v480 = v485;
    v481[0] = v482;
    v481[1] = v483;
    v481[2] = v484;
    v481[3] = v485;
    sub_10053B594(v478, &v471);
    sub_10053B540(v481);
    v348 = Data.base64EncodedString(options:)(0);
    object = v348._object;
    countAndFlagsBits = v348._countAndFlagsBits;
    v349 = 0;
    v350 = 0;
    v351 = *(&v479 + 1);
    if (*(&v479 + 1) >> 60 != 15)
    {
      v352 = v479;
      sub_10000B8B8(v479, *(&v479 + 1));
      v353 = Data.base64EncodedString(options:)(0);
      v349 = v353._countAndFlagsBits;
      v350 = v353._object;
      sub_10000BD94(v352, v351);
    }

    v438 = v350;
    v443 = v349;
    isEscapingClosureAtFileLocation = v447;
    sub_10000BBC4(v447 + 216, v470, &qword_100834EB0, &qword_1006E78F0);
    v295 = v432;
    v290 = v426;
    v291 = v406;
    v297 = v407;
    v301 = v347;
    if (v470[3])
    {
      sub_100007224(&qword_100834EB8, &qword_1006C06F0);
      if (swift_dynamicCast())
      {
        v460 = v468;
        v461 = v469;
        v455 = v464;
        v456 = v465;
        v458 = v467[0];
        v459 = v467[1];
        v457 = v466;
        v453 = v462;
        v454 = v463;
        nullsub_7(&v453);
        v301 = v347;
        v475[1] = v459;
        v476 = v460;
        v477 = v461;
        v473[0] = v455;
        v473[1] = v456;
        v474 = v457;
        v475[0] = v458;
        v471 = v453;
        v472 = v454;
        goto LABEL_94;
      }
    }

    else
    {
      sub_10000BE18(v470, &qword_100834EB0, &qword_1006E78F0);
    }

    sub_10053C7B8(&v471);
LABEL_94:
    v400 = v325;
    v298 = v480;
    v354 = (v480 + 1);
    if (v480 != -1)
    {
      break;
    }

LABEL_110:
    __break(1u);
LABEL_111:
    v291 = sub_1003C55E4((v298 > 1), v301, 1, v291);
    v298 = *(v291 + 3);
    v300 = v298 >> 1;
LABEL_75:
    *(v291 + 2) = v301;
    v302 = &v291[16 * isEscapingClosureAtFileLocation];
    *(v302 + 4) = v425;
    *(v302 + 5) = v290;
    if (v300 < (isEscapingClosureAtFileLocation + 2))
    {
      v291 = sub_1003C55E4((v298 > 1), isEscapingClosureAtFileLocation + 2, 1, v291);
    }

    sub_10000BD94(v425, v290);
    *(v291 + 2) = isEscapingClosureAtFileLocation + 2;
    v262 = v291;
    v303 = &v291[16 * v301];
    *(v303 + 4) = v295;
    *(v303 + 5) = v297;
    v7 = v447;
    v221 = v428;
    v99 = v426;
  }

  sub_10000BBC4(v290, v291, &qword_100835180, &unk_1006C0CE0);
  v355 = v420;
  if ((v394)(v291, 1, v420) == 1)
  {
    sub_10000BE18(v291, &qword_100835180, &unk_1006C0CE0);
    v356 = v445;
    goto LABEL_100;
  }

  v436 = v354;
  v357 = v419;
  v358 = v419[4];
  v358(v297, v291, v355);
  v359 = v301;
  v360 = v411;
  if (String.hasPrefix(_:)(*(isEscapingClosureAtFileLocation + 384)))
  {
    v361 = type metadata accessor for AssessmentAdditionalInfo(0);
    v362 = v297;
    v363 = *(v361 + 28);
    v364 = v409;
    v358(v409 + v363, v362, v355);
    (v357[7])(v364 + v363, 0, 1, v355);
    *v364 = v359;
    *(v364 + 8) = v360;
    *(v364 + 16) = v416;
    *(v364 + 24) = 0;
    *(v364 + 32) = 0;
    v365 = v364 + *(v361 + 32);
    *v365 = v436;
    *(v365 + 8) = 0;
    (*(*(v361 - 8) + 56))(v364, 0, 1, v361);

    v356 = v445;
    v366 = v400;
    v367 = v431;
    v295 = v432;
    v290 = v426;
  }

  else
  {
    (v357[1])(v297, v355);
    v356 = v445;
    v295 = v432;
    v290 = v426;
LABEL_100:
    v368 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v368 - 8) + 56))(v409, 1, 1, v368);
    v366 = v400;
    v367 = v431;
  }

  v467[1] = v475[1];
  v468 = v476;
  v469 = v477;
  v464 = v473[0];
  v465 = v473[1];
  v466 = v474;
  v467[0] = v475[0];
  v462 = v471;
  v463 = v472;
  if (sub_10021C1F8(&v462) == 1)
  {
    sub_10000BD94(v437, v441);
    sub_10000BD94(v356, v440);
    sub_10053B540(v478);
    sub_10000BD94(v448, v366);
    sub_10000B90C(v429, v430);
    sub_10000BE18(v428, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v290, &qword_100835180, &unk_1006C0CE0);
    (*(v295 + 1))(v433, v367);
    v447 = 0;
    v369 = 0;
    v370 = 0;
    v371 = 0;
    v372 = 0;
    v373 = 0;
    v374 = 0;
    v375 = 0;
  }

  else
  {
    v376 = v462;
    sub_10000BD94(v437, v441);
    sub_10000BD94(v356, v440);
    v377 = 49;
    if (v376)
    {
      v377 = 50;
    }

    v447 = v377;
    sub_10053B540(v478);
    sub_10000BD94(v448, v366);
    sub_10000B90C(v429, v430);
    sub_10000BE18(v428, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v290, &qword_100835180, &unk_1006C0CE0);
    (*(v295 + 1))(v433, v367);
    v370 = *(&v466 + 1);
    v372 = *(&v467[0] + 1);
    v371 = *&v467[0];
    v374 = *(&v467[1] + 1);
    v373 = *&v467[1];
    v375 = v468;

    sub_10000BE18(&v471, &qword_1008475B8, &qword_1006E79F0);
    v369 = 0xE100000000000000;
  }

  v378 = v439;
  swift_beginAccess();
  v379 = &v378[v450[7]];
  v380 = *v379;
  v381 = *(v379 + 1);
  v382 = v444;
  v383 = v442;
  *v444 = v399;
  v382[1] = v383;
  v382[3] = &type metadata for String;
  v382[4] = &off_1007FDA60;
  v384 = v398;
  v382[5] = v434;
  v382[6] = v384;
  v385 = object;
  v382[7] = countAndFlagsBits;
  v382[8] = v385;
  v386 = v438;
  v382[9] = v443;
  v382[10] = v386;
  *(v382 + 11) = 0u;
  *(v382 + 13) = 0u;
  v382[16] = 0;
  v382[17] = 0;
  v382[15] = 1;
  *(v382 + 144) = 0;
  v382[19] = v447;
  v382[20] = v369;
  v382[21] = v370;
  v382[22] = v371;
  v382[23] = v372;
  v382[24] = v373;
  v382[25] = v374;
  v382[26] = v375;
  v382[27] = v380;
  v382[28] = v381;
  v387 = type metadata accessor for ODNAssessmentResult(0);
  sub_1000B1FC8(v409, v382 + *(v387 + 44), &qword_100836328, &unk_1006C51B0);
}

uint64_t sub_100525798(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1005257B8, 0, 0);
}

uint64_t sub_1005257B8()
{
  v1 = *(*(v0 + 24) + 152);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10052584C;

  return sub_100545B38();
}

uint64_t sub_10052584C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v6 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return _swift_task_switch(sub_10052594C, 0, 0);
}

uint64_t sub_10052596C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_100527BE0();
}

void sub_1005259FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a7;
  v72 = a8;
  v73 = a5;
  v90 = a3;
  v79 = a1;
  v80 = a2;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPError.Code();
  v76 = *(v15 - 8);
  v16 = *(v76 + 64);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v77 = *(v19 - 8);
  v78 = v19;
  v20 = *(v77 + 64);
  __chkstk_darwin(v19);
  v70 = &v65 - v21;
  v22 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  v23 = *(v22 - 8);
  v74 = v22;
  v75 = v23;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v69 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v65 - v27;
  v29 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  v81 = *(v29 - 8);
  v82 = v29;
  v30 = *(v81 + 64);
  __chkstk_darwin(v29);
  v32 = &v65 - v31;
  if (!a4)
  {
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "No tsidEnc cert provided, skipping encryption and sending nil", v38, 2u);
    }

    (*(v11 + 8))(v14, v10);
    v39 = 1;
    (*(v81 + 56))(v79, 1, 1, v82);
    v40 = v80;
    v42 = v77;
    v41 = v78;
    goto LABEL_7;
  }

  v68 = v32;

  v33._countAndFlagsBits = v90;
  v33._object = a4;
  v34 = createCertificateFromString(_:)(v33);
  if (v35)
  {

    return;
  }

  v43 = v34;
  v44 = copyPublicKeyDataFromCertificate(_:)();
  if (v45 >> 60 != 15)
  {
    v46 = v44;
    v47 = v45;
    v48 = type metadata accessor for DIPECIESSessionECV3SH();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = DIPECIESSessionECV3SH.init(_:)();
    v52 = *(v75 + 104);
    v67 = enum case for EncryptionParamsAlgorithmIdentifier.EC_v3_SH(_:);
    v75 += 104;
    v66 = v52;
    v52(v28);
    v88 = v48;
    v89 = &protocol witness table for DIPECIESSessionECV3;
    v87 = v51;
    v53 = type metadata accessor for __DataStorage();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v90 = v51;

    v76 = __DataStorage.init(length:)();
    v83 = 49;
    v84 = 0xE100000000000000;
    v85 = v73;
    v86 = a6;
    sub_1000363B4(v46, v47);
    sub_10053B6DC();
    sub_10053B730();
    v43;
    EncryptedDataContainer.init(alg:encryptor:remoteCertificate:senderSigningKey:recipientSigningKey:data:)();
    v66(v69, v67, v74);
    v88 = v48;
    v89 = &protocol witness table for DIPECIESSessionECV3;
    v87 = v90;
    v56 = *(v53 + 48);
    v57 = *(v53 + 52);
    swift_allocObject();

    v58 = v72;

    __DataStorage.init(length:)();
    v83 = 49;
    v84 = 0xE100000000000000;
    v85 = v71;
    v86 = v58;
    sub_10053B784();
    sub_10053B7D8();
    v59 = v70;
    EncryptedDataContainer.init(alg:encryptor:remoteCertificate:senderSigningKey:recipientSigningKey:data:)();

    v61 = v81;
    v60 = v82;
    v62 = v79;
    (*(v81 + 32))(v79, v68, v82);
    (*(v61 + 56))(v62, 0, 1, v60);
    v42 = v77;
    v63 = v78;
    v64 = v80;
    (*(v77 + 32))(v80, v59, v78);
    v41 = v63;
    v40 = v64;
    v39 = 0;
LABEL_7:
    (*(v42 + 56))(v40, v39, 1, v41);
    return;
  }

  (*(v76 + 104))(v18, enum case for DIPError.Code.certificateDecodingFailed(_:), v15);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void sub_10052625C(_OWORD *a1, int a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t *a13, _OWORD *a14)
{
  v197 = a7;
  v198 = a8;
  countAndFlagsBits = a6;
  v232 = a4;
  v222 = a5;
  v16 = *a13;
  v209 = a13[1];
  v210 = v16;
  v208 = a13[2];
  v17 = a13[3];
  v206 = a14;
  v207 = v17;
  v18 = a13[4];
  v211 = a13[5];
  v212 = v18;
  v19 = a14[1];
  v256 = *a14;
  v257 = v19;
  v258[0] = a14[2];
  *(v258 + 9) = *(a14 + 41);
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  v216 = a1;
  v261 = v22;
  v262 = v23;
  v259 = v20;
  v260 = v21;
  v24 = sub_100007224(&qword_100847540, &qword_1006E7938);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v196 = &v193 - v26;
  v27 = type metadata accessor for DIPError.Code();
  v199 = *(v27 - 8);
  v200 = v27;
  v28 = *(v199 + 64);
  __chkstk_darwin(v27);
  v201 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DIPError();
  v203 = *(v30 - 8);
  v204 = v30;
  v31 = *(v203 + 64);
  __chkstk_darwin(v30);
  v202 = &v193 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v215 = &v193 - v35;
  v36 = sub_100007224(&unk_10084A170, &unk_1006E7900);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v193 - v38;
  v40 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v205 = &v193 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v217 = &v193 - v45;
  __chkstk_darwin(v44);
  v229 = &v193 - v46;
  v47 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v224 = &v193 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v227 = &v193 - v51;
  v52 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v194 = *(v52 - 8);
  v195 = v52;
  v53 = *(v194 + 64);
  v54 = __chkstk_darwin(v52);
  v228 = &v193 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v226 = &v193 - v56;
  v57 = type metadata accessor for Logger();
  v233 = *(v57 - 8);
  v58 = *(v233 + 64);
  v59 = __chkstk_darwin(v57);
  v219 = &v193 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v218 = &v193 - v62;
  v63 = __chkstk_darwin(v61);
  v214 = &v193 - v64;
  v65 = __chkstk_darwin(v63);
  v223 = &v193 - v66;
  v67 = __chkstk_darwin(v65);
  v69 = &v193 - v68;
  v70 = __chkstk_darwin(v67);
  v72 = &v193 - v71;
  v73 = __chkstk_darwin(v70);
  v75 = &v193 - v74;
  v76 = __chkstk_darwin(v73);
  v78 = &v193 - v77;
  __chkstk_darwin(v76);
  v80 = &v193 - v79;
  v225 = type metadata accessor for AugmentedProfile(0);
  v220 = swift_projectBox();
  LODWORD(v221) = a2;
  v230 = v57;
  if ((a2 & 1) == 0)
  {
    defaultLogger()();
    v81 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v85))
    {
      goto LABEL_8;
    }

    v83 = a3;
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&_mh_execute_header, v81, v85, "odn callback called (completed late)", v86, 2u);
    goto LABEL_6;
  }

  defaultLogger()();
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = a3;
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v81, v82, "odn callback called (completed in time)", v84, 2u);
    v78 = v80;
LABEL_6:

    a3 = v83;
    v57 = v230;
    goto LABEL_8;
  }

  v78 = v80;
LABEL_8:

  v87 = *(v233 + 8);
  v233 += 8;
  countAndFlagsBits = v87;
  v87(v78, v57);
  if (a3)
  {
    swift_errorRetain();
    sub_10051EB94(a3, 2, v234);
    v213 = a3;
    if (v221)
    {
      defaultLogger()();
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "odn callback received an error but completed in time; not logging the error separately", v90, 2u);
      }
    }

    else
    {
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      v69 = v72;
    }

    v96 = v225;
    countAndFlagsBits(v69, v57);
    v97 = sub_100007224(&unk_100835208, &unk_1006C0D10);
    v98 = *(*(v97 - 8) + 56);
    v98(v226, 1, 1, v97);
    v99 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
    v100 = *(v99 - 8);
    v101 = *(v100 + 56);
    v102 = v100 + 56;
    v101(v227, 1, 1, v99);
    v103 = v220;
    swift_beginAccess();
    v104 = v103;
    v105 = v229;
    sub_10053BFD8(v104, v229);
    v221 = *(v96 - 8);
    (*(v221 + 56))(v105, 0, 1, v96);
    defaultLogger()();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v220 = v102;
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "Preparing ODN web requests", v108, 2u);
    }

    v222 &= 1u;

    countAndFlagsBits(v223, v230);
    v109 = v228;
    v98(v228, 1, 1, v97);
    v110 = v224;
    v101(v224, 1, 1, v99);
    v111 = v232;
    v112 = *(v232 + 40);
    v113 = *(v232 + 384);
    v223 = *(v232 + 32);
    if (String.hasPrefix(_:)(v113))
    {
      sub_10000BE18(v110, &qword_100835248, &unk_1006E7940);
      sub_10000BE18(v109, &qword_100835180, &unk_1006C0CE0);
      sub_10000BBC4(v226, v109, &qword_100835180, &unk_1006C0CE0);
      sub_10000BBC4(v227, v110, &qword_100835248, &unk_1006E7940);
    }

    else
    {
      v114 = v214;
      defaultLogger()();
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v115, v116, "Label Ingestion Not Allowed, skipping EncryptedContainers", v117, 2u);
      }

      countAndFlagsBits(v114, v230);
    }

    v118 = v217;
    swift_beginAccess();
    sub_10000BBC4(v111 + 216, &v239, &qword_100834EB0, &qword_1006E78F0);
    sub_10004CF8C(&v239, &v247);
    sub_10000BE18(&v239, &qword_100834EB0, &qword_1006E78F0);
    v119 = (*(v111 + 160) + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v121 = *v119;
    v120 = v119[1];
    sub_10000BBC4(v229, v118, &unk_10084A160, &unk_1006E7978);
    v122 = v225;
    if ((*(v221 + 48))(v118, 1, v225) == 1)
    {

      sub_10000BE18(v118, &unk_10084A160, &unk_1006E7978);
      v123 = 0xE700000000000000;
      v124 = 0x4E574F4E4B4E55;
    }

    else
    {
      v125 = (v118 + *(v122 + 28));
      v124 = *v125;
      v123 = v125[1];

      sub_100537B90(v118, type metadata accessor for AugmentedProfile);
    }

    v126 = v228;
    v127 = type metadata accessor for ORDRequest(0);
    sub_10000BBC4(v126, &v39[v127[11]], &qword_100835180, &unk_1006C0CE0);
    *v39 = v121;
    *(v39 + 1) = v120;
    *(v39 + 2) = 0;
    *(v39 + 3) = 0;
    v128 = v248;
    *(v39 + 2) = v247;
    *(v39 + 3) = v128;
    v129 = v250;
    *(v39 + 4) = v249;
    *(v39 + 5) = v129;
    *(v39 + 12) = v223;
    *(v39 + 13) = v112;
    *(v39 + 14) = v124;
    *(v39 + 15) = v123;
    v130 = v234[0];
    v131 = v234[1];
    v132 = v235[0];
    *(v39 + 169) = *(v235 + 9);
    *(v39 + 9) = v131;
    *(v39 + 10) = v132;
    *(v39 + 8) = v130;
    v39[185] = v222;
    v133 = &v39[v127[12]];
    *v133 = 0;
    v133[8] = 1;
    v134 = &v39[v127[13]];
    *v134 = 0;
    v134[8] = 1;
    (*(*(v127 - 1) + 56))(v39, 0, 1, v127);
    v135 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
    v136 = v232;
    swift_beginAccess();
    sub_1000B2764(v39, v136 + v135, &unk_10084A170, &unk_1006E7900);
    swift_endAccess();
    v137 = type metadata accessor for JSONEncoder();
    v138 = *(v137 + 48);
    v139 = *(v137 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v240 = 0u;
    v241[0] = 0u;
    v239 = 0u;
    sub_100007224(&qword_1008475A8, &unk_1006E79C0);
    sub_10053C11C();
    v140 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v142 = v141;

    sub_10000B8B8(v140, v142);
    Data.base64EncodedString(options:)(0);
    sub_10000B90C(v140, v142);

    v143 = v230;
    v145 = v218;
    v144 = v219;
    defaultLogger()();
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&_mh_execute_header, v146, v147, "Skipping OTD web request because required properties aren't available", v148, 2u);
    }

    countAndFlagsBits(v145, v143);
    if (*(v136 + 402) == 1)
    {
      defaultLogger()();
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&_mh_execute_header, v149, v150, "Configured to not immediately send to Assessment Server", v151, 2u);
      }

      sub_10000BD94(v140, v142);
      countAndFlagsBits(v144, v143);
    }

    else
    {
      if (*(v136 + 104))
      {
        v152 = *(v136 + 96);
        v153 = *(v136 + 104);
      }

      else
      {
        v152 = *(v136 + 112);
        v153 = *(v136 + 120);
      }

      v180 = type metadata accessor for TaskPriority();
      v181 = v215;
      (*(*(v180 - 8) + 56))(v215, 1, 1, v180);
      v182 = swift_allocObject();
      v182[2] = 0;
      v182[3] = 0;
      v182[4] = v136;
      v182[5] = v152;
      v182[6] = v153;

      sub_1003E653C(0, 0, v181, &unk_1006E79F8, v182);

      sub_10000BD94(v140, v142);
    }

    sub_10000BE18(v224, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v228, &qword_100835180, &unk_1006C0CE0);
    sub_10000BE18(v229, &unk_10084A160, &unk_1006E7978);
    sub_10000BE18(v227, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v226, &qword_100835180, &unk_1006C0CE0);
    v183 = v136;
  }

  else
  {
    defaultLogger()();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "assessments retrieved", v93, 2u);
    }

    countAndFlagsBits(v75, v57);
    if (v221)
    {
      v244 = 0u;
      v245 = 0u;
      *&v246[1] = 0;
      v246[0] = 1uLL;
      BYTE8(v246[1]) = 0;
      v94 = v216;
      v95 = v232;
    }

    else
    {
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v154 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v155 = *(*(v154 - 8) + 72);
      v156 = (*(*(v154 - 8) + 80) + 32) & ~*(*(v154 - 8) + 80);
      v157 = swift_allocObject();
      *(v157 + 16) = xmmword_1006BF740;
      v158 = v157 + v156;
      v159 = (v157 + v156 + *(v154 + 48));
      v160 = enum case for DIPError.PropertyKey.spWorkflowID(_:);
      v161 = type metadata accessor for DIPError.PropertyKey();
      v162 = *(*(v161 - 8) + 104);
      (v162)(v158, v160, v161);
      v163 = *(v232 + 32);
      v164 = *(v232 + 40);
      v159[3] = &type metadata for String;
      v159[4] = &protocol witness table for String;
      *v159 = v163;
      v159[1] = v164;
      v165 = v158 + v155 + *(v154 + 48);
      v162();
      v95 = v232;
      v166 = *(v232 + 208);
      *(v165 + 24) = &type metadata for DIPState;
      *(v165 + 32) = sub_10053B8D4();
      *v165 = v166;

      sub_10003C9C0(v157);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v199 + 104))(v201, enum case for DIPError.Code.odnTimeout(_:), v200);
      v167 = v202;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
      v168 = v204;
      v169 = swift_allocError();
      v170 = v203;
      (*(v203 + 16))(v171, v167, v168);
      sub_10051EB94(v169, 2, v242);
      (*(v170 + 8))(v167, v168);

      v244 = v242[0];
      v245 = v242[1];
      v246[0] = v243[0];
      *(v246 + 9) = *(v243 + 9);
      v94 = v216;
    }

    if (*(v95 + 184) == 1)
    {
      v172 = *(v94 + 24);
      if (v172 >> 60 != 15)
      {
        v247 = *v94;
        *&v248 = *(v94 + 16);
        *(&v248 + 1) = v172;
        v173 = *(v94 + 48);
        v249 = *(v94 + 32);
        v250 = v173;
        v174 = v196;
        sub_10000BBC4(a10, v196, &qword_100835180, &unk_1006C0CE0);
        (*(v194 + 56))(v174, 0, 1, v195);
        v239 = v259;
        v240 = v260;
        v241[0] = v261;
        v241[1] = v262;
        sub_10053B594(&v239, &v236);
        sub_100528A38(v197, v198, &v247, v222 & 1, a9, v174, a11);
        sub_10000BE18(v94, &qword_100847578, &qword_1006E7968);
        sub_10000BE18(v174, &qword_100847540, &qword_1006E7938);
      }
    }

    if (a12)
    {
      v175 = *(v94 + 24) >> 60;
      v233 = a10;
      if (v175 == 15)
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      else
      {
        v184 = *(v94 + 16);
        v185 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v185._countAndFlagsBits;
        object = v185._object;
      }

      v186 = sub_100536E08(v94, *(v95 + 208) != 9, v222 & 1);
      v188 = v187;
      if (*(v94 + 24) >> 60 == 15)
      {
        v189 = 0;
      }

      else
      {
        v189 = *(v94 + 48);
      }

      if (*(v206 + 4) == 1)
      {
        v236 = v244;
        v237 = v245;
        v238[0] = v246[0];
        v190 = *(v246 + 9);
      }

      else
      {
        v239 = v256;
        v240 = v257;
        v241[0] = v258[0];
        *(v241 + 9) = *(v258 + 9);
        sub_10009ECBC(&v239, &v236);
        sub_10000BE18(&v244, &qword_100835768, &qword_1006DB770);
        v236 = v256;
        v237 = v257;
        v238[0] = v258[0];
        v190 = *(v258 + 9);
      }

      *(v238 + 9) = v190;
      v239 = v236;
      v240 = v237;
      v241[0] = v238[0];
      *(v241 + 9) = v190;
      *&v251 = v210;
      *(&v251 + 1) = v209;
      v252 = v208;
      v253 = v207;
      v254 = v212;
      v255 = v211;
      v191 = v220;
      swift_beginAccess();
      v192 = v205;
      sub_10053BFD8(v191, v205);
      (*(*(v225 - 8) + 56))(v192, 0, 1);
      v95 = v232;
      sub_100529B68(countAndFlagsBits, object, &v251, v186, v188, v189, &v239, v222 & 1, v233, v189 + 1, 0, a11, v189 + 2, 0, v192, 0, 0);

      sub_10000BE18(&v236, &qword_100835768, &qword_1006DB770);
      v177 = &unk_10084A160;
      v178 = &unk_1006E7978;
      v179 = v192;
    }

    else
    {
      v177 = &qword_100835768;
      v178 = &qword_1006DB770;
      v179 = &v244;
    }

    sub_10000BE18(v179, v177, v178);
    v183 = v95;
  }

  sub_100527A88(v183);
}

void sub_100527A88(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "signaling shareTimeSemaphore because we are done", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(a1 + 376);
  if (v10)
  {
    v11 = v10;
    OS_dispatch_semaphore.signal()();
  }
}

uint64_t sub_100527BE0()
{
  v1[92] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[93] = v2;
  v3 = *(v2 - 8);
  v1[94] = v3;
  v4 = *(v3 + 64) + 15;
  v1[95] = swift_task_alloc();

  return _swift_task_switch(sub_100527CA0, 0, 0);
}

uint64_t sub_100527CA0()
{
  v1 = *(v0 + 736) + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory;
  *(v0 + 288) = *v1;
  v2 = *(v1 + 64);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v0 + 336) = *(v1 + 48);
  *(v0 + 352) = v2;
  *(v0 + 304) = v4;
  *(v0 + 320) = v3;
  v5 = *(v0 + 288);
  if (v5)
  {
    *(v0 + 368) = v5;
    *(v0 + 376) = *(v1 + 8);
    v6 = *(v1 + 24);
    v7 = *(v1 + 40);
    v8 = *(v1 + 56);
    *(v0 + 440) = *(v1 + 72);
    *(v0 + 408) = v7;
    *(v0 + 424) = v8;
    *(v0 + 392) = v6;
    v9 = *(v1 + 64);
    v11 = *(v1 + 16);
    v10 = *(v1 + 32);
    *(v0 + 496) = *(v1 + 48);
    *(v0 + 512) = v9;
    *(v0 + 464) = v11;
    *(v0 + 480) = v10;
    *(v0 + 448) = *v1;
    sub_10004DEB8(v0 + 448, v0 + 528);
    v12 = swift_task_alloc();
    *(v0 + 768) = v12;
    *v12 = v0;
    v12[1] = sub_100527F2C;

    return sub_10004ADF8(v0 + 152);
  }

  else
  {
    (*(*(v0 + 752) + 104))(*(v0 + 760), enum case for DIPError.Code.internalError(_:), *(v0 + 744));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = *(v0 + 760);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100527F2C()
{
  v2 = *(*v1 + 768);
  v5 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = sub_100528920;
  }

  else
  {
    v3 = sub_100528040;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100528040()
{
  v2 = v0[34];
  v1 = v0[35];
  v0[98] = v2;
  v0[99] = v1;
  v3 = qword_100832C98;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[97];
  v5 = off_1008475C8;
  v0[100] = off_1008475C8;
  os_unfair_lock_lock(v5 + 6);
  v6 = *&v5[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v5 + 6);
  v7 = sub_100544838(v2, v1);
  v9 = v8;
  v0[101] = v7;
  v0[102] = v8;

  if (v4)
  {

    sub_10004D8EC((v0 + 19));
LABEL_7:
    sub_10000BE18((v0 + 36), &unk_10084A150, &qword_1006E78F8);
    v15 = v0[95];

    v16 = v0[1];

    return v16();
  }

  if (v9 >> 60 == 15)
  {
    v10 = v0[95];
    v11 = v0[94];
    v12 = v0[93];
    sub_10004D8EC((v0 + 19));
    _StringGuts.grow(_:)(41);

    v13._countAndFlagsBits = v2;
    v13._object = v1;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    (*(v11 + 104))(v10, enum case for DIPError.Code.internalError(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_7;
  }

  v18 = swift_task_alloc();
  v0[103] = v18;
  *v18 = v0;
  v18[1] = sub_100528384;

  return sub_10004BA48((v0 + 2));
}

uint64_t sub_100528384()
{
  v2 = *(*v1 + 824);
  v5 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v3 = sub_10052899C;
  }

  else
  {
    v3 = sub_100528498;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100528498()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);

  os_unfair_lock_lock((v2 + 24));
  v5 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  v6 = sub_100544838(v4, v3);
  if (v1)
  {
    v8 = *(v0 + 816);
    v9 = *(v0 + 808);
    v10 = *(v0 + 792);

    sub_10004D8EC(v0 + 16);
    sub_10000BD94(v9, v8);

    sub_10004D8EC(v0 + 152);
LABEL_5:
    sub_10000BE18(v0 + 288, &unk_10084A150, &qword_1006E78F8);
    v19 = *(v0 + 760);

    v20 = *(v0 + 8);
    goto LABEL_6;
  }

  v11 = v7;
  v44 = v6;

  if (v11 >> 60 == 15)
  {
    v45 = *(v0 + 816);
    v12 = *(v0 + 808);
    v13 = *(v0 + 792);
    v14 = *(v0 + 760);
    v15 = *(v0 + 752);
    v16 = *(v0 + 744);
    sub_10004D8EC(v0 + 152);
    sub_10004D8EC(v0 + 16);

    _StringGuts.grow(_:)(39);

    v17._countAndFlagsBits = v4;
    v17._object = v3;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    (*(v15 + 104))(v14, enum case for DIPError.Code.internalError(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v12, v45);
    goto LABEL_5;
  }

  v22 = *(v0 + 816);
  v23 = *(v0 + 808);
  v24 = *(v0 + 792);
  v25 = *(v0 + 784);
  v43 = *(v0 + 760);
  v26 = *(v0 + 736);
  *(v0 + 632) = &type metadata for DIPClientGUID;
  *(v0 + 640) = &off_1007FDCB8;
  v27 = swift_allocObject();
  *(v0 + 608) = v27;
  v28 = *(v0 + 264);
  *(v27 + 112) = *(v0 + 248);
  *(v27 + 128) = v28;
  *(v27 + 144) = *(v0 + 280);
  v29 = *(v0 + 200);
  *(v27 + 48) = *(v0 + 184);
  *(v27 + 64) = v29;
  v30 = *(v0 + 232);
  *(v27 + 80) = *(v0 + 216);
  *(v27 + 96) = v30;
  v31 = *(v0 + 168);
  *(v27 + 16) = *(v0 + 152);
  *(v27 + 32) = v31;
  swift_beginAccess();
  sub_1000B2764(v0 + 608, (v26 + 27), &qword_100834EB0, &qword_1006E78F0);
  swift_endAccess();
  v32 = v26[33];
  v26[32] = v25;
  v26[33] = v24;

  v33 = v26[34];
  v34 = v26[35];
  v26[34] = v23;
  v26[35] = v22;
  sub_10000BD94(v33, v34);
  *(v0 + 672) = &type metadata for DIPClientGUID;
  *(v0 + 680) = &off_1007FDCB8;
  v35 = swift_allocObject();
  *(v0 + 648) = v35;
  sub_10000BE18(v0 + 288, &unk_10084A150, &qword_1006E78F8);
  v36 = *(v0 + 128);
  *(v35 + 112) = *(v0 + 112);
  *(v35 + 128) = v36;
  *(v35 + 144) = *(v0 + 144);
  v37 = *(v0 + 64);
  *(v35 + 48) = *(v0 + 48);
  *(v35 + 64) = v37;
  v38 = *(v0 + 96);
  *(v35 + 80) = *(v0 + 80);
  *(v35 + 96) = v38;
  v39 = *(v0 + 32);
  *(v35 + 16) = *(v0 + 16);
  *(v35 + 32) = v39;
  swift_beginAccess();
  sub_1000B2764(v0 + 648, (v26 + 36), &qword_100834EB0, &qword_1006E78F0);
  swift_endAccess();
  v40 = v26[42];
  v26[41] = v4;
  v26[42] = v3;

  v41 = v26[43];
  v42 = v26[44];
  v26[43] = v44;
  v26[44] = v11;
  sub_10000BD94(v41, v42);

  v20 = *(v0 + 8);
LABEL_6:

  return v20();
}

uint64_t sub_100528920()
{
  sub_10000BE18((v0 + 36), &unk_10084A150, &qword_1006E78F8);
  v1 = v0[97];
  v2 = v0[95];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10052899C()
{
  v1 = v0[99];
  sub_10000BD94(v0[101], v0[102]);

  sub_10004D8EC((v0 + 19));
  sub_10000BE18((v0 + 36), &unk_10084A150, &qword_1006E78F8);
  v2 = v0[104];
  v3 = v0[95];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100528A38(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v139 = a7;
  v142._object = a6;
  v131 = a2;
  v132 = a5;
  LODWORD(v146) = a4;
  v130 = a1;
  v9 = type metadata accessor for DIPError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v145 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for DIPError.Code();
  v143 = *(v147 - 8);
  v13 = *(v143 + 8);
  __chkstk_darwin(v147);
  v148 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v134 = *(v15 - 8);
  v135 = v15;
  v16 = *(v134 + 64);
  __chkstk_darwin(v15);
  v133 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for DIPPregeneratedAssessment(0);
  v18 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v140 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v136 = &v116 - v22;
  v141 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  v138 = *(v141 - 8);
  v23 = *(v138 + 64);
  __chkstk_darwin(v141);
  v137 = &v116 - v24;
  v25 = sub_100007224(&qword_100847540, &qword_1006E7938);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v116 - v27;
  v29 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v142._countAndFlagsBits = *(v29 - 8);
  v30 = *(v142._countAndFlagsBits + 64);
  __chkstk_darwin(v29);
  v32 = &v116 - v31;
  v149 = type metadata accessor for Logger();
  v33 = *(v149 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v149);
  v144 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v116 - v37;
  swift_beginAccess();
  sub_10000BBC4((v7 + 216), v185, &qword_100834EB0, &qword_1006E78F0);
  if (!v186)
  {
    v56 = v185;
    return sub_10000BE18(v56, &qword_100834EB0, &qword_1006E78F0);
  }

  v128 = v10;
  sub_100007224(&qword_100834EB8, &qword_1006C06F0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v127 = v9;
  *&v174[32] = v182;
  *&v174[48] = v183;
  v175 = v184;
  v173[2] = v178;
  v173[3] = v179;
  *v174 = v180;
  *&v174[16] = v181;
  v173[0] = v176;
  v173[1] = v177;
  swift_beginAccess();
  sub_10000BBC4((v7 + 288), v172, &qword_100834EB0, &qword_1006E78F0);
  if (!v172[3])
  {
    sub_10004D8EC(v173);
    v56 = v172;
    return sub_10000BE18(v56, &qword_100834EB0, &qword_1006E78F0);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10004D8EC(v173);
  }

  *&v161[32] = v169;
  *&v161[48] = v170;
  v162 = v171;
  v160[2] = v165;
  v160[3] = v166;
  *v161 = v167;
  *&v161[16] = v168;
  v160[0] = v163;
  v160[1] = v164;
  object = v7;
  v40 = v7[208] != 9;
  v41 = *(a3 + 16);
  v187[0] = *a3;
  v187[1] = v41;
  v42 = *(a3 + 48);
  v187[2] = *(a3 + 32);
  v187[3] = v42;
  v121 = sub_100536E08(v187, v40, v146 & 1);
  v146 = v43;
  defaultLogger()();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Storing assessment for reuse", v46, 2u);
  }

  v124 = *(v33 + 8);
  v125 = v33 + 8;
  v124(v38, v149);
  v47 = object[4];
  v118 = object[5];
  v119 = v47;
  v48 = *(a3 + 16);
  v49 = *(a3 + 24);
  v120 = *(a3 + 48);
  v50 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v50._countAndFlagsBits;
  object = v50._object;
  v51 = type metadata accessor for JSONEncoder();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v54 = 49;
  if (LOBYTE(v173[0]))
  {
    v54 = 50;
  }

  *&v156 = v54;
  *(&v156 + 1) = 0xE100000000000000;
  v157 = *&v174[8];
  v158 = *&v174[24];
  v159 = *&v174[40];
  sub_10009F038();

  v55 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v123 = 0;
  v155[0] = v156;
  v155[1] = v157;
  v155[2] = v158;
  v155[3] = v159;
  v57 = v55;
  v59 = v58;
  sub_10004D770(v155);
  v60 = Data.base64EncodedString(options:)(0);
  v122 = v60._object;
  sub_10000B90C(v57, v59);
  v61 = 49;
  if (LOBYTE(v160[0]))
  {
    v61 = 50;
  }

  *&v151 = v61;
  *(&v151 + 1) = 0xE100000000000000;
  v152 = *&v161[8];
  v153 = *&v161[24];
  v154 = *&v161[40];

  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v150[0] = v151;
  v150[1] = v152;
  v150[2] = v153;
  v150[3] = v154;
  v71 = v62;
  v73 = v72;
  sub_10004D770(v150);
  v116 = Data.base64EncodedString(options:)(0);
  sub_10000B90C(v71, v73);
  sub_10000BBC4(v142._object, v28, &qword_100847540, &qword_1006E7938);
  if ((*(v142._countAndFlagsBits + 48))(v28, 1, v29) == 1)
  {
    sub_10000BE18(v28, &qword_100847540, &qword_1006E7938);
    v142._countAndFlagsBits = 0;
    v142._object = 0;
  }

  else
  {
    sub_1000B1FC8(v28, v32, &qword_100835180, &unk_1006C0CE0);
    sub_10053B62C();
    v74 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v76 = v75;
    v142 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v74, v76);
    sub_10000BE18(v32, &qword_100835180, &unk_1006C0CE0);
  }

  v77 = v136;
  sub_10000BBC4(v139, v136, &qword_100835248, &unk_1006E7940);
  v78 = v138;
  v79 = v141;
  v80 = (*(v138 + 48))(v77, 1, v141);
  v81 = v140;
  v82 = v137;
  if (v80 == 1)
  {
    v139 = 0;

    sub_10000BE18(v77, &qword_100835248, &unk_1006E7940);
    v83 = 0;
    v84 = 0;
  }

  else
  {
    (*(v78 + 32))(v137, v77, v79);
    sub_1000BA30C(&qword_1008357B0, &qword_1008352C8, &qword_1006C0D50);
    v85 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v139 = 0;
    v86 = v85;
    v88 = v87;
    v89 = Data.base64EncodedString(options:)(0);
    v83 = v89._countAndFlagsBits;
    v84 = v89._object;

    sub_10000B90C(v86, v88);
    (*(v78 + 8))(v82, v141);
  }

  v90 = v129;
  v91 = *(v129 + 20);
  v92 = v118;

  Date.init()();
  v93 = *&v174[56];
  v94 = v175;
  v95 = *&v161[56];
  v96 = v162;
  *v81 = v119;
  v81[1] = v92;
  v97 = (v81 + v90[6]);
  *v97 = countAndFlagsBits;
  v97[1] = object;
  v98 = (v81 + v90[7]);
  *v98 = v121;
  v98[1] = v146;
  v99 = (v81 + v90[8]);
  *v99 = v93;
  v99[1] = v94;
  v100 = (v81 + v90[9]);
  v101 = v122;
  *v100 = v60._countAndFlagsBits;
  v100[1] = v101;
  v102 = (v81 + v90[10]);
  *v102 = v95;
  v102[1] = v96;
  v103 = (v81 + v90[11]);
  v104 = v116._object;
  *v103 = v116._countAndFlagsBits;
  v103[1] = v104;
  v105 = (v81 + v90[12]);
  v106 = v131;
  *v105 = v130;
  v105[1] = v106;
  *(v81 + v90[13]) = v120;
  *(v81 + v90[14]) = v132;
  v107 = (v81 + v90[15]);
  v108 = v142._object;
  *v107 = v142._countAndFlagsBits;
  v107[1] = v108;
  v109 = (v81 + v90[16]);
  *v109 = v83;
  v109[1] = v84;
  v110 = qword_100832CA8;

  if (v110 != -1)
  {
    swift_once();
  }

  v111 = *(qword_1008823D8 + 16);
  v112 = v133;
  v113 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v113);
  v114 = v139;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  if (v114)
  {
    (*(v134 + 8))(v112, v135);
    sub_100537B90(v81, type metadata accessor for DIPPregeneratedAssessment);
    v115 = *(v143 + 13);
    v146 = 0x800000010071DB10;
    v142._object = 0x800000010071DF50;
    v143 = v115;
    LODWORD(v141) = enum case for DIPError.Code.internalError(_:);
    v64 = v147;
    v63 = v148;
    v65 = v115;
    v115(v148);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    v142._countAndFlagsBits = sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    v66 = v127;
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10004D8EC(v160);
    sub_10004D8EC(v173);
    v65(v63, v141, v64);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    v67 = v145;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_allocError();
    v68 = v128;
    (*(v128 + 16))(v69, v67, v66);
    v70 = v144;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v124(v70, v149);
    (*(v68 + 8))(v67, v66);
  }

  else
  {
    sub_10004D8EC(v160);
    sub_10004D8EC(v173);
    (*(v134 + 8))(v112, v135);
    return sub_100537B90(v81, type metadata accessor for DIPPregeneratedAssessment);
  }
}

uint64_t sub_100529B68(uint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = v17;
  DWORD2(v228) = a8;
  v229 = a7;
  v207 = a6;
  v208 = a4;
  v218 = a5;
  v225 = a3;
  v226 = a1;
  v227 = a2;
  *&v228 = a15;
  v19 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v220 = &v191 - v21;
  v22 = type metadata accessor for DIPError.Code();
  v201 = *(v22 - 8);
  v202 = v22;
  v23 = *(v201 + 64);
  __chkstk_darwin(v22);
  v203 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for DIPError();
  v216 = *(v214 - 8);
  v25 = *(v216 + 64);
  __chkstk_darwin(v214);
  v213 = &v191 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v211 = *(v27 - 8);
  v212 = v27;
  v28 = *(v211 + 64);
  __chkstk_darwin(v27);
  v210 = &v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v195 = &v191 - v32;
  v209 = type metadata accessor for DIPODINPair(0);
  v33 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v215 = (&v191 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_100007224(&qword_100847538, &unk_1006E83A0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v217 = &v191 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v206 = &v191 - v39;
  v40 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v198 = &v191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v224 = &v191 - v44;
  v45 = sub_100007224(&unk_10084A170, &unk_1006E7900);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v191 - v47;
  v49 = sub_100007224(&qword_100835248, &unk_1006E7940);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v52 = &v191 - v51;
  v53 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v56 = &v191 - v55;
  v57 = type metadata accessor for Logger();
  v237 = *(v57 - 8);
  v58 = *(v237 + 64);
  v59 = __chkstk_darwin(v57);
  v219 = &v191 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v221 = &v191 - v62;
  v63 = __chkstk_darwin(v61);
  v200 = &v191 - v64;
  v65 = __chkstk_darwin(v63);
  v199 = &v191 - v66;
  v67 = __chkstk_darwin(v65);
  v69 = &v191 - v68;
  __chkstk_darwin(v67);
  v71 = &v191 - v70;
  defaultLogger()();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  v74 = os_log_type_enabled(v72, v73);
  v236 = v18;
  if (v74)
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Preparing ODN web requests", v75, 2u);
    v18 = v236;
  }

  v76 = v237 + 8;
  v234 = *(v237 + 8);
  v234(v71, v57);
  v77 = sub_100007224(&unk_100835208, &unk_1006C0D10);
  (*(*(v77 - 8) + 56))(v56, 1, 1, v77);
  v78 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  (*(*(v78 - 8) + 56))(v52, 1, 1, v78);
  v79 = *(v18 + 32);
  v80 = *(v18 + 384);
  v232 = *(v18 + 40);
  v233 = v79;
  v81 = String.hasPrefix(_:)(v80);
  v230 = v52;
  v231 = v57;
  v235 = v56;
  v237 = v76;
  if (v81)
  {
    LODWORD(v204) = a14;
    v205 = a13;
    LODWORD(v222) = a11;
    v223 = a10;
    sub_10000BE18(v52, &qword_100835248, &unk_1006E7940);
    sub_10000BE18(v56, &qword_100835180, &unk_1006C0CE0);
    v18 = v236;
    sub_10000BBC4(a9, v56, &qword_100835180, &unk_1006C0CE0);
    sub_10000BBC4(a12, v52, &qword_100835248, &unk_1006E7940);
  }

  else
  {
    defaultLogger()();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Label Ingestion Not Allowed, skipping EncryptedContainers", v84, 2u);
    }

    v234(v69, v57);
    v205 = 0;
    v223 = 0;
    LODWORD(v204) = 1;
    LODWORD(v222) = 1;
  }

  v85 = v224;
  swift_beginAccess();
  sub_10000BBC4(v18 + 216, &v241, &qword_100834EB0, &qword_1006E78F0);
  sub_10004CF8C(&v241, v248);
  sub_10000BE18(&v241, &qword_100834EB0, &qword_1006E78F0);
  v86 = (*(v18 + 160) + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v88 = *v86;
  v87 = v86[1];
  sub_10000BBC4(v228, v85, &unk_10084A160, &unk_1006E7978);
  v89 = type metadata accessor for AugmentedProfile(0);
  v90 = *(v89 - 8);
  v91 = *(v90 + 48);
  v196 = v90 + 48;
  v197 = v91;
  v92 = v91(v85, 1, v89);
  v93 = v232;
  v224 = v89;
  if (v92 == 1)
  {

    sub_10000BE18(v85, &unk_10084A160, &unk_1006E7978);
    v94 = 0xE700000000000000;
    v95 = 0x4E574F4E4B4E55;
  }

  else
  {
    v96 = (v85 + *(v89 + 28));
    v95 = *v96;
    v94 = v96[1];

    sub_100537B90(v85, type metadata accessor for AugmentedProfile);
  }

  v97 = v93;
  v98 = type metadata accessor for ORDRequest(0);
  sub_10000BBC4(v235, &v48[v98[11]], &qword_100835180, &unk_1006C0CE0);
  *v48 = v88;
  *(v48 + 1) = v87;
  v99 = v227;
  *(v48 + 2) = v226;
  *(v48 + 3) = v99;
  v100 = v248[1];
  *(v48 + 2) = v248[0];
  *(v48 + 3) = v100;
  v101 = v248[3];
  *(v48 + 4) = v248[2];
  *(v48 + 5) = v101;
  *(v48 + 12) = v233;
  *(v48 + 13) = v97;
  *(v48 + 14) = v95;
  *(v48 + 15) = v94;
  v102 = v229;
  v103 = *v229;
  v104 = v229[1];
  v105 = v229[2];
  *(v48 + 169) = *(v229 + 41);
  *(v48 + 9) = v104;
  *(v48 + 10) = v105;
  *(v48 + 8) = v103;
  v48[185] = BYTE8(v228);
  v106 = &v48[v98[12]];
  *v106 = v223;
  v106[8] = v222 & 1;
  v107 = &v48[v98[13]];
  *v107 = a16;
  v107[8] = a17 & 1;
  (*(*(v98 - 1) + 56))(v48, 0, 1, v98);
  v108 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  v109 = v236;
  swift_beginAccess();
  sub_10000BBC4(v102, &v241, &qword_100835768, &qword_1006DB770);

  sub_1000B2764(v48, v109 + v108, &unk_10084A170, &unk_1006E7900);
  swift_endAccess();
  v110 = type metadata accessor for JSONEncoder();
  v111 = *(v110 + 48);
  v112 = *(v110 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v113 = v225;
  v114 = v225[1];
  v241 = *v225;
  v242 = v114;
  v243 = v225[2];
  sub_100007224(&qword_1008475A8, &unk_1006E79C0);
  sub_10053C11C();
  v115 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v117 = v116;
  v118 = v115;

  sub_10000B8B8(v118, v117);
  v119 = Data.base64EncodedString(options:)(0);
  v226 = v118;
  sub_10000B90C(v118, v117);
  v120 = *(v113 + 1);
  v122 = v230;
  v121 = v231;
  v123 = v234;
  if (!v120 || (v124 = *v113, v125 = v113[2], v250 = v113[1], v251 = v125, !v218) || *(v109 + 200))
  {

    v227 = v117;
    v126 = v221;
    defaultLogger()();
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "Skipping OTD web request because required properties aren't available", v129, 2u);
    }

    v123(v126, v121);
    goto LABEL_17;
  }

  v222 = v124;
  v223 = v120;
  v227 = v117;
  v225 = *(v109 + 192);
  swift_beginAccess();
  sub_10000BBC4(v109 + 288, &v241, &qword_100834EB0, &qword_1006E78F0);
  sub_10004CF8C(&v241, v249);
  sub_10000BE18(&v241, &qword_100834EB0, &qword_1006E78F0);
  v141 = type metadata accessor for OTDRequest(0);
  v142 = v206;
  sub_10000BBC4(v122, &v206[v141[10]], &qword_100835248, &unk_1006E7940);
  v143 = v232;
  swift_bridgeObjectRetain_n();
  v144 = v229;
  sub_10000BBC4(v229, &v241, &qword_100835768, &qword_1006DB770);
  v145 = v218;

  v146 = experimentalGroup()();
  v147 = v249[0];
  *(v142 + 40) = v249[1];
  v148 = v249[3];
  *(v142 + 56) = v249[2];
  *v142 = v119;
  *(v142 + 16) = v207;
  *(v142 + 72) = v148;
  *(v142 + 24) = v147;
  *(v142 + 88) = v233;
  *(v142 + 96) = v143;
  *(v142 + 104) = v208;
  *(v142 + 112) = v145;
  *(v142 + 120) = 2;
  *(v142 + 128) = BYTE8(v228);
  v149 = v142 + v141[11];
  *v149 = v205;
  *(v149 + 8) = v204 & 1;
  v150 = (v142 + v141[12]);
  *(v150 + 41) = *(v144 + 41);
  v151 = v144[2];
  v150[1] = v144[1];
  v150[2] = v151;
  *v150 = *v144;
  v152 = v142 + v141[13];
  *v152 = 0;
  *(v152 + 8) = 1;
  *(v142 + v141[14]) = v146;
  v153 = *(v141 - 1);
  v154 = *(v153 + 56);
  v193 = v153 + 56;
  v154(v142, 0, 1, v141);
  v155 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  swift_beginAccess();
  sub_1000B2764(v142, v109 + v155, &qword_100847538, &unk_1006E83A0);
  swift_endAccess();
  v156 = *(v109 + 272);
  v229 = *(v109 + 280);
  v157 = *(v109 + 176);
  v207 = *(v109 + 168);
  v158 = *(v109 + 72);
  v221 = *(v109 + 64);
  v159 = *(v109 + 88);
  v218 = *(v109 + 80);
  v194 = v141;
  v204 = v154;
  v154(v217, 1, 1, v141);
  v160 = *(v109 + 104);
  v208 = v159;
  v205 = v156;
  v206 = v157;
  v192 = v158;
  if (!v160)
  {
    v161 = v156;
    v162 = v198;
    sub_10000BBC4(v228, v198, &unk_10084A160, &unk_1006E7978);
    if (v197(v162, 1, v224) == 1)
    {
      sub_1000363B4(v161, v229);

      v163 = &unk_10084A160;
      v164 = &unk_1006E7978;
      v165 = v162;
    }

    else
    {
      v166 = v161;
      v167 = v195;
      sub_10000BBC4(v162, v195, &qword_1008350C0, &unk_1006C0B30);
      sub_1000363B4(v166, v229);

      v168 = v167;

      sub_100537B90(v162, type metadata accessor for AugmentedProfile);
      v169 = sub_100007224(&qword_100835138, &qword_1006C0B58);
      v170 = *(v169 - 8);
      if ((*(v170 + 48))(v168, 1, v169) != 1)
      {
        JWSSignedJSON.payload.getter();
        v245 = v239[4];
        v246[0] = v240[0];
        *(v246 + 13) = *(v240 + 13);
        v241 = v239[0];
        v242 = v239[1];
        v243 = v239[2];
        v244 = v239[3];
        (*(v170 + 8))(v168, v169);
        sub_10000BBC4(&v241, v238, &qword_100835658, &qword_1006C1A50);
        sub_10009E858(&v241);
        if (*(&v241 + 1))
        {
          v228 = v242;

          sub_10000BE18(&v241, &qword_100835658, &qword_1006C1A50);
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v163 = &qword_1008350C0;
      v164 = &unk_1006C0B30;
      v165 = v168;
    }

    sub_10000BE18(v165, v163, v164);
LABEL_33:
    v228 = v225;
    goto LABEL_34;
  }

  *&v228 = *(v109 + 96);
  sub_1000363B4(v156, v229);

  *(&v228 + 1) = v160;
LABEL_34:
  v171 = v222;
  v172 = v223;
  v238[0] = v222;
  v238[1] = v223;
  v239[0] = v250;
  v241 = v251;
  v173 = v215;
  *v215 = xmmword_1006BF650;
  v174 = v209;
  v224 = *(v209 + 52);
  v204(v173 + v224, 1, 1, v194);
  v175 = (v173 + *(v174 + 56));
  v176 = *v173;
  v177 = *(v173 + 8);

  sub_10004D7A0(v238, v247);
  sub_10004D7A0(v239, v247);
  sub_10000BBC4(&v241, v247, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BD94(v176, v177);
  v178 = v229;
  *v173 = v205;
  *(v173 + 8) = v178;
  *(v173 + 16) = v171;
  *(v173 + 24) = v172;
  v179 = v251;
  *(v173 + 32) = v250;
  *(v173 + 48) = v179;
  v180 = v225;
  *(v173 + 64) = v225;
  *(v173 + 72) = 0;
  *(v173 + 80) = v180;
  *(v173 + 88) = 0;
  v181 = v206;
  *(v173 + 96) = v207;
  *(v173 + 104) = v181;
  v182 = v232;
  *(v173 + 112) = v233;
  *(v173 + 120) = v182;
  *(v173 + 128) = 0;
  v183 = v192;
  *(v173 + 136) = v221;
  *(v173 + 144) = v183;
  v184 = v217;
  v185 = v208;
  *(v173 + 152) = v218;
  *(v173 + 160) = v185;
  sub_1000B2764(v184, v173 + v224, &qword_100847538, &unk_1006E83A0);
  v186 = *(&v228 + 1);
  *v175 = v228;
  v175[1] = v186;
  if (qword_100832CA8 != -1)
  {
    swift_once();
  }

  v187 = *(qword_1008823D8 + 16);
  v188 = v210;
  v189 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v189);
  OS_dispatch_queue.sync<A>(flags:execute:)();
  v190 = v173;
  v122 = v230;
  v121 = v231;
  (*(v211 + 8))(v188, v212);
  sub_100537B90(v190, type metadata accessor for DIPODINPair);
  v123 = v234;
LABEL_17:
  if (*(v109 + 402) == 1)
  {
    v130 = v219;
    defaultLogger()();
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&_mh_execute_header, v131, v132, "Configured to not immediately send to Assessment Server", v133, 2u);
    }

    sub_10000BD94(v226, v227);
    v123(v130, v121);
  }

  else
  {
    if (*(v109 + 104))
    {
      v134 = *(v109 + 96);
      v135 = *(v109 + 104);
    }

    else
    {
      v134 = *(v109 + 112);
      v135 = *(v109 + 120);
    }

    v136 = type metadata accessor for TaskPriority();
    v137 = v220;
    (*(*(v136 - 8) + 56))(v220, 1, 1, v136);
    v138 = swift_allocObject();
    v138[2] = 0;
    v138[3] = 0;
    v138[4] = v109;
    v138[5] = v134;
    v138[6] = v135;

    sub_1003E653C(0, 0, v137, &unk_1006E9F00, v138);

    sub_10000BD94(v226, v227);
  }

  v139 = v235;
  sub_10000BE18(v122, &qword_100835248, &unk_1006E7940);
  return sub_10000BE18(v139, &qword_100835180, &unk_1006C0CE0);
}

uint64_t sub_10052B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = type metadata accessor for DIPError.Code();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = type metadata accessor for DIPError();
  v6[20] = v10;
  v11 = *(v10 - 8);
  v6[21] = v11;
  v12 = *(v11 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_100847538, &unk_1006E83A0) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v14 = type metadata accessor for OTDRequest(0);
  v6[26] = v14;
  v15 = *(v14 - 8);
  v6[27] = v15;
  v16 = *(v15 + 64) + 15;
  v6[28] = swift_task_alloc();
  v17 = *(*(sub_100007224(&unk_10084A170, &unk_1006E7900) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v18 = type metadata accessor for ORDRequest(0);
  v6[31] = v18;
  v19 = *(v18 - 8);
  v6[32] = v19;
  v20 = *(v19 + 64) + 15;
  v6[33] = swift_task_alloc();
  v21 = type metadata accessor for Logger();
  v6[34] = v21;
  v22 = *(v21 - 8);
  v6[35] = v22;
  v23 = *(v22 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();

  return _swift_task_switch(sub_10052B5D0, 0, 0);
}

uint64_t sub_10052B5D0()
{
  v1 = v0[41];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending ODN Results", v4, 2u);
  }

  v5 = v0[41];
  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[31];
  v9 = v0[32];
  v10 = v0[30];
  v11 = v0[14];

  v12 = *(v7 + 8);
  v0[42] = v12;
  v12(v5, v6);
  v13 = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  v0[43] = OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest;
  swift_beginAccess();
  sub_10000BBC4(v11 + v13, v10, &unk_10084A170, &unk_1006E7900);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_10000BE18(v0[30], &unk_10084A170, &unk_1006E7900);
  }

  else
  {
    v14 = v0[14];
    sub_100537B28(v0[30], v0[33], type metadata accessor for ORDRequest);
    if (*(v14 + 400) == 1)
    {
      v15 = v0[14];
      v17 = v15[20];
      v16 = v15[21];
      v18 = v15[22];
      v19 = v15[24];
      v20 = v15[25];
      v21 = swift_task_alloc();
      v0[44] = v21;
      *v21 = v0;
      v21[1] = sub_10052BB88;
      v22 = v0[33];
      v23 = v0[15];
      v24 = v0[16];

      return sub_1005AA678(v16, v18, v23, v24, v19, v20, v22);
    }

    sub_100537B90(v0[33], type metadata accessor for ORDRequest);
  }

  v26 = v0[40];
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[40];
  v31 = v0[34];
  v32 = v0[35];
  if (v29)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "no ORD available or configured to not send", v33, 2u);
  }

  v12(v30, v31);
  v34 = v0[26];
  v35 = v0[27];
  v36 = v0[25];
  v37 = v0[14];
  v38 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v0[46] = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  swift_beginAccess();
  sub_10000BBC4(v37 + v38, v36, &qword_100847538, &unk_1006E83A0);
  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {
    sub_10000BE18(v0[25], &qword_100847538, &unk_1006E83A0);
LABEL_19:
    v45 = v0[39];
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[42];
    v50 = v0[39];
    v51 = v0[34];
    v52 = v0[35];
    if (v48)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "no OTD available or configured to not send", v53, 2u);
    }

    v49(v50, v51);
    v55 = v0[40];
    v54 = v0[41];
    v57 = v0[38];
    v56 = v0[39];
    v59 = v0[36];
    v58 = v0[37];
    v60 = v0[33];
    v62 = v0[29];
    v61 = v0[30];
    v63 = v0[28];
    v65 = v0[25];
    v66 = v0[24];
    v67 = v0[23];
    v68 = v0[22];
    v69 = v0[19];

    v64 = v0[1];

    return v64();
  }

  v39 = v0[14];
  sub_100537B28(v0[25], v0[28], type metadata accessor for OTDRequest);
  if (*(v39 + 401) != 1)
  {
    sub_100537B90(v0[28], type metadata accessor for OTDRequest);
    goto LABEL_19;
  }

  v40 = *(v0[14] + 160);
  v41 = swift_task_alloc();
  v0[47] = v41;
  *v41 = v0;
  v41[1] = sub_10052C034;
  v42 = v0[28];
  v43 = v0[15];
  v44 = v0[16];

  return sub_1005AB670(v42, v43, v44);
}

uint64_t sub_10052BB88()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_10052C2E8;
  }

  else
  {
    v3 = sub_10052BC9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10052BC9C()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[14];
  sub_100537B90(v0[33], type metadata accessor for ORDRequest);
  (*(v2 + 56))(v4, 1, 1, v3);
  swift_beginAccess();
  sub_1000B2764(v4, v5 + v1, &unk_10084A170, &unk_1006E7900);
  swift_endAccess();
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[25];
  v9 = v0[14];
  v10 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v0[46] = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  swift_beginAccess();
  sub_10000BBC4(v9 + v10, v8, &qword_100847538, &unk_1006E83A0);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_10000BE18(v0[25], &qword_100847538, &unk_1006E83A0);
LABEL_8:
    v18 = v0[39];
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[42];
    v23 = v0[39];
    v24 = v0[34];
    v25 = v0[35];
    if (v21)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "no OTD available or configured to not send", v26, 2u);
    }

    v22(v23, v24);
    v28 = v0[40];
    v27 = v0[41];
    v30 = v0[38];
    v29 = v0[39];
    v32 = v0[36];
    v31 = v0[37];
    v33 = v0[33];
    v35 = v0[29];
    v34 = v0[30];
    v36 = v0[28];
    v38 = v0[25];
    v39 = v0[24];
    v40 = v0[23];
    v41 = v0[22];
    v42 = v0[19];

    v37 = v0[1];

    return v37();
  }

  v11 = v0[14];
  sub_100537B28(v0[25], v0[28], type metadata accessor for OTDRequest);
  if (*(v11 + 401) != 1)
  {
    sub_100537B90(v0[28], type metadata accessor for OTDRequest);
    goto LABEL_8;
  }

  v12 = *(v0[14] + 160);
  v13 = swift_task_alloc();
  v0[47] = v13;
  *v13 = v0;
  v13[1] = sub_10052C034;
  v14 = v0[28];
  v15 = v0[15];
  v16 = v0[16];

  return sub_1005AB670(v14, v15, v16);
}

uint64_t sub_10052C034()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_10052C8C4;
  }

  else
  {
    v3 = sub_10052C148;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10052C148()
{
  v1 = v0[46];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[14];
  sub_100537B90(v0[28], type metadata accessor for OTDRequest);
  (*(v2 + 56))(v4, 1, 1, v3);
  swift_beginAccess();
  sub_1000B2764(v4, v5 + v1, &qword_100847538, &unk_1006E83A0);
  swift_endAccess();
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[38];
  v8 = v0[39];
  v11 = v0[36];
  v10 = v0[37];
  v12 = v0[33];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[28];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[19];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10052C2E8()
{
  v1 = v0[45];
  v2 = v0[38];
  v59 = v0[42];
  v61 = v0[37];
  v55 = v0[35];
  v57 = v0[34];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v5 + 16))(v6, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v59(v2, v57);

  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[45];
  v11 = v0[42];
  v12 = v0[37];
  v13 = v0[34];
  v62 = v0[23];
  v15 = v0[20];
  v14 = v0[21];
  if (v9)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to send ORD request; continuing on", v16, 2u);
  }

  v11(v12, v13);
  (*(v14 + 8))(v62, v15);
  v17 = v0[43];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[29];
  v21 = v0[14];
  sub_100537B90(v0[33], type metadata accessor for ORDRequest);
  (*(v18 + 56))(v20, 1, 1, v19);
  swift_beginAccess();
  sub_1000B2764(v20, v21 + v17, &unk_10084A170, &unk_1006E7900);
  swift_endAccess();
  v22 = v0[26];
  v23 = v0[27];
  v24 = v0[25];
  v25 = v0[14];
  v26 = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  v0[46] = OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest;
  swift_beginAccess();
  sub_10000BBC4(v25 + v26, v24, &qword_100847538, &unk_1006E83A0);
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    sub_10000BE18(v0[25], &qword_100847538, &unk_1006E83A0);
LABEL_10:
    v34 = v0[39];
    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[42];
    v39 = v0[39];
    v40 = v0[34];
    v41 = v0[35];
    if (v37)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "no OTD available or configured to not send", v42, 2u);
    }

    v38(v39, v40);
    v44 = v0[40];
    v43 = v0[41];
    v46 = v0[38];
    v45 = v0[39];
    v48 = v0[36];
    v47 = v0[37];
    v49 = v0[33];
    v51 = v0[29];
    v50 = v0[30];
    v52 = v0[28];
    v54 = v0[25];
    v56 = v0[24];
    v58 = v0[23];
    v60 = v0[22];
    v63 = v0[19];

    v53 = v0[1];

    return v53();
  }

  v27 = v0[14];
  sub_100537B28(v0[25], v0[28], type metadata accessor for OTDRequest);
  if (*(v27 + 401) != 1)
  {
    sub_100537B90(v0[28], type metadata accessor for OTDRequest);
    goto LABEL_10;
  }

  v28 = *(v0[14] + 160);
  v29 = swift_task_alloc();
  v0[47] = v29;
  *v29 = v0;
  v29[1] = sub_10052C034;
  v30 = v0[28];
  v31 = v0[15];
  v32 = v0[16];

  return sub_1005AB670(v30, v31, v32);
}

uint64_t sub_10052C8C4()
{
  v1 = v0[48];
  v2 = v0[38];
  v39 = v0[42];
  v41 = v0[36];
  v35 = v0[35];
  v37 = v0[34];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v6, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v39(v2, v37);

  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[48];
  v11 = v0[42];
  v12 = v0[36];
  v13 = v0[34];
  v14 = v0[21];
  v42 = v0[22];
  v15 = v0[20];
  if (v9)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to send OTD request; continuing on", v16, 2u);
  }

  v11(v12, v13);
  (*(v14 + 8))(v42, v15);
  v17 = v0[46];
  v18 = v0[27];
  v19 = v0[26];
  v20 = v0[24];
  v21 = v0[14];
  sub_100537B90(v0[28], type metadata accessor for OTDRequest);
  (*(v18 + 56))(v20, 1, 1, v19);
  swift_beginAccess();
  sub_1000B2764(v20, v21 + v17, &qword_100847538, &unk_1006E83A0);
  swift_endAccess();
  v23 = v0[40];
  v22 = v0[41];
  v25 = v0[38];
  v24 = v0[39];
  v27 = v0[36];
  v26 = v0[37];
  v28 = v0[33];
  v30 = v0[29];
  v29 = v0[30];
  v31 = v0[28];
  v34 = v0[25];
  v36 = v0[24];
  v38 = v0[23];
  v40 = v0[22];
  v43 = v0[19];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10052CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for Logger();
  v4[40] = v5;
  v6 = *(v5 - 8);
  v4[41] = v6;
  v7 = *(v6 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v4[44] = v8;
  v9 = *(v8 - 8);
  v4[45] = v9;
  v10 = *(v9 + 64) + 15;
  v4[46] = swift_task_alloc();
  v11 = type metadata accessor for DIPError();
  v4[47] = v11;
  v12 = *(v11 - 8);
  v4[48] = v12;
  v13 = *(v12 + 64) + 15;
  v4[49] = swift_task_alloc();
  v14 = *(*(sub_100007224(&unk_10084A130, &qword_1006E9ED0) - 8) + 64) + 15;
  v4[50] = swift_task_alloc();
  v15 = type metadata accessor for DIPPregeneratedAssessment(0);
  v4[51] = v15;
  v16 = *(v15 - 8);
  v4[52] = v16;
  v17 = *(v16 + 64) + 15;
  v4[53] = swift_task_alloc();

  return _swift_task_switch(sub_10052CEC4, 0, 0);
}

uint64_t sub_10052CEC4()
{
  v96 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  sub_10000BBC4(v0[38], v3, &unk_10084A130, &qword_1006E9ED0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000BE18(v0[50], &unk_10084A130, &qword_1006E9ED0);
    v6 = v0[42];
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "getOrCreateGUIDS: no pre-generated assessment available; generating new guids", v10, 2u);
    }

    v12 = v0[41];
    v11 = v0[42];
    v13 = v0[40];

    (*(v12 + 8))(v11, v13);
    v14 = swift_task_alloc();
    v0[54] = v14;
    *v14 = v0;
    v14[1] = sub_10052D45C;
    v15 = v0[39];

    return sub_10004ADF8((v0 + 19));
  }

  else
  {
    v4 = v0[53];
    v5 = v0[39];
    sub_100537B28(v0[50], v4, type metadata accessor for DIPPregeneratedAssessment);
    sub_1005371D8(v4, v5, v62);
    v61 = v62[0];
    v17 = v63;
    v18 = v64;
    v19 = v65;
    v59 = v67;
    v60 = v66;
    v57 = v69;
    v58 = v68;
    v55 = v71;
    v56 = v70;
    v53 = v73;
    v54 = v72;
    v51 = v75;
    v52 = v74;
    v49 = v77;
    v50 = v76;
    v48 = v78;
    v47 = v79;
    v45 = v81;
    v46 = v80;
    v43 = v83;
    v44 = v82;
    v41 = v85;
    v42 = v84;
    v39 = v87;
    v40 = v86;
    v37 = v89;
    v38 = v88;
    v35 = v91;
    v36 = v90;
    v33 = v93;
    v34 = v92;
    v31 = v95;
    v32 = v94;
    v20 = v0[52];
    v21 = v0[51];
    v22 = v0[37];
    sub_100537B28(v0[53], v22, type metadata accessor for DIPPregeneratedAssessment);
    (*(v20 + 56))(v22, 0, 1, v21);
    v23 = v0[53];
    v24 = v0[49];
    v25 = v0[50];
    v26 = v0[46];
    v28 = v0[42];
    v27 = v0[43];
    v29 = v0[36];

    *v29 = v61;
    *(v29 + 8) = v17;
    *(v29 + 16) = v18;
    *(v29 + 24) = v19;
    *(v29 + 32) = v60;
    *(v29 + 40) = v59;
    *(v29 + 48) = v58;
    *(v29 + 56) = v57;
    *(v29 + 64) = v56;
    *(v29 + 72) = v55;
    *(v29 + 80) = v54;
    *(v29 + 88) = v53;
    *(v29 + 96) = v52;
    *(v29 + 104) = v51;
    *(v29 + 112) = v50;
    *(v29 + 120) = v49;
    *(v29 + 128) = v48;
    *(v29 + 136) = v47;
    *(v29 + 144) = v46;
    *(v29 + 152) = v45;
    *(v29 + 160) = v44;
    *(v29 + 168) = v43;
    *(v29 + 176) = v42;
    *(v29 + 184) = v41;
    *(v29 + 192) = v40;
    *(v29 + 200) = v39;
    *(v29 + 208) = v38;
    *(v29 + 216) = v37;
    *(v29 + 224) = v36;
    *(v29 + 232) = v35;
    *(v29 + 240) = v34;
    *(v29 + 248) = v33;
    *(v29 + 256) = v32;
    *(v29 + 264) = v31;
    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_10052D45C()
{
  v2 = *(*v1 + 432);
  v3 = *v1;
  v3[55] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10052D888, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[56] = v4;
    *v4 = v3;
    v4[1] = sub_10052D5D0;
    v5 = v3[39];

    return sub_10004BA48((v3 + 2));
  }
}

uint64_t sub_10052D5D0()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_10052DA4C;
  }

  else
  {
    v3 = sub_10052D6E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10052D6E4()
{
  (*(*(v0 + 416) + 56))(*(v0 + 296), 1, 1, *(v0 + 408));
  v28 = *(v0 + 144);
  v29 = *(v0 + 136);
  v26 = *(v0 + 104);
  v27 = *(v0 + 120);
  v24 = *(v0 + 72);
  v25 = *(v0 + 88);
  v22 = *(v0 + 40);
  v23 = *(v0 + 56);
  v21 = *(v0 + 24);
  v20 = *(v0 + 16);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v18 = *(v0 + 240);
  v19 = *(v0 + 256);
  v16 = *(v0 + 208);
  v17 = *(v0 + 224);
  v14 = *(v0 + 176);
  v15 = *(v0 + 192);
  v13 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 424);
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7 = *(v0 + 368);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  v10 = *(v0 + 288);

  *v10 = v3;
  *(v10 + 8) = v13;
  *(v10 + 24) = v14;
  *(v10 + 40) = v15;
  *(v10 + 56) = v16;
  *(v10 + 72) = v17;
  *(v10 + 88) = v18;
  *(v10 + 104) = v19;
  *(v10 + 120) = v2;
  *(v10 + 128) = v1;
  *(v10 + 136) = v20;
  *(v10 + 144) = v21;
  *(v10 + 160) = v22;
  *(v10 + 176) = v23;
  *(v10 + 192) = v24;
  *(v10 + 208) = v25;
  *(v10 + 224) = v26;
  *(v10 + 240) = v27;
  *(v10 + 256) = v29;
  *(v10 + 264) = v28;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10052D888()
{
  v1 = v0[55];
  v2 = v0[53];
  v6 = v0[50];
  v7 = v0[49];
  v3 = v0[47];
  v8 = v0[43];
  v9 = v0[42];
  (*(v0[45] + 104))(v0[46], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[44]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10052DA4C()
{
  sub_10004D8EC((v0 + 19));
  v1 = v0[57];
  v2 = v0[53];
  v6 = v0[50];
  v7 = v0[49];
  v3 = v0[47];
  v8 = v0[43];
  v9 = v0[42];
  (*(v0[45] + 104))(v0[46], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[44]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10052DC18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008350C0, &unk_1006C0B30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = (a1 + *(type metadata accessor for AugmentedProfile(0) + 28));
  v18 = *v16;
  v17 = v16[1];
  v19 = (v2 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v20 = *(v2 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  *v19 = v18;
  v19[1] = v17;

  sub_10000BBC4(a1, v15, &qword_1008350C0, &unk_1006C0B30);
  v21 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v15, 1, v21) == 1)
  {
    sub_10000BE18(v15, &qword_1008350C0, &unk_1006C0B30);
    v24 = 1;
  }

  else
  {
    JWSSignedJSON.payload.getter();
    v47 = v41;
    v48[0] = v42[0];
    *(v48 + 13) = *(v42 + 13);
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v46 = v40;
    (*(v22 + 8))(v15, v21);
    sub_10009E858(&v43);
    v24 = BYTE9(v48[1]);
  }

  *(v2 + 400) = v24;
  sub_10000BBC4(a1, v13, &qword_1008350C0, &unk_1006C0B30);
  if (v23(v13, 1, v21) == 1)
  {
    sub_10000BE18(v13, &qword_1008350C0, &unk_1006C0B30);
    v25 = 1;
  }

  else
  {
    JWSSignedJSON.payload.getter();
    v47 = v41;
    v48[0] = v42[0];
    *(v48 + 13) = *(v42 + 13);
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v46 = v40;
    (*(v22 + 8))(v13, v21);
    sub_10009E858(&v43);
    v25 = BYTE10(v48[1]);
  }

  *(v2 + 401) = v25;
  sub_10000BBC4(a1, v10, &qword_1008350C0, &unk_1006C0B30);
  if (v23(v10, 1, v21) == 1)
  {
    sub_10000BE18(v10, &qword_1008350C0, &unk_1006C0B30);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    JWSSignedJSON.payload.getter();
    v47 = v41;
    v48[0] = v42[0];
    *(v48 + 13) = *(v42 + 13);
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v46 = v40;
    (*(v22 + 8))(v10, v21);
    sub_10000BBC4(&v43, v36, &qword_100835658, &qword_1006C1A50);
    sub_10009E858(&v43);
    v27 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v26 = v43;

      sub_10000BE18(&v43, &qword_100835658, &qword_1006C1A50);
    }

    else
    {
      v26 = 0;
    }
  }

  v28 = *(v2 + 120);
  *(v2 + 112) = v26;
  *(v2 + 120) = v27;

  v29 = v35;
  sub_10000BBC4(a1, v35, &qword_1008350C0, &unk_1006C0B30);
  if (v23(v29, 1, v21) == 1)
  {
    sub_10000BE18(v29, &qword_1008350C0, &unk_1006C0B30);
LABEL_16:
    v31 = 0;
    v30 = 0;
    goto LABEL_17;
  }

  JWSSignedJSON.payload.getter();
  v47 = v41;
  v48[0] = v42[0];
  *(v48 + 13) = *(v42 + 13);
  v43 = v37;
  v44 = v38;
  v45 = v39;
  v46 = v40;
  (*(v22 + 8))(v29, v21);
  sub_10000BBC4(&v43, v36, &qword_100835658, &qword_1006C1A50);
  sub_10009E858(&v43);
  if (!*(&v43 + 1))
  {
    goto LABEL_16;
  }

  v30 = *(&v44 + 1);
  v31 = v44;

  sub_10000BE18(&v43, &qword_100835658, &qword_1006C1A50);
LABEL_17:
  v32 = *(v2 + 136);
  *(v2 + 128) = v31;
  *(v2 + 136) = v30;
}

uint64_t sub_10052E12C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 176);

  v11 = *(v0 + 200);

  sub_10000BE18(v0 + 216, &qword_100834EB0, &qword_1006E78F0);
  v12 = *(v0 + 264);

  sub_10000BD94(*(v0 + 272), *(v0 + 280));
  sub_10000BE18(v0 + 288, &qword_100834EB0, &qword_1006E78F0);
  v13 = *(v0 + 336);

  sub_10000BD94(*(v0 + 344), *(v0 + 352));
  v14 = *(v0 + 360);

  v15 = *(v0 + 392);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_ordRequest, &unk_10084A170, &unk_1006E7900);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_otdRequest, &qword_100847538, &unk_1006E83A0);
  v16 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);

  v17 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 8);
  v18 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 16);
  v19 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 24);
  v20 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 32);
  v21 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 40);
  v22 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 48);
  v23 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 56);
  v25 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 64);
  v26 = *(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory + 72);
  sub_10053C0AC(*(v0 + OBJC_IVAR____TtC8coreidvd10DIPODNator_clientGUIDFactory));
  return v0;
}

uint64_t sub_10052E2B0()
{
  sub_10052E12C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10052E330()
{
  sub_10052E4CC(319, &qword_100846C00, type metadata accessor for ORDRequest);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10052E4CC(319, &qword_100846C08, type metadata accessor for OTDRequest);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10052E4CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10052E520(uint64_t *a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for Logger();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[4];
  v13 = v11[2];
  v36 = *a1;
  if (v13)
  {
    v14 = v11[5];
    v40 = v11[4];
  }

  else
  {
    v40 = 0;
    v14 = 0;
  }

  v15 = [objc_opt_self() standardUserDefaults];
  v16._countAndFlagsBits = static DaemonInternalDefaultsKeys.logODNBindingValues.getter();
  v17 = NSUserDefaults.internalBool(forKey:)(v16);

  if (v17 && v14)
  {

    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v36;
    if (v20)
    {
      v22 = swift_slowAlloc();
      *&v38 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_100141FE4(v21, v10, &v38);
      *(v22 + 12) = 2080;
      v23 = sub_100141FE4(v40, v14, &v38);

      *(v22 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "ODN bindings user entered keyed-in attribute %s: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v34 + 8))(v9, v35);
LABEL_14:
    *(&v39 + 1) = &type metadata for String;
    *&v38 = v40;
    *(&v38 + 1) = v14;
    goto LABEL_15;
  }

  defaultLogger()();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = os_log_type_enabled(v24, v25);
  v21 = v36;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v38 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100141FE4(v21, v10, &v38);
    _os_log_impl(&_mh_execute_header, v24, v25, "ODN bindings user entered keyed-in attribute %s", v27, 0xCu);
    sub_10000BB78(v28);
  }

  (*(v34 + 8))(v7, v35);
  if (v14)
  {
    goto LABEL_14;
  }

  v38 = 0u;
  v39 = 0u;
LABEL_15:

  sub_10014BD20(&v38, v21, v10);
  *&v38 = v21;
  *(&v38 + 1) = v10;

  v29._countAndFlagsBits = 0x657261685373692ELL;
  v29._object = 0xE900000000000064;
  String.append(_:)(v29);
  v30 = v38;
  v31 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(&v39 + 1) = sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
  *&v38 = v31;
  return sub_10014BD20(&v38, v30, *(&v30 + 1));
}

uint64_t sub_10052E9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v65 = a3;
  v64 = a2;
  v63 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  __chkstk_darwin(v7);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  v10 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v61 - v14;
  v76 = type metadata accessor for ODNAssessmentResult(0);
  v62 = *(v76 - 8);
  v16 = *(v62 + 64);
  __chkstk_darwin(v76);
  v61 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DIPSignpost.Config();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = type metadata accessor for DIPSignpost();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = *(v72 + 64);
  __chkstk_darwin(v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v74 = *(v24 - 8);
  v75 = v24;
  v25 = *(v74 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v61 - v29;
  v31 = [objc_opt_self() standardUserDefaults];
  v32._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODIN.getter();
  v33 = NSUserDefaults.internalBool(forKey:)(v32);

  if (!v33)
  {
    static DaemonSignposts.getVerificationResultFetchAssesssment.getter();
    DIPSignpost.init(_:)();
    v42 = v23;
    if (*(v5 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) != 1)
    {
      *(v5 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 1;
      v44 = dispatch_semaphore_create(0);
      v45 = *(v5 + 368);
      *(v5 + 368) = v44;

      v46 = dispatch_semaphore_create(0);
      v47 = *(v5 + 376);
      *(v5 + 376) = v46;

      v79[0] = sub_10051F568(v63, v64, 0);
      if (v65)
      {
        sub_10051B690(v65, v79);
      }

      sub_10051F0D0(v79, 0, 0);
      v48 = v79[0];
      v49 = *(v5 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_workQueue);
      v50 = swift_allocObject();
      *(v50 + 16) = v5;
      *(v50 + 24) = v48;
      aBlock[4] = sub_10053C07C;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100503A7C;
      aBlock[3] = &unk_100816290;
      v51 = _Block_copy(aBlock);

      v52 = v66;
      static DispatchQoS.unspecified.getter();
      v77 = _swiftEmptyArrayStorage;
      sub_10053B9C0(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100007224(&qword_100848A40, &unk_1006BF8C0);
      sub_1000BA30C(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
      v53 = v68;
      v54 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v51);
      (*(v70 + 8))(v53, v54);
      (*(v67 + 8))(v52, v69);

      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      v55 = *(v76 + 44);
      v56 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v56 - 8) + 56))(a4 + v55, 1, 1, v56);
      *(a4 + 104) = 0u;
      *(a4 + 88) = 0u;
      *(a4 + 72) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = 1;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0u;
      *(a4 + 168) = 0u;
      *(a4 + 184) = 0u;
      *(a4 + 200) = 0u;
      *(a4 + 216) = 0u;
      goto LABEL_17;
    }

    v43 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
    swift_beginAccess();
    sub_10000BBC4(v5 + v43, v15, &unk_10084A140, &unk_1006DB430);
    if ((*(v62 + 48))(v15, 1, v76) == 1)
    {
      sub_10000BE18(v15, &unk_10084A140, &unk_1006DB430);
    }

    else
    {
      v57 = v61;
      sub_100537B28(v15, v61, type metadata accessor for ODNAssessmentResult);
      if (*(v57 + 120) != 1)
      {
        defaultLogger()();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "fetchAssessment: previous assessment contains error.", v60, 2u);
        }

        (*(v74 + 8))(v28, v75);
        sub_100537B28(v57, a4, type metadata accessor for ODNAssessmentResult);
        goto LABEL_17;
      }

      sub_100537B90(v57, type metadata accessor for ODNAssessmentResult);
    }

    sub_100531D78(a4);
LABEL_17:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v72 + 8))(v42, v73);
  }

  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Skipping ODIN due to setting", v36, 2u);
  }

  (*(v74 + 8))(v30, v75);
  swift_beginAccess();
  sub_10000BBC4(v5 + 216, a4, &qword_100834EB0, &qword_1006E78F0);
  v38 = *(v5 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v37 = *(v5 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  v39 = *(v76 + 44);
  v40 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v40 - 8) + 56))(a4 + v39, 1, 1, v40);
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 120) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = v38;
  *(a4 + 224) = v37;
}

uint64_t sub_10052F378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v80 = a2;
  v81 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = *(v86 + 64);
  __chkstk_darwin(v5);
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v83 = *(v85 - 8);
  v8 = *(v83 + 64);
  __chkstk_darwin(v85);
  v82 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_10084A130, &qword_1006E9ED0);
  v76 = *(v10 - 8);
  v77 = *(v76 + 64);
  __chkstk_darwin(v10 - 8);
  v78 = &v72 - v11;
  v12 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v74 = *(v12 - 8);
  v13 = *(v74 + 64);
  __chkstk_darwin(v12 - 8);
  v75 = &v72 - v14;
  v15 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v72 - v17;
  v93 = type metadata accessor for ODNAssessmentResult(0);
  v73 = *(v93 - 8);
  v19 = *(v73 + 64);
  __chkstk_darwin(v93);
  v72 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DIPSignpost.Config();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = type metadata accessor for DIPSignpost();
  v88 = *(v23 - 8);
  v89 = v23;
  v24 = *(v88 + 64);
  __chkstk_darwin(v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Logger();
  v90 = *(v27 - 8);
  v91 = v27;
  v28 = *(v90 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v72 - v32;
  v34 = [objc_opt_self() standardUserDefaults];
  v35._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODIN.getter();
  v36 = NSUserDefaults.internalBool(forKey:)(v35);

  if (!v36)
  {
    static DaemonSignposts.getVerificationResultFetchAssesssment.getter();
    DIPSignpost.init(_:)();
    v46 = v92;
    v47 = v26;
    if (*(v92 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) != 1)
    {
      *(v92 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 1;
      v49 = dispatch_semaphore_create(0);
      v50 = *(v46 + 368);
      *(v46 + 368) = v49;

      v51 = dispatch_semaphore_create(0);
      v52 = *(v46 + 376);
      *(v46 + 376) = v51;

      v90 = *(v46 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_workQueue);
      v53 = v75;
      sub_10000BBC4(v79, v75, &unk_10084A160, &unk_1006E7978);
      v54 = v78;
      sub_10000BBC4(v80, v78, &unk_10084A130, &qword_1006E9ED0);
      v55 = (*(v74 + 80) + 16) & ~*(v74 + 80);
      v56 = (v13 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (*(v76 + 80) + v56 + 8) & ~*(v76 + 80);
      v58 = (v77 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      v91 = v47;
      v60 = v59;
      sub_1000B1FC8(v53, v59 + v55, &unk_10084A160, &unk_1006E7978);
      *(v60 + v56) = v46;
      sub_1000B1FC8(v54, v60 + v57, &unk_10084A130, &qword_1006E9ED0);
      *(v60 + v58) = v81;
      aBlock[4] = sub_10053BE1C;
      aBlock[5] = v60;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100503A7C;
      aBlock[3] = &unk_100816240;
      v61 = _Block_copy(aBlock);

      v62 = v82;
      static DispatchQoS.unspecified.getter();
      v94 = _swiftEmptyArrayStorage;
      sub_10053B9C0(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100007224(&qword_100848A40, &unk_1006BF8C0);
      sub_1000BA30C(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
      v63 = v84;
      v64 = v87;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v61);
      (*(v86 + 8))(v63, v64);
      (*(v83 + 8))(v62, v85);

      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      v65 = *(v93 + 44);
      v66 = type metadata accessor for AssessmentAdditionalInfo(0);
      (*(*(v66 - 8) + 56))(a4 + v65, 1, 1, v66);
      *(a4 + 104) = 0u;
      *(a4 + 88) = 0u;
      *(a4 + 72) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = 1;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0u;
      *(a4 + 168) = 0u;
      *(a4 + 184) = 0u;
      *(a4 + 200) = 0u;
      *(a4 + 216) = 0u;
      v67 = v91;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      return (*(v88 + 8))(v67, v89);
    }

    v48 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
    swift_beginAccess();
    sub_10000BBC4(v46 + v48, v18, &unk_10084A140, &unk_1006DB430);
    if ((*(v73 + 48))(v18, 1, v93) == 1)
    {
      sub_10000BE18(v18, &unk_10084A140, &unk_1006DB430);
    }

    else
    {
      v68 = v72;
      sub_100537B28(v18, v72, type metadata accessor for ODNAssessmentResult);
      if (*(v68 + 120) != 1)
      {
        defaultLogger()();
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "fetchAssessment: previous assessment contains error.", v71, 2u);
        }

        (*(v90 + 8))(v31, v91);
        sub_100537B28(v68, a4, type metadata accessor for ODNAssessmentResult);
        goto LABEL_15;
      }

      sub_100537B90(v68, type metadata accessor for ODNAssessmentResult);
    }

    sub_100531D78(a4);
LABEL_15:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v88 + 8))(v26, v89);
  }

  v37 = v92;
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Skipping ODIN due to setting", v40, 2u);
  }

  (*(v90 + 8))(v33, v91);
  swift_beginAccess();
  sub_10000BBC4(v37 + 216, a4, &qword_100834EB0, &qword_1006E78F0);
  v42 = *(v37 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v41 = *(v37 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  v43 = *(v93 + 44);
  v44 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v44 - 8) + 56))(a4 + v43, 1, 1, v44);
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 120) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = v42;
  *(a4 + 224) = v41;
}

uint64_t sub_10052FF0C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v117 = a4;
  v125 = a3;
  v129 = a2;
  v134 = a1;
  v4 = type metadata accessor for DIPSignpost.Config();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v116 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost();
  v119 = *(v7 - 8);
  v120 = v7;
  v8 = *(v119 + 64);
  __chkstk_darwin(v7);
  v118 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_10084A130, &qword_1006E9ED0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v126 = &v105 - v12;
  v13 = type metadata accessor for DIPPregeneratedAssessment(0);
  v123 = *(v13 - 8);
  v124 = v13;
  v14 = *(v123 + 64);
  __chkstk_darwin(v13);
  v115 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DIPError.Code();
  v108 = *(v16 - 8);
  v109 = v16;
  v17 = *(v108 + 64);
  __chkstk_darwin(v16);
  v110 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v127 = (&v105 - v21);
  v130 = sub_100007224(&qword_100835138, &qword_1006C0B58);
  v128 = *(v130 - 8);
  v22 = *(v128 + 64);
  v23 = __chkstk_darwin(v130);
  v112 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v107 = &v105 - v25;
  v131 = type metadata accessor for Logger();
  v135 = *(v131 - 8);
  v26 = *(v135 + 64);
  v27 = __chkstk_darwin(v131);
  v121 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v133 = &v105 - v30;
  __chkstk_darwin(v29);
  v113 = &v105 - v31;
  v32 = type metadata accessor for AugmentedProfile(0);
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = __chkstk_darwin(v32);
  v114 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v105 - v37;
  v39 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v122 = (&v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __chkstk_darwin(v41);
  v111 = &v105 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v105 - v46;
  __chkstk_darwin(v45);
  v49 = &v105 - v48;
  v50 = v33[7];
  v50(&v105 - v48, 1, 1, v32);
  sub_10000BBC4(v134, v47, &unk_10084A160, &unk_1006E7978);
  v51 = v33[6];
  v134 = v33 + 6;
  v132 = v51;
  if (v51(v47, 1, v32) == 1)
  {
    v106 = v49;
    sub_10000BE18(v47, &unk_10084A160, &unk_1006E7978);
    v52 = v129;

    sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    runAsyncAndBlock<A>(file:function:line:_:)();

    v53 = v133;
    if (*(&v144 + 1))
    {
      v54 = v114;
      sub_10053CD68(v114);

      sub_10052DC18(v54);
      v66 = v111;
      sub_100537B28(v54, v111, type metadata accessor for AugmentedProfile);
      v50(v66, 0, 1, v32);
      v67 = v52;
      v68 = v106;
      sub_1000B2764(v66, v106, &unk_10084A160, &unk_1006E7978);
    }

    else
    {
      v67 = v52;
      v68 = v106;
    }
  }

  else
  {
    sub_100537B28(v47, v38, type metadata accessor for AugmentedProfile);
    sub_10000BE18(v49, &unk_10084A160, &unk_1006E7978);
    sub_10053BFD8(v38, v49);
    v50(v49, 0, 1, v32);
    v67 = v129;
    sub_10052DC18(v38);
    sub_100537B90(v38, type metadata accessor for AugmentedProfile);
    v68 = v49;
    v53 = v133;
  }

  defaultLogger()();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = 4271950;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v150 = v59;
    *v58 = 136315138;
    swift_beginAccess();
    if (v132(v68, 1, v32))
    {
      v60 = v68;
      v61 = 0xE300000000000000;
    }

    else
    {
      v114 = v32;
      v64 = v128;
      v65 = v130;
      if ((*(v128 + 48))(v68, 1, v130))
      {
        v60 = v68;
        v61 = 0xE300000000000000;
      }

      else
      {
        v69 = v107;
        v60 = v68;
        (*(v64 + 16))(v107, v68, v65);
        JWSSignedJSON.payload.getter();
        (*(v64 + 8))(v69, v65);
        v148 = v142;
        *v149 = v143[0];
        *&v149[13] = *(v143 + 13);
        v144 = v138;
        v145 = v139;
        v146 = v140;
        v147 = v141;
        sub_10009E858(&v144);
        v70 = 0xD000000000000018;
        v71 = 0x80000001006F94E0;
        if (v149[24] != 1)
        {
          v70 = 0x6146737961776C61;
          v71 = 0xEE006B6361626C6CLL;
        }

        if (v149[24])
        {
          v57 = v70;
        }

        else
        {
          v57 = 0x746C7561666564;
        }

        if (v149[24])
        {
          v61 = v71;
        }

        else
        {
          v61 = 0xE700000000000000;
        }
      }

      v67 = v129;
      v32 = v114;
    }

    v72 = sub_100141FE4(v57, v61, &v150);

    *(v58 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v55, v56, "fetchAssessment: requirePregenerated set at : %s", v58, 0xCu);
    sub_10000BB78(v59);

    v62 = *(v135 + 8);
    v63 = v131;
    v62(v133, v131);
    v68 = v60;
  }

  else
  {

    v62 = *(v135 + 8);
    v63 = v131;
    v62(v53, v131);
  }

  swift_beginAccess();
  v73 = v132(v68, 1, v32);
  v74 = v126;
  v75 = v130;
  v76 = v128;
  if (v73 || (*(v128 + 48))(v68, 1, v130))
  {
    goto LABEL_24;
  }

  v92 = v112;
  (*(v76 + 16))(v112, v68, v75);
  JWSSignedJSON.payload.getter();
  (*(v76 + 8))(v92, v75);
  v148 = v142;
  *v149 = v143[0];
  *&v149[13] = *(v143 + 13);
  v144 = v138;
  v145 = v139;
  v146 = v140;
  v147 = v141;
  sub_10009E858(&v144);
  if (v149[24] && v149[24] != 1)
  {
  }

  else
  {
    v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v93 & 1) == 0)
    {
LABEL_24:
      sub_10000BBC4(v125, v74, &unk_10084A130, &qword_1006E9ED0);
      if ((*(v123 + 48))(v74, 1, v124) == 1)
      {
        sub_10000BE18(v74, &unk_10084A130, &qword_1006E9ED0);
        defaultLogger()();
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&_mh_execute_header, v77, v78, "No Pregenerated available, computing a new one", v79, 2u);
        }

        v62(v121, v63);
        static DaemonSignposts.getVerificationResultFetchAssesssmentProofing.getter();
        v80 = v118;
        DIPSignpost.init(_:)();
        v144 = 0u;
        v145 = 0u;
        *&v147 = 0;
        v146 = 1uLL;
        BYTE8(v147) = 0;
        v81 = v122;
        sub_10000BBC4(v68, v122, &unk_10084A160, &unk_1006E7978);
        v82 = v127;
        sub_100522400(v117, 0, &v144, v81, 1, v127);
        sub_10000BE18(v81, &unk_10084A160, &unk_1006E7978);
        v83 = type metadata accessor for ODNAssessmentResult(0);
        (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
        v84 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
        swift_beginAccess();
        sub_1000B2764(v82, v67 + v84, &unk_10084A140, &unk_1006DB430);
        swift_endAccess();
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v119 + 8))(v80, v120);
      }

      else
      {
        v85 = v115;
        sub_100537B28(v74, v115, type metadata accessor for DIPPregeneratedAssessment);
        v86 = v122;
        sub_10000BBC4(v68, v122, &unk_10084A160, &unk_1006E7978);
        v87 = v127;
        sub_100520B1C(v85, v86, v127);
        sub_10000BE18(v86, &unk_10084A160, &unk_1006E7978);
        sub_100537B90(v85, type metadata accessor for DIPPregeneratedAssessment);
        v88 = type metadata accessor for ODNAssessmentResult(0);
        (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
        v89 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
        swift_beginAccess();
        sub_1000B2764(v87, v67 + v89, &unk_10084A140, &unk_1006DB430);
        swift_endAccess();
      }

      v90 = v68;
      return sub_10000BE18(v90, &unk_10084A160, &unk_1006E7978);
    }
  }

  (*(v108 + 104))(v110, enum case for DIPError.Code.odnForcedFallback(_:), v109);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
  v94 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10051EB94(v94, 2, v136);

  swift_beginAccess();
  v95 = v127;
  sub_10000BBC4(v67 + 216, v127, &qword_100834EB0, &qword_1006E78F0);
  v97 = *(v67 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
  v96 = *(v67 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
  v98 = type metadata accessor for ODNAssessmentResult(0);
  v99 = *(v98 + 44);
  v100 = type metadata accessor for AssessmentAdditionalInfo(0);
  (*(*(v100 - 8) + 56))(v95 + v99, 1, 1, v100);
  v101 = v136[1];
  *(v95 + 11) = v136[0];
  *(v95 + 9) = 0u;
  *(v95 + 7) = 0u;
  *(v95 + 5) = 0u;
  *(v95 + 13) = v101;
  *(v95 + 15) = v137[0];
  *(v95 + 129) = *(v137 + 9);
  *(v95 + 19) = 0u;
  *(v95 + 21) = 0u;
  *(v95 + 23) = 0u;
  *(v95 + 25) = 0u;
  v95[27] = v97;
  v95[28] = v96;
  (*(*(v98 - 8) + 56))(v95, 0, 1, v98);
  v102 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  swift_beginAccess();

  sub_1000B2764(v95, v67 + v102, &unk_10084A140, &unk_1006DB430);
  swift_endAccess();
  v103 = *(v67 + 376);
  if (v103)
  {
    v104 = v103;
    OS_dispatch_semaphore.signal()();
  }

  v90 = v68;
  return sub_10000BE18(v90, &unk_10084A160, &unk_1006E7978);
}

uint64_t sub_100531168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v69 = a3;
  v70 = a4;
  v67 = a1;
  v68 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  __chkstk_darwin(v8);
  v73 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  v11 = *(v72 + 64);
  __chkstk_darwin(v74);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v64 - v15;
  v77 = type metadata accessor for ODNAssessmentResult(0);
  v66 = *(v77 - 8);
  v17 = *(v66 + 64);
  __chkstk_darwin(v77);
  v65 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v64 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v64 - v25;
  __chkstk_darwin(v24);
  v28 = &v64 - v27;
  v29 = [objc_opt_self() standardUserDefaults];
  v30._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableODIN.getter();
  v31 = NSUserDefaults.internalBool(forKey:)(v30);

  if (v31)
  {
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Skipping ODIN due to setting", v34, 2u);
    }

    (*(v20 + 8))(v28, v19);
    swift_beginAccess();
    sub_10000BBC4(v6 + 216, a5, &qword_100834EB0, &qword_1006E78F0);
    v35 = v6 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId;
    v37 = *(v6 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    v36 = *(v35 + 8);
    v38 = *(v77 + 44);
    v39 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v39 - 8) + 56))(a5 + v38, 1, 1, v39);
    *(a5 + 104) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 136) = 0;
    *(a5 + 120) = 1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 184) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 216) = v37;
    *(a5 + 224) = v36;
  }

  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Fetching identity profile assessment", v43, 2u);
  }

  v44 = *(v20 + 8);
  v44(v26, v19);
  if (*(v6 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) != 1)
  {
    *(v6 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_odnNatorState) = 1;
    v46 = dispatch_semaphore_create(0);
    v47 = *(v6 + 368);
    *(v6 + 368) = v46;

    v48 = dispatch_semaphore_create(0);
    v49 = *(v6 + 376);
    *(v6 + 376) = v48;

    v50 = sub_100536158(v67, v68, v69, v70);
    v51 = *(v6 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_workQueue);
    v52 = swift_allocObject();
    *(v52 + 16) = v6;
    *(v52 + 24) = v50;
    aBlock[4] = sub_10053B96C;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_100816128;
    v53 = _Block_copy(aBlock);

    v54 = v71;
    static DispatchQoS.unspecified.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_10053B9C0(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_1000BA30C(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v55 = v73;
    v56 = v76;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v53);
    (*(v75 + 8))(v55, v56);
    (*(v72 + 8))(v54, v74);

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    v57 = *(v77 + 44);
    v58 = type metadata accessor for AssessmentAdditionalInfo(0);
    result = (*(*(v58 - 8) + 56))(a5 + v57, 1, 1, v58);
    *(a5 + 104) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 128) = 0;
    *(a5 + 136) = 0;
    *(a5 + 120) = 1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 184) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 216) = 0u;
    return result;
  }

  v45 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  swift_beginAccess();
  sub_10000BBC4(v6 + v45, v16, &unk_10084A140, &unk_1006DB430);
  if ((*(v66 + 48))(v16, 1, v77) == 1)
  {
    sub_10000BE18(v16, &unk_10084A140, &unk_1006DB430);
    return sub_100531D78(a5);
  }

  v59 = v65;
  sub_100537B28(v16, v65, type metadata accessor for ODNAssessmentResult);
  if (*(v59 + 120) == 1)
  {
    sub_100537B90(v59, type metadata accessor for ODNAssessmentResult);
    return sub_100531D78(a5);
  }

  v60 = v64;
  defaultLogger()();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "fetchAssessment: previous assessment contains error.", v63, 2u);
  }

  v44(v60, v19);
  return sub_100537B28(v59, a5, type metadata accessor for ODNAssessmentResult);
}

uint64_t sub_100531A84(uint64_t a1, NSObject *a2, void (*a3)(uint64_t))
{
  v6 = sub_100007224(&unk_10084A160, &unk_1006E7978);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (v27 - v8 + 16);
  v10 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (v27 - v12 + 16);
  v14 = type metadata accessor for DIPSignpost.Config();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for DIPSignpost();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  a3(v19);
  DIPSignpost.init(_:)();
  memset(v27, 0, sizeof(v27));
  v28 = 1;
  v22 = type metadata accessor for AugmentedProfile(0);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_100522400(a2, 0, v27, v9, 1, v13);
  sub_10000BE18(v9, &unk_10084A160, &unk_1006E7978);
  v23 = type metadata accessor for ODNAssessmentResult(0);
  (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  v24 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  swift_beginAccess();
  sub_1000B2764(v13, a1 + v24, &unk_10084A140, &unk_1006DB430);
  swift_endAccess();
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  return (*(v17 + 8))(v21, v16);
}

uint64_t sub_100531D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v85 = type metadata accessor for DIPError.Code();
  v84 = *(v85 - 8);
  v3 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  v7 = __chkstk_darwin(v5);
  v86 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v87 = &v77 - v10;
  __chkstk_darwin(v9);
  v79 = &v77 - v11;
  v91 = type metadata accessor for ODNAssessmentResult(0);
  v81 = *(v91 - 8);
  v12 = *(v81 + 64);
  __chkstk_darwin(v91);
  v78 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v80 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v82 = &v77 - v18;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v19 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v20 = *(*(v19 - 8) + 72);
  v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006BF740;
  v23 = v22 + v21;
  v24 = (v23 + *(v19 + 48));
  v25 = enum case for DIPError.PropertyKey.spWorkflowID(_:);
  v26 = type metadata accessor for DIPError.PropertyKey();
  v27 = *(*(v26 - 8) + 104);
  (v27)(v23, v25, v26);
  v28 = *(v2 + 32);
  v29 = *(v2 + 40);
  v24[3] = &type metadata for String;
  v24[4] = &protocol witness table for String;
  *v24 = v28;
  v24[1] = v29;
  v30 = v23 + v20;
  v31 = v2;
  v32 = v30 + *(v19 + 48);
  v27();
  v33 = *(v2 + 208);
  *(v32 + 24) = &type metadata for DIPState;
  *(v32 + 32) = sub_10053B8D4();
  *v32 = v33;

  v34 = sub_10003C9C0(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v35 = *(v2 + 376);
  if (!v35)
  {
    (*(v84 + 104))(v83, enum case for DIPError.Code.odnSemaphoreNotSet(_:), v85);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    v37 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v85 = 0;
LABEL_4:
    v38 = v87;
    defaultLogger()();
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136446210;
      aBlock[6] = v37;
      swift_errorRetain();
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      v43 = String.init<A>(reflecting:)();
      v45 = v31;
      v46 = sub_100141FE4(v43, v44, aBlock);

      *(v41 + 4) = v46;
      v31 = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "waitAndGetAssessmentInProcess: ignoring failed to generate assessment data. error %{public}s", v41, 0xCu);
      sub_10000BB78(v42);
    }

    v47 = v89;
    v48 = *(v88 + 8);
    v48(v38, v89);
    v49 = v86;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v48(v49, v47);
    sub_10051EB94(v37, 2, v93);
    v50 = *(v31 + 368);
    if (v50)
    {
      v51 = v50;
      OS_dispatch_semaphore.signal()();
    }

    else
    {
    }

    swift_beginAccess();
    v52 = v90;
    sub_10000BBC4(v31 + 216, v90, &qword_100834EB0, &qword_1006E78F0);
    v54 = *(v31 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId);
    v53 = *(v31 + OBJC_IVAR____TtC8coreidvd10DIPODNator_profileId + 8);
    v55 = *(v91 + 44);
    v56 = type metadata accessor for AssessmentAdditionalInfo(0);
    (*(*(v56 - 8) + 56))(v52 + v55, 1, 1, v56);
    v57 = v93[1];
    *(v52 + 88) = v93[0];
    *(v52 + 72) = 0u;
    *(v52 + 56) = 0u;
    *(v52 + 40) = 0u;
    *(v52 + 104) = v57;
    *(v52 + 120) = v94[0];
    *(v52 + 129) = *(v94 + 9);
    *(v52 + 152) = 0u;
    *(v52 + 168) = 0u;
    *(v52 + 184) = 0u;
    *(v52 + 200) = 0u;
    *(v52 + 216) = v54;
    *(v52 + 224) = v53;

    return sub_10001FE8C(v85);
  }

  v36 = v35;
  sub_100543F04(v36, v33, v34, 0);
  v77 = v36;
  v58 = v81;
  v59 = v82;
  v60 = v91;
  (*(v81 + 56))(v82, 1, 1, v91);
  v61 = *(v31 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_workQueue);
  v62 = swift_allocObject();
  *(v62 + 16) = v59;
  *(v62 + 24) = v31;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_10053B960;
  *(v63 + 24) = v62;
  aBlock[4] = sub_10026CBB8;
  aBlock[5] = v63;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_1008160D8;
  v64 = _Block_copy(aBlock);

  dispatch_sync(v61, v64);
  _Block_release(v64);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v67 = v80;
  sub_10000BBC4(v59, v80, &unk_10084A140, &unk_1006DB430);
  v68 = (*(v58 + 48))(v67, 1, v60);
  v69 = v83;
  v70 = v85;
  v71 = v84;
  if (v68 == 1)
  {
    sub_10000BE18(v67, &unk_10084A140, &unk_1006DB430);
    (*(v71 + 104))(v69, enum case for DIPError.Code.odnTimeout(_:), v70);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    v37 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v59, &unk_10084A140, &unk_1006DB430);
    v85 = sub_10053B960;
    goto LABEL_4;
  }

  v72 = v78;
  sub_100537B28(v67, v78, type metadata accessor for ODNAssessmentResult);
  v73 = v79;
  defaultLogger()();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "After waiting and have an assessment result", v76, 2u);
    v59 = v82;
  }

  (*(v88 + 8))(v73, v89);
  sub_100537B28(v72, v90, type metadata accessor for ODNAssessmentResult);
  sub_10000BE18(v59, &unk_10084A140, &unk_1006DB430);
}

uint64_t sub_1005329C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_10084A140, &unk_1006DB430);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;
  swift_beginAccess();
  sub_10000BBC4(a2 + v8, v7, &unk_10084A140, &unk_1006DB430);
  return sub_1000B2764(v7, a1, &unk_10084A140, &unk_1006DB430);
}

void sub_100532A94()
{
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult, &unk_10084A140, &unk_1006DB430);

  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_recomputeQueue);
}

uint64_t sub_100532AF4()
{
  sub_10052E12C();
  v1 = OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_assessmentResult;

  sub_10000BE18(v0 + v1, &unk_10084A140, &unk_1006DB430);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd27AssessDuringProofingODNator_recomputeQueue);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100532BCC()
{
  sub_10052E4CC(319, &unk_100846FE0, type metadata accessor for ODNAssessmentResult);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100532CB4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  return v6(a1, a2);
}

uint64_t sub_100532D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100007224(&qword_100836328, &unk_1006C51B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100532E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100007224(&qword_100836328, &unk_1006C51B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100532F0C()
{
  sub_100533030();
  if (v0 <= 0x3F)
  {
    sub_100133F18(319, &qword_100835140);
    if (v1 <= 0x3F)
    {
      sub_100133F18(319, &qword_1008352D0);
      if (v2 <= 0x3F)
      {
        sub_100133F18(319, &qword_1008352B8);
        if (v3 <= 0x3F)
        {
          sub_10052E4CC(319, &unk_100836398, type metadata accessor for AssessmentAdditionalInfo);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100533030()
{
  if (!qword_1008474E8)
  {
    sub_10000B870(&qword_100834EB8, &qword_1006C06F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008474E8);
    }
  }
}

unint64_t sub_100533098()
{
  result = qword_100847530;
  if (!qword_100847530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100847530);
  }

  return result;
}

void *sub_1005330EC(uint64_t a1)
{
  v2 = type metadata accessor for PersonNameComponents();
  v103 = *(v2 - 8);
  v104 = v2;
  v3 = *(v103 + 64);
  v4 = __chkstk_darwin(v2);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v98 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v101 = &v98 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v98 - v17;
  __chkstk_darwin(v16);
  v20 = &v98 - v19;
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Attempting to guess name components", v23, 2u);
  }

  v24 = *(v9 + 8);
  v24(v20, v8);
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v25 = sub_10003ADCC(0x6D614E7473726966, 0xE900000000000065);
  if ((v26 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001F2EC(*(a1 + 56) + 32 * v25, &v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v100 = v24;
  v27 = *(&v106[0] + 1);
  if (!*(a1 + 16) || (v28 = *&v106[0], v29 = sub_10003ADCC(0x656D614E7473616CLL, 0xE800000000000000), (v30 & 1) == 0) || (sub_10001F2EC(*(a1 + 56) + 32 * v29, &v107), (swift_dynamicCast() & 1) == 0))
  {

    v39 = &_swiftEmptyDictionarySingleton;
    v24 = v100;
    goto LABEL_17;
  }

  v31 = *(&v106[0] + 1);
  v99 = *&v106[0];
  *&v107 = v28;
  *(&v107 + 1) = v27;

  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);

  v33._countAndFlagsBits = v99;
  v33._object = v31;
  String.append(_:)(v33);

  v34 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  v35 = String._bridgeToObjectiveC()();

  v36 = [v34 personNameComponentsFromString:v35];

  if (!v36)
  {
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Could not get nameComponents out of name", v43, 2u);
    }

    v24 = v100;
    v100(v18, v8);
LABEL_16:
    v39 = &_swiftEmptyDictionarySingleton;
    goto LABEL_17;
  }

  static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = PersonNameComponents.namePrefix.getter();
  v39 = &_swiftEmptyDictionarySingleton;
  if (v38)
  {
    v108 = &type metadata for String;
    *&v107 = v37;
    *(&v107 + 1) = v38;
    sub_10001F348(&v107, v106);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = &_swiftEmptyDictionarySingleton;
    sub_10016CC40(v106, 0xD000000000000010, 0x800000010071E320, isUniquelyReferenced_nonNull_native);
    v39 = v105;
  }

  v24 = v100;
  v68 = PersonNameComponents.familyName.getter();
  if (v69)
  {
    v108 = &type metadata for String;
    *&v107 = v68;
    *(&v107 + 1) = v69;
    sub_10001F348(&v107, v106);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v39;
    sub_10016CC40(v106, 0xD000000000000010, 0x800000010071E300, v70);
    v39 = v105;
  }

  v71 = PersonNameComponents.givenName.getter();
  if (v72)
  {
    v108 = &type metadata for String;
    *&v107 = v71;
    *(&v107 + 1) = v72;
    sub_10001F348(&v107, v106);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v39;
    sub_10016CC40(v106, 0x6947646573726170, 0xEF656D614E6E6576, v73);
    v39 = v105;
  }

  v74 = PersonNameComponents.middleName.getter();
  if (v75)
  {
    v108 = &type metadata for String;
    *&v107 = v74;
    *(&v107 + 1) = v75;
    sub_10001F348(&v107, v106);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v39;
    sub_10016CC40(v106, 0xD000000000000010, 0x800000010071E2E0, v76);
    v39 = v105;
  }

  v77 = PersonNameComponents.nameSuffix.getter();
  if (v78)
  {
    v108 = &type metadata for String;
    *&v107 = v77;
    *(&v107 + 1) = v78;
    sub_10001F348(&v107, v106);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v39;
    sub_10016CC40(v106, 0xD000000000000010, 0x800000010071E2C0, v79);
    v39 = v105;
  }

  v80 = PersonNameComponents.nickname.getter();
  if (v81)
  {
    v108 = &type metadata for String;
    *&v107 = v80;
    *(&v107 + 1) = v81;
    sub_10001F348(&v107, v106);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v39;
    sub_10016CC40(v106, 0x694E646573726170, 0xEE00656D614E6B63, v82);
    (*(v103 + 8))(v7, v104);
    v39 = v105;
  }

  else
  {
    (*(v103 + 8))(v7, v104);
  }

LABEL_17:
  if (*(a1 + 16))
  {
    v44 = sub_10003ADCC(0xD000000000000012, 0x80000001006FA330);
    if (v45)
    {
      sub_10001F2EC(*(a1 + 56) + 32 * v44, &v107);
      if (swift_dynamicCast())
      {
        v100 = v24;
        v46 = *(&v106[0] + 1);
        if (*(a1 + 16) && (v47 = *&v106[0], v48 = sub_10003ADCC(0xD000000000000011, 0x80000001006FA350), (v49 & 1) != 0) && (sub_10001F2EC(*(a1 + 56) + 32 * v48, &v107), (swift_dynamicCast() & 1) != 0))
        {
          v50 = v106[0];
          *&v107 = v47;
          *(&v107 + 1) = v46;

          v51._countAndFlagsBits = 32;
          v51._object = 0xE100000000000000;
          String.append(_:)(v51);

          String.append(_:)(v50);

          v52 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
          v53 = String._bridgeToObjectiveC()();

          v54 = [v52 personNameComponentsFromString:v53];

          if (v54)
          {
            v55 = v102;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v56 = PersonNameComponents.namePrefix.getter();
            if (v57)
            {
              v108 = &type metadata for String;
              *&v107 = v56;
              *(&v107 + 1) = v57;
              sub_10001F348(&v107, v106);
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v39;
              sub_10016CC40(v106, 0xD000000000000018, 0x800000010071E2A0, v58);
              v39 = v105;
            }

            v24 = v100;
            v83 = PersonNameComponents.familyName.getter();
            if (v84)
            {
              v108 = &type metadata for String;
              *&v107 = v83;
              *(&v107 + 1) = v84;
              sub_10001F348(&v107, v106);
              v85 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v39;
              sub_10016CC40(v106, 0xD000000000000018, 0x800000010071E280, v85);
              v39 = v105;
            }

            v86 = PersonNameComponents.givenName.getter();
            if (v87)
            {
              v108 = &type metadata for String;
              *&v107 = v86;
              *(&v107 + 1) = v87;
              sub_10001F348(&v107, v106);
              v88 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v39;
              sub_10016CC40(v106, 0xD000000000000017, 0x800000010071E260, v88);
              v39 = v105;
            }

            v89 = PersonNameComponents.middleName.getter();
            if (v90)
            {
              v108 = &type metadata for String;
              *&v107 = v89;
              *(&v107 + 1) = v90;
              sub_10001F348(&v107, v106);
              v91 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v39;
              sub_10016CC40(v106, 0xD000000000000018, 0x800000010071E240, v91);
              v39 = v105;
            }

            v92 = PersonNameComponents.nameSuffix.getter();
            if (v93)
            {
              v108 = &type metadata for String;
              *&v107 = v92;
              *(&v107 + 1) = v93;
              sub_10001F348(&v107, v106);
              v94 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v39;
              sub_10016CC40(v106, 0xD000000000000018, 0x800000010071E220, v94);
              v39 = v105;
            }

            v95 = PersonNameComponents.nickname.getter();
            if (v96)
            {
              v108 = &type metadata for String;
              *&v107 = v95;
              *(&v107 + 1) = v96;
              sub_10001F348(&v107, v106);
              v97 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v39;
              sub_10016CC40(v106, 0xD000000000000016, 0x800000010071E200, v97);
              (*(v103 + 8))(v55, v104);
              v39 = v105;
            }

            else
            {
              (*(v103 + 8))(v55, v104);
            }
          }

          else
          {
            v64 = v101;
            defaultLogger()();
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&_mh_execute_header, v65, v66, "Could not get nameComponents out of doc name", v67, 2u);
            }

            v24 = v100;
            v100(v64, v8);
          }
        }

        else
        {

          v24 = v100;
        }
      }
    }
  }

  defaultLogger()();

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v24;
    v62 = swift_slowAlloc();
    *v62 = 134349056;
    *(v62 + 4) = *(v39 + 2);

    _os_log_impl(&_mh_execute_header, v59, v60, "Guessed %{public}ld name components", v62, 0xCu);

    v61(v13, v8);
  }

  else
  {

    v24(v13, v8);
  }

  return v39;
}

uint64_t sub_100533D54(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v131 = *(v2 - 8);
  v132 = v2;
  v3 = *(v131 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v119 - v8;
  v10 = __chkstk_darwin(v7);
  v120 = &v119 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v119 - v13;
  __chkstk_darwin(v12);
  v123 = &v119 - v15;
  v16 = type metadata accessor for CharacterSet();
  v17 = *(v16 - 8);
  v133 = v16;
  v134 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = a1;
  v21 = *a1;
  if (*(*a1 + 16) && (v22 = *a1, v23 = sub_10003ADCC(0x31746565727473, 0xE700000000000000), (v24 & 1) != 0))
  {
    sub_10001F2EC(*(v21 + 56) + 32 * v23, &v137);
    v25 = swift_dynamicCast();
    v26 = v135;
    if (!v25)
    {
      v26 = 0;
    }

    v130 = v26;
    if (v25)
    {
      v27 = v136;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v130 = 0;
    v27 = 0;
  }

  v28 = *(v21 + 16);
  v122 = v9;
  v121 = v6;
  if (v28 && (v29 = sub_10003ADCC(0x32746565727473, 0xE700000000000000), (v30 & 1) != 0))
  {
    sub_10001F2EC(*(v21 + 56) + 32 * v29, &v137);
    v31 = swift_dynamicCast();
    if (v31)
    {
      v32 = v135;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v136;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v34 = *(v21 + 16);
  v124 = v14;
  if (v34 && (v35 = sub_10003ADCC(2037672291, 0xE400000000000000), (v36 & 1) != 0))
  {
    sub_10001F2EC(*(v21 + 56) + 32 * v35, &v137);
    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = v135;
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = v136;
    }

    else
    {
      v39 = 0;
    }

    if (!*(v21 + 16))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v38 = 0;
    v39 = 0;
    if (!*(v21 + 16))
    {
      goto LABEL_38;
    }
  }

  v40 = sub_10003ADCC(0x6574617473, 0xE500000000000000);
  if (v41)
  {
    sub_10001F2EC(*(v21 + 56) + 32 * v40, &v137);
    v42 = swift_dynamicCast();
    if (v42)
    {
      v43 = v135;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v136;
    }

    else
    {
      v44 = 0;
    }

    v45 = *(v21 + 16);
    if (!v45)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_38:
  v43 = 0;
  v44 = 0;
  v45 = *(v21 + 16);
  if (!v45)
  {
LABEL_44:
    v49 = 0;
    goto LABEL_45;
  }

LABEL_39:
  v46 = sub_10003ADCC(0x6F436C6174736F70, 0xEA00000000006564);
  if ((v47 & 1) == 0)
  {
    v45 = 0;
    goto LABEL_44;
  }

  sub_10001F2EC(*(v21 + 56) + 32 * v46, &v137);
  v48 = swift_dynamicCast();
  v45 = v135;
  if (v48)
  {
    v49 = v136;
  }

  else
  {
    v45 = 0;
    v49 = 0;
  }

LABEL_45:
  v50 = sub_100534AEC(v130, v27, v32, v33, v38, v39, v43, v44, v45, v49);
  v52 = v51;

  v137 = v50;
  v138 = v52;
  static CharacterSet.whitespacesAndNewlines.getter();
  v129 = sub_10001F298();
  v53 = StringProtocol.trimmingCharacters(in:)();
  v55 = v54;
  v56 = *(v134 + 8);
  v134 += 8;
  v128 = v56;
  v56(v20, v133);

  if (*(v21 + 16))
  {
    v57 = sub_10003ADCC(0xD000000000000010, 0x800000010071E340);
    if (v58)
    {
      sub_10001F2EC(*(v21 + 56) + 32 * v57, &v137);
      v59 = swift_dynamicCast();
      v60 = v135;
      if (!v59)
      {
        v60 = 0;
      }

      v127 = v60;
      if (v59)
      {
        v61 = v136;
      }

      else
      {
        v61 = 0;
      }

      if (!*(v21 + 16))
      {
        goto LABEL_63;
      }
    }

    else
    {
      v127 = 0;
      v61 = 0;
      if (!*(v21 + 16))
      {
LABEL_63:
        v126 = 0;
        v66 = 0;
        goto LABEL_64;
      }
    }
  }

  else
  {
    v127 = 0;
    v61 = 0;
    if (!*(v21 + 16))
    {
      goto LABEL_63;
    }
  }

  v62 = sub_10003ADCC(0xD000000000000010, 0x800000010071E360);
  if ((v63 & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_10001F2EC(*(v21 + 56) + 32 * v62, &v137);
  v64 = swift_dynamicCast();
  v65 = v135;
  if (!v64)
  {
    v65 = 0;
  }

  v126 = v65;
  if (v64)
  {
    v66 = v136;
  }

  else
  {
    v66 = 0;
  }

LABEL_64:
  v67 = *(v21 + 16);
  v130 = v53;
  if (v67 && (v68 = sub_10003ADCC(0x746E656D75636F64, 0xED0000797469632ELL), (v69 & 1) != 0))
  {
    sub_10001F2EC(*(v21 + 56) + 32 * v68, &v137);
    v70 = swift_dynamicCast();
    if (v70)
    {
      v71 = v135;
    }

    else
    {
      v71 = 0;
    }

    if (v70)
    {
      v72 = v136;
    }

    else
    {
      v72 = 0;
    }

    if (!*(v21 + 16))
    {
      goto LABEL_84;
    }
  }

  else
  {
    v71 = 0;
    v72 = 0;
    if (!*(v21 + 16))
    {
      goto LABEL_84;
    }
  }

  v73 = sub_10003ADCC(0x746E656D75636F64, 0xEE0065746174732ELL);
  if (v74)
  {
    sub_10001F2EC(*(v21 + 56) + 32 * v73, &v137);
    v75 = swift_dynamicCast();
    if (v75)
    {
      v76 = v135;
    }

    else
    {
      v76 = 0;
    }

    if (v75)
    {
      v77 = v136;
    }

    else
    {
      v77 = 0;
    }

    v78 = *(v21 + 16);
    if (!v78)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

LABEL_84:
  v76 = 0;
  v77 = 0;
  v78 = *(v21 + 16);
  if (!v78)
  {
LABEL_90:
    v82 = 0;
    goto LABEL_91;
  }

LABEL_85:
  v79 = sub_10003ADCC(0xD000000000000013, 0x800000010071E380);
  if ((v80 & 1) == 0)
  {
    v78 = 0;
    goto LABEL_90;
  }

  sub_10001F2EC(*(v21 + 56) + 32 * v79, &v137);
  v81 = swift_dynamicCast();
  v78 = v135;
  if (v81)
  {
    v82 = v136;
  }

  else
  {
    v78 = 0;
    v82 = 0;
  }

LABEL_91:
  v83 = sub_100534AEC(v127, v61, v126, v66, v71, v72, v76, v77, v78, v82);
  v85 = v84;

  v137 = v83;
  v138 = v85;
  static CharacterSet.whitespacesAndNewlines.getter();
  v86 = StringProtocol.trimmingCharacters(in:)();
  v88 = v87;
  v128(v20, v133);

  v135 = &_swiftEmptySetSingleton;
  v89 = v130;
  if (String.count.getter() >= 1)
  {

    sub_100151120(&v137, v89, v55);
  }

  v90 = String.count.getter();
  v91 = v132;
  if (v90 >= 1)
  {

    sub_100151120(&v137, v86, v88);
  }

  if (v135[2])
  {
    sub_100534F28(v135);

    if (qword_100832C88 != -1)
    {
      v92 = swift_once();
    }

    __chkstk_darwin(v92);
    sub_100007224(&qword_1008475A0, &unk_1006E7998);
    OS_dispatch_queue.sync<A>(execute:)();

    if (v139)
    {
      v93 = v120;
      defaultLogger()();
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v94, v95))
      {
        goto LABEL_108;
      }

      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "no geo location available", v96, 2u);
    }

    else
    {
      v102 = Double.description.getter();
      v140 = &type metadata for String;
      v137 = v102;
      v138 = v103;
      sub_10014BD20(&v137, 0x4C73736572646461, 0xEA00000000007461);
      v104 = Double.description.getter();
      v140 = &type metadata for String;
      v137 = v104;
      v138 = v105;
      sub_10014BD20(&v137, 0x4C73736572646461, 0xEA00000000006E6FLL);
      defaultLogger()();
      v94 = Logger.logObject.getter();
      v106 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v94, v106))
      {
        v93 = v124;
LABEL_108:

        v108 = *(v131 + 8);
        v109 = v108(v93, v91);
        __chkstk_darwin(v109);
        OS_dispatch_queue.sync<A>(execute:)();

        if (v139)
        {
          v110 = v121;
          defaultLogger()();
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            *v113 = 0;
            v114 = "no document geo location available";
LABEL_113:
            _os_log_impl(&_mh_execute_header, v111, v112, v114, v113, 2u);
          }
        }

        else
        {
          v115 = Double.description.getter();
          v140 = &type metadata for String;
          v137 = v115;
          v138 = v116;
          sub_10014BD20(&v137, 0xD000000000000013, 0x800000010071E3A0);
          v117 = Double.description.getter();
          v140 = &type metadata for String;
          v137 = v117;
          v138 = v118;
          sub_10014BD20(&v137, 0xD000000000000013, 0x800000010071E3C0);
          v110 = v122;
          defaultLogger()();
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            *v113 = 0;
            v114 = "got document geo location";
            goto LABEL_113;
          }
        }

        return v108(v110, v91);
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v94, v106, "got geo location", v107, 2u);
      v93 = v124;
    }

    goto LABEL_108;
  }

  v97 = v123;
  defaultLogger()();
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "No Address bindings provided for geo location", v100, 2u);
  }

  return (*(v131 + 8))(v97, v91);
}

uint64_t sub_100534AEC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v48 = a7;
  v17 = type metadata accessor for CharacterSet();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v51 = 0xE000000000000000;
  if (a2)
  {
    v46 = a3;
    v47 = a5;
    v49._countAndFlagsBits = a1;
    v49._object = a2;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v22 = StringProtocol.trimmingCharacters(in:)();
    v24 = v23;
    (*(v18 + 8))(v21, v17);

    if (String.count.getter() >= 1)
    {
      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);
    }

    a3 = v46;
    a5 = v47;
  }

  v26 = v17;
  v27 = a8;
  if (a4)
  {
    v49._countAndFlagsBits = a3;
    v49._object = a4;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v28 = StringProtocol.trimmingCharacters(in:)();
    v30 = v29;
    (*(v18 + 8))(v21, v26);

    if (String.count.getter() >= 1)
    {
      v49._countAndFlagsBits = 32;
      v49._object = 0xE100000000000000;
      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      String.append(_:)(v49);
    }
  }

  if (a6)
  {
    v49._countAndFlagsBits = a5;
    v49._object = a6;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v32 = StringProtocol.trimmingCharacters(in:)();
    v34 = v33;
    (*(v18 + 8))(v21, v26);

    if (String.count.getter() >= 1)
    {
      v49._countAndFlagsBits = 8236;
      v49._object = 0xE200000000000000;
      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      String.append(_:)(v49);
    }
  }

  if (v27)
  {
    v49._countAndFlagsBits = v48;
    v49._object = v27;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v36 = StringProtocol.trimmingCharacters(in:)();
    v38 = v37;
    (*(v18 + 8))(v21, v26);

    if (String.count.getter() >= 1)
    {
      v49._countAndFlagsBits = 8236;
      v49._object = 0xE200000000000000;
      v39._countAndFlagsBits = v36;
      v39._object = v38;
      String.append(_:)(v39);

      String.append(_:)(v49);
    }
  }

  if (a10)
  {
    v49._countAndFlagsBits = a9;
    v49._object = a10;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F298();
    v40 = StringProtocol.trimmingCharacters(in:)();
    v42 = v41;
    (*(v18 + 8))(v21, v26);

    if (String.count.getter() >= 1)
    {
      v49._countAndFlagsBits = 32;
      v49._object = 0xE100000000000000;
      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      String.append(_:)(v49);
    }
  }

  return v50;
}

void sub_100534F28(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  __chkstk_darwin(v2);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v40 - v9;
  v10 = dispatch_group_create();
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v48 = v53;
  v49 = v10;
  v51 = a1;

  v16 = 0;
  v17 = 0;
  if (v14)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      while (1)
      {
        v19 = (*(v51 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v14)))));
        v21 = *v19;
        v20 = v19[1];
        v22 = qword_100832C88;

        if (v22 != -1)
        {
          v23 = swift_once();
        }

        v14 &= v14 - 1;
        __chkstk_darwin(v23);
        *(&v40 - 2) = v21;
        *(&v40 - 1) = v20;
        sub_100007224(&qword_1008475A0, &unk_1006E7998);
        OS_dispatch_queue.sync<A>(execute:)();
        if (v53[0])
        {
          v24 = v49;
          dispatch_group_enter(v49);
          v25 = [objc_allocWithZone(DIGeocoder) init];
          v50 = v17;
          v26 = v25;
          v27 = String._bridgeToObjectiveC()();
          v28 = swift_allocObject();
          v28[2] = v24;
          v28[3] = v21;
          v28[4] = v20;
          v53[2] = sub_10053BA48;
          v53[3] = v28;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v53[0] = sub_10001335C;
          v53[1] = &unk_100816178;
          v29 = _Block_copy(aBlock);

          v30 = v24;

          [v26 geocodeAddressString:v27 completionHandler:v29];

          _Block_release(v29);

          v17 = v50;
          v16 = v18;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v16 = v18;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v18 = v16;
      }
    }
  }

  v31 = v44;
  static DispatchTime.now()();
  v32 = v45;
  + infix(_:_:)();
  v33 = v47;
  v34 = *(v46 + 8);
  v34(v31, v47);
  v35 = v49;
  OS_dispatch_group.wait(timeout:)();
  v34(v32, v33);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
  }

  else
  {
    v36 = v41;
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "geocodeAddressString callback not invoked in the specified timeout", v39, 2u);
    }

    else
    {
    }

    (*(v42 + 8))(v36, v43);
  }
}

void sub_100535430(void *a1, uint64_t a2, NSObject *a3, NSObject *a4, NSObject *a5)
{
  v23 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100832C88 != -1)
  {
    v12 = swift_once();
  }

  v15 = qword_100846B98;
  __chkstk_darwin(v12);
  *(&v23 - 2) = a4;
  *(&v23 - 1) = a5;
  sub_100007224(&qword_1008475A0, &unk_1006E7998);
  OS_dispatch_queue.sync<A>(execute:)();
  if ((v26 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    aBlock = 0;
    v25 = 0xE000000000000000;
    swift_errorRetain();
    _StringGuts.grow(_:)(39);

    aBlock = 0xD000000000000025;
    v25 = 0x800000010071E430;
    v16._countAndFlagsBits = a4;
    v16._object = a5;
    String.append(_:)(v16);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v10 + 8))(v14, v9);
LABEL_6:
    dispatch_group_leave(v23);
    return;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a1;
  v18 = swift_allocObject();
  v19 = sub_10053BA94;
  *(v18 + 16) = sub_10053BA94;
  *(v18 + 24) = v17;
  v28 = sub_10026CBB8;
  v29 = v18;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10057E264;
  v27 = &unk_1008161F0;
  v20 = _Block_copy(&aBlock);
  v21 = a1;

  dispatch_sync(v15, v20);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v19 = 0;
  }

  dispatch_group_leave(v23);
  sub_10001FE8C(v19);
}

uint64_t sub_100535794(uint64_t a1, uint64_t a2, id a3)
{
  if (qword_100832C90 != -1)
  {
    swift_once();
  }

  [a3 coordinate];
  v7 = v6;
  v9 = v8;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = off_100846BA0;
  off_100846BA0 = 0x8000000000000000;
  sub_10016E238(a1, a2, isUniquelyReferenced_nonNull_native, v7, v9);
  off_100846BA0 = v12;
  return swift_endAccess();
}

uint64_t sub_10053587C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_100832C90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_100846BA0;
  v7 = 0uLL;
  if (*(off_100846BA0 + 2))
  {
    v8 = sub_10003ADCC(a1, a2);
    if (v9)
    {
      v10 = 0;
      v7 = *(v6[7] + 16 * v8);
    }

    else
    {
      v10 = 1;
      v7 = 0uLL;
    }
  }

  else
  {
    v10 = 1;
  }

  *a3 = v7;
  *(a3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_100535960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10001F2EC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1005359AC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10001F2EC(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_10001F348(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_10000BE18(v22, &qword_100847598, &unk_1006E7988);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100535B0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1005359AC(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_10001F348(v46, v44);
  v14 = *a5;
  result = sub_10003ADCC(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_100166280(v20, a4 & 1);
    v22 = *a5;
    result = sub_10003ADCC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_10016F6B4();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    sub_10000BB78(v26);
    sub_10001F348(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_10001F348(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_1005359AC(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_10001F348(v46, v44);
        v33 = *a5;
        result = sub_10003ADCC(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_100166280(v37, 1);
          v38 = *a5;
          result = sub_10003ADCC(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          sub_10000BB78(v32);
          sub_10001F348(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_10001F348(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1005359AC(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_10001FA6C();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100535E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_1005359AC(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_10001F348(v49, v47);
  v14 = *a5;
  result = sub_10003ADCC(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_100166280(v20, a4 & 1);
    v22 = *a5;
    result = sub_10003ADCC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_10016F6B4();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_10001F2EC(*(*a5 + 56) + 32 * result, v46);
    sub_10000BB78(v47);

    v26 = *(v24 + 56);
    sub_10000BB78((v26 + v25));
    sub_10001F348(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_10001F348(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_1005359AC(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_10001F348(v49, v47);
        v35 = *a5;
        result = sub_10003ADCC(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_100166280(v39, 1);
          v40 = *a5;
          result = sub_10003ADCC(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_10001F2EC(*(*a5 + 56) + 32 * result, v46);
          sub_10000BB78(v47);

          v34 = *(v32 + 56);
          sub_10000BB78((v34 + v33));
          sub_10001F348(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_10001F348(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_1005359AC(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_10001FA6C();
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_100536158(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v4 = sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for PDF417ParsedData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Logger();
  v13 = *(v50 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v50);
  v45 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - v18;
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Preparing bindings dict from PDF417ParsedData", v24, 2u);
  }

  v25 = *(v13 + 8);
  v26 = v50;
  v25(v21, v50);
  v55[0] = &_swiftEmptyDictionarySingleton;
  sub_10000BBC4(v46, v7, &qword_10083D6A0, &unk_1006DB700);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000BE18(v7, &qword_10083D6A0, &unk_1006DB700);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v27 = PDF417ParsedData.getBindings()();
    v28 = sub_10054C734(v27);

    v29 = v55[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v53 = v29;
    sub_100535B0C(v28, sub_100535960, 0, isUniquelyReferenced_nonNull_native, &v53);

    v55[0] = v53;
    v31 = defaultLogger()();
    __chkstk_darwin(v31);
    *(&v45 - 2) = v55;
    Logger.sensitive(_:)();
    v25(v19, v26);
    (*(v9 + 8))(v12, v8);
  }

  v32 = v49;
  sub_10051F0D0(v55, v47, v48);
  if (!v32)
  {
    goto LABEL_12;
  }

  v33 = *(v32 + 16);

  OS_dispatch_group.wait()();
  v34 = *(v32 + 112);
  if (!v34 || v34[2] != 2)
  {

LABEL_12:
    v39 = v45;
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "No GPS location available for bindings", v42, 2u);
    }

    v25(v39, v50);
    goto LABEL_15;
  }

  v54 = &type metadata for Double;
  *&v53 = v34[4];
  sub_10001F348(&v53, v52);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v55[0];
  result = sub_10016CC40(v52, 0xD000000000000018, 0x800000010071E160, v35);
  v54 = &type metadata for Double;
  v55[0] = v51;
  if (v34[2] >= 2uLL)
  {
    v37 = v34[5];

    *&v53 = v37;
    sub_10001F348(&v53, v52);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v55[0];
    sub_10016CC40(v52, 0xD000000000000019, 0x800000010071E180, v38);

    v55[0] = v51;
LABEL_15:
    v43._countAndFlagsBits = 0x6133333630313834;
    v44._countAndFlagsBits = 0xD00000000000001ELL;
    v44._object = 0x800000010071E140;
    v43._object = 0xE800000000000000;
    logMilestone(tag:description:)(v43, v44);
    return v55[0];
  }

  __break(1u);
  return result;
}

uint64_t sub_100536710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v48 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v49 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Logger();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v52);
  v45 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = v43 - v15;
  v17 = type metadata accessor for String.Encoding();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (static String.Encoding.utf8.getter(), v22 = String.data(using:allowLossyConversion:)(), v24 = v23, (*(v18 + 8))(v21, v17), v24 >> 60 != 15))
  {
    v43[1] = a1;
    v29 = type metadata accessor for JSONDecoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10053C938();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v32 = v22;

    v33 = v54;
    v43[0] = v53;
    v34 = v55;
    v35 = v56;
    v44 = v57;
    v36 = type metadata accessor for JSONEncoder();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v53 = v43[0];
    v54 = v33;
    v55 = v34;
    v56 = v35;
    v57 = 2;
    sub_10053B82C();
    v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v42 = v41;

    v53 = v40;
    v54 = v42;
    static String.Encoding.utf8.getter();
    sub_10053B880();
    String.init<A>(bytes:encoding:)();
    sub_10000BD94(v32, v24);
    sub_10000B90C(v40, v42);
    v28 = v44;
  }

  else
  {
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "no duaDataAug, using defaults", v27, 2u);
    }

    (*(v10 + 8))(v16, v52);

    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_100536E08(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (*(a1 + 24) >> 60 == 15)
  {
    return 0;
  }

  v10 = *(a1 + 56);
  v30 = *a1;
  if (*(&v30 + 1) >> 60 == 15)
  {
    return 0;
  }

  sub_10000BBC4(a1, &v26, &qword_100847578, &qword_1006E7968);
  sub_10000BBC4(&v30, &v26, &qword_100847580, &qword_1006E7970);
  v11 = Data.base64EncodedString(options:)(0);
  sub_10000BE18(&v30, &qword_100847580, &qword_1006E7970);
  if (qword_100832C80 != -1)
  {
    swift_once();
  }

  if (!byte_100882380)
  {
    v10 = -1.0;
  }

  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BF520;
  *(v12 + 56) = &type metadata for Double;
  *(v12 + 64) = &protocol witness table for Double;
  *(v12 + 32) = v10;
  v13 = String.init(format:_:)();
  v15 = v14;
  v16 = type metadata accessor for JSONEncoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v26._countAndFlagsBits = 0;
  v19 = sub_1006594FC(v13, v15);

  v20 = *&v26._countAndFlagsBits;
  if (!v19)
  {
    v20 = -1.0;
  }

  v26 = v11;
  v27 = v20;
  v28 = a2 & 1;
  v29 = a3;
  sub_10053B82C();
  v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v23 = v22;

  v26._countAndFlagsBits = v21;
  v26._object = v23;
  static String.Encoding.utf8.getter();
  sub_10053B880();
  v24 = String.init<A>(bytes:encoding:)();
  sub_10000BE18(a1, &qword_100847578, &qword_1006E7968);
  sub_10000B90C(v21, v23);
  return v24;
}

uint64_t sub_1005371D8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v5 = type metadata accessor for Logger();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  __chkstk_darwin(v5);
  v100 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPPregeneratedAssessment(0);
  v14 = (a1 + v13[9]);
  v15 = *v14;
  v16 = v14[1];
  v17 = Data.init(base64Encoded:options:)();
  v117 = v8;
  if (v18 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v19 = v17;
  v20 = v18;
  v21 = (a1 + v13[11]);
  v22 = *v21;
  v23 = v21[1];
  v24 = Data.init(base64Encoded:options:)();
  if (v25 >> 60 == 15)
  {
    sub_10000BD94(v19, v20);
LABEL_4:
    (*(v9 + 104))(v12, enum case for DIPError.Code.base64DecodingFailed(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v26 = v12;
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v27 = v117;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_8:
    (*(v9 + 104))(v26, enum case for DIPError.Code.internalError(_:), v27);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v97 = a3;
  v98 = v24;
  v99 = v25;
  v28 = type metadata accessor for JSONDecoder();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = JSONDecoder.init()();
  sub_10009EF3C();
  v32 = v104;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v32)
  {

    sub_10000BD94(v98, v99);
    sub_10000BD94(v19, v20);
    v26 = v12;
    v27 = v117;
    goto LABEL_8;
  }

  v96 = v20;
  v104 = v19;
  v116[0] = v105;
  v116[1] = v106;
  v116[2] = v107;
  v116[3] = v108;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v115[0] = v105;
  v115[1] = v106;
  v115[2] = v107;
  v115[3] = v108;
  sub_10004A858(v116, v109);
  v83 = v109[1];
  v84 = v109[0];
  v81 = v109[3];
  v82 = v109[2];
  v80 = v109[4];
  v94 = v109[6];
  v95 = v109[5];
  v92 = v109[8];
  v93 = v109[7];
  v90 = v109[10];
  v91 = v109[9];
  v88 = v109[12];
  v89 = v109[11];
  v86 = v109[14];
  v87 = v109[13];
  v85 = v110;
  v34 = v111;
  sub_10004D770(v116);
  sub_10004A858(v115, v112);
  v78 = v34;
  v79 = v31;
  v63 = v112[0];
  v76 = v112[2];
  v77 = v112[1];
  v74 = v112[4];
  v75 = v112[3];
  v72 = v112[6];
  v73 = v112[5];
  v70 = v112[8];
  v71 = v112[7];
  v68 = v112[10];
  v69 = v112[9];
  v66 = v112[12];
  v67 = v112[11];
  v64 = v112[14];
  v65 = v112[13];
  v35 = v113;
  v103 = v114;
  sub_10004D770(v115);
  v36 = (a1 + v13[8]);
  v37 = v117;
  v38 = v96;
  if (v110 != *v36 || (v39 = v103, v40 = v35, v111 != v36[1]))
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_19:
      sub_10004D8EC(v109);
      sub_10004D8EC(v112);
      v103 = "getGUIDs(from:guidFactory:)";
      (*(v9 + 104))(v12, enum case for DIPError.Code.guidSeedMismatch(_:), v37);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10053B9C0(&qword_100834130, &type metadata accessor for DIPError);
      v26 = v12;
      swift_allocError();
      v27 = v117;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000BD94(v98, v99);
      sub_10000BD94(v104, v38);
      goto LABEL_8;
    }

    v40 = v113;
    v39 = v114;
  }

  v41 = (a1 + v13[10]);
  if ((v40 != *v41 || v39 != v41[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_19;
  }

  v42 = v100;
  defaultLogger()();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "using guids from pre-generated assessment", v45, 2u);
  }

  sub_10000BD94(v104, v38);

  sub_10000BD94(v98, v99);

  result = (*(v101 + 8))(v42, v102);
  v46 = v97;
  v47 = v82;
  *(v97 + 8) = v83;
  *(v46 + 16) = v47;
  v48 = v80;
  *(v46 + 24) = v81;
  *(v46 + 32) = v48;
  *v46 = v84 & 1;
  v49 = v94;
  *(v46 + 40) = v95;
  *(v46 + 48) = v49;
  v50 = v92;
  *(v46 + 56) = v93;
  *(v46 + 64) = v50;
  v51 = v90;
  *(v46 + 72) = v91;
  *(v46 + 80) = v51;
  v52 = v88;
  *(v46 + 88) = v89;
  *(v46 + 96) = v52;
  v53 = v86;
  *(v46 + 104) = v87;
  *(v46 + 112) = v53;
  v54 = v78;
  *(v46 + 120) = v85;
  *(v46 + 128) = v54;
  *(v46 + 136) = v63 & 1;
  v55 = v76;
  *(v46 + 144) = v77;
  *(v46 + 152) = v55;
  v56 = v74;
  *(v46 + 160) = v75;
  *(v46 + 168) = v56;
  v57 = v72;
  *(v46 + 176) = v73;
  *(v46 + 184) = v57;
  v58 = v70;
  *(v46 + 192) = v71;
  *(v46 + 200) = v58;
  v59 = v68;
  *(v46 + 208) = v69;
  *(v46 + 216) = v59;
  v60 = v66;
  *(v46 + 224) = v67;
  *(v46 + 232) = v60;
  v61 = v64;
  *(v46 + 240) = v65;
  *(v46 + 248) = v61;
  v62 = v103;
  *(v46 + 256) = v35;
  *(v46 + 264) = v62;
  return result;
}

uint64_t sub_100537B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100537B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100537BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 397) = a7;
  *(v7 + 1952) = a6;
  *(v7 + 1944) = a5;
  *(v7 + 1936) = a4;
  *(v7 + 1928) = a3;
  *(v7 + 1920) = a2;
  *(v7 + 1912) = a1;
  v8 = type metadata accessor for DIPError.Code();
  *(v7 + 1960) = v8;
  v9 = *(v8 - 8);
  *(v7 + 1968) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 1976) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v7 + 1984) = v11;
  v12 = *(v11 - 8);
  *(v7 + 1992) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 2000) = swift_task_alloc();
  *(v7 + 2008) = swift_task_alloc();
  v14 = type metadata accessor for DispatchWorkItemFlags();
  *(v7 + 2016) = v14;
  v15 = *(v14 - 8);
  *(v7 + 2024) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 2032) = swift_task_alloc();
  *(v7 + 2040) = swift_task_alloc();
  v17 = type metadata accessor for DIPPregeneratedAssessment(0);
  *(v7 + 2048) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v7 + 2056) = swift_task_alloc();
  v19 = sub_100007224(&qword_1008352C8, &qword_1006C0D50);
  *(v7 + 2064) = v19;
  v20 = *(v19 - 8);
  *(v7 + 2072) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 2080) = swift_task_alloc();
  v22 = *(*(sub_100007224(&qword_100847540, &qword_1006E7938) - 8) + 64) + 15;
  *(v7 + 2088) = swift_task_alloc();
  *(v7 + 2096) = swift_task_alloc();
  v23 = type metadata accessor for String.Encoding();
  *(v7 + 2104) = v23;
  v24 = *(v23 - 8);
  *(v7 + 2112) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 2120) = swift_task_alloc();
  v26 = *(*(sub_100007224(&qword_100835248, &unk_1006E7940) - 8) + 64) + 15;
  *(v7 + 2128) = swift_task_alloc();
  *(v7 + 2136) = swift_task_alloc();
  *(v7 + 2144) = swift_task_alloc();
  *(v7 + 2152) = swift_task_alloc();
  v27 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  *(v7 + 2160) = v27;
  v28 = *(v27 - 8);
  *(v7 + 2168) = v28;
  v29 = *(v28 + 64) + 15;
  *(v7 + 2176) = swift_task_alloc();
  *(v7 + 2184) = swift_task_alloc();
  *(v7 + 2192) = swift_task_alloc();
  v30 = type metadata accessor for UUID();
  *(v7 + 2200) = v30;
  v31 = *(v30 - 8);
  *(v7 + 2208) = v31;
  v32 = *(v31 + 64) + 15;
  *(v7 + 2216) = swift_task_alloc();
  v33 = *(*(sub_100007224(&qword_1008350C0, &unk_1006C0B30) - 8) + 64) + 15;
  *(v7 + 2224) = swift_task_alloc();
  *(v7 + 2232) = swift_task_alloc();
  v34 = type metadata accessor for AugmentedProfile(0);
  *(v7 + 2240) = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  *(v7 + 2248) = swift_task_alloc();
  v36 = type metadata accessor for Logger();
  *(v7 + 2256) = v36;
  v37 = *(v36 - 8);
  *(v7 + 2264) = v37;
  v38 = *(v37 + 64) + 15;
  *(v7 + 2272) = swift_task_alloc();
  *(v7 + 2280) = swift_task_alloc();
  *(v7 + 2288) = swift_task_alloc();

  return _swift_task_switch(sub_1005380F0, 0, 0);
}