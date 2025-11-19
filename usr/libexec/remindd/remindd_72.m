Swift::Int sub_100674690()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100674728()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1006747AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100674840@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10068C278(*a1);
  *a2 = result;
  return result;
}

void sub_100674870(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001CLL;
  v3 = "sectionIDsToUndelete";
  v4 = 0xD00000000000001FLL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001CLL;
    v3 = "remindersICSDisplayOrderChanged";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "lastUserAccessDate";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_1006748C8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10068C278(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1006748F0()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

void *sub_100674954()
{
  result = sub_100674974();
  qword_1009752A0 = result;
  return result;
}

void *sub_100674974()
{
  v0 = 0;
  while (1)
  {
    v4 = *(&off_1008E21E0 + v0++ + 32);
    if (((1 << v4) & 0x31FFFDFFFFFLL) == 0)
    {
      goto LABEL_3;
    }

    v5 = sub_100672E54(v4);
    v7 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_100005F4C(v5, v7);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (_swiftEmptyDictionarySingleton[3] >= v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = v9;
        sub_100373664();
        v9 = v21;
        if ((v15 & 1) == 0)
        {
LABEL_11:
          _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
          v17 = (_swiftEmptyDictionarySingleton[6] + 16 * v9);
          *v17 = v5;
          v17[1] = v7;
          v18 = (_swiftEmptyDictionarySingleton[7] + 16 * v9);
          *v18 = v5;
          v18[1] = v7;
          v19 = _swiftEmptyDictionarySingleton[2];
          v13 = __OFADD__(v19, 1);
          v20 = v19 + 1;
          if (v13)
          {
            goto LABEL_62;
          }

          _swiftEmptyDictionarySingleton[2] = v20;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_10036A8F0(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_100005F4C(v5, v7);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_63;
      }
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_2:
    v1 = v9;

    v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
    v3 = v2[1];
    *v2 = v5;
    v2[1] = v7;

LABEL_3:
    if (v0 == 42)
    {
      v22 = 0;
      while (1)
      {
        v26 = &off_1008E2230 + v22++;
        v27 = v26[32];
        if (v27 == 5)
        {
          v28 = 0xD000000000000015;
        }

        else
        {
          v28 = 0xD000000000000014;
        }

        v29 = 0x80000001007E9FD0;
        if (v27 == 5)
        {
          v29 = 0x80000001007E9FB0;
        }

        v30 = 0x6341746E65726170;
        if (v27 != 3)
        {
          v30 = 0x694C746E65726170;
        }

        v31 = 0xEF4449746E756F63;
        if (v27 != 3)
        {
          v31 = 0xEC00000044497473;
        }

        v32 = 0xED0000746E756F63;
        if (v27 != 3)
        {
          v32 = 0xEA00000000007473;
        }

        if (v27 > 4)
        {
          v33 = v29;
        }

        else
        {
          v28 = v30;
          v33 = v31;
        }

        if (v27 <= 4)
        {
          v29 = v32;
        }

        v34 = 0xD000000000000016;
        if (v27 == 1)
        {
          v35 = 0x80000001007E9F50;
        }

        else
        {
          v34 = 0xD00000000000001BLL;
          v35 = 0x80000001007E9F70;
        }

        if (!v27)
        {
          v34 = 0x49746E756F636361;
          v35 = 0xE900000000000044;
        }

        if (v27 <= 2)
        {
          v36 = v34;
        }

        else
        {
          v36 = v28;
        }

        if (v27 <= 2)
        {
          v37 = v35;
        }

        else
        {
          v37 = v33;
        }

        if (v27 <= 2)
        {
          v38 = v35;
        }

        else
        {
          v38 = v29;
        }

        v39 = swift_isUniquelyReferenced_nonNull_native();
        v40 = sub_100005F4C(v36, v37);
        v42 = _swiftEmptyDictionarySingleton[2];
        v43 = (v41 & 1) == 0;
        v13 = __OFADD__(v42, v43);
        v44 = v42 + v43;
        if (v13)
        {
          __break(1u);
          goto LABEL_60;
        }

        v45 = v41;
        if (_swiftEmptyDictionarySingleton[3] >= v44)
        {
          if (v39)
          {
            goto LABEL_52;
          }

          v51 = v40;
          sub_100373664();
          v40 = v51;
          if ((v45 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_16:
          v23 = v40;

          v24 = (_swiftEmptyDictionarySingleton[7] + 16 * v23);
          v25 = v24[1];
          *v24 = v36;
          v24[1] = v38;

          if (v22 == 7)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          sub_10036A8F0(v44, v39);
          v40 = sub_100005F4C(v36, v37);
          if ((v45 & 1) != (v46 & 1))
          {
            goto LABEL_63;
          }

LABEL_52:
          if (v45)
          {
            goto LABEL_16;
          }

LABEL_53:
          _swiftEmptyDictionarySingleton[(v40 >> 6) + 8] |= 1 << v40;
          v47 = (_swiftEmptyDictionarySingleton[6] + 16 * v40);
          *v47 = v36;
          v47[1] = v37;
          v48 = (_swiftEmptyDictionarySingleton[7] + 16 * v40);
          *v48 = v36;
          v48[1] = v38;
          v49 = _swiftEmptyDictionarySingleton[2];
          v13 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v13)
          {
            goto LABEL_61;
          }

          _swiftEmptyDictionarySingleton[2] = v50;
          if (v22 == 7)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }
      }
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100674D80(NSObject *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v457 = a4;
  v8 = *v4;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v431 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v449 = &v431 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v450 = &v431 - v18;
  v19 = type metadata accessor for UUID();
  v455 = *(v19 - 8);
  v456 = v19;
  v20 = *(v455 + 64);
  __chkstk_darwin(v19);
  v451 = &v431 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = __chkstk_darwin(v22).n128_u64[0];
  v454 = &v431 - v24;
  v25 = a2;
  v26 = [a2 createResolutionTokenMapIfNecessary];
  v27 = [a1 resolutionTokenMap];
  if (!v27)
  {
    if (qword_1009366B0 != -1)
    {
      swift_once();
    }

    v285 = type metadata accessor for Logger();
    sub_100006654(v285, qword_10094EE30);
    v286 = a1;

    v287 = Logger.logObject.getter();
    v288 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v291 = swift_slowAlloc();
      *&v469[0] = v291;
      *v289 = 138543618;
      v292 = [v286 objectID];
      *(v289 + 4) = v292;
      v464 = v290;
      *v290 = v292;
      *(v289 + 6) = 2082;
      v293 = *(a3 + 16);
      if (v293)
      {
        v460 = v291;
        LODWORD(v461) = v288;
        v462 = v289;
        v463 = v287;
        v458 = v26;
        *&v467 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v293, 0);
        v294 = v467;
        v295 = (a3 + 32);
        v296 = *(v467 + 16);
        v297 = 16 * v296;
        do
        {
          v298 = *v295++;
          v299 = sub_100672E54(v298);
          v301 = v300;
          *&v467 = v294;
          v302 = *(v294 + 24);
          if (v296 >= v302 >> 1)
          {
            sub_100026EF4((v302 > 1), v296 + 1, 1);
            v294 = v467;
          }

          *(v294 + 16) = v296 + 1;
          v303 = v294 + v297;
          *(v303 + 32) = v299;
          *(v303 + 40) = v301;
          v297 += 16;
          ++v296;
          --v293;
        }

        while (v293);
        v26 = v458;
        v289 = v462;
        v287 = v463;
        LOBYTE(v288) = v461;
        v291 = v460;
      }

      v315 = Array.description.getter();
      v317 = v316;

      v318 = sub_10000668C(v315, v317, v469);

      *(v289 + 14) = v318;
      _os_log_impl(&_mh_execute_header, v287, v288, "REMListStorageCDIngestor: merge(storage:into cdList:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v289, 0x16u);
      sub_1000050A4(v464, &unk_100938E70, &unk_100797230);

      sub_10000607C(v291);
    }

    v319 = objc_opt_self();
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v321 = String._bridgeToObjectiveC()();
    [v319 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v321];

    swift_willThrow();
    return;
  }

  v447 = v13;
  v443 = v12;
  v439 = v8;
  v452 = v27;
  v28 = sub_100695FE0(v27, a3);
  v29 = *(a3 + 16);
  v461 = v28;
  v463 = a1;
  if (!v29)
  {
    v442 = 0;
    v453 = 0;
    v448 = 0;
    v32 = v26;
    p_isa = v25;
    goto LABEL_318;
  }

  v30 = 0;
  v446 = 0;
  v448 = 0;
  v453 = 0;
  v442 = 0;
  v31 = (a3 + 32);
  v437 = (v14 + 56);
  v432 = (v14 + 8);
  v445 = 0x80000001007E8E90;
  v444 = 0x80000001007E8F40;
  v440 = 0x80000001007E8F20;
  v441 = (v455 + 8);
  v438 = "lastUserAccessDate";
  v455 = 0x80000001007E8C60;
  v436 = a3 + 33;
  v32 = v26;
  p_isa = v25;
  v459 = v25;
  v460 = (a3 + 32);
  v464 = v29;
  v458 = v32;
  while (2)
  {
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      v429 = a3;
      sub_100031A14(a1, v14);
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100031A14(v435, v434);

      return;
    }

    switch(v30[v31])
    {
      case 1:
LABEL_123:
        v14 = [a1 externalIdentifier];
        [p_isa setExternalIdentifier:v14];
        goto LABEL_214;
      case 2:
LABEL_151:
        v14 = [a1 externalModificationTag];
        [p_isa setExternalModificationTag:v14];
        goto LABEL_214;
      case 3:
LABEL_153:
        v14 = [a1 daSyncToken];
        [p_isa setDaSyncToken:v14];
        goto LABEL_214;
      case 4:
LABEL_171:
        v14 = [a1 daPushKey];
        [p_isa setDaPushKey:v14];
        goto LABEL_214;
      case 5:
LABEL_179:
        v14 = [a1 daExternalIdentificationTag];
        [p_isa setDaExternalIdentificationTag:v14];
        goto LABEL_214;
      case 6:
LABEL_125:
        v152 = [a1 daBulkRequests];
        if (v152)
        {
          v153 = v152;
          a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v154 = objc_opt_self();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          *&v469[0] = 0;
          v156 = [v154 dataWithPropertyList:isa format:100 options:0 error:v469];

          v157 = *&v469[0];
          if (v156)
          {
            v158 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v160 = v159;

            v14 = Data._bridgeToObjectiveC()().super.isa;
            p_isa = v459;
            [v459 setDaBulkRequests:v14];

            sub_10001BBA0(v158, v160);
            a1 = v463;
          }

          else
          {
            v14 = v157;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            v462 = 0;
            a1 = v463;
            p_isa = v459;
          }

          v31 = v460;
          v28 = v461;
        }

        goto LABEL_292;
      case 7:
LABEL_181:
        [p_isa setDaDisplayOrder:{-[NSObject daDisplayOrder](a1, "daDisplayOrder")}];
        goto LABEL_292;
      case 8:
LABEL_131:
        [p_isa setDaIsEventOnlyContainer:{-[NSObject daIsEventOnlyContainer](a1, "daIsEventOnlyContainer")}];
        goto LABEL_292;
      case 9:
LABEL_121:
        [p_isa setDaIsReadOnly:{-[NSObject daIsReadOnly](a1, "daIsReadOnly")}];
        goto LABEL_292;
      case 0xA:
LABEL_134:
        [p_isa setDaIsImmutable:{-[NSObject daIsImmutable](a1, "daIsImmutable")}];
        goto LABEL_292;
      case 0xB:
LABEL_175:
        [p_isa setDaIsNotificationsCollection:{-[NSObject daIsNotificationsCollection](a1, "daIsNotificationsCollection")}];
        goto LABEL_292;
      case 0xC:
LABEL_136:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v161 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v162 = sub_100005F4C(0xD000000000000017, v455);
          v164 = v163;

          if (v164)
          {
            v165 = (*(v161 + 56) + 16 * v162);
            v167 = *v165;
            v166 = v165[1];

            goto LABEL_147;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v168 = type metadata accessor for Logger();
        sub_100006654(v168, qword_100946C50);
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v169, v170))
        {
          a3 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *&v469[0] = v171;
          *a3 = 136315138;
          v172 = sub_10000668C(0xD000000000000017, v455, v469);

          *(a3 + 4) = v172;
          _os_log_impl(&_mh_execute_header, v169, v170, "Unknown ingestable key {key: %s}", a3, 0xCu);
          sub_10000607C(v171);
          p_isa = v459;
          v28 = v461;

          v32 = v458;

          goto LABEL_148;
        }

LABEL_147:
        v28 = v461;
LABEL_148:
        v173 = String._bridgeToObjectiveC()();

        v14 = [v32 mergeWithMap:v28 forKey:v173];

        if ((v14 & 1) == 0)
        {
          goto LABEL_290;
        }

        a1 = v463;
        [p_isa setMinimumSupportedVersion:{-[NSObject minimumSupportedVersion](v463, "minimumSupportedVersion")}];
        goto LABEL_291;
      case 0xD:
LABEL_177:
        [p_isa setIsGroup:{-[NSObject isGroup](a1, "isGroup")}];
        goto LABEL_292;
      case 0xE:
LABEL_96:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v131 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v132 = sub_100005F4C(0xD000000000000012, v445);
          v134 = v133;

          if (v134)
          {
            v135 = (*(v131 + 56) + 16 * v132);
            v137 = *v135;
            v136 = v135[1];

            goto LABEL_107;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v138 = type metadata accessor for Logger();
        sub_100006654(v138, qword_100946C50);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v139, v140))
        {
          a3 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          *&v469[0] = v141;
          *a3 = 136315138;
          v142 = sub_10000668C(0xD000000000000012, v445, v469);

          *(a3 + 4) = v142;
          _os_log_impl(&_mh_execute_header, v139, v140, "Unknown ingestable key {key: %s}", a3, 0xCu);
          sub_10000607C(v141);
          p_isa = v459;
          v28 = v461;

          v32 = v458;

          goto LABEL_108;
        }

LABEL_107:
        v28 = v461;
LABEL_108:
        v143 = String._bridgeToObjectiveC()();

        v14 = [v32 mergeWithMap:v28 forKey:v143];

        if ((v14 & 1) == 0)
        {
          goto LABEL_290;
        }

        a1 = v463;
        v144 = [v463 lastUserAccessDate];
        v31 = v460;
        if (v144)
        {
          a3 = p_isa;
          v145 = a1;
          v146 = v450;
          v147 = v144;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v14 = Date._bridgeToObjectiveC()().super.isa;
          v148 = v146;
          a1 = v145;
          p_isa = a3;
          (*v432)(v148, v447);
        }

        else
        {
          v14 = 0;
        }

        [p_isa setLastUserAccessDate:v14];
        goto LABEL_214;
      case 0xF:
LABEL_198:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        a3 = 1701667182;
        v203 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v204 = sub_100005F4C(1701667182, 0xE400000000000000);
          v206 = v205;

          if (v206)
          {
            v207 = (*(v203 + 56) + 16 * v204);
            a3 = *v207;
            v208 = v207[1];

            goto LABEL_209;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v209 = type metadata accessor for Logger();
        sub_100006654(v209, qword_100946C50);
        v210 = Logger.logObject.getter();
        v211 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v210, v211))
        {
          v212 = v32;
          v213 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          *&v469[0] = v214;
          *v213 = 136315138;
          v215 = sub_10000668C(1701667182, 0xE400000000000000, v469);

          *(v213 + 4) = v215;
          v216 = v461;
          _os_log_impl(&_mh_execute_header, v210, v211, "Unknown ingestable key {key: %s}", v213, 0xCu);
          sub_10000607C(v214);
          v28 = v216;

          v32 = v212;
          p_isa = v459;
          v31 = v460;
          a3 = 1701667182;

          goto LABEL_210;
        }

LABEL_209:
        v28 = v461;
LABEL_210:
        v14 = String._bridgeToObjectiveC()();

        v217 = [v32 mergeWithMap:v28 forKey:v14];

        if ((v217 & 1) == 0)
        {
          goto LABEL_215;
        }

        a1 = v463;
        v14 = [v463 name];
        if (!v14)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = String._bridgeToObjectiveC()();
          a1 = v463;
        }

        [p_isa setName:v14];
        goto LABEL_214;
      case 0x10:
LABEL_183:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        a3 = 0x726F6C6F63;
        v188 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v189 = sub_100005F4C(0x726F6C6F63, 0xE500000000000000);
          v191 = v190;

          if (v191)
          {
            v192 = (*(v188 + 56) + 16 * v189);
            a3 = *v192;
            v193 = v192[1];

            goto LABEL_194;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v194 = type metadata accessor for Logger();
        sub_100006654(v194, qword_100946C50);
        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = v32;
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          *&v469[0] = v199;
          *v198 = 136315138;
          v200 = sub_10000668C(0x726F6C6F63, 0xE500000000000000, v469);

          *(v198 + 4) = v200;
          v201 = v461;
          _os_log_impl(&_mh_execute_header, v195, v196, "Unknown ingestable key {key: %s}", v198, 0xCu);
          sub_10000607C(v199);
          v28 = v201;

          v32 = v197;
          p_isa = v459;
          v31 = v460;
          a3 = 0x726F6C6F63;

          goto LABEL_195;
        }

LABEL_194:
        v28 = v461;
LABEL_195:
        v14 = String._bridgeToObjectiveC()();

        v202 = [v32 mergeWithMap:v28 forKey:v14];

        if (v202)
        {
          a1 = v463;
          v14 = [v463 color];
          [p_isa setColor:v14];
LABEL_214:
        }

        else
        {
LABEL_215:
          a1 = v463;
        }

        goto LABEL_292;
      case 0x11:
LABEL_155:
        v174 = v28;
        a3 = v32;
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v175 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v176 = sub_100005F4C(0x626D456567646162, 0xEB000000006D656CLL);
          v178 = v177;

          if (v178)
          {
            v179 = (*(v175 + 56) + 16 * v176);
            v181 = *v179;
            v180 = v179[1];

            goto LABEL_166;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v182 = type metadata accessor for Logger();
        sub_100006654(v182, qword_100946C50);
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v435 = swift_slowAlloc();
          *&v469[0] = v435;
          *v185 = 136315138;
          v186 = sub_10000668C(0x626D456567646162, 0xEB000000006D656CLL, v469);

          *(v185 + 4) = v186;
          v174 = v461;
          _os_log_impl(&_mh_execute_header, v183, v184, "Unknown ingestable key {key: %s}", v185, 0xCu);
          sub_10000607C(v435);
        }

LABEL_166:
        v14 = String._bridgeToObjectiveC()();

        v187 = [a3 mergeWithMap:v174 forKey:v14];

        v28 = v174;
        if ((v187 & 1) == 0)
        {
          goto LABEL_169;
        }

        a1 = v463;
        v14 = [v463 badgeEmblem];
        v59 = "setBadgeEmblem:";
        goto LABEL_168;
      case 0x12:
LABEL_241:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v239 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v240 = sub_100005F4C(0xD00000000000001CLL, v440);
          v242 = v241;

          if (v242)
          {
            v243 = (*(v239 + 56) + 16 * v240);
            v244 = *v243;
            v245 = v243[1];

            goto LABEL_252;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v246 = type metadata accessor for Logger();
        sub_100006654(v246, qword_100946C50);
        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v247, v248))
        {
          v249 = swift_slowAlloc();
          a3 = swift_slowAlloc();
          *&v469[0] = a3;
          *v249 = 136315138;
          v250 = sub_10000668C(0xD00000000000001CLL, v440, v469);

          *(v249 + 4) = v250;
          _os_log_impl(&_mh_execute_header, v247, v248, "Unknown ingestable key {key: %s}", v249, 0xCu);
          sub_10000607C(a3);
          v32 = v458;
          p_isa = v459;

          v28 = v461;

          goto LABEL_253;
        }

LABEL_252:
        v28 = v461;
LABEL_253:
        v251 = String._bridgeToObjectiveC()();

        v14 = [v32 mergeWithMap:v28 forKey:v251];

        if ((v14 & 1) == 0)
        {
          goto LABEL_290;
        }

        v14 = &selRef_setPublicLinkLastModifiedDate_;
        a1 = v463;
        v252 = [v463 shouldCategorizeGroceryItems];
        v31 = v460;
        if (v252)
        {
          v448 = [p_isa shouldCategorizeGroceryItems] ^ 1;
        }

        else
        {
          v448 = 0;
        }

        [p_isa setShouldCategorizeGroceryItems:{-[NSObject shouldCategorizeGroceryItems](a1, "shouldCategorizeGroceryItems")}];
        goto LABEL_292;
      case 0x13:
      case 0x15:
      case 0x19:
      case 0x25:
      case 0x28:
      case 0x29:
        goto LABEL_292;
      case 0x14:
LABEL_46:
        v81 = v28;
        a3 = v32;
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v82 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v83 = sub_100005F4C(0x4C797265636F7267, 0xEF4449656C61636FLL);
          v85 = v84;

          if (v85)
          {
            v86 = (*(v82 + 56) + 16 * v83);
            v88 = *v86;
            v87 = v86[1];

            goto LABEL_57;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        sub_100006654(v89, qword_100946C50);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v435 = swift_slowAlloc();
          *&v469[0] = v435;
          *v92 = 136315138;
          v93 = sub_10000668C(0x4C797265636F7267, 0xEF4449656C61636FLL, v469);

          *(v92 + 4) = v93;
          v81 = v461;
          _os_log_impl(&_mh_execute_header, v90, v91, "Unknown ingestable key {key: %s}", v92, 0xCu);
          sub_10000607C(v435);
        }

LABEL_57:
        v14 = String._bridgeToObjectiveC()();

        v94 = [a3 mergeWithMap:v81 forKey:v14];

        v32 = a3;
        v28 = v81;
        if (v94)
        {
          a1 = v463;
          v14 = [v463 groceryLocaleID];
          p_isa = v459;
          [v459 setGroceryLocaleID:v14];

          goto LABEL_291;
        }

        p_isa = v459;
        v31 = v460;
        a1 = v463;
        goto LABEL_292;
      case 0x16:
LABEL_259:
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v253 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v254 = sub_100005F4C(0xD000000000000019, v444);
          v256 = v255;

          if (v256)
          {
            v257 = (*(v253 + 56) + 16 * v254);
            v259 = *v257;
            v258 = v257[1];

            goto LABEL_270;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v260 = type metadata accessor for Logger();
        sub_100006654(v260, qword_100946C50);
        v261 = Logger.logObject.getter();
        v262 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v261, v262))
        {
          a3 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          *&v469[0] = v263;
          *a3 = 136315138;
          v264 = sub_10000668C(0xD000000000000019, v444, v469);

          *(a3 + 4) = v264;
          _os_log_impl(&_mh_execute_header, v261, v262, "Unknown ingestable key {key: %s}", a3, 0xCu);
          sub_10000607C(v263);
          p_isa = v459;
          v28 = v461;

          v32 = v458;

          goto LABEL_271;
        }

LABEL_270:
        v28 = v461;
LABEL_271:
        v265 = String._bridgeToObjectiveC()();

        v14 = [v32 mergeWithMap:v28 forKey:v265];

        if ((v14 & 1) == 0)
        {
          goto LABEL_290;
        }

        v14 = &selRef_setPublicLinkLastModifiedDate_;
        a1 = v463;
        v266 = [v463 shouldAutoCategorizeItems];
        v31 = v460;
        if (v266)
        {
          v442 = [p_isa shouldAutoCategorizeItems] ^ 1;
        }

        else
        {
          v442 = 0;
        }

        [p_isa setShouldAutoCategorizeItems:{-[NSObject shouldAutoCategorizeItems](a1, "shouldAutoCategorizeItems")}];
        goto LABEL_292;
      case 0x17:
LABEL_173:
        [p_isa setShowingLargeAttachments:{-[NSObject showingLargeAttachments](a1, "showingLargeAttachments")}];
        goto LABEL_292;
      case 0x18:
LABEL_217:
        v218 = *(v457 + 16);
        v219 = v462;
        sub_100678ED4(*(v457 + 16));
        v434 = v222;
        v435 = v221;
        v462 = v219;
        if (v219)
        {

          return;
        }

        v433 = v220;
        v14 = v31;
        v223 = v459;
        v224 = [v459 createResolutionTokenMapIfNecessary];
        a3 = String._bridgeToObjectiveC()();
        v225 = [v224 mergeWithMap:v461 forKey:a3];

        if (v218)
        {

          if ((v225 & 1) == 0)
          {
            sub_100031A14(v435, v434);

            v32 = v458;
            p_isa = v459;
            goto LABEL_239;
          }

          v226 = v434;
          a3 = v435;
          sub_1001CB4B8(v435, v434);
          v227 = v226;
          p_isa = &v433->isa;
        }

        else
        {
          v228 = String._bridgeToObjectiveC()();
          v229 = [v223 valueForKey:v228];

          if (v229)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v467 = 0u;
            v468 = 0u;
          }

          v230 = v462;
          p_isa = &v433->isa;
          v28 = v224;
          v469[0] = v467;
          v469[1] = v468;
          if (*(&v468 + 1))
          {
            v231 = swift_dynamicCast();
            if (v231)
            {
              a1 = v465;
            }

            else
            {
              a1 = 0;
            }

            if (v231)
            {
              v14 = v466;
            }

            else
            {
              v14 = 0xF000000000000000;
            }
          }

          else
          {
            sub_1000050A4(v469, &qword_100939ED0, &qword_100791B10);
            a1 = 0;
            v14 = 0xF000000000000000;
          }

          *&v469[0] = 0;
          v232 = [v459 remObjectIDWithError:v469];
          a3 = *&v469[0];
          if (!v232)
          {
            goto LABEL_382;
          }

          v233 = v232;
          v462 = v28;
          v234 = *&v469[0];
          v235 = sub_1006A4484(p_isa, a1, v14, 0xD00000000000001CLL, v438 | 0x8000000000000000, v233);
          if (v230)
          {

            sub_100031A14(v435, v434);
            sub_100031A14(a1, v14);

            return;
          }

          a3 = v235;
          v227 = v236;

          sub_100031A14(a1, v14);
          v462 = 0;
          v14 = v460;
          v226 = v434;
        }

        if (v227 >> 60 == 15)
        {
          sub_100031A14(v435, v226);

          v32 = v458;
          p_isa = v459;
        }

        else
        {
          v237 = Data._bridgeToObjectiveC()().super.isa;
          v238 = v459;
          [v459 setReminderIDsMergeableOrdering:v237];
          sub_100031A14(v435, v226);

          p_isa = v238;
          sub_100031A14(a3, v227);
          v32 = v458;
        }

LABEL_239:
        v28 = v461;
        a1 = v463;
        v31 = v14;
        goto LABEL_292;
      case 0x1A:
LABEL_114:
        if (qword_1009366B0 != -1)
        {
          swift_once();
        }

        v149 = type metadata accessor for Logger();
        sub_100006654(v149, qword_10094EE30);
        v14 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v14, v116))
        {
          goto LABEL_119;
        }

        v150 = swift_slowAlloc();
        v151 = v32;
        v119 = v31;
        a3 = v151;
        v120 = v28;
        v121 = v150;
        *v150 = 0;
        v122 = "Actually really doing nothing for a merge on .reminderIDsOrderingHints";
        goto LABEL_118;
      case 0x1B:
