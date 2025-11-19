uint64_t sub_10022B1B0(void **a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  v5 = &selRef_reminderID;
  *(v4 + 16) = xmmword_1007953F0;
  if (!v3)
  {
    v5 = &selRef_accountID;
  }

  *(v4 + 32) = [v2 *v5];
  return v4;
}

unint64_t sub_10022B240()
{
  result = qword_10093DD58;
  if (!qword_10093DD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093DD58);
  }

  return result;
}

unint64_t sub_10022B2E0()
{
  result = qword_10093DD70;
  if (!qword_10093DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DD70);
  }

  return result;
}

unint64_t sub_10022B368()
{
  result = qword_10093DD88;
  if (!qword_10093DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DD88);
  }

  return result;
}

uint64_t sub_10022B3BC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093DD90);
  v1 = sub_100006654(v0, qword_10093DD90);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10022B484()
{
  v1 = *(v0 + 24);

  sub_1000536E0(v0 + 40);
  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_10022B558(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x73694C7472616D73;
      break;
    case 3:
      result = 0x53676E6974726F73;
      break;
    case 4:
      result = 0x614464656E6E6970;
      break;
    case 5:
      result = 0x724F6C61756E616DLL;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x726F6C6F63;
      break;
    case 8:
      result = 0x626D456567646162;
      break;
    case 9:
      result = 0x61447265746C6966;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10022B70C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10022B558(*a1);
  v5 = v4;
  if (v3 == sub_10022B558(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10022B794()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10022B558(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10022B7F8()
{
  sub_10022B558(*v0);
  String.hash(into:)();
}

Swift::Int sub_10022B84C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10022B558(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10022B8AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F7F4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10022B8DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10022B558(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10022B908@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F7F4(a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10022B954()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10022BA34()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10022BB00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10022BBDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F840(*a1);
  *a2 = result;
  return result;
}

void sub_10022BC0C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000044;
  v3 = 0x49746E756F636361;
  v4 = 0xEC00000044497473;
  v5 = 0x694C746E65726170;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001007E9FD0;
  }

  if (*v1)
  {
    v3 = 0x6341746E65726170;
    v2 = 0xEF4449746E756F63;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10022BCA8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F840(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10022BCD0()
{
  v1 = 0x49746E756F636361;
  v2 = 0x694C746E65726170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x6341746E65726170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10022BD84@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1940, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10022BDF8@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1978, v3);

  *a2 = v5 != 0;
  return result;
}

void *sub_10022BE60()
{
  result = sub_10022BE80();
  qword_100974C80 = result;
  return result;
}

void *sub_10022BE80()
{
  v0 = 0;
  while (1)
  {
    v4 = *(&off_1008E20F8 + v0 + 32);
    if (v4 > 6)
    {
      if (*(&off_1008E20F8 + v0 + 32) <= 9u)
      {
        v13 = 0x626D456567646162;
        if (v4 != 8)
        {
          v13 = 0x61447265746C6966;
        }

        v14 = 0xEB000000006D656CLL;
        if (v4 != 8)
        {
          v14 = 0xEA00000000006174;
        }

        v11 = v4 == 7 ? 0x726F6C6F63 : v13;
        v12 = v4 == 7 ? 0xE500000000000000 : v14;
      }

      else
      {
        if (v4 - 11 < 3)
        {
          goto LABEL_3;
        }

        v11 = 0xD000000000000017;
        v12 = 0x80000001007E8D40;
      }
    }

    else
    {
      v5 = 0x724F6C61756E616DLL;
      if (v4 != 5)
      {
        v5 = 1701667182;
      }

      v6 = 0xEE00676E69726564;
      if (v4 != 5)
      {
        v6 = 0xE400000000000000;
      }

      v7 = 0xEA00000000006574;
      v8 = 0x53676E6974726F73;
      if (v4 == 3)
      {
        v7 = 0xEC000000656C7974;
      }

      else
      {
        v8 = 0x614464656E6E6970;
      }

      if (*(&off_1008E20F8 + v0 + 32) <= 4u)
      {
        v5 = v8;
        v6 = v7;
      }

      v9 = 0xD000000000000017;
      if (v4 != 1)
      {
        v9 = 0x73694C7472616D73;
      }

      v10 = 0xED00006570795474;
      if (v4 == 1)
      {
        v10 = 0x80000001007E8C60;
      }

      if (!*(&off_1008E20F8 + v0 + 32))
      {
        v9 = 0x44497463656A626FLL;
        v10 = 0xE800000000000000;
      }

      v11 = *(&off_1008E20F8 + v0 + 32) <= 2u ? v9 : v5;
      v12 = *(&off_1008E20F8 + v0 + 32) <= 2u ? v10 : v6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_100005F4C(v11, v12);
    v18 = _swiftEmptyDictionarySingleton[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (_swiftEmptyDictionarySingleton[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v16;
        sub_100373664();
        v16 = v28;
        if ((v22 & 1) == 0)
        {
LABEL_45:
          _swiftEmptyDictionarySingleton[(v16 >> 6) + 8] |= 1 << v16;
          v24 = (_swiftEmptyDictionarySingleton[6] + 16 * v16);
          *v24 = v11;
          v24[1] = v12;
          v25 = (_swiftEmptyDictionarySingleton[7] + 16 * v16);
          *v25 = v11;
          v25[1] = v12;
          v26 = _swiftEmptyDictionarySingleton[2];
          v20 = __OFADD__(v26, 1);
          v27 = v26 + 1;
          if (v20)
          {
            goto LABEL_87;
          }

          _swiftEmptyDictionarySingleton[2] = v27;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_10036A8F0(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_100005F4C(v11, v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_88;
      }
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_2:
    v1 = v16;

    v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
    v3 = v2[1];
    *v2 = v11;
    v2[1] = v12;

LABEL_3:
    if (++v0 == 14)
    {
      v29 = 0;
      while (1)
      {
        v33 = &off_1008E2128 + v29++;
        v34 = v33[32];
        v35 = 0x694C746E65726170;
        if (v34 != 2)
        {
          v35 = 0xD000000000000014;
        }

        v36 = 0xEC00000044497473;
        if (v34 != 2)
        {
          v36 = 0x80000001007E9FD0;
        }

        v37 = 0xEA00000000007473;
        if (v34 != 2)
        {
          v37 = 0x80000001007E9FD0;
        }

        v38 = 0x49746E756F636361;
        if (v34)
        {
          v38 = 0x6341746E65726170;
        }

        v39 = 0xEF4449746E756F63;
        if (!v34)
        {
          v39 = 0xE900000000000044;
        }

        v40 = 0xED0000746E756F63;
        if (!v34)
        {
          v40 = 0xE900000000000044;
        }

        if (v34 <= 1)
        {
          v41 = v38;
        }

        else
        {
          v41 = v35;
        }

        if (v34 <= 1)
        {
          v42 = v39;
        }

        else
        {
          v42 = v36;
        }

        if (v34 <= 1)
        {
          v43 = v40;
        }

        else
        {
          v43 = v37;
        }

        v44 = swift_isUniquelyReferenced_nonNull_native();
        v45 = sub_100005F4C(v41, v42);
        v47 = _swiftEmptyDictionarySingleton[2];
        v48 = (v46 & 1) == 0;
        v20 = __OFADD__(v47, v48);
        v49 = v47 + v48;
        if (v20)
        {
          __break(1u);
          goto LABEL_85;
        }

        v50 = v46;
        if (_swiftEmptyDictionarySingleton[3] >= v49)
        {
          if (v44)
          {
            goto LABEL_77;
          }

          v56 = v45;
          sub_100373664();
          v45 = v56;
          if ((v50 & 1) == 0)
          {
            goto LABEL_78;
          }

LABEL_50:
          v30 = v45;

          v31 = (_swiftEmptyDictionarySingleton[7] + 16 * v30);
          v32 = v31[1];
          *v31 = v41;
          v31[1] = v43;

          if (v29 == 4)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          sub_10036A8F0(v49, v44);
          v45 = sub_100005F4C(v41, v42);
          if ((v50 & 1) != (v51 & 1))
          {
            goto LABEL_88;
          }

LABEL_77:
          if (v50)
          {
            goto LABEL_50;
          }

LABEL_78:
          _swiftEmptyDictionarySingleton[(v45 >> 6) + 8] |= 1 << v45;
          v52 = (_swiftEmptyDictionarySingleton[6] + 16 * v45);
          *v52 = v41;
          v52[1] = v42;
          v53 = (_swiftEmptyDictionarySingleton[7] + 16 * v45);
          *v53 = v41;
          v53[1] = v43;
          v54 = _swiftEmptyDictionarySingleton[2];
          v20 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v20)
          {
            goto LABEL_86;
          }

          _swiftEmptyDictionarySingleton[2] = v55;
          if (v29 == 4)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }
      }
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10022C398(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v242 = a4;
  isa = *v5;
  v238 = type metadata accessor for Date();
  v253 = *(v238 - 8);
  v10 = *(v253 + 64);
  __chkstk_darwin(v238);
  v237 = &v232 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for UUID();
  v12 = *(v256 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v256);
  v255 = (&v232 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10022EA04();
  [a1 setParentAccountID:v15];

  v250 = [a2 createResolutionTokenMapIfNecessary];
  v16 = [a1 resolutionTokenMap];
  if (v16)
  {
    v236 = v16;
    v248 = sub_100694F3C(v16, a3);
    if (qword_100935C60 != -1)
    {
      goto LABEL_193;
    }

    while (1)
    {
      v247 = type metadata accessor for Logger();
      v17 = sub_100006654(v247, qword_10093DE68);
      v18 = a1;

      v239 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      v21 = os_log_type_enabled(v19, v20);
      v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      v243 = a2;
      v235 = isa;
      v249 = v18;
      if (v21)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v254 = swift_slowAlloc();
        v259 = v254;
        *v23 = 136446722;
        v25 = [v249 smartListType];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v257 = v12;
        v28 = v27;

        v29 = sub_10000668C(v26, v28, &v259);

        *(v23 + 4) = v29;
        *(v23 + 12) = 2114;
        v30 = [v249 objectID];
        *(v23 + 14) = v30;
        *v24 = v30;
        *(v23 + 22) = 2082;
        v31 = Array.description.getter();
        v33 = sub_10000668C(v31, v32, &v259);

        *(v23 + 24) = v33;
        v12 = v257;
        _os_log_impl(&_mh_execute_header, v19, v20, "Ingesting smart list storage {storage.smartListType: %{public}s, storage.objectID: %{public}@, changedValueKeys: %{public}s}", v23, 0x20u);
        sub_1000050A4(v24, &unk_100938E70, &unk_100797230);
        a2 = v243;

        isa = v254;
        swift_arrayDestroy();

        v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      }

      v257 = *(a3 + 16);
      if (!v257)
      {
        break;
      }

      v35 = 0;
      v36 = a3 + 32;
      v254 = (v12 + 8);
      v232 = "TemplateIdentifier";
      v241 = 0x80000001007E8D40;
      v233 = (v253 + 8);
      v240 = 0x80000001007E8C60;
      *&v34 = 136315138;
      v244 = v34;
      *&v34 = 136446722;
      v234 = v34;
      v37 = &selRef_hack_willSaveHandled;
      v245 = a3 + 32;
      while (2)
      {
        v38 = *(&v35->isa + v36);
        v35 = (v35 + 1);
        switch(v38)
        {
          case 1:
            v253 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v73 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v74 = sub_100005F4C(0xD000000000000017, v240), (v75 & 1) != 0))
            {
              v76 = (*(v73 + 56) + 16 * v74);
              v78 = *v76;
              v77 = v76[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v136 = Logger.logObject.getter();
              v137 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v136, v137))
              {
                v138 = swift_slowAlloc();
                v139 = swift_slowAlloc();
                v259 = v139;
                *v138 = v244;
                *(v138 + 4) = sub_10000668C(0xD000000000000017, v240, &v259);
                _os_log_impl(&_mh_execute_header, v136, v137, "Unknown ingestable key {key: %s}", v138, 0xCu);
                sub_10000607C(v139);

                v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
              }
            }

            v165 = String._bridgeToObjectiveC()();

            isa = [v250 mergeWithMap:v248 forKey:v165];

            if (isa)
            {
              [a2 setMinimumSupportedVersion:{objc_msgSend(v249, "minimumSupportedVersion")}];
            }

            goto LABEL_8;
          case 2:
            v253 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v79 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v80 = sub_100005F4C(0x73694C7472616D73, 0xED00006570795474), (v81 & 1) != 0))
            {
              v82 = (*(v79 + 56) + 16 * v80);
              v84 = *v82;
              v83 = v82[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v140 = Logger.logObject.getter();
              v141 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v140, v141))
              {
                v142 = swift_slowAlloc();
                v143 = swift_slowAlloc();
                v259 = v143;
                *v142 = v244;
                *(v142 + 4) = sub_10000668C(0x73694C7472616D73, 0xED00006570795474, &v259);
                _os_log_impl(&_mh_execute_header, v140, v141, "Unknown ingestable key {key: %s}", v142, 0xCu);
                sub_10000607C(v143);

                v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v36 = v245;
              }

              else
              {
              }
            }

            v166 = String._bridgeToObjectiveC()();

            isa = [v250 mergeWithMap:v248 forKey:v166];

            if ((isa & 1) == 0)
            {
              goto LABEL_8;
            }

            isa = [v249 v22[133]];
            [a2 setSmartListType:{isa, v232}];
            goto LABEL_7;
          case 3:
            v253 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v50 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v51 = sub_100005F4C(0x53676E6974726F73, 0xEC000000656C7974), (v52 & 1) != 0))
            {
              v53 = (*(v50 + 56) + 16 * v51);
              v55 = *v53;
              v54 = v53[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v128 = Logger.logObject.getter();
              v129 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v128, v129))
              {
                v130 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                v259 = v131;
                *v130 = v244;
                *(v130 + 4) = sub_10000668C(0x53676E6974726F73, 0xEC000000656C7974, &v259);
                _os_log_impl(&_mh_execute_header, v128, v129, "Unknown ingestable key {key: %s}", v130, 0xCu);
                sub_10000607C(v131);

                v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v36 = v245;
              }

              else
              {
              }
            }

            v163 = String._bridgeToObjectiveC()();

            isa = [v250 mergeWithMap:v248 forKey:v163];

            if ((isa & 1) == 0)
            {
              goto LABEL_8;
            }

            isa = [v249 sortingStyle];
            [a2 setSortingStyle:{isa, v232}];
            goto LABEL_7;
          case 4:
            v85 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v92 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v93 = sub_100005F4C(0x614464656E6E6970, 0xEA00000000006574), (v94 & 1) != 0))
            {
              v95 = (*(v92 + 56) + 16 * v93);
              v97 = *v95;
              v96 = v95[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v148 = Logger.logObject.getter();
              v149 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v148, v149))
              {
                v150 = swift_slowAlloc();
                v151 = swift_slowAlloc();
                v259 = v151;
                *v150 = v244;
                *(v150 + 4) = sub_10000668C(0x614464656E6E6970, 0xEA00000000006574, &v259);
                _os_log_impl(&_mh_execute_header, v148, v149, "Unknown ingestable key {key: %s}", v150, 0xCu);
                sub_10000607C(v151);
                v36 = v245;
                v152 = v243;

                a2 = v152;
              }

              else
              {
              }

              v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            }

            isa = String._bridgeToObjectiveC()();

            v168 = [v250 mergeWithMap:v248 forKey:isa];

            if ((v168 & 1) == 0)
            {
              goto LABEL_146;
            }

            v169 = [v249 pinnedDate];
            if (v169)
            {
              v170 = v237;
              v171 = v169;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              isa = Date._bridgeToObjectiveC()().super.isa;
              (*v233)(v170, v238);
            }

            else
            {
              isa = 0;
            }

            [a2 setPinnedDate:{isa, v232}];
            goto LABEL_154;
          case 5:
            sub_10022F88C(v249);
            goto LABEL_9;
          case 6:
            v85 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v86 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v87 = sub_100005F4C(1701667182, 0xE400000000000000), (v88 & 1) != 0))
            {
              v89 = (*(v86 + 56) + 16 * v87);
              v91 = *v89;
              v90 = v89[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v144 = Logger.logObject.getter();
              v145 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v144, v145))
              {
                v146 = swift_slowAlloc();
                v147 = swift_slowAlloc();
                v259 = v147;
                *v146 = v244;
                *(v146 + 4) = sub_10000668C(1701667182, 0xE400000000000000, &v259);
                _os_log_impl(&_mh_execute_header, v144, v145, "Unknown ingestable key {key: %s}", v146, 0xCu);
                sub_10000607C(v147);
                v36 = v245;
                a2 = v243;
              }

              v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            }

            isa = String._bridgeToObjectiveC()();

            v167 = [v250 mergeWithMap:v248 forKey:isa];

            if ((v167 & 1) == 0)
            {
              goto LABEL_146;
            }

            isa = [v249 name];
            [a2 setName:{isa, v232}];
            goto LABEL_154;
          case 7:
            v85 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v118 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v119 = sub_100005F4C(0x726F6C6F63, 0xE500000000000000), (v120 & 1) != 0))
            {
              v121 = (*(v118 + 56) + 16 * v119);
              v123 = *v121;
              v122 = v121[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v157 = Logger.logObject.getter();
              v158 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v157, v158))
              {
                v159 = swift_slowAlloc();
                v160 = swift_slowAlloc();
                v259 = v160;
                *v159 = v244;
                *(v159 + 4) = sub_10000668C(0x726F6C6F63, 0xE500000000000000, &v259);
                _os_log_impl(&_mh_execute_header, v157, v158, "Unknown ingestable key {key: %s}", v159, 0xCu);
                sub_10000607C(v160);
                v36 = v245;
                v161 = v243;

                a2 = v161;
              }

              else
              {
              }

              v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            }

            isa = String._bridgeToObjectiveC()();

            v179 = [v250 mergeWithMap:v248 forKey:{isa, v232}];

            if ((v179 & 1) == 0)
            {
              goto LABEL_146;
            }

            isa = [v249 color];
            [a2 setColor:{isa, v232}];
            goto LABEL_154;
          case 8:
            v253 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v67 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v68 = sub_100005F4C(0x626D456567646162, 0xEB000000006D656CLL), (v69 & 1) != 0))
            {
              v70 = (*(v67 + 56) + 16 * v68);
              v72 = *v70;
              v71 = v70[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v132 = Logger.logObject.getter();
              v133 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v132, v133))
              {
                v134 = swift_slowAlloc();
                v135 = swift_slowAlloc();
                v259 = v135;
                *v134 = v244;
                *(v134 + 4) = sub_10000668C(0x626D456567646162, 0xEB000000006D656CLL, &v259);
                _os_log_impl(&_mh_execute_header, v132, v133, "Unknown ingestable key {key: %s}", v134, 0xCu);
                sub_10000607C(v135);

                v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v36 = v245;
              }

              else
              {
              }
            }

            v164 = String._bridgeToObjectiveC()();

            isa = [v250 mergeWithMap:v248 forKey:v164];

            if ((isa & 1) == 0)
            {
              goto LABEL_8;
            }

            isa = [v249 badgeEmblem];
            [a2 setBadgeEmblem:{isa, v232}];
            goto LABEL_7;
          case 9:
            v85 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v112 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v113 = sub_100005F4C(0x61447265746C6966, 0xEA00000000006174), (v114 & 1) != 0))
            {
              v115 = (*(v112 + 56) + 16 * v113);
              v117 = *v115;
              v116 = v115[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v153 = Logger.logObject.getter();
              v154 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v153, v154))
              {
                v155 = swift_slowAlloc();
                v156 = swift_slowAlloc();
                v259 = v156;
                *v155 = v244;
                *(v155 + 4) = sub_10000668C(0x61447265746C6966, 0xEA00000000006174, &v259);
                _os_log_impl(&_mh_execute_header, v153, v154, "Unknown ingestable key {key: %s}", v155, 0xCu);
                sub_10000607C(v156);

                v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

                v36 = v245;
              }

              else
              {
              }
            }

            v172 = String._bridgeToObjectiveC()();

            isa = [v250 mergeWithMap:v248 forKey:v172];

            if (isa)
            {
              v173 = [v249 filterData];
              if (v173)
              {
                v174 = v173;
                v175 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v177 = v176;

                isa = Data._bridgeToObjectiveC()().super.isa;
                v178 = v177;
                v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
                sub_10001BBA0(v175, v178);
              }

              else
              {
                isa = 0;
              }

              [a2 setFilterData:{isa, v232}];
LABEL_154:

              v35 = v85;
            }

            else
            {
LABEL_146:
              v35 = v85;
            }

            goto LABEL_9;
          case 10:
            v253 = v35;
            if (qword_100935C70 != -1)
            {
              swift_once();
            }

            v44 = qword_100974C80;
            if (*(qword_100974C80 + 16) && (v45 = sub_100005F4C(0xD000000000000017, v241), (v46 & 1) != 0))
            {
              v47 = (*(v44 + 56) + 16 * v45);
              v49 = *v47;
              v48 = v47[1];
            }

            else
            {
              if (qword_100936128 != -1)
              {
                swift_once();
              }

              sub_100006654(v247, qword_100946C50);
              v124 = Logger.logObject.getter();
              v125 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v124, v125))
              {
                v126 = swift_slowAlloc();
                v127 = swift_slowAlloc();
                v259 = v127;
                *v126 = v244;
                *(v126 + 4) = sub_10000668C(0xD000000000000017, v241, &v259);
                _os_log_impl(&_mh_execute_header, v124, v125, "Unknown ingestable key {key: %s}", v126, 0xCu);
                sub_10000607C(v127);

                v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
              }
            }

            v162 = String._bridgeToObjectiveC()();

            isa = [v250 mergeWithMap:v248 forKey:v162];

            if (isa)
            {
              [a2 setShowingLargeAttachments:{objc_msgSend(v249, "showingLargeAttachments")}];
            }

            goto LABEL_8;
          case 11:
            goto LABEL_9;
          case 12:
            v253 = v35;
            v56 = [v249 unsavedSectionIDsOrdering];
            if (!v56)
            {
              goto LABEL_8;
            }

            a1 = v56;
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (!(a3 >> 62))
            {
              v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v12)
              {
                goto LABEL_25;
              }

              goto LABEL_156;
            }

            v12 = _CocoaArrayWrapper.endIndex.getter();
            if (!v12)
            {
LABEL_156:
              v180 = objc_allocWithZone(REMOrderedIdentifierMap);
              v181 = Array._bridgeToObjectiveC()().super.isa;
              v182 = [v180 initWithOrderedIdentifiers:v181];

              v259 = v182;
              sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
              v183 = v182;
              v184 = v246;
              v185 = REMJSONRepresentable.toJSONData()();
              if (v184)
              {

                v187 = v249;
                swift_errorRetain();
                isa = Logger.logObject.getter();
                v188 = static os_log_type_t.fault.getter();

                if (os_log_type_enabled(isa, v188))
                {
                  v189 = swift_slowAlloc();
                  v190 = swift_slowAlloc();
                  v258 = swift_slowAlloc();
                  *v189 = v234;
                  v259 = v235;
                  swift_getMetatypeMetadata();
                  v191 = String.init<A>(describing:)();
                  v193 = sub_10000668C(v191, v192, &v258);

                  *(v189 + 4) = v193;
                  *(v189 + 12) = 2114;
                  v194 = [v187 objectID];
                  *(v189 + 14) = v194;
                  *v190 = v194;
                  *(v189 + 22) = 2082;
                  swift_getErrorValue();
                  v195 = Error.rem_errorDescription.getter();
                  v197 = sub_10000668C(v195, v196, &v258);

                  *(v189 + 24) = v197;
                  _os_log_impl(&_mh_execute_header, isa, v188, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedSectionIDsOrdering' into 'cdSmartList' {storage.objectID: %{public}@, error: %{public}s}", v189, 0x20u);
                  sub_1000050A4(v190, &unk_100938E70, &unk_100797230);
                  v37 = &selRef_hack_willSaveHandled;

                  swift_arrayDestroy();
                }

                else
                {
                }

                v246 = 0;
                a2 = v243;
              }

              else
              {
                v246 = 0;
                v198 = v185;
                v199 = v186;
                sub_100029344(v185, v186);
                v200 = Data._bridgeToObjectiveC()().super.isa;
                sub_10001BBA0(v198, v199);
                isa = v243;
                [v243 setSectionIDsOrderingAsData:v200];

                v201 = [isa createResolutionTokenMapIfNecessary];
                v202 = String._bridgeToObjectiveC()();
                [v201 updateForKey:v202];

                a2 = isa;
                v37 = &selRef_hack_willSaveHandled;

                sub_10001BBA0(v198, v199);
              }

              v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
LABEL_163:
              v35 = v253;
              v36 = v245;
LABEL_9:
              if (v35 == v257)
              {
                goto LABEL_164;
              }

              continue;
            }

LABEL_25:
            v57 = 0;
            v251 = a3 & 0xFFFFFFFFFFFFFF8;
            v252 = (a3 & 0xC000000000000001);
            v58 = _swiftEmptyArrayStorage;
            while (1)
            {
              if (v252)
              {
                v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v57 >= *(v251 + 16))
                {
                  goto LABEL_192;
                }

                v59 = *(a3 + 8 * v57 + 32);
              }

              v60 = v59;
              isa = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                break;
              }

              v61 = [v59 uuid];
              v62 = v255;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              a1 = UUID.uuidString.getter();
              v64 = v63;

              (*v254)(v62, v256);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v58 = sub_100365788(0, *(v58 + 2) + 1, 1, v58);
              }

              a2 = *(v58 + 2);
              v65 = *(v58 + 3);
              if (a2 >= v65 >> 1)
              {
                v58 = sub_100365788((v65 > 1), a2 + 1, 1, v58);
              }

              *(v58 + 2) = a2 + 1;
              v66 = &v58[16 * a2];
              *(v66 + 4) = a1;
              *(v66 + 5) = v64;
              ++v57;
              v37 = &selRef_hack_willSaveHandled;
              if (isa == v12)
              {
                goto LABEL_156;
              }
            }

            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            swift_once();
            break;
          case 13:
            v98 = [v249 unsavedMembershipsOfRemindersInSections];
            if (!v98)
            {
              goto LABEL_9;
            }

            isa = v98;
            v253 = v35;
            v99 = v246;
            sub_1005EB85C(v98);
            if (v99)
            {
              v100 = v249;
              swift_errorRetain();
              v101 = Logger.logObject.getter();
              v102 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v101, v102))
              {
                v103 = swift_slowAlloc();
                v104 = swift_slowAlloc();
                v252 = swift_slowAlloc();
                v258 = v252;
                *v103 = v234;
                v259 = v235;
                swift_getMetatypeMetadata();
                v105 = String.init<A>(describing:)();
                v107 = sub_10000668C(v105, v106, &v258);

                *(v103 + 4) = v107;
                *(v103 + 12) = 2114;
                v108 = [v100 objectID];
                *(v103 + 14) = v108;
                *v104 = v108;
                *(v103 + 22) = 2082;
                swift_getErrorValue();
                v109 = Error.rem_errorDescription.getter();
                v111 = sub_10000668C(v109, v110, &v258);

                *(v103 + 24) = v111;
                v37 = &selRef_hack_willSaveHandled;
                _os_log_impl(&_mh_execute_header, v101, v102, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedMembershipsOfRemindersInSections' into 'cdSmartList' {storage.objectID: %{public}@, error: %{public}s}", v103, 0x20u);
                sub_1000050A4(v104, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
              }

              else
              {
              }

              v246 = 0;
              a2 = v243;
              goto LABEL_163;
            }

            v246 = 0;
LABEL_7:

LABEL_8:
            v35 = v253;
            goto LABEL_9;
          default:
            v39 = [v249 v37[433]];
            v40 = v35;
            v41 = [v39 uuid];

            v42 = v255;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v35 = v40;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v43 = v42;
            v22 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
            (*v254)(v43, v256);
            [a2 setIdentifier:isa];

            goto LABEL_9;
        }

        break;
      }
    }

