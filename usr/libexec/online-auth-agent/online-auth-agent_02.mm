uint64_t sub_100030FBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v263 = sub_1000431E4();
  v4 = *(v263 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v263);
  v8 = &v239 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v239 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v239 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v239 - v16;
  v18 = __chkstk_darwin(v15);
  v257 = &v239 - v19;
  v20 = __chkstk_darwin(v18);
  v256 = (&v239 - v21);
  v22 = __chkstk_darwin(v20);
  v255 = (&v239 - v23);
  v24 = __chkstk_darwin(v22);
  v254 = &v239 - v25;
  v26 = __chkstk_darwin(v24);
  v253 = &v239 - v27;
  __chkstk_darwin(v26);
  v252 = &v239 - v28;
  v258 = sub_100043004();
  v260 = *(v258 - 8);
  v29 = *(v260 + 64);
  v30 = __chkstk_darwin(v258);
  v32 = &v239 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v251 = &v239 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v239 - v36;
  __chkstk_darwin(v35);
  v262 = &v239 - v38;
  v39 = sub_100043564();
  if (!v39)
  {
    goto LABEL_8;
  }

  v261 = v4;
  v259 = a2;
  v40 = v39;
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {
    swift_unknownObjectRelease();
    a2 = v259;
    v4 = v261;
LABEL_8:
    v69 = sub_1000211D4();
    v70 = v263;
    (*(v4 + 16))(v8, v69, v263);
    v71 = a1;
    v72 = sub_1000431C4();
    v73 = sub_1000434A4();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v4;
      v76 = a2;
      v77 = swift_slowAlloc();
      *v74 = 138543362;
      *(v74 + 4) = v71;
      *v77 = v71;
      v78 = v71;
      _os_log_impl(&_mh_execute_header, v72, v73, "CloudKit record has invalid payload field: %{public}@", v74, 0xCu);
      sub_100029814(v77, &qword_100067060, &qword_100046E00);
      a2 = v76;
      v4 = v75;
    }

    (*(v4 + 8))(v8, v70);
    goto LABEL_11;
  }

  v42 = v41;
  v250 = v40;
  v43 = [v41 fileURL];
  if (!v43)
  {
    v82 = sub_1000211D4();
    v83 = v261;
    v84 = v263;
    (*(v261 + 16))(v11, v82, v263);
    swift_unknownObjectRetain();
    v85 = sub_1000431C4();
    v86 = sub_1000434A4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138543362;
      *(v87 + 4) = v42;
      *v88 = v42;
      swift_unknownObjectRetain();
      _os_log_impl(&_mh_execute_header, v85, v86, "CloudKit asset doesn't have a file URL: %{public}@", v87, 0xCu);
      sub_100029814(v88, &qword_100067060, &qword_100046E00);
      v83 = v261;

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    a2 = v259;
    (*(v83 + 8))(v11, v84);
    v79 = 1;
    goto LABEL_12;
  }

  v44 = v43;
  sub_100042FA4();

  v45 = v260;
  v46 = v262;
  v47 = v258;
  (*(v260 + 32))(v262, v37, v258);
  v48 = v272;
  v49 = sub_100043024();
  v51 = v261;
  if (v48)
  {

    v52 = sub_1000211D4();
    v53 = v263;
    (*(v51 + 16))(v14, v52, v263);
    (*(v45 + 16))(v32, v46, v47);
    v54 = v47;
    v55 = v45;
    v56 = sub_1000431C4();
    v57 = sub_1000434A4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v272 = 0;
      v59 = v58;
      v257 = swift_slowAlloc();
      v264 = v257;
      *v59 = 136446210;
      v256 = v56;
      v60 = v54;
      v61 = sub_100042FC4();
      v63 = v62;
      v64 = *(v55 + 8);
      v65 = v32;
      v66 = v60;
      v64(v65, v60);
      v67 = sub_100015730(v61, v63, &v264);

      *(v59 + 4) = v67;
      v68 = v256;
      _os_log_impl(&_mh_execute_header, v256, v57, "Unable to read CloudKit asset file URL: %{public}s", v59, 0xCu);
      sub_100013B7C(v257);

      swift_unknownObjectRelease();

      (*(v261 + 8))(v14, v263);
      v64(v262, v66);
    }

    else
    {
      swift_unknownObjectRelease();

      v104 = *(v55 + 8);
      v104(v32, v54);
      (*(v51 + 8))(v14, v53);
      v104(v262, v54);
    }

LABEL_37:
    v79 = 1;
    a2 = v259;
    goto LABEL_12;
  }

  v248 = v49;
  v249 = v50;
  v89 = sub_100043564();
  a2 = v259;
  v272 = 0;
  if (!v89 || (v270 = v89, sub_100013A34(&qword_1000670C8, &qword_100048628), (swift_dynamicCast() & 1) == 0))
  {
    v105 = sub_1000211D4();
    v106 = v263;
    (*(v51 + 16))(v17, v105, v263);
    v107 = a1;
    v108 = sub_1000431C4();
    v109 = sub_1000434A4();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v110 = 138543362;
      *(v110 + 4) = v107;
      *v111 = v107;
      v112 = v107;
      _os_log_impl(&_mh_execute_header, v108, v109, "CloudKit record has invalid salt: %{public}@", v110, 0xCu);
      sub_100029814(v111, &qword_100067060, &qword_100046E00);
      a2 = v259;
    }

    sub_10001316C(v248, v249);
    swift_unknownObjectRelease();
    (*(v51 + 8))(v17, v106);
    goto LABEL_58;
  }

  v90 = v265;
  v247 = v264;
  v91 = sub_100043564();
  if (!v91 || (v264 = v91, (swift_dynamicCast() & 1) == 0))
  {
    v113 = sub_1000211D4();
    v114 = v263;
    (*(v51 + 16))(v257, v113, v263);
    v115 = a1;
    v116 = sub_1000431C4();
    v117 = sub_1000434A4();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = v90;
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138412290;
      *(v119 + 4) = v115;
      *v120 = v115;
      v121 = v115;
      _os_log_impl(&_mh_execute_header, v116, v117, "CloudKit record has invalid size: %@, privacy: .public", v119, 0xCu);
      sub_100029814(v120, &qword_100067060, &qword_100046E00);
      a2 = v259;

      v90 = v118;
    }

    sub_10001316C(v247, v90);
    sub_10001316C(v248, v249);
    swift_unknownObjectRelease();
    (*(v51 + 8))(v257, v114);
    goto LABEL_58;
  }

  v92 = v270;
  v93 = sub_100043564();
  if (!v93 || (v270 = v93, (swift_dynamicCast() & 1) == 0))
  {
    v122 = sub_1000211D4();
    v123 = v263;
    (*(v51 + 16))(v256, v122, v263);
    v124 = a1;
    v125 = sub_1000431C4();
    v126 = sub_1000434A4();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = v90;
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v128 = 138543362;
      *(v128 + 4) = v124;
      *v129 = v124;
      v130 = v124;
      _os_log_impl(&_mh_execute_header, v125, v126, "CloudKit record has invalid details zone: %{public}@", v128, 0xCu);
      sub_100029814(v129, &qword_100067060, &qword_100046E00);
      a2 = v259;

      v90 = v127;
    }

    sub_10001316C(v247, v90);
    sub_10001316C(v248, v249);
    swift_unknownObjectRelease();
    (*(v51 + 8))(v256, v123);
    goto LABEL_58;
  }

  v256 = v264;
  v257 = v92;
  v94 = v265;
  v95 = sub_100043564();
  if (!v95 || (v270 = v95, (swift_dynamicCast() & 1) == 0))
  {

    v131 = sub_1000211D4();
    v132 = v263;
    (*(v51 + 16))(v255, v131, v263);
    v133 = a1;
    v134 = sub_1000431C4();
    v135 = sub_1000434A4();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = v90;
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v137 = 138543362;
      *(v137 + 4) = v133;
      *v138 = v133;
      v139 = v133;
      _os_log_impl(&_mh_execute_header, v134, v135, "CloudKit record has invalid update zone: %{public}@", v137, 0xCu);
      sub_100029814(v138, &qword_100067060, &qword_100046E00);
      a2 = v259;

      v90 = v136;
    }

    sub_10001316C(v247, v90);
    sub_10001316C(v248, v249);
    swift_unknownObjectRelease();
    (*(v51 + 8))(v255, v132);
    goto LABEL_58;
  }

  v96 = v265;
  v255 = v264;
  v97 = sub_100043564();
  if (!v97 || (v270 = v97, (swift_dynamicCast() & 1) == 0))
  {

    v140 = sub_1000211D4();
    v141 = v263;
    (*(v51 + 16))(v254, v140, v263);
    v142 = a1;
    v143 = sub_1000431C4();
    v144 = sub_1000434A4();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = v90;
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *v146 = 138543362;
      *(v146 + 4) = v142;
      *v147 = v142;
      v148 = v142;
      _os_log_impl(&_mh_execute_header, v143, v144, "CloudKit record has invalid id: %{public}@", v146, 0xCu);
      sub_100029814(v147, &qword_100067060, &qword_100046E00);
      a2 = v259;

      v90 = v145;
    }

    sub_10001316C(v247, v90);
    sub_10001316C(v248, v249);
    swift_unknownObjectRelease();
    (*(v51 + 8))(v254, v141);
    goto LABEL_58;
  }

  v246 = v264;
  v254 = v265;
  v98 = sub_100043564();
  if (!v98 || (v270 = v98, (swift_dynamicCast() & 1) == 0))
  {

    v149 = v263;
    v150 = sub_1000211D4();
    (*(v51 + 16))(v253, v150, v149);
    v151 = a1;
    v152 = sub_1000431C4();
    v153 = sub_1000434A4();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = v90;
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *v155 = 138543362;
      *(v155 + 4) = v151;
      *v156 = v151;
      v157 = v151;
      _os_log_impl(&_mh_execute_header, v152, v153, "CloudKit record has invalid algorithm: %{public}@", v155, 0xCu);
      sub_100029814(v156, &qword_100067060, &qword_100046E00);
      a2 = v259;

      v90 = v154;
    }

    sub_10001316C(v247, v90);
    sub_10001316C(v248, v249);
    swift_unknownObjectRelease();
    (*(v51 + 8))(v253, v149);
LABEL_58:
    (*(v260 + 8))(v262, v47);
LABEL_11:
    v79 = 1;