LABEL_80:
        if (qword_1009366B0 != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for Logger();
        sub_100006654(v115, qword_10094EE30);
        v14 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v14, v116))
        {
          goto LABEL_119;
        }

        v117 = swift_slowAlloc();
        v118 = v32;
        v119 = v31;
        a3 = v118;
        v120 = v28;
        v121 = v117;
        *v117 = 0;
        v122 = "Actually really doing nothing for a merge on .remindersICSDisplayOrderChanged";
LABEL_118:
        _os_log_impl(&_mh_execute_header, v14, v116, v122, v121, 2u);
        v28 = v120;
        v31 = v119;
        v32 = a3;

LABEL_119:

        a1 = v463;
        goto LABEL_292;
      case 0x1C:
        if (v34 == v464)
        {
          goto LABEL_308;
        }

        v43 = &v30[v436];
        while (2)
        {
          if (v34 >= v464)
          {
            goto LABEL_381;
          }

          v44 = v34 + 1;
          if (!__OFADD__(v34, 1))
          {
            switch(*v43)
            {
              case 1:
                v446 = 1;
                ++v34;
                goto LABEL_123;
              case 2:
                v446 = 1;
                ++v34;
                goto LABEL_151;
              case 3:
                v446 = 1;
                ++v34;
                goto LABEL_153;
              case 4:
                v446 = 1;
                ++v34;
                goto LABEL_171;
              case 5:
                v446 = 1;
                ++v34;
                goto LABEL_179;
              case 6:
                v446 = 1;
                ++v34;
                goto LABEL_125;
              case 7:
                v446 = 1;
                ++v34;
                goto LABEL_181;
              case 8:
                v446 = 1;
                ++v34;
                goto LABEL_131;
              case 9:
                v446 = 1;
                ++v34;
                goto LABEL_121;
              case 10:
                v446 = 1;
                ++v34;
                goto LABEL_134;
              case 11:
                v446 = 1;
                ++v34;
                goto LABEL_175;
              case 12:
                v446 = 1;
                ++v34;
                goto LABEL_136;
              case 13:
                v446 = 1;
                ++v34;
                goto LABEL_177;
              case 14:
                v446 = 1;
                ++v34;
                goto LABEL_96;
              case 15:
                v446 = 1;
                ++v34;
                goto LABEL_198;
              case 16:
                v446 = 1;
                ++v34;
                goto LABEL_183;
              case 17:
                v446 = 1;
                ++v34;
                goto LABEL_155;
              case 18:
                v446 = 1;
                ++v34;
                goto LABEL_241;
              case 19:
              case 21:
              case 25:
              case 37:
              case 40:
              case 41:
                v446 = 1;
                ++v34;
                goto LABEL_292;
              case 20:
                v446 = 1;
                ++v34;
                goto LABEL_46;
              case 22:
                v446 = 1;
                ++v34;
                goto LABEL_259;
              case 23:
                v446 = 1;
                ++v34;
                goto LABEL_173;
              case 24:
                v446 = 1;
                ++v34;
                goto LABEL_217;
              case 26:
                v446 = 1;
                ++v34;
                goto LABEL_114;
              case 27:
                v446 = 1;
                ++v34;
                goto LABEL_80;
              case 28:
                ++v34;
                ++v43;
                if (v44 == v464)
                {
                  goto LABEL_308;
                }

                continue;
              case 29:
                v446 = 1;
                ++v34;
                goto LABEL_87;
              case 30:
                v446 = 1;
                ++v34;
                goto LABEL_44;
              case 31:
                v446 = 1;
                ++v34;
                goto LABEL_42;
              case 32:
                v446 = 1;
                ++v34;
                goto LABEL_277;
              case 33:
                v446 = 1;
                ++v34;
                goto LABEL_85;
              case 34:
                v446 = 1;
                ++v34;
                goto LABEL_92;
              case 35:
                v446 = 1;
                ++v34;
                goto LABEL_17;
              case 36:
                v446 = 1;
                ++v34;
                goto LABEL_61;
              case 38:
                v446 = 1;
                ++v34;
                goto LABEL_284;
              case 39:
                v446 = 1;
                ++v34;
                goto LABEL_31;
              default:
                v446 = 1;
                ++v34;
                goto LABEL_6;
            }
          }

          goto LABEL_380;
        }

      case 0x1D:
LABEL_87:
        v124 = [a1 sharedOwnerID];
        if (v124)
        {
          v125 = v124;
          a3 = v32;
          v126 = a1;
          v127 = [v124 uuid];

          v128 = v28;
          v129 = v451;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          a1 = v126;
          v14 = UUID._bridgeToObjectiveC()().super.isa;
          v130 = v129;
          v28 = v128;
          v32 = a3;
          v31 = v460;
          (*v441)(v130, v456);
        }

        else
        {
          v14 = 0;
        }

        [p_isa setSharedOwnerIdentifier:v14];
        goto LABEL_214;
      case 0x1E:
LABEL_44:
        v14 = [a1 sharedOwnerName];
        [p_isa setSharedOwnerName:v14];
        goto LABEL_214;
      case 0x1F:
LABEL_42:
        v14 = [a1 sharedOwnerAddress];
        [p_isa setSharedOwnerAddress:v14];
        goto LABEL_214;
      case 0x20:
LABEL_277:
        v267 = [a1 sharingStatus];
        v268 = 0x7FFFLL;
        if (v267 < 0x7FFF)
        {
          v268 = v267;
        }

        if (v268 <= -32768)
        {
          v269 = -32768;
        }

        else
        {
          v269 = v268;
        }

        [p_isa setSharingStatus:v269];
        goto LABEL_292;
      case 0x21:
LABEL_85:
        v123 = v462;
        sub_1006A4A44(a1, p_isa);
        goto LABEL_93;
      case 0x22:
LABEL_92:
        v123 = v462;
        sub_1006A5110(a1, p_isa);
LABEL_93:
        v462 = v123;
        if (v123)
        {
          goto LABEL_94;
        }

        goto LABEL_292;
      case 0x23:
LABEL_17:
        v45 = v28;
        a3 = v32;
        if (qword_1009366C8 != -1)
        {
          swift_once();
        }

        v46 = qword_1009752A0;
        if (*(qword_1009752A0 + 16))
        {
          v47 = sub_100005F4C(0x53676E6974726F73, 0xEC000000656C7974);
          v49 = v48;

          if (v49)
          {
            v50 = (*(v46 + 56) + 16 * v47);
            v52 = *v50;
            v51 = v50[1];

            goto LABEL_28;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_100946C50);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v435 = swift_slowAlloc();
          *&v469[0] = v435;
          *v56 = 136315138;
          v57 = sub_10000668C(0x53676E6974726F73, 0xEC000000656C7974, v469);

          *(v56 + 4) = v57;
          v45 = v461;
          _os_log_impl(&_mh_execute_header, v54, v55, "Unknown ingestable key {key: %s}", v56, 0xCu);
          sub_10000607C(v435);
        }

LABEL_28:
        v14 = String._bridgeToObjectiveC()();

        v58 = [a3 mergeWithMap:v45 forKey:v14];

        v28 = v45;
        if (v58)
        {
          a1 = v463;
          v14 = [v463 sortingStyle];
          v59 = "setSortingStyle:";
LABEL_168:
          p_isa = v459;
          [v459 v59];

          v31 = v460;
          v32 = a3;
        }

        else
        {
LABEL_169:
          p_isa = v459;
          v31 = v460;
          a1 = v463;
          v32 = a3;
        }

        goto LABEL_292;
      case 0x24:
LABEL_61:
        v95 = p_isa;
        v96 = v32;
        v97 = v28;
        v98 = [a1 pinnedDate];
        if (v98)
        {
          v99 = v443;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v100 = 0;
        }

        else
        {
          v100 = 1;
          v99 = v443;
        }

        v14 = v98 != 0;
        (*v437)(v99, v100, 1, v447);
        sub_1000050A4(v99, &unk_100938850, qword_100795AE0);
        [v95 setIsPinnedByCurrentUser:v14];
        a3 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        v101 = [v463 sharingStatus];
        if ((v101 - 2) < 3)
        {
          a1 = v463;
          v102 = v459;
          v31 = v460;
LABEL_75:
          v32 = v96;
          p_isa = v102;
          goto LABEL_292;
        }

        if (v101 > 1)
        {
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          sub_100006654(v109, qword_10094EE30);
          v110 = v463;
          v14 = Logger.logObject.getter();
          v111 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v14, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            *v112 = 138543618;
            v114 = [v110 objectID];
            *(v112 + 4) = v114;
            *v113 = v114;
            *(v112 + 12) = 2050;
            *(v112 + 14) = [v110 sharingStatus];

            _os_log_impl(&_mh_execute_header, v14, v111, "REMListStorageCDIngestor: merge(storage:into cdList:...) Unhandled sharingStatus {objectID: %{public}@, sharingStatus.rawValue: %{public}ld}", v112, 0x16u);
            sub_1000050A4(v113, &unk_100938E70, &unk_100797230);
          }

          else
          {
          }

LABEL_297:
          a1 = v463;
          p_isa = v459;
          v28 = v97;
          v32 = v458;
LABEL_291:
          v31 = v460;
        }

        else
        {
          sub_1006942C0(36);
          v103 = String._bridgeToObjectiveC()();

          v14 = [v96 mergeWithMap:v28 forKey:v103];

          if (!v14)
          {
            a1 = v463;
            v102 = v459;
            v31 = v460;
            v28 = v461;
            goto LABEL_75;
          }

          a1 = v463;
          v104 = [v463 pinnedDate];
          a3 = v459;
          v31 = v460;
          if (v104)
          {
            v105 = a1;
            v106 = v449;
            v107 = v104;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v14 = Date._bridgeToObjectiveC()().super.isa;
            v108 = v106;
            a1 = v105;
            (*v432)(v108, v447);
          }

          else
          {
            v14 = 0;
          }

          v28 = v461;
          [a3 setPinnedDate:v14];

          v32 = v96;
          p_isa = a3;
        }

LABEL_292:
        if (v34 == v464)
        {
          if ((v446 & 1) == 0)
          {
            goto LABEL_318;
          }

          goto LABEL_308;
        }

        goto LABEL_293;
      case 0x26:
LABEL_284:
        v270 = [a1 unsavedSectionIDsOrdering];
        if (!v270)
        {
          goto LABEL_292;
        }

        a3 = v270;
        v14 = p_isa;
        v271 = a1;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v272 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v273 = v462;
        sub_1005F8AE4(v272, 1);
        v462 = v273;
        if (!v273)
        {

          a1 = v271;
          p_isa = v14;
          goto LABEL_292;
        }

        v97 = v28;

        if (qword_1009366C0 != -1)
        {
          swift_once();
        }

        v274 = type metadata accessor for Logger();
        sub_100006654(v274, qword_10094EE60);
        v275 = v271;
        swift_errorRetain();
        a3 = Logger.logObject.getter();
        v14 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(a3, v14))
        {

          v462 = 0;
          goto LABEL_297;
        }

        v276 = swift_slowAlloc();
        v277 = swift_slowAlloc();
        v435 = swift_slowAlloc();
        *&v467 = v435;
        *v276 = 136446722;
        *&v469[0] = v439;
        swift_getMetatypeMetadata();
        v278 = String.init<A>(describing:)();
        LODWORD(v434) = v14;
        v280 = sub_10000668C(v278, v279, &v467);

        *(v276 + 4) = v280;
        p_isa = v459;
        *(v276 + 12) = 2114;
        v281 = [v275 objectID];
        *(v276 + 14) = v281;
        *v277 = v281;
        *(v276 + 22) = 2082;
        swift_getErrorValue();
        v282 = Error.rem_errorDescription.getter();
        v14 = v283;
        v284 = sub_10000668C(v282, v283, &v467);

        *(v276 + 24) = v284;
        v28 = v461;
        _os_log_impl(&_mh_execute_header, a3, v434, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedSectionIDsOrdering' into 'cdList' {storage.objectID: %{public}@, error: %{public}s}", v276, 0x20u);
        sub_1000050A4(v277, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v32 = v458;
        v462 = 0;
LABEL_290:
        a1 = v463;
        goto LABEL_291;
      case 0x27:
LABEL_31:
        v60 = a1;
        v61 = v28;
        v62 = v60;
        v63 = [v60 unsavedMembershipsOfRemindersInSections];
        if (!v63)
        {
          goto LABEL_38;
        }

        a3 = v63;
        v14 = p_isa;
        v64 = v462;
        sub_1005EB8A8(v63, sub_10032D8A8, &unk_100938880, off_1008D41A8, &unk_10094F1B0, &qword_1007A4840);
        v462 = v64;
        if (v64)
        {
          if (qword_1009366C0 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_100006654(v65, qword_10094EE60);
          v66 = v62;
          swift_errorRetain();
          v14 = Logger.logObject.getter();
          v67 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v14, v67))
          {
            v68 = swift_slowAlloc();
            LODWORD(v434) = v67;
            v69 = v68;
            v70 = swift_slowAlloc();
            v435 = swift_slowAlloc();
            *&v467 = v435;
            *v69 = 136446722;
            *&v469[0] = v439;
            swift_getMetatypeMetadata();
            v71 = String.init<A>(describing:)();
            v433 = v14;
            v73 = v66;
            v74 = sub_10000668C(v71, v72, &v467);

            *(v69 + 4) = v74;
            *(v69 + 12) = 2114;
            v75 = [v73 objectID];
            *(v69 + 14) = v75;
            *v70 = v75;
            *(v69 + 22) = 2082;
            swift_getErrorValue();
            v76 = Error.rem_errorDescription.getter();
            v78 = sub_10000668C(v76, v77, &v467);

            *(v69 + 24) = v78;
            v79 = v433;
            _os_log_impl(&_mh_execute_header, v433, v434, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedMembershipsOfRemindersInSections' into 'cdList' {storage.objectID: %{public}@, error: %{public}s}", v69, 0x20u);
            sub_1000050A4(v70, &unk_100938E70, &unk_100797230);

            v14 = v435;
            swift_arrayDestroy();

            v28 = v461;
            a1 = v463;

            v32 = v458;
            p_isa = v459;
            v462 = 0;
            goto LABEL_291;
          }

          v462 = 0;
          v32 = v458;
          p_isa = v459;
          v31 = v460;
        }

        else
        {

LABEL_38:
          v32 = v458;
        }

        v80 = v62;
        v28 = v61;
        a1 = v80;
        goto LABEL_292;
      default:
LABEL_6:
        a3 = v31;
        v35 = p_isa;
        v36 = v28;
        v37 = a1;
        v38 = [a1 objectID];
        v39 = [v38 uuid];

        v40 = v454;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = UUID._bridgeToObjectiveC()().super.isa;
        (*v441)(v40, v456);
        v41 = v35;
        [v35 setIdentifier:v14];

        if (v34 != v464)
        {
          v453 = 1;
          v28 = v36;
          v32 = v458;
          v31 = a3;
          v42 = v41;
          a1 = v37;
          p_isa = v42;
LABEL_293:
          v30 = v34;
          if (v34 >= v464)
          {
            goto LABEL_381;
          }

          continue;
        }

        v453 = 1;
        v28 = v36;
        v32 = v458;
        v428 = v41;
        a1 = v37;
        p_isa = v428;
        if ((v446 & 1) == 0)
        {
          goto LABEL_318;
        }

LABEL_308:
        v304 = p_isa;
        v305 = v32;
        v306 = v28;
        v307 = [a1 templateID];
        if (!v307)
        {
          a1 = v463;
          v32 = v305;
          p_isa = v304;
          goto LABEL_318;
        }

        v308 = v307;
        v309 = [v304 account];
        if (!v309)
        {
          goto LABEL_367;
        }

        v310 = v309;
        v311 = [v309 remObjectID];
        v312 = [v463 accountID];
        v313 = v312;
        if (!v311)
        {
          if (!v312)
          {
            goto LABEL_369;
          }

LABEL_365:

          goto LABEL_366;
        }

        if (!v312)
        {
          v313 = v311;
          goto LABEL_365;
        }

        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v314 = static NSObject.== infix(_:_:)();

        if (v314)
        {
          goto LABEL_369;
        }

LABEL_366:

        v304 = v459;
LABEL_367:
        v392 = [v304 storeControllerManagedObjectContext];
        if (!v392)
        {
          goto LABEL_372;
        }

        v393 = v392;
        v394 = objc_opt_self();
        v395 = [v463 accountID];
        v396 = [v395 uuid];

        v397 = v454;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.uuidString.getter();
        (*v441)(v397, v456);
        v398 = String._bridgeToObjectiveC()();

        v310 = [v394 cloudKitAccountWithCKIdentifier:v398 context:v393];

        if (!v310)
        {
LABEL_372:
          v464 = 0;
LABEL_374:
          v462 = objc_opt_self();
          *&v469[0] = 0;
          *(&v469[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(181);
          v405._countAndFlagsBits = 0xD000000000000082;
          v405._object = 0x80000001007FE110;
          String.append(_:)(v405);
          v406 = v463;
          v407 = [v463 objectID];
          v408 = [v407 description];
          v409 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v411 = v410;

          v412._countAndFlagsBits = v409;
          v412._object = v411;
          String.append(_:)(v412);

          v413._object = 0x80000001007F0200;
          v413._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v413);
          v414 = [v406 accountID];
          v415 = [v414 description];
          v416 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v418 = v417;

          v419._countAndFlagsBits = v416;
          v419._object = v418;
          String.append(_:)(v419);

          v420._object = 0x80000001007FE1A0;
          v420._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v420);
          v421 = [v308 description];
          v422 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v424 = v423;

          v425._countAndFlagsBits = v422;
          v425._object = v424;
          String.append(_:)(v425);

          v426._countAndFlagsBits = 125;
          v426._object = 0xE100000000000000;
          String.append(_:)(v426);
          v427 = String._bridgeToObjectiveC()();

          [v462 invalidParameterErrorWithDescription:v427];

          swift_willThrow();
          return;
        }

LABEL_369:
        v399 = v462;
        v400 = v310;
        v401 = [v400 accountTypeHost];
        v402 = [v401 isCloudKit];

        if (!v402)
        {
          v464 = v400;

          goto LABEL_374;
        }

        v403 = v463;
        v404 = [v463 objectID];
        sub_1006A57DC(v400, v308, v404);

        if (v399)
        {

          return;
        }

        v462 = 0;
        a1 = v403;
        v28 = v306;
        v32 = v305;
        p_isa = v459;
LABEL_318:
        if (![a1 shouldCategorizeGroceryItems])
        {
          v341 = [a1 shouldAutoCategorizeItems];
          v342 = v462;
          if (!v341)
          {
            goto LABEL_94;
          }

          if (v453 & 1 | ((v442 & 1) == 0))
          {
            v343 = [a1 unsavedReminderIDsForCategorization];
            if (v343)
            {
              v344 = v343;
              v325 = v28;
              v326 = v32;
              sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
              v345 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v346 = [p_isa account];
              if (v346)
              {
                v329 = v346;
                if ([p_isa shouldAutoCategorizeItems])
                {
                  v347 = [p_isa storeControllerManagedObjectContext];
                  if (v347)
                  {
                    v331 = v347;
                    v464 = v329;
                    v348 = [p_isa remObjectID];
                    if (v348)
                    {
                      v333 = v348;
                      if (v345 >> 62)
                      {
                        if (!_CocoaArrayWrapper.endIndex.getter())
                        {
                          goto LABEL_389;
                        }
                      }

                      else if (!*((v345 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_389;
                      }

                      v458 = v326;
                      sub_1000F5104(&unk_100936F40, &unk_100791B30);
                      v334 = v333;

                      v335 = v464;
                      v336 = sub_10018F9D4(v334, v345, 0, v464, v331);
                      if (v342)
                      {

                        if (qword_1009366B0 != -1)
                        {
                          swift_once();
                        }

                        v349 = type metadata accessor for Logger();
                        sub_100006654(v349, qword_10094EE30);
                        v338 = v463;

                        swift_errorRetain();
                        v339 = Logger.logObject.getter();
                        v340 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v339, v340))
                        {
                          goto LABEL_345;
                        }

LABEL_385:

                        goto LABEL_359;
                      }

LABEL_384:
                      v430 = v336;

                      swift_bridgeObjectRelease_n();
                      return;
                    }

LABEL_376:

                    goto LABEL_390;
                  }
                }

LABEL_360:

                goto LABEL_391;
              }

LABEL_361:

              goto LABEL_391;
            }

LABEL_94:

            return;
          }

          v381 = v462;
          sub_1006A69E0(p_isa);
          if (!v342)
          {
            goto LABEL_94;
          }

          v458 = v32;
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v382 = type metadata accessor for Logger();
          sub_100006654(v382, qword_10094EE30);
          v383 = a1;
          swift_errorRetain();
          v368 = Logger.logObject.getter();
          v369 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v368, v369))
          {
            v384 = swift_slowAlloc();
            v462 = v381;
            v371 = v384;
            v372 = swift_slowAlloc();
            *&v469[0] = swift_slowAlloc();
            *v371 = 136446722;
            v385 = sub_1001424F8();
            v387 = sub_10000668C(v385, v386, v469);

            *(v371 + 4) = v387;
            *(v371 + 12) = 2112;
            v388 = [v383 objectID];
            *(v371 + 14) = v388;
            *v372 = v388;
            *(v371 + 22) = 2080;
            swift_getErrorValue();
            v389 = Error.rem_errorDescription.getter();
            v391 = sub_10000668C(v389, v390, v469);

            *(v371 + 24) = v391;
            v380 = "%{public}s: Failed to auto-categorize reminders in list after changing 'shouldAutoCategorizeItems' to 'true' {listObjectID: %@, error: %s}";
            goto LABEL_356;
          }

LABEL_358:

LABEL_359:

          return;
        }

        v322 = v462;
        if (!(v453 & 1 | ((v448 & 1) == 0)))
        {
          v365 = v462;
          sub_1006A5F00(p_isa);
          if (!v322)
          {
            goto LABEL_94;
          }

          v458 = v32;
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v366 = type metadata accessor for Logger();
          sub_100006654(v366, qword_10094EE30);
          v367 = a1;
          swift_errorRetain();
          v368 = Logger.logObject.getter();
          v369 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v368, v369))
          {
            v370 = swift_slowAlloc();
            v462 = v365;
            v371 = v370;
            v372 = swift_slowAlloc();
            *&v467 = swift_slowAlloc();
            *v371 = 136446722;
            *&v469[0] = v439;
            swift_getMetatypeMetadata();
            v373 = String.init<A>(describing:)();
            v375 = sub_10000668C(v373, v374, &v467);

            *(v371 + 4) = v375;
            *(v371 + 12) = 2112;
            v376 = [v367 objectID];
            *(v371 + 14) = v376;
            *v372 = v376;
            *(v371 + 22) = 2080;
            swift_getErrorValue();
            v377 = Error.rem_errorDescription.getter();
            v379 = sub_10000668C(v377, v378, &v467);

            *(v371 + 24) = v379;
            v380 = "%{public}s: Failed to auto-categorize reminders in list after changing 'shouldCategorizeGroceryItems' to 'true' {listObjectID: %@, error: %s}";
LABEL_356:
            _os_log_impl(&_mh_execute_header, v368, v369, v380, v371, 0x20u);
            sub_1000050A4(v372, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            return;
          }

          goto LABEL_358;
        }

        v323 = [a1 unsavedReminderIDsForCategorization];
        if (!v323)
        {
          goto LABEL_94;
        }

        v324 = v323;
        v325 = v28;
        v326 = v32;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v327 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v328 = [p_isa account];
        if (!v328)
        {
          goto LABEL_361;
        }

        v329 = v328;
        if (([p_isa shouldCategorizeGroceryItems] & 1) == 0)
        {
          goto LABEL_360;
        }

        v330 = [p_isa storeControllerManagedObjectContext];
        if (!v330)
        {
          goto LABEL_360;
        }

        v331 = v330;
        v464 = v329;
        v332 = [p_isa remObjectID];
        if (!v332)
        {
          goto LABEL_376;
        }

        v333 = v332;
        if (v327 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_389;
          }