LABEL_164:
  }

  else
  {
    if (qword_100935C60 != -1)
    {
      swift_once();
    }

    v203 = type metadata accessor for Logger();
    sub_100006654(v203, qword_10093DE68);
    v204 = a1;

    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v259 = v209;
      *v207 = 138543618;
      v210 = [v204 objectID];
      *(v207 + 4) = v210;
      *v208 = v210;
      *(v207 + 12) = 2082;
      v211 = *(a3 + 16);
      if (v211)
      {
        v254 = v208;
        v255 = v209;
        LODWORD(v256) = v206;
        v257 = v205;
        v258 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v211, 0);
        v212 = (a3 + 32);
        v213 = v258;
        v214 = 0x80000001007EA260;
        v215 = 0x80000001007EA240;
        v216 = 0x80000001007EA010;
        v217 = 0x80000001007E8D40;
        v218 = 0x80000001007E8C60;
        do
        {
          v219 = *v212++;
          v220 = 0xE800000000000000;
          v221 = 0x44497463656A626FLL;
          switch(v219)
          {
            case 1:
              v221 = 0xD000000000000017;
              v220 = v218;
              break;
            case 2:
              v221 = 0x73694C7472616D73;
              v220 = 0xED00006570795474;
              break;
            case 3:
              v221 = 0x53676E6974726F73;
              v220 = 0xEC000000656C7974;
              break;
            case 4:
              v220 = 0xEA00000000006574;
              v221 = 0x614464656E6E6970;
              break;
            case 5:
              v221 = 0x724F6C61756E616DLL;
              v220 = 0xEE00676E69726564;
              break;
            case 6:
              v220 = 0xE400000000000000;
              v221 = 1701667182;
              break;
            case 7:
              v220 = 0xE500000000000000;
              v221 = 0x726F6C6F63;
              break;
            case 8:
              v221 = 0x626D456567646162;
              v220 = 0xEB000000006D656CLL;
              break;
            case 9:
              v221 = 0x61447265746C6966;
              v220 = 0xEA00000000006174;
              break;
            case 10:
              v221 = 0xD000000000000017;
              v220 = v217;
              break;
            case 11:
              v221 = 0xD00000000000001CLL;
              v220 = v216;
              break;
            case 12:
              v221 = 0xD000000000000019;
              v220 = v215;
              break;
            case 13:
              v221 = 0xD000000000000027;
              v220 = v214;
              break;
            default:
              break;
          }

          v258 = v213;
          v223 = v213[2];
          v222 = v213[3];
          if (v223 >= v222 >> 1)
          {
            v252 = v215;
            v253 = v214;
            v251 = v216;
            v248 = v218;
            v249 = v217;
            sub_100026EF4((v222 > 1), v223 + 1, 1);
            v218 = v248;
            v217 = v249;
            v216 = v251;
            v215 = v252;
            v214 = v253;
            v213 = v258;
          }

          v213[2] = v223 + 1;
          v224 = &v213[2 * v223];
          v224[4] = v221;
          v224[5] = v220;
          --v211;
        }

        while (v211);
        v205 = v257;
        LOBYTE(v206) = v256;
        v208 = v254;
        v209 = v255;
      }

      v225 = Array.description.getter();
      v227 = v226;

      v228 = sub_10000668C(v225, v227, &v259);

      *(v207 + 14) = v228;
      _os_log_impl(&_mh_execute_header, v205, v206, "REMSmartListStorageCDIngestor: merge(storage:into cdSmartList:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v207, 0x16u);
      sub_1000050A4(v208, &unk_100938E70, &unk_100797230);

      sub_10000607C(v209);
    }

    v229 = objc_opt_self();
    sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v231 = String._bridgeToObjectiveC()();
    [v229 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v231];

    swift_willThrow();
  }
}

id sub_10022EA04()
{
  v1 = [v0 smartListType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v8 = &selRef_accountID;
      return [v0 *v8];
    }
  }

  result = [v0 parentAccountID];
  if (!result)
  {
    return result;
  }

  v8 = &selRef_parentAccountID;
  return [v0 *v8];
}

void *sub_10022EB6C(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v91 = *(v7 - 8);
  v8 = *(v91 + 64);
  __chkstk_darwin(v7);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92[0] = 0;
  v11 = [a1 remObjectIDWithError:v92];
  if (v11)
  {
    v12 = v11;
    v89 = v6;
    v90 = v3;
    v13 = v92[0];
    v14 = [a1 account];
    if (v14 && (v15 = v14, v16 = [v14 remObjectID], v15, v16))
    {
      v17 = [a1 smartListType];
      if (v17)
      {
        v18 = v17;
        v88 = v2;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = v20;

        v21._countAndFlagsBits = v19;
        v21._object = v2;
        v22 = REMSmartListType.init(stringValue:)(v21);
        if (v22)
        {
          v23 = v22;

          v24 = objc_allocWithZone(REMSmartListStorage);
          v86 = v16;
          v87 = v12;
          v85 = v23;
          v2 = [v24 initWithObjectID:v12 accountID:v16 smartListType:v23];
          v25 = [a1 name];
          [v2 setName:v25];

          v26 = [a1 color];
          [v2 setColor:v26];

          v27 = [a1 badgeEmblem];
          [v2 setBadgeEmblem:v27];

          [v2 setShowingLargeAttachments:{objc_msgSend(a1, "showingLargeAttachments")}];
          v28 = [a1 filterData];
          if (v28)
          {
            v29 = v28;
            v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            v33.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v30, v32);
          }

          else
          {
            v33.super.isa = 0;
          }

          [v2 setFilterData:v33.super.isa];

          [v2 setIsPersisted:1];
          v60 = [a1 sortingStyle];
          if (v60)
          {
            v61 = v60;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v62 = REMSortingStyle.init(stringValue:)();
            v64 = v86;
            v63 = v87;
            if (!v62)
            {
              v62 = REMSortingStyleDefault;
            }

            v65 = v62;
            [v2 setSortingStyle:v62];
          }

          else
          {
            [v2 setSortingStyle:REMSortingStyleDefault];
            v64 = v86;
            v63 = v87;
          }

          v66 = [a1 pinnedDate];
          if (v66)
          {
            v67 = v66;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v68.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (*(v91 + 8))(v10, v7);
          }

          else
          {
            v68.super.isa = 0;
          }

          [v2 setPinnedDate:v68.super.isa];

          v69 = [a1 mostRecentTargetTemplateIdentifier];
          if (v69)
          {
            v70 = v89;
            v71 = v69;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v72.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v90 + 8))(v70, v88);
          }

          else
          {
            v72.super.isa = 0;
          }

          [v2 setMostRecentTargetTemplateIdentifier:v72.super.isa];

          [v2 setResolutionTokenMap:0];
          v73 = [a1 resolutionTokenMapData];
          if (v73)
          {
            v74 = v73;
            v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v76;

            v78.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v75, v77);
          }

          else
          {
            v78.super.isa = 0;
          }

          [v2 setResolutionTokenMapData:v78.super.isa];

          v79 = [a1 parentAccount];
          if (v79)
          {
            v80 = v79;
            v81 = [v79 remObjectID];
          }

          else
          {
            v81 = 0;
          }

          [v2 setParentAccountID:v81];

          v82 = [a1 parentList];
          if (v82)
          {
            v83 = v82;
            v84 = [v82 remObjectID];
          }

          else
          {
            v84 = 0;
          }

          [v2 setParentListID:v84];

          [v2 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
          [v2 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
          [v2 setShouldUpdateSectionsOrdering:0];
          [v2 setUnsavedSectionIDsOrdering:0];
          [v2 setUnsavedMembershipsOfRemindersInSections:0];
        }

        else
        {
          v56 = objc_opt_self();
          v92[0] = 0;
          v92[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(57);
          v57._object = 0x80000001007F16C0;
          v57._countAndFlagsBits = 0xD000000000000037;
          String.append(_:)(v57);
          v58._countAndFlagsBits = v19;
          v58._object = v2;
          String.append(_:)(v58);

          v59 = String._bridgeToObjectiveC()();

          [v56 internalErrorWithDebugDescription:v59];

          swift_willThrow();
        }
      }

      else
      {
        if (qword_100935C68 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_100006654(v46, qword_10093DE80);
        v47 = v12;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138543362;
          *(v50 + 4) = v47;
          *v51 = v12;
          v52 = v47;
          _os_log_impl(&_mh_execute_header, v48, v49, "REMSmartListStorageCDIngestor: cdSmartList.smartListType is nil {cdSmartList.remObjectID: %{public}@}", v50, 0xCu);
          sub_1000050A4(v51, &unk_100938E70, &unk_100797230);
        }

        v53 = objc_opt_self();
        sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v55 = String._bridgeToObjectiveC()();
        [v53 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v55];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100935C68 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100006654(v34, qword_10093DE80);
      v35 = v12;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138543362;
        *(v38 + 4) = v35;
        *v39 = v12;
        v40 = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "REMSmartListStorageCDIngestor: cdSmartList.account is nil {cdSmartList.remObjectID: %{public}@}", v38, 0xCu);
        sub_1000050A4(v39, &unk_100938E70, &unk_100797230);
      }

      v41 = objc_opt_self();
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v42 = swift_getObjCClassFromMetadata();
      v43 = String._bridgeToObjectiveC()();
      [v41 unexpectedNilPropertyWithClass:v42 property:v43];

      swift_willThrow();
    }
  }

  else
  {
    v44 = v92[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_10022F65C(void *a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093E088, &qword_10079BC18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = a1;
  REMSmartList.NonCustom.init(smartListType:)();
  v9 = type metadata accessor for REMSmartList.NonCustom();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1000050A4(v7, &qword_10093E088, &qword_10079BC18);
    v11 = [objc_opt_self() newObjectID];
  }

  else
  {
    v11 = REMSmartList.NonCustom.remObjectID.getter();
    (*(v10 + 8))(v7, v9);
  }

  v12 = [objc_allocWithZone(REMSmartListStorage) initWithObjectID:v11 accountID:a2 smartListType:v8];
  [v12 setParentAccountID:a2];

  return v12;
}

unint64_t sub_10022F7F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0090, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10022F840(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E18C0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_10022F88C(void *a1)
{
  v2 = [a1 remObjectID];
  v3 = [a1 smartListType];
  v4 = [a1 manualOrdering];
  if (v4)
  {
    v5 = v4;
    if (qword_100935C60 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10093DE68);
    v7 = v5;
    v40 = v2;
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v11 = 138543874;
      *(v11 + 4) = v40;
      *v12 = v40;
      *(v11 + 12) = 2082;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      v17 = v40;
      v18 = sub_10000668C(v14, v16, &v41);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2048;
      v19 = [v7 topLevelElementIDs];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v20 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 24) = v21;

      _os_log_impl(&_mh_execute_header, v9, v10, "ingesting manual ordering {smart list: %{public}@, smart list type: %{public}s, top-level elements count: %ld}", v11, 0x20u);
      sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

      sub_10000607C(v13);
    }

    else
    {
    }

    v34 = [a1 accountID];
    v35 = [objc_opt_self() defaultCenter];
    type metadata accessor for REMManualOrderingCDIngestor();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1007953F0;
    *(v37 + 32) = v7;
    v38 = v7;
    sub_1005F9E88(v37, v36);
  }

  else
  {
    if (qword_100935C60 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10093DE68);
    v23 = v2;
    v24 = v3;
    v40 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v26 = 138543618;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2082;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      v39 = v23;
      v32 = sub_10000668C(v29, v31, &v41);

      *(v26 + 14) = v32;
      sub_1000050A4(v27, &unk_100938E70, &unk_100797230);

      sub_10000607C(v28);

      v33 = v39;
      goto LABEL_16;
    }
  }

  v33 = v40;
LABEL_16:
}

void *sub_10022FDD4(id a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v14 = [a1 sectionIDsToUndelete];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_10018BA8C();
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = sub_100277EBC(v15);

      return v3;
    }

    v4 = [a1 smartListType];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        v23 = 0;
        v3 = _swiftEmptyArrayStorage;
LABEL_22:
        v13 = &v23;
LABEL_23:
        sub_1000050A4(v13, &unk_10093AF40, &unk_100795790);
        return v3;
      }
    }

    v16 = [a1 parentListID];
    v23 = v16;
    v3 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage;
    if (v16)
    {
      v17 = v16;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v22;
    }

    goto LABEL_22;
  }

  if (a2)
  {
    v11 = sub_10022EA04();
    v21 = v11;
    v3 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v12 = v11;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v22;
    }

    v13 = &v21;
    goto LABEL_23;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v3 = swift_allocObject();
  *(v3 + 1) = xmmword_1007953F0;
  v3[4] = [a1 accountID];
  return v3;
}

void sub_1002300BC(NSObject *a1, id a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = v4;
  v7 = a2;
  v8 = a1;
  if (a3 - 1 < 2)
  {
    LOBYTE(v5) = a3;
    v9 = [a2 createResolutionTokenMapIfNecessary];
    v10 = [v8 resolutionTokenMap];
    if (!v10)
    {
      if (qword_100935C60 != -1)
      {
        goto LABEL_87;
      }

      goto LABEL_14;
    }

    v11 = v10;
    v12 = v7;
    sub_1000F5104(&qword_100943600, &qword_10079BC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = v5;
    v14 = sub_1006952B0(v11, inited);
    swift_setDeallocating();
    sub_100693168(v5);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v9 mergeWithMap:v14 forKey:v15];

    if (!v16)
    {
      goto LABEL_81;
    }

    if (v5 == 1)
    {
      v17 = sub_10022EA04();
      if (v17)
      {
        sub_100686250(1u, v17, a4);
        if (v4)
        {
LABEL_84:

          goto LABEL_85;
        }

        v19 = v18;
        v20 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (qword_100935C60 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_100006654(v91, qword_10093DE68);
      v92 = v19;
      v93 = v12;
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v126 = v95;
        v122 = v92;
        v135 = v17;
        v96 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *v96 = 136446466;
        v132 = v93;
        v138 = [v93 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v97 = Optional.descriptionOrNil.getter();
        v99 = v98;

        v100 = sub_10000668C(v97, v99, &v145);

        *(v96 + 4) = v100;
        *(v96 + 12) = 2082;
        v92 = v122;
        if (v19)
        {
          v19 = [v122 remObjectID];
        }

        v117 = Optional.descriptionOrNil.getter();
        v119 = v118;

        v120 = sub_10000668C(v117, v119, &v145);

        *(v96 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v94, v126, "Updating smartList.parentAccount {smartList: %{public}s, parentAccount: %{public}s}", v96, 0x16u);
        swift_arrayDestroy();

        v93 = v132;
        v17 = v135;
      }

      else
      {
      }

      [v93 setParentAccount:v92];

      goto LABEL_84;
    }

    v82 = [v8 smartListType];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;
    if (v83 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v85 == v86)
    {
    }

    else
    {
      v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v87 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v88 = [v8 parentListID];
    if (v88)
    {
      v17 = v88;
      sub_100686A70(2u, v17, a4);
      if (v4)
      {

LABEL_85:
        return;
      }

      v90 = v89;

      goto LABEL_72;
    }

LABEL_62:
    v90 = 0;
    v17 = 0;
LABEL_72:
    if (qword_100935C60 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_100006654(v101, qword_10093DE68);
    v102 = v90;
    v103 = v12;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v124 = v105;
      v127 = v102;
      loga = v104;
      v136 = v17;
      v106 = v90;
      v107 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v107 = 136315394;
      v133 = v103;
      v139 = [v103 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v108 = Optional.descriptionOrNil.getter();
      v110 = v109;

      v111 = sub_10000668C(v108, v110, &v145);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      if (v106)
      {
        v102 = v127;
        v112 = [v127 remObjectID];
      }

      else
      {
        v112 = 0;
        v102 = v127;
      }

      v113 = Optional.descriptionOrNil.getter();
      v115 = v114;

      v116 = sub_10000668C(v113, v115, &v145);

      *(v107 + 14) = v116;
      _os_log_impl(&_mh_execute_header, loga, v124, "Updating smartList.parentList {smartList: %s, parentList: %s}", v107, 0x16u);
      swift_arrayDestroy();

      v103 = v133;
      v17 = v136;
    }

    else
    {
    }

    [v103 setParentList:v102];

LABEL_81:
    return;
  }

  if (!a3)
  {
    v21 = [a1 accountID];
    sub_100686250(0, v21, a4);
    if (v4)
    {
    }

    else
    {
      v43 = qword_100935C60;
      v44 = v22;
      if (v43 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100006654(v45, qword_10093DE68);
      v46 = v44;
      v47 = v7;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *v50 = 136446466;
        v51 = [v47 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v52 = Optional.descriptionOrNil.getter();
        v130 = v49;
        v53 = v47;
        v55 = v54;

        v56 = sub_10000668C(v52, v55, &v145);

        *(v50 + 4) = v56;
        *(v50 + 12) = 2082;
        v137 = [v46 remObjectID];
        v57 = Optional.descriptionOrNil.getter();
        v59 = v58;

        v47 = v53;
        v60 = sub_10000668C(v57, v59, &v145);

        *(v50 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v48, v130, "Updating smartList.account {smartList: %{public}s, account: %{public}s}", v50, 0x16u);
        swift_arrayDestroy();
      }

      [v47 setAccount:v46];
    }

    return;
  }

  v23 = [a1 sectionIDsToUndelete];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v8 = sub_10018BA8C();
  v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v24 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v24 = v140;
    v25 = v141;
    v26 = v142;
    v27 = v143;
    v28 = v144;
  }

  else
  {
    v27 = 0;
    v61 = -1 << *(v24 + 32);
    v25 = (v24 + 56);
    v62 = ~v61;
    v63 = -v61;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v28 = v64 & *(v24 + 56);
    v26 = v62;
  }

  v65 = (v26 + 64) >> 6;
  v125 = v25;
  log = v24;
  v121 = v7;
  v123 = v65;
  while (v24 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v5 = v145, v9 = v27, v69 = v28, !v145))
    {
LABEL_54:
      sub_10001B860();
      return;
    }

LABEL_44:
    sub_100686278(3u, v5, a4);
    if (v6)
    {
      sub_10001B860();

      return;
    }

    v131 = v69;
    v71 = v70;
    [v71 setSmartList:v7];
    v72 = [v71 createResolutionTokenMapIfNecessary];
    if (qword_100936350 != -1)
    {
      swift_once();
    }

    v8 = qword_100974F28;
    if (*(qword_100974F28 + 16) && (v73 = sub_100005F4C(0x4449746E65726170, 0xE800000000000000), (v74 & 1) != 0))
    {
      v75 = (v8[7].isa + 16 * v73);
      v76 = *v75;
      v77 = v75[1];
    }

    else
    {
      if (qword_100936128 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_100006654(v78, qword_100946C50);
      v8 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v145 = v81;
        *v80 = 136315138;
        *(v80 + 4) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v145);
        _os_log_impl(&_mh_execute_header, v8, v79, "Unknown ingestable key {key: %s}", v80, 0xCu);
        sub_10000607C(v81);
        v6 = 0;
      }

      v7 = v121;
    }

    v66 = String._bridgeToObjectiveC()();

    [v72 updateForKey:v66];

    v27 = v9;
    v28 = v131;
    v25 = v125;
    v24 = log;
    v65 = v123;
  }

  v67 = v27;
  v68 = v28;
  v9 = v27;
  if (v28)
  {
LABEL_40:
    v69 = (v68 - 1) & v68;
    v5 = *(*(v24 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v68)))));
    if (!v5)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  while (1)
  {
    v9 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v9 >= v65)
    {
      goto LABEL_54;
    }

    v68 = *(v25 + v9);
    ++v67;
    if (v68)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_87:
  swift_once();