LABEL_12:
    v80 = type metadata accessor for BloomFilterRecord(0);
    return (*(*(v80 - 8) + 56))(a2, v79, 1, v80);
  }

  v244 = v96;
  v245 = v94;
  v253 = v90;
  v242 = v264;
  v243 = v265;
  v99 = sub_100043564();
  if (!v99 || (v264 = v99, (swift_dynamicCast() & 1) == 0))
  {

    v158 = sub_1000211D4();
    (*(v261 + 16))(v252, v158, v263);
    v159 = a1;
    v160 = sub_1000431C4();
    v161 = sub_1000434A4();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *v162 = 138543362;
      *(v162 + 4) = v159;
      *v163 = v159;
      v164 = v159;
      _os_log_impl(&_mh_execute_header, v160, v161, "CloudKit record has invalid bitsPerEntry count: %{public}@", v162, 0xCu);
      sub_100029814(v163, &qword_100067060, &qword_100046E00);
    }

    sub_10001316C(v247, v253);
    sub_10001316C(v248, v249);
    swift_unknownObjectRelease();
    (*(v261 + 8))(v252, v263);
    (*(v260 + 8))(v262, v258);
    goto LABEL_37;
  }

  v263 = v270;
  v100 = sub_100043564();
  if (v100)
  {
    v270 = v100;
    v101 = swift_dynamicCast();
    v102 = v264;
    if (!v101)
    {
      v102 = 0;
    }

    v240 = v102;
    if (v101)
    {
      v103 = v265;
    }

    else
    {
      v103 = 0;
    }

    v252 = v103;
  }

  else
  {
    v240 = 0;
    v252 = 0;
  }

  v165 = sub_100043564();
  v261 = 0xF000000000000000;
  if (v165)
  {
    v270 = v165;
    v166 = swift_dynamicCast();
    v167 = v264;
    if (!v166)
    {
      v167 = 0;
    }

    v241 = v167;
    v168 = 0xF000000000000000;
    if (v166)
    {
      v168 = v265;
    }

    v261 = v168;
  }

  else
  {
    v241 = 0;
  }

  v169 = v248;
  v170 = v249;
  sub_100013104(v248, v249);
  v171 = sub_100017418(v169, v170);
  v173 = v172;
  sub_10001316C(v169, v170);
  v174 = v247;
  v175 = v253;
  sub_100013104(v247, v253);
  v176 = sub_100017418(v174, v175);
  v178 = v177;
  sub_10001316C(v174, v175);
  v270 = v171;
  v271 = v173;
  v266 = &type metadata for Data;
  v267 = &protocol witness table for Data;
  v264 = v176;
  v265 = v178;
  v179 = sub_100013B38(&v264, &type metadata for Data);
  v180 = *v179;
  v181 = v179[1];
  sub_100013104(v171, v173);
  sub_100013104(v176, v178);
  sub_100018620(v180, v181);
  sub_10001316C(v176, v178);
  sub_10001316C(v171, v173);
  result = sub_100013B7C(&v264);
  if (HIDWORD(v257))
  {
    __break(1u);
    goto LABEL_75;
  }

  v183 = v270;
  v182 = v271;
  LODWORD(v264) = v257;
  v272 = sub_100035BFC();
  v184 = sub_1000170EC(&v264, &type metadata for UInt32);
  v186 = v185;
  v268 = v183;
  v269 = v182;
  v266 = &type metadata for Data;
  v267 = &protocol witness table for Data;
  v264 = v184;
  v265 = v185;
  v187 = sub_100013B38(&v264, &type metadata for Data);
  v189 = *v187;
  v188 = v187[1];
  sub_100013104(v183, v182);
  sub_100013104(v184, v186);
  sub_100018620(v189, v188);
  sub_10001316C(v184, v186);
  sub_10001316C(v183, v182);
  sub_100013B7C(&v264);
  v190 = v268;
  v191 = v269;
  v192 = v244;

  v193 = sub_10001721C(v255, v192);
  v195 = v194;

  v270 = v190;
  v271 = v191;
  v266 = &type metadata for Data;
  v267 = &protocol witness table for Data;
  v264 = v193;
  v265 = v195;
  v196 = sub_100013B38(&v264, &type metadata for Data);
  v197 = *v196;
  v198 = v196[1];
  sub_100013104(v190, v191);
  sub_100013104(v193, v195);
  sub_100018620(v197, v198);
  sub_10001316C(v193, v195);
  sub_10001316C(v190, v191);
  sub_100013B7C(&v264);
  v199 = v270;
  v200 = v271;
  v201 = v245;

  v202 = sub_10001721C(v256, v201);
  v204 = v203;

  v268 = v199;
  v269 = v200;
  v266 = &type metadata for Data;
  v267 = &protocol witness table for Data;
  v264 = v202;
  v265 = v204;
  v205 = sub_100013B38(&v264, &type metadata for Data);
  v206 = *v205;
  v207 = v205[1];
  sub_100013104(v199, v200);
  sub_100013104(v202, v204);
  sub_100018620(v206, v207);
  sub_10001316C(v202, v204);
  sub_10001316C(v199, v200);
  sub_100013B7C(&v264);
  v208 = v268;
  v209 = v269;
  v210 = sub_10001721C(v240, v252);
  v212 = v211;
  v270 = v208;
  v271 = v209;
  v266 = &type metadata for Data;
  v267 = &protocol witness table for Data;
  v264 = v210;
  v265 = v211;
  v213 = sub_100013B38(&v264, &type metadata for Data);
  v214 = *v213;
  v215 = v213[1];
  sub_100013104(v208, v209);
  sub_100013104(v210, v212);
  sub_100018620(v214, v215);
  sub_10001316C(v210, v212);
  sub_10001316C(v208, v209);
  sub_100013B7C(&v264);
  v216 = v270;
  v217 = v271;
  v218 = v243;

  v219 = sub_10001721C(v242, v218);
  v221 = v220;

  v268 = v216;
  v269 = v217;
  v266 = &type metadata for Data;
  v267 = &protocol witness table for Data;
  v264 = v219;
  v265 = v221;
  v222 = sub_100013B38(&v264, &type metadata for Data);
  v223 = *v222;
  v224 = v222[1];
  sub_100013104(v216, v217);
  sub_100013104(v219, v221);
  sub_100018620(v223, v224);
  sub_10001316C(v219, v221);
  sub_10001316C(v216, v217);
  result = sub_100013B7C(&v264);
  if ((v263 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!HIDWORD(v263))
  {
    v225 = v268;
    v226 = v269;
    LODWORD(v264) = v263;
    v227 = sub_1000170EC(&v264, &type metadata for UInt32);
    v229 = v228;
    v270 = v225;
    v271 = v226;
    v266 = &type metadata for Data;
    v267 = &protocol witness table for Data;
    v264 = v227;
    v265 = v228;
    v230 = sub_100013B38(&v264, &type metadata for Data);
    v231 = *v230;
    v232 = v230[1];
    sub_100013104(v225, v226);
    sub_100013104(v227, v229);
    sub_100018620(v231, v232);
    sub_10001316C(v227, v229);
    sub_10001316C(v225, v226);
    sub_100013B7C(&v264);
    v233 = v270;
    v234 = v271;
    sub_10002F8B4(v270, v271, v241, v261, a1);
    v235 = v260;
    v236 = v251;
    v237 = v262;
    v238 = v258;
    (*(v260 + 16))(v251, v262, v258);
    a2 = v259;
    sub_10003EDB0(v236, v247, v253, v257, v256, v245, v255, v244, v259, v246, v254, v242, v243, v263, v240, v252);
    sub_100013158(v241, v261);
    sub_10001316C(v233, v234);
    sub_10001316C(v248, v249);
    swift_unknownObjectRelease();
    (*(v235 + 8))(v237, v238);
    v79 = 0;
    goto LABEL_12;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_100032B90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_1000431E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v78 - v10;
  __chkstk_darwin(v9);
  v80 = &v78 - v12;
  v83 = sub_100043004();
  v81 = *(v83 - 8);
  v13 = *(v81 + 64);
  v14 = __chkstk_darwin(v83);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v78 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v78 - v21;
  __chkstk_darwin(v20);
  v82 = &v78 - v23;
  v24 = sub_100043564();
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = v24;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  v27 = v25;
  if (!v26)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v50 = sub_1000211D4();
    v51 = v3;
    (*(v4 + 16))(v8, v50, v3);
    v52 = a1;
    v53 = sub_1000431C4();
    v54 = sub_1000434A4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138543362;
      *(v55 + 4) = v52;
      *v56 = v52;
      v57 = v52;
      _os_log_impl(&_mh_execute_header, v53, v54, "CloudKit record has invalid payload field: %{public}@", v55, 0xCu);
      sub_100029814(v56, &qword_100067060, &qword_100046E00);
    }

    (*(v4 + 8))(v8, v51);
    goto LABEL_11;
  }

  v28 = v26;
  v29 = [v26 fileURL];
  if (v29)
  {
    v30 = v29;
    sub_100042FA4();

    v32 = v81;
    v31 = v82;
    v33 = v22;
    v34 = v83;
    (*(v81 + 32))(v82, v33, v83);
    v35 = v85;
    v36 = sub_100043024();
    if (v35)
    {
      v85 = 0;

      v38 = sub_1000211D4();
      v39 = v3;
      (*(v4 + 16))(v80, v38, v3);
      (*(v32 + 16))(v16, v31, v34);
      v40 = sub_1000431C4();
      v41 = sub_1000434A4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v86[0] = v43;
        *v42 = 136446210;
        v44 = sub_100042FC4();
        v79 = v39;
        v46 = v45;
        v81 = *(v32 + 8);
        v47 = v16;
        v48 = v83;
        (v81)(v47, v83);
        v49 = sub_100015730(v44, v46, v86);

        *(v42 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unable to read CloudKit asset file URL: %{public}s", v42, 0xCu);
        sub_100013B7C(v43);

        swift_unknownObjectRelease();

        (*(v4 + 8))(v80, v79);
        (v81)(v82, v48);
      }

      else
      {
        swift_unknownObjectRelease();

        v73 = *(v32 + 8);
        v73(v16, v34);
        (*(v4 + 8))(v80, v39);
        v73(v31, v34);
      }

LABEL_11:
      v58 = 1;
      v59 = v84;
      goto LABEL_12;
    }

    v67 = v36;
    v68 = v37;
    v69 = sub_100043564();
    v70 = 0xF000000000000000;
    if (v69)
    {
      v86[3] = v69;
      sub_100013A34(&qword_1000670C8, &qword_100048628);
      v71 = swift_dynamicCast();
      if (v71)
      {
        v72 = v86[0];
      }

      else
      {
        v72 = 0;
      }

      if (v71)
      {
        v70 = v86[1];
      }
    }

    else
    {
      v72 = 0;
    }

    sub_100013104(v67, v68);
    v74 = sub_100017418(v67, v68);
    v76 = v75;
    sub_10001316C(v67, v68);
    v85 = v72;
    sub_10002F8B4(v74, v76, v72, v70, a1);
    v77 = v81;
    (*(v81 + 16))(v19, v82, v83);
    v59 = v84;
    sub_10003EEF0(v19, v84);
    sub_100013158(v85, v70);
    sub_10001316C(v74, v76);
    sub_10001316C(v67, v68);
    swift_unknownObjectRelease();
    (*(v77 + 8))(v82, v83);
    v58 = 0;
  }

  else
  {
    v62 = sub_1000211D4();
    (*(v4 + 16))(v11, v62, v3);
    swift_unknownObjectRetain();
    v63 = sub_1000431C4();
    v64 = sub_1000434A4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138543362;
      *(v65 + 4) = v28;
      *v66 = v28;
      swift_unknownObjectRetain();
      _os_log_impl(&_mh_execute_header, v63, v64, "CloudKit asset doesn't have a file URL: %{public}@", v65, 0xCu);
      sub_100029814(v66, &qword_100067060, &qword_100046E00);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v11, v3);
    v58 = 1;
    v59 = v84;
  }

LABEL_12:
  v60 = type metadata accessor for DocumentCheckerRecord(0);
  return (*(*(v60 - 8) + 56))(v59, v58, 1, v60);
}

uint64_t sub_10003342C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000431E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v113 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v113 - v15;
  __chkstk_darwin(v14);
  v18 = &v113 - v17;
  v19 = sub_100043564();
  if (!v19 || (*&v124 = v2, v125 = v19, sub_100013A34(&qword_1000670C8, &qword_100048628), (swift_dynamicCast() & 1) == 0))
  {
    v31 = sub_1000211D4();
    (*(v6 + 16))(v10, v31, v5);
    v32 = a1;
    v33 = sub_1000431C4();
    v34 = sub_1000434A4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *&v124 = v6;
      v36 = v35;
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      *(v36 + 4) = v32;
      *v37 = v32;
      v38 = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "CloudKit record has invalid update number: %{public}@", v36, 0xCu);
      sub_100029814(v37, &qword_100067060, &qword_100046E00);

      v6 = v124;
    }

    result = (*(v6 + 8))(v10, v5);
    goto LABEL_19;
  }

  v20 = v131;
  v21 = sub_100043564();
  if (!v21 || (v131 = v21, (swift_dynamicCast() & 1) == 0))
  {
    v44 = sub_1000211D4();
    (*(v6 + 16))(v13, v44, v5);
    v45 = a1;
    v46 = sub_1000431C4();
    v47 = sub_1000434A4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&_mh_execute_header, v46, v47, "CloudKit record has invalid data: %{public}@", v48, 0xCu);
      sub_100029814(v49, &qword_100067060, &qword_100046E00);
    }

    result = (*(v6 + 8))(v13, v5);
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    goto LABEL_23;
  }

  v22 = v125;
  *&v122 = v126;
  v23 = sub_100043564();
  if (!v23 || (v125 = v23, (swift_dynamicCast() & 1) == 0))
  {
    v51 = sub_1000211D4();
    (*(v6 + 16))(v16, v51, v5);
    v52 = a1;
    v53 = sub_1000431C4();
    v54 = sub_1000434A4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v123 = v5;
      v57 = v22;
      v58 = v56;
      *v55 = 138543362;
      *(v55 + 4) = v52;
      *v56 = v52;
      v59 = v52;
      _os_log_impl(&_mh_execute_header, v53, v54, "CloudKit record has invalid entryCount: %{public}@", v55, 0xCu);
      sub_100029814(v58, &qword_100067060, &qword_100046E00);

      v60 = v57;
      v5 = v123;
      sub_10001316C(v60, v122);
    }

    else
    {
      sub_10001316C(v22, v122);
    }

    result = (*(v6 + 8))(v16, v5);
    goto LABEL_19;
  }

  v24 = v131;
  v25 = sub_100043564();
  if (!v25 || (v131 = v25, (swift_dynamicCast() & 1) == 0))
  {
    v61 = sub_1000211D4();
    (*(v6 + 16))(v18, v61, v5);
    v62 = a1;
    v63 = sub_1000431C4();
    v64 = sub_1000434A4();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v121 = v22;
      v67 = v66;
      *v65 = 138543362;
      *(v65 + 4) = v62;
      *v66 = v62;
      v68 = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "CloudKit record has invalid uuid: %{public}@", v65, 0xCu);
      sub_100029814(v67, &qword_100067060, &qword_100046E00);

      sub_10001316C(v121, v122);
    }

    else
    {
      sub_10001316C(v22, v122);
    }

    result = (*(v6 + 8))(v18, v5);
LABEL_19:
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    goto LABEL_23;
  }

  v26 = v126;
  v117 = v125;
  v27 = sub_100043564();
  if (v27)
  {
    v131 = v27;
    v28 = swift_dynamicCast();
    v29 = v125;
    if (!v28)
    {
      v29 = 0;
    }

    v116 = v29;
    if (v28)
    {
      v30 = v126;
    }

    else
    {
      v30 = 0;
    }

    v134 = v30;
  }

  else
  {
    v116 = 0;
    v134 = 0;
  }

  v69 = v122;
  v70 = sub_100043564();
  v71 = 0xF000000000000000;
  v119 = v20;
  v118 = v24;
  if (v70)
  {
    v131 = v70;
    v72 = swift_dynamicCast();
    v73 = v125;
    if (!v72)
    {
      v73 = 0;
    }

    v114 = v73;
    if (v72)
    {
      v71 = v126;
    }

    v115 = v71;
  }

  else
  {
    v115 = 0xF000000000000000;
    v114 = 0;
  }

  sub_100013104(v22, v69);
  v74 = sub_100017418(v22, v69);
  v76 = v75;
  result = sub_10001316C(v22, v69);
  if ((v119 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v120 = v26;
  *&v121 = v22;
  if (HIDWORD(v119))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  LODWORD(v125) = v119;
  v113 = sub_100035BFC();
  v77 = sub_1000170EC(&v125, &type metadata for UInt32);
  v79 = v78;
  v129 = v74;
  v130 = v76;
  v127 = &type metadata for Data;
  v128 = &protocol witness table for Data;
  v125 = v77;
  v126 = v78;
  v80 = sub_100013B38(&v125, &type metadata for Data);
  v82 = *v80;
  v81 = v80[1];
  sub_100013104(v74, v76);
  sub_100013104(v77, v79);
  v83 = v124;
  sub_100018620(v82, v81);
  sub_10001316C(v77, v79);
  sub_10001316C(v74, v76);
  result = sub_100013B7C(&v125);
  if ((v118 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!HIDWORD(v118))
  {
    v84 = v129;
    v85 = v130;
    LODWORD(v125) = v118;
    v86 = sub_1000170EC(&v125, &type metadata for UInt32);
    v88 = v87;
    v131 = v84;
    v132 = v85;
    v127 = &type metadata for Data;
    v128 = &protocol witness table for Data;
    v125 = v86;
    v126 = v87;
    v89 = sub_100013B38(&v125, &type metadata for Data);
    v90 = *v89;
    v91 = v89[1];
    sub_100013104(v84, v85);
    sub_100013104(v86, v88);
    sub_100018620(v90, v91);
    sub_10001316C(v86, v88);
    sub_10001316C(v84, v85);
    sub_100013B7C(&v125);
    v92 = v131;
    v93 = v132;
    v94 = v120;

    v95 = sub_10001721C(v117, v94);
    v97 = v96;

    v129 = v92;
    v130 = v93;
    v127 = &type metadata for Data;
    v128 = &protocol witness table for Data;
    v125 = v95;
    v126 = v97;
    v98 = sub_100013B38(&v125, &type metadata for Data);
    v99 = *v98;
    v100 = v98[1];
    sub_100013104(v92, v93);
    sub_100013104(v95, v97);
    sub_100018620(v99, v100);
    sub_10001316C(v95, v97);
    sub_10001316C(v92, v93);
    sub_100013B7C(&v125);
    v101 = v129;
    v102 = v130;
    v103 = sub_10001721C(v116, v134);
    v105 = v104;
    v131 = v101;
    v132 = v102;
    v127 = &type metadata for Data;
    v128 = &protocol witness table for Data;
    v125 = v103;
    v126 = v104;
    v106 = sub_100013B38(&v125, &type metadata for Data);
    v107 = *v106;
    v108 = v106[1];
    sub_100013104(v101, v102);
    sub_100013104(v103, v105);
    sub_100018620(v107, v108);
    sub_10001316C(v103, v105);
    sub_10001316C(v101, v102);
    sub_100013B7C(&v125);
    v109 = v131;
    v110 = v132;
    v111 = v114;
    v112 = v115;
    sub_10002F8B4(v131, v132, v114, v115, a1);
    if (v83)
    {
      sub_10001316C(v109, v110);
      sub_100013158(v111, v112);

      return sub_10001316C(v121, v122);
    }

    sub_10003EF5C(v119, v121, v122, v118, v117, v120, v116, v134, v133);
    v124 = v133[0];
    v123 = v133[1];
    v122 = v133[2];
    v121 = v133[3];
    sub_10001316C(v109, v110);
    result = sub_100013158(v111, v112);
    v43 = v121;
    v42 = v122;
    v41 = v123;
    v40 = v124;
LABEL_23:
    *a2 = v40;
    a2[1] = v41;
    a2[2] = v42;
    a2[3] = v43;
    return result;
  }

LABEL_50:
  __break(1u);
  return result;
}

void sub_100034098(uint64_t a1, unint64_t a2, int a3)
{
  v93 = sub_1000431E4();
  v7 = *(v93 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v93);
  v11 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v86 = v81 - v13;
  v14 = __chkstk_darwin(v12);
  v88 = v81 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v81 - v17;
  v19 = (*v3 + 104);
  v91 = *v19;
  v92 = v3;
  v90 = v19;
  (v91)(v98, v16);
  v20 = v98[0];
  v103 = v98[4];
  sub_100029070(&v103, &v96, &qword_100066EE0, &qword_100048500);

  v102 = v98[3];
  sub_100029814(&v102, &qword_100066EE0, &qword_100048500);
  sub_100029814(&v103, &qword_100066EE0, &qword_100048500);
  v21 = v103;
  if (!v103)
  {
    v39 = sub_1000211D4();
    (*(v7 + 16))(v11, v39, v93);
    v40 = sub_1000431C4();
    v41 = sub_1000434A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Attempt to fetch warning details with no zone", v42, 2u);
    }

    (*(v7 + 8))(v11, v93);
    sub_100035A20();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
    return;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v87 = v22 + 16;
  v89 = v22;
  *(v22 + 24) = -1;
  v96 = 0x73616864632F3176;
  v97 = 0xEA00000000002F68;
  LODWORD(v95) = a3;
  v104._countAndFlagsBits = sub_1000437E4();
  sub_100043394(v104);

  v105._countAndFlagsBits = 47;
  v105._object = 0xE100000000000000;
  sub_100043394(v105);
  v106._countAndFlagsBits = sub_1000137B0(a1, a2);
  sub_100043394(v106);

  v23 = v96;
  v24 = v97;
  v25 = sub_100036008(0, &qword_100067138, CKRecordID_ptr);

  v26.super.isa = [v21 zoneID];
  v107._countAndFlagsBits = v23;
  v107._object = v24;
  v27.super.isa = sub_100043464(v107, v26).super.isa;
  v28 = sub_1000211D4();
  v29 = *(v7 + 16);
  v82 = v28;
  v84 = v7 + 16;
  v83 = v29;
  (v29)(v18);

  v30 = sub_1000431C4();
  v31 = sub_100043494();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v81[1] = v25;
    v33 = v32;
    v34 = swift_slowAlloc();
    v96 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_100015730(v23, v24, &v96);
    _os_log_impl(&_mh_execute_header, v30, v31, "CloudKit fetch for warning: %{public}s", v33, 0xCu);
    sub_100013B7C(v34);
    v35 = v93;

    v36 = *(v7 + 8);
    v37 = v18;
    v38 = v35;
  }

  else
  {

    v36 = *(v7 + 8);
    v37 = v18;
    v38 = v93;
  }

  v85 = v36;
  v36(v37, v38);
  sub_100013A34(&unk_100066EF0, &qword_100048508);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000484D0;
  *(v44 + 32) = v27;
  v45 = objc_allocWithZone(CKFetchRecordsOperation);
  v46 = v27.super.isa;
  isa = sub_1000433F4().super.isa;

  v48 = [v45 initWithRecordIDs:isa];

  v49 = v89;

  sub_1000434E4();
  v50 = v48;
  v51 = [v50 configuration];
  if (!v51)
  {
    __break(1u);
    goto LABEL_28;
  }

  v52 = v51;
  [v51 setQualityOfService:25];

  v53 = [v50 configuration];
  if (!v53)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v54 = v53;
  [v53 setTimeoutIntervalForRequest:10.0];

  v55 = [v50 configuration];
  if (!v55)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v56 = v55;
  [v55 setTimeoutIntervalForResource:60.0];

  v57 = [v50 configuration];
  if (!v57)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v58 = v57;
  [v57 setPreferAnonymousRequests:1];

  v59 = [v50 configuration];
  if (!v59)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v60 = sub_1000432E4();
  [v59 set_sourceApplicationSecondaryIdentifier:v60];

  v91(v99);
  v61 = v99[1];

  v101 = v99[3];
  sub_100029814(&v101, &qword_100066EE0, &qword_100048500);
  v100 = v99[4];
  sub_100029814(&v100, &qword_100066EE0, &qword_100048500);
  [v61 addOperation:v50];

  [v50 waitUntilFinished];
  swift_beginAccess();
  v62 = *(v49 + 24);
  if (v62 == 255)
  {
    v66 = v86;
    v83(v86, v82, v93);
    v67 = sub_1000431C4();
    v68 = sub_1000434A4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "CloudKit results block never called.", v69, 2u);
    }

    v85(v66, v93);
    sub_100035A20();
    swift_allocError();
    *v70 = 0;
    swift_willThrow();

    sub_100029814(&v103, &qword_100066EE0, &qword_100048500);
  }

  else
  {
    v92 = v46;
    v63 = *(v49 + 16);
    if (v62)
    {
      v95 = *(v49 + 16);
      sub_1000360BC(v63, v62);
      sub_1000360BC(v63, v62);
      sub_100035F40(v63, 1);
      sub_100013A34(&qword_100066690, &qword_100048510);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v64 = v94;
        v95 = v94;
        sub_100036134(&qword_1000670E0, type metadata accessor for CKError);
        sub_100042EF4();

        v65 = v88;
        if (v94 == 11)
        {
          sub_1000360D4(v63, v62);
          sub_1000360D4(v63, v62);

          sub_100029814(&v103, &qword_100066EE0, &qword_100048500);
          return;
        }
      }

      else
      {
        v65 = v88;
      }

      v83(v65, v82, v93);
      sub_100035F40(v63, 1);
      v72 = sub_1000431C4();
      v73 = sub_1000434A4();
      sub_1000360D4(v63, v62);
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v91 = v7;
        v75 = v74;
        v76 = swift_slowAlloc();
        v94 = v63;
        v95 = v76;
        *v75 = 136446210;
        sub_100035F40(v63, 1);
        v77 = sub_100043364();
        v79 = sub_100015730(v77, v78, &v95);

        *(v75 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v72, v73, "CloudKit unexpected error during fetch: %{public}s", v75, 0xCu);
        sub_100013B7C(v76);

        v80 = v88;
      }

      else
      {

        v80 = v65;
      }

      v85(v80, v93);
      swift_willThrow();
      sub_1000360D4(v63, v62);

      sub_100029814(&v103, &qword_100066EE0, &qword_100048500);
    }

    else
    {
      v71 = v63;

      sub_100029814(&v103, &qword_100066EE0, &qword_100048500);
    }
  }
}

uint64_t sub_100034C90()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_10001316C(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034CD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034D10()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034D48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  sub_100029814(v0 + 56, &unk_100066EC0, &unk_1000484E0);

  return _swift_deallocClassInstance(v0, 97, 7);
}

uint64_t sub_100034F00(uint64_t a1)
{
  v2 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100034F6C(uint64_t a1)
{
  v2 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100034FD8(void *a1, uint64_t a2)
{
  v4 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10003508C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100035108()
{
  v2 = *v0;
  sub_1000438A4();
  sub_1000432C4();
  return sub_1000438C4();
}

uint64_t sub_100035168(uint64_t a1)
{
  v2 = sub_100036134(&qword_100067158, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000351D4(uint64_t a1)
{
  v2 = sub_100036134(&qword_100067158, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100035240(uint64_t a1)
{
  v2 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000352AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

Swift::Int sub_100035330(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013A34(&qword_100067108, &unk_100048640);
    v2 = sub_1000436E4();
    v19 = v2;
    sub_100043674();
    v3 = sub_100043694();
    if (v3)
    {
      v4 = v3;
      sub_100036008(0, &qword_100067100, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100036008(0, &unk_100067110, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000355C0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100043574(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100043694();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_10003557C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100043574(*(v2 + 40));

  return sub_100035C50(a1, v4);
}

uint64_t sub_1000355C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100013A34(&qword_100067108, &unk_100048640);
  result = sub_1000436D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_100043574(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

id sub_100035828(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10003557C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000355C0(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10003557C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100036008(0, &qword_100067100, CKRecordZoneID_ptr);
        sub_100043814();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100035D24();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1000359A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100035A20()
{
  result = qword_100066F00;
  if (!qword_100066F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066F00);
  }

  return result;
}

uint64_t sub_100035A74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035AD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100035B74()
{
  result = qword_100066F08;
  if (!qword_100066F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066F08);
  }

  return result;
}

unint64_t sub_100035BFC()
{
  result = qword_1000670D0;
  if (!qword_1000670D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000670D0);
  }

  return result;
}

unint64_t sub_100035C50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100036008(0, &qword_100067100, CKRecordZoneID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100043584();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_100035D24()
{
  v1 = v0;
  sub_100013A34(&qword_100067108, &unk_100048640);
  v2 = *v0;
  v3 = sub_1000436C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_100035E84(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_100013158(a2, a3);
  }
}

unint64_t sub_100035EEC()
{
  result = qword_1000670E8;
  if (!qword_1000670E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000670E8);
  }

  return result;
}

id sub_100035F40(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100035F4C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100035F58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013A34(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100035FC0()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_100035F4C(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100036008(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100036050(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v3 + 16) = a2;
  v7 = *(v3 + 24);
  a3 &= 1u;
  *(v3 + 24) = a3;
  sub_1000360D4(v6, v7);
  return sub_100035F40(a2, a3);
}

id sub_1000360BC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_100035F40(result, a2 & 1);
  }

  return result;
}

void sub_1000360D4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100035F4C(a1, a2 & 1);
  }
}

uint64_t sub_100036134(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100036344()
{
  result = qword_100067180;
  if (!qword_100067180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067180);
  }

  return result;
}

__CFString *sub_100036434()
{
  v0 = sub_100042F54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_100043004();
  sub_1000168B0(v9, qword_10006AA50);
  sub_1000161D0(v9, qword_10006AA50);
  result = sub_100016914();
  if (result)
  {
    v11 = result;
    sub_100043314();

    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
    return sub_100042FE4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100036600@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_baseURL;
  swift_beginAccess();
  v4 = sub_100043004();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100036688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_baseURL;
  swift_beginAccess();
  v4 = sub_100043004();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_100036778()
{
  v1 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_db;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000367CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_db;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100036884()
{
  v1 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_filter;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1000368CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_filter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100036A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100029EB0(v2 + v4, a2);
}

uint64_t sub_100036A90(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  sub_100013B7C((v3 + v6));
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_100036BE8(void *a1, uint64_t *a2)
{
  v28 = a1;
  v30 = a2;
  v3 = sub_100042F54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100043004();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006A3A0 != -1)
  {
    swift_once();
  }

  sub_1000161D0(v8, qword_10006AA50);
  v29[0] = 0xD000000000000011;
  v29[1] = 0x800000010004CAF0;
  (*(v4 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_10003CF7C();
  sub_100042FF4();
  (*(v4 + 8))(v7, v3);
  v13 = [objc_opt_self() defaultManager];
  sub_100042FC4();
  v14 = sub_1000432E4();

  v15 = [v13 fileExistsAtPath:v14];

  if (!v15)
  {
    (*(v9 + 8))(v12, v8);
    v22 = 0;
LABEL_7:
    v23 = v30;
    sub_100029EB0(v30, v29);
    v19 = (*(v27[1] + 272))(v28, v22, v29);
    sub_100013B7C(v23);
    return v19;
  }

  v16 = sub_100042E74();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_100042E64();
  v20 = sub_100043024();
  if (!v2)
  {
    v24 = v20;
    v25 = v21;
    type metadata accessor for BloomFilter();
    sub_10003D274(&qword_100067208);
    sub_100042E54();
    (*(v9 + 8))(v12, v8);
    sub_10001316C(v24, v25);

    v22 = v29[0];
    goto LABEL_7;
  }

  sub_100013B7C(v30);
  (*(v9 + 8))(v12, v8);
  return v19;
}

uint64_t sub_100036FC8(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_10003CFD0(a1, a2, a3);

  return v9;
}

uint64_t sub_100037030@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v101 = a4;
  v10 = sub_100013A34(&qword_100066E80, &qword_1000483E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v97 = &v91 - v12;
  v13 = type metadata accessor for LaunchWarningDetails();
  v102 = *(v13 - 8);
  v103 = v13;
  v14 = *(v102 + 64);
  __chkstk_darwin(v13);
  v96 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000431E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v95 = &v91 - v23;
  v24 = __chkstk_darwin(v22);
  v94 = &v91 - v25;
  __chkstk_darwin(v24);
  v98 = &v91 - v26;
  v99 = a3;
  __src = bswap32(a3);
  v105 = sub_1000131C0(&__src, &v105);
  v106 = v27 & 0xFFFFFFFFFFFFFFLL;
  v100 = a1;
  v28 = a2;
  v29 = sub_1000430D4();
  v31 = v105;
  v30 = v106;
  v32 = (*(*v6 + 176))(v29);
  if (v32)
  {
    v93 = v17;
    v33 = v32;
    v34 = (*(*v32 + 168))(v31, v30);
    if (v5)
    {

      return sub_10001316C(v31, v30);
    }

    v91 = v33;
    v92 = 0;
    if (sub_100021B98(v34 & 1, 1))
    {
      v97 = v30;
      v41 = sub_1000212A8();
      v42 = v93;
      v43 = v98;
      v44 = v16;
      (*(v93 + 16))(v98, v41, v16);
      v45 = v100;
      v46 = v28;
      v47 = v43;
      sub_100013104(v100, v46);
      v48 = sub_1000431C4();
      v49 = sub_1000434B4();
      sub_10001316C(v45, v46);
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v96 = v44;
        v51 = v50;
        v52 = swift_slowAlloc();
        v105 = v52;
        *v51 = 67109378;
        *(v51 + 4) = v99;
        *(v51 + 8) = 2082;
        v53 = sub_1000137B0(v45, v46);
        v55 = v42;
        v56 = sub_100015730(v53, v54, &v105);

        *(v51 + 10) = v56;
        _os_log_impl(&_mh_execute_header, v48, v49, "Item not present in bloom filter: %u, %{public}s", v51, 0x12u);
        sub_100013B7C(v52);

        sub_10001316C(v31, v97);

        (*(v55 + 8))(v47, v96);
      }

      else
      {

        sub_10001316C(v31, v97);

        (*(v42 + 8))(v47, v44);
      }

      v40 = 1;
    }

    else
    {
      (*(*v6 + 200))(&v105);
      v58 = v107;
      v57 = v108;
      sub_100013B38(&v105, v107);
      v59 = v97;
      v60 = v100;
      v61 = v92;
      (*(v57 + 8))(v100, v28, v99, v58, v57);
      if (v61)
      {

        sub_10001316C(v31, v30);
        return sub_100013B7C(&v105);
      }

      v63 = (*(v102 + 48))(v59, 1, v103);
      v64 = (v93 + 16);
      if (v63 != 1)
      {
        sub_10003D19C(v59, v96, type metadata accessor for LaunchWarningDetails);
        sub_100013B7C(&v105);
        sub_1000212A8();
        v79 = v94;
        v80 = v60;
        (*v64)();
        sub_100013104(v60, v28);
        v81 = sub_1000431C4();
        v82 = sub_1000434B4();
        sub_10001316C(v80, v28);
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v92 = 0;
          v84 = v83;
          v85 = v81;
          v86 = swift_slowAlloc();
          v105 = v86;
          *v84 = 67109378;
          *(v84 + 4) = v99;
          *(v84 + 8) = 2082;
          v87 = sub_1000137B0(v80, v28);
          v89 = sub_100015730(v87, v88, &v105);

          *(v84 + 10) = v89;
          _os_log_impl(&_mh_execute_header, v85, v82, "Launch warning found: %u, %{public}s", v84, 0x12u);
          sub_100013B7C(v86);

          sub_10001316C(v31, v30);

          (*(v93 + 8))(v94, v16);
        }

        else
        {

          sub_10001316C(v31, v30);

          (*(v93 + 8))(v79, v16);
        }

        v90 = v101;
        sub_10003D19C(v96, v101, type metadata accessor for LaunchWarningDetails);
        v62 = v90;
        v40 = 0;
        return (*(v102 + 56))(v62, v40, 1, v103);
      }

      sub_100029814(v59, &qword_100066E80, &qword_1000483E0);
      sub_100013B7C(&v105);
      v65 = sub_1000212A8();
      v66 = v95;
      (*v64)(v95, v65, v16);
      v67 = v60;
      sub_100013104(v60, v28);
      v68 = sub_1000431C4();
      v69 = sub_1000434B4();
      sub_10001316C(v67, v28);
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v96 = v16;
        v71 = v68;
        v72 = v28;
        v73 = v70;
        v74 = swift_slowAlloc();
        v105 = v74;
        *v73 = 67109378;
        *(v73 + 4) = v99;
        *(v73 + 8) = 2082;
        v75 = sub_1000137B0(v67, v72);
        v77 = v30;
        v78 = sub_100015730(v75, v76, &v105);

        *(v73 + 10) = v78;
        _os_log_impl(&_mh_execute_header, v71, v69, "No launch warning present: %u, %{public}s", v73, 0x12u);
        sub_100013B7C(v74);

        sub_10001316C(v31, v77);

        (*(v93 + 8))(v95, v96);
      }

      else
      {

        sub_10001316C(v31, v30);

        (*(v93 + 8))(v66, v16);
      }

      v40 = 1;
    }
  }

  else
  {
    v97 = v30;
    v36 = sub_1000212A8();
    (*(v17 + 16))(v21, v36, v16);
    v37 = sub_1000431C4();
    v38 = sub_1000434A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "No bloom filter configured.", v39, 2u);
    }

    sub_10001316C(v31, v97);

    (*(v17 + 8))(v21, v16);
    v40 = 1;
  }

  v62 = v101;
  return (*(v102 + 56))(v62, v40, 1, v103);
}

uint64_t sub_100037A20()
{
  v1 = v0;
  v2 = sub_100013A34(&qword_100066ED0, &unk_1000484F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v338 = &v302 - v4;
  v337 = type metadata accessor for DocumentCheckerRecord(0);
  v336 = *(v337 - 8);
  v5 = *(v336 + 64);
  __chkstk_darwin(v337);
  v331 = &v302 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_1000431B4();
  v343 = *(v332 - 8);
  v7 = *(v343 + 64);
  __chkstk_darwin(v332);
  v325 = &v302 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100013A34(&qword_100067210, &unk_100048910);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v329 = &v302 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v328 = &v302 - v14;
  v15 = __chkstk_darwin(v13);
  v327 = &v302 - v16;
  __chkstk_darwin(v15);
  v345 = &v302 - v17;
  v342 = sub_100042F54();
  v340 = *(v342 - 8);
  v18 = *(v340 + 64);
  __chkstk_darwin(v342);
  v341 = &v302 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_100043004();
  v351 = *(v358 - 1);
  v20 = *(v351 + 64);
  v21 = __chkstk_darwin(v358);
  v339 = &v302 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v318 = &v302 - v24;
  v25 = __chkstk_darwin(v23);
  v322 = &v302 - v26;
  v27 = __chkstk_darwin(v25);
  v344 = &v302 - v28;
  __chkstk_darwin(v27);
  v346 = &v302 - v29;
  v359 = sub_1000431E4();
  v356 = *(v359 - 8);
  v30 = *(v356 + 64);
  v31 = __chkstk_darwin(v359);
  v330 = &v302 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v321 = &v302 - v34;
  v35 = __chkstk_darwin(v33);
  v326 = &v302 - v36;
  v37 = __chkstk_darwin(v35);
  v323 = &v302 - v38;
  v39 = __chkstk_darwin(v37);
  v333 = &v302 - v40;
  __chkstk_darwin(v39);
  v335 = &v302 - v41;
  v42 = sub_100013A34(&qword_100066ED8, &unk_100048D00);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v302 - v44;
  v353 = type metadata accessor for BloomFilterRecord(0);
  v347 = *(v353 - 1);
  v46 = *(v347 + 64);
  v47 = __chkstk_darwin(v353);
  v320 = &v302 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v334 = (&v302 - v50);
  __chkstk_darwin(v49);
  v352 = &v302 - v51;
  v348 = type metadata accessor for BaseZoneSyncResult(0);
  v52 = *(*(v348 - 8) + 64);
  v53 = __chkstk_darwin(v348);
  v55 = &v302 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v53);
  v58 = &v302 - v57;
  __chkstk_darwin(v56);
  v60 = &v302 - v59;
  v61 = swift_allocObject();
  v360 = v61;
  *(v61 + 16) = 0;
  v319 = v61 + 16;
  v62 = swift_allocObject();
  v361 = v62;
  *(v62 + 16) = 0;
  v324 = (v62 + 16);
  v63 = *(*v0 + 152);
  v354 = *v0 + 152;
  v355 = v63;
  v64 = v63();
  v65 = sub_10001AFF8();
  v67 = v66;

  v68 = *(*v1 + 200);
  v69 = *v1 + 200;
  v362 = v1;
  v350 = v68;
  v349 = v69;
  v68(&v365);
  v71 = v367;
  v70 = v368;
  sub_100013B38(&v365, v367);
  v72 = v357;
  (*(v70 + 16))(v65, v67, v71, v70);
  if (v72)
  {
    sub_100013158(v65, v67);
    sub_100013B7C(&v365);
    v364 = v72;
    swift_errorRetain();
    sub_100013A34(&qword_100066690, &qword_100048510);
    if (!swift_dynamicCast())
    {
    }

    v74 = v362;
    v75 = (v355)(v73);
    sub_10001B038();

    v350(&v365);
    v76 = v367;
    v77 = v368;
    sub_100013B38(&v365, v367);
    (*(v77 + 16))(0, 0xF000000000000000, v76, v77);
    v78 = 0;
    v317 = v72;
    v80 = v60;
    sub_10003D19C(v55, v60, type metadata accessor for BaseZoneSyncResult);
    sub_100013B7C(&v365);
  }

  else
  {
    sub_100013158(v65, v67);
    sub_10003D19C(v58, v60, type metadata accessor for BaseZoneSyncResult);
    sub_100013B7C(&v365);
    v317 = 0;
    v78 = 0;
    v80 = v60;
    v74 = v362;
  }

  sub_100029070(v80, v45, &qword_100066ED8, &unk_100048D00);
  LODWORD(v357) = (*(v347 + 48))(v45, 1, v353);
  v81 = v358;
  v82 = v359;
  v83 = v356;
  if (v357 == 1)
  {
    sub_100029814(v45, &qword_100066ED8, &unk_100048D00);
  }

  else
  {
    v314 = 0;
    v347 = v80;
    v84 = v352;
    sub_10003D19C(v45, v352, type metadata accessor for BloomFilterRecord);
    v85 = sub_1000211D4();
    v86 = *(v83 + 16);
    v87 = v335;
    v316 = v83 + 16;
    v315 = v86;
    v86(v335, v85, v82);
    v88 = v334;
    sub_10003D830(v84, v334, type metadata accessor for BloomFilterRecord);
    v89 = sub_1000431C4();
    v90 = sub_1000434B4();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v365 = v92;
      *v91 = 136446210;
      v93 = v353;
      v94 = (v88 + v353[9]);
      v95 = *v94;
      v96 = v94[1];

      sub_10003D898(v88, type metadata accessor for BloomFilterRecord);
      v97 = sub_100015730(v95, v96, &v365);
      v98 = v356;

      *(v91 + 4) = v97;
      v74 = v362;
      _os_log_impl(&_mh_execute_header, v89, v90, "Setting up new base filter: %{public}s", v91, 0xCu);
      sub_100013B7C(v92);

      v82 = v359;
      v84 = v352;

      v335 = *(v98 + 8);
      v99 = (v335)(v87, v82);
      v100 = v345;
    }

    else
    {

      sub_10003D898(v88, type metadata accessor for BloomFilterRecord);
      v335 = *(v83 + 8);
      v99 = (v335)(v87, v82);
      v100 = v345;
      v93 = v353;
    }

    v131 = v355;
    v132 = (v355)(v99);
    sub_10001B250();

    v133 = v131();
    v134 = (v84 + v93[7]);
    v135 = v134[1];
    v313 = *v134;
    v312 = v135;
    sub_10001B354();

    v136 = v131();
    v137 = (v84 + v93[8]);
    v138 = v137[1];
    v311 = *v137;
    v310 = v138;
    sub_10001B0BC();

    v139 = (*(*v74 + 176))();
    if (v139)
    {
      v140 = v139;
      v141 = sub_1000212A8();
      v142 = v333;
      v315(v333, v141, v82);

      v143 = sub_1000431C4();
      v144 = sub_100043494();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v334 = swift_slowAlloc();
        v365 = v334;
        *v145 = 136446210;
        v146 = v351;
        v147 = v346;
        v148 = v358;
        (*(v351 + 16))(v346, *(v140 + 40) + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url, v358);
        v149 = sub_100042FC4();
        v151 = v150;
        (*(v146 + 8))(v147, v148);
        v152 = sub_100015730(v149, v151, &v365);

        *(v145 + 4) = v152;
        _os_log_impl(&_mh_execute_header, v143, v144, "Removing old bloom filter: %{public}s", v145, 0xCu);
        sub_100013B7C(v334);

        (v335)(v333, v359);
      }

      else
      {

        (v335)(v142, v82);
        v148 = v358;
        v146 = v351;
        v147 = v346;
      }

      v153 = [objc_opt_self() defaultManager];
      (*(v146 + 16))(v147, *(v140 + 40) + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url, v148);
      sub_100042F84(v154);
      v156 = v155;
      (*(v146 + 8))(v147, v148);
      v365 = 0;
      v157 = [v153 removeItemAtURL:v156 error:&v365];

      v74 = v362;
      if (!v157)
      {
        v185 = v365;
        sub_100042F44();

        swift_willThrow();

        v186 = v347;
LABEL_57:
        sub_10003D898(v186, type metadata accessor for BaseZoneSyncResult);
        v234 = type metadata accessor for BloomFilterRecord;
        v235 = v352;
        goto LABEL_65;
      }

      v158 = v365;

      v100 = v345;
      v93 = v353;
    }

    v159 = (*v74 + 128);
    v160 = v346;
    v309 = *v159;
    v308 = v159;
    v309();
    v365 = 0x6C69666D6F6F6C62;
    v366 = 0xEF6E69622E726574;
    v161 = v340;
    v162 = *(v340 + 104);
    v163 = v341;
    v307 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v164 = v342;
    v306 = v162;
    v162(v341);
    v305 = sub_10003CF7C();
    sub_100042FF4();
    v304 = *(v161 + 8);
    v304(v163, v164);
    v165 = *(v351 + 8);
    v334 = (v351 + 8);
    v333 = v165;
    (v165)(v160, v358);
    v166 = v343;
    v167 = v332;
    (*(v343 + 56))(v100, 1, 1, v332);
    v168 = (v352 + v93[12]);
    v169 = v168[1];
    if (v169)
    {
      v170 = *v168;
      v171 = v168[1];

      v172 = v327;
      v303 = v170;
      sub_10001C014(v170, v169, v327);
      sub_100029814(v100, &qword_100067210, &unk_100048910);
      sub_10003D30C(v172, v100);
      v166 = v343;
      v173 = v328;
      sub_100029070(v100, v328, &qword_100067210, &unk_100048910);
      if ((*(v166 + 48))(v173, 1, v167) == 1)
      {
        sub_100029814(v173, &qword_100067210, &unk_100048910);
        v174 = sub_1000212A8();
        v175 = v323;
        v176 = v359;
        v315(v323, v174, v359);

        v177 = sub_1000431C4();
        v178 = sub_1000434A4();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v365 = v180;
          *v179 = 136446210;
          v181 = v303;
          *(v179 + 4) = sub_100015730(v303, v169, &v365);
          _os_log_impl(&_mh_execute_header, v177, v178, "Update asset had invalid compression type: %{public}s", v179, 0xCu);
          sub_100013B7C(v180);

          v100 = v345;

          (v335)(v175, v176);
          v182 = v347;
          v183 = v344;
          v184 = v333;
        }

        else
        {

          (v335)(v175, v176);
          v182 = v347;
          v183 = v344;
          v184 = v333;
          v181 = v303;
        }

        sub_10003D2B8();
        swift_allocError();
        *v236 = v181;
        *(v236 + 8) = v169;
        *(v236 + 16) = 1;
        swift_willThrow();
        sub_100029814(v100, &qword_100067210, &unk_100048910);
        v184(v183, v358);
LABEL_56:
        v186 = v182;
        goto LABEL_57;
      }

      sub_100029814(v173, &qword_100067210, &unk_100048910);
    }

    v187 = v329;
    sub_100029070(v100, v329, &qword_100067210, &unk_100048910);
    if ((*(v166 + 48))(v187, 1, v167) == 1)
    {
      sub_100029814(v187, &qword_100067210, &unk_100048910);
      v188 = [objc_opt_self() defaultManager];
      v189 = v352;
      sub_100042F84(v190);
      v192 = v191;
      v193 = v344;
      sub_100042F84(&v369);
      v195 = v194;
      v365 = 0;
      v196 = [v188 copyItemAtURL:v192 toURL:v194 error:&v365];

      if (!v196)
      {
        v233 = v365;
        sub_100042F44();

        swift_willThrow();
        sub_100029814(v345, &qword_100067210, &unk_100048910);
        (v333)(v193, v358);
        sub_10003D898(v347, type metadata accessor for BaseZoneSyncResult);
        v234 = type metadata accessor for BloomFilterRecord;
        v235 = v189;
LABEL_65:
        sub_10003D898(v235, v234);
      }

      v197 = v365;
      v198 = v347;
      v199 = v189;
    }

    else
    {
      v200 = v325;
      (*(v166 + 32))(v325, v187, v167);
      v199 = v352;
      v201 = v314;
      sub_10001C1AC(v352, v344, v200);
      v314 = v201;
      if (v201)
      {
        v202 = sub_1000212A8();
        v203 = v321;
        v204 = v359;
        v315(v321, v202, v359);
        v205 = v320;
        sub_10003D830(v199, v320, type metadata accessor for BloomFilterRecord);
        v206 = sub_1000431C4();
        v207 = sub_1000434A4();
        if (os_log_type_enabled(v206, v207))
        {
          v208 = swift_slowAlloc();
          v209 = swift_slowAlloc();
          v365 = v209;
          *v208 = 136446210;
          v210 = (v205 + v93[9]);
          v211 = v205;
          v212 = *v210;
          v213 = v210[1];

          sub_10003D898(v211, type metadata accessor for BloomFilterRecord);
          v214 = sub_100015730(v212, v213, &v365);
          v200 = v325;

          *(v208 + 4) = v214;
          _os_log_impl(&_mh_execute_header, v206, v207, "Base asset had invalid payload: %{public}s", v208, 0xCu);
          sub_100013B7C(v209);
          v100 = v345;
        }

        else
        {

          sub_10003D898(v205, type metadata accessor for BloomFilterRecord);
        }

        (v335)(v203, v204);
        v182 = v347;
        v255 = v344;
        sub_10003D2B8();
        swift_allocError();
        *v256 = 0;
        *(v256 + 8) = 0;
        *(v256 + 16) = 2;
        swift_willThrow();

        (*(v343 + 8))(v200, v332);
        sub_100029814(v100, &qword_100067210, &unk_100048910);
        (v333)(v255, v358);
        goto LABEL_56;
      }

      (*(v166 + 8))(v200, v167);
      v198 = v347;
      v193 = v344;
    }

    type metadata accessor for BloomFilterDiskStorage();
    v237 = v322;
    v238 = v358;
    (*(v351 + 16))(v322, v193, v358);
    v239 = v353;
    v240 = v314;
    v241 = sub_10001F8EC(v237, *(v199 + v353[6]));
    v343 = v240;
    if (v240)
    {
      sub_100029814(v345, &qword_100067210, &unk_100048910);
      (v333)(v193, v238);
      sub_10003D898(v198, type metadata accessor for BaseZoneSyncResult);
      sub_10003D898(v199, type metadata accessor for BloomFilterRecord);
    }

    v242 = v241;
    v335 = type metadata accessor for BloomFilter();
    v243 = (v199 + v239[5]);
    v244 = *v243;
    v245 = v243[1];
    v246 = v239[9];
    v247 = (v199 + v239[10]);
    v248 = v247[1];
    v332 = *v247;
    v249 = *(v199 + v239[11]);
    v250 = v199 + v246;
    v251 = *(v199 + v246);
    v252 = *(v250 + 8);

    sub_100013104(v244, v245);

    v253 = v343;
    v254 = sub_100021BA8(v242, v244, v245, v332, v248, v249, v251, v252);
    if (v253)
    {

      sub_100029814(v345, &qword_100067210, &unk_100048910);
      (v333)(v344, v358);
      sub_10003D898(v347, type metadata accessor for BaseZoneSyncResult);
      sub_10003D898(v352, type metadata accessor for BloomFilterRecord);
    }

    v278 = v254;
    v353 = v242;
    v279 = v346;
    v309();
    v365 = 0xD000000000000011;
    v366 = 0x800000010004CAF0;
    v280 = v341;
    v281 = v342;
    v306(v341, v307, v342);
    sub_100042FF4();
    v304(v280, v281);
    (v333)(v279, v358);
    v282 = sub_100042EA4();
    v283 = *(v282 + 48);
    v284 = *(v282 + 52);
    swift_allocObject();
    sub_100042E94();
    v365 = v278;
    sub_10003D274(&qword_100067218);
    v285 = sub_100042E84();
    v287 = v286;
    sub_1000430C4();
    v288 = v352;
    v289 = v362;
    v290 = *(*v362 + 184);
    v314 = 0;

    v343 = v278;
    v292 = v290(v291);
    v293 = v355;
    v294 = (v355)(v292);
    sub_10001B354();

    v295 = v293();
    v296 = v310;
    sub_10001B0BC();

    v297 = v293();
    sub_10001B250();

    v350(&v365);
    v298 = v288;
    v300 = v367;
    v299 = v368;
    sub_100013B38(&v365, v367);
    (*(v299 + 32))(v311, v296, v313, v312, v300, v299);
    sub_10001316C(v285, v287);

    v74 = v289;
    v81 = v358;

    v301 = v333;
    (v333)(v318, v81);
    sub_100029814(v345, &qword_100067210, &unk_100048910);
    v301(v344, v81);
    sub_10003D898(v298, type metadata accessor for BloomFilterRecord);
    sub_100013B7C(&v365);
    v80 = v347;
    v78 = v314;
  }

  v101 = v80 + *(v348 + 24);
  v102 = *(v101 + 8);
  if (v102 >> 60 != 15)
  {
    v103 = *v101;
    v104 = sub_100013104(*v101, *(v101 + 8));
    v105 = (v355)(v104);
    sub_10001B018();

    sub_100013158(v103, v102);
  }

  v106 = v338;
  sub_100029070(v80 + *(v348 + 20), v338, &qword_100066ED0, &unk_1000484F0);
  v107 = (*(v336 + 48))(v106, 1, v337);
  v108 = v339;
  if (v107 == 1)
  {
    v109 = sub_100029814(v106, &qword_100066ED0, &unk_1000484F0);
    v110 = 0;
LABEL_38:
    v127 = v357;
    goto LABEL_39;
  }

  v347 = v80;
  v111 = v106;
  v112 = v331;
  v113 = sub_10003D19C(v111, v331, type metadata accessor for DocumentCheckerRecord);
  v114 = v346;
  (*(*v74 + 128))(v113);
  v365 = 0xD00000000000001FLL;
  v366 = 0x800000010004CAD0;
  v115 = v340;
  v116 = v341;
  v117 = v342;
  (*(v340 + 104))(v341, enum case for URL.DirectoryHint.inferFromPath(_:), v342);
  sub_10003CF7C();
  sub_100042FF4();
  v118 = v116;
  v119 = v81;
  (*(v115 + 8))(v118, v117);
  v120 = v351 + 8;
  v121 = *(v351 + 8);
  v121(v114, v81);
  sub_100016920();
  if (!v78)
  {
    v121(v108, v81);
    v109 = sub_10003D898(v112, type metadata accessor for DocumentCheckerRecord);
    v110 = 256;
    v74 = v362;
    v80 = v347;
    goto LABEL_38;
  }

  v351 = v120;
  v122 = sub_1000212A8();
  v123 = v356;
  (*(v356 + 16))(v330, v122, v359);
  swift_errorRetain();
  v124 = sub_1000431C4();
  v125 = sub_1000434A4();

  v126 = os_log_type_enabled(v124, v125);
  v127 = v357;
  if (v126)
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v128 = 138543362;
    swift_errorRetain();
    v130 = _swift_stdlib_bridgeErrorToNSError();
    *(v128 + 4) = v130;
    *v129 = v130;
    _os_log_impl(&_mh_execute_header, v124, v125, "Failed to install document checker: %{public}@", v128, 0xCu);
    sub_100029814(v129, &qword_100067060, &qword_100046E00);
    v127 = v357;

    v108 = v339;
  }

  (*(v123 + 8))(v330, v359);
  v121(v108, v119);
  v109 = sub_10003D898(v331, type metadata accessor for DocumentCheckerRecord);
  v110 = 0;
  v78 = 0;
  v74 = v362;
  v80 = v347;
LABEL_39:
  v215 = (*(*v74 + 176))(v109);
  if (v215)
  {
    v216 = v215;
    LODWORD(v358) = v110;
    v217 = swift_allocObject();
    v218 = v360;
    v217[2] = v361;
    v217[3] = v74;
    v217[4] = v216;
    v217[5] = v218;

    v220 = (v355)(v219);
    v221 = sub_10001B0D8();
    v223 = v222;

    v350(&v365);
    v224 = v367;
    v225 = v368;
    sub_100013B38(&v365, v367);
    (*(v225 + 24))(sub_10003D254, v217, v221, v223, v224, v225);
    if (v78)
    {
      sub_100013158(v221, v223);
      sub_100013B7C(&v365);
      v364 = v78;
      swift_errorRetain();
      sub_100013A34(&qword_100066690, &qword_100048510);
      if (!swift_dynamicCast())
      {
        sub_10003D898(v80, type metadata accessor for BaseZoneSyncResult);
      }

      v229 = (v355)(v228);
      sub_10001B250();

      v350(&v365);
      v230 = v367;
      v231 = v368;
      sub_100013B38(&v365, v367);
      (*(v231 + 24))(sub_10003D254, v217, 0, 0xF000000000000000, v230, v231);
      v258 = v257;
      v353 = v259;
      sub_100013B7C(&v365);
    }

    else
    {
      v258 = v227;
      v353 = v226;
      sub_100013158(v221, v223);
      sub_100013B7C(&v365);
    }

    v260 = v324;
    swift_beginAccess();
    v261 = *v260;
    v262 = v359;
    v263 = v326;
    if (*v260)
    {
      v362 = v258;
      v264 = v261;
      swift_errorRetain();
      v265 = sub_1000212A8();
      v266 = v356;
      (*(v356 + 16))(v263, v265, v262);
      swift_errorRetain();
      v267 = sub_1000431C4();
      v268 = sub_1000434A4();
      v343 = v264;

      if (os_log_type_enabled(v267, v268))
      {
        v269 = swift_slowAlloc();
        v358 = swift_slowAlloc();
        v364 = v358;
        *v269 = 136446210;
        v363 = v343;
        swift_errorRetain();
        sub_100013A34(&qword_100066690, &qword_100048510);
        v270 = sub_100043364();
        v272 = v80;
        v273 = sub_100015730(v270, v271, &v364);

        *(v269 + 4) = v273;
        v80 = v272;
        _os_log_impl(&_mh_execute_header, v267, v268, "Update entry sync error: %{public}s", v269, 0xCu);
        sub_100013B7C(v358);

        (*(v266 + 8))(v326, v359);
      }

      else
      {

        (*(v266 + 8))(v263, v262);
      }

      swift_willThrow();

      sub_100013158(v353, v362);

      v234 = type metadata accessor for BaseZoneSyncResult;
      v235 = v80;
      goto LABEL_65;
    }

    if (v258 >> 60 == 15)
    {
      sub_10003D898(v80, type metadata accessor for BaseZoneSyncResult);
    }

    else
    {
      v274 = v258;
      v275 = v355();
      v276 = v353;
      sub_10001B194();

      sub_100013158(v276, v274);

      sub_10003D898(v80, type metadata accessor for BaseZoneSyncResult);
    }

    swift_beginAccess();
    v277 = *(v360 + 16);

    v127 = v357;
    v110 = v358;
  }

  else
  {
    sub_10003D898(v80, type metadata accessor for BaseZoneSyncResult);
    v232 = *(v360 + 16);
  }

  return v110 | (v127 != 1);
}

uint64_t sub_10003A4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v127 = a5;
  v128 = a4;
  v132 = a1;
  v133 = a3;
  v6 = sub_1000431B4();
  v7 = *(v6 - 8);
  v130 = v6;
  v131 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v129 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100013A34(&qword_100067210, &unk_100048910);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v115 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v115 - v19;
  __chkstk_darwin(v18);
  v22 = &v115 - v21;
  v23 = sub_1000431E4();
  v134 = *(v23 - 8);
  v24 = *(v134 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v115 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v115 - v32;
  __chkstk_darwin(v31);
  v135 = &v115 - v34;
  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    return result;
  }

  v123 = v20;
  v120 = v17;
  v121 = v14;
  v118 = v30;
  v122 = v33;
  v117 = v27;
  v125 = v22;
  v119 = a2;
  v36 = sub_1000211D4();
  v37 = v134;
  v124 = *(v134 + 16);
  v124(v135, v36, v23);
  v38 = v132;
  sub_10003D8F8(v132, v137);
  v39 = sub_1000431C4();
  v40 = sub_1000434B4();
  v41 = os_log_type_enabled(v39, v40);
  v126 = v23;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v137[0] = v43;
    *v42 = 134218242;
    *(v42 + 4) = *v38;
    sub_10003D954(v38);
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_100015730(v38[4], v38[5], v137);
    _os_log_impl(&_mh_execute_header, v39, v40, "Merging in bloom filter update: %lld for filter %{public}s", v42, 0x16u);
    sub_100013B7C(v43);

    v44 = *(v37 + 8);
    v45 = v135;
    v46 = v126;
  }

  else
  {
    sub_10003D954(v38);

    v44 = *(v37 + 8);
    v45 = v135;
    v46 = v23;
  }

  v135 = v44;
  (v44)(v45, v46);
  v48 = v38[4];
  v47 = v38[5];
  v49 = *(*v133 + 176);

  v51 = (v49)(v50);
  if (!v51)
  {
    v116 = v48;
    v133 = v49;

    goto LABEL_16;
  }

  v53 = *(v51 + 16);
  v52 = *(v51 + 24);

  if (v48 != v53 || v47 != v52)
  {
    v133 = v49;
    v116 = v48;
    v56 = sub_1000437F4();

    v54 = v125;
    v55 = v123;
    if (v56)
    {
      goto LABEL_11;
    }

LABEL_16:
    v77 = sub_1000212A8();
    v78 = v122;
    v79 = v126;
    v124(v122, v77, v126);
    sub_10003D8F8(v38, v137);

    v80 = sub_1000431C4();
    v81 = sub_1000434A4();
    sub_10003D954(v38);

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v82 = 136446466;
      *(v82 + 4) = sub_100015730(v116, v47, &v138);
      *(v82 + 12) = 2082;
      v83 = v133();
      if (v83)
      {
        v84 = *(v83 + 16);
        v85 = *(v83 + 24);
      }

      else
      {
        v84 = 0;
        v85 = 0;
      }

      v137[0] = v84;
      v137[1] = v85;
      sub_100013A34(&qword_100066D88, &qword_100048210);
      v98 = sub_100043364();
      v100 = sub_100015730(v98, v99, &v138);

      *(v82 + 14) = v100;
      _os_log_impl(&_mh_execute_header, v80, v81, "Update asset had incorrect ID: %{public}s, %{public}s", v82, 0x16u);
      swift_arrayDestroy();

      return (v135)(v78, v126);
    }

    else
    {

      return (v135)(v78, v79);
    }
  }

  v54 = v125;
  v55 = v123;
LABEL_11:
  v58 = v130;
  v57 = v131;
  (*(v131 + 56))(v54, 1, 1, v130);
  v59 = v38[7];
  v60 = v121;
  if (v59)
  {
    v61 = v54;
    v62 = v38[6];
    v63 = v38[7];

    sub_10001C014(v62, v59, v55);
    sub_100029814(v61, &qword_100067210, &unk_100048910);
    sub_10003D30C(v55, v61);
    v64 = v61;
    v65 = v120;
    v58 = v130;
    v57 = v131;
    sub_100029070(v64, v120, &qword_100067210, &unk_100048910);
    if ((*(v57 + 48))(v65, 1, v58) == 1)
    {
      sub_100029814(v65, &qword_100067210, &unk_100048910);
      v66 = sub_1000212A8();
      v67 = v118;
      v68 = v126;
      v124(v118, v66, v126);

      v69 = sub_1000431C4();
      v70 = sub_1000434A4();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v137[0] = v72;
        *v71 = 136446210;
        *(v71 + 4) = sub_100015730(v62, v59, v137);
        _os_log_impl(&_mh_execute_header, v69, v70, "Update asset had invalid compression type: %{public}s", v71, 0xCu);
        sub_100013B7C(v72);
      }

      (v135)(v67, v68);
      v73 = v119;
      sub_10003D2B8();
      v74 = swift_allocError();
      *v75 = v62;
      *(v75 + 8) = v59;
      *(v75 + 16) = 1;
      sub_100029814(v125, &qword_100067210, &unk_100048910);
      swift_beginAccess();
      v76 = *(v73 + 16);
      *(v73 + 16) = v74;
    }

    sub_100029814(v65, &qword_100067210, &unk_100048910);
    v54 = v125;
  }

  v87 = v38[1];
  v86 = v38[2];
  sub_100029070(v54, v60, &qword_100067210, &unk_100048910);
  if ((*(v57 + 48))(v60, 1, v58) == 1)
  {
    sub_100013104(v87, v86);
    sub_100029814(v60, &qword_100067210, &unk_100048910);
    goto LABEL_29;
  }

  v88 = v60;
  v89 = v129;
  (*(v57 + 32))(v129, v88, v58);
  sub_100013104(v87, v86);
  v90 = v136;
  v91 = sub_10001C90C(v87, v86, v89);
  if (!v90)
  {
    v101 = v91;
    v102 = v57;
    v103 = v92;
    v136 = 0;
    (*(v102 + 8))(v89, v58);
    sub_10001316C(v87, v86);
    v87 = v101;
    v86 = v103;
LABEL_29:
    sub_100013104(v87, v86);
    v104 = v136;
    v105 = sub_100018C84(v87, v86);
    if (v104)
    {
      sub_100029814(v54, &qword_100067210, &unk_100048910);
      return sub_10001316C(v87, v86);
    }

    else
    {
      sub_100018CEC(v105);
      sub_100029814(v54, &qword_100067210, &unk_100048910);

      sub_10001316C(v87, v86);
      v106 = v127;
      result = swift_beginAccess();
      v107 = *(v106 + 16);
      v108 = __OFADD__(v107, 1);
      v109 = v107 + 1;
      if (v108)
      {
        __break(1u);
      }

      else
      {
        *(v106 + 16) = v109;
      }
    }

    return result;
  }

  v93 = sub_1000212A8();
  v94 = v117;
  v124(v117, v93, v126);
  sub_10003D8F8(v38, v137);
  v95 = sub_1000431C4();
  v96 = sub_1000434A4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 134217984;
    *(v97 + 4) = *v38;
    sub_10003D954(v38);
    _os_log_impl(&_mh_execute_header, v95, v96, "Update asset %lld had invalid compressed data", v97, 0xCu);
    v58 = v130;
  }

  else
  {
    sub_10003D954(v38);
  }

  v110 = v119;
  v111 = v129;

  (v135)(v94, v126);
  sub_10003D2B8();
  v112 = swift_allocError();
  *v113 = 0;
  *(v113 + 8) = 0;
  *(v113 + 16) = 2;
  sub_10001316C(v87, v86);
  (*(v131 + 8))(v111, v58);
  sub_100029814(v54, &qword_100067210, &unk_100048910);
  swift_beginAccess();
  v114 = *(v110 + 16);
  *(v110 + 16) = v112;
}

void *sub_10003B1A8()
{
  v10 = _swiftEmptyArrayStorage;
  (*(*v0 + 224))(v7);
  v1 = v8;
  v2 = v9;
  sub_100013B38(v7, v8);
  v5 = v0;
  v6 = &v10;
  (*(v2 + 8))(sub_10003D39C, &v4, v1, v2);
  sub_100013B7C(v7);
  return v10;
}

void sub_10003B270(uint64_t a1, uint64_t a2, size_t *a3)
{
  v175 = a3;
  v173 = type metadata accessor for LaunchWarningController.NewLaunchWarning(0);
  v174 = *(v173 - 8);
  v5 = *(v174 + 64);
  __chkstk_darwin(v173);
  v176 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s18LaunchWarningEntryVMa();
  v194 = *(v7 - 8);
  v195 = v7;
  v8 = *(v194 + 64);
  v9 = __chkstk_darwin(v7);
  v177 = (&v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v178 = (&v172 - v11);
  v12 = sub_100013A34(&qword_100066E80, &qword_1000483E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v193 = &v172 - v14;
  v190 = type metadata accessor for LaunchWarningDetails();
  v189 = *(v190 - 8);
  v15 = *(v189 + 64);
  v16 = __chkstk_darwin(v190);
  v179 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v185 = &v172 - v19;
  __chkstk_darwin(v18);
  v192 = &v172 - v20;
  v21 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v186 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v198 = &v172 - v25;
  v26 = type metadata accessor for AppRecord(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v197 = (&v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __chkstk_darwin(v28);
  v183 = &v172 - v31;
  v32 = __chkstk_darwin(v30);
  v180 = &v172 - v33;
  v34 = __chkstk_darwin(v32);
  v184 = &v172 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v172 - v37;
  __chkstk_darwin(v36);
  v40 = &v172 - v39;
  v41 = sub_1000431E4();
  v42 = *(v41 - 8);
  v43 = v42[8];
  v44 = __chkstk_darwin(v41);
  v196 = &v172 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v187 = &v172 - v47;
  v48 = __chkstk_darwin(v46);
  v181 = &v172 - v49;
  v50 = __chkstk_darwin(v48);
  v182 = &v172 - v51;
  v52 = __chkstk_darwin(v50);
  v188 = &v172 - v53;
  __chkstk_darwin(v52);
  v55 = &v172 - v54;
  v56 = sub_1000212A8();
  v57 = v42[2];
  v199 = v42 + 2;
  v200 = v56;
  v201 = v57;
  (v57)(v55);
  v205 = a1;
  sub_10003D830(a1, v40, type metadata accessor for AppRecord);
  v58 = sub_1000431C4();
  v59 = sub_100043494();
  v60 = os_log_type_enabled(v58, v59);
  v203 = a2;
  v204 = v41;
  v202 = v42;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v206 = v62;
    *v61 = 136446210;
    sub_10003D830(v40, v38, type metadata accessor for AppRecord);
    v63 = sub_100043364();
    v65 = v64;
    sub_10003D898(v40, type metadata accessor for AppRecord);
    v66 = sub_100015730(v63, v65, &v206);

    *(v61 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "Visiting application: %{public}s", v61, 0xCu);
    sub_100013B7C(v62);
    v41 = v204;

    v42 = v202;
  }

  else
  {

    sub_10003D898(v40, type metadata accessor for AppRecord);
  }

  v67 = v42[1];
  v67(v55, v41);
  v68 = v205;
  v69 = (v205 + *(v26 + 36));
  v70 = v69[2];
  if (v70 >> 60 == 15)
  {
    v71 = v196;
    v201(v196, v200, v41);
    v72 = v68;
    v73 = v71;
    v74 = v197;
    sub_10003D830(v72, v197, type metadata accessor for AppRecord);
    v75 = sub_1000431C4();
    v76 = sub_100043494();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v191 = v67;
      v78 = v77;
      v79 = swift_slowAlloc();
      v206 = v79;
      *v78 = 136446210;
      v80 = sub_100042FC4();
      v81 = v74;
      v83 = v82;
      sub_10003D898(v81, type metadata accessor for AppRecord);
      v84 = sub_100015730(v80, v83, &v206);

      *(v78 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v75, v76, "Unable to find cdhash for %{public}s", v78, 0xCu);
      sub_100013B7C(v79);

      v191(v73, v204);
    }

    else
    {

      sub_10003D898(v74, type metadata accessor for AppRecord);
      v67(v71, v41);
    }
  }

  else
  {
    v191 = v67;
    v85 = *v69;
    v86 = v69[1];
    v87 = *(*v203 + 152);
    v88 = *v203 + 152;
    v89 = sub_100013104(v86, v70);
    v197 = v87;
    v90 = v87(v89);
    sub_100013104(v86, v70);
    v91 = v198;
    v92 = v85;
    v93 = v209;
    sub_100028074(v85, v86, v70, v198);
    v209 = v93;
    if (v93)
    {
      sub_10003D814(v85, v86, v70);
      sub_10003D814(v85, v86, v70);
    }

    else
    {
      v196 = v88;
      sub_10003D814(v85, v86, v70);

      if ((*(v194 + 48))(v91, 1, v195) == 1)
      {
        v94 = v68;
        sub_100029814(v91, &qword_100066DA0, &qword_1000482E0);
        v95 = *(*v203 + 280);
        sub_100013104(v86, v70);
        v96 = v193;
        v97 = v209;
        v95(v86, v70, v85);
        sub_10003D814(v85, v86, v70);
        v98 = v70;
        v99 = v97;
        if (v97)
        {
          sub_10003D814(v85, v86, v98);
        }

        else if ((*(v189 + 48))(v96, 1, v190) == 1)
        {
          v209 = 0;
          sub_100029814(v96, &qword_100066E80, &qword_1000483E0);
          v100 = v187;
          v101 = v204;
          v201(v187, v200, v204);
          v102 = v183;
          sub_10003D830(v94, v183, type metadata accessor for AppRecord);
          v103 = sub_1000431C4();
          v104 = sub_100043494();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v198 = v86;
            v106 = v92;
            v107 = v102;
            v108 = v105;
            v109 = swift_slowAlloc();
            v206 = v109;
            *v108 = 136446210;
            v110 = sub_100042FC4();
            v112 = v111;
            sub_10003D898(v107, type metadata accessor for AppRecord);
            v113 = sub_100015730(v110, v112, &v206);

            *(v108 + 4) = v113;
            _os_log_impl(&_mh_execute_header, v103, v104, "Found no launch warning for %{public}s", v108, 0xCu);
            sub_100013B7C(v109);

            sub_10003D814(v106, v198, v98);
            v114 = v187;
            v115 = v204;
          }

          else
          {

            sub_10003D814(v92, v86, v98);
            sub_10003D898(v102, type metadata accessor for AppRecord);
            v114 = v100;
            v115 = v101;
          }

          v191(v114, v115);
        }

        else
        {
          v189 = v85;
          v198 = v86;
          v116 = v192;
          sub_10003D19C(v96, v192, type metadata accessor for LaunchWarningDetails);
          v117 = v188;
          v201(v188, v200, v204);
          v118 = v94;
          v119 = v184;
          sub_10003D830(v118, v184, type metadata accessor for AppRecord);
          v120 = v185;
          sub_10003D830(v116, v185, type metadata accessor for LaunchWarningDetails);
          v121 = sub_1000431C4();
          v122 = sub_1000434B4();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v209 = 0;
            v124 = v123;
            v206 = swift_slowAlloc();
            *v124 = 136446466;
            v125 = v122;
            v126 = sub_100042FC4();
            v128 = v127;
            sub_10003D898(v119, type metadata accessor for AppRecord);
            v129 = sub_100015730(v126, v128, &v206);

            *(v124 + 4) = v129;
            *(v124 + 12) = 2082;
            sub_10003D830(v120, v179, type metadata accessor for LaunchWarningDetails);
            v130 = sub_100043364();
            v132 = v131;
            sub_10003D898(v120, type metadata accessor for LaunchWarningDetails);
            v133 = sub_100015730(v130, v132, &v206);

            *(v124 + 14) = v133;
            _os_log_impl(&_mh_execute_header, v121, v125, "Found launch warning for %{public}s with details: %{public}s", v124, 0x16u);
            swift_arrayDestroy();

            v99 = v209;

            v134 = v188;
          }

          else
          {

            sub_10003D898(v120, type metadata accessor for LaunchWarningDetails);
            sub_10003D898(v119, type metadata accessor for AppRecord);
            v134 = v117;
          }

          v135 = v204;
          v136 = v191;
          v137 = (v191)(v134, v204);
          v138 = v186;
          v139 = v197(v137);
          sub_100028688(v192, v138);
          if (v99)
          {

            (*(v194 + 56))(v138, 1, 1, v195);
            sub_100029814(v138, &qword_100066DA0, &qword_1000482E0);
            v140 = v181;
            v201(v181, v200, v135);
            v141 = v180;
            sub_10003D830(v205, v180, type metadata accessor for AppRecord);
            v142 = v135;
            v143 = sub_1000431C4();
            v144 = sub_1000434A4();
            if (os_log_type_enabled(v143, v144))
            {
              v145 = v141;
              v146 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              v206 = v147;
              *v146 = 136446210;
              v148 = sub_100042FC4();
              v150 = v149;
              sub_10003D898(v145, type metadata accessor for AppRecord);
              v151 = sub_100015730(v148, v150, &v206);

              *(v146 + 4) = v151;
              _os_log_impl(&_mh_execute_header, v143, v144, "Error creating new launch warning for %{public}s", v146, 0xCu);
              sub_100013B7C(v147);

              sub_10003D814(v189, v198, v98);
              v191(v140, v204);
            }

            else
            {

              sub_10003D814(v189, v198, v98);
              sub_10003D898(v141, type metadata accessor for AppRecord);
              v136(v140, v142);
            }

            sub_10003D898(v192, type metadata accessor for LaunchWarningDetails);
          }

          else
          {
            v209 = 0;

            (*(v194 + 56))(v138, 0, 1, v195);
            v152 = v178;
            sub_10003D19C(v138, v178, _s18LaunchWarningEntryVMa);
            v201(v182, v200, v135);
            v153 = v177;
            sub_10003D830(v152, v177, _s18LaunchWarningEntryVMa);
            v154 = sub_1000431C4();
            v155 = sub_1000434B4();
            if (os_log_type_enabled(v154, v155))
            {
              v156 = swift_slowAlloc();
              *v156 = 134349056;
              v157 = v153;
              v158 = *v153;
              sub_10003D898(v157, _s18LaunchWarningEntryVMa);
              *(v156 + 4) = v158;
              _os_log_impl(&_mh_execute_header, v154, v155, "Created launch warning entry: %{public}llu", v156, 0xCu);
            }

            else
            {
              sub_10003D898(v153, _s18LaunchWarningEntryVMa);
            }

            v191(v182, v204);
            type metadata accessor for LaunchWarningMark();
            v159 = sub_1000213E0(*v152);
            (*(*v203 + 224))(&v206);
            v160 = v207;
            v161 = v208;
            sub_100013B38(&v206, v207);
            v162 = v205;
            v163 = v209;
            (*(v161 + 16))(v159, v205, v160, v161);
            if (v163)
            {

              sub_10003D814(v189, v198, v98);
              sub_10003D898(v152, _s18LaunchWarningEntryVMa);
              sub_10003D898(v192, type metadata accessor for LaunchWarningDetails);
              sub_100013B7C(&v206);
            }

            else
            {
              sub_100013B7C(&v206);
              v164 = v162;
              v165 = v176;
              sub_10003D830(v164, v176, type metadata accessor for AppRecord);
              sub_10003D830(v192, v165 + *(v173 + 20), type metadata accessor for LaunchWarningDetails);
              v166 = v175;
              v167 = *v175;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v166 = v167;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v167 = sub_10003CD8C(0, v167[2] + 1, 1, v167);
                *v166 = v167;
              }

              v170 = v167[2];
              v169 = v167[3];
              if (v170 >= v169 >> 1)
              {
                *v166 = sub_10003CD8C(v169 > 1, v170 + 1, 1, v167);
              }

              sub_10003D814(v189, v198, v98);
              sub_10003D898(v152, _s18LaunchWarningEntryVMa);
              sub_10003D898(v192, type metadata accessor for LaunchWarningDetails);
              v171 = *v166;
              *(v171 + 16) = v170 + 1;
              sub_10003D19C(v176, v171 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v170, type metadata accessor for LaunchWarningController.NewLaunchWarning);
            }
          }
        }
      }

      else
      {
        sub_10003D814(v85, v86, v70);
        sub_100029814(v91, &qword_100066DA0, &qword_1000482E0);
      }
    }
  }
}

uint64_t sub_10003C7E0(uint64_t a1)
{
  v3 = type metadata accessor for AppRecord(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v48 = sub_1000431E4();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v48);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - v15;
  (*(*v1 + 224))(v45, v14);
  v18 = v46;
  v17 = v47;
  sub_100013B38(v45, v46);
  v43 = v3;
  v19 = (*(v17 + 24))(*(a1 + *(v3 + 20)), *(a1 + *(v3 + 20) + 8), v18, v17);
  sub_100013B7C(v45);
  v20 = sub_1000212A8();
  v44 = v9;
  v21 = *(v9 + 16);
  if (v19)
  {
    v21(v16, v20, v48);
    sub_10003D830(a1, v8, type metadata accessor for AppRecord);
    v22 = sub_1000431C4();
    v23 = sub_1000434B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136446210;
      v26 = &v8[*(v43 + 20)];
      v27 = *v26;
      v28 = v26[1];

      sub_10003D898(v8, type metadata accessor for AppRecord);
      v29 = sub_100015730(v27, v28, v45);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully terminated app: %{public}s", v24, 0xCu);
      sub_100013B7C(v25);
    }

    else
    {

      sub_10003D898(v8, type metadata accessor for AppRecord);
    }

    (*(v44 + 8))(v16, v48);
  }

  else
  {
    v30 = v13;
    v21(v13, v20, v48);
    v31 = v42;
    sub_10003D830(a1, v42, type metadata accessor for AppRecord);
    v32 = sub_1000431C4();
    v33 = sub_1000434A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45[0] = v35;
      *v34 = 136446210;
      v36 = (v31 + *(v43 + 20));
      v37 = *v36;
      v38 = v36[1];

      sub_10003D898(v31, type metadata accessor for AppRecord);
      v39 = sub_100015730(v37, v38, v45);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to terminate app: %{public}s", v34, 0xCu);
      sub_100013B7C(v35);
    }

    else
    {

      sub_10003D898(v31, type metadata accessor for AppRecord);
    }

    (*(v44 + 8))(v30, v48);
  }

  return v19 & 1;
}

uint64_t sub_10003CCA0()
{
  v1 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_baseURL;
  v2 = sub_100043004();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_filter);

  sub_100013B7C((v0 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_cloudkit));
  sub_100013B7C((v0 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_appManager));
  sub_100013B7C((v0 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_metrics));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

size_t sub_10003CD8C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100013A34(&qword_100067420, &unk_100048A80);
  v10 = *(type metadata accessor for LaunchWarningController.NewLaunchWarning(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LaunchWarningController.NewLaunchWarning(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10003CF64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10003CF7C()
{
  result = qword_100067200;
  if (!qword_100067200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067200);
  }

  return result;
}

uint64_t sub_10003CFD0(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_filter;
  *(v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_filter) = 0;
  *(v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_db) = a1;
  swift_beginAccess();
  *(v4 + v8) = a2;
  sub_100029EB0(a3, v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_cloudkit);
  v9 = qword_10006A3A0;
  v10 = a1;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_100043004();
  v12 = sub_1000161D0(v11, qword_10006AA50);
  (*(*(v11 - 8) + 16))(v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_baseURL, v12, v11);
  v13 = type metadata accessor for AppManager();
  v14 = sub_100015538();
  v15 = (v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_appManager);
  v15[3] = v13;
  v15[4] = &off_10005E338;
  *v15 = v14;
  v18 = type metadata accessor for MetricReporter();
  v19 = &off_10005F9E8;
  *&v17 = sub_100015538();
  sub_100013B7C(a3);
  sub_10003CF64(&v17, v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_metrics);
  return v4;
}

uint64_t sub_10003D164()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003D204()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003D274(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BloomFilter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003D2B8()
{
  result = qword_100067220;
  if (!qword_100067220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067220);
  }

  return result;
}

uint64_t sub_10003D30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100067210, &unk_100048910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D3B8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10003D40C()
{
  result = sub_100043004();
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

__n128 initializeBufferWithCopyOfBuffer for LaunchWarningController.SyncResult(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LaunchWarningController.SyncResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
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

uint64_t storeEnumTagSinglePayload for LaunchWarningController.SyncResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10003D590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppRecord(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for LaunchWarningDetails();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003D694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AppRecord(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for LaunchWarningDetails();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10003D790()
{
  result = type metadata accessor for AppRecord(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LaunchWarningDetails();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003D814(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_10001316C(a2, a3);
  }

  return result;
}

uint64_t sub_10003D830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003D898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003EBC4();
  v5 = sub_100036344();

  return Error<>._code.getter(a1, a2, v4, v5);
}

void sub_10003DA04(__int16 a1, uint64_t a2, __int16 a3, double a4)
{
  v8 = sub_1000432E4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1 & 1;
  *(v9 + 17) = HIBYTE(a1) & 1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  *(v9 + 33) = HIBYTE(a3) & 1;
  *(v9 + 40) = a4;
  v11[4] = sub_10003DB38;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003DCF8;
  v11[3] = &unk_10005F880;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

unint64_t sub_10003DB38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v6 = *(v0 + 40);
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048A90;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000010004CCF0;
  *(inited + 48) = sub_100043434();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000010004CD10;
  *(inited + 72) = sub_100043434();
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x800000010004CD30;
  *(inited + 96) = sub_100043434();
  *(inited + 104) = 0x65746C694677656ELL;
  *(inited + 112) = 0xE900000000000072;
  *(inited + 120) = sub_100043434();
  *(inited + 128) = 0x70616C45656D6974;
  *(inited + 136) = 0xEB00000000646573;
  *(inited + 144) = sub_100043444();
  *(inited + 152) = 0x6F43657461647075;
  *(inited + 160) = 0xEB00000000746E75;
  *(inited + 168) = sub_100043454();
  v8 = sub_10003EC18(inited);
  swift_setDeallocating();
  sub_100013A34(&qword_100067508, &qword_100048CF0);
  swift_arrayDestroy();
  return v8;
}

Class sub_10003DCF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10003ED1C();
    v5.super.isa = sub_1000432A4().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_10003DD84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003DD9C(uint64_t a1, double a2)
{
  v4 = sub_1000432E4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_10003DEDC;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10003DCF8;
  v7[3] = &unk_10005F8D0;
  v6 = _Block_copy(v7);
  swift_errorRetain();

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_10003DEA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10003DEDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_100042F34();
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048AA0;
  *(inited + 32) = 1701080931;
  *(inited + 40) = 0xE400000000000000;
  [v3 code];
  *(inited + 48) = sub_100043454();
  *(inited + 56) = 0x6E69616D6F64;
  *(inited + 64) = 0xE600000000000000;
  result = [v3 domain];
  if (result)
  {
    *(inited + 72) = result;
    *(inited + 80) = 0x70616C45656D6974;
    *(inited + 88) = 0xEB00000000646573;
    *(inited + 96) = sub_100043444();
    v6 = sub_10003EC18(inited);
    swift_setDeallocating();
    sub_100013A34(&qword_100067508, &qword_100048CF0);
    swift_arrayDestroy();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003E020(int a1, uint64_t a2, unint64_t a3, char a4, char a5)
{
  v10 = sub_1000432E4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a5 & 1;
  *(v11 + 41) = a4;
  v13[4] = sub_10003E14C;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10003DCF8;
  v13[3] = &unk_10005F920;
  v12 = _Block_copy(v13);
  sub_100013104(a2, a3);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

unint64_t sub_10003E14C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048AB0;
  *(inited + 32) = 0x687361686463;
  *(inited + 40) = 0xE600000000000000;
  sub_1000137B0(v2, v3);
  v7 = sub_1000432E4();

  *(inited + 48) = v7;
  *(inited + 56) = 0x7954687361686463;
  *(inited + 64) = 0xEA00000000006570;
  *(inited + 72) = sub_1000438D4();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_100043454();
  *(inited + 104) = 0x74616E696D726574;
  *(inited + 112) = 0xEA00000000006465;
  *(inited + 120) = sub_100043434();
  v8 = sub_10003EC18(inited);
  swift_setDeallocating();
  sub_100013A34(&qword_100067508, &qword_100048CF0);
  swift_arrayDestroy();
  return v8;
}

void sub_10003E2B0(int a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000432E4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v9[4] = sub_10003E40C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10003DCF8;
  v9[3] = &unk_10005F970;
  v8 = _Block_copy(v9);
  sub_100013104(a2, a3);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

uint64_t sub_10003E3C8(uint64_t a1)
{
  sub_10001316C(*(v1 + 24), *(v1 + 32));

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_10003E40C()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048AC0;
  *(inited + 32) = 0x687361686463;
  *(inited + 40) = 0xE600000000000000;
  sub_1000137B0(v3, v2);
  v5 = sub_1000432E4();

  *(inited + 48) = v5;
  *(inited + 56) = 0x7954687361686463;
  *(inited + 64) = 0xEA00000000006570;
  *(inited + 72) = sub_1000438D4();
  v6 = sub_10003EC18(inited);
  swift_setDeallocating();
  sub_100013A34(&qword_100067508, &qword_100048CF0);
  swift_arrayDestroy();
  return v6;
}

void sub_10003E518(uint64_t a1, void *a2, char a3)
{
  v6 = sub_1000432E4();
  v8 = *a1;
  v7 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = v9;
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 56) = a2;
  *(v11 + 64) = a3 & 1;
  aBlock[4] = sub_10003E6CC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003DCF8;
  aBlock[3] = &unk_10005F9C0;
  v13 = _Block_copy(aBlock);
  v14 = v8;
  v15 = v7;
  v16 = v10;
  sub_10003E8F8(&v21, v18);
  sub_10003E8F8(&v20, v18);
  v17 = a2;

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

uint64_t sub_10003E66C()
{

  return _swift_deallocObject(v0, 65, 7);
}

id sub_10003E6CC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656E6961746E6F63;
  *(inited + 16) = xmmword_100048AD0;
  *(inited + 40) = 0xE900000000000072;
  v4 = [*(v0 + 16) containerIdentifier];
  if (v4)
  {
    v5 = v4;
    sub_100043314();
  }

  *(inited + 48) = sub_1000432E4();
  *(inited + 56) = 1701736314;
  *(inited + 64) = 0xE400000000000000;
  v6 = [*(v0 + 32) zoneID];
  result = [v6 zoneName];
  if (result)
  {
    v8 = result;

    *(inited + 72) = v8;
    *(inited + 80) = 0x795464726F636572;
    *(inited + 88) = 0xEA00000000006570;
    sub_100043554();
    *(inited + 96) = sub_1000432E4();
    *(inited + 104) = 0x444964726F636572;
    *(inited + 112) = 0xE800000000000000;
    v9 = [v1 recordID];
    result = [v9 recordName];
    if (result)
    {
      v10 = result;

      *(inited + 120) = v10;
      *(inited + 128) = 0x726F727265;
      *(inited + 136) = 0xE500000000000000;
      *(inited + 144) = sub_100043454();
      v11 = sub_10003EC18(inited);
      swift_setDeallocating();
      sub_100013A34(&qword_100067508, &qword_100048CF0);
      swift_arrayDestroy();
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066EE0, &qword_100048500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003E96C()
{
  result = qword_100067428;
  if (!qword_100067428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067428);
  }

  return result;
}

unint64_t sub_10003E9C4()
{
  result = qword_100067430;
  if (!qword_100067430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067430);
  }

  return result;
}

unint64_t sub_10003EBC4()
{
  result = qword_1000674F8;
  if (!qword_1000674F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000674F8);
  }

  return result;
}

unint64_t sub_10003EC18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100013A34(&qword_100067510, &qword_100048CF8);
    v3 = sub_1000436F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100018358(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003ED1C()
{
  result = qword_100067518;
  if (!qword_100067518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100067518);
  }

  return result;
}

int *sub_10003EDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = sub_100043004();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  result = type metadata accessor for BloomFilterRecord(0);
  v25 = (a9 + result[5]);
  *v25 = a2;
  v25[1] = a3;
  *(a9 + result[6]) = a4;
  v26 = (a9 + result[7]);
  *v26 = a5;
  v26[1] = a6;
  v27 = (a9 + result[8]);
  *v27 = a7;
  v27[1] = a8;
  v28 = (a9 + result[9]);
  *v28 = a10;
  v28[1] = a11;
  v29 = (a9 + result[10]);
  *v29 = a12;
  v29[1] = a13;
  *(a9 + result[11]) = a14;
  v30 = (a9 + result[12]);
  *v30 = a15;
  v30[1] = a16;
  return result;
}

uint64_t sub_10003EEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100043004();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_10003EF5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_10003EF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100035F58(a1, a5, &qword_100066ED8, &unk_100048D00);
  v9 = type metadata accessor for BaseZoneSyncResult(0);
  result = sub_100035F58(a2, a5 + *(v9 + 20), &qword_100066ED0, &unk_1000484F0);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

unint64_t sub_10003F028()
{
  result = qword_100067520;
  if (!qword_100067520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067520);
  }

  return result;
}

uint64_t sub_10003F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100043004();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003F164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100043004();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10003F220()
{
  sub_100043004();
  if (v0 <= 0x3F)
  {
    sub_10001600C(319, &qword_100066590);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10003F2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100043004();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003F370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100043004();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003F400()
{
  result = sub_100043004();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10003F46C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003F480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003F4C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003F53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100013A34(&qword_100066ED8, &unk_100048D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100013A34(&qword_100066ED0, &unk_1000484F0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10003F680(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100013A34(&qword_100066ED8, &unk_100048D00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100013A34(&qword_100066ED0, &unk_1000484F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10003F7B0()
{
  sub_10003F894(319, &qword_1000676A0, type metadata accessor for BloomFilterRecord);
  if (v0 <= 0x3F)
  {
    sub_10003F894(319, &unk_1000676A8, type metadata accessor for DocumentCheckerRecord);
    if (v1 <= 0x3F)
    {
      sub_10001600C(319, &qword_100066598);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003F894(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000435A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003F8E8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003F910(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t sub_10003F964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_10003F9C8(void *a1)
{
  if (![a1 caseInsensitiveCompare:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "fbe71da1-0834-4d49-9b41-d3fa7f9e4d4f")}])
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 20)
    {
      break;
    }

    v4 = [a1 caseInsensitiveCompare:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", (&off_10005FCD8)[v2 + 1])}];
    v2 = v3 + 1;
  }

  while (v4);
  return v3 < 0x14;
}

void sub_10003FAA4(sqlite3 **a1)
{
  sqlite3_errmsg(*a1);
  sqlite3_errcode(*a1);
  sub_100002F24();
  sub_100002F54(&_mh_execute_header, v2, v3, "SQL error '%{public}s' (%1d)", v4, v5, v6, v7, v8);
}

void sub_10003FC4C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = a2;
  sub_100002F04(&_mh_execute_header, a2, a3, "Unable to table row count for %{public}@: %d", *v3, *&v3[8], *&v3[16]);
}

void sub_10003FCC4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error opening DB: %d", v2, 8u);
}

void sub_10003FD3C()
{
  v0 = *__error();
  sub_10000328C();
  sub_100002F54(&_mh_execute_header, v1, v2, "unable to set filesystem permissions on db: %d, %s", v3, v4, v5, v6, v7);
}

void sub_10003FDBC()
{
  v0 = *__error();
  sub_10000328C();
  sub_100002F54(&_mh_execute_header, v1, v2, "unable to check filesystem permissions on db: %d, %s", v3, v4, v5, v6, v7);
}

void sub_10003FE3C()
{
  v0 = *__error();
  sub_10000328C();
  sub_100002F54(&_mh_execute_header, v1, v2, "unable to open file to update permissions: %d, %s", v3, v4, v5, v6, v7);
}

void sub_10003FF10(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Caller (pid %d) does not have required entitlement '%s'", v3, 0x12u);
}

void sub_10003FF98(NSObject *a1)
{
  v2 = *__error();
  v3 = 138412546;
  v4 = @"/private/var/db/MobileIdentityData";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Unable to create data directory '%@' (error %{errno}d)!", &v3, 0x12u);
}

void sub_1000400C4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Launch warning sync had error: %@", &v2, 0xCu);
}

void sub_100040324()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSDictionary *wl_MAECopyActivationRecordWithError(NSError *__autoreleasing *)"];
  [v0 handleFailureInFunction:v1 file:@"online_auth_agent.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100040478(uint64_t *a1)
{
  v1 = *a1;
  sub_100006718();
  sub_100006730(&_mh_execute_header, v2, v3, "Error banning profile %{public}@, %{public}@");
}

void sub_1000404E4(uint64_t *a1)
{
  v1 = *a1;
  sub_100006718();
  sub_100006730(&_mh_execute_header, v2, v3, "Error banning cdhash %{public}@, %{public}@");
}

void sub_100040844(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *MobileActivationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"online_auth_agent.m" lineNumber:66 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100040B68(int *a1)
{
  v6 = *a1;
  sub_10000670C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100040CA0(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't get device identity %{public}@", &v3, 0xCu);
}

void sub_100040D20(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create CMS blob, got error %d", v2, 8u);
}

void sub_100040EA8(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100008738(&_mh_execute_header, v2, v3, "Could not convert dictionary to JSON: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100040F9C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100008738(&_mh_execute_header, v2, v3, "session error: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100041024(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void sub_1000410E0(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create profiles table: %s", v3, v4, v5, v6, v7);
}

void sub_100041154(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create certificates table: %s", v3, v4, v5, v6, v7);
}

void sub_1000411C8(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create certificates index: %s", v3, v4, v5, v6, v7);
}

void sub_10004123C(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create certificates provisioning cache: %s", v3, v4, v5, v6, v7);
}

void sub_1000412B0(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create entitlements provisioning cache: %s", v3, v4, v5, v6, v7);
}

void sub_100041324(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create entitlements index: %s", v3, v4, v5, v6, v7);
}

void sub_100041398(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't add is_der to the profiles table: %s", v3, v4, v5, v6, v7);
}

void sub_10004140C(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the xml profiles table: %s", v3, v4, v5, v6, v7);
}

void sub_100041480(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't update is_beta column: %s", v3, v4, v5, v6, v7);
}

void sub_1000414F4(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the trusted team IDs table: %s", v3, v4, v5, v6, v7);
}

void sub_100041568(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Error searching for zero length signatures: %s", v3, v4, v5, v6, v7);
}

void sub_1000415DC(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't replace signature with nil: %s", v3, v4, v5, v6, v7);
}

void sub_100041650(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the team ID info table: %s", v3, v4, v5, v6, v7);
}

void sub_1000416C4(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't fetch trusted team ID info: %s", v3, v4, v5, v6, v7);
}

void sub_100041738(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't insert team ID info: %s", v3, v4, v5, v6, v7);
}

void sub_1000417AC(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the signing identities table: %s", v3, v4, v5, v6, v7);
}

void sub_100041820(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't fetch trusted signing identities from profiles: %s", v3, v4, v5, v6, v7);
}

void sub_100041894(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't fetch trusted signing identities from xml_profiles_cache: %s", v3, v4, v5, v6, v7);
}

void sub_100041908(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't insert into signing identities: %s", v3, v4, v5, v6, v7);
}

void sub_10004197C(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the online auth table: %s", v3, v4, v5, v6, v7);
}

void sub_1000419F0(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the banned profile UUIDs table: %s", v3, v4, v5, v6, v7);
}

void sub_100041A64(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the banned cdhashes table: %s", v3, v4, v5, v6, v7);
}

void sub_100041AD8(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't fetch single asterisk wildcard predicates: %s", v3, v4, v5, v6, v7);
}

void sub_100041B4C(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't insert new types for single asterisk wildcard predicates: %s", v3, v4, v5, v6, v7);
}

void sub_100041CA8(unsigned int *a1)
{
  v1 = *a1;
  sub_10000DBFC();
  sub_10000670C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100041D1C(unsigned int *a1)
{
  v1 = *a1;
  sub_10000DBFC();
  v5 = 2048;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Denylist entries offset %u is past denylist size %lld", v4, 0x12u);
}

void sub_100041DA4()
{
  v0 = *__error();
  sub_10000DBFC();
  sub_10000DC08(&_mh_execute_header, v1, v2, "Could not map denylist, error %{errno}d", v3, v4, v5, v6, v7);
}

void sub_100041EA4()
{
  v0 = *__error();
  sub_10000DBFC();
  sub_10000DC08(&_mh_execute_header, v1, v2, "Could not open denylist, error %{errno}d", v3, v4, v5, v6, v7);
}

void sub_100041F60()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041F9C()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042018()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042054(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not read in internal auth list, error %@", &v2, 0xCu);
}

void sub_100042198(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Skipping asset with NULL attributes (this should not happen).", buf, 2u);
}

void sub_1000421D8()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004229C()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000422D8()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042388()
{
  sub_1000105A4();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000423F8()
{
  sub_1000105A4();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042468()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000424A4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Size mismatch while copying denylist, %ld total, %lld copied.", &v4, 0x16u);
}

void sub_100042530()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10001056C();
  sub_10001055C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_1000425D0()
{
  v5 = *__error();
  sub_10001055C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042658()
{
  sub_100010598();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_1000426F0()
{
  sub_100010598();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100042788()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000427C4()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042800()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004283C()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042878()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10001056C();
  sub_10001055C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_100042918()
{
  sub_1000105A4();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042988()
{
  v5 = *__error();
  sub_10001055C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042A10()
{
  sub_100010598();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100042AA8()
{
  sub_100010598();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100042B40()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042B7C()
{
  sub_100010598();
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100042C14(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 URL];
  v8 = [v7 path];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "App revalidation: CDHash missing for %@", a1, 0xCu);
}

CFMutableDictionaryRef sub_100042D2C()
{
  connect = 0;
  result = IOServiceMatching("IOAESAccelerator");
  if (result)
  {
    v1 = result;
    CFRetain(result);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      CFRelease(v1);
      IOObjectRelease(v3);
      return connect;
    }

    else
    {
      CFRelease(v1);
      return 0;
    }
  }

  return result;
}