LABEL_327:
          v458 = v326;
          sub_1000F5104(&unk_100939E10, &qword_1007970D0);
          v334 = v333;

          v335 = v464;
          v336 = sub_100015620(v333, v327, 0, v464, v331);
          if (v322)
          {

            if (qword_1009366B0 != -1)
            {
              swift_once();
            }

            v337 = type metadata accessor for Logger();
            sub_100006654(v337, qword_10094EE30);
            v338 = v463;

            swift_errorRetain();
            v339 = Logger.logObject.getter();
            v340 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v339, v340))
            {
LABEL_345:
              v350 = swift_slowAlloc();
              v351 = swift_slowAlloc();
              v463 = swift_slowAlloc();
              *&v469[0] = v463;
              *v350 = 136446978;
              v352 = sub_1001424F8();
              LODWORD(v462) = v340;
              v354 = sub_10000668C(v352, v353, v469);
              v460 = v339;
              v355 = v354;

              *(v350 + 4) = v355;
              *(v350 + 12) = 2112;
              v356 = [v338 objectID];
              *(v350 + 14) = v356;
              *v351 = v356;
              *(v350 + 22) = 2080;
              v357 = Array.description.getter();
              v359 = v358;

              v360 = sub_10000668C(v357, v359, v469);

              *(v350 + 24) = v360;
              *(v350 + 32) = 2080;
              swift_getErrorValue();
              v361 = Error.rem_errorDescription.getter();
              v363 = sub_10000668C(v361, v362, v469);

              *(v350 + 34) = v363;
              v364 = v460;
              _os_log_impl(&_mh_execute_header, v460, v462, "%{public}s: Failed to auto-categorize specific reminders in list {listObjectID: %@, unsavedReminderIDsForCategorization: %s, error: %s}", v350, 0x2Au);
              sub_1000050A4(v351, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              return;
            }

            goto LABEL_385;
          }

          goto LABEL_384;
        }

        if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_327;
        }

LABEL_389:

LABEL_390:

LABEL_391:
        return;
    }
  }
}

void sub_100678ED4(char a1)
{
  if (a1)
  {
    if ([v1 hasDeserializedReminderIDsMergeableOrdering] && (v2 = objc_msgSend(v1, "reminderIDsMergeableOrdering")) != 0)
    {
      v3 = v2;
      v20 = 0;
      v4 = [objc_opt_self() reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v2 error:&v20];
      v5 = v20;
      if (v4)
      {
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        if (qword_1009366B0 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_100006654(v6, qword_10094EE30);
        v7 = v1;
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412290;
          v12 = [v7 objectID];
          *(v10 + 4) = v12;
          *v11 = v12;
          _os_log_impl(&_mh_execute_header, v8, v9, "Serialized to json data from REMListStorage.reminderIDsMergeableOrdering during ingesting. {objectID: %@}", v10, 0xCu);
          sub_1000050A4(v11, &unk_100938E70, &unk_100797230);
        }
      }

      else
      {
        v19 = v5;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      v14 = [v1 reminderIDsMergeableOrderingData];
      if (v14)
      {
        v15 = v14;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v16 = objc_opt_self();
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v18 = String._bridgeToObjectiveC()();
        [v16 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v18];

        swift_willThrow();
      }
    }
  }

  else
  {
    v13 = [v1 reminderIDsMergeableOrdering];
  }
}

void sub_100679214(void *a1, char a2, void *a3, id a4, uint64_t a5)
{
  *&v141 = *v5;
  v11 = type metadata accessor for REMJSONDeserializationError();
  v12 = *(*(v11 - 8) + 64);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  if (a2)
  {
    if ([a4 shouldUpdateSectionsOrdering])
    {
      v14 = [a3 storeControllerManagedObjectContext];
      if (v14)
      {
        v140 = v14;
        v138 = a3;
        v137 = a4;
        v15 = [a4 objectID];
        if (qword_1009365B0 != -1)
        {
          swift_once();
        }

        v16 = sub_100596AB8(v15, 0);
        type metadata accessor for REMCDListSection();
        v139 = v15;
        v17 = [objc_allocWithZone(NSFetchRequest) init];
        v18 = [swift_getObjCClassFromMetadata() entity];
        [v17 setEntity:v18];

        [v17 setAffectedStores:0];
        [v17 setPredicate:v16];

        [v17 setPropertiesToFetch:0];
        [v17 setRelationshipKeyPathsForPrefetching:0];
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v17 setSortDescriptors:isa];

        v20 = v140;
        v21 = NSManagedObjectContext.fetch<A>(_:)();
        if (v142)
        {
        }

        else
        {
          v54 = v21;

          v55 = v138;
          v56 = [v138 sectionIDsOrderingAsData];
          if (v56)
          {
            v142 = v54;
            v57 = v56;
            v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
            static REMJSONRepresentable.fromJSONData(_:)();
            sub_10001BBA0(v58, v60);
            v20 = v140;
            v79 = REMOrderedIdentifierMap.reorder<A>(objects:)();

            v54 = v79;
            v55 = v138;
          }

          sub_100271240(v54);

          v80 = objc_allocWithZone(NSMutableOrderedSet);
          v81 = Array._bridgeToObjectiveC()().super.isa;

          v82 = [v80 initWithArray:v81];

          [v55 setSections:v82];
        }
      }
    }

    return;
  }

  v134 = a1;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  v141 = xmmword_100796900;
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v23 = inited;
  v147 = inited;
  v24 = [a3 parentAccount];
  if (!v24 || (v25 = v24, isUniquelyReferenced_nonNull_native = [v24 accountTypeHost], v25, !isUniquelyReferenced_nonNull_native))
  {
    isUniquelyReferenced_nonNull_native = [objc_allocWithZone(REMAccountTypeHost) initWithType:0];
  }

  if (*(a5 + 17))
  {
    LODWORD(v137) = 0;
  }

  else
  {
    if ([isUniquelyReferenced_nonNull_native isLocal])
    {
      v27 = a3;
      [a4 remindersICSDisplayOrderChanged];
      LODWORD(v137) = 1;
      goto LABEL_19;
    }

    LODWORD(v137) = [isUniquelyReferenced_nonNull_native isCalDav];
  }

  v27 = a3;
  if (([a4 remindersICSDisplayOrderChanged] & 1) == 0 && !v137)
  {
    LODWORD(v137) = 0;
    v28 = v23;
    goto LABEL_20;
  }

LABEL_19:
  v29 = swift_initStackObject();
  *(v29 + 16) = v141;
  *(v29 + 32) = swift_getKeyPath();
  *(v29 + 40) = swift_getKeyPath();
  sub_100271A80(v29);
  v28 = v147;
LABEL_20:
  sub_1003EEC48(v27);
  v30 = &selRef_isEmpty;
  if ([a4 remindersICSDisplayOrderChanged])
  {
    v135 = v28;
    v136 = isUniquelyReferenced_nonNull_native;
    if (qword_1009366B0 != -1)
    {
LABEL_104:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    v32 = sub_100006654(v31, qword_10094EE30);
    v33 = a4;
    *&v141 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v30;
      v38 = swift_slowAlloc();
      *v36 = 138412290;
      v39 = [v33 remObjectID];
      *(v36 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "Some reminders have changes in .icsDisplayOrder so ICS display orders is taking precedence as the true sort hint - {list: %@}", v36, 0xCu);
      sub_1000050A4(v38, &unk_100938E70, &unk_100797230);
      v30 = v37;
    }

    v40 = [v33 v30[195]];
    if (!v40)
    {

      v44 = v33;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v146[0] = v49;
        *v47 = 138543618;
        v50 = [v44 objectID];
        *(v47 + 4) = v50;
        *v48 = v50;
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_10000668C(0x7265646E696D6572, 0xE900000000000073, v146);
        _os_log_impl(&_mh_execute_header, v45, v46, "REMListStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.reminderIDsMergeableOrdering is nil {objectID: %{public}@, key: %{public}s}", v47, 0x16u);
        sub_1000050A4(v48, &unk_100938E70, &unk_100797230);

        sub_10000607C(v49);
      }

      v51 = objc_opt_self();
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v53 = String._bridgeToObjectiveC()();
      [v51 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v53];

      swift_willThrow();
      return;
    }

    v41 = v40;
    v42 = sub_1006AA380(v40, v134);
    if (v142)
    {

      return;
    }

    v61 = v43;
    if (v42)
    {
      v62 = [v33 resolutionTokenMap];
      if (!v62)
      {

        v66 = v33;
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *&v146[0] = v71;
          *v69 = 138543618;
          v72 = [v66 objectID];
          *(v69 + 4) = v72;
          *v70 = v72;
          *(v69 + 12) = 2082;
          *(v69 + 14) = sub_10000668C(0x7265646E696D6572, 0xE900000000000073, v146);
          _os_log_impl(&_mh_execute_header, v67, v68, "REMListStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v69, 0x16u);
          sub_1000050A4(v70, &unk_100938E70, &unk_100797230);

          sub_10000607C(v71);
        }

        v73 = objc_opt_self();
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        v74 = swift_getObjCClassFromMetadata();
        v75 = String._bridgeToObjectiveC()();
        [v73 unexpectedNilPropertyWithClass:v74 property:v75];

        swift_willThrow();
        return;
      }

      v63 = v62;
      sub_1006942C0(24);
      v64 = v61;
      v65 = String._bridgeToObjectiveC()();

      [v63 updateForKey:v65];

      v61 = v64;
      [v33 setReminderIDsMergeableOrdering:v64];
      if ([v134 firstObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v144 = 0u;
        v145 = 0u;
      }

      v146[0] = v144;
      v146[1] = v145;
      if (*(&v145 + 1))
      {
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        if (swift_dynamicCast())
        {
          v76 = [v143 list];
          if (v76)
          {
            v77 = v76;
            *&v141 = v143;
            isUniquelyReferenced_nonNull_native = v63;
            sub_100674D80(v33, v76, &off_1008E32A8, a5);
            goto LABEL_101;
          }

          v78 = v63;
        }

        else
        {
          v78 = v63;
        }
      }

      else
      {
        v78 = v63;
        sub_1000050A4(v146, &qword_100939ED0, &qword_100791B10);
      }

      v77 = Logger.logObject.getter();
      v83 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v77, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v77, v83, "Cannot get any REMCDList from the ordered set of reminders in the list.", v84, 2u);
      }

      v28 = v135;
      isUniquelyReferenced_nonNull_native = v78;
LABEL_53:

      v30 = &selRef_isEmpty;
    }

    else
    {
      v28 = v135;
    }

    [v33 setRemindersICSDisplayOrderChanged:0, v131, v132];

    isUniquelyReferenced_nonNull_native = v136;
  }

  v85 = [a4 v30[195]];
  if (v85)
  {
    v133 = v85;
    v135 = v28;
    v86 = [a4 reminderIDsOrderingHints];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v87 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v136 = isUniquelyReferenced_nonNull_native;
    if ((v87 & 0xC000000000000001) != 0)
    {
      a4 = 0;
      v88 = 0;
      v89 = 0;
      v77 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v102 = -1 << *(v87 + 32);
      v88 = ~v102;
      a4 = (v87 + 64);
      v103 = -v102;
      if (v103 < 64)
      {
        v104 = ~(-1 << v103);
      }

      else
      {
        v104 = -1;
      }

      v89 = v104 & *(v87 + 64);
      v77 = v87;
    }

    v132 = v87;

    v41 = 0;
    v131 = v88;
    v61 = ((v88 + 64) >> 6);
    v33 = _swiftEmptyDictionarySingleton;
    v140 = v77;
    v139 = v61;
    v138 = a4;
    while (1)
    {
      if ((v77 & 0x8000000000000000) != 0)
      {
        if (!__CocoaDictionary.Iterator.next()())
        {
          goto LABEL_90;
        }

        v112 = v111;
        swift_dynamicCast();
        v109 = *&v146[0];
        *&v144 = v112;
        swift_dynamicCast();
        v110 = *&v146[0];
        a5 = v41;
        *&v141 = v89;
        if (!v109)
        {
LABEL_90:
          sub_10001B860();

          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v125 = type metadata accessor for Logger();
          sub_100006654(v125, qword_10094EE30);

          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.debug.getter();
          v128 = v136;
          if (os_log_type_enabled(v126, v127))
          {
            v129 = swift_slowAlloc();
            *v129 = 134217984;
            *(v129 + 4) = v33[2];

            _os_log_impl(&_mh_execute_header, v126, v127, "REMListStorageCDIngestor:mutateOrdering - number of reminderIDsOrderingHints {count: %ld}", v129, 0xCu);
          }

          else
          {
          }

          v130 = v33[2].isa;
          if (v130 == 1)
          {
            sub_1001006A4(v134, v33);
          }

          sub_1000FE93C(v134, v130 == 1);
          if (v137)
          {
            sub_1006AA6EC();
          }

          return;
        }
      }

      else
      {
        v105 = v41;
        v106 = v89;
        a5 = v41;
        if (!v89)
        {
          while (1)
          {
            a5 = (v105 + 1);
            if (__OFADD__(v105, 1))
            {
              break;
            }

            if (a5 >= v61)
            {
              goto LABEL_90;
            }

            v106 = *(a4 + a5);
            ++v105;
            if (v106)
            {
              goto LABEL_75;
            }
          }

          __break(1u);
LABEL_101:

          v28 = v135;
          goto LABEL_53;
        }

LABEL_75:
        *&v141 = (v106 - 1) & v106;
        v107 = (a5 << 9) | (8 * __clz(__rbit64(v106)));
        v108 = *(*(v77 + 56) + v107);
        v109 = *(*(v77 + 48) + v107);
        v110 = v108;
        if (!v109)
        {
          goto LABEL_90;
        }
      }

      v113 = v109;
      v30 = v110;
      a4 = [(SEL *)v110 integerValue:v131];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v146[0] = v33;
      v115 = sub_10002B924(v113);
      v116 = v33[2].isa;
      v117 = (v114 & 1) == 0;
      v118 = v116 + v117;
      if (__OFADD__(v116, v117))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v119 = v114;
      if (v33[3].isa >= v118)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v33 = *&v146[0];
          if (v114)
          {
            goto LABEL_68;
          }
        }

        else
        {
          sub_100376430();
          v33 = *&v146[0];
          if (v119)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        sub_10036FD64(v118, isUniquelyReferenced_nonNull_native);
        v120 = sub_10002B924(v113);
        if ((v119 & 1) != (v121 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v115 = v120;
        v33 = *&v146[0];
        if (v119)
        {
LABEL_68:
          *(v33[7].isa + v115) = a4;

          goto LABEL_69;
        }
      }

      v33[(v115 >> 6) + 8].isa = (v33[(v115 >> 6) + 8].isa | (1 << v115));
      *(v33[6].isa + v115) = v113;
      *(v33[7].isa + v115) = a4;

      v122 = v33[2].isa;
      v123 = __OFADD__(v122, 1);
      v124 = (v122 + 1);
      if (v123)
      {
        goto LABEL_103;
      }

      v33[2].isa = v124;
LABEL_69:
      v41 = a5;
      v89 = v141;
      a4 = v138;
      v77 = v140;
      v61 = v139;
    }
  }

  v90 = isUniquelyReferenced_nonNull_native;

  if (qword_1009366B0 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_100006654(v91, qword_10094EE30);
  v92 = a4;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v146[0] = v97;
    *v95 = 138543618;
    v98 = [v92 objectID];
    *(v95 + 4) = v98;
    *v96 = v98;
    *(v95 + 12) = 2082;
    *(v95 + 14) = sub_10000668C(0x7265646E696D6572, 0xE900000000000073, v146);
    _os_log_impl(&_mh_execute_header, v93, v94, "REMListStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.reminderIDsMergeableOrdering is nil {objectID: %{public}@, key: %{public}s}", v95, 0x16u);
    sub_1000050A4(v96, &unk_100938E70, &unk_100797230);

    sub_10000607C(v97);
  }

  v99 = objc_opt_self();
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  v100 = swift_getObjCClassFromMetadata();
  v101 = String._bridgeToObjectiveC()();
  [v99 unexpectedNilPropertyWithClass:v100 property:v101];

  swift_willThrow();
}