LABEL_14:
  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_10093DE68);
  v30 = v8;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v145 = v35;
    *v33 = 138543618;
    v36 = [v30 objectID];
    *(v33 + 4) = v36;
    *v34 = v36;
    *(v33 + 12) = 2082;
    if (v5 == 2)
    {
      v37 = 0x694C746E65726170;
    }

    else
    {
      v37 = 0x6341746E65726170;
    }

    if (v5 == 2)
    {
      v38 = 0xEC00000044497473;
    }

    else
    {
      v38 = 0xEF4449746E756F63;
    }

    v39 = sub_10000668C(v37, v38, &v145);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "REMSmartListStorageCDIngestor: establishRelationship(onStorage:into cdSmartList:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v33, 0x16u);
    sub_1000050A4(v34, &unk_100938E70, &unk_100797230);

    sub_10000607C(v35);
  }

  v40 = objc_opt_self();
  sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = String._bridgeToObjectiveC()();
  [v40 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v42];

  swift_willThrow();
}

void sub_10023108C(void *a1, void *a2)
{
  v6 = *v2;
  v7 = type metadata accessor for REMJSONDeserializationError();
  v8 = *(*(v7 - 8) + 64);
  if ([a2 shouldUpdateSectionsOrdering])
  {
    v9 = [a1 storeControllerManagedObjectContext];
    if (v9)
    {
      v28 = v9;
      v27 = a1;
      v10 = [a2 objectID];
      if (qword_100935D68 != -1)
      {
        swift_once();
      }

      v11 = sub_10024B964(v10, 0);
      type metadata accessor for REMCDSmartListSection();
      v12 = [objc_allocWithZone(NSFetchRequest) init];
      v13 = [swift_getObjCClassFromMetadata() entity];
      [v12 setEntity:v13];

      [v12 setAffectedStores:0];
      [v12 setPredicate:v11];

      [v12 setPropertiesToFetch:0];
      [v12 setRelationshipKeyPathsForPrefetching:0];
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v12 setSortDescriptors:isa];

      v15 = NSManagedObjectContext.fetch<A>(_:)();
      if (v3)
      {
      }

      else
      {
        v16 = v15;

        v17 = v27;
        v18 = [v27 sectionIDsOrderingAsData];
        if (v18)
        {
          v19 = v18;
          v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v20, v22);
          v23 = REMOrderedIdentifierMap.reorder<A>(objects:)();

          v16 = v23;
          v17 = v27;
        }

        sub_100271000(v16);

        v24 = objc_allocWithZone(NSMutableOrderedSet);
        v25 = Array._bridgeToObjectiveC()().super.isa;

        v26 = [v24 initWithArray:v25];

        [v17 setSections:v26];
      }
    }
  }
}

unint64_t sub_100231990()
{
  result = qword_10093E0A0;
  if (!qword_10093E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E0A0);
  }

  return result;
}

unint64_t sub_100231A18()
{
  result = qword_10093E0B8;
  if (!qword_10093E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E0B8);
  }

  return result;
}

unint64_t sub_100231AA0()
{
  result = qword_10093E0D0;
  if (!qword_10093E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E0D0);
  }

  return result;
}

unint64_t sub_100231B28()
{
  result = qword_10093E0E8;
  if (!qword_10093E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E0E8);
  }

  return result;
}

