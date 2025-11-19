uint64_t sub_100177AE4(void **__dst, void **__src, void **a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v17 = &v16[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = v17;
      v20 = v8;
      v55 = *v8;
      v21 = v16;
      v54 = *v16;
      v22 = v54;
      v23 = v55;
      v24 = v22;
      v25 = sub_100171114(&v55, &v54, a5);
      if (v6)
      {

        v45 = v19 - v21 + 7;
        if (v19 - v21 >= 0)
        {
          v45 = v19 - v21;
        }

        v46 = v45 >> 3;
        if (v9 < v21 || v9 >= (v21 + (v45 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v9, v21, 8 * v46);
          return 1;
        }

        if (v9 == v21)
        {
          return 1;
        }

        v44 = 8 * v46;
        v42 = v9;
        v43 = v21;
        goto LABEL_57;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v18 = v21;
      v16 = v21 + 1;
      v8 = v20;
      if (v9 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      v17 = v19;
      v6 = 0;
      if (v16 >= v19)
      {
        goto LABEL_10;
      }
    }

    v18 = v20;
    v8 = v20 + 1;
    v16 = v21;
    if (v9 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v15);
    a4 = v27;
  }

  v52 = a4;
  v17 = (a4 + 8 * v15);
  if (v13 >= 8 && v8 > v9)
  {
    v28 = -a4;
    v49 = -a4;
    v50 = v9;
LABEL_25:
    v51 = v8;
    v29 = v8 - 1;
    v30 = v17 + v28;
    --v7;
    v31 = v17;
    while (1)
    {
      v32 = *--v31;
      v55 = v32;
      v33 = v29;
      v54 = *v29;
      v34 = v54;
      v35 = v32;
      v36 = v34;
      v37 = sub_100171114(&v55, &v54, a5);
      if (v6)
      {
        break;
      }

      v38 = v37;

      v39 = v7 + 1;
      if (v38)
      {
        if (v39 != v51)
        {
          *v7 = *v33;
        }

        v16 = v52;
        v6 = 0;
        if (v17 <= v52 || (v8 = v33, v28 = v49, v33 <= v50))
        {
          v8 = v33;
          goto LABEL_51;
        }

        goto LABEL_25;
      }

      if (v39 != v17)
      {
        *v7 = *v31;
      }

      v30 -= 8;
      --v7;
      v17 = v31;
      v6 = 0;
      v29 = v33;
      if (v31 <= v52)
      {
        v17 = v31;
        v8 = v51;
        v16 = v52;
        goto LABEL_51;
      }
    }

    if (v30 >= 0)
    {
      v40 = v30;
    }

    else
    {
      v40 = v30 + 7;
    }

    v41 = v40 >> 3;
    v42 = v51;
    v43 = v52;
    if (v51 < v52 || v51 >= (v52 + (v40 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v51, v52, 8 * v41);
      return 1;
    }

    if (v51 == v52)
    {
      return 1;
    }

    v44 = 8 * v41;
    goto LABEL_57;
  }

  v16 = a4;
LABEL_51:
  v47 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v47 = v17 - v16;
  }

  if (v8 < v16 || v8 >= (v16 + (v47 & 0xFFFFFFFFFFFFFFF8)) || v8 != v16)
  {
    v44 = 8 * (v47 >> 3);
    v42 = v8;
    v43 = v16;
LABEL_57:
    memmove(v42, v43, v44);
  }

  return 1;
}

void sub_100177EA0(int a1, uint64_t a2, void (**a3)(void, void, void))
{
  v369 = a3;
  i = a2;
  LODWORD(v381) = a1;
  v367 = type metadata accessor for DispatchTime();
  v366 = *(v367 - 8);
  v3 = *(v366 + 64);
  v4 = __chkstk_darwin(v367);
  v364 = &v357 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v365 = &v357 - v6;
  v363 = type metadata accessor for DispatchWorkItemFlags();
  v362 = *(v363 - 8);
  v7 = *(v362 + 64);
  __chkstk_darwin(v363);
  v361 = &v357 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = type metadata accessor for DispatchQoS();
  v359 = *(v360 - 8);
  v9 = *(v359 + 64);
  __chkstk_darwin(v360);
  v358 = &v357 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = type metadata accessor for UUID();
  v374 = *(v377 - 8);
  v11 = *(v374 + 64);
  __chkstk_darwin(v377);
  v376 = &v357 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = type metadata accessor for REMAccountSnapshotSummary();
  v373 = *(v380 - 1);
  v13 = *(v373 + 64);
  __chkstk_darwin(v380);
  v379 = &v357 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&qword_100939EF0, &qword_100797290);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v378 = &v357 - v17;
  v18 = [objc_opt_self() processInfo];
  v19 = swift_allocObject();
  v20 = sub_10038E004(_swiftEmptyArrayStorage);
  v370 = v19;
  *(v19 + 16) = v20;
  v386 = (v19 + 16);
  v372 = v18;
  v21 = [v18 environment];
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = 0;
  v25 = v22 + 64;
  v24 = *(v22 + 64);
  v384 = v22;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  while (v28)
  {
LABEL_11:
    v33 = (v23 << 10) | (16 * __clz(__rbit64(v28)));
    v34 = (*(v384 + 6) + v33);
    v35 = *v34;
    v36 = v34[1];
    v37 = (*(v384 + 7) + v33);
    v38 = v37[1];
    v385 = *v37;
    *&aBlock = 779513445;
    *(&aBlock + 1) = 0xE400000000000000;

    v39._countAndFlagsBits = v35;
    v39._object = v36;
    String.append(_:)(v39);

    v40 = aBlock;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = *v386;
    v42 = aBlock;
    *v386 = 0x8000000000000000;
    v43 = sub_100005F4C(v40, *(&v40 + 1));
    v45 = *(v42 + 16);
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      goto LABEL_187;
    }

    v49 = v44;
    if (*(v42 + 24) < v48)
    {
      sub_10036A8F0(v48, isUniquelyReferenced_nonNull_native);
      v43 = sub_100005F4C(v40, *(&v40 + 1));
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_200;
      }

LABEL_16:
      v51 = aBlock;
      if (v49)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v55 = v43;
    sub_100373664();
    v43 = v55;
    v51 = aBlock;
    if (v49)
    {
LABEL_4:
      v30 = (v51[7] + 16 * v43);
      v31 = v30[1];
      *v30 = v385;
      v30[1] = v38;

      goto LABEL_5;
    }

LABEL_17:
    v51[(v43 >> 6) + 8] |= 1 << v43;
    *(v51[6] + 16 * v43) = v40;
    v52 = (v51[7] + 16 * v43);
    *v52 = v385;
    v52[1] = v38;
    v53 = v51[2];
    v47 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v47)
    {
      goto LABEL_191;
    }

    v51[2] = v54;
LABEL_5:
    v28 &= v28 - 1;
    *v386 = v51;
  }

  while (1)
  {
    v32 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_176;
    }

    if (v32 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v32);
    ++v23;
    if (v28)
    {
      v23 = v32;
      goto LABEL_11;
    }
  }

  v56 = v372;
  v57 = [v372 arguments];
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = [v56 arguments];
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v385 = *(v60 + 16);

  v61 = v58;
  v384 = *(v58 + 16);
  if (v384)
  {
    v62 = 0;
    v63 = (v58 + 40);
    v383 = v61;
    do
    {
      if (v62 >= *(v61 + 16))
      {
        goto LABEL_183;
      }

      if (v385 == v62)
      {
        break;
      }

      v66 = *(v63 - 1);
      v67 = *v63;
      *&aBlock = 778531425;
      *(&aBlock + 1) = 0xE400000000000000;
      v395[0] = v62;

      v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v68);

      v69 = aBlock;
      v70 = v386;
      v71 = *v386;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v71;
      *v70 = 0x8000000000000000;
      v74 = sub_100005F4C(v69, *(&v69 + 1));
      v75 = *(v71 + 16);
      v76 = (v73 & 1) == 0;
      v77 = v75 + v76;
      if (__OFADD__(v75, v76))
      {
        goto LABEL_185;
      }

      v78 = v73;
      if (*(v71 + 24) >= v77)
      {
        if (v72)
        {
          v81 = aBlock;
          if ((v73 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          sub_100373664();
          v81 = aBlock;
          if ((v78 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        sub_10036A8F0(v77, v72);
        v79 = sub_100005F4C(v69, *(&v69 + 1));
        if ((v78 & 1) != (v80 & 1))
        {
          goto LABEL_200;
        }

        v74 = v79;
        v81 = aBlock;
        if ((v78 & 1) == 0)
        {
LABEL_34:
          v81[(v74 >> 6) + 8] |= 1 << v74;
          *(v81[6] + 16 * v74) = v69;
          v82 = (v81[7] + 16 * v74);
          *v82 = v66;
          v82[1] = v67;
          v83 = v81[2];
          v47 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v47)
          {
            goto LABEL_186;
          }

          v81[2] = v84;
          goto LABEL_24;
        }
      }

      v64 = (v81[7] + 16 * v74);
      v65 = v64[1];
      *v64 = v66;
      v64[1] = v67;

LABEL_24:
      ++v62;
      *v386 = v81;
      v63 += 2;
      v61 = v383;
    }

    while (v384 != v62);
  }

  LODWORD(aBlock) = [v372 processIdentifier];
  v85 = dispatch thunk of CustomStringConvertible.description.getter();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v386;
  *&aBlock = *v386;
  *v386 = 0x8000000000000000;
  sub_1002C72CC(v85, v87, 6580592, 0xE300000000000000, v88);
  *v89 = aBlock;
  v90 = i + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_60;
  }

  v92 = Strong;
  v93 = *(v90 + 8);
  ObjectType = swift_getObjectType();
  v95 = *(v93 + 48);
  v383 = v92;
  v96 = v95(ObjectType, v93);
  v97 = 0;
  v99 = v96 + 64;
  v98 = *(v96 + 64);
  v384 = v96;
  v100 = 1 << *(v96 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & v98;
  v103 = (v100 + 63) >> 6;
  while (2)
  {
    if (v102)
    {
LABEL_49:
      v108 = (v97 << 10) | (16 * __clz(__rbit64(v102)));
      v109 = (*(v384 + 6) + v108);
      v110 = *v109;
      v111 = v109[1];
      v112 = (*(v384 + 7) + v108);
      v113 = v112[1];
      v385 = *v112;
      *&aBlock = 0x6F6D656144637078;
      *(&aBlock + 1) = 0xEA00000000002E6ELL;

      v114._countAndFlagsBits = v110;
      v114._object = v111;
      String.append(_:)(v114);

      v115 = aBlock;
      v116 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v386;
      v117 = aBlock;
      *v386 = 0x8000000000000000;
      v118 = sub_100005F4C(v115, *(&v115 + 1));
      v120 = *(v117 + 16);
      v121 = (v119 & 1) == 0;
      v47 = __OFADD__(v120, v121);
      v122 = v120 + v121;
      if (v47)
      {
        goto LABEL_190;
      }

      v123 = v119;
      if (*(v117 + 24) >= v122)
      {
        if ((v116 & 1) == 0)
        {
          v129 = v118;
          sub_100373664();
          v118 = v129;
          v125 = aBlock;
          if ((v123 & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_10036A8F0(v122, v116);
        v118 = sub_100005F4C(v115, *(&v115 + 1));
        if ((v123 & 1) != (v124 & 1))
        {
          goto LABEL_200;
        }
      }

      v125 = aBlock;
      if ((v123 & 1) == 0)
      {
LABEL_55:
        v125[(v118 >> 6) + 8] |= 1 << v118;
        *(v125[6] + 16 * v118) = v115;
        v126 = (v125[7] + 16 * v118);
        *v126 = v385;
        v126[1] = v113;
        v127 = v125[2];
        v47 = __OFADD__(v127, 1);
        v128 = v127 + 1;
        if (v47)
        {
          goto LABEL_196;
        }

        v106 = v125;
        v125[2] = v128;
        goto LABEL_43;
      }

LABEL_42:
      v104 = (v125[7] + 16 * v118);
      v105 = v104[1];
      *v104 = v385;
      v104[1] = v113;

      v106 = v125;
LABEL_43:
      v102 &= v102 - 1;
      *v386 = v106;
      continue;
    }

    break;
  }

  while (1)
  {
    v107 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      goto LABEL_180;
    }

    if (v107 >= v103)
    {
      break;
    }

    v102 = *(v99 + 8 * v107);
    ++v97;
    if (v102)
    {
      v97 = v107;
      goto LABEL_49;
    }
  }

  swift_unknownObjectRelease();
LABEL_60:
  v368 = [objc_opt_self() sharedInstance];
  v130 = [v368 status];
  v131 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v132 = 0;
  v134 = v131 + 64;
  v133 = *(v131 + 64);
  v384 = v131;
  v135 = 1 << *(v131 + 32);
  v136 = -1;
  if (v135 < 64)
  {
    v136 = ~(-1 << v135);
  }

  v137 = v136 & v133;
  v138 = (v135 + 63) >> 6;
  while (2)
  {
    if (v137)
    {
LABEL_70:
      v142 = (v132 << 10) | (16 * __clz(__rbit64(v137)));
      v143 = (*(v384 + 6) + v142);
      v144 = *v143;
      v145 = v143[1];
      v146 = (*(v384 + 7) + v142);
      v147 = v146[1];
      v385 = *v146;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(16);

      strcpy(&aBlock, "AppleAccounts.");
      HIBYTE(aBlock) = -18;
      v148._countAndFlagsBits = v144;
      v148._object = v145;
      String.append(_:)(v148);

      v149 = aBlock;
      v150 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v386;
      v151 = aBlock;
      *v386 = 0x8000000000000000;
      v152 = sub_100005F4C(v149, *(&v149 + 1));
      v154 = *(v151 + 16);
      v155 = (v153 & 1) == 0;
      v47 = __OFADD__(v154, v155);
      v156 = v154 + v155;
      if (v47)
      {
        goto LABEL_188;
      }

      v157 = v153;
      if (*(v151 + 24) >= v156)
      {
        if ((v150 & 1) == 0)
        {
          v163 = v152;
          sub_100373664();
          v152 = v163;
          v159 = aBlock;
          if ((v157 & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_63;
        }
      }

      else
      {
        sub_10036A8F0(v156, v150);
        v152 = sub_100005F4C(v149, *(&v149 + 1));
        if ((v157 & 1) != (v158 & 1))
        {
          goto LABEL_200;
        }
      }

      v159 = aBlock;
      if ((v157 & 1) == 0)
      {
LABEL_76:
        v159[(v152 >> 6) + 8] |= 1 << v152;
        *(v159[6] + 16 * v152) = v149;
        v160 = (v159[7] + 16 * v152);
        *v160 = v385;
        v160[1] = v147;
        v161 = v159[2];
        v47 = __OFADD__(v161, 1);
        v162 = v161 + 1;
        if (v47)
        {
          goto LABEL_193;
        }

        v159[2] = v162;
        goto LABEL_64;
      }

LABEL_63:
      v139 = (v159[7] + 16 * v152);
      v140 = v139[1];
      *v139 = v385;
      v139[1] = v147;

LABEL_64:
      v137 &= v137 - 1;
      *v386 = v159;
      continue;
    }

    break;
  }

  while (1)
  {
    v141 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      goto LABEL_177;
    }

    if (v141 >= v138)
    {
      break;
    }

    v137 = *(v134 + 8 * v141);
    ++v132;
    if (v137)
    {
      v132 = v141;
      goto LABEL_70;
    }
  }

  v371 = *(i + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v164 = [v371 status:v381 & 1];
  v165 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v166 = 0;
  v167 = v165 + 64;
  v168 = 1 << *(v165 + 32);
  v169 = -1;
  if (v168 < 64)
  {
    v169 = ~(-1 << v168);
  }

  v170 = v169 & *(v165 + 64);
  v171 = (v168 + 63) >> 6;
  v383 = 0x80000001007EEA50;
  v384 = v165;
  while (2)
  {
    if (v170)
    {
LABEL_90:
      v175 = (v166 << 10) | (16 * __clz(__rbit64(v170)));
      v176 = (*(v384 + 6) + v175);
      v177 = *v176;
      v178 = v176[1];
      v179 = (*(v384 + 7) + v175);
      v180 = v179[1];
      v385 = *v179;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(18);

      *&aBlock = 0xD000000000000010;
      *(&aBlock + 1) = v383;
      v181._countAndFlagsBits = v177;
      v181._object = v178;
      String.append(_:)(v181);

      v182 = aBlock;
      v183 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v386;
      v184 = aBlock;
      *v386 = 0x8000000000000000;
      v185 = sub_100005F4C(v182, *(&v182 + 1));
      v187 = *(v184 + 16);
      v188 = (v186 & 1) == 0;
      v47 = __OFADD__(v187, v188);
      v189 = v187 + v188;
      if (v47)
      {
        goto LABEL_189;
      }

      v190 = v186;
      if (*(v184 + 24) >= v189)
      {
        if ((v183 & 1) == 0)
        {
          v196 = v185;
          sub_100373664();
          v185 = v196;
          v192 = aBlock;
          if ((v190 & 1) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_83;
        }
      }

      else
      {
        sub_10036A8F0(v189, v183);
        v185 = sub_100005F4C(v182, *(&v182 + 1));
        if ((v190 & 1) != (v191 & 1))
        {
          goto LABEL_199;
        }
      }

      v192 = aBlock;
      if ((v190 & 1) == 0)
      {
LABEL_96:
        v192[(v185 >> 6) + 8] |= 1 << v185;
        *(v192[6] + 16 * v185) = v182;
        v193 = (v192[7] + 16 * v185);
        *v193 = v385;
        v193[1] = v180;
        v194 = v192[2];
        v47 = __OFADD__(v194, 1);
        v195 = v194 + 1;
        if (v47)
        {
          goto LABEL_194;
        }

        v192[2] = v195;
        goto LABEL_84;
      }

LABEL_83:
      v172 = (v192[7] + 16 * v185);
      v173 = v172[1];
      *v172 = v385;
      v172[1] = v180;

LABEL_84:
      v170 &= v170 - 1;
      *v386 = v192;
      continue;
    }

    break;
  }

  while (1)
  {
    v174 = v166 + 1;
    if (__OFADD__(v166, 1))
    {
      goto LABEL_178;
    }

    if (v174 >= v171)
    {
      break;
    }

    v170 = *(v167 + 8 * v174);
    ++v166;
    if (v170)
    {
      v166 = v174;
      goto LABEL_90;
    }
  }

  v395[0] = 0xD000000000000013;
  v395[1] = 0x80000001007EE8B0;
  memset(&v395[2], 0, 30);
  v197 = sub_1003FE534(v395, sub_1004339E0, 0);
  v357 = 0;
  v198 = *(v197 + 16);
  aBlock = v197;
  v388 = 0;
  v389 = v198;
  v375 = (v373 + 32);
  v374 += 8;
  v373 += 8;
  v390 = 0;
  LOBYTE(v391) = 0;
LABEL_102:
  v199 = v378;
  sub_1001601F4(v378);
  v200 = v199;
  v201 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
  if ((*(*(v201 - 8) + 48))(v200, 1, v201) == 1)
  {

    v259 = [v371 cloudContext];
    if (!v259)
    {
LABEL_170:
      v336 = swift_allocObject();
      *(v336 + 16) = 1;
      v337 = (v336 + 16);
      v338 = [objc_opt_self() sharedBabysitter];
      if (v338)
      {
        v339 = v338;
        v340 = dispatch_group_create();
        dispatch_group_enter(v340);
        sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
        v341 = static OS_dispatch_queue.main.getter();
        v342 = swift_allocObject();
        v342[2] = v339;
        v342[3] = v340;
        v342[4] = v370;
        v342[5] = v336;
        v390 = sub_100189E44;
        v391 = v342;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v388 = sub_100019200;
        v389 = &unk_1008E7E98;
        v343 = _Block_copy(&aBlock);
        v384 = v339;
        v344 = v340;

        v345 = v358;
        static DispatchQoS.unspecified.getter();
        *&aBlock = _swiftEmptyArrayStorage;
        sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
        v385 = v336;
        sub_1000F5104(&unk_100939E50, &unk_100791AD0);
        sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
        v346 = v361;
        v347 = v363;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v343);

        (*(v362 + 8))(v346, v347);
        (*(v359 + 8))(v345, v360);
        v348 = v364;
        static DispatchTime.now()();
        v349 = v365;
        + infix(_:_:)();
        v350 = *(v366 + 8);
        v351 = v367;
        v350(v348, v367);
        OS_dispatch_group.wait(timeout:)();

        v350(v349, v351);
      }

      swift_beginAccess();
      if (*v337 == 1)
      {
        v352 = v386;
        swift_beginAccess();
        v353 = *v352;
        v354 = swift_isUniquelyReferenced_nonNull_native();
        v392 = *v352;
        *v352 = 0x8000000000000000;
        sub_1002C72CC(0xD00000000000001ALL, 0x80000001007EEA70, 0x7474697379626162, 0xEA00000000007265, v354);
        *v352 = v392;
        swift_endAccess();
      }

      swift_beginAccess();
      v355 = *(v370 + 16);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      (v369)[2](v369, isa, 0);

      return;
    }

    v260 = v259;
    v261 = [v259 readinessLoggingDescription];
    v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v264 = v263;

    v265 = v386;
    v266 = *v386;
    v267 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v266;
    *v265 = 0x8000000000000000;
    sub_1002C72CC(v262, v264, 0xD000000000000028, 0x80000001007EEA90, v267);
    *v265 = aBlock;
    v268 = [v260 lastSyncMetrics];
    v381 = v260;
    if (v268)
    {
      v380 = v268;
      v269 = [v268 dictionaryRepresentation];
      v270 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v271 = 0;
      v272 = v270 + 64;
      v273 = 1 << *(v270 + 32);
      v274 = -1;
      if (v273 < 64)
      {
        v274 = ~(-1 << v273);
      }

      v275 = v274 & *(v270 + 64);
      v276 = (v273 + 63) >> 6;
      v383 = 0x80000001007EEAE0;
      v384 = v270;
      for (i = v270 + 64; ; v272 = i)
      {
        if (v275)
        {
          goto LABEL_137;
        }

        do
        {
          v279 = v271 + 1;
          if (__OFADD__(v271, 1))
          {
            goto LABEL_184;
          }

          if (v279 >= v276)
          {

            v260 = v381;
            goto LABEL_149;
          }

          v275 = *(v272 + 8 * v279);
          ++v271;
        }

        while (!v275);
        v271 = v279;
LABEL_137:
        v280 = (v271 << 10) | (16 * __clz(__rbit64(v275)));
        v281 = (*(v384 + 6) + v280);
        v282 = *v281;
        v283 = v281[1];
        v284 = (*(v384 + 7) + v280);
        v285 = v284[1];
        v385 = *v284;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(31);

        *&aBlock = 0xD00000000000001DLL;
        *(&aBlock + 1) = v383;
        v286._countAndFlagsBits = v282;
        v286._object = v283;
        String.append(_:)(v286);

        v287 = aBlock;
        v288 = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = *v386;
        v289 = aBlock;
        *v386 = 0x8000000000000000;
        v291 = sub_100005F4C(v287, *(&v287 + 1));
        v292 = *(v289 + 16);
        v293 = (v290 & 1) == 0;
        v294 = v292 + v293;
        if (__OFADD__(v292, v293))
        {
          goto LABEL_195;
        }

        v295 = v290;
        if (*(v289 + 24) >= v294)
        {
          if (v288)
          {
            v298 = aBlock;
            if ((v290 & 1) == 0)
            {
              goto LABEL_144;
            }
          }

          else
          {
            sub_100373664();
            v298 = aBlock;
            if ((v295 & 1) == 0)
            {
              goto LABEL_144;
            }
          }

LABEL_130:
          v277 = (v298[7] + 16 * v291);
          v278 = v277[1];
          *v277 = v385;
          v277[1] = v285;

          goto LABEL_131;
        }

        sub_10036A8F0(v294, v288);
        v296 = sub_100005F4C(v287, *(&v287 + 1));
        if ((v295 & 1) != (v297 & 1))
        {
          goto LABEL_199;
        }

        v291 = v296;
        v298 = aBlock;
        if (v295)
        {
          goto LABEL_130;
        }

LABEL_144:
        v298[(v291 >> 6) + 8] |= 1 << v291;
        *(v298[6] + 16 * v291) = v287;
        v299 = (v298[7] + 16 * v291);
        *v299 = v385;
        v299[1] = v285;
        v300 = v298[2];
        v47 = __OFADD__(v300, 1);
        v301 = v300 + 1;
        if (v47)
        {
          goto LABEL_198;
        }

        v298[2] = v301;
LABEL_131:
        v275 &= v275 - 1;
        *v386 = v298;
      }
    }

LABEL_149:
    v302 = [v260 configurationDump];
    v303 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v304 = 0;
    v306 = v303 + 64;
    v305 = *(v303 + 64);
    v384 = v303;
    v307 = 1 << *(v303 + 32);
    v308 = -1;
    if (v307 < 64)
    {
      v308 = ~(-1 << v307);
    }

    v309 = v308 & v305;
    v310 = (v307 + 63) >> 6;
    v383 = 0x80000001007EEAC0;
    while (1)
    {
      if (v309)
      {
        goto LABEL_159;
      }

      do
      {
        v313 = v304 + 1;
        if (__OFADD__(v304, 1))
        {
          goto LABEL_181;
        }

        if (v313 >= v310)
        {

          goto LABEL_170;
        }

        v309 = *(v306 + 8 * v313);
        ++v304;
      }

      while (!v309);
      v304 = v313;
LABEL_159:
      v314 = (v304 << 10) | (16 * __clz(__rbit64(v309)));
      v315 = (*(v384 + 6) + v314);
      v316 = *v315;
      v317 = v315[1];
      v318 = (*(v384 + 7) + v314);
      v319 = v318[1];
      v385 = *v318;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(29);

      *&aBlock = 0xD00000000000001BLL;
      *(&aBlock + 1) = v383;
      v320._countAndFlagsBits = v316;
      v320._object = v317;
      String.append(_:)(v320);

      v321 = aBlock;
      v322 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v386;
      v323 = aBlock;
      *v386 = 0x8000000000000000;
      v324 = sub_100005F4C(v321, *(&v321 + 1));
      v326 = *(v323 + 16);
      v327 = (v325 & 1) == 0;
      v47 = __OFADD__(v326, v327);
      v328 = v326 + v327;
      if (v47)
      {
        goto LABEL_192;
      }

      v329 = v325;
      if (*(v323 + 24) >= v328)
      {
        if (v322)
        {
          goto LABEL_164;
        }

        v335 = v324;
        sub_100373664();
        v324 = v335;
        v331 = aBlock;
        if (v329)
        {
          goto LABEL_152;
        }

LABEL_165:
        v331[(v324 >> 6) + 8] |= 1 << v324;
        *(v331[6] + 16 * v324) = v321;
        v332 = (v331[7] + 16 * v324);
        *v332 = v385;
        v332[1] = v319;
        v333 = v331[2];
        v47 = __OFADD__(v333, 1);
        v334 = v333 + 1;
        if (v47)
        {
          goto LABEL_197;
        }

        v331[2] = v334;
      }

      else
      {
        sub_10036A8F0(v328, v322);
        v324 = sub_100005F4C(v321, *(&v321 + 1));
        if ((v329 & 1) != (v330 & 1))
        {
          goto LABEL_199;
        }

LABEL_164:
        v331 = aBlock;
        if ((v329 & 1) == 0)
        {
          goto LABEL_165;
        }

LABEL_152:
        v311 = (v331[7] + 16 * v324);
        v312 = v311[1];
        *v311 = v385;
        v311[1] = v319;
      }

      v309 &= v309 - 1;
      *v386 = v331;
    }
  }

  v202 = *(v200 + *(v201 + 48));
  (*v375)(v379, v200, v380);
  v393 = 0;
  v394 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v392 = v202;
  v393 = 0x53746E756F636361;
  v394 = 0xEF2E7972616D6D75;
  v383 = v202;
  v203._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v203);

  v204._countAndFlagsBits = 0x746E756F6363612ELL;
  v204._object = 0xEA00000000004449;
  String.append(_:)(v204);
  v206 = v393;
  v205 = v394;
  v207 = REMAccountSnapshotSummary.accountID.getter();
  v208 = [v207 uuid];

  v209 = v376;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v210 = UUID.uuidString.getter();
  v212 = v211;
  (*v374)(v209, v377);
  v213 = v386;
  v214 = *v386;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v393 = v214;
  *v213 = 0x8000000000000000;
  sub_1002C72CC(v210, v212, v206, v205, v215);

  *v213 = v393;
  v216 = REMAccountSnapshotSummary.nsPayload.getter();
  v217 = 0;
  v219 = v216 + 64;
  v218 = *(v216 + 64);
  v384 = v216;
  v220 = 1 << *(v216 + 32);
  if (v220 < 64)
  {
    v221 = ~(-1 << v220);
  }

  else
  {
    v221 = -1;
  }

  v222 = v221 & v218;
  v223 = ((v220 + 63) >> 6);
  i = v216 + 64;
  v381 = v223;
  while (2)
  {
    if (v222)
    {
LABEL_114:
      v228 = __clz(__rbit64(v222)) | (v217 << 6);
      v229 = (*(v384 + 6) + 16 * v228);
      v231 = *v229;
      v230 = v229[1];
      v232 = *(*(v384 + 7) + 8 * v228);
      v393 = 0;
      v394 = 0xE000000000000000;

      v233 = v232;
      _StringGuts.grow(_:)(20);

      v393 = 0x53746E756F636361;
      v394 = 0xEF2E7972616D6D75;
      v392 = v383;
      v234._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v234);

      v235._countAndFlagsBits = 46;
      v235._object = 0xE100000000000000;
      String.append(_:)(v235);
      v236._countAndFlagsBits = v231;
      v236._object = v230;
      String.append(_:)(v236);

      v237 = v393;
      v238 = v394;
      v385 = v233;
      v239 = [v233 stringValue];
      v240 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v242 = v241;

      v243 = v386;
      v244 = *v386;
      v245 = swift_isUniquelyReferenced_nonNull_native();
      v393 = v244;
      *v243 = 0x8000000000000000;
      v247 = sub_100005F4C(v237, v238);
      v248 = *(v244 + 16);
      v249 = (v246 & 1) == 0;
      v250 = v248 + v249;
      if (__OFADD__(v248, v249))
      {
        goto LABEL_179;
      }

      v251 = v246;
      if (*(v244 + 24) < v250)
      {
        sub_10036A8F0(v250, v245);
        v252 = sub_100005F4C(v237, v238);
        if ((v251 & 1) != (v253 & 1))
        {
          goto LABEL_200;
        }

        v247 = v252;
        v254 = v393;
        if ((v251 & 1) == 0)
        {
          goto LABEL_121;
        }

LABEL_107:
        v224 = (v254[7] + 16 * v247);
        v225 = v224[1];
        *v224 = v240;
        v224[1] = v242;

LABEL_108:
        v222 &= v222 - 1;
        v226 = v385;
        *v386 = v254;

        v219 = i;
        v223 = v381;
        continue;
      }

      if (v245)
      {
        v254 = v393;
        if (v246)
        {
          goto LABEL_107;
        }
      }

      else
      {
        sub_100373664();
        v254 = v393;
        if (v251)
        {
          goto LABEL_107;
        }
      }

LABEL_121:
      v254[(v247 >> 6) + 8] |= 1 << v247;
      v255 = (v254[6] + 16 * v247);
      *v255 = v237;
      v255[1] = v238;
      v256 = (v254[7] + 16 * v247);
      *v256 = v240;
      v256[1] = v242;
      v257 = v254[2];
      v47 = __OFADD__(v257, 1);
      v258 = v257 + 1;
      if (v47)
      {
        goto LABEL_182;
      }

      v254[2] = v258;
      goto LABEL_108;
    }

    break;
  }

  while (1)
  {
    v227 = v217 + 1;
    if (__OFADD__(v217, 1))
    {
      break;
    }

    if (v227 >= v223)
    {

      (*v373)(v379, v380);
      goto LABEL_102;
    }

    v222 = *(v219 + 8 * v227);
    ++v217;
    if (v222)
    {
      v217 = v227;
      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  _Block_release(v369);
LABEL_200:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100179F0C(char *a1, void (**a2)(const void *, Class, void))
{
  v144 = a2;
  v3 = type metadata accessor for REMAccountSnapshotSummary();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&qword_100939EF0, &qword_100797290);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v144 - v10;
  v12 = sub_10038E004(_swiftEmptyArrayStorage);
  v146 = a1;
  v13 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController];
  v166[0] = 0xD000000000000013;
  v166[1] = 0x80000001007EE8B0;
  memset(&v166[2], 0, 30);
  v147 = v13;
  v14 = sub_1003FE534(v166, sub_1004339E0, 0);
  v151 = v11;
  v152 = v7;
  v145 = 0;
  v161 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v53 = *(v14 + 16);
    v162 = v14;
    v163 = 0;
    v164 = v53;
    v150 = (v4 + 32);
    v148 = (v4 + 8);
    v165[0] = 0;
    LOBYTE(v165[1]) = 0;
    v149 = v3;
LABEL_26:
    v54 = v151;
    sub_1001601F4(v151);
    v55 = v54;
    v56 = sub_1000F5104(&qword_100939EF8, &qword_100797298);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) != 1)
    {
      v57 = *(v55 + *(v56 + 48));
      (*v150)(v152);
      v58 = REMAccountSnapshotSummary.accountID.getter();
      REMAccountSnapshotSummary.accountID.getter();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v108 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v160[0] = 0;
      v160[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v159 = v57;
      v160[0] = 0x53746E756F636361;
      v160[1] = 0xEF2E7972616D6D75;
      v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 0x746E756F6363612ELL;
      v60._object = 0xEA00000000004449;
      String.append(_:)(v60);
      v61 = v160[0];
      v62 = v160[1];
      v63 = [v58 stringRepresentation];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160[0] = v12;
      sub_1002C72CC(v64, v66, v61, v62, isUniquelyReferenced_nonNull_native);

      v12 = v160[0];
      v68 = REMAccountSnapshotSummary.nsPayload.getter();
      v69 = 0;
      v71 = v68 + 64;
      v70 = *(v68 + 64);
      v156 = v58;
      v157 = v68;
      v72 = 1 << *(v68 + 32);
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      else
      {
        v73 = -1;
      }

      v74 = v73 & v70;
      v75 = (v72 + 63) >> 6;
      v154 = v68 + 64;
      v153 = v75;
      v155 = v57;
      while (v74)
      {
        v78 = v69;
LABEL_40:
        v79 = __clz(__rbit64(v74)) | (v78 << 6);
        v80 = (*(v157 + 48) + 16 * v79);
        v82 = *v80;
        v81 = v80[1];
        v83 = *(*(v157 + 56) + 8 * v79);
        v160[0] = 0;
        v160[1] = 0xE000000000000000;

        v84 = v83;
        _StringGuts.grow(_:)(20);

        v159 = v57;
        v160[0] = 0x53746E756F636361;
        v160[1] = 0xEF2E7972616D6D75;
        v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v85);

        v86._countAndFlagsBits = 46;
        v86._object = 0xE100000000000000;
        String.append(_:)(v86);
        v87._countAndFlagsBits = v82;
        v87._object = v81;
        String.append(_:)(v87);

        v88 = v160[0];
        v89 = v160[1];
        v158 = v84;
        v90 = [v84 stringValue];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = swift_isUniquelyReferenced_nonNull_native();
        v160[0] = v12;
        v96 = sub_100005F4C(v88, v89);
        v97 = v12;
        v98 = v12[2];
        v99 = (v95 & 1) == 0;
        v100 = v98 + v99;
        if (__OFADD__(v98, v99))
        {
          goto LABEL_74;
        }

        v101 = v95;
        if (v97[3] >= v100)
        {
          if ((v94 & 1) == 0)
          {
            sub_100373664();
          }
        }

        else
        {
          sub_10036A8F0(v100, v94);
          v102 = sub_100005F4C(v88, v89);
          if ((v101 & 1) != (v103 & 1))
          {
            goto LABEL_81;
          }

          v96 = v102;
        }

        v74 &= v74 - 1;
        if (v101)
        {

          v12 = v160[0];
          v76 = (*(v160[0] + 56) + 16 * v96);
          v77 = v76[1];
          *v76 = v91;
          v76[1] = v93;
        }

        else
        {
          v12 = v160[0];
          *(v160[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
          v104 = (v12[6] + 16 * v96);
          *v104 = v88;
          v104[1] = v89;
          v105 = (v12[7] + 16 * v96);
          *v105 = v91;
          v105[1] = v93;

          v106 = v12[2];
          v42 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v42)
          {
            goto LABEL_75;
          }

          v12[2] = v107;
        }

        v69 = v78;
        v58 = v156;
        v57 = v155;
        v71 = v154;
        v75 = v153;
      }

      while (1)
      {
        v78 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v78 >= v75)
        {
          (*v148)(v152, v149);

          goto LABEL_26;
        }

        v74 = *(v71 + 8 * v78);
        ++v69;
        if (v74)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }
  }

  v15 = [v147 containerStats];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = 0;
  v19 = v16 + 64;
  v18 = *(v16 + 64);
  v157 = v16;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  if ((v21 & v18) != 0)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_73;
    }

    if (v27 >= v23)
    {

      v162 = xmmword_100796D80;
      v164 = 0;
      memset(v165, 0, 14);
      v163 = 0;
      __chkstk_darwin(v50);
      *(&v144 - 2) = &v161;
      *(&v144 - 1) = v146;
      v51 = v145;
      v52 = sub_1003FEA90(&v162, sub_100189E28, (&v144 - 4));
      if (v51)
      {
      }

      else if (v52)
      {
        v109 = 0;
        v110 = v52 + 64;
        v111 = 1 << *(v52 + 32);
        v112 = -1;
        if (v111 < 64)
        {
          v112 = ~(-1 << v111);
        }

        v113 = v112 & *(v52 + 64);
        v114 = (v111 + 63) >> 6;
        v157 = v52;
        while (v113)
        {
          v118 = v109;
LABEL_60:
          v119 = (v118 << 10) | (16 * __clz(__rbit64(v113)));
          v120 = (*(v52 + 48) + v119);
          v121 = *v120;
          v122 = v120[1];
          v123 = *(v52 + 56) + v119;
          v124 = *(v123 + 8);
          v158 = *v123;
          strcpy(v160, "contentStats.");
          HIWORD(v160[1]) = -4864;

          v125._countAndFlagsBits = v121;
          v125._object = v122;
          String.append(_:)(v125);

          v127 = v160[0];
          v126 = v160[1];
          v128 = v12;
          v129 = swift_isUniquelyReferenced_nonNull_native();
          v160[0] = v128;
          v130 = sub_100005F4C(v127, v126);
          v132 = v128[2];
          v133 = (v131 & 1) == 0;
          v42 = __OFADD__(v132, v133);
          v134 = v132 + v133;
          if (v42)
          {
            goto LABEL_79;
          }

          v135 = v131;
          if (v128[3] >= v134)
          {
            if ((v129 & 1) == 0)
            {
              v141 = v130;
              sub_100373664();
              v130 = v141;
            }
          }

          else
          {
            sub_10036A8F0(v134, v129);
            v130 = sub_100005F4C(v127, v126);
            if ((v135 & 1) != (v136 & 1))
            {
              goto LABEL_81;
            }
          }

          v113 &= v113 - 1;
          if (v135)
          {
            v115 = v130;

            v12 = v160[0];
            v116 = (*(v160[0] + 56) + 16 * v115);
            v117 = v116[1];
            *v116 = v158;
            v116[1] = v124;
          }

          else
          {
            v12 = v160[0];
            *(v160[0] + 8 * (v130 >> 6) + 64) |= 1 << v130;
            v137 = (v12[6] + 16 * v130);
            *v137 = v127;
            v137[1] = v126;
            v138 = (v12[7] + 16 * v130);
            *v138 = v158;
            v138[1] = v124;
            v139 = v12[2];
            v42 = __OFADD__(v139, 1);
            v140 = v139 + 1;
            if (v42)
            {
              goto LABEL_80;
            }

            v12[2] = v140;
          }

          v109 = v118;
          v52 = v157;
        }

        while (1)
        {
          v118 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            break;
          }

          if (v118 >= v114)
          {

            goto LABEL_70;
          }

          v113 = *(v110 + 8 * v118);
          ++v109;
          if (v113)
          {
            goto LABEL_60;
          }
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_70:
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v144[2](v144, isa, 0);
    }

    v22 = *(v19 + 8 * v27);
    ++v17;
  }

  while (!v22);
  while (1)
  {
    v28 = (v27 << 10) | (16 * __clz(__rbit64(v22)));
    v29 = (*(v157 + 48) + v28);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v157 + 56) + v28;
    v33 = *(v32 + 8);
    v158 = *v32;
    strcpy(&v162, "contentStats.");
    HIWORD(v162) = -4864;

    v34._countAndFlagsBits = v30;
    v34._object = v31;
    String.append(_:)(v34);

    v35 = v162;
    v36 = v12;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v162 = v36;
    v38 = sub_100005F4C(v35, *(&v35 + 1));
    v40 = v36[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      break;
    }

    v44 = v39;
    if (v36[3] >= v43)
    {
      if ((v37 & 1) == 0)
      {
        v49 = v38;
        sub_100373664();
        v38 = v49;
      }
    }

    else
    {
      sub_10036A8F0(v43, v37);
      v38 = sub_100005F4C(v35, *(&v35 + 1));
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_81;
      }
    }

    v22 &= v22 - 1;
    if (v44)
    {
      v24 = v38;

      v12 = v162;
      v25 = (*(v162 + 56) + 16 * v24);
      v26 = v25[1];
      *v25 = v158;
      v25[1] = v33;

      v17 = v27;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = v162;
      *(v162 + 8 * (v38 >> 6) + 64) |= 1 << v38;
      *(v12[6] + 16 * v38) = v35;
      v46 = (v12[7] + 16 * v38);
      *v46 = v158;
      v46[1] = v33;
      v47 = v12[2];
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v42)
      {
        goto LABEL_78;
      }

      v12[2] = v48;
      v17 = v27;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    v27 = v17;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  _Block_release(v144);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10017AB74(void *a1, uint64_t a2, void *a3, void *a4)
{
  v60 = a4;
  v63 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v19 = [a1 identifier];
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 56))(v16, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v16, 1, 1, v7);
  }

  sub_100031B58(v16, v18, &unk_100939D90, "8\n\r");
  if ((*(v8 + 48))(v18, 1, v7))
  {
    sub_1000050A4(v18, &unk_100939D90, "8\n\r");
    sub_10038E004(_swiftEmptyArrayStorage);
  }

  else
  {
    v58 = v4;
    (*(v8 + 16))(v11, v18, v7);
    sub_1000050A4(v18, &unk_100939D90, "8\n\r");
    v59 = UUID.uuidString.getter();
    v62 = v21;
    (*(v8 + 8))(v11, v7);
    v22 = [objc_opt_self() cdEntityName];
    if (!v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();
    }

    v23 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v22];

    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v24 = swift_allocObject();
    v57 = xmmword_100791340;
    *(v24 + 16) = xmmword_100791340;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100006600();
    *(v24 + 32) = 0x746E756F636361;
    *(v24 + 40) = 0xE700000000000000;
    *(v24 + 96) = sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    *(v24 + 104) = sub_10000CDE4(&qword_100939F38, &qword_1009399F0, off_1008D4120);
    *(v24 + 72) = a1;
    v25 = a1;
    v26 = NSPredicate.init(format:_:)();
    [v23 setPredicate:v26];

    v27 = v63;
    v28 = String._bridgeToObjectiveC()();
    v29 = objc_opt_self();
    v30 = [v29 expressionForKeyPath:v28];

    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100791300;
    *(v31 + 56) = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
    *(v31 + 32) = v30;
    v61 = v30;
    v32 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = [v29 expressionForFunction:v32 arguments:isa];

    v35 = [objc_allocWithZone(NSExpressionDescription) init];
    v56 = v34;
    [v35 setExpression:v34];
    v36 = v35;
    v37 = String._bridgeToObjectiveC()();
    [v36 setName:v37];

    [v36 setExpressionResultType:300];
    [v23 setReturnsObjectsAsFaults:0];
    v38 = swift_allocObject();
    *(v38 + 16) = v57;
    *(v38 + 32) = v27;
    *(v38 + 40) = a3;
    *(v38 + 88) = &type metadata for String;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = 0x6564692E7473696CLL;
    *(v38 + 72) = 0xEF7265696669746ELL;

    v39 = Array._bridgeToObjectiveC()().super.isa;

    [v23 setPropertiesToGroupBy:v39];

    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100791320;
    *(v40 + 32) = v27;
    *(v40 + 40) = a3;
    v41 = v23;
    *(v40 + 88) = &type metadata for String;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = 0x6564692E7473696CLL;
    v42 = a3;
    *(v40 + 72) = 0xEF7265696669746ELL;
    *(v40 + 120) = sub_1000060C8(0, &qword_100939F48, NSExpressionDescription_ptr);
    *(v40 + 96) = v36;
    v43 = v36;

    v44 = Array._bridgeToObjectiveC()().super.isa;

    [v41 setPropertiesToFetch:v44];

    [v41 setResultType:2];
    v65 = _swiftEmptyDictionarySingleton;
    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v45 = v58;
    v46 = NSManagedObjectContext.fetch<A>(_:)();
    if (v45)
    {
    }

    else
    {
      v47 = v46;
      *&v57 = v43;
      v48 = v56;
      v60 = v42;
      if (v46 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v50 = v48;
        v58 = v41;

        if (!i)
        {
          break;
        }

        v51 = 0;
        while (1)
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v51 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v52 = *(v47 + 8 * v51 + 32);
          }

          v53 = v52;
          v41 = (v51 + 1);
          if (__OFADD__(v51, 1))
          {
            break;
          }

          v64 = v52;
          sub_100171DA8(&v64, v63, v60, 0x6564692E7473696CLL, 0xEF7265696669746ELL, v59, v62, &v65);

          ++v51;
          v54 = v41 == i;
          v41 = v61;
          v50 = v48;
          if (v54)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

      v41 = v61;
LABEL_23:

      swift_bridgeObjectRelease_n();
    }
  }
}