uint64_t sub_10067AC38(uint64_t a1, uint64_t a2)
{
  sub_100005EF0(a1, v7);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_100005EF0(a2, v7);
  if (swift_dynamicCast())
  {
    v3 = [v6 displayOrder];
    v4 = [v6 displayOrder];

    if (v3 == v4)
    {
      return 0;
    }

    if (v3 < v4)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10067AD6C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_10021CDBC(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = sub_1002C8398(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10067AE04(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036CAA8(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
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
  sub_10037477C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
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
      v28 = sub_100393C74(v9);
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
        sub_10036CAA8(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067B184(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036CAD0(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093A920, &unk_100797F40);
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
  sub_1003747A4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&qword_10093A920, &unk_100797F40);
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
      v28 = sub_100393C74(v9);
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
        sub_10036CAD0(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067B504(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036CE54(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943860, &unk_100797FC0);
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
  sub_100374A1C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100943860, &unk_100797FC0);
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
      v28 = sub_100393C74(v9);
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
        sub_10036CE54(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067B884(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036D7D4(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093A958, &qword_100797F70);
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
  sub_100374FC4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&qword_10093A958, &qword_100797F70);
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
      v28 = sub_100393C74(v9);
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
        sub_10036D7D4(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067BC04(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036DAB4(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10094F7F0, &unk_100798000);
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
  sub_10037517C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&qword_10094F7F0, &unk_100798000);
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
      v28 = sub_100393C74(v9);
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
        sub_10036DAB4(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067BF84(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036DAC8(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
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
  sub_100375190();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
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
      v28 = sub_100393C74(v9);
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
        sub_10036DAC8(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067C304(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036DADC(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
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
  sub_1003751A4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
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
      v28 = sub_100393C74(v9);
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
        sub_10036DADC(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067C684(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036DAF0(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
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
  sub_1003751B8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
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
      v28 = sub_100393C74(v9);
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
        sub_10036DAF0(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067CA04(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036E024(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943720, &unk_1007A4020);
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
  sub_1003754D0();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100943720, &unk_1007A4020);
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
      v28 = sub_100393C74(v9);
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
        sub_10036E024(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067CD84(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036E038(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943760, &unk_100797FA0);
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
  sub_1003754E4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100943760, &unk_100797FA0);
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
      v28 = sub_100393C74(v9);
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
        sub_10036E038(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067D104(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036E04C(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
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
  sub_1003754F8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
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
      v28 = sub_100393C74(v9);
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
        sub_10036E04C(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067D484(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036E060(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
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
  sub_10037550C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
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
      v28 = sub_100393C74(v9);
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
        sub_10036E060(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067D804(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036E074(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943820, &unk_1007A4100);
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
  sub_100375520();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100943820, &unk_1007A4100);
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
      v28 = sub_100393C74(v9);
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
        sub_10036E074(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067DB84(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036E088(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
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
  sub_100375534();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
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
      v28 = sub_100393C74(v9);
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
        sub_10036E088(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067DF04(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036FA80(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943950, &unk_1007A4200);
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
  sub_100376284();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100943950, &unk_1007A4200);
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
      v28 = sub_100393C74(v9);
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
        sub_10036FA80(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067E284(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036FA94(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943260, &qword_100797F38);
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
  sub_100376298();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100943260, &qword_100797F38);
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
      v28 = sub_100393C74(v9);
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
        sub_10036FA94(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067E604(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_10036FAA8(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
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
  sub_1003762AC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
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
      v28 = sub_100393C74(v9);
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
        sub_10036FAA8(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067E984(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372774(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100944000, &unk_100798010);
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
  sub_100377D18();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100944000, &unk_100798010);
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
      v28 = sub_100393C74(v9);
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
        sub_100372774(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067ED04(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372BA0(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009433D0, &unk_100797F50);
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
  sub_10037812C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_1009433D0, &unk_100797F50);
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
      v28 = sub_100393C74(v9);
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
        sub_100372BA0(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067F084(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372BB4(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
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
  sub_100378140();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
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
      v28 = sub_100393C74(v9);
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
        sub_100372BB4(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067F404(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372BC8(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_100943470, &unk_100797F60);
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
  sub_100378154();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_100943470, &unk_100797F60);
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
      v28 = sub_100393C74(v9);
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
        sub_100372BC8(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067F784(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372BDC(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
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
  sub_100378168();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
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
      v28 = sub_100393C74(v9);
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
        sub_100372BDC(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067FB04(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372BF0(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&qword_10094F310, &qword_100797F78);
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
  sub_10037817C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&qword_10094F310, &qword_100797F78);
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
      v28 = sub_100393C74(v9);
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
        sub_100372BF0(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_10067FE84(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372C04(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_10094F390, &unk_100797F80);
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
  sub_100378190();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_10094F390, &unk_100797F80);
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
      v28 = sub_100393C74(v9);
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
        sub_100372C04(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_100680204(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372C18(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_1009436D0, &unk_100797F90);
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
  sub_1003781A4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_1009436D0, &unk_100797F90);
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
      v28 = sub_100393C74(v9);
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
        sub_100372C18(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_100680584(uint64_t a1, char a2, void *a3)
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
  v11 = sub_100393C74(v9);
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
    sub_100372C2C(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_100393C74(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1000F5104(&unk_10094F300, &unk_100797FD0);
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
  sub_1003781B8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
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
    v38._object = 0x80000001007F8340;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_1000F5104(&unk_10094F300, &unk_100797FD0);
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
      v28 = sub_100393C74(v9);
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
        sub_100372C2C(v32, 1);
        v33 = *a3;
        v28 = sub_100393C74(v9);
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

uint64_t sub_100680904(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F568, &qword_1007B5098);
  sub_10000CB48(&qword_10094F570, &unk_10094F578, &qword_1007B50A0);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100680A94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F2E8, &qword_1007B4EA8);
  sub_10000CB48(&qword_10094F2F0, &qword_10094F2F8, &unk_1007B4EB0);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100680C24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F800, &qword_1007B51F0);
  sub_10000CB48(&qword_10094F808, &qword_10094F810, &qword_1007B51F8);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100680DB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F7B8, &qword_1007B51C8);
  sub_10000CB48(&qword_10094F7C0, &unk_10094F7C8, &qword_1007B51D0);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100680F44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F770, &qword_1007B51A0);
  sub_10000CB48(&qword_10094F778, &unk_10094F780, &qword_1007B51A8);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_1006810D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F720, &qword_1007B5178);
  sub_10000CB48(&qword_10094F728, &unk_10094F730, &qword_1007B5180);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100681264(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F458, &qword_1007B4FD0);
  sub_10000CB48(&qword_10094F460, &unk_10094F468, &qword_1007B4FD8);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_1006813F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&unk_10094F490, &unk_1007B4FF8);
  sub_10000CB48(&unk_1009392F0, &unk_10094F4A0, &qword_100795D70);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100681584(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F130, &unk_1007B4D50);
  sub_10000CB48(&unk_10094F138, &qword_100939210, &qword_100795D18);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100681714(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F190, &qword_1007B4D90);
  sub_10000CB48(&qword_10094F198, &unk_10094F1A0, &unk_1007B4D98);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_1006818A4(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = [*a1 remObjectID];
  v5 = v4;
  if (*(a3 + 16))
  {
    sub_10002B924(v4);
  }

  return 1;
}

id sub_100681908@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 72);
  v8 = [*a1 remObjectID];
  v9 = v8;
  if (*(v7 + 16))
  {
    sub_10002B924(v8);
  }

  *a4 = v6;
  a4[1] = a3;
  return v6;
}

uint64_t sub_100681984(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [*(*a3 + 16) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v17[2] = v15;
  v17[3] = v11;
  v17[1] = v13;
  sub_1000F5104(&qword_10094F840, &qword_1007B5238);
  sub_10000CB48(&unk_10094F848, &qword_10093F5E0, &unk_1007B5240);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

BOOL sub_100681B14(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v5 = a4(*a1, a3);
  if (!v4)
  {
    v7 = *(v5 + 16);

    return v7 != 0;
  }

  return v6;
}

void *sub_100681B60@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  result = a3(*a1, *(a2 + 72));
  if (!v4)
  {
    if (result[2])
    {
      v8 = result;
      result = v6;
      v9 = v8;
    }

    else
    {

      v6 = 0;
      v9 = 0;
    }

    *a4 = v6;
    a4[1] = v9;
  }

  return result;
}

BOOL sub_100681BD0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_100692848(*a1, a3, a4, a5);
  if (!v5)
  {
    v8 = *(v6 + 16);

    return v8 != 0;
  }

  return v7;
}

uint64_t sub_100681C20(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  v4 = [*a1 remObjectID];
  v5 = v4;
  if (*(v3 + 16))
  {
    sub_10002B924(v4);
  }

  return 0;
}

void *sub_100681C84@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_100692848(*a1, *(a2 + 72), &type metadata for REMListStorageCDIngestor.RelationshipKey, sub_1005F3D10);
  if (!v3)
  {
    if (result[2])
    {
      v7 = result;
      result = v5;
      v8 = v7;
    }

    else
    {

      v5 = 0;
      v8 = 0;
    }

    *a3 = v5;
    a3[1] = v8;
  }

  return result;
}

BOOL sub_100681D0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v5 = a4(*a1, *(a3 + 72));
  if (!v4)
  {
    v7 = *(v5 + 16);

    return v7 != 0;
  }

  return v6;
}

id sub_100681D58(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 getTokenForKey:v10];

      if (v11)
      {
        sub_100692C78(v8, &qword_100936390, &qword_100974F30, sub_1005102C0);
        v12 = String._bridgeToObjectiveC()();
        v13 = [v4 getTokenForKey:v12];

        if (!v13 || (v14 = [v13 compare:v11], v13, v14 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v4 setToken:v11 forKey:v7];
        }

        else
        {
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t sub_1006821B0()
{
  v0._rawValue = &off_1008DD6A0;
  result = sub_1005F83FC(v0, type metadata accessor for REMCDSavedAttachment);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008DD6F0;
  result = sub_1005F6E20(v3, type metadata accessor for REMCDSavedAttachment);
  if (result == 2)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x7265646E696D6572;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xEA00000000004449;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x7265646E696D6572 || v6 != 0xEA00000000004449)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (v4)
  {
    v8 = 6911093;
  }

  else
  {
    v8 = 0x44497463656A626FLL;
  }

  if (v4)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v8 == 0x44497463656A626FLL && v9 == 0xE800000000000000)
  {
    goto LABEL_21;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    if (v8 == 6911093 && v9 == 0xE300000000000000)
    {
LABEL_21:
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_1006ABFBC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100682460(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100376284();
      }
    }

    else
    {
      v29 = v44;
      sub_10036FA80(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943950, &unk_1007A4200);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006826D0()
{
  v0._rawValue = &off_1008DEE10;
  result = sub_1005F7EC0(v0, &qword_10093CFE0, off_1008D4190);
  if (result == 2)
  {
    return result;
  }

  v2 = result;
  v3._rawValue = &off_1008DEE60;
  result = sub_1005F65A4(v3, &qword_10093CFE0, off_1008D4190);
  if (result == 4)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = 0x7265646E696D6572;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = 0xEA00000000004449;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v5 == 0x49746E756F636361 && v6 == 0xE900000000000044)
  {
LABEL_11:

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v5 != 0x7265646E696D6572 || v6 != 0xEA00000000004449)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v8 = 0x44497463656A626FLL;
  if (v4 <= 1u && !v4)
  {
LABEL_23:
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    if (v4 > 1u)
    {
      v11 = 0xE400000000000000;
      if (v4 == 2)
      {
        v12 = 1701667182;
      }

      else
      {
        v12 = 1701869940;
      }
    }

    else if (v4)
    {
      v12 = 0x6E6F697461657263;
      v11 = 0xEC00000065746144;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x44497463656A626FLL;
    }

    if (v12 == 0x6E6F697461657263 && v11 == 0xEC00000065746144)
    {
      goto LABEL_23;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      if (v4 > 1u)
      {
        v14 = 0xE400000000000000;
        if (v4 == 2)
        {
          v15 = 1701667182;
        }

        else
        {
          v15 = 1701869940;
        }
      }

      else if (v4)
      {
        v15 = 0x6E6F697461657263;
        v14 = 0xEC00000065746144;
      }

      else
      {
        v14 = 0xE800000000000000;
        v15 = 0x44497463656A626FLL;
      }

      if (v15 == 1701667182 && v14 == 0xE400000000000000)
      {
        goto LABEL_23;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        if (v4 > 1u)
        {
          v17 = 0xE400000000000000;
          if (v4 == 2)
          {
            v8 = 1701667182;
          }

          else
          {
            v8 = 1701869940;
          }
        }

        else if (v4)
        {
          v8 = 0x6E6F697461657263;
          v17 = 0xEC00000065746144;
        }

        else
        {
          v17 = 0xE800000000000000;
        }

        if (v8 == 1701869940 && v17 == 0xE400000000000000)
        {
          goto LABEL_23;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          sub_1006ABFBC();
          swift_allocError();
          return swift_willThrow();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100682CAC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2A)
  {
    return 42;
  }

  else
  {
    return v0;
  }
}

void sub_100682D00(char a1, void *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    v13 = *a4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v21 = 136315650;
        if (a1)
        {
          v22 = 0x44496D72616C61;
        }

        else
        {
          v22 = 0x49746E756F636361;
        }

        if (a1)
        {
          v23 = 0xE700000000000000;
        }

        else
        {
          v23 = 0xE900000000000044;
        }

        v24 = sub_10000668C(v22, v23, &v77);
        v79 = v19;
        v25 = v24;

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v26 = [swift_getObjCClassFromMetadata() description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v17;
        v30 = v29;

        v31 = sub_10000668C(v27, v30, &v77);

        *(v21 + 14) = v31;
        *(v21 + 22) = 2080;
        v32 = [v28 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = v33;
        v17 = v28;
        v37 = sub_10000668C(v36, v35, &v77);
        v20 = &selRef_accountStatusWithCompletionHandler_;

        *(v21 + 24) = v37;
        _os_log_impl(&_mh_execute_header, v18, v79, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      v38 = objc_opt_self();
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v39._countAndFlagsBits = 0xD000000000000029;
      v39._object = 0x80000001007FE3C0;
      String.append(_:)(v39);
      v80 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v40._object = 0x80000001007FE3F0;
      v40._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v40);
      sub_1000060C8(0, a5, a4);
      v41 = [swift_getObjCClassFromMetadata() v20[332]];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45._countAndFlagsBits = v42;
      v45._object = v44;
      String.append(_:)(v45);

      v46._object = 0xE900000000000020;
      v46._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v46);
      v47 = [v17 v20[332]];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51._countAndFlagsBits = v48;
      v51._object = v50;
      String.append(_:)(v51);

      v52._countAndFlagsBits = 125;
      v52._object = 0xE100000000000000;
      String.append(_:)(v52);
      v53 = String._bridgeToObjectiveC()();

      [v38 internalErrorWithDebugDescription:v53];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_100946C50);
    v55 = a2;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v58 = 136315394;
      if (a1)
      {
        v59 = 0x44496D72616C61;
      }

      else
      {
        v59 = 0x49746E756F636361;
      }

      if (a1)
      {
        v60 = 0xE700000000000000;
      }

      else
      {
        v60 = 0xE900000000000044;
      }

      v61 = sub_10000668C(v59, v60, &v77);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      v62 = [v55 description];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_10000668C(v63, v65, &v77);

      *(v58 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "Missing relationship {key: %s, objectID: %s}", v58, 0x16u);
      swift_arrayDestroy();
    }

    v67 = objc_opt_self();
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v68._countAndFlagsBits = 0xD00000000000001BLL;
    v68._object = 0x80000001007FE3A0;
    String.append(_:)(v68);
    v80 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v69._countAndFlagsBits = 0x7463656A626F202CLL;
    v69._object = 0xEC000000203A4449;
    String.append(_:)(v69);
    v70 = [v55 description];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74._countAndFlagsBits = v71;
    v74._object = v73;
    String.append(_:)(v74);

    v75._countAndFlagsBits = 125;
    v75._object = 0xE100000000000000;
    String.append(_:)(v75);
    v76 = String._bridgeToObjectiveC()();

    [v67 internalErrorWithDebugDescription:v76];

    swift_willThrow();
  }
}

void sub_100683460(void *a1, char a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v40[3] = sub_1000060C8(0, a4, a5);
  v40[0] = a1;
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v10 = a1;
  throwingCast<A>(_:as:failureMessage:)();
  if (v6)
  {
    sub_10000607C(v40);
  }

  else
  {
    sub_10000607C(v40);
    v11 = v41;
    if (a2)
    {
      sub_100682D00(1, *(v5 + 24), a3, off_1008D4128, &unk_100938870);
      v17 = v12;
      [v11 setAlarm:v17];
      [swift_dynamicCastObjCProtocolUnconditional() generateNonce];
      v19 = v18;
      if (qword_100935B88 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_10093BB50);
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      v21 = v11;
      v22 = v17;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v40[0] = swift_slowAlloc();
        *v25 = 68158466;
        *(v25 + 4) = 2;
        *(v25 + 8) = 2050;
        *(v25 + 10) = v19;
        *(v25 + 18) = 2082;
        v26 = [v22 remObjectID];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 description];

          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
        }

        else
        {
          v31 = 0xE300000000000000;
          v29 = 7104878;
        }

        v32 = sub_10000668C(v29, v31, v40);

        *(v25 + 20) = v32;
        *(v25 + 28) = 2082;
        v33 = [v21 remObjectID];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 description];

          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;
        }

        else
        {
          v38 = 0xE300000000000000;
          v36 = 7104878;
        }

        v39 = sub_10000668C(v36, v38, v40);

        *(v25 + 30) = v39;
        _os_log_impl(&_mh_execute_header, v23, v24, "REMAlarmTriggerCDIngestor.establishRelationship: Setting alarm.dueDateResolutionTokenAsNonce {nonce: %{public}.*f, alarmID: %{public}s, triggerID: %{public}s}", v25, 0x26u);
        swift_arrayDestroy();
      }

      [v22 setDueDateResolutionTokenAsNonce:v19];
    }

    else
    {
      v13 = *(v5 + 16);
      v14 = v41;
      sub_100682D00(0, v13, a3, off_1008D4120, &qword_1009399F0);
      v16 = v15;
      [v14 setAccount:v16];
    }
  }
}

void sub_100683884(void *a1, char a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v41[3] = sub_1000060C8(0, a4, a5);
  v41[0] = a1;
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v10 = a1;
  throwingCast<A>(_:as:failureMessage:)();
  if (v6)
  {
    sub_10000607C(v41);
  }

  else
  {
    sub_10000607C(v41);
    v11 = v42;
    if (a2)
    {
      sub_100682D00(1, *(v5 + 24), a3, off_1008D4128, &unk_100938870);
      v17 = v12;
      [v11 setAlarm:v17];
      v18 = swift_dynamicCastObjCProtocolConditional();
      if (v18)
      {
        [v18 generateNonce];
        v20 = v19;
      }

      else
      {
        v20 = kREMNonceUnset;
      }

      if (qword_100935B88 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_10093BB50);
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      v22 = v11;
      v23 = v17;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v41[0] = swift_slowAlloc();
        *v26 = 68158466;
        *(v26 + 4) = 2;
        *(v26 + 8) = 2050;
        *(v26 + 10) = v20;
        *(v26 + 18) = 2082;
        v27 = [v23 remObjectID];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 description];

          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;
        }

        else
        {
          v32 = 0xE300000000000000;
          v30 = 7104878;
        }

        v33 = sub_10000668C(v30, v32, v41);

        *(v26 + 20) = v33;
        *(v26 + 28) = 2082;
        v34 = [v22 remObjectID];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 description];

          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;
        }

        else
        {
          v39 = 0xE300000000000000;
          v37 = 7104878;
        }

        v40 = sub_10000668C(v37, v39, v41);

        *(v26 + 30) = v40;
        _os_log_impl(&_mh_execute_header, v24, v25, "REMAlarmTriggerCDIngestor.establishRelationship: Setting alarm.dueDateResolutionTokenAsNonce {nonce: %{public}.*f, alarmID: %{public}s, triggerID: %{public}s}", v26, 0x26u);
        swift_arrayDestroy();
      }

      [v23 setDueDateResolutionTokenAsNonce:v20];
    }

    else
    {
      v13 = *(v5 + 16);
      v14 = v42;
      sub_100682D00(0, v13, a3, off_1008D4120, &qword_1009399F0);
      v16 = v15;
      [v14 setAccount:v16];
    }
  }
}

void sub_100683CB0(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDSavedReminder();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946C50);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      v15 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          v17 = 0x7265646E696D6572;
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        if (a1)
        {
          v18 = 0xEA00000000004449;
        }

        else
        {
          v18 = 0xE900000000000044;
        }

        v19 = sub_10000668C(v17, v18, &v69);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v20 = [swift_getObjCClassFromMetadata() description];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = sub_10000668C(v21, v23, &v69);

        *(v16 + 14) = v24;
        *(v16 + 22) = 2080;
        v25 = [v12 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = sub_10000668C(v26, v28, &v69);
        v15 = &selRef_accountStatusWithCompletionHandler_;

        *(v16 + 24) = v29;
        _os_log_impl(&_mh_execute_header, v13, v14, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      v30 = objc_opt_self();
      v69 = 0;
      v70 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v31._countAndFlagsBits = 0xD000000000000029;
      v31._object = 0x80000001007FE3C0;
      String.append(_:)(v31);
      v71 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v32._object = 0x80000001007FE3F0;
      v32._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v32);
      v33 = [swift_getObjCClassFromMetadata() v15[332]];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);

      v38._object = 0xE900000000000020;
      v38._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v38);
      v39 = [v12 v15[332]];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44._countAndFlagsBits = 125;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v45 = String._bridgeToObjectiveC()();

      [v30 internalErrorWithDebugDescription:v45];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_100946C50);
    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v50 = 136315394;
      if (a1)
      {
        v51 = 0x7265646E696D6572;
      }

      else
      {
        v51 = 0x49746E756F636361;
      }

      if (a1)
      {
        v52 = 0xEA00000000004449;
      }

      else
      {
        v52 = 0xE900000000000044;
      }

      v53 = sub_10000668C(v51, v52, &v69);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v54 = [v47 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_10000668C(v55, v57, &v69);

      *(v50 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "Missing relationship {key: %s, objectID: %s}", v50, 0x16u);
      swift_arrayDestroy();
    }

    v59 = objc_opt_self();
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x80000001007FE3A0;
    String.append(_:)(v60);
    v71 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v61._countAndFlagsBits = 0x7463656A626F202CLL;
    v61._object = 0xEC000000203A4449;
    String.append(_:)(v61);
    v62 = [v47 description];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = 125;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    v68 = String._bridgeToObjectiveC()();

    [v59 internalErrorWithDebugDescription:v68];

    swift_willThrow();
  }
}

void sub_1006843F8(char a1, void *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  if (*(a3 + 16) && (v10 = sub_10002B924(a2), (v11 & 1) != 0))
  {
    v12 = *(*(a3 + 56) + 16 * v10);
    v13 = *a4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = qword_100936128;
      v15 = v12;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100946C50);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      v20 = &selRef_accountStatusWithCompletionHandler_;
      if (os_log_type_enabled(v18, v19))
      {
        v78 = v19;
        v21 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v21 = 136315650;
        if (a1)
        {
          v22 = 0x7265646E696D6572;
        }

        else
        {
          v22 = 0x49746E756F636361;
        }

        if (a1)
        {
          v23 = 0xEA00000000004449;
        }

        else
        {
          v23 = 0xE900000000000044;
        }

        v75 = v17;
        v24 = sub_10000668C(v22, v23, &v76);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        sub_1000060C8(0, a5, a4);
        v25 = [swift_getObjCClassFromMetadata() description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = sub_10000668C(v26, v28, &v76);

        *(v21 + 14) = v29;
        *(v21 + 22) = 2080;
        v30 = [v75 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_10000668C(v31, v33, &v76);
        v17 = v75;

        *(v21 + 24) = v34;
        v20 = &selRef_accountStatusWithCompletionHandler_;
        _os_log_impl(&_mh_execute_header, v18, v78, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v21, 0x20u);
        swift_arrayDestroy();
      }

      v35 = objc_opt_self();
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v36._countAndFlagsBits = 0xD000000000000029;
      v36._object = 0x80000001007FE3C0;
      String.append(_:)(v36);
      v79 = a1 & 1;
      _print_unlocked<A, B>(_:_:)();
      v37._object = 0x80000001007FE3F0;
      v37._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v37);
      sub_1000060C8(0, a5, a4);
      v38 = [swift_getObjCClassFromMetadata() v20[332]];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v20;
      v42 = v41;

      v43._countAndFlagsBits = v39;
      v43._object = v42;
      String.append(_:)(v43);

      v44._object = 0xE900000000000020;
      v44._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v44);
      v45 = [v17 v40[332]];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49._countAndFlagsBits = v46;
      v49._object = v48;
      String.append(_:)(v49);

      v50._countAndFlagsBits = 125;
      v50._object = 0xE100000000000000;
      String.append(_:)(v50);
      v51 = String._bridgeToObjectiveC()();

      [v35 internalErrorWithDebugDescription:v51];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100946C50);
    v53 = a2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v56 = 136315394;
      if (a1)
      {
        v57 = 0x7265646E696D6572;
      }

      else
      {
        v57 = 0x49746E756F636361;
      }

      if (a1)
      {
        v58 = 0xEA00000000004449;
      }

      else
      {
        v58 = 0xE900000000000044;
      }

      v59 = sub_10000668C(v57, v58, &v76);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v60 = [v53 description];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = sub_10000668C(v61, v63, &v76);

      *(v56 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "Missing relationship {key: %s, objectID: %s}", v56, 0x16u);
      swift_arrayDestroy();
    }

    v65 = objc_opt_self();
    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v66._countAndFlagsBits = 0xD00000000000001BLL;
    v66._object = 0x80000001007FE3A0;
    String.append(_:)(v66);
    v79 = a1 & 1;
    _print_unlocked<A, B>(_:_:)();
    v67._countAndFlagsBits = 0x7463656A626F202CLL;
    v67._object = 0xEC000000203A4449;
    String.append(_:)(v67);
    v68 = [v53 description];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72._countAndFlagsBits = v69;
    v72._object = v71;
    String.append(_:)(v72);

    v73._countAndFlagsBits = 125;
    v73._object = 0xE100000000000000;
    String.append(_:)(v73);
    v74 = String._bridgeToObjectiveC()();

    [v65 internalErrorWithDebugDescription:v74];

    swift_willThrow();
  }
}

void sub_100684B84(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = 0xE900000000000044;
      v12 = type metadata accessor for Logger();
      sub_100006654(v12, qword_100946C50);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          if (a1 == 1)
          {
            v17 = 0x6341746E65726170;
          }

          else
          {
            v17 = 0xD000000000000014;
          }

          if (a1 == 1)
          {
            v11 = 0xEF4449746E756F63;
          }

          else
          {
            v11 = 0x80000001007E9FD0;
          }
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        v41 = sub_10000668C(v17, v11, &v68);

        *(v16 + 4) = v41;
        *(v16 + 12) = 2080;
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        v42 = [swift_getObjCClassFromMetadata() description];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = sub_10000668C(v43, v45, &v68);

        *(v16 + 14) = v46;
        *(v16 + 22) = 2080;
        v47 = [v13 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = sub_10000668C(v48, v50, &v68);

        *(v16 + 24) = v51;
        _os_log_impl(&_mh_execute_header, v14, v15, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v52 = objc_opt_self();
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v53._countAndFlagsBits = 0xD000000000000029;
      v53._object = 0x80000001007FE3C0;
      String.append(_:)(v53);
      v70 = a1;
      _print_unlocked<A, B>(_:_:)();
      v54._countAndFlagsBits = 0xD000000000000010;
      v54._object = 0x80000001007FE3F0;
      String.append(_:)(v54);
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v55 = [swift_getObjCClassFromMetadata() description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);

      v60._object = 0xE900000000000020;
      v60._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v60);
      v61 = [v13 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65._countAndFlagsBits = v62;
      v65._object = v64;
      String.append(_:)(v65);

      v66._countAndFlagsBits = 125;
      v66._object = 0xE100000000000000;
      String.append(_:)(v66);
      v67 = String._bridgeToObjectiveC()();

      [v52 internalErrorWithDebugDescription:v67];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100946C50);
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v22 = 136315394;
      if (a1)
      {
        if (a1 == 1)
        {
          v23 = 0x6341746E65726170;
        }

        else
        {
          v23 = 0xD000000000000014;
        }

        if (a1 == 1)
        {
          v24 = 0xEF4449746E756F63;
        }

        else
        {
          v24 = 0x80000001007E9FD0;
        }
      }

      else
      {
        v23 = 0x49746E756F636361;
        v24 = 0xE900000000000044;
      }

      v25 = sub_10000668C(v23, v24, &v68);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = [v19 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10000668C(v27, v29, &v68);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing relationship {key: %s, objectID: %s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = objc_opt_self();
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v32._countAndFlagsBits = 0xD00000000000001BLL;
    v32._object = 0x80000001007FE3A0;
    String.append(_:)(v32);
    v70 = a1;
    _print_unlocked<A, B>(_:_:)();
    v33._countAndFlagsBits = 0x7463656A626F202CLL;
    v33._object = 0xEC000000203A4449;
    String.append(_:)(v33);
    v34 = [v19 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 125;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    v40 = String._bridgeToObjectiveC()();

    [v31 internalErrorWithDebugDescription:v40];

    swift_willThrow();
  }
}

void sub_10068533C(char a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_10002B924(a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 16 * v6);
    type metadata accessor for REMCDTemplateSection();
    if (!swift_dynamicCastClass())
    {
      v9 = qword_100936128;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = 0xE900000000000044;
      v12 = type metadata accessor for Logger();
      sub_100006654(v12, qword_100946C50);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v70 = v15;
        v16 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v16 = 136315650;
        if (a1)
        {
          if (a1 == 1)
          {
            v17 = 0x6341746E65726170;
          }

          else
          {
            v17 = 0xD000000000000014;
          }

          if (a1 == 1)
          {
            v11 = 0xEF4449746E756F63;
          }

          else
          {
            v11 = 0x80000001007E9FD0;
          }
        }

        else
        {
          v17 = 0x49746E756F636361;
        }

        v41 = sub_10000668C(v17, v11, &v68);

        *(v16 + 4) = v41;
        *(v16 + 12) = 2080;
        v42 = [swift_getObjCClassFromMetadata() description];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = sub_10000668C(v43, v45, &v68);

        *(v16 + 14) = v46;
        *(v16 + 22) = 2080;
        v47 = [v13 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = sub_10000668C(v48, v50, &v68);

        *(v16 + 24) = v51;
        _os_log_impl(&_mh_execute_header, v14, v70, "Mismatching class for relationship {key: %s, expectedType: %s, found: %s}", v16, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v52 = objc_opt_self();
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v53._countAndFlagsBits = 0xD000000000000029;
      v53._object = 0x80000001007FE3C0;
      String.append(_:)(v53);
      v71 = a1;
      _print_unlocked<A, B>(_:_:)();
      v54._countAndFlagsBits = 0xD000000000000010;
      v54._object = 0x80000001007FE3F0;
      String.append(_:)(v54);
      v55 = [swift_getObjCClassFromMetadata() description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);

      v60._object = 0xE900000000000020;
      v60._countAndFlagsBits = 0x3A646E756F66202CLL;
      String.append(_:)(v60);
      v61 = [v13 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65._countAndFlagsBits = v62;
      v65._object = v64;
      String.append(_:)(v65);

      v66._countAndFlagsBits = 125;
      v66._object = 0xE100000000000000;
      String.append(_:)(v66);
      v67 = String._bridgeToObjectiveC()();

      [v52 internalErrorWithDebugDescription:v67];

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100946C50);
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v22 = 136315394;
      if (a1)
      {
        if (a1 == 1)
        {
          v23 = 0x6341746E65726170;
        }

        else
        {
          v23 = 0xD000000000000014;
        }

        if (a1 == 1)
        {
          v24 = 0xEF4449746E756F63;
        }

        else
        {
          v24 = 0x80000001007E9FD0;
        }
      }

      else
      {
        v23 = 0x49746E756F636361;
        v24 = 0xE900000000000044;
      }

      v25 = sub_10000668C(v23, v24, &v68);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = [v19 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10000668C(v27, v29, &v68);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing relationship {key: %s, objectID: %s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = objc_opt_self();
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v32._countAndFlagsBits = 0xD00000000000001BLL;
    v32._object = 0x80000001007FE3A0;
    String.append(_:)(v32);
    v71 = a1;
    _print_unlocked<A, B>(_:_:)();
    v33._countAndFlagsBits = 0x7463656A626F202CLL;
    v33._object = 0xEC000000203A4449;
    String.append(_:)(v33);
    v34 = [v19 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 125;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    v40 = String._bridgeToObjectiveC()();

    [v31 internalErrorWithDebugDescription:v40];

    swift_willThrow();
  }
}