uint64_t sub_100231B7C(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  KeyPath = swift_getKeyPath();
  sub_1002322A0(a1, a2);
  sub_1003EBD24(KeyPath, a1);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v9 = _swiftEmptyArrayStorage[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if ((a2 & 1) == 0)
  {
LABEL_7:
    v5 = rem_currentRuntimeVersion();
    v6 = swift_getKeyPath();
    sub_1003EBD48(v6, v5);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
    {
      v8 = _swiftEmptyArrayStorage[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_10:

  return sub_10000C2B0(_swiftEmptyArrayStorage);
}

id sub_100231CEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t sub_100231D34()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100974C88 = v0;
  return result;
}

void sub_100231DAC(uint64_t *a1@<X0>, unint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a1 >> 62;
  if (v11)
  {
    if (v10 < 0)
    {
      v15 = *a1;
    }

    else
    {
      v15 = *a1 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v6;
    v43 = v11;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v12 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v6;
  v43 = 0;
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  for (i = *(v10 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v14 = i;
LABEL_12:
    v45 = v14;
    sub_1000F5104(&qword_10093E108, qword_10079C120);
    Optional.tryUnwrap(_:file:line:)();
    if (v2)
    {

      return;
    }

    v41 = a2;

    v17 = v44;
    v18 = [v44 account];
    v45 = v18;
    sub_1000F5104(&unk_100939D70, &qword_10079C100);
    Optional.tryUnwrap(_:file:line:)();

    v19 = v44;
    v44 = 0;
    v20 = [v19 remObjectIDWithError:&v44];
    v21 = v44;
    if (!v20)
    {
      v35 = v44;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v22 = v20;
    v40 = v19;
    v23 = objc_opt_self();
    v24 = v21;
    v25 = [v17 reminderIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v42)[1](v9, v5);
    v27 = [v23 objectIDWithUUID:isa];

    type metadata accessor for REMDueDateDeltaAlertCDIngestor();
    inited = swift_initStackObject();
    *(inited + 16) = v22;
    *(inited + 24) = v27;
    if (v43)
    {
      break;
    }

    v29 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_28;
    }

LABEL_17:
    v37 = inited;
    v42 = v17;
    v44 = _swiftEmptyArrayStorage;
    v39 = v22;
    v38 = v27;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v29 < 0)
    {
      goto LABEL_34;
    }

    a2 = 0;
    v5 = v10 & 0xC000000000000001;
    v43 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v30 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v5)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(v43 + 16))
        {
          goto LABEL_33;
        }

        v31 = *(v10 + 8 * a2 + 32);
      }

      v32 = v31;
      v9 = sub_10075DC6C(v31);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = v44[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++a2;
      if (v30 == v29)
      {

        v34 = v44;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    ;
  }

  v36 = inited;
  v29 = _CocoaArrayWrapper.endIndex.getter();
  inited = v36;
  if (v29)
  {
    goto LABEL_17;
  }

LABEL_28:

  v34 = _swiftEmptyArrayStorage;
LABEL_29:
  *v41 = v34;
}

uint64_t sub_1002322A0(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

void *sub_1002322AC(unint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  v3 = v2[8];
  __chkstk_darwin(v35);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_24:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v32 = a1 & 0xFFFFFFFFFFFFFF8;
      v33 = a1 & 0xC000000000000001;
      v31 = v2 + 1;
      v7 = &_swiftEmptyDictionarySingleton;
      v30 = xmmword_1007953F0;
      while (1)
      {
        if (v33)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v32 + 16))
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v12 = a1;
        v13 = [v9 reminderIdentifier];
        v14 = v34;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = objc_opt_self();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v2 = [v15 objectIDWithUUID:isa];

        (*v31)(v14, v35);
        a1 = sub_100393C74(v2);
        v18 = v7[2];
        v19 = (v17 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_22;
        }

        v21 = v17;
        if (v7[3] < v20)
        {
          sub_10036A24C(v20, 1);
          v7 = v36;
          v22 = sub_100393C74(v2);
          if ((v21 & 1) != (v23 & 1))
          {
            sub_1000F5104(&unk_1009436D0, &unk_100797F90);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v22;
        }

        if (v21)
        {

          v8 = (v7[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v24 = swift_allocObject();
          *(v24 + 16) = v30;
          *(v24 + 32) = v10;
          v7[(a1 >> 6) + 8] |= 1 << a1;
          *(v7[6] + 8 * a1) = v2;
          *(v7[7] + 8 * a1) = v24;
          v25 = v7[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_23;
          }

          v7[2] = v27;
        }

        a1 = v12;
        ++v6;
        if (v11 == v5)
        {
          return v7;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

unint64_t sub_100232618(unint64_t inited, unint64_t a2, char *a3)
{
  v6 = v3;
  v80 = type metadata accessor for UUID();
  v10 = *(v80 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v80);
  v13 = (&v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (inited >> 62);
  if (inited >> 62)
  {
    goto LABEL_79;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v79 = (inited & 0xC000000000000001);
      if ((inited & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          swift_once();
          goto LABEL_29;
        }

        v15 = *(inited + 32);
      }

      v76 = v15;
      if (v14)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v4 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = _swiftEmptyArrayStorage;
      v78 = v4;
      v75 = a3;
      LODWORD(v74) = a2;
      if (v4)
      {
        v82[0] = _swiftEmptyArrayStorage;
        v14 = v82;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v4 & 0x8000000000000000) == 0)
        {
          a2 = 0;
          v77 = (inited & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            a3 = (a2 + 1);
            if (__OFADD__(a2, 1))
            {
              break;
            }

            if (v79)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (a2 >= v77[2])
              {
                goto LABEL_78;
              }

              v16 = *(inited + 8 * a2 + 32);
            }

            v14 = v16;
            v83 = 0;
            v17 = [v16 remObjectIDWithError:&v83];
            if (!v17)
            {
              v54 = v83;
              _convertNSErrorToError(_:)();

              swift_willThrow();
LABEL_52:

              goto LABEL_53;
            }

            v18 = v17;
            v19 = v83;
            v20 = sub_1005E2A38(v18);
            if (v6)
            {
              goto LABEL_52;
            }

            v4 = v20;

            v14 = v82;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v5 = *(v82[0] + 2);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++a2;
            if (a3 == v78)
            {
              v5 = v82[0];
              LOBYTE(a2) = v74;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_76:

          v69 = v75;

LABEL_53:

          return v14;
        }

        goto LABEL_84;
      }

LABEL_21:
      v21 = *(v5 + 16);
      v4 = _swiftEmptyArrayStorage;
      v79 = v5;
      if (v21)
      {
        v77 = v6;
        v82[0] = _swiftEmptyArrayStorage;
        sub_100253258(0, v21, 0);
        v22 = v82[0];
        v23 = (v5 + 32);
        do
        {
          v24 = *v23;
          v25 = [v24 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v82[0] = v22;
          v27 = v22[2];
          v26 = v22[3];
          if (v27 >= v26 >> 1)
          {
            sub_100253258(v26 > 1, v27 + 1, 1);
            v22 = v82[0];
          }

          v22[2] = v27 + 1;
          (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v27, v13, v80);
          ++v23;
          --v21;
        }

        while (v21);
        v6 = v77;
        v4 = _swiftEmptyArrayStorage;
        LOBYTE(a2) = v74;
      }

      else
      {
        v22 = _swiftEmptyArrayStorage;
      }

      a3 = sub_100231B7C(v22, a2 & 1 | 0x80);

      sub_10075E638();
      v5 = type metadata accessor for REMCDDueDateDeltaAlert();
      a2 = [objc_allocWithZone(NSFetchRequest) init];
      v28 = [swift_getObjCClassFromMetadata() entity];
      [a2 setEntity:v28];

      [a2 setAffectedStores:0];
      v74 = a3;
      [a2 setPredicate:a3];
      v82[0] = &_swiftEmptySetSingleton;

      sub_100391890(v29);

      sub_1003FE04C(v82[0]);
      v80 = v6;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [a2 setPropertiesToFetch:isa];

      if (qword_100935C78 != -1)
      {
        goto LABEL_85;
      }

LABEL_29:
      sub_10012DF40();
      v31 = Array._bridgeToObjectiveC()().super.isa;
      [a2 setSortDescriptors:v31];

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007953F0;
      *(inited + 32) = swift_getKeyPath();
      v10 = inited + 32;
      v83 = v4;
      v14 = &v83;
      sub_100026EF4(0, 1, 0);
      v32 = v83;
      if ((inited & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v33 = *v10;
      }

      v77 = v5;
      v34 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v35)
      {
        v82[0] = 0;
        v82[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(46);
        v71._countAndFlagsBits = 0xD00000000000002CLL;
        v71._object = 0x80000001007EC120;
        String.append(_:)(v71);
        v81 = v33;
        sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
        _print_unlocked<A, B>(_:_:)();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v4 = v34;
      v36 = v35;

      v38 = v32[2];
      v37 = v32[3];
      if (v38 >= v37 >> 1)
      {
        sub_100026EF4((v37 > 1), v38 + 1, 1);
        v32 = v83;
      }

      v32[2] = v38 + 1;
      v39 = &v32[2 * v38];
      *(v39 + 4) = v4;
      *(v39 + 5) = v36;
      swift_setDeallocating();
      v40 = *(inited + 16);
      swift_arrayDestroy();
      v41 = Array._bridgeToObjectiveC()().super.isa;

      [a2 setRelationshipKeyPathsForPrefetching:v41];

      v14 = v75;
      v42 = v80;
      v43 = NSManagedObjectContext.fetch<A>(_:)();
      v6 = v42;
      if (v42)
      {

        return v14;
      }

      inited = v43;
      if (v78 < 2)
      {
        if (*(v79 + 2))
        {
          v55 = *(v79 + 4);
          v56 = v55;
        }

        else
        {
          v55 = 0;
        }

        v83 = v55;
        sub_1000F5104(&qword_10093E0F0, &qword_10079C0F8);
        Optional.tryUnwrap(_:file:line:)();
        v78 = a2;

        v10 = v82[0];
        v57 = [v76 account];
        v83 = v57;
        sub_1000F5104(&unk_100939D70, &qword_10079C100);
        Optional.tryUnwrap(_:file:line:)();
        a2 = 0;

        a3 = v82[0];
        v82[0] = 0;
        v58 = [a3 remObjectIDWithError:v82];
        v14 = v82[0];
        if (v58)
        {
          v5 = v58;
          if (inited >> 62)
          {
            goto LABEL_90;
          }

          v59 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_61;
        }

        v64 = v82[0];

        _convertNSErrorToError(_:)();

        swift_willThrow();
        return v14;
      }

      v78 = a2;

      v13 = sub_1002322AC(inited);

      sub_1000F5104(&qword_100943C90, &qword_10079C118);
      v44 = static _DictionaryStorage.copy(original:)();
      v14 = v44;
      inited = 0;
      v45 = 1 << *(v13 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      a3 = (v13 + 8);
      v5 = v46 & v13[8];
      a2 = (v45 + 63) >> 6;
      v79 = (v44 + 64);
      v80 = v13;
      if (v5)
      {
        while (1)
        {
          v13 = 0;
          v47 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
LABEL_48:
          v10 = v47 | (inited << 6);
          v50 = *(v80[6] + 8 * v10);
          v82[0] = *(v80[7] + 8 * v10);
          v4 = v50;

          sub_100231DAC(v82, &v83);
          v6 = 0;

          *&v79[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          *(v14[6] + v10) = v4;
          *(v14[7] + v10) = v83;
          v51 = v14[2];
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            break;
          }

          v14[2] = v53;
          if (!v5)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_87:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          v59 = _CocoaArrayWrapper.endIndex.getter();
LABEL_61:
          if (!v59)
          {
            break;
          }

          v77 = v5;
          v79 = a3;
          v82[0] = _swiftEmptyArrayStorage;
          v60 = v14;
          v73 = v10;
          v75 = v10;
          v14 = v82;
          specialized ContiguousArray.reserveCapacity(_:)();
          if (v59 < 0)
          {
            __break(1u);
          }

          v10 = 0;
          a3 = (inited & 0xC000000000000001);
          v80 = (inited & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            v5 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            v61 = a2;
            if (a3)
            {
              v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              a2 = v78;
            }

            else
            {
              a2 = v78;
              if (v10 >= v80[2])
              {
                goto LABEL_89;
              }

              v14 = *(inited + 8 * v10 + 32);
            }

            sub_10075DC6C(v14);
            if (v61)
            {
              goto LABEL_76;
            }

            a2 = 0;

            v14 = v82;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v62 = *(v82[0] + 2);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v10;
            if (v5 == v59)
            {

              v63 = v82[0];
              v10 = v73;
              a3 = v79;
              v5 = v77;
              goto LABEL_74;
            }
          }
        }

        v65 = v14;
        v66 = v10;

        v63 = _swiftEmptyArrayStorage;
LABEL_74:
        sub_1000F5104(&qword_10093E0F8, &qword_10079C108);
        v67 = swift_initStackObject();
        *(v67 + 16) = xmmword_100791300;
        *(v67 + 32) = v10;
        *(v67 + 40) = v63;
        v68 = v10;
        v14 = sub_10038DD24(v67);
        swift_setDeallocating();
        sub_1002333D4(v67 + 32);

        return v14;
      }

LABEL_43:
      v48 = inited;
      while (1)
      {
        inited = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (inited >= a2)
        {

          return v14;
        }

        v49 = *&a3[8 * inited];
        ++v48;
        if (v49)
        {
          v13 = 0;
          v47 = __clz(__rbit64(v49));
          v5 = (v49 - 1) & v49;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }

  return sub_10038DD24(_swiftEmptyArrayStorage);
}

uint64_t sub_1002333D4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10093E100, &qword_10079C110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023343C(uint64_t a1)
{
  v219 = a1;
  v252 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v2 = *(*(v252 - 8) + 64);
  v3 = __chkstk_darwin(v252);
  *&v250 = &v217 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  *&v251 = &v217 - v5;
  v6 = sub_1000F5104(&qword_10093E160, &qword_10079C168);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v236 = &v217 - v8;
  v242 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v241 = *(v242 - 8);
  v9 = *(v241 + 64);
  v10 = __chkstk_darwin(v242);
  v227 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v231 = &v217 - v12;
  v13 = sub_1000F5104(&qword_10093E168, &qword_10079C170);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v246 = &v217 - v15;
  v238 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v245 = *(v238 - 8);
  v16 = *(v245 + 64);
  v17 = __chkstk_darwin(v238);
  v226 = &v217 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v235 = &v217 - v19;
  v20 = sub_1000F5104(&qword_10093E170, &qword_10079C178);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v237 = &v217 - v22;
  v244 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v243 = *(v244 - 8);
  v23 = *(v243 + 64);
  v24 = __chkstk_darwin(v244);
  v228 = &v217 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v234 = &v217 - v26;
  v239 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  *&v249 = *(v239 - 8);
  v27 = *(v249 + 64);
  __chkstk_darwin(v239);
  v220 = &v217 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000F5104(&qword_10093E178, &qword_10079C180);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v222 = &v217 - v31;
  v32 = sub_1000F5104(&qword_10093E180, &qword_10079C188);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v232 = &v217 - v34;
  v35 = sub_1000F5104(&qword_10093E188, &qword_10079C190);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v217 - v37;
  v39 = sub_1000F5104(&qword_10093E190, &unk_10079C198);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v218 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v221 = &v217 - v44;
  v45 = __chkstk_darwin(v43);
  v224 = &v217 - v46;
  __chkstk_darwin(v45);
  v48 = &v217 - v47;
  v49 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v230 = &v217 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v55 = &v217 - v54;
  v56 = _s16DateFilterActionOMa();
  v57 = *(*(v56 - 8) + 64);
  v58 = __chkstk_darwin(v56 - 8);
  v233 = &v217 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v247 = &v217 - v60;
  v254 = _swiftEmptyArrayStorage;
  REMCustomSmartListFilterDescriptor.operation.getter();
  REMCustomSmartListFilterDescriptor.date.getter();
  v61 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v223 = *(v61 - 8);
  v62 = *(v223 + 48);
  v225 = v61;
  v229 = v62;
  v63 = (v62)(v48, 1);
  sub_1000050A4(v48, &qword_10093E190, &unk_10079C198);
  v248 = v1;
  REMCustomSmartListFilterDescriptor.time.getter();
  v64 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v65 = (*(*(v64 - 8) + 48))(v38, 1, v64);
  sub_1000050A4(v38, &qword_10093E188, &qword_10079C190);
  v66 = *(v32 + 48);
  v217 = v32;
  v67 = *(v32 + 64);
  v68 = v232;
  (*(v50 + 32))(v232, v55, v49);
  v68[v66] = v63 != 1;
  v69 = v249;
  v68[v67] = v65 != 1;
  v240 = v50;
  if (v63 == 1)
  {
    v79 = v247;
    if (v65 == 1)
    {
      v80 = 1;
    }

    else
    {
      v80 = 3;
    }

    v82 = v239;
    (*(v69 + 56))(v247, v80, 4, v239);
    v83 = v49;
    (*(v50 + 8))(v68, v49);
    v78 = v79;
    v77 = v238;
    v84 = v246;
    v72 = v237;
    v85 = v249;
    v73 = v233;
LABEL_27:
    sub_100237038(v78, v73);
    v103 = (*(v85 + 48))(v73, 4, v82);
    if (v103 <= 1)
    {
      if (!v103)
      {
        v105 = v249;
        v106 = v77;
        v107 = v72;
        v108 = v83;
        v109 = v220;
        (*(v249 + 32))(v220, v73, v82);
        v110 = sub_10023662C();
        sub_100271454(v110);
        v78 = v247;
        v111 = v109;
        v83 = v108;
        v72 = v107;
        v77 = v106;
        (*(v105 + 8))(v111, v82);
      }

LABEL_39:
      sub_10023709C(v78);
      v113 = REMCustomSmartListFilterDescriptor.priorities.getter();
      v114 = v242;
      if (v113)
      {
        v115 = *(v113 + 16);
        v116 = 32;
        v117 = v115;
        do
        {
          v118 = v117;
          if (!v117)
          {
            break;
          }

          v119 = *(v113 + v116);
          v116 += 8;
          --v117;
        }

        while (v119);
        v120 = 32;
        v121 = *(v113 + 16);
        do
        {
          v122 = v121;
          if (!v121)
          {
            break;
          }

          v123 = *(v113 + v120);
          v120 += 8;
          --v121;
        }

        while (v123 != 1);
        v124 = 32;
        v125 = *(v113 + 16);
        do
        {
          v126 = v125;
          if (!v125)
          {
            break;
          }

          v127 = *(v113 + v124);
          v124 += 8;
          --v125;
        }

        while (v127 != 2);
        v128 = 32;
        while (v115)
        {
          v129 = *(v113 + v128);
          v128 += 8;
          --v115;
          if (v129 == 3)
          {

            if (v122)
            {
              if (v126)
              {
                KeyPath = swift_getKeyPath();
                v131 = 1;
                goto LABEL_63;
              }

              v174 = v83;
              sub_1000F5104(&qword_10093B980, qword_10079A3D0);
              inited = swift_initStackObject();
              v249 = xmmword_100791340;
              *(inited + 16) = xmmword_100791340;
              v176 = swift_getKeyPath();
              v177 = sub_1003EA64C(v176, 6);

              *(inited + 32) = v177;
              v178 = swift_initStackObject();
              *(v178 + 16) = v249;
              v179 = swift_getKeyPath();
              v180 = sub_1003EA64C(v179, 1);

              *(v178 + 32) = v180;
              v181 = swift_getKeyPath();
              v182 = sub_1003EAA60(v181, 4);

              *(v178 + 40) = v182;
              *(inited + 40) = sub_10000C2B0(v178);
              sub_100025060(inited);
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v83 = v174;
              if (v254[2] < v254[3] >> 1)
              {
LABEL_109:
                v77 = v238;
                v84 = v246;
                v72 = v237;
                goto LABEL_66;
              }

LABEL_116:
              v77 = v238;
              v72 = v237;
LABEL_117:
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_65:
              v84 = v246;
LABEL_66:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              goto LABEL_67;
            }

            if (!v126)
            {
              v185 = v83;
              sub_1000F5104(&qword_10093B980, qword_10079A3D0);
              v186 = swift_initStackObject();
              *(v186 + 16) = xmmword_100791340;
              v187 = swift_getKeyPath();
              v188 = sub_1003EA64C(v187, 1);

              *(v186 + 32) = v188;
              v189 = swift_getKeyPath();
              v190 = sub_1003EAA60(v189, 4);

              *(v186 + 40) = v190;
              sub_10000C2B0(v186);
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v83 = v185;
              if (v254[2] < v254[3] >> 1)
              {
                goto LABEL_109;
              }

              goto LABEL_116;
            }

            v133 = swift_getKeyPath();
            sub_100236DCC(v133, 1, 5);
LABEL_64:

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (v254[2] >= v254[3] >> 1)
            {
              goto LABEL_117;
            }

            goto LABEL_65;
          }
        }

        if (v122)
        {
          KeyPath = swift_getKeyPath();
          if (v126)
          {
            v131 = 5;
          }

          else
          {
            v131 = 6;
          }

LABEL_63:
          sub_1003EA64C(KeyPath, v131);
          goto LABEL_64;
        }

        if (v126)
        {
          v132 = swift_getKeyPath();
          sub_100390F14(v132, 5);
          goto LABEL_64;
        }

        v84 = v246;
        if (v118)
        {
          v184 = swift_getKeyPath();
          sub_100390F14(v184, 0);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (v254[2] < v254[3] >> 1)
          {
            goto LABEL_66;
          }

          goto LABEL_117;
        }
      }

LABEL_67:
      v134 = REMCustomSmartListFilterDescriptor.flagged.getter();
      if (v134 != 2)
      {
        v135 = v134;
        v136 = swift_getKeyPath();
        if (v135)
        {
          sub_1003EA64C(v136, 1);
        }

        else
        {
          sub_100390F14(v136, 0);
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v254[2] >= v254[3] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v84 = v246;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      REMCustomSmartListFilterDescriptor.location.getter();
      v137 = v243;
      v138 = v244;
      if ((*(v243 + 48))(v72, 1, v244) == 1)
      {
        sub_1000050A4(v72, &qword_10093E170, &qword_10079C178);
        v139 = v241;
LABEL_84:
        REMCustomSmartListFilterDescriptor.hashtags.getter();
        v146 = v245;
        if ((*(v245 + 48))(v84, 1, v77) == 1)
        {
          sub_1000050A4(v84, &qword_10093E168, &qword_10079C170);
          goto LABEL_95;
        }

        (*(v146 + 32))(v235, v84, v77);
        v147 = v226;
        (*(v146 + 16))();
        v148 = (*(v146 + 88))(v147, v77);
        if (v148 == enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:))
        {
          (*(v146 + 96))(v147, v77);
          v149 = *v147;

          v150 = *(v147 + 1);

          v151 = sub_1000F5104(&qword_10093E198, qword_10079C1A8);
          (*(v240 + 8))(&v147[*(v151 + 64)], v83);
          goto LABEL_91;
        }

        if (v148 == enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.untagged(_:))
        {
          v152 = swift_getKeyPath();
          sub_1003F7218(v152, 0);
LABEL_92:

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (v254[2] >= v254[3] >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          (*(v245 + 8))(v235, v77);
LABEL_95:
          v154 = v236;
          REMCustomSmartListFilterDescriptor.lists.getter();
          if ((*(v139 + 48))(v154, 1, v114) == 1)
          {
            sub_1000050A4(v154, &qword_10093E160, &qword_10079C168);
LABEL_126:
            v192 = v230;
            goto LABEL_127;
          }

          v155 = v231;
          (*(v139 + 32))(v231, v154, v114);
          v156 = v227;
          (*(v139 + 16))(v227, v155, v114);
          if ((*(v139 + 88))(v156, v114) != enum case for REMCustomSmartListFilterDescriptor.FilterLists.lists(_:))
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
LABEL_151:
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            goto LABEL_152;
          }

          (*(v139 + 96))(v156, v114);
          v157 = *v156;
          v158 = v156[1];
          if (*v156 >> 62)
          {
            if (v157 < 0)
            {
              v191 = *v156;
            }

            if (_CocoaArrayWrapper.endIndex.getter())
            {

              v158 = _CocoaArrayWrapper.endIndex.getter();
              if (v158)
              {
                goto LABEL_101;
              }

              goto LABEL_122;
            }
          }

          else if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v159 = v156[1];

            v158 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v158)
            {
LABEL_101:
              v232 = v83;
              v253 = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              if ((v158 & 0x8000000000000000) == 0)
              {
                v160 = objc_opt_self();
                v161 = 0;
                v250 = xmmword_100791340;
                v162 = v251;
                do
                {
                  if ((v157 & 0xC000000000000001) != 0)
                  {
                    v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v163 = *(v157 + 8 * v161 + 32);
                  }

                  v164 = v163;
                  v165 = [v163 uuid];
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v166 = type metadata accessor for UUID();
                  (*(*(v166 - 8) + 56))(v162, 0, 1, v166);
                  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
                  v167 = swift_allocObject();
                  *(v167 + 16) = v250;
                  ++v161;
                  *(v167 + 56) = &type metadata for String;
                  *(v167 + 32) = 0x6564692E7473696CLL;
                  *(v167 + 40) = 0xEF7265696669746ELL;
                  *(v167 + 88) = v252;
                  v168 = sub_1000103CC((v167 + 64));
                  sub_10018E470(v162, v168);
                  v169 = String._bridgeToObjectiveC()();
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  v171 = [v160 predicateWithFormat:v169 argumentArray:isa];

                  sub_1000050A4(v162, &unk_100939D90, "8\n\r");
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v172 = v253[2];
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                while (v158 != v161);

                v173 = v253;
                v114 = v242;
                v139 = v241;
                v83 = v232;
                goto LABEL_123;
              }

              __break(1u);
              goto LABEL_144;
            }

LABEL_122:

            v173 = _swiftEmptyArrayStorage;
LABEL_123:
            sub_100025060(v173);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (v254[2] >= v254[3] >> 1)
            {
              v212 = v254[2];
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (*(v139 + 8))(v231, v114);
            goto LABEL_126;
          }

          if (!(v158 >> 62))
          {
            v195 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v195)
            {
              v232 = v83;
              v253 = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              goto LABEL_134;
            }

LABEL_148:
            (*(v139 + 8))(v231, v114);

            goto LABEL_126;
          }

LABEL_144:
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            v232 = v83;
            v213 = _CocoaArrayWrapper.endIndex.getter();
            if (!v213)
            {

              v209 = _swiftEmptyArrayStorage;
LABEL_140:
              sub_10000C2B0(v209);
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v210 = v242;
              v211 = v241;
              v192 = v230;
              if (v254[2] >= v254[3] >> 1)
              {
                v214 = v254[2];
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (*(v211 + 8))(v231, v210);
              v83 = v232;
LABEL_127:
              REMCustomSmartListFilterDescriptor.operation.getter();
              v193 = (*(v240 + 88))(v192, v83);
              if (v193 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
              {
                return sub_10000C2B0(v254);
              }

              if (v193 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
              {
                return sub_100025060(v254);
              }

              goto LABEL_151;
            }

            v195 = v213;
            v253 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            if (v195 < 0)
            {
              __break(1u);
              goto LABEL_148;
            }

LABEL_134:
            v196 = objc_opt_self();
            v197 = 0;
            v251 = xmmword_100791340;
            v198 = v250;
            do
            {
              if ((v158 & 0xC000000000000001) != 0)
              {
                v199 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v199 = *(v158 + 8 * v197 + 32);
              }

              v200 = v199;
              v201 = [v199 uuid];
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v202 = type metadata accessor for UUID();
              (*(*(v202 - 8) + 56))(v198, 0, 1, v202);
              sub_1000F5104(&unk_100938E80, &unk_1007959D0);
              v203 = swift_allocObject();
              *(v203 + 16) = v251;
              ++v197;
              *(v203 + 56) = &type metadata for String;
              *(v203 + 32) = 0x6564692E7473696CLL;
              *(v203 + 40) = 0xEF7265696669746ELL;
              *(v203 + 88) = v252;
              v204 = sub_1000103CC((v203 + 64));
              sub_10018E470(v198, v204);
              v205 = String._bridgeToObjectiveC()();
              v206 = Array._bridgeToObjectiveC()().super.isa;

              v207 = [v196 predicateWithFormat:v205 argumentArray:v206];

              sub_1000050A4(v198, &unk_100939D90, "8\n\r");
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v208 = v253[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            while (v195 != v197);

            v209 = v253;
            goto LABEL_140;
          }

          goto LABEL_148;
        }

        if (v148 == enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.any(_:))
        {
LABEL_91:
          v153 = swift_getKeyPath();
          sub_1003F7214(v153, 0);
          goto LABEL_92;
        }

        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_154:
        v215 = &v255;
        goto LABEL_155;
      }

      v140 = v241;
      v141 = v83;
      v142 = v234;
      (*(v137 + 32))(v234, v72, v138);
      v143 = v228;
      (*(v137 + 16))(v228, v142, v138);
      v144 = (*(v137 + 88))(v143, v138);
      if (v144 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.vehicle(_:))
      {
        if (v144 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.location(_:))
        {
          (*(v137 + 8))(v228, v138);
        }

        else if (v144 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.any(_:))
        {
          if (v144 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.noLocation(_:))
          {
            goto LABEL_154;
          }

          v183 = [objc_opt_self() predicateWithValue:1];
          goto LABEL_81;
        }
      }

      v145 = swift_getKeyPath();
      sub_1003F7214(v145, 0);

LABEL_81:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v83 = v141;
      if (v254[2] >= v254[3] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v84 = v246;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v243 + 8))(v234, v244);
      v139 = v140;
      goto LABEL_84;
    }

    if (v103 == 2)
    {
      swift_getKeyPath();
      sub_1003F71EC();
    }

    else
    {
      if (v103 != 3)
      {
        v112 = [objc_opt_self() predicateWithValue:1];
        goto LABEL_36;
      }

      v104 = swift_getKeyPath();
      sub_1003EA620(v104);
    }

LABEL_36:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v254[2] >= v254[3] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v84 = v246;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v78 = v247;
    goto LABEL_39;
  }

  v70 = (*(v50 + 88))(v68, v49);
  v232 = v49;
  v71 = v238;
  v72 = v237;
  v73 = v233;
  v74 = v225;
  v75 = v224;
  if (v70 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
  {
    goto LABEL_9;
  }

  if (v70 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {
    if (v65 != 1)
    {
      v76 = v218;
      REMCustomSmartListFilterDescriptor.date.getter();
      if (v229(v76, 1, v74) == 1)
      {
        sub_1000050A4(v76, &qword_10093E190, &unk_10079C198);
        v77 = v71;
        v78 = v247;
      }

      else
      {
        v95 = v223;
        v96 = (*(v223 + 88))(v76, v74);
        v97 = v76;
        v98 = v96;
        v99 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:);
        (*(v95 + 8))(v97, v74);
        v93 = v98 == v99;
        v77 = v71;
        v78 = v247;
        if (v93)
        {
          v85 = v249;
          v100 = *(v249 + 56);
          v101 = v247;
          v102 = 4;
LABEL_25:
          v82 = v239;
          v100(v101, v102, 4, v239);
          v84 = v246;
          goto LABEL_26;
        }
      }

      v85 = v249;
      v100 = *(v249 + 56);
      v101 = v78;
      v102 = 3;
      goto LABEL_25;
    }

LABEL_9:
    REMCustomSmartListFilterDescriptor.date.getter();
    if (v229(v75, 1, v74) == 1)
    {
      sub_1000050A4(v75, &qword_10093E190, &unk_10079C198);
      v81 = v222;
      v82 = v239;
      (*(v249 + 56))(v222, 1, 1, v239);
    }

    else
    {
      v86 = v222;
      REMCustomSmartListFilterDescriptor.FilterDate.range(now:)();
      v81 = v86;
      (*(v223 + 8))(v75, v74);
      v85 = v249;
      v87 = v86;
      v82 = v239;
      if ((*(v249 + 48))(v87, 1, v239) != 1)
      {
        v94 = v81;
        v78 = v247;
        (*(v85 + 32))(v247, v94, v82);
        (*(v85 + 56))(v78, 0, 4, v82);
        v84 = v246;
        v77 = v71;
        goto LABEL_26;
      }
    }

    sub_1000050A4(v81, &qword_10093E178, &qword_10079C180);
    v88 = v221;
    REMCustomSmartListFilterDescriptor.date.getter();
    v89 = v229(v88, 1, v74);
    v84 = v246;
    if (v89 == 1)
    {
      sub_1000050A4(v88, &qword_10093E190, &unk_10079C198);
      v77 = v71;
    }

    else
    {
      v90 = v223;
      v91 = (*(v223 + 88))(v88, v74);
      v92 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:);
      (*(v90 + 8))(v88, v74);
      v93 = v91 == v92;
      v82 = v239;
      v77 = v71;
      if (v93)
      {
        v85 = v249;
        v78 = v247;
        (*(v249 + 56))(v247, 2, 4, v239);
LABEL_26:
        v83 = v232;
        goto LABEL_27;
      }
    }

    v85 = v249;
    v78 = v247;
    (*(v249 + 56))(v247, 3, 4, v82);
    goto LABEL_26;
  }

LABEL_152:
  v215 = &v249;
LABEL_155:
  v216 = *(v215 - 32);
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_1002353EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

id sub_100235434@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 displayDateIsAllDay];
  *a2 = result;
  return result;
}

void *sub_10023547C()
{
  v1 = v0;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(PredicateType);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  (*(v3 + 16))(&v23 - v8, v1, PredicateType);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.priorities.getter();
  sub_100237128();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, PredicateType);
  if ((v10 & 1) == 0)
  {
    static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v7, PredicateType);
    if ((v12 & 1) == 0)
    {
      static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(v7, PredicateType);
      if (v16)
      {
        v11(v9, PredicateType);
        if (qword_100935C80 != -1)
        {
          swift_once();
        }

        v14 = qword_10093E110;
      }

      else
      {
        static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.partOfDay.getter();
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        v11(v7, PredicateType);
        if (v17)
        {
          v11(v9, PredicateType);
          if (qword_100935C90 != -1)
          {
            swift_once();
          }

          v14 = qword_10093E120;
        }

        else
        {
          static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.location.getter();
          v18 = dispatch thunk of static Equatable.== infix(_:_:)();
          v11(v7, PredicateType);
          if (v18)
          {
            v11(v9, PredicateType);
            if (qword_100935CA0 != -1)
            {
              swift_once();
            }

            v14 = qword_10093E130;
          }

          else
          {
            static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
            v19 = dispatch thunk of static Equatable.== infix(_:_:)();
            v11(v7, PredicateType);
            if (v19)
            {
              v11(v9, PredicateType);
              if (qword_100935CB0 != -1)
              {
                swift_once();
              }

              v14 = qword_10093E140;
            }

            else
            {
              static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();
              v20 = dispatch thunk of static Equatable.== infix(_:_:)();
              v11(v7, PredicateType);
              if ((v20 & 1) == 0)
              {
                static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.completed.getter();
                v22 = dispatch thunk of static Equatable.== infix(_:_:)();
                v11(v7, PredicateType);
                if ((v22 & 1) == 0)
                {
                  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
                  dispatch thunk of static Equatable.== infix(_:_:)();
                  v11(v7, PredicateType);
                  v11(v9, PredicateType);
                  return &_swiftEmptySetSingleton;
                }

                goto LABEL_3;
              }

              v11(v9, PredicateType);
              if (qword_100935CC0 != -1)
              {
                swift_once();
              }

              v14 = qword_10093E150;
            }
          }
        }
      }

      return v14;
    }
  }

LABEL_3:
  v11(v9, PredicateType);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v14 = sub_1001A61EC(inited);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  return v14;
}

void *sub_100235A44()
{
  v1 = v0;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(PredicateType);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  (*(v3 + 16))(&v24 - v8, v1, PredicateType);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.priorities.getter();
  sub_100237128();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, PredicateType);
  if (v10 & 1) != 0 || (static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter(), v12 = dispatch thunk of static Equatable.== infix(_:_:)(), v11(v7, PredicateType), (v12) || (static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.completed.getter(), v13 = dispatch thunk of static Equatable.== infix(_:_:)(), v11(v7, PredicateType), (v13))
  {
    v11(v9, PredicateType);
    return &_swiftEmptySetSingleton;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11(v7, PredicateType);
  if (v15)
  {
    v11(v9, PredicateType);
    if (qword_100935C88 == -1)
    {
    }

    goto LABEL_23;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.partOfDay.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11(v7, PredicateType);
  if (v16)
  {
    v11(v9, PredicateType);
    if (qword_100935C98 == -1)
    {
    }

    goto LABEL_23;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.location.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11(v7, PredicateType);
  if (v17)
  {
    v11(v9, PredicateType);
    if (qword_100935CA8 == -1)
    {
    }

    goto LABEL_23;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11(v7, PredicateType);
  if (v18)
  {
    v11(v9, PredicateType);
    if (qword_100935CB8 == -1)
    {
    }

    goto LABEL_23;
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11(v7, PredicateType);
  if (v19)
  {
    v11(v9, PredicateType);
    if (qword_100935CC8 == -1)
    {
    }

LABEL_23:
    swift_once();
  }

  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11(v7, PredicateType);
  v11(v9, PredicateType);
  if ((v20 & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v22 = sub_1001A61EC(inited);
  swift_setDeallocating();
  v23 = *(inited + 16);
  swift_arrayDestroy();
  return v22;
}

void *sub_100235FB8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v20 = a2;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v4 = *(PredicateType - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(PredicateType);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    goto LABEL_2;
  }

LABEL_15:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_2:
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_3;
  }

  v8 = sub_100391354(_swiftEmptyArrayStorage);
LABEL_3:
  v21 = v8;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v19[1] = v4 + 16;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = (*(v4 + 16))(v7, *(a1 + 48) + *(v4 + 72) * (v15 | (v14 << 6)), PredicateType);
      v17 = v20(v16);
      sub_10035585C(v17);
      (*(v4 + 8))(v7, PredicateType);
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(a1 + 56 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  return v21;
}

uint64_t sub_1002361DC(uint64_t a1, uint64_t *a2)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v4 = sub_1001A61EC(inited);
  swift_setDeallocating();
  v5 = *(inited + 16);
  result = swift_arrayDestroy();
  *a2 = v4;
  return result;
}

uint64_t sub_100236318(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v5 = sub_1001A61EC(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  result = swift_arrayDestroy();
  *a3 = v5;
  return result;
}

uint64_t sub_1002363B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  (*(v6 + 16))(v9, a3, v5, v13);
  v17 = (*(v6 + 88))(v9, v5);
  if (v17 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
  {
    v18 = &enum case for REMHashtagLabelDataView.Operation.all(_:);
LABEL_5:
    (*(v11 + 104))(v15, *v18, v10);
    v19 = sub_100584A24(v21, v22, v15, v16);
    (*(v11 + 8))(v15, v10);
    return v19;
  }

  if (v17 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {
    v18 = &enum case for REMHashtagLabelDataView.Operation.some(_:);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002365DC()
{
  result = sub_10058478C(*v0);
  if (!v1)
  {
    sub_1005841B8(result);
    v4 = v3;

    return v4;
  }

  return result;
}

void *sub_10023662C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  *&v68 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v63 - v5;
  v7 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = v63 - v10;
  v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v63 - v18;
  __chkstk_darwin(v17);
  v21 = v63 - v20;
  REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange.lowerBound.getter();
  REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange.upperBound.getter();
  v22 = *(v8 + 56);
  sub_10012F7FC(v21, v11);
  sub_10012F7FC(v19, &v11[v22]);
  v23 = *(v1 + 48);
  LODWORD(v8) = v23(v11, 1, v0);
  v24 = v23(&v11[v22], 1, v0);
  v25 = v24;
  if (v8 == 1)
  {
    if (v24 == 1)
    {
      return _swiftEmptyArrayStorage;
    }

    else
    {
      (*(v1 + 32))(v6, &v11[v22], v0);
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100791300;
      KeyPath = swift_getKeyPath();
      (*(v1 + 16))(v16, v6, v0);
      (*(v1 + 56))(v16, 0, 1, v0);
      v41 = sub_1003EA414(KeyPath, v16);

      *(v26 + 32) = v41;
      (*(v1 + 8))(v6, v0);
    }
  }

  else
  {
    v27 = *(v1 + 32);
    v27(v6, v11, v0);
    v67 = v6;
    if (v25 == 1)
    {
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      inited = swift_initStackObject();
      v68 = xmmword_100791340;
      *(inited + 16) = xmmword_100791340;
      v29 = swift_getKeyPath();
      v30 = sub_1003EAA4C(v29);

      *(inited + 32) = v30;
      v31 = swift_getKeyPath();
      Date.startOfDay.getter();
      v32 = *(v1 + 56);
      v32(v16, 0, 1, v0);
      v33 = sub_100390EF0(v31, v16);

      *(inited + 40) = v33;
      v34 = sub_10000C2B0(inited);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100791300;
      v35 = swift_initStackObject();
      *(v35 + 16) = v68;
      *(v35 + 32) = v34;
      v36 = swift_getKeyPath();
      v37 = v67;
      (*(v1 + 16))(v16, v67, v0);
      v32(v16, 0, 1, v0);
      v38 = v34;
      v39 = sub_1003EA208(v36, v16);

      *(v35 + 40) = v39;
      *(v26 + 32) = sub_100025060(v35);

      (*(v1 + 8))(v37, v0);
    }

    else
    {
      v27(v68, &v11[v22], v0);
      sub_1000F5104(&qword_10093B980, qword_10079A3D0);
      v42 = swift_initStackObject();
      v66 = xmmword_100791340;
      *(v42 + 16) = xmmword_100791340;
      v43 = swift_getKeyPath();
      v44 = sub_1003EAA4C(v43);

      *(v42 + 32) = v44;
      v45 = swift_getKeyPath();
      Date.startOfDay.getter();
      v46 = *(v1 + 56);
      v63[1] = v1 + 56;
      v64 = v46;
      v46(v16, 0, 1, v0);
      v47 = sub_100390EF0(v45, v16);

      *(v42 + 40) = v47;
      v48 = sub_10000C2B0(v42);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100791300;
      v49 = swift_initStackObject();
      v65 = v49;
      *(v49 + 16) = v66;
      *(v49 + 32) = v48;
      v50 = swift_initStackObject();
      *(v50 + 16) = v66;
      v51 = swift_getKeyPath();
      v52 = v6;
      v53 = v51;
      v63[0] = *(v1 + 16);
      (v63[0])(v16, v52, v0);
      v54 = v64;
      v64(v16, 0, 1, v0);
      *&v66 = v48;
      v55 = sub_1003EA208(v53, v16);

      *(v50 + 32) = v55;
      v56 = swift_getKeyPath();
      v57 = v68;
      (v63[0])(v16, v68, v0);
      v54(v16, 0, 1, v0);
      v58 = sub_1003EA414(v56, v16);

      *(v50 + 40) = v58;
      v59 = sub_10000C2B0(v50);
      v60 = v65;
      *(v65 + 40) = v59;
      *(v26 + 32) = sub_100025060(v60);

      v61 = *(v1 + 8);
      v61(v57, v0);
      v61(v67, v0);
    }
  }

  return v26;
}

uint64_t sub_100236DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100791340;

  v6 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    sub_1000F5104(&qword_10093E1A0, &qword_10079D450);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100791340;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    *(v5 + 88) = sub_1000F5104(&qword_10093E1A8, qword_10079C310);
    *(v5 + 64) = v10;
    v11 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [objc_opt_self() predicateWithFormat:v11 argumentArray:isa];

    return v13;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v15._object = 0x80000001007EC120;
    v15._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v15);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s16DateFilterActionOMa()
{
  result = qword_10093E220;
  if (!qword_10093E220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100237038(uint64_t a1, uint64_t a2)
{
  v4 = _s16DateFilterActionOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023709C(uint64_t a1)
{
  v2 = _s16DateFilterActionOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100237128()
{
  result = qword_100943DD0;
  if (!qword_100943DD0)
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943DD0);
  }

  return result;
}

uint64_t *sub_100237190(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 4, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 4, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1002372F8(uint64_t a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 4, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_1002373C8(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 4, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_1002374F4(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 4, v6);
  v10 = v8(a2, 4, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_100237688(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 4, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_1002377B4(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 4, v6);
  v10 = v8(a2, 4, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_100237970(uint64_t a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 4, v2);
}

uint64_t sub_1002379D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 4, v4);
}

uint64_t sub_100237A48()
{
  result = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

Swift::Int sub_100237AC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100237B38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100237B7C@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002387D8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100237BB8()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  v3 = 0xD000000000000028;
  if (v2 != 3)
  {
    v3 = 0xD000000000000020;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000020;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v1 = 0xD000000000000026;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v4;
  }

  *v0;
  return result;
}

uint64_t sub_100237C40()
{
  v1 = [v0 operationTypeRawValue];
  if (v1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * v1));
  }
}

id sub_100237C88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  result = [v0 listIdentifier];
  if (result)
  {
    v10 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 32))(v8, v6, v1);
    if (sub_100237C40() < 4u)
    {
      v11 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v13 = [v11 objectIDWithUUID:isa];

      (*(v2 + 8))(v8, v1);
      return v13;
    }

    else
    {
      (*(v2 + 8))(v8, v1);
      return 0;
    }
  }

  return result;
}

unint64_t sub_100238784()
{
  result = qword_10093E258;
  if (!qword_10093E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E258);
  }

  return result;
}

uint64_t sub_1002387D8(unsigned __int16 a1)
{
  if (a1 >= 6u)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

id REMCDSmartListSection.parentCDObject.getter()
{
  v1 = [v0 smartList];

  return v1;
}

uint64_t static REMCDSmartListSection.cdEntityName.getter()
{
  sub_100238948();
  v0 = [swift_getObjCClassFromMetadata() cdEntityName];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

unint64_t sub_100238948()
{
  result = qword_10093CC10;
  if (!qword_10093CC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093CC10);
  }

  return result;
}

Swift::Int __swiftcall REMCDSmartListSection.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 smartList];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDSmartListSection.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E2790);
  sub_100034610(&unk_1008E27B0);
  return v0;
}

id REMCDSmartListSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDSmartListSection();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDSmartListSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDSmartListSection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100238C34()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E290);
  v1 = sub_100006654(v0, qword_10093E290);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100238CFC()
{
  result = [objc_opt_self() housekeepingingActivityScheduler];
  qword_10093E2A8 = result;
  return result;
}

uint64_t sub_100238D38()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_100935CD8 != -1)
  {
    swift_once();
  }

  v13 = qword_10093E2A8;
  static OSSignpostID.exclusive.getter();
  v52 = v13;
  os_signpost(_:dso:log:name:signpostID:)();
  v51 = *(v9 + 8);
  v53 = v9 + 8;
  v51(v12, v8);
  v14 = v1[3];
  v54 = v1[2];
  v15 = qword_100935CD0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100006654(v16, qword_10093E290);

  v46 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = v2;
    v48 = v7;
    v21 = v8;
    v22 = v20;
    v23 = swift_slowAlloc();
    v55 = v23;
    *v22 = 136446210;
    v24 = v54;
    *(v22 + 4) = sub_10000668C(v54, v14, &v55);
    _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] start execute()", v22, 0xCu);
    sub_10000607C(v23);

    v8 = v21;
    v7 = v48;
    v2 = v45;
  }

  else
  {

    v24 = v54;
  }

  v25 = Date.init()();
  v56[0] = 0xD00000000000003ALL;
  v56[1] = 0x80000001007F1C10;
  memset(&v56[2], 0, 24);
  v57 = 0;
  v58 = 0x4000;
  v26 = v1[4];
  __chkstk_darwin(v25);
  *(&v44 - 4) = v1;
  *(&v44 - 3) = v24;
  *(&v44 - 2) = v14;
  *(&v44 - 1) = v7;
  v27 = v49;
  sub_100014A64(v56, sub_10023A638, (&v44 - 6));
  if (v27)
  {

    (*(v50 + 8))(v7, v2);
    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v28 = v12;
    v29 = v8;
  }

  else
  {
    v48 = v7;
    v49 = v8;
    v30 = v50;
    v31 = v47;
    (*(v50 + 16))(v47, v7, v2);

    v32 = v2;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v31;
      v36 = v30;
      v37 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v37 = 136446466;
      v38 = sub_10000668C(v54, v14, &v55);
      LODWORD(v54) = v34;
      v39 = v38;

      *(v37 + 4) = v39;
      *(v37 + 12) = 2048;
      Date.rem_elapsedInMilliseconds.getter();
      v41 = v40;
      v42 = *(v36 + 8);
      v42(v35, v32);
      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v54, "[%{public}s] end execute(), elapsedSeconds: %f ms", v37, 0x16u);
      sub_10000607C(v46);
    }

    else
    {

      v42 = *(v30 + 8);
      v42(v31, v2);
    }

    v42(v48, v32);
    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v28 = v12;
    v29 = v49;
  }

  return (v51)(v28, v29);
}

void sub_100239364(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v30 = a3;
  v31 = a4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = objc_autoreleasePoolPush();
  v15 = a2[13];
  v14 = a2[14];
  sub_10000F61C(a2 + 10, v15);
  v16 = (*(*(v14 + 8) + 8))(v15) / 86400.0;
  if (COERCE__INT64(fabs(v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v17 = sub_1003EFE4C(a1, v16);
  if (v5)
  {
    goto LABEL_9;
  }

  v29 = v17;
  if (qword_100935CD0 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10093E290);
  (*(v10 + 16))(v13, a5, v9);
  v19 = v31;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v19;
    v25 = v23;
    v33 = v23;
    *v22 = 136446978;
    *(v22 + 4) = sub_10000668C(v30, v24, &v33);
    *(v22 + 12) = 2048;
    *(v22 + 14) = v29;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v16;
    *(v22 + 32) = 2048;
    Date.rem_elapsedInMilliseconds.getter();
    v27 = v26;
    (*(v10 + 8))(v13, v9);
    *(v22 + 34) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] batch deleted %ld reminders that were deleted for over %f days, elapsedSeconds: %f ms.", v22, 0x2Au);
    sub_10000607C(v25);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

LABEL_9:
  objc_autoreleasePoolPop(v32);
}

uint64_t sub_10023967C()
{
  v1 = *(v0 + 24);

  sub_10000607C((v0 + 40));
  sub_10000607C((v0 + 80));

  return swift_deallocClassInstance();
}

BOOL sub_1002396F0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations];
  v4 = *&v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24];
  v3 = *&v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 32];
  sub_10000F61C(v2, v4);
  v5 = (*(*(v3 + 8) + 8))(v4);
  if (v5 <= 0.0)
  {
    if (qword_100935CD0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10093E290);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = &v7[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier];
      v13 = *&v7[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier];
      v14 = *(v12 + 1);

      v15 = sub_10000668C(v13, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] configuration validation fail - cannot execute because configurations.batchDeleteExpiredRemindersMinimumDeletionTimeInterval must be greater than 0", v10, 0xCu);
      sub_10000607C(v11);
    }
  }

  return v5 > 0.0;
}

unint64_t sub_1002398A8()
{
  _StringGuts.grow(_:)(31);

  v1 = *(v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier + 8);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x746973796261622ELL;
  v4._object = 0xEB00000000726574;
  String.append(_:)(v4);
  return 0xD000000000000012;
}

double sub_1002399D0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_100239A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v23);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDBatchDeleteExpiredRemindersActivity();
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    sub_10000A87C(v2 + 16, v19);
    v5 = v20;
    v6 = v21;
    sub_10000F61C(v19, v20);
    (*(v6 + 8))(v5, v6);
    sub_10000607C(v19);
    return sub_10000607C(v23);
  }

  else
  {
    if (qword_100935CD0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093E290);
    sub_10000A87C(a1, v19);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      sub_10000A87C(v19, &v18);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000607C(v19);
      v16 = sub_10000668C(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDBatchDeleteExpiredRemindersExecutionDateStorage.lastExecutedDate(for:) must work with RDBatchDeleteExpiredRemindersActivity only {executable: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    else
    {

      sub_10000607C(v19);
    }

    sub_10000607C(v23);
    v17 = type metadata accessor for Date();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_100239CD0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - v7;
  sub_10000A87C(a1, v26);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDBatchDeleteExpiredRemindersActivity();
  if (swift_dynamicCast())
  {

    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a2, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    sub_10000C9DC(v2 + 16, v11);
    (*(v12 + 16))(v8, v11, v12);
    swift_endAccess();
  }

  else
  {
    if (qword_100935CD0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10093E290);
    sub_10000A87C(a1, v25);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      sub_10000A87C(v25, v23);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      sub_10000607C(v25);
      v21 = sub_10000668C(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDBatchDeleteExpiredRemindersExecutionDateStorage.updateLastExecutedDate(for:) must work with RDBatchDeleteExpiredRemindersActivity only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v25);
    }
  }

  return sub_10000607C(v26);
}

uint64_t sub_10023A120@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_executable);
  a1[3] = type metadata accessor for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersActivityExecutable();
  a1[4] = &off_1008EB370;
  a1[5] = &off_1008EB380;
  *a1 = v3;
}

uint64_t sub_10023A184()
{
  v1 = (v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 32);
  sub_10000F61C(v1, v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_10023A214@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_babysitter;
  swift_beginAccess();
  return sub_100010364(v1 + v3, a1, &unk_10093D8F0, &unk_10079B600);
}

char *sub_10023A27C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24);
  v5 = *(*v2 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 32);
  sub_10000F61C(&v11[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations], *&v11[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24]);
  v7 = (*(*(v5 + 24) + 8))(v6);
  v13 = a1;
  v14 = &off_1008EB3C0;
  *&v12 = v11;
  v8 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v9 = swift_allocObject();
  sub_100054B6C(&v12, v9 + 16);
  *(v9 + 56) = v7;
  a2[3] = v8;
  a2[4] = &off_1008F5B28;
  *a2 = v9;

  return v11;
}

uint64_t sub_10023A360()
{
  v1 = (*v0 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_10023A3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 batchDeleteExpiredRemindersLastExecutionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_10023A470(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v3 setBatchDeleteExpiredRemindersLastExecutionDate:?];
}

id sub_10023A584()
{
  v1 = [*v0 batchDeleteExpiredRemindersRateReduceFactor];

  return v1;
}

uint64_t sub_10023A668()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E500);
  v1 = sub_100006654(v0, qword_10093E500);
  if (qword_100936498 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023A730(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x68636E75616CLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0x80000001007EA980;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x68636E75616CLL;
  }

  if (*a2)
  {
    v7 = 0x80000001007EA980;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10023A7D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10023A85C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10023A8CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10023A94C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E27F0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10023A9AC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001007EA980;
  v3 = 0x68636E75616CLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

void sub_10023A9EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration + 8);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_100935CE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093E500);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "#️⃣ RDSharedInlineTagAutoConvertEngine Starting...", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_cancellables;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = __CocoaSet.count.getter();

    if (v16)
    {
      goto LABEL_7;
    }
  }

  else if (*(v15 + 16))
  {
LABEL_7:
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  sub_10023ACE0();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "#️⃣ RDSharedInlineTagAutoConvertEngine Started";
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_10023ACE0()
{
  v1 = *v0;
  v67 = v0;
  v68 = v1;
  v2 = sub_1000F5104(&qword_10093E6C8, &qword_10079C960);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v57 = &v44 - v5;
  v6 = sub_1000F5104(&qword_10093E6D0, &qword_10079C968);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v58 = &v44 - v9;
  v10 = sub_1000F5104(&qword_10093E6D8, &qword_10079C970);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v59 = &v44 - v13;
  v14 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v48 = &v44 - v16;
  v17 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v51 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v56 = *(v51 - 8);
  v22 = v56[8];
  __chkstk_darwin(v51);
  v24 = &v44 - v23;
  v52 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v54 = *(v52 - 8);
  v25 = *(v54 + 64);
  __chkstk_darwin(v52);
  v27 = &v44 - v26;
  v70 = sub_100441A9C(0xD000000000000022, 0x800000010079C8D0, 0);
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  v55 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  Publisher.map<A>(_:)();
  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
  Publisher.filter(_:)();

  (*(v18 + 8))(v21, v17);
  v53 = v67 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration;
  v70 = *(v67 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration + 8);
  v28 = v70;
  v66 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v29 = *(v66 - 8);
  v49 = *(v29 + 56);
  v50 = v29 + 56;
  v30 = v48;
  v49(v48, 1, 1, v66);
  v47 = sub_100007F54();
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);
  v46 = sub_100006CA4();
  v31 = v28;
  v45 = v31;
  v32 = v51;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v30, &qword_100939980, &unk_10079ADA0);
  (v56[1])(v24, v32);
  v56 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50);
  v33 = v52;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v54 + 8))(v27, v33);
  v54 = OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_cancellables;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v70 = sub_10023B6E8();
  v69 = sub_10023BBC4();
  sub_1000F5104(&qword_10093E6F0, &qword_10079C978);
  sub_10000CB48(&qword_10093E6F8, &qword_10093E6F0, &qword_10079C978);
  v34 = v57;
  Publisher.merge(with:)();

  LODWORD(v33) = *(type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0) + 28);
  v70 = v31;
  v35 = v49;
  v49(v30, 1, 1, v66);
  sub_10000CB48(&qword_10093E700, &qword_10093E6C8, &qword_10079C960);
  v36 = v58;
  v37 = v60;
  v38 = v34;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000050A4(v30, &qword_100939980, &unk_10079ADA0);
  v39 = v45;

  (*(v61 + 8))(v38, v37);
  v70 = v39;
  v35(v30, 1, 1, v66);
  sub_10000CB48(&qword_10093E708, &qword_10093E6D0, &qword_10079C968);
  v40 = v59;
  v41 = v62;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v30, &qword_100939980, &unk_10079ADA0);

  (*(v63 + 8))(v36, v41);
  *(swift_allocObject() + 16) = v68;
  sub_10000CB48(&qword_10093E710, &qword_10093E6D8, &qword_10079C970);
  v42 = v64;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v65 + 8))(v40, v42);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10023B6E8()
{
  v28 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v28);
  v4 = &v28 - v3;
  v5 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_1000F5104(&unk_10093E740, &qword_10079C9A8);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100791340;
  *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 40) = v17;
  *(v16 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 56) = v18;
  v19 = sub_100441DF8(v15, 0xD00000000000004DLL, 0x80000001007F1E30, v16);

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v33 = type metadata accessor for REMCKSharedEntitySyncActivity();
  sub_1000F5104(&unk_10093E750, qword_10079FC30);
  *(inited + 32) = String.init<A>(describing:)();
  *(inited + 40) = v21;
  v22 = sub_1001A5660(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v33 = v19;
  *(swift_allocObject() + 16) = v22;
  sub_1000F5104(&unk_10093D170, &unk_100791BC0);
  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0);
  Publisher.map<A>(_:)();

  sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0);
  v23 = v28;
  Publisher.filter(_:)();

  (*(v1 + 8))(v4, v23);
  sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0);
  v24 = v31;
  Publisher.map<A>(_:)();
  (*(v32 + 8))(v9, v24);
  sub_10000CB48(&qword_10093E760, &unk_10093E740, &qword_10079C9A8);
  v25 = v29;
  v26 = Publisher.eraseToAnyPublisher()();
  (*(v30 + 8))(v14, v25);
  return v26;
}