void sub_10017B3DC(void *a1, uint64_t a2)
{
  v134 = a2;
  v4 = _s10PredicatesOMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  *&v147 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v128 - v13;
  v15 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v136 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v146 = &v128 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v128 - v22;
  __chkstk_darwin(v21);
  v25 = &v128 - v24;
  v133 = a1;
  v26 = [a1 identifier];
  if (v26)
  {
    v27 = v26;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v9 + 56);
    v29 = v23;
    v30 = 0;
  }

  else
  {
    v28 = *(v9 + 56);
    v29 = v23;
    v30 = 1;
  }

  v145 = v28;
  v28(v29, v30, 1, v8);
  sub_100031B58(v23, v25, &unk_100939D90, "8\n\r");
  p_attr = (v9 + 48);
  v31 = *(v9 + 48);
  if (v31(v25, 1, v8))
  {
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    sub_10038E004(_swiftEmptyArrayStorage);
  }

  else
  {
    v132 = v2;
    v143 = v31;
    (*(v9 + 16))(v14, v25, v8);
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    v33 = UUID.uuidString.getter();
    inited = v34;
    (*(v9 + 8))(v14, v8);
    v36 = [objc_opt_self() sharedConfiguration];
    v37 = [v36 extraneousAlarmsDeleteCountThreshold];

    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    v130._countAndFlagsBits = v33;
    v130._object = inited;
    v149 = v37;
    *v7 = v37;
    swift_storeEnumTagMultiPayload();
    v39 = sub_100043AA8();
    sub_100188054(v7, _s10PredicatesOMa);
    v40 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v41 = [objc_allocWithZone(NSFetchRequest) init];
    v42 = v40;
    v43 = [swift_getObjCClassFromMetadata() entity];
    [v41 setEntity:v43];

    [v41 setAffectedStores:0];
    [v41 setPredicate:v39];

    v131 = v41;
    [v41 setFetchLimit:10000];
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = swift_getKeyPath();
    v44 = (inited + 32);
    v153 = _swiftEmptyArrayStorage;
    sub_100010D04(0, 1, 0);
    v45 = v153;
    v135 = v9;
    v142 = v9 + 48;
    if ((inited & 0xC000000000000001) != 0)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_47;
      }

      v46 = *v44;
    }

    v47 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (v48)
    {
      v49 = v47;
      v50 = v48;
      v152 = &type metadata for String;

      *&v151 = v49;
      *(&v151 + 1) = v50;
      v7 = v45[2];
      v38 = v45[3];
      p_attr = (v7 + 1);
      if (v7 >= v38 >> 1)
      {
        goto LABEL_45;
      }

      while (1)
      {
        v45[2] = p_attr;
        sub_100005EE0(&v151, &v45[4 * v7 + 4]);
        swift_setDeallocating();
        v51 = *(inited + 16);
        swift_arrayDestroy();
        isa = Array._bridgeToObjectiveC()().super.isa;

        v53 = v131;
        [v131 setPropertiesToFetch:isa];

        v54 = v132;
        v55 = NSManagedObjectContext.fetch<A>(_:)();
        v42 = v54;
        if (v54)
        {

          return;
        }

        *&v151 = 0;
        *(&v151 + 1) = 0xE000000000000000;
        v56 = v55;
        _StringGuts.grow(_:)(65);
        v57._countAndFlagsBits = 0x5B746E756F636361;
        v57._object = 0xE800000000000000;
        String.append(_:)(v57);
        String.append(_:)(v130);
        v58._countAndFlagsBits = 0xD00000000000002ELL;
        v58._object = 0x80000001007EE990;
        String.append(_:)(v58);
        v153 = v149;
        v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v59);

        v60._countAndFlagsBits = 0x746E756F632E29;
        v60._object = 0xE700000000000000;
        String.append(_:)(v60);
        v61 = v56;
        inited = *(&v151 + 1);
        v44 = v151;
        v9 = v61 >> 62;
        v144 = v61;
        if (v61 >> 62)
        {
LABEL_47:
          v62 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        p_attr = &stru_100923FF8.attr;
        *&v151 = v62;
        v7 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v151 = _swiftEmptyDictionarySingleton;
        sub_1002C72CC(v7, v64, v44, inited, isUniquelyReferenced_nonNull_native);

        v129 = v151;
        if (v9)
        {
          v66 = v144;
          v67 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v66 = v144;
          v67 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v68 = v136;
        v132 = v42;
        if (!v67)
        {
          break;
        }

        v69 = 0;
        v141 = v66 & 0xC000000000000001;
        v140 = v66 & 0xFFFFFFFFFFFFFF8;
        v138 = v135 + 56;
        v137 = (v135 + 32);
        v148 = _swiftEmptyArrayStorage;
        v139 = v67;
        while (1)
        {
          if (v141)
          {
            v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v38 = *(v140 + 16);
            if (v69 >= v38)
            {
              goto LABEL_43;
            }

            v70 = *(v144 + 8 * v69 + 32);
          }

          p_attr = v70;
          v38 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            break;
          }

          v149 = (v69 + 1);
          v71 = [(SEL *)v70 identifier];
          if (v71)
          {
            v72 = v71;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v7 = 0;
          }

          else
          {
            v7 = 1;
          }

          v145(v68, v7, 1, v8);
          v73 = v146;
          inited = v8;
          sub_100031B58(v68, v146, &unk_100939D90, "8\n\r");
          if (v143(v73, 1, v8) == 1)
          {
            sub_1000050A4(v73, &unk_100939D90, "8\n\r");
            p_attr = (&stru_100923FF8 + 8);
          }

          else
          {
            v7 = *v137;
            (*v137)(v147, v73, v8);
            v74 = v148;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = sub_100366328(0, v74[2] + 1, 1, v74);
            }

            v148 = v74;
            v76 = v74[2];
            v75 = v74[3];
            if (v76 >= v75 >> 1)
            {
              v148 = sub_100366328(v75 > 1, v76 + 1, 1, v148);
            }

            v77 = v148;
            v148[2] = v76 + 1;
            (v7)(v77 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v76, v147, v8);
            p_attr = (&stru_100923FF8 + 8);
            v68 = v136;
          }

          ++v69;
          if (v149 == v139)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        sub_100010D04((v38 > 1), p_attr, 1);
        v45 = v153;
      }

      v148 = _swiftEmptyArrayStorage;
LABEL_39:

      v78 = sub_10029BD74(v148, 0);
      v79 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
      v80 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v82 = [ObjCClassFromMetadata entity];
      [v80 setEntity:v82];

      [v80 setAffectedStores:0];
      [v80 setPredicate:v78];
      [v80 setAffectedStores:0];
      v83 = v132;
      v84 = NSManagedObjectContext.count<A>(for:)();
      if (v83)
      {
      }

      else
      {
        v85 = v84;
        v145 = v79;
        v146 = ObjCClassFromMetadata;

        *&v151 = 0;
        *(&v151 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(65);
        v86._countAndFlagsBits = 0x5B746E756F636361;
        v86._object = 0xE800000000000000;
        String.append(_:)(v86);
        object = v130._object;
        String.append(_:)(v130);
        v88._countAndFlagsBits = 0xD000000000000037;
        v88._object = 0x80000001007EE9C0;
        String.append(_:)(v88);
        v89 = v151;
        *&v151 = v85;
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        v93 = v129;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        *&v151 = v93;
        sub_1002C72CC(v90, v92, v89, *(&v89 + 1), v94);

        v149 = v151;
        sub_1000F5104(&qword_100939F20, &qword_1007972E0);
        v95 = swift_initStackObject();
        v147 = xmmword_100791340;
        *(v95 + 16) = xmmword_100791340;
        *(v95 + 32) = sub_10001035C(1);
        KeyPath = swift_getKeyPath();
        v97 = v133;
        v98 = v133;
        v99 = sub_10039229C(KeyPath, v97);

        *(v95 + 40) = v99;
        sub_1000F5104(&qword_100939F28, &qword_100797310);
        v100 = swift_initStackObject();
        *(v100 + 16) = v147;
        *(v100 + 32) = sub_10001035C(1);
        v101 = swift_getKeyPath();
        v102 = sub_1003922C0(v101, v97);

        *(v100 + 40) = v102;
        v103 = sub_10000C2B0(v95);
        sub_1000060C8(0, &unk_100938870, off_1008D4128);
        v104 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
        v105 = [swift_getObjCClassFromMetadata() entity];
        [v104 setEntity:v105];

        [v104 setAffectedStores:0];
        [v104 setPredicate:v103];
        [v104 setAffectedStores:0];
        v106 = NSManagedObjectContext.count<A>(for:)();

        *&v151 = 0;
        *(&v151 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        *&v151 = 0x5B746E756F636361;
        *(&v151 + 1) = 0xE800000000000000;
        v107._countAndFlagsBits = v130._countAndFlagsBits;
        v107._object = object;
        String.append(_:)(v107);
        v108._object = 0x80000001007EEA00;
        v108._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v108);
        v109 = v151;
        *&v151 = v106;
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v113 = v149;
        v114 = swift_isUniquelyReferenced_nonNull_native();
        *&v151 = v113;
        sub_1002C72CC(v110, v112, v109, *(&v109 + 1), v114);

        v115 = v151;
        v116 = sub_10000C2B0(v100);
        v117 = [objc_allocWithZone(NSFetchRequest) init];
        v118 = [v146 entity];
        [v117 setEntity:v118];

        [v117 setAffectedStores:0];
        [v117 setPredicate:v116];
        [v117 setAffectedStores:0];
        v119 = NSManagedObjectContext.count<A>(for:)();

        *&v151 = 0;
        *(&v151 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        *&v151 = 0x5B746E756F636361;
        *(&v151 + 1) = 0xE800000000000000;
        v120._countAndFlagsBits = v130._countAndFlagsBits;
        v120._object = object;
        String.append(_:)(v120);

        v121._countAndFlagsBits = 0xD000000000000023;
        v121._object = 0x80000001007EEA20;
        String.append(_:)(v121);
        v122 = v151;
        *&v151 = v119;
        v123 = dispatch thunk of CustomStringConvertible.description.getter();
        v125 = v124;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        *&v151 = v115;
        sub_1002C72CC(v123, v125, v122, *(&v122 + 1), v126);
      }
    }

    else
    {
      *&v151 = 0;
      *(&v151 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v127._countAndFlagsBits = 0xD00000000000002CLL;
      v127._object = 0x80000001007EC120;
      String.append(_:)(v127);
      v150 = v46;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void sub_10017C630(uint64_t *a1, id *a2, void *a3)
{
  v159 = a3;
  v156 = a1;
  v4 = _s10PredicatesOMa(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v151 = (&v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v152 = (&v146 - v9);
  v10 = __chkstk_darwin(v8);
  v154 = &v146 - v11;
  __chkstk_darwin(v10);
  v13 = (&v146 - v12);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = [*a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v15 + 8))(v18, v14);
  v160 = 0;
  v161 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v24._countAndFlagsBits = 0x5B746E756F636361;
  v24._object = 0xE800000000000000;
  String.append(_:)(v24);
  v155 = v21;
  v25._countAndFlagsBits = v21;
  v25._object = v23;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD00000000000002FLL;
  v26._object = 0x80000001007EE8D0;
  String.append(_:)(v26);
  v153 = v160;
  v158 = v161;
  v27 = sub_1000F5104(&unk_100939F00, &unk_1007972A0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 64);
  *v13 = v19;
  v30 = _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v13 + v29) = 0;
  v157 = v4;
  swift_storeEnumTagMultiPayload();
  v31 = v19;
  v32 = sub_100043AA8();
  sub_100188054(v13, _s10PredicatesOMa);
  v33 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v34 = [objc_allocWithZone(NSFetchRequest) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = [ObjCClassFromMetadata entity];
  [v34 setEntity:v36];

  [v34 setAffectedStores:0];
  [v34 setPredicate:v32];
  [v34 setAffectedStores:0];
  v37 = v162;
  v38 = NSManagedObjectContext.count<A>(for:)();
  v162 = v37;
  if (v37)
  {

    return;
  }

  v39 = v38;
  v40 = v31;
  v41 = v158;
  v146 = v40;
  v147 = ObjCClassFromMetadata;
  v148 = v30;
  v149 = v27;
  v150 = v33;
  v42 = v156;

  if (v39 <= 0)
  {

    v44 = v23;
  }

  else
  {
    v160 = v39;

    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v23;
    v46 = v45;
    v47 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160 = *v42;
    sub_1002C72CC(v43, v46, v153, v41, isUniquelyReferenced_nonNull_native);

    swift_bridgeObjectRelease_n();
    *v42 = v160;
  }

  v49 = v154;
  v160 = 0;
  v161 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v50._countAndFlagsBits = 0x5B746E756F636361;
  v50._object = 0xE800000000000000;
  String.append(_:)(v50);
  v51 = v155;
  v52._countAndFlagsBits = v155;
  v52._object = v44;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0xD00000000000002CLL;
  v53._object = 0x80000001007EE900;
  String.append(_:)(v53);
  v54 = v161;
  v158 = v160;
  v55 = *(v149 + 48);
  v56 = *(v149 + 64);
  v57 = v146;
  *v49 = v146;
  swift_storeEnumTagMultiPayload();
  *(v49 + v56) = 1;
  swift_storeEnumTagMultiPayload();
  v58 = v57;
  v59 = sub_100043AA8();
  sub_100188054(v49, _s10PredicatesOMa);
  v60 = [objc_allocWithZone(NSFetchRequest) init];
  v61 = [v147 entity];
  [v60 setEntity:v61];

  [v60 setAffectedStores:0];
  [v60 setPredicate:v59];
  [v60 setAffectedStores:0];
  v62 = v162;
  v63 = NSManagedObjectContext.count<A>(for:)();
  v162 = v62;
  v64 = v44;
  if (v62)
  {

    return;
  }

  v65 = v63;
  v66 = v158;
  v154 = v58;

  if (v65 <= 0)
  {

    v73 = v51;
  }

  else
  {
    v160 = v65;

    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    v70 = v156;
    v71 = *v156;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v160 = *v70;
    v73 = v155;
    sub_1002C72CC(v67, v69, v66, v54, v72);

    swift_bridgeObjectRelease_n();
    *v70 = v160;
    v64 = v44;
  }

  v160 = 0;
  v161 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v74._countAndFlagsBits = 0x5B746E756F636361;
  v74._object = 0xE800000000000000;
  String.append(_:)(v74);
  v75._countAndFlagsBits = v73;
  v75._object = v64;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 0xD00000000000002ELL;
  v76._object = 0x80000001007EE930;
  String.append(_:)(v76);
  v77 = v73;
  v79 = v160;
  v78 = v161;
  v80 = *(v149 + 48);
  v81 = *(v149 + 64);
  v82 = v152;
  v83 = v154;
  *v152 = v154;
  swift_storeEnumTagMultiPayload();
  *(v82 + v81) = 0;
  swift_storeEnumTagMultiPayload();
  v84 = v83;
  v85 = v64;
  v86 = sub_100043AA8();
  sub_100188054(v82, _s10PredicatesOMa);
  v87 = [objc_allocWithZone(NSFetchRequest) init];
  v88 = [v147 entity];
  [v87 setEntity:v88];

  [v87 setAffectedStores:0];
  [v87 setPredicate:v86];
  [v87 setAffectedStores:0];
  v89 = v162;
  v90 = NSManagedObjectContext.count<A>(for:)();
  v162 = v89;
  if (v89)
  {

    return;
  }

  v91 = v90;
  v158 = v84;
  v92 = v79;
  v93 = v85;

  if (v91 <= 0)
  {

    v100 = v77;
  }

  else
  {
    v160 = v91;

    v94 = dispatch thunk of CustomStringConvertible.description.getter();
    v96 = v95;
    v97 = v156;
    v98 = *v156;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v160 = *v97;
    v100 = v155;
    sub_1002C72CC(v94, v96, v92, v78, v99);

    swift_bridgeObjectRelease_n();
    *v97 = v160;
  }

  v160 = 0;
  v161 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v101._countAndFlagsBits = 0x5B746E756F636361;
  v101._object = 0xE800000000000000;
  String.append(_:)(v101);
  v102._countAndFlagsBits = v100;
  v102._object = v93;
  String.append(_:)(v102);
  v103._countAndFlagsBits = 0xD00000000000002BLL;
  v103._object = 0x80000001007EE960;
  String.append(_:)(v103);
  v104 = v100;
  v106 = v160;
  v105 = v161;
  v107 = *(v149 + 48);
  v108 = *(v149 + 64);
  v109 = v151;
  v110 = v158;
  *v151 = v158;
  swift_storeEnumTagMultiPayload();
  *(v109 + v108) = 1;
  swift_storeEnumTagMultiPayload();
  v111 = v110;
  v112 = sub_100043AA8();
  sub_100188054(v109, _s10PredicatesOMa);
  v113 = [objc_allocWithZone(NSFetchRequest) init];
  v114 = [v147 entity];
  [v113 setEntity:v114];

  [v113 setAffectedStores:0];
  [v113 setPredicate:v112];
  [v113 setAffectedStores:0];
  v115 = v159;
  v116 = v162;
  v117 = NSManagedObjectContext.count<A>(for:)();
  v162 = v116;
  if (v116)
  {

    return;
  }

  v118 = v117;
  v157 = v111;
  v158 = v93;
  v119 = v104;

  if (v118 <= 0)
  {
  }

  else
  {
    v160 = v118;

    v120 = dispatch thunk of CustomStringConvertible.description.getter();
    v122 = v121;
    v123 = v156;
    v124 = *v156;
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v160 = *v123;
    sub_1002C72CC(v120, v122, v106, v105, v125);

    swift_bridgeObjectRelease_n();
    *v123 = v160;
  }

  v126 = v119;
  v127 = v157;
  v128 = v162;
  v129 = sub_1005E37E8(v127);
  v162 = v128;
  if (v128)
  {

    return;
  }

  v130 = v129;
  v131 = sub_100565FF4(v129, 0);
  v162 = 0;
  v132 = v131;

  if (v132)
  {

    v133 = v162;
    sub_10017AB74(v132, 0xD000000000000011, 0x8000000100797120, v115);
    v162 = v133;
    if (!v133)
    {
      v135._rawValue = v134;
      sub_1000F5104(&unk_100945230, &qword_1007A2590);
      Dictionary.merge(takingValuesIn:)(v135);

      v136 = v162;
      sub_10017AB74(v132, 0x6574656C706D6F63, 0xE900000000000064, v115);
      v162 = v136;
      if (!v136)
      {
        Dictionary.merge(takingValuesIn:)(v137);

        v138 = v162;
        sub_10017B3DC(v132, v115);
        v162 = v138;
        if (!v138)
        {
          Dictionary.merge(takingValuesIn:)(v139);

          return;
        }
      }
    }
  }

  else
  {
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    sub_100006654(v140, qword_100939C00);
    v141 = v158;

    v132 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v132, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v160 = v144;
      *v143 = 136315138;
      v145 = sub_10000668C(v126, v141, &v160);

      *(v143 + 4) = v145;
      _os_log_impl(&_mh_execute_header, v132, v142, "Cannot get cdAccount from %s for extra container stats", v143, 0xCu);
      sub_10000607C(v144);
    }

    else
    {
    }
  }
}

void sub_10017D3DC(void (**a1)(void, void, void))
{
  if (qword_100935AE8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100939C00);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDXPCDebugPerformer: dumpUbKVS initiated", v4, 2u);
  }

  v5 = sub_10038E004(_swiftEmptyArrayStorage);
  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  v6 = [*(static RDSynchronizedKeyValueStore.default + 16) dictionaryRepresentation];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = 0;
  v9 = v7 + 64;
  v46 = v7;
  v47 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  while (1)
  {
    if (!v12)
    {
      if (v13 <= v8 + 1)
      {
        v18 = v8 + 1;
      }

      else
      {
        v18 = v13;
      }

      v19 = v18 - 1;
      while (1)
      {
        v17 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v17 >= v13)
        {
          v12 = 0;
          v50 = 0u;
          v51 = 0u;
          v49 = 0u;
          goto LABEL_21;
        }

        v12 = *(v9 + 8 * v17);
        ++v8;
        if (v12)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v17 = v8;
LABEL_20:
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = v20 | (v17 << 6);
    v22 = (*(v46 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_100005EF0(*(v46 + 56) + 32 * v21, v48);
    *&v49 = v24;
    *(&v49 + 1) = v23;
    sub_100005EE0(v48, &v50);

    v19 = v17;
LABEL_21:
    v52 = v49;
    v53[0] = v50;
    v53[1] = v51;
    v25 = *(&v49 + 1);
    if (!*(&v49 + 1))
    {
      break;
    }

    v26 = v52;
    sub_100005EE0(v53, &v49);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v5;
    v31 = sub_100005F4C(v26, v25);
    v33 = v5[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_35;
    }

    v37 = v32;
    if (v5[3] < v36)
    {
      sub_10036A8F0(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_100005F4C(v26, v25);
      if ((v37 & 1) != (v38 & 1))
      {
        _Block_release(a1);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

LABEL_27:
      if (v37)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v43 = v31;
    sub_100373664();
    v31 = v43;
    if (v37)
    {
LABEL_9:
      v14 = v31;

      v5 = v49;
      v15 = (*(v49 + 56) + 16 * v14);
      v16 = v15[1];
      *v15 = v27;
      v15[1] = v29;

      goto LABEL_10;
    }

LABEL_28:
    v5 = v49;
    *(v49 + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v39 = (v5[6] + 16 * v31);
    *v39 = v26;
    v39[1] = v25;
    v40 = (v5[7] + 16 * v31);
    *v40 = v27;
    v40[1] = v29;
    v41 = v5[2];
    v35 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v35)
    {
      goto LABEL_36;
    }

    v5[2] = v42;
LABEL_10:
    v8 = v19;
    v9 = v47;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (a1)[2](a1, isa, 0);
}

uint64_t sub_10017D808(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  sub_100010364(a3, v20, &qword_100939ED0, &qword_100791B10);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10000668C(a1, a2, &v19);
    *(v11 + 12) = 2080;
    sub_1000F5104(&qword_100939ED0, &qword_100791B10);
    v12 = Optional.descriptionOrNil.getter();
    v13 = a3;
    v14 = a4;
    v16 = v15;
    sub_1000050A4(v20, &qword_100939ED0, &qword_100791B10);
    v17 = sub_10000668C(v12, v16, &v19);
    a4 = v14;
    a3 = v13;

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: writeUbKVS initiated {key: %s, value: %s}", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000050A4(v20, &qword_100939ED0, &qword_100791B10);
  }

  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  sub_10054DBE0(a3);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_10017DA8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000668C(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: removeFromUbKVS initiated {key: %s}", v9, 0xCu);
    sub_10000607C(v10);
  }

  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  v11 = *(static RDSynchronizedKeyValueStore.default + 16);
  v12 = String._bridgeToObjectiveC()();
  [v11 removeObjectForKey:v12];

  v13 = *(a3 + 16);

  return v13(a3, 0);
}

uint64_t sub_10017DC68(uint64_t a1, uint64_t a2)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100939C00);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDXPCDebugPerformer: nukeDatabase initiated", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v26 = 0;
  if ([v8 nukeDataWithError:&v26])
  {
    v9 = v26;
    sub_10031BE94();
    return (*(a2 + 16))(a2, 0);
  }

  else
  {
    v11 = v26;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = v12;
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    sub_1000060C8(0, &qword_100939E60, NSError_ptr);
    swift_dynamicCast();
    v13 = v25;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDXPCDebugPerformer: Failed to nuke database {error: %@}", v16, 0xCu);
      sub_1000050A4(v17, &unk_100938E70, &unk_100797230);
    }

    v19 = objc_opt_self();
    v20 = v13;
    v21 = _convertErrorToNSError(_:)();

    v22 = [v19 errorSanitizedForXPCFromError:v21];
    v23 = v22;
    v24 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v24);
  }
}

void sub_10017DF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _convertErrorToNSError(_:)();
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDXPCDebugPerformer: Failed testInitialSync {error: %@}", v10, 0xCu);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);
  }

  v13 = objc_opt_self();
  v14 = v7;
  v15 = _convertErrorToNSError(_:)();

  v16 = [v13 errorSanitizedForXPCFromError:v15];
  swift_beginAccess();
  v17 = *(a2 + 16);

  v18 = v16;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v20 = _convertErrorToNSError(_:)();
  (*(a3 + 16))(a3, 0, isa, v20);
}

uint64_t sub_10017E1B4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v18 = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: testInitialSync initiated", v11, 2u);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyDictionarySingleton;
  v13 = swift_allocObject();
  v13[2] = sub_100189B8C;
  v13[3] = v7;
  v13[4] = v12;
  v14 = swift_allocObject();
  v14[2] = sub_100189B8C;
  v14[3] = v7;
  v15 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v14[4] = v12;
  v19 = xmmword_100796D90;
  v21 = 0;
  v22[0] = 0;
  v20 = 0;
  *(v22 + 6) = 0;
  v17[2] = a1;
  v17[3] = v18;
  v17[4] = a3;
  v17[5] = v12;
  v17[6] = sub_100189B94;
  v17[7] = v13;
  v17[8] = sub_100189BE0;
  v17[9] = __chkstk_darwin(v14);
  swift_retain_n();
  swift_retain_n();
  sub_100014A64(&v19, sub_100189BEC, v17);
}

void sub_10017E488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100939C00);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDXPCDebugPerformer: Failed testReinitializeCloudKit {error: %@}", v8, 0xCu);
      sub_1000050A4(v9, &unk_100938E70, &unk_100797230);
    }

    v11 = objc_opt_self();
    v12 = v5;
    v13 = _convertErrorToNSError(_:)();

    v14 = [v11 errorSanitizedForXPCFromError:v13];
    v15 = v14;
    v17 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v17);
  }

  else
  {
    v16 = *(a2 + 16);

    v16(a2, 0);
  }
}

void sub_10017E6A0(uint64_t a1, void *a2, void *a3, const void *a4)
{
  v58 = a3;
  v64 = a1;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v52 - v8;
  v63 = type metadata accessor for UUID();
  v10 = *(v63 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v63);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v52 - v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v59 = v9;
  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100939C00);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v62 = v10;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136446210;
    v21 = v64;
    *(v19 + 4) = sub_10000668C(v64, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "RDXPCDebugPerformer: testReinitializeCloudKit initiated {accountIdentifier: %{public}s}", v19, 0xCu);
    sub_10000607C(v20);
  }

  else
  {

    v21 = v64;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = sub_10003FE60;
  *(v22 + 24) = v14;
  v23 = objc_opt_self();

  v24 = [v23 sharedInstance];
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:v25];

  if (!v26)
  {
    goto LABEL_12;
  }

  v27 = [v26 displayAccount];
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = v27;
  v29 = [v27 identifier];
  if (!v29)
  {

    goto LABEL_12;
  }

  v56 = v29;
  v57 = v24;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v59;
  UUID.init(uuidString:)();

  v31 = v63;
  v32 = v62;
  if ((*(v62 + 48))(v30, 1, v63) == 1)
  {

    sub_1000050A4(v30, &unk_100939D90, "8\n\r");
    v21 = v64;
    v24 = v57;
LABEL_12:
    v33 = objc_opt_self();
    aBlock = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v34._object = 0x80000001007EE630;
    v34._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v34);
    v35._countAndFlagsBits = v21;
    v35._object = a2;
    String.append(_:)(v35);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v33 internalErrorWithDebugDescription:v36];

    _Block_copy(a4);
    v38 = v37;
    sub_10017E488(v37, a4);
    _Block_release(a4);

    return;
  }

  v53 = *(v32 + 32);
  v54 = v14;
  v52 = v32 + 32;
  v53(v61, v30, v31);
  v55 = [v57 accountStore];
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  (*(v32 + 16))(v60, v61, v31);
  v39 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v40 = (v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v43 = v58;
  v42 = v59;
  *(v41 + 2) = v28;
  *(v41 + 3) = v42;
  *(v41 + 4) = sub_1001899A8;
  *(v41 + 5) = v22;
  *(v41 + 6) = v43;
  v53(&v41[v39], v60, v31);
  v44 = v56;
  *&v41[v40] = v56;
  v45 = &v41[(v40 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v45 = v64;
  *(v45 + 1) = a2;
  v69 = sub_1001899B0;
  v70 = v41;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100007688;
  v68 = &unk_1008E7BC8;
  v46 = _Block_copy(&aBlock);

  v47 = v28;

  v48 = v43;
  v49 = v44;

  v50 = v57;
  v51 = v55;
  [v57 _unsetMigrationFlagsWithACAccount:v47 inStore:v55 completionHandler:v46];
  _Block_release(v46);

  (*(v62 + 8))(v61, v63);
}

void sub_10017ED64(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v74 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000668C(a1, a2, &v74);
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: testFlagAccountForInactivatedCalDAVDataMigration initiated {accountIdentifier: %{public}s}", v11, 0xCu);
    sub_10000607C(v12);
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedInstance];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:v15];

  if (v16)
  {
    v17 = [v16 displayAccount];
    if (v17)
    {
      v18 = v17;
      v68 = a3;
      v19 = [v17 identifier];
      if (v19)
      {
        v20 = v19;
        v66 = v18;
        v21 = objc_opt_self();
        v22 = [v21 daemonUserDefaults];
        v23 = [v22 acAccountIdentifiersToMigrateInactivatedCalDavData];

        if (v23)
        {
          v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v24 = _swiftEmptyArrayStorage;
        }

        v31 = sub_1001A5660(v24);

        v73 = v31;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100378434(&v74, v32, v33);

        v65 = v21;
        v34 = [v21 daemonUserDefaults];
        v35 = *(v31 + 16);
        if (v35)
        {
          v36 = sub_1003689CC(*(v73 + 16), 0);
          v37 = sub_1002791DC(&v74, v36 + 4, v35, v31);
          sub_10001B860();
          if (v37 == v35)
          {
LABEL_19:
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v34 setAcAccountIdentifiersToMigrateInactivatedCalDavData:isa];

            v39 = v20;
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.default.getter();
            v67 = v39;

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              *v42 = 138543362;
              *(v42 + 4) = v67;
              *v43 = v20;
              v44 = v67;
              sub_1000050A4(v43, &unk_100938E70, &unk_100797230);
            }

            v45 = &v68[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon];
            Strong = swift_unknownObjectWeakLoadStrong();
            v47 = *(v45 + 1);
            v71 = Strong;
            v72 = v47;
            sub_1000F5104(&qword_100939EA8, &qword_100797258);
            Optional.tryUnwrap(_:file:line:)();
            swift_unknownObjectRelease();
            v48 = *(&v74 + 1);
            v49 = type metadata accessor for RDDaemonController();
            *&v74 = 0xD000000000000030;
            *(&v74 + 1) = 0x80000001007EE5F0;
            v76 = 0;
            v77[0] = 0;
            v75 = 0;
            *(v77 + 6) = 0;
            ObjectType = swift_getObjectType();
            v51 = swift_unknownObjectRetain();
            v64 = sub_1005564D4(v51, &v74, 0, v49, ObjectType, v48);
            v52 = [objc_allocWithZone(REMStore) initWithDaemonController:v64];
            v53 = *&v68[OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController];
            v54 = v52;
            v55 = [v13 sharedInstance];
            v56 = [v65 daemonUserDefaults];
            v57 = type metadata accessor for RDAccountInitializer();
            v58 = objc_allocWithZone(v57);
            *&v58[OBJC_IVAR____TtC7remindd20RDAccountInitializer_store] = v54;
            *&v58[OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController] = v53;
            *&v58[OBJC_IVAR____TtC7remindd20RDAccountInitializer_appleAccountUtilities] = v55;
            *&v58[OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults] = v56;
            v70.receiver = v58;
            v70.super_class = v57;
            v59 = v53;
            v60 = objc_msgSendSuper2(&v70, "init");
            sub_100455ED0();

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *v63 = 0;
              _os_log_impl(&_mh_execute_header, v61, v62, "RDXPCDebugPerformer: testFlagAccountForInactivatedCalDAVDataMigration called initializeAllAccounts()", v63, 2u);
            }

            swift_unknownObjectRelease();
            (*(a4 + 16))(a4, 0);

            return;
          }

          __break(1u);
        }

        goto LABEL_19;
      }
    }
  }

  v25 = objc_opt_self();
  *&v74 = 0;
  *(&v74 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(116);
  v26._countAndFlagsBits = 0xD000000000000072;
  v26._object = 0x80000001007EE4E0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = a1;
  v27._object = a2;
  String.append(_:)(v27);
  v28 = String._bridgeToObjectiveC()();

  v29 = [v25 internalErrorWithDebugDescription:v28];

  v30 = v29;
  v69 = _convertErrorToNSError(_:)();
  (*(a4 + 16))(a4, v69);
}

void sub_10017F5D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v8 = [v7 cloudContext];
  if (v8)
  {
    v9 = v8;
    if ([v7 supportsSyncingToCloudKit])
    {
      v10 = [objc_allocWithZone(CKRecordZoneID) initWithZoneName:@"Reminders" ownerName:CKCurrentUserDefaultName databaseScope:2];
      if (qword_100935AE8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100939C00);

      v24 = v10;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v25 = v16;
        *v14 = 136315394;
        *(v14 + 4) = sub_10000668C(a1, a2, &v25);
        *(v14 + 12) = 2112;
        *(v14 + 14) = v24;
        *v15 = v24;
        v17 = v24;
        _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer.retryAccountZoneIDsNeedingToBeSaved: {accountID: %s, zoneID: %@}", v14, 0x16u);
        sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

        sub_10000607C(v16);
      }

      v18 = String._bridgeToObjectiveC()();
      [v9 debug_retryAccountZoneIDsNeedingToBeSavedWithZoneID:v24 accountID:v18];

      (*(a4 + 16))(a4, 0);
    }

    else
    {
      v21 = objc_opt_self();
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 internalErrorWithDebugDescription:v22];

      v24 = _convertErrorToNSError(_:)();
      (*(a4 + 16))(a4);

      v9 = v23;
    }
  }

  else
  {
    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveC()();
    v9 = [v19 internalErrorWithDebugDescription:v20];

    v24 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, v24);
  }
}

void sub_10017F964(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  _Block_copy(a2);
  if ([v5 supportsSyncingToCloudKit] && (v6 = objc_msgSend(v5, "cloudContext")) != 0)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10003FE60;
    *(v8 + 24) = v4;
    aBlock[4] = sub_10018997C;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008E7B00;
    v9 = _Block_copy(aBlock);

    [v7 cancelEverythingWithCompletionHandler:v9];
    _Block_release(v9);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    [v10 internalErrorWithDebugDescription:v11];

    swift_willThrow();
    v12 = _convertErrorToNSError(_:)();
    if (qword_100935AE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100939C00);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: Failed cancelCloudKitSync {error: %@}", v17, 0xCu);
      sub_1000050A4(v18, &unk_100938E70, &unk_100797230);
    }

    v20 = objc_opt_self();
    v21 = v14;
    v22 = _convertErrorToNSError(_:)();

    v23 = [v20 errorSanitizedForXPCFromError:v22];
    v24 = v23;
    v25 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v25);
  }
}

void sub_10017FD20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  if (![v3 supportsSyncingToCloudKit] || (v4 = objc_msgSend(v3, "cloudContext")) == 0)
  {
    isa = String._bridgeToObjectiveC()();
    (*(a2 + 16))(a2);
    goto LABEL_13;
  }

  v5 = v4;
  if (([v4 isCloudKitAccountAvailableRequiringActive:0] & 1) == 0 || (objc_msgSend(v5, "isCloudKitAccountAvailableRequiringActive:", 1) & 1) == 0)
  {
    isa = String._bridgeToObjectiveC()();
    (*(a2 + 16))(a2);

    goto LABEL_13;
  }

  v6 = [v5 status];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  v8 = [v5 readinessLoggingDescription];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13 = [v5 lastSyncMetrics];
  if (!v13)
  {
    v17 = String._bridgeToObjectiveC()();
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v13 dictionaryRepresentation];

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = String._bridgeToObjectiveC()();
  if (!v16)
  {
LABEL_11:
    v18.super.isa = 0;
    goto LABEL_12;
  }

  v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_12:
  isa = v18.super.isa;
  (*(a2 + 16))(a2, v17);

LABEL_13:
}

void sub_100180034(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100939C00);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDXPCDebugPerformer: persistenceStoreID for {accountID: %@}", v15, 0xCu);
    sub_1000050A4(v16, &unk_100938E70, &unk_100797230);
  }

  v18 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v19 = [v12 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v18 storeForAccountIdentifier:v20];

  if (v21 && (v22 = [v21 identifier]) != 0)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = String._bridgeToObjectiveC()();
    (*(a3 + 16))(a3, v24);

    v21 = v24;
  }

  else
  {
    (*(a3 + 16))(a3, 0);
  }
}

uint64_t sub_100180324(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v14 = 136446466;
    v15 = Bool.yesno.getter();
    v17 = a5;
    v18 = a2;
    v19 = a3;
    v20 = sub_10000668C(v15, v16, v32);

    *(v14 + 4) = v20;
    a3 = v19;
    a2 = v18;
    a5 = v17;
    *(v14 + 12) = 2114;
    *(v14 + 14) = v11;
    v21 = v30;
    *v30 = v11;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: lowLevelMarkForDeletion {shouldSetDirtyFlags: %{public}s, objectID: %{public}@}", v14, 0x16u);
    sub_1000050A4(v21, &unk_100938E70, &unk_100797230);

    sub_10000607C(v31);
  }

  v23 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v32[0] = 0xD000000000000023;
  v32[1] = 0x80000001007EE370;
  v32[3] = 0;
  v33[0] = 0;
  v32[2] = 0;
  *(v33 + 6) = 0;
  __chkstk_darwin(v24);
  v26[2] = v11;
  v27 = 0;
  v28 = a3 & 1;
  v29 = a2 & 1;
  sub_100014A64(v32, sub_10018AD64, v26);
  return (*(a5 + 16))(a5, 0);
}

uint64_t sub_1001805F0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = a3;
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v12 = 136446466;
    v15 = Bool.yesno.getter();
    v17 = sub_10000668C(v15, v16, v26);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v9;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDXPCDebugPerformer: lowLevelUnmarkForDeletion {shouldSetDirtyFlags: %{public}s, objectID: %{public}@}", v12, 0x16u);
    sub_1000050A4(v13, &unk_100938E70, &unk_100797230);

    sub_10000607C(v14);
    a3 = v25;
  }

  v19 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v26[0] = 0xD000000000000023;
  v26[1] = 0x80000001007EE370;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  __chkstk_darwin(v20);
  v22[2] = v9;
  v23 = 1;
  v24 = a2 & 1;
  sub_100014A64(v26, sub_1001896E8, v22);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_10018089C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = a3;
    v14 = swift_slowAlloc();
    v25[0] = v14;
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2082;
    v15 = v9;
    v16 = Bool.yesno.getter();
    v18 = sub_10000668C(v16, v17, v25);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDXPCDebugPerformer: markAndDeleteExtraneousAlarmsFromReminderID {reminderID: %{public}@, shouldSetDirtyFlags: %{public}s}", v12, 0x16u);
    sub_1000050A4(v13, &unk_100938E70, &unk_100797230);

    sub_10000607C(v14);
    a3 = v24;
  }

  v19 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v25[0] = 0xD00000000000002BLL;
  v25[1] = 0x80000001007EE290;
  v25[3] = 0;
  v26[0] = 0;
  v25[2] = 0;
  *(v26 + 6) = 0;
  __chkstk_darwin(v20);
  v22[2] = v9;
  v23 = a2 & 1;
  sub_100014A64(v25, sub_1001896C8, v22);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_100180B40(void *a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = a3;
    v16 = swift_slowAlloc();
    v27[0] = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    v18 = Bool.yesno.getter();
    v20 = sub_10000668C(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: setDueDateResolutionTokenNonceForAlarmID {alarmID: %{public}@, shouldSetDirtyFlags: %{public}s}", v14, 0x16u);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

    sub_10000607C(v16);
    a3 = v26;
  }

  v21 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v27[0] = 0xD000000000000028;
  v27[1] = 0x80000001007EE260;
  v27[3] = 0;
  v28[0] = 0;
  v27[2] = 0;
  *(v28 + 6) = 0;
  __chkstk_darwin(v22);
  v24[2] = v11;
  *&v24[3] = a5;
  v25 = a2 & 1;
  sub_100014A64(v27, sub_1001896A4, v24);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_100180DF4(void *a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = a3;
    v16 = swift_slowAlloc();
    v27[0] = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    v18 = Bool.yesno.getter();
    v20 = sub_10000668C(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: setDueDateResolutionTokenNonceForReminderID {reminderID: %{public}@, shouldSetDirtyFlags: %{public}s}", v14, 0x16u);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

    sub_10000607C(v16);
    a3 = v26;
  }

  v21 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v27[0] = 0xD00000000000002BLL;
  v27[1] = 0x80000001007EE1D0;
  v27[3] = 0;
  v28[0] = 0;
  v27[2] = 0;
  *(v28 + 6) = 0;
  __chkstk_darwin(v22);
  v24[2] = v11;
  *&v24[3] = a5;
  v25 = a2 & 1;
  sub_100014A64(v27, sub_100189680, v24);
  return (*(a4 + 16))(a4, 0);
}

uint64_t sub_1001810A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = [objc_allocWithZone(CNContactStore) init];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100796DA0;
  *(v4 + 32) = CNContactIdentifierKey;
  v5 = objc_opt_self();
  v6 = CNContactIdentifierKey;
  *(v4 + 40) = [v5 descriptorForRequiredKeysForStyle:0];
  *(v4 + 48) = CNContactEmailAddressesKey;
  *(v4 + 56) = CNContactPhoneNumbersKey;
  *(v4 + 64) = CNContactTypeKey;
  *(v4 + 72) = CNContainerIdentifierKey;
  *(v4 + 80) = CNContainerNameKey;
  v7 = CNContactLinkIdentifierKey;
  *(v4 + 88) = CNContainerTypeKey;
  *(v4 + 96) = v7;
  v34 = _swiftEmptyArrayStorage;
  v8 = objc_allocWithZone(CNContactFetchRequest);
  v9 = CNContactEmailAddressesKey;
  v10 = CNContactPhoneNumbersKey;
  v11 = CNContactTypeKey;
  v12 = CNContainerIdentifierKey;
  v13 = CNContainerNameKey;
  v14 = CNContainerTypeKey;
  v15 = v7;
  sub_1000F5104(&qword_100939E78, &qword_100797240);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v8 initWithKeysToFetch:isa];

  if (a2)
  {
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 predicateForContactsMatchingName:v19];

    [v17 setPredicate:v20];
  }

  v21 = [objc_allocWithZone(CNContactFormatter) init];
  [v21 setStyle:0];
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &v34;
  v23 = swift_allocObject();
  v23[2] = sub_100189650;
  v23[3] = v22;
  aBlock[4] = sub_100189658;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001680CC;
  aBlock[3] = &unk_1008E76F0;
  v24 = _Block_copy(aBlock);
  v25 = v21;

  aBlock[0] = 0;
  v26 = [v32 enumerateContactsWithFetchRequest:v17 error:aBlock usingBlock:v24];
  _Block_release(v24);
  v27 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v26 & 1) == 0)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v29 = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, v29);
}

void sub_1001814D8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v7 = objc_allocWithZone(REMStoreContainerToken);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithIdentifier:isa];

  (*(v3 + 8))(v6, v2);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: Created isolated store {token: %@}", v14, 0xCu);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);
  }

  (*(a1 + 16))(a1, v11, 0);
}

uint64_t sub_100181710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1001894B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E7510;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

uint64_t sub_100181A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v24 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v27);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v20 = v25;
  v19[4] = v24;
  v19[5] = a4;
  aBlock[4] = v20;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100189458(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v28 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v27);
}

void sub_100181D10(uint64_t a1, void *a2, uint64_t a3, void *aBlock)
{
  v4 = aBlock;
  _Block_copy(aBlock);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100939C00);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v55 = v11;
    *v10 = 136315138;
    v56 = a1;
    v57 = a2;

    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v12 = String.init<A>(describing:)();
    v14 = v4;
    v15 = a1;
    v16 = sub_10000668C(v12, v13, &v55);

    *(v10 + 4) = v16;
    a1 = v15;
    v4 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDXPCDebugPerformer: downloadContainer with accountID: %s", v10, 0xCu);
    sub_10000607C(v11);
  }

  v17 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v18 = [v17 cloudContext];
  if (v18)
  {
    v19 = v18;
    v20 = a2;
    if (a2)
    {
LABEL_7:

      v21 = String._bridgeToObjectiveC()();
      v22 = [v17 newBackgroundContextWithAuthor:v21];

      __chkstk_darwin(v23);
      NSManagedObjectContext.rem_performAndWait<A>(_:)();
      if (v56)
      {
        _Block_copy(v4);
        sub_10044FB10(a1, v20, v19, v4);
        _Block_release(v4);

        v31 = v19;
      }

      else
      {

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = a1;
          v47 = swift_slowAlloc();
          v56 = v47;
          *v45 = 136315138;
          *(v45 + 4) = sub_10000668C(v46, v20, &v56);
          _os_log_impl(&_mh_execute_header, v43, v44, "RDXPCDebugPerformer: downloadContainer accountIdentifier { %s } is not from CloudKit account", v45, 0xCu);
          sub_10000607C(v47);
          a1 = v46;
        }

        v48 = objc_opt_self();
        v56 = 0;
        v57 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        v56 = a1;
        v57 = v20;
        v49._countAndFlagsBits = 0xD00000000000001FLL;
        v49._object = 0x80000001007EE110;
        String.append(_:)(v49);
        v50 = String._bridgeToObjectiveC()();

        v51 = [v48 internalErrorWithDebugDescription:v50];

        v52 = v51;
        v53 = _convertErrorToNSError(_:)();
        (*(v4 + 2))(v4, 0, v53);

        v31 = v53;
      }

      goto LABEL_22;
    }

    v32 = [objc_opt_self() sharedInstance];
    v33 = [v32 unsafeUntilSystemReady_primaryICloudACAccount];

    if (v33)
    {
      v34 = [v33 identifier];

      if (v34)
      {
        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v35;

        goto LABEL_7;
      }
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "RDXPCDebugPerformer: downloadContainer accountIdentifier is nil -- can't download cloudKit container", v38, 2u);
    }

    v39 = objc_opt_self();
    v40 = String._bridgeToObjectiveC()();
    v41 = [v39 internalErrorWithDebugDescription:v40];

    v42 = v41;
    v31 = _convertErrorToNSError(_:)();
    (*(v4 + 2))(v4, 0, v31);
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "RDXPCDebugPerformer: CloudContext is nil -- can't sync to cloudKit", v26, 2u);
    }

    v27 = objc_opt_self();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 internalErrorWithDebugDescription:v28];

    v30 = v29;
    v31 = _convertErrorToNSError(_:)();
    (*(v4 + 2))(v4, 0, v31);
  }

LABEL_22:

  _Block_release(v4);
}

void sub_100182624(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  v9[2] = a5;
  if (a1 == 0x656D686361747441 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v43 = v9;
    sub_1000060C8(0, &unk_100939E30, off_1008D4160);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    _Block_copy(a5);
    v11 = [ObjCClassFromMetadata cdEntityName];
    if (!v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
    }

    v12 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v11];

    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100792CE0;
    strcpy((v13 + 32), "ckIdentifier");
    *(v13 + 45) = 0;
    *(v13 + 46) = -5120;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = 0xD000000000000011;
    *(v13 + 72) = 0x8000000100797120;
    *(v13 + 88) = &type metadata for String;
    *(v13 + 96) = 0x774F656E6F5A6B63;
    *(v13 + 104) = 0xEF656D614E72656ELL;
    *(v13 + 152) = &type metadata for String;
    *(v13 + 120) = &type metadata for String;
    *(v13 + 128) = 0xD000000000000012;
    *(v13 + 136) = 0x80000001007EDEE0;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setPropertiesToFetch:isa];

    v15 = Array._bridgeToObjectiveC()().super.isa;
    [v12 setRelationshipKeyPathsForPrefetching:v15];

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100791340;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = 0x696669746E656469;
    *(v16 + 40) = 0xEA00000000007265;
    v17 = UUID.uuidString.getter();
    *(v16 + 88) = &type metadata for String;
    *(v16 + 64) = v17;
    *(v16 + 72) = v18;
    v19 = String._bridgeToObjectiveC()();
    v20 = Array._bridgeToObjectiveC()().super.isa;

    v21 = [objc_opt_self() predicateWithFormat:v19 argumentArray:v20];

    [v12 setPredicate:v21];
    v22 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
    v50[0] = 0xD00000000000001BLL;
    v50[1] = 0x80000001007EDF00;
    v50[3] = 0;
    v51[0] = 0;
    v50[2] = 0;
    *(v51 + 6) = 0;
    __chkstk_darwin(v23);
    v42[2] = v12;
    sub_1003FEFEC(v50, sub_1001893F0, v42);
    v25 = v24;
    v26 = [v22 cloudContext];
    if (v26)
    {
      v27 = v26;
      v28 = String._bridgeToObjectiveC()();

      v29 = [v27 containerForAccountID:v28];

      v30 = v43;
      if (v29)
      {
        v31 = [v29 databaseWithDatabaseScope:{objc_msgSend(v25, "rd_ckDatabaseScope")}];
        v32 = [v25 recordID];
        v33 = swift_allocObject();
        *(v33 + 16) = sub_10003FE60;
        *(v33 + 24) = v30;
        v48 = sub_10018940C;
        v49 = v33;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10016AC08;
        v47 = &unk_1008E73A8;
        v34 = _Block_copy(&aBlock);

        [v31 deleteRecordWithID:v32 completionHandler:v34];
        _Block_release(v34);

        return;
      }
    }

    else
    {
    }

    v39 = objc_opt_self();
    v40 = String._bridgeToObjectiveC()();
    [v39 internalErrorWithDebugDescription:v40];

    swift_willThrow();
    swift_errorRetain();
    v41 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v41);
  }

  else
  {
    v35 = objc_opt_self();
    _Block_copy(a5);
    _StringGuts.grow(_:)(22);

    aBlock = 0xD000000000000014;
    v45 = 0x80000001007EDEC0;
    v36._countAndFlagsBits = a1;
    v36._object = a2;
    String.append(_:)(v36);
    v37 = String._bridgeToObjectiveC()();

    v38 = [v35 internalErrorWithDebugDescription:v37];

    v43 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v43);
  }
}

uint64_t sub_100182D34(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  _Block_copy(a6);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100939C00);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v27 = a4;
    v16 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000668C(a1, a2, v28);
    _os_log_impl(&_mh_execute_header, v14, v15, "RDXPCDebugPerformer: %s initiated", v17, 0xCu);
    sub_10000607C(v18);

    a3 = v16;
    a4 = v27;
  }

  v19 = *(a5 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v28[0] = a1;
  v28[1] = a2;
  v28[3] = 0;
  v29[0] = 0;
  v28[2] = 0;
  *(v29 + 6) = 0;
  __chkstk_darwin(v20);
  v22[2] = a4;
  v23 = a3 & 1;
  v24 = a5;
  v25 = sub_10018AD84;
  v26 = v12;
  sub_100014A64(v28, sub_10018AD4C, v22);
}

uint64_t sub_100182FB4(uint64_t a1, uint64_t a2)
{
  if (REMManualOrderingListType.description.getter() == a1 && v4 == a2)
  {

LABEL_8:

    v7 = 0;
    v8 = 1;
    return v8 & 0xFFFEFFFF | ((v7 & 1) << 16);
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_8;
  }

  if (REMManualOrderingListType.description.getter() == a1 && v10 == a2)
  {

LABEL_14:

    v7 = 0;
    v8 = 2;
    return v8 & 0xFFFEFFFF | ((v7 & 1) << 16);
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_14;
  }

  if (REMManualOrderingListType.description.getter() == a1 && v12 == a2)
  {

LABEL_19:

    v7 = 0;
    v8 = 3;
    return v8 & 0xFFFEFFFF | ((v7 & 1) << 16);
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_19;
  }

  if (REMManualOrderingListType.description.getter() == a1 && v14 == a2)
  {

LABEL_24:

    v7 = 0;
    v8 = 4;
    return v8 & 0xFFFEFFFF | ((v7 & 1) << 16);
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_24;
  }

  if (REMManualOrderingListType.description.getter() == a1 && v16 == a2)
  {

LABEL_29:

    v7 = 0;
    v8 = 5;
    return v8 & 0xFFFEFFFF | ((v7 & 1) << 16);
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_29;
  }

  if (REMManualOrderingListType.description.getter() == a1 && v18 == a2)
  {

    v7 = 0;
    v8 = 6;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v19 ^ 1;
    if (v19)
    {
      v8 = 6;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 0xFFFEFFFF | ((v7 & 1) << 16);
}

void sub_10018324C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v13 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _Block_copy(a6);

  v16 = sub_100182FB4(a1, a2);
  if ((v16 & 0x10000) != 0)
  {
    v26 = objc_opt_self();
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v33 = 0xD000000000000028;
    v34 = 0x80000001007EDD40;
    v27._countAndFlagsBits = a1;
    v27._object = a2;
    String.append(_:)(v27);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v26 internalErrorWithDebugDescription:v28];

    v30 = v29;
    v31 = _convertErrorToNSError(_:)();
    (a6)[2](a6, 0, v31);

    _Block_release(a6);
  }

  else
  {
    *v15 = v16;
    *(v15 + 1) = a3;
    *(v15 + 2) = a4;
    swift_storeEnumTagMultiPayload();
    v17 = swift_allocObject();
    *(v17 + 16) = a6;
    _Block_copy(a6);
    _Block_copy(a6);
    v18 = qword_100935AE8;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100939C00);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10000668C(0xD000000000000021, 0x80000001007EDE10, &v33);
      _os_log_impl(&_mh_execute_header, v20, v21, "RDXPCDebugPerformer: %s initiated", v22, 0xCu);
      sub_10000607C(v23);
    }

    v24 = *(a5 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
    v33 = 0xD000000000000021;
    v34 = 0x80000001007EDE10;
    v36 = 0;
    v37[0] = 0;
    v35 = 0;
    *(v37 + 6) = 0;
    __chkstk_darwin(v25);
    *&v32[-48] = v15;
    v32[-40] = 1;
    *&v32[-32] = a5;
    *&v32[-24] = sub_1001893A8;
    *&v32[-16] = v17;
    sub_100014A64(&v33, sub_1001893B0, &v32[-64]);

    _Block_release(a6);
    sub_100188054(v15, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
    _Block_release(a6);
  }
}

uint64_t sub_100183684(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100939C00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDXPCDebugPerformer: removeManualSortHint initiated", v10, 2u);
  }

  v11 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v15[0] = 0xD000000000000014;
  v15[1] = 0x80000001007EDDF0;
  v15[3] = 0;
  v16[0] = 0;
  v15[2] = 0;
  *(v16 + 6) = 0;
  __chkstk_darwin(v12);
  v14[2] = a1;
  v14[3] = sub_10003FE60;
  v14[4] = v6;
  sub_100014A64(v15, sub_100189388, v14);
}

uint64_t sub_100183890(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100939C00);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000668C(a1, a2, v20);
    _os_log_impl(&_mh_execute_header, v12, v13, "RDXPCDebugPerformer: %s initiated", v14, 0xCu);
    sub_10000607C(v15);
  }

  v16 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v20[0] = a1;
  v20[1] = a2;
  v20[3] = 0;
  v21[0] = 0;
  v20[2] = 0;
  *(v21 + 6) = 0;
  __chkstk_darwin(v17);
  v19[2] = a3;
  v19[3] = sub_10003FE60;
  v19[4] = v10;
  sub_100014A64(v20, sub_100189368, v19);
}

void sub_100183AEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  Request = type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest(0);
  v13 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a6);

  v16 = sub_100182FB4(a1, a2);
  if ((v16 & 0x10000) != 0)
  {
    v17 = objc_opt_self();
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v23 = 0xD000000000000028;
    v24 = 0x80000001007EDD40;
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v17 internalErrorWithDebugDescription:v19];

    v21 = v20;
    v22 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v22);

    _Block_release(a6);
  }

  else
  {
    *v15 = v16;
    *(v15 + 1) = a3;
    *(v15 + 2) = a4;
    swift_storeEnumTagMultiPayload();
    _Block_copy(a6);

    sub_100183890(0xD000000000000020, 0x80000001007EDD70, v15, a5, a6);
    _Block_release(a6);
    sub_100188054(v15, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
    _Block_release(a6);
  }
}

uint64_t sub_100183D28(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100939C00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDXPCDebugPerformer: updateManualSortHint initiated", v12, 2u);
  }

  v13 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v17[0] = 0xD000000000000014;
  v17[1] = 0x80000001007EDCF0;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(v14);
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = sub_10003FE60;
  v16[5] = v8;
  sub_100014A64(v17, sub_10018931C, v16);
}

uint64_t sub_100183F38(id a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = type metadata accessor for RDDummyAutoCategorizer();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR____TtC7remindd22RDDummyAutoCategorizer_categoryByTitle] = v1;
    v6.receiver = v3;
    v6.super_class = v2;

    a1 = objc_msgSendSuper2(&v6, "init");
    v4 = &off_1008F2488;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  v7[0] = a1;
  v7[3] = v2;
  v7[4] = v4;
  if (qword_100936160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100187E20(v7, &xmmword_100947460);
  swift_endAccess();
  return sub_1000050A4(v7, &qword_100939DF8, &qword_1007970A0);
}

uint64_t sub_100184040(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v12[0] = 0xD00000000000002DLL;
  v12[1] = 0x80000001007EDBD0;
  v12[3] = 0;
  v13[0] = 0;
  v12[2] = 0;
  *(v13 + 6) = 0;
  v9 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = sub_100187D98;
  v11[5] = v8;
  _Block_copy(a4);
  sub_100014A64(v12, sub_100187DC4, v11);
}

uint64_t sub_100184164(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v10[0] = 0xD000000000000025;
  v10[1] = 0x80000001007EDBA0;
  v10[3] = 0;
  v11[0] = 0;
  v10[2] = 0;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  *(v11 + 6) = 0;
  v9[2] = a1;
  v9[3] = sub_100187D98;
  v9[4] = v6;
  _Block_copy(a3);
  sub_100014A64(v10, sub_100187DA0, v9);
}

uint64_t sub_10018427C(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v10 = _swiftEmptyDictionarySingleton;
  v11[0] = 0xD000000000000021;
  v11[1] = 0x80000001007EDB70;
  v11[2] = 0;
  v11[3] = 0;
  v12[0] = 0;
  *(v12 + 6) = 0;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = &v10;
  v9[5] = sub_10003FE60;
  v9[6] = v6;
  _Block_copy(a3);
  sub_100014A64(v11, sub_100187D20, v9);
}

void sub_1001843B4(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_10004FAEC(a1);
  v4 = sub_1003EF6EC(KeyPath, v3);

  sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791320;
  *(v7 + 32) = 0x696669746E656469;
  *(v7 + 40) = 0xEA00000000007265;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = 0x656D614E656C6966;
  *(v7 + 72) = 0xE800000000000000;
  *(v7 + 120) = &type metadata for String;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 96) = 0x7553323135616873;
  *(v7 + 104) = 0xE90000000000006DLL;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setPropertiesToFetch:isa];

  v9 = Array._bridgeToObjectiveC()().super.isa;
  [v5 setRelationshipKeyPathsForPrefetching:v9];

  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (v20)
  {
  }

  else
  {
    v11 = sub_100270BE8(v10);

    sub_10027218C(v11);

    v12 = sub_1005BDBEC(a1, 0x80u);
    type metadata accessor for REMCDSavedAttachment();
    v13 = [objc_allocWithZone(NSFetchRequest) init];
    v14 = [swift_getObjCClassFromMetadata() entity];
    [v13 setEntity:v14];

    [v13 setAffectedStores:0];
    [v13 setPredicate:v12];

    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100791320;
    *(v15 + 32) = 0x696669746E656469;
    *(v15 + 40) = 0xEA00000000007265;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = 0x656D614E656C6966;
    *(v15 + 72) = 0xE800000000000000;
    *(v15 + 120) = &type metadata for String;
    *(v15 + 88) = &type metadata for String;
    *(v15 + 96) = 0x7553323135616873;
    *(v15 + 104) = 0xE90000000000006DLL;
    v16 = Array._bridgeToObjectiveC()().super.isa;

    [v13 setPropertiesToFetch:v16];

    v17 = Array._bridgeToObjectiveC()().super.isa;
    [v13 setRelationshipKeyPathsForPrefetching:v17];

    v18 = NSManagedObjectContext.fetch<A>(_:)();
    v19 = sub_100270DC8(v18);

    sub_10027218C(v19);
  }
}

void sub_1001847EC(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v30 = _swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = sub_100392340(KeyPath, v6);

  sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v10];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v13 = swift_allocObject();
  v29 = xmmword_100791300;
  *(v13 + 16) = xmmword_100791300;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x7553323135616873;
  *(v13 + 40) = 0xE90000000000006DLL;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setPropertiesToFetch:isa];

  v15 = Array._bridgeToObjectiveC()().super.isa;
  [v11 setRelationshipKeyPathsForPrefetching:v15];

  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v17 = sub_100270BE8(v16);

    sub_10027218C(v17);

    v18 = objc_opt_self();
    v19 = UUID._bridgeToObjectiveC()().super.isa;
    v20 = [v18 objectIDWithUUID:v19];

    v21 = v20;
    v22 = sub_1005BDBEC(v20, 0x60u);
    type metadata accessor for REMCDSavedAttachment();
    v11 = [objc_allocWithZone(NSFetchRequest) init];
    v23 = [swift_getObjCClassFromMetadata() entity];
    [v11 setEntity:v23];

    [v11 setAffectedStores:0];
    [v11 setPredicate:v22];

    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 32) = 0x7553323135616873;
    *(v24 + 40) = 0xE90000000000006DLL;
    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setPropertiesToFetch:v25];

    v26 = Array._bridgeToObjectiveC()().super.isa;
    [v11 setRelationshipKeyPathsForPrefetching:v26];

    v27 = NSManagedObjectContext.fetch<A>(_:)();
    v28 = sub_100270DC8(v27);

    sub_10027218C(v28);
  }
}

void sub_100184CC8(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagLabelsWithoutHashtag initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v17[0] = 0xD000000000000023;
  v17[1] = 0x80000001007EDB40;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(inited);
  v15[2] = v12;
  v16 = a1 & 1;
  v13 = v10;
  sub_1003FF564(v17, sub_100187D00, v15);
  sub_1000060C8(0, &unk_100939DB8, REMHashtagLabel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);

  swift_setDeallocating();
}

void sub_100184F58(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagLabelsWithConcealedHashtags initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v17[0] = 0xD00000000000002ALL;
  v17[1] = 0x80000001007EDB10;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(inited);
  v15[2] = v12;
  v16 = a1 & 1;
  v13 = v10;
  sub_1003FF564(v17, sub_100187CE0, v15);
  sub_1000060C8(0, &unk_100939DB8, REMHashtagLabel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);

  swift_setDeallocating();
}

void sub_1001851E8(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagsWithoutHashtagLabel initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v17[0] = 0xD000000000000023;
  v17[1] = 0x80000001007EDAE0;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(inited);
  v15[2] = v12;
  v16 = a1 & 1;
  v13 = v10;
  sub_1003FFAC0(v17, sub_100187CC0, v15);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);

  swift_setDeallocating();
}

void sub_10018544C(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagLabelsWithMismatchedHashtags initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v17[0] = 0xD000000000000025;
  v17[1] = 0x80000001007EDAB0;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(inited);
  v15[2] = v12;
  v16 = a1 & 1;
  v13 = v10;
  sub_1003FFAC0(v17, sub_100187CA0, v15);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);

  swift_setDeallocating();
}

void sub_1001856B0(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateHashtagsWithSharedToMeReminderCKIdentifierAndMismatchedReminderCKIdentifier initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v17[0] = 0xD000000000000052;
  v17[1] = 0x80000001007EDA50;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(inited);
  v15[2] = v12;
  v16 = a1 & 1;
  v13 = v10;
  sub_1003FFAC0(v17, sub_100187C80, v15);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);

  swift_setDeallocating();
}

void sub_100185914(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100939C00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDXPCDebugPerformer: validateSharedToMeReminderPlaceholders initiated", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  type metadata accessor for RDHashtagLabelRepairer();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  v17[0] = 0xD000000000000025;
  v17[1] = 0x80000001007EDA20;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(inited);
  v15[2] = v12;
  v16 = a1 & 1;
  v13 = v10;
  sub_1003FFAC0(v17, sub_100187C60, v15);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);

  swift_setDeallocating();
}

uint64_t sub_100185B78(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100939C00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDXPCDebugPerformer: fetchAccountListOrderedIdentifiers initiated", v10, 2u);
  }

  v11 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v15[0] = 0xD000000000000022;
  v15[1] = 0x80000001007ED9F0;
  v15[3] = 0;
  v16[0] = 0;
  v15[2] = 0;
  *(v16 + 6) = 0;
  __chkstk_darwin(v12);
  v14[2] = a1;
  v14[3] = sub_100187C38;
  v14[4] = v6;
  sub_100014A64(v15, sub_100187C40, v14);
}

uint64_t sub_100185DA4(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100939C00);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDXPCDebugPerformer: fetchAllSharedEntitySyncActivities initiated", v8, 2u);
  }

  v9 = *(a1 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v13[0] = 0xD000000000000022;
  v13[1] = 0x80000001007ED9C0;
  v13[3] = 0;
  v14[0] = 0;
  v13[2] = 0;
  *(v14 + 6) = 0;
  __chkstk_darwin(v10);
  v12[2] = a1;
  v12[3] = sub_100187BEC;
  v12[4] = v4;
  sub_100014A64(v13, sub_100187C18, v12);
}

id sub_100185FD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v41 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  v14 = *(*(Option - 8) + 64);
  __chkstk_darwin(Option);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100187FEC(a1, v16, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v9 + 32))(v12, v16, v8);
    KeyPath = swift_getKeyPath();
    (*(v9 + 16))(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v25 = sub_100392364(KeyPath, v7);

    type metadata accessor for REMCKSharedEntitySyncActivity();
    v26 = [objc_allocWithZone(NSFetchRequest) init];
    v27 = [swift_getObjCClassFromMetadata() entity];
    [v26 setEntity:v27];

    [v26 setAffectedStores:0];
    [v26 setPredicate:v25];

    v28 = NSManagedObjectContext.fetch<A>(_:)();
    if (v1)
    {
LABEL_5:
      (*(v9 + 8))(v12, v8);

      return v2;
    }

    v2 = v28;
    if (v28 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_5;
      }
    }

    else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_5;
    }

    v31 = objc_opt_self();
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(88);
    v32._object = 0x80000001007ED8B0;
    v32._countAndFlagsBits = 0xD000000000000047;
    String.append(_:)(v32);
    sub_100189458(&qword_10093F2A0, &type metadata accessor for UUID);
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x6C6C6F6620736120;
    v34._object = 0xED0000203A73776FLL;
    String.append(_:)(v34);
    v35 = Array.description.getter();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39 = String._bridgeToObjectiveC()();

    v2 = [v31 internalErrorWithDebugDescription:v39];

    swift_willThrow();
    (*(v9 + 8))(v12, v8);
    return v2;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = *v16;
    v19 = v16[1];
    v20 = swift_getKeyPath();
    v21 = sub_100392388(v20, v18, v19);

    type metadata accessor for REMCKSharedEntitySyncActivity();
    v22 = [objc_allocWithZone(NSFetchRequest) init];
    v23 = [swift_getObjCClassFromMetadata() entity];
    [v22 setEntity:v23];

    [v22 setAffectedStores:0];
    [v22 setPredicate:v21];

    v2 = NSManagedObjectContext.fetch<A>(_:)();
  }

  else
  {
    type metadata accessor for REMCKSharedEntitySyncActivity();
    v29 = [objc_allocWithZone(NSFetchRequest) init];
    v30 = [swift_getObjCClassFromMetadata() entity];
    [v29 setEntity:v30];

    [v29 setAffectedStores:0];
    [v29 setPredicate:0];
    v2 = NSManagedObjectContext.fetch<A>(_:)();
  }

  return v2;
}

void *sub_100186608(unint64_t a1)
{
  v12 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v11 = v5;
      sub_100172190(&v11, &v10);

      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v12;
      }

      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_10018676C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v44 = v42 - v8;
  v9 = type metadata accessor for CocoaError.Code();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939C00);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDXPCDebugPerformer: addSharedEntitySyncActivity initiated", v17, 2u);
  }

  v18 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v19 = [a1 accountIdentifier];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = [v18 storeForAccountIdentifier:v19];

  if (v20)
  {
    v45 = 0xD00000000000001BLL;
    v46 = 0x80000001007ED9A0;
    v48 = 0;
    memset(v49, 0, 14);
    v47 = 0;
    __chkstk_darwin(v21);
    v42[-4] = v20;
    v42[-3] = a1;
    v42[-2] = sub_10003FE60;
    v42[-1] = v13;
    sub_100014A64(&v45, sub_100187BCC, &v42[-6]);
  }

  else
  {
    v42[0] = v9;
    v42[1] = v13;
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136315138;
      v27 = [v22 accountIdentifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_10000668C(v28, v30, &v45);
      v32 = &selRef_attachmentRepresentationAndReturnError_;

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Persistent store not found for accountIdentifier %s", v25, 0xCu);
      sub_10000607C(v26);
    }

    else
    {

      v32 = &selRef_attachmentRepresentationAndReturnError_;
    }

    static CocoaError.Code.persistentStoreUnsupportedRequestType.getter();
    sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    v45 = 0xD00000000000001ALL;
    v46 = 0x80000001007ED900;
    AnyHashable.init<A>(_:)();
    v34 = [v22 v32[501]];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v35;
    *(inited + 80) = v37;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v38;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0xD000000000000073;
    *(inited + 152) = 0x80000001007ED920;
    sub_10038ED74(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100946590, &qword_100796FF0);
    swift_arrayDestroy();
    v39 = type metadata accessor for URL();
    v40 = v44;
    (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
    static CocoaError.error(_:userInfo:url:)();

    sub_1000050A4(v40, &unk_1009441F0, &qword_100795760);
    (*(v43 + 8))(v12, v42[0]);
    v41 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v41);
  }
}

uint64_t sub_100186DD8(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = 0xD000000000000021;
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  v8 = *(*(Option - 8) + 64);
  __chkstk_darwin(Option);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  sub_100187FEC(a1, v10, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = _Block_copy(a3);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v15 = "thUUIDForChangeTracking";
      goto LABEL_7;
    }

    v15 = " object with identifier ";
    v6 = 0xD000000000000030;
  }

  else
  {
    v6 = 0xD000000000000037;
    v15 = "WithCKIdentifier";
  }

  v14 = sub_100188054(v10, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
LABEL_7:
  v18[0] = v6;
  v18[1] = v15 | 0x8000000000000000;
  v18[3] = 0;
  v19[0] = 0;
  v18[2] = 0;
  *(v19 + 6) = 0;
  __chkstk_darwin(v14);
  *&v17[-32] = a2;
  *&v17[-24] = a1;
  *&v17[-16] = sub_10003FE60;
  *&v17[-8] = v11;
  sub_100014A64(v18, sub_100187B94, &v17[-48]);
}

void sub_100187018(uint64_t a1, const void *a2)
{
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  v5 = *(*(Option - 8) + 64);
  __chkstk_darwin(Option);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a2);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100939C00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDXPCDebugPerformer: removeSharedEntitySyncActivityWithActivities initiated", v11, 2u);
  }

  swift_storeEnumTagMultiPayload();
  _Block_copy(a2);
  sub_100186DD8(v7, a1, a2);
  _Block_release(a2);
  sub_100188054(v7, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  _Block_release(a2);
}

void sub_1001871B4(uint64_t a1, uint64_t a2, const void *a3)
{
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  v7 = *(*(Option - 8) + 64);
  __chkstk_darwin(Option);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100939C00);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDXPCDebugPerformer: removeSharedEntitySyncActivityWithUUID initiated", v13, 2u);
  }

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 16))(v9, a1, v14);
  swift_storeEnumTagMultiPayload();
  _Block_copy(a3);
  sub_100186DD8(v9, a2, a3);
  _Block_release(a3);
  sub_100188054(v9, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  _Block_release(a3);
}

void sub_100187390(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  Option = type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption(0);
  v9 = *(*(Option - 8) + 64);
  __chkstk_darwin(Option);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100939C00);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDXPCDebugPerformer: removeSharedEntitySyncActivities initiated", v15, 2u);
  }

  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  _Block_copy(a4);

  sub_100186DD8(v11, a3, a4);
  _Block_release(a4);
  sub_100188054(v11, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  _Block_release(a4);
}

uint64_t sub_100187548(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100939C00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDXPCDebugPerformer: updateMinimumSupportedVersion initiated", v12, 2u);
  }

  v13 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v17[0] = 0xD00000000000001DLL;
  v17[1] = 0x80000001007ED7A0;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(v14);
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = sub_10003FE58;
  v16[5] = v8;
  sub_100014A64(v17, sub_100187B54, v16);
}

void sub_100187758(uint64_t a1)
{
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100939C00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDXPCDebugPerformer: updateRemCurrentRuntimeVersionDebuggingOverride initiated", v5, 2u);
  }

  v6 = [objc_opt_self() daemonUserDefaults];
  v7 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  [v6 setRemCurrentRuntimeVersionDebuggingOverride:v7];
}

uint64_t sub_1001878AC(char a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_100935AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100939C00);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDXPCDebugPerformer: fetchAllDueDateDeltaAlerts initiated", v10, 2u);
  }

  v11 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController);
  v17[0] = 0xD00000000000001ALL;
  v17[1] = 0x80000001007ED6F0;
  v17[3] = 0;
  v18[0] = 0;
  v17[2] = 0;
  *(v18 + 6) = 0;
  __chkstk_darwin(v12);
  v14[16] = a1 & 1;
  v15 = sub_100187AF0;
  v16 = v6;
  sub_100014A64(v17, sub_100187B1C, v14);
}

unint64_t sub_100187D44()
{
  result = qword_100939DD0;
  if (!qword_100939DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939DD0);
  }

  return result;
}

uint64_t sub_100187DE4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = a1;
    a1 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_100187E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939DF8, &qword_1007970A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100187E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FCBFC;

  return sub_100173DAC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100187F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100187FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100188054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001880D0(char *a1, void *a2)
{
  v116 = type metadata accessor for UUID();
  v4 = *(v116 - 8);
  v5 = v4[8];
  __chkstk_darwin(v116);
  v110 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v113 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v103 - v11;
  __chkstk_darwin(v13);
  v15 = &v103 - v14;
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  v112 = type metadata accessor for Date();
  v19 = *(v112 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v112);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1001F67C8(_swiftEmptyArrayStorage);
  v23 = [a1 hintData];
  v117 = a1;
  v111 = v4;
  v114 = v12;
  if (v23)
  {
    v108 = a2;
    v109 = v15;
    v24 = v23;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v119[0] = 0;
    v30 = [v28 JSONObjectWithData:isa options:0 error:v119];

    v31 = *&v119[0];
    if (!v30)
    {
      v75 = v31;

      v76 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10001BBA0(v25, v27);
      return v76;
    }

    _bridgeAnyObjectToAny(_:)();
    sub_10001BBA0(v25, v27);
    swift_unknownObjectRelease();
    sub_100005EE0(v120, v119);
    sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    if (swift_dynamicCast())
    {

      v115 = v118;
    }

    a1 = v117;
    v4 = v111;
    a2 = v108;
    v15 = v109;
  }

  [a1 lastAccessedSinceReferenceDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  v32 = Date._bridgeToObjectiveC()().super.isa;
  (*(v19 + 8))(v22, v112);
  v33 = [a2 stringFromDate:v32];

  v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v34;

  v35 = [a1 identifier];
  if (v35)
  {
    v36 = v35;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v116;
  v106 = v4[7];
  v106(v15, v37, 1, v116);
  sub_100031B58(v15, v18, &unk_100939D90, "8\n\r");
  v39 = v4;
  v105 = v4[6];
  if (v105(v18, 1, v38))
  {
    sub_1000050A4(v18, &unk_100939D90, "8\n\r");
    v40 = 0;
    v41 = 0xE000000000000000;
  }

  else
  {
    v42 = v4[2];
    v43 = v110;
    v42(v110, v18, v38);
    sub_1000050A4(v18, &unk_100939D90, "8\n\r");
    v44 = v38;
    v40 = UUID.uuidString.getter();
    v41 = v45;
    (v39[1])(v43, v44);
  }

  [a1 listTypeRawValue];
  v46 = REMManualOrderingListType.init(intValue:)();
  v47 = v113;
  if ((v46 & 0x10000) != 0)
  {
    v107 = 0xE000000000000000;
    v108 = 0;
  }

  else
  {
    v48 = REMManualOrderingListType.description.getter();
    v107 = v49;
    v108 = v48;
  }

  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v40;
  v104 = inited + 32;
  *(inited + 40) = v41;
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_100796DB0;
  *(v51 + 32) = 1734431845;
  v103 = v51 + 32;
  *(v51 + 40) = 0xE400000000000000;
  v52 = v117;
  v53 = [v117 eTag];
  if (v53)
  {
    v54 = v53;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = v114;
  v57 = v116;
  v106(v47, v55, 1, v116);
  sub_100031B58(v47, v56, &unk_100939D90, "8\n\r");
  if (v105(v56, 1, v57))
  {
    sub_1000050A4(v56, &unk_100939D90, "8\n\r");
    v58 = (v51 + 48);
    *(v51 + 72) = &type metadata for String;
LABEL_20:
    *v58 = 0;
    v59 = 0xE000000000000000;
    goto LABEL_23;
  }

  v113 = inited;
  v60 = v110;
  v61 = v111;
  (v111[2])(v110, v56, v57);
  sub_1000050A4(v56, &unk_100939D90, "8\n\r");
  v62 = v57;
  v63 = UUID.uuidString.getter();
  v59 = v64;
  (v61[1])(v60, v62);
  v58 = (v51 + 48);
  *(v51 + 72) = &type metadata for String;
  if (!v59)
  {
    inited = v113;
    goto LABEL_20;
  }

  *v58 = v63;
  inited = v113;
LABEL_23:
  *(v51 + 56) = v59;
  *(v51 + 80) = 0x61746144746E6968;
  *(v51 + 88) = 0xE800000000000000;
  v65 = sub_1000F5104(&unk_100938CB0, &unk_100796A70);
  *(v51 + 96) = v115;
  v116 = v65;
  *(v51 + 120) = v65;
  strcpy((v51 + 128), "lastAccessed");
  *(v51 + 141) = 0;
  *(v51 + 142) = -5120;
  v66 = v109;
  *(v51 + 144) = v112;
  *(v51 + 152) = v66;
  *(v51 + 168) = &type metadata for String;
  *(v51 + 176) = 0x657079547473696CLL;
  v67 = v107;
  v68 = v108;
  *(v51 + 184) = 0xE800000000000000;
  *(v51 + 192) = v68;
  *(v51 + 200) = v67;
  *(v51 + 216) = &type metadata for String;
  *(v51 + 224) = 0xD000000000000010;
  *(v51 + 232) = 0x8000000100797160;
  *(v51 + 240) = [v52 listTypeRawValue];
  *(v51 + 264) = &type metadata for Int16;
  *(v51 + 272) = 0x44497473696CLL;
  *(v51 + 280) = 0xE600000000000000;
  v69 = [v52 listID];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = (v51 + 288);
    *(v51 + 312) = &type metadata for String;
    if (v73)
    {
      *v74 = v71;
      v52 = v117;
      goto LABEL_30;
    }

    v52 = v117;
  }

  else
  {
    v74 = (v51 + 288);
    *(v51 + 312) = &type metadata for String;
  }

  *v74 = 0;
  v73 = 0xE000000000000000;
LABEL_30:
  *(v51 + 296) = v73;
  *(v51 + 320) = 0xD000000000000014;
  *(v51 + 328) = 0x80000001007EDE40;
  *(v51 + 336) = [v52 serializationVersion];
  *(v51 + 360) = &type metadata for Int16;
  *(v51 + 368) = 0xD000000000000026;
  *(v51 + 376) = 0x80000001007EDE60;
  v77 = [v52 concatenatedContainerIDsWithLocalContainerIDPrefix];
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    *&v120[0] = v79;
    *(&v120[0] + 1) = v81;
    v52 = v117;
    v82 = *&v117[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix + 8];
    *&v119[0] = *&v117[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix];
    *(&v119[0] + 1) = v82;
    sub_10013BCF4();
    v83 = StringProtocol.components<A>(separatedBy:)();

    v84 = sub_1001A5660(v83);

    v85 = v84[2];
    if (v85)
    {
LABEL_32:
      v86 = sub_1003689CC(v85, 0);
      v87 = sub_1002791DC(v120, v86 + 4, v85, v84);
      sub_10001B860();
      if (v87 != v85)
      {
        __break(1u);
      }

      v52 = v117;
      goto LABEL_36;
    }
  }

  else
  {
    v84 = _swiftEmptySetSingleton;
    v85 = _swiftEmptySetSingleton[2];
    if (v85)
    {
      goto LABEL_32;
    }
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_36:
  v88 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  *(v51 + 384) = v86;
  *(v51 + 408) = v88;
  *(v51 + 416) = 0xD000000000000022;
  *(v51 + 424) = 0x80000001007EDE90;
  v89 = [v52 concatenatedElementIDsWithLocalElementIDPrefix];
  if (!v89)
  {
    goto LABEL_40;
  }

  v90 = v89;
  v91 = v52;
  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;

  *&v120[0] = v92;
  *(&v120[0] + 1) = v94;
  v95 = *&v91[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix + 8];
  *&v119[0] = *&v91[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix];
  *(&v119[0] + 1) = v95;
  sub_10013BCF4();
  v96 = StringProtocol.components<A>(separatedBy:)();

  v97 = sub_1001A5660(v96);

  v98 = v97[2];
  if (v98)
  {
    while (1)
    {
      v99 = sub_1003689CC(v98, 0);
      v100 = sub_1002791DC(v120, v99 + 4, v98, v97);
      sub_10001B860();
      if (v100 == v98)
      {
        break;
      }

      __break(1u);
LABEL_40:
      v97 = _swiftEmptySetSingleton;
      v98 = _swiftEmptySetSingleton[2];
      if (!v98)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
LABEL_41:

    v99 = _swiftEmptyArrayStorage;
  }

  *(v51 + 456) = v88;
  *(v51 + 432) = v99;
  v101 = sub_1001F67C8(v51);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  *(inited + 72) = v116;
  *(inited + 48) = v101;
  v76 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000050A4(v104, &unk_100939260, &unk_100797220);
  return v76;
}

unint64_t sub_100188C4C(void *a1, void *a2)
{
  v47 = a2;
  v3 = type metadata accessor for Date();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v41 - v18;
  v20 = [a1 identifier];
  if (v20)
  {
    v21 = v20;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 56))(v15, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v7);
  }

  sub_100031B58(v15, v19, &unk_100939D90, "8\n\r");
  if ((*(v8 + 48))(v19, 1, v7))
  {
    sub_1000050A4(v19, &unk_100939D90, "8\n\r");
    v22 = 0;
    v43 = 0xE000000000000000;
  }

  else
  {
    (*(v8 + 16))(v11, v19, v7);
    sub_1000050A4(v19, &unk_100939D90, "8\n\r");
    v22 = UUID.uuidString.getter();
    v43 = v23;
    (*(v8 + 8))(v11, v7);
  }

  v24 = [a1 listID];
  if (v24)
  {
    v25 = v24;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v26;
  }

  else
  {
    v44 = 0;
    v42 = 0xE000000000000000;
  }

  [a1 listTypeRawValue];
  if ((REMManualOrderingListType.init(intValue:)() & 0x10000) != 0)
  {
    v41 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v41 = REMManualOrderingListType.description.getter();
    v28 = v27;
  }

  [a1 lastAccessedSinceReferenceDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v45 + 8))(v6, v46);
  v30 = [v47 stringFromDate:isa];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v22;
  *(inited + 40) = v43;
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_100792CE0;
  *(v35 + 32) = 0xD000000000000010;
  *(v35 + 40) = 0x8000000100797160;
  *(v35 + 48) = [a1 listTypeRawValue];
  *(v35 + 72) = &type metadata for Int16;
  *(v35 + 80) = 0x657079547473696CLL;
  v36 = v41;
  *(v35 + 88) = 0xE800000000000000;
  *(v35 + 96) = v36;
  *(v35 + 104) = v28;
  *(v35 + 120) = &type metadata for String;
  *(v35 + 128) = 0x44497473696CLL;
  v37 = v44;
  *(v35 + 136) = 0xE600000000000000;
  *(v35 + 144) = v37;
  *(v35 + 152) = v42;
  *(v35 + 168) = &type metadata for String;
  strcpy((v35 + 176), "lastAccessed");
  *(v35 + 216) = &type metadata for String;
  *(v35 + 189) = 0;
  *(v35 + 190) = -5120;
  *(v35 + 192) = v31;
  *(v35 + 200) = v33;
  v38 = sub_1001F67C8(v35);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  *(inited + 72) = sub_1000F5104(&unk_100938CB0, &unk_100796A70);
  *(inited + 48) = v38;
  v39 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
  return v39;
}

uint64_t sub_1001891AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001891FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FDA74;

  return sub_100173BEC(a1, v4, v5, v6, v7, v9, v8);
}

char *sub_100189414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100451010(v1[2], v1[3], v1[4]);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100189458(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001894BC()
{
  v1 = *(*(type metadata accessor for URL() - 8) + 80);
  v2 = *(v0 + 16);

  sub_100168EA0(v2);
}

void sub_100189520()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  sub_100168F10(v5, v6, (v0 + v2), v8, v9);
}

void sub_1001895C0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100169744(v3, v4, v0 + v2, v5);
}

uint64_t sub_100189658()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100189748()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001897A8(uint64_t (*a1)(uint64_t))
{
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(v1[2] + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager);
  v7 = a1(v3);
  return v5(v7);
}

void sub_1001897F8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  sub_10016627C(v4, v5, v6, v0 + v2, v7, v9);
}

uint64_t sub_10018989C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[2] + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager);
  sub_100507BB0(v1, v2);
  return v3();
}

void sub_1001898E8()
{
  v1 = *(v0 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_100189954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10018997C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1001899B0(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100163A2C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_100189A7C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v4);
  v8 = v0 + v3;
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = (v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  sub_1001642D0(v0 + v2, v11, v12, v7, v9, v10, v14, v15);
}

uint64_t sub_100189B40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100189BA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100189C20()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100161C80(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_100189D2C(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100162FB8(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_100189E14()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_10016356C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t *sub_100189E5C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11 = type metadata accessor for Date();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_9;
    case 1:
      *a1 = *a2;
      v10 = a2[2];
      a1[1] = a2[1];
      a1[2] = v10;

      goto LABEL_9;
    case 0:
      v8 = type metadata accessor for UUID();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v13 = *(v5 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_100189FE8(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v3 = type metadata accessor for Date();
LABEL_9:
    v5 = *(*(v3 - 8) + 8);

    return v5(a1, v3);
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    v3 = type metadata accessor for UUID();
    goto LABEL_9;
  }

  v4 = *(a1 + 16);
}

void *sub_10018A09C(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9 = type metadata accessor for Date();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      goto LABEL_7;
    case 1:
      *a1 = *a2;
      v8 = a2[2];
      a1[1] = a2[1];
      a1[2] = v8;

      goto LABEL_7;
    case 0:
      v7 = type metadata accessor for UUID();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_10018A1E8(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100188054(a1, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8 = type metadata accessor for Date();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_8;
    case 1:
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];

      goto LABEL_8;
    case 0:
      v7 = type metadata accessor for UUID();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_10018A360(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_10018A480(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100188054(a1, type metadata accessor for RDXPCDebugPerformer.ManualSortHintFetchRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_10018A5C4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_10018A6A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_10018A7D0(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v5 = *(a1 + 8);
  }

  else if (!result)
  {
    v3 = type metadata accessor for UUID();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *sub_10018A870(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;

    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_10018A960(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100188054(a1, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    a1[1] = a2[1];

    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_10018AA7C(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_10018AB48(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100188054(a1, type metadata accessor for RDXPCDebugPerformer.SharedEntitySyncActivityFetchOption);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_10018AC38()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_10018AE04(void *a1)
{
  v24 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v27 = *(v24 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v26 = *(Subtasks - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(Subtasks);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  sub_10018B15C(v1[3], a1);
  if (!v2)
  {
    v17 = v16;
    v18 = [v1[5] shouldSaveCompleted];
    v19 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
    if (!v18)
    {
      v19 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
    }

    (*(v25 + 104))(v14, *v19, v11);
    (*(v26 + 104))(v10, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), Subtasks);
    v20 = v24;
    (*(v27 + 104))(v6, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v24);
    v21 = sub_1005B6BD0(v17, v15, v14, v10, v6);
    v23 = 0;
    v1 = v21;

    (*(v27 + 8))(v6, v20);
    (*(v26 + 8))(v10, Subtasks);
    (*(v25 + 8))(v14, v11);
  }

  return v1;
}

void sub_10018B15C(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = [objc_allocWithZone(REMSmartListsDataViewInvocation_fetchSmartList) initWithSmartListType:REMSmartListTypeCustom objectID:a1 createIfNeeded:0];
  v8 = sub_100515FC4(a2);

  if (!v3)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v27 = a1;
      v25 = v8;
      isa = [v10 smartListStorages];
      if (!isa)
      {
        sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v26 = objc_opt_self();
      v12 = [v10 accountStorages];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      sub_10018BA8C();
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = Dictionary._bridgeToObjectiveC()().super.isa;

      v14 = [v10 parentListStorages];
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = Dictionary._bridgeToObjectiveC()().super.isa;

      v16 = [v26 smartListsFromSmartListStorages:isa accountStorages:v13 parentListStorages:v15 store:*(v4 + 48)];

      sub_1000060C8(0, &qword_10093A230, REMSmartList_ptr);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v17 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
          v23 = [v21 objectID];
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {

            REMSmartList.codable.getter();
            return;
          }

          ++v19;
          if (v22 == i)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

LABEL_21:

      [objc_opt_self() noSuchObjectErrorWithObjectID:v27];
      swift_willThrow();
    }

    else
    {
      [objc_opt_self() noSuchObjectErrorWithObjectID:a1];
      swift_willThrow();
    }
  }
}

uint64_t sub_10018B5A0()
{
  v2 = *(v0 + 24);
  v3 = qword_100935D60;
  v15 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for REMCDSmartListSection();
  v5 = sub_10024C42C();
  sub_10024C888();
  v6 = sub_10024B964(v2, 1u);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  sub_10003450C(v5);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setPropertiesToFetch:isa];

  v10 = Array._bridgeToObjectiveC()().super.isa;
  [v7 setRelationshipKeyPathsForPrefetching:v10];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v11 = Array._bridgeToObjectiveC()().super.isa;
  [v7 setSortDescriptors:v11];

  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v4;
  }

  v4 = v12;

  if (!(v4 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for REMCDBaseSection();

    return v4;
  }

  type metadata accessor for REMCDBaseSection();

  v14 = _bridgeCocoaArray<A>(_:)();

  swift_bridgeObjectRelease_n();
  return v14;
}

void sub_10018B858(void *a1)
{
  sub_10018B15C(*(v1 + 24), a1);
  if (!v2)
  {
    v5 = v4;
    v6 = [v4 smartListType];
    v7 = [v5 objectID];
    if (qword_1009367E0 != -1)
    {
      swift_once();
    }

    v8 = sub_100717244(v6, v7, a1, qword_1009752F0);

    v9 = [v8 membershipsOfRemindersInSectionsAsData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
      static REMJSONRepresentable.fromJSONData(_:)();

      sub_10001BBA0(v11, v13);
    }

    else
    {
    }
  }
}

uint64_t sub_10018BA10()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10018BA8C()
{
  result = qword_1009391F0;
  if (!qword_1009391F0)
  {
    sub_1000060C8(255, &qword_1009391E0, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009391F0);
  }

  return result;
}

id REMCDAccountV2023MinorEMigratingToZREMCDBASELIST.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id REMCDAccountListData.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDAccountListData();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDAccountListData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDAccountListData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018BC7C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A260);
  v1 = sub_100006654(v0, qword_10093A260);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10018BD44()
{
  [*&v0[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener] invalidate];
  [*&v0[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDClientConnectionListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018BF18()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A340);
  v1 = sub_100006654(v0, qword_10093A340);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10018BFE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E79616C70736964;
  v4 = 0xEB00000000656D61;
  if (v2 != 1)
  {
    v3 = 0x6574616C706D6574;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F697461657263;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065746144;
  }

  v7 = 0x4E79616C70736964;
  v8 = 0xEB00000000656D61;
  if (*a2 != 1)
  {
    v7 = 0x6574616C706D6574;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E6F697461657263;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065746144;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10018C0F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10018C1AC()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10018C24C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10018C2FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018E0E8(*a1);
  *a2 = result;
  return result;
}

void sub_10018C32C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0xEB00000000656D61;
  v5 = 0x4E79616C70736964;
  if (v2 != 1)
  {
    v5 = 0x6574616C706D6574;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697461657263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static REMCDTemplateSection.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDTemplateSection();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDTemplateSection.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
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
      [v10 mergeDataFromRecord:a1 accountID:v11];

      v13 = v10;
      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935AF8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_10093A340);
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

Swift::String __swiftcall REMCDTemplateSection.recordType()()
{
  v0 = 0x6574616C706D6554;
  v1 = 0xEF6E6F6974636553;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDTemplateSection.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = String._bridgeToObjectiveC()();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for REMCDTemplateSection();
  objc_msgSendSuper2(&v15, "mergeDataFromRecord:accountID:", from.super.isa, v4);

  v5 = [(objc_class *)from.super.isa recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [v2 ckIdentifierFromRecordName:v6];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v2 setCkIdentifier:v7];

  v8 = [v2 mergeDataRevertedLocallyMarkedForDeletion];
  v9 = [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v14 = 0;
  v10 = v2;
  v11 = from.super.isa;
  sub_1004E0908(v11, v8, v9, v10, v10, v11, &v14);

  if (v14 == 1)
  {
    v12 = [v10 template];
    if (v12)
    {
      v13 = v12;
      if (([v12 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        _s7remindd13REMCDTemplateC19sortChildrenObjectsyyF_0();
      }
    }
  }
}

void sub_10018CB0C(_BYTE *a1, void *a2, void *a3, _BYTE *a4)
{
  v62 = a4;
  v64 = a2;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  __chkstk_darwin(v6);
  v60 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v60 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v29 = *(*(v28 - 8) + 64);
  *&v30 = __chkstk_darwin(v28 - 8).n128_u64[0];
  v32 = &v60 - v31;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v33 = [a3 encryptedValues];
      v34 = String._bridgeToObjectiveC()();
      v35 = [v33 objectForKeyedSubscript:v34];
      swift_unknownObjectRelease();

      if (v35)
      {
        v65 = v35;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v35 = String._bridgeToObjectiveC()();
        }

        else
        {
          v35 = 0;
        }
      }

      [v64 setDisplayName:v35];

      return;
    }

    v39 = [v64 template];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 identifier];

      if (v41)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = *(v63 + 56);
        v42(v24, 0, 1, v6);
      }

      else
      {
        v42 = *(v63 + 56);
        v42(v24, 1, 1, v6);
      }

      sub_100031B58(v24, v27, &unk_100939D90, "8\n\r");
    }

    else
    {
      v42 = *(v63 + 56);
      v42(v27, 1, 1, v6);
    }

    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (!v43)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_1001287F0(v43);

    if (v44)
    {
      type metadata accessor for REMCDTemplate();
      v45 = swift_dynamicCastClass();
      if (!v45)
      {
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = v64;
    [v64 setTemplate:v45];

    v47 = [v46 template];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 identifier];

      if (v49)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = v63;
      v42(v18, v50, 1, v6);
      sub_100031B58(v18, v21, &unk_100939D90, "8\n\r");
    }

    else
    {
      v51 = v63;
      v42(v21, 1, 1, v6);
    }

    v52 = *(v9 + 48);
    sub_10018E470(v21, v12);
    sub_10018E470(v27, &v12[v52]);
    v53 = *(v51 + 48);
    if (v53(v12, 1, v6) == 1)
    {
      sub_1000050A4(v21, &unk_100939D90, "8\n\r");
      sub_1000050A4(v27, &unk_100939D90, "8\n\r");
      if (v53(&v12[v52], 1, v6) == 1)
      {
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v54 = 0;
LABEL_38:
        *v62 = v54 & 1;
        return;
      }
    }

    else
    {
      v55 = v61;
      sub_10018E470(v12, v61);
      if (v53(&v12[v52], 1, v6) != 1)
      {
        v56 = &v12[v52];
        v57 = v60;
        (*(v51 + 32))(v60, v56, v6);
        sub_10018E4E0();
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *(v51 + 8);
        v59(v57, v6);
        sub_1000050A4(v21, &unk_100939D90, "8\n\r");
        sub_1000050A4(v27, &unk_100939D90, "8\n\r");
        v59(v55, v6);
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v54 = v58 ^ 1;
        goto LABEL_38;
      }

      sub_1000050A4(v21, &unk_100939D90, "8\n\r");
      sub_1000050A4(v27, &unk_100939D90, "8\n\r");
      (*(v51 + 8))(v55, v6);
    }

    sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
    v54 = 1;
    goto LABEL_38;
  }

  sub_10018E134();
  v36 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v37 = *(v36 - 8);
  isa = 0;
  if ((*(v37 + 48))(v32, 1, v36) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v37 + 8))(v32, v36);
  }

  [v64 setCreationDate:isa];
}

CKRecord_optional __swiftcall REMCDTemplateSection.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for REMCDTemplateSection();
  v43.receiver = v0;
  v43.super_class = v9;
  v11 = objc_msgSendSuper2(&v43, "newlyCreatedRecord");
  if (v11)
  {
    v12 = 0;
    v13 = &off_1008DEAC0;
    v14 = &unk_100938850;
    v39 = v0;
    do
    {
      if (*(v13 + v12 + 32))
      {
        if (*(v13 + v12 + 32) == 1)
        {
          v16 = [v11 encryptedValues];
          v17 = [v1 displayName];
          if (v17)
          {
            v18 = v17;
            v19 = v11;
            v20 = v8;
            v21 = v5;
            v22 = v13;
            v23 = v14;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;

            *(&v41 + 1) = &type metadata for String;
            v42 = &protocol witness table for String;
            *&v40 = v24;
            *(&v40 + 1) = v26;
            v14 = v23;
            v13 = v22;
            v5 = v21;
            v8 = v20;
            v11 = v19;
            v1 = v39;
          }

          else
          {
            v42 = 0;
            v40 = 0u;
            v41 = 0u;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
        }

        else
        {
          if (([v1 markedForDeletion] & 1) == 0 && (v30 = objc_msgSend(v1, "template")) != 0 && (v31 = v30, v32 = objc_msgSend(v30, "recordID"), v31, v32))
          {
            v33 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v32];

            if (v33)
            {
              v34 = v33;
            }
          }

          else
          {
            v33 = 0;
          }

          CKRecord.subscript.setter();
        }
      }

      else
      {
        v27 = [v1 creationDate];
        if (v27)
        {
          v28 = v27;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v29 = 0;
        }

        else
        {
          v29 = 1;
        }

        v35 = type metadata accessor for Date();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v5, v29, 1, v35);
        sub_100031B58(v5, v8, v14, qword_100795AE0);
        if ((*(v36 + 48))(v8, 1, v35) == 1)
        {
          sub_1000050A4(v8, v14, qword_100795AE0);
          v40 = 0u;
          v41 = 0u;
          v42 = 0;
        }

        else
        {
          *(&v41 + 1) = v35;
          v42 = &protocol witness table for Date;
          v15 = sub_1000103CC(&v40);
          (*(v36 + 32))(v15, v8, v35);
        }

        sub_10018E134();
        CKRecordKeyValueSetting.subscript.setter();
      }

      ++v12;
    }

    while (v12 != 3);
  }

  v37 = v11;
  result.value.super.isa = v37;
  result.is_nil = v10;
  return result;
}

id REMCDTemplateSection.parentCDObject.getter()
{
  v1 = [v0 template];

  return v1;
}

Swift::Void __swiftcall REMCDTemplateSection.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935AF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093A340);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093A368, &qword_100797540);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDTemplateSection.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935AF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10093A340);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v45 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v47);

  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v16 = [v4 template];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 remObjectID];
  if (!v18)
  {

LABEL_12:
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_13:
  v23 = sub_10000668C(v7, v22, &v47);

  *(v8 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for section in template {templateSectionID: %{public}s, templateID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 template];
  if (!v24)
  {
    return;
  }

  v46 = v24;
  if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v25 = v4;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v26, v27))
    {
LABEL_28:

      [v25 markForDeletion];
      goto LABEL_29;
    }

    v28 = 7104878;
    v29 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v29 = 136446466;
    v30 = [v25 remObjectID];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 description];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v28 = 7104878;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_10000668C(v33, v35, &v47);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2082;
    v37 = [v25 template];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 remObjectID];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 description];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

LABEL_27:
        v44 = sub_10000668C(v28, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v26, v27, "Template is marked for deletion but section in template is not {templateSectionID: %{public}s, templateID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }
    }

    v43 = 0xE300000000000000;
    goto LABEL_27;
  }

LABEL_29:
  [v46 forcePushToCloud];
}

unint64_t sub_10018E0E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DD968, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10018E134()
{
  result = qword_10093A360;
  if (!qword_10093A360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093A360);
  }

  return result;
}

uint64_t _s7remindd20REMCDTemplateSectionC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935AF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093A340);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093A368, &qword_100797540);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd20REMCDTemplateSectionC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935AF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093A340);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093A368, &qword_100797540);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_10018E470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018E4E0()
{
  result = qword_10093A3E0;
  if (!qword_10093A3E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A3E0);
  }

  return result;
}

unint64_t sub_10018E548(uint64_t a1)
{
  result = sub_10018E570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018E570()
{
  result = qword_10093A3F0;
  if (!qword_10093A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A3F0);
  }

  return result;
}

unint64_t sub_10018E5C4(uint64_t a1)
{
  result = sub_10018E5EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018E5EC()
{
  result = qword_10093A3F8;
  if (!qword_10093A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A3F8);
  }

  return result;
}

unint64_t sub_10018E644()
{
  result = qword_10093A400;
  if (!qword_10093A400)
  {
    sub_1000F514C(&qword_10093A408, &qword_100797588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A400);
  }

  return result;
}

unint64_t sub_10018E6AC()
{
  result = qword_10093A410;
  if (!qword_10093A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A410);
  }

  return result;
}

void sub_10018E700()
{
  v2 = type metadata accessor for REMRemindersListDataView.Diff();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = __chkstk_darwin(v2).n128_u64[0];
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 fetchResultTokenToDiffAgainst];
  sub_100534D44(v8, v7);

  if (!v1)
  {
    v9 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
    v10 = REMReminderDetailDataView.CheckUpdateInvocation.Parameters.reminderID.getter();
    sub_10024111C(v10, v9);

    REMReminderDetailDataView.CheckUpdateInvocation.Result.init(hasUpdates:)();
    (*(v3 + 8))(v7, v2);
  }
}

unint64_t sub_10018E860(uint64_t a1)
{
  result = sub_10018E888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018E888()
{
  result = qword_10093A500;
  if (!qword_10093A500)
  {
    type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A500);
  }

  return result;
}

uint64_t destroy for RDAutoCategorizationQueueItemConfiguration(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t sub_10018E91C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for RDAutoCategorizationQueueItemConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for RDAutoCategorizationQueueItemConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizationQueueItemConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDAutoCategorizationQueueItemConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018EAA0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A508);
  v1 = sub_100006654(v0, qword_10093A508);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10018EB68@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v5 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for Date();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v58 - v17;
  __chkstk_darwin(v16);
  v67 = &v58 - v19;
  v20 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v58 - v22;
  v24 = type metadata accessor for UUID();
  v71 = *(v24 - 8);
  v25 = *(v71 + 64);
  __chkstk_darwin(v24);
  v70 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 8);
  if (v27 == 4 || !sub_10018F950(*(a1 + 8), &off_1008DEAE8) || v27 != 3)
  {
    goto LABEL_15;
  }

  sub_100010364(a1 + v5[9], v23, &unk_100939D90, "8\n\r");
  v28 = v71;
  if ((*(v71 + 48))(v23, 1, v24) == 1)
  {
    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
LABEL_15:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  (*(v28 + 32))(v70, v23, v24);
  sub_100010364(a1 + v5[7], v10, &unk_100938850, qword_100795AE0);
  v65 = v24;
  v29 = v28;
  v31 = v68;
  v30 = v69;
  if ((*(v68 + 48))(v10, 1, v69) == 1)
  {
    (*(v29 + 8))(v70, v65);
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    goto LABEL_15;
  }

  v32 = *(v31 + 32);
  v33 = v67;
  v64 = v31 + 32;
  v63 = v32;
  v32(v67, v10, v30);
  v34 = (a1 + v5[10]);
  v35 = v34[1];
  if (v35 >> 60 == 15)
  {
    (*(v31 + 8))(v33, v30);
    (*(v71 + 8))(v70, v65);
    goto LABEL_15;
  }

  v36 = *v34;
  v37 = objc_opt_self();
  sub_100029344(v36, v35);
  v38 = v35;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v60 = [v37 objectIDWithUUID:isa];

  v40 = objc_autoreleasePoolPush();
  v41 = type metadata accessor for JSONDecoder();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100190834();
  v61 = v36;
  v62 = v38;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v40);
  v59 = v74;
  v44 = *(v68 + 16);
  v44(v18, v67, v69);
  type metadata accessor for RDAutoCategorizerTypeFactory();
  static RDAutoCategorizerTypeFactory.create()(&v73);
  type metadata accessor for REMObjectID_Codable();
  sub_100190948();

  v45 = Array<A>.removingDuplicates()();

  if (v45 >> 62)
  {
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

    v58 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v58 = v45;
  }

  v46 = v69;
  v44(v15, v18, v69);
  sub_10000A87C(&v73, v72);
  v47 = type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  *(v50 + 16) = 3;
  v51 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog;
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = sub_100006654(v52, qword_100975140);
  (*(*(v52 - 8) + 16))(v50 + v51, v53, v52);
  sub_10000607C(&v73);
  v54 = *(v68 + 8);
  v54(v18, v46);
  *(v50 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_listObjectID) = v60;
  *(v50 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_reminderIDs) = v58;
  *(v50 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_isListCategorization) = v59 & 1;
  v63(v50 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_queuedAt, v15, v46);
  v55 = v66;
  *(v50 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_store) = v66;
  sub_100054B6C(v72, v50 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType);
  *(a3 + 24) = v47;
  *(a3 + 32) = &off_1008F3420;
  v56 = v55;
  sub_100031A14(v61, v62);
  *a3 = v50;
  v54(v67, v46);
  (*(v71 + 8))(v70, v65);
  return result;
}

BOOL sub_10018F5D8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v28 = v2;
    v5 = v2 - 1;
    if (!v2)
    {
      break;
    }

    v6 = *v3;
    if (v6 > 4)
    {
      if (*v3 <= 6u)
      {
        if (v6 == 5)
        {
          v12 = 0xD000000000000021;
        }

        else
        {
          v12 = 0xD000000000000023;
        }

        if (v6 == 5)
        {
          v13 = 0x80000001007E91D0;
        }

        else
        {
          v13 = 0x80000001007E9200;
        }
      }

      else if (v6 == 7)
      {
        v12 = 0xD000000000000019;
        v13 = 0x80000001007E9230;
      }

      else if (v6 == 8)
      {
        v12 = 0xD000000000000019;
        v13 = 0x80000001007E9250;
      }

      else
      {
        v12 = 0xD00000000000001BLL;
        v13 = 0x80000001007E9270;
      }
    }

    else
    {
      v7 = 0xD000000000000018;
      v8 = 0xD00000000000001DLL;
      if (v6 == 3)
      {
        v9 = 0x80000001007E91A0;
      }

      else
      {
        v8 = 0x44496E6F73726570;
        v9 = 0xEC000000746C6153;
      }

      if (v6 == 2)
      {
        v10 = 0x80000001007E9180;
      }

      else
      {
        v7 = v8;
        v10 = v9;
      }

      if (*v3)
      {
        v11 = 0x80000001007E9160;
      }

      else
      {
        v11 = 0x80000001007E9140;
      }

      if (*v3 <= 1u)
      {
        v12 = 0xD000000000000012;
      }

      else
      {
        v12 = v7;
      }

      if (*v3 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }
    }

    v14 = 0xD000000000000019;
    v15 = 0xD00000000000001BLL;
    if (v4 == 8)
    {
      v15 = 0xD000000000000019;
    }

    v16 = 0x80000001007E9270;
    if (v4 == 8)
    {
      v16 = 0x80000001007E9250;
    }

    if (v4 != 7)
    {
      v14 = v15;
    }

    v17 = 0x80000001007E9230;
    if (v4 != 7)
    {
      v17 = v16;
    }

    v18 = 0xD000000000000021;
    if (v4 != 5)
    {
      v18 = 0xD000000000000023;
    }

    v19 = 0x80000001007E9200;
    if (v4 == 5)
    {
      v19 = 0x80000001007E91D0;
    }

    if (v4 <= 6)
    {
      v14 = v18;
      v17 = v19;
    }

    v20 = 0xD000000000000018;
    v21 = 0xD00000000000001DLL;
    if (v4 == 3)
    {
      v22 = 0x80000001007E91A0;
    }

    else
    {
      v21 = 0x44496E6F73726570;
      v22 = 0xEC000000746C6153;
    }

    if (v4 == 2)
    {
      v23 = 0x80000001007E9180;
    }

    else
    {
      v20 = v21;
      v23 = v22;
    }

    if (v4)
    {
      v24 = 0x80000001007E9160;
    }

    else
    {
      v24 = 0x80000001007E9140;
    }

    if (v4 <= 1)
    {
      v20 = 0xD000000000000012;
      v23 = v24;
    }

    if (v4 <= 4)
    {
      v25 = v20;
    }

    else
    {
      v25 = v14;
    }

    if (v4 <= 4)
    {
      v26 = v23;
    }

    else
    {
      v26 = v17;
    }

    if (v12 == v25 && v13 == v26)
    {

      return v28 != 0;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v2 = v5;
    ++v3;
  }

  while ((v29 & 1) == 0);
  return v28 != 0;
}

BOOL sub_10018F88C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_100395898(*v4);
    v9 = v8;
    if (v7 == sub_100395898(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_10018F950(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while ((0x65000300020001uLL >> (16 * a1)) != (0x65000300020001uLL >> (16 * v6)));
  return v4 != 0;
}

BOOL sub_10018F9A4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

Class sub_10018F9D4(objc_class *a1, unint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v7 = v6;
  v118 = a4;
  LODWORD(v125) = a3;
  v11 = type metadata accessor for Date();
  v119 = *(v11 - 8);
  v120 = v11;
  v12 = *(v119 + 64);
  __chkstk_darwin(v11);
  v117 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v121 = *(v14 - 8);
  v122 = v14;
  v15 = *(v121 + 64);
  __chkstk_darwin(v14);
  v116 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  isa = (&v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v24 = &v109 - v23;
  v127 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
LABEL_62:
    v5 = v22;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v5;
  }

  else
  {
    v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v24;
  v113 = isa;
  v115 = v22;
  v126 = a5;
  if (v25)
  {
    ObjCClassFromMetadata = a1;
    v124 = v7;
    v26 = 0;
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v27 = *(a2 + 8 * v26 + 32);
      }

      v5 = v27;
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      a5 = REMObjectID.codable.getter();

      v5 = &v127;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      isa = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (isa >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v26;
      if (v28 == v25)
      {
        v29 = v127;
        a1 = ObjCClassFromMetadata;
        v7 = v124;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_15:
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = a1;
  v124 = a1;
  v31 = sub_100016788(&off_1008DEB10, inited, 1);
  swift_setDeallocating();
  v32 = *(inited + 16);
  swift_arrayDestroy();
  type metadata accessor for REMCDOperationQueueItem();
  a1 = [objc_allocWithZone(NSFetchRequest) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [(objc_class *)ObjCClassFromMetadata entity];
  [(objc_class *)a1 setEntity:v33];

  [(objc_class *)a1 setAffectedStores:0];
  [(objc_class *)a1 setPredicate:v31];

  if (qword_100935F10 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(objc_class *)a1 setSortDescriptors:isa];

  [(objc_class *)a1 setReturnsObjectsAsFaults:0];
  v34 = NSManagedObjectContext.fetch<A>(_:)();
  if (v7)
  {

LABEL_19:
  }

  else
  {
    v35 = v34;

    v111 = 0;
    if (v35 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      v36 = v22;
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v110 = v29;
    if (v36)
    {
      a5 = 0;
      v7 = (v35 & 0xC000000000000001);
      a2 = v35 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v7)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a5 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v22 = *(v35 + 8 * a5 + 32);
        }

        a1 = v22;
        v37 = a5 + 1;
        if (__OFADD__(a5, 1))
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        isa = [v22 objectID];
        v24 = [(objc_class *)isa isTemporaryID];

        if (v24)
        {
          break;
        }

        ++a5;
        if (v37 == v36)
        {
          goto LABEL_32;
        }
      }

      v45 = [(objc_class *)a1 configurationData];
      if (!v45)
      {

        goto LABEL_33;
      }

      v46 = v45;
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v47;

      isa = objc_autoreleasePoolPush();
      v48 = type metadata accessor for JSONDecoder();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_100190834();
      v51 = v111;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v51)
      {

        objc_autoreleasePoolPop(isa);
        sub_10001BBA0(v26, a5);
        goto LABEL_19;
      }

      objc_autoreleasePoolPop(isa);
      v77 = v128;
      sub_100272024(v110);
      v78 = v127;
      v79 = objc_autoreleasePoolPush();
      v80 = type metadata accessor for JSONEncoder();
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      v127 = v78;
      v128 = v77;
      sub_1001907E0();
      v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v24 = v88;

      objc_autoreleasePoolPop(v79);
      v89 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)a1 setConfigurationData:v89];

      if (qword_100935B00 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_100006654(v90, qword_10093A508);
      isa = a1;
      v5 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v91))
      {
        v125 = v5;
        v126 = v24;
        v92 = swift_slowAlloc();
        ObjCClassFromMetadata = swift_slowAlloc();
        v127 = ObjCClassFromMetadata;
        *v92 = 136446722;
        v93 = sub_1001424F8();
        v95 = sub_10000668C(v93, v94, &v127);

        *(v92 + 4) = v95;
        *(v92 + 12) = 2080;
        LOBYTE(v129) = sub_1001AEAE8([(objc_class *)isa operationTypeRawValue]);
        sub_1000F5104(&qword_10093A528, &unk_1007976E0);
        v96 = Optional.descriptionOrNil.getter();
        v98 = sub_10000668C(v96, v97, &v127);

        *(v92 + 14) = v98;
        *(v92 + 22) = 2080;
        v99 = [(objc_class *)isa entityIdentifier];
        LODWORD(v124) = v91;
        if (v99)
        {
          v100 = v112;
          v101 = v99;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v102 = 0;
        }

        else
        {
          v102 = 1;
          v100 = v112;
        }

        (*(v121 + 56))(v100, v102, 1, v122);
        v105 = Optional.descriptionOrNil.getter();
        v107 = v106;
        sub_1000050A4(v100, &unk_100939D90, "8\n\r");
        v108 = sub_10000668C(v105, v107, &v127);

        *(v92 + 24) = v108;
        v5 = v125;
        _os_log_impl(&_mh_execute_header, v125, v124, "%{public}s: Updated unsaved auto-categorization operation queue item {operationType: %s, entityIdentifier: %s}", v92, 0x20u);
        swift_arrayDestroy();

        sub_10001BBA0(v26, a5);
        v103 = v25;
        v104 = v126;
        goto LABEL_59;
      }

LABEL_56:
      sub_10001BBA0(v26, a5);
      v103 = v25;
      v104 = v24;
LABEL_59:
      sub_10001BBA0(v103, v104);

      return isa;
    }

LABEL_32:

LABEL_33:
    isa = v111;
    v38 = v125 & 1;
    v39 = objc_autoreleasePoolPush();
    v40 = type metadata accessor for JSONEncoder();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v127 = v110;
    v128 = v38;
    sub_1001907E0();
    v43 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (isa)
    {

      objc_autoreleasePoolPop(v39);
    }

    else
    {
      v52 = v43;
      v53 = v44;

      objc_autoreleasePoolPop(v39);
      v54 = objc_allocWithZone(ObjCClassFromMetadata);
      v55 = [v54 initWithContext:v126];
      [v55 setOperationTypeRawValue:101];
      [v55 setPriorityRawValue:20];
      v56 = [(objc_class *)v124 uuid];
      v57 = v116;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v121 + 8))(v57, v122);
      [v55 setEntityIdentifier:v58];

      v59 = Data._bridgeToObjectiveC()().super.isa;
      [v55 setConfigurationData:v59];

      sub_10001BBA0(v52, v53);
      [v55 setAccount:v118];
      v60 = v55;
      v61 = v117;
      Date.init()();
      v62 = Date._bridgeToObjectiveC()().super.isa;
      (*(v119 + 8))(v61, v120);
      [v60 setCreationDate:v62];

      if (qword_100935B00 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_100006654(v63, qword_10093A508);
      isa = v60;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *v66 = 136446722;
        v127 = v114;
        swift_getMetatypeMetadata();
        v67 = String.init<A>(describing:)();
        v69 = sub_10000668C(v67, v68, &v129);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2082;
        LOBYTE(v127) = sub_1001AEAE8([(objc_class *)isa operationTypeRawValue]);
        sub_1000F5104(&qword_10093A528, &unk_1007976E0);
        v70 = Optional.descriptionOrNil.getter();
        v72 = sub_10000668C(v70, v71, &v129);

        *(v66 + 14) = v72;
        *(v66 + 22) = 2082;
        v73 = [(objc_class *)isa entityIdentifier];
        if (v73)
        {
          v74 = v113;
          v75 = v73;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v76 = 0;
        }

        else
        {
          v76 = 1;
          v74 = v113;
        }

        (*(v121 + 56))(v74, v76, 1, v122);
        v83 = Optional.descriptionOrNil.getter();
        v85 = v84;

        sub_1000050A4(v74, &unk_100939D90, "8\n\r");
        v86 = sub_10000668C(v83, v85, &v129);

        *(v66 + 24) = v86;
        _os_log_impl(&_mh_execute_header, v64, v65, "%{public}s: Inserted auto-categorization operation queue item {operationType: %{public}s, entityIdentifier: %{public}s}", v66, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  return isa;
}