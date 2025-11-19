uint64_t sub_1000403BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100040434()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000404CC()
{
  result = qword_100198F20;
  if (!qword_100198F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198F20);
  }

  return result;
}

unint64_t sub_100040524()
{
  result = qword_100198F28;
  if (!qword_100198F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198F28);
  }

  return result;
}

unint64_t sub_10004057C()
{
  result = qword_100198F30;
  if (!qword_100198F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198F30);
  }

  return result;
}

unint64_t sub_1000405D4()
{
  result = qword_100198F38;
  if (!qword_100198F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198F38);
  }

  return result;
}

unint64_t sub_100040628()
{
  result = qword_100198F48;
  if (!qword_100198F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198F48);
  }

  return result;
}

unint64_t sub_10004067C()
{
  result = qword_100198F60;
  if (!qword_100198F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198F60);
  }

  return result;
}

unint64_t sub_1000406D0(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v4 = v3;
    sub_10002EC70(&qword_100198F68, &qword_10014DA10);
    sub_1000409EC(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100040768(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v4 = v3;
    sub_10002EC70(&qword_100198F50, &qword_10014DA08);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000407DC()
{
  result = qword_100198F90;
  if (!qword_100198F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198F90);
  }

  return result;
}

unint64_t sub_100040830()
{
  result = qword_100198FA8;
  if (!qword_100198FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198FA8);
  }

  return result;
}

unint64_t sub_100040884()
{
  result = qword_100198FB8;
  if (!qword_100198FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198FB8);
  }

  return result;
}

unint64_t sub_1000408D8()
{
  result = qword_100198FD8;
  if (!qword_100198FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198FD8);
  }

  return result;
}

uint64_t sub_10004092C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040990(uint64_t a1)
{
  v2 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000409EC(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_100040A50(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100040B30()
{
  result = qword_100198FF8;
  if (!qword_100198FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198FF8);
  }

  return result;
}

unint64_t sub_100040B88()
{
  result = qword_100199000;
  if (!qword_100199000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199000);
  }

  return result;
}

unint64_t sub_100040BE0()
{
  result = qword_100199008;
  if (!qword_100199008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199008);
  }

  return result;
}

unint64_t sub_100040C38()
{
  result = qword_100199010;
  if (!qword_100199010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199010);
  }

  return result;
}

unint64_t sub_100040C90()
{
  result = qword_100199018;
  if (!qword_100199018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199018);
  }

  return result;
}

unint64_t sub_100040CE8()
{
  result = qword_100199020;
  if (!qword_100199020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199020);
  }

  return result;
}

unint64_t sub_100040D40()
{
  result = qword_100199028;
  if (!qword_100199028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199028);
  }

  return result;
}

unint64_t sub_100040D98()
{
  result = qword_100199030;
  if (!qword_100199030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199030);
  }

  return result;
}

unint64_t sub_100040DF0()
{
  result = qword_100199038;
  if (!qword_100199038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199038);
  }

  return result;
}

uint64_t sub_100040E78()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019D830);
  sub_10000347C(v0, qword_10019D830);
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100040EF8()
{
  sub_100006A04();
  v1 = v0;
  v157 = v2;
  v151 = v3;
  v152 = v4;
  v162 = _swiftEmptyArrayStorage;
  v154 = sub_1000232F4(v0);
  if (!v154)
  {
    goto LABEL_113;
  }

  v5 = objc_opt_self();
  v6 = 0;
  v159 = 0;
  v153 = v1 & 0xC000000000000001;
  v145 = v1 + 32;
  v144 = LNSystemEntityProtocolIdentifierUniqueEntity;
  v7 = &TableBuilder;
  v146 = LNSystemProtocolIdentifierEntityUpdating;
  v147 = LNSystemProtocolIdentifierPropertyUpdater;
  v155 = v1;
  v156 = v5;
  while (1)
  {
    sub_10003818C(v6, v153 == 0, v1);
    if (v153)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v145 + 8 * v6);
    }

    v9 = v8;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v158 = v6;
    v11 = [v8 *&v7[37].ivar_base_size];
    sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = sub_10001839C([v5 entityUpdatingProtocol]);
    __chkstk_darwin(v13);
    sub_100003710();
    *(v14 - 16) = &v161;
    v16 = sub_100057384(sub_100042EB8, v15, v12);

    v160 = v9;
    if ((v16 & 1) == 0)
    {
      v17 = [v9 *&v7[37].ivar_base_size];
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = sub_10001839C([v5 propertyUpdaterProtocol]);
      __chkstk_darwin(v19);
      sub_100003710();
      *(v20 - 16) = &v161;
      v22 = sub_100057384(sub_100042F20, v21, v18);

      if ((v22 & 1) == 0)
      {
        v54 = [v9 *&v7[37].ivar_base_size];
        v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = [v5 openEntitySystemProtocol];
        v161 = v56;
        __chkstk_darwin(v56);
        sub_100003710();
        *(v57 - 16) = &v161;
        v59 = sub_100057384(sub_100042F20, v58, v55);

        if ((v59 & 1) == 0)
        {

          goto LABEL_85;
        }

        v60 = [v9 parameters];
        sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
        v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = sub_1000232F4(v61);
        v1 = v155;
        v63 = v9;
        if (!v62)
        {

          goto LABEL_55;
        }

        v64 = v62;
        if (v62 >= 1)
        {
          v65 = 0;
          while (1)
          {
            if ((v61 & 0xC000000000000001) != 0)
            {
              v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v66 = *(v61 + 8 * v65 + 32);
            }

            v67 = v66;
            v68 = sub_1000237B0(v66);
            if (!v69)
            {
              goto LABEL_50;
            }

            if (v68 == 0x746567726174 && v69 == 0xE600000000000000)
            {
            }

            else
            {
              v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v71 & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            v72 = [v67 valueType];
            objc_opt_self();
            v73 = swift_dynamicCastObjCClass();
            if (v73)
            {
              v74 = [v73 identifier];
              v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v77 = v76;

              if (*(v157 + 16))
              {
                v78 = sub_10000C2A0(v75, v77);
                v80 = v79;

                if (v80)
                {
                  v81 = *(*(v157 + 56) + 8 * v78);
                  v82 = [v81 systemProtocolMetadata];
                  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
                  sub_10002EB80(&qword_1001990B0, &qword_10014D050);
                  sub_1000029D0();
                  sub_100042ED8(&qword_100198910, v83);
                  v84 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                  if (*(v84 + 16))
                  {
                    sub_10004B2BC(v144);
                    v86 = v85;

                    if (v86)
                    {
                      v87 = [v81 displayRepresentation];
                      v88 = [v87 name];

                      v89 = [v9 identifier];
                      static String._unconditionallyBridgeFromObjectiveC(_:)();

                      v90 = v88;
                      sub_1000425B4();
                      v150 = v91;

                      sub_10006E2C8(v150);
LABEL_49:
                      v63 = v9;
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            v92 = [v67 valueType];
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {

              v67 = v92;
              goto LABEL_49;
            }

            v63 = v9;
            v93 = [v9 identifier];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1000425B4();
            v95 = v94;

            sub_10006E2C8(v95);
LABEL_50:
            ++v65;

            if (v64 == v65)
            {

              v1 = v155;
              v5 = v156;
              goto LABEL_54;
            }
          }
        }

LABEL_121:
        __break(1u);
LABEL_122:
        swift_once();
LABEL_114:
        v137 = type metadata accessor for Logger();
        sub_10000347C(v137, qword_10019D830);
        v138 = v162;

        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v161 = v142;
          *v141 = 134218242;
          *(v141 + 4) = v138[2];

          *(v141 + 12) = 2080;
          *(v141 + 14) = sub_100004C50(v151, v152, &v161);
          _os_log_impl(&_mh_execute_header, v139, v140, "Generated %ld AssistantIntents on behalf of %s", v141, 0x16u);
          sub_1000034F8(v142);
        }

        else
        {
        }

        sub_1000069EC();
        return;
      }
    }

    v23 = v9;
    v24 = [v9 systemProtocolMetadata];
    type metadata accessor for LNSystemProtocolIdentifier(0);
    sub_10002EB80(&qword_1001990B0, &qword_10014D050);
    sub_100042ED8(&qword_100198970, type metadata accessor for LNSystemProtocolIdentifier);
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v25 + 16))
    {
      goto LABEL_15;
    }

    v26 = sub_10004B2BC(v147);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      swift_unknownObjectRetain();

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        v31 = [v29 entityIdentifier];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        if (*(v157 + 16))
        {
          v35 = sub_10000C2A0(v32, v34);
          v37 = v36;

          v7 = &TableBuilder;
          if (v37)
          {
            v38 = *(*(v157 + 56) + 8 * v35);
            v39 = v38;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {

          v38 = 0;
          v7 = &TableBuilder;
        }

        v53 = v159;
        v96 = [v30 entityProperty];
        v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;
        swift_unknownObjectRelease();

        if (!v38)
        {

          v5 = v156;
          goto LABEL_84;
        }

        v148 = v98;
        v5 = v156;
        goto LABEL_65;
      }

      swift_unknownObjectRelease();
      v5 = v156;
    }

    else
    {
LABEL_15:
    }

    v40 = [v9 systemProtocolMetadata];
    v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v41 + 16))
    {

      goto LABEL_53;
    }

    v42 = sub_10004B2BC(v146);
    v7 = &TableBuilder;
    if ((v43 & 1) == 0)
    {

LABEL_85:
      v1 = v155;
      v6 = v158;
      goto LABEL_86;
    }

    v44 = *(*(v41 + 56) + 8 * v42);
    swift_unknownObjectRetain();

    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (!v45)
    {

      swift_unknownObjectRelease();
      goto LABEL_85;
    }

    v46 = [v45 entityIdentifier];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (!*(v157 + 16))
    {

      goto LABEL_83;
    }

    v50 = sub_10000C2A0(v47, v49);
    v52 = v51;

    if ((v52 & 1) == 0)
    {

LABEL_83:
      swift_unknownObjectRelease();
LABEL_84:

      goto LABEL_85;
    }

    v38 = *(*(v157 + 56) + 8 * v50);
    swift_unknownObjectRelease();
    v148 = 0;
    v149 = 0;
    v53 = v159;
LABEL_65:
    v99 = [v38 systemProtocolMetadata];
    type metadata accessor for LNSystemEntityProtocolIdentifier(0);
    v100 = v38;
    sub_1000029D0();
    sub_100042ED8(&qword_100198910, v101);
    v102 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v102 + 16))
    {

LABEL_81:
      goto LABEL_84;
    }

    v143 = v100;
    sub_10004B2BC(v144);
    v104 = v103;

    if ((v104 & 1) == 0)
    {

      goto LABEL_81;
    }

    v105 = [v9 parameters];
    sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
    v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v107 = sub_1000232F4(v106);
    v108 = v148;
    if (v107)
    {
      break;
    }

    v111 = _swiftEmptyArrayStorage;
LABEL_89:
    sub_100041EC0(v111);
    v159 = v53;
    v122 = [v23 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v123 = [v143 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = [v143 properties];
    sub_100003D44(0, &qword_1001990B8, LNPropertyMetadata_ptr);
    v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = sub_1000232F4(v125);
    for (i = 0; ; ++i)
    {
      if (v126 == i)
      {

        v129 = 0;
        goto LABEL_112;
      }

      if ((v125 & 0xC000000000000001) != 0)
      {
        v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v128 = *(v125 + 8 * i + 32);
      }

      v129 = v128;
      if (__OFADD__(i, 1))
      {
        goto LABEL_119;
      }

      v130 = sub_100042E30(v128);
      if (v131)
      {
        break;
      }

      if (!v108)
      {
        goto LABEL_111;
      }

LABEL_106:
      ;
    }

    if (!v108)
    {

      goto LABEL_106;
    }

    if (v130 != v149 || v131 != v108)
    {
      v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v133)
      {
        goto LABEL_111;
      }

      v108 = v148;
      goto LABEL_106;
    }

LABEL_111:

LABEL_112:
    v134 = [v129 title];

    sub_100041F58();
    v136 = v135;

    sub_10006E2C8(v136);

LABEL_53:
    v1 = v155;
LABEL_54:
    v6 = v158;
LABEL_55:
    v7 = &TableBuilder;
LABEL_86:
    if (v6 == v154)
    {
LABEL_113:
      if (qword_1001980B8 == -1)
      {
        goto LABEL_114;
      }

      goto LABEL_122;
    }
  }

  v109 = v107;
  v161 = _swiftEmptyArrayStorage;
  sub_1000B3518(0, v107 & ~(v107 >> 63), 0);
  if ((v109 & 0x8000000000000000) == 0)
  {
    v110 = 0;
    v111 = v161;
    do
    {
      if ((v106 & 0xC000000000000001) != 0)
      {
        v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v112 = *(v106 + 8 * v110 + 32);
      }

      v113 = v112;
      v114 = sub_1000237B0(v112);
      v116 = v115;
      v117 = [v113 title];

      v161 = v111;
      v119 = v111[2];
      v118 = v111[3];
      if (v119 >= v118 >> 1)
      {
        v121 = sub_100005150(v118);
        sub_1000B3518(v121, v119 + 1, 1);
        v111 = v161;
      }

      ++v110;
      v111[2] = v119 + 1;
      v120 = &v111[3 * v119];
      v120[4] = v114;
      v120[5] = v116;
      v120[6] = v117;
      v5 = v156;
    }

    while (v109 != v110);

    v53 = v159;
    v23 = v160;
    v108 = v148;
    goto LABEL_89;
  }

  __break(1u);
}

void *sub_100041EC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_1001990F0, &unk_10014E050);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_100042C48(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_100041F58()
{
  sub_100006A04();
  v1 = v0;
  v100 = v2;
  v101 = v3;
  v97 = v4;
  v98 = v5;
  v95 = v6;
  v96 = v7;
  v99 = v8;
  v9 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v102 = &v81 - v11;
  v12 = 1 << *(v1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v1 + 64);
  v15 = (v12 + 63) >> 6;
  v94 = "registrationUUID";
  sub_100003720();
  v93 = v16;
  sub_100003720();
  v92 = v17;

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v20 = &type metadata for String;
  v91 = xmmword_10014DD60;
  v90 = xmmword_10014CE90;
  v89 = xmmword_10014CE80;
  while (v14)
  {
LABEL_9:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = v22 | (v18 << 6);
    v24 = (*(v1 + 48) + 16 * v23);
    v25 = v24[1];
    if (v25)
    {
      v26 = *(*(v1 + 56) + 8 * v23);
      if (v26)
      {
        v27 = *v24;
        if (*v24 != 0x746567726174 || v25 != 0xE600000000000000)
        {
          v29 = v20;
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v29;
          if ((v30 & 1) == 0)
          {
            v31 = type metadata accessor for URL();
            sub_100004E08(v31);
            sub_100007E2C();
            sub_1000075C4(v32, v33, v34, v35);
            v88 = objc_allocWithZone(LNStaticDeferredLocalizedString);
            v86 = v26;

            sub_1000070D4();
            v88 = sub_1000B8564(v36, v37, v38, v39, v40, v41, v102);
            v107 = 0xD000000000000024;
            v108 = v93;
            v104 = v25;
            v105 = 0x65756C6176;
            v106 = 0xE500000000000000;
            v103 = v27;
            sub_10000BE0C();
            StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

            v42 = v102;
            sub_100007E2C();
            sub_1000075C4(v43, v44, v45, v87);
            sub_100004E08(objc_allocWithZone(LNStaticDeferredLocalizedString));

            sub_1000070D4();
            v52 = sub_1000B8564(v46, v47, v48, v49, v50, v51, v42);
            v53 = v101;
            if (!v101)
            {
              v53 = v86;
            }

            sub_100004E08(v53);
            sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
            v54 = swift_allocObject();
            v83 = v54;
            *(v54 + 16) = v91;
            v55 = v88;
            *(v54 + 32) = v88;
            *(v54 + 40) = v52;
            sub_10002EB80(&qword_1001990D8, &qword_10014DDB8);
            inited = swift_initStackObject();
            v84 = v52;
            v57 = inited;
            *(inited + 16) = v90;
            v58 = v92;
            *(inited + 32) = 0xD000000000000011;
            *(inited + 40) = v58;
            v59 = sub_100003A60();
            *(v59 + 16) = v89;
            v60 = v87;
            *(v59 + 32) = v87;
            *(v57 + 48) = v59;
            v61 = v101;

            v85 = v55;
            v84 = v84;
            sub_100004E08(v60);
            sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
            Dictionary.init(dictionaryLiteral:)();
            sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
            Dictionary.init(dictionaryLiteral:)();
            v62 = objc_allocWithZone(LNAssistantIntentMetadata);
            sub_100006A1C();
            v64 = v63;

            v88 = v64;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10007029C(0, *(v19 + 2) + 1, 1, v19);
              v19 = v76;
            }

            v66 = *(v19 + 2);
            v65 = *(v19 + 3);
            if (v66 >= v65 >> 1)
            {
              v77 = sub_100005150(v65);
              sub_10007029C(v77, v66 + 1, 1, v19);
              v19 = v78;
            }

            *(v19 + 2) = v66 + 1;
            v67 = &v19[24 * v66];
            v68 = v99;
            *(v67 + 4) = v95;
            *(v67 + 5) = v68;
            *(v67 + 6) = v88;
            sub_1000429A0();
            v83 = v69;
            v71 = v70;
            v82 = v72;
            v74 = *(v19 + 2);
            v73 = *(v19 + 3);
            if (v74 >= v73 >> 1)
            {
              v79 = sub_100005150(v73);
              sub_10007029C(v79, v74 + 1, 1, v19);
              v19 = v80;
            }

            *(v19 + 2) = v74 + 1;
            v75 = &v19[24 * v74];
            *(v75 + 4) = v83;
            *(v75 + 5) = v71;
            *(v75 + 6) = v82;
            v20 = v29;
          }
        }
      }
    }
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      sub_1000069EC();
      return;
    }

    v14 = *(v1 + 64 + 8 * v21);
    ++v18;
    if (v14)
    {
      v18 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1000425B4()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v62 - v12;
  if (v1)
  {
    v63 = v9;
    type metadata accessor for URL();
    sub_100007E2C();
    sub_1000075C4(v14, v15, v16, v17);
    v18 = objc_allocWithZone(LNStaticDeferredLocalizedString);
    v19 = v1;
    sub_1000070D4();
    v26 = sub_1000B8564(v20, v21, v22, v23, v24, v25, v13);
    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    v27 = sub_100003A60();
    v62 = xmmword_10014CE80;
    *(v27 + 16) = xmmword_10014CE80;
    *(v27 + 32) = v26;
    sub_10002EB80(&qword_1001990D8, &qword_10014DDB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    sub_100003720();
    *(v29 + 32) = 0xD000000000000011;
    *(v29 + 40) = v30;
    v31 = sub_100003A60();
    *(v31 + 16) = v62;
    *(v31 + 32) = v19;
    *(inited + 48) = v31;
    v32 = v19;

    v33 = v26;
    sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
    Dictionary.init(dictionaryLiteral:)();
    sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
    Dictionary.init(dictionaryLiteral:)();
    v34 = objc_allocWithZone(LNAssistantIntentMetadata);
    sub_10000515C();
    sub_100006A1C();
    v36 = v35;

    sub_100013448();
    sub_100011794(v37);
    if (v39)
    {
      v58 = sub_100005150(v38);
      sub_10007029C(v58, v5, 1, v3);
      v3 = v59;
    }

    v9 = v63;
  }

  else
  {
    type metadata accessor for URL();
    sub_100007E2C();
    sub_1000075C4(v40, v41, v42, v43);
    v44 = objc_allocWithZone(LNStaticDeferredLocalizedString);
    sub_1000070D4();
    v51 = sub_1000B8564(v45, v46, v47, v48, v49, v50, v13);
    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    v52 = sub_100003A60();
    *(v52 + 16) = xmmword_10014CE80;
    *(v52 + 32) = v51;

    v32 = v51;
    sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
    Dictionary.init(dictionaryLiteral:)();
    sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
    Dictionary.init(dictionaryLiteral:)();
    v53 = objc_allocWithZone(LNAssistantIntentMetadata);
    sub_10000515C();
    sub_100006A1C();
    v36 = v54;

    sub_100013448();
    sub_100011794(v55);
    if (v39)
    {
      v60 = sub_100005150(v56);
      sub_10007029C(v60, v5, 1, v3);
      v3 = v61;
    }
  }

  *(v3 + 16) = v5;
  v57 = (v3 + 24 * _swiftEmptyArrayStorage);
  v57[4] = v9;
  v57[5] = v7;
  v57[6] = v36;
  sub_1000069EC();
}

void sub_1000429A0()
{
  sub_100006A04();
  v1 = v0;
  v39[1] = v3;
  v39[2] = v2;
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v39 - v6;
  v8 = type metadata accessor for URL();
  sub_100007E2C();
  sub_1000075C4(v9, v10, v11, v8);
  v12 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_1000070D4();
  v18 = sub_1000B8564(v13, v14, 0xD000000000000018, v15, v16, v17, v7);
  sub_100007E2C();
  sub_1000075C4(v19, v20, v21, v8);
  v22 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_1000070D4();
  v29 = sub_1000B8564(v23, v24, v25, v26, v27, v28, v7);
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10014DD60;
  *(v30 + 32) = v18;
  *(v30 + 40) = v29;
  sub_10002EB80(&qword_1001990D8, &qword_10014DDB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  sub_100003720();
  *(v32 + 32) = 0xD000000000000011;
  *(v32 + 40) = v33;
  v34 = sub_100003A60();
  *(v34 + 16) = xmmword_10014CE80;
  *(v34 + 32) = v1;
  *(inited + 48) = v34;

  v35 = v18;
  v36 = v29;
  v37 = v1;
  sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
  Dictionary.init(dictionaryLiteral:)();
  sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
  Dictionary.init(dictionaryLiteral:)();
  v38 = objc_allocWithZone(LNAssistantIntentMetadata);
  sub_100006A1C();

  sub_1000069EC();
}

uint64_t sub_100042C48(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v30 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v30 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v32 = v4;
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    v10 = *i;

    v12 = sub_100045814(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_10002EB80(&qword_1001990F8, &unk_10014DDD0);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_100046BE8(v15, a2 & 1);
      v17 = *a3;
      v18 = sub_100045814(v7, v6);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = *(v20[7] + 8 * v12);
      v22 = v21;

      v23 = v20[7];
      v24 = *(v23 + 8 * v12);
      *(v23 + 8 * v12) = v21;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v25 = (v20[6] + 16 * v12);
      *v25 = v7;
      v25[1] = v6;
      *(v20[7] + 8 * v12) = v8;
      v26 = v20[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v20[2] = v28;
    }

    v4 = v32 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_10002EB80(&unk_100199100, &qword_10014E230);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100042E30(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100042E94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000F5954() & 1;
}

uint64_t sub_100042ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100042F8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  result = static Int64.fromDatatypeValue(_:)(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100042FBC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100042FC8()
{
  v1 = *v0;
  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    sub_10002EB80(&qword_1001992F8, &qword_10014E008);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100043034()
{
  v0 = sub_100042FC8();
  if (!v0)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_8;
  }

  sub_1000A0C5C(1701667150, 0xE400000000000000, v0, &v3);

  if (!*(&v4 + 1))
  {
LABEL_8:
    sub_100003E9C(&v3, &qword_1001992F0, &qword_10014E000);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000430EC()
{
  v0 = sub_100042FC8();
  if (!v0)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_7;
  }

  sub_1000A0C5C(0x6F666E4972657355, 0xE800000000000000, v0, &v3);

  if (!*(&v4 + 1))
  {
LABEL_7:
    sub_100003E9C(&v3, &qword_1001992F0, &qword_10014E000);
    return 0;
  }

  sub_10002EB80(&qword_1001992F8, &qword_10014E008);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000431B4()
{
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = *v0;
  return _swift_task_switch(sub_100043224, v0, 0);
}

uint64_t sub_100043224()
{
  v1 = v0[5];
  v2 = *(v1 + 80);
  v13 = (*(*(v1 + 88) + 8))();
  v3 = *(v13 + 16);
  if (v3)
  {
    v4 = type metadata accessor for XPCEventDispatcher();
    v5 = (v13 + 56);
    do
    {
      v6 = v0[4];
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v0[2] = v0[3];

      sub_10004A75C(v7, v8, v9, v10, (v0 + 2), v4, v6, &off_10018C6F0);

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  sub_100003A00();

  return v11();
}

uint64_t sub_100043354()
{
  sub_1000036A0();
  v1[22] = v2;
  v1[23] = v0;
  v3 = *v0;
  v1[24] = *v0;
  v1[25] = *(v3 + 80);
  sub_10000518C();
  v1[26] = v4;
  v6 = *(v5 + 64) + 15;
  v1[27] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[28] = v7;
  v8 = *(v7 - 8);
  v1[29] = v8;
  v9 = *(v8 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000434C0, v0, 0);
}

uint64_t sub_1000434C0()
{
  v69 = v0;
  v0[15] = v0[25];
  v1 = v0 + 15;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (!LNLogSubsystem)
  {
    __break(1u);
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = v0 + 2;
  v4 = v0 + 7;
  v5 = v0[33];
  v6 = v0[22];
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  sub_100013334(v6, (v0 + 2));
  sub_100013334(v6, (v0 + 7));
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v11 = v0[29];
  v65 = v0[28];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_1000034B4(v3, v0[5]);
    v14 = v13[3];
    v15 = v13[4];

    sub_1000034F8(v3);
    v16 = sub_100004C50(v14, v15, &v67);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_1000034B4(v4, v0[10]);
    v18 = v17[1];
    v19 = v17[2];

    sub_1000034F8(v4);
    v20 = sub_100004C50(v18, v19, &v67);

    *(v12 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received incoming XPC event %s from stream %s", v12, 0x16u);
    swift_arrayDestroy();
    sub_1000036AC();
    v1 = v0 + 15;
    sub_1000036AC();

    v21 = *(v11 + 8);
    v21(v10, v65);
  }

  else
  {

    v21 = *(v11 + 8);
    v21(v10, v65);
    sub_1000034F8(v0 + 2);
    sub_1000034F8(v0 + 7);
  }

  v22 = v0[27];
  v23 = v0[25];
  v25 = v0[22];
  v24 = v0[23];
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v67 = 0xD000000000000010;
  v68 = 0x8000000100154B90;
  v0[16] = v23;
  swift_getMetatypeMetadata();
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 46;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28 = sub_1000034B4(v25, v25[3]);
  v29 = v28[3];
  v30 = v28[4];

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  String.utf8CString.getter();

  v32 = os_transaction_create();

  v33 = *(v24 + 112);
  sub_100002794(v22);
  v1[5] = v0[25];
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (!LNLogSubsystem)
  {
    goto LABEL_15;
  }

  v64 = v32;
  v66 = v21;
  v34 = v0[32];
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "[XPCEventService] Deferring to service handler", v37, 2u);
    sub_1000036AC();
  }

  v38 = v0[32];
  v40 = v0[28];
  v39 = v0[29];
  v41 = v0[27];
  v43 = v0[24];
  v42 = v0[25];
  v44 = v0[22];

  v66(v38, v40);
  (*(*(v43 + 88) + 16))(v44, v64, v42);
  v0[21] = v42;
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (!LNLogSubsystem)
  {
    goto LABEL_16;
  }

  v45 = v0[31];
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[31];
  v50 = v0[28];
  v51 = v0[29];
  v53 = v0[26];
  v52 = v0[27];
  v54 = v0[25];
  if (v48)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "[XPCEventService] Event serviced", v55, 2u);
    sub_1000036AC();
  }

  swift_unknownObjectRelease();

  v56 = sub_100006404();
  v57(v56);
  (*(v53 + 8))(v52, v54);
  v59 = v0[32];
  v58 = v0[33];
  v61 = v0[30];
  v60 = v0[31];
  v62 = v0[27];

  sub_100003A00();

  return v63();
}

uint64_t sub_100043CA4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100043CCC()
{
  sub_100043CA4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100043D2C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BEC4;

  return sub_100043354();
}

uint64_t sub_100043DC4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BFAC;

  return sub_1000431B4();
}

uint64_t sub_100043E54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_100043C80();
}

void *sub_100043EE0()
{
  type metadata accessor for XPCEventDispatcher();
  swift_allocObject();
  result = sub_100043F20();
  qword_100199110 = result;
  return result;
}

void *sub_100043F20()
{
  v10[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v10[0]);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v0[2] = &_swiftEmptySetSingleton;
  sub_10002EB80(&qword_100199290, &qword_10014DF78);
  v0[3] = Dictionary.init(dictionaryLiteral:)();
  sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10004AFA8(&qword_1001992C0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10[0]);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_1000441AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100044364(a2, a3);
  sub_10002EB80(&qword_100199270, &qword_10014DF58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  sub_10002EB80(&qword_100199278, &qword_10014DF60);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_10014CE90;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  sub_10002EB80(&qword_100199280, &qword_10014DF68);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10014CE90;
  sub_100013334(a6, v14 + 32);
  *(v13 + 48) = v14;

  sub_10002EB80(&qword_100199288, &qword_10014DF70);
  *(inited + 48) = Dictionary.init(dictionaryLiteral:)();
  sub_10002EB80(&qword_100199290, &qword_10014DF78);
  v15 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  sub_100047C14(v15, sub_10004AACC, 0, (a1 + 24));
  return swift_endAccess();
}

uint64_t sub_100044364(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  v10 = *(v2 + 32);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v12)
  {
    swift_beginAccess();
    v14 = *(v2 + 16);

    v15 = sub_1000445F8(a1, a2, v14);

    if (!v15)
    {
      v16 = swift_allocObject();
      v16[2] = v2;
      v16[3] = a1;
      v16[4] = a2;
      aBlock[4] = sub_10004AB70;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449B0;
      aBlock[3] = &unk_10018C7A0;
      v17 = _Block_copy(aBlock);

      v18 = String.utf8CString.getter();
      xpc_set_event_stream_handler((v18 + 32), v11, v17);

      _Block_release(v17);
      swift_beginAccess();

      sub_100027678();
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1000445F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  sub_10001E078();
  Hasher._finalize()();
  v7 = *(a3 + 32);
  sub_10000884C();
  v10 = ~v9;
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(a3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(a3 + 48) + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

const char *sub_1000446D4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 32);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
    if (result)
    {
      v19 = String.init(cString:)();
      v21 = v20;
      swift_beginAccess();
      v22 = *(v3 + 24);

      swift_unknownObjectRetain();
      v23 = sub_1000B6334(a2, a3, v22);
      if (v23)
      {
        v24 = v23;
        swift_endAccess();

        v25 = sub_1000B6334(v19, v21, v24);

        if (v25)
        {
          v26 = type metadata accessor for TaskPriority();
          sub_1000075C4(v10, 1, 1, v26);
          v27 = swift_allocObject();
          v27[2] = 0;
          v27[3] = 0;
          v27[4] = v25;
          v27[5] = a1;
          v27[6] = a2;
          v27[7] = a3;
          v27[8] = v19;
          v27[9] = v21;

          swift_unknownObjectRetain();

          sub_10003A6C0(0, 0, v10, &unk_10014DFB8, v27);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_endAccess();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000449B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100044A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_100044A34, 0, 0);
}

uint64_t sub_100044A34()
{
  sub_1000036A0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100044B1C;
  v4 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_10014DFC8, v1, &type metadata for () + 8);
}

uint64_t sub_100044B1C()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  sub_100003A00();

  return v6();
}

uint64_t sub_100044C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[26] = a2;
  v5 = *(*(sub_10002EB80(&qword_100198C20, &qword_10014D090) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100044CC4, 0, 0);
}

uint64_t sub_100044CC4()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 224);
    v28 = **(v0 + 208);
    v27 = *v3;
    *(v0 + 112) = *(v3 + 1);
    *(v0 + 128) = *(v3 + 3);
    v4 = v1 + 32;
    v5 = type metadata accessor for TaskPriority();
    do
    {
      v7 = *(v0 + 232);
      v6 = *(v0 + 240);
      v8 = *(v0 + 224);
      sub_1000075C4(v6, 1, 1, v5);
      sub_100013334(v4, v0 + 16);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = (v9 + 16);
      *(v9 + 24) = 0;
      sub_10001A798((v0 + 16), v9 + 32);
      v11 = *(v8 + 32);
      v12 = *(v8 + 16);
      *(v9 + 72) = *v8;
      *(v9 + 88) = v12;
      *(v9 + 104) = v11;
      sub_10003CC10(v6, v7);
      LODWORD(v7) = sub_1000032C4(v7, 1, v5);
      swift_unknownObjectRetain();
      v13 = *(v0 + 232);
      v14 = v0 + 112;
      if (v7 == 1)
      {
        sub_10004AD94(v14, v0 + 144);
        sub_10004ADCC(v0 + 128, v0 + 160);
        sub_100003E9C(v13, &qword_100198C20, &qword_10014D090);
      }

      else
      {
        sub_10004AD94(v14, v0 + 176);
        sub_10004ADCC(v0 + 128, v0 + 192);
        TaskPriority.rawValue.getter();
        (*(*(v5 - 8) + 8))(v13, v5);
      }

      if (*v10)
      {
        v15 = *(v9 + 24);
        v16 = *v10;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = swift_allocObject();
      *(v20 + 16) = &unk_10014DFE0;
      *(v20 + 24) = v9;

      if (v19 | v17)
      {
        v21 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v17;
        *(v0 + 80) = v19;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v0 + 240);
      *(v0 + 88) = 1;
      *(v0 + 96) = v21;
      *(v0 + 104) = v28;
      swift_task_create();

      sub_100003E9C(v22, &qword_100198C20, &qword_10014D090);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v24 = *(v0 + 232);
  v23 = *(v0 + 240);

  sub_100003A00();

  return v25();
}

uint64_t sub_100044FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return _swift_task_switch(sub_100044FF8, 0, 0);
}

uint64_t sub_100044FF8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = v1[3];
  v4 = v1[4];
  sub_1000034B4(v1, v3);
  v5 = *v2;
  *(v0 + 56) = *(v2 + 1);
  *(v0 + 72) = *(v2 + 3);
  *(v0 + 40) = &type metadata for ConcreteXPCEvent;
  *(v0 + 48) = &off_10018C970;
  v6 = swift_allocObject();
  *(v0 + 16) = v6;
  v7 = v2[4];
  v8 = *(v2 + 1);
  *(v6 + 16) = *v2;
  *(v6 + 32) = v8;
  *(v6 + 48) = v7;
  v9 = *(v4 + 8);
  swift_unknownObjectRetain();
  sub_10004AD94(v0 + 56, v0 + 88);
  sub_10004ADCC(v0 + 72, v0 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1000451A8;

  return v13(v0 + 16, v3, v4);
}

uint64_t sub_1000451A8()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = v1;
  v3 = *(v1 + 136);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  sub_1000034F8((v2 + 16));
  sub_100003A00();

  return v6();
}

uint64_t sub_100045290()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1000452C0()
{
  v0 = sub_100045290();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100045314(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1000453A0()
{
  sub_10004B2C8();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 64);
    v4 = (v1 + 64);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v9 = *(v4 - 2);
      v8 = *(v4 - 1);
      v15 = *v4;
      v10 = *(v3 - 4) == *(v4 - 4) && *(v3 - 3) == *(v4 - 3);
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v11 = v5 == v9 && v6 == v8;
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      sub_100003D44(0, &qword_100199300, NSObject_ptr);

      v12 = v7;

      v13 = v15;
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  sub_10001CE84();
}

uint64_t sub_100045504@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = sub_100045670(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        result = 1;
LABEL_10:
        *a4 = result & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return result;
    default:
      __s2 = a2;
      v11 = a3;
      v12 = BYTE2(a3);
      v13 = BYTE3(a3);
      v14 = BYTE4(a3);
      v15 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_100045670(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_100045728()
{
  sub_1000070C8();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_100004DC8(v4);
  *v5 = v6;
  v5[1] = sub_10000BEC8;

  return v8(v1);
}

unint64_t sub_100045814(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    sub_10001E078();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return sub_100045D60(a1, a2, v6);
}

void sub_10004589C()
{
  v1 = *(v0 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();

  sub_100046878();
}

unint64_t sub_10004592C()
{
  sub_10000779C();
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v0 = sub_1000099A8();
  return sub_100045E2C(v0, v1, v2, v3, v4);
}

unint64_t sub_1000459A8()
{
  sub_10000779C();
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_10001E078();
  Hasher._finalize()();
  v0 = sub_1000099A8();

  return sub_100045F14(v0, v1, v2, v3, v4);
}

void sub_100045A18()
{
  sub_10001D580();
  type metadata accessor for UUID();
  sub_10004AFA8(&qword_100199BD0, &type metadata accessor for UUID);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100004820();
  sub_1000466FC();
}

void sub_100045B08()
{
  sub_10001D580();
  type metadata accessor for URL();
  sub_10004AFA8(&qword_100199340, &type metadata accessor for URL);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100004820();
  sub_1000466FC();
}

void sub_100045BCC()
{
  v0 = sub_1000186F0();
  NSObject._rawHashValue(seed:)(v0);
  sub_100004820();
  sub_10004695C();
}

void sub_100045C10()
{
  v0 = sub_1000186F0();
  NSObject._rawHashValue(seed:)(v0);
  sub_100004820();
  sub_10004695C();
}

unint64_t sub_100045C54()
{
  sub_10000779C();
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v0)
  {
    Hasher._combine(_:)(1u);
    sub_10001E078();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._finalize()();
  v1 = sub_1000099A8();

  return sub_100046A18(v1, v2, v3, v4, v5);
}

void sub_100045CE0()
{
  v0 = sub_1000186F0();
  NSObject._rawHashValue(seed:)(v0);
  sub_100004820();
  sub_10004695C();
}

unint64_t sub_100045D24()
{
  v1 = sub_1000186F0();
  v2 = AnyHashable._rawHashValue(seed:)(v1);

  return sub_100046B24(v0, v2);
}

unint64_t sub_100045D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100045E2C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = ~(-1 << *(v5 + 32));
  v9 = a5 & v8;
  v10 = a1 >> 16;
  v11 = a2 >> 16;
  while (((1 << v9) & *(v5 + 64 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
  {
    v12 = (*(v5 + 48) + 32 * v9);
    v13 = v12[2] == a3 && v12[3] == a4;
    v14 = v13 && *v12 >> 16 == v10;
    v15 = v14 && v12[1] >> 16 == v11;
    if (v15 || (_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v8;
  }

  return v9;
}

unint64_t sub_100045F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_100046010(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    v11 = a2 >> 62;
    if (a1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 == 0xC000000000000000;
    }

    v13 = !v12;
    v65 = v13;
    v56 = HIDWORD(a1);
    v14 = HIDWORD(a1) == a1;
    v15 = __OFSUB__(HIDWORD(a1), a1);
    v61 = v15;
    v60 = HIDWORD(a1) - a1;
    v16 = BYTE6(a2);
    v57 = a1;
    v58 = v3 + 64;
    v55 = a1 >> 32;
    v54 = (a1 >> 32) - a1;
    v62 = ~v5;
    v63 = BYTE6(a2);
    v64 = a2 >> 62;
    while (1)
    {
      v17 = (*(v7 + 48) + 16 * v6);
      v19 = *v17;
      v18 = v17[1];
      v20 = v18 >> 62;
      if (v14)
      {
        if (v19)
        {
          v21 = 0;
          v14 = 0;
        }

        else
        {
          v21 = v18 >= 0xC000000000000000;
          v14 = v18 == 0xC000000000000000;
        }

        v22 = !v21;
        if (((v22 | v65) & 1) == 0)
        {
          return v6;
        }

        v23 = 0;
      }

      else
      {
        v23 = 0;
        switch(v20)
        {
          case 0uLL:
            v23 = BYTE6(v18);
            break;
          case 1uLL:
            LODWORD(v23) = HIDWORD(v19) - v19;
            v14 = HIDWORD(v19) == v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_89;
            }

            v23 = v23;
            break;
          case 2uLL:
            v25 = *(v19 + 16);
            v24 = *(v19 + 24);
            v26 = __OFSUB__(v24, v25);
            v23 = v24 - v25;
            v14 = v23 == 0;
            if (!v26)
            {
              break;
            }

            goto LABEL_88;
          case 3uLL:
            break;
          default:
            goto LABEL_105;
        }
      }

      v27 = v16;
      switch(v11)
      {
        case 0uLL:
          goto LABEL_31;
        case 1uLL:
          v27 = v60;
          if (!v61)
          {
            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_87;
        case 2uLL:
          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v26 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v26)
          {
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
          }

LABEL_31:
          v14 = v23 == v27;
          if (v23 != v27)
          {
            goto LABEL_85;
          }

          if (v23 < 1)
          {
            return v6;
          }

          break;
        case 3uLL:
          if (!v23)
          {
            return v6;
          }

          goto LABEL_85;
        default:
          goto LABEL_105;
      }

      switch(v20)
      {
        case 1:
          if (v19 >> 32 < v19)
          {
            goto LABEL_90;
          }

          sub_1000098F0(a1, a2);
          sub_1000098F0(a1, a2);
          sub_1000098F0(a1, a2);
          sub_1000098F0(v19, v18);
          v35 = __DataStorage._bytes.getter();
          if (!v35)
          {
            goto LABEL_65;
          }

          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v19, v40))
          {
            goto LABEL_93;
          }

          v35 += v19 - v40;
LABEL_65:
          __DataStorage._length.getter();
          sub_100045504(v35, a1, a2, __s1);
          sub_100009B18(a1, a2);
          sub_100009B18(v19, v18);
          sub_100009B18(a1, a2);
          v41 = __s1[0];
          sub_100009B18(a1, a2);
          v4 = v58;
          v7 = v59;
          v10 = v62;
          v16 = v63;
          v11 = v64;
          if (v41)
          {
            return v6;
          }

          goto LABEL_85;
        case 2:
          v33 = *(v19 + 16);
          v34 = *(v19 + 24);
          sub_1000098F0(a1, a2);
          sub_1000098F0(a1, a2);
          sub_1000098F0(a1, a2);
          sub_1000098F0(v19, v18);
          v35 = __DataStorage._bytes.getter();
          if (!v35)
          {
            goto LABEL_47;
          }

          v36 = __DataStorage._offset.getter();
          if (__OFSUB__(v33, v36))
          {
            goto LABEL_92;
          }

          v35 += v33 - v36;
LABEL_47:
          if (!__OFSUB__(v34, v33))
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        case 3:
          memset(__s1, 0, 14);
          if (v11 == 2)
          {
            v43 = *(a1 + 16);
            v44 = *(a1 + 24);
            sub_1000098F0(a1, a2);
            sub_1000098F0(v19, v18);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v46 = __DataStorage._offset.getter();
              if (__OFSUB__(v43, v46))
              {
                goto LABEL_98;
              }

              v45 += v43 - v46;
            }

            v26 = __OFSUB__(v44, v43);
            v47 = v44 - v43;
            if (v26)
            {
              goto LABEL_96;
            }

            v48 = __DataStorage._length.getter();
            v7 = v59;
            if (!v45)
            {
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
              sub_100009B18(a1, a2);
              sub_100009B18(a1, a2);

              __break(1u);
LABEL_105:
              JUMPOUT(0);
            }

LABEL_80:
            if (v48 >= v47)
            {
              v52 = v47;
            }

            else
            {
              v52 = v48;
            }

            v39 = memcmp(__s1, v45, v52);
            sub_100009B18(v19, v18);
            sub_100009B18(a1, a2);
            v4 = v58;
LABEL_84:
            v10 = v62;
            v16 = v63;
            v11 = v64;
            if (!v39)
            {
              return v6;
            }

            goto LABEL_85;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_95;
            }

            sub_1000098F0(a1, a2);
            sub_1000098F0(v19, v18);
            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v37 = __DataStorage._offset.getter();
              if (__OFSUB__(v57, v37))
              {
                goto LABEL_100;
              }

              v30 += v57 - v37;
            }

            v32 = __DataStorage._length.getter();
            if (!v30)
            {
              goto LABEL_103;
            }

LABEL_57:
            if (v32 >= v54)
            {
              v38 = v54;
            }

            else
            {
              v38 = v32;
            }

            v39 = memcmp(__s1, v30, v38);
            sub_100009B18(v19, v18);
            sub_100009B18(a1, a2);
            goto LABEL_84;
          }

LABEL_67:
          __s2 = a1;
          v67 = BYTE2(a1);
          v68 = BYTE3(a1);
          v69 = v56;
          v70 = BYTE5(a1);
          v71 = BYTE6(a1);
          v72 = HIBYTE(a1);
          v73 = a2;
          v74 = BYTE2(a2);
          v75 = BYTE3(a2);
          v76 = BYTE4(a2);
          v77 = BYTE5(a2);
          v42 = memcmp(__s1, &__s2, v16);
          v16 = v63;
          v11 = v64;
          if (!v42)
          {
            return v6;
          }

LABEL_85:
          v6 = (v6 + 1) & v10;
          if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
          {
            return v6;
          }

          break;
        default:
          __s1[0] = v19;
          LOWORD(__s1[1]) = v18;
          BYTE2(__s1[1]) = BYTE2(v18);
          BYTE3(__s1[1]) = BYTE3(v18);
          BYTE4(__s1[1]) = BYTE4(v18);
          BYTE5(__s1[1]) = BYTE5(v18);
          if (!v11)
          {
            goto LABEL_67;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_94;
            }

            sub_1000098F0(a1, a2);
            sub_1000098F0(v19, v18);
            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v31 = __DataStorage._offset.getter();
              if (__OFSUB__(v57, v31))
              {
                goto LABEL_101;
              }

              v30 += v57 - v31;
            }

            v32 = __DataStorage._length.getter();
            if (!v30)
            {
              goto LABEL_102;
            }

            goto LABEL_57;
          }

          v49 = *(a1 + 16);
          v50 = *(a1 + 24);
          sub_1000098F0(a1, a2);
          sub_1000098F0(v19, v18);
          v45 = __DataStorage._bytes.getter();
          if (v45)
          {
            v51 = __DataStorage._offset.getter();
            if (__OFSUB__(v49, v51))
            {
              goto LABEL_99;
            }

            v45 += v49 - v51;
          }

          v26 = __OFSUB__(v50, v49);
          v47 = v50 - v49;
          if (v26)
          {
            goto LABEL_97;
          }

          v48 = __DataStorage._length.getter();
          v7 = v59;
          if (!v45)
          {
            goto LABEL_104;
          }

          goto LABEL_80;
      }
    }
  }

  return v6;
}

void sub_1000466FC()
{
  sub_100006A04();
  v24 = v1;
  v25 = v2;
  v23 = v3;
  v5 = v4;
  v21 = v6;
  v8 = v7(0);
  sub_10000518C();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v26 = v0 + 64;
  v22 = v0;
  v16 = *(v0 + 32);
  sub_10000884C();
  v18 = ~v17;
  for (i = v5 & ~v17; ((1 << i) & *(v26 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v18)
  {
    (*(v10 + 16))(v15, *(v22 + 48) + *(v10 + 72) * i, v8);
    sub_10004AFA8(v23, v24);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v15, v8);
    if (v20)
    {
      break;
    }
  }

  sub_1000069EC();
}

void sub_100046878()
{
  sub_100006A04();
  v1 = *(v0 + 32);
  sub_10000884C();
  v3 = ~v2;
  for (i = v4 & ~v2; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v6 = *(*(v0 + 48) + 8 * i);
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {

      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      break;
    }
  }

  sub_1000069EC();
}

void sub_10004695C()
{
  sub_100006A04();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v0 + 64;
  v7 = *(v0 + 32);
  sub_10000884C();
  v9 = ~v8;
  for (i = v10 & ~v8; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_100003D44(0, v4, v2);
    v12 = *(*(v5 + 48) + 8 * i);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      break;
    }
  }

  sub_1000069EC();
}

unint64_t sub_100046A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_100046B24(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10004AFF0(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10004B04C(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

void sub_100046BE8(uint64_t a1, uint64_t a2)
{
  sub_100003A78(a1);
  sub_10002EB80(&qword_1001990F0, &unk_10014E050);
  sub_1000183B0();
  static _DictionaryStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (!v7)
  {
LABEL_32:

    *v2 = a2;
    return;
  }

  v8 = 0;
  v10 = (v3 + 64);
  v9 = *(v3 + 64);
  v11 = *(v3 + 32);
  sub_1000029E8();
  sub_100002678();
  if (!v5)
  {
LABEL_4:
    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v4)
      {
        break;
      }

      ++v13;
      if (v10[v8])
      {
        sub_10000372C();
        v5 = v15 & v14;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      sub_100004E14();
      if (v30 != v31)
      {
        sub_10000884C();
        *v10 = v32;
      }

      else
      {
        v33 = sub_10001109C();
        sub_100047518(v33, v34, v3 + 64);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_32;
  }

  while (1)
  {
    sub_100012A14();
LABEL_9:
    v16 = v12 | (v8 << 6);
    v17 = *(*(v3 + 56) + 8 * v16);
    v35 = *(*(v3 + 48) + 16 * v16);
    v18 = *(*(v3 + 48) + 16 * v16 + 8);
    if ((a2 & 1) == 0)
    {
      v19 = v17;
    }

    v20 = *(a2 + 40);
    Hasher.init(_seed:)();
    if (v18)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v21 = Hasher._finalize()();
    sub_100005174(v21);
    v23 = *(a2 + 64 + 8 * v22);
    sub_100024830();
    if (v24)
    {
      break;
    }

    sub_1000066F0();
LABEL_24:
    sub_100007E38();
    sub_100013C38();
    *(v29 + 16 * v28) = v35;
    *(*(a2 + 56) + 8 * v28) = v17;
    sub_1000117A8();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    sub_1000119BC(v25);
    if (!v24)
    {
      sub_1000070E0();
      goto LABEL_24;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_100046E48(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_100003A78(a1);
  sub_10002EB80(v6, v7);
  sub_1000183B0();
  static _DictionaryStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (!v8)
  {
LABEL_29:

LABEL_30:
    *v4 = a2;
    return;
  }

  v46 = v3;
  v9 = 0;
  v11 = (v3 + 64);
  v10 = *(v3 + 64);
  v12 = *(v3 + 32);
  sub_1000029E8();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v18 = a2 + 64;
  if ((v14 & v13) == 0)
  {
LABEL_4:
    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v17)
      {
        break;
      }

      ++v20;
      if (v11[v9])
      {
        sub_10000372C();
        v15 = v22 & v21;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v2;
      goto LABEL_30;
    }

    sub_100004E14();
    v4 = v2;
    if (v41 != v42)
    {
      sub_10000884C();
      *v11 = v43;
    }

    else
    {
      v44 = sub_10001109C();
      sub_100047518(v44, v45, v11);
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_9:
    v23 = v19 | (v9 << 6);
    v24 = (*(v3 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v3 + 56) + 8 * v23);
    if ((a2 & 1) == 0)
    {
      v28 = v24[1];

      v29 = v27;
    }

    v30 = *(a2 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v31 = Hasher._finalize()();
    sub_100005174(v31);
    v33 = *(v18 + 8 * v32);
    sub_100024830();
    if (v34)
    {
      break;
    }

    sub_1000066F0();
LABEL_21:
    sub_100007E38();
    sub_1000188AC();
    v40 = (v39 + 16 * v38);
    *v40 = v25;
    v40[1] = v26;
    *(*(a2 + 56) + 8 * v38) = v27;
    sub_1000117A8();
    v3 = v46;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v34)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    if (*(v18 + 8 * v35) != -1)
    {
      sub_1000070E0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_10004704C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10002EB80(a3, a4);
  v47 = a2;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v7 + 16))
  {
LABEL_31:

LABEL_32:
    *v5 = v9;
    return;
  }

  v45 = v5;
  v46 = v7;
  v10 = 0;
  v12 = (v7 + 64);
  v11 = *(v7 + 64);
  v13 = *(v7 + 32);
  sub_1000029E8();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v19 = v9 + 8;
  if ((v15 & v14) == 0)
  {
LABEL_6:
    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v10 >= v18)
      {
        break;
      }

      ++v21;
      if (v12[v10])
      {
        sub_10000372C();
        v16 = v23 & v22;
        goto LABEL_11;
      }
    }

    if ((v47 & 1) == 0)
    {

      v5 = v45;
      goto LABEL_32;
    }

    v5 = v45;
    if (1 << *(v7 + 32) >= 64)
    {
      v43 = sub_10001109C();
      sub_100047518(v43, v44, v12);
    }

    else
    {
      sub_10000884C();
      *v12 = v42;
    }

    *(v7 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v24 = v20 | (v10 << 6);
    v25 = (*(v7 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v7 + 56) + 8 * v24);
    if ((v47 & 1) == 0)
    {
      v29 = v25[1];
    }

    v30 = v9[5];
    Hasher.init(_seed:)();
    String.hash(into:)();
    v31 = Hasher._finalize()();
    sub_100005174(v31);
    v33 = v19[v32];
    sub_100024830();
    if (v34)
    {
      break;
    }

    sub_1000066F0();
LABEL_23:
    sub_100007E38();
    *(v19 + v38) |= v39;
    v41 = (v9[6] + 16 * v40);
    *v41 = v26;
    v41[1] = v27;
    *(v9[7] + 8 * v40) = v28;
    sub_1000117A8();
    v7 = v46;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v34)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    if (v19[v35] != -1)
    {
      sub_1000070E0();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_100047270()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LNBundleRecord();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (*(*v1 + 24) > v5)
  {
    v10 = *(*v1 + 24);
  }

  sub_10002EB80(&qword_1001992E8, &unk_100151000);
  sub_1000183B0();
  v51 = v3;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v1 = v11;
    sub_1000069EC();
    return;
  }

  v48 = v1;
  v49 = v9;
  v12 = 0;
  v14 = (v9 + 64);
  v13 = *(v9 + 64);
  v15 = *(v9 + 32);
  sub_1000029E8();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v21 = v11 + 64;
  if ((v17 & v16) == 0)
  {
LABEL_6:
    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v20)
      {
        break;
      }

      ++v23;
      if (v14[v12])
      {
        sub_10000372C();
        v18 = v25 & v24;
        goto LABEL_11;
      }
    }

    if ((v51 & 1) == 0)
    {

      v1 = v48;
      goto LABEL_33;
    }

    sub_100004E14();
    v1 = v48;
    if (v43 != v44)
    {
      sub_10000884C();
      *v14 = v45;
    }

    else
    {
      v46 = sub_10001109C();
      sub_100047518(v46, v47, v14);
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    sub_100006A34();
LABEL_11:
    v26 = v22 | (v12 << 6);
    v27 = *(v9 + 56);
    v28 = (*(v9 + 48) + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v50 + 72);
    v32 = v27 + v31 * v26;
    if (v51)
    {
      sub_10004AEF0(v32, v52);
    }

    else
    {
      sub_10004AE8C(v32, v52);
    }

    v33 = *(v11 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v34 = *(v21 + 8 * ((Hasher._finalize()() & ~(-1 << *(v11 + 32))) >> 6));
    sub_100024830();
    if (v35)
    {
      break;
    }

    sub_1000066F0();
LABEL_24:
    sub_100007E38();
    *(v21 + v39) |= v40;
    v42 = (*(v11 + 48) + 16 * v41);
    *v42 = v29;
    v42[1] = v30;
    sub_10004AEF0(v52, *(v11 + 56) + v31 * v41);
    ++*(v11 + 16);
    v9 = v49;
    if (!v18)
    {
      goto LABEL_6;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v35)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    if (*(v21 + 8 * v36) != -1)
    {
      sub_1000070E0();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_100047518(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10014DDE0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10004757C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  sub_10004AAE8(a1, a2, a3, v49);
  v6 = v49[1];
  v7 = v49[3];
  v8 = v49[4];
  v41 = v49[5];
  v43 = v49[0];
  v9 = (v49[2] + 64) >> 6;

  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v44 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v43 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v43 + 56) + 8 * v12);
      v48[0] = *v13;
      v48[1] = v14;
      v48[2] = v15;

      v41(&v45, v48);

      v17 = v45;
      v16 = v46;
      v18 = v47;
      v19 = *v50;
      v21 = sub_10000C20C(v45, v46, &String.hash(into:), sub_10000C2CC);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (*(v19 + 24) >= v24)
      {
        if ((v44 & 1) == 0)
        {
          sub_10002EB80(&qword_100199298, &qword_10014DF80);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v26 = v50;
        sub_10004704C(v24, v44 & 1, &qword_1001992A0, &qword_10014DF88);
        v27 = *v26;
        v28 = sub_10000C20C(v17, v16, &String.hash(into:), sub_10000C2CC);
        if ((v25 & 1) != (v29 & 1))
        {
          goto LABEL_25;
        }

        v21 = v28;
      }

      v8 &= v8 - 1;
      v30 = *v50;
      if (v25)
      {
        v31 = *(v30[7] + 8 * v21);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48[0] = v31;
        sub_1000478E4(v18, sub_10004AACC, 0, isUniquelyReferenced_nonNull_native, v48);
        if (v42)
        {
          goto LABEL_26;
        }

        v33 = v30[7];
        v34 = *(v33 + 8 * v21);
        *(v33 + 8 * v21) = v48[0];
      }

      else
      {
        v30[(v21 >> 6) + 8] |= 1 << v21;
        v35 = (v30[6] + 16 * v21);
        *v35 = v17;
        v35[1] = v16;
        *(v30[7] + 8 * v21) = v18;
        v36 = v30[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_24;
        }

        v30[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100014464();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_1000478E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_10004AAE8(a1, a2, a3, v45);
  v6 = v45[1];
  v7 = v45[3];
  v8 = v45[4];
  v37 = v45[5];
  v39 = v45[0];
  v9 = (v45[2] + 64) >> 6;

  v36 = v6;
  if (v8)
  {
    while (1)
    {
      v46 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v39 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v39 + 56) + 8 * v12);
      v44[0] = *v13;
      v44[1] = v14;
      v44[2] = v15;

      v37(&v41, v44);

      v16 = v41;
      v17 = v42;
      v40 = v43;
      v18 = *a5;
      v20 = sub_10000C20C(v41, v42, &String.hash(into:), sub_10000C2CC);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      if (v18[3] >= v23)
      {
        if ((v46 & 1) == 0)
        {
          sub_10002EB80(&qword_1001992A8, &qword_10014DF90);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_10004704C(v23, v46 & 1, &unk_1001992B0, &qword_10014DF98);
        v25 = *a5;
        v26 = sub_10000C20C(v16, v17, &String.hash(into:), sub_10000C2CC);
        if ((v24 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v20 = v26;
      }

      v8 &= v8 - 1;
      v28 = *a5;
      if (v24)
      {
        v44[0] = *(v28[7] + 8 * v20);

        sub_10006E388(v40);

        v29 = v28[7];
        v30 = *(v29 + 8 * v20);
        *(v29 + 8 * v20) = v44[0];
      }

      else
      {
        v28[(v20 >> 6) + 8] |= 1 << v20;
        v31 = (v28[6] + 16 * v20);
        *v31 = v16;
        v31[1] = v17;
        *(v28[7] + 8 * v20) = v40;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v28[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v6 = v36;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100014464();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v46 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100047C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_10004757C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

void sub_100047CAC()
{
  sub_100006A04();
  v2 = v1;
  __dst = v3;
  v25 = v0;
  v4 = *v0;
  v5 = *(*v0 + 40);
  Hasher.init(_seed:)();
  v6 = *v2;
  v7 = v2[1];
  String.hash(into:)();
  v8 = v2[2];
  v9 = v2[3];
  String.hash(into:)();
  v35 = v2[4];
  NSObject.hash(into:)();
  v33 = v2[6];
  v34 = v2[5];
  String.hash(into:)();
  v31 = v2[8];
  v32 = v2[7];
  String.hash(into:)();
  v29 = v2[10];
  v30 = v2[9];
  String.hash(into:)();
  v28 = v2[11];
  NSObject.hash(into:)();
  v26 = v2;
  sub_10004A69C(v38, v2[12]);
  Hasher._finalize()();
  v10 = *(v4 + 32);
  sub_10000884C();
  v13 = v12 & ~v11;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_34:
    v22 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = *v25;
    sub_100037C7C(v26, v38);
    sub_100049124(v26, v13, isUniquelyReferenced_nonNull_native);
    *v25 = v37[0];
    memcpy(__dst, v26, 0x68uLL);
    goto LABEL_35;
  }

  v14 = ~v11;
  while (1)
  {
    memcpy(v38, (*(v4 + 48) + 104 * v13), 0x68uLL);
    v15 = v38[0] == v6 && v38[1] == v7;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }

    v16 = v38[2] == v8 && v38[3] == v9;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_100003D44(0, &qword_100199300, NSObject_ptr);
    sub_100037C7C(v38, v37);
    if ((static NSObject.== infix(_:_:)() & 1) == 0 || (v38[5] == v34 ? (v17 = v38[6] == v33) : (v17 = 0), !v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v38[7] == v32 ? (v18 = v38[8] == v31) : (v18 = 0), !v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v38[9] == v30 ? (v19 = v38[10] == v29) : (v19 = 0), !v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0))))
    {
      sub_10004AF54(v38);
      goto LABEL_33;
    }

    sub_1000453A0();
    v21 = v20;
    sub_10004AF54(v38);
    if (v21)
    {
      break;
    }

LABEL_33:
    v13 = (v13 + 1) & v14;
    if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  sub_10004AF54(v26);
  v24 = (*(v4 + 48) + 104 * v13);
  memcpy(v37, v24, sizeof(v37));
  memcpy(__dst, v24, 0x68uLL);
  sub_100037C7C(v37, v36);
LABEL_35:
  sub_1000069EC();
}

void sub_100047FD8()
{
  sub_100006A04();
  v2 = v1;
  v31 = v3;
  v4 = type metadata accessor for UUID();
  sub_10000518C();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v0;
  v12 = *v0;
  v13 = *(*v0 + 40);
  sub_100011598();
  sub_10004AFA8(v14, v15);
  v36 = v2;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v33 = v12;
  v34 = v12 + 56;
  v16 = *(v12 + 32);
  sub_10000884C();
  v19 = ~v18;
  v35 = v6 + 16;
  v32 = v6 + 8;
  while (1)
  {
    v20 = v17 & v19;
    if (((1 << (v17 & v19)) & *(v34 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v26 = v30;
      v27 = *v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v36;
      (*(v6 + 16))(v11, v36, v4);
      v37 = *v26;
      sub_10004958C(v11, v20, isUniquelyReferenced_nonNull_native);
      *v26 = v37;
      (*(v6 + 32))(v31, v29, v4);
      goto LABEL_7;
    }

    v21 = *(v6 + 72) * v20;
    v22 = *(v6 + 16);
    v22(v11, *(v33 + 48) + v21, v4);
    sub_100011598();
    sub_10004AFA8(&qword_1001992E0, v23);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *(v6 + 8);
    v25(v11, v4);
    if (v24)
    {
      break;
    }

    v17 = v20 + 1;
  }

  v25(v36, v4);
  v22(v31, *(v33 + 48) + v21, v4);
LABEL_7:
  sub_1000069EC();
}

uint64_t sub_100048288(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_100003D44(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v33;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_100048504(v15, result + 1, a5, a6, a3, a4);
        if (*(v26 + 24) <= *(v26 + 16))
        {
          sub_100048F24();
        }

        v27 = v16;
        sub_1000490A4(v27, v26);

        *v11 = v26;
        *a1 = v27;
        return 1;
      }
    }
  }

  else
  {
    sub_100003D44(0, a3, a4);
    NSObject._rawHashValue(seed:)(*(v14 + 40));
    v19 = *(v14 + 32);
    sub_10000884C();
    v22 = ~v21;
    while (1)
    {
      v23 = v20 & v22;
      if (((*(v14 + 56 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
      {
        v28 = *v11;
        swift_isUniquelyReferenced_nonNull_native();
        v34 = *v11;
        v29 = a2;
        sub_100049434();
        *v11 = v34;
        *a1 = v29;
        return 1;
      }

      v24 = *(*(v14 + 48) + 8 * v23);
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {
        break;
      }

      v20 = v23 + 1;
    }

    v30 = *(*(v14 + 48) + 8 * v23);
    *a1 = v30;
    v31 = v30;
    return 0;
  }

  return result;
}

Swift::Int sub_100048504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_10002EB80(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v20 = v8;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v8;
      }

      sub_100003D44(0, a5, a6);
      swift_dynamicCast();
      if (*(v8 + 24) <= *(v8 + 16))
      {
        sub_100048F24();
      }

      v8 = v20;
      result = NSObject._rawHashValue(seed:)(*(v20 + 40));
      v10 = v20 + 56;
      v11 = -1 << *(v20 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v20 + 48) + 8 * v14) = v19;
      ++*(v20 + 16);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_1000486E4()
{
  sub_100004B54();
  sub_100003A78(v5);
  sub_10002EB80(&unk_10019BB30, &unk_10014DFA0);
  sub_1000183B0();
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (!v6)
  {
LABEL_25:

    *v0 = v2;
    sub_10000D320();
    return;
  }

  v7 = 0;
  v9 = (v1 + 56);
  v8 = *(v1 + 56);
  v10 = *(v1 + 32);
  sub_1000029E8();
  sub_100002678();
  if (!v4)
  {
LABEL_4:
    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v7 >= v3)
      {
        break;
      }

      ++v12;
      if (v9[v7])
      {
        sub_10000372C();
        v4 = v14 & v13;
        goto LABEL_9;
      }
    }

    sub_100004E14();
    if (v29 != v30)
    {
      sub_10000884C();
      *v9 = v31;
    }

    else
    {
      v32 = sub_10001109C();
      sub_100047518(v32, v33, v1 + 56);
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_100012A14();
LABEL_9:
    v15 = (*(v1 + 48) + 16 * (v11 | (v7 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v2 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v19 = Hasher._finalize()();
    sub_100005174(v19);
    v21 = *(v2 + 56 + 8 * v20);
    sub_100024830();
    if (v22)
    {
      break;
    }

    sub_1000066F0();
LABEL_19:
    sub_100007E38();
    sub_100013C38();
    v28 = (v27 + 16 * v26);
    *v28 = v16;
    v28[1] = v17;
    sub_1000117A8();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    sub_1000119BC(v23);
    if (!v22)
    {
      sub_1000070E0();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_100048864(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002EB80(&qword_100199308, &unk_10014E010);
  result = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v6 = 0;
    v41 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v39 = v1;
    v40 = (v7 + 63) >> 6;
    v42 = result + 56;
    v43 = result;
    v44 = v3;
    if (v9)
    {
      do
      {
        v10 = __clz(__rbit64(v9));
        v53 = (v9 - 1) & v9;
LABEL_14:
        v13 = (*(v3 + 48) + 104 * (v10 | (v6 << 6)));
        v15 = *v13;
        v14 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v18 = v13[4];
        v19 = v13[5];
        v20 = v13[6];
        v56 = v13[8];
        v54 = v13[7];
        v55 = v13[9];
        v21 = v13[10];
        v45 = v13[11];
        v22 = v13[12];
        v23 = *(result + 40);
        Hasher.init(_seed:)();
        v51 = v14;
        v52 = v15;
        String.hash(into:)();
        v49 = v17;
        v50 = v16;
        String.hash(into:)();
        v48 = v18;
        NSObject.hash(into:)();
        v46 = v20;
        v47 = v19;
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        NSObject.hash(into:)();
        Hasher._combine(_:)(*(v22 + 16));
        v24 = v22;
        v25 = *(v22 + 16);
        if (v25)
        {
          v26 = (v22 + 64);
          do
          {
            v28 = *(v26 - 4);
            v27 = *(v26 - 3);
            v29 = *(v26 - 2);
            v30 = *(v26 - 1);
            v31 = *v26;
            v26 += 5;

            v32 = v31;
            String.hash(into:)();
            String.hash(into:)();
            NSObject.hash(into:)();

            --v25;
          }

          while (v25);
        }

        Hasher._finalize()();
        v33 = -1 << *(v43 + 32);
        v34 = _HashTable.nextHole(atOrAfter:)();
        *(v42 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v35 = (*(v43 + 48) + 104 * v34);
        result = v43;
        *v35 = v52;
        v35[1] = v51;
        v35[2] = v50;
        v35[3] = v49;
        v35[4] = v48;
        v35[5] = v47;
        v35[6] = v46;
        v35[7] = v54;
        v35[8] = v56;
        v35[9] = v55;
        v35[10] = v21;
        v35[11] = v45;
        v35[12] = v24;
        ++*(v43 + 16);
        v3 = v44;
        v9 = v53;
      }

      while (v53);
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v40)
      {
        break;
      }

      v12 = v41[v6];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v53 = (v12 - 1) & v12;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      v37 = result;
      sub_100047518(0, (v36 + 63) >> 6, v41);
      result = v37;
    }

    else
    {
      *v41 = -1 << v36;
    }

    *(v3 + 16) = 0;
    v2 = v39;
  }

  v38 = result;

  *v2 = v38;
  return result;
}

uint64_t sub_100048BCC(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10002EB80(&unk_100199328, &qword_10014E030);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100047518(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10004AFA8(&qword_100199BD0, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100048F24()
{
  sub_100006A04();
  v3 = v0;
  sub_100003A78(v4);
  sub_10002EB80(v5, v6);
  sub_1000183B0();
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (!v7)
  {
LABEL_28:

    *v3 = v2;
    sub_1000069EC();
    return;
  }

  v8 = 0;
  v9 = (v1 + 56);
  v10 = 1 << *(v1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v1 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = v2 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (v9[v8])
      {
        sub_10000372C();
        v12 = v18 & v17;
        goto LABEL_12;
      }
    }

    sub_100004E14();
    if (v27 != v28)
    {
      sub_10000884C();
      *v9 = v29;
    }

    else
    {
      v30 = sub_10001109C();
      sub_100047518(v30, v31, v1 + 56);
    }

    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    sub_100006A34();
LABEL_12:
    v19 = *(*(v1 + 48) + 8 * (v15 | (v8 << 6)));
    v20 = NSObject._rawHashValue(seed:)(*(v2 + 40)) & ~(-1 << *(v2 + 32));
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    sub_1000066F0();
LABEL_22:
    sub_100007E38();
    sub_1000188AC();
    *(v26 + 8 * v25) = v19;
    sub_1000117A8();
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v24)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v14 + 8 * v21) != -1)
    {
      sub_1000070E0();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

unint64_t sub_1000490A4(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = *(a2 + 32);
  sub_10000884C();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_100049124(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100048864(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_100049908();
        goto LABEL_41;
      }

      sub_100049F20(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    Hasher.init(_seed:)();
    v10 = *a1;
    v11 = a1[1];
    String.hash(into:)();
    v12 = a1[2];
    v13 = a1[3];
    String.hash(into:)();
    v38 = a1[4];
    NSObject.hash(into:)();
    v36 = a1[6];
    v37 = a1[5];
    String.hash(into:)();
    v34 = a1[8];
    v35 = a1[7];
    String.hash(into:)();
    v32 = a1[10];
    v33 = a1[9];
    String.hash(into:)();
    v29 = a1[11];
    NSObject.hash(into:)();
    sub_10004A69C(__dst, a1[12]);
    v14 = Hasher._finalize()();
    v15 = -1 << *(v8 + 32);
    a2 = v14 & ~v15;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      do
      {
        memcpy(__dst, (*(v8 + 48) + 104 * a2), 0x68uLL);
        v17 = __dst[0] == v10 && __dst[1] == v11;
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v18 = __dst[2] == v12 && __dst[3] == v13;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            sub_100003D44(0, &qword_100199300, NSObject_ptr);
            sub_100037C7C(__dst, v39);
            if (static NSObject.== infix(_:_:)() & 1) != 0 && (__dst[5] == v37 ? (v19 = __dst[6] == v36) : (v19 = 0), (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (__dst[7] == v35 ? (v20 = __dst[8] == v34) : (v20 = 0), (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (__dst[9] == v33 ? (v21 = __dst[10] == v32) : (v21 = 0), (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static NSObject.== infix(_:_:)()))))
            {
              sub_1000453A0();
              v23 = v22;
              sub_10004AF54(__dst);
              if (v23)
              {
                goto LABEL_44;
              }
            }

            else
            {
              sub_10004AF54(__dst);
            }
          }
        }

        a2 = (a2 + 1) & v16;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_41:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v24 + 48) + 104 * a2), a1, 0x68uLL);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_44:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void sub_100049434()
{
  sub_10004B2C8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(*v0 + 16);
  v13 = *(*v0 + 24);
  if (v13 <= v12 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_100048F24();
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_10004A508();
LABEL_8:
      v14 = *v0;
      NSObject._rawHashValue(seed:)(*(*v0 + 40));
      v15 = *(v14 + 32);
      sub_10000884C();
      v18 = ~v17;
      while (1)
      {
        v9 = v16 & v18;
        if (((*(v14 + 56 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v18)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_100003D44(0, v7, v5);
        v19 = *(*(v14 + 48) + 8 * v9);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          goto LABEL_15;
        }

        v16 = v9 + 1;
      }
    }

    sub_100049CD8(v2, v3);
  }

LABEL_12:
  v21 = *v0;
  *(*v0 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v21 + 48) + 8 * v9) = v11;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
    sub_10001CE84();
  }
}

uint64_t sub_10004958C(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100048BCC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10004A1F0(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10004AFA8(&qword_100199BD0, &type metadata accessor for UUID);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10004AFA8(&qword_1001992E0, &type metadata accessor for UUID);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100049AA4();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_100049818()
{
  v5 = v0;
  sub_10002EB80(&unk_10019BB30, &unk_10014DFA0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  if (*(v6 + 16))
  {
    v8 = sub_1000074D8();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    sub_100011FD8();
    while (v4)
    {
      sub_100006A34();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        sub_10000372C();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void *sub_100049908()
{
  v1 = v0;
  sub_10002EB80(&qword_100199308, &unk_10014E010);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_100037C7C(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 104 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x68uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x68uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100049AA4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002EB80(&unk_100199328, &qword_10014E030);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void sub_100049CD8(uint64_t *a1, uint64_t *a2)
{
  v7 = v2;
  sub_10002EB80(a1, a2);
  v8 = *v2;
  v9 = static _SetStorage.copy(original:)();
  if (*(v8 + 16))
  {
    v10 = sub_1000074D8();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      memmove(v10, v3, 8 * v11);
    }

    sub_100011FD8();
    for (; v6; v21 = v20)
    {
      sub_100006A34();
LABEL_15:
      v19 = v15 | (v4 << 6);
      v20 = *(*(v8 + 48) + 8 * v19);
      *(*(v9 + 48) + 8 * v19) = v20;
    }

    v16 = v4;
    while (1)
    {
      v4 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v3 + v4))
      {
        sub_10000372C();
        v6 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v7 = v9;
  }
}

void sub_100049DB0()
{
  sub_100004B54();
  sub_100003A78(v5);
  sub_10002EB80(&unk_10019BB30, &unk_10014DFA0);
  sub_1000183B0();
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (v6)
  {
    v7 = 0;
    v8 = *(v1 + 56);
    v9 = *(v1 + 32);
    sub_1000029E8();
    sub_100002678();
    if (v4)
    {
      while (1)
      {
        sub_100012A14();
LABEL_9:
        v14 = (*(v1 + 48) + 16 * (v10 | (v7 << 6)));
        v15 = *v14;
        v16 = v14[1];
        v17 = *(v2 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v18 = Hasher._finalize()();
        sub_100005174(v18);
        v20 = *(v2 + 56 + 8 * v19);
        sub_100024830();
        if (v21)
        {
          break;
        }

        sub_1000066F0();
LABEL_19:
        sub_100007E38();
        sub_100013C38();
        v27 = (v26 + 16 * v25);
        *v27 = v15;
        v27[1] = v16;
        sub_1000117A8();
        if (!v4)
        {
          goto LABEL_4;
        }
      }

      sub_100007AAC();
      while (1)
      {
        sub_100019CDC();
        if (v21)
        {
          if (v23)
          {
            break;
          }
        }

        if (v22 == v24)
        {
          v22 = 0;
        }

        sub_1000119BC(v22);
        if (!v21)
        {
          sub_1000070E0();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v11 = v7;
      while (1)
      {
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v7 >= v3)
        {
          goto LABEL_21;
        }

        ++v11;
        if (*(v1 + 56 + 8 * v7))
        {
          sub_10000372C();
          v4 = v13 & v12;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    *v0 = v2;
    sub_10000D320();
  }
}

uint64_t sub_100049F20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002EB80(&qword_100199308, &unk_10014E010);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v29 = result + 56;
    v30 = result;
    v31 = v3;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v32 = (v11 - 1) & v11;
LABEL_14:
        memcpy(__dst, (*(v3 + 48) + 104 * (v13 | (v7 << 6))), 0x68uLL);
        v16 = *(v6 + 40);
        Hasher.init(_seed:)();
        sub_100037C7C(__dst, v33);
        String.hash(into:)();
        String.hash(into:)();
        NSObject.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        NSObject.hash(into:)();
        v17 = __dst[12];
        Hasher._combine(_:)(*(__dst[12] + 16));
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = (v17 + 64);
          do
          {
            v20 = *(v19 - 4);
            v21 = *(v19 - 3);
            v22 = *(v19 - 2);
            v23 = *(v19 - 1);
            v24 = *v19;
            v19 += 5;

            v25 = v24;
            String.hash(into:)();
            String.hash(into:)();
            NSObject.hash(into:)();

            --v18;
          }

          while (v18);
        }

        Hasher._finalize()();
        v6 = v30;
        v26 = -1 << *(v30 + 32);
        v27 = _HashTable.nextHole(atOrAfter:)();
        *(v29 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        result = memcpy((*(v30 + 48) + 104 * v27), __dst, 0x68uLL);
        ++*(v30 + 16);
        v3 = v31;
        v11 = v32;
      }

      while (v32);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_21;
      }

      v15 = *(v8 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v32 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10004A1F0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10002EB80(&unk_100199328, &qword_10014E030);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10004AFA8(&qword_100199BD0, &type metadata accessor for UUID);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

void sub_10004A508()
{
  sub_10004B2C8();
  v3 = v0;
  sub_100003A78(v4);
  sub_10002EB80(v5, v6);
  sub_1000183B0();
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (v7)
  {
    v28 = v0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v2 + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v18 = *(v2 + 40);
        v19 = *(*(v1 + 48) + 8 * (v14 | (v8 << 6)));
        v20 = NSObject._rawHashValue(seed:)(v18) & ~(-1 << *(v2 + 32));
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        sub_1000066F0();
LABEL_22:
        sub_100007E38();
        *(v13 + v25) |= v26;
        *(*(v2 + 48) + 8 * v27) = v19;
        sub_1000117A8();
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      sub_100007AAC();
      while (1)
      {
        sub_100019CDC();
        if (v24)
        {
          if (v22)
          {
            break;
          }
        }

        if (v21 == v23)
        {
          v21 = 0;
        }

        if (*(v13 + 8 * v21) != -1)
        {
          sub_1000070E0();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          v3 = v28;
          goto LABEL_26;
        }

        ++v15;
        if (*(v1 + 56 + 8 * v8))
        {
          sub_10000372C();
          v11 = v17 & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v2;
    sub_10001CE84();
  }
}

void sub_10004A69C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v4 += 5;

      v10 = v9;
      String.hash(into:)();
      String.hash(into:)();
      NSObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10004A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, v19);
  if (qword_1001980C0 != -1)
  {
    swift_once();
  }

  sub_10004A8A8(a1, a2, a3, a4, v17, qword_100199110, a7, a8);
  return (*(v14 + 8))(v17, a7);
}

uint64_t sub_10004A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[3] = a7;
  v23[4] = a8;
  v15 = sub_100013234(v23);
  (*(*(a7 - 8) + 16))(v15, a5, a7);
  v16 = *(a6 + 32);
  sub_100013334(v23, v22);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  sub_10001A798(v22, (v17 + 7));
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10004AA90;
  *(v18 + 24) = v17;
  v21[4] = sub_10004AAA4;
  v21[5] = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1000445D0;
  v21[3] = &unk_10018C750;
  v19 = _Block_copy(v21);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if ((a4 & 1) == 0)
  {
    return sub_1000034F8(v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004AAA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10004AAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t sub_10004AB24@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t *, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(&v7, *a1, a1[1], a1[2]);
  v5 = v7;
  *a3 = result;
  a3[1] = v6;
  a3[2] = v5;
  return result;
}

const char *sub_10004AB70(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_1000446D4(a1, v2, v3);
}

uint64_t sub_10004AB9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004DC8(v4);
  *v5 = v6;
  v5[1] = sub_10000BFAC;
  v7 = sub_1000125EC();

  return sub_100044A10(v7, v8, v2, v3, v9);
}

uint64_t sub_10004AC4C()
{
  sub_1000070C8();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = sub_100004DC8(v7);
  *v8 = v9;
  v8[1] = sub_10000BEC4;

  return sub_100044C18(v4, v2, v6, v5);
}

uint64_t sub_10004ACF4()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v4[1] = sub_10000BEC4;
  v6 = sub_1000125EC();

  return sub_100044FD8(v6, v7, v2, v8, v9);
}

unint64_t sub_10004AE28()
{
  result = qword_1001992D0;
  if (!qword_1001992D0)
  {
    sub_10002EC70(&qword_1001992C8, &unk_10014DFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001992D0);
  }

  return result;
}

uint64_t sub_10004AE8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNBundleRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNBundleRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AFA8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10004B0A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004B0B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10004B0F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10004B14C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_10004B18C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004B1E8()
{
  result = qword_1001993F0;
  if (!qword_1001993F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001993F0);
  }

  return result;
}

unint64_t sub_10004B24C()
{
  result = qword_1001993F8;
  if (!qword_1001993F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001993F8);
  }

  return result;
}

uint64_t sub_10004B2E4(uint64_t a1, unint64_t a2)
{
  v21 = 46;
  v20[2] = &v21;

  v6 = sub_10004B8A4(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004BC6C, v20, a1, a2);
  if (v6[2] != 2)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = objc_allocWithZone(NSError);
    sub_100007E4C();
    swift_willThrow();
    return v3;
  }

  type metadata accessor for AppIntentDomains();
  result = static AppIntentDomains.load()();
  if (v2)
  {

    return v3;
  }

  if (v6[2])
  {
    v10 = v6[4];
    v9 = v6[5];
    v11 = v6[6];
    v12 = v6[7];

    v3 = static String._fromSubstring(_:)();

    if (v6[2] >= 2uLL)
    {
      v13 = v6[8];
      v14 = v6[9];
      v15 = v6[10];
      v16 = v6[11];

      static String._fromSubstring(_:)();

      dispatch thunk of AppIntentDomains.getSchemaID(from:domain:)();
      v18 = v17;

      if (!v18)
      {

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = objc_allocWithZone(NSError);
        sub_100007E4C();
        swift_willThrow();
      }

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v28 = a3;
  v26 = a2;
  v25 = a1;
  v30 = a5;
  v27 = *(a6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;

  Table.init(jsonEach:key:)();
  v33 = &type metadata for Table;
  v34 = &protocol witness table for Table;
  v31 = swift_allocObject();
  memcpy((v31 + 16), __src, 0xB0uLL);
  QueryType.join(_:_:on:)();
  sub_1000034F8(&v31);
  sub_100002A04();
  static Expression.jsonExtract(key:source:)();
  v31 = v25;
  v32 = v26;
  v13 = == infix<A>(_:_:)();
  v15 = v14;
  v17 = v16;

  QueryType.filter(_:)(v13, v15, v17, a6, a7);

  v18 = *(v27 + 8);
  v18(v9, a6);
  sub_100002A04();
  static Expression.jsonExtract(key:source:)();
  v31 = v28;
  v32 = v29;
  v19 = == infix<A>(_:_:)();
  v21 = v20;
  v23 = v22;

  QueryType.filter(_:)(v19, v21, v23, a6, a7);

  return (v18)(v12, a6);
}

uint64_t sub_10004B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_10004B8A4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v6 = String.subscript.getter();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_10001C504();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_10001C504();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = _swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = String.subscript.getter();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = String.index(after:)();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = String.subscript.getter();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v49[2];
      sub_10001C504();
      v49 = v28;
    }

    v12 = v49[2];
    v11 = v12 + 1;
    if (v12 >= v49[3] >> 1)
    {
      sub_10001C504();
      v49 = v29;
    }

    v49[2] = v11;
    v26 = &v49[4 * v12];
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && v49[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_10001C504();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004BCF4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0x617461646174656DLL, 0xE800000000000000, v0, v1);
}

uint64_t sub_10004BDDC()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10004BE6C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154C20, v0, v1);
}

uint64_t sub_10004BEF4()
{
  v0 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v1 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  return ExpressionType.init(_:)(0x446465646F636E65, 0xEB00000000617461, v0, v1);
}

void sub_10004BF80()
{
  sub_100004DF0();
  v34 = v1;
  v3 = v2;
  v5 = v4;

  v6 = sub_10004C33C();
  v8 = v7;
  if (qword_1001980E0 != -1)
  {
    sub_100002A28();
  }

  sub_1000183C0(v40);
  sub_1000183C0(__src);
  sub_1000196B0(v40, v36);
  if (qword_1001980F8 != -1)
  {
    sub_100007AC0();
  }

  v9 = qword_1001994E0;
  v10 = *algn_1001994E8;
  v11 = qword_1001994F0;
  v38 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v39 = &protocol witness table for Expression<A>;
  v33 = v9;
  v37[0] = v9;
  v37[1] = v10;
  v37[2] = v11;

  SchemaType.select(_:_:)(v37, _swiftEmptyArrayStorage, &type metadata for Table, &protocol witness table for Table);
  memcpy(__dst, __src, sizeof(__dst));
  sub_10001970C(__dst);
  sub_1000034F8(v37);
  memcpy(v42, v36, 0xB0uLL);
  if (qword_1001980E8 != -1)
  {
    sub_100007E74();
  }

  sub_100003A8C(&qword_1001994B0);
  __src[0] = v5;
  __src[1] = v3;
  v12 = == infix<A>(_:_:)();
  v14 = v13;
  v16 = v15;
  if (qword_1001980F0 != -1)
  {
    sub_100006704();
  }

  sub_100003A8C(qword_1001994C8);
  __src[0] = v6;
  __src[1] = v8;
  v17 = == infix<A>(_:_:)();
  v19 = v18;
  v21 = v20;

  v22 = && infix(_:_:)(v12, v14, v16, v17, v19, v21);
  v24 = v23;
  v26 = v25;

  v38 = &type metadata for Table;
  v39 = &protocol witness table for Table;
  sub_100003A98();
  v37[0] = swift_allocObject();
  memcpy(__src, v42, sizeof(__src));
  QueryType.filter(_:)(v22, v24, v26, &type metadata for Table, &protocol witness table for Table, v27, v28, v29, v33, v34, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13]);

  sub_10001970C(v42);
  v30 = Connection.pluck(_:)(v37);
  sub_1000034F8(v37);
  if (!v0 && v30)
  {
    Row.get<A>(_:)();

    sub_10000373C();
    sub_10004C448();
    v31 = sub_10000373C();
    sub_100009B18(v31, v32);
  }

  sub_100004674();
}

uint64_t sub_10004C33C()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 componentsFromLocaleIdentifier:v1];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v0 localeIdentifierFromComponents:isa];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_10004C448()
{
  sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  sub_10002EB80(&qword_100199508, &unk_10014E210);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10014BC40;
  *(v1 + 32) = sub_100003D44(0, &qword_100199510, NSArray_ptr);
  *(v1 + 40) = sub_100003D44(0, &unk_10019B290, LNAutoShortcut_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v0)
  {
    if (v3[3])
    {
      sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
      if (swift_dynamicCast())
      {
        return v3[5];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100003E9C(v3, &qword_1001992F0, &qword_10014E000);
      return 0;
    }
  }

  return result;
}

void sub_10004C5A8()
{
  sub_100004DF0();
  v130 = v1;

  v118 = sub_10004C33C();
  v124 = v2;
  if (qword_1001983E0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019E430, sizeof(__dst));
  if (qword_1001980E0 != -1)
  {
    sub_100002A28();
  }

  memcpy(__src, &unk_100199400, sizeof(__src));
  v3 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v4 = sub_100013F04(&qword_100199520, &qword_100199518, &unk_10014ED10);
  ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154C20, v3, v4);
  memcpy(v181, __src, sizeof(v181));
  sub_10002EB80(&unk_100199100, &qword_10014E230);
  v5 = sub_10000373C();
  QueryType.namespace<A>(_:)(v5, v6, v180[2], &type metadata for Table, v7, &protocol witness table for Table, v8, v9, v84, v88, v93, v98, v102, v107, isUnique, v118, v124, v130, v0, v141, v146, v151, v156, v160, v164, v168, v174, v175, v176, v177, v178, v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], v179[9], v179[10], v179[11], v179[12], v179[13], v179[14]);
  v103 = v10;
  v108 = v11;
  isUniqued = v12;

  memcpy(v184, &unk_100199400, sizeof(v184));
  v13 = sub_10002EB80(&qword_100199528, &qword_10014E238);
  v14 = sub_100013F04(&qword_100199530, &qword_100199528, &qword_10014E238);
  ExpressionType.init(_:)(0x446465646F636E65, 0xEB00000000617461, v13, v14);
  memcpy(v181, v184, sizeof(v181));
  v15 = sub_10002EB80(&qword_100199538, &unk_10014E240);
  QueryType.namespace<A>(_:)(v180[0], v180[1], v180[2], &type metadata for Table, v15, &protocol witness table for Table, v16, v17, v85, v89, v94, v99, v103, v108, isUniqued, v119, v125, v131, v136, v142, v147, v152, v157, v161, v165, v169, v174, v175, v176, v177, v178, v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], v179[9], v179[10], v179[11], v179[12], v179[13], v179[14]);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  memcpy(v185, &unk_10019E430, sizeof(v185));
  if (qword_1001983E8 != -1)
  {
    swift_once();
  }

  memcpy(v181, v185, sizeof(v181));
  QueryType.namespace<A>(_:)(qword_10019E4E0, *algn_10019E4E8, qword_10019E4F0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v24, v25, v86, v90, v95, v100, v104, v109, isUniquea, v120, v126, v132, v137, v143, v148, v153, qword_10019E4F0, *algn_10019E4E8, qword_10019E4E0, v170, v174, v175, v176, v177, v178, v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], v179[9], v179[10], v179[11], v179[12], v179[13], v179[14]);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  memcpy(v181, __dst, sizeof(v181));
  v179[3] = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v179[4] = &protocol witness table for Expression<A>;
  v96 = v27;
  v179[0] = v27;
  v179[1] = v29;
  v179[2] = v31;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10014CE90;
  *(v32 + 56) = v13;
  *(v32 + 64) = &protocol witness table for Expression<A>;
  *(v32 + 32) = v19;
  *(v32 + 40) = v21;
  *(v32 + 48) = v23;

  v171 = v21;

  SchemaType.select(_:_:)(v179, v32, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v179);
  memcpy(v179, v180, sizeof(v179));
  sub_1000183C0(v186);
  v177 = &type metadata for Table;
  v178 = &protocol witness table for Table;
  sub_100003A98();
  v174 = swift_allocObject();
  sub_1000183C0((v174 + 16));
  sub_1000183C0(v187);
  sub_1000196B0(v186, v181);
  if (qword_1001980E8 != -1)
  {
    sub_100007E74();
  }

  v33 = qword_1001994B0;
  v34 = *algn_1001994B8;
  memcpy(v181, v187, sizeof(v181));
  QueryType.namespace<A>(_:)(qword_1001994B0, *algn_1001994B8, qword_1001994C0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v35, v36, v87, v91, v96, v29, v105, v110, isUniqueb, v121, v127, v133, v138, v144, v149, v19, v158, v162, v166, v171, v174, v175, v176, v177, v178, v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], v179[9], v179[10], v179[11], v179[12], v179[13], v179[14]);
  sub_1000115B0();
  v37 = == infix<A>(_:_:)();
  v39 = v38;
  v41 = v40;

  v181[0] = v122;
  v181[1] = v128;
  v42 = == infix<A>(_:_:)();
  sub_1000115B0();

  v43 = && infix(_:_:)(v37, v39, v41, v42, v33, v34);
  v45 = v44;
  v47 = v46;

  QueryType.join(_:_:on:)(2, &v174, v43, v45, v47, &type metadata for Table, &protocol witness table for Table, v48, &protocol witness table for String, v92, v97, v101, v106, v111, isUniquee, v122, v128, v134, v139, v145, v150, v154, v159, v163, v167, v172, v174, v175, v176, v177, v178, v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], v179[9], v179[10], v179[11], v179[12], v179[13], v179[14]);

  memcpy(v188, v179, sizeof(v188));
  sub_10001970C(v188);
  sub_1000034F8(&v174);
  memcpy(v189, v181, sizeof(v189));
  v181[3] = &type metadata for Table;
  v181[4] = &protocol witness table for Table;
  sub_100003A98();
  v181[0] = swift_allocObject();
  memcpy((v181[0] + 16), v189, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v181);
  if (v140)
  {

    sub_1000034F8(v181);
LABEL_34:
    sub_100004674();
    return;
  }

  v50 = v49;
  sub_1000034F8(v181);
  v51 = _swiftEmptyDictionarySingleton;
  v52 = v173;
  for (i = v50; ; v50 = i)
  {
    v53 = Statement.failableNext()();
    if (v54)
    {

      goto LABEL_34;
    }

    v55 = v53;
    if (!v53)
    {

      goto LABEL_34;
    }

    Row.get<A>(_:)();
    v56 = v181[0];
    v57 = v181[1];
    Row.get<A>(_:)(v155, v52, v50, v55, &type metadata for Data, &protocol witness table for Data, v181);

    v58 = v181[1];
    if (v181[1] >> 60 == 15)
    {

      goto LABEL_34;
    }

    v59 = v181[0];
    sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
    sub_10002EB80(&qword_100199508, &unk_10014E210);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10014BC40;
    *(v60 + 32) = sub_100003D44(0, &qword_100199510, NSArray_ptr);
    *(v60 + 40) = sub_100003D44(0, &unk_10019B290, LNAutoShortcut_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (!v181[3])
    {
      sub_100003E9C(v181, &qword_1001992F0, &qword_10014E000);
LABEL_22:
      v71 = sub_10000C2A0(v56, v57);
      v73 = v72;

      if (v73)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v181[0] = v51;
        v75 = v51[3];
        sub_10002EB80(&qword_100199540, &qword_10014E250);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v75);
        v51 = v181[0];
        v76 = *(*(v181[0] + 48) + 16 * v71 + 8);

        v77 = *(v51[7] + 8 * v71);

        sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
        _NativeDictionary._delete(at:)();
      }

LABEL_24:
      sub_10000D4DC(v59, v58);
      goto LABEL_25;
    }

    sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_22;
    }

    v129 = v180[0];
    isUniquec = swift_isUniquelyReferenced_nonNull_native();
    v181[0] = v51;
    v61 = sub_10000C2A0(v56, v57);
    v62 = v51[2];
    v123 = v63;
    v64 = (v63 & 1) == 0;
    v65 = v62 + v64;
    if (__OFADD__(v62, v64))
    {
      break;
    }

    v66 = v61;
    sub_10002EB80(&qword_100199540, &qword_10014E250);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquec, v65))
    {
      v67 = sub_10000C2A0(v56, v57);
      v69 = v123;
      if ((v123 & 1) != (v68 & 1))
      {
        goto LABEL_37;
      }

      v70 = v67;
    }

    else
    {
      v70 = v66;
      v69 = v123;
    }

    if (v69)
    {

      v51 = v181[0];
      v78 = *(v181[0] + 56);
      v79 = *(v78 + 8 * v70);
      *(v78 + 8 * v70) = v129;

      goto LABEL_24;
    }

    v51 = v181[0];
    *(v181[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
    v80 = (v51[6] + 16 * v70);
    *v80 = v56;
    v80[1] = v57;
    *(v51[7] + 8 * v70) = v129;
    sub_10000D4DC(v59, v58);
    v81 = v51[2];
    v82 = __OFADD__(v81, 1);
    v83 = v81 + 1;
    if (v82)
    {
      goto LABEL_36;
    }

    v51[2] = v83;
LABEL_25:
    v52 = v173;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004D158()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;

  v5 = sub_10004C33C();
  v7 = v6;
  if (qword_1001980E0 != -1)
  {
    sub_100002A28();
  }

  memcpy(v15, &unk_100199400, sizeof(v15));
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  if (qword_1001980E8 != -1)
  {
    sub_100007E74();
  }

  sub_100003A8C(&qword_1001994B0);
  v14[0] = v4;
  v14[1] = v2;
  <- infix<A>(_:_:)();
  if (qword_1001980F0 != -1)
  {
    sub_100006704();
  }

  sub_100003A8C(qword_1001994C8);
  v14[0] = v5;
  v14[1] = v7;
  <- infix<A>(_:_:)();

  if (qword_1001980F8 != -1)
  {
    sub_100007AC0();
  }

  v9 = qword_1001994E0;
  v10 = *algn_1001994E8;
  v11 = sub_10004D3DC();
  if (v0)
  {
    sub_10002EBC8(inited + 112);
    sub_10002EBC8(inited + 32);
    *(inited + 16) = 0;
    swift_setDeallocating();
    sub_1000B3030();
  }

  else
  {
    v14[0] = v11;
    v14[1] = v12;
    <- infix<A>(_:_:)();
    sub_100009B18(v14[0], v14[1]);
    memcpy(v14, v15, sizeof(v14));
    v13 = QueryType.insert(or:_:)(AppIntents_SQLite_OnConflict_replace, inited);
    sub_1000115B0();
    swift_setDeallocating();
    sub_1000B3030();
    v16.template._countAndFlagsBits = v13;
    v16.template._object = v9;
    v16.bindings._rawValue = v10;
    Connection.run(_:)(v16);
  }

  sub_100004674();
}

void *sub_10004D3DC()
{
  v0 = objc_opt_self();
  sub_100003D44(0, &unk_10019B290, LNAutoShortcut_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v6];

  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10004D4FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = )
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a2 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(a2 + 56) + 8 * v15);

    v20 = sub_1000978C4(0xFuLL, v17, v18);
    v32 = v21;
    v33 = v20;
    v31 = v22;
    v24 = v23;

    v25 = sub_10004DA14(v19, a3, a4, a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100068CD8(v25, v33, v32, v31, v24, isUniquelyReferenced_nonNull_native);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return a1;
    }

    v9 = *(v6 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004D698(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1000232F4(a3);
  v7 = 0;
  v36 = a3 & 0xC000000000000001;
  v37 = result;
  v35 = a3 & 0xFFFFFFFFFFFFFF8;
  v8 = _swiftEmptyArrayStorage;
  v33 = a3 + 32;
  while (1)
  {
    if (v7 == v37)
    {
      return v8;
    }

    if (v36)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v35 + 16))
      {
        goto LABEL_44;
      }

      result = *(v33 + 8 * v7);
    }

    v9 = result;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      break;
    }

    v42 = result;
    v12 = v4;
    a1(&v41, &v42);
    if (v4)
    {

      return v8;
    }

    v13 = v41;
    if (v41 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = result + v14;
    if (__OFADD__(result, v14))
    {
      goto LABEL_45;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v14;
    if (result)
    {
      if (v15)
      {
        goto LABEL_20;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v15)
      {
LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_21;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = *(v17 + 16);
LABEL_21:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v38 = v11;
    v19 = *(v17 + 16);
    v20 = (*(v17 + 24) >> 1) - v19;
    v21 = v17 + 8 * v19;
    if (v13 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (v23)
      {
        v24 = v23;
        result = _CocoaArrayWrapper.endIndex.getter();
        v32 = result;
        if (v20 < result)
        {
          goto LABEL_48;
        }

        if (v24 < 1)
        {
          goto LABEL_50;
        }

        v31 = v8;
        sub_100013EBC(&qword_100199660, &qword_100199658, &qword_10014E358);
        for (i = 0; i != v24; ++i)
        {
          sub_10002EB80(&qword_100199658, &qword_10014E358);
          v26 = sub_100037B20(v40, i, v13);
          v28 = *v27;
          v26(v40, 0);
          *(v21 + 32 + 8 * i) = v28;
        }

        v8 = v31;
        v4 = v12;
        v22 = v32;
        goto LABEL_32;
      }
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        if (v20 < v22)
        {
          goto LABEL_49;
        }

        sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
        swift_arrayInitWithCopy();
LABEL_32:

        if (v22 < v39)
        {
          goto LABEL_46;
        }

        if (v22 > 0)
        {
          v29 = *(v17 + 16);
          v10 = __OFADD__(v29, v22);
          v30 = v29 + v22;
          if (v10)
          {
            goto LABEL_47;
          }

          *(v17 + 16) = v30;
        }

        goto LABEL_37;
      }
    }

    if (v39 > 0)
    {
      goto LABEL_46;
    }

LABEL_37:
    v7 = v38;
  }

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
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_10004DA14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v72 = a3;
  v73 = a4;
  v6 = sub_10002EB80(&qword_100199650, &qword_10014E350);
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v75 = (&v69 - v12);
  __chkstk_darwin(v11);
  v74 = &v69 - v13;
  v14 = 0;
  v15 = *(a1 + 16);
  v78 = a1;
  v79 = v15;
  v16 = _swiftEmptyArrayStorage;
  v70 = a2;
  v71 = v10;
  while (1)
  {
    if (v79 == v14)
    {

      return v16;
    }

    v82 = v16;
    v17 = type metadata accessor for LNAppShortcutParameterRecord();
    v18 = v78 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80));
    v19 = *(*(v17 - 8) + 72);
    v83 = v14;
    v20 = v18 + v19 * v14;
    v21 = (v20 + *(v17 + 32));
    v23 = *v21;
    v22 = v21[1];
    v24 = *a2;
    v25 = *(*a2 + 16);
    v81 = v20;
    if (v25)
    {
      v26 = sub_10000C2A0(v23, v22);
      if (v27)
      {
        v28 = (*(v24 + 56) + 16 * v26);
        v30 = *v28;
        v29 = v28[1];

        goto LABEL_15;
      }
    }

    v80 = v17;
    v31 = *(v20 + *(v17 + 28));
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 localizedStringForLocaleIdentifier:v32];

    v34 = v23;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v22;
    v29 = v36;

    v37 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *a2;
    v39 = v84;
    v40 = v34;
    v41 = v34;
    v42 = v35;
    v43 = sub_10000C2A0(v41, v35);
    v45 = v39[2];
    v46 = (v44 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      break;
    }

    v48 = v43;
    v49 = v44;
    sub_10002EB80(&qword_100199670, &unk_10014E370);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v47))
    {
      v50 = sub_10000C2A0(v40, v42);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_23;
      }

      v48 = v50;
    }

    v52 = v84;
    if (v49)
    {
      v53 = (v84[7] + 16 * v48);
      v54 = v53[1];
      *v53 = v30;
      v53[1] = v29;
    }

    else
    {
      v84[(v48 >> 6) + 8] |= 1 << v48;
      v55 = (v52[6] + 16 * v48);
      *v55 = v40;
      v55[1] = v42;
      v56 = (v52[7] + 16 * v48);
      *v56 = v30;
      v56[1] = v29;
      v57 = v52[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_22;
      }

      v52[2] = v59;
    }

    a2 = v70;
    v10 = v71;
    *v70 = v52;
    v17 = v80;
LABEL_15:
    v60 = *(v77 + 48);
    v61 = v75;
    *v75 = v30;
    *(v61 + 8) = v29;
    sub_1000554A8(v81, v61 + v60);
    sub_1000075C4(v61 + v60, 0, 1, v17);
    v62 = v74;
    sub_10005644C(v61, v74, &qword_100199650, &qword_10014E350);
    sub_10005644C(v62, v10, &qword_100199650, &qword_10014E350);
    v16 = v82;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000704D0(0, v16[2] + 1, 1, v16);
      v16 = v66;
    }

    v63 = v83;
    v65 = v16[2];
    v64 = v16[3];
    if (v65 >= v64 >> 1)
    {
      sub_1000704D0(v64 > 1, v65 + 1, 1, v16);
      v16 = v67;
    }

    v16[2] = v65 + 1;
    sub_10005644C(v10, v16 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v65, &qword_100199650, &qword_10014E350);
    v14 = v63 + 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10004DEF0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10004DF44()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10004DFA4()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019D928);
  sub_10000347C(v0, qword_10019D928);
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10004E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(LSApplicationRecord);
  swift_bridgeObjectRetain_n();
  v10 = sub_1000906C0(a1, a2, 0);
  if (v4)
  {
  }

  else
  {
    v11 = v10;
    v21 = sub_100003D44(0, &qword_100198C08, LSApplicationRecord_ptr);
    v22 = &off_10018C118;
    *&v19 = v11;
    sub_10001A798(&v19, v23);
    sub_10004E760(v23, a3, a4, v12, v13, v14, v15, v16, v19, *(&v19 + 1), v20, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], a1, a2);
    v9 = v17;
    sub_10005660C(v23);
  }

  return v9;
}

uint64_t sub_10004E130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100013334(a1, v14);
  sub_10004E1B8(v14, v15);
  if (!v4)
  {
    sub_10004E760(v15, a2, a3, v7, v8, v9, v10, v11, v14[0], v14[1], v14[2], v14[3], v14[4], v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6]);
    v3 = v12;
    sub_10005660C(v15);
  }

  return v3;
}

uint64_t sub_10004E1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1000034B4(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_100013334(a1, v16);
    *(&v17 + 1) = v8;
    v18 = v9;
    *(a2 + 48) = v9;
    v10 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v17;
  }

  else
  {
    if (qword_100198100 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000347C(v11, qword_10019D928);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No bundle identifier found in app record", v14, 2u);
      sub_100004D8C();
    }

    sub_10005663C();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1000034F8(a1);
}

void *sub_10004E338(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v8 = *sub_1000034B4((v2 + 112), *(v2 + 136));
  result = sub_1000212D8(0, 0);
  if (!v3)
  {
    v10 = result;
    v16 = a1;
    v11 = 0;
    v18 = _swiftEmptyDictionarySingleton;
    v12 = result[2];
    for (i = (result + 6); ; i += 3)
    {
      if (v12 == v11)
      {

        return v18;
      }

      if (v11 >= v10[2])
      {
        break;
      }

      v15 = *(i - 1);
      v14 = *i;
      v17[0] = *(i - 2);
      v17[1] = v15;
      v17[2] = v14;

      v4 = v14;
      sub_10004E47C(&v18, v17, v5, v16, a2);

      ++v11;
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_10004E47C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = objc_allocWithZone(LSApplicationRecord);
  swift_bridgeObjectRetain_n();
  v13 = sub_1000906C0(v9, v10, 0);
  if (v5)
  {

    if (qword_100198100 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000347C(v20, qword_10019D928);

    v21 = v11;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_100004C50(v9, v10, v37);
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_100004C50(v25, v26, v37);

      *(v24 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch AppShortcut records for %s: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v14 = v13;
    v35 = sub_100003D44(0, &qword_100198C08, LSApplicationRecord_ptr);
    v36 = &off_10018C118;
    *&v33 = v14;
    sub_10001A798(&v33, v37);
    v37[5] = v9;
    v37[6] = v10;
    sub_10004E760(v37, a4, a5, v15, v16, v17, v18, v19, v29, v30, v31, v32, v33, *(&v33 + 1), v34, v35, v36, v37[0], v37[1], v37[2]);
    sub_10005660C(v37);
    v28 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v37[0] = *a1;
    sub_100068A7C();
    *a1 = v37[0];
  }
}

void sub_10004E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004DF0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for OSSignpostID();
  v31 = sub_100002944(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  v37 = &a9 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignpostID.exclusive.getter();
  sub_1000C4144();
  sub_10004E8A8(v29, v23, v27, v25, &a10);
  sub_1000F1430();

  (*(v33 + 8))(v37, v30);
  sub_100004674();
}

void sub_10004E8A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v84 = a4;
  v85 = a3;
  v83 = a5;
  v7 = type metadata accessor for AppShortcutInterpolator.Builder();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v11);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17 = *sub_1000034B4((a2 + 112), *(a2 + 136));
  v18 = v96;
  sub_100012BBC(v16, v15, &v87);
  if (!v18)
  {
    v77 = a1;
    v78 = v7;
    v81 = a2;
    v79 = v10;
    v96 = v16;
    if (v88)
    {
      v80 = v88;
      v19 = v87;
      v20 = v90;
      v91 = v89;
      v21 = v81;
      v22 = *(*sub_1000034B4((v81 + 112), *(v81 + 136)) + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
      v23 = v84;
      sub_10004BF80();
      v75 = v20;
      v76 = v19;
      if (v24)
      {
        v81 = v24;
        v82 = 0;
        v93[0] = v76;
        v93[1] = v80;
        sub_10001D368(v93);
        v94 = v89;
        sub_100003EFC(&v94, &unk_100199100, &qword_10014E230);
        if (qword_100198100 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_10000347C(v31, qword_10019D928);
        v32 = v15;

        v33 = v23;

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();

        v36 = os_log_type_enabled(v34, v35);
        v37 = v83;
        if (v36)
        {
          v38 = swift_slowAlloc();
          v86[0] = swift_slowAlloc();
          *v38 = 136315394;
          *(v38 + 4) = sub_100004C50(v96, v32, v86);
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_100004C50(v85, v33, v86);
          _os_log_impl(&_mh_execute_header, v34, v35, "Successful AppShortcut cache hit for %s:%s", v38, 0x16u);
          swift_arrayDestroy();
        }

        *v37 = v81;
      }

      else
      {
        static OSSignpostID.exclusive.getter();
        sub_1000C4144();
        v74[1] = v39;
        (*(v82 + 8))(v14, v11);
        v40 = *sub_1000034B4((v21 + 112), *(v21 + 136));
        v41 = v15;

        v42 = v96;
        v74[0] = sub_1000212D8(v96, v41);
        v43 = *sub_1000034B4((v21 + 112), *(v21 + 136));
        v44 = sub_100078CB8(v42, v41);
        v82 = 0;
        v45 = v44;
        v46 = v75;

        v47 = v78;
        v48 = v79;
        sub_1000555BC(v77, &v79[v78[5]]);
        sub_100013334(v21 + 112, &v48[v47[9]]);
        v92 = v91;
        v49 = v23;

        sub_100009E90(&v92, v86, &unk_100199100, &qword_10014E230);
        if (qword_100198300 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        v51 = sub_10000347C(v50, qword_10019E038);
        (*(*(v50 - 8) + 16))(v48, v51, v50);
        v52 = &v48[v47[6]];
        *v52 = v85;
        *(v52 + 1) = v49;
        *&v48[v47[7]] = v74[0];
        *&v48[v47[8]] = v45;
        *&v48[v47[10]] = v46;
        *&v48[v47[11]] = v92;
        v95[0] = v76;
        v95[1] = v80;
        sub_10001D368(v95);
        sub_100003EFC(&v92, &unk_100199100, &qword_10014E230);
        if (qword_100198100 != -1)
        {
          swift_once();
        }

        v53 = sub_10000347C(v50, qword_10019D928);

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = v49;
          v57 = v53;
          v58 = swift_slowAlloc();
          v86[0] = swift_slowAlloc();
          *v58 = 136446466;
          *(v58 + 4) = sub_100004C50(v96, v41, v86);
          *(v58 + 12) = 2082;
          *(v58 + 14) = sub_100004C50(v85, v56, v86);
          _os_log_impl(&_mh_execute_header, v54, v55, "Interpolating AppShortcuts for %{public}s:%{public}s", v58, 0x16u);
          swift_arrayDestroy();

          v53 = v57;
        }

        v59 = v82;
        sub_10004F550();
        if (v59)
        {
          sub_1000555F4();
        }

        else
        {
          v80 = v60;
          v82 = 0;

          v61 = v84;

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v78 = v53;
            v65 = v64;
            v86[0] = swift_slowAlloc();
            *v65 = 136446466;
            *(v65 + 4) = sub_100004C50(v96, v41, v86);
            *(v65 + 12) = 2082;
            *(v65 + 14) = sub_100004C50(v85, v61, v86);
            _os_log_impl(&_mh_execute_header, v62, v63, "Caching AppShortcuts for %{public}s:%{public}s", v65, 0x16u);
            swift_arrayDestroy();
          }

          v66 = *(*sub_1000034B4((v81 + 112), *(v81 + 136)) + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
          v67 = v80;
          v68 = v82;
          sub_10004D158();
          if (v68)
          {
            swift_errorRetain();
            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              *v71 = 138412290;
              swift_errorRetain();
              v73 = _swift_stdlib_bridgeErrorToNSError();
              *(v71 + 4) = v73;
              *v72 = v73;
              _os_log_impl(&_mh_execute_header, v69, v70, "Failed to update cached AppShortcuts: %@", v71, 0xCu);
              sub_100003EFC(v72, &unk_10019A260, &unk_10014D030);
            }
          }

          sub_1000555F4();
          *v83 = v67;
        }

        sub_1000F1430();
      }
    }

    else
    {
      if (qword_100198100 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000347C(v25, qword_10019D928);
      v26 = v15;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v86[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_100004C50(v96, v26, v86);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s does not have AppShortcuts", v29, 0xCu);
        sub_1000034F8(v30);
      }

      *v83 = _swiftEmptyArrayStorage;
    }
  }
}

void sub_10004F550()
{
  sub_100050C90();
  v3 = v1;
  if (v1)
  {
    return;
  }

  v164 = v2;
  v172 = _swiftEmptyArrayStorage;
  v192 = _swiftEmptyArrayStorage;
  v4 = type metadata accessor for AppShortcutInterpolator.Builder();
  v5 = 0;
  v6 = *(v0 + v4[7]);
  v184 = v6 + 32;
  v185 = *(v6 + 16);
  v178 = 136315138;
  *&v7 = 136315394;
  v162 = v7;
  v186 = v4;
  v187 = v0;
  v183 = v6;
  while (1)
  {
    if (v5 == v185)
    {

      return;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v8 = (v184 + 24 * v5);
    v9 = *v8;
    v10 = v8[2];
    v189 = v5 + 1;
    v190 = v8[1];

    v11 = v10;
    v12 = [v11 actionIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v3;
    v16 = v15;

    v17 = sub_1000034B4((v0 + v4[9]), *(v0 + v4[9] + 24));
    v18 = v0 + v4[5];
    v19 = *(v18 + 40);
    v20 = *(v18 + 48);
    v21 = *v17;
    v188 = v13;
    v22 = v13;
    v23 = v16;
    v24 = v14;
    v25 = sub_100078C8C(v19, v20, v22, v16);
    v3 = v14;
    if (v14)
    {

      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000347C(v26, qword_10019E008);
      sub_1000099C0();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (sub_10001A9A4())
      {
        sub_100007764();
        v29 = sub_100003748();
        v37 = sub_100007AE0(v29, v30, v31, v32, v33, v34, v35, v36, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v174, v175, v176, v177, v178);
        v39 = sub_100004C50(v37, v23, v38);

        *(v14 + 4) = v39;
        sub_10001AAB0(&_mh_execute_header, v27, v28, "%s does not have any metadata, skipping");
        sub_1000034F8(v5);
        sub_100004D8C();
        sub_100013468();
      }

      else
      {
      }

      v3 = 0;
      ++v5;
      goto LABEL_33;
    }

    v40 = v25;
    v176 = v19;
    v177 = v5;
    v179 = v9;
    v181 = v11;
    if (sub_10006A0A0(v11))
    {
      v41 = sub_10000519C();
      sub_100003D44(v41, &qword_100199638, LNAvailabilityChecker_ptr);
      v42 = sub_1000236F0();
      v43 = [v42 availableForCurrentPlatformVersion];

      if ((v43 & 1) == 0)
      {
        if (qword_1001982F0 != -1)
        {
          sub_100002A48();
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_10000347C(v65, qword_10019E008);
        sub_1000099C0();

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.info.getter();

        if (sub_10001A9A4())
        {
          sub_100007764();
          v68 = sub_100003748();
          v76 = sub_100007AE0(v68, v69, v70, v71, v72, v73, v74, v75, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v174, v175, v176, v5, v178);
          sub_100004C50(v76, v23, v77);
          sub_100013C4C();
          *(v40 + 4) = 0;
          v3 = v23;
          sub_10001AAB0(&_mh_execute_header, v66, v67, "%s AppShortcut is marked as unavailable on current platform, skipping");
          sub_1000034F8(v5);
          sub_100004D8C();
          sub_100013468();
        }

        else
        {
        }

        ++v5;
        goto LABEL_33;
      }
    }

    v180 = v40;
    v44 = sub_10006A0A0(v40);
    v45 = v190;
    if (v44 && (v46 = sub_10000519C(), sub_100003D44(v46, &qword_100199638, LNAvailabilityChecker_ptr), v47 = sub_1000236F0(), v48 = [v47 availableForCurrentPlatformVersion], v47, (v48 & 1) == 0))
    {
      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_10000347C(v85, qword_10019E008);
      sub_1000099C0();

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.info.getter();

      if (!sub_10001A9A4())
      {

        goto LABEL_54;
      }

      sub_100007764();
      v88 = sub_100003748();
      v96 = sub_100007AE0(v88, v89, v90, v91, v92, v93, v94, v95, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v174, v175, v176, v5, v178);
      sub_100004C50(v96, v23, v97);
      sub_100013C4C();
      *(v190 + 4) = 0;
      v3 = v23;
      sub_10001AAB0(&_mh_execute_header, v86, v87, "%s is marked as unavailable on current platform, skipping");
      sub_1000034F8(v5);
      sub_100004D8C();
      sub_100013468();

LABEL_55:
      v5 = v189;
LABEL_33:
      v4 = v186;
LABEL_34:
      v0 = v187;
      v6 = v183;
    }

    else if ([v180 visibleForUse:0])
    {
      v49 = sub_10005628C(v180, &selRef_requiredCapabilities, &qword_1001996F8, LNRequiredCapabilityMetadata_ptr);
      v53 = v20;
      v174 = v23;
      if (v49)
      {
        v54 = v49;
        v171 = v20;
        v175 = 0;
        v55 = sub_1000232F4(v49);
        if (v55)
        {
          v56 = v55;
          v57 = 0;
          v58 = (v54 & 0xC000000000000001);
          while (v56 != v57)
          {
            if (v58)
            {
              v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v57 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_73;
              }

              v59 = *(v54 + 8 * v57 + 32);
            }

            v60 = v59;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_72;
            }

            if ([v59 isFeatureFlagCapability])
            {
              v61 = [v60 key];
              if (!v61)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v61 = String._bridgeToObjectiveC()();
              }

              v62 = [objc_opt_self() featureEnabledWithDomainFeaturePair:v61];

              v63 = [v60 value];
              v64 = v62 == v63;
              v45 = v190;
              if (!v64)
              {

                if (qword_1001982F0 != -1)
                {
                  sub_100002A48();
                  swift_once();
                }

                v137 = type metadata accessor for Logger();
                sub_10000347C(v137, qword_10019E008);
                v138 = v174;

                v139 = Logger.logObject.getter();
                v140 = static os_log_type_t.info.getter();

                if (sub_10001A9A4())
                {
                  sub_100007764();
                  v141 = sub_100003748();
                  v149 = sub_100007AE0(v141, v142, v143, v144, v145, v146, v147, v148, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v174, v24, v176, v177, v178);
                  v151 = sub_100004C50(v149, v138, v150);

                  *(v190 + 4) = v151;
                  sub_10001AAB0(&_mh_execute_header, v139, v140, "%s requires at least one missing feature flag, skipping");
                  sub_1000034F8(v58);
                  sub_100004D8C();
                  sub_100013468();
                }

                else
                {
                }

                v5 = v189;
                v3 = v175;
                v4 = v186;
                goto LABEL_34;
              }
            }

            else
            {
            }

            ++v57;
          }
        }

        v53 = v171;
      }

      sub_1000510D4(v179, v45, v181, *(v187 + v186[8]), v164, v50, v51, v52, v152, v153, SWORD2(v153), SBYTE6(v153), SHIBYTE(v153), v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1));
      v99 = v98;
      v100 = [v181 shortTitle];
      if (v100)
      {
        v101 = v100;
        v102 = (v187 + v186[6]);
        v103 = *v102;
        v104 = v102[1];
        v105 = String._bridgeToObjectiveC()();
        v106 = [v101 localizedStringForLocaleIdentifier:v105];

        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v108;
        v173 = v107;
      }

      else
      {
        v171 = 0;
        v173 = 0;
      }

      v109 = [v181 autoShortcutDescription];
      v175 = 0;
      v168 = v99;
      if (v109)
      {
        v110 = v109;
        v111 = v187;
        v112 = (v187 + v186[6]);
        v113 = *v112;
        v114 = v112[1];
        v115 = String._bridgeToObjectiveC()();
        v116 = [v110 localizedStringForLocaleIdentifier:v115];

        v117 = v186;
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v169 = v119;
        v170 = v118;
      }

      else
      {
        v169 = 0;
        v170 = 0;
        v117 = v186;
        v111 = v187;
      }

      v120 = sub_100056300(v180, &selRef_attributionBundleIdentifier);
      v166 = v121;
      v167 = v120;
      v122 = (v111 + v117[6]);
      v123 = v111;
      v124 = *v122;
      v125 = v122[1];

      v126 = [v181 systemImageName];
      v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;

      v129 = v117[11];
      v130 = *(v123 + v117[10]);
      sub_100051980(v177, *(v123 + v129), *(v123 + v129 + 8), v124, v125, v179, v190, v181);
      v132 = v131;
      v133 = [v181 phraseTemplates];
      sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
      v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v135 = objc_allocWithZone(LNAutoShortcut);
      sub_100054C34(v176, v53, v124, v125, v188, v174, v168, v173, v171, v170, v169, v165, v128, v130, v132, v167, v166, v134);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v136 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v136 >> 1)
      {
        sub_100005150(v136);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v172 = v192;

      v5 = v189;
      v4 = v186;
      v0 = v187;
      v6 = v183;
      v3 = 0;
    }

    else
    {
      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_10000347C(v78, qword_10019E008);

      v79 = v11;

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v80, v81))
      {

LABEL_54:

        goto LABEL_55;
      }

      v182 = v79;
      v82 = swift_slowAlloc();
      v175 = 0;
      v191[0] = swift_slowAlloc();
      *v82 = v162;
      v83 = sub_100004C50(v188, v23, v191);

      *(v82 + 4) = v83;
      *(v82 + 12) = 2080;

      v84 = sub_100004C50(v9, v190, v191);

      *(v82 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "%s is marked as undiscoverable in bundle %s, skipping", v82, 0x16u);
      swift_arrayDestroy();
      v3 = 0;
      sub_1000036AC();
      sub_100004D8C();

      v6 = v183;
      v5 = v189;
      v4 = v186;
      v0 = v187;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_100050198()
{
  v0 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  sub_100037CD8(v0, qword_10019D940);
  sub_10000347C(v0, qword_10019D940);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380);
  return Regex.init<A>(_:)();
}

uint64_t sub_100050270@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v47 = type metadata accessor for _RegexFactory();
  v12 = *(v47 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v47);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10002EB80(&qword_1001996C0, &unk_1001501D0);
  v48 = *(v46 - 8);
  v16 = *(v48 + 64);
  v17 = __chkstk_darwin(v46);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v35 = &v32 - v20;
  v51 = 31524;
  v52 = 0xE200000000000000;
  v37 = sub_100056540();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  sub_1000507A4(v7);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0);
  v33 = v11;
  v34 = v1;
  _RegexFactory.capture<A, B>(_:)();
  v40 = *(v2 + 8);
  v41 = v2 + 8;
  v40(v7, v1);
  v21 = *(v12 + 8);
  v38 = v12 + 8;
  v39 = v21;
  v21(v15, v47);
  Capture.init(_:)();
  sub_100013EBC(&qword_1001996D8, &qword_1001996C0, &unk_1001501D0);
  v22 = v35;
  v23 = v46;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v24 = *(v48 + 8);
  v48 += 8;
  v36 = v24;
  v24(v19, v23);
  v49 = 125;
  v50 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v49 = v53;
  v50 = v54;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  makeFactory()();
  v25 = v42;
  v26 = v34;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v27 = v33;
  v28 = v22;
  v29 = v46;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v30 = v40;
  v40(v25, v26);
  v39(v15, v47);
  sub_1000976AC();

  (*(v43 + 8))(v27, v44);
  v30(v7, v26);
  return v36(v28, v29);
}

uint64_t sub_1000507A4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v44 = type metadata accessor for RegexRepetitionBehavior();
  v42 = *(v44 - 8);
  v1 = *(v42 + 64);
  __chkstk_darwin(v44);
  v41 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for _RegexFactory();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002EB80(&qword_1001996E0, &unk_10014E3B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for CharacterClass();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002EB80(&qword_1001996E8, &unk_1001501E0);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v35 - v27;
  __chkstk_darwin(v26);
  v30 = &v35 - v29;
  static RegexComponent<>.word.getter();
  sub_1000075C4(v10, 1, 1, v44);
  makeFactory()();
  sub_100056594();
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v39 + 8))(v6, v40);
  sub_100003EFC(v10, &qword_1001996E0, &unk_10014E3B0);
  (*(v38 + 8))(v14, v11);
  OneOrMore.init(_:)();
  v31 = v36;
  OneOrMore.regex.getter();
  (*(v37 + 8))(v19, v31);
  v32 = v41;
  static RegexRepetitionBehavior.reluctant.getter();
  Regex.repetitionBehavior(_:)();
  (*(v42 + 8))(v32, v44);
  v33 = *(v21 + 8);
  v33(v25, v20);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v33(v28, v20);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  return (v33)(v30, v20);
}

void sub_100050C90()
{
  v1 = type metadata accessor for AppShortcutInterpolator.Builder();
  v2 = (v0 + *(v1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_1000034B4(v2, v3);
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10014CE90;
  v6 = (v0 + *(v1 + 24));
  v7 = *v6;
  v8 = v6[1];
  *(v5 + 32) = *v6;
  *(v5 + 40) = v8;
  v9 = *(v4 + 24);

  v57 = v9(v5, v3, v4);
  v11 = v10;

  v12 = v2[3];
  v13 = v2[4];
  sub_1000034B4(v2, v12);
  v14 = (*(v13 + 32))(v7, v8, v12, v13);
  v15 = *(v14 + 16);
  v16 = (v14 + 48);
  v17 = v15 + 1;
  do
  {
    if (!--v17)
    {
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10014CE90;
      *(v38 + 32) = v57;
      *(v38 + 40) = v11;
      if (v15)
      {
        sub_100011438(0, v15, 0);
        v39 = (v14 + 40);
        do
        {
          v41 = *(v39 - 1);
          v40 = *v39;
          v42 = _swiftEmptyArrayStorage[2];
          v43 = _swiftEmptyArrayStorage[3];

          if (v42 >= v43 >> 1)
          {
            sub_100011438(v43 > 1, v42 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v42 + 1;
          v44 = &_swiftEmptyArrayStorage[2 * v42];
          v44[4] = v41;
          v44[5] = v40;
          v39 += 3;
          --v15;
        }

        while (v15);
      }

      goto LABEL_33;
    }

    v18 = v16 + 24;
    v19 = *v16;
    v16 += 24;
  }

  while (v19 != 1);
  v54 = v11;
  v21 = *(v18 - 5);
  v20 = *(v18 - 4);

  v22 = 0;
  v55 = _swiftEmptyArrayStorage;
LABEL_5:
  v23 = 24 * v22;
  while (v15 != v22)
  {
    if (v22 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    v24 = *(v14 + v23 + 32);
    v25 = *(v14 + v23 + 40);
    if (v24 != v21 || v25 != v20)
    {
      v27 = *(v14 + v23 + 48);
      v28 = *(v14 + v23 + 32);
      v29 = *(v14 + v23 + 40);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v30 = v55;
        v58 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = v55[2];
          sub_1000B34CC();
          v30 = v55;
        }

        v33 = v30[2];
        v32 = v30[3];
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          sub_100005150(v32);
          v56 = v36;
          v53 = v37;
          sub_1000B34CC();
          v34 = v56;
          v33 = v53;
          v30 = v58;
        }

        ++v22;
        v30[2] = v34;
        v55 = v30;
        v35 = &v30[3 * v33];
        v35[4] = v24;
        v35[5] = v25;
        *(v35 + 48) = v27;
        goto LABEL_5;
      }
    }

    v23 += 24;
    ++v22;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10014BC40;
  *(v45 + 32) = v21;
  *(v45 + 40) = v20;
  *(v45 + 48) = v57;
  *(v45 + 56) = v54;
  v46 = v55[2];
  if (v46)
  {
    sub_100011438(0, v46, 0);
    v47 = v55 + 5;
    do
    {
      v49 = *(v47 - 1);
      v48 = *v47;
      v51 = _swiftEmptyArrayStorage[2];
      v50 = _swiftEmptyArrayStorage[3];

      if (v51 >= v50 >> 1)
      {
        sub_100011438(v50 > 1, v51 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v51 + 1;
      v52 = &_swiftEmptyArrayStorage[2 * v51];
      v52[4] = v49;
      v52[5] = v48;
      v47 += 3;
      --v46;
    }

    while (v46);
  }

LABEL_33:
  sub_10006E3AC(_swiftEmptyArrayStorage);
}

void sub_1000510D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, BOOL a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004DF0();
  a22 = v25;
  a23 = v26;
  v27 = v24;
  v109 = v28;
  v110 = v23;
  v107 = v29;
  v31 = v30;
  v32 = type metadata accessor for URL();
  v33 = sub_100002944(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  v39 = (&v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  sub_100006724();
  v44 = v42 - v43;
  __chkstk_darwin(v45);
  v116 = &v105 - v46;
  sub_100056CAC();
  __chkstk_darwin(v47);
  v111 = &v105 - v48;
  a13 = 1;
  if ([objc_opt_self() isAppShortcutsOmittingAppNameEnabled])
  {
    v49 = (v110 + *(type metadata accessor for AppShortcutInterpolator.Builder() + 20));
    v50 = v49[3];
    v51 = v49[4];
    sub_1000034B4(v49, v50);
    v27 = v24;
    a13 = ((*(v51 + 16))(v50, v51) & 1) == 0;
  }

  v122 = &_swiftEmptySetSingleton;
  v121 = &_swiftEmptyDictionarySingleton;
  v108 = v31;
  v52 = [v31 phraseTemplates];
  v53 = sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_1000232F4(v54))
  {

    goto LABEL_9;
  }

  v115 = v53;
  sub_10003818C(0, (v54 & 0xC000000000000001) == 0, v54);
  if ((v54 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  for (i = *(v54 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v56 = i;

    v57 = [v56 bundleURL];
    if (v57)
    {
      v58 = v57;
      v59 = v44;
      v60 = v116;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = 0;
    }

    else
    {
      v59 = v44;
      v61 = 1;
      v60 = v116;
    }

    sub_1000075C4(v60, v61, 1, v32);
    v62 = v60;
    v63 = v111;
    sub_10005644C(v62, v111, &qword_1001990C0, &unk_10014E200);
    sub_100009E90(v63, v59, &qword_1001990C0, &unk_10014E200);
    if (sub_1000032C4(v59, 1, v32) == 1)
    {
      sub_100003EFC(v59, &qword_1001990C0, &unk_10014E200);
LABEL_28:
      v78 = v110;
LABEL_29:
      v97 = [v108 phraseTemplates];
      v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v99);
      *(&v105 - 2) = v78;
      sub_1000C3140(sub_10005635C, (&v105 - 4), v98);
      v35 = v100;
      v79 = v27;

      goto LABEL_30;
    }

    (v35[4])(v39, v59, v32);
    v64 = objc_opt_self();
    URL._bridgeToObjectiveC()(v65);
    v66 = v39;
    v68 = v67;
    v69 = [v64 ln_uniqueBundleWithURL:v67];

    if (!v69)
    {
      (v35[1])(v66, v32);
      goto LABEL_28;
    }

    v70 = type metadata accessor for AppShortcutInterpolator.Builder();
    v71 = v110;
    v72 = sub_1000BB650(0x74726F6853707041, 0xEC00000073747563, *(v110 + *(v70 + 24)), *(v110 + *(v70 + 24) + 8));

    (v35[1])(v66, v32);
    v73 = [v56 key];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77 = sub_1000B6334(v74, v76, v72);
    v78 = v71;

    if (!v77)
    {
      goto LABEL_29;
    }

    v118 = v77;

    sub_10009D950();
    v79 = v27;
    if (v27)
    {

      __break(1u);
      return;
    }

    v80 = v118;
    v44 = *(v118 + 16);
    if (!v44)
    {
      break;
    }

    v106 = 0;
    v120 = _swiftEmptyArrayStorage;
    sub_1000B3558(0, v44, 0);
    v27 = 0;
    v35 = v120;
    v81 = *(v80 + 16);
    v114 = v56;
    v115 = v81;
    v39 = (v80 + 40);
    v112 = v44;
    v113 = v80;
    while (v115 != v27)
    {
      if (v27 >= *(v80 + 16))
      {
        goto LABEL_37;
      }

      v82 = *v39;
      v116 = *(v39 - 1);
      if (v27)
      {
        v117 = v27;
        v118 = 91;
        v119 = 0xE100000000000000;

        v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v83);

        v84._countAndFlagsBits = 93;
        v84._object = 0xE100000000000000;
        String.append(_:)(v84);
        v85 = v118;
        v86 = v119;
      }

      else
      {

        v85 = 0;
        v86 = 0xE000000000000000;
      }

      v87 = [v56 key];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v118 = v88;
      v119 = v90;

      v91._countAndFlagsBits = v85;
      v91._object = v86;
      String.append(_:)(v91);

      v92 = v118;
      v93 = v119;
      v120 = v35;
      v32 = v35[2];
      v94 = v35[3];
      if (v32 >= v94 >> 1)
      {
        v96 = sub_100005150(v94);
        sub_1000B3558(v96, v32 + 1, 1);
        v35 = v120;
      }

      v35[2] = v32 + 1;
      v95 = &v35[4 * v32];
      v95[4] = v92;
      v95[5] = v93;
      v95[6] = v116;
      v95[7] = v82;
      ++v27;
      v39 += 2;
      v44 = v112;
      v80 = v113;
      v56 = v114;
      if (v112 == v27)
      {

        v78 = v110;
        v79 = v106;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_35:

LABEL_30:
  sub_100052360();
  if (v79)
  {

    swift_bridgeObjectRelease_n();
    sub_100003EFC(v111, &qword_1001990C0, &unk_10014E200);

    goto LABEL_33;
  }

  v102 = v101;

  v118 = &_swiftEmptySetSingleton;
  __chkstk_darwin(v103);
  *(&v105 - 8) = &v122;
  *(&v105 - 7) = v102;
  v104 = v111;
  *(&v105 - 6) = v78;
  *(&v105 - 5) = v104;
  *(&v105 - 4) = v107;
  *(&v105 - 3) = &a13;
  *(&v105 - 2) = &v121;
  *(&v105 - 1) = &v118;
  sub_10006D7E0(_swiftEmptyArrayStorage, sub_10005637C, (&v105 - 10), v35);

  sub_100003EFC(v104, &qword_1001990C0, &unk_10014E200);
LABEL_9:

LABEL_33:
  sub_100004674();
}

void sub_100051980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v73 = a1;
  v74 = a2;
  v13 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v68 - v15;
  v17 = [a8 parameterPresentation];
  if (!v17)
  {
    return;
  }

  v81 = a7;
  v82 = a3;
  v18 = v17;
  v19 = [v17 parameterIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v21;
  v72 = v20;

  v22 = [v18 specificTitle];
  v23 = [v22 formatString];
  v76 = a4;
  v24 = v23;

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = sub_100056300(v18, &selRef_localizationTable);
  v30 = v29;
  sub_1000546E0(a8, v16);
  v31 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  v32 = sub_100055194(v25, v27, v28, v30, v16);
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 localizedStringForLocaleIdentifier:v33];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v75 = v18;
  v38 = sub_10005628C(v18, &selRef_optionsCollection, &qword_100199648, LNAppShortcutOptionsCollectionMetadata_ptr);
  if (!v38)
  {
    v66 = 0;
LABEL_20:
    v67 = objc_allocWithZone(LNAppShortcutParameterPresentation);
    sub_1000553D8(v72, v71, v35, v37, v66);

    return;
  }

  v39 = v38;
  v68 = v37;
  v69 = v35;
  v70 = _swiftEmptyArrayStorage;
  v83 = _swiftEmptyArrayStorage;
  v40 = sub_1000232F4(v38);
  v41 = 0;
  v78 = v39 & 0xC000000000000001;
  v79 = v40;
  v77 = v39 & 0xFFFFFFFFFFFFFF8;
  v42 = v82;
  while (1)
  {
    if (v79 == v41)
    {

      v37 = v68;
      v35 = v69;
      v66 = v70;
      goto LABEL_20;
    }

    if (v78)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *(v77 + 16))
      {
        goto LABEL_22;
      }

      v43 = *(v39 + 8 * v41 + 32);
    }

    v44 = v43;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v42)
    {

      v45 = [v44 title];
      v46 = String._bridgeToObjectiveC()();
      v47 = [v45 localizedStringForLocaleIdentifier:v46];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v49;
      v81 = v48;

      v50 = sub_100056300(v44, &selRef_systemImageName);
      v51 = a5;
      v53 = v52;
      v54 = [v75 parameterIdentifier];
      v55 = v39;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = objc_allocWithZone(LNAppShortcutDynamicOptionsProviderReference);
      v60 = v56;
      v39 = v55;
      v61 = sub_100055298(v74, v82, v60, v58, v73, v41);
      v62 = objc_allocWithZone(LNAppShortcutOptionsCollection);
      v63 = v50;
      v42 = v82;
      v64 = v53;
      a5 = v51;
      v65 = sub_100055338(v81, v80, v63, v64, v61);

      if (!v65)
      {
        goto LABEL_15;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v70 = v83;
      ++v41;
    }

    else
    {

LABEL_15:
      ++v41;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_100051DFC(void *a1, uint64_t a2)
{
  v69 = sub_10002EB80(&qword_100199678, &unk_1001501A0);
  v4 = sub_100002944(v69);
  v65 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100006724();
  v67 = v8 - v9;
  sub_100056CAC();
  __chkstk_darwin(v10);
  v68 = v58 - v11;
  v70 = a1;
  v71 = a2;
  if (qword_100198108 != -1)
  {
LABEL_24:
    swift_once();
  }

  v12 = sub_1000077D8();
  v14 = sub_10002EB80(v12, v13);
  sub_10000347C(v14, qword_10019D940);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100056498();
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380);
  v15 = BidirectionalCollection<>.matches<A, B>(of:)();
  v16 = *(v15 + 16);
  v17 = _swiftEmptyArrayStorage;
  v64 = v15;
  if (v16)
  {
    v78 = _swiftEmptyArrayStorage;
    sub_1000B3578();
    v17 = v78;
    v18 = *(v65 + 16);
    v19 = v15 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v62 = *(v65 + 72);
    v63 = v18;
    v66 = v65 + 16;
    v61 = (v65 + 8);
    do
    {
      v20 = v67;
      v21 = v69;
      v63(v67, v19, v69);
      Regex.Match.output.getter();
      (*v61)(v20, v21);
      v22 = v70;
      v23 = v71;
      v25 = v72;
      v24 = v73;

      v78 = v17;
      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        sub_100005150(v26);
        sub_1000B3578();
        v17 = v78;
      }

      v17[2] = v27 + 1;
      v28 = &v17[4 * v27];
      v28[4] = v22;
      v28[5] = v23;
      v28[6] = v25;
      v28[7] = v24;
      v19 += v62;
      --v16;
    }

    while (v16);
    v15 = v64;
  }

  v70 = v17;

  sub_10009D99C();

  sub_10002EB80(&qword_1001996A0, &unk_10014E390);
  sub_100013EBC(&qword_1001996A8, &qword_1001996A0, &unk_10014E390);
  sub_1000564EC();
  v59 = Sequence<>.joined(separator:)();
  v58[1] = v29;

  v63 = *(v15 + 16);
  if (!v63)
  {
LABEL_20:

    return v59;
  }

  v30 = 0;
  sub_100003AA4();
  v62 = v15 + v31;
  v61 = (v32 + 16);
  v33 = &_swiftEmptyDictionarySingleton;
  v60 = v32 + 8;
  while (1)
  {
    if (v30 >= *(v15 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    (*(v65 + 16))(v68, v62 + *(v65 + 72) * v30, v69);
    Regex.Match.output.getter();

    v35 = v74;
    v34 = v75;
    v36 = v76;
    v37 = v77;
    v66 = Regex.Match.range.getter();
    v67 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v33;
    sub_1000115BC();
    v40 = sub_10004592C();
    v42 = v33[2];
    v43 = (v41 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_22;
    }

    v45 = v40;
    v46 = v41;
    sub_10002EB80(&qword_1001996B8, &unk_1001501C0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44))
    {
      break;
    }

LABEL_15:
    if (v46)
    {

      v33 = v70;
      v49 = sub_1000077B8();
      v50(v49);
    }

    else
    {
      v33 = v70;
      v70[(v45 >> 6) + 8] |= 1 << v45;
      v51 = (v33[6] + 32 * v45);
      *v51 = v35;
      v51[1] = v34;
      v51[2] = v36;
      v51[3] = v37;
      v52 = sub_1000077B8();
      v53(v52);
      v54 = v33[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_23;
      }

      v33[2] = v56;
    }

    ++v30;
    v15 = v64;
    if (v63 == v30)
    {
      goto LABEL_20;
    }
  }

  sub_1000115BC();
  v47 = sub_10004592C();
  if ((v46 & 1) == (v48 & 1))
  {
    v45 = v47;
    goto LABEL_15;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}