uint64_t sub_10023BBC4()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_1000F5104(&qword_10093E718, &qword_10079C980);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v11 = *(v10 - 8);
  v12 = v11;
  v33 = v10;
  v34 = v11;
  v13 = *(v11 + 64);
  __chkstk_darwin(v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000F5104(&qword_10093E720, &qword_10079C988);
  v38 = *(v35 - 8);
  v16 = *(v38 + 64);
  __chkstk_darwin(v35);
  v18 = &v33 - v17;
  v19 = sub_1000F5104(&qword_10093E728, &unk_10079C990);
  v20 = *(v19 - 8);
  v36 = v19;
  v37 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v33 - v22;
  v40 = 0;
  Just.init(_:)();
  v24 = v1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration;
  v25 = *(v1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration + 16);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  (*(v12 + 56))(v9, 1, 1, v10);
  v26 = *(v24 + 8);
  v39 = v26;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  sub_100007F54();
  sub_10000CB48(&qword_10093E730, &qword_10093E720, &qword_10079C988);
  sub_100006CA4();
  v28 = v26;
  v29 = v35;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);

  sub_1000050A4(v9, &qword_10093E718, &qword_10079C980);
  (*(v34 + 8))(v15, v33);
  (*(v38 + 8))(v18, v29);
  sub_10000CB48(&qword_10093E738, &qword_10093E728, &unk_10079C990);
  v30 = v36;
  v31 = Publisher.eraseToAnyPublisher()();
  (*(v37 + 8))(v23, v30);
  return v31;
}

void sub_10023C004(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_babysitTarget);
  sub_10023CAAC();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10023C058(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a2;
  v11 = *(a1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration + 8);
  *v9 = v11;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if (v11)
  {
    if (qword_100935CE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10093E500);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10000668C(0xD00000000000004DLL, 0x80000001007F1E30, v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "os_transaction INIT {name: %{public}s}", v16, 0xCu);
    sub_10000607C(v17);
  }

  String.utf8CString.getter();
  os_transaction_create();

  v18 = *(a1 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_babysitTarget);
  v19 = sub_10023C638(v10);
  if (v19)
  {
    v20 = v19;
    v21 = objc_autoreleasePoolPush();
    sub_10023C32C(v10, a1);
    objc_autoreleasePoolPop(v21);
  }

  else
  {
    sub_10023C778(v10);
  }

  sub_10023D484();
  return swift_unknownObjectRelease();
}

void sub_10023C32C(char a1, uint64_t a2)
{
  if (qword_100935CE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10093E500);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v23 = a1;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = a2;
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136446210;
    if (a1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x68636E75616CLL;
    }

    if (a1)
    {
      v10 = 0x80000001007EA980;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    v11 = sub_10000668C(v9, v10, &v24);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "#️⃣ RDSharedInlineTagAutoConvertEngine: Starting journal consumption due to %{public}s", v7, 0xCu);
    sub_10000607C(v8);
    a2 = v22;
  }

  v13 = *(a2 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_handler);
  v12 = *(a2 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_handler + 8);
  ObjectType = swift_getObjectType();
  (*(v12 + 16))(ObjectType, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    if (v23)
    {
      v19 = 0xD000000000000010;
    }

    else
    {
      v19 = 0x68636E75616CLL;
    }

    if (v23)
    {
      v20 = 0x80000001007EA980;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    v21 = sub_10000668C(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "#️⃣ RDSharedInlineTagAutoConvertEngine: Finished journal consumption due to %{public}s", v17, 0xCu);
    sub_10000607C(v18);
  }
}

id sub_10023C638(char a1)
{
  v3 = [objc_opt_self() sharedBabysitter];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (a1)
  {
    v5 = 0x80000001007EA980;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (v5 != 0xE600000000000000 || (a1 & 1) != 0)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationStoreDidChange;
    if (v8)
    {
      v6 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationDidLaunch;
    }
  }

  else
  {

    v6 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationDidLaunch;
  }

  v9 = (v1 + *v6);
  v10 = *v9;
  v11 = v9[1];

  v12 = String._bridgeToObjectiveC()();

  v7 = [v4 tokenByRegisteringAccount:v1 forOperationWithName:v12];

  return v7;
}

void sub_10023C778(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0x80000001007EA980;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  if (v3 != 0xE600000000000000 || (a1 & 1) != 0)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationStoreDidChange;
    if (v5)
    {
      v4 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationDidLaunch;
    }
  }

  else
  {

    v4 = &OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_babysitterOperationDidLaunch;
  }

  v6 = &v2[*v4];
  v8 = *v6;
  v7 = *(v6 + 1);

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 babySatErrorWithOperationName:v10];

  sub_1000F5104(&unk_10093D030, &unk_10079C950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v13 = String._bridgeToObjectiveC()();

  *(inited + 48) = v13;
  v14 = sub_10038D9FC(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
  type metadata accessor for Analytics();
  v15 = *&v2[OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_analyticsCrashDetected];
  v16 = *&v2[OBJC_IVAR____TtCC7remindd34RDSharedInlineTagAutoConvertEngineP33_5B5B2EA781175C6DB341AB3D5E32460613BabysitTarget_analyticsCrashDetected + 8];
  sub_1004646CC(v14);

  v17 = v11;
  static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();

  if (qword_100935CE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10093E500);
  v19 = v2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000668C(0xD00000000000003FLL, 0x80000001007F1DA0, &v24);
    _os_log_impl(&_mh_execute_header, v20, v21, "Babysitting RDSharedInlineTagAutoConvertEngine because it failed too many times {waiterID: %{public}s}", v22, 0xCu);
    sub_10000607C(v23);
  }
}

void sub_10023CAAC()
{
  v1 = [objc_opt_self() sharedBabysitter];
  if (v1)
  {
    v9 = v1;
    v2 = String._bridgeToObjectiveC()();
    [v9 giveAccountWithIDAnotherChance:v2];

    if (qword_100935CE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10093E500);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000668C(0xD00000000000003FLL, 0x80000001007F1DA0, &v10);
      _os_log_impl(&_mh_execute_header, v5, v6, "RDSharedInlineTagAutoConvertEngine: Reset babysitter upon enabled/disabled CloudKit account(s) for {waiterID: %{public}s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    else
    {
    }
  }
}

id sub_10023CD3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSharedInlineTagAutoConvertEngine.BabysitTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10023CDDC()
{
  sub_10023D420(v0 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_configuration);
  v1 = *(v0 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_handler);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC7remindd34RDSharedInlineTagAutoConvertEngine_cancellables);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10023CE98()
{
  result = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(319);
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

char *sub_10023CF90(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v7 = a2[1];
    v6 = a2[2];
    *(a1 + 1) = v7;
    *(a1 + 2) = v6;
    v8 = *(a3 + 28);
    v10 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    v11 = *(*(v10 - 8) + 16);
    v12 = v4;
    v13 = v7;
    v11(&v5[v8], a2 + v8, v10);
  }

  return v5;
}

uint64_t sub_10023D074(id *a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_10023D0F0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  *(a1 + 2) = *(a2 + 16);
  v7 = *(a3 + 28);
  v8 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v9 = *(*(v8 - 8) + 16);
  v10 = v5;
  v11 = v6;
  v9(&a1[v7], a2 + v7, v8);
  return a1;
}

uint64_t sub_10023D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a2 + 8);
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;
  v11 = v9;

  *(a1 + 16) = *(a2 + 16);
  v12 = *(a3 + 28);
  v13 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v13 - 8) + 24))(a1 + v12, a2 + v12, v13);
  return a1;
}

uint64_t sub_10023D230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_10023D2B0(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  *(a1 + 16) = *(a2 + 2);
  v8 = *(a3 + 28);
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v9 - 8) + 40))(a1 + v8, &a2[v8], v9);
  return a1;
}

uint64_t sub_10023D374()
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10023D420(uint64_t a1)
{
  v2 = type metadata accessor for RDSharedInlineTagAutoConvertEngine.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10023D484()
{
  if (qword_100935CE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10093E500);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10000668C(0xD00000000000004DLL, 0x80000001007F1E30, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: %{public}s}", v2, 0xCu);
    sub_10000607C(v3);
  }
}

unint64_t sub_10023D5E0()
{
  result = qword_10093E768;
  if (!qword_10093E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E768);
  }

  return result;
}

uint64_t sub_10023D634()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E770);
  v1 = sub_100006654(v0, qword_10093E770);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10023D6FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_100005F4C(0x73656E6F6870, 0xE600000000000000);
    if (v3)
    {
      sub_100005EF0(*(a1 + 56) + 32 * v2, v15);
      sub_1000F5104(&unk_10093B300, &unk_100797780);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v4 = sub_100005F4C(0x736C69616D65, 0xE600000000000000);
          if (v5)
          {
            sub_100005EF0(*(a1 + 56) + 32 * v4, v15);
            if (swift_dynamicCast())
            {
              v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              isa = Array._bridgeToObjectiveC()().super.isa;

              v8 = Array._bridgeToObjectiveC()().super.isa;

              v9 = [v6 initWithPhones:isa emails:v8];

              return v9;
            }
          }
        }
      }
    }
  }

  if (qword_100935CE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10093E770);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Can't construct REMContactRepresentation from invalid JSON", v14, 2u);
  }

  return 0;
}

id sub_10023D92C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_10023D6FC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10023D954()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E788);
  v1 = sub_100006654(v0, qword_10093E788);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023DA1C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1000F5104(&qword_10093E7A0, &qword_10079CAA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007912F0;
  v6 = objc_opt_self();
  v7 = [v6 sharedConfiguration];
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  v10 = [ObjCClassFromMetadata daemonUserDefaults];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedBabysitter];
  v14 = v13;
  if (v13)
  {
    v13 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v15 = &off_1008F54F0;
  }

  else
  {
    v15 = 0;
    v91 = 0;
    v92 = 0;
  }

  v90 = v14;
  v93 = v13;
  v94 = v15;
  v16 = a3;
  v17 = sub_10023EADC(v16, v9, v12, &v90);

  *(v5 + 32) = v17;
  *(v5 + 40) = &off_1008EACA8;
  v18 = sub_10023F408(v16);
  if (v18)
  {
    v19 = &off_1008F9F18;
  }

  else
  {
    v19 = 0;
  }

  *(v5 + 48) = v18;
  *(v5 + 56) = v19;
  v20 = sub_10023FF04(v16);
  if (v20)
  {
    v21 = &off_1008F9F18;
  }

  else
  {
    v21 = 0;
  }

  *(v5 + 64) = v20;
  *(v5 + 72) = v21;
  v22 = sub_1002403F0(v16);
  v23 = &off_1008FDD60;
  if (!v22)
  {
    v23 = 0;
  }

  *(v5 + 80) = v22;
  *(v5 + 88) = v23;
  v24 = [v6 sharedConfiguration];
  v25 = [ObjCClassFromMetadata daemonUserDefaults];
  v26 = [v11 sharedBabysitter];
  v27 = v26;
  if (v26)
  {
    v26 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v28 = &off_1008F54F0;
  }

  else
  {
    v28 = 0;
    v91 = 0;
    v92 = 0;
  }

  v90 = v27;
  v93 = v26;
  v94 = v28;
  v29 = v16;
  v30 = sub_100240544(v29, v24, v25, &v90);

  *(v5 + 96) = v30;
  *(v5 + 104) = &off_1008F1788;
  v31 = sub_100240898(v29);
  v32 = &off_1008EB418;
  if (!v31)
  {
    v32 = 0;
  }

  *(v5 + 112) = v31;
  *(v5 + 120) = v32;
  v90 = v5;
  sub_1000F5104(&qword_10093E7A8, &qword_10079CAA8);
  sub_1000F5104(&unk_10093F810, &qword_10079CAB0);
  sub_1002409C0();
  v33 = Sequence.removingNils<A>()();

  v34 = [v6 sharedConfiguration];
  [v34 housekeepingActivityMinimumDelay];
  v36 = v35;

  v37 = sub_10027058C(v33);
  v38 = (v37 + 4);
  v39 = -v37[2];
  v40 = -1;
  do
  {
    v41 = v39 + v40;
    if (v39 + v40 == -1)
    {
      break;
    }

    if (++v40 >= v37[2])
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_30;
    }

    v16 = (v38 + 40);
    sub_10000A87C(v38, &v90);
    v42 = v93;
    v43 = v94;
    sub_10000F61C(&v90, v93);
    v44 = (v43[1])(v42, v43);
    sub_10000607C(&v90);
    v38 = v16;
  }

  while ((v44 & 1) != 0);
  v83 = v29;

  v89 = v33;
  v45 = sub_10027058C(v33);
  v46 = (v45 + 4);
  v40 = -v45[2];
  v47 = -1;
  do
  {
    v39 = v40 + v47;
    if (v40 + v47 == -1)
    {
      break;
    }

    if (++v47 >= v45[2])
    {
      goto LABEL_42;
    }

    v16 = (v46 + 40);
    sub_10000A87C(v46, &v90);
    v48 = v93;
    v49 = v94;
    sub_10000F61C(&v90, v93);
    v50 = (v49[2])(v48, v49);
    sub_10000607C(&v90);
    v46 = v16;
  }

  while ((v50 & 1) == 0);

  v51 = sub_10027058C(v33);
  v52 = (v51 + 4);
  v40 = -v51[2];
  v53 = -1;
  do
  {
    v16 = (v40 + v53);
    if (v40 + v53 == -1)
    {
      break;
    }

    if (++v53 >= v51[2])
    {
      goto LABEL_43;
    }

    v54 = v52 + 40;
    sub_10000A87C(v52, &v90);
    v55 = v93;
    v56 = v94;
    sub_10000F61C(&v90, v93);
    v57 = (v56[3])(v55, v56);
    sub_10000607C(&v90);
    v52 = v54;
  }

  while ((v57 & 1) == 0);

  type metadata accessor for RDJitteredMinimumDelayXPCActivityFactory();
  v58 = swift_allocObject();
  *(v58 + 16) = v36;
  *(v58 + 24) = v41 == -1;
  *(v58 + 25) = v39 != -1;
  *(v58 + 26) = v16 != -1;
  v16 = sub_1000F5104(&qword_10093E7B8, &qword_10079CAB8);
  v40 = swift_allocObject();
  *(v40 + 56) = xmmword_10079CA90;
  *(v40 + 72) = 0x80000001007F1E80;
  *(v40 + 80) = 0xD00000000000001DLL;
  *(v40 + 128) = 0;
  *(v40 + 88) = 0x80000001007F1E80;
  *(v40 + 96) = 0;
  *(v40 + 104) = 0;
  *(v40 + 112) = 0;
  *(v40 + 118) = 0;
  v39 = v89;
  *(v40 + 16) = v89;
  *(v40 + 24) = a1;
  *(v40 + 32) = a2;
  *(v40 + 40) = v83;
  *(v40 + 48) = v58;
  v59 = qword_100935CF0;
  v60 = v83;

  v61 = a1;
  v62 = a2;
  if (v59 != -1)
  {
    goto LABEL_44;
  }

LABEL_30:
  v63 = type metadata accessor for Logger();
  sub_100006654(v63, qword_10093E788);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v90 = v88;
    *v66 = 136446210;
    v67 = *(v39 + 16);
    if (v67)
    {
      v81 = v66;
      v82 = v65;
      v84 = v64;
      sub_100026EF4(0, v67, 0);
      v68 = 32;
      do
      {
        v69 = *(v39 + v68);
        swift_getObjectType();
        swift_getWitnessTable();
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        v74 = _swiftEmptyArrayStorage[2];
        v73 = _swiftEmptyArrayStorage[3];
        if (v74 >= v73 >> 1)
        {
          sub_100026EF4((v73 > 1), v74 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v74 + 1;
        v75 = &_swiftEmptyArrayStorage[2 * v74];
        v75[4] = v70;
        v75[5] = v72;
        v68 += 16;
        --v67;
        v39 = v89;
      }

      while (v67);

      v64 = v84;
      v65 = v82;
      v66 = v81;
    }

    else
    {
    }

    v76 = Array.description.getter();
    v78 = v77;

    v79 = sub_10000668C(v76, v78, &v90);

    *(v66 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v64, v65, "RDHousekeepingActivitiesAssembly has registered activities: %{public}s", v66, 0xCu);
    sub_10000607C(v88);
  }

  else
  {
  }

  a4[3] = v16;
  a4[4] = &off_1008F2A90;

  *a4 = v40;
  return result;
}

void *sub_10023E260(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20[3] = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v20[4] = &off_1008EAB58;
  v20[0] = a2;
  a4[2] = 0xD000000000000022;
  a4[3] = 0x80000001007F1F70;
  a4[4] = a1;
  sub_10000A87C(v20, (a4 + 5));
  a4[10] = a3;
  if (!a3)
  {
    v8 = qword_100935C30;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_10093D610);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136446210;
      v15 = a4[2];
      v16 = a4[3];

      v17 = sub_10000668C(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] configurations.staledFileAttachmentCleanupPerRunDeleteLimit is 0", v13, 0xCu);
      sub_10000607C(v14);
    }

    else
    {
    }
  }

  sub_10000607C(v20);
  return a4;
}

id sub_10023E450(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v32 = &off_1008EB308;
  v30[0] = a2;
  v29[3] = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v29[4] = &off_1008EB2E8;
  v29[0] = a3;
  v8 = type metadata accessor for RDBatchDeleteExpiredRemindersActivity();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_xpcActivityAllowBattery] = 0;
  v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_xpcActivityIsCPUIntensive] = 1;
  v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_xpcActivityIsDiskIntensive] = 0;
  v10 = &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_identifier];
  *&v28[0] = v8;
  sub_1000F5104(&qword_10093E7C0, &qword_10079CAC0);
  *v10 = String.init<A>(reflecting:)();
  v10[1] = v11;
  v12 = &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_babysitter];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *&v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_storeController] = a1;
  sub_10000A87C(v30, &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations]);
  sub_10000A87C(v29, &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_states]);
  swift_beginAccess();
  v13 = a1;
  sub_100240A24(a4, v12);
  swift_endAccess();
  sub_10000A87C(v29, v28);
  v14 = type metadata accessor for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersExecutionDateStorage();
  v15 = swift_allocObject();
  sub_100054B6C(v28, v15 + 16);
  v16 = &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_executionDateStorage];
  v16[3] = v14;
  v16[4] = &off_1008EB358;
  *v16 = v15;
  v17 = v31;
  v18 = v32;
  v19 = sub_10000F61C(v30, v31);
  v20 = swift_allocObject();
  v20[5] = v17;
  v20[6] = v18[2];
  v21 = sub_1000103CC(v20 + 2);
  (*(*(v17 - 8) + 16))(v21, v19, v17);
  v22 = &v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_rateReducerConfiguration];
  *v22 = v20;
  v22[3] = &type metadata for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersRateReducer;
  v22[4] = &off_1008EB4E0;
  sub_10000A87C(v29, v28);
  sub_10000A87C(v30, v27);
  type metadata accessor for RDBatchDeleteExpiredRemindersActivity.RDBatchDeleteExpiredRemindersActivityExecutable();
  v23 = swift_allocObject();
  v23[2] = 0xD000000000000022;
  v23[3] = 0x80000001007F1EA0;
  v23[4] = v13;
  sub_100054B6C(v28, (v23 + 5));
  sub_100054B6C(v27, (v23 + 10));
  *&v9[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_executable] = v23;
  v26.receiver = v9;
  v26.super_class = v8;
  v24 = objc_msgSendSuper2(&v26, "init");
  sub_100240A94(a4);
  sub_10000607C(v29);
  sub_10000607C(v30);
  return v24;
}

id sub_10023E788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v36 = &off_1008FDC50;
  v34[0] = a4;
  v32 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v33 = &off_1008FDC68;
  v31[0] = a2;
  v30[3] = v35;
  v30[4] = &off_1008FDC30;
  v30[0] = a3;
  v10 = type metadata accessor for RDSuggestConversionToGroceryListActivity();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_xpcActivityAllowBattery] = 0;
  v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_xpcActivityIsCPUIntensive] = 1;
  v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_xpcActivityIsDiskIntensive] = 0;
  v12 = &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_identifier];
  *&v29[0] = v10;
  sub_1000F5104(&qword_10093E7D0, &qword_10079CAD0);
  *v12 = String.init<A>(reflecting:)();
  v12[1] = v13;
  v14 = &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_babysitter];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *&v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_storeController] = a1;
  sub_10000A87C(v31, &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations]);
  sub_10000A87C(v30, &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_states]);
  sub_10000A87C(v34, &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults]);
  swift_beginAccess();
  v15 = a1;
  sub_100240A24(a5, v14);
  swift_endAccess();
  sub_10000A87C(v30, v29);
  v16 = type metadata accessor for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListExecutionDateStorage();
  v17 = swift_allocObject();
  sub_100054B6C(v29, v17 + 16);
  v18 = &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_executionDateStorage];
  v18[3] = v16;
  v18[4] = &off_1008FDCA0;
  *v18 = v17;
  v19 = v32;
  v20 = v33;
  v21 = sub_10000F61C(v31, v32);
  v22 = swift_allocObject();
  v22[5] = v19;
  v22[6] = v20[1];
  v23 = sub_1000103CC(v22 + 2);
  (*(*(v19 - 8) + 16))(v23, v21, v19);
  v24 = &v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_rateReducerConfiguration];
  *v24 = v22;
  v24[3] = &type metadata for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListRateReducer;
  v24[4] = &off_1008FDE28;
  sub_10000A87C(v30, v29);
  type metadata accessor for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListActivityExecutable();
  v25 = swift_allocObject();
  v25[2] = 0xD000000000000025;
  v25[3] = 0x80000001007F1EF0;
  v25[4] = v15;
  sub_100054B6C(v29, (v25 + 5));
  *&v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_executable] = v25;
  v28.receiver = v11;
  v28.super_class = v10;
  v26 = objc_msgSendSuper2(&v28, "init");
  sub_100240A94(a5);
  sub_10000607C(v34);
  sub_10000607C(v30);
  sub_10000607C(v31);
  return v26;
}

id sub_10023EADC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v33 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v34 = &off_1008EAB90;
  v32[0] = a2;
  v31[3] = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v31[4] = &off_1008EAB58;
  v31[0] = a3;
  v8 = type metadata accessor for RDStaledFileAttachmentCleanupActivity();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_xpcActivityAllowBattery] = 1;
  v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_xpcActivityIsCPUIntensive] = 0;
  v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_xpcActivityIsDiskIntensive] = 0;
  v10 = &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier];
  *&v30[0] = v8;
  v11 = a3;
  sub_1000F5104(&qword_10093E830, &qword_10079CB28);
  *v10 = String.init<A>(reflecting:)();
  v10[1] = v12;
  v13 = &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_babysitter];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *&v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_storeController] = a1;
  sub_10000A87C(v32, &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations]);
  sub_10000A87C(v31, &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states]);
  swift_beginAccess();
  v14 = a1;
  sub_100240A24(a4, v13);
  swift_endAccess();
  sub_10000A87C(v31, v30);
  v15 = type metadata accessor for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupExecutionDateStorage();
  v16 = swift_allocObject();
  sub_100054B6C(v30, v16 + 16);
  v17 = &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_executionDateStorage];
  v17[3] = v15;
  v17[4] = &off_1008EABE8;
  *v17 = v16;
  v18 = v33;
  v19 = v34;
  v20 = sub_10000F61C(v32, v33);
  v21 = swift_allocObject();
  v21[5] = v18;
  v21[6] = v19[2];
  v22 = sub_1000103CC(v21 + 2);
  (*(*(v18 - 8) + 16))(v22, v20, v18);
  v23 = &v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_rateReducerConfiguration];
  *v23 = v21;
  v23[3] = &type metadata for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer;
  v23[4] = &off_1008EAD70;
  v24 = v14;
  v25 = [a2 staledFileAttachmentCleanupPerRunDeleteLimit];
  type metadata accessor for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupActivityExecutable();
  v26 = swift_allocObject();
  *&v9[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_executable] = sub_10023E260(v24, v11, v25, v26);
  v29.receiver = v9;
  v29.super_class = v8;
  v27 = objc_msgSendSuper2(&v29, "init");
  sub_100240A94(a4);
  sub_10000607C(v31);
  sub_10000607C(v32);
  return v27;
}

id sub_10023EDF8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  ObjectType = swift_getObjectType();
  v68[3] = type metadata accessor for Analytics();
  v68[4] = &protocol witness table for Analytics;
  v68[0] = a6;
  v66 = type metadata accessor for RDImageDeduplicationActivity.Configurations();
  v67 = &off_1008F9E38;
  v65[0] = a2;
  v64[4] = &off_1008F9DC8;
  v64[3] = type metadata accessor for RDImageDeduplicationActivity.States();
  v64[0] = a3;
  a7[qword_10094E180] = 0;
  a7[qword_10094E188] = 1;
  a7[qword_10094E190] = 1;
  v15 = &a7[qword_10094E198];
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v16 = &a7[qword_10094E1A8];
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  *&a7[qword_10094E1B0] = a1;
  sub_10000A87C(v65, &a7[qword_10094E1B8]);
  sub_10000A87C(v64, &a7[qword_10094E1C0]);
  *&a7[qword_10094E1C8] = a4;
  swift_beginAccess();
  v17 = a1;

  v57 = a5;
  sub_100240A24(a5, v16);
  swift_endAccess();
  sub_10000A87C(v64, &v61);
  v18 = sub_1000F5104(&qword_10093E808, &qword_10079CB00);
  v19 = swift_allocObject();
  sub_100054B6C(&v61, v19 + 16);
  v20 = &a7[qword_10094E1A0];
  v20[3] = v18;
  v20[4] = &off_1008F9E58;
  *v20 = v19;
  v21 = v66;
  v22 = v67;
  v23 = sub_10000F61C(v65, v66);
  v62 = sub_1000F5104(&qword_10093E810, &qword_10079CB08);
  v63 = &off_1008FA028;
  v24 = swift_allocObject();
  *&v61 = v24;
  v24[5] = v21;
  v24[6] = v22[2];
  v25 = sub_1000103CC(v24 + 2);
  (*(*(v21 - 8) + 16))(v25, v23, v21);
  swift_beginAccess();
  sub_100240B6C(&v61, v15);
  swift_endAccess();
  *&v61 = ObjectType;
  swift_getMetatypeMetadata();
  v26 = String.init<A>(reflecting:)();
  v28 = v27;
  sub_10000A87C(v64, &v61);
  v29 = a2[5];
  v30 = a2[6];
  sub_10000F61C(a2 + 2, v29);
  v31 = (*(*(v30 + 8) + 8))(v29);
  v32 = v31;
  if (v31 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = v31;
  }

  sub_10000A87C(v68, v60);
  sub_1000F5104(&qword_10093E818, &qword_10079CB10);
  v34 = swift_allocObject();
  v34[2] = v26;
  v34[3] = v28;
  v59[0] = v26;
  v59[1] = v28;
  v35 = v17;

  v36._countAndFlagsBits = 0x617475636578452ELL;
  v36._object = 0xEB00000000656C62;
  String.append(_:)(v36);
  v37 = v28;
  v34[18] = v26;
  v34[19] = v28;
  v34[4] = v35;
  sub_10000A87C(&v61, (v34 + 5));
  v34[10] = a4;
  v34[11] = v33;
  v38 = sub_1000F5104(&qword_10093E820, &qword_10079CB18);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  *(v41 + 5) = _swiftEmptyArrayStorage;
  *(v41 + 6) = _swiftEmptyArrayStorage;
  v42 = qword_10094E388;
  v43 = type metadata accessor for Date();
  (*(*(v43 - 8) + 56))(&v41[v42], 1, 1, v43);
  *(v41 + 2) = v33;
  *(v41 + 3) = v26;
  *(v41 + 4) = v37;
  v34[17] = v41;
  sub_10000A87C(v60, (v34 + 12));
  if (v32)
  {
  }

  else
  {
    v44 = qword_1009366A0;
    v45 = v35;

    if (v44 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_10094E160);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v59[0] = v50;
      *v49 = 136446210;
      v51 = v45;
      v53 = v34[2];
      v52 = v34[3];

      v54 = sub_10000668C(v53, v52, v59);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%{public}s] configurations.approximatePerRunDeleteLimit is 0", v49, 0xCu);
      sub_10000607C(v50);
    }

    else
    {
    }
  }

  sub_10000607C(v60);
  sub_10000607C(&v61);
  *&a7[qword_10094E1D0] = v34;
  v58.receiver = a7;
  v58.super_class = sub_1000F5104(&qword_10093E828, &qword_10079CB20);
  v55 = objc_msgSendSuper2(&v58, "init");
  sub_10000607C(v68);
  sub_100240A94(v57);
  sub_10000607C(v64);
  sub_10000607C(v65);
  return v55;
}

id sub_10023F408(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = [a1 _dataSeparationIncompatible_defaultReminderDataContainerURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 16))(v7, v9, v2);
  v11 = [objc_opt_self() defaultManager];
  v39 = sub_1000060C8(0, &qword_10093E7D8, NSFileManager_ptr);
  v40 = &off_1008F3738;
  *&v37 = v11;
  v12 = type metadata accessor for RDSentinelFileLocation();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD00000000000001BLL;
  *(v15 + 24) = 0x80000001007F1F50;
  (*(v3 + 32))(v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_containerURL, v7, v2);
  sub_100054B6C(&v37, v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v16 = *(v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 32);
  sub_10000F61C((v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager), *(v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 24));
  v17 = sub_10048C990();
  LOBYTE(v7) = (*(v16 + 8))(v17);

  if (v7)
  {
    if (qword_100935CF0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093E788);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "RDImageDeduplicationActivity's sentinel file exists, activity does not need to register.", v21, 2u);
    }

    else
    {
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  else
  {
    sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
    v22 = [swift_getObjCClassFromMetadata() daemonUserDefaults];
    v23 = [objc_opt_self() sharedConfiguration];
    v24 = [objc_opt_self() sharedBabysitter];
    v25 = v24;
    if (v24)
    {
      v24 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
      v26 = &off_1008F54F0;
    }

    else
    {
      v26 = 0;
      *(&v37 + 1) = 0;
      v38 = 0;
    }

    *&v37 = v25;
    v39 = v24;
    v40 = v26;
    v28 = [objc_allocWithZone(type metadata accessor for Analytics()) init];
    v36[3] = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
    v36[4] = &off_1008F97C8;
    v36[0] = v23;
    v29 = objc_allocWithZone(type metadata accessor for RDImageDeduplicationActivity(0));
    sub_10000A87C(v36, v35);
    type metadata accessor for RDImageDeduplicationActivity.Configurations();
    v30 = swift_allocObject();
    sub_100054B6C(v35, (v30 + 2));
    type metadata accessor for RDImageDeduplicationActivity.States();
    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    *(v31 + 24) = &off_1008F9758;
    sub_100240AFC(&v37, v35);
    v32 = a1;
    v33 = sub_10023EDF8(v32, v30, v31, v15, v35, v28, v29);

    sub_100240A94(&v37);
    sub_10000607C(v36);
    (*(v3 + 8))(v9, v2);
    return v33;
  }
}

id sub_10023F8F4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  ObjectType = swift_getObjectType();
  v68[3] = type metadata accessor for Analytics();
  v68[4] = &protocol witness table for Analytics;
  v68[0] = a6;
  v66 = type metadata accessor for RDSavedImageDeduplicationActivity.Configurations();
  v67 = &off_1008F9DA8;
  v65[0] = a2;
  v64[4] = &off_1008F9D38;
  v64[3] = type metadata accessor for RDSavedImageDeduplicationActivity.States();
  v64[0] = a3;
  a7[qword_10094E180] = 0;
  a7[qword_10094E188] = 1;
  a7[qword_10094E190] = 1;
  v15 = &a7[qword_10094E198];
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v16 = &a7[qword_10094E1A8];
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  *&a7[qword_10094E1B0] = a1;
  sub_10000A87C(v65, &a7[qword_10094E1B8]);
  sub_10000A87C(v64, &a7[qword_10094E1C0]);
  *&a7[qword_10094E1C8] = a4;
  swift_beginAccess();
  v17 = a1;

  v57 = a5;
  sub_100240A24(a5, v16);
  swift_endAccess();
  sub_10000A87C(v64, &v61);
  v18 = sub_1000F5104(&qword_10093E7E0, &qword_10079CAD8);
  v19 = swift_allocObject();
  sub_100054B6C(&v61, v19 + 16);
  v20 = &a7[qword_10094E1A0];
  v20[3] = v18;
  v20[4] = &off_1008F9E58;
  *v20 = v19;
  v21 = v66;
  v22 = v67;
  v23 = sub_10000F61C(v65, v66);
  v62 = sub_1000F5104(&qword_10093E7E8, &qword_10079CAE0);
  v63 = &off_1008FA028;
  v24 = swift_allocObject();
  *&v61 = v24;
  v24[5] = v21;
  v24[6] = v22[2];
  v25 = sub_1000103CC(v24 + 2);
  (*(*(v21 - 8) + 16))(v25, v23, v21);
  swift_beginAccess();
  sub_100240B6C(&v61, v15);
  swift_endAccess();
  *&v61 = ObjectType;
  swift_getMetatypeMetadata();
  v26 = String.init<A>(reflecting:)();
  v28 = v27;
  sub_10000A87C(v64, &v61);
  v29 = a2[5];
  v30 = a2[6];
  sub_10000F61C(a2 + 2, v29);
  v31 = (*(*(v30 + 8) + 8))(v29);
  v32 = v31;
  if (v31 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = v31;
  }

  sub_10000A87C(v68, v60);
  sub_1000F5104(&qword_10093E7F0, &qword_10079CAE8);
  v34 = swift_allocObject();
  v34[2] = v26;
  v34[3] = v28;
  v59[0] = v26;
  v59[1] = v28;
  v35 = v17;

  v36._countAndFlagsBits = 0x617475636578452ELL;
  v36._object = 0xEB00000000656C62;
  String.append(_:)(v36);
  v37 = v28;
  v34[18] = v26;
  v34[19] = v28;
  v34[4] = v35;
  sub_10000A87C(&v61, (v34 + 5));
  v34[10] = a4;
  v34[11] = v33;
  v38 = sub_1000F5104(&qword_10093E7F8, &qword_10079CAF0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  *(v41 + 5) = _swiftEmptyArrayStorage;
  *(v41 + 6) = _swiftEmptyArrayStorage;
  v42 = qword_10094E388;
  v43 = type metadata accessor for Date();
  (*(*(v43 - 8) + 56))(&v41[v42], 1, 1, v43);
  *(v41 + 2) = v33;
  *(v41 + 3) = v26;
  *(v41 + 4) = v37;
  v34[17] = v41;
  sub_10000A87C(v60, (v34 + 12));
  if (v32)
  {
  }

  else
  {
    v44 = qword_1009366A0;
    v45 = v35;

    if (v44 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_10094E160);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v59[0] = v50;
      *v49 = 136446210;
      v51 = v45;
      v53 = v34[2];
      v52 = v34[3];

      v54 = sub_10000668C(v53, v52, v59);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%{public}s] configurations.approximatePerRunDeleteLimit is 0", v49, 0xCu);
      sub_10000607C(v50);
    }

    else
    {
    }
  }

  sub_10000607C(v60);
  sub_10000607C(&v61);
  *&a7[qword_10094E1D0] = v34;
  v58.receiver = a7;
  v58.super_class = sub_1000F5104(&qword_10093E800, &qword_10079CAF8);
  v55 = objc_msgSendSuper2(&v58, "init");
  sub_10000607C(v68);
  sub_100240A94(v57);
  sub_10000607C(v64);
  sub_10000607C(v65);
  return v55;
}

id sub_10023FF04(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = [a1 _dataSeparationIncompatible_defaultReminderDataContainerURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 16))(v7, v9, v2);
  v11 = [objc_opt_self() defaultManager];
  v39 = sub_1000060C8(0, &qword_10093E7D8, NSFileManager_ptr);
  v40 = &off_1008F3738;
  *&v37 = v11;
  v12 = type metadata accessor for RDSentinelFileLocation();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD000000000000020;
  *(v15 + 24) = 0x80000001007F1F20;
  (*(v3 + 32))(v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_containerURL, v7, v2);
  sub_100054B6C(&v37, v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v16 = *(v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 32);
  sub_10000F61C((v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager), *(v15 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 24));
  v17 = sub_10048C990();
  LOBYTE(v7) = (*(v16 + 8))(v17);

  if (v7)
  {
    if (qword_100935CF0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093E788);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "RDSavedImageDeduplicationActivity's sentinel file exists, activity does not need to register.", v21, 2u);
    }

    else
    {
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  else
  {
    sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
    v22 = [swift_getObjCClassFromMetadata() daemonUserDefaults];
    v23 = [objc_opt_self() sharedConfiguration];
    v24 = [objc_opt_self() sharedBabysitter];
    v25 = v24;
    if (v24)
    {
      v24 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
      v26 = &off_1008F54F0;
    }

    else
    {
      v26 = 0;
      *(&v37 + 1) = 0;
      v38 = 0;
    }

    *&v37 = v25;
    v39 = v24;
    v40 = v26;
    v28 = [objc_allocWithZone(type metadata accessor for Analytics()) init];
    v36[3] = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
    v36[4] = &off_1008F9820;
    v36[0] = v23;
    v29 = objc_allocWithZone(type metadata accessor for RDSavedImageDeduplicationActivity(0));
    sub_10000A87C(v36, v35);
    type metadata accessor for RDSavedImageDeduplicationActivity.Configurations();
    v30 = swift_allocObject();
    sub_100054B6C(v35, (v30 + 2));
    type metadata accessor for RDSavedImageDeduplicationActivity.States();
    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    *(v31 + 24) = &off_1008F9790;
    sub_100240AFC(&v37, v35);
    v32 = a1;
    v33 = sub_10023F8F4(v32, v30, v31, v15, v35, v28, v29);

    sub_100240A94(&v37);
    sub_10000607C(v36);
    (*(v3 + 8))(v9, v2);
    return v33;
  }
}

id sub_1002403F0(void *a1)
{
  v2 = [objc_opt_self() sharedConfiguration];
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = v2;
  v5 = [ObjCClassFromMetadata daemonUserDefaults];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 daemonUserDefaults];
  v9 = [objc_opt_self() sharedBabysitter];
  v10 = v9;
  if (v9)
  {
    v9 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v11 = &off_1008F54F0;
  }

  else
  {
    v11 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v10;
  v14[3] = v9;
  v14[4] = v11;
  v12 = sub_10023E788(a1, v4, v7, v8, v14);

  return v12;
}

id sub_100240544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  v36 = &off_1008F1680;
  v34[0] = a2;
  v33[3] = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v33[4] = &off_1008F1660;
  v33[0] = a3;
  v8 = type metadata accessor for RDAnalyticsActivity();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_xpcActivityAllowBattery] = 0;
  v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_xpcActivityIsCPUIntensive] = 0;
  v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_xpcActivityIsDiskIntensive] = 1;
  v10 = &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_identifier];
  *&v32[0] = v8;
  sub_1000F5104(&qword_10093E7C8, &qword_10079CAC8);
  *v10 = String.init<A>(reflecting:)();
  v10[1] = v11;
  v12 = &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_babysitter];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *&v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_storeController] = a1;
  sub_10000A87C(v34, &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations]);
  sub_10000A87C(v33, &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_states]);
  swift_beginAccess();
  v13 = a1;
  sub_100240A24(a4, v12);
  swift_endAccess();
  sub_10000A87C(v33, v32);
  v14 = type metadata accessor for RDAnalyticsActivity.RDAnalyticsExecutionDateStorage();
  v15 = swift_allocObject();
  sub_100054B6C(v32, v15 + 16);
  v16 = &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_executionDateStorage];
  v16[3] = v14;
  v16[4] = &off_1008F16B8;
  *v16 = v15;
  v17 = v35;
  v18 = v36;
  v19 = sub_10000F61C(v34, v35);
  v20 = swift_allocObject();
  v20[5] = v17;
  v20[6] = v18[1];
  v21 = sub_1000103CC(v20 + 2);
  (*(*(v17 - 8) + 16))(v21, v19, v17);
  v22 = &v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_rateReducerConfiguration];
  *v22 = v20;
  v22[3] = &type metadata for RDAnalyticsActivity.RDAnalyticsRateReducer;
  v22[4] = &off_1008F1850;
  sub_10000A87C(v33, v32);
  v23 = type metadata accessor for RDAnalyticsActivity.RDAnalyticsActivityExecutable();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_name];
  *v25 = 0xD000000000000010;
  *(v25 + 1) = 0x80000001007F1ED0;
  *&v24[OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_storeController] = v13;
  sub_10000A87C(v32, &v24[OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_states]);
  v31.receiver = v24;
  v31.super_class = v23;
  v26 = v13;
  v27 = objc_msgSendSuper2(&v31, "init");
  sub_10000607C(v32);
  *&v9[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_executable] = v27;
  v30.receiver = v9;
  v30.super_class = v8;
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_100240A94(a4);
  sub_10000607C(v33);
  sub_10000607C(v34);
  return v28;
}

id sub_100240898(void *a1)
{
  v2 = [objc_opt_self() sharedConfiguration];
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = v2;
  v5 = [ObjCClassFromMetadata daemonUserDefaults];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedBabysitter];
  v9 = v8;
  if (v8)
  {
    v8 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v10 = &off_1008F54F0;
  }

  else
  {
    v10 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v9;
  v13[3] = v8;
  v13[4] = v10;
  v11 = sub_10023E450(a1, v4, v7, v13);

  return v11;
}

unint64_t sub_1002409C0()
{
  result = qword_10093E7B0;
  if (!qword_10093E7B0)
  {
    sub_1000F514C(&qword_10093E7A8, &qword_10079CAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E7B0);
  }

  return result;
}

uint64_t sub_100240A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093D8F0, &unk_10079B600);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100240A94(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093D8F0, &unk_10079B600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100240AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093D8F0, &unk_10079B600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100240B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093E4F0, &qword_1007A9640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100240BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100240CD4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100242700(&qword_10093B410, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_100242700(&qword_10093A3E0, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100240F04(uint64_t a1, uint64_t a2)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v4 = *(PredicateType - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(PredicateType);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100242700(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, PredicateType);
      sub_100242700(&qword_100943DD0, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, PredicateType);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100241134(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (a3(0), v6 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100241240(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100242700(&qword_10093E838, &type metadata accessor for URL), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_100242700(&unk_100944080, &type metadata accessor for URL);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100241458(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), Hasher.init(_seed:)(), String.hash(into:)(), , v5 = Hasher._finalize()(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v22 = ~v6;
    while (1)
    {
      v8 = *(*(a2 + 48) + v7);
      if (v8 <= 1)
      {
        if (*(*(a2 + 48) + v7))
        {
          v9 = 0xD00000000000002DLL;
        }

        else
        {
          v9 = 0xD000000000000030;
        }

        if (*(*(a2 + 48) + v7))
        {
          v10 = "butesAutoTrainer";
        }

        else
        {
          v10 = "REMCDTemplateOperationQueueItem";
        }
      }

      else if (v8 == 2)
      {
        v9 = 0xD000000000000034;
        v10 = "d.ICCloudConfigurationUpdater";
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0xD000000000000031;
        }

        else
        {
          v9 = 0xD00000000000001BLL;
        }

        if (v8 == 3)
        {
          v10 = "atchUpSyncController";
        }

        else
        {
          v10 = "ActivityScheduler";
        }
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000030;
      v13 = 0xD000000000000034;
      v14 = 0xD000000000000031;
      if (a1 == 3)
      {
        v15 = "atchUpSyncController";
      }

      else
      {
        v14 = 0xD00000000000001BLL;
        v15 = "ActivityScheduler";
      }

      if (a1 != 2)
      {
        v13 = v14;
      }

      v16 = "d.ICCloudConfigurationUpdater";
      if (a1 != 2)
      {
        v16 = v15;
      }

      if (a1)
      {
        v12 = 0xD00000000000002DLL;
        v17 = "butesAutoTrainer";
      }

      else
      {
        v17 = "REMCDTemplateOperationQueueItem";
      }

      v18 = a1 <= 1u ? v12 : v13;
      v19 = a1 <= 1u ? v17 : v16;
      if (v9 == v18 && v11 == (v19 | 0x8000000000000000))
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        v7 = (v7 + 1) & v22;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(dictionary:forEvaluatingAgainst:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a1;
  v91 = a3;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v90 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v86 = &v81 - v9;
  __chkstk_darwin(v8);
  v96 = &v81 - v10;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v12 = *(PredicateType - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(PredicateType);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v88 = &v81 - v21;
  v22 = __chkstk_darwin(v20);
  v87 = &v81 - v23;
  v24 = __chkstk_darwin(v22);
  v85 = &v81 - v25;
  v26 = __chkstk_darwin(v24);
  v95 = &v81 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v81 - v29;
  v31 = __chkstk_darwin(v28);
  v94 = &v81 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v81 - v34;
  __chkstk_darwin(v33);
  v37 = &v81 - v36;
  v38 = type metadata accessor for UUID();
  v39 = *(*(v38 - 8) + 56);
  v92 = v37;
  v39(v37, 1, 1, v38);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
  v98 = a2;
  LOBYTE(a2) = sub_100240F04(v15, a2);
  v97 = *(v12 + 8);
  v97(v15, PredicateType);
  if (a2)
  {
    *&v100 = 0x696669746E656469;
    *(&v100 + 1) = 0xEA00000000007265;
    v40 = [v93 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v40)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000050A4(v92, &unk_100939D90, "8\n\r");
    }

    else
    {
      sub_1000050A4(v92, &unk_100939D90, "8\n\r");
      v100 = 0u;
      v101 = 0u;
    }

    v102 = v100;
    v103 = v101;
    if (*(&v101 + 1))
    {
      v41 = swift_dynamicCast() ^ 1;
      v42 = v35;
    }

    else
    {
      sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
      v42 = v35;
      v41 = 1;
    }

    v39(v42, v41, 1, v38);
    sub_100031B58(v35, v92, &unk_100939D90, "8\n\r");
  }

  v39(v94, 1, 1, v38);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();
  v43 = sub_100240F04(v15, v98);
  v97(v15, PredicateType);
  v44 = v93;
  if (v43)
  {
    *&v100 = 0x6564692E7473696CLL;
    *(&v100 + 1) = 0xEF7265696669746ELL;
    v45 = [v93 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v45)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000050A4(v94, &unk_100939D90, "8\n\r");
    }

    else
    {
      sub_1000050A4(v94, &unk_100939D90, "8\n\r");
      v100 = 0u;
      v101 = 0u;
    }

    v102 = v100;
    v103 = v101;
    if (*(&v101 + 1))
    {
      v46 = swift_dynamicCast() ^ 1;
      v47 = v30;
    }

    else
    {
      sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
      v47 = v30;
      v46 = 1;
    }

    v39(v47, v46, 1, v38);
    sub_100031B58(v30, v94, &unk_100939D90, "8\n\r");
  }

  v39(v95, 1, 1, v38);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
  v48 = sub_100240F04(v15, v98);
  v97(v15, PredicateType);
  if (v48)
  {
    *&v100 = 0xD000000000000012;
    *(&v100 + 1) = 0x80000001007F1FC0;
    v49 = [v44 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v49)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000050A4(v95, &unk_100939D90, "8\n\r");
    }

    else
    {
      sub_1000050A4(v95, &unk_100939D90, "8\n\r");
      v100 = 0u;
      v101 = 0u;
    }

    v50 = v85;
    v102 = v100;
    v103 = v101;
    if (*(&v101 + 1))
    {
      v51 = swift_dynamicCast() ^ 1;
      v52 = v50;
    }

    else
    {
      sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
      v52 = v50;
      v51 = 1;
    }

    v39(v52, v51, 1, v38);
    sub_100031B58(v50, v95, &unk_100939D90, "8\n\r");
  }

  v53 = type metadata accessor for Date();
  v54 = *(*(v53 - 8) + 56);
  v54(v96, 1, 1, v53);
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
  v55 = sub_100240F04(v15, v98);
  v97(v15, PredicateType);
  if (v55 & 1) != 0 || (static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.partOfDay.getter(), v56 = sub_100240F04(v15, v98), v97(v15, PredicateType), (v56))
  {
    *&v100 = 0x4479616C70736964;
    *(&v100 + 1) = 0xEF65746144657461;
    v57 = [v44 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v57)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000050A4(v96, &unk_100938850, qword_100795AE0);
    }

    else
    {
      sub_1000050A4(v96, &unk_100938850, qword_100795AE0);
      v100 = 0u;
      v101 = 0u;
    }

    v58 = v86;
    v102 = v100;
    v103 = v101;
    if (*(&v101 + 1))
    {
      v59 = swift_dynamicCast() ^ 1;
      v60 = v58;
    }

    else
    {
      sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
      v60 = v58;
      v59 = 1;
    }

    v54(v60, v59, 1, v53);
    sub_100031B58(v58, v96, &unk_100938850, qword_100795AE0);
    *&v102 = 0xD000000000000013;
    *(&v102 + 1) = 0x80000001007F0040;
    v61 = [v44 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v61)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
    }

    v102 = v100;
    v103 = v101;
    if (*(&v101 + 1))
    {
      if (swift_dynamicCast())
      {
        v62 = v99;
      }

      else
      {
        v62 = 2;
      }
    }

    else
    {
      sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
      v62 = 2;
    }

    *&v102 = 0xD000000000000019;
    *(&v102 + 1) = 0x80000001007F1FA0;
    v63 = [v44 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v63)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
    }

    v102 = v100;
    v103 = v101;
    if (*(&v101 + 1))
    {
      v64 = swift_dynamicCast();
      if (v64)
      {
        v65 = v99;
      }

      else
      {
        v65 = 0;
      }

      v66 = v64 ^ 1;
      goto LABEL_52;
    }

    sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
    v65 = 0;
  }

  else
  {
    v65 = 0;
    v62 = 2;
  }

  v66 = 1;
LABEL_52:
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.priorities.getter();
  v67 = sub_100240F04(v15, v98);
  v97(v15, PredicateType);
  if ((v67 & 1) == 0)
  {
    goto LABEL_61;
  }

  *&v100 = 0x797469726F697270;
  *(&v100 + 1) = 0xE800000000000000;
  v68 = [v44 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v68)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v102 = v100;
  v103 = v101;
  if (!*(&v101 + 1))
  {
    sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
    goto LABEL_61;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_61:
    v83 = 0;
    v82 = 1;
LABEL_62:
    static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter();
    v70 = sub_100240F04(v15, v98);
    v97(v15, PredicateType);
    LODWORD(v86) = v62;
    if (v70)
    {
      *&v100 = 0x64656767616C66;
      *(&v100 + 1) = 0xE700000000000000;
      v71 = [v44 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v71)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v100 = 0u;
        v101 = 0u;
      }

      v102 = v100;
      v103 = v101;
      if (*(&v101 + 1))
      {
        if (swift_dynamicCast())
        {
          v72 = v99 > 0;
          goto LABEL_71;
        }
      }

      else
      {
        sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
      }
    }

    v72 = 2;
LABEL_71:
    v81 = v72;
    static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.completed.getter();
    v73 = sub_100240F04(v15, v98);

    v97(v15, PredicateType);
    v85 = v65;
    v84 = v66;
    if (v73)
    {
      *&v102 = 0x6574656C706D6F63;
      *(&v102 + 1) = 0xE900000000000064;
      v74 = [v93 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v74)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v100 = 0u;
        v101 = 0u;
      }

      v102 = v100;
      v103 = v101;
      if (*(&v101 + 1))
      {
        v75 = swift_dynamicCast();
        v76 = v99;
        if (!v75)
        {
          v76 = 2;
        }

        goto LABEL_80;
      }

      sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
    }

    v76 = 2;
LABEL_80:
    LODWORD(v98) = v76;
    v77 = v92;
    sub_100010364(v92, v87, &unk_100939D90, "8\n\r");
    v78 = v94;
    sub_100010364(v94, v88, &unk_100939D90, "8\n\r");
    v79 = v95;
    sub_100010364(v95, v89, &unk_100939D90, "8\n\r");
    v80 = v96;
    sub_100010364(v96, v90, &unk_100938850, qword_100795AE0);
    REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(identifier:listIdentifier:accountIdentifier:displayDateDate:displayDateIsAllDay:displayDateSecondsFromGMT:alarmTriggers:priority:flagged:completed:)();

    sub_1000050A4(v80, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v79, &unk_100939D90, "8\n\r");
    sub_1000050A4(v78, &unk_100939D90, "8\n\r");
    return sub_1000050A4(v77, &unk_100939D90, "8\n\r");
  }

  result = v99;
  if ((v99 & 0x8000000000000000) == 0)
  {
    v83 = REMReminderPriorityLevelForPriority();
    v82 = 0;
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

uint64_t sub_100242700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100242748()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093E840);
  v1 = sub_100006654(v0, qword_10093E840);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDHashtag.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDHashtag.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v13 setAccount:a2];
      [v13 mergeDataFromRecord:a1 accountID:v12];

      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935CF8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10093E840);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v4;
        *v18 = 136446466;
        swift_getMetatypeMetadata();
        v19 = String.init<A>(describing:)();
        v21 = sub_10000668C(v19, v20, &v30);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        v22 = [v15 remObjectID];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 description];

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v28 = sub_10000668C(v25, v27, &v30);

        *(v18 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v18, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

Swift::String __swiftcall REMCDHashtag.recordType()()
{
  v0 = 0x67617468736148;
  v1 = 0xE700000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDHashtag.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v174 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v187 = &v173 - v9;
  __chkstk_darwin(v10);
  v186 = &v173 - v11;
  __chkstk_darwin(v12);
  v176 = &v173 - v13;
  __chkstk_darwin(v14);
  v175 = &v173 - v15;
  v198 = type metadata accessor for UUID();
  v16 = *(v198 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v198);
  v181 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v190 = &v173 - v20;
  __chkstk_darwin(v21);
  v189 = &v173 - v22;
  v23 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v173 - v25;
  v201 = type metadata accessor for Date();
  v27 = *(v201 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v201);
  v184 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = String._bridgeToObjectiveC()();
  v204.receiver = v3;
  v204.super_class = REMCDHashtag;
  objc_msgSendSuper2(&v204, "mergeDataFromRecord:accountID:", from.super.isa, v30);

  isa = from.super.isa;
  v31 = [(objc_class *)from.super.isa recordID];
  v32 = [v31 recordName];

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  v33 = [v3 ckIdentifierFromRecordName:v32];

  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v33];

  v34 = 0;
  v180 = "account.identifier";
  v192 = (v16 + 48);
  v193 = (v16 + 8);
  v188 = (v16 + 32);
  v191 = (v16 + 56);
  v179 = (v16 + 16);
  v200 = (v27 + 56);
  v195 = (v27 + 48);
  v183 = (v27 + 32);
  v182 = (v27 + 8);
  *&v35 = 136446722;
  v185 = v35;
  *&v35 = 136446466;
  v177 = v35;
  *&v35 = 136446210;
  v178 = v35;
  v36 = isa;
  v196 = v3;
  v197 = v26;
  do
  {
    v38 = *(&off_1008E28A0 + v34 + 32);
    if (v38 <= 1)
    {
      if (*(&off_1008E28A0 + v34 + 32))
      {
        v46 = v26;
        v47 = v36;
        v48 = [(objc_class *)v36 encryptedValues];
        v49 = String._bridgeToObjectiveC()();
        v50 = [v48 objectForKeyedSubscript:v49];
        swift_unknownObjectRelease();

        if (v50 && (v203 = v50, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
        {
          v51 = String._bridgeToObjectiveC()();

          [v3 setName:v51];
        }

        else
        {
          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_100006654(v52, qword_10093E840);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "Hashtag does not have a name", v55, 2u);
          }
        }

        goto LABEL_45;
      }

      v39 = CKRecord.subscript.getter();
      if (v39)
      {
        v202[0] = v39;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v40 = v201;
        v41 = swift_dynamicCast();
        (*v200)(v26, v41 ^ 1u, 1, v40);
        if ((*v195)(v26, 1, v40) != 1)
        {
          v42 = v184;
          v43 = v201;
          (*v183)(v184, v26, v201);
          v44 = Date._bridgeToObjectiveC()().super.isa;
          [v3 setCreationDate:v44];

          (*v182)(v42, v43);
          goto LABEL_10;
        }
      }

      else
      {
        (*v200)(v26, 1, 1, v201);
      }

      sub_1000050A4(v26, &unk_100938850, qword_100795AE0);
      if (qword_100935CF8 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_100006654(v93, qword_10093E840);
      v82 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v82, v94, "Hashtag does not have creation date", v95, 2u);
      }

LABEL_57:

      goto LABEL_10;
    }

    if (v38 == 2)
    {
      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (!v45)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v45 = 0;
      }

      v46 = v26;
      v56 = sub_1001287DC(v45);

      v47 = v36;
      if (v56)
      {
        objc_opt_self();
        v57 = swift_dynamicCastObjCClass();
        if (!v57)
        {
        }
      }

      else
      {
        v57 = 0;
      }

      [v3 setReminder:v57];

      v58 = [v3 reminder];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 remObjectID];
        if (!v60)
        {
          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          sub_100006654(v96, qword_10093E840);
          v97 = v3;
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v98, v99))
          {

LABEL_82:
            v36 = isa;
            v26 = v197;
            goto LABEL_10;
          }

          v100 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v202[0] = v194;
          *v100 = v177;
          v101 = [v97 remObjectID];
          if (v101)
          {
            v102 = v101;
            v103 = [v101 description];

            v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v106 = v105;
          }

          else
          {
            v106 = 0xE300000000000000;
            v104 = 7104878;
          }

          v144 = sub_10000668C(v104, v106, v202);

          *(v100 + 4) = v144;
          *(v100 + 12) = 2082;
          v145 = [v97 reminderIdentifier];
          if (v145)
          {
            v146 = v176;
            v147 = v145;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v148 = 0;
          }

          else
          {
            v148 = 1;
            v146 = v176;
          }

          v26 = v197;
          v149 = v198;
          (*v191)(v146, v148, 1, v198);
          v150 = v175;
          sub_100031B58(v146, v175, &unk_100939D90, "8\n\r");
          if ((*v192)(v150, 1, v149))
          {
            sub_1000050A4(v150, &unk_100939D90, "8\n\r");
            v151 = 0xE300000000000000;
            v152 = 7104878;
          }

          else
          {
            v153 = v181;
            (*v179)(v181, v150, v149);
            sub_1000050A4(v150, &unk_100939D90, "8\n\r");
            v154 = UUID.uuidString.getter();
            v151 = v155;
            (*v193)(v153, v149);
            v152 = v154;
          }

          v156 = sub_10000668C(v152, v151, v202);

          *(v100 + 14) = v156;
          _os_log_impl(&_mh_execute_header, v98, v99, "REMCDHashtag+CloudKit: mergeData(from:) unexpected nil cdReminder.remObjectID when merging cdHashtag.reminder {hashtag: %{public}s, reminderIdentifier: %{public}s}", v100, 0x16u);
          swift_arrayDestroy();

          v3 = v196;
          goto LABEL_92;
        }

        v61 = v60;
        v62 = [v60 uuid];

        v63 = v190;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v64 = v189;
        v65 = v63;
        v66 = v198;
        (*v188)(v189, v65, v198);
        v67 = UUID._bridgeToObjectiveC()().super.isa;
        [v3 setReminderIdentifier:v67];

        (*v193)(v64, v66);
      }

      if (qword_100935CF8 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_100006654(v68, qword_10093E840);
      v69 = v3;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v70, v71))
      {

LABEL_45:
        v36 = v47;
        v26 = v46;
        goto LABEL_10;
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v202[0] = v73;
      *v72 = v185;
      v74 = [v69 remObjectID];
      if (v74)
      {
        v75 = v74;
        v76 = [v74 description];

        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;
      }

      else
      {
        v79 = 0xE300000000000000;
        v77 = 7104878;
      }

      v115 = sub_10000668C(v77, v79, v202);

      *(v72 + 4) = v115;
      *(v72 + 12) = 2082;
      v116 = [v69 reminderIdentifier];
      v194 = v73;
      if (v116)
      {
        v117 = v187;
        v118 = v116;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v119 = 0;
      }

      else
      {
        v119 = 1;
        v117 = v187;
      }

      v26 = v197;
      v120 = v198;
      (*v191)(v117, v119, 1, v198);
      v121 = v186;
      sub_100031B58(v117, v186, &unk_100939D90, "8\n\r");
      if ((*v192)(v121, 1, v120))
      {
        sub_1000050A4(v121, &unk_100939D90, "8\n\r");
        v122 = 0xE300000000000000;
        v123 = 7104878;
      }

      else
      {
        v124 = v181;
        (*v179)(v181, v121, v120);
        sub_1000050A4(v121, &unk_100939D90, "8\n\r");
        v125 = UUID.uuidString.getter();
        v122 = v126;
        v127 = v124;
        v26 = v197;
        (*v193)(v127, v120);
        v123 = v125;
      }

      v128 = sub_10000668C(v123, v122, v202);

      *(v72 + 14) = v128;
      *(v72 + 22) = 2082;
      [v69 markedForDeletion];
      v129 = Bool.yesno.getter();
      v131 = sub_10000668C(v129, v130, v202);

      *(v72 + 24) = v131;
      _os_log_impl(&_mh_execute_header, v70, v71, "REMCDHashtag+CloudKit: mergeData(from:) merged to cdHashtag.reminder from a CK reference {hashtag: %{public}s, reminderIdentifier: %{public}s, markedForDeletion: %{public}s}", v72, 0x20u);
      swift_arrayDestroy();

      goto LABEL_75;
    }

    if (v38 == 3)
    {
      if (CKRecord.subscript.getter())
      {
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      if ([v3 markedForDeletion])
      {
        [v3 setSharedToMeReminderCKIdentifier:0];
        if (qword_100935CF8 != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        sub_100006654(v80, qword_10093E840);
        v81 = v3;
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v82, v83))
        {
          goto LABEL_57;
        }

        v84 = v36;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v202[0] = v86;
        *v85 = v178;
        v87 = [v81 remObjectID];
        if (v87)
        {
          v88 = v87;
          v89 = [v87 description];

          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;
        }

        else
        {
          v92 = 0xE300000000000000;
          v90 = 7104878;
        }

        v157 = sub_10000668C(v90, v92, v202);

        *(v85 + 4) = v157;
        _os_log_impl(&_mh_execute_header, v82, v83, "REMCDHashtag+CloudKit: mergeData(from:) hashtag is markedForDeletion so we should not try to merge SharedToMeReminderCKIdentifier {hashtag: %{public}s}", v85, 0xCu);
        sub_10000607C(v86);

        v36 = v84;
        v3 = v196;
        v26 = v197;
      }

      else
      {
        v107 = [(objc_class *)v36 encryptedValues];
        v108 = String._bridgeToObjectiveC()();
        v109 = [v107 objectForKeyedSubscript:v108];
        swift_unknownObjectRelease();

        if (!v109 || (v203 = v109, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) == 0))
        {
          if (qword_100935CF8 != -1)
          {
            swift_once();
          }

          v132 = type metadata accessor for Logger();
          sub_100006654(v132, qword_10093E840);
          v133 = v3;
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v134, v135))
          {

            v36 = isa;
            goto LABEL_10;
          }

          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v202[0] = v137;
          *v136 = v178;
          v138 = [v133 remObjectID];
          if (v138)
          {
            v139 = v138;
            v140 = [v138 description];

            v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v143 = v142;
          }

          else
          {
            v143 = 0xE300000000000000;
            v141 = 7104878;
          }

          v170 = sub_10000668C(v141, v143, v202);

          *(v136 + 4) = v170;
          _os_log_impl(&_mh_execute_header, v134, v135, "REMCDHashtag+CloudKit: mergeData(from:) unexpected nil record['SharedToMeReminderCKIdentifier'] when record['Reminder'] is nil and hashtag not markedForDeletion, the former must present otherwise we have no way to associate the tag to the reminder {hashtag: %{public}s}", v136, 0xCu);
          sub_10000607C(v137);

LABEL_75:
          v3 = v196;
LABEL_92:
          v36 = isa;
          goto LABEL_10;
        }

        v111 = v202[0];
        v110 = v202[1];
        v112 = v174;
        UUID.init(uuidString:)();
        v113 = v198;
        if ((*v192)(v112, 1, v198) == 1)
        {
          v114 = 0;
        }

        else
        {
          v114 = UUID._bridgeToObjectiveC()().super.isa;
          (*v193)(v112, v113);
        }

        [v3 setReminderIdentifier:v114];

        v158 = String._bridgeToObjectiveC()();
        [v3 setSharedToMeReminderCKIdentifier:v158];

        if (qword_100935CF8 != -1)
        {
          swift_once();
        }

        v159 = type metadata accessor for Logger();
        sub_100006654(v159, qword_10093E840);
        v160 = v3;

        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v161, v162))
        {

          goto LABEL_82;
        }

        v194 = v111;
        v163 = swift_slowAlloc();
        v202[0] = swift_slowAlloc();
        *v163 = v177;
        v164 = [v160 remObjectID];
        if (v164)
        {
          v165 = v164;
          v166 = [v164 description];

          v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v169 = v168;

          v3 = v196;
        }

        else
        {
          v169 = 0xE300000000000000;
          v167 = 7104878;
        }

        v171 = sub_10000668C(v167, v169, v202);

        *(v163 + 4) = v171;
        *(v163 + 12) = 2082;
        v172 = sub_10000668C(v194, v110, v202);

        *(v163 + 14) = v172;
        _os_log_impl(&_mh_execute_header, v161, v162, "REMCDHashtag+CloudKit: mergeData(from:) merged to cdHashtag.reminder from SharedToMeReminderCKIdentifier {hashtag: %{public}s, sharedToMeReminderCKIdentifier: %{public}s}", v163, 0x16u);
        swift_arrayDestroy();

        v36 = isa;
        v26 = v197;
      }
    }

    else
    {
      sub_10018E134();
      CKRecordKeyValueSetting.subscript.getter();
      if (BYTE2(v202[0]))
      {
        v37 = 0;
      }

      else
      {
        v37 = v202[0];
      }

      [v3 setType:v37];
    }

LABEL_10:
    ++v34;
  }

  while (v34 != 5);
}