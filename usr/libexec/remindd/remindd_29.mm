uint64_t sub_1002EB024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = REMSuggestedAttributeInputDataFrame.iloc(_:)();
  if (a2)
  {
    dispatch thunk of Series.iloc(_:)();
    v7 = v10;
    a2 = v11;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1004C68F8(v6, v7, a2, 0, 0);

  *a3 = v8;
  return result;
}

uint64_t sub_1002EB0D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v4 = REMSuggestedAttributeInput.description.getter();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 2314;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  dispatch thunk of Series.iloc(_:)();
  String.append(_:)(v10);

  *a2 = 0x5D7473694C3A565BLL;
  a2[1] = v11;
  return result;
}

uint64_t sub_1002EB1BC@<X0>(uint64_t *a1@<X0>, Swift::Int a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v8 = *a1;
  _StringGuts.grow(_:)(a2);

  v16 = a3;
  v17 = a4;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v9 = REMSuggestedAttributeInput.description.getter();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 2314;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  dispatch thunk of Series.iloc(_:)();
  String.append(_:)(v15);

  *a5 = v16;
  a5[1] = v17;
  return result;
}

uint64_t sub_1002EB2B4@<X0>(uint64_t *a1@<X0>, Swift::Int a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t (*a6)(uint64_t))
{
  v9 = *a1;
  _StringGuts.grow(_:)(a2);

  v23 = a3;
  v24 = a4;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v10 = REMSuggestedAttributeInput.description.getter();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 540945696;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);
  v15 = dispatch thunk of Series.iloc(_:)();
  v16 = a6(v15);
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 2314;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  dispatch thunk of Series.iloc(_:)();
  String.append(_:)(v22);

  *a5 = v23;
  a5[1] = v24;
  return result;
}

uint64_t sub_1002EB40C(uint64_t *a1)
{
  v1 = *a1;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  REMSuggestedAttributeInput.list.getter();

  v2 = REMSuggestedList.isValid.getter();

  return v2 & 1;
}

uint64_t sub_1002EB470@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000F5104(&qword_1009413A0, &qword_1007A1218);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *a1;
  swift_getKeyPath();
  sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (*(v5 + 8))(v8, v4);
  result = REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)();
  if (v11)
  {
    v12 = result;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v11)
  {
    v13 = v11;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t sub_1002EB5F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v4 = REMSuggestedAttributeInput.description.getter();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  *a2 = 0x5D7473694C3A565BLL;
  a2[1] = v9;
  return result;
}

uint64_t sub_1002EB690@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  _StringGuts.grow(_:)(16);

  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v6 = REMSuggestedAttributeInput.description.getter();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 540945696;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11 = *a2;

  dispatch thunk of Series.iloc(_:)();

  v12 = REMSuggestedList.description.getter();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  *a3 = 0x5D7473694C3A585BLL;
  a3[1] = 0xE800000000000000;
  return result;
}

void sub_1002EB7C0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = objc_autoreleasePoolPush();
  sub_1002E2298(v9, a2, a3, a4, a5);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_1002EB850(uint64_t a1)
{
  result = sub_1002F05EC(&qword_1009411F8, &type metadata accessor for REMSuggestedAttributesTrainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002EB8A8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1002EB904()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    type metadata accessor for MersenneTwister();
    sub_1002F05EC(&qword_100941348, &type metadata accessor for MersenneTwister);
    v4 = 0;
    while (1)
    {
      v6 = dispatch thunk of RandomNumberGenerator.next()();
      v7 = (v6 * v2) >> 64;
      if (v2 > v6 * v2)
      {
        v8 = -v2 % v2;
        if (v8 > v6 * v2)
        {
          do
          {
            v9 = dispatch thunk of RandomNumberGenerator.next()();
          }

          while (v8 > v9 * v2);
          v7 = (v9 * v2) >> 64;
        }
      }

      v10 = v4 + v7;
      if (__OFADD__(v4, v7))
      {
        break;
      }

      if (v4 != v10)
      {
        v11 = *(v1 + 2);
        if (v4 >= v11)
        {
          goto LABEL_19;
        }

        if (v10 >= v11)
        {
          goto LABEL_20;
        }

        v12 = *&v1[8 * v4 + 32];
        v13 = *&v1[8 * v10 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1004364A0(v1);
        }

        v14 = *(v1 + 2);
        if (v4 >= v14)
        {
          goto LABEL_21;
        }

        *&v1[8 * v4 + 32] = v13;
        if (v10 >= v14)
        {
          goto LABEL_22;
        }

        *&v1[8 * v10 + 32] = v12;
        *v15 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1002EBA94(void *a1)
{
  v160 = type metadata accessor for REMSuggestedLocation.LocationValue();
  v159 = *(v160 - 8);
  v2 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v135[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v151 = type metadata accessor for Calendar();
  v150 = *(v151 - 8);
  v4 = *(v150 + 64);
  __chkstk_darwin(v151);
  v149 = &v135[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = type metadata accessor for DateComponents();
  v153 = *(v154 - 8);
  v6 = v153[8];
  __chkstk_darwin(v154);
  v152 = &v135[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v156 = &v135[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v165 = &v135[-v12];
  __chkstk_darwin(v13);
  v15 = &v135[-v14];
  v16 = type metadata accessor for Date();
  v167 = *(v16 - 8);
  v168 = v16;
  v17 = *(v167 + 64);
  __chkstk_darwin(v16);
  v161 = &v135[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v166 = &v135[-v20];
  v21 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v155 = &v135[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v135[-v25];
  __chkstk_darwin(v27);
  v29 = &v135[-v28];
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v163 = &v135[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v157 = &v135[-v35];
  __chkstk_darwin(v36);
  v164 = &v135[-v37];
  __chkstk_darwin(v38);
  v176 = &v135[-v39];
  *&v172 = 0x696669746E656469;
  *(&v172 + 1) = 0xEA00000000007265;
  v40 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v169 = a1;
  v41 = [a1 __swift_objectForKeyedSubscript:v40];
  swift_unknownObjectRelease();
  if (v41)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v174 = v172;
  v175 = v173;
  if (!*(&v173 + 1))
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
    (*(v31 + 56))(v29, 1, 1, v30);
    goto LABEL_9;
  }

  v147 = v26;
  v42 = swift_dynamicCast();
  v148 = *(v31 + 56);
  v148(v29, v42 ^ 1u, 1, v30);
  v43 = *(v31 + 48);
  if (v43(v29, 1, v30) == 1)
  {
LABEL_9:
    sub_1000050A4(v29, &unk_100939D90, "8\n\r");
    v46 = objc_opt_self();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = String._bridgeToObjectiveC()();
    [v46 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v48];

    swift_willThrow();
    return ObjCClassFromMetadata;
  }

  v145 = v31;
  v44 = *(v31 + 32);
  v146 = v30;
  v144 = v44;
  (v44)(v176, v29);
  strcpy(&v172, "creationDate");
  BYTE13(v172) = 0;
  HIWORD(v172) = -5120;
  v45 = [v169 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v45)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v49 = v168;
  v174 = v172;
  v175 = v173;
  if (!*(&v173 + 1))
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
    (*(v167 + 56))(v15, 1, 1, v49);
    goto LABEL_16;
  }

  v50 = swift_dynamicCast();
  v51 = v167;
  v52 = *(v167 + 56);
  v141 = v167 + 56;
  v140 = v52;
  v52(v15, v50 ^ 1u, 1, v49);
  v53 = *(v51 + 48);
  v143 = v51 + 48;
  v142 = v53;
  if (v53(v15, 1, v49) == 1)
  {
LABEL_16:
    sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
    v55 = objc_opt_self();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v56 = String._bridgeToObjectiveC()();
    [v55 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v56];

    swift_willThrow();
    (*(v145 + 8))(v176, v146);
    return ObjCClassFromMetadata;
  }

  (*(v51 + 32))(v166, v15, v49);
  *&v172 = 0x6564692E7473696CLL;
  *(&v172 + 1) = 0xEF7265696669746ELL;
  v54 = [v169 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v54)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v57 = v148;
  v58 = v147;
  v174 = v172;
  v175 = v173;
  if (!*(&v173 + 1))
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
    v59 = v146;
    v57(v58, 1, 1, v146);
    goto LABEL_23;
  }

  v59 = v146;
  v60 = swift_dynamicCast();
  v57(v58, v60 ^ 1u, 1, v59);
  if (v43(v58, 1, v59) == 1)
  {
LABEL_23:
    sub_1000050A4(v58, &unk_100939D90, "8\n\r");
    v63 = objc_opt_self();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = String._bridgeToObjectiveC()();
    [v63 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v64];

    swift_willThrow();
    (*(v167 + 8))(v166, v168);
    (*(v145 + 8))(v176, v59);
    return ObjCClassFromMetadata;
  }

  v144(v164, v58, v59);
  *&v172 = 0x656C746974;
  *(&v172 + 1) = 0xE500000000000000;
  v61 = [v169 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v62 = v145;
  if (v61)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v66 = v168;
  v174 = v172;
  v175 = v173;
  v67 = v146;
  if (*(&v173 + 1))
  {
    if (swift_dynamicCast())
    {
      v68 = v171;
      v144 = v170;
      goto LABEL_31;
    }
  }

  else
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
  }

  v144 = 0;
  v68 = 0xE000000000000000;
LABEL_31:
  v139 = v68;
  type metadata accessor for REMSuggestedList();
  v69 = *(v62 + 16);
  v70 = v155;
  v148 = (v62 + 16);
  v147 = v69;
  v69(v155, v164, v67);
  v57(v70, 0, 1, v67);
  v155 = REMSuggestedList.__allocating_init(listUUID:)();
  *&v172 = 0x6D616E2E7473696CLL;
  *(&v172 + 1) = 0xE900000000000065;
  v71 = &selRef_setPublicLinkLastModifiedDate_;
  v72 = [v169 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v72)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v73 = v156;
  v174 = v172;
  v175 = v173;
  if (*(&v173 + 1))
  {
    if (swift_dynamicCast())
    {
      v74 = v171;
      v138 = v170;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
  }

  v138 = 0;
  v74 = 0xE000000000000000;
LABEL_39:
  v137 = v74;
  *&v174 = 0x64656767616C66;
  *(&v174 + 1) = 0xE700000000000000;
  v75 = [v169 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v75)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v174 = v172;
  v175 = v173;
  if (*(&v173 + 1))
  {
    if (swift_dynamicCast())
    {
      v136 = v170 != 0;
      goto LABEL_47;
    }
  }

  else
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
  }

  v136 = 0;
LABEL_47:
  *&v174 = 0x797469726F697270;
  *(&v174 + 1) = 0xE800000000000000;
  v76 = [v169 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v76)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v174 = v172;
  v175 = v173;
  if (*(&v173 + 1))
  {
    if (swift_dynamicCast())
    {
      v77 = v170;
      goto LABEL_55;
    }
  }

  else
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
  }

  v77 = 0;
LABEL_55:
  *&v172 = 0x65746144657564;
  *(&v172 + 1) = 0xE700000000000000;
  v78 = [v169 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v78)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v174 = v172;
  v175 = v173;
  if (*(&v173 + 1))
  {
    v79 = v165;
    v80 = swift_dynamicCast() ^ 1;
    v81 = v79;
    v71 = &selRef_setPublicLinkLastModifiedDate_;
  }

  else
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
    v81 = v165;
    v80 = 1;
  }

  v140(v81, v80, 1, v66);
  *&v174 = 0x7961446C6C61;
  *(&v174 + 1) = 0xE600000000000000;
  v82 = [v169 v71[19]];
  swift_unknownObjectRelease();
  if (v82)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v174 = v172;
  v175 = v173;
  if (*(&v173 + 1))
  {
    if (swift_dynamicCast())
    {
      v83 = v170;
      goto LABEL_69;
    }
  }

  else
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
  }

  v83 = 0;
LABEL_69:
  *&v174 = 0x656E6F5A656D6974;
  *(&v174 + 1) = 0xE800000000000000;
  v84 = [v169 v71[19]];
  swift_unknownObjectRelease();
  if (v84)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v156 = v77;
  v174 = v172;
  v175 = v173;
  if (*(&v173 + 1))
  {
    if (swift_dynamicCast())
    {
      v85 = v171;
    }

    else
    {
      v85 = 0;
    }
  }

  else
  {
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
    v85 = 0;
  }

  sub_100010364(v165, v73, &unk_100938850, qword_100795AE0);
  v86 = v168;
  if (v142(v73, 1, v168) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v167 + 8))(v73, v86);
  }

  v88 = v157;
  if (v85)
  {
    v89 = String._bridgeToObjectiveC()();
  }

  else
  {
    v89 = 0;
  }

  v90 = v167;
  v91 = v161;
  v92 = [objc_opt_self() dueDateComponentsWithDueDate:isa isAllDay:v83 timeZoneName:v89];

  if (v92)
  {
    v93 = v152;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = v149;
    static Calendar.current.getter();
    DateComponents.dayOfWeek(with:)();
    v96 = v95;
    (*(v150 + 8))(v94, v151);
    if (v96)
    {
      type metadata accessor for REMSuggestedWeekDay();
      static REMSuggestedWeekDay.nilValue.getter();
    }

    v97 = type metadata accessor for REMSuggestedWeekDay();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();
    v100 = REMSuggestedWeekDay.init(_:)();
    (v153[1])(v93, v154);
  }

  else
  {
    v101 = type metadata accessor for REMSuggestedWeekDay();
    static REMSuggestedWeekDay.nilValue.getter();
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    swift_allocObject();
    v100 = REMSuggestedWeekDay.init(_:)();
  }

  type metadata accessor for ClassificationLabel();
  v154 = v100;

  static ClassificationLabel.nilLabel.getter();
  v104 = type metadata accessor for REMSuggestedContact();
  v105 = *(v104 + 48);
  v106 = *(v104 + 52);
  swift_allocObject();
  v157 = REMSuggestedContact.init(stringLiteral:)();
  strcpy(&v172, "contactHandles");
  HIBYTE(v172) = -18;
  v107 = [v169 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v107)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v172 = 0u;
    v173 = 0u;
  }

  v108 = v146;
  v109 = v163;
  v174 = v172;
  v175 = v173;
  if (!*(&v173 + 1))
  {
    v88 = v91;
    sub_1000050A4(&v174, &qword_100939ED0, &qword_100791B10);
    goto LABEL_106;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v88 = v91;
    goto LABEL_106;
  }

  v111 = v170;
  v110 = v171;
  sub_100029344(v170, v171);
  v112 = Data._bridgeToObjectiveC()().super.isa;
  v113 = [objc_opt_self() representationFromData:v112];

  sub_10001BBA0(v111, v110);
  if (!v113)
  {
    v88 = v91;
    sub_10001BBA0(v111, v110);
LABEL_102:
    v108 = v146;
    goto LABEL_105;
  }

  v114 = *(v104 + 48);
  v115 = *(v104 + 52);
  swift_allocObject();
  v116 = v113;
  v117 = v162;
  v118 = REMSuggestedContact.init(_:)();
  if (!v117)
  {
    v127 = v118;
    v88 = v91;

    sub_10001BBA0(v111, v110);

    v157 = v127;
    goto LABEL_102;
  }

  v169 = v116;
  v162 = v117;
  if (qword_100935E70 != -1)
  {
    goto LABEL_109;
  }

  while (1)
  {
    v119 = type metadata accessor for Logger();
    sub_100006654(v119, qword_1009411C0);
    v108 = v146;
    v147(v88, v176, v146);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&v174 = v153;
      *v122 = 136315138;
      sub_1002F05EC(&qword_10093F2A0, &type metadata accessor for UUID);
      v123 = dispatch thunk of CustomStringConvertible.description.getter();
      v125 = v124;
      (*(v145 + 8))(v88, v108);
      v126 = sub_10000668C(v123, v125, &v174);

      *(v122 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v120, v121, "Invalid REMContactRepresentation when initializing REMSuggestedContact {reminderIdentifier: %s}", v122, 0xCu);
      sub_10000607C(v153);

      sub_10001BBA0(v111, v110);
    }

    else
    {
      sub_10001BBA0(v111, v110);

      (*(v145 + 8))(v88, v108);
    }

    v90 = v167;
    v88 = v161;
LABEL_105:
    v109 = v163;
LABEL_106:
    v147(v109, v176, v108);
    v128 = v90;
    v129 = *(v90 + 16);
    v130 = v166;
    v111 = v168;
    v129(v88, v166, v168);
    type metadata accessor for REMSuggestedLocation();
    v110 = v158;
    (*(v159 + 104))(v158, enum case for REMSuggestedLocation.LocationValue.notAvailable(_:), v160);
    REMSuggestedLocation.__allocating_init(_:)();
    if ((v156 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_109:
    swift_once();
  }

  v131 = type metadata accessor for REMSuggestedAttributeReminderDataSource();
  v132 = *(v131 + 48);
  v133 = *(v131 + 52);
  swift_allocObject();
  ObjCClassFromMetadata = REMSuggestedAttributeReminderDataSource.init(title:reminderIdentifier:creationDate:list:listName:dueDayOfWeek:location:flagged:priority:tags:contact:recurrences:)();

  v134 = *(v145 + 8);
  v134(v164, v108);
  (*(v128 + 8))(v130, v111);
  v134(v176, v108);
  sub_1000050A4(v165, &unk_100938850, qword_100795AE0);
  return ObjCClassFromMetadata;
}

void sub_1002ED45C(unint64_t a1, void *a2)
{
  inited = v2;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v146 = &v131 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v148 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s10PredicatesOMa(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v17 = sub_100043AA8();
  sub_1002F06F8(v16, _s10PredicatesOMa);
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v19 = [swift_getObjCClassFromMetadata() entity];
  [v18 setEntity:v19];

  [v18 setAffectedStores:0];
  [v18 setPredicate:v17];
  [v18 setResultType:2];

  [v18 setFetchBatchSize:a1];
  v20 = (a1 * 5) >> 64;
  v133 = a1;
  if (v20 != (5 * a1) >> 63)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    sub_100026EF4((v20 > 1), v10, 1);
    v21 = v158;
    goto LABEL_8;
  }

  v152 = a2;
  v153 = v2;
  [v18 setFetchLimit:?];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  *&v158 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v21 = v158;
  v147 = v9;
  v141 = v18;
  v145 = v10;
  if ((inited & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v10 = *(inited + 32);
  }

  v22 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v23)
  {
    goto LABEL_149;
  }

  v18 = v22;
  v9 = v23;

  a1 = *(v21 + 16);
  v20 = *(v21 + 24);
  v10 = a1 + 1;
  if (a1 >= v20 >> 1)
  {
    goto LABEL_142;
  }

LABEL_8:
  *(v21 + 16) = v10;
  v24 = v21 + 16 * a1;
  *(v24 + 32) = v18;
  *(v24 + 40) = v9;
  swift_setDeallocating();
  v25 = *(inited + 16);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = v141;
  [v141 setRelationshipKeyPathsForPrefetching:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100796900;
  if (qword_100936050 != -1)
  {
    swift_once();
  }

  v28 = qword_100974E00;
  *(v27 + 32) = qword_100974E00;
  v29 = qword_100936060;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_100974E10;
  *(v27 + 40) = qword_100974E10;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v32 = v31;
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setSortDescriptors:v33];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007A0AF0;
  *(v34 + 32) = swift_getKeyPath();
  v151 = v34 + 32;
  *(v34 + 40) = swift_getKeyPath();
  *(v34 + 48) = swift_getKeyPath();
  *(v34 + 56) = swift_getKeyPath();
  *(v34 + 64) = swift_getKeyPath();
  *(v34 + 72) = swift_getKeyPath();
  *(v34 + 80) = swift_getKeyPath();
  *(v34 + 88) = swift_getKeyPath();
  *(v34 + 96) = swift_getKeyPath();
  *(v34 + 104) = swift_getKeyPath();
  *(v34 + 112) = swift_getKeyPath();
  *(v34 + 120) = swift_getKeyPath();
  *&v158 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 12, 0);
  v35 = 0;
  inited = v158;
  a1 = v34 & 0xC000000000000001;
  v10 = v34 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (a1)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35 >= v20)
      {
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v36 = *(v34 + 8 * v35 + 32);
    }

    v37 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v38)
    {
      *&v154 = 0;
      *(&v154 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v129._object = 0x80000001007EC120;
      v129._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v129);
      v156 = v36;
      goto LABEL_147;
    }

    v39 = v37;
    v40 = v38;
    *(&v155 + 1) = &type metadata for String;

    *&v154 = v39;
    *(&v154 + 1) = v40;
    *&v158 = inited;
    v18 = *(inited + 16);
    v41 = *(inited + 24);
    v9 = (v18 + 1);
    if (v18 >= v41 >> 1)
    {
      sub_100010D04((v41 > 1), v18 + 1, 1);
      inited = v158;
    }

    ++v35;
    *(inited + 16) = v9;
    sub_100005EE0(&v154, (inited + 32 * v18 + 32));
  }

  while (v35 != 12);
  swift_setDeallocating();
  v42 = *(v34 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v43 = Array._bridgeToObjectiveC()().super.isa;

  v44 = v141;
  [v141 setPropertiesToFetch:v43];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v45 = v153;
  v46 = NSManagedObjectContext.fetch<A>(_:)();
  if (v45)
  {

    return;
  }

  v18 = v46;
  v135 = 0;
  v160 = _swiftEmptyArrayStorage;
  if (!(v46 >> 62))
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_145:
  v48 = _CocoaArrayWrapper.endIndex.getter();
LABEL_25:
  a1 = v146;
  v10 = v147;
  if (v48)
  {
    v49 = 0;
    v151 = v18 & 0xC000000000000001;
    v140 = v18 & 0xFFFFFFFFFFFFFF8;
    v139 = v18 + 32;
    v150 = (v145 + 56);
    v144 = (v145 + 48);
    v137 = (v145 + 32);
    v136 = (v145 + 8);
    v132 = _swiftEmptyArrayStorage;
    v138 = _swiftEmptySetSingleton;
    *&v47 = 136446466;
    v142 = v47;
    *&v47 = 136315138;
    v131 = v47;
    v143 = v18;
    v149 = v48;
    while (1)
    {
      if (v151)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v140 + 16);
        if (v49 >= v20)
        {
          goto LABEL_140;
        }

        v54 = *(v139 + 8 * v49);
      }

      inited = v54;
      v55 = __OFADD__(v49++, 1);
      if (v55)
      {
        goto LABEL_139;
      }

      *&v158 = 0x6564692E7473696CLL;
      *(&v158 + 1) = 0xEF7265696669746ELL;
      v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v56 = [inited __swift_objectForKeyedSubscript:v9];
      swift_unknownObjectRelease();
      if (v56)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v158 = 0u;
        v159 = 0u;
      }

      v154 = v158;
      v155 = v159;
      if (!*(&v159 + 1))
      {
        break;
      }

      v57 = swift_dynamicCast();
      (*v150)(a1, v57 ^ 1u, 1, v10);
      if ((*v144)(a1, 1, v10) == 1)
      {
LABEL_43:
        sub_1000050A4(a1, &unk_100939D90, "8\n\r");
        if (qword_100935E70 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_100006654(v59, qword_1009411C0);
        inited = inited;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v60, v61))
        {

          goto LABEL_132;
        }

        v62 = swift_slowAlloc();
        *&v158 = swift_slowAlloc();
        *v62 = v142;
        *(v62 + 4) = sub_10000668C(0x6564692E7473696CLL, 0xEF7265696669746ELL, &v158);
        *(v62 + 12) = 2082;
        *&v154 = 0x6564692E7473696CLL;
        *(&v154 + 1) = 0xEF7265696669746ELL;
        v63 = [inited __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        v145 = v49;
        if (v63)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v154 = 0u;
          v155 = 0u;
        }

        sub_1000F5104(&qword_100939ED0, &qword_100791B10);
        v50 = Optional.descriptionOrNil.getter();
        v9 = v51;
        sub_1000050A4(&v154, &qword_100939ED0, &qword_100791B10);
        v52 = sub_10000668C(v50, v9, &v158);

        *(v62 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v60, v61, "Unexpected nil %{public}s in fetched reminder dictionary {value: %{public}s}", v62, 0x16u);
        swift_arrayDestroy();

        v10 = v147;
        v18 = v143;
        v53 = v149;
        v49 = v145;
LABEL_29:
        a1 = v146;
        if (v49 == v53)
        {
          goto LABEL_136;
        }
      }

      else
      {
        (*v137)(v148, a1, v10);
        *&v158 = 0x656C746974;
        *(&v158 + 1) = 0xE500000000000000;
        v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v58 = [inited __swift_objectForKeyedSubscript:v9];
        swift_unknownObjectRelease();
        if (v58)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v158 = 0u;
          v159 = 0u;
        }

        v154 = v158;
        v155 = v159;
        if (!*(&v159 + 1))
        {
          sub_1000050A4(&v154, &qword_100939ED0, &qword_100791B10);
LABEL_70:
          if (qword_100935E70 != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for Logger();
          sub_100006654(v81, qword_1009411C0);
          inited = inited;
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v82, v83))
          {

            (*v136)(v148, v10);
            goto LABEL_132;
          }

          v84 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          *&v158 = v153;
          *v84 = v142;
          *(v84 + 4) = sub_10000668C(0x656C746974, 0xE500000000000000, &v158);
          *(v84 + 12) = 2080;
          *&v154 = 0x656C746974;
          *(&v154 + 1) = 0xE500000000000000;
          v85 = [inited __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v85)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v154 = 0u;
            v155 = 0u;
          }

          sub_1000F5104(&qword_100939ED0, &qword_100791B10);
          v100 = Optional.descriptionOrNil.getter();
          v9 = v101;
          sub_1000050A4(&v154, &qword_100939ED0, &qword_100791B10);
          v102 = sub_10000668C(v100, v9, &v158);

          *(v84 + 14) = v102;
          _os_log_impl(&_mh_execute_header, v82, v83, "Unexpected nil %{public}s in fetched reminder dictionary {value: %s}", v84, 0x16u);
          swift_arrayDestroy();

          v10 = v147;
          (*v136)(v148, v147);
          v18 = v143;
          v53 = v149;
          goto LABEL_29;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_70;
        }

        v134 = inited;
        v65 = v156;
        v64 = v157;
        v18 = UUID.uuidString.getter();
        v67 = v66;
        v68 = v138;
        v69 = v138[2];
        v153 = v64;
        v152 = v65;
        if (v69)
        {
          v70 = v138[5];
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          v71 = Hasher._finalize()();
          v72 = v68 + 7;
          v73 = -1 << *(v68 + 32);
          inited = v71 & ~v73;
          if ((*(v68 + ((inited >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> inited))
          {
            v74 = ~v73;
            v75 = v68[6];
            while (1)
            {
              v76 = (v75 + 32 * inited);
              v77 = v76[1];
              if (v77)
              {
                v9 = v76[2];
                v78 = v76[3];
                v79 = *v76 == v18 && v77 == v67;
                if (v79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  if (v78)
                  {
                    v80 = v9 == v152 && v78 == v153;
                    if (v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      break;
                    }
                  }
                }
              }

              inited = (inited + 1) & v74;
              if (((*(v72 + ((inited >> 3) & 0xFFFFFFFFFFFFFF8)) >> inited) & 1) == 0)
              {
                goto LABEL_76;
              }
            }

            v10 = v147;
            (*v136)(v148, v147);

            a1 = v146;
            goto LABEL_131;
          }
        }

LABEL_76:
        v9 = v138;
        v86 = v138[5];
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v87 = Hasher._finalize()();
        inited = (v9 + 7);
        v88 = -1 << *(v9 + 32);
        v89 = v87 & ~v88;
        if ((*(v9 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v89))
        {
          v90 = ~v88;
          v91 = v9[6];
          while (1)
          {
            v92 = (v91 + 32 * v89);
            v93 = v92[1];
            if (v93)
            {
              v9 = v92[2];
              v94 = v92[3];
              v95 = *v92 == v18 && v93 == v67;
              if (v95 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                if (v94)
                {
                  v96 = v9 == v152 && v94 == v153;
                  if (v96 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }
                }
              }
            }

            v89 = (v89 + 1) & v90;
            if (((*(inited + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
            {
              goto LABEL_92;
            }
          }
        }

        else
        {
LABEL_92:
          v97 = v138;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v158 = v97;
          v99 = v97[2];
          if (v97[3] <= v99)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_100381450(v99 + 1);
            }

            else
            {
              sub_10038BF00(v99 + 1);
            }

            v9 = v158;
            v103 = *(v158 + 40);
            Hasher.init(_seed:)();
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            v104 = Hasher._finalize()();
            inited = (v9 + 7);
            v105 = -1 << *(v9 + 32);
            v89 = v104 & ~v105;
            if ((*(v9 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v89))
            {
              v106 = ~v105;
              v10 = v9[6];
              do
              {
                v107 = (v10 + 32 * v89);
                v108 = v107[1];
                if (v108)
                {
                  v9 = v107[2];
                  v109 = v107[3];
                  v110 = *v107 == v18 && v108 == v67;
                  if (v110 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    if (v109)
                    {
                      v111 = v9 == v152 && v109 == v153;
                      if (v111 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        while (1)
                        {
                          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                          __break(1u);
LABEL_149:
                          *&v154 = 0;
                          *(&v154 + 1) = 0xE000000000000000;
                          _StringGuts.grow(_:)(46);
                          v130._object = 0x80000001007EC120;
                          v130._countAndFlagsBits = 0xD00000000000002CLL;
                          String.append(_:)(v130);
                          v156 = v10;
LABEL_147:
                          sub_1000F5104(&unk_100939F10, &qword_100797F30);
                          _print_unlocked<A, B>(_:_:)();
                          _assertionFailure(_:_:file:line:flags:)();
                          __break(1u);
                        }
                      }
                    }
                  }
                }

                v89 = (v89 + 1) & v106;
              }

              while (((*(inited + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) != 0);
            }
          }

          else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10019ABF4();
          }

          v112 = v158;
          *(v158 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v89;
          v113 = (v112[6] + 32 * v89);
          *v113 = v18;
          v113[1] = v67;
          v114 = v153;
          v113[2] = v152;
          v113[3] = v114;
          v115 = v112[2];
          v55 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v55)
          {
            __break(1u);
            goto LABEL_144;
          }

          v138 = v112;
          v112[2] = v116;
        }

        inited = v134;
        v117 = v135;
        v118 = sub_1002EBA94(v134);
        if (v117)
        {
          a1 = v146;
          v10 = v147;
          if (qword_100935E70 != -1)
          {
            swift_once();
          }

          v135 = 0;
          v119 = type metadata accessor for Logger();
          sub_100006654(v119, qword_1009411C0);
          swift_errorRetain();
          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v9 = swift_slowAlloc();
            *&v154 = v9;
            *v122 = v131;
            swift_getErrorValue();
            v123 = Error.rem_errorDescription.getter();
            v125 = sub_10000668C(v123, v124, &v154);
            v153 = v117;
            v126 = v125;

            *(v122 + 4) = v126;
            _os_log_impl(&_mh_execute_header, v120, v121, "failed to convert fetched reminder dictionary {error: %s}", v122, 0xCu);
            sub_10000607C(v9);

            v10 = v147;
          }

          else
          {
          }

          (*v136)(v148, v10);
LABEL_131:
          v18 = v143;
          goto LABEL_132;
        }

        v135 = 0;
        a1 = v146;
        v10 = v147;
        v18 = v143;
        v9 = v118;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v128 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a1 = v146;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v132 = v160;
        if (v160 >> 62)
        {
          v127 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v127 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        (*v136)(v148, v10);
        if (v127 >= v133)
        {

          goto LABEL_137;
        }

LABEL_132:
        if (v49 == v149)
        {
          goto LABEL_136;
        }
      }
    }

    sub_1000050A4(&v154, &qword_100939ED0, &qword_100791B10);
    (*v150)(a1, 1, 1, v10);
    goto LABEL_43;
  }

  v138 = _swiftEmptySetSingleton;
  v132 = _swiftEmptyArrayStorage;
LABEL_136:

LABEL_137:
}

uint64_t sub_1002EED40(void *a1)
{
  v2 = type metadata accessor for REMSuggestedLocation.LocationValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  strcpy(&v24, "contactLabel");
  BYTE13(v24) = 0;
  HIWORD(v24) = -5120;
  v7 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1))
  {
    v8 = swift_dynamicCast();
    v9 = v20;
    if (!v8)
    {
      v9 = 0;
    }

    v19 = v9;
    if (v8)
    {
      v10 = v21;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_1000050A4(&v24, &qword_100939ED0, &qword_100791B10);
    v19 = 0;
    v10 = 0;
  }

  *&v24 = 0x656C746974;
  *(&v24 + 1) = 0xE500000000000000;
  v11 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = v21;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_1000050A4(&v24, &qword_100939ED0, &qword_100791B10);
    v12 = 0;
  }

  *&v22 = 0x74696D69786F7270;
  *(&v22 + 1) = 0xE900000000000079;
  v13 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast())
    {
      v14 = v20;
      if (!v10)
      {
        goto LABEL_25;
      }

LABEL_29:

      goto LABEL_30;
    }
  }

  else
  {
    sub_1000050A4(&v24, &qword_100939ED0, &qword_100791B10);
  }

  v14 = 0;
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (!v12)
  {
    type metadata accessor for REMSuggestedLocation();
    v15 = &enum case for REMSuggestedLocation.LocationValue.notAvailable(_:);
    goto LABEL_35;
  }

LABEL_30:
  if (String.containsNameOfHomeLocation.getter())
  {

    type metadata accessor for REMSuggestedLocation();
    *v6 = v14;
    v15 = &enum case for REMSuggestedLocation.LocationValue.home(_:);
  }

  else
  {
    v16 = String.containsNameOfWorkLocation.getter();

    type metadata accessor for REMSuggestedLocation();
    if (v16)
    {
      *v6 = v14;
      v15 = &enum case for REMSuggestedLocation.LocationValue.work(_:);
    }

    else
    {
      v15 = &enum case for REMSuggestedLocation.LocationValue.other(_:);
    }
  }

LABEL_35:
  (*(v3 + 104))(v6, *v15, v2);
  return REMSuggestedLocation.__allocating_init(_:)();
}

void sub_1002EF15C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v152 = type metadata accessor for REMSuggestedLocation.LocationValue();
  v140 = *(v152 - 8);
  v6 = v140[8];
  __chkstk_darwin(v152);
  v153 = &v120[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v148 = &v120[-v9];
  __chkstk_darwin(v10);
  v143 = &v120[-v11];
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v120[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v145 = &v120[-v17];
  __chkstk_darwin(v18);
  v20 = &v120[-v19];
  __chkstk_darwin(v21);
  v147 = &v120[-v22];
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v155 = v23;
  v156 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v151 = &v120[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v120[-v28];
  v141 = a1 >> 62;
  if (a1 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = _swiftEmptyArrayStorage;
  v146 = v15;
  v144 = v20;
  if (v30)
  {
    *&v161[0] = _swiftEmptyArrayStorage;
    sub_100253258(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v149 = v2;
    v150 = a2;
    v32 = 0;
    v31 = *&v161[0];
    v154 = a1 & 0xC000000000000001;
    do
    {
      if (v154)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(a1 + 8 * v32 + 32);
      }

      dispatch thunk of REMSuggestedAttributeReminderDataSource.reminderIdentifier.getter();

      *&v161[0] = v31;
      v35 = v31[2];
      v34 = v31[3];
      if (v35 >= v34 >> 1)
      {
        sub_100253258(v34 > 1, v35 + 1, 1);
        v31 = *&v161[0];
      }

      ++v32;
      v31[2] = v35 + 1;
      (*(v156 + 32))(v31 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v35, v29, v155);
    }

    while (v30 != v32);
    v3 = v149;
    a2 = v150;
  }

  v36 = sub_1003FC96C(v31);
  if (v3)
  {

    return;
  }

  v37 = v36;
  v142 = a1;
  v38 = a2;

  v40 = sub_1001A59A4(v39);

  *&v161[0] = v37;

  sub_1000F5104(&qword_1009412A0, &unk_1007A0B90);
  sub_10000CB48(&qword_1009412A8, &qword_1009412A0, &unk_1007A0B90);
  sub_1002F05EC(&qword_10093B410, &type metadata accessor for UUID);
  v41 = Sequence.compactMapToSet<A>(_:)();

  if (*(v41 + 16) <= v40[2] >> 3)
  {
    goto LABEL_19;
  }

  v42 = sub_10019CB14(v41, v40);

  v40 = v42[2];
  if (v40)
  {
    while (1)
    {
      v43 = sub_100368A1C(v40, 0);
      v44 = sub_1002799DC(v161, &v43[(*(v156 + 80) + 32) & ~*(v156 + 80)], v40, v42);
      sub_10001B860();
      if (v44 == v40)
      {
        break;
      }

      __break(1u);
LABEL_19:
      *&v161[0] = v40;
      sub_10019BC20(v41);

      v42 = *&v161[0];
      v40 = *(*&v161[0] + 16);
      if (!v40)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:

    v43 = _swiftEmptyArrayStorage;
  }

  v45 = v38;
  v46 = sub_1003FD108(v43);
  v47 = v142;
  v138 = v46;

  v131 = sub_100348948(v31, v45);
  v48 = 0;
  v129 = sub_10047DEDC(v31, v45);

  if (v141)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v49)
  {
LABEL_112:

    return;
  }

  v50 = 0;
  v127 = v47 & 0xC000000000000001;
  v123 = v47 & 0xFFFFFFFFFFFFFF8;
  v122 = v47 + 32;
  v133 = (v156 + 16);
  v137 = (v156 + 56);
  v121 = enum case for REMSuggestedLocation.LocationValue.vehicle(_:);
  v51 = (v140 + 13);
  LODWORD(v141) = enum case for REMSuggestedLocation.LocationValue.notAvailable(_:);
  ++v140;
  v125 = (v156 + 8);
  v126 = v51;
  v139 = v51 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v130 = v37;
  v124 = v49;
  while (1)
  {
    if (v127)
    {
      v156 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v50 >= *(v123 + 16))
      {
        goto LABEL_121;
      }

      v156 = *(v122 + 8 * v50);
    }

    v154 = v48;
    v128 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_120;
    }

    v52 = v151;
    dispatch thunk of REMSuggestedAttributeReminderDataSource.reminderIdentifier.getter();
    v53 = v147;
    v54 = v155;
    v132 = *v133;
    v132(v147, v52, v155);
    v136 = *v137;
    (v136)(v53, 0, 1, v54);
    v55 = v130;
    if (*(v130 + 16) && (v56 = sub_1003645D8(v53), v53 = v147, (v57 & 1) != 0))
    {
      v58 = *(*(v55 + 56) + 8 * v56);

      sub_1000050A4(v53, &unk_100939D90, "8\n\r");

      type metadata accessor for REMSuggestedLocation();
      v59 = *v126;
      (*v126)(v143, v121, v152);
      REMSuggestedLocation.__allocating_init(_:)();
      dispatch thunk of REMSuggestedAttributeReminderDataSource.location.setter();
    }

    else
    {
      sub_1000050A4(v53, &unk_100939D90, "8\n\r");
      v59 = *v126;
    }

    (v59)(v148, v141, v152);
    dispatch thunk of REMSuggestedAttributeReminderDataSource.location.getter();
    v60 = REMSuggestedLocation.locationValueDescription.getter();
    v62 = v61;

    if (v60 == REMSuggestedLocation.LocationValue.description.getter() && v62 == v63)
    {
      v64 = 1;
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v150 = *v140;
    (v150)(v148, v152);
    if (v64)
    {
      v65 = v144;
      dispatch thunk of REMSuggestedAttributeReminderDataSource.reminderIdentifier.getter();
      (v136)(v65, 0, 1, v155);
      if (!*(v138 + 16) || (v66 = sub_1003645D8(v65), (v67 & 1) == 0))
      {
        sub_1000050A4(v65, &unk_100939D90, "8\n\r");
        goto LABEL_60;
      }

      v68 = *(*(v138 + 56) + 8 * v66);

      sub_1000050A4(v65, &unk_100939D90, "8\n\r");
      v69 = v68;
      v70 = v146;
      if (!(v68 >> 62))
      {
        v71 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v71)
        {
          goto LABEL_46;
        }

        goto LABEL_111;
      }

      v71 = _CocoaArrayWrapper.endIndex.getter();
      v69 = v68;
      if (!v71)
      {
LABEL_111:

        goto LABEL_61;
      }

LABEL_46:
      if (v71 < 1)
      {
        goto LABEL_123;
      }

      v72 = 0;
      v134 = v69 & 0xC000000000000001;
      v149 = v69;
      v135 = v71;
      while (1)
      {
        if (v134)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v73 = *(v69 + 8 * v72 + 32);
        }

        v74 = v73;
        v75 = v152;
        v76 = v59;
        v59(v153, v141);
        dispatch thunk of REMSuggestedAttributeReminderDataSource.location.getter();
        v77 = REMSuggestedLocation.locationValueDescription.getter();
        v79 = v78;

        if (v77 == REMSuggestedLocation.LocationValue.description.getter() && v79 == v80)
        {

          (v150)(v153, v75);
        }

        else
        {
          v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (v150)(v153, v75);
          if ((v81 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        sub_1002EED40(v74);
        dispatch thunk of REMSuggestedAttributeReminderDataSource.location.setter();
LABEL_50:
        v72 = (v72 + 1);

        v59 = v76;
        v69 = v149;
        if (v135 == v72)
        {

          break;
        }
      }
    }

LABEL_60:
    v70 = v146;
LABEL_61:
    v82 = v145;
    v83 = v155;
    v132(v145, v151, v155);
    (v136)(v82, 0, 1, v83);
    v84 = v131;
    if (!*(v131 + 16) || (v85 = sub_1003645D8(v82), (v86 & 1) == 0))
    {
      sub_1000050A4(v82, &unk_100939D90, "8\n\r");
      goto LABEL_91;
    }

    v87 = *(*(v84 + 56) + 8 * v85);

    sub_1000050A4(v82, &unk_100939D90, "8\n\r");
    v162 = _swiftEmptyArrayStorage;
    if (!(v87 >> 62))
    {
      v150 = v87 & 0xFFFFFFFFFFFFFF8;
      v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v88)
      {
        goto LABEL_65;
      }

      goto LABEL_89;
    }

    v150 = v87 & 0xFFFFFFFFFFFFFF8;
    v88 = _CocoaArrayWrapper.endIndex.getter();
    if (v88)
    {
LABEL_65:
      v89 = 0;
      v149 = v87 & 0xC000000000000001;
      v135 = _swiftEmptyArrayStorage;
LABEL_66:
      v90 = v89;
      while (1)
      {
        if (v149)
        {
          v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v90 >= *(v150 + 16))
          {
            goto LABEL_117;
          }

          v91 = *(v87 + 8 * v90 + 32);
        }

        v92 = v91;
        v89 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_116;
        }

        *&v159 = 1701667182;
        *(&v159 + 1) = 0xE400000000000000;
        v93 = [v91 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v93)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {

          v159 = 0u;
          v160 = 0u;
        }

        v161[0] = v159;
        v161[1] = v160;
        if (*(&v160 + 1))
        {
          if (swift_dynamicCast())
          {
            v94 = v157;
            v95 = HIBYTE(v158) & 0xF;
            if ((v158 & 0x2000000000000000) == 0)
            {
              v95 = v157 & 0xFFFFFFFFFFFFLL;
            }

            if (v95)
            {
              v96 = v158;
              type metadata accessor for REMSuggestedAttributesHashtag();
              v97 = swift_allocObject();
              *(v97 + 16) = v94;
              *(v97 + 24) = v96;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v98 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v135 = v162;
              if (v89 != v88)
              {
                goto LABEL_66;
              }

              goto LABEL_90;
            }
          }
        }

        else
        {
          sub_1000050A4(v161, &qword_100939ED0, &qword_100791B10);
        }

        ++v90;
        if (v89 == v88)
        {
          goto LABEL_90;
        }
      }
    }

LABEL_89:
    v135 = _swiftEmptyArrayStorage;
LABEL_90:

    *&v161[0] = v135;
    sub_1000F5104(&qword_1009412B0, qword_1007A0BA0);
    sub_10000CB48(&qword_1009412B8, &qword_1009412B0, qword_1007A0BA0);
    sub_1002F05EC(&qword_1009412C0, type metadata accessor for REMSuggestedAttributesHashtag);
    Sequence<>.canonicalTagSet.getter();

    dispatch thunk of REMSuggestedAttributeReminderDataSource.tags.setter();
    v70 = v146;
LABEL_91:
    v99 = v155;
    v132(v70, v151, v155);
    (v136)(v70, 0, 1, v99);
    if (*(v129 + 16))
    {
      v100 = sub_1003645D8(v70);
      if (v101)
      {
        break;
      }
    }

    sub_1000050A4(v70, &unk_100939D90, "8\n\r");
LABEL_27:
    (*v125)(v151, v155);
    v50 = v128;
    v48 = v154;
    if (v128 == v124)
    {
      goto LABEL_112;
    }
  }

  v102 = *(*(v129 + 56) + 8 * v100);

  sub_1000050A4(v70, &unk_100939D90, "8\n\r");
  if (!(v102 >> 62))
  {
    v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v103)
    {
      goto LABEL_95;
    }

    goto LABEL_108;
  }

  v103 = _CocoaArrayWrapper.endIndex.getter();
  if (!v103)
  {
LABEL_108:

    v105 = _swiftEmptyArrayStorage;
LABEL_109:
    sub_1001A5660(v105);

    dispatch thunk of REMSuggestedAttributeReminderDataSource.recurrences.setter();

    goto LABEL_27;
  }

LABEL_95:
  *&v161[0] = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v103 & ~(v103 >> 63), 0);
  if ((v103 & 0x8000000000000000) == 0)
  {
    v104 = 0;
    v105 = *&v161[0];
    v150 = v102 & 0xC000000000000001;
    v136 = v102 & 0xFFFFFFFFFFFFFF8;
    v106 = v154;
    v149 = v102;
    while (1)
    {
      v107 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v150)
      {
        v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v104 >= *(v136 + 16))
        {
          goto LABEL_119;
        }

        v108 = *(v102 + 8 * v104 + 32);
      }

      v109 = v108;
      v110 = sub_1003BE0EC(v108);
      v154 = v106;
      if (v106)
      {
        (*v125)(v151, v155);

        return;
      }

      v111 = v110;
      v112 = v103;
      v113 = [v110 iCalendarDescription];

      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      *&v161[0] = v105;
      v118 = v105[2];
      v117 = v105[3];
      if (v118 >= v117 >> 1)
      {
        sub_100026EF4((v117 > 1), v118 + 1, 1);
        v105 = *&v161[0];
      }

      v105[2] = v118 + 1;
      v119 = &v105[2 * v118];
      v119[4] = v114;
      v119[5] = v116;
      ++v104;
      v103 = v112;
      v106 = v154;
      v102 = v149;
      if (v107 == v112)
      {

        goto LABEL_109;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
  }

  __break(1u);
LABEL_123:
  __break(1u);
}

uint64_t sub_1002F048C(unint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_100935E70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_1009411C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetching ReminderDataSource for training batch by batch {batchsize: %ld}", v9, 0xCu);
  }

  v10 = objc_autoreleasePoolPush();
  sub_1002ED45C(a1, a2);
  if (!v2)
  {
    sub_1002EF15C(v11, a2);
    v3 = v13;
  }

  objc_autoreleasePoolPop(v10);
  return v3;
}

uint64_t sub_1002F05EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TrainingContext()
{
  result = qword_100941458;
  if (!qword_100941458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002F06A4()
{
  result = qword_100941338;
  if (!qword_100941338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941338);
  }

  return result;
}

uint64_t sub_1002F06F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1002F0774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v4 = *(i - 3);
    v5 = *(i - 2);
    v7 = *(i - 1);
    v6 = *i;
    swift_bridgeObjectRetain_n();

    v9 = sub_100005F4C(v7, v6);
    v10 = _swiftEmptyDictionarySingleton[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_10036C2F0(v12, 1);
      v14 = sub_100005F4C(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v9 = v14;
    }

    if (v13)
    {
      v30 = v1;

      v16 = _swiftEmptyDictionarySingleton[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v16;
      *(v16 + 8 * v9) = v17;
      v31 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_100365CC4(0, v17[2] + 1, 1, v17);
        *(v16 + 8 * v9) = v17;
      }

      v20 = v17[2];
      v19 = v17[3];
      v21 = v20 + 1;
      v1 = v30;
      if (v20 >= v19 >> 1)
      {
        v22 = sub_100365CC4((v19 > 1), v20 + 1, 1, v17);
        v21 = v20 + 1;
        v17 = v22;
        *(v29 + 8 * v9) = v22;
      }

      v17[2] = v21;
      v3 = &v17[4 * v20];
      v3[4] = v31;
      v3[5] = v5;
      v3[6] = v7;
      v3[7] = v6;
    }

    else
    {
      sub_1000F5104(&qword_100943E50, &unk_1007A12F0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100791300;
      *(v23 + 32) = v4;
      *(v23 + 40) = v5;
      *(v23 + 48) = v7;
      *(v23 + 56) = v6;
      _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
      v24 = (_swiftEmptyDictionarySingleton[6] + 16 * v9);
      *v24 = v7;
      v24[1] = v6;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v23;
      v25 = _swiftEmptyDictionarySingleton[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      _swiftEmptyDictionarySingleton[2] = v27;
    }

    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1002F09B4()
{
  sub_1000F5104(&qword_100941358, &qword_1007A1078);
  sub_10000CB48(&qword_1009413B8, &qword_100941358, &qword_1007A1078);
  v0 = dispatch thunk of Sequence.underestimatedCount.getter();
  specialized ContiguousArray.reserveCapacity(_:)();

  result = dispatch thunk of Sequence.makeIterator()();
  if (v0 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v0)
  {
    do
    {
      result = dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v4)
      {
        goto LABEL_9;
      }

      REMFilteredTitleEmbedding.vector(for:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v2 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (--v0);
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (v4)
  {
    while (1)
    {
      REMFilteredTitleEmbedding.vector(for:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v3 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1002F0B98(uint64_t a1)
{
  sub_1000F5104(&qword_100941340, &qword_1007A1068);
  sub_10000CB48(&qword_100941370, &qword_100941340, &qword_1007A1068);
  v2 = dispatch thunk of Sequence.underestimatedCount.getter();
  sub_100026EF4(0, v2 & ~(v2 >> 63), 0);

  result = dispatch thunk of Sequence.makeIterator()();
  if (v2 < 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v2)
  {
    do
    {
      result = dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!a1)
      {
        goto LABEL_23;
      }

      v4 = REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)();
      v6 = v5;

      if (v6)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      if (!v6)
      {
        v6 = 0xE000000000000000;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_100026EF4((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v7;
      v10[5] = v6;
    }

    while (--v2);
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (a1)
  {
    while (1)
    {
      v11 = REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)();
      v13 = v12;

      if (v13)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      if (!v13)
      {
        v13 = 0xE000000000000000;
      }

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_100026EF4((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v14;
      v17[5] = v13;
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1002F0DE4(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&qword_100941340, &qword_1007A1068);
  sub_10000CB48(&qword_100941370, &qword_100941340, &qword_1007A1068);
  v4 = dispatch thunk of Sequence.underestimatedCount.getter();
  sub_100026EF4(0, v4 & ~(v4 >> 63), 0);
  v22 = a1;

  result = dispatch thunk of Sequence.makeIterator()();
  if (v4 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  for (i = 0x20676E697373696DLL; v4; a2 = v7)
  {
    result = dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v22)
    {
      goto LABEL_21;
    }

    v7 = a2;
    v8 = RDIntentClusterModel.predict(for:)();
    v10 = v9;

    v11 = i;
    if (v10)
    {
      i = v8;
    }

    else
    {
      v10 = 0xEE00746E65746E69;
    }

    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_100026EF4((v12 > 1), v13 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = i;
    v14[5] = v10;
    --v4;
    i = v11;
  }

  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v22)
    {
      break;
    }

    v15 = RDIntentClusterModel.predict(for:)();
    v17 = v16;

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = i;
    }

    if (!v17)
    {
      v17 = 0xEE00746E65746E69;
    }

    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_100026EF4((v19 > 1), v20 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v20 + 1;
    v21 = &_swiftEmptyArrayStorage[2 * v20];
    v21[4] = v18;
    v21[5] = v17;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_1002F1050()
{
  result = qword_100941360;
  if (!qword_100941360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941360);
  }

  return result;
}

uint64_t sub_1002F10A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1002EB024(a1, v2[4], a2);
}

uint64_t sub_1002F10C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 2u)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a7 - 3 >= 2)
  {
    if (a7 == 5)
    {

      goto LABEL_6;
    }

    if (a7 != 6)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_1002F115C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 2u)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a7 - 3 >= 2)
  {
    if (a7 == 5)
    {

      goto LABEL_6;
    }

    if (a7 != 6)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_1002F11F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1002EB0D8(a1, a2);
}

uint64_t sub_1002F1210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1002EB2B4(a1, 20, 0x5D7473694C3A585BLL, 0xE800000000000000, a2, &REMSuggestedList.description.getter);
}

uint64_t sub_1002F1268@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1002EB1BC(a1, 20, 0x65576575443A565BLL, 0xEE005D7961446B65, a2);
}

uint64_t sub_1002F12AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1002EB2B4(a1, 26, 0x65576575443A585BLL, 0xEE005D7961446B65, a2, &REMSuggestedWeekDay.description.getter);
}

uint64_t sub_1002F1310@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1002EB1BC(a1, 18, 0x7461636F4C3A565BLL, 0xEC0000005D6E6F69, a2);
}

uint64_t sub_1002F1350@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1002EB2B4(a1, 24, 0x7461636F4C3A585BLL, 0xEC0000005D6E6F69, a2, &dispatch thunk of ClassificationLabel.description.getter);
}

uint64_t sub_1002F1410@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1002EB470(a1, a2);
}

unint64_t sub_1002F1430()
{
  result = qword_100944210;
  if (!qword_100944210)
  {
    sub_1000060C8(255, &qword_100939EE0, off_1008D41D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944210);
  }

  return result;
}

uint64_t *sub_1002F14B8(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = *(a2 + v8);
    *(v4 + v8) = v10;
    v11 = *(a2 + v9);
    *(v4 + v9) = v11;
    *(v4 + a3[7]) = *(a2 + a3[7]);
    v12 = v10;
    v13 = v11;
  }

  return v4;
}

uint64_t sub_1002F15AC(uint64_t a1, int *a2)
{
  v4 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a1 + a2[7]);
}

uint64_t sub_1002F1644(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = *(a2 + v8);
  *(a1 + v8) = v10;
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v11 = v9;
  v12 = v10;

  return a1;
}

uint64_t sub_1002F16F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = a3[6];
  v12 = *(a2 + v11);
  v13 = *(a1 + v11);
  *(a1 + v11) = v12;
  v14 = v12;

  v15 = a3[7];
  v16 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  return a1;
}

uint64_t sub_1002F17B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1002F1854(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[6];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[7];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  return a1;
}

void sub_1002F1934()
{
  sub_1002F19DC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1002F19DC()
{
  if (!qword_100941468)
  {
    type metadata accessor for REMSuggestedAttributesTrainer.Parameters();
    v0 = type metadata accessor for PartialOverride();
    if (!v1)
    {
      atomic_store(v0, &qword_100941468);
    }
  }
}

uint64_t _s8KeyTupleVwxx(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

void *_s8KeyTupleVwcp(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *_s8KeyTupleVwca(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;

  return a1;
}

void *_s8KeyTupleVwta(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

uint64_t _s8KeyTupleVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s8KeyTupleVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1002F1C2C()
{
  result = qword_1009414A0;
  if (!qword_1009414A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009414A0);
  }

  return result;
}

uint64_t sub_1002F1C80(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_1002F1CB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009414A8);
  v1 = sub_100006654(v0, qword_1009414A8);
  if (qword_1009364B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975158);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F1D80()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  v8 = *(v1 + 8);
  v8(v4, v0);
  result = 0;
  if (v7 >> 60 != 15)
  {
    sub_1000F5104(&qword_1009414C8, &qword_1007A1558);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = NSDocumentTypeDocumentOption;
    v21 = inited + 32;
    type metadata accessor for DocumentType(0);
    *(inited + 40) = NSHTMLTextDocumentType;
    *(inited + 64) = v11;
    *(inited + 72) = NSCharacterEncodingDocumentOption;
    v12 = NSDocumentTypeDocumentOption;
    v13 = NSHTMLTextDocumentType;
    v14 = NSCharacterEncodingDocumentOption;
    v15 = v7;
    static String.Encoding.utf8.getter();
    v16 = String.Encoding.rawValue.getter();
    v8(v4, v0);
    *(inited + 104) = &type metadata for UInt;
    *(inited + 80) = v16;
    v17 = sub_10038FC0C(inited);
    swift_setDeallocating();
    sub_1000F5104(&qword_100943350, &unk_1007A1560);
    swift_arrayDestroy();
    objc_allocWithZone(NSAttributedString);
    sub_1001CB4B8(v5, v7);
    v18 = sub_1002F243C(v5, v7, v17, 0);
    sub_100031A14(v5, v7);
    if (v18)
    {
      v19 = [v18 string];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100031A14(v5, v15);

      return v20;
    }

    else
    {
      sub_100031A14(v5, v7);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002F2038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = _HashTable.startBucket.getter();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

unint64_t sub_1002F211C(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1002F3658(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F2280@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = _HashTable.startBucket.getter();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_1002F211C(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = _HashTable.startBucket.getter();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_1002F2038(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1002F23A0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

id sub_1002F243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_1002F3610(&qword_100937248, type metadata accessor for DocumentReadingOptionKey);
  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = 0;
  v9 = [v5 initWithData:isa options:v8 documentAttributes:a4 error:&v13];

  if (v9)
  {
    v10 = v13;
  }

  else
  {
    v11 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1002F2584(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for DispatchTime();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002F26CC, 0, 0);
}

uint64_t sub_1002F26CC()
{
  v24 = v0;
  if (qword_100935E78 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[10] = sub_100006654(v5, qword_1009414A8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136380675;
    sub_1002F3610(&qword_1009456F0, &type metadata accessor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000668C(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDPromptInputProcessor: loading URL: %{private}s", v12, 0xCu);
    sub_10000607C(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[6];
  static DispatchTime.now()();
  v0[11] = [objc_opt_self() sharedSession];
  v19 = async function pointer to NSURLSession.data(from:delegate:)[1];
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_1002F2978;
  v21 = v0[2];

  return NSURLSession.data(from:delegate:)(v21, 0);
}

uint64_t sub_1002F2978(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *(*v4 + 96);
  v8 = *(*v4 + 88);
  v11 = *v4;
  v6[13] = a1;
  v6[14] = a2;
  v6[15] = v3;

  if (v3)
  {
    v9 = sub_1002F2F00;
  }

  else
  {

    v9 = sub_1002F2ABC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002F2ABC()
{
  v42 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[3];
  static String.Encoding.utf8.getter();
  v4 = String.init(data:encoding:)();
  if (!v5)
  {
    v17 = v0[13];
    v16 = v0[14];
    sub_1002F35BC();
    swift_allocError();
    *v18 = 0;
LABEL_10:
    swift_willThrow();
    v28 = v17;
    v29 = v16;
    goto LABEL_11;
  }

  v6 = v4;
  v7 = v5;
  v8 = v0[10];
  v9 = v0[6];
  static DispatchTime.secondsElapsed(since:)();
  v11 = v10;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41[0] = v15;
    *v14 = 134218499;
    *(v14 + 4) = v11;
    *(v14 + 12) = 2048;
    *(v14 + 14) = String.count.getter();

    *(v14 + 22) = 2081;
    *(v14 + 24) = sub_10000668C(v6, v7, v41);
    _os_log_impl(&_mh_execute_header, v12, v13, "RDPromptInputProcessor: loaded in %f seconds, characterCount: %ld HTMLString: { %{private}s }", v14, 0x20u);
    sub_10000607C(v15);
  }

  else
  {
  }

  v19 = sub_1002F1D80();
  v21 = v20;

  if (!v21)
  {
    v17 = v0[13];
    v16 = v0[14];
    sub_1002F35BC();
    swift_allocError();
    *v27 = 1;
    goto LABEL_10;
  }

  v22 = v0[10];

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41[0] = v26;
    *v25 = 134218243;
    *(v25 + 4) = String.count.getter();

    *(v25 + 12) = 2081;
    *(v25 + 14) = sub_10000668C(v19, v21, v41);
    _os_log_impl(&_mh_execute_header, v23, v24, "RDPromptInputProcessor: trimmedHTML characterCount: %ld trimmedHTMLString: { %{private}s }", v25, 0x16u);
    sub_10000607C(v26);
  }

  else
  {
  }

  v34 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v34 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v36 = v0[13];
  v35 = v0[14];
  if (v34)
  {
    v37 = v0[9];
    v38 = v0[3];
    (*(v0[5] + 8))(v0[6], v0[4]);
    sub_10001BBA0(v36, v35);

    v39 = v0[1];

    return v39(v19, v21);
  }

  sub_1002F35BC();
  swift_allocError();
  *v40 = 2;
  swift_willThrow();
  v28 = v36;
  v29 = v35;
LABEL_11:
  sub_10001BBA0(v28, v29);
  v30 = v0[9];
  v31 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1002F2F00()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002F2F9C(Swift::Int a1, uint64_t a2, unint64_t a3)
{
  v51 = a1;
  v5 = type metadata accessor for DispatchTime();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  Prompt.init(_:)();
  v13 = Prompt.overestimatedTokenCount()();
  v14 = *(v9 + 8);
  v48 = v12;
  v49 = v9 + 8;
  v50 = v8;
  v47 = v14;
  v14(v12, v8);
  if (qword_100935E78 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    v16 = sub_100006654(v15, qword_1009414A8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v17, v18, "RDPromptInputProcessor: Checking if Input string is under token limit, current token count: %ld", v19, 0xCu);
    }

    if (v13 <= v51)
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "RDPromptInputProcessor: Input is under token limit continue with original input.", v27, 2u);
      }

      return a2;
    }

    v40[1] = v16;
    v41 = v5;
    v42 = v13;
    v20 = String.count.getter();
    static DispatchTime.now()();
    v46 = a3;
    if (v20 < 0)
    {
      break;
    }

    v45 = 0;
    v13 = 0;
    v21 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v21 = a2;
    }

    v22 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v5 = v22 | (v21 << 16);
    while (!__OFSUB__(v20, v13))
    {
      v23 = v13 + (v20 - v13) / 2;
      if (__OFADD__(v13, (v20 - v13) / 2))
      {
        goto LABEL_29;
      }

      if (v23 < 0)
      {
        goto LABEL_30;
      }

      String.index(_:offsetBy:limitedBy:)();
      a3 = a2;
      String.subscript.getter();

      static String._fromSubstring(_:)();

      a2 = v48;
      Prompt.init(_:)();
      v24 = Prompt.overestimatedTokenCount()();
      v47(a2, v50);
      if (v24 > v51)
      {
        v20 = v23 - 1;
        v23 = v45;
      }

      else
      {
        v13 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_31;
        }

        v45 = v23;
      }

      a2 = a3;
      if (v20 < v13)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v23 = 0;
LABEL_23:

  sub_1002F23A0(v23);

  a2 = static String._fromSubstring(_:)();
  v29 = v28;

  v30 = v48;
  Prompt.init(_:)();
  v31 = Prompt.overestimatedTokenCount()();
  v47(v30, v50);
  v32 = v44;
  static DispatchTime.secondsElapsed(since:)();
  v34 = v33;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52 = v38;
    *v37 = 134218755;
    *(v37 + 4) = v34;
    *(v37 + 12) = 2048;
    *(v37 + 14) = String.count.getter();

    *(v37 + 22) = 2048;
    *(v37 + 24) = v31;
    *(v37 + 32) = 2081;
    *(v37 + 34) = sub_10000668C(a2, v29, &v52);
    _os_log_impl(&_mh_execute_header, v35, v36, "RDPromptInputProcessor: New string under token limit calculated in %f seconds, characterCount: %ld, token count: %ld string: %{private}s", v37, 0x2Au);
    sub_10000607C(v38);
  }

  else
  {
  }

  (*(v43 + 8))(v32, v41);
  return a2;
}

unint64_t sub_1002F35BC()
{
  result = qword_1009414C0;
  if (!qword_1009414C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009414C0);
  }

  return result;
}

uint64_t sub_1002F3610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002F3658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1002F3678()
{
  result = qword_1009414D0;
  if (!qword_1009414D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009414D0);
  }

  return result;
}

uint64_t sub_1002F36D0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = sub_1000F5104(&qword_10093DB08, &qword_1007A1720);
  v3[2] = v7;
  v8 = *(v7 - 8);
  v3[3] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[4] = v10;
  v11 = swift_task_alloc();
  v3[5] = v11;
  *v11 = v3;
  v11[1] = sub_1002F3820;

  return sub_1002F3C60(v10, a1, a2, v2, v6);
}

uint64_t sub_1002F3820()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002F3B98, 0, 0);
  }

  else
  {
    v4 = async function pointer to GenerativeConfigurationRunnable<>.run(returning:)[1];
    v5 = swift_task_alloc();
    v3[7] = v5;
    v6 = sub_1002F6D58(&qword_10093DB28, 255, &type metadata accessor for TokenGenerator);
    *v5 = v3;
    v5[1] = sub_1002F39E0;
    v7 = v3[4];
    v8 = v3[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v8, v6);
  }
}

uint64_t sub_1002F39E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return _swift_task_switch(sub_1002F3BFC, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_1002F3B98()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002F3BFC()
{
  v1 = v0[8];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002F3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[43] = a4;
  v5[44] = a5;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  v6 = *(*(sub_1000F5104(&qword_10093DB38, &qword_10079B890) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v7 = sub_1000F5104(&qword_10093DB40, &qword_10079B898);
  v5[46] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v9 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[48] = v9;
  v10 = *(v9 - 8);
  v5[49] = v10;
  v11 = *(v10 + 64) + 15;
  v5[50] = swift_task_alloc();
  v12 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v5[51] = v12;
  v13 = *(v12 - 8);
  v5[52] = v13;
  v14 = *(v13 + 64) + 15;
  v5[53] = swift_task_alloc();
  v15 = *(*(sub_1000F5104(&qword_10093DB48, &unk_10079B8A0) - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v16 = type metadata accessor for FunctionIdentifier();
  v5[55] = v16;
  v17 = *(v16 - 8);
  v5[56] = v17;
  v18 = *(v17 + 64) + 15;
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v5[59] = v19;
  v20 = *(v19 - 8);
  v5[60] = v20;
  v21 = *(v20 + 64) + 15;
  v5[61] = swift_task_alloc();
  v22 = *(*(type metadata accessor for StringResponseSanitizer.Guardrails() - 8) + 64) + 15;
  v5[62] = swift_task_alloc();
  v23 = type metadata accessor for StringResponseSanitizer();
  v5[63] = v23;
  v24 = *(v23 - 8);
  v5[64] = v24;
  v25 = *(v24 + 64) + 15;
  v5[65] = swift_task_alloc();
  v26 = *(*(type metadata accessor for SensitiveContentSettings() - 8) + 64) + 15;
  v5[66] = swift_task_alloc();
  v27 = *(*(type metadata accessor for StringRenderedPromptSanitizer.Guardrails() - 8) + 64) + 15;
  v5[67] = swift_task_alloc();
  v28 = type metadata accessor for StringRenderedPromptSanitizer();
  v5[68] = v28;
  v29 = *(v28 - 8);
  v5[69] = v29;
  v30 = *(v29 + 64) + 15;
  v5[70] = swift_task_alloc();
  v31 = type metadata accessor for ChatMessagesPrompt();
  v5[71] = v31;
  v32 = *(v31 - 8);
  v5[72] = v32;
  v33 = *(v32 + 64) + 15;
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();

  return _swift_task_switch(sub_1002F40BC, 0, 0);
}

uint64_t sub_1002F40BC()
{
  v33 = *(v0 + 616);
  v29 = *(v0 + 608);
  v26 = *(v0 + 600);
  v1 = *(v0 + 584);
  v20 = *(v0 + 592);
  v36 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v21 = *(v0 + 552);
  v22 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v24 = *(v0 + 520);
  v25 = *(v0 + 512);
  v27 = *(v0 + 504);
  v23 = *(v0 + 496);
  v32 = *(v0 + 488);
  v30 = *(v0 + 480);
  v31 = *(v0 + 472);
  v35 = *(v0 + 464);
  v34 = *(v0 + 432);
  v19 = *(v0 + 328);
  v6 = *(v0 + 352);
  v28 = *(v0 + 344);
  v7 = swift_task_alloc();
  *(v7 + 16) = v19;
  *(v7 + 32) = v6;
  ChatMessagesPrompt.init(_:)();

  *(v0 + 624) = sub_1000F5104(&qword_10093DB60, &qword_10079B8B8);
  v8 = *(type metadata accessor for SensitiveContentSettings.Sanitizer() - 8);
  *(v0 + 632) = *(v8 + 72);
  *(v0 + 720) = *(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringRenderedPromptSanitizer.init(guardrails:)();
  *(v0 + 640) = sub_1002F6D58(&qword_10093DB58, 255, &type metadata accessor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v9 = *(v21 + 8);
  *(v0 + 648) = v9;
  *(v0 + 656) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v22);
  v10 = *(v36 + 8);
  *(v0 + 664) = v10;
  *(v0 + 672) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringResponseSanitizer.init(guardrails:)();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v11 = *(v25 + 8);
  *(v0 + 680) = v11;
  *(v0 + 688) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v24, v27);
  v10(v20, v2);
  sub_10038E004(_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();

  v10(v26, v2);
  v12 = *(v28 + 16);
  *(v0 + 696) = v12;
  v13 = OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v30 + 16))(v32, v12 + v13, v31);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v30 + 8))(v32, v31);
  v10(v29, v2);
  v14 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v14 - 8) + 56))(v34, 1, 1, v14);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v15 = async function pointer to static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 704) = v16;
  *v16 = v0;
  v16[1] = sub_1002F45FC;
  v17 = *(v0 + 360);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v17, 0xD00000000000001CLL, 0x80000001007F46A0);
}

uint64_t sub_1002F45FC()
{
  v2 = *(*v1 + 704);
  v5 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = sub_1002F4EA4;
  }

  else
  {
    v3 = sub_1002F4710;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002F4710()
{
  v1 = *(v0 + 360);
  v2 = sub_1000F5104(&qword_10093DB68, &qword_10079B8C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1002F6CB8(v1);
  }

  else
  {
    v45 = *(v0 + 680);
    v47 = *(v0 + 688);
    v59 = *(v0 + 664);
    v61 = *(v0 + 672);
    v36 = *(v0 + 648);
    v37 = *(v0 + 656);
    v29 = *(v0 + 632);
    v31 = *(v0 + 624);
    v51 = *(v0 + 608);
    v53 = *(v0 + 616);
    v55 = *(v0 + 568);
    v57 = *(v0 + 576);
    v34 = *(v0 + 560);
    v35 = *(v0 + 544);
    v32 = *(v0 + 528);
    v33 = *(v0 + 536);
    v39 = *(v0 + 520);
    v41 = *(v0 + 504);
    v38 = *(v0 + 496);
    v70 = *(v0 + 464);
    v24 = *(v0 + 456);
    v25 = *(v0 + 448);
    v26 = *(v0 + 440);
    v64 = *(v0 + 424);
    v49 = *(v0 + 416);
    v3 = *(v0 + 408);
    v66 = *(v0 + 400);
    v28 = (*(v0 + 720) + 32) & ~*(v0 + 720);
    v23 = *(v2 + 48);
    v4 = *(v0 + 392);
    v68 = *(v0 + 384);
    v6 = *(v0 + 368);
    v5 = *(v0 + 376);
    v30 = *(v0 + 336);
    v27 = *(v0 + 328);
    v7 = *(v6 + 48);
    v8 = *(v49 + 32);
    v8(v5, v1, v3);
    v9 = *(v4 + 32);
    v9(v5 + v7, v1 + v23, v68);
    v10 = *(v6 + 48);
    v8(v64, v5, v3);
    v9(v66, v5 + v10, v68);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v25 + 8))(v70, v26);
    (*(v25 + 32))(v70, v24, v26);
    sub_1000F5104(&qword_100941650, &qword_1007A1738);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0x80000001007F46C0;
    *(inited + 48) = 0xD00000000000023ELL;
    *(inited + 56) = 0x80000001007F4100;
    *(inited + 88) = 1954047348;
    *(inited + 96) = 0xE400000000000000;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v27;
    *(inited + 112) = v30;

    sub_10038F2FC(inited);
    swift_setDeallocating();
    sub_1000F5104(&qword_100942F00, &unk_1007A1740);
    swift_arrayDestroy();
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_100791340;
    *(v12 + 32) = 0xD0000000000000BFLL;
    *(v12 + 40) = 0x80000001007F1340;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringRenderedPromptSanitizer.init(guardrails:)();
    *(v12 + 72) = v35;
    sub_1000103CC((v12 + 48));
    static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)();
    v36(v34, v35);
    *(v12 + 80) = 0xD0000000000000B3;
    *(v12 + 88) = 0x80000001007F1400;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringResponseSanitizer.init(guardrails:)();
    *(v12 + 120) = v41;
    sub_1000103CC((v12 + 96));
    static _OverrideConfigurationHelper.responseSanitizer(_:)();
    v45(v39, v41);
    sub_1001F67C8(v12);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    sub_10038F430(_swiftEmptyArrayStorage);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v4 + 8))(v66, v68);
    (*(v49 + 8))(v64, v3);
    v59(v53, v55);
    (*(v57 + 32))(v53, v51, v55);
  }

  v13 = *(v0 + 696);
  v42 = *(v0 + 664);
  v43 = *(v0 + 672);
  v14 = *(v0 + 640);
  v15 = *(v0 + 616);
  v16 = *(v0 + 608);
  v44 = *(v0 + 600);
  v46 = *(v0 + 592);
  v17 = *(v0 + 568);
  v48 = *(v0 + 584);
  v50 = *(v0 + 560);
  v52 = *(v0 + 536);
  v54 = *(v0 + 528);
  v56 = *(v0 + 520);
  v58 = *(v0 + 496);
  v18 = *(v0 + 464);
  v60 = *(v0 + 488);
  v62 = *(v0 + 456);
  v19 = *(v0 + 448);
  v40 = *(v0 + 440);
  v63 = *(v0 + 432);
  v65 = *(v0 + 424);
  v67 = *(v0 + 400);
  v69 = *(v0 + 376);
  v71 = *(v0 + 360);
  v20 = *(v0 + 320);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  *(v0 + 312) = *(v13 + OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v42(v16, v17);
  (*(v19 + 8))(v18, v40);
  v42(v15, v17);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1002F4EA4()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[71];
  v13 = v0[70];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[62];
  v18 = v0[61];
  v19 = v0[57];
  v20 = v0[54];
  v21 = v0[53];
  v9 = v0[50];
  v22 = v0[47];
  v23 = v0[45];
  (*(v0[56] + 8))(v0[58], v0[55]);
  v2(v3, v8);

  v10 = v0[1];
  v11 = v0[89];

  return v10();
}

uint64_t sub_1002F5038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a2;
  v43 = a4;
  v5 = type metadata accessor for User();
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for System();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChatMessagesPrompt();
  v34 = *(v15 - 8);
  v16 = v34;
  v17 = *(v34 + 64);
  __chkstk_darwin(v15);
  v33 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v42 = a3;
  v22 = v35;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v11 + 8))(v14, v10);
  v40 = v36;
  v41 = v37;
  User.init(_:)();
  v37 = v22;
  v23 = v33;
  v24 = v38;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v39 + 8))(v9, v24);
  sub_1000F5104(&qword_10093DB80, &qword_10079B8D8);
  v25 = *(v34 + 72);
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100791340;
  v28 = v27 + v26;
  v29 = *(v16 + 16);
  v29(v28, v21, v15);
  v29(v28 + v25, v23, v15);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v30 = *(v16 + 8);
  v30(v23, v15);
  return (v30)(v21, v15);
}

uint64_t sub_1002F53B0()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = &type metadata for String;
  v10[4] = &protocol witness table for String;
  v10[0] = 0xD00000000000023ELL;
  v10[1] = 0x80000001007F4100;
  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000607C(v10);
  sub_1000F5104(&qword_100941658, &qword_1007A1750);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791300;
  (*(v1 + 16))(v7 + v6, v4, v0);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002F5568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  __chkstk_darwin(v4);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  v15[0] = a1;
  v15[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000607C(v15);
  sub_1000F5104(&qword_100941658, &qword_1007A1750);
  v10 = *(v5 + 72);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100791300;
  (*(v6 + 16))(v12 + v11, v9, v4);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v6 + 8))(v9, v4);
}

unsigned __int8 *sub_1002F5720(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for CachePolicy();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for GenerativeModelSessionConfiguration();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v63 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_100941668, &qword_1007A1758);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v61 = &v61 - v18;
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_10038E004(_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  v24 = *(v20 + 32);
  v62 = v6;
  v24(v6 + OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig, v23, v19);
  v25 = *(a5 + 16);
  v65 = a4;
  v64 = a1;
  if (!v25)
  {
    goto LABEL_66;
  }

  v26 = sub_100005F4C(0xD000000000000015, 0x80000001007F1520);
  if ((v27 & 1) == 0)
  {
    goto LABEL_66;
  }

  v28 = (*(a5 + 56) + 16 * v26);
  v30 = *v28;
  v29 = v28[1];

  v32 = HIBYTE(v29) & 0xF;
  v33 = v30 & 0xFFFFFFFFFFFFLL;
  if (!((v29 & 0x2000000000000000) != 0 ? HIBYTE(v29) & 0xF : v30 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    sub_1002F62B8(v30, v29, 10);
    goto LABEL_66;
  }

  if ((v29 & 0x2000000000000000) == 0)
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      result = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v35 = *result;
    if (v35 == 43)
    {
      if (v33 >= 1)
      {
        v32 = v33 - 1;
        if (v33 != 1)
        {
          v44 = 0;
          if (result)
          {
            v45 = result + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                goto LABEL_64;
              }

              v47 = 10 * v44;
              if ((v44 * 10) >> 64 != (10 * v44) >> 63)
              {
                goto LABEL_64;
              }

              v44 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_64;
              }

              ++v45;
              if (!--v32)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_72;
    }

    if (v35 != 45)
    {
      if (v33)
      {
        v52 = 0;
        if (result)
        {
          while (1)
          {
            v53 = *result - 48;
            if (v53 > 9)
            {
              goto LABEL_64;
            }

            v54 = 10 * v52;
            if ((v52 * 10) >> 64 != (10 * v52) >> 63)
            {
              goto LABEL_64;
            }

            v52 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              goto LABEL_64;
            }

            ++result;
            if (!--v33)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      LOBYTE(v32) = 1;
      goto LABEL_65;
    }

    if (v33 >= 1)
    {
      v32 = v33 - 1;
      if (v33 != 1)
      {
        v36 = 0;
        if (result)
        {
          v37 = result + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              goto LABEL_64;
            }

            v39 = 10 * v36;
            if ((v36 * 10) >> 64 != (10 * v36) >> 63)
            {
              goto LABEL_64;
            }

            v36 = v39 - v38;
            if (__OFSUB__(v39, v38))
            {
              goto LABEL_64;
            }

            ++v37;
            if (!--v32)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v32) = 0;
LABEL_65:
        v67 = v32;
LABEL_66:

        type metadata accessor for TokenGenerator();
        static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItemsV2ID.getter();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        static CachePolicy.inMemory.getter();
        GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
        v59 = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
        v60 = v62;
        *(v62 + OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo__model) = v59;
        return v60;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v66[0] = v30;
  v66[1] = v29 & 0xFFFFFFFFFFFFFFLL;
  if (v30 != 43)
  {
    if (v30 != 45)
    {
      if (v32)
      {
        v55 = 0;
        v56 = v66;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          v58 = 10 * v55;
          if ((v55 * 10) >> 64 != (10 * v55) >> 63)
          {
            break;
          }

          v55 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          ++v56;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v32)
    {
      if (--v32)
      {
        v40 = 0;
        v41 = v66 + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v43 - v42;
          if (__OFSUB__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (v32)
  {
    if (--v32)
    {
      v48 = 0;
      v49 = v66 + 1;
      while (1)
      {
        v50 = *v49 - 48;
        if (v50 > 9)
        {
          break;
        }

        v51 = 10 * v48;
        if ((v48 * 10) >> 64 != (10 * v48) >> 63)
        {
          break;
        }

        v48 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        ++v49;
        if (!--v32)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1002F5CF0()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig;
  v3 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo__model];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1002F5DA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1002F5E30(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*sub_1002F5EC4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t type metadata accessor for RDExtractIngredientsSession._ClientInfo()
{
  result = qword_1009415B0;
  if (!qword_1009415B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F5FB4()
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
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

void sub_1002F605C(uint64_t a1, uint64_t a2)
{
  sub_1002F6D58(&qword_100941660, a2, type metadata accessor for RDExtractIngredientsSession);

  GenerativeModelSessionTokenGenerator.prewarm()();
}

uint64_t sub_1002F60C8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1002F6170;

  return sub_1002F36D0(a1, a2);
}

uint64_t sub_1002F6170(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

unsigned __int8 *sub_1002F62B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1002F6844();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1002F6844()
{
  v0 = String.subscript.getter();
  v4 = sub_1002F68C4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1002F68C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100009794(v9, 0);
  v12 = sub_1002F6A1C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1002F6A1C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1002F6C3C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1002F6C3C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1002F6C3C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1002F6CB8(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10093DB38, &qword_10079B890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F6D58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1002F6DA0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941670);
  v1 = sub_100006654(v0, qword_100941670);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1002F6E68(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 20:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 12:
    case 22:
      result = 0xD000000000000019;
      break;
    case 6:
    case 17:
    case 24:
      v3 = 5;
      goto LABEL_16;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
    case 10:
      result = 0x44496E6F73726570;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0x6576697463616E69;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x6F54636E79536164;
      break;
    case 19:
      result = 0x654B687375506164;
      break;
    case 21:
      v3 = 13;
LABEL_16:
      result = v3 | 0xD000000000000012;
      break;
    case 23:
      result = 0x67694D7361576164;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002F70F4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1002F6E68(*a1);
  v5 = v4;
  if (v3 == sub_1002F6E68(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002F717C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002F6E68(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002F71E0()
{
  sub_1002F6E68(*v0);
  String.hash(into:)();
}

Swift::Int sub_1002F7234()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002F6E68(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002F7294@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1002F944C();
  *a2 = result;
  return result;
}

unint64_t sub_1002F72C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002F6E68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002F72F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002F944C();
  *a1 = result;
  return result;
}

uint64_t sub_1002F7330(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = "urrentAppVersion";
  }

  else
  {
    v5 = "listIDsToUndelete";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (*a2)
  {
    v8 = "listIDsToUndelete";
  }

  else
  {
    v8 = "urrentAppVersion";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_1002F73DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002F745C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002F74C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1002F7550(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "listIDsToUndelete";
  }

  else
  {
    v3 = "urrentAppVersion";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1002F759C()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

Swift::Int sub_1002F75E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002F764C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002F7698@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E2AD8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1002F7704@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1588, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1002F7780(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  if (v3)
  {
    v5 = "didFinishMigration";
  }

  else
  {
    v5 = "smartListIDsToUndelete";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001ALL;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (*a2)
  {
    v8 = "smartListIDsToUndelete";
  }

  else
  {
    v8 = "didFinishMigration";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_1002F782C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002F78AC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002F7918()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1002F79A0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (*v1)
  {
    v3 = "smartListIDsToUndelete";
  }

  else
  {
    v3 = "didFinishMigration";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1002F79EC()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

void *sub_1002F7A38()
{
  result = sub_1002F7A58();
  qword_100974D40 = result;
  return result;
}

void *sub_1002F7A58()
{
  v0 = 0;
  while (1)
  {
    v4 = &off_1008E21A0 + v0++;
    v5 = 0xE800000000000000;
    v6 = 0x44497463656A626FLL;
    switch(v4[32])
    {
      case 1:
        v5 = 0xE400000000000000;
        v6 = 1701869940;
        break;
      case 2:
        v5 = 0xE400000000000000;
        v6 = 1701667182;
        break;
      case 3:
        v6 = 0xD000000000000018;
        v5 = 0x80000001007E9180;
        break;
      case 4:
        v6 = 0xD00000000000001CLL;
        v5 = 0x80000001007EA370;
        break;
      case 5:
        v6 = 0xD000000000000019;
        v5 = 0x80000001007EA390;
        break;
      case 6:
        v6 = 0xD000000000000017;
        v5 = 0x80000001007EA3B0;
        break;
      case 7:
        v6 = 0xD00000000000001ALL;
        v5 = 0x80000001007EA350;
        break;
      case 8:
        v6 = 0xD000000000000010;
        v5 = 0x80000001007EA3D0;
        break;
      case 9:
        goto LABEL_24;
      case 10:
        v5 = 0xEC000000746C6153;
LABEL_24:
        v6 = 0x44496E6F73726570;
        break;
      case 11:
        v6 = 0xD000000000000012;
        v5 = 0x80000001007E9140;
        break;
      case 12:
        v6 = 0xD000000000000019;
        v5 = 0x80000001007EA3F0;
        break;
      case 13:
        v6 = 0xD000000000000012;
        v5 = 0x80000001007E9160;
        break;
      case 14:
        v6 = 0xD00000000000001DLL;
        v5 = 0x80000001007EA410;
        break;
      case 15:
        v6 = 0x6576697463616E69;
        break;
      case 16:
        v6 = 0xD000000000000012;
        v5 = 0x80000001007EA030;
        break;
      case 17:
        v6 = 0xD000000000000017;
        v5 = 0x80000001007EA050;
        break;
      case 18:
        v5 = 0xEB000000006E656BLL;
        v6 = 0x6F54636E79536164;
        break;
      case 19:
        v5 = 0xE900000000000079;
        v6 = 0x654B687375506164;
        break;
      case 20:
        v6 = 0xD00000000000001CLL;
        v5 = 0x80000001007EA440;
        break;
      case 21:
        v6 = 0xD00000000000001FLL;
        v5 = 0x80000001007EA460;
        break;
      case 22:
        v6 = 0xD000000000000019;
        v5 = 0x80000001007EA480;
        break;
      case 23:
        v5 = 0xED00006465746172;
        v6 = 0x67694D7361576164;
        break;
      case 24:
        v6 = 0xD000000000000017;
        v5 = 0x80000001007E8C60;
        break;
      case 25:
        v6 = 0xD000000000000011;
        v5 = 0x80000001007EA4B0;
        break;
      default:
        break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_100005F4C(v6, v5);
    v10 = _swiftEmptyDictionarySingleton[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (_swiftEmptyDictionarySingleton[3] >= v13)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }

      v20 = v8;
      sub_100373664();
      v8 = v20;
      if (v14)
      {
        goto LABEL_2;
      }

LABEL_35:
      _swiftEmptyDictionarySingleton[(v8 >> 6) + 8] |= 1 << v8;
      v16 = (_swiftEmptyDictionarySingleton[6] + 16 * v8);
      *v16 = v6;
      v16[1] = v5;
      v17 = (_swiftEmptyDictionarySingleton[7] + 16 * v8);
      *v17 = v6;
      v17[1] = v5;
      v18 = _swiftEmptyDictionarySingleton[2];
      v12 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v12)
      {
        goto LABEL_42;
      }

      _swiftEmptyDictionarySingleton[2] = v19;
      if (v0 == 26)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }

    else
    {
      sub_10036A8F0(v13, isUniquelyReferenced_nonNull_native);
      v8 = sub_100005F4C(v6, v5);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_43;
      }

LABEL_34:
      if ((v14 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_2:
      v1 = v8;

      v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
      v3 = v2[1];
      *v2 = v6;
      v2[1] = v5;

      if (v0 == 26)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002F7EEC(char a1)
{
  v3 = v1;
  if (a1)
  {
    if ([v1 hasDeserializedListIDsMergeableOrdering])
    {
      v4 = [v1 serializedListIDsMergeableOrdering];
      if (v4)
      {
        v5 = v4;
        v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0xF000000000000000;
      }

      sub_1000F5104(&qword_100938C10, &unk_100795F30);
      Optional.tryUnwrap(_:file:line:)();
      result = sub_100031A14(v6, v8);
      if (!v2)
      {
        if (qword_100935E80 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_100006654(v14, qword_100941670);
        v15 = v3;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138543362;
          v20 = [v15 objectID];
          *(v18 + 4) = v20;
          *v19 = v20;
          _os_log_impl(&_mh_execute_header, v16, v17, "Serialized to data from REMListStorage.listIDsMergeableOrdering during ingesting. {objectID: %{public}@}", v18, 0xCu);
          sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
        }

        return v24;
      }
    }

    else
    {
      v11 = [v1 listIDsMergeableOrderingData];
      if (v11)
      {
        v12 = v11;
        v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        return v13;
      }

      else
      {
        v21 = objc_opt_self();
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v23 = String._bridgeToObjectiveC()();
        [v21 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v23];

        return swift_willThrow();
      }
    }
  }

  else
  {
    v9 = [v1 listIDsMergeableOrdering];
    return 0;
  }

  return result;
}

uint64_t sub_1002F8214(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1002C8F48(a2, a1, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v10;
  return swift_endAccess();
}

void sub_1002F829C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1002F8320(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100005EF0(a1, v25);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v24;
  sub_100005EF0(a2, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    return 0;
  }

  v6 = v24;
  if ([v24 daIsNotificationsCollection])
  {
    if ([v24 daIsNotificationsCollection])
    {
      goto LABEL_20;
    }

    v7 = 0;
    goto LABEL_14;
  }

  if ([v24 daDisplayOrder] < 1)
  {
    if ([v24 daIsNotificationsCollection])
    {

      return 1;
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = [v24 daDisplayOrder];
    if ([v24 daIsNotificationsCollection])
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      if (v7 < 0)
      {
        return -1;
      }

      return 1;
    }
  }

LABEL_14:
  if ([v24 daDisplayOrder] < 1)
  {
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      return -1;
    }
  }

  else
  {
    v8 = [v24 daDisplayOrder];
    if (v7 != v8)
    {
      v17 = v8;

      if (v7 >= v17)
      {
        return 1;
      }

      return -1;
    }

    if ((v7 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
    {

      goto LABEL_18;
    }
  }

LABEL_20:
  v10 = [v24 remObjectID];
  v11 = [v24 remObjectID];
  if (!v10)
  {
LABEL_28:
    v16 = -1;
    goto LABEL_29;
  }

  swift_beginAccess();
  v12 = *a3;
  if (!*(*a3 + 16))
  {
    swift_endAccess();
    goto LABEL_28;
  }

  v13 = v10;
  v14 = sub_10002B924(v13);
  if ((v15 & 1) == 0)
  {
    swift_endAccess();

    goto LABEL_28;
  }

  v16 = *(*(v12 + 56) + 8 * v14);
  swift_endAccess();

LABEL_29:
  if (v11)
  {
    swift_beginAccess();
    v18 = *a3;
    if (*(*a3 + 16))
    {
      v19 = v11;
      v20 = sub_10002B924(v19);
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);
        swift_endAccess();

        if (v16 != v22)
        {
          if (v16 >= v22)
          {
            return 1;
          }

          return -1;
        }

        return 0;
      }

      swift_endAccess();

      v11 = v24;
      v10 = v24;
      v6 = v19;
      v5 = v19;
    }

    else
    {
      swift_endAccess();
    }

    v23 = v5;

    v5 = v10;
    v10 = v23;
  }

  if (v16 == -1)
  {
    return 0;
  }

  return -1;
}

void *sub_1002F867C(void **a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = &selRef_smartListIDsToUndelete;
  if (!*a2)
  {
    v3 = &selRef_listIDsToUndelete;
  }

  v4 = [v2 *v3];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_100277EBC(v5);

  return v6;
}

uint64_t sub_1002F8750(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v7 = v6;
  if (a2 >> 60 == 15)
  {
    v8 = [v6 serializedData];
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    objc_allocWithZone(REMCRMergeableOrderedSet);
    sub_1001CB4B8(a1, a2);
    v15 = a3;
    v26 = sub_1002F937C(v15);

    v34 = 0;
    v27 = [v26 mergedOrderedSetWithOrderedSet:v7 error:&v34];
    if (v27)
    {
      v28 = v27;
      v29 = v34;
      v30 = [v28 serializedData];
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100031A14(a1, a2);
    }

    else
    {
      v32 = v34;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935E80 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100941670);
      v17 = a6;

      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v20 = 138412802;
        *(v20 + 4) = v17;
        *v21 = v17;
        *(v20 + 12) = 2080;
        v22 = v17;
        *(v20 + 14) = sub_10000668C(a4, a5, &v34);
        *(v20 + 22) = 2080;
        swift_getErrorValue();
        v23 = Error.localizedDescription.getter();
        v25 = sub_10000668C(v23, v24, &v34);

        *(v20 + 24) = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to merge ordered set for {objectID: %@, key: %s, error: %s}", v20, 0x20u);
        sub_1000050A4(v21, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        sub_100031A14(a1, a2);
      }

      else
      {
        sub_100031A14(a1, a2);
      }

      return 0;
    }
  }

  return v9;
}

Swift::Int sub_1002F8B08(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004364B4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1002F8C3C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1002F8C3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1004361F4(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1002F9188((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003658B8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1003658B8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
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
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1002F9188((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1002F9188(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

id sub_1002F937C(uint64_t a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = 0;
  v4 = [v1 initWithReplicaIDSource:a1 serializedData:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1002F944C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

void sub_1002F94A0(void *a1, void *a2)
{
  if ([a1 type] != 1)
  {
    return;
  }

  v4 = [a1 objectID];
  v5 = [objc_opt_self() localAccountID];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    return;
  }

  v7 = [a2 managedObjectContext];
  if (v7 && (v8 = v7, v9 = [v7 transactionAuthor], v8, v9))
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._object = 0x80000001007EFF80;
    v13._countAndFlagsBits = 0xD000000000000010;
    if (String.hasPrefix(_:)(v13) || (v14._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), v15 = String.hasPrefix(_:)(v14), , v15) || (v16._countAndFlagsBits = 0xD000000000000016, v16._object = 0x80000001007F4730, String.hasPrefix(_:)(v16)))
    {

      goto LABEL_20;
    }

    v30[0] = v10;
    v30[1] = v12;
    sub_10013BCF4();
    if (StringProtocol.contains<A>(_:)())
    {
LABEL_20:

      return;
    }

    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100941670);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v26 = 136315138;
      v28 = sub_10000668C(v10, v12, v30);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Creating Extraneous Local Account {author: %s}", v26, 0xCu);
      sub_10000607C(v27);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100941670);
    v18 = a1;
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, oslog, v19, "NSManagedObjectContext missing author when updating account.type {storage: %@}", v20, 0xCu);
      sub_1000050A4(v21, &unk_100938E70, &unk_100797230);
    }
  }
}

void sub_1002F9914(void *a1, uint64_t a2, SEL *a3, const char *a4, const char *a5)
{
  v8 = [a1 *a3];
  if (v8)
  {
    v9 = v8;
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100941670);
    v11 = a1;
    v12 = v9;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v15 = &selRef_persistentStoreForIdentifier_;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543618;
      v18 = [v11 remObjectID];
      *(v16 + 4) = v18;
      *v17 = v18;
      *(v16 + 12) = 2048;
      v19 = [v12 topLevelElementIDs];
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

      *(v16 + 14) = v21;

      _os_log_impl(&_mh_execute_header, v13, v14, a4, v16, 0x16u);
      sub_1000050A4(v17, &unk_100938E70, &unk_100797230);

      v15 = &selRef_persistentStoreForIdentifier_;
    }

    else
    {

      v13 = v12;
    }

    v28 = [v11 v15[106]];
    v29 = [objc_opt_self() defaultCenter];
    type metadata accessor for REMManualOrderingCDIngestor();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1007953F0;
    *(v31 + 32) = v12;
    oslog = v12;
    sub_1005F9E88(v31, v30);
  }

  else
  {
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100941670);
    v23 = a1;
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = [v23 remObjectID];
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, oslog, v24, a5, v25, 0xCu);
      sub_1000050A4(v26, &unk_100938E70, &unk_100797230);
    }
  }
}

void sub_1002F9D20(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v202 = type metadata accessor for UUID();
  v8 = *(v202 - 8);
  v9 = *(v8 + 64);
  *&v10 = __chkstk_darwin(v202).n128_u64[0];
  v201 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = a2;
  v12 = [a2 createResolutionTokenMapIfNecessary];
  v212 = a1;
  v13 = [a1 resolutionTokenMap];
  if (!v13)
  {
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v158 = type metadata accessor for Logger();
    sub_100006654(v158, qword_100941670);
    v159 = v212;

    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *&v211[0] = v164;
      *v162 = 138543618;
      v165 = [v159 objectID];
      *(v162 + 4) = v165;
      *v163 = v165;
      *(v162 + 12) = 2082;
      v166 = *(a3 + 16);
      if (v166)
      {
        v206 = v163;
        v212 = v164;
        v197 = v12;
        *&v209 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v166, 0);
        v167 = v209;
        v168 = (a3 + 32);
        v169 = *(v209 + 16);
        v170 = 16 * v169;
        do
        {
          v171 = *v168++;
          v172 = sub_1002F6E68(v171);
          *&v209 = v167;
          v174 = *(v167 + 24);
          v175 = v169 + 1;
          if (v169 >= v174 >> 1)
          {
            v205 = v172;
            v177 = v173;
            sub_100026EF4((v174 > 1), v175, 1);
            v173 = v177;
            v172 = v205;
            v167 = v209;
          }

          *(v167 + 16) = v175;
          v176 = v167 + v170;
          *(v176 + 32) = v172;
          *(v176 + 40) = v173;
          v170 += 16;
          v169 = v175;
          --v166;
        }

        while (v166);
        v12 = v197;
        v164 = v212;
        v163 = v206;
      }

      v178 = Array.description.getter();
      v180 = v179;

      v181 = sub_10000668C(v178, v180, v211);

      *(v162 + 14) = v181;
      _os_log_impl(&_mh_execute_header, v160, v161, "REMAccountStorageCDIngestor: merge(storage:into cdAccount:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v162, 0x16u);
      sub_1000050A4(v163, &unk_100938E70, &unk_100797230);

      sub_10000607C(v164);
    }

    v182 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v184 = String._bridgeToObjectiveC()();
    v185 = [v182 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v184];

    v204 = v185;
    swift_willThrow();
LABEL_147:

    return;
  }

  v14 = v13;
  v205 = sub_10069588C(v13, a3);
  v16 = *(a3 + 16);
  if (!v16)
  {

LABEL_144:
    goto LABEL_147;
  }

  v192 = v14;
  v17 = (a3 + 32);
  v199 = 0x80000001007E8C60;
  v196 = 0x80000001007E9140;
  v200 = "didFinishMigration";
  v193 = (v8 + 8);
  *&v15 = 138412546;
  v190 = v15;
  *&v15 = 136315138;
  v198 = v15;
  v203 = a4;
  v197 = v12;
  while (2)
  {
    v19 = *v17++;
    v18 = v19;
    switch(v19)
    {
      case 1:
        v46 = v212;
        v47 = v206;
        sub_1002F94A0(v212, v206);
        v48 = [v46 type];
        v49 = 0x7FFFLL;
        if (v48 < 0x7FFF)
        {
          v49 = v48;
        }

        if (v49 <= -32768)
        {
          v50 = -32768;
        }

        else
        {
          v50 = v49;
        }

        [v47 setType:v50];
        goto LABEL_5;
      case 2:
        v32 = [v212 name];
        if (!v32)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = String._bridgeToObjectiveC()();
        }

        [v206 setName:v32];
        goto LABEL_107;
      case 3:
        v51 = v204;
        v52 = sub_1002F7EEC(*(a4 + 16));
        v204 = v51;
        if (!v51)
        {
          v55 = v52;
          v56 = v54;
          v195 = v53;
          v57 = v17;
          v194 = [v212 listIDsMergeableOrderingReplicaIDSource];
          v58 = *(a4 + 16);
          v59 = v205;
          v60 = v206;
          v61 = [v206 createResolutionTokenMapIfNecessary];
          v62 = String._bridgeToObjectiveC()();
          v63 = [v61 mergeWithMap:v59 forKey:v62];

          if (v58 != 1)
          {
            v191 = v61;
            v101 = [v60 remObjectID];
            v64 = v56;
            if (!v101)
            {
              if (qword_100935E80 != -1)
              {
                swift_once();
              }

              v139 = type metadata accessor for Logger();
              sub_100006654(v139, qword_100941670);
              v140 = v206;
              v141 = v200;

              v142 = Logger.logObject.getter();
              v143 = static os_log_type_t.error.getter();

              v17 = v57;
              if (os_log_type_enabled(v142, v143))
              {
                v144 = swift_slowAlloc();
                v188 = v142;
                v145 = v144;
                v146 = v141;
                v147 = swift_slowAlloc();
                v189 = swift_slowAlloc();
                *&v211[0] = v189;
                *v145 = v190;
                v148 = [v140 objectID];
                *(v145 + 4) = v148;
                *v147 = v148;
                *(v145 + 12) = 2080;
                *(v145 + 14) = sub_10000668C(0xD000000000000018, v146 | 0x8000000000000000, v211);
                v149 = v143;
                v150 = v188;
                _os_log_impl(&_mh_execute_header, v188, v149, "Can't merge list ordering for account because remObjectID is nil {account.objectID: %@, key: %s}", v145, 0x16u);
                sub_1000050A4(v147, &unk_100938E70, &unk_100797230);

                sub_10000607C(v189);
              }

              else
              {
              }

              v138 = &v213;
              goto LABEL_130;
            }

            v68 = v101;
            v102 = String._bridgeToObjectiveC()();
            v103 = [v60 valueForKey:v102];

            if (v103)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v209 = 0u;
              v210 = 0u;
            }

            v211[0] = v209;
            v211[1] = v210;
            v17 = v57;
            if (*(&v210 + 1))
            {
              v151 = swift_dynamicCast();
              if (v151)
              {
                v66 = v207;
              }

              else
              {
                v66 = 0;
              }

              if (v151)
              {
                v67 = v208;
              }

              else
              {
                v67 = 0xF000000000000000;
              }

              if (v64)
              {
LABEL_121:
                v152 = v64;
                v189 = v64;
                v153 = v194;
                v188 = sub_1002F8750(v66, v67, v194, 0xD000000000000018, v200 | 0x8000000000000000, v68);
                v187 = v154;

                sub_100031A14(v66, v67);

                v64 = v189;
                v66 = v188;
                v67 = v187;
LABEL_124:
                v65 = v195;
                goto LABEL_125;
              }
            }

            else
            {
              sub_1000050A4(v211, &qword_100939ED0, &qword_100791B10);
              v66 = 0;
              v67 = 0xF000000000000000;
              if (v64)
              {
                goto LABEL_121;
              }
            }

            goto LABEL_124;
          }

          v17 = v57;
          v64 = v56;
          if ((v63 & 1) == 0)
          {

            v138 = &v214;
LABEL_130:

            v155 = v55;
            v156 = v195;
            goto LABEL_131;
          }

          v65 = v195;
          sub_1001CB4B8(v55, v195);

          v66 = v55;
          v67 = v65;
          v68 = v194;
LABEL_125:

          if (v67 >> 60 != 15)
          {
            isa = Data._bridgeToObjectiveC()().super.isa;
            [v206 setListIDsMergeableOrdering:isa];
            sub_100031A14(v55, v65);

            sub_100031A14(v66, v67);
            goto LABEL_132;
          }

          v155 = v55;
          v156 = v65;
LABEL_131:
          sub_100031A14(v155, v156);

LABEL_132:
          v12 = v197;
          a4 = v203;
LABEL_5:
          if (!--v16)
          {

            goto LABEL_144;
          }

          continue;
        }

        return;
      case 4:
      case 8:
        goto LABEL_5;
      case 5:
        goto LABEL_5;
      case 6:
        goto LABEL_5;
      case 7:
        if (qword_100935E80 != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        sub_100006654(v76, qword_100941670);
        v32 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v32, v77, "Actually really doing nothing for a merge on .listsDADisplayOrderChanged", v78, 2u);
        }

        goto LABEL_107;
      case 9:
        v32 = [v212 personID];
        [v206 setPersonID:v32];
        goto LABEL_107;
      case 10:
        if (qword_100935E88 != -1)
        {
          swift_once();
        }

        v69 = qword_100974D40;
        if (*(qword_100974D40 + 16))
        {
          v70 = sub_100005F4C(0x44496E6F73726570, 0xEC000000746C6153);
          v72 = v71;

          if (v72)
          {
            v73 = (*(v69 + 56) + 16 * v70);
            v74 = *v73;
            v75 = v73[1];

            goto LABEL_96;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        sub_100006654(v114, qword_100946C50);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          *&v211[0] = v118;
          *v117 = v198;
          v195 = v17;
          v119 = v12;
          v120 = sub_10000668C(0x44496E6F73726570, 0xEC000000746C6153, v211);

          *(v117 + 4) = v120;
          v12 = v119;
          _os_log_impl(&_mh_execute_header, v115, v116, "Unknown ingestable key {key: %s}", v117, 0xCu);
          sub_10000607C(v118);

          v17 = v195;
        }

        else
        {
        }

LABEL_96:
        v128 = String._bridgeToObjectiveC()();

        v129 = [v12 mergeWithMap:v205 forKey:v128];

        if ((v129 & 1) == 0)
        {
          goto LABEL_4;
        }

        v130 = [v212 personIDSalt];
        a4 = v203;
        if (v130)
        {
          v131 = v130;
          v132 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v134 = v133;

          v32 = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v132, v134);
        }

        else
        {
          v32 = 0;
        }

        [v206 setPersonIDSalt:v32];
LABEL_107:

        goto LABEL_5;
      case 11:
      case 13:
        if (qword_100935E88 != -1)
        {
          swift_once();
        }

        v20 = v12;
        v21 = qword_100974D40;
        v22 = sub_1002F6E68(v18);
        v24 = v22;
        v25 = v23;
        if (*(v21 + 16))
        {
          v26 = sub_100005F4C(v22, v23);
          v28 = v27;

          if (v28)
          {
            v29 = (*(v21 + 56) + 16 * v26);
            v31 = *v29;
            v30 = v29[1];

            goto LABEL_65;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for Logger();
        sub_100006654(v86, qword_100946C50);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v195 = v24;
          v91 = v25;
          v92 = v90;
          *&v211[0] = v90;
          *v89 = v198;
          v93 = v17;
          v94 = v20;
          v95 = sub_10000668C(v195, v91, v211);

          *(v89 + 4) = v95;
          v96 = v94;
          v17 = v93;
          _os_log_impl(&_mh_execute_header, v87, v88, "Unknown ingestable key {key: %s}", v89, 0xCu);
          sub_10000607C(v92);
          v25 = v91;
          v24 = v195;

          v12 = v96;

          v97 = v203;
          goto LABEL_66;
        }

LABEL_65:
        v97 = v203;
        v12 = v20;
LABEL_66:
        v98 = String._bridgeToObjectiveC()();

        v99 = [v12 mergeWithMap:v205 forKey:v98];

        if ((v99 & 1) == 0)
        {
          a4 = v97;
          goto LABEL_5;
        }

        a4 = v97;
        if (v24 == 0xD000000000000012 && v196 == v25)
        {

LABEL_72:
          v34 = [v212 didChooseToMigrate];
          v35 = "setDidChooseToMigrate:";
          goto LABEL_103;
        }

        v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v100)
        {
          goto LABEL_72;
        }

        v34 = [v212 didFinishMigration];
        v35 = "setDidFinishMigration:";
LABEL_103:
        [v206 v35];
        goto LABEL_5;
      case 12:
        v34 = [v212 didChooseToMigrateLocally];
        v35 = "setDidChooseToMigrateLocally:";
        goto LABEL_103;
      case 14:
        v33 = [v212 persistenceCloudSchemaVersion];
        [v206 setPersistenceCloudSchemaVersion:v33];
        goto LABEL_5;
      case 15:
        v34 = [v212 inactive];
        v35 = "setInactive:";
        goto LABEL_103;
      case 16:
        v32 = [v212 externalIdentifier];
        [v206 setExternalIdentifier:v32];
        goto LABEL_107;
      case 17:
        v32 = [v212 externalModificationTag];
        [v206 setExternalModificationTag:v32];
        goto LABEL_107;
      case 18:
        v32 = [v212 daSyncToken];
        [v206 setDaSyncToken:v32];
        goto LABEL_107;
      case 19:
        v32 = [v212 daPushKey];
        [v206 setDaPushKey:v32];
        goto LABEL_107;
      case 20:
        v32 = [v212 daConstraintsDescriptionPath];
        [v206 setDaConstraintsDescriptionPath:v32];
        goto LABEL_107;
      case 21:
        v34 = [v212 daAllowsCalendarAddDeleteModify];
        v35 = "setDaAllowsCalendarAddDeleteModify:";
        goto LABEL_103;
      case 22:
        v34 = [v212 daSupportsSharedCalendars];
        v35 = "setDaSupportsSharedCalendars:";
        goto LABEL_103;
      case 23:
        if (qword_100935E88 != -1)
        {
          swift_once();
        }

        v79 = qword_100974D40;
        if (*(qword_100974D40 + 16))
        {
          v80 = sub_100005F4C(0x67694D7361576164, 0xED00006465746172);
          v82 = v81;

          if (v82)
          {
            v83 = (*(v79 + 56) + 16 * v80);
            v84 = *v83;
            v85 = v83[1];

            goto LABEL_100;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for Logger();
        sub_100006654(v121, qword_100946C50);
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *&v211[0] = v125;
          *v124 = v198;
          v195 = v17;
          v126 = v12;
          v127 = sub_10000668C(0x67694D7361576164, 0xED00006465746172, v211);

          *(v124 + 4) = v127;
          v12 = v126;
          _os_log_impl(&_mh_execute_header, v122, v123, "Unknown ingestable key {key: %s}", v124, 0xCu);
          sub_10000607C(v125);

          v17 = v195;
        }

        else
        {
        }

LABEL_100:
        v135 = String._bridgeToObjectiveC()();

        v136 = [v12 mergeWithMap:v205 forKey:v135];

        if (v136)
        {
          v137 = [v212 daWasMigrated];
          [v206 setDaWasMigrated:v137];
        }

LABEL_4:
        a4 = v203;
        goto LABEL_5;
      case 24:
        if (qword_100935E88 != -1)
        {
          swift_once();
        }

        v36 = qword_100974D40;
        if (*(qword_100974D40 + 16))
        {
          v37 = sub_100005F4C(0xD000000000000017, v199);
          v39 = v38;

          if (v39)
          {
            v40 = (*(v36 + 56) + 16 * v37);
            v42 = *v40;
            v41 = v40[1];

            goto LABEL_82;
          }
        }

        else
        {
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v104 = type metadata accessor for Logger();
        sub_100006654(v104, qword_100946C50);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v211[0] = v108;
          *v107 = v198;
          v109 = v12;
          v110 = sub_10000668C(0xD000000000000017, v199, v211);

          *(v107 + 4) = v110;
          v12 = v109;
          a4 = v203;
          _os_log_impl(&_mh_execute_header, v105, v106, "Unknown ingestable key {key: %s}", v107, 0xCu);
          sub_10000607C(v108);
        }

LABEL_82:
        v111 = String._bridgeToObjectiveC()();

        v112 = [v12 mergeWithMap:v205 forKey:v111];

        if (v112)
        {
          v113 = [v212 minimumSupportedVersion];
          [v206 setMinimumSupportedVersion:v113];
        }

        goto LABEL_5;
      case 25:
        v34 = [v212 debugSyncDisabled];
        v35 = "setDebugSyncDisabled:";
        goto LABEL_103;
      default:
        v43 = [v212 objectID];
        v44 = [v43 uuid];

        v45 = v201;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = UUID._bridgeToObjectiveC()().super.isa;
        (*v193)(v45, v202);
        [v206 setIdentifier:v32];
        goto LABEL_107;
    }
  }
}

void sub_1002FB558(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  if ((a3 & 1) == 0)
  {
    v10 = [a1 listIDsToUndelete];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v11 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v11 = v77;
      v12 = v78;
      v13 = v79;
      v14 = v80;
      v15 = v81;
    }

    else
    {
      v14 = 0;
      v22 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v13 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v15 = v24 & *(v11 + 56);
    }

    v25 = (v13 + 64) >> 6;
    v69 = v11;
    v71 = v12;
    while (1)
    {
      if (v11 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_63;
        }

        swift_dynamicCast();
        v31 = v87;
        v29 = v14;
        v30 = v15;
        if (!v87)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v27 = v14;
        v28 = v15;
        v29 = v14;
        if (!v15)
        {
          while (1)
          {
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              __break(1u);
              goto LABEL_69;
            }

            if (v29 >= v25)
            {
              break;
            }

            v28 = *(v12 + 8 * v29);
            ++v27;
            if (v28)
            {
              goto LABEL_22;
            }
          }

LABEL_63:
          sub_10001B860();
          return;
        }

LABEL_22:
        v30 = (v28 - 1) & v28;
        v31 = *(*(v11 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
        if (!v31)
        {
          goto LABEL_63;
        }
      }

      sub_1006883B8(0, v31, a4);
      if (v5)
      {
LABEL_66:
        sub_10001B860();

        return;
      }

      v73 = v30;
      v33 = v32;
      [v33 setParentAccount:a2];
      v34 = [v33 createResolutionTokenMapIfNecessary];
      if (qword_1009366C8 != -1)
      {
        swift_once();
      }

      v35 = qword_1009752A0;
      if (*(qword_1009752A0 + 16) && (v36 = sub_100005F4C(0x6341746E65726170, 0xEF4449746E756F63), (v37 & 1) != 0))
      {
        v38 = (*(v35 + 56) + 16 * v36);
        v40 = *v38;
        v39 = v38[1];
      }

      else
      {
        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100006654(v41, qword_100946C50);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v87 = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_10000668C(0x6341746E65726170, 0xEF4449746E756F63, &v87);
          _os_log_impl(&_mh_execute_header, v42, v43, "Unknown ingestable key {key: %s}", v44, 0xCu);
          sub_10000607C(v45);
          v5 = 0;
        }

        v11 = v69;
      }

      v26 = String._bridgeToObjectiveC()();

      [v34 updateForKey:v26];

      v14 = v29;
      v12 = v71;
      v15 = v73;
    }
  }

  v7 = [a1 smartListIDsToUndelete];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  if (!v9)
  {
    return;
  }

  v16 = [a1 smartListIDsToUndelete];
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v17 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v17 = v82;
    v18 = v83;
    v19 = v84;
    v20 = v85;
    v21 = v86;
  }

  else
  {
    v20 = 0;
    v46 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v46;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v21 = v48 & *(v17 + 56);
  }

  v49 = (v19 + 64) >> 6;
  v72 = v18;
  v70 = v17;
  while (v17 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_63;
    }

    swift_dynamicCast();
    v31 = v87;
    v53 = v20;
    v54 = v21;
    if (!v87)
    {
      goto LABEL_63;
    }

LABEL_53:
    sub_1006883E0(1, v31, a4);
    if (v5)
    {
      goto LABEL_66;
    }

    v74 = v54;
    v56 = v55;
    [v56 setParentAccount:a2];
    v57 = [v56 createResolutionTokenMapIfNecessary];
    if (qword_100935C70 != -1)
    {
      swift_once();
    }

    v58 = qword_100974C80;
    if (*(qword_100974C80 + 16) && (v59 = sub_100005F4C(0x6341746E65726170, 0xEF4449746E756F63), (v60 & 1) != 0))
    {
      v61 = (*(v58 + 56) + 16 * v59);
      v63 = *v61;
      v62 = v61[1];
    }

    else
    {
      if (qword_100936128 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_100006654(v64, qword_100946C50);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v87 = v68;
        *v67 = 136315138;
        *(v67 + 4) = sub_10000668C(0x6341746E65726170, 0xEF4449746E756F63, &v87);
        _os_log_impl(&_mh_execute_header, v65, v66, "Unknown ingestable key {key: %s}", v67, 0xCu);
        sub_10000607C(v68);
        v5 = 0;
      }
    }

    v50 = String._bridgeToObjectiveC()();

    [v57 updateForKey:v50];

    v20 = v53;
    v18 = v72;
    v21 = v74;
    v17 = v70;
  }

  v51 = v20;
  v52 = v21;
  v53 = v20;
  if (v21)
  {
LABEL_49:
    v54 = (v52 - 1) & v52;
    v31 = *(*(v17 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v52)))));
    if (!v31)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v49)
    {
      goto LABEL_63;
    }

    v52 = *(v18 + 8 * v53);
    ++v51;
    if (v52)
    {
      goto LABEL_49;
    }
  }

LABEL_69:
  __break(1u);
}

uint64_t sub_1002FBEA0(void *a1, void *a2)
{
  v56 = a2;
  v57 = type metadata accessor for UUID();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v57);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyDictionarySingleton;
  v14 = v13 + 16;
  v15 = [objc_opt_self() cdEntityName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v52 = a1;
  v19 = sub_1000FF9FC(v16, v18);

  v62 = sub_1002FF4C4;
  v63 = v13;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1002FFDC4;
  v61 = &unk_1008ED5D8;
  v20 = _Block_copy(&aBlock);
  v53 = v13;

  [v19 enumerateObjectsUsingBlock:v20];
  _Block_release(v20);

  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1002FF4CC;
  *(v22 + 24) = v21;
  v62 = sub_1002FF4D4;
  v63 = v22;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1005E2238;
  v61 = &unk_1008ED650;
  v23 = _Block_copy(&aBlock);

  v24 = [v56 sortedArrayWithOptions:16 usingComparator:v23];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v26;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
    sub_10000CB48(&qword_1009418B0, &qword_10093CB40, &qword_1007A4450);
    isEscapingClosureAtFileLocation = Sequence.elements<A>(ofType:)();

    aBlock = _swiftEmptyArrayStorage;
    if (!(isEscapingClosureAtFileLocation >> 62))
    {
      v56 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
      v27 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
      v51 = v21;
      if (v27)
      {
        goto LABEL_4;
      }

LABEL_25:
      v31 = _swiftEmptyArrayStorage;
      goto LABEL_26;
    }
  }

  v56 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
  v27 = _CocoaArrayWrapper.endIndex.getter();
  v51 = v21;
  if (!v27)
  {
    goto LABEL_25;
  }

LABEL_4:
  v28 = 0;
  v55 = isEscapingClosureAtFileLocation & 0xC000000000000001;
  v29 = (v3 + 56);
  v30 = (v3 + 48);
  v48 = (v3 + 16);
  v31 = _swiftEmptyArrayStorage;
  v47 = (v3 + 8);
  v54 = v27;
  do
  {
    v50 = v31;
    v32 = v28;
    while (1)
    {
      if (v55)
      {
        v21 = isEscapingClosureAtFileLocation;
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v32 >= *(v56 + 2))
        {
          goto LABEL_22;
        }

        v21 = isEscapingClosureAtFileLocation;
        v33 = *(isEscapingClosureAtFileLocation + 8 * v32 + 32);
      }

      isEscapingClosureAtFileLocation = v33;
      v28 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v34 = [v33 identifier];
      if (v34)
      {
        v35 = v34;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v3 = v57;
      (*v29)(v9, v36, 1, v57);
      sub_100100FB4(v9, v12);
      if (!(*v30)(v12, 1, v3))
      {
        break;
      }

      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      ++v32;
      isEscapingClosureAtFileLocation = v21;
      if (v28 == v54)
      {
        v31 = v50;
        goto LABEL_26;
      }
    }

    v37 = v49;
    (*v48)(v49, v12, v57);
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
    v50 = UUID.uuidString.getter();
    v3 = v38;
    (*v47)(v37, v57);
    v50 = String._bridgeToObjectiveC()();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v3 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v31 = aBlock;
    isEscapingClosureAtFileLocation = v21;
  }

  while (v28 != v54);
LABEL_26:

  sub_100271218(v31);

  v39 = objc_allocWithZone(NSOrderedSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v41 = [v39 initWithArray:isa];

  v42 = v52;
  v43 = [v52 orderedSet];
  v44 = [v43 isEqual:v41];

  if (v44)
  {
    v42;
  }

  else
  {
    v45 = [v42 replicaIDSource];
    [objc_allocWithZone(REMCRMergeableOrderedSet) initWithReplicaIDSource:v45 orderedSet:v41];
  }

  return v44 ^ 1;
}

void sub_1002FC650()
{
  v91 = type metadata accessor for UUID();
  v82 = *(v91 - 8);
  v0 = *(v82 + 64);
  __chkstk_darwin(v91);
  v84 = v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v90 = (v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v89 = v81 - v6;
  v7 = type metadata accessor for NSFastEnumerationIterator();
  *&v94 = *(v7 - 8);
  v8 = *(v94 + 64);
  __chkstk_darwin(v7);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v100 = _swiftEmptyArrayStorage;
  NSOrderedSet.makeIterator()();
  sub_1002FF4DC();
  dispatch thunk of IteratorProtocol.next()();
  if (v99)
  {
    v93 = _swiftEmptyArrayStorage;
    do
    {
      sub_100005EE0(&v98, v97);
      sub_100005EF0(v97, v96);
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      if (swift_dynamicCast())
      {
        v12 = v95;
        v13 = [v95 daIsNotificationsCollection];
        sub_10000607C(v97);
        if (v13)
        {
        }

        else
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v93 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v93 = v100;
        }
      }

      else
      {
        sub_10000607C(v97);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v99);
  }

  else
  {
    v93 = _swiftEmptyArrayStorage;
  }

  (*(v94 + 8))(v10, v7);
  v14 = v93;
  v15 = v93 >> 62;
  if (v93 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_14:
      *&v98 = _swiftEmptyArrayStorage;
      sub_100253AF4(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
LABEL_83:
        __break(1u);

        __break(1u);
        return;
      }

      *&v94 = v16;
      v17 = 0;
      v11 = v98;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = v14[v17 + 4].isa;
        }

        v19 = v18;
        v20 = [(objc_class *)v18 daDisplayOrder];

        *&v98 = v11;
        v22 = v11[2];
        v21 = v11[3];
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          sub_100253AF4((v21 > 1), v22 + 1, 1);
          v11 = v98;
        }

        ++v17;
        v11[2] = v23;
        v11[v22 + 4] = v20;
      }

      while (v94 != v17);
      goto LABEL_25;
    }
  }

  *&v94 = v16;
  v23 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage;
  if (v23)
  {
LABEL_25:
    v24 = _swiftEmptyArrayStorage;
    v25 = 4;
    do
    {
      v28 = v11[v25];
      if (v28 >= 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v98 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253AF4(0, v24[2] + 1, 1);
          v24 = v98;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_100253AF4((v26 > 1), v27 + 1, 1);
          v24 = v98;
        }

        v24[2] = v27 + 1;
        v24[v27 + 4] = v28;
      }

      ++v25;
      --v23;
    }

    while (v23);
  }

  *&v98 = v24;

  sub_1002F8B08(&v98);

  v92 = v98;
  v30 = v94;
  if (qword_100935E80 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v31 = type metadata accessor for Logger();
    v32 = sub_100006654(v31, qword_100941670);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      if (v15)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v36 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v91;
      *(v35 + 4) = v36;

      _os_log_impl(&_mh_execute_header, v33, v34, "Going to back propagate ordering changes to CD lists {listsCount: %ld}", v35, 0xCu);
    }

    else
    {

      v15 = v91;
    }

    v37 = v90;
    if (v30 < 0)
    {
      __break(1u);
      goto LABEL_83;
    }

    v81[1] = v32;
    v38 = _swiftEmptyArrayStorage;
    if (!v30)
    {
      break;
    }

    v39 = 0;
    v40 = 0;
    v41 = *(v92 + 16);
    v42 = v14 & 0xC000000000000001;
    v88 = v92 + 32;
    v86 = (v82 + 56);
    v85 = (v82 + 48);
    v83 = (v82 + 16);
    v82 += 8;
    v87 = v14 & 0xC000000000000001;
    while (1)
    {
      v43 = v42 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : v14[v40 + 4].isa;
      v14 = v43;
      v44 = [v43 daDisplayOrder];
      v45 = v44;
      if (v40 >= v41)
      {
        v46 = 0;
      }

      else
      {
        if (v40 >= *(v92 + 16))
        {
          goto LABEL_80;
        }

        v46 = *(v88 + 8 * v40);
      }

      if (__OFADD__(v39, 1))
      {
        break;
      }

      if ((v39 + 1) <= v46)
      {
        v39 = v46;
      }

      else
      {
        ++v39;
      }

      if (v44 == v39)
      {
      }

      else
      {
        [v14 setDaDisplayOrder:v39];
        v47 = [v14 identifier];
        if (v47)
        {
          v48 = v47;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        (*v86)(v37, v49, 1, v15);
        v50 = v89;
        sub_100100FB4(v37, v89);
        if ((*v85)(v50, 1, v15))
        {
          sub_1000050A4(v50, &unk_100939D90, "8\n\r");
          v51 = 0;
          v52 = 0;
        }

        else
        {
          v53 = v84;
          (*v83)(v84, v50, v15);
          sub_1000050A4(v50, &unk_100939D90, "8\n\r");
          v51 = UUID.uuidString.getter();
          v52 = v54;
          (*v82)(v53, v15);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_100367B18(0, v38[2] + 1, 1, v38);
        }

        v56 = v38[2];
        v55 = v38[3];
        if (v56 >= v55 >> 1)
        {
          v38 = sub_100367B18((v55 > 1), v56 + 1, 1, v38);
        }

        v38[2] = v56 + 1;
        v57 = &v38[4 * v56];
        v57[4] = v51;
        v57[5] = v52;
        v57[6] = v45;
        v57[7] = v39;
        v37 = v90;
        v15 = v91;
        v30 = v94;
        v42 = v87;
      }

      ++v40;
      v14 = v93;
      if (v30 == v40)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
  }

LABEL_68:

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *&v98 = v61;
    *v60 = 136315138;
    v63 = v38[2];
    if (v63)
    {
      v90 = v61;
      v91 = v60;
      LODWORD(v92) = v59;
      v93 = v58;
      *&v97[0] = _swiftEmptyArrayStorage;
      sub_100253B24(0, v63, 0);
      v64 = *&v97[0];
      v65 = v38 + 7;
      v94 = xmmword_100791340;
      do
      {
        v67 = *(v65 - 3);
        v66 = *(v65 - 2);
        v68 = *(v65 - 1);
        v69 = *v65;
        sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
        v70 = swift_allocObject();
        *(v70 + 16) = v94;
        *(v70 + 56) = &type metadata for Int64;
        *(v70 + 64) = &protocol witness table for Int64;
        *(v70 + 72) = v69;
        *(v70 + 32) = v68;
        *(v70 + 96) = &type metadata for Int64;
        *(v70 + 104) = &protocol witness table for Int64;
        swift_bridgeObjectRetain_n();
        v71 = String.init(format:_:)();
        v73 = v72;

        *&v97[0] = v64;
        v75 = *(v64 + 16);
        v74 = *(v64 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_100253B24((v74 > 1), v75 + 1, 1);
          v64 = *&v97[0];
        }

        v65 += 4;
        *(v64 + 16) = v75 + 1;
        v76 = (v64 + 32 * v75);
        v76[4] = v67;
        v76[5] = v66;
        v76[6] = v71;
        v76[7] = v73;
        --v63;
      }

      while (v63);

      v58 = v93;
      LOBYTE(v59) = v92;
      v62 = v90;
      v60 = v91;
    }

    else
    {
    }

    sub_1000F5104(&qword_10093ECC8, &qword_1007B4CD0);
    v77 = Array.description.getter();
    v79 = v78;

    v80 = sub_10000668C(v77, v79, &v98);

    *(v60 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v58, v59, "Back propagated ordering changes to CD lists - {changes: %s}", v60, 0xCu);
    sub_10000607C(v62);
  }

  else
  {
  }
}