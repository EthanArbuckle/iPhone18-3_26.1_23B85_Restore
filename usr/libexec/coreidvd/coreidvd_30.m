void sub_1002FC390(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100576B70(a2, a3);
  if (!v3)
  {
    v13 = v12;
    if (v12)
    {
      [*(a1 + 16) deleteObject:v12];
      sub_100576468();
      defaultLogger()();

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v22 = v15;
        v17 = v16;
        v18 = swift_slowAlloc();
        v21 = v14;
        v19 = v18;
        v23 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100141FE4(a2, a3, &v23);
        v20 = v21;
        _os_log_impl(&_mh_execute_header, v21, v22, "Successfully deleted biome metadata for proofingSessionID: %s", v17, 0xCu);
        sub_10000BB78(v19);
      }

      else
      {
      }

      (*(v8 + 8))(v11, v7);
    }
  }
}

void sub_1002FC5B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v191 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v124 - v14;
  v16 = sub_100576B70(a2, a3);
  if (v4)
  {
    return;
  }

  v17 = v13;
  v18 = v191;
  v169 = v8;
  v170 = a3;
  v171 = a1;
  v148 = v15;
  v168 = v9;
  v173 = 0;
  if (v16)
  {
    v172 = v16;
    v19 = type metadata accessor for PendingActionContext(0);
    v20 = v18;
    v21 = *(v18 + v19[33]);
    v124 = a2;
    if (v21 && *(v21 + 16))
    {
      v22 = *(v21 + 32);
      v23 = *(v21 + 64);
      v24 = *(v21 + 80);
      v25 = *(v21 + 112);
      v175[4] = *(v21 + 96);
      v175[5] = v25;
      v176 = *(v21 + 128);
      v175[2] = v23;
      v175[3] = v24;
      v27 = *(v21 + 32);
      v26 = *(v21 + 48);
      v175[0] = v22;
      v175[1] = v26;
      v28 = *(v21 + 48);
      v29 = *(v21 + 64);
      v177 = v27;
      v178 = v28;
      v30 = *(v21 + 80);
      v31 = *(v21 + 96);
      v182 = v25;
      v183 = v176;
      v180 = v30;
      v181 = v31;
      v179 = v29;
      sub_1000AFC58(v175, &v174);
      v188 = v181;
      v189 = v182;
      v190 = v183;
      v184 = v177;
      v185 = v178;
      v186 = v179;
      v187 = v180;
    }

    else
    {
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v184 = 0u;
    }

    v32 = v19[35];
    v33 = (v18 + v19[34]);
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[2];
    v154 = v33[3];
    v37 = v33[4];
    v38 = (v18 + v32);
    v40 = *(v18 + v32);
    v39 = *(v18 + v32 + 8);
    v134 = v40;
    v167 = v39;
    v41 = v38[2];
    v165 = v38[3];
    v42 = v38[4];
    v43 = v19[21];
    v44 = (v20 + v19[22]);
    if (*(v44 + 8))
    {
      v45 = 0;
    }

    else
    {
      v45 = *v44;
    }

    v146 = v45;
    v147 = v42;
    v46 = v20 + v43;
    v47 = *(v20 + v43);
    if (*(v46 + 8))
    {
      v48 = 0;
    }

    else
    {
      v48 = v47;
    }

    v145 = v48;
    v49 = (v20 + v19[27]);
    if (v49[1])
    {
      v50 = v49[2];
      v51 = v49[3];
      v52 = v49[7];
      v143 = v49[6];
      v144 = v50;
      v53 = v49[5];
      v142 = v49[4];
      v162 = v53;

      v163 = v51;

      v164 = v52;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v143 = 0;
      v144 = 0;
      v142 = 0;
      v162 = 0;
    }

    v60 = v19[24];
    v141 = *(v20 + v19[23]);
    v61 = v19[26];
    v62 = (v20 + v19[25]);
    if (*(v62 + 8))
    {
      v63 = 0;
    }

    else
    {
      v63 = *v62;
    }

    v140 = v63;
    v64 = v20 + v60;
    v65 = *(v20 + v60);
    if (*(v64 + 8))
    {
      v66 = 0;
    }

    else
    {
      v66 = v65;
    }

    v139 = v66;
    v67 = (v20 + v61);
    v68 = *(v20 + v61 + 8);
    if (v68)
    {
      v69 = *v67;
      v70 = v67[2];
      v71 = v67[3];
      v72 = v67[7];
      v137 = v67[6];
      v138 = v69;
      v73 = v67[5];
      v135 = v67[4];
      v136 = v70;
      v160 = v73;

      v159 = v71;

      v158 = v72;
    }

    else
    {
      v158 = 0;
      v159 = 0;
      v137 = 0;
      v138 = 0;
      v135 = 0;
      v136 = 0;
      v160 = 0;
    }

    v161 = v68;
    v191 = v41;
    v166 = v35;
    v157 = *(&v184 + 1);
    if (*(&v184 + 1))
    {
      v74 = *(&v185 + 1);
      v75 = *(&v186 + 1);
      v130 = v185;
      v131 = v186;
      v76 = *(&v187 + 1);
      v77 = *(&v188 + 1);
      v128 = v184;
      v129 = v188;
      v125 = v36;
      v78 = v189;
      v79 = *(&v190 + 1);
      v132 = v187;
      v133 = v190;
      *&v177 = *(&v189 + 1);

      v156 = v74;

      v155 = v75;

      v152 = v77;

      v153 = v76;

      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v150 = v80;
      *&v177 = v78;
      v36 = v125;
      v41 = v191;
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v149 = v81;
      v151 = v79;

      sub_10000BE18(&v184, &qword_100840970, &qword_1006DD4D8);
      if (v36)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v132 = 0;
      v133 = 0;
      v150 = 0;
      v151 = 0;
      v126 = 0;
      v127 = 0;
      v149 = 0;
      v152 = 0;
      v153 = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v155 = 0;
      v156 = 0;
      v128 = 0;
      if (v36)
      {
LABEL_30:
        *&v177 = v34;
        dispatch thunk of CustomStringConvertible.description.getter();

        v82 = v37;
        if (v41)
        {
LABEL_31:
          *&v177 = v134;
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          v85 = v84;
          v86 = v147;

          goto LABEL_35;
        }

LABEL_34:
        v167 = 0;
        v165 = 0;
        v86 = 0;
        v83 = 0;
        v85 = 0;
LABEL_35:
        v87 = v172;
        v88 = [v172 managedObjectContext];
        if (v88)
        {
          v89 = v88;
          v90 = swift_allocObject();
          v91 = v86;
          v92 = v90;
          v93 = v142;
          *(v90 + 32) = v145;
          *(v90 + 40) = v93;
          v94 = v143;
          *(v90 + 48) = v162;
          *(v90 + 56) = v94;
          v95 = v144;
          *(v90 + 64) = v164;
          *(v90 + 72) = v95;
          v96 = v139;
          v97 = v140;
          *(v90 + 80) = v163;
          *(v90 + 88) = v97;
          *(v90 + 96) = v96;
          v98 = v161;
          *(v90 + 104) = v138;
          *(v90 + 112) = v98;
          v99 = v159;
          *(v90 + 120) = v136;
          *(v90 + 128) = v99;
          v100 = v158;
          *(v90 + 136) = v137;
          *(v90 + 144) = v100;
          v101 = v135;
          v102 = v146;
          *(v90 + 16) = v87;
          *(v90 + 24) = v102;
          v103 = v160;
          *(v90 + 152) = v101;
          *(v90 + 160) = v103;
          *(v90 + 168) = v141 & 1;
          v104 = v157;
          *(v90 + 176) = v128;
          *(v90 + 184) = v104;
          v105 = v156;
          *(v90 + 192) = v130;
          *(v90 + 200) = v105;
          v106 = v155;
          *(v90 + 208) = v131;
          *(v90 + 216) = v106;
          v107 = v152;
          *(v90 + 224) = v129;
          *(v90 + 232) = v107;
          v108 = v153;
          *(v90 + 240) = v132;
          *(v90 + 248) = v108;
          v109 = v150;
          *(v90 + 256) = v127;
          *(v90 + 264) = v109;
          v110 = v149;
          *(v90 + 272) = v126;
          *(v90 + 280) = v110;
          v111 = v151;
          *(v90 + 288) = v133;
          *(v90 + 296) = v111;
          *(v90 + 304) = v154;
          *(v90 + 312) = v82;
          v112 = v165;
          *(v90 + 320) = v166;
          *(v90 + 328) = v36;
          *(v90 + 336) = v83;
          *(v90 + 344) = v85;
          *(v90 + 352) = v112;
          *(v90 + 360) = v91;
          v113 = v191;
          *(v90 + 368) = v167;
          *(v90 + 376) = v113;
          v114 = swift_allocObject();
          *(v114 + 16) = sub_1003067E0;
          *(v114 + 24) = v92;
          *&v179 = sub_10021E8E8;
          *(&v179 + 1) = v114;
          *&v177 = _NSConcreteStackBlock;
          *(&v177 + 1) = 1107296256;
          *&v178 = sub_10057E264;
          *(&v178 + 1) = &unk_10080D3F8;
          v115 = _Block_copy(&v177);
          v116 = v87;

          [v89 performBlockAndWait:v115];

          _Block_release(v115);
          LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

          if ((v89 & 1) == 0)
          {
            goto LABEL_39;
          }

          __break(1u);
        }

LABEL_39:
        v117 = v173;
        sub_100576468();
        if (v117)
        {
        }

        else
        {
          v118 = v148;
          defaultLogger()();
          v119 = v170;

          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            *&v177 = v123;
            *v122 = 136315138;
            *(v122 + 4) = sub_100141FE4(v124, v119, &v177);
            _os_log_impl(&_mh_execute_header, v120, v121, "Successfully updated liveness data for proofingSessionID: %s", v122, 0xCu);
            sub_10000BB78(v123);
          }

          else
          {
          }

          (*(v168 + 8))(v118, v169);
        }

        return;
      }
    }

    v166 = 0;
    v154 = 0;
    v82 = 0;
    if (v41)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v54 = v17;
  defaultLogger()();
  v55 = v170;

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v184 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_100141FE4(a2, v55, &v184);
    _os_log_impl(&_mh_execute_header, v56, v57, "Stored biome metadata doesnt exist for proofingSessionID: %s", v58, 0xCu);
    sub_10000BB78(v59);
  }

  (*(v168 + 8))(v54, v169);
}

uint64_t sub_1002FCFB4(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a2;
  v36 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  v19 = &v33 - v18;
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  if (a4)
  {
    v34 = v5;
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Checking if biome data needs to be donated.", v24, 2u);
    }

    v35 = *(v14 + 8);
    v35(v19, v13);
    type metadata accessor for IdentityProofingDataContext();
    swift_allocObject();
    sub_10057E28C();
    v29 = v28;
    v33 = v10;
    v30 = swift_allocObject();
    v31 = v36;
    *(v30 + 16) = v29;
    *(v30 + 24) = v31;
    *(v30 + 32) = v38;
    *(v30 + 40) = v37;
    *(v30 + 48) = v34;

    sub_10057C18C(sub_100304524, v30);
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
      _os_log_impl(&_mh_execute_header, v25, v26, "SEND_TO_BIOME doesn't exist, will not donate to biome.", v27, 2u);
    }

    return (*(v14 + 8))(v21, v13);
  }
}

void sub_1002FD550(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v47 = a5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v42 - v16;
  v18 = sub_10057D604(a2, a3);
  if (!v5)
  {
    v42[1] = a1;
    v43 = v15;
    v45 = v10;
    v46 = 0;
    if (v18)
    {
      v44 = v18;
      v19 = [v18 proofingDecision];
      if (v19)
      {
        v20 = v11;

        v21 = v43;
        defaultLogger()();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "Proofing decision already exists in biome metadata, will not attempt to update it. Will attempt to donate data to biome.", v24, 2u);
        }

        (*(v20 + 8))(v21, v45);
        v25 = a4;
        v26 = a3;
      }

      else
      {
        v30._countAndFlagsBits = 0x3262326262663363;
        v31._countAndFlagsBits = 0xD000000000000062;
        v31._object = 0x800000010070CE90;
        v30._object = 0xE800000000000000;
        logMilestone(tag:description:)(v30, v31);
        v32 = 0xE700000000000000;
        v33 = 0x44455249505845;
        v34 = 0x80000001006F8A70;
        v35 = 0xD000000000000018;
        v36 = 0x80000001006F8A90;
        if (a4 != 4)
        {
          v36 = 0x80000001006F8AB0;
        }

        if (a4 != 3)
        {
          v35 = 0xD000000000000010;
          v34 = v36;
        }

        v37 = 0xEB00000000594441;
        v38 = 0x45525F4D49414C43;
        if (a4 != 1)
        {
          v38 = 0x474E49444E4550;
          v37 = 0xE700000000000000;
        }

        if (a4)
        {
          v33 = v38;
          v32 = v37;
        }

        if (a4 <= 2u)
        {
          v39 = v33;
        }

        else
        {
          v39 = v35;
        }

        if (a4 <= 2u)
        {
          v40 = v32;
        }

        else
        {
          v40 = v34;
        }

        sub_100580368(a2, a3, v39, v40, 0);

        v41 = v46;
        sub_10057BA64();
        v46 = v41;
        if (v41)
        {
          goto LABEL_26;
        }

        v25 = a4;
        v26 = a3;
      }

      sub_1002FD90C(a2, v26, v25);
LABEL_26:

      return;
    }

    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Biome Proofing meta data doesn't exist. Will not donate data to Biome.", v29, 2u);
    }

    (*(v11 + 8))(v17, v45);
  }
}

uint64_t sub_1002FD90C(uint64_t a1, unint64_t a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v179 = &v129 - v13;
  v14 = __chkstk_darwin(v12);
  v178 = &v129 - v15;
  v16 = __chkstk_darwin(v14);
  v177 = &v129 - v17;
  v18 = __chkstk_darwin(v16);
  v176 = &v129 - v19;
  __chkstk_darwin(v18);
  v21 = &v129 - v20;
  defaultLogger()();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v184 = a1;
  LODWORD(v174) = a3;
  if (v24)
  {
    v180 = v11;
    v182 = v6;
    v183 = v7;
    v25 = swift_slowAlloc();
    *&v189[0] = swift_slowAlloc();
    *v25 = 136315394;
    v181 = a2;
    *(v25 + 4) = sub_100141FE4(a1, a2, v189);
    v26 = 0xE700000000000000;
    *(v25 + 12) = 2080;
    v27 = 0x44455249505845;
    v28 = 0x80000001006F8A70;
    v29 = 0xD000000000000018;
    v30 = 0x80000001006F8A90;
    if (a3 != 4)
    {
      v30 = 0x80000001006F8AB0;
    }

    if (a3 != 3)
    {
      v29 = 0xD000000000000010;
      v28 = v30;
    }

    v31 = 0xEB00000000594441;
    v32 = 0x45525F4D49414C43;
    if (a3 != 1)
    {
      v32 = 0x474E49444E4550;
      v31 = 0xE700000000000000;
    }

    if (a3)
    {
      v27 = v32;
      v26 = v31;
    }

    if (a3 <= 2u)
    {
      v33 = v27;
    }

    else
    {
      v33 = v29;
    }

    if (a3 <= 2u)
    {
      v34 = v26;
    }

    else
    {
      v34 = v28;
    }

    v35 = sub_100141FE4(v33, v34, v189);

    *(v25 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v22, v23, "donateBiomeEvent called with proofingSessionID: %s and proofingDecision: %s", v25, 0x16u);
    swift_arrayDestroy();

    v6 = v182;
    v7 = v183;
    v36 = *(v183 + 8);
    v36(v21, v182);
    v11 = v180;
    a2 = v181;
  }

  else
  {

    v36 = *(v7 + 8);
    v36(v21, v6);
  }

  sub_100302D98(v184, a2, v188);
  memcpy(v189, v188, sizeof(v189));
  v37 = sub_1001B6DC0(v189);
  if (v37 == 1)
  {
    v38 = v179;
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Biome Meta data doesn't exist. Cannot donate data to biome.", v41, 2u);
    }

    return (v36)(v38, v6);
  }

  v173 = v36;
  v179 = 0;
  v181 = a2;
  v182 = v6;
  v183 = v7;
  v211 = v189[2];
  v210[0] = *(&v189[13] + 9);
  v209 = v189[15];
  v208 = v189[16];
  v207 = v189[17];
  v206 = v189[18];
  v205 = v189[19];
  v204 = v189[20];
  v203 = v189[21];
  v202 = v189[22];
  v201 = v189[23];
  v200 = v189[24];
  v199 = v189[25];
  v198 = v189[26];
  v197 = v189[27];
  v196 = v189[28];
  v195 = v189[29];
  v194 = v189[30];
  v193 = v189[31];
  v192 = v189[32];
  v191 = v189[33];
  v43 = v189[1];
  v44 = v189[3];
  v45 = *&v189[4];
  v46 = BYTE8(v189[4]);
  v47 = *(&v189[5] + 1);
  v48 = *(&v189[6] + 1);
  *(v210 + 15) = *(&v189[14] + 1);
  v190 = v189[34];
  if (!*(&v189[6] + 1))
  {
    sub_10000BE18(v188, &unk_100840940, &unk_1006DD4C0);
    v62 = v178;
    defaultLogger()();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Unable to donate biome data as the issuer doesn't exist", v65, 2u);
    }

    return v173(v62, v182);
  }

  v154 = *&v189[7];
  v155 = *&v189[8];
  v156 = *(&v189[9] + 1);
  isa = *(&v189[10] + 1);
  v158 = *(&v189[11] + 1);
  v159 = *(&v189[12] + 1);
  v160 = *(&v189[7] + 1);
  v161 = *(&v189[8] + 1);
  v162 = *&v189[10];
  v163 = *&v189[11];
  v164 = *&v189[12];
  v165 = *&v189[13];
  v166 = *&v189[9];
  LODWORD(v169) = BYTE8(v189[13]);
  v180 = v11;
  v49 = *&v189[6];
  v171 = *&v189[5];
  type metadata accessor for IdentityBiomeHelper();
  v50 = swift_allocObject();
  v170 = v45;
  v51 = v50;
  v168 = v49;
  *(v50 + 16) = v49;
  *(v50 + 24) = v48;
  swift_bridgeObjectRetain_n();
  sub_100006078(v43, *(&v43 + 1));
  v172 = v52;
  v167 = sub_100005D38(v44, *(&v44 + 1));
  v178 = v53;
  if (v46)
  {
    v54 = 0;
  }

  else
  {
    v54 = v170;
  }

  v55 = sub_100006EBC(v54, 0);
  v57 = v56;
  v212 = v211;
  if (v47)
  {
    v58 = v171;
  }

  else
  {
    v58 = 0;
  }

  if (v47)
  {
    v59 = v47;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  sub_10000BBC4(&v212, v187, &qword_10084A1D0, &qword_1006DB410);

  v60 = v179;
  v61 = sub_100303344(v184, v181);
  if (v60)
  {

    sub_10000BE18(v188, &unk_100840940, &unk_1006DD4C0);

    sub_10000BE18(&v212, &qword_10084A1D0, &qword_1006DB410);

    swift_setDeallocating();
    swift_deallocClassInstance();
    v6 = v182;
    v38 = v180;
    v36 = v173;
LABEL_19:
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    return (v36)(v38, v6);
  }

  v152 = v55;
  v153 = v59;
  v149 = v51;
  v151 = v58;
  v173 = v48;
  v179 = 0;
  if (v61)
  {
    v150 = sub_100007060(v174);
    v141 = v66;
  }

  else
  {
    v150 = 0;
    v141 = 0xE000000000000000;
  }

  v67 = isa;
  v68 = v154;
  v69 = _swiftEmptyArrayStorage;
  if (!v160)
  {
    v68 = 0;
  }

  isa = v68;
  if (v160)
  {
    v70 = v160;
  }

  else
  {
    v70 = 0xE000000000000000;
  }

  v174 = v70;
  v213 = v209;
  if (v161)
  {
    v71 = v155;
  }

  else
  {
    v71 = 0;
  }

  v146 = v71;
  if (v161)
  {
    v72 = v161;
  }

  else
  {
    v72 = 0xE000000000000000;
  }

  v171 = v72;
  if (v162)
  {
    v73 = v156;
  }

  else
  {
    v73 = 0;
  }

  v155 = v73;
  v214 = *(v210 + 7);
  if (v162)
  {
    v74 = v162;
  }

  else
  {
    v74 = 0xE000000000000000;
  }

  v170 = v74;
  if (v163)
  {
    v75 = v67;
  }

  else
  {
    v75 = 0;
  }

  v156 = v75;
  if (v163)
  {
    v76 = v163;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  v160 = v76;
  v215 = v208;
  if (v164)
  {
    v77 = v158;
  }

  else
  {
    v77 = 0;
  }

  v138 = v77;
  if (v164)
  {
    v78 = v164;
  }

  else
  {
    v78 = 0xE000000000000000;
  }

  v216 = v207;
  if (v165)
  {
    v79 = v159;
  }

  else
  {
    v79 = 0;
  }

  v154 = v79;
  if (v165)
  {
    v80 = v165;
  }

  else
  {
    v80 = 0xE000000000000000;
  }

  v158 = v78;
  v159 = v80;
  if (v166)
  {
    v69 = v166;
  }

  v140 = v69;
  v217 = v205;
  v218 = v206;
  v219 = v204;
  v220 = v203;
  v221 = v202;
  v222 = v201;
  v223 = v200;
  v224 = v199;
  v225 = v198;
  v226 = v197;
  v227 = v196;
  v228 = v195;
  v229 = v194;
  v230 = v193;
  v231 = v192;
  v232 = v191;
  v233[0] = v190;

  sub_10000BBC4(&v213, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v214, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v215, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v216, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v217, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v218, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v219, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v220, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v221, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v222, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v223, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v224, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v225, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v226, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v227, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v228, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v229, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v230, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v231, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v232, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(v233, v187, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(v188, &unk_100840940, &unk_1006DD4C0);
  v81 = objc_allocWithZone(NSNumber);
  v169 = [v81 initWithBool:v169 & 1];
  v143 = String._bridgeToObjectiveC()();

  if (v178)
  {
    v148 = String._bridgeToObjectiveC()();
  }

  else
  {
    v148 = 0;
  }

  v142 = String._bridgeToObjectiveC()();
  if (*(&v212 + 1))
  {
    v147 = String._bridgeToObjectiveC()();
  }

  else
  {
    v147 = 0;
  }

  v145 = String._bridgeToObjectiveC()();

  v144 = String._bridgeToObjectiveC()();

  v141 = String._bridgeToObjectiveC()();
  v172 = String._bridgeToObjectiveC()();
  v161 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v140 = String._bridgeToObjectiveC()();
  v139 = String._bridgeToObjectiveC()();
  v155 = String._bridgeToObjectiveC()();
  v168 = String._bridgeToObjectiveC()();
  if (*(&v213 + 1))
  {
    v167 = String._bridgeToObjectiveC()();
    if (*(&v214 + 1))
    {
      goto LABEL_88;
    }
  }

  else
  {
    v167 = 0;
    if (*(&v214 + 1))
    {
LABEL_88:
      v166 = String._bridgeToObjectiveC()();
      if (*(&v215 + 1))
      {
        goto LABEL_89;
      }

      goto LABEL_94;
    }
  }

  v166 = 0;
  if (*(&v215 + 1))
  {
LABEL_89:
    v165 = String._bridgeToObjectiveC()();
    if (*(&v216 + 1))
    {
      goto LABEL_90;
    }

LABEL_95:
    v164 = 0;
    if (*(&v217 + 1))
    {
      goto LABEL_91;
    }

    goto LABEL_96;
  }

LABEL_94:
  v165 = 0;
  if (!*(&v216 + 1))
  {
    goto LABEL_95;
  }

LABEL_90:
  v164 = String._bridgeToObjectiveC()();
  if (*(&v217 + 1))
  {
LABEL_91:
    v163 = String._bridgeToObjectiveC()();
    goto LABEL_97;
  }

LABEL_96:
  v163 = 0;
LABEL_97:
  v146 = v57;
  if (*(&v218 + 1))
  {
    v162 = String._bridgeToObjectiveC()();
    if (*(&v219 + 1))
    {
      goto LABEL_99;
    }
  }

  else
  {
    v162 = 0;
    if (*(&v219 + 1))
    {
LABEL_99:
      v156 = String._bridgeToObjectiveC()();
      if (*(&v220 + 1))
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }
  }

  v156 = 0;
  if (*(&v220 + 1))
  {
LABEL_100:
    v154 = String._bridgeToObjectiveC()();
    if (*(&v221 + 1))
    {
      goto LABEL_101;
    }

    goto LABEL_117;
  }

LABEL_116:
  v154 = 0;
  if (*(&v221 + 1))
  {
LABEL_101:
    v153 = String._bridgeToObjectiveC()();
    if (*(&v222 + 1))
    {
      goto LABEL_102;
    }

    goto LABEL_118;
  }

LABEL_117:
  v153 = 0;
  if (*(&v222 + 1))
  {
LABEL_102:
    v152 = String._bridgeToObjectiveC()();
    if (*(&v223 + 1))
    {
      goto LABEL_103;
    }

    goto LABEL_119;
  }

LABEL_118:
  v152 = 0;
  if (*(&v223 + 1))
  {
LABEL_103:
    v151 = String._bridgeToObjectiveC()();
    if (*(&v224 + 1))
    {
      goto LABEL_104;
    }

    goto LABEL_120;
  }

LABEL_119:
  v151 = 0;
  if (*(&v224 + 1))
  {
LABEL_104:
    v150 = String._bridgeToObjectiveC()();
    if (*(&v225 + 1))
    {
      goto LABEL_105;
    }

    goto LABEL_121;
  }

LABEL_120:
  v150 = 0;
  if (*(&v225 + 1))
  {
LABEL_105:
    v82 = String._bridgeToObjectiveC()();
    if (*(&v226 + 1))
    {
      goto LABEL_106;
    }

    goto LABEL_122;
  }

LABEL_121:
  v82 = 0;
  if (*(&v226 + 1))
  {
LABEL_106:
    v83 = String._bridgeToObjectiveC()();
    if (*(&v227 + 1))
    {
      goto LABEL_107;
    }

    goto LABEL_123;
  }

LABEL_122:
  v83 = 0;
  if (*(&v227 + 1))
  {
LABEL_107:
    v84 = String._bridgeToObjectiveC()();
    if (*(&v228 + 1))
    {
      goto LABEL_108;
    }

    goto LABEL_124;
  }

LABEL_123:
  v84 = 0;
  if (*(&v228 + 1))
  {
LABEL_108:
    v85 = String._bridgeToObjectiveC()();
    if (*(&v229 + 1))
    {
      goto LABEL_109;
    }

    goto LABEL_125;
  }

LABEL_124:
  v85 = 0;
  if (*(&v229 + 1))
  {
LABEL_109:
    v86 = String._bridgeToObjectiveC()();
    if (*(&v230 + 1))
    {
      goto LABEL_110;
    }

    goto LABEL_126;
  }

LABEL_125:
  v86 = 0;
  if (*(&v230 + 1))
  {
LABEL_110:
    v87 = String._bridgeToObjectiveC()();
    if (*(&v231 + 1))
    {
      goto LABEL_111;
    }

    goto LABEL_127;
  }

LABEL_126:
  v87 = 0;
  if (*(&v231 + 1))
  {
LABEL_111:
    v88 = String._bridgeToObjectiveC()();
    if (*(&v232 + 1))
    {
      goto LABEL_112;
    }

LABEL_128:
    v89 = 0;
    if (*(&v233[0] + 1))
    {
      goto LABEL_113;
    }

LABEL_129:
    v90 = 0;
    goto LABEL_130;
  }

LABEL_127:
  v88 = 0;
  if (!*(&v232 + 1))
  {
    goto LABEL_128;
  }

LABEL_112:
  v89 = String._bridgeToObjectiveC()();
  if (!*(&v233[0] + 1))
  {
    goto LABEL_129;
  }

LABEL_113:
  v90 = String._bridgeToObjectiveC()();
LABEL_130:
  v91 = objc_allocWithZone(BMWalletPaymentsCommerceUserProofingResult);
  v137 = v90;
  v128 = v90;
  v136 = v89;
  v127 = v89;
  v135 = v88;
  v126 = v88;
  v134 = v87;
  v125 = v87;
  v133 = v86;
  v124 = v86;
  v132 = v85;
  v123 = v85;
  v131 = v84;
  v122 = v84;
  v130 = v83;
  v121 = v83;
  v129 = v82;
  v120 = v82;
  v92 = v139;
  v93 = v140;
  v94 = v141;
  v95 = v142;
  v96 = v143;
  v98 = v147;
  v97 = v148;
  v99 = v144;
  v100 = v145;
  v138 = [v91 initWithAge:v143 gender:v148 skinTone:v142 ethnicity:v147 deviceLanguage:v145 proofingDecision:v144 issuer:v141 alAssessment:v172 alGestureAssessment:v161 axSettings:isa alFacVersion:v140 alFacePoseVersion:v139 alPadtoolVersion:v155 alPrdVersion:v168 didStepUp:v169 plGestureAssessment:v167 plAssessment:v166 plFacVersion:v165 plFacePoseVersion:v164 plPadtoolVersion:v163 plPrdVersion:v162 shadowLabel:v156 smFacVersion:v154 smFacePoseVersion:v153 smPrdVersion:v152 smPadtoolVersion:v151 smLivenessAssessment:v150 smGestureAssessment:v120 smLivenessType:v121 fmAssessment:v122 fmModelVersion:v123 fmDetectorModelVersion:v124 fmSMAssessment:v125 fmSMModelVersion:v126 fmSMDetectorModelVersion:v127 identityType:v128];

  v187[3] = sub_1003038CC();
  v187[4] = &off_1008122A8;

  sub_10000BE18(&v212, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v213, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v214, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v215, &qword_10084A1D0, &qword_1006DB410);
  v187[0] = v138;
  sub_10000BE18(&v216, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v217, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v218, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v219, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v220, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v221, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v222, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v223, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v224, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v225, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v226, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v227, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v228, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v229, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v230, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v231, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v232, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(v233, &qword_10084A1D0, &qword_1006DB410);

  v101 = v176;
  defaultLogger()();
  sub_100020260(v187, v186);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v185 = v105;
    *v104 = 136315138;
    v106 = *sub_10000BA08(v186, v186[3]);
    v107 = sub_100479060();
    v109 = v108;
    sub_10000BB78(v186);
    v110 = sub_100141FE4(v107, v109, &v185);

    *(v104 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v102, v103, "Invoking Biome's sendEvent with the event -> %s", v104, 0xCu);
    sub_10000BB78(v105);

    v6 = v182;
    v36 = *(v183 + 8);
    v36(v101, v182);
  }

  else
  {

    v6 = v182;
    v36 = *(v183 + 8);
    v36(v101, v182);
    sub_10000BB78(v186);
  }

  v38 = v180;
  v111 = v177;
  sub_100020260(v187, v186);
  sub_100007224(&qword_100840958, &qword_1006DD4D0);
  if (swift_dynamicCast())
  {
    v112 = v185;
    v113 = sub_10000BA08((v175 + 16), *(v175 + 40));
    sub_1003005F8(v112, *v113);
  }

  v114 = v181;
  defaultLogger()();
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&_mh_execute_header, v115, v116, "Successfully donated user proofing event to Biome.", v117, 2u);
  }

  v36(v111, v6);
  v118 = v184;
  v119 = v179;
  sub_100303918(v184, v114);
  if (v119)
  {
    sub_10000BB78(v187);

    swift_setDeallocating();
    swift_deallocClassInstance();
    goto LABEL_19;
  }

  sub_100303DE0(v118, v114);
  sub_10000BB78(v187);

  swift_setDeallocating();
  return swift_deallocClassInstance();
}

uint64_t sub_1002FEF78()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v1)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v14._countAndFlagsBits = 0xD00000000000003BLL;
    v14._object = 0x8000000100708FF0;
    String.append(_:)(v14);
    swift_getErrorValue();
    v15._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v15);

    (*(v3 + 104))(v6, enum case for DIPError.Code.failedToDeleteProofingBiomeData(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    v16 = v20;
    (*(v20 + 16))(v17, v10, v7);
    swift_willThrow();

    return (*(v16 + 8))(v10, v7);
  }

  else
  {
    v12 = v11;
    v19[1] = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v0;

    sub_10057C18C(sub_100300708, v13);
  }
}

void sub_1002FF2D8(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v4 = type metadata accessor for Logger();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v54 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = objc_allocWithZone(NSFetchRequest);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithEntityName:v18];

  v20 = *(a1 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v21 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return;
  }

  v59 = v20;
  v60 = v16;
  v66 = a1;
  v54 = 0;
  v22 = sub_10057A1F8(v21);

  if (v22)
  {
    if (v22 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v59;
    v25 = v60;
    if (v24)
    {
      if (v24 < 1)
      {
        __break(1u);
      }

      else
      {
        v27 = 0;
        v61 = v22 & 0xC000000000000001;
        v64 += 8;
        v65 = v22;
        *&v23 = 136315138;
        v56 = v23;
        v62 = v24;
        v63 = v14;
        v57 = v11;
        v58 = v4;
        do
        {
          if (v61)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v30 = *(v65 + 8 * v27 + 32);
          }

          v31 = v30;
          [v26 deleteObject:v30];
          defaultLogger()();
          v32 = v31;
          v33 = Logger.logObject.getter();
          v34 = v25;
          v35 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v33, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v67 = v37;
            *v36 = v56;
            v38 = [v32 proofingSessionID];
            if (v38)
            {
              v39 = v38;
              v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v42 = v41;
            }

            else
            {
              v40 = 0;
              v42 = 0xE000000000000000;
            }

            v43 = sub_100141FE4(v40, v42, &v67);

            *(v36 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v33, v35, "Successfully deleted proofing biome data for proofingSessionID: %s", v36, 0xCu);
            sub_10000BB78(v37);

            v28 = *v64;
            v25 = v60;
            v4 = v58;
            (*v64)(v60, v58);
            v11 = v57;
            v26 = v59;
          }

          else
          {

            v28 = *v64;
            (*v64)(v34, v4);
            v25 = v34;
          }

          ++v27;
          v29 = v63;
        }

        while (v62 != v27);

        v44 = v54;
        sub_10057BA64();
        if (!v44)
        {
          defaultLogger()();
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v45, v46, "Successfully deleted proofing biome data", v47, 2u);
          }

          v28(v29, v4);
          defaultLogger()();
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Invoking Biome's pruning API to delete biome data", v50, 2u);
          }

          v28(v11, v4);
          [*(v55 + 56) pruneUserProofingStream];
        }
      }

      return;
    }
  }

  defaultLogger()();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "No proofing biome data exists in the database", v53, 2u);
  }

  (*(v64 + 8))(v8, v4);
}

void sub_1002FF8CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10057D604(a2, a3);
  if (!v3)
  {
    v12 = v11;
    if (v11)
    {
      sub_10058051C(1);
      sub_10057BA64();
      defaultLogger()();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v21 = v14;
        v16 = v15;
        v17 = swift_slowAlloc();
        v20 = v13;
        v18 = v17;
        v22 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_100141FE4(a2, a3, &v22);
        v19 = v20;
        _os_log_impl(&_mh_execute_header, v20, v21, "Successfully updated proofing biome data called for proofingSessionID: %s", v16, 0xCu);
        sub_10000BB78(v18);
      }

      else
      {
      }

      (*(v7 + 8))(v10, v6);
    }
  }
}

void *sub_1002FFAEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100576B70(a2, a3);
  if (!v4)
  {
    if (result)
    {
      v14 = result;
      v15 = [result shouldDonateProofingDecision];

      result = swift_beginAccess();
      *(a4 + 16) = v15;
    }

    else
    {
      (*(v9 + 104))(v12, enum case for DIPError.Code.failedToFetchBiomeMetadata(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1002FFCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v70 = a5;
  v65 = a6;
  v66 = a8;
  v71 = a7;
  v64 = a4;
  v67 = a2;
  v19 = type metadata accessor for Logger();
  v62 = *(v19 - 8);
  v20 = *(v62 + 64);
  __chkstk_darwin(v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_opt_self();
  v24 = String._bridgeToObjectiveC()();
  v68 = a1;
  v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:*(a1 + 16)];

  type metadata accessor for StoredBiomeMetadata();
  v73 = v25;
  v26 = swift_dynamicCastClassUnconditional();
  v27 = [objc_opt_self() _deviceLanguage];
  if (v27)
  {
    v28 = v27;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v63 = 0;
    v30 = 0;
  }

  v31 = a3;
  v32 = sub_10069387C(5, a14);
  if (a17)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v33 = IdentityDocumentType.description.getter();
    v34 = v35;
  }

  v36 = [v26 managedObjectContext];
  if (v36)
  {
    v58 = a15;
    v55 = a13;
    v56 = v32;
    v57 = v34;
    v59 = a11;
    v61 = v19;
    v54 = v33;
    v60 = v36;
    v37 = swift_allocObject();
    v38 = v67;
    *(v37 + 16) = v26;
    *(v37 + 24) = v38;
    v39 = v64;
    *(v37 + 32) = v31;
    *(v37 + 40) = v39;
    v40 = v65;
    *(v37 + 48) = v70;
    *(v37 + 56) = v40;
    *(v37 + 64) = v71;
    *(v37 + 72) = a10;
    v41 = v66;
    *(v37 + 80) = a11;
    *(v37 + 88) = v41;
    *(v37 + 96) = a9 & 1;
    *(v37 + 104) = v63;
    *(v37 + 112) = v30;
    v42 = v55;
    *(v37 + 120) = a12;
    *(v37 + 128) = v42;
    *(v37 + 136) = v56 & 1;
    v43 = v54;
    *(v37 + 144) = v58;
    *(v37 + 152) = v43;
    *(v37 + 160) = v57;
    v44 = v31;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_100306C94;
    *(v31 + 24) = v37;
    aBlock[4] = sub_10026CBB8;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_10080D588;
    v45 = _Block_copy(aBlock);

    v46 = v73;

    v19 = v61;

    v47 = v60;
    [v60 performBlockAndWait:v45];

    _Block_release(v45);
    LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

    if ((v47 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v44 = v31;
LABEL_11:
  v48 = v69;
  sub_100576468();
  if (v48)
  {
  }

  else
  {
    defaultLogger()();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100141FE4(v67, v44, aBlock);
      _os_log_impl(&_mh_execute_header, v49, v50, "Successfully persisted biome metadata for proofingSessionID: %s", v51, 0xCu);
      sub_10000BB78(v52);
    }

    else
    {
    }

    (*(v62 + 8))(v22, v19);
  }
}

void sub_100300240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a4;
  v33 = a6;
  v34 = a3;
  v35 = a5;
  v37 = a2;
  isEscapingClosureAtFileLocation = type metadata accessor for Date();
  v9 = *(isEscapingClosureAtFileLocation - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(isEscapingClosureAtFileLocation);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  type metadata accessor for StoredProofingBiomeData();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  Date.init()();
  v16 = [v15 managedObjectContext];
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v16;
  (*(v9 + 16))(v12, v14, isEscapingClosureAtFileLocation);
  v18 = *(v9 + 80);
  v30 = a1;
  v31 = v6;
  v19 = (v18 + 57) & ~v18;
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v37;
  *(v21 + 16) = v15;
  *(v21 + 24) = v22;
  v37 = v15;
  v23 = v32;
  *(v21 + 32) = v34;
  *(v21 + 40) = v23;
  v29 = isEscapingClosureAtFileLocation;
  *(v21 + 48) = v35;
  *(v21 + 56) = 1;
  (*(v9 + 32))(v21 + v19, v12, isEscapingClosureAtFileLocation);
  *(v21 + v20) = v33;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1002FB6A4;
  *(v24 + 24) = v21;
  aBlock[4] = sub_10026CBB8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_10080D510;
  v25 = _Block_copy(aBlock);
  v26 = v37;
  v15 = v37;

  [v17 performBlockAndWait:v25];

  _Block_release(v25);
  v27 = *(v9 + 8);
  v9 += 8;
  v27(v14, v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:
    (*(v9 + 8))(v14, isEscapingClosureAtFileLocation);
  }

  sub_1005783D4();
}

uint64_t sub_100300594()
{
  sub_10000BB78((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1003005F8(void *a1, uint64_t a2)
{
  v9[3] = sub_1003038CC();
  v9[4] = &off_1008122A8;
  v9[0] = a1;
  sub_100020260(v9, v8);
  v4 = a1;
  sub_100007224(&qword_100840958, &qword_1006DD4D0);
  if (swift_dynamicCast())
  {
    v5 = [*(a2 + 16) source];
    [v5 sendEvent:v7];
  }

  return sub_10000BB78(v9);
}

uint64_t sub_1003006C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100300724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  v12 = __chkstk_darwin(v10);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v37 - v18;
  v20 = type metadata accessor for PendingActionContext(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v24 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v37 - v25;
  sub_10000BBC4(a3, v19, &unk_100840960, &qword_1006DBCB0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000BE18(v19, &unk_100840960, &qword_1006DBCB0);
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Pending actions doesn't have a SEND_TO_BIOME Context", v29, 2u);
    }

    return (*(v46 + 8))(v15, v47);
  }

  else
  {
    sub_10030454C(v19, v26);
    type metadata accessor for IdentityBiomeDataContext();
    swift_allocObject();
    sub_100576340();
    v32 = v31;
    sub_1003068EC(v26, v24, type metadata accessor for PendingActionContext);
    v33 = (*(v21 + 80) + 40) & ~*(v21 + 80);
    v34 = swift_allocObject();
    v35 = v37;
    v36 = v38;
    v34[2] = v32;
    v34[3] = v35;
    v34[4] = v36;
    sub_10030454C(v24, v34 + v33);

    sub_100576834(sub_10030669C, v34);
    sub_100220438(v26);
  }
}

uint64_t sub_100300D78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 240) = a5;
  *(v6 + 248) = a6;
  *(v6 + 224) = a3;
  *(v6 + 232) = a4;
  *(v6 + 344) = a2;
  *(v6 + 216) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 256) = v7;
  v8 = *(v7 - 8);
  *(v6 + 264) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v6 + 280) = v10;
  v11 = *(v10 - 8);
  *(v6 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_100300EA0, 0, 0);
}

uint64_t sub_100300EA0()
{
  if (*(v0 + 344))
  {
    (*(*(v0 + 288) + 104))(*(v0 + 296), enum case for DIPError.Code.idTypeUnavailable(_:), *(v0 + 280));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = *(v0 + 264);
    v1 = *(v0 + 272);
    v3 = *(v0 + 256);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v2 + 8))(v1, v3);
    v4 = *(v0 + 296);
    v5 = *(v0 + 272);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v8 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v8 + 54);
    sub_1000318FC(&v8[4], v0 + 16);
    os_unfair_lock_unlock(v8 + 54);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v13 = *(v0 + 216);
    v14 = *(v0 + 72);
    *(v0 + 304) = v14;

    sub_100031918(v0 + 16);
    v15 = swift_allocObject();
    *(v0 + 312) = v15;
    v15[2] = v10;
    v15[3] = v9;
    v15[4] = v12;
    v15[5] = v11;
    v15[6] = v13;
    v16 = *(v14 + 16);
    v17 = swift_allocObject();
    *(v0 + 320) = v17;
    *(v17 + 16) = sub_100306B18;
    *(v17 + 24) = v15;
    v18 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

    v19 = swift_task_alloc();
    *(v0 + 328) = v19;
    *v19 = v0;
    v19[1] = sub_1003011F4;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v19, sub_10017F710, v17, &type metadata for () + 8);
  }
}

uint64_t sub_1003011F4()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_100301390;
  }

  else
  {
    v6 = v2[39];
    v5 = v2[40];
    v7 = v2[38];

    v4 = sub_100301324;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100301324()
{
  v1 = v0[37];
  v2 = v0[34];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100301390()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];

  v4 = v0[42];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v6 + 8))(v5, v7);
  v8 = v0[37];
  v9 = v0[34];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100301468(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v29;
  *(v8 + 96) = v28;
  *(v8 + 321) = a7;
  *(v8 + 80) = a6;
  *(v8 + 88) = a8;
  *(v8 + 320) = a4;
  *(v8 + 64) = a3;
  *(v8 + 72) = a5;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  v9 = type metadata accessor for DIPError();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v12 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 144) = v12;
  v13 = *(v12 - 8);
  *(v8 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v8 + 168) = v15;
  v16 = *(v15 - 8);
  *(v8 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v18 = type metadata accessor for DIPError.Code();
  *(v8 + 200) = v18;
  v19 = *(v18 - 8);
  *(v8 + 208) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v21 = type metadata accessor for PDF417ParsedData();
  *(v8 + 224) = v21;
  v22 = *(v21 - 8);
  *(v8 + 232) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v24 = type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource();
  *(v8 + 248) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1003016F8, 0, 0);
}

uint64_t sub_1003016F8()
{
  v105 = v0;
  v1 = *(v0 + 248);
  sub_1003068EC(*(v0 + 72), *(v0 + 256), type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 256);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *v3;
    if (sub_10069387C(0, *(v0 + 112)))
    {
      if (*(v4 + 16) && (v5 = sub_10003ADCC(0x6942664F65746164, 0xEB00000000687472), (v6 & 1) != 0))
      {
        v7 = (*(v4 + 56) + 16 * v5);
        v93 = *v7;
        v102 = v7[1];
      }

      else
      {
        v93 = 0;
        v102 = 0;
      }
    }

    else
    {
      v93 = 0;
      v102 = 0xE000000000000000;
    }

    if (sub_10069387C(1, *(v0 + 112)))
    {
      if (*(v4 + 16) && (v17 = sub_10003ADCC(0x7265646E6567, 0xE600000000000000), (v18 & 1) != 0))
      {
        v19 = (*(v4 + 56) + 16 * v17);
        v92 = *v19;
        v101 = v19[1];
      }

      else
      {
        v92 = 0;
        v101 = 0;
      }
    }

    else
    {
      v92 = 0;
      v101 = 0xE000000000000000;
    }

    if (sub_10069387C(7, *(v0 + 112)))
    {
      if (*(v4 + 16) && (v20 = sub_10003ADCC(0xD000000000000011, 0x80000001006FA370), (v21 & 1) != 0))
      {
        v22 = (*(v4 + 56) + 16 * v20);
        v97 = *v22;
        v103 = v22[1];

        v91 = 0;
        v100 = 0;
      }

      else
      {

        v91 = 0;
        v100 = 0;
        v97 = 0;
        v103 = 0;
      }
    }

    else
    {

      v91 = 0;
      v100 = 0;
      v97 = 0;
      v103 = 0xE000000000000000;
    }
  }

  else
  {
    v8 = *(v0 + 112);
    (*(*(v0 + 232) + 32))(*(v0 + 240), v3, *(v0 + 224));
    if (sub_10069387C(0, v8))
    {
      v9 = *(v0 + 240);
      v93 = PDF417ParsedData.dob.getter();
      v102 = v10;
    }

    else
    {
      v93 = 0;
      v102 = 0xE000000000000000;
    }

    if (sub_10069387C(1, *(v0 + 112)))
    {
      v11 = *(v0 + 240);
      v92 = PDF417ParsedData.gender.getter();
      v101 = v12;
    }

    else
    {
      v92 = 0;
      v101 = 0xE000000000000000;
    }

    if (sub_10069387C(2, *(v0 + 112)))
    {
      v13 = *(v0 + 240);
      v97 = PDF417ParsedData.issuer.getter();
      v103 = v14;
    }

    else
    {
      v97 = 0;
      v103 = 0xE000000000000000;
    }

    if (sub_10069387C(3, *(v0 + 112)))
    {
      v15 = *(v0 + 240);
      v91 = PDF417ParsedData.ethnicity.getter();
      v100 = v16;
    }

    else
    {
      v91 = 0;
      v100 = 0xE000000000000000;
    }

    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  }

  v23 = *(v0 + 112);
  v94 = *(v0 + 321);
  v89 = *(v0 + 80);
  v98 = sub_10069387C(4, v23);
  if (sub_10069387C(8, v23))
  {
    v96 = *(v0 + 88);
  }

  else
  {
    v96 = _swiftEmptyArrayStorage;
  }

  if (sub_10069387C(0, *(v0 + 112)))
  {
    if (!v102)
    {
      goto LABEL_41;
    }

    v24 = HIBYTE(v102) & 0xF;
    if ((v102 & 0x2000000000000000) == 0)
    {
      v24 = v93 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
LABEL_41:
      v25 = *(v0 + 192);
      v26 = *(v0 + 168);
      v27 = *(v0 + 176);
      v28 = *(v0 + 120);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingDateOfBirthField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v27 + 8))(v25, v26);
    }
  }

  if (sub_10069387C(1, *(v0 + 112)))
  {
    if (!v101)
    {
      goto LABEL_47;
    }

    v29 = HIBYTE(v101) & 0xF;
    if ((v101 & 0x2000000000000000) == 0)
    {
      v29 = v92 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {
LABEL_47:
      v30 = *(v0 + 192);
      v31 = *(v0 + 168);
      v32 = *(v0 + 176);
      v33 = *(v0 + 120);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingGenderField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v32 + 8))(v30, v31);
    }
  }

  if (sub_10069387C(2, *(v0 + 112)))
  {
    if (!v103)
    {
      goto LABEL_53;
    }

    v34 = HIBYTE(v103) & 0xF;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v34 = v97 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
LABEL_53:
      v35 = *(v0 + 192);
      v36 = *(v0 + 168);
      v37 = *(v0 + 176);
      v38 = *(v0 + 120);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingStateField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v37 + 8))(v35, v36);
    }
  }

  v39 = v98 ^ 1;
  if (sub_10069387C(7, *(v0 + 112)))
  {
    if (!v103)
    {
      goto LABEL_59;
    }

    v40 = HIBYTE(v103) & 0xF;
    if ((v103 & 0x2000000000000000) == 0)
    {
      v40 = v97 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40)
    {
LABEL_59:
      v41 = *(v0 + 192);
      v42 = *(v0 + 176);
      v88 = *(v0 + 168);
      v43 = *(v0 + 120);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingCountryField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v42 + 8))(v41, v88);
    }
  }

  v44 = v39 | v94;
  v95 = v39 | v94;
  if (sub_10069387C(3, *(v0 + 112)))
  {
    if (!v100)
    {
      goto LABEL_65;
    }

    v45 = HIBYTE(v100) & 0xF;
    if ((v100 & 0x2000000000000000) == 0)
    {
      v45 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (!v45)
    {
LABEL_65:
      v46 = *(v0 + 192);
      v47 = *(v0 + 168);
      v48 = *(v0 + 176);
      v49 = *(v0 + 120);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingEthnicityField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      v50 = v46;
      v44 = v95;
      (*(v48 + 8))(v50, v47);
    }
  }

  if (sub_10069387C(4, *(v0 + 112)) & v44)
  {
    v51 = *(v0 + 192);
    v52 = *(v0 + 168);
    v53 = *(v0 + 176);
    v54 = *(v0 + 120);
    (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingSkinToneField(_:), *(v0 + 200));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v53 + 8))(v51, v52);
  }

  v55 = *(v0 + 184);
  v56 = *(v0 + 112);
  defaultLogger()();

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  v59 = os_log_type_enabled(v57, v58);
  v61 = *(v0 + 176);
  v60 = *(v0 + 184);
  v62 = *(v0 + 168);
  if (v59)
  {
    v63 = *(v0 + 112);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v104 = v65;
    *v64 = 136315138;
    sub_100306A84();
    v66 = Set.description.getter();
    v68 = sub_100141FE4(v66, v67, &v104);

    *(v64 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v57, v58, "Biome-Fed Stats attempting to collect - %s", v64, 0xCu);
    sub_10000BB78(v65);
  }

  v69 = *(v61 + 8);
  v69(v60, v62);
  *(v0 + 264) = v69;
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  sub_100576340();
  *(v0 + 272) = v70;
  if (v98)
  {
    v71 = v89;
  }

  else
  {
    v71 = 0;
  }

  v72 = *(v0 + 152);
  v99 = *(v0 + 160);
  v90 = *(v0 + 144);
  v73 = *(v0 + 112);
  v74 = *(v0 + 320);
  v76 = *(v0 + 56);
  v75 = *(v0 + 64);
  v77 = *(v0 + 48);
  v78 = v70;
  v79 = swift_allocObject();
  *(v0 + 280) = v79;
  *(v79 + 16) = v78;
  *(v79 + 24) = v77;
  *(v79 + 32) = v76;
  *(v79 + 40) = v93;
  *(v79 + 48) = v102;
  *(v79 + 56) = v92;
  *(v79 + 64) = v101;
  *(v79 + 72) = v71;
  *(v79 + 80) = v95 & 1;
  *(v79 + 88) = v91;
  *(v79 + 96) = v100;
  *(v79 + 104) = v97;
  *(v79 + 112) = v103;
  *(v79 + 120) = v73;
  *(v79 + 128) = v96;
  *(v79 + 136) = v75;
  *(v79 + 144) = v74 & 1;
  v80 = *(v78 + 16);
  v81 = swift_allocObject();
  *(v0 + 288) = v81;
  *(v81 + 16) = sub_1003069C4;
  *(v81 + 24) = v79;
  v82 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v83 = *(v72 + 104);

  v83(v99, v82, v90);
  v84 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v85 = swift_task_alloc();
  *(v0 + 296) = v85;
  *v85 = v0;
  v85[1] = sub_100302704;
  v86 = *(v0 + 160);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v85, v86, sub_100306A5C, v81, &type metadata for () + 8);
}

uint64_t sub_100302704()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  v2[38] = v0;

  v5 = v2[36];
  if (v0)
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v6 = sub_100302B00;
  }

  else
  {
    v7 = v2[35];
    v9 = v2[19];
    v8 = v2[20];
    v10 = v2[18];

    (*(v9 + 8))(v8, v10);
    v6 = sub_100302890;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100302890()
{
  v1 = *(v0 + 320);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_100302948;
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);

  return sub_100300D78(v6, v1 & 1, v3, v4, v7, v5);
}

uint64_t sub_100302948()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_100302A44, 0, 0);
}

uint64_t sub_100302A44()
{
  v1 = v0[34];

  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  v8 = v0[17];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100302B00()
{
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[38];
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v26 = v0[22];
  v27 = v0[21];
  v28 = v0[33];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  _StringGuts.grow(_:)(55);
  v11._countAndFlagsBits = 0xD000000000000035;
  v11._object = 0x800000010070CF20;
  String.append(_:)(v11);
  swift_getErrorValue();
  v13 = v0[2];
  v12 = v0[3];
  v14 = v0[4];
  v15._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v15);

  (*(v4 + 104))(v5, enum case for DIPError.Code.failedToPersistBiomeMetadata(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v9 + 16))(v16, v8, v10);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v28(v6, v27);
  (*(v9 + 8))(v8, v10);

  v17 = v0[32];
  v18 = v0[30];
  v19 = v0[27];
  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[20];
  v23 = v0[17];

  v24 = v0[1];

  return v24();
}

void *sub_100302D98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a3;
  v5 = type metadata accessor for DIPError.Code();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v40 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v38 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v22 = a1;
    v23 = v21;
    *&v49[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100141FE4(v22, a2, v49);
    _os_log_impl(&_mh_execute_header, v16, v17, "fetchBiomeMetadata called for proofingSessionID: %s", v20, 0xCu);
    sub_10000BB78(v23);

    v5 = v38;
  }

  (*(v12 + 8))(v15, v11);
  v24 = swift_allocObject();
  sub_1003044A8(v49);
  memcpy((v24 + 16), v49, 0x230uLL);
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  v25 = v46;
  sub_100576340();
  if (v25)
  {
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(154);
    v30._countAndFlagsBits = 0xD000000000000035;
    v30._object = 0x800000010070CD20;
    String.append(_:)(v30);
    swift_getErrorValue();
    v31._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0xD000000000000063;
    v32._object = 0x800000010070CD60;
    String.append(_:)(v32);
    (*(v41 + 104))(v42, enum case for DIPError.Code.failedToFetchBiomeMetadata(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v33 = v43;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v34 = v45;
    swift_allocError();
    v35 = v44;
    (*(v44 + 16))(v36, v33, v34);
    swift_willThrow();

    (*(v35 + 8))(v33, v34);
  }

  else
  {
    v27 = v26;
    v28 = swift_allocObject();
    v29 = v40;
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = a2;
    v28[5] = v24;

    sub_100576834(sub_1003044BC, v28);

    swift_beginAccess();
    memcpy(v48, (v24 + 16), 0x230uLL);
    sub_10000BBC4(v48, &v47, &unk_100840940, &unk_1006DD4C0);

    return memcpy(v39, v48, 0x230uLL);
  }
}

uint64_t sub_100303344(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v41 = type metadata accessor for DIPError.Code();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v41);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v46 = v18 + 16;
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  sub_100576340();
  if (v2)
  {
    v37 = v17;
    v38 = v12;
    v39 = v11;
    v45 = 0;
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v47 = 0xD000000000000028;
    v48 = 0x800000010070CC80;
    swift_getErrorValue();
    v24._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v24);

    (*(v4 + 104))(v7, enum case for DIPError.Code.failedToPersistBiomeMetadata(_:), v41);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v25 = v40;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v26 = v44;
    swift_allocError();
    v27 = v43;
    (*(v43 + 16))(v28, v25, v26);
    v29 = v42;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v12 = v38;
    v30 = v29;
    v11 = v39;
    (*(v38 + 8))(v30, v39);
    (*(v27 + 8))(v25, v26);

    v17 = v37;
  }

  else
  {
    v20 = v19;
    v21 = a2;
    v22 = swift_allocObject();
    v23 = v45;
    v22[2] = v20;
    v22[3] = v23;
    v22[4] = v21;
    v22[5] = v18;

    sub_100576834(sub_100304340, v22);
    v45 = 0;
  }

  defaultLogger()();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    swift_beginAccess();
    *(v33 + 4) = *(v18 + 16);

    _os_log_impl(&_mh_execute_header, v31, v32, "shouldDonateProofingDecision -> %{BOOL}d", v33, 8u);
  }

  else
  {
  }

  (*(v12 + 8))(v17, v11);
  swift_beginAccess();
  v34 = *(v18 + 16);

  return v34;
}

unint64_t sub_1003038CC()
{
  result = qword_100840950;
  if (!qword_100840950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100840950);
  }

  return result;
}

uint64_t sub_100303918(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DIPError.Code();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v38 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v36 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = v12;
    v24 = v23;
    v44[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100141FE4(a1, a2, v44);
    _os_log_impl(&_mh_execute_header, v18, v19, "updateProofingBiomeData called for proofingSessionID: %s", v22, 0xCu);
    sub_10000BB78(v24);
    v12 = v37;

    v3 = v36;
  }

  (*(v14 + 8))(v17, v13);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v3)
  {
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v29._countAndFlagsBits = 0xD000000000000039;
    v29._object = 0x800000010070CC10;
    String.append(_:)(v29);
    swift_getErrorValue();
    v30._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v30);

    (*(v39 + 104))(v41, enum case for DIPError.Code.failedToUpdateProofingBiomeData(_:), v40);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v31 = v43;
    swift_allocError();
    v32 = v42;
    (*(v42 + 16))(v33, v12, v31);
    swift_willThrow();

    return (*(v32 + 8))(v12, v31);
  }

  else
  {
    v26 = v25;
    v27 = swift_allocObject();
    v28 = v38;
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = a2;

    sub_10057C18C(sub_10030430C, v27);
  }
}

uint64_t sub_100303DE0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DIPError.Code();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v38 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v36 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = v12;
    v24 = v23;
    v44[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100141FE4(a1, a2, v44);
    _os_log_impl(&_mh_execute_header, v18, v19, "deleteBiomeMetadata called for proofingSessionID: %s", v22, 0xCu);
    sub_10000BB78(v24);
    v12 = v37;

    v3 = v36;
  }

  (*(v14 + 8))(v17, v13);
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  sub_100576340();
  if (v3)
  {
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v29._countAndFlagsBits = 0xD000000000000036;
    v29._object = 0x8000000100708F50;
    String.append(_:)(v29);
    swift_getErrorValue();
    v30._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v30);

    (*(v39 + 104))(v41, enum case for DIPError.Code.failedToDeleteBiomeMetadata(_:), v40);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v31 = v43;
    swift_allocError();
    v32 = v42;
    (*(v42 + 16))(v33, v12, v31);
    swift_willThrow();

    return (*(v32 + 8))(v12, v31);
  }

  else
  {
    v26 = v25;
    v27 = swift_allocObject();
    v28 = v38;
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = a2;

    sub_100576834(sub_1003042AC, v27);
  }
}

uint64_t sub_1003042CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100304360()
{
  if (v0[3] != 1)
  {

    v1 = v0[5];

    v2 = v0[7];

    v3 = v0[9];

    v4 = v0[13];

    v5 = v0[15];

    v6 = v0[17];

    v7 = v0[19];

    v8 = v0[20];

    v9 = v0[22];

    v10 = v0[24];

    v11 = v0[26];

    v12 = v0[28];

    v13 = v0[31];

    v14 = v0[33];

    v15 = v0[35];

    v16 = v0[37];

    v17 = v0[39];

    v18 = v0[41];

    v19 = v0[43];

    v20 = v0[45];

    v21 = v0[47];

    v22 = v0[49];

    v23 = v0[51];

    v24 = v0[53];

    v25 = v0[55];

    v26 = v0[57];

    v27 = v0[59];

    v28 = v0[61];

    v29 = v0[63];

    v30 = v0[65];

    v31 = v0[67];

    v32 = v0[69];

    v33 = v0[71];
  }

  return _swift_deallocObject(v0, 576, 7);
}

uint64_t sub_1003044DC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10030454C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingActionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003045B0()
{
  v1 = type metadata accessor for PendingActionContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = (v0 + v3);
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 56);

  v12 = *(v0 + v3 + 72);

  v13 = *(v0 + v3 + 96);

  v14 = *(v0 + v3 + 104);

  v15 = *(v0 + v3 + 120);
  if (v15 != 1)
  {
    if (v15 == 2)
    {
      goto LABEL_8;
    }

    v16 = *(v7 + 17);
  }

  if (*(v7 + 19) != 1)
  {

    v17 = *(v7 + 21);
  }

  if (*(v7 + 23) != 1)
  {

    v18 = *(v7 + 25);
  }

LABEL_8:
  if (*(v7 + 27) != 1)
  {

    v19 = *(v7 + 29);
  }

  v20 = *(v7 + 31);

  v21 = *(v7 + 33);

  if (*(v7 + 35) != 1)
  {

    v22 = *(v7 + 37);
  }

  v23 = *(v7 + 39);

  v24 = &v7[v1[18]];
  v25 = type metadata accessor for WorkflowRecommendationResponse();
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v116 = v1;
    v26 = v0;
    v27 = v2;
    v28 = (v2 + 40) & ~v2;
    v29 = v4;
    v30 = *(v24 + 1);

    v31 = *(v24 + 3);

    v32 = *(v24 + 5);

    v33 = *(v24 + 7);

    v34 = *(v24 + 9);

    v35 = *(v24 + 11);

    v36 = *(v24 + 14);

    v37 = *(v24 + 16);

    v38 = *(v24 + 17);

    v39 = *(v24 + 19);

    v40 = *(v24 + 20);

    v41 = *(v24 + 22);

    v42 = type metadata accessor for Workflow();
    v43 = v42[18];
    v44 = type metadata accessor for HardwareAttestationType();
    v45 = *(v44 - 8);
    if (!(*(v45 + 48))(&v24[v43], 1, v44))
    {
      (*(v45 + 8))(&v24[v43], v44);
    }

    v46 = *&v24[v42[19]];

    v47 = *&v24[v42[20]];

    v48 = *&v24[v42[21] + 8];

    v49 = *&v24[v42[23]];

    v50 = *&v24[v42[24]];

    v51 = *&v24[v42[25]];

    v52 = *&v24[v42[28]];

    v53 = *&v24[v42[29]];

    v54 = *&v24[v42[30]];

    v55 = &v24[v42[39]];
    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v26;
    if (*(v55 + 1) != 1)
    {

      if (*(v55 + 124) != 1)
      {
        if (*(v55 + 2) != 1)
        {
        }

        if (*(v55 + 6) != 1)
        {
        }

        if (*(v55 + 10) != 1)
        {
        }

        if (*(v55 + 14) != 1)
        {
        }

        if (*(v55 + 18) != 1)
        {
        }

        if (*(v55 + 22) != 1)
        {
        }

        if (*(v55 + 26) != 1)
        {
        }

        if (*(v55 + 30) != 1)
        {
        }

        if (*(v55 + 34) != 1)
        {
        }

        if (*(v55 + 38) != 1)
        {
        }

        if (*(v55 + 42) != 1)
        {
        }

        if (*(v55 + 46) != 1)
        {
        }

        if (*(v55 + 50) != 1)
        {
        }

        if (*(v55 + 54) != 1)
        {
        }

        if (*(v55 + 58) != 1)
        {
        }

        if (*(v55 + 62) != 1)
        {
        }

        if (*(v55 + 66) != 1)
        {
        }

        if (*(v55 + 70) != 1)
        {
        }

        if (*(v55 + 74) != 1)
        {
        }

        if (*(v55 + 78) != 1)
        {
        }

        if (*(v55 + 82) != 1)
        {
        }

        if (*(v55 + 86) != 1)
        {
        }

        if (*(v55 + 90) != 1)
        {
        }

        if (*(v55 + 94) != 1)
        {
        }

        if (*(v55 + 98) != 1)
        {
        }

        if (*(v55 + 102) != 1)
        {
        }

        v56 = *(v55 + 124);

        v57 = *(v55 + 125);
      }

      if (*(v55 + 256) != 1)
      {
        if (*(v55 + 134) != 1)
        {
        }

        if (*(v55 + 138) != 1)
        {
        }

        if (*(v55 + 142) != 1)
        {
        }

        if (*(v55 + 146) != 1)
        {
        }

        if (*(v55 + 150) != 1)
        {
        }

        if (*(v55 + 154) != 1)
        {
        }

        if (*(v55 + 158) != 1)
        {
        }

        if (*(v55 + 162) != 1)
        {
        }

        if (*(v55 + 166) != 1)
        {
        }

        if (*(v55 + 170) != 1)
        {
        }

        if (*(v55 + 174) != 1)
        {
        }

        if (*(v55 + 178) != 1)
        {
        }

        if (*(v55 + 182) != 1)
        {
        }

        if (*(v55 + 186) != 1)
        {
        }

        if (*(v55 + 190) != 1)
        {
        }

        if (*(v55 + 194) != 1)
        {
        }

        if (*(v55 + 198) != 1)
        {
        }

        if (*(v55 + 202) != 1)
        {
        }

        if (*(v55 + 206) != 1)
        {
        }

        if (*(v55 + 210) != 1)
        {
        }

        if (*(v55 + 214) != 1)
        {
        }

        if (*(v55 + 218) != 1)
        {
        }

        if (*(v55 + 222) != 1)
        {
        }

        if (*(v55 + 226) != 1)
        {
        }

        if (*(v55 + 230) != 1)
        {
        }

        if (*(v55 + 234) != 1)
        {
        }

        v58 = *(v55 + 256);

        v59 = *(v55 + 257);
      }

      if (*(v55 + 388) != 1)
      {
        if (*(v55 + 266) != 1)
        {
        }

        if (*(v55 + 270) != 1)
        {
        }

        if (*(v55 + 274) != 1)
        {
        }

        if (*(v55 + 278) != 1)
        {
        }

        if (*(v55 + 282) != 1)
        {
        }

        if (*(v55 + 286) != 1)
        {
        }

        if (*(v55 + 290) != 1)
        {
        }

        if (*(v55 + 294) != 1)
        {
        }

        if (*(v55 + 298) != 1)
        {
        }

        if (*(v55 + 302) != 1)
        {
        }

        if (*(v55 + 306) != 1)
        {
        }

        if (*(v55 + 310) != 1)
        {
        }

        if (*(v55 + 314) != 1)
        {
        }

        if (*(v55 + 318) != 1)
        {
        }

        if (*(v55 + 322) != 1)
        {
        }

        if (*(v55 + 326) != 1)
        {
        }

        if (*(v55 + 330) != 1)
        {
        }

        if (*(v55 + 334) != 1)
        {
        }

        if (*(v55 + 338) != 1)
        {
        }

        if (*(v55 + 342) != 1)
        {
        }

        if (*(v55 + 346) != 1)
        {
        }

        if (*(v55 + 350) != 1)
        {
        }

        if (*(v55 + 354) != 1)
        {
        }

        if (*(v55 + 358) != 1)
        {
        }

        if (*(v55 + 362) != 1)
        {
        }

        if (*(v55 + 366) != 1)
        {
        }

        v60 = *(v55 + 388);

        v61 = *(v55 + 389);
      }

      if (*(v55 + 520) != 1)
      {
        if (*(v55 + 398) != 1)
        {
        }

        if (*(v55 + 402) != 1)
        {
        }

        if (*(v55 + 406) != 1)
        {
        }

        if (*(v55 + 410) != 1)
        {
        }

        if (*(v55 + 414) != 1)
        {
        }

        if (*(v55 + 418) != 1)
        {
        }

        if (*(v55 + 422) != 1)
        {
        }

        if (*(v55 + 426) != 1)
        {
        }

        if (*(v55 + 430) != 1)
        {
        }

        if (*(v55 + 434) != 1)
        {
        }

        if (*(v55 + 438) != 1)
        {
        }

        if (*(v55 + 442) != 1)
        {
        }

        if (*(v55 + 446) != 1)
        {
        }

        if (*(v55 + 450) != 1)
        {
        }

        if (*(v55 + 454) != 1)
        {
        }

        if (*(v55 + 458) != 1)
        {
        }

        if (*(v55 + 462) != 1)
        {
        }

        if (*(v55 + 466) != 1)
        {
        }

        if (*(v55 + 470) != 1)
        {
        }

        if (*(v55 + 474) != 1)
        {
        }

        if (*(v55 + 478) != 1)
        {
        }

        if (*(v55 + 482) != 1)
        {
        }

        if (*(v55 + 486) != 1)
        {
        }

        if (*(v55 + 490) != 1)
        {
        }

        if (*(v55 + 494) != 1)
        {
        }

        if (*(v55 + 498) != 1)
        {
        }

        v62 = *(v55 + 520);

        v63 = *(v55 + 521);
      }

      if (*(v55 + 652) != 1)
      {
        if (*(v55 + 530) != 1)
        {
        }

        if (*(v55 + 534) != 1)
        {
        }

        if (*(v55 + 538) != 1)
        {
        }

        if (*(v55 + 542) != 1)
        {
        }

        if (*(v55 + 546) != 1)
        {
        }

        if (*(v55 + 550) != 1)
        {
        }

        if (*(v55 + 554) != 1)
        {
        }

        if (*(v55 + 558) != 1)
        {
        }

        if (*(v55 + 562) != 1)
        {
        }

        if (*(v55 + 566) != 1)
        {
        }

        if (*(v55 + 570) != 1)
        {
        }

        if (*(v55 + 574) != 1)
        {
        }

        if (*(v55 + 578) != 1)
        {
        }

        if (*(v55 + 582) != 1)
        {
        }

        if (*(v55 + 586) != 1)
        {
        }

        if (*(v55 + 590) != 1)
        {
        }

        if (*(v55 + 594) != 1)
        {
        }

        if (*(v55 + 598) != 1)
        {
        }

        if (*(v55 + 602) != 1)
        {
        }

        if (*(v55 + 606) != 1)
        {
        }

        if (*(v55 + 610) != 1)
        {
        }

        if (*(v55 + 614) != 1)
        {
        }

        if (*(v55 + 618) != 1)
        {
        }

        if (*(v55 + 622) != 1)
        {
        }

        if (*(v55 + 626) != 1)
        {
        }

        if (*(v55 + 630) != 1)
        {
        }

        v64 = *(v55 + 652);

        v65 = *(v55 + 653);
      }

      if (*(v55 + 784) != 1)
      {
        if (*(v55 + 662) != 1)
        {
        }

        if (*(v55 + 666) != 1)
        {
        }

        if (*(v55 + 670) != 1)
        {
        }

        if (*(v55 + 674) != 1)
        {
        }

        if (*(v55 + 678) != 1)
        {
        }

        if (*(v55 + 682) != 1)
        {
        }

        if (*(v55 + 686) != 1)
        {
        }

        if (*(v55 + 690) != 1)
        {
        }

        if (*(v55 + 694) != 1)
        {
        }

        if (*(v55 + 698) != 1)
        {
        }

        if (*(v55 + 702) != 1)
        {
        }

        if (*(v55 + 706) != 1)
        {
        }

        if (*(v55 + 710) != 1)
        {
        }

        if (*(v55 + 714) != 1)
        {
        }

        if (*(v55 + 718) != 1)
        {
        }

        if (*(v55 + 722) != 1)
        {
        }

        if (*(v55 + 726) != 1)
        {
        }

        if (*(v55 + 730) != 1)
        {
        }

        if (*(v55 + 734) != 1)
        {
        }

        if (*(v55 + 738) != 1)
        {
        }

        if (*(v55 + 742) != 1)
        {
        }

        if (*(v55 + 746) != 1)
        {
        }

        if (*(v55 + 750) != 1)
        {
        }

        if (*(v55 + 754) != 1)
        {
        }

        if (*(v55 + 758) != 1)
        {
        }

        if (*(v55 + 762) != 1)
        {
        }

        v66 = *(v55 + 784);

        v67 = *(v55 + 785);
      }

      if (*(v55 + 916) != 1)
      {
        if (*(v55 + 794) != 1)
        {
        }

        if (*(v55 + 798) != 1)
        {
        }

        if (*(v55 + 802) != 1)
        {
        }

        if (*(v55 + 806) != 1)
        {
        }

        if (*(v55 + 810) != 1)
        {
        }

        if (*(v55 + 814) != 1)
        {
        }

        if (*(v55 + 818) != 1)
        {
        }

        if (*(v55 + 822) != 1)
        {
        }

        if (*(v55 + 826) != 1)
        {
        }

        if (*(v55 + 830) != 1)
        {
        }

        if (*(v55 + 834) != 1)
        {
        }

        if (*(v55 + 838) != 1)
        {
        }

        if (*(v55 + 842) != 1)
        {
        }

        if (*(v55 + 846) != 1)
        {
        }

        if (*(v55 + 850) != 1)
        {
        }

        if (*(v55 + 854) != 1)
        {
        }

        if (*(v55 + 858) != 1)
        {
        }

        if (*(v55 + 862) != 1)
        {
        }

        if (*(v55 + 866) != 1)
        {
        }

        if (*(v55 + 870) != 1)
        {
        }

        if (*(v55 + 874) != 1)
        {
        }

        if (*(v55 + 878) != 1)
        {
        }

        if (*(v55 + 882) != 1)
        {
        }

        if (*(v55 + 886) != 1)
        {
        }

        if (*(v55 + 890) != 1)
        {
        }

        if (*(v55 + 894) != 1)
        {
        }

        v68 = *(v55 + 916);

        v69 = *(v55 + 917);
      }

      v70 = *(v55 + 926);

      if (*(v55 + 1059) != 1)
      {
        if (*(v55 + 937) != 1)
        {
        }

        if (*(v55 + 941) != 1)
        {
        }

        if (*(v55 + 945) != 1)
        {
        }

        if (*(v55 + 949) != 1)
        {
        }

        if (*(v55 + 953) != 1)
        {
        }

        if (*(v55 + 957) != 1)
        {
        }

        if (*(v55 + 961) != 1)
        {
        }

        if (*(v55 + 965) != 1)
        {
        }

        if (*(v55 + 969) != 1)
        {
        }

        if (*(v55 + 973) != 1)
        {
        }

        if (*(v55 + 977) != 1)
        {
        }

        if (*(v55 + 981) != 1)
        {
        }

        if (*(v55 + 985) != 1)
        {
        }

        if (*(v55 + 989) != 1)
        {
        }

        if (*(v55 + 993) != 1)
        {
        }

        if (*(v55 + 997) != 1)
        {
        }

        if (*(v55 + 1001) != 1)
        {
        }

        if (*(v55 + 1005) != 1)
        {
        }

        if (*(v55 + 1009) != 1)
        {
        }

        if (*(v55 + 1013) != 1)
        {
        }

        if (*(v55 + 1017) != 1)
        {
        }

        if (*(v55 + 1021) != 1)
        {
        }

        if (*(v55 + 1025) != 1)
        {
        }

        if (*(v55 + 1029) != 1)
        {
        }

        if (*(v55 + 1033) != 1)
        {
        }

        if (*(v55 + 1037) != 1)
        {
        }

        v71 = *(v55 + 1059);

        v72 = *(v55 + 1060);
      }
    }

    v73 = *&v24[v42[40]];

    v74 = *&v24[v42[41] + 8];

    v75 = *&v24[v42[42] + 8];

    v76 = *&v24[v42[43]];

    v1 = v116;
  }

  v77 = *&v7[v1[20]];

  v78 = &v7[v1[26]];
  if (*(v78 + 1))
  {

    v79 = *(v78 + 3);

    v80 = *(v78 + 5);

    v81 = *(v78 + 7);
  }

  v82 = &v7[v1[27]];
  if (*(v82 + 1))
  {

    v83 = *(v82 + 3);

    v84 = *(v82 + 5);

    v85 = *(v82 + 7);
  }

  v86 = *&v7[v1[28] + 8];

  v87 = v1[29];
  v88 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v89 = *(v88 - 8);
  if (!(*(v89 + 48))(&v7[v87], 1, v88))
  {
    (*(v89 + 8))(&v7[v87], v88);
  }

  v90 = &v7[v1[30]];
  if (*(v90 + 1) != 1)
  {

    if (*(v90 + 124) != 1)
    {
      if (*(v90 + 2) != 1)
      {
      }

      if (*(v90 + 6) != 1)
      {
      }

      if (*(v90 + 10) != 1)
      {
      }

      if (*(v90 + 14) != 1)
      {
      }

      if (*(v90 + 18) != 1)
      {
      }

      if (*(v90 + 22) != 1)
      {
      }

      if (*(v90 + 26) != 1)
      {
      }

      if (*(v90 + 30) != 1)
      {
      }

      if (*(v90 + 34) != 1)
      {
      }

      if (*(v90 + 38) != 1)
      {
      }

      if (*(v90 + 42) != 1)
      {
      }

      if (*(v90 + 46) != 1)
      {
      }

      if (*(v90 + 50) != 1)
      {
      }

      if (*(v90 + 54) != 1)
      {
      }

      if (*(v90 + 58) != 1)
      {
      }

      if (*(v90 + 62) != 1)
      {
      }

      if (*(v90 + 66) != 1)
      {
      }

      if (*(v90 + 70) != 1)
      {
      }

      if (*(v90 + 74) != 1)
      {
      }

      if (*(v90 + 78) != 1)
      {
      }

      if (*(v90 + 82) != 1)
      {
      }

      if (*(v90 + 86) != 1)
      {
      }

      if (*(v90 + 90) != 1)
      {
      }

      if (*(v90 + 94) != 1)
      {
      }

      if (*(v90 + 98) != 1)
      {
      }

      if (*(v90 + 102) != 1)
      {
      }

      v91 = *(v90 + 124);

      v92 = *(v90 + 125);
    }

    if (*(v90 + 256) != 1)
    {
      if (*(v90 + 134) != 1)
      {
      }

      if (*(v90 + 138) != 1)
      {
      }

      if (*(v90 + 142) != 1)
      {
      }

      if (*(v90 + 146) != 1)
      {
      }

      if (*(v90 + 150) != 1)
      {
      }

      if (*(v90 + 154) != 1)
      {
      }

      if (*(v90 + 158) != 1)
      {
      }

      if (*(v90 + 162) != 1)
      {
      }

      if (*(v90 + 166) != 1)
      {
      }

      if (*(v90 + 170) != 1)
      {
      }

      if (*(v90 + 174) != 1)
      {
      }

      if (*(v90 + 178) != 1)
      {
      }

      if (*(v90 + 182) != 1)
      {
      }

      if (*(v90 + 186) != 1)
      {
      }

      if (*(v90 + 190) != 1)
      {
      }

      if (*(v90 + 194) != 1)
      {
      }

      if (*(v90 + 198) != 1)
      {
      }

      if (*(v90 + 202) != 1)
      {
      }

      if (*(v90 + 206) != 1)
      {
      }

      if (*(v90 + 210) != 1)
      {
      }

      if (*(v90 + 214) != 1)
      {
      }

      if (*(v90 + 218) != 1)
      {
      }

      if (*(v90 + 222) != 1)
      {
      }

      if (*(v90 + 226) != 1)
      {
      }

      if (*(v90 + 230) != 1)
      {
      }

      if (*(v90 + 234) != 1)
      {
      }

      v93 = *(v90 + 256);

      v94 = *(v90 + 257);
    }

    if (*(v90 + 388) != 1)
    {
      if (*(v90 + 266) != 1)
      {
      }

      if (*(v90 + 270) != 1)
      {
      }

      if (*(v90 + 274) != 1)
      {
      }

      if (*(v90 + 278) != 1)
      {
      }

      if (*(v90 + 282) != 1)
      {
      }

      if (*(v90 + 286) != 1)
      {
      }

      if (*(v90 + 290) != 1)
      {
      }

      if (*(v90 + 294) != 1)
      {
      }

      if (*(v90 + 298) != 1)
      {
      }

      if (*(v90 + 302) != 1)
      {
      }

      if (*(v90 + 306) != 1)
      {
      }

      if (*(v90 + 310) != 1)
      {
      }

      if (*(v90 + 314) != 1)
      {
      }

      if (*(v90 + 318) != 1)
      {
      }

      if (*(v90 + 322) != 1)
      {
      }

      if (*(v90 + 326) != 1)
      {
      }

      if (*(v90 + 330) != 1)
      {
      }

      if (*(v90 + 334) != 1)
      {
      }

      if (*(v90 + 338) != 1)
      {
      }

      if (*(v90 + 342) != 1)
      {
      }

      if (*(v90 + 346) != 1)
      {
      }

      if (*(v90 + 350) != 1)
      {
      }

      if (*(v90 + 354) != 1)
      {
      }

      if (*(v90 + 358) != 1)
      {
      }

      if (*(v90 + 362) != 1)
      {
      }

      if (*(v90 + 366) != 1)
      {
      }

      v95 = *(v90 + 388);

      v96 = *(v90 + 389);
    }

    if (*(v90 + 520) != 1)
    {
      if (*(v90 + 398) != 1)
      {
      }

      if (*(v90 + 402) != 1)
      {
      }

      if (*(v90 + 406) != 1)
      {
      }

      if (*(v90 + 410) != 1)
      {
      }

      if (*(v90 + 414) != 1)
      {
      }

      if (*(v90 + 418) != 1)
      {
      }

      if (*(v90 + 422) != 1)
      {
      }

      if (*(v90 + 426) != 1)
      {
      }

      if (*(v90 + 430) != 1)
      {
      }

      if (*(v90 + 434) != 1)
      {
      }

      if (*(v90 + 438) != 1)
      {
      }

      if (*(v90 + 442) != 1)
      {
      }

      if (*(v90 + 446) != 1)
      {
      }

      if (*(v90 + 450) != 1)
      {
      }

      if (*(v90 + 454) != 1)
      {
      }

      if (*(v90 + 458) != 1)
      {
      }

      if (*(v90 + 462) != 1)
      {
      }

      if (*(v90 + 466) != 1)
      {
      }

      if (*(v90 + 470) != 1)
      {
      }

      if (*(v90 + 474) != 1)
      {
      }

      if (*(v90 + 478) != 1)
      {
      }

      if (*(v90 + 482) != 1)
      {
      }

      if (*(v90 + 486) != 1)
      {
      }

      if (*(v90 + 490) != 1)
      {
      }

      if (*(v90 + 494) != 1)
      {
      }

      if (*(v90 + 498) != 1)
      {
      }

      v97 = *(v90 + 520);

      v98 = *(v90 + 521);
    }

    if (*(v90 + 652) != 1)
    {
      if (*(v90 + 530) != 1)
      {
      }

      if (*(v90 + 534) != 1)
      {
      }

      if (*(v90 + 538) != 1)
      {
      }

      if (*(v90 + 542) != 1)
      {
      }

      if (*(v90 + 546) != 1)
      {
      }

      if (*(v90 + 550) != 1)
      {
      }

      if (*(v90 + 554) != 1)
      {
      }

      if (*(v90 + 558) != 1)
      {
      }

      if (*(v90 + 562) != 1)
      {
      }

      if (*(v90 + 566) != 1)
      {
      }

      if (*(v90 + 570) != 1)
      {
      }

      if (*(v90 + 574) != 1)
      {
      }

      if (*(v90 + 578) != 1)
      {
      }

      if (*(v90 + 582) != 1)
      {
      }

      if (*(v90 + 586) != 1)
      {
      }

      if (*(v90 + 590) != 1)
      {
      }

      if (*(v90 + 594) != 1)
      {
      }

      if (*(v90 + 598) != 1)
      {
      }

      if (*(v90 + 602) != 1)
      {
      }

      if (*(v90 + 606) != 1)
      {
      }

      if (*(v90 + 610) != 1)
      {
      }

      if (*(v90 + 614) != 1)
      {
      }

      if (*(v90 + 618) != 1)
      {
      }

      if (*(v90 + 622) != 1)
      {
      }

      if (*(v90 + 626) != 1)
      {
      }

      if (*(v90 + 630) != 1)
      {
      }

      v99 = *(v90 + 652);

      v100 = *(v90 + 653);
    }

    if (*(v90 + 784) != 1)
    {
      if (*(v90 + 662) != 1)
      {
      }

      if (*(v90 + 666) != 1)
      {
      }

      if (*(v90 + 670) != 1)
      {
      }

      if (*(v90 + 674) != 1)
      {
      }

      if (*(v90 + 678) != 1)
      {
      }

      if (*(v90 + 682) != 1)
      {
      }

      if (*(v90 + 686) != 1)
      {
      }

      if (*(v90 + 690) != 1)
      {
      }

      if (*(v90 + 694) != 1)
      {
      }

      if (*(v90 + 698) != 1)
      {
      }

      if (*(v90 + 702) != 1)
      {
      }

      if (*(v90 + 706) != 1)
      {
      }

      if (*(v90 + 710) != 1)
      {
      }

      if (*(v90 + 714) != 1)
      {
      }

      if (*(v90 + 718) != 1)
      {
      }

      if (*(v90 + 722) != 1)
      {
      }

      if (*(v90 + 726) != 1)
      {
      }

      if (*(v90 + 730) != 1)
      {
      }

      if (*(v90 + 734) != 1)
      {
      }

      if (*(v90 + 738) != 1)
      {
      }

      if (*(v90 + 742) != 1)
      {
      }

      if (*(v90 + 746) != 1)
      {
      }

      if (*(v90 + 750) != 1)
      {
      }

      if (*(v90 + 754) != 1)
      {
      }

      if (*(v90 + 758) != 1)
      {
      }

      if (*(v90 + 762) != 1)
      {
      }

      v101 = *(v90 + 784);

      v102 = *(v90 + 785);
    }

    if (*(v90 + 916) != 1)
    {
      if (*(v90 + 794) != 1)
      {
      }

      if (*(v90 + 798) != 1)
      {
      }

      if (*(v90 + 802) != 1)
      {
      }

      if (*(v90 + 806) != 1)
      {
      }

      if (*(v90 + 810) != 1)
      {
      }

      if (*(v90 + 814) != 1)
      {
      }

      if (*(v90 + 818) != 1)
      {
      }

      if (*(v90 + 822) != 1)
      {
      }

      if (*(v90 + 826) != 1)
      {
      }

      if (*(v90 + 830) != 1)
      {
      }

      if (*(v90 + 834) != 1)
      {
      }

      if (*(v90 + 838) != 1)
      {
      }

      if (*(v90 + 842) != 1)
      {
      }

      if (*(v90 + 846) != 1)
      {
      }

      if (*(v90 + 850) != 1)
      {
      }

      if (*(v90 + 854) != 1)
      {
      }

      if (*(v90 + 858) != 1)
      {
      }

      if (*(v90 + 862) != 1)
      {
      }

      if (*(v90 + 866) != 1)
      {
      }

      if (*(v90 + 870) != 1)
      {
      }

      if (*(v90 + 874) != 1)
      {
      }

      if (*(v90 + 878) != 1)
      {
      }

      if (*(v90 + 882) != 1)
      {
      }

      if (*(v90 + 886) != 1)
      {
      }

      if (*(v90 + 890) != 1)
      {
      }

      if (*(v90 + 894) != 1)
      {
      }

      v103 = *(v90 + 916);

      v104 = *(v90 + 917);
    }

    v105 = *(v90 + 926);

    if (*(v90 + 1059) != 1)
    {
      if (*(v90 + 937) != 1)
      {
      }

      if (*(v90 + 941) != 1)
      {
      }

      if (*(v90 + 945) != 1)
      {
      }

      if (*(v90 + 949) != 1)
      {
      }

      if (*(v90 + 953) != 1)
      {
      }

      if (*(v90 + 957) != 1)
      {
      }

      if (*(v90 + 961) != 1)
      {
      }

      if (*(v90 + 965) != 1)
      {
      }

      if (*(v90 + 969) != 1)
      {
      }

      if (*(v90 + 973) != 1)
      {
      }

      if (*(v90 + 977) != 1)
      {
      }

      if (*(v90 + 981) != 1)
      {
      }

      if (*(v90 + 985) != 1)
      {
      }

      if (*(v90 + 989) != 1)
      {
      }

      if (*(v90 + 993) != 1)
      {
      }

      if (*(v90 + 997) != 1)
      {
      }

      if (*(v90 + 1001) != 1)
      {
      }

      if (*(v90 + 1005) != 1)
      {
      }

      if (*(v90 + 1009) != 1)
      {
      }

      if (*(v90 + 1013) != 1)
      {
      }

      if (*(v90 + 1017) != 1)
      {
      }

      if (*(v90 + 1021) != 1)
      {
      }

      if (*(v90 + 1025) != 1)
      {
      }

      if (*(v90 + 1029) != 1)
      {
      }

      if (*(v90 + 1033) != 1)
      {
      }

      if (*(v90 + 1037) != 1)
      {
      }

      v106 = *(v90 + 1059);

      v107 = *(v90 + 1060);
    }
  }

  v108 = &v7[v1[32]];
  if (*(v108 + 1))
  {

    v109 = *(v108 + 3);
  }

  v110 = *&v7[v1[33]];

  v111 = &v7[v1[34]];
  if (*(v111 + 2))
  {

    v112 = *(v111 + 4);
  }

  v113 = &v7[v1[35]];
  if (*(v113 + 2))
  {

    v114 = *(v113 + 4);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100306708()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  v6 = *(v0 + 144);

  v7 = *(v0 + 160);

  v8 = *(v0 + 184);

  v9 = *(v0 + 200);

  v10 = *(v0 + 216);

  v11 = *(v0 + 232);

  v12 = *(v0 + 248);

  v13 = *(v0 + 264);

  v14 = *(v0 + 280);

  v15 = *(v0 + 296);

  v16 = *(v0 + 312);

  v17 = *(v0 + 328);

  v18 = *(v0 + 344);

  v19 = *(v0 + 360);

  v20 = *(v0 + 376);

  return _swift_deallocObject(v0, 384, 7);
}

void sub_1003067E0()
{
  v7 = *(v0 + 336);
  v8 = *(v0 + 352);
  v5 = *(v0 + 304);
  v6 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 288);
  v1 = *(v0 + 240);
  v2 = *(v0 + 256);
  sub_1005779B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), v1, *(&v1 + 1), v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), *(v0 + 368), *(v0 + 376));
}

uint64_t sub_100306888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource()
{
  result = qword_1008409F0;
  if (!qword_1008409F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003068EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100306954()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  return _swift_deallocObject(v0, 145, 7);
}

uint64_t sub_100306A24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100306A5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100306A84()
{
  result = qword_100840978;
  if (!qword_100840978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100840978);
  }

  return result;
}

uint64_t sub_100306AD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100306B3C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100306C1C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);

  v7 = *(v0 + 144);

  v8 = *(v0 + 160);

  return _swift_deallocObject(v0, 168, 7);
}

void sub_100306D4C()
{
  type metadata accessor for PDF417ParsedData();
  if (v0 <= 0x3F)
  {
    sub_100306DC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100306DC0()
{
  if (!qword_100840A00)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100840A00);
    }
  }
}

uint64_t sub_100306E24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 560))
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

uint64_t sub_100306E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 552) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 560) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 560) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_100306FC0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v56 = a1;
  v54 = a4;
  v6 = type metadata accessor for Logger();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = type metadata accessor for DIPError.Code();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v57;
  v21 = sub_1005792EC(a2, a3);
  if (v20)
  {
    return;
  }

  v48._countAndFlagsBits = a2;
  v48._object = a3;
  v56 = v16;
  v57 = v19;
  v47 = v13;
  v49 = v15;
  v22 = v54;
  if (!v21)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v58 = 0xD000000000000023;
    v59 = 0x800000010070D310;
    String.append(_:)(v48);
    v30._countAndFlagsBits = 0x20646E6120;
    v30._object = 0xE500000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = IdentityTarget.debugDescription.getter();
    String.append(_:)(v31);

    (*(v55 + 104))(v57, enum case for DIPError.Code.internalError(_:), v56);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v48._object = 0;
  v23 = v21;
  v24 = [v21 createdAt];
  if (!v24)
  {
    (*(v55 + 104))(v57, enum case for DIPError.Code.createdAtDateUnavailable(_:), v56);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v25 = v49;
  v26 = v24;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [objc_opt_self() standardUserDefaults];
  v28._countAndFlagsBits = static DaemonInternalDefaultsKeys.clearConnectToWifiReminderTimeout.getter();
  v29 = NSUserDefaults.internalBool(forKey:)(v28);

  if (v29)
  {
    (*(v53 + 8))(v25, v9);
LABEL_10:

    *v22 = 1;
    return;
  }

  v32 = v47;
  Date.init()();
  [v23 connectToWifiReminderInDays];
  v33 = Date.isAtLeast(days:after:)();
  v34 = v53 + 8;
  v35 = *(v53 + 8);
  v36 = v9;
  v35(v32, v9);
  if (v33)
  {
    v35(v25, v9);
    goto LABEL_10;
  }

  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v38 = v37;
  v53 = v34;
  v35(v32, v9);
  Date.timeIntervalSinceReferenceDate.getter();
  v40 = v38 - v39;
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v41 = v22;
  defaultLogger()();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v40 % 3600;
    v45 = (v44 - 60 * ((((34953 * v44) >> 16) >> 5) + (((v44 + ((-30583 * v44) >> 16)) & 0x8000) >> 15)));
    v57 = ((((34953 * v44) >> 16) >> 5) + (((v44 + ((-30583 * v44) >> 16)) & 0x8000) >> 15));
    v46 = swift_slowAlloc();
    *v46 = 134218496;
    *(v46 + 4) = v40 / 3600;
    *(v46 + 12) = 2048;
    *(v46 + 14) = v57;
    v41 = v22;
    *(v46 + 22) = 2048;
    *(v46 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v42, v43, "%ld hour(s) %ld minute(s) %ld second(s) is the time left before which the connect to wifi alert can be triggered.", v46, 0x20u);
    v36 = v9;
  }

  (*(v50 + 8))(v52, v51);
  v35(v49, v36);
  *v41 = 0;
}

void *sub_1003076D4@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(&v6, *a1);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_10030771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 240) = a4;
  *(v6 + 248) = a6;
  *(v6 + 433) = a5;
  *(v6 + 224) = a2;
  *(v6 + 232) = a3;
  *(v6 + 216) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 256) = v7;
  v8 = *(v7 - 8);
  *(v6 + 264) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  v10 = type metadata accessor for IdentityProofingUnorderedUIElement();
  *(v6 + 280) = v10;
  v11 = *(v10 - 8);
  *(v6 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v13 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v6 + 312) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_100307880, 0, 0);
}

uint64_t sub_100307880()
{
  v1 = *(v0 + 232);
  if (!v1)
  {
    (*(*(v0 + 264) + 104))(*(v0 + 272), enum case for DIPError.Code.proofingSessionIDUnavailable(_:), *(v0 + 256));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_5;
  }

  if (*(v0 + 433))
  {
    (*(*(v0 + 264) + 104))(*(v0 + 272), enum case for DIPError.Code.targetUnavailable(_:), *(v0 + 256));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_5:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = *(v0 + 320);
    v4 = *(v0 + 296);
    v3 = *(v0 + 304);
    v5 = *(v0 + 272);

    v6 = *(v0 + 8);

    return v6();
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], v0 + 16);
  os_unfair_lock_unlock(v8 + 54);
  v9 = *(v0 + 240);
  v10 = *(v0 + 224);
  v11 = *(v0 + 72);
  *(v0 + 328) = v11;

  sub_100031918(v0 + 16);
  v12 = swift_allocObject();
  *(v0 + 336) = v12;
  v12[2] = v10;
  v12[3] = v1;
  v12[4] = v9;
  v13 = *(v11 + 16);
  v14 = swift_allocObject();
  *(v0 + 344) = v14;
  *(v14 + 16) = sub_1003086D8;
  *(v14 + 24) = v12;
  v15 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v16 = swift_task_alloc();
  *(v0 + 352) = v16;
  *v16 = v0;
  v16[1] = sub_100307C4C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 432, sub_100308730, v14, &type metadata for Bool);
}

uint64_t sub_100307C4C()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = sub_100307F30;
  }

  else
  {
    v5 = *(v2 + 336);
    v6 = *(v2 + 344);
    v7 = *(v2 + 328);

    *(v2 + 434) = *(v2 + 432);
    v4 = sub_100307D8C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100307D8C()
{
  if (*(v0 + 434) != 1)
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    v15 = *(v0 + 272);

    v11 = *(v0 + 8);
    goto LABEL_5;
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 216);
  *(v0 + 368) = sub_1006146AC();
  v3 = sub_10058CB08();
  *(v0 + 376) = v4;
  *(v0 + 384) = v6;
  if (v1)
  {

    v7 = *(v0 + 320);
    v8 = *(v0 + 296);
    v9 = *(v0 + 304);
    v10 = *(v0 + 272);

    v11 = *(v0 + 8);
LABEL_5:

    return v11();
  }

  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = swift_task_alloc();
  *(v0 + 392) = v21;
  *v21 = v0;
  v21[1] = sub_100307FD8;
  v22 = *(v0 + 320);

  return sub_100612ED4(v22, v17, v18, v19, v20);
}

uint64_t sub_100307F30()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];

  v4 = v0[45];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[34];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100307FD8()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = v2[48];
  v6 = v2[47];
  v7 = v2[46];

  if (v0)
  {
    v8 = sub_100308430;
  }

  else
  {
    v8 = sub_100308144;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100308144()
{
  v1 = v0[40];
  v2 = *(v1 + *(v0[39] + 48));
  if (v2 && *(v2 + 16))
  {
    v3 = sub_10003ADCC(0xD00000000000001BLL, 0x800000010070D2F0);
    if (v4)
    {
      v5 = v0[37];
      v6 = v0[38];
      v7 = v0[35];
      v8 = v0[36];
      (*(v8 + 16))(v5, *(v2 + 56) + *(v8 + 72) * v3, v7);
      (*(v8 + 32))(v6, v5, v7);
      v9 = IdentityProofingUnorderedUIElement.title.getter();
      v11 = v10;
      v0[51] = v10;
      v12 = IdentityProofingUnorderedUIElement.messages.getter();
      if (v12)
      {
        if (v12[2])
        {
          v14 = v12[4];
          v13 = v12[5];

LABEL_13:
          v0[52] = v13;
          v21 = v0[29];
          v22 = swift_task_alloc();
          v0[53] = v22;
          *v22 = v0;
          v22[1] = sub_1003084BC;
          v23 = v0[31];
          v24 = v0[28];

          return sub_1002CD7D4(v9, v11, v14, v13, v24, v21, 0);
        }
      }

      v14 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    v1 = v0[40];
  }

  (*(v0[33] + 104))(v0[34], enum case for DIPError.Code.attributeConfigUnavailable(_:), v0[32]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1001A1FAC(v1);
  v15 = v0[40];
  v16 = v0[37];
  v17 = v0[38];
  v18 = v0[34];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100308430()
{
  v1 = v0[50];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[34];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003084BC()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v5 = *v0;

  return _swift_task_switch(sub_1003085F0, 0, 0);
}

uint64_t sub_1003085F0()
{
  v1 = v0[40];
  (*(v0[36] + 8))(v0[38], v0[35]);
  sub_1001A1FAC(v1);
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[34];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003086A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003086F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100308730@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_100308788(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x726F727265;
  }

  v4 = 1919968359;
  if ((a1 != 1919968359 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v4 = 0x72466E6163536469;
    if ((a1 != 0xD00000000000001ALL || 0x80000001006FAE90 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (a1 == 0xD000000000000022 && 0x800000010070D4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0xD000000000000013;
      }

      v4 = 0x61426E6163536469;
      if ((a1 != 0xD000000000000019 || 0x80000001006FAE70 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (a1 == 0xD000000000000021 && 0x800000010070D460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 0xD000000000000012;
        }

        v4 = 0x6569666C6573;
        if ((a1 != 0x6569666C6573 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v4 = 0x65646F4368747561;
          if ((a1 != 0x65646F6368747561 || a2 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (a1 == 0xD000000000000010 && 0x800000010070D420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD000000000000010;
            }

            if (a1 == 0xD000000000000016 && 0x800000010070D3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD00000000000001ELL;
            }

            if (a1 == 0x776569766572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD000000000000010;
            }

            if (a1 == 0xD000000000000014 && 0x800000010070D3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD000000000000012;
            }

            v4 = 0x7972746572;
            if ((a1 != 0x7972746572 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v4 = 0x416F547964616572;
              if ((a1 != 0x416F547964616572 || a2 != 0xEC00000044496464) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                v4 = 8024685;
                if ((a1 != 8024685 || a2 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v4 = 1885956195;
                  if ((a1 != 1885956195 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    return 0x726F727265;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_100308C34(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return _swift_task_switch(sub_100308C5C, 0, 0);
}

uint64_t sub_100308C5C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = String._bridgeToObjectiveC()();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100308D94;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A470, &unk_1006DD7D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_10080D918;
  v0[14] = v5;
  [v2 generateDeviceEncryptionKeyForCredential:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100308D94()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 176);
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
    swift_willThrow();

    v6 = *(v3 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 144);

    v9 = *(v3 + 8);

    return v9(v8);
  }
}

uint64_t sub_100308EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a1;
  v4[20] = a2;
  v5 = *v3;
  v4[21] = a3;
  v4[22] = v5;
  return _swift_task_switch(sub_100308F20, 0, 0);
}

uint64_t sub_100308F20()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = String._bridgeToObjectiveC()();
  v0[23] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10030905C;
  v6 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A460, &qword_1006EA1B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672B24;
  v0[13] = &unk_10080D8F0;
  v0[14] = v6;
  [v2 generatePresentmentKeysForCredential:v5 numKeys:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10030905C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 184);
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
    swift_willThrow();

    v6 = *(v3 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 144);

    v9 = *(v3 + 8);

    return v9(v8);
  }
}

uint64_t sub_1003091E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13[1] = a1;
  v3 = *v1;
  v4 = sub_100007224(&qword_100840E20, &qword_1006DD978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = sub_100007224(&qword_100840E28, &unk_1006DD980);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = *(v2[30] + 152);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  (*(v5 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);

  AsyncStream.init(_:bufferingPolicy:_:)();

  *(swift_allocObject() + 16) = v3;
  sub_1000BA30C(&qword_100840E30, &qword_100840E28, &unk_1006DD980);
  return AsyncCompactMapSequence.init(_:transform:)();
}

uint64_t sub_100309428(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10030944C, 0, 0);
}

uint64_t sub_10030944C()
{
  v2 = v0[2];
  v1 = v0[3];
  *v2 = sub_100310AE4();
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1003094B0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100309574, 0, 0);
}

uint64_t sub_100309574()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;

  v5 = *(v1 + 240);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100309624;
  v8 = v0[7];
  v7 = v0[8];

  return sub_100189D38(v8, v7);
}

uint64_t sub_100309624(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10030977C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 96);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_10030977C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_errorRetain();
  sub_10030F5B4(v0 + 16);
  sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v5);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100309908(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v2[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100309A10, 0, 0);
}

uint64_t sub_100309A10()
{
  v1 = v0[6];
  v2 = *(v0[7] + 256);
  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100309ABC;
  v5 = v0[14];

  return sub_1001AA1E4(v5, v3);
}

uint64_t sub_100309ABC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100309FDC;
  }

  else
  {
    v3 = sub_100309BD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100309BD0()
{
  v31 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  defaultLogger()();
  sub_1001A2050(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    v11 = (v7 + *(v8 + 64));
    if (v11[1])
    {
      v12 = *v11;
      v13 = v11[1];
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v17 = v0[13];
    v29 = v0[11];
    v19 = v0[8];
    v18 = v0[9];

    sub_1001A1FAC(v17);
    v20 = sub_100141FE4(v12, v13, &v30);

    *(v9 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "proofingMinWatchOSVersion version parsed from static workflow: %s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v18 + 8))(v29, v19);
  }

  else
  {
    v14 = v0[11];
    v15 = v0[8];
    v16 = v0[9];

    sub_1001A1FAC(v7);
    (*(v16 + 8))(v14, v15);
  }

  v21 = v0[14];
  v22 = v0[12];
  v0[17] = *(v0[7] + 144);
  v23 = (v21 + *(v22 + 64));
  v24 = *v23;
  v25 = v23[1];

  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_100309E28;
  v27 = v0[6];

  return sub_1002D1F80(v24, v25, v27);
}

uint64_t sub_100309E28(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;
  v4 = *(v2 + 144);
  v5 = *(v2 + 136);
  v7 = *v1;

  return _swift_task_switch(sub_100309F48, 0, 0);
}

uint64_t sub_100309F48()
{
  sub_1001A1FAC(*(v0 + 112));
  v1 = *(v0 + 24);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_100309FDC()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v3 + 8))(v2, v4);
  v0[19] = *(v5 + 144);

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10030A0D8;
  v7 = v0[6];

  return sub_1002D1F80(0, 0, v7);
}

uint64_t sub_10030A0D8(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 40) = a1;
  *(v3 + 32) = v1;
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);
  v7 = *v1;

  return _swift_task_switch(sub_10030A1F8, 0, 0);
}

uint64_t sub_10030A1F8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 40);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_10030A28C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10030A358, 0, 0);
}

uint64_t sub_10030A358()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10030A3EC;

  return sub_1004B1CC8();
}

uint64_t sub_10030A3EC(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v6 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return _swift_task_switch(sub_10030A4F0, 0, 0);
}

uint64_t sub_10030A4F0()
{
  v28 = v0;
  if (*(v0 + 72))
  {
    v1 = *(v0 + 40);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 24);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x800000010070DB60, &v27);
      _os_log_impl(&_mh_execute_header, v2, v3, "%s - no watch connection or passes, returning 0", v8, 0xCu);
      sub_10000BB78(v9);
    }

    (*(v6 + 8))(v5, v7);
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 48);
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 64);
      v15 = *(v0 + 48);
      v16 = *(v0 + 24);
      v17 = *(v0 + 32);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x800000010070DB60, &v27);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - total watch identity passes = %ld", v18, 0x16u);
      sub_10000BB78(v19);

      (*(v17 + 8))(v15, v16);
    }

    else
    {
      v20 = *(v0 + 48);
      v21 = *(v0 + 24);
      v22 = *(v0 + 32);

      (*(v22 + 8))(v20, v21);
    }

    v10 = *(v0 + 64);
  }

  v24 = *(v0 + 40);
  v23 = *(v0 + 48);

  v25 = *(v0 + 8);

  return v25(v10);
}

uint64_t sub_10030A7A8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10030A868, 0, 0);
}

uint64_t sub_10030A868()
{
  v1 = *(v0[2] + 56);
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = IdentityProofingConfiguration.country.getter();
    v0[7] = v4;
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = IdentityProofingConfiguration.state.getter();
      v0[8] = v8;
      if (v8)
      {
        v9 = v7;
        v10 = v8;
        v11 = v0[2];
        if (IdentityProofingConfiguration.documentType.getter() == 3)
        {
          v12 = 0x6E6F736D697263;
        }

        else
        {
          v12 = 0x61746E6567616DLL;
        }

        v13 = *(v11 + 112);
        v14 = swift_task_alloc();
        v0[9] = v14;
        *v14 = v0;
        v14[1] = sub_10030AC48;

        return sub_1002BD1C0(v12, 0xE700000000000000, v5, v6, v9, v10, 0, 0);
      }

      v17 = v0[4];
      v16 = v0[5];
      v18 = v0[3];

      (*(v17 + 104))(v16, enum case for DIPError.Code.idStateUnavailable(_:), v18);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    else
    {
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[3]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.proofingConfigurationUnavailable(_:), v0[3]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10030AC48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v9 = sub_10030AE28;
  }

  else
  {
    *(v4 + 88) = a1;
    v9 = sub_10030ADB8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10030ADB8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2(v3);
}

uint64_t sub_10030AE28()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10030AE94()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10030AF54, 0, 0);
}

uint64_t sub_10030AF54()
{
  v1 = *(*(v0 + 56) + 256);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_10030AFE8;

  return sub_1001B3B80();
}

uint64_t sub_10030AFE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10030B154, 0, 0);
  }

  else
  {
    v9 = *(v6 + 80);

    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_10030B154()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_errorRetain();
  sub_10030F5B4(v0 + 16);
  sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v5);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10030B2D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10030B398, 0, 0);
}

uint64_t sub_10030B398()
{
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchBiomeFedStatsUI: Attempting to fetch the biome fed stats UI", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 256);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_10030B4D8;
  v11 = v0[2];

  return sub_1001AE980(v11);
}

uint64_t sub_10030B4D8(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_10030B5F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10030B6B0, 0, 0);
}

uint64_t sub_10030B6B0()
{
  v1 = v0[7];
  IdentityProofingConfiguration.documentType.getter();
  v2 = IdentityDocumentType.rawValue.getter();
  v3 = IdentityDocumentType.rawValue.getter();
  v4 = v0[8];
  if (v2 == v3)
  {
    v5 = *(v4 + 248);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_10030B7D4;

    return sub_1001DE548();
  }

  else
  {
    v8 = *(v4 + 256);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_10030B92C;
    v10 = v0[7];

    return sub_1001AC7E8(v10);
  }
}

uint64_t sub_10030B7D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10030BA84, 0, 0);
  }

  else
  {
    v7 = *(v4 + 88);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_10030B92C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10030BC10, 0, 0);
  }

  else
  {
    v7 = *(v4 + 88);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_10030BA84()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_errorRetain();
  sub_10030F5B4(v0 + 16);
  sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v5);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10030BC10()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_errorRetain();
  sub_10030F5B4(v0 + 16);
  sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v5);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10030BD9C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10030BE60, 0, 0);
}

uint64_t sub_10030BE60()
{
  v1 = *(*(v0 + 24) + 264);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10030BF00;
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);

  return sub_1001CD638(v4, v3);
}

uint64_t sub_10030BF00()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10030C03C, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10030C03C()
{
  v1 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10030C194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10030C25C, 0, 0);
}

uint64_t sub_10030C25C()
{
  v1 = *(v0[6] + 248);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10030C2FC;
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1001F7198(v6, v5, v3, v4);
}

uint64_t sub_10030C2FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10030C454, 0, 0);
  }

  else
  {
    v7 = *(v4 + 72);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_10030C454()
{
  v1 = v0[11];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10030C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[375] = v4;
  v5[374] = a4;
  v5[373] = a3;
  v5[372] = a2;
  v5[371] = a1;
  v6 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v5[376] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[377] = swift_task_alloc();

  return _swift_task_switch(sub_10030C650, 0, 0);
}

uint64_t sub_10030C650()
{
  v1 = *(v0[375] + 248);
  v2 = swift_task_alloc();
  v0[378] = v2;
  *v2 = v0;
  v2[1] = sub_10030C6F8;
  v3 = v0[374];
  v4 = v0[373];
  v5 = v0[372];
  v6 = v0[371];

  return sub_1001DAB98(v6, v5, v4, v3);
}

uint64_t sub_10030C6F8()
{
  v2 = *v1;
  v3 = *(*v1 + 3024);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 3016);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10030C844, 0, 0);
  }
}

uint64_t sub_10030C844()
{
  v1 = v0[371];
  v0[379] = *(v0[375] + 256);
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[380] = v3;
  *v3 = v0;
  v3[1] = sub_10030C8F8;
  v4 = v0[377];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_10030C8F8()
{
  v2 = *(*v1 + 3040);
  v5 = *v1;
  *(*v1 + 3048) = v0;

  if (v0)
  {
    v3 = sub_10030D3F4;
  }

  else
  {
    v3 = sub_10030CA0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10030CA0C()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = v0[381];
  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 328));
  v3 = v2 + 54;
  if (v1)
  {

    os_unfair_lock_unlock(v3);
  }

  else
  {
    os_unfair_lock_unlock(v3);
    sub_100020260((v0 + 328), (v0 + 353));
    sub_100031918((v0 + 328));
    v0[382] = *sub_10000BA08(v0 + 353, v0[356]);
    v4 = swift_task_alloc();
    v0[383] = v4;
    *v4 = v0;
    v4[1] = sub_10030CB54;

    sub_10050886C((v0 + 2));
  }
}

uint64_t sub_10030CB54()
{
  v2 = *v1;
  v3 = *(*v1 + 3064);
  v7 = *v1;
  *(*v1 + 3072) = v0;

  if (v0)
  {
    v4 = *(v2 + 3056);
    v5 = sub_10030D020;
  }

  else
  {
    v5 = sub_10030CC70;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10030CC70()
{
  memcpy((v0 + 1776), (v0 + 48), 0x1A1uLL);
  sub_1000AA624(v0 + 1776, v0 + 2200);
  sub_1000F2758(v0 + 16);
  memcpy((v0 + 1352), (v0 + 1776), 0x1A1uLL);
  nullsub_7(v0 + 1352);
  memcpy((v0 + 504), (v0 + 1352), 0x1A1uLL);
  v1 = *(v0 + 3032);
  sub_10000BB78((v0 + 2824));
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 2864, &qword_10083D0A0, &qword_1006DAFC0);
  v2 = *(v0 + 2888);
  if (v2)
  {
    v3 = sub_10000BA08((v0 + 2864), *(v0 + 2888));
    v4 = *(v2 - 8);
    v5 = *(v4 + 64) + 15;
    v6 = swift_task_alloc();
    (*(v4 + 16))(v6, v3, v2);
    sub_10000BE18(v0 + 2864, &qword_10083D0A0, &qword_1006DAFC0);
    LOBYTE(v3) = *(v6 + *(type metadata accessor for Workflow() + 184));
    (*(v4 + 8))(v6, v2);
  }

  else
  {
    sub_10000BE18(v0 + 2864, &qword_10083D0A0, &qword_1006DAFC0);
  }

  sub_10000BBC4(v1 + 144, v0 + 2904, &qword_10083D0A0, &qword_1006DAFC0);
  v7 = *(v0 + 2928);
  if (v7)
  {
    v8 = sub_10000BA08((v0 + 2904), *(v0 + 2928));
    v9 = *(v7 - 8);
    v10 = *(v9 + 64) + 15;
    v11 = swift_task_alloc();
    (*(v9 + 16))(v11, v8, v7);
    sub_10000BE18(v0 + 2904, &qword_10083D0A0, &qword_1006DAFC0);
    LOBYTE(v8) = *(v11 + *(type metadata accessor for Workflow() + 176));
    (*(v9 + 8))(v11, v7);
  }

  else
  {
    sub_10000BE18(v0 + 2904, &qword_10083D0A0, &qword_1006DAFC0);
  }

  v12 = *(v0 + 3016);
  v13 = *(v0 + 3008);
  v14 = (v12 + *(v13 + 96));
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = (v12 + *(v13 + 100));
  v18 = *v17;
  v19 = *(v17 + 8);
  memcpy((v0 + 928), (v0 + 504), 0x1A1uLL);
  if (sub_10010F2A8(v0 + 928) != 1)
  {
    sub_10000BE18(v0 + 504, &qword_10083AAA0, &unk_1006D8E00);
    v20 = *(v0 + 1344);
  }

  v21 = *(v0 + 3016);
  v22 = objc_allocWithZone(type metadata accessor for IdentityProofingNFCConfig());
  v23 = IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)();
  sub_1001A1FAC(v21);

  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_10030D020()
{
  v1 = *(v0 + 3072);

  return _swift_task_switch(sub_10030D088, 0, 0);
}

uint64_t sub_10030D088()
{
  sub_10010ED70(v0 + 504);
  v1 = *(v0 + 3032);
  sub_10000BB78((v0 + 2824));
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, v0 + 2864, &qword_10083D0A0, &qword_1006DAFC0);
  v2 = *(v0 + 2888);
  if (v2)
  {
    v3 = sub_10000BA08((v0 + 2864), *(v0 + 2888));
    v4 = *(v2 - 8);
    v5 = *(v4 + 64) + 15;
    v6 = swift_task_alloc();
    (*(v4 + 16))(v6, v3, v2);
    sub_10000BE18(v0 + 2864, &qword_10083D0A0, &qword_1006DAFC0);
    LOBYTE(v3) = *(v6 + *(type metadata accessor for Workflow() + 184));
    (*(v4 + 8))(v6, v2);
  }

  else
  {
    sub_10000BE18(v0 + 2864, &qword_10083D0A0, &qword_1006DAFC0);
  }

  sub_10000BBC4(v1 + 144, v0 + 2904, &qword_10083D0A0, &qword_1006DAFC0);
  v7 = *(v0 + 2928);
  if (v7)
  {
    v8 = sub_10000BA08((v0 + 2904), *(v0 + 2928));
    v9 = *(v7 - 8);
    v10 = *(v9 + 64) + 15;
    v11 = swift_task_alloc();
    (*(v9 + 16))(v11, v8, v7);
    sub_10000BE18(v0 + 2904, &qword_10083D0A0, &qword_1006DAFC0);
    LOBYTE(v8) = *(v11 + *(type metadata accessor for Workflow() + 176));
    (*(v9 + 8))(v11, v7);
  }

  else
  {
    sub_10000BE18(v0 + 2904, &qword_10083D0A0, &qword_1006DAFC0);
  }

  v12 = *(v0 + 3016);
  v13 = *(v0 + 3008);
  v14 = (v12 + *(v13 + 96));
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = (v12 + *(v13 + 100));
  v18 = *v17;
  v19 = *(v17 + 8);
  memcpy((v0 + 928), (v0 + 504), 0x1A1uLL);
  if (sub_10010F2A8(v0 + 928) != 1)
  {
    sub_10000BE18(v0 + 504, &qword_10083AAA0, &unk_1006D8E00);
    v20 = *(v0 + 1344);
  }

  v21 = *(v0 + 3016);
  v22 = objc_allocWithZone(type metadata accessor for IdentityProofingNFCConfig());
  v23 = IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)();
  sub_1001A1FAC(v21);

  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_10030D3F4()
{
  v1 = v0[381];
  v2 = v0[377];

  v3 = v0[1];

  return v3();
}

void sub_10030D458(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v46 = a4;
  v8 = type metadata accessor for DIPError.Code();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = IdentityProofingConfiguration.documentType.getter();
  v13 = sub_10057847C(v12, a2, a3);
  if (v4)
  {
    return;
  }

  v42[1] = a1;
  v14 = v45;
  v15 = v46;
  v44 = v11;
  if (!v13)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v18._countAndFlagsBits = 0xD000000000000030;
    v18._object = 0x800000010070D800;
    String.append(_:)(v18);
    v49 = IdentityProofingConfiguration.documentType.getter();
    _print_unlocked<A, B>(_:_:)();
    v19._countAndFlagsBits = 0x6669746E65646920;
    v19._object = 0xEC00000020726569;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a2;
    v20._object = a3;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x72617420646E6120;
    v21._object = 0xEC00000020746567;
    String.append(_:)(v21);
    v22._countAndFlagsBits = IdentityTarget.debugDescription.getter();
    String.append(_:)(v22);

    (*(v14 + 104))(v44, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v42[0] = 0;
  v43 = v13;
  [v13 proofingActionStatus];
  v16 = IdentityProofingActionStatus.init(rawValue:)();
  if (v17)
  {
    (*(v14 + 104))(v44, enum case for DIPError.Code.invalidProofingActionStatus(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v23 = v16;
  v24 = IdentityProofingActionStatus.rawValue.getter();
  if (v24 != IdentityProofingActionStatus.rawValue.getter())
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v35._countAndFlagsBits = 0xD000000000000044;
    v35._object = 0x800000010070D870;
    String.append(_:)(v35);
    v49 = v23;
    _print_unlocked<A, B>(_:_:)();
    v36._countAndFlagsBits = 0x6E6974697845202ELL;
    v36._object = 0xEC0000002E2E2E67;
    String.append(_:)(v36);
    (*(v14 + 104))(v44, enum case for DIPError.Code.invalidProofingActionStatus(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_12:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v25 = [v43 proofingSessionID];
  if (!v25)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v37._countAndFlagsBits = 0xD000000000000030;
    v37._object = 0x800000010070D800;
    String.append(_:)(v37);
    v49 = IdentityProofingConfiguration.documentType.getter();
    _print_unlocked<A, B>(_:_:)();
    v38._countAndFlagsBits = 0x6669746E65646920;
    v38._object = 0xEC00000020726569;
    String.append(_:)(v38);
    v39._countAndFlagsBits = a2;
    v39._object = a3;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x72617420646E6120;
    v40._object = 0xEC00000020746567;
    String.append(_:)(v40);
    v41._countAndFlagsBits = IdentityTarget.debugDescription.getter();
    String.append(_:)(v41);

    (*(v14 + 104))(v44, enum case for DIPError.Code.internalError(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_12;
  }

  v26 = v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *v15 = v23;
  v15[1] = v27;
  v15[2] = v29;
  v30 = [v43 learnMoreURLString];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {

    v32 = 0;
    v34 = 0;
  }

  v15[3] = v32;
  v15[4] = v34;
}

uint64_t sub_10030DBCC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = type metadata accessor for IdentityDocumentType.Category();
  v3[14] = v11;
  v12 = *(v11 - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_10030DD8C, 0, 0);
}

uint64_t sub_10030DD8C()
{
  v70 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v6 = *(v0 + 24);
    v7 = IdentityProofingConfiguration.state.getter();
    if (!v8)
    {
      (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 88));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
LABEL_18:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_19;
    }
  }

  else
  {
    if (v5 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v17 = *(v0 + 120);
      v16 = *(v0 + 128);
      v18 = *(v0 + 112);
      (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for DIPError.Code.idTypeUnavailable(_:), *(v0 + 88));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v17 + 8))(v16, v18);
LABEL_19:
      v25 = *(v0 + 128);
      v26 = *(v0 + 104);
      v28 = *(v0 + 72);
      v27 = *(v0 + 80);
      v29 = *(v0 + 48);

      v30 = *(v0 + 8);
LABEL_20:

      return v30();
    }

    v9 = *(v0 + 24);
    v7 = IdentityProofingConfiguration.country.getter();
    if (!v8)
    {
      (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for DIPError.Code.idCountryUnavailable(_:), *(v0 + 88));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      goto LABEL_18;
    }
  }

  v10 = v7;
  v11 = v8;
  v12 = *(v0 + 24);
  if (*(v0 + 32) == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = IdentityProofingConfiguration.documentType.getter();
  sub_1002E0DD4(v10, v11, v13, 0, 0, v14, v68);
  v15 = *v68;
  v65 = v69;
  v66 = *v68;
  *(v0 + 152) = v69;
  *(v0 + 136) = v15;

  if (!*(&v66 + 1))
  {
    v31 = *(v0 + 72);
    v32 = *(v0 + 24);

    defaultLogger()();

    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 64);
    v37 = *(v0 + 72);
    v39 = *(v0 + 56);
    if (v36)
    {
      v67 = *(v0 + 72);
      v40 = *(v0 + 24);
      v41 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v41 = 136315394;
      v42 = sub_100141FE4(v10, v11, v68);

      *(v41 + 4) = v42;
      *(v41 + 12) = 2080;
      IdentityProofingConfiguration.documentType.getter();
      v43 = IdentityDocumentType.description.getter();
      v45 = sub_100141FE4(v43, v44, v68);

      *(v41 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "IdentityProofingFlow could not find proofing data for %s for documentType: %s", v41, 0x16u);
      swift_arrayDestroy();

      (*(v38 + 8))(v67, v39);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
    }

    v49 = *(v0 + 128);
    v50 = *(v0 + 104);
    v52 = *(v0 + 72);
    v51 = *(v0 + 80);
    v53 = *(v0 + 48);

    v30 = *(v0 + 8);
    goto LABEL_20;
  }

  if (*(&v65 + 1))
  {
    v19 = sub_1002E3FA4(v66, *(&v66 + 1));
    *(v0 + 168) = v20;
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = swift_task_alloc();
      *(v0 + 176) = v23;
      *v23 = v0;
      v23[1] = sub_10030E6C4;

      return sub_1002A2314(v21, v22, v65, *(&v65 + 1));
    }

    else
    {
      v54 = *(v0 + 80);
      defaultLogger()();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 80);
      v59 = *(v0 + 56);
      v60 = *(v0 + 64);
      if (v57)
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Unable to clean up PII token, identifier doesnt exist", v61, 2u);
      }

      (*(v60 + 8))(v58, v59);
      v62 = *(v0 + 160);
      v63 = swift_task_alloc();
      *(v0 + 184) = v63;
      *v63 = v0;
      v63[1] = sub_10030E854;
      v64 = *(v0 + 152);

      return sub_1002A6638(v64, v62);
    }
  }

  else
  {
    v46 = *(v0 + 144);
    *(v0 + 192) = *(*(v0 + 40) + 120);
    v47 = swift_task_alloc();
    *(v0 + 200) = v47;
    *v47 = v0;
    v47[1] = sub_10030EA14;
    v48 = *(v0 + 136);

    return sub_100295264(v48, v46);
  }
}

uint64_t sub_10030E6C4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *v0;

  v5 = v1[20];
  v6 = swift_task_alloc();
  v1[23] = v6;
  *v6 = v4;
  v6[1] = sub_10030E854;
  v7 = v1[19];

  return sub_1002A6638(v7, v5);
}

uint64_t sub_10030E854()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_10030E96C, 0, 0);
}

uint64_t sub_10030E96C()
{
  v1 = v0[18];
  v0[24] = *(v0[5] + 120);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10030EA14;
  v3 = v0[17];

  return sub_100295264(v3, v1);
}

uint64_t sub_10030EA14()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_10030ED10;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_10030EB30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10030EB30()
{
  if ((*(v0 + 32) & 2) != 0)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 48);
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;

    sub_1003E653C(0, 0, v2, &unk_1006DC378, v4);
  }

  v5 = type metadata accessor for IdentityManagementSessionDelegate();
  v6 = [objc_opt_self() defaultCenter];
  v7 = String._bridgeToObjectiveC()();
  *(v0 + 16) = v5;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v6 postNotificationName:v7 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 48);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10030ED10()
{
  v1 = v0[18];

  v2 = v0[26];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[16];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10030EEBC()
{
  v1 = *(*(v0 + 24) + 272);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10030EF50;

  return sub_1002DDE50();
}

uint64_t sub_10030EF50(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10030F084, 0, 0);
  }
}

uint64_t sub_10030F084()
{
  v0[2] = _swiftEmptyArrayStorage;
  v1 = v0[5];
  v2 = IdentityProofingStatus.activeConfigurations.getter();
  v0[6] = v2;
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v0[7] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = v0[5];
    v9 = v0[6];

    IdentityProofingStatus.availability.getter();
    v11 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
    v12 = IdentityProofingStatus.init(activeConfigurations:availability:)();

    v13 = v0[1];

    return v13(v12);
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[7] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v0[8] = _swiftEmptyArrayStorage;
  v4 = v0[6];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;
  v0[9] = v5;
  v0[10] = 1;
  v7 = v0[3];
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_10030F230;

  return sub_10059D940(v6);
}

uint64_t sub_10030F230(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v9 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[8];
    v6 = v3[6];

    v7 = sub_10030F548;
  }

  else
  {
    v7 = sub_10030F358;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_10030F358()
{
  v1 = *(v0 + 96);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  if (v3 == v5)
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);

    IdentityProofingStatus.availability.getter();
    v8 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
    v9 = IdentityProofingStatus.init(activeConfigurations:availability:)();

    v10 = *(v0 + 8);

    v10(v9);
    return;
  }

  v11 = *(v0 + 80);
  *(v0 + 64) = *(v0 + 16);
  v12 = *(v0 + 48);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
      return;
    }

    v13 = *(v12 + 8 * v11 + 32);
  }

  v14 = v13;
  *(v0 + 72) = v13;
  *(v0 + 80) = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = *(v0 + 24);
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  *v16 = v0;
  v16[1] = sub_10030F230;

  sub_10059D940(v14);
}

uint64_t sub_10030F548()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 104);
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_10030F5B4(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.PropertyKey();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v42[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C9C0(_swiftEmptyArrayStorage);
  sub_10000BBC4(a1, &v45, &qword_10083D0A0, &qword_1006DAFC0);
  if (v46)
  {
    sub_10001F358(&v45, v48);
    v9 = v4[13];
    v9(v7, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
    v10 = sub_10000BA08(v48, v49);
    v11 = *v10;
    v12 = v10[1];
    v46 = &type metadata for String;
    v47 = &protocol witness table for String;
    *&v45 = v11;
    *(&v45 + 1) = v12;
    sub_10001F358(&v45, v42);

    LOBYTE(v12) = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v8;
    v13 = v43;
    v14 = sub_10001F370(v42, v43);
    v15 = *(*(v13 - 8) + 64);
    __chkstk_darwin(v14);
    v17 = (&v42[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    sub_100658FF4(*v17, v17[1], v7, v12, v44);
    v19 = v4[1];
    v19(v7, v3);
    sub_10000BB78(v42);
    v20 = v44[0];
    v9(v7, enum case for DIPError.PropertyKey.inoProviderID(_:), v3);
    v21 = sub_10000BA08(v48, v49);
    v22 = v21[6];
    v23 = v21[7];
    v46 = &type metadata for String;
    v47 = &protocol witness table for String;
    *&v45 = v22;
    *(&v45 + 1) = v23;
    sub_10001F358(&v45, v42);

    LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v20;
    v24 = v43;
    v25 = sub_10001F370(v42, v43);
    v26 = *(*(v24 - 8) + 64);
    __chkstk_darwin(v25);
    v28 = (&v42[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    sub_100658FF4(*v28, v28[1], v7, v23, v44);
    v19(v7, v3);
    sub_10000BB78(v42);
    v8 = v44[0];
  }

  else
  {
    sub_10000BE18(&v45, &qword_10083D0A0, &qword_1006DAFC0);
    v30 = *(v1 + 256);
    swift_beginAccess();
    sub_10000BBC4(v30 + 144, &v45, &qword_10083D0A0, &qword_1006DAFC0);
    if (!v46)
    {
      sub_10000BE18(&v45, &qword_10083D0A0, &qword_1006DAFC0);
      return v8;
    }

    sub_10001F358(&v45, v48);
    (v4[13])(v7, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
    v31 = sub_10000BA08(v48, v49);
    v32 = *v31;
    v33 = v31[1];
    v46 = &type metadata for String;
    v47 = &protocol witness table for String;
    *&v45 = v32;
    *(&v45 + 1) = v33;
    sub_10001F358(&v45, v42);

    LOBYTE(v33) = swift_isUniquelyReferenced_nonNull_native();
    v41 = v8;
    v34 = v43;
    v35 = sub_10001F370(v42, v43);
    v36 = *(*(v34 - 8) + 64);
    __chkstk_darwin(v35);
    v38 = (&v42[-1] - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    sub_100658FF4(*v38, v38[1], v7, v33, &v41);
    (v4[1])(v7, v3);
    sub_10000BB78(v42);
    v8 = v41;
  }

  sub_10000BB78(v48);
  return v8;
}

uint64_t sub_10030FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return _swift_task_switch(sub_10030FB44, 0, 0);
}

uint64_t sub_10030FB44()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[31];
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[9];
  v0[34] = v6;

  sub_100031918((v0 + 2));
  v7 = swift_allocObject();
  v0[35] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v2;
  v7[5] = v3;
  v8 = *(v6 + 16);
  v9 = swift_allocObject();
  v0[36] = v9;
  *(v9 + 16) = sub_10031587C;
  *(v9 + 24) = v7;
  v10 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
  v11 = v5;

  v12 = swift_task_alloc();
  v0[37] = v12;
  *v12 = v0;
  v12[1] = sub_10030FD20;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 27, sub_10031589C, v9, &type metadata for String);
}

uint64_t sub_10030FD20()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v10 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_100310054;
  }

  else
  {
    v5 = v2[35];
    v6 = v2[36];
    v7 = v2[34];

    v8 = v2[28];
    v2[39] = v2[27];
    v2[40] = v8;
    v4 = sub_10030FE60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10030FE60()
{
  v0[41] = *(v0[33] + 152);

  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_10030FF0C;
  v3 = v0[39];
  v2 = v0[40];

  return sub_1002EED50(v3, v2);
}

uint64_t sub_10030FF0C()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003100CC, 0, 0);
  }

  else
  {
    v4 = v3[40];
    v5 = v3[41];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100310054()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];

  v4 = v0[38];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003100CC()
{
  v2 = v0[40];
  v1 = v0[41];

  v3 = v0[43];
  v4 = v0[1];

  return v4();
}

void sub_100310138(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v57 = a1;
  v51 = a5;
  v52 = type metadata accessor for DIPError();
  v50 = *(v52 - 8);
  v8 = *(v50 + 64);
  __chkstk_darwin(v52);
  v49 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v48 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v45 - v16;
  __chkstk_darwin(v15);
  v19 = v45 - v18;
  v20 = type metadata accessor for DIPError.Code();
  v53 = *(v20 - 8);
  v21 = *(v53 + 64);
  __chkstk_darwin(v20);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = IdentityProofingConfiguration.documentType.getter();
  v25 = v56;
  v26 = sub_10057847C(v24, a3, a4);
  if (!v25)
  {
    v45[1] = a2;
    v46._countAndFlagsBits = a3;
    v46._object = a4;
    v47 = v19;
    v45[0] = v17;
    v56 = v20;
    v28 = v54;
    v27 = v55;
    if (v26)
    {
      v29 = v26;
      v30 = [v26 proofingSessionID];
      if (v30)
      {
        v46._object = v29;
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46._countAndFlagsBits = v33;

        v34 = v47;
        defaultLogger()();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Will set the proofing status to status pending and will show verification in progress UI", v37, 2u);
          v34 = v47;
        }

        (*(v27 + 8))(v34, v28);
        v38 = IdentityProofingActionStatus.rawValue.getter();
        object = v46._object;
        sub_10057F148(v38, 0);
        sub_1005783D4();
        v57 = v25;

        v43 = v51;
        countAndFlagsBits = v46._countAndFlagsBits;
        *v51 = v32;
        v43[1] = countAndFlagsBits;
      }

      else
      {
        (*(v53 + 104))(v23, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v56);
        sub_1000402AC(_swiftEmptyArrayStorage);
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      v58 = 0;
      v59 = 0xE000000000000000;
      _StringGuts.grow(_:)(94);
      v40._countAndFlagsBits = 0xD000000000000025;
      v40._object = 0x800000010070D8C0;
      String.append(_:)(v40);
      v60 = IdentityProofingConfiguration.documentType.getter();
      _print_unlocked<A, B>(_:_:)();
      v41._countAndFlagsBits = 0x6669746E65646920;
      v41._object = 0xEC00000020726569;
      String.append(_:)(v41);
      String.append(_:)(v46);
      v42._countAndFlagsBits = 0xD000000000000029;
      v42._object = 0x800000010070D8F0;
      String.append(_:)(v42);
      (*(v53 + 104))(v23, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v56);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1003109AC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  v9 = *(v0 + 136);

  v10 = *(v0 + 144);

  v11 = *(v0 + 152);

  sub_10000BB78((v0 + 160));
  sub_10026C59C(v0 + 200);
  v12 = *(v0 + 240);

  v13 = *(v0 + 248);

  v14 = *(v0 + 256);

  v15 = *(v0 + 264);

  v16 = *(v0 + 272);

  return v0;
}

uint64_t sub_100310A8C()
{
  sub_1003109AC();

  return swift_deallocClassInstance();
}

unint64_t sub_100310AE4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  v8 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000BE18(v11, &qword_10083B020, &unk_1006D8ED0);
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "IdentityProofingFlow tried to map non-DIPError to message key", v22, 2u);
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  (*(v13 + 32))(v19, v11, v12);
  (*(v13 + 16))(v17, v19, v12);
  v24 = (*(v13 + 88))(v17, v12);
  if (v24 == enum case for DIPError.Code.topekaWorkflowBlockedDeviceLimitReached(_:))
  {
    (*(v13 + 8))(v19, v12);
    return 0xD00000000000001BLL;
  }

  else
  {
    if (v24 != enum case for DIPError.Code.topekaWorkflowBlockedIDLimitReached(_:))
    {
      defaultLogger()();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "IdentityProofingFlow unsupported error code", v27, 2u);
      }

      (*(v1 + 8))(v7, v0);
      v28 = *(v13 + 8);
      v28(v19, v12);
      v28(v17, v12);
      return 0;
    }

    (*(v13 + 8))(v19, v12);
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_100310F54()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100311014, 0, 0);
}

uint64_t sub_100311014()
{
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to fetch the livenessconsent optin UI", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 256);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_100126F60;

  return sub_1001B5E10();
}

uint64_t sub_100311160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100311220, 0, 0);
}

uint64_t sub_100311220()
{
  v1 = *(v0[3] + 136);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1003112D0;
  v3 = v0[2];

  return sub_100289E58(v3);
}

uint64_t sub_1003112D0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10031140C, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10031140C()
{
  v1 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100311564(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = type metadata accessor for IdentityProofingDisplayMessage();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = *(*(sub_100007224(&qword_10083BD28, &qword_1006DA240) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v2[43] = v7;
  v8 = *(v7 - 8);
  v2[44] = v8;
  v9 = *(v8 + 64) + 15;
  v2[45] = swift_task_alloc();
  v10 = type metadata accessor for IdentityDocumentType.Category();
  v2[46] = v10;
  v11 = *(v10 - 8);
  v2[47] = v11;
  v12 = *(v11 + 64) + 15;
  v2[48] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v2[49] = v13;
  v14 = *(v13 - 8);
  v2[50] = v14;
  v15 = *(v14 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();

  return _swift_task_switch(sub_1003117B8, 0, 0);
}

uint64_t sub_1003117B8()
{
  v1 = v0[54];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to fetch the extended review proofing data", v4, 2u);
  }

  v5 = v0[54];
  v6 = v0[49];
  v7 = v0[50];
  v9 = v0[47];
  v8 = v0[48];
  v10 = v0[46];
  v11 = v0[34];

  v12 = *(v7 + 8);
  v0[55] = v12;
  v12(v5, v6);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v13 = (*(v9 + 88))(v8, v10);
  if (v13 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v14 = v0[34];
    v15 = IdentityProofingConfiguration.state.getter();
    if (!v16)
    {
      (*(v0[44] + 104))(v0[45], enum case for DIPError.Code.idStateUnavailable(_:), v0[43]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
LABEL_15:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_16;
    }
  }

  else
  {
    if (v13 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v27 = v0[47];
      v26 = v0[48];
      v28 = v0[46];
      (*(v0[44] + 104))(v0[45], enum case for DIPError.Code.idTypeUnavailable(_:), v0[43]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v27 + 8))(v26, v28);
LABEL_16:
      v32 = v0[53];
      v31 = v0[54];
      v34 = v0[51];
      v33 = v0[52];
      v35 = v0[48];
      v36 = v0[45];
      v38 = v0[41];
      v37 = v0[42];
      v39 = v0[39];
      v40 = v0[40];
      v52 = v0[38];

      v41 = v0[1];

      return v41();
    }

    v17 = v0[34];
    v15 = IdentityProofingConfiguration.country.getter();
    if (!v16)
    {
      (*(v0[44] + 104))(v0[45], enum case for DIPError.Code.idCountryUnavailable(_:), v0[43]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      goto LABEL_15;
    }
  }

  v18 = v16;
  v19 = v0[34];
  v0[56] = v16;
  v0[57] = v15;
  v20 = v15;
  v21 = IdentityProofingConfiguration.targetDevice.getter();
  v0[58] = v21;
  if (v22)
  {
    v24 = v0[44];
    v23 = v0[45];
    v25 = v0[43];

    (*(v24 + 104))(v23, enum case for DIPError.Code.targetUnavailable(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_15;
  }

  v29 = v21;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v30 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v30 + 54);
  sub_1000318FC(&v30[4], (v0 + 2));
  os_unfair_lock_unlock(v30 + 54);
  v43 = v0[34];
  v44 = v0[9];
  v0[59] = v44;

  sub_100031918((v0 + 2));
  v45 = swift_allocObject();
  v0[60] = v45;
  v45[2] = v43;
  v45[3] = v20;
  v45[4] = v18;
  v45[5] = v29;
  v46 = *(v44 + 16);
  v47 = swift_allocObject();
  v0[61] = v47;
  *(v47 + 16) = sub_10031578C;
  *(v47 + 24) = v45;
  v48 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  v49 = v43;

  v50 = swift_task_alloc();
  v0[62] = v50;
  v51 = sub_100007224(&qword_100840E18, &unk_1006DD968);
  *v50 = v0;
  v50[1] = sub_100311ED4;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_1003157E4, v47, v51);
}

uint64_t sub_100311ED4()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v11 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = *(v2 + 488);
    v5 = *(v2 + 448);

    v6 = sub_10031224C;
  }

  else
  {
    v7 = *(v2 + 480);
    v8 = *(v2 + 488);
    v9 = *(v2 + 472);

    *(v2 + 512) = *(v2 + 216);
    *(v2 + 528) = *(v2 + 232);
    *(v2 + 536) = *(v2 + 240);
    v6 = sub_10031203C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10031203C()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[37];
  v0[69] = *(v0[35] + 240);
  v4 = *(v3 + 56);
  v0[70] = v4;
  v0[71] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[72] = v5;
  *v5 = v0;
  v5[1] = sub_100312118;
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[58];
  v9 = v0[41];

  return sub_100199A40(v9, v7, v6, v8);
}

uint64_t sub_100312118()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = *(v2 + 528);

  if (v0)
  {
    v6 = sub_100312A38;
  }

  else
  {
    v6 = sub_100312430;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10031224C()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[44];

  v4 = v0[63];
  (*(v3 + 104))(v0[45], enum case for DIPError.Code.internalError(_:), v0[43]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[48];
  v10 = v0[45];
  v12 = v0[41];
  v11 = v0[42];
  v13 = v0[39];
  v14 = v0[40];
  v17 = v0[38];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100312430()
{
  v58 = v0;
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[53];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[36];
  sub_10000BE18(v4, &qword_10083BD28, &qword_1006DA240);
  v2(v5, 0, 1, v6);
  sub_1001A2A40(v5, v4);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[64];
    v55 = v0[55];
    v10 = v0[53];
    v11 = v0[49];
    v12 = v0[50];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v57 = v14;
    *v13 = 136446210;
    v15 = IdentityProofingActionStatus.debugDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v57);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "DISPLAY_MESSAGE exists for action status %{public}s", v13, 0xCu);
    sub_10000BB78(v14);

    v55(v10, v11);
  }

  else
  {
    v18 = v0[55];
    v19 = v0[53];
    v20 = v0[49];
    v21 = v0[50];

    v18(v19, v20);
  }

  v22 = v0[40];
  v23 = v0[36];
  v24 = v0[37];
  sub_10000BBC4(v0[42], v22, &qword_10083BD28, &qword_1006DA240);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[68];
    v26 = v0[56];
    v28 = v0[44];
    v27 = v0[45];
    v29 = v0[43];
    v56 = v0[42];
    v30 = v0[40];

    sub_10000BE18(v30, &qword_10083BD28, &qword_1006DA240);
    v31 = *(v28 + 104);
    v31(v27, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v29);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v56, &qword_10083BD28, &qword_1006DA240);
    v32 = enum case for DIPError.Code.internalError(_:);
    v31(v27, enum case for DIPError.Code.internalError(_:), v29);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v31(v0[45], v32, v0[43]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v34 = v0[53];
    v33 = v0[54];
    v36 = v0[51];
    v35 = v0[52];
    v37 = v0[48];
    v38 = v0[45];
    v40 = v0[41];
    v39 = v0[42];
    v41 = v0[39];
    v42 = v0[40];
    v54 = v0[38];

    v43 = v0[1];

    return v43();
  }

  else
  {
    v45 = v0[56];
    (*(v0[37] + 32))(v0[38], v0[40], v0[36]);
    v46 = swift_task_alloc();
    v0[74] = v46;
    *v46 = v0;
    v46[1] = sub_1003130A0;
    v47 = v0[69];
    v48 = v0[68];
    v49 = v0[67];
    v50 = v0[64];
    v51 = v0[57];
    v52 = v0[38];
    v53 = v0[34];

    return sub_1001A08A0(v52, v53, v51, v45, v50, v49, v48);
  }
}