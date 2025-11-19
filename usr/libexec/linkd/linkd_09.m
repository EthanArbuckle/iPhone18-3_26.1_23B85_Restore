void *sub_1000B6E78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199310, &qword_10014EE40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_1000B86A4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1000B6F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = _swiftEmptyArrayStorage;
  v171 = _swiftEmptyArrayStorage;
  v10 = sub_1000232F4(a2);
  v11 = &TableBuilder;
  if (v10)
  {
    v12 = v10;
    *&v169 = _swiftEmptyArrayStorage;
    sub_10002357C(0, v10 & ~(v10 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_116;
    }

    v13 = 0;
    v9 = v169;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(a2 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 v11[31].base_prots];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      *&v169 = v9;
      v21 = v9[2];
      v20 = v9[3];
      if (v21 >= v20 >> 1)
      {
        v23 = sub_100005150(v20);
        sub_10002357C(v23, v21 + 1, 1);
        v9 = v169;
      }

      ++v13;
      v9[2] = v21 + 1;
      v22 = &v9[3 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v22[6] = v15;
      v11 = &TableBuilder;
    }

    while (v12 != v13);
  }

  v24 = sub_1000B6E78(v9);
  v144 = sub_1000232F4(a1);
  if (!v144)
  {
    goto LABEL_106;
  }

  v25 = 0;
  v26 = &TableBuilder;
  v27 = &_ss50ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
  v154 = v24;
  v155 = _swiftEmptyArrayStorage;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = v25;
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_115;
      }

      v28 = v25;
      v29 = *(a1 + 32 + 8 * v25);
    }

    v156 = v29;
    v30 = __OFADD__(v28, 1);
    v31 = v28 + 1;
    if (v30)
    {
      goto LABEL_112;
    }

    v147 = v31;
    v32 = [v29 parameters];
    v33 = sub_10000519C();
    sub_100003D44(v33, &qword_100199048, LNActionParameterMetadata_ptr);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v34 >> 62))
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        break;
      }

      goto LABEL_104;
    }

    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (v35)
    {
      break;
    }

LABEL_104:

    v25 = v147;
    if (v147 == v144)
    {

LABEL_106:

      return;
    }
  }

  v36 = 0;
  v160 = v34 & 0xC000000000000001;
  v157 = v34 + 32;
  v158 = v34 & 0xFFFFFFFFFFFFFF8;
  v159 = v35;
  while (1)
  {
    if (v160)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v158 + 16))
      {
        goto LABEL_108;
      }

      v37 = *(v157 + 8 * v36);
    }

    v38 = v37;
    v30 = __OFADD__(v36++, 1);
    if (v30)
    {
      break;
    }

    v39 = sub_1000237B0(v37);
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      v161 = v36;
      v167 = v38;
      v43 = [v38 v26[34].weak_ivar_lyt];
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (!v44)
      {
        goto LABEL_33;
      }

      v45 = [v44 enumerationIdentifier];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      if (!v24[2])
      {

LABEL_33:

        v60 = [v167 v26[34].weak_ivar_lyt];
        v61 = v27[429];
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v62 = sub_10000519C();
          sub_100003D44(v62, &qword_100199300, NSObject_ptr);
          v63 = v27[429];
          v64 = [objc_opt_self() BOOLValueType];
          v65 = static NSObject.== infix(_:_:)();

          if (v65)
          {
            v66 = [v167 typeSpecificMetadata];
            v67 = sub_10000519C();
            type metadata accessor for LNValueTypeSpecificMetadataKey(v67);
            sub_1000B887C();
            v68 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1000A0DB4(v68, &v169);
            if (v170)
            {
              sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
              if (sub_100002C58())
              {
                v69 = v168;
              }

              else
              {
                v69 = 0;
              }
            }

            else
            {
              sub_10003D580(&v169);
              v69 = 0;
            }

            sub_1000A0DB4(v68, &v169);

            if (v170)
            {
              sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
              if (sub_100002C58())
              {
                v99 = v168;
              }

              else
              {
                v99 = 0;
              }
            }

            else
            {
              sub_10003D580(&v169);
              v99 = 0;
            }

            v100 = [v156 identifier];
            v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v103 = v102;

            v104 = sub_1000B8120(v101, v103, v41, v42, v69, v99, a3, a4, a8);

            sub_10006E450(v104);

            goto LABEL_70;
          }
        }

        else
        {
        }

        v70 = [v167 v26[34].weak_ivar_lyt];
        v71 = v27[429];
        objc_opt_self();
        v36 = v161;
        if (swift_dynamicCastObjCClass())
        {
          v164 = sub_1000237B0(v167);
          if (v72)
          {
            v73 = v72;
            v74 = v70;
            v75 = sub_1000A0780();

            if (v75)
            {
              v153 = v74;
              v76 = [v156 identifier];
              v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v78 = v77;

              v79 = *(a7 + 16);
              if (v79)
              {
                v80 = (a7 + 80);
                v81 = _swiftEmptyArrayStorage;
                do
                {
                  v82 = *(v80 - 2);
                  v83 = *(v80 - 1);
                  v84 = *v80;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v88 = v81[2];
                    sub_100004E28();
                    sub_100070554();
                    v81 = v89;
                  }

                  v86 = v81[2];
                  v85 = v81[3];
                  if (v86 >= v85 >> 1)
                  {
                    sub_100005150(v85);
                    sub_100070554();
                    v81 = v90;
                  }

                  v81[2] = v86 + 1;
                  v87 = &v81[8 * v86];
                  v87[4] = v162;
                  v87[5] = v78;
                  v87[6] = v164;
                  v87[7] = v73;
                  v87[8] = v82;
                  v87[9] = v83;
                  v87[10] = v84;
                  v80 += 8;
                  *(v87 + 44) = 0;
                  --v79;
                }

                while (v79);
              }

              else
              {
                v81 = _swiftEmptyArrayStorage;
              }

              v105 = v81[2];
              v106 = v171;
              v107 = v171[2];
              if (__OFADD__(v107, v105))
              {
                goto LABEL_110;
              }

              if (!swift_isUniquelyReferenced_nonNull_native() || (v108 = v106[3] >> 1, v108 < v107 + v105))
              {
                sub_100070554();
                v106 = v109;
                v108 = v109[3] >> 1;
              }

              v24 = v154;
              v26 = &TableBuilder;
              v27 = &_ss50ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
              v36 = v161;
              if (v81[2])
              {
                if (v108 - v106[2] < v105)
                {
                  goto LABEL_113;
                }

                swift_arrayInitWithCopy();

                if (v105)
                {
                  v110 = v106[2];
                  v30 = __OFADD__(v110, v105);
                  v111 = v110 + v105;
                  if (v30)
                  {
                    goto LABEL_114;
                  }

                  v106[2] = v111;
                }
              }

              else
              {

                if (v105)
                {
                  goto LABEL_111;
                }
              }

              v171 = v106;
              goto LABEL_56;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_56:
        v35 = v159;
        goto LABEL_72;
      }

      v49 = sub_10000C2A0(v46, v48);
      v51 = v50;

      if ((v51 & 1) == 0)
      {
        goto LABEL_33;
      }

      v152 = v41;
      v52 = *(v24[7] + 8 * v49);
      v53 = [v52 identifier];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      *&v169 = v54;
      *(&v169 + 1) = v56;
      __chkstk_darwin(v57);
      sub_100003710();
      *(v58 - 16) = &v169;
      LOBYTE(v53) = sub_1000574AC(sub_10004BC6C, v59, v155);

      if ((v53 & 1) == 0)
      {
        v91 = [v52 identifier];
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;

        v148 = v52;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = &_ss50ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
          v95 = v155;
        }

        else
        {
          v141 = v155[2];
          sub_100004E28();
          sub_100013A60();
          v95 = v142;
          v27 = &_ss50ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
        }

        v24 = v154;
        v97 = v95[2];
        v96 = v95[3];
        if (v97 >= v96 >> 1)
        {
          sub_100005150(v96);
          sub_100013A60();
          v95 = v143;
        }

        v95[2] = v97 + 1;
        v155 = v95;
        v98 = &v95[2 * v97];
        v98[4] = v92;
        v98[5] = v94;
        if ([v167 dynamicOptionsSupport])
        {

          v26 = &TableBuilder;
        }

        else
        {
          v112 = [v148 cases];
          v113 = sub_10000519C();
          sub_100003D44(v113, &qword_10019A0A0, LNEnumCaseMetadata_ptr);
          v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v115 = [v167 typeSpecificMetadata];
          v116 = sub_10000519C();
          type metadata accessor for LNValueTypeSpecificMetadataKey(v116);
          sub_1000B887C();
          v117 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1000A0DB4(v117, &v169);

          v26 = &TableBuilder;
          if (v170)
          {
            sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
            v118 = &TableBuilder;
            if (sub_100002C58())
            {
              v163 = v168;
              v168 = _swiftEmptyArrayStorage;
              v165 = sub_1000232F4(v114);
              v119 = 0;
              v120 = v114 & 0xC000000000000001;
              while (v165 != v119)
              {
                sub_10003818C(v119, v120 == 0, v114);
                v121 = v114;
                if (v120)
                {
                  v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v122 = *(v114 + 8 * v119 + 32);
                }

                v123 = v122;
                if (__OFADD__(v119, 1))
                {
                  goto LABEL_109;
                }

                v124 = [v122 v118[31].base_prots];
                v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v127 = v126;

                *&v169 = v125;
                *(&v169 + 1) = v127;
                __chkstk_darwin(v128);
                sub_100003710();
                *(v129 - 16) = &v169;
                LOBYTE(v124) = sub_1000574AC(sub_10009F548, v130, v163);

                if (v124)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v131 = _swiftEmptyArrayStorage[2];
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                v26 = &TableBuilder;
                ++v119;
                v118 = &TableBuilder;
                v114 = v121;
              }

              v166 = _swiftEmptyArrayStorage;
              v41 = v152;
            }

            else
            {
              v166 = v114;
            }
          }

          else
          {
            v166 = v114;
            sub_10003D580(&v169);
            v118 = &TableBuilder;
          }

          v132 = [v156 v118[31].base_prots];
          v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v135 = v134;

          v136 = [v148 v118[31].base_prots];
          v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v139 = v138;

          v140 = sub_1000B7D34(v133, v135, v137, v139, v41, v42, v166, a3, a4, a8);

          sub_10006E450(v140);

          v24 = v154;
LABEL_70:
          v27 = &_ss50ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
        }

        v35 = v159;
        v36 = v161;
        goto LABEL_72;
      }

      v26 = &TableBuilder;
      v27 = &_ss50ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
      v35 = v159;
      v36 = v161;
      v24 = v154;
    }

    else
    {
    }

LABEL_72:
    if (v36 == v35)
    {
      goto LABEL_104;
    }
  }

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
}

uint64_t sub_1000B7D34(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a7;
  if (a7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = _swiftEmptyArrayStorage;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v56 = a9;
    v62 = v10 & 0xC000000000000001;
    v55 = xmmword_10014CE80;
    v66 = _swiftEmptyArrayStorage;
    v57 = v10;
    v63 = result;
    do
    {
      if (v62)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v67 = v17;
      v68 = v19;
      __chkstk_darwin(v20);
      sub_100003710();
      *(v21 - 16) = &v67;
      LOBYTE(v16) = sub_1000574AC(sub_10009F548, v22, v12);

      if (v16)
      {
      }

      else
      {
        v23 = [v15 identifier];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = v12[2];
          sub_100004E28();
          sub_100013A60();
          v12 = v50;
        }

        v27 = v66;
        v29 = v12[2];
        v28 = v12[3];
        if (v29 >= v28 >> 1)
        {
          sub_100005150(v28);
          sub_100013A60();
          v12 = v51;
        }

        v12[2] = v29 + 1;
        v30 = &v12[2 * v29];
        v30[4] = v24;
        v30[5] = v26;
        v31 = sub_100069D78([v15 displayRepresentation]);
        if (v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = _swiftEmptyArrayStorage;
        }

        sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
        inited = swift_initStackObject();
        *(inited + 16) = v55;
        v34 = [v15 displayRepresentation];
        v35 = [v34 title];

        *(inited + 32) = v35;
        v67 = inited;
        sub_10006E4F4(v32);
        v36 = v67;

        v37 = sub_1000B6AC8(v36, a10);

        v67 = a3;
        v68 = a4;

        v38._countAndFlagsBits = 46;
        v38._object = 0xE100000000000000;
        String.append(_:)(v38);
        v39 = [v15 identifier];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43._countAndFlagsBits = v40;
        v43._object = v42;
        String.append(_:)(v43);

        v44 = v67;
        v45 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = v66[2];
          sub_100004E28();
          sub_100070554();
          v27 = v53;
        }

        v47 = v27[2];
        v46 = v27[3];
        if (v47 >= v46 >> 1)
        {
          sub_100005150(v46);
          sub_100070554();
          v27 = v54;
        }

        v27[2] = v47 + 1;
        v66 = v27;
        v48 = &v27[8 * v47];
        v10 = v57;
        v48[4] = a1;
        v48[5] = a2;
        v48[6] = a5;
        v48[7] = a6;
        v48[8] = v44;
        v48[9] = v45;
        v48[10] = v37;
        *(v48 + 44) = 0;
      }

      ++v13;
    }

    while (v63 != v13);

    return v66;
  }

  return result;
}

uint64_t sub_1000B8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v70 = a2;
  v71 = a4;
  v68 = a1;
  v69 = a3;
  v12 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v62 - v14;
  type metadata accessor for URL();
  sub_100003B94();
  v16 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  v17 = sub_1000B8564(0x64656C62616E65, 0xE700000000000000, 0x64656C62616E65, 0xE700000000000000, 0, 0, v15);
  sub_100003B94();
  v18 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  v19 = sub_1000B8564(0x64656C6261736964, 0xE800000000000000, 0x64656C6261736964, 0xE800000000000000, 0, 0, v15);
  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = v17;
  }

  v67 = v17;
  v21 = a6;
  if (!a6)
  {
    v21 = v19;
  }

  v64 = v21;
  v66 = v19;
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v22 = swift_allocObject();
  v63 = xmmword_10014CE90;
  *(v22 + 16) = xmmword_10014CE90;
  v23 = a5;
  v24 = a6;
  v25 = [v20 key];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = *a9;
  v30 = *(*a9 + 16);
  v65 = v20;
  v62[1] = a7;
  if (v30 && (v31 = sub_10000C2A0(v26, v28), (v32 & 1) != 0))
  {
    v33 = (*(v29 + 56) + 16 * v31);
    v34 = *v33;
    v35 = v33[1];
  }

  else
  {
    v36 = String._bridgeToObjectiveC()();
    v37 = [v20 localizedStringForLocaleIdentifier:v36];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v38;

    v39 = *a9;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000721C();

    v29 = v72;
    *a9 = v72;
  }

  *(v22 + 32) = v34;
  *(v22 + 40) = v35;
  v40 = swift_allocObject();
  *(v40 + 16) = v63;

  v41 = v64;
  v42 = [v64 key];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  if (*(v29 + 16) && (v46 = sub_10000C2A0(v43, v45), (v47 & 1) != 0))
  {
    v48 = (*(v29 + 56) + 16 * v46);
    v49 = v41;
    v50 = *v48;
    v51 = v48[1];
  }

  else
  {
    v52 = String._bridgeToObjectiveC()();
    v53 = [v41 localizedStringForLocaleIdentifier:v52];

    v49 = v41;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v54;

    v55 = *a9;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000721C();

    *a9 = v72;
  }

  *(v40 + 32) = v50;
  *(v40 + 40) = v51;
  sub_10002EB80(&qword_10019A4F8, &unk_100150170);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10014BC40;
  v58 = v68;
  v57 = v69;
  *(v56 + 32) = v68;
  v59 = v70;
  v60 = v71;
  *(v56 + 40) = v70;
  *(v56 + 48) = v57;
  *(v56 + 56) = v60;
  *(v56 + 64) = 1163219540;
  *(v56 + 72) = 0xE400000000000000;
  *(v56 + 80) = v22;
  *(v56 + 88) = 0;
  *(v56 + 96) = v58;
  *(v56 + 104) = v59;
  *(v56 + 112) = v57;
  *(v56 + 120) = v60;
  *(v56 + 128) = 0x45534C4146;
  *(v56 + 136) = 0xE500000000000000;
  *(v56 + 144) = v40;
  *(v56 + 152) = 0;

  return v56;
}

id sub_1000B8564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v13 = String._bridgeToObjectiveC()();

    if (a6)
    {
LABEL_3:
      v14 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = type metadata accessor for URL();
  v17 = 0;
  if (sub_1000032C4(a7, 1, v15) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  v19 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v17];

  return v19;
}

uint64_t sub_1000B86A4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_10000C2A0(v7, v6);
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
        sub_10002EB80(&qword_10019B490, &qword_10014EE48);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_100046DE4(v15, a2 & 1);
      v17 = *a3;
      v18 = sub_10000C2A0(v7, v6);
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

      v22 = v20[7];
      v23 = *(v22 + 8 * v12);
      *(v22 + 8 * v12) = v21;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v24 = (v20[6] + 16 * v12);
      *v24 = v7;
      v24[1] = v6;
      *(v20[7] + 8 * v12) = v10;
      v25 = v20[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v20[2] = v27;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000B887C()
{
  result = qword_100198950;
  if (!qword_100198950)
  {
    type metadata accessor for LNValueTypeSpecificMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198950);
  }

  return result;
}

void *sub_1000B88D4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1000B9810(v21);
  if (a2)
  {
    v7 = v22;
    v17 = v23;
    v16 = sub_1000034B4(v21, v22);
    if (qword_1001982B8 != -1)
    {
      sub_10000801C();
    }

    v24 = v2;
    memcpy(__dst, &unk_10019DEC8, sizeof(__dst));
    if (qword_1001982C0 != -1)
    {
      sub_100002C7C();
    }

    memcpy(v19, __dst, sizeof(v19));
    QueryType.namespace<A>(_:)(qword_10019DF78, unk_10019DF80, qword_10019DF88, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v8, v9, v16, v17, *&v19[0], *(&v19[0] + 1), *&v19[1], *(&v19[1] + 1), *&v19[2], *(&v19[2] + 1), *&v19[3], *(&v19[3] + 1), *&v19[4], *(&v19[4] + 1), *&v19[5], *(&v19[5] + 1), *&v19[6], *(&v19[6] + 1), *&v19[7], *(&v19[7] + 1), *&v19[8], *(&v19[8] + 1), *&v19[9], *(&v19[9] + 1), *&v19[10], *(&v19[10] + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13]);
    *&v19[0] = a1;
    *(&v19[0] + 1) = a2;
    v3 = == infix<A>(_:_:)();
    v11 = v10;
    v13 = v12;

    *(&v19[1] + 1) = v7;
    *&v19[2] = v18;
    sub_100013234(v19);
    QueryType.filter(_:)(v3, v11, v13, v7, v18);

    sub_1000034F8(v21);
    sub_10001A798(v19, v21);
    v4 = v24;
  }

  Connection.prepare(_:)(v21);
  if (v4)
  {
    sub_1000034F8(v21);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    *&v19[0] = _swiftEmptyArrayStorage;
    swift_retain_n();
    dispatch thunk of _AnySequenceBox._makeIterator()();
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!__dst[0])
      {
        break;
      }

      v14 = sub_1000BA328(__dst[0], __dst[1]);

      if (v14)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v19[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = *&v19[0];
      }
    }

    sub_1000034F8(v21);
  }

  return v3;
}

uint64_t sub_1000B8BA0(uint64_t a1, uint64_t a2)
{
  if (qword_1001982B8 != -1)
  {
    sub_10000801C();
  }

  memcpy(__dst, &unk_10019DEC8, sizeof(__dst));
  if (qword_1001982C0 != -1)
  {
    sub_100002C7C();
  }

  sub_100003A8C(&qword_10019DF78);
  __src[0] = a1;
  v4 = == infix<A>(_:_:)();
  v6 = v5;
  v8 = v7;
  memcpy(v16, __dst, sizeof(v16));
  QueryType.filter(_:)(v4, v6, v8, &type metadata for Table, &protocol witness table for Table, v9, v10, v11, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], __src[0], a2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v19, __src, sizeof(v19));
  memcpy(__src, v19, sizeof(__src));
  v20 = QueryType.delete()();
  countAndFlagsBits = v20.template._countAndFlagsBits;
  object = v20.template._object;
  rawValue = v20.bindings._rawValue;
  sub_10001970C(v19);
  v21.template._countAndFlagsBits = countAndFlagsBits;
  v21.template._object = object;
  v21.bindings._rawValue = rawValue;
  Connection.run(_:)(v21);
}

void sub_1000B8D48(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a2;
  v7 = [a1 action];
  v8 = [v7 identifier];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [a1 action];
  v13 = [v12 parameters];

  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_1000B9318();
  if (v4)
  {
  }

  else
  {
    v16 = v14;
    v17 = v15;
    v24 = v9;

    v23 = sub_1000F84DC(a1);
    v25 = v18;
    v19 = [a1 rkContext];
    v20 = sub_1000B9428();
    v22 = v21;

    __src[0] = v30;
    __src[1] = a3;
    __src[2] = v24;
    __src[3] = v11;
    __src[4] = v16;
    __src[5] = v17;
    __src[6] = v23;
    __src[7] = v25;
    __src[8] = v20;
    __src[9] = v22;
    v29[0] = v30;
    v29[1] = a3;
    v29[2] = v24;
    v29[3] = v11;
    v29[4] = v16;
    v29[5] = v17;
    v29[6] = v23;
    v29[7] = v25;
    v29[8] = v20;
    v29[9] = v22;
    sub_1000BAC6C(__src, v27);
    sub_100084030(v29);
    memcpy(a4, __src, 0x50uLL);
  }
}

uint64_t sub_1000B8F6C(__int128 *a1)
{
  if (qword_1001982B8 != -1)
  {
    sub_10000801C();
  }

  memcpy(__dst, &unk_10019DEC8, sizeof(__dst));
  memcpy(__src, &unk_10019DEC8, sizeof(__src));
  sub_1000196B0(__dst, v12);
  if (qword_1001982C0 != -1)
  {
    sub_100002C7C();
  }

  sub_100003A8C(&qword_10019DF78);
  v11 = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  *(swift_allocObject() + 16) = xmmword_10014ECA0;
  if (qword_1001982C8 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DF90);
  v11 = a1[1];
  <- infix<A>(_:_:)();
  if (qword_1001982D0 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DFA8);
  v16 = a1[2];
  v11 = a1[2];
  <- infix<A>(_:_:)();
  v2 = v11;
  sub_1000BABA0(&v16, v10);
  sub_100009B18(v2, *(&v2 + 1));
  if (qword_1001982D8 != -1)
  {
    swift_once();
  }

  v15 = a1[3];
  v11 = a1[3];
  sub_1000BABFC(&v15, v10);
  <- infix<A>(_:_:)();
  sub_100003E9C(&v15, &unk_100199100, &qword_10014E230);
  if (qword_1001982E0 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DFD8);
  v14 = a1[4];
  v11 = a1[4];
  <- infix<A>(_:_:)();
  v3 = v11;
  sub_1000BABA0(&v14, v10);
  sub_100009B18(v3, *(&v3 + 1));
  v4 = QueryType.insert(_:_:)(v12);
  v6 = v5;
  v8 = v7;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v12);
  memcpy(v18, __src, sizeof(v18));
  sub_10001970C(v18);
  v19.template._countAndFlagsBits = v4;
  v19.template._object = v6;
  v19.bindings._rawValue = v8;
  Connection.run(_:)(v19);
}

void *sub_1000B9318()
{
  v0 = objc_opt_self();
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
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

void *sub_1000B9428()
{
  v5 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1000B9560()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_1000B95E8()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x80000001001564D0, v0, v1);
}

uint64_t sub_1000B9670()
{
  v0 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v1 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  return ExpressionType.init(_:)(0xD000000000000011, 0x8000000100156890, v0, v1);
}

uint64_t sub_1000B96F8()
{
  v0 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v1 = sub_100013F04(&qword_100199520, &qword_100199518, &unk_10014ED10);
  return ExpressionType.init(_:)(0x694B746567646977, 0xEA0000000000646ELL, v0, v1);
}

uint64_t sub_1000B9780()
{
  v0 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v1 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  return ExpressionType.init(_:)(0x436465646F636E65, 0xEE00747865746E6FLL, v0, v1);
}

uint64_t sub_1000B9810@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001982B8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019DEC8, sizeof(__dst));
  if (qword_100198140 != -1)
  {
    swift_once();
  }

  memcpy(__src, &unk_10019DA70, sizeof(__src));
  if (qword_1001983B0 != -1)
  {
    swift_once();
  }

  memcpy(v262, &unk_10019E338, sizeof(v262));
  memcpy(v263, __dst, sizeof(v263));
  if (qword_1001982C0 != -1)
  {
    swift_once();
  }

  v1 = qword_10019DF78;
  memcpy(v264, __dst, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DF78, unk_10019DF80, qword_10019DF88, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v2, v3, v90, v102, v117, v132, v146, v160, v174, a1, qword_10019DF88, unk_10019DF80, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v259[3] = v10;
  v259[4] = &protocol witness table for Expression<A>;
  v259[0] = v5;
  v259[1] = v7;
  v259[2] = v9;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014E680;
  if (qword_1001982C8 != -1)
  {
    swift_once();
  }

  memcpy(v264, __dst, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DF90, *algn_10019DF98, qword_10019DFA0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v12, v13, v91, v103, v118, qword_10019DFA0, *algn_10019DF98, qword_10019DF90, v175, v189, v203, v217, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  *(v11 + 56) = v10;
  *(v11 + 64) = &protocol witness table for Expression<A>;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v16;
  if (qword_1001982D0 != -1)
  {
    swift_once();
  }

  memcpy(v264, __dst, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DFA8, unk_10019DFB0, qword_10019DFB8, &type metadata for Table, &type metadata for Data, &protocol witness table for Table, v17, v18, v92, v104, v119, v133, v147, v161, v176, v190, v204, v218, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  *(v11 + 96) = v25;
  *(v11 + 104) = &protocol witness table for Expression<A>;
  *(v11 + 72) = v20;
  *(v11 + 80) = v22;
  *(v11 + 88) = v24;
  if (qword_1001982D8 != -1)
  {
    swift_once();
  }

  v26 = qword_10019DFC0;
  v27 = *algn_10019DFC8;
  v28 = qword_10019DFD0;
  memcpy(v264, __dst, 0xB0uLL);
  v29 = sub_10002EB80(&unk_100199100, &qword_10014E230);
  QueryType.namespace<A>(_:)(v26, v27, v28, &type metadata for Table, v29, &protocol witness table for Table, v30, v31, v93, v105, v120, v134, v148, v162, v177, v191, v205, v219, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  *(v11 + 136) = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  *(v11 + 144) = &protocol witness table for Expression<A>;
  *(v11 + 112) = v33;
  *(v11 + 120) = v35;
  *(v11 + 128) = v37;
  if (qword_1001982E0 != -1)
  {
    swift_once();
  }

  memcpy(v264, __dst, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DFD8, unk_10019DFE0, qword_10019DFE8, &type metadata for Table, &type metadata for Data, &protocol witness table for Table, v38, v39, v94, v106, v121, v135, v149, v163, v178, v192, v206, v220, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  *(v11 + 176) = v25;
  *(v11 + 184) = &protocol witness table for Expression<A>;
  *(v11 + 152) = v40;
  *(v11 + 160) = v41;
  *(v11 + 168) = v42;
  if (qword_100198158 != -1)
  {
    swift_once();
  }

  memcpy(v264, __src, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019DB50, *algn_10019DB58, qword_10019DB60, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v43, v44, v95, v107, v122, v136, v150, v164, v179, v193, v207, v221, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  *(v11 + 216) = v10;
  *(v11 + 224) = &protocol witness table for Expression<A>;
  *(v11 + 192) = v45;
  *(v11 + 200) = v46;
  *(v11 + 208) = v47;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  memcpy(v264, v262, 0xB0uLL);
  QueryType.namespace<A>(_:)(qword_10019E418, unk_10019E420, qword_10019E428, &type metadata for Table, &type metadata for Int, &protocol witness table for Table, v48, v49, v96, v108, v123, v137, v151, v165, v180, v194, v208, v222, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  *(v11 + 256) = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  *(v11 + 264) = &protocol witness table for Expression<A>;
  *(v11 + 232) = v51;
  *(v11 + 240) = v53;
  *(v11 + 248) = v55;
  SchemaType.select(_:_:)(v259, v11, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v259);
  memcpy(v263, v264, sizeof(v263));
  v231 = swift_allocObject();
  memcpy((v231 + 16), __src, 0xB0uLL);
  memcpy(v259, __dst, sizeof(v259));
  sub_1000196B0(__src, v258);
  QueryType.namespace<A>(_:)(v1, v223, v209, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v56, v57, v97, v109, v124, v138, v152, v166, v1, v195, v209, v223, v231, v232, v233, &type metadata for Table, &protocol witness table for Table, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  if (qword_100198148 != -1)
  {
    swift_once();
  }

  memcpy(v259, __src, sizeof(v259));
  QueryType.namespace<A>(_:)(qword_10019DB20, *algn_10019DB28, qword_10019DB30, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v58, v59, v98, v110, v125, v139, v153, v167, v181, v196, v210, v224, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v126 = == infix<A>(_:_:)();
  v61 = v60;
  v63 = v62;

  memcpy(v259, __dst, sizeof(v259));
  QueryType.namespace<A>(_:)(v168, v154, v140, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v64, v65, &protocol witness table for String, v111, v126, v140, v154, v168, v182, v197, v211, v225, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  if (qword_100198150 != -1)
  {
    swift_once();
  }

  memcpy(v259, __src, sizeof(v259));
  QueryType.namespace<A>(_:)(qword_10019DB38, unk_10019DB40, qword_10019DB48, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v66, v67, v99, v112, v127, v141, v155, v169, v183, v198, v212, v226, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v68 = == infix<A>(_:_:)();
  v70 = v69;
  v72 = v71;

  v73 = && infix(_:_:)(v128, v61, v63, v68, v70, v72);
  v75 = v74;
  v77 = v76;

  memcpy(v258, v263, sizeof(v258));
  QueryType.join(_:_:on:)(1, &v231, v73, v75, v77, &type metadata for Table, &protocol witness table for Table, v78, &protocol witness table for String, v113, v128, v142, v156, v170, v184, v199, v213, v227, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);

  sub_10001970C(v263);
  sub_1000034F8(&v231);
  memcpy(v264, v259, 0xB0uLL);
  v256 = &type metadata for Table;
  v257 = &protocol witness table for Table;
  v253 = swift_allocObject();
  memcpy((v253 + 16), v262, 0xB0uLL);
  memcpy(v258, __dst, sizeof(v258));
  sub_1000196B0(v262, &v231);
  QueryType.namespace<A>(_:)(v185, v228, v214, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v79, v80, v100, v114, v129, v143, v157, v171, v185, v200, v214, v228, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  if (qword_1001983B8 != -1)
  {
    swift_once();
  }

  memcpy(v258, v262, sizeof(v258));
  QueryType.namespace<A>(_:)(qword_10019E3E8, unk_10019E3F0, qword_10019E3F8, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v81, v82, v101, v115, v130, v144, v158, v172, v186, v201, v215, v229, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);
  v83 = == infix<A>(_:_:)();
  v85 = v84;
  v87 = v86;

  v202[3] = &type metadata for Table;
  v202[4] = &protocol witness table for Table;
  *v202 = swift_allocObject();
  memcpy(v258, v264, sizeof(v258));
  QueryType.join(_:_:on:)(1, &v253, v83, v85, v87, &type metadata for Table, &protocol witness table for Table, v88, &protocol witness table for String, v116, v131, v145, v159, v173, v187, v202, v216, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258[0]);

  sub_10001970C(v264);
  return sub_1000034F8(&v253);
}

uint64_t sub_1000BA328(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  if (qword_1001982C0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v9 = v25;
  v8 = v26;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198158 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v11 = type metadata accessor for URL();
  sub_1000075C4(v7, 1, 1, v11);
  v12 = static LNActionMetadata.fromJSON(_:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)();
  sub_100003E9C(v7, &qword_1001990C0, &unk_10014E200);

  if (qword_1001982D0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v13 = v25;
  v14 = v26;
  sub_1000BA898();
  sub_100009B18(v13, v14);
  objc_allocWithZone(LNAction);

  v15 = v12;
  v16 = sub_1000BAA38(v15);
  if (qword_1001982D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019DFC0, *algn_10019DFC8, a1, a2, &type metadata for String, &protocol witness table for String, &v25);
  v18 = v25;
  v17 = v26;
  if (qword_1001982E0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v19 = v25;
  v20 = v26;
  sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  sub_100003D44(0, qword_10019B5A8, RKRelevantContext_ptr);
  v21 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v21)
  {
    sub_100009B18(v19, v20);
    v22 = objc_allocWithZone(LNRelevantIntent);
    v23 = sub_1000BAAE8(v9, v8, v16, v18, v17, v21);

    return v23;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000BA898()
{
  sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  sub_10002EB80(&qword_100199508, &unk_10014E210);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10014BC40;
  *(v1 + 32) = sub_100003D44(0, &qword_100199510, NSArray_ptr);
  *(v1 + 40) = sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v0)
  {
    if (v4)
    {
      sub_10002EB80(&qword_10019B2F8, &qword_1001508A0);
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_100003E9C(v3, &qword_1001992F0, &qword_10014E000);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1000BAA38(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v1 initWithMetadata:a1 bundleIdentifier:v3 parameters:isa];

  return v5;
}

id sub_1000BAAE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v11 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithBundleIdentifier:v11 action:a3 widgetKind:v12 rkContext:a6];

  return v13;
}

uint64_t sub_1000BABFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&unk_100199100, &qword_10014E230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BACA4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000BACC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000BAD08(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000BADBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = type metadata accessor for Logger();
  sub_100037CD8(v5, a2);
  sub_10000347C(v5, a2);
  result = *a3;
  if (*a3)
  {
    String.init(cString:)();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      String.init(cString:)();
      return Logger.init(subsystem:category:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BAE4C()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019E050);
  sub_10000347C(v0, qword_10019E050);
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

uint64_t sub_1000BAED0()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019E068);
  sub_10000347C(v0, qword_10019E068);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BAF54(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for LazyTask.State();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BB014()
{
  v1 = *v0;

  v2 = *(v0 + 32);

  v3 = *(*v0 + 128);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = type metadata accessor for LazyTask.State();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  return v0;
}

uint64_t sub_1000BB0D8()
{
  sub_1000BB014();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000BB150(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = type metadata accessor for Result();
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_1000BB1B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) > 3)
  {
    goto LABEL_6;
  }

  v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
  if (HIWORD(v8))
  {
    v6 = *(a1 + v4);
    if (v6)
    {
      goto LABEL_14;
    }

LABEL_22:
    v10 = *(a1 + v3);
    if (v10 >= 2)
    {
      v11 = (v10 ^ 0xFF) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v8 > 0xFF)
  {
    v6 = *(a1 + v4);
    if (*(a1 + v4))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v8 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1000BB2F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = ~a2;
        }

        break;
    }
  }
}

uint64_t sub_1000BB4C4(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = type metadata accessor for LazyTask.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = type metadata accessor for Result();
  sub_1000075C4(v8, 1, 1, v9);
  v10 = *(*a1 + 128);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1000BB650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10002EB80(&qword_10019B6B0, &qword_100150A78);
  v10 = sub_100002944(v9);
  v91 = v11;
  v92 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v94 = &v87 - v14;
  v15 = type metadata accessor for Locale();
  v16 = sub_100002944(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v23 = a4;
  }

  else
  {
    static Locale.current.getter();
    a3 = Locale.identifier.getter();
    v23 = v24;
    (*(v18 + 8))(v22, v15);
  }

  isa = [v5 localizations];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v26 = objc_opt_self();
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10014CE90;
  *(v27 + 32) = a3;
  *(v27 + 40) = v23;
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v26 preferredLocalizationsFromArray:isa forPreferences:v28];

  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v30[2])
  {

    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    return Dictionary.init(dictionaryLiteral:)();
  }

  v32 = v30[4];
  v31 = v30[5];

  if (a2)
  {
    v33 = String._bridgeToObjectiveC()();
  }

  else
  {
    v33 = 0;
  }

  v35 = String._bridgeToObjectiveC()();

  v36 = [v5 localizedStringsForTable:v33 localization:v35];

  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10002EB80(&qword_10019B6B8, &qword_100150A80);
  v38 = v94;
  v39 = Regex.init(_regexString:version:)();
  __chkstk_darwin(v39);
  *(&v87 - 2) = v38;

  sub_100118320(sub_1000BC0A0, (&v87 - 4), v37);
  v41 = v40;

  v95 = v41;

  sub_1000BC0BC(&v95);

  v42 = 0;
  v43 = v95;
  v44 = v95[2];
  v45 = v95 + 8;
  v93 = &_swiftEmptyDictionarySingleton;
  v90 = v95 + 8;
  while (2)
  {
    for (i = &v45[5 * v42]; ; i += 5)
    {
      if (v44 == v42)
      {

        (*(v91 + 8))(v94, v92);
        return v93;
      }

      if (v42 >= *(v43 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (!*(v37 + 16))
      {
        goto LABEL_18;
      }

      v47 = *(i - 1);
      v48 = *i;
      v49 = *(i - 4);
      v50 = *(i - 3);
      swift_bridgeObjectRetain_n();

      v51 = sub_10000C2A0(v49, v50);
      v53 = v52;

      if (v53)
      {
        break;
      }

LABEL_18:
      ++v42;
    }

    v54 = (*(v37 + 56) + 16 * v51);
    v55 = *v54;
    v88 = v54[1];
    v89 = v55;
    v56 = v93;
    if (*(v93 + 16))
    {

      v57 = sub_10000C2A0(v47, v48);
      v59 = v58;

      v60 = _swiftEmptyArrayStorage;
      if (v59)
      {
        v61 = *(*(v56 + 56) + 8 * v57);
        goto LABEL_23;
      }
    }

    else
    {
      v61 = _swiftEmptyArrayStorage;
LABEL_23:

      v60 = v61;
    }

    v62 = v60;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v63 = v62;
    }

    else
    {
      v84 = v62[2];
      sub_100013A60();
      v63 = v85;
    }

    v64 = v63[2];
    if (v64 >= v63[3] >> 1)
    {
      sub_100013A60();
      v63 = v86;
    }

    v63[2] = v64 + 1;
    v87 = v63;
    v65 = &v63[2 * v64];
    v66 = v88;
    v65[4] = v89;
    v65[5] = v66;

    LODWORD(v89) = swift_isUniquelyReferenced_nonNull_native();
    v95 = v56;
    v67 = sub_10000C2A0(v47, v48);
    v69 = *(v56 + 16);
    v70 = (v68 & 1) == 0;
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_41;
    }

    v72 = v67;
    LODWORD(v93) = v68;
    sub_10002EB80(&qword_10019AFD0, &qword_1001501F0);
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v89, v71))
    {
      v45 = v90;
      v76 = v87;
      v75 = v93;
LABEL_33:
      v77 = v95;
      v93 = v95;
      if (v75)
      {
        v78 = v95[7];
        v79 = *(v78 + 8 * v72);
        *(v78 + 8 * v72) = v76;

LABEL_37:
        ++v42;

        continue;
      }

      v95[(v72 >> 6) + 8] |= 1 << v72;
      v80 = (v77[6] + 16 * v72);
      *v80 = v47;
      v80[1] = v48;
      *(v77[7] + 8 * v72) = v76;
      v81 = v77[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (!v82)
      {
        v77[2] = v83;
        goto LABEL_37;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    break;
  }

  v73 = sub_10000C2A0(v47, v48);
  v75 = v93;
  v45 = v90;
  if ((v93 & 1) == (v74 & 1))
  {
    v72 = v73;
    v76 = v87;
    goto LABEL_33;
  }

LABEL_43:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000BBD74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002EB80(&qword_10019B6C0, &qword_100150A88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_10002EB80(&qword_10019B6C8, &qword_100150A90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = a1[1];
  sub_10002EB80(&qword_10019B6B0, &qword_100150A78);
  Regex.wholeMatch(in:)();
  if (v2)
  {

    sub_1000075C4(v8, 1, 1, v9);
LABEL_4:
    result = sub_1000BD89C(v8);
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (sub_1000032C4(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  v34 = v10;
  (*(v10 + 32))(v13, v8, v9);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v18 = v30;
  v17 = v31;
  if (!((v31 ^ v30) >> 14))
  {

    goto LABEL_11;
  }

  v28 = v32;
  v29 = v33;
  v19 = sub_1000BD940(v30, v31, v32, v33, 10);
  if ((v20 & 0x100) == 0)
  {
    v21 = v20;
    v28 = v19;

    v22 = v34;
    if ((v21 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    result = (*(v22 + 8))(v13, v9);
    goto LABEL_5;
  }

  v28 = sub_1000BCE68(v18, v17, v28, v29, 10);
  v24 = v23;

  if (v24)
  {
LABEL_11:
    v22 = v34;
    goto LABEL_12;
  }

LABEL_13:
  swift_getKeyPath();

  Regex.Match.subscript.getter();

  v25 = static String._fromSubstring(_:)();
  v27 = v26;

  result = (*(v34 + 8))(v13, v9);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v28;
  *(a2 + 24) = v25;
  *(a2 + 32) = v27;
  return result;
}

Swift::Int sub_1000BC0BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000BD888(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1000BC128(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000BC128(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10002EB80(&unk_10019B370, &unk_100150580);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1000BC360(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000BC22C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000BC22C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v23 = a3;
      v7 = (v4 + 40 * a3);
      v8 = v7[2];
      v9 = v7[3];
      v10 = v7[4];
      v21 = v6;
      v22 = v5;
      do
      {
        v11 = *(v5 + 16);
        v12 = v9 == *(v5 + 24) && v10 == *(v5 + 32);
        if (v12 || (v13 = *(v5 + 24), v14 = *(v5 + 32), result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          if (v8 >= v11)
          {
            break;
          }
        }

        else
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v15 = *(v5 + 48);
        v8 = *(v5 + 56);
        v16 = *(v5 + 16);
        v18 = *(v5 + 32);
        v17 = *(v5 + 40);
        *(v5 + 40) = *v5;
        v9 = *(v5 + 64);
        v10 = *(v5 + 72);
        *(v5 + 56) = v16;
        *(v5 + 72) = v18;
        *v5 = v17;
        *(v5 + 8) = v15;
        *(v5 + 16) = v8;
        *(v5 + 24) = v9;
        *(v5 + 32) = v10;
        v5 -= 40;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v23 + 1;
      v5 = v22 + 40;
      v6 = v21 - 1;
      if (v23 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000BC360(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if ((v5 + 1) < v4)
      {
        v121 = v6;
        v9 = *a3;
        v10 = v5;
        v11 = v5 + 1;
        v12 = (*a3 + 40 * v8);
        v13 = v12[2];
        v14 = v12[3];
        v15 = v12[4];
        v124 = v10;
        v16 = (*a3 + 40 * v10);
        v17 = v16[2];
        v18 = v14 == v16[3] && v15 == v16[4];
        v127 = v4;
        if (v18 || (v19 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 = v127, (v19 & 1) != 0))
        {
          v129 = v13 < v17;
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v4 = v127;
          v129 = v20;
        }

        v21 = 0;
        v22 = (v124 + 2);
        v23 = (v9 + 40 * v124 + 112);
        v24 = v11;
        do
        {
          v25 = v22;
          v26 = v24;
          v27 = v21;
          if (v22 >= v4)
          {
            break;
          }

          v28 = *(v23 - 2);
          v29 = *(v23 - 7);
          if (*(v23 - 1) == *(v23 - 6) && *v23 == *(v23 - 5))
          {
            goto LABEL_18;
          }

          v31 = *(v23 - 1);
          v32 = *v23;
          v33 = *(v23 - 6);
          v34 = *(v23 - 5);
          v132 = v22;
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v25 = v132;
          v4 = v127;
          if (v35)
          {
LABEL_18:
            v36 = v28 < v29;
          }

          else
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v25 = v132;
            v4 = v127;
          }

          v22 = v25 + 1;
          v23 += 5;
          v24 = v26 + 1;
          v21 = v27 + 40;
        }

        while (((v129 ^ v36) & 1) == 0);
        if (v129)
        {
          v37 = v124;
          v6 = v121;
          if (v25 < v124)
          {
            goto LABEL_140;
          }

          if (v124 >= v25)
          {
            v8 = v25;
            v7 = v124;
            goto LABEL_33;
          }

          v38 = 0;
          do
          {
            if (v37 != v26)
            {
              if (!*a3)
              {
                goto LABEL_147;
              }

              v39 = *a3 + 40 * v124;
              v40 = (v39 + v38);
              v41 = v39 + v27;
              v42 = *v40;
              v43 = v40[1];
              v44 = v40[4];
              v45 = *(v40 + 1);
              v46 = *(v41 + 72);
              v47 = *(v41 + 56);
              *v40 = *(v41 + 40);
              *(v40 + 1) = v47;
              v40[4] = v46;
              *(v41 + 40) = v42;
              *(v41 + 48) = v43;
              *(v41 + 56) = v45;
              *(v41 + 72) = v44;
            }

            ++v37;
            v27 -= 40;
            v38 += 40;
          }

          while (v37 < v26--);
          v8 = v25;
        }

        else
        {
          v8 = v25;
          v6 = v121;
        }

        v7 = v124;
      }

LABEL_33:
      v49 = a3[1];
      if (v8 < v49)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_139;
        }

        if (v8 - v7 < a4)
        {
          v50 = &v7[a4];
          if (__OFADD__(v7, a4))
          {
            goto LABEL_141;
          }

          if (v50 >= v49)
          {
            v50 = a3[1];
          }

          if (v50 >= v7)
          {
            if (v8 == v50)
            {
              goto LABEL_56;
            }

            v122 = v6;
            v51 = *a3;
            v52 = *a3 + 40 * v8 - 40;
            v125 = v7;
            v126 = v50;
            v53 = v7 - v8;
LABEL_42:
            v130 = v52;
            v132 = v8;
            v54 = (v51 + 40 * v8);
            v55 = v54[2];
            v56 = v54[3];
            v57 = v54[4];
            v128 = v53;
            v58 = v52;
            while (1)
            {
              v59 = *(v58 + 16);
              v60 = v56 == *(v58 + 24) && v57 == *(v58 + 32);
              if (v60 || (v61 = *(v58 + 24), v62 = *(v58 + 32), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
                if (v55 >= v59)
                {
                  goto LABEL_54;
                }
              }

              else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_54;
              }

              if (!v51)
              {
                break;
              }

              v63 = *(v58 + 48);
              v55 = *(v58 + 56);
              v64 = *(v58 + 16);
              v66 = *(v58 + 32);
              v65 = *(v58 + 40);
              *(v58 + 40) = *v58;
              v56 = *(v58 + 64);
              v57 = *(v58 + 72);
              *(v58 + 56) = v64;
              *(v58 + 72) = v66;
              *v58 = v65;
              *(v58 + 8) = v63;
              *(v58 + 16) = v55;
              *(v58 + 24) = v56;
              *(v58 + 32) = v57;
              v58 -= 40;
              if (__CFADD__(v53++, 1))
              {
LABEL_54:
                v8 = v132 + 1;
                v52 = v130 + 40;
                v53 = v128 - 1;
                if (v132 + 1 == v126)
                {
                  v8 = v126;
                  v6 = v122;
                  v7 = v125;
                  goto LABEL_56;
                }

                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

LABEL_142:
          __break(1u);
LABEL_143:
          v6 = sub_1000BCD28(v6);
          goto LABEL_110;
        }
      }

LABEL_56:
      if (v8 < v7)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = *(v6 + 16);
        sub_1000702DC();
        v6 = v110;
      }

      v68 = *(v6 + 16);
      v69 = v68 + 1;
      if (v68 >= *(v6 + 24) >> 1)
      {
        sub_1000702DC();
        v6 = v111;
      }

      *(v6 + 16) = v69;
      v70 = v6 + 32;
      v71 = (v6 + 32 + 16 * v68);
      *v71 = v7;
      v71[1] = v8;
      v131 = *a1;
      if (!*a1)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v132 = v8;
      if (v68)
      {
        while (1)
        {
          v72 = v69 - 1;
          v73 = (v70 + 16 * (v69 - 1));
          v74 = (v6 + 16 * v69);
          if (v69 >= 4)
          {
            break;
          }

          if (v69 == 3)
          {
            v75 = *(v6 + 32);
            v76 = *(v6 + 40);
            v85 = __OFSUB__(v76, v75);
            v77 = v76 - v75;
            v78 = v85;
LABEL_76:
            if (v78)
            {
              goto LABEL_125;
            }

            v90 = *v74;
            v89 = v74[1];
            v91 = __OFSUB__(v89, v90);
            v92 = v89 - v90;
            v93 = v91;
            if (v91)
            {
              goto LABEL_128;
            }

            v94 = v73[1];
            v95 = v94 - *v73;
            if (__OFSUB__(v94, *v73))
            {
              goto LABEL_131;
            }

            if (__OFADD__(v92, v95))
            {
              goto LABEL_133;
            }

            if (v92 + v95 >= v77)
            {
              if (v77 < v95)
              {
                v72 = v69 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v69 < 2)
          {
            goto LABEL_127;
          }

          v97 = *v74;
          v96 = v74[1];
          v85 = __OFSUB__(v96, v97);
          v92 = v96 - v97;
          v93 = v85;
LABEL_91:
          if (v93)
          {
            goto LABEL_130;
          }

          v99 = *v73;
          v98 = v73[1];
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_132;
          }

          if (v100 < v92)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v72 - 1 >= v69)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
            goto LABEL_142;
          }

          if (!*a3)
          {
            goto LABEL_145;
          }

          v104 = v6;
          v105 = (v70 + 16 * (v72 - 1));
          v6 = *v105;
          v106 = (v70 + 16 * v72);
          v107 = v106[1];
          sub_1000BCAA0((*a3 + 40 * *v105), (*a3 + 40 * *v106), *a3 + 40 * v107, v131);
          if (v134)
          {
            goto LABEL_118;
          }

          if (v107 < v6)
          {
            goto LABEL_120;
          }

          v108 = *(v104 + 16);
          if (v72 > v108)
          {
            goto LABEL_121;
          }

          *v105 = v6;
          v105[1] = v107;
          if (v72 >= v108)
          {
            goto LABEL_122;
          }

          v134 = 0;
          v69 = v108 - 1;
          memmove((v70 + 16 * v72), v106 + 2, 16 * (v108 - 1 - v72));
          v6 = v104;
          *(v104 + 16) = v108 - 1;
          if (v108 <= 2)
          {
            goto LABEL_105;
          }
        }

        v79 = v70 + 16 * v69;
        v80 = *(v79 - 64);
        v81 = *(v79 - 56);
        v85 = __OFSUB__(v81, v80);
        v82 = v81 - v80;
        if (v85)
        {
          goto LABEL_123;
        }

        v84 = *(v79 - 48);
        v83 = *(v79 - 40);
        v85 = __OFSUB__(v83, v84);
        v77 = v83 - v84;
        v78 = v85;
        if (v85)
        {
          goto LABEL_124;
        }

        v86 = v74[1];
        v87 = v86 - *v74;
        if (__OFSUB__(v86, *v74))
        {
          goto LABEL_126;
        }

        v85 = __OFADD__(v77, v87);
        v88 = v77 + v87;
        if (v85)
        {
          goto LABEL_129;
        }

        if (v88 >= v82)
        {
          v102 = *v73;
          v101 = v73[1];
          v85 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v85)
          {
            goto LABEL_137;
          }

          if (v77 < v103)
          {
            v72 = v69 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = v132;
      v4 = a3[1];
      if (v132 >= v4)
      {
        goto LABEL_108;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_108:
  v132 = *a1;
  if (!*a1)
  {
LABEL_149:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_143;
  }

LABEL_110:
  v112 = v6;
  v113 = (v6 + 16);
  v114 = *(v6 + 16);
  v6 = 40;
  while (v114 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_146;
    }

    v115 = (v112 + 16 * v114);
    v116 = *v115;
    v117 = &v113[2 * v114];
    v118 = v117[1];
    sub_1000BCAA0((*a3 + 40 * *v115), (*a3 + 40 * *v117), *a3 + 40 * v118, v132);
    if (v134)
    {
      break;
    }

    if (v118 < v116)
    {
      goto LABEL_134;
    }

    if (v114 - 2 >= *v113)
    {
      goto LABEL_135;
    }

    *v115 = v116;
    v115[1] = v118;
    v119 = *v113 - v114;
    if (*v113 < v114)
    {
      goto LABEL_136;
    }

    v134 = 0;
    v114 = *v113 - 1;
    memmove(v117, v117 + 2, 16 * v119);
    *v113 = v114;
  }

LABEL_118:
}

uint64_t sub_1000BCAA0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a2;
  v5 = (a2 - a1) / 40;
  v6 = (a3 - a2) / 40;
  if (v5 < v6)
  {
    sub_10000E2B8(a1, (a2 - a1) / 40, a4);
    v7 = a4;
    v9 = a3;
    v8 = a1;
    v10 = &a4[40 * v5];
    while (1)
    {
      if (v7 >= v10 || v4 >= v9)
      {
        v23 = v8;
        goto LABEL_41;
      }

      v12 = *(v4 + 2);
      v13 = *(v7 + 2);
      __srca = v7;
      v14 = *(v4 + 3) == *(v7 + 3) && *(v4 + 4) == *(v7 + 4);
      if (v14 || (v15 = v8, v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), v9 = a3, v8 = v15, (v16 & 1) != 0))
      {
        if (v12 >= v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v9 = a3;
        v8 = v15;
        if ((v18 & 1) == 0)
        {
LABEL_17:
          v17 = __srca;
          v7 = __srca + 40;
          if (v8 == __srca)
          {
            goto LABEL_19;
          }

LABEL_18:
          v19 = *v17;
          v20 = *(v17 + 1);
          *(v8 + 4) = *(v17 + 4);
          *v8 = v19;
          *(v8 + 1) = v20;
          goto LABEL_19;
        }
      }

      v17 = v4;
      v14 = v8 == v4;
      v4 += 40;
      v7 = __srca;
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v8 += 40;
    }
  }

  sub_10000E2B8(a2, (a3 - a2) / 40, a4);
  v7 = a4;
  v22 = a3;
  v21 = a1;
  v10 = &a4[40 * v6];
LABEL_21:
  v23 = v4;
  for (v22 -= 40; v10 > v7 && v4 > v21; v22 -= 40)
  {
    v25 = *(v10 - 3);
    v26 = *(v4 - 3);
    if (*(v10 - 2) == *(v4 - 2) && *(v10 - 1) == *(v4 - 1))
    {
      goto LABEL_32;
    }

    v28 = *(v10 - 2);
    v29 = *(v10 - 1);
    v30 = v22;
    v31 = *(v4 - 2);
    v32 = *(v4 - 1);
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = a4;
    v22 = v30;
    v21 = a1;
    if (v33)
    {
LABEL_32:
      if (v25 < v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v7 = a4;
      v22 = v30;
      v21 = a1;
      if (v34)
      {
LABEL_38:
        v4 -= 40;
        if ((v22 + 40) != v23)
        {
          v37 = *v4;
          v38 = *(v23 - 24);
          *(v22 + 32) = *(v23 - 1);
          *v22 = v37;
          *(v22 + 16) = v38;
        }

        goto LABEL_21;
      }
    }

    if (v10 != (v22 + 40))
    {
      v35 = *(v10 - 40);
      v36 = *(v10 - 24);
      *(v22 + 32) = *(v10 - 1);
      *v22 = v35;
      *(v22 + 16) = v36;
    }

    v10 -= 40;
  }

LABEL_41:
  v39 = (v10 - v7) / 40;
  if (v23 != v7 || v23 >= &v7[40 * v39])
  {
    memmove(v23, v7, 40 * v39);
  }

  return 1;
}

char *sub_1000BCD3C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1000BCD68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002EB80(&qword_10019A4E0, &qword_10014F220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unsigned __int8 *sub_1000BCE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1000BDA1C();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000BD3FC();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
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

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000BD3FC()
{
  v0 = sub_1000BD468();
  v4 = sub_1000BD49C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000BD49C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
  v11 = sub_10000A7A4(v9, 0);
  v12 = sub_1000BD5FC(v15, (v11 + 4), v10, a1, a2, a3, a4);

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

unint64_t sub_1000BD5FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1000BD80C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1000BD80C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000BD80C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000BD89C(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_10019B6C0, &qword_100150A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BD940(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1000BDA70(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1000BDA1C()
{
  result = qword_10019B6D0;
  if (!qword_10019B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B6D0);
  }

  return result;
}

uint64_t sub_1000BDA70(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1000BD80C(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1000BD80C(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1000BD80C(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

id sub_1000BDEAC()
{
  result = [objc_opt_self() defaultCenter];
  qword_10019E080 = result;
  return result;
}

void sub_1000BDEE8(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Notification();
  v6 = sub_100002944(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100006844();
  __chkstk_darwin(v11);
  v12 = sub_100013550();
  v13 = sub_1000275B8(v12);
  v14 = sub_1000BE178(v13, &_swiftEmptySetSingleton);

  sub_100007BB4();
  v15.n128_u64[0] = 136315138;
  sub_100018470(v15);
  while (1)
  {
    if (v31 == v16)
    {

      return;
    }

    if (v16 >= *(v14 + 2))
    {
      break;
    }

    v17 = sub_10000803C();
    v14(v17);
    v18.super.isa = Notification._bridgeToObjectiveC()().super.isa;
    [a2 postNotification:v18.super.isa];

    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000347C(v19, qword_10019E008);
    v20 = sub_100011898();
    v14(v20);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v4 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      sub_10000381C(v23);
      v24 = sub_10000529C();
      (v2)(v24);
      v25 = sub_100004C50(v18.super.isa, v8, &v33);
      v8 = v26;

      *(v4 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Sent transcript notification %s", v4, 0xCu);
      sub_1000034F8(v3);

      sub_100003BB4();
    }

    else
    {

      v2 = *v27;
      (*v27)(v4, v5);
    }

    v14 = v29;
    v2(v3, v5);
    v16 = v32 + 1;
    v2 = v28;
  }

  __break(1u);
}

void *sub_1000BE178(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for Notification();
  v4 = sub_100002944(v48);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = *(a1 + 16);
  v14 = &off_10014B000;
  v47 = v6;
  if (v13)
  {
    v15 = LNTranscriptChangedNotification;
    v51 = 0u;
    v52 = 0u;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v17;

    v18 = v15;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v19;
    AnyHashable.init<A>(_:)();
    v20 = sub_10009FD18();
    v21 = sub_1000A1F48(a1);
    sub_10006DE3C(v21);

    v22 = sub_100034D2C();
    *(inited + 168) = v20;
    *(inited + 144) = v22;
    Dictionary.init(dictionaryLiteral:)();
    Notification.init(name:object:userInfo:)();
    sub_100070514(0, 1, 1, _swiftEmptyArrayStorage);
    v24 = v23;
    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      sub_100002C04(v25);
      v24 = v42;
    }

    v28 = v47;
    v27 = v48;
    v24[2] = v26 + 1;
    (*(v28 + 32))(v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, v12, v27);
    v14 = &off_10014B000;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  if (*(a2 + 16))
  {
    v29 = LNTranscriptChangedNotification;
    v51 = 0u;
    v52 = 0u;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    v30 = swift_initStackObject();
    *(v30 + 16) = *(v14 + 196);
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v31;

    v32 = v29;
    AnyHashable.init<A>(_:)();
    *(v30 + 96) = &type metadata for Int;
    *(v30 + 72) = 1;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v33;
    AnyHashable.init<A>(_:)();
    v34 = sub_10009FD18();
    v35 = sub_1000A1F48(a2);
    sub_10006DE3C(v35);

    v36 = sub_100034D2C();
    *(v30 + 168) = v34;
    *(v30 + 144) = v36;
    Dictionary.init(dictionaryLiteral:)();
    v37 = v46;
    Notification.init(name:object:userInfo:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070514(0, v24[2] + 1, 1, v24);
      v24 = v43;
    }

    v39 = v24[2];
    v38 = v24[3];
    v40 = v47;
    if (v39 >= v38 >> 1)
    {
      sub_100002C04(v38);
      v24 = v44;
    }

    v24[2] = v39 + 1;
    (*(v40 + 32))(v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, v37, v48);
  }

  return v24;
}

void sub_1000BE5E4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Notification();
  v6 = sub_100002944(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100006844();
  __chkstk_darwin(v11);
  v12 = sub_100013550();
  v13 = sub_1000275B8(v12);
  v14 = sub_1000BE178(&_swiftEmptySetSingleton, v13);

  sub_100007BB4();
  v15.n128_u64[0] = 136315138;
  sub_100018470(v15);
  while (1)
  {
    if (v31 == v16)
    {

      return;
    }

    if (v16 >= *(v14 + 2))
    {
      break;
    }

    v17 = sub_10000803C();
    v14(v17);
    v18.super.isa = Notification._bridgeToObjectiveC()().super.isa;
    [a2 postNotification:v18.super.isa];

    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000347C(v19, qword_10019E008);
    v20 = sub_100011898();
    v14(v20);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v4 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      sub_10000381C(v23);
      v24 = sub_10000529C();
      (v2)(v24);
      v25 = sub_100004C50(v18.super.isa, v8, &v33);
      v8 = v26;

      *(v4 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Sent transcript notification %s", v4, 0xCu);
      sub_1000034F8(v3);

      sub_100003BB4();
    }

    else
    {

      v2 = *v27;
      (*v27)(v4, v5);
    }

    v14 = v29;
    v2(v3, v5);
    v16 = v32 + 1;
    v2 = v28;
  }

  __break(1u);
}

void *sub_1000BE888()
{
  if (qword_100198320 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v0 = qword_10019E088;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 localizedStringForLocaleIdentifier:v1];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (qword_100198328 != -1)
    {
      swift_once();
    }

    v3 = qword_10019E090;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForLocaleIdentifier:v4];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v6;
    if (qword_100198338 != -1)
    {
      swift_once();
    }

    v7 = qword_10019E0A0;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForLocaleIdentifier:v8];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = sub_10000BE0C();
    v54 = v53;
    v59 = v53;
    v52 = v53;
    sub_100002CA8();
    v58 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    if (qword_100198330 != -1)
    {
      swift_once();
    }

    if ((qword_10019E098 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v14 = -1 << *(qword_10019E098 + 32);
      v11 = ~v14;
      v10 = qword_10019E098 + 64;
      v15 = -v14;
      v16 = v15 < 64 ? ~(-1 << v15) : -1;
      v12 = v16 & *(qword_10019E098 + 64);
      v13 = qword_10019E098;
    }

    v17 = 0;
    v18 = (v11 + 64) >> 6;
    v56 = v13;
    v57 = v10;
    v55 = v18;
    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_15:
    v19 = v17;
    v20 = v12;
    v21 = v17;
    if (v12)
    {
LABEL_19:
      v22 = (v20 - 1) & v20;
      v23 = (v21 << 9) | (8 * __clz(__rbit64(v20)));
      v24 = *(*(v13 + 56) + v23);
      v25 = *(*(v13 + 48) + v23);
      v26 = v24;
      goto LABEL_22;
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_27;
      }

      v20 = *(v10 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v21 = v17;
    if (!__CocoaDictionary.Iterator.next()())
    {
      break;
    }

    sub_1000BF970();
    swift_dynamicCast();
    v25 = v65;
    swift_dynamicCast();
    v26 = v65;
    v22 = v12;
LABEL_22:
    if (!v25)
    {
      break;
    }

    v64 = v25;
    v63 = v22;
    v27 = String._bridgeToObjectiveC()();
    v62 = v26;
    v28 = [v26 localizedStringForLocaleIdentifier:{v27, &type metadata for String, v52, v53, v54}];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = qword_100198340;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = qword_10019E0A8;
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 localizedStringForLocaleIdentifier:v34];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v29;
    v39._object = v31;
    String.append(_:)(v39);

    v60 = v38;
    v61 = v36;
    v40 = String._bridgeToObjectiveC()();
    v41 = [v64 localizedStringForLocaleIdentifier:v40];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008068();
    sub_100002CA8();
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v44 = v43;
    v65 = v58;
    sub_100008068();
    v52 = v59;
    sub_100002CA8();
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v47 = v46;

    sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10014CE90;
    *(v48 + 32) = v42;
    *(v48 + 40) = v44;
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10014CE90;
    *(v49 + 32) = v45;
    *(v49 + 40) = v47;
    sub_10002EB80(&qword_10019A4F8, &unk_100150170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    *(inited + 32) = 0;
    *(inited + 40) = 0xE000000000000000;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 64) = v29;
    *(inited + 72) = v31;
    *(inited + 80) = v48;
    *(inited + 88) = 0;
    *(inited + 96) = 0;
    *(inited + 104) = 0xE000000000000000;
    *(inited + 112) = 0;
    *(inited + 120) = 0xE000000000000000;
    *(inited + 128) = v61;
    *(inited + 136) = v60;
    *(inited + 144) = v49;
    *(inited + 152) = 0;
    sub_10006E450(inited);

    v17 = v21;
    v12 = v63;
    v13 = v56;
    v10 = v57;
    v18 = v55;
    if ((v56 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  sub_100014464();

  return _swiftEmptyArrayStorage;
}

id sub_1000BEF78()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for URL();
  sub_1000075C4(v3, 1, 1, v4);
  v5 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  result = sub_1000B8564(0xD000000000000029, 0x8000000100156D20, 0x7265626D756E7B24, 0xE90000000000007DLL, 0, 0, v3);
  qword_10019E088 = result;
  return result;
}

id sub_1000BF060()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for URL();
  sub_1000075C4(v3, 1, 1, v4);
  v5 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  result = sub_1000B8564(0xD000000000000029, 0x8000000100156CD0, 0xD000000000000015, 0x8000000100156D00, 0, 0, v3);
  qword_10019E090 = result;
  return result;
}

uint64_t sub_1000BF14C()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v23[-v2];
  sub_10002EB80(&qword_10019B6D8, &qword_100150B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100150B50;
  v5 = type metadata accessor for URL();
  sub_1000075C4(v3, 1, 1, v5);
  v6 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 32) = sub_1000B8564(0xD000000000000020, 0x8000000100156940, 7305076, 0xE300000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v7 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 40) = sub_1000B8564(0xD000000000000023, 0x8000000100156970, 50, 0xE100000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v8 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 48) = sub_1000B8564(0xD000000000000021, 0x80000001001569A0, 1920298854, 0xE400000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v9 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 56) = sub_1000B8564(0xD000000000000024, 0x80000001001569D0, 52, 0xE100000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v10 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 64) = sub_1000B8564(0xD000000000000025, 0x8000000100156A00, 0x6E65657472696874, 0xE800000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v11 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 72) = sub_1000B8564(0xD000000000000028, 0x8000000100156A30, 13105, 0xE200000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v12 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 80) = sub_1000B8564(0xD000000000000026, 0x8000000100156A60, 0x6E6F79746E657774, 0xE900000000000065, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v13 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 88) = sub_1000B8564(0xD000000000000029, 0x8000000100156A90, 12594, 0xE200000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v14 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 96) = sub_1000B8564(0xD000000000000023, 0x8000000100156AC0, 0x797472696874, 0xE600000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v15 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 104) = sub_1000B8564(0xD000000000000026, 0x8000000100156AF0, 12339, 0xE200000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v16 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 112) = sub_1000B8564(0xD00000000000002ELL, 0x8000000100156B20, 0xD000000000000011, 0x8000000100156B50, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v17 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 120) = sub_1000B8564(0xD000000000000031, 0x8000000100156B70, 3159345, 0xE300000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v18 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 128) = sub_1000B8564(0xD00000000000002BLL, 0x8000000100156BB0, 0x6E696F70206F7774, 0xEE00657669662074, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v19 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 136) = sub_1000B8564(0xD00000000000002ELL, 0x8000000100156BE0, 3485234, 0xE300000000000000, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v20 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 144) = sub_1000B8564(0xD00000000000002FLL, 0x8000000100156C10, 0xD000000000000012, 0x8000000100156C40, 0, 0, v3);
  sub_1000075C4(v3, 1, 1, v5);
  v21 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  *(inited + 152) = sub_1000B8564(0xD000000000000032, 0x8000000100156C60, 875444017, 0xE400000000000000, 0, 0, v3);
  sub_1000BF970();
  sub_1000BF9B4();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_10019E098 = result;
  return result;
}

id sub_1000BF7B4()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for URL();
  sub_1000075C4(v3, 1, 1, v4);
  v5 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  result = sub_1000B8564(0xD000000000000025, 0x8000000100156CA0, 0x657669746167656ELL, 0xE800000000000000, 0, 0, v3);
  qword_10019E0A0 = result;
  return result;
}

id sub_1000BF898()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for URL();
  sub_1000075C4(v3, 1, 1, v4);
  v5 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  result = sub_1000B8564(0xD000000000000028, 0x8000000100156910, 45, 0xE100000000000000, 0, 0, v3);
  qword_10019E0A8 = result;
  return result;
}

unint64_t sub_1000BF970()
{
  result = qword_10019AD00;
  if (!qword_10019AD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019AD00);
  }

  return result;
}

unint64_t sub_1000BF9B4()
{
  result = qword_10019B6E0;
  if (!qword_10019B6E0)
  {
    sub_1000BF970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B6E0);
  }

  return result;
}

uint64_t sub_1000BFA0C()
{
  v0 = type metadata accessor for CocoaError.Code();
  v1 = sub_100002944(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002958();
  v8 = (v7 - v6);
  v9 = type metadata accessor for URL();
  v10 = sub_100002944(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v50 - v19;
  __chkstk_darwin(v18);
  v22 = v50 - v21;
  v23 = type metadata accessor for PropertyListDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v60 = PropertyListDecoder.init()();
  sub_1000C04A0(v22);
  v56 = v3;
  v58 = v0;
  v54 = v17;
  if (qword_100198308 != -1)
  {
    sub_100002CBC();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_10000347C(v26, qword_10019E050);
  v51 = *(v12 + 16);
  v52 = v12 + 16;
  v51(v20, v22, v9);
  v53 = v27;
  v28 = Logger.logObject.getter();
  v29 = v12;
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v30))
  {
    v31 = sub_100007764();
    v50[0] = sub_1000056E4();
    v61 = v50[0];
    *v31 = 136315138;
    sub_10000807C();
    sub_1000C2AC8(v32, v33);
    v50[1] = v8;
    v34 = v29;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v22;
    v37 = v36;
    v38 = sub_1000118AC(v34);
    v39(v38);
    v40 = sub_100004C50(v35, v37, &v61);
    v22 = v55;

    *(v31 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v28, v30, "Loading from %s", v31, 0xCu);
    sub_1000034F8(v50[0]);
    sub_1000036AC();
    sub_1000036AC();
  }

  else
  {

    v41 = sub_1000118AC(v29);
    v42(v41);
  }

  v43 = Data.init(contentsOf:options:)();
  v45 = v44;
  sub_10002EB80(&qword_10019B6E8, &unk_100150B80);
  sub_1000C2B10(&qword_10019B708, sub_1000C2B94);
  v46 = dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v55 = v22;
  v48 = v61;
  v49 = *(v59 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  __chkstk_darwin(v46);
  v50[-2] = v48;
  os_unfair_lock_lock((v49 + 24));
  sub_1000C2BE8((v49 + 16));
  os_unfair_lock_unlock((v49 + 24));
  sub_10003FBB4(v48);
  sub_100009B18(v43, v45);

  v57(v55, v9);
  sub_1000C0A28();
}

uint64_t sub_1000C0248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if (a8)
      {
        v15 = a3 == a7 && a4 == a8;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_1000C02E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000C0358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000C03FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000C04A0@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = type metadata accessor for UTType();
  v2 = sub_100002944(v1);
  v59 = v3;
  v60 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100002958();
  v57 = v7 - v6;
  v8 = type metadata accessor for UUID();
  v9 = sub_100002944(v8);
  v55 = v10;
  v56 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100002958();
  v54 = v14 - v13;
  v15 = type metadata accessor for URL.DirectoryHint();
  v16 = sub_100002944(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100002958();
  v23 = v22 - v21;
  v61 = type metadata accessor for URL();
  v24 = sub_100002944(v61);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v54 - v30;
  v32 = objc_opt_self();
  v33 = [v32 defaultManager];
  v62[0] = 0;
  v34 = [v33 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v62];

  v35 = v62[0];
  if (v34)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v62[0] = 0x6C7070612E6D6F63;
    v62[1] = 0xEF646B6E696C2E65;
    (*(v18 + 104))(v23, enum case for URL.DirectoryHint.isDirectory(_:), v15);
    sub_10000BE0C();
    URL.appending<A>(component:directoryHint:)();
    (*(v18 + 8))(v23, v15);
    v37 = [v32 defaultManager];
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    v62[0] = 0;
    v41 = [v37 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:v62];

    v42 = v62[0];
    if (v41)
    {
      v43 = objc_opt_self();
      v44 = v42;
      v45 = [v43 bootUUID];
      v46 = v54;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      (*(v55 + 8))(v46, v56);
      v47 = sub_1000C09A8();

      v48 = v57;
      static UTType.data.getter();
      URL.appendingPathComponent(_:conformingTo:)();

      (*(v59 + 8))(v48, v60);
      v49 = sub_100003840();
      v47(v49);
      return (v47)(v31, v29);
    }

    else
    {
      v52 = v62[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v53 = sub_100003840();
      (v42)(v53);
      return (v42)(v31, v52);
    }
  }

  else
  {
    v51 = v62[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1000C09A8()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

void sub_1000C0A28()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_persistOperationQueued);
  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  *(v6 + 16) = 1;
  os_unfair_lock_unlock((v6 + 20));
  if (v7)
  {
    if (qword_100198308 != -1)
    {
      sub_100002CBC();
    }

    v8 = type metadata accessor for Logger();
    sub_10000347C(v8, qword_10019E050);
    v20 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v20, v9, "Task to persist already queued - skipping...", v10, 2u);
      sub_100006860();
    }

    v11 = v20;
  }

  else
  {
    if (qword_100198308 != -1)
    {
      sub_100002CBC();
    }

    v12 = type metadata accessor for Logger();
    sub_10000347C(v12, qword_10019E050);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Queuing task to persist after 5 seconds", v15, 2u);
      sub_1000036AC();
    }

    v16 = type metadata accessor for TaskPriority();
    sub_1000075C4(v5, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v18[5] = ObjectType;
    sub_1000C1980(0, 0, v5, &unk_100150B70, v18);
  }
}

uint64_t sub_1000C0CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for URL();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v9 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v10 = swift_task_alloc();
  v5[13] = v10;
  *v10 = v5;
  v10[1] = sub_1000C0DD8;

  return static Task<>.sleep(nanoseconds:)(5000000000);
}

uint64_t sub_1000C0DD8()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v5 = v3[11];
    v4 = v3[12];
    v6 = v3[10];

    v7 = v3[1];

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_1000C0F34, 0, 0);
  }
}

uint64_t sub_1000C0F34()
{
  v61 = v0;
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_opt_self();
    v5 = sub_1000C2948(v4);
    if (v5)
    {
      v6 = v5;
      v59 = v3;
      v7 = sub_1000232F4(v5);
      v8 = 0;
      v9 = (v6 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v7 == v8)
        {
          v12 = v0[14];
          v13 = v0[12];
          v9 = v59;
          sub_1000C1814();
          v14 = *&v59[OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_persistOperationQueued];

          os_unfair_lock_lock((v14 + 20));
          *(v14 + 16) = 0;
          os_unfair_lock_unlock((v14 + 20));

          v15 = *&v59[OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier];
          os_unfair_lock_lock((v15 + 24));
          v16 = *(v15 + 16);

          os_unfair_lock_unlock((v15 + 24));
          sub_1000C04A0(v13);
          if (v12)
          {

            if (qword_100198308 != -1)
            {
              goto LABEL_29;
            }

            goto LABEL_13;
          }

          if (qword_100198308 != -1)
          {
            sub_100002CBC();
          }

          v24 = v0[11];
          v23 = v0[12];
          v26 = v0[8];
          v25 = v0[9];
          v27 = type metadata accessor for Logger();
          sub_10000347C(v27, qword_10019E050);
          (*(v25 + 16))(v24, v23, v26);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.info.getter();
          v30 = os_log_type_enabled(v28, v29);
          v31 = v0[11];
          v33 = v0[8];
          v32 = v0[9];
          if (v30)
          {
            v34 = sub_100007764();
            v58 = sub_1000056E4();
            v60 = v58;
            *v34 = 136315138;
            sub_10000807C();
            sub_1000C2AC8(v35, v36);
            v37 = dispatch thunk of CustomStringConvertible.description.getter();
            v39 = v38;
            v40 = sub_100004F58();
            v41(v40);
            v42 = sub_100004C50(v37, v39, &v60);
            v9 = v59;

            *(v34 + 4) = v42;
            _os_log_impl(&_mh_execute_header, v28, v29, "Persisting to %s", v34, 0xCu);
            sub_1000034F8(v58);
            sub_100006860();
            sub_1000036AC();
          }

          else
          {

            v43 = sub_100004F58();
            v44(v43);
          }

          sub_10003FBB4(v16);
          v45 = type metadata accessor for PropertyListEncoder();
          v46 = *(v45 + 48);
          v47 = *(v45 + 52);
          swift_allocObject();
          PropertyListEncoder.init()();
          v0[5] = v16;
          sub_10002EB80(&qword_10019B6E8, &unk_100150B80);
          sub_1000C2B10(&qword_10019B6F0, sub_1000C29A8);
          v48 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
          v50 = v49;
          v51 = v0[12];

          Data.write(to:options:)();
          v57 = v0[9] + 8;
          v33(v0[12], v0[8]);
          sub_100009B18(v48, v50);
LABEL_15:

          goto LABEL_24;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        LODWORD(v60) = 0;
        BYTE4(v60) = 1;
        static Int32._conditionallyBridgeFromObjectiveC(_:result:)();

        ++v8;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      sub_100002CBC();
LABEL_13:
      v17 = type metadata accessor for Logger();
      sub_10000347C(v17, qword_10019E050);
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = sub_100007764();
        v21 = sub_100006418();
        *v20 = 138412290;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failure determining store URL: %@", v20, 0xCu);
        sub_100003E9C(v21, &unk_10019A260, &unk_10014D030);
        sub_1000036AC();
        sub_1000036AC();

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

LABEL_24:
  v53 = v0[11];
  v52 = v0[12];
  v54 = v0[10];

  v55 = v0[1];

  return v55();
}

uint64_t sub_1000C1754(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000B5CA0;

  return sub_1000C0CC0(a1, v4, v5, v7, v6);
}

void sub_1000C1814()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  os_unfair_lock_lock((v1 + 24));
  sub_1000C29FC((v1 + 16), &v18);
  os_unfair_lock_unlock((v1 + 24));
  v2 = 0;
  v3 = v18;
  v4 = v18 + 64;
  v5 = 1 << *(v18 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v18 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(v3 + 48) + 32 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = *(*(v3 + 56) + 8 * v11);

    sub_100104254(v13, v14, v15, v16, v17);
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000C1980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_10003CC10(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_1000032C4(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100003E9C(v11, &qword_100198C20, &qword_10014D090);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = sub_100018484();

      sub_100003E9C(a3, &qword_100198C20, &qword_10014D090);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003E9C(a3, &qword_100198C20, &qword_10014D090);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return sub_100018484();
}

void sub_1000C1BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v5 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = 0;
  v12 = a2 + 32;
  v13 = *(a2 + 16);
  v14 = (a1 + 32);
  v15 = _swiftEmptyArrayStorage;
  v41 = v12;
  v42 = a1;
  v40 = v13;
LABEL_2:
  while (1)
  {
    v16 = v11;
    if (v11 == v13)
    {
      break;
    }

    if (v11 >= v13)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    ++v11;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_26;
    }

    v17 = (v12 + 24 * v16);
    v18 = *(v17 + 4);
    v19 = *(a1 + 16);
    v20 = v14;
    while (v19)
    {
      v21 = *v20++;
      --v19;
      if (v21 == v18)
      {
        v22 = *v17;
        v23 = v17[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = v15[2];
          sub_1000B3888();
          v13 = v40;
          v15 = v47;
        }

        v26 = v15[2];
        if (v26 >= v15[3] >> 1)
        {
          sub_1000B3888();
          v13 = v40;
          v15 = v47;
        }

        v15[2] = v26 + 1;
        v27 = &v15[3 * v26];
        v27[4] = v22;
        v27[5] = v23;
        *(v27 + 12) = v18;
        v12 = v41;
        a1 = v42;
        goto LABEL_2;
      }
    }
  }

  v28 = 0;
  v29 = *(v46 + 16);
  v30 = _swiftEmptyArrayStorage;
LABEL_14:
  while (v28 != v29)
  {
    v31 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v32 = *(v44 + 72);
    v33 = v28 + 1;
    sub_10004092C(v46 + v31 + v32 * v28, v10);
    v34 = *(a1 + 16);
    v35 = v14;
    do
    {
      if (!v34)
      {
        sub_100040990(v10);
        v28 = v33;
        goto LABEL_14;
      }

      v36 = *v35++;
      --v34;
    }

    while (v36 != *&v10[*(v45 + 20)]);
    sub_1000C2A64(v10, v43);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v30;
    if ((v37 & 1) == 0)
    {
      sub_1000B3830(0, v30[2] + 1, 1);
      v30 = v47;
    }

    v39 = v30[2];
    v38 = v30[3];
    if (v39 >= v38 >> 1)
    {
      sub_1000B3830(v38 > 1, v39 + 1, 1);
      v30 = v47;
    }

    v30[2] = v39 + 1;
    sub_1000C2A64(v43, v30 + v31 + v39 * v32);
    v28 = v33;
    a1 = v42;
  }
}

void sub_1000C1ED4(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v5 = *a1;
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v105 = v5;

  v11 = 0;
  v104 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    do
    {
LABEL_5:
      if (!v9)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= v10)
          {

            *a3 = v104;
            return;
          }

          v12 = *(v6 + 8 * v13);
          ++v11;
          if (v12)
          {
            v11 = v13;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_58;
      }

      v12 = v9;
LABEL_11:
      v9 = (v12 - 1) & v12;
      v14 = *a1;
    }

    while (!*(*a1 + 16));
    v15 = (*(v105 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v12)))));
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_10000C2A0(v16, v17);
    if (v19)
    {
      break;
    }
  }

  v89 = v4;
  v20 = (*(v14 + 56) + 24 * v18);
  v22 = *v20;
  v21 = v20[1];
  v99 = v20[2];

  sub_1000C1BE0(a2, v22, v21);
  v92 = v24;
  v100 = *(v23 + 16);
  if (*(v22 + 16) == v100)
  {
    v25 = *(v23 + 16);
  }

  else
  {

    sub_1001140B4(v16, v17, v22, v21, v99);

    swift_isUniquelyReferenced_nonNull_native();
    v107 = v104;
    sub_100069834();

    v104 = v107;
    if (qword_100198308 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000347C(v26, qword_10019E050);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    v93 = v28;
    v29 = os_log_type_enabled(v27, v28);
    v25 = v100;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v30 = 136315394;
      bufa = v30;
      *(v30 + 4) = sub_100004C50(v16, v17, &v107);
      *(v30 + 12) = 2080;
      v25 = v100;
      type metadata accessor for UUID();
      sub_1000C2AC8(&qword_100199BD0, &type metadata accessor for UUID);
      v82 = Set.description.getter();
      loga = v27;
      v32 = v31;

      v33 = sub_100004C50(v82, v32, &v107);

      *(bufa + 14) = v33;
      _os_log_impl(&_mh_execute_header, loga, v93, "Bundle %s event listeners pruned - posting observation status change for %s", bufa, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v24 = v92;
  }

  v34 = *(v24 + 16);

  buf = (v25 + v34);
  if (!__OFADD__(v25, v34))
  {
    v35 = v99 + 64;
    v36 = 1 << *(v99 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v101 = v37 & *(v99 + 64);
    v98 = (v36 + 63) >> 6;

    v39 = 0;
    v40 = v38;
    v94 = v16;
LABEL_27:
    v41 = v98;
    v42 = v101;
    capacity = v40;
    while (v42)
    {
      v43 = v42;
LABEL_34:
      v42 = (v43 - 1) & v43;
      if (*(v40 + 16))
      {
        v101 = (v43 - 1) & v43;
        v45 = (*(v38 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v43)))));
        v47 = *v45;
        v46 = v45[1];

        v48 = sub_10000C2A0(v47, v46);
        if (v49)
        {
          log = v47;
          v88 = v46;
          v50 = (*(capacity + 56) + 16 * v48);
          v52 = *v50;
          v51 = v50[1];

          sub_1000C1BE0(a2, v52, v51);
          v81 = v54;
          v83 = v53;
          v55 = *(v53 + 16);
          v56 = *(v52 + 16);

          v57 = v55;
          if (v56 == v55)
          {
            v58 = capacity;
            v59 = v81;
          }

          else
          {
            v80 = v55;

            sub_100114590(v94, v17, log, v88, v83, v81);

            swift_isUniquelyReferenced_nonNull_native();
            v107 = v104;
            sub_100069834();

            v104 = v107;
            if (qword_100198308 != -1)
            {
              swift_once();
            }

            v60 = type metadata accessor for Logger();
            sub_10000347C(v60, qword_10019E050);

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.info.getter();

            v79 = v62;
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              *v63 = 136315650;
              *(v63 + 4) = sub_100004C50(v94, v17, &v107);
              v78 = v61;
              *(v63 + 12) = 2080;
              *(v63 + 14) = sub_100004C50(log, v88, &v107);
              *(v63 + 22) = 2080;
              type metadata accessor for UUID();
              sub_1000C2AC8(&qword_100199BD0, &type metadata accessor for UUID);
              v77 = Set.description.getter();
              v65 = v64;

              v66 = sub_100004C50(v77, v65, &v107);

              *(v63 + 24) = v66;
              v61 = v78;
              _os_log_impl(&_mh_execute_header, v78, v79, "Entity type %s/%s event listeners pruned - posting observation status change for %s", v63, 0x20u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v58 = capacity;
            v59 = v81;
            v57 = v80;
          }

          v67 = *(v59 + 16);
          v68 = __OFADD__(v57, v67);
          v69 = v57 + v67;
          if (v68)
          {
            goto LABEL_60;
          }

          v68 = __OFADD__(buf, v69);
          buf += v69;
          if (v68)
          {
            goto LABEL_61;
          }

          if (v69)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v107 = v58;
            sub_10006971C();

            v40 = v107;
            goto LABEL_51;
          }

          v70 = sub_10000C2A0(log, v88);
          if (v71)
          {
            v72 = v70;
            logb = swift_isUniquelyReferenced_nonNull_native();
            v107 = capacity;
            capacitya = *(capacity + 24);
            sub_10002EB80(&qword_10019A0C0, &qword_10014EE70);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(logb, capacitya);
            v40 = v107;
            v73 = *(v107[6] + 16 * v72 + 8);

            v74 = (*(v40 + 56) + 16 * v72);
            capacityb = *v74;
            logc = v74[1];
            _NativeDictionary._delete(at:)();

LABEL_51:
            v38 = v99;
            v35 = v99 + 64;
            v16 = v94;
            goto LABEL_27;
          }
        }

        v41 = v98;
        v38 = v99;
        v16 = v94;
        v40 = capacity;
        v35 = v99 + 64;
        v42 = v101;
      }
    }

    while (1)
    {
      v44 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v44 >= v41)
      {

        if (buf)
        {

          v75 = *a1;
          swift_isUniquelyReferenced_nonNull_native();
          v107 = *a1;
          sub_1000695E0();

          *a1 = v107;
        }

        else
        {
          v76 = sub_1000604FC(v16, v17);
          sub_1000C2A18(v76);
        }

        v4 = v89;

        goto LABEL_5;
      }

      v43 = *(v35 + 8 * v44);
      ++v39;
      if (v43)
      {
        v39 = v44;
        goto LABEL_34;
      }
    }

LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_1000C2900(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;
}

uint64_t sub_1000C2948(void *a1)
{
  v1 = [a1 runningProcessIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000270C0();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000C29A8()
{
  result = qword_10019B6F8;
  if (!qword_10019B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B6F8);
  }

  return result;
}

uint64_t sub_1000C2A18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000C2A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C2AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C2B10(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(&qword_10019B6E8, &unk_100150B80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C2B94()
{
  result = qword_10019B710;
  if (!qword_10019B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B710);
  }

  return result;
}

unint64_t sub_1000C2C18()
{
  result = qword_10019B718;
  if (!qword_10019B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B718);
  }

  return result;
}

void sub_1000C2C6C(uint64_t a1)
{
  sub_1000232F4(a1);
  v3 = LNSystemProtocol_ptr;
  sub_10000724C();
  v7 = sub_100003D44(v4, v5, v6);
  sub_10000724C();
  sub_100084294(v8, v9, v10);
  v12[1] = sub_100007BD0();
  sub_1000232F4(a1);
  sub_100002CDC();
  while (1)
  {
    if (&qword_100199040 == v3)
    {

      return;
    }

    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_100047C88(v12, v11);

    ++v3;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1000C2D60(uint64_t a1)
{
  sub_1000232F4(a1);
  v3 = LNFullyQualifiedActionIdentifier_ptr;
  sub_10000724C();
  v7 = sub_100003D44(v4, v5, v6);
  sub_10000724C();
  sub_100084294(v8, v9, v10);
  v12[1] = sub_100007BD0();
  sub_1000232F4(a1);
  sub_100002CDC();
  while (1)
  {
    if (&unk_10019BBE0 == v3)
    {

      return;
    }

    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_100047FB4(v12, v11);

    ++v3;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1000C2E54(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(a1 + 16);
  sub_1000C30D8();
  v11 = Set.init(minimumCapacity:)();
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v7, v17, v2);
      sub_100047FD8();
      (*(v13 - 8))(v9, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

void sub_1000C2FE4(uint64_t a1)
{
  sub_1000232F4(a1);
  v3 = LNAppNotificationEvent_ptr;
  sub_10000724C();
  v7 = sub_100003D44(v4, v5, v6);
  sub_10000724C();
  sub_100084294(v8, v9, v10);
  v12[1] = sub_100007BD0();
  sub_1000232F4(a1);
  sub_100002CDC();
  while (1)
  {
    if (&unk_100198C10 == v3)
    {

      return;
    }

    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      v11 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_100048264(v12, v11);

    ++v3;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

unint64_t sub_1000C30D8()
{
  result = qword_100199BD0;
  if (!qword_100199BD0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199BD0);
  }

  return result;
}

void sub_1000C3140(void (*a1)(void *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v6 = a3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v30 = _swiftEmptyArrayStorage;
    sub_1000B3558(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v30;
    v23 = v6;
    v24 = v6 & 0xC000000000000001;
    v22 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v24)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v4 = v11;
      v26 = v11;
      a1(v27, &v26);
      if (v5)
      {
        goto LABEL_20;
      }

      v12 = v27[0];
      v13 = v27[1];
      v14 = v28;
      v15 = v29;
      v30 = v9;
      v17 = v9[2];
      v16 = v9[3];
      v4 = (v17 + 1);
      if (v17 >= v16 >> 1)
      {
        v20 = v29;
        v21 = v27[0];
        v19 = v28;
        sub_1000B3558((v16 > 1), v17 + 1, 1);
        v15 = v20;
        v12 = v21;
        v14 = v19;
        v9 = v30;
      }

      v9[2] = v4;
      v18 = &v9[4 * v17];
      v18[4] = v12;
      v18[5] = v13;
      v18[6] = v14;
      v18[7] = v15;
      ++v8;
      v5 = 0;
      v6 = v23;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void *sub_1000C32F8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100011438(0, v2, 0);
    v6 = sub_1000660F0(v1);
    result = _swiftEmptyArrayStorage;
    v7 = 0;
    v8 = v1 + 56;
    v29 = v1 + 64;
    v30 = v2;
    v31 = v1 + 56;
    v32 = v1;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v1 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v1 + 36) != v4)
        {
          goto LABEL_25;
        }

        v34 = v5;
        v33 = v4;
        v10 = (*(v1 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = result;

        v14._countAndFlagsBits = v11;
        v14._object = v12;
        String.append(_:)(v14);

        result = v13;
        v35 = v13;
        v15 = v13[2];
        v16 = result[3];
        if (v15 >= v16 >> 1)
        {
          sub_100011438(v16 > 1, v15 + 1, 1);
          result = v35;
        }

        result[2] = v15 + 1;
        v17 = &result[2 * v15];
        v17[4] = 8237;
        v17[5] = 0xE200000000000000;
        if (v34)
        {
          goto LABEL_29;
        }

        v8 = v31;
        v1 = v32;
        v18 = 1 << *(v32 + 32);
        if (v6 >= v18)
        {
          goto LABEL_26;
        }

        v19 = *(v31 + 8 * v9);
        if ((v19 & (1 << v6)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v32 + 36) != v33)
        {
          goto LABEL_28;
        }

        v20 = v19 & (-2 << (v6 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v21 = v30;
        }

        else
        {
          v22 = v9 << 6;
          v23 = v9 + 1;
          v24 = (v29 + 8 * v9);
          v21 = v30;
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              v27 = result;
              sub_100060B50(v6, v33, 0);
              result = v27;
              v18 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          v28 = result;
          sub_100060B50(v6, v33, 0);
          result = v28;
        }

LABEL_19:
        if (++v7 == v21)
        {
          return result;
        }

        v5 = 0;
        v4 = *(v32 + 36);
        v6 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

void sub_1000C3574(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v22 = _swiftEmptyArrayStorage;
    sub_1000B396C();
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v22;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v19 = v11;
      a1(&v20, &v19);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v12 = v20;
      v13 = v21;
      v22 = v9;
      v14 = v9[2];
      v4 = (v14 + 1);
      if (v14 >= v9[3] >> 1)
      {
        v17 = v21;
        v16 = v20;
        sub_1000B396C();
        v12 = v16;
        v13 = v17;
        v9 = v22;
      }

      v9[2] = v4;
      v15 = &v9[3 * v14];
      v15[4] = v12;
      *(v15 + 5) = v13;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_1000C3724(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a3;
  v22 = _swiftEmptyArrayStorage;
  v8 = a4(a3);
  v9 = 0;
  v10 = v5 & 0xC000000000000001;
  v19 = v5;
  v20 = v5 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 == v9)
    {

      return;
    }

    if (v10)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v20 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v21 = v11;
    v13 = a1(&v21);
    if (v4)
    {

      return;
    }

    if (v13)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = v8;
      v15 = v10;
      v16 = a1;
      v17 = a2;
      v18 = v22[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a2 = v17;
      a1 = v16;
      v10 = v15;
      v8 = v14;
      v5 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1000C38A4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1000FC29C(v2, &v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_1000C390C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
}

void sub_1000C3958(__int128 *a1)
{
  v4 = *a1;
  *v5 = a1[1];
  *&v5[9] = *(a1 + 25);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  sub_1000FCE0C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1000C3A04(uint64_t a1)
{
  v3 = *a1;
  v18 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = sub_10002EB80(&unk_10019B280, &qword_1001504C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19[-v10 - 8];
  os_unfair_lock_assert_owner((*(v1 + 16) + 16));
  *(v1 + 40) = 1;
  swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {
    sub_1000C3CEC(v11);
    v20 = v3 & 1;
    v21 = v18;
    v22 = v4;
    v23 = v5;
    v24 = v6 & 1;
    sub_1000F9ED4(a1, v19);
    CheckedContinuation.resume(returning:)();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    swift_beginAccess();
    sub_1000F5094(sub_100070C90);
    v13 = *(*(v1 + 24) + 16);
    sub_1000F514C(v13, sub_100070C90);
    v14 = *(v1 + 24);
    *(v14 + 16) = v13 + 1;
    v15 = (v14 + 48 * v13);
    v16 = *a1;
    v17 = *(a1 + 16);
    *(v15 + 57) = *(a1 + 25);
    v15[2] = v16;
    v15[3] = v17;
    *(v1 + 24) = v14;
    swift_endAccess();
    return sub_1000F9ED4(a1, &v20);
  }
}

void sub_1000C3C00(__int128 *a1)
{
  v4 = *a1;
  *v5 = a1[1];
  *&v5[9] = *(a1 + 25);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  sub_10000CA48(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1000C3C7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = _swiftEmptyArrayStorage;

  return sub_1000C3A04(a2);
}

void sub_1000C3CEC(uint64_t a1@<X8>)
{
  v3 = sub_10002EB80(&unk_10019BC20, &qword_100151668);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000653FC(*v1);
  v8 = sub_10002EB80(&unk_10019B280, &qword_1001504C0);
  if (sub_1000032C4(v6, 1, v8) != 1)
  {
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    if (*(v7 + 16))
    {
      sub_1000F52EC(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_1000C3E08(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  v5 = *(v1 + 24);
  if (*(v5 + 16))
  {
    swift_beginAccess();
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v8 = *(v5 + 48);
    v9 = *(v5 + 56);
    v10 = *(v5 + 64);
    v11 = *(v5 + 72);

    sub_1000FA61C(v9, v10);
    sub_1000F5428(0, 1);
    swift_endAccess();
    os_unfair_lock_unlock(v4 + 4);
    sub_10002EB80(&unk_10019B280, &qword_1001504C0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (*(v2 + 40))
    {
      sub_10002EB80(&unk_10019B280, &qword_1001504C0);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      swift_beginAccess();
      sub_1000F5094(sub_100070DCC);
      v12 = *(*(v2 + 32) + 16);
      sub_1000F514C(v12, sub_100070DCC);
      v13 = *(v2 + 32);
      *(v13 + 16) = v12 + 1;
      v14 = sub_10002EB80(&unk_10019B280, &qword_1001504C0);
      (*(*(v14 - 8) + 16))(v13 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v12, a1, v14);
      *(v2 + 32) = v13;
    }

    os_unfair_lock_unlock(v4 + 4);
  }
}

uint64_t sub_1000C4014(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  sub_1000C3E08(a1);
}

uint64_t sub_1000C405C()
{
  sub_10002EB80(&qword_100199D38, &qword_100151700);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  return v0;
}

uint64_t sub_1000C40AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_1001992E8, &unk_100151000);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_1000F5A98(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1000C4144()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v35 = type metadata accessor for OSSignpostID();
  v4 = sub_100002944(v35);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002958();
  v11 = v10 - v9;
  v12 = type metadata accessor for OSSignposter();
  v13 = sub_100002944(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100002958();
  v20 = v19 - v18;
  if (qword_100198448 != -1)
  {
    sub_1000FD3C0();
  }

  v21 = sub_10000347C(v12, qword_10019E570);
  (*(v15 + 16))(v20, v21, v12);
  v22 = off_10018F960[v1];
  v23 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    sub_100005D40();
    v24 = v3;
    v25 = swift_slowAlloc();
    *v25 = 0;
    OSSignpostID.rawValue.getter();
    sub_1000FD674();
    _os_signpost_emit_with_name_impl(v26, v27, v28, v29, v30, v31, v25, 2u);
    v3 = v24;
    sub_100004DE4();
  }

  (*(v6 + 16))(v11, v3, v35);
  v32 = type metadata accessor for OSSignpostIntervalState();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v15 + 8))(v20, v12);
  sub_1000069EC();
}

void sub_1000C43B0()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for OSSignpostID();
  v9 = sub_100002944(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100002720();
  if (*v5 != -1)
  {
    sub_10001561C();
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10000347C(v14, v3);
  v15 = v1(v7);
  v17 = v16;
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v17 & 1) == 0)
  {
    if (v15)
    {
LABEL_11:
      sub_100005D40();
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, v15, "", v20, 2u);
      sub_100004DE4();

LABEL_12:

      v22 = *(v11 + 16);
      v23 = sub_100002B74();
      v24(v23);
      v25 = type metadata accessor for OSSignpostIntervalState();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_1000FD47C();
      OSSignpostIntervalState.init(id:isOpen:)();
      sub_1000069EC();
      return;
    }

    __break(1u);
  }

  if (HIDWORD(v15))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v15 & 0xFFFFF800) != 0xD800)
  {
    if (v15 >> 16 <= 0x10)
    {
      v15 = &v28;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1000C4584(uint64_t result)
{
  v3 = *(result + 16);
  for (i = (result + 32); v3; --v3)
  {
    v5 = i[3];
    sub_1000034B4(i, v5);
    sub_1000039EC();
    v7._countAndFlagsBits = v6(v5);
    String.append(_:)(v7);

    v8._countAndFlagsBits = 8250;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    v10 = i[3];
    v9 = i[4];
    sub_1000034B4(i, v10);
    v11 = (*(*(v9 + 8) + 24))(v10);
    v13 = v12;
    sub_1000CCB28(v11, v12);
    sub_1000FD2DC();
    sub_100009B18(v11, v13);
    v14._countAndFlagsBits = v1;
    v14._object = v2;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 10;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8237;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);

    i += 5;
  }

  return result;
}

uint64_t sub_1000C46C4(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 32); v1; --v1)
  {
    v3 = i[3];
    v4 = i[4];
    sub_1000034B4(i, v3);
    v5._countAndFlagsBits = (*(v4 + 8))(v3, v4);
    String.append(_:)(v5);

    v6._countAndFlagsBits = 8250;
    v6._object = 0xE200000000000000;
    String.append(_:)(v6);
    v7 = i[3];
    v8 = i[4];
    sub_1000034B4(i, v7);
    v9 = (*(v8 + 24))(v7, v8);
    v11 = v10;
    v12 = sub_1000CCB28(v9, v10);
    v14 = v13;
    sub_100009B18(v9, v11);
    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 10;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8237;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);

    i += 5;
  }

  return result;
}

uint64_t sub_1000C4828()
{
  sub_1000036A0();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon8Registry_ready);
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = async function pointer to Task<>.value.getter[1];

    v3 = swift_task_alloc();
    v4 = sub_1000FD2AC(v3);
    *v4 = v5;
    v4[1] = sub_1000C4908;
    sub_10001278C();

    return Task<>.value.getter();
  }

  else
  {
    sub_100003A00();

    return v6();
  }
}

uint64_t sub_1000C4908()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000C4A08(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000C4A20()
{
  sub_1000070C8();
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_opt_self();
  v4 = v2;

  sub_1000FD1B8([v3 currentConnection]);
  v5 = swift_task_alloc();
  v6 = sub_1000FD0C8(v5);
  *v6 = v7;
  v6[1] = sub_10001F054;
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v11 = sub_10000687C();

  return sub_1000D4278(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000C4B04()
{
  sub_1000036A0();
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = v1;
  sub_1000FD548([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD2AC(v4);
  *v5 = v6;
  v5[1] = sub_1000C4BC0;
  v7 = *(v0 + 16);
  v8 = sub_10000687C();

  return sub_1000D4CD8(v8, v9, v10, v11, v12);
}

uint64_t sub_1000C4BC0()
{
  sub_1000070C8();
  sub_1000048B4();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_100011B30();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = sub_10001AB40();

    return v13(v12);
  }
}

uint64_t sub_1000C4CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_100003B20();
}

uint64_t sub_1000C4D00()
{
  sub_1000070C8();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = objc_opt_self();
  v5 = v2;

  v0[12] = [v4 currentConnection];
  v6 = swift_task_alloc();
  v7 = sub_10001664C(v6);
  *v7 = v8;
  v7[1] = sub_1000C4E0C;
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v21 = v0[10];
  sub_1000FDC64();

  return sub_1000D61F8(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1000C4E0C()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C4F0C()
{
  result = sub_1000232F4(v0[8]);
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = v0[8];
    v17 = v4 & 0xC000000000000001;
    v16 = v4 + 32;
    do
    {
      if (v17)
      {
        v5 = v0[8];
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v16 + 8 * v3);
      }

      v7 = v6;
      v9 = v0[9];
      v8 = v0[10];
      ++v3;
      v10 = String._bridgeToObjectiveC()();
      v11 = swift_allocObject();
      v11[2] = v9;
      v11[3] = v8;
      v11[4] = v7;
      v0[6] = sub_1000FC3F8;
      v0[7] = v11;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1000ED35C;
      v0[5] = &unk_10018F7B8;
      v12 = _Block_copy(v0 + 2);
      v13 = v0[7];

      v14 = v7;

      AnalyticsSendEventLazy();
      _Block_release(v12);
    }

    while (v2 != v3);
  }

  sub_100006734();

  return v15();
}

uint64_t sub_1000C50D0()
{
  sub_1000036A0();

  sub_100003A00();
  v2 = *(v0 + 112);

  return v1();
}

uint64_t sub_1000C512C()
{
  v1 = (v0 + OBJC_IVAR____TtC10LinkDaemon8Registry_registryState);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC10LinkDaemon8Registry_registryState));
  v2 = v1 + *(sub_10002EB80(&qword_10019B7B8, &unk_100150CF0) + 28);
  v3 = v2[*(type metadata accessor for Registry.State(0) + 24)];
  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t sub_1000C5194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000C51B0()
{
  sub_1000070C8();
  sub_1000FD5A0();
  v2 = objc_opt_self();
  v3 = v1;

  sub_1000FD488([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD470(v4);
  *v5 = v6;
  sub_1000FD464(v5);
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  sub_10000687C();
  sub_1000FDC64();

  return sub_1000D7DA0(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000C528C()
{
  sub_1000070C8();
  sub_1000048B4();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_100011B30();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = sub_10001AB40();

    return v13(v12);
  }
}

void *sub_1000C53B4(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_1000F5FF8(a1);
    return a2;
  }

  else
  {

    return sub_1000F635C(a1, a2);
  }
}

void *sub_1000C5408(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v4 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1000F6124(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (__CocoaSet.count.getter() / 8 >= v4)
  {
    goto LABEL_14;
  }

  v6 = __CocoaSet.count.getter();
  sub_1000484E0(v5, v6);
LABEL_11:
  v7 = sub_1000077D8();

  return sub_1000F6834(v7, v8);
}

uint64_t sub_1000C54F0()
{
  sub_10002EB80(&unk_10019BCF0, &qword_100151708);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10014CE90;
  if (qword_1001982A8 != -1)
  {
    swift_once();
  }

  v1 = qword_10019DEB0;
  *(v0 + 56) = &type metadata for NotifyingRegistryObserver;
  *(v0 + 64) = &off_10018E8A8;
  *(v0 + 32) = v1;
  qword_10019E0B0 = sub_1000C55FC;
  *algn_10019E0B8 = 0;
  qword_10019E0C0 = sub_1000C5648;
  unk_10019E0C8 = 0;
  qword_10019E0D0 = sub_1000C568C;
  unk_10019E0D8 = 0;
  qword_10019E0E0 = sub_1000C56F0;
  unk_10019E0E8 = 0;
  qword_10019E0F0 = v0;
  unk_10019E0F8 = 0x4014000000000000;
}

void sub_1000C55FC(void *a1@<X0>, void *a2@<X8>)
{
  sub_100118648(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0xA8uLL);
  }
}

uint64_t sub_1000C5648@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LSLinkBundleSource();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_10018EDB8;
  *a1 = result;
  return result;
}

uint64_t sub_1000C568C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MetadataLibraryProvider();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = MetadataLibraryProvider.init()();
  if (!v1)
  {
    a1[3] = v3;
    a1[4] = &protocol witness table for MetadataLibraryProvider;
    *a1 = result;
  }

  return result;
}

id sub_1000C56F0()
{
  v1 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v16 - v3);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v13 = [objc_opt_self() defaultManager];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10006B868();

  if (!v0)
  {
    type metadata accessor for Registry(0);
    URL.appendingPathComponent(_:isDirectory:)();
    (*(v6 + 16))(v4, v12, v5);
    sub_1000075C4(v4, 0, 1, v5);
    v13 = sub_1000C5990(v9, v4);
    sub_1000FC404(v4, &qword_1001990C0);
    v15 = *(v6 + 8);
    v15(v9, v5);
    v15(v12, v5);
  }

  return v13;
}

uint64_t sub_1000C5990(uint64_t a1, void *a2)
{
  v123 = a2;
  v116 = type metadata accessor for RegistryError(0);
  v2 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v127 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v118 = &v107 - v5;
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v121 = &v107 - v8;
  ivar_lyt = type metadata accessor for URL();
  v10 = *(ivar_lyt - 1);
  v11 = v10[8];
  __chkstk_darwin(ivar_lyt);
  v110 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = &v107 - v14;
  __chkstk_darwin(v15);
  v119 = &v107 - v16;
  __chkstk_darwin(v17);
  v114 = &v107 - v18;
  __chkstk_darwin(v19);
  v126 = &v107 - v20;
  __chkstk_darwin(v21);
  v23 = (&v107 - v22);
  __chkstk_darwin(v24);
  v26 = &v107 - v25;
  v124 = objc_opt_self();
  v27 = [v124 defaultManager];
  URL.path.getter();
  v28 = String._bridgeToObjectiveC()();

  v131 = 0;
  v29 = [v27 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:&v131];

  v30 = v131;
  if (!v29)
  {
    v45 = v131;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v30;
  }

  v115 = v27;
  v31 = 0x80000001001579A0;
  v32 = v131;
  URL.appendingPathComponent(_:)();
  if (qword_100198350 != -1)
  {
LABEL_60:
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  v33 = sub_10000347C(v108, qword_10019E100);
  v34 = v10[2];
  v117 = v26;
  v113 = v10 + 2;
  v112 = v34;
  (v34)(v23, v26, ivar_lyt);
  v109 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v37 = os_log_type_enabled(v35, v36);
  v122 = v10;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = ivar_lyt;
    v40 = swift_slowAlloc();
    v131 = v40;
    *v38 = 136315138;
    v41 = URL.path.getter();
    v43 = v42;
    v125 = v122[1];
    (v125)(v23, v39);
    v44 = sub_100004C50(v41, v43, &v131);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Loading metadata store from %s", v38, 0xCu);
    sub_1000034F8(v40);
    ivar_lyt = v39;
    v10 = v122;
  }

  else
  {

    v125 = v10[1];
    (v125)(v23, ivar_lyt);
  }

  v46 = v127;
  v47 = v121;
  sub_100009E90(v123, v121, &qword_1001990C0, &unk_10014E200);
  v48 = sub_1000032C4(v47, 1, ivar_lyt);
  v49 = v115;
  v50 = v117;
  if (v48 == 1)
  {
    sub_1000FC404(v47, &qword_1001990C0);
  }

  else
  {
    (v10[4])(v126, v47, ivar_lyt);
    URL.path.getter();
    v51 = String._bridgeToObjectiveC()();

    v131 = 0;
    v52 = [v49 contentsOfDirectoryAtPath:v51 error:&v131];

    v53 = v131;
    if (v52)
    {
      v121 = ivar_lyt;
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v26 = 0;
      ivar_lyt = v23->ivar_lyt;
      p_base_prots = &v23->base_prots;
      v123 = _swiftEmptyArrayStorage;
      v107 = &v23->base_prots;
LABEL_11:
      v10 = &p_base_prots[2 * v26];
      while (ivar_lyt != v26)
      {
        if (v26 >= v23->ivar_lyt)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v57 = *(v10 - 1);
        v56 = *v10;
        v131 = v57;
        v132 = v56;
        v128 = 0xD00000000000001BLL;
        v129 = v31;
        sub_10000BE0C();

        if (StringProtocol.contains<A>(_:)())
        {
          v58 = v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v130 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100011438(0, v58[2] + 1, 1);
            v58 = v130;
          }

          v61 = v58[2];
          v60 = v58[3];
          v62 = (v61 + 1);
          if (v61 >= v60 >> 1)
          {
            v123 = (v61 + 1);
            sub_100011438(v60 > 1, v61 + 1, 1);
            v62 = v123;
            v58 = v130;
          }

          ++v26;
          v58[2] = v62;
          v123 = v58;
          v63 = &v58[2 * v61];
          v63[4] = v57;
          v63[5] = v56;
          v46 = v127;
          p_base_prots = v107;
          goto LABEL_11;
        }

        v10 += 2;
        ++v26;
        v46 = v127;
      }

      v10 = v123;
      if (!v123[2])
      {
        ivar_lyt = v121;
        (v125)(v126, v121);

        v49 = v115;
        v50 = v117;
        goto LABEL_37;
      }

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Found a database at the old location, removing...", v66, 2u);
      }

      v31 = 0;
      v67 = v10[2];
      ivar_lyt = (v10 + 5);
      v23 = &TableBuilder;
      v26 = v114;
      while (1)
      {
        if (v67 == v31)
        {
          ivar_lyt = v121;
          (v125)(v126, v121);

          v49 = v115;
          v50 = v117;
          v46 = v127;
          goto LABEL_37;
        }

        if (v31 >= v10[2])
        {
          goto LABEL_59;
        }

        v69 = *(ivar_lyt - 1);
        v68 = *ivar_lyt;

        URL.appendingPathComponent(_:)();

        v70 = [v124 defaultManager];
        URL._bridgeToObjectiveC()(v71);
        v73 = v72;
        v131 = 0;
        v74 = [v70 removeItemAtURL:v72 error:&v131];

        if (!v74)
        {
          break;
        }

        ++v31;
        v75 = v131;
        (v125)(v26, v121);
        ivar_lyt += 16;
        v10 = v123;
      }

      v77 = v131;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      ivar_lyt = v121;
      (v125)(v26, v121);
      v120 = 0;
      v49 = v115;
      v50 = v117;
      v46 = v127;
    }

    else
    {
      v76 = v131;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v120 = 0;
    }

    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412290;
      swift_errorRetain();
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v82;
      *v81 = v82;
      _os_log_impl(&_mh_execute_header, v78, v79, "Failed to remove old database: %@", v80, 0xCu);
      sub_1000FC404(v81, &unk_10019A260);
    }

    else
    {
    }

    (v125)(v126, ivar_lyt);
  }

LABEL_37:
  type metadata accessor for MetadataStore(0);
  v83 = v119;
  (v112)(v119, v50, ivar_lyt);
  v84 = v120;
  v85 = sub_100079520(v83);
  if (!v84)
  {
    v30 = v85;
    (v125)(v50, ivar_lyt);

    return v30;
  }

  v128 = v84;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  v86 = swift_dynamicCast();
  v30 = v118;
  if (v86)
  {
    v87 = v131;
    if (v132 == 2)
    {

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 134218240;
        *(v101 + 4) = v87;
        *(v101 + 12) = 2048;
        *(v101 + 14) = 116;
        _os_log_impl(&_mh_execute_header, v99, v100, "Metadata store version mismatch detected (database: %lld, expected: %ld). Recreating the metadata store database", v101, 0x16u);
      }

      sub_100079698(v50);
      v102 = v111;
      (v112)(v111, v50, ivar_lyt);
      v30 = sub_100079520(v102);
    }

    else
    {
      if (v132 != 3 || v131)
      {
        sub_1000FC958(v131, v132);
        goto LABEL_43;
      }

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Dropping database and recreating due to database integrity issues", v105, 2u);
      }

      sub_100079698(v50);
      v106 = v110;
      (v112)(v110, v50, ivar_lyt);
      v30 = sub_100079520(v106);
    }

    (v125)(v50, ivar_lyt);

    return v30;
  }

LABEL_43:

  sub_1000C9340();
  if (qword_100198310 != -1)
  {
    swift_once();
  }

  sub_10000347C(v108, qword_10019E068);
  sub_100027104(v30, v46);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v131 = v91;
    *v90 = 136315138;
    v92 = sub_100027F58();
    v93 = v46;
    v95 = v94;
    sub_100027240(v93, type metadata accessor for RegistryError);
    v96 = sub_100004C50(v92, v95, &v131);

    *(v90 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v88, v89, "Error loading metadata store: %s", v90, 0xCu);
    sub_1000034F8(v91);
    v50 = v117;

    v30 = v118;
  }

  else
  {

    sub_100027240(v46, type metadata accessor for RegistryError);
  }

  sub_1000098AC(&unk_10019ACB8);
  swift_allocError();
  sub_100027104(v30, v97);
  swift_willThrow();

  sub_100027240(v30, type metadata accessor for RegistryError);
  (v125)(v50, ivar_lyt);
  return v30;
}

uint64_t sub_1000C6978()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019E100);
  sub_10000347C(v0, qword_10019E100);
  type metadata accessor for Registry(0);
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
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

char *sub_1000C6A2C(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v5);
  v7 = *(v6 + 64);
  sub_100003A54();
  __chkstk_darwin(v8);
  sub_10000AE14();
  v129 = v9;
  v10 = sub_1000FD5B8();
  v11 = type metadata accessor for Registry.State(v10);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  sub_100002958();
  v16 = v15 - v14;
  v133 = OBJC_IVAR____TtC10LinkDaemon8Registry_ready;
  *(v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_ready) = 0;
  v17 = (v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_registryState);
  type metadata accessor for Date();
  sub_100007E2C();
  sub_1000075C4(v18, v19, v20, v21);
  *(v16 + *(v12 + 28)) = 0;
  *(v16 + *(v12 + 32)) = 0;
  *v17 = 0;
  v22 = *(sub_10002EB80(&qword_10019B7B8, &unk_100150CF0) + 28);
  v23 = sub_10002EB80(&unk_10019BC50, &qword_100151688);
  sub_100004B70(v23);
  bzero(v17 + v22, *(v24 + 64));
  v132 = v22;
  v25 = sub_1000F9F3C(v16, v17 + v22);
  v130 = OBJC_IVAR____TtC10LinkDaemon8Registry_appProtectionSubscription;
  *(v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_appProtectionSubscription) = 0;
  v131 = OBJC_IVAR____TtC10LinkDaemon8Registry_osStateHandler;
  *(v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_osStateHandler) = 0;
  v26 = (v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_observationToken);
  *v26 = 0u;
  v26[1] = 0u;
  v27 = *(a1 + 24);
  (*(a1 + 16))(&aBlock, v25);
  v28 = OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource;
  sub_10001A798(&aBlock, v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource);
  v29 = *(a1 + 56);
  v30 = (*(a1 + 48))(a1);
  if (!v2)
  {
    v39 = v30;
    v130 = v27;
    v131 = v29;
    v132 = 0;
    v133 = OBJC_IVAR____TtC10LinkDaemon8Registry_store;
    *(v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_store) = v30;
    v40 = type metadata accessor for MetadataStore(0);
    v139 = v40;
    v140 = &off_10018CA80;
    *&aBlock = v39;
    type metadata accessor for AppShortcutInterpolator();
    v41 = swift_allocObject();
    sub_10001C5D0(&aBlock, v40);
    v128 = &v125;
    sub_10000518C();
    v43 = v42;
    v45 = *(v44 + 64);
    v47 = __chkstk_darwin(v46);
    v127 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
    v48 = (&v125 - v127);
    v126 = *(v43 + 16);
    v126(&v125 - v127, v47);
    v49 = *v48;
    v143 = v40;
    v144 = &off_10018CA80;
    *&v142 = v49;
    v50 = v39;
    swift_defaultActor_initialize();
    sub_10001A798(&v142, v41 + 112);
    sub_1000034F8(&aBlock);
    v128 = OBJC_IVAR____TtC10LinkDaemon8Registry_appShortcutInterpolator;
    *(v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_appShortcutInterpolator) = v41;
    v51 = *(v3 + v133);
    v139 = v40;
    v140 = &off_10018D2F0;
    *&aBlock = v51;
    type metadata accessor for AssistantIntentPhraseInterpolator();
    v52 = swift_allocObject();
    v53 = sub_10001C5D0(&aBlock, v40);
    v54 = __chkstk_darwin(v53);
    v55 = (&v125 - v127);
    v126(&v125 - v127, v54);
    v56 = *v55;
    v143 = v40;
    v144 = &off_10018D2F0;
    *&v142 = v56;
    v57 = v51;
    swift_defaultActor_initialize();
    sub_10001A798(&v142, v52 + 112);
    sub_1000034F8(&aBlock);
    *(v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_examplePhraseInterpolator) = v52;
    v58 = *(a1 + 64);
    *(v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_observers) = v58;
    v59 = *(v3 + v133);
    v60 = *(v128 + v3);
    v61 = *(a1 + 8);
    v128 = *a1;
    v62 = *(a1 + 32);
    v63 = *(a1 + 40);
    type metadata accessor for Registry.IndexingQueue();
    swift_allocObject();
    swift_bridgeObjectRetain_n();

    v64 = v59;

    v65 = sub_100012014();
    sub_1000069B8(v65);
    v66 = sub_100091D5C();
    v133 = v58;
    v67 = v128;
    v127 = v61;
    v128 = v62;
    *(v3 + OBJC_IVAR____TtC10LinkDaemon8Registry_indexingQueue) = sub_1000CCDEC(v66, v68, v52, v58, v67, v61, v62, v63);
    v135.receiver = v3;
    v135.super_class = ObjectType;
    v69 = objc_msgSendSuper2(&v135, "init");
    sub_1000FD988();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
    v72 = v69;

    static OS_dispatch_queue.main.getter();
    sub_100009A00();
    type metadata accessor for OSStateHandler();
    v73 = swift_allocObject();
    sub_100061918(0, v71, sub_1000FC458, v70);
    sub_100008840();

    v74 = *&v72[OBJC_IVAR____TtC10LinkDaemon8Registry_osStateHandler];
    *&v72[OBJC_IVAR____TtC10LinkDaemon8Registry_osStateHandler] = v73;

    v75 = [objc_opt_self() defaultCenter];
    v76 = LNTriggerReindexNotification;
    sub_1000FD988();
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v140 = sub_1000FC460;
    v141 = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v138 = sub_1000C8688;
    v139 = &unk_10018F808;
    v78 = _Block_copy(&aBlock);

    v79 = [v75 addObserverForName:v76 object:0 queue:0 usingBlock:v78];
    _Block_release(v78);

    v139 = swift_getObjectType();
    *&aBlock = v79;
    v80 = OBJC_IVAR____TtC10LinkDaemon8Registry_observationToken;
    swift_beginAccess();
    sub_1000FC504(&aBlock, &v72[v80], &qword_1001992F0, &qword_10014E000);
    swift_endAccess();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    sub_10000347C(v81, qword_10019E100);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v129;
    if (v84)
    {
      sub_100005D40();
      v86 = swift_slowAlloc();
      sub_10001043C(v86);
      _os_log_impl(&_mh_execute_header, v82, v83, "Waiting for system app migration...", v64, 2u);
      sub_10001D624();
    }

    *&aBlock = 0;
    v87 = MobileInstallationWaitForSystemAppMigrationToComplete();
    v88 = aBlock;
    v89 = Logger.logObject.getter();
    if (v87)
    {
      static os_log_type_t.info.getter();
      v90 = sub_100018350();
      if (os_log_type_enabled(v90, v91))
      {
        sub_100005D40();
        v92 = swift_slowAlloc();
        *v92 = 0;
        sub_1000129B0();
        _os_log_impl(v93, v94, v95, v96, v92, 2u);
        sub_100004DE4();
      }
    }

    else
    {
      ObjectType = v63;
      static os_log_type_t.error.getter();
      v98 = sub_10001A88C();
      if (os_log_type_enabled(v98, v99))
      {
        sub_10001153C();
        v100 = swift_slowAlloc();
        sub_100003BFC();
        v101 = swift_slowAlloc();
        *&aBlock = v101;
        *v100 = 136315138;
        v126 = v88;
        if (v88)
        {
          v102 = [v88 localizedDescription];
          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;
        }

        else
        {
          v105 = 0xE700000000000000;
          v103 = 0x6E776F6E6B6E75;
        }

        v106 = sub_100004C50(v103, v105, &aBlock);

        *(v100 + 4) = v106;
        sub_1000FD968();
        _os_log_impl(v107, v108, v109, v110, v111, v112);
        sub_1000034F8(v101);
        sub_100004DE4();

        sub_10001E150();

        v97 = &off_10019B000;
        v88 = v126;
        goto LABEL_17;
      }
    }

    v97 = &off_10019B000;
LABEL_17:
    v113 = os_transaction_create();
    type metadata accessor for TaskPriority();
    sub_100007E2C();
    sub_1000075C4(v114, v115, v116, v117);
    v118 = swift_allocObject();
    v118[2] = 0;
    v118[3] = 0;
    v118[4] = v72;
    v118[5] = v113;
    v31 = v72;
    v119 = _s17AppIntents_SQLite9StatementC21___lazy_storage___row33_E09230218008A0440B080F1AB3693645LLAA6CursorVSgvpfi_0();
    sub_10003A6C0(v119, v120, v85, v121, v118);
    sub_10001E0E8();

    sub_10002CCE0(v128);

    v122 = v97[233];
    v123 = *&v122[v31];
    *&v122[v31] = v118;

    return v31;
  }

  v31 = *(a1 + 8);

  v32 = *(a1 + 40);
  sub_10002CCE0(*(a1 + 32));

  v136 = *(a1 + 64);
  sub_1000FC404(&v136, &qword_10019A560);
  sub_1000034F8((v3 + v28));
  v33 = *(v3 + v133);

  sub_1000FD1F8();
  sub_100027240(v17 + v132, v34);
  v35 = *(v3 + v130);
  swift_unknownObjectRelease();
  v36 = *(v3 + v131);

  sub_1000FC404(v26, &qword_1001992F0);
  v37 = *((swift_isaMask & *v3) + 0x30);
  v38 = *((swift_isaMask & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v31;
}

uint64_t sub_1000C79E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v16 = a1[3];
  v15 = a1[4];
  sub_1000034B4(a1, v16);
  v31 = (*(*(v15 + 8) + 8))(v16);
  v32 = v17;
  v19 = a1[3];
  v18 = a1[4];
  sub_1000034B4(a1, v19);
  (*(*(v18 + 8) + 16))(v19);
  sub_100009E90(v14, v11, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v11, 1, v3) == 1)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    v29 = 58;
    v30 = 0xE100000000000000;
    sub_1000098AC(&qword_100198D68);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v20 = v29;
    v21 = v30;
    (*(v4 + 8))(v7, v3);
  }

  sub_1000FC404(v14, &qword_1001990C0);
  v23._countAndFlagsBits = v20;
  v23._object = v21;
  String.append(_:)(v23);

  v25 = v32;
  v26 = v28;
  *v28 = v31;
  v26[1] = v25;
  return result;
}

void sub_1000C7CAC()
{
  v0 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v13 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Notification.userInfo.getter();
    if (v6)
    {
      v7 = v6;
      v13[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13[2] = v8;
      AnyHashable.init<A>(_:)();
      sub_1000A0ED4(v7, &v15);

      sub_10004B04C(v14);
      if (*(&v16 + 1))
      {
        if (swift_dynamicCast())
        {
          v9 = v14[0];
          v10 = v14[1];
          v11 = type metadata accessor for TaskPriority();
          sub_1000075C4(v3, 1, 1, v11);
          v12 = swift_allocObject();
          v12[2] = 0;
          v12[3] = 0;
          v12[4] = v5;
          v12[5] = v9;
          v12[6] = v10;
          sub_1000C1980(0, 0, v3, &unk_1001516B0, v12);
        }

        else
        {
        }

        return;
      }
    }

    else
    {

      v15 = 0u;
      v16 = 0u;
    }

    sub_1000FC404(&v15, &qword_1001992F0);
  }
}

uint64_t sub_1000C7E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000C7EA4, 0, 0);
}

uint64_t sub_1000C7EA4()
{
  sub_1000FDBF4();
  sub_100004884();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100011AB8(v3, qword_10019E100);

  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000FD458();

  if (sub_1000103CC())
  {
    v6 = v0[3];
    v5 = v0[4];
    sub_10001153C();
    v7 = swift_slowAlloc();
    sub_100003BFC();
    swift_slowAlloc();
    sub_1000FD604();
    sub_1000FDB5C(4.8149e-34);
    v8 = sub_100016D84();
    *(v7 + 4) = sub_100004C50(v8, v9, v10);
    sub_1000129B0();
    sub_1000FD8CC(v11, v12, v13, v14);
    sub_1000034F8(v1);
    sub_10001E150();

    sub_100004DE4();
  }

  v15 = swift_task_alloc();
  v16 = sub_1000FDAC8(v15);
  *v16 = v17;
  v16[1] = sub_1000C800C;
  v19 = v0[3];
  v18 = v0[4];
  v20 = v0[2];
  sub_10001064C();

  return sub_1000C80EC(v21, v22, v23);
}

uint64_t sub_1000C800C()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  sub_100003A00();

  return v5();
}

uint64_t sub_1000C80EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  return sub_100003B20();
}

uint64_t sub_1000C8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100004884();
  v16 = *(v14 + 32);
  v17 = *&v16[OBJC_IVAR____TtC10LinkDaemon8Registry_ready];
  *(v14 + 40) = v17;
  if (v17)
  {
    v18 = async function pointer to Task<>.value.getter[1];

    v19 = swift_task_alloc();
    v20 = sub_1000FD0C8(v19);
    *v20 = v21;
    v20[1] = sub_1000C82CC;
    sub_10001278C();

    return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v30 = *(v14 + 16);
    v31 = *(v14 + 24);
    sub_10000D4F0();
    _StringGuts.grow(_:)(23);

    sub_100003720();
    v50 = v32;
    v33._countAndFlagsBits = sub_10000D358();
    String.append(_:)(v33);
    sub_1000FD82C();
    *(v14 + 56) = v50;
    objc_opt_self();
    sub_1000FD7B0();

    v34 = v16;
    *(v14 + 64) = [v15 currentConnection];
    v35 = swift_task_alloc();
    v36 = sub_100016D40(v35);
    *v36 = v37;
    v36[1] = sub_1000C84FC;
    v38 = *(v14 + 24);
    v39 = *(v14 + 88);
    v40 = *(v14 + 16);
    v52 = *(v14 + 32);
    sub_1000132FC();

    return sub_1000D68FC(v41, v42, v43, v44, v45, v46, v47, v48);
  }
}

uint64_t sub_1000C82CC()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000C83CC()
{
  sub_100004884();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_10000D4F0();
  _StringGuts.grow(_:)(23);

  sub_100003720();
  v23 = v5;
  v6._countAndFlagsBits = sub_10000D358();
  String.append(_:)(v6);
  sub_1000FD82C();
  *(v0 + 56) = v23;
  objc_opt_self();
  sub_1000FD7B0();

  v7 = v3;
  *(v0 + 64) = [v1 currentConnection];
  v8 = swift_task_alloc();
  v9 = sub_100016D40(v8);
  *v9 = v10;
  v9[1] = sub_1000C84FC;
  v11 = *(v0 + 24);
  v12 = *(v0 + 88);
  v13 = *(v0 + 16);
  v25 = *(v0 + 32);
  sub_1000132FC();

  return sub_1000D68FC(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1000C84FC()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_100009990();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000C8624()
{
  sub_1000036A0();
  v1 = *(v0 + 56);

  sub_100003A00();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_1000C8688(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000C877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(sub_10002EB80(&qword_10019BA18, &qword_100150EB8) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000C8818, 0, 0);
}

uint64_t sub_1000C8818()
{
  sub_100028788();
  sub_1000036C4();
  v2 = *(v0 + 16);
  if (sub_1000C8BD4())
  {
    v3 = *(v0 + 24);
    v4 = (*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon8Registry_registryState);
    os_unfair_lock_lock(v4);
    v5 = v4 + *(sub_10002EB80(&qword_10019B7B8, &unk_100150CF0) + 28);
    Date.init()();
    type metadata accessor for Date();
    v6 = sub_1000FD08C();
    sub_1000075C4(v6, v7, v8, v9);
    sub_1000FC504(v3, v5, &qword_10019BA18, &qword_100150EB8);
    sub_1000C8FF0();
    v10 = sub_100009A00();
    v11 = type metadata accessor for Registry.State(v10);
    sub_1000FDC0C(v11);
    *(v5 + *(v1 + 24)) = 1;
    os_unfair_lock_unlock(v4);

    sub_100003A00();
    sub_10001A7B0();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100011AB8(v21, qword_10019E100);
    v22 = static os_log_type_t.default.getter();
    v23 = Logger.logObject.getter();
    if (os_log_type_enabled(v23, v22))
    {
      sub_100005D40();
      v24 = swift_slowAlloc();
      sub_100004814(v24);
      sub_1000117B8();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      sub_100004DE4();
    }

    v30 = swift_task_alloc();
    v31 = sub_1000FD2AC(v30);
    *v31 = v32;
    sub_100019A94(v31);
    sub_10001A7B0();

    return sub_1000C8C28(v33, v34, v35);
  }
}

uint64_t sub_1000C8A00()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  v5 = sub_10001E094();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C8AE4()
{
  sub_100028788();
  sub_1000036C4();
  v2 = *(v0 + 24);
  v3 = (*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon8Registry_registryState);
  os_unfair_lock_lock(v3);
  v4 = v3 + *(sub_10002EB80(&qword_10019B7B8, &unk_100150CF0) + 28);
  Date.init()();
  type metadata accessor for Date();
  v5 = sub_1000FD08C();
  sub_1000075C4(v5, v6, v7, v8);
  sub_1000FC504(v2, v4, &qword_10019BA18, &qword_100150EB8);
  sub_1000C8FF0();
  v9 = sub_100009A00();
  v10 = type metadata accessor for Registry.State(v9);
  sub_1000FDC0C(v10);
  *(v4 + *(v1 + 24)) = 1;
  os_unfair_lock_unlock(v3);

  sub_100003A00();
  sub_10001A7B0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000C8BD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon8Registry_store);
  v2 = *sub_1000034B4((v0 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource), *(v0 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource + 24));

  return sub_1000FA054(v2);
}

uint64_t sub_1000C8C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for OSSignpostID();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8CEC, 0, 0);
}

uint64_t sub_1000C8CEC()
{
  sub_1000036A0();
  v1 = v0[8];
  static OSSignpostID.exclusive.getter();
  sub_10001116C();
  sub_1000C43B0();
  v0[9] = v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000C8DBC;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_1000C9544(v3, v4, v6, v7, v5);
}

uint64_t sub_1000C8DBC()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = *(v2 + 80);
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;

  if (v0)
  {
  }

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000C8EC0()
{
  sub_1000070C8();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_100003854();
  sub_1000F1750();

  v5 = *(v4 + 8);
  v6 = sub_10000D358();
  v7(v6);

  sub_100003A00();

  return v8();
}

uint64_t sub_1000C8F74()
{
  sub_1000036A0();
  v1 = *(v0 + 72);
  sub_100003854();
  sub_1000F1750();
}

id sub_1000C8FF0()
{
  v0 = [objc_opt_self() sharedDatabaseContext];
  v5 = 0;
  if ([v0 startAccessingReturningError:&v5])
  {
    v1 = v5;
    v2 = [v0 currentPersistentIdentifier];
    [v0 stopAccessing];
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v2;
}

id sub_1000C90F4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC10LinkDaemon8Registry_observationToken;
  swift_beginAccess();
  sub_100009E90(v0 + v2, &v6, &qword_1001992F0, &qword_10014E000);
  if (v7)
  {
    sub_1000398F4(&v6, v8);
    v3 = [objc_opt_self() defaultCenter];
    sub_1000034B4(v8, v9);
    [v3 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_1000034F8(v8);
  }

  else
  {
    sub_1000FC404(&v6, &qword_1001992F0);
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_1000C9340()
{
  sub_1000FDCA4();
  v1 = v0;
  v3 = v2;
  v4 = sub_1000FD1C4();
  v5 = sub_10000482C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002958();
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (!swift_dynamicCast())
  {

    swift_errorRetain();
    sub_100003D44(0, &qword_10019B400, NSError_ptr);
    if (swift_dynamicCast())
    {
      v10 = [v18 domain];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {
      }

      else
      {
        sub_1000FDAE0();
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v17 = [v18 code];

      if (v17 == 1700)
      {
        sub_10000D358();
        swift_storeEnumTagMultiPayload();
        goto LABEL_3;
      }
    }

LABEL_14:

    *v3 = v1;
    sub_10000D358();
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    goto LABEL_15;
  }

  v8 = sub_100091D5C();
  sub_1000F9F3C(v8, v9);
LABEL_3:

LABEL_15:
  sub_1000FDC90();
}

uint64_t sub_1000C9544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v6 = *(*(type metadata accessor for RegistryError(0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[24] = v7;
  v8 = *(v7 - 8);
  v5[25] = v8;
  v9 = *(v8 + 64) + 15;
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000C9634, 0, 0);
}

uint64_t sub_1000C9634()
{
  v62 = v0;
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = sub_10000347C(v4, qword_10019E100);
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v7 = sub_100018350();
  if (os_log_type_enabled(v7, v8))
  {
    sub_100005D40();
    v9 = swift_slowAlloc();
    sub_100004814(v9);
    sub_1000117B8();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    sub_100004DE4();
  }

  v15 = *(v0 + 160);

  *(v0 + 216) = os_transaction_create();
  if (v15)
  {
    v16 = *(v0 + 160);
    v17 = v16;
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
  }

  else
  {
    v50 = *(v0 + 152);
    v17 = sub_1000C9F04();
    v18 = v54;
    v19 = v55;
    v56 = *(v0 + 168);
    v57 = *(v0 + 176);
    v16 = *(v0 + 160);
  }

  v20 = *(v0 + 208);
  sub_1000F9E88(v16);

  v21 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100012824())
  {
    sub_10001153C();
    v22 = swift_slowAlloc();
    sub_100003BFC();
    v23 = swift_slowAlloc();
    v61 = v23;
    *v22 = 136315138;
    v24 = sub_1000C9F6C(v17, v18, v19);
    v1 = sub_100004C50(v24, v25, &v61);

    *(v22 + 4) = v1;
    sub_1000FD3B4();
    sub_1000FD968();
    _os_log_impl(v26, v27, v28, v29, v30, v31);
    sub_1000034F8(v23);
    sub_10001D624();

    sub_10001E150();
  }

  v32 = *(v0 + 152);
  *(v0 + 224) = *(v32 + OBJC_IVAR____TtC10LinkDaemon8Registry_indexingQueue);
  v61 = v17;

  sub_10006E704(v33);
  v34 = v61;
  sub_1000034B4((v32 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource), *(v32 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource + 24));
  v35 = sub_1000F1DFC();
  v37 = v35;
  v38 = v36;
  v39 = *(v18 + 16);
  if (v39)
  {
    v59 = v36;
    v60 = v35;
    v61 = _swiftEmptyArrayStorage;
    sub_100011438(0, v39, 0);
    v40 = v61;
    v41 = v18 + 32;
    do
    {
      sub_100013334(v41, v0 + 112);
      v42 = *(v0 + 144);
      sub_1000034B4((v0 + 112), *(v0 + 136));
      v43 = *(v42 + 8);
      v44 = sub_1000128FC();
      v45(v44, v42);
      sub_1000133B8();
      sub_1000034F8((v0 + 112));
      v61 = v40;
      v47 = v40[2];
      v46 = v40[3];
      if (v47 >= v46 >> 1)
      {
        v49 = sub_100005150(v46);
        sub_100011438(v49, v47 + 1, 1);
        v40 = v61;
      }

      v40[2] = v47 + 1;
      v48 = &v40[2 * v47];
      v48[4] = v42;
      v48[5] = v1;
      v41 += 40;
      --v39;
    }

    while (v39);

    v38 = v59;
    v37 = v60;
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
  }

  sub_1000FDC78();
  *(v0 + 16) = 1;
  *(v0 + 24) = v34;
  *(v0 + 32) = v40;
  *(v0 + 40) = v37;
  *(v0 + 48) = v38;
  *(v0 + 56) = 0;
  sub_1000F9ED4(v0 + 16, v0 + 64);

  sub_10000D4DC(v37, v38);
  v51 = sub_100012B94();

  return _swift_task_switch(v51, v52, v53);
}