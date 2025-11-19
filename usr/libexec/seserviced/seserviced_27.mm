uint64_t sub_10023A8F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int64_t a5, uint64_t a6, int64_t a7)
{
  v152 = a7;
  v151 = a6;
  v154 = a3;
  v150 = type metadata accessor for Alisha.DKMessage(0);
  v12 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v149 = v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_194;
  }

LABEL_2:
  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v21 = &unk_10051B000;
  v155 = a4;
  v147[3] = a5;
  v147[2] = a2;
  v147[1] = a1;
  if (v154)
  {
    v23 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
    *&v159 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
    v22 = v159;
    *(&v159 + 1) = v23;
    *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
    sub_10006A2BC(v22, v23);
    sub_10006A2D0(v22, v23);
    if (v23 >> 60 == 15 || (Data.append(_:)(), v23 = *(&v159 + 1), *(&v159 + 1) >> 60 == 15))
    {
      sub_100069E2C(a1, a2);
      v24 = a1;
      v25 = a2;
    }

    else
    {
      v24 = v159;
      sub_100069E2C(v159, *(&v159 + 1));
      v25 = v23;
    }

    *&v162 = v24;
    *(&v162 + 1) = v25;
    sub_100069E2C(a1, a2);
    v26 = Logger.logObject.getter();
    LOBYTE(v21) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v26, v21))
    {
      sub_10006A178(a1, a2);
LABEL_43:

      sub_10006A2D0(v159, v23);
      goto LABEL_44;
    }

    v27 = swift_slowAlloc();
    v7 = v27;
    *v27 = 134218240;
    v29 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (v29)
      {
        LODWORD(v30) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_197;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(a2);
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  *&v162 = a1;
  *(&v162 + 1) = a2;
  sub_100069E2C(a1, a2);
  v26 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v23))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    v28 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v28 == 2)
      {
        v32 = *(a1 + 16);
        v31 = *(a1 + 24);
        v33 = __OFSUB__(v31, v32);
        v29 = v31 - v32;
        if (v33)
        {
          __break(1u);
LABEL_22:
          if (v29 != 2)
          {
            v30 = 0;
            goto LABEL_33;
          }

          v35 = *(a1 + 16);
          v34 = *(a1 + 24);
          v33 = __OFSUB__(v34, v35);
          v30 = v34 - v35;
          if (!v33)
          {
LABEL_33:
            *(v7 + 4) = v30;
            sub_10006A178(a1, a2);
            *(v7 + 12) = 2048;
            swift_beginAccess();
            v36 = v162;
            v37 = *(&v162 + 1) >> 62;
            if ((*(&v162 + 1) >> 62) > 1)
            {
              v38 = 0;
              if (v37 != 2)
              {
                goto LABEL_42;
              }

              v36 = *(v162 + 16);
              v39 = *(v162 + 24);
              v33 = __OFSUB__(v39, v36);
              v38 = v39 - v36;
              if (!v33)
              {
                goto LABEL_42;
              }

              __break(1u);
            }

            else if (!v37)
            {
              v38 = BYTE14(v162);
LABEL_42:
              *(v7 + 14) = v38;
              _os_log_impl(&_mh_execute_header, v26, v21, "Processing %ld bytes; %ld bytes including accumulated", v7, 0x16u);

              a4 = v155;
              goto LABEL_43;
            }

            v33 = __OFSUB__(HIDWORD(v36), v36);
            v40 = HIDWORD(v36) - v36;
            if (v33)
            {
              goto LABEL_198;
            }

            v38 = v40;
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      if (v28)
      {
LABEL_26:
        LODWORD(v29) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_196;
        }

        v29 = v29;
        goto LABEL_31;
      }

      v29 = BYTE6(a2);
    }

LABEL_31:
    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v26, v23, "Processing %ld bytes", v27, 0xCu);

    goto LABEL_44;
  }

LABEL_44:
  v153 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  v41 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v148 = v41;
  swift_beginAccess();
  v18 = 0;
  while (1)
  {
    v14 = *(&v162 + 1);
    v15 = v162;
    v42 = *(&v162 + 1) >> 62;
    if ((*(&v162 + 1) >> 62) > 1)
    {
      if (v42 != 2)
      {
        goto LABEL_134;
      }

      v43 = *(v162 + 16);
      v44 = *(v162 + 24);
    }

    else
    {
      if (!v42)
      {
        if ((*(&v162 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_134;
        }

        if (BYTE14(v162) < 4uLL)
        {
          goto LABEL_94;
        }

        goto LABEL_60;
      }

      v43 = v162;
      v44 = v162 >> 32;
    }

    if (v43 == v44)
    {
      goto LABEL_134;
    }

    if (v42 == 2)
    {
      v46 = *(v162 + 16);
      v45 = *(v162 + 24);
      v33 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v33)
      {
        goto LABEL_189;
      }

      if (v47 < 4)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (__OFSUB__(DWORD1(v162), v162))
      {
        goto LABEL_190;
      }

      if (DWORD1(v162) - v162 < 4)
      {
LABEL_94:
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v73, v74))
        {
          goto LABEL_130;
        }

        v75 = swift_slowAlloc();
        *v75 = 134217984;
        v76 = v162;
        v77 = *(&v162 + 1) >> 62;
        if ((*(&v162 + 1) >> 62) <= 1)
        {
          if (v77)
          {
            LODWORD(v76) = DWORD1(v162) - v162;
            if (__OFSUB__(DWORD1(v162), v162))
            {
              goto LABEL_202;
            }

            v76 = v76;
          }

          else
          {
            v76 = BYTE14(v162);
          }

          goto LABEL_129;
        }

LABEL_105:
        if (v77 == 2)
        {
          v85 = v76 + 16;
          v83 = *(v76 + 16);
          v84 = *(v85 + 8);
          v33 = __OFSUB__(v84, v83);
          v76 = v84 - v83;
          if (v33)
          {
            __break(1u);
            goto LABEL_109;
          }
        }

        else
        {
          v76 = 0;
        }

LABEL_129:
        *(v75 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v73, v74, "Got partial data of size %ld < header size", v75, 0xCu);

LABEL_130:

        v14 = *(&v162 + 1);
        v15 = v162;
        if ((v154 & 1) == 0)
        {
          goto LABEL_134;
        }

        v160 = &type metadata for Data;
        v161 = &protocol witness table for Data;
        v159 = v162;
        v105 = sub_1000752B0(&v159, &type metadata for Data);
        v106 = *v105;
        v107 = v105[1];
        v108 = v107 >> 62;
        if ((v107 >> 62) > 1)
        {
          if (v108 == 2)
          {
            v113 = *(v106 + 16);
            v114 = *(v106 + 24);
            sub_100069E2C(v15, v14);
            v115 = __DataStorage._bytes.getter();
            if (v115)
            {
              v116 = v115;
              v117 = __DataStorage._offset.getter();
              if (__OFSUB__(v113, v117))
              {
                goto LABEL_207;
              }

              v118 = (v113 - v117 + v116);
            }

            else
            {
              v118 = 0;
            }

            if (__OFSUB__(v114, v113))
            {
              goto LABEL_204;
            }

            v137 = __DataStorage._length.getter();
            if (v137 >= v114 - v113)
            {
              v138 = v114 - v113;
            }

            else
            {
              v138 = v137;
            }

            v139 = &v118[v138];
            if (v118)
            {
              v140 = v139;
            }

            else
            {
              v140 = 0;
            }

            sub_10008E434(v118, v140, &v157);
            a4 = v155;
            goto LABEL_181;
          }

          memset(v156, 0, 14);
          sub_100069E2C(v15, v14);
          v109 = v156;
          v110 = v156;
        }

        else if (v108)
        {
          v119 = v106;
          v120 = v106 >> 32;
          v121 = v120 - v119;
          if (v120 < v119)
          {
            goto LABEL_203;
          }

          sub_100069E2C(v15, v14);
          v122 = __DataStorage._bytes.getter();
          if (v122)
          {
            v123 = v122;
            v124 = __DataStorage._offset.getter();
            if (__OFSUB__(v119, v124))
            {
              goto LABEL_208;
            }

            v125 = (v119 - v124 + v123);
          }

          else
          {
            v125 = 0;
          }

          a4 = v155;
          v141 = __DataStorage._length.getter();
          if (v141 >= v121)
          {
            v142 = v121;
          }

          else
          {
            v142 = v141;
          }

          v143 = &v125[v142];
          if (v125)
          {
            v110 = v143;
          }

          else
          {
            v110 = 0;
          }

          v109 = v125;
        }

        else
        {
          v156[0] = *v105;
          LOWORD(v156[1]) = v107;
          BYTE2(v156[1]) = BYTE2(v107);
          BYTE3(v156[1]) = BYTE3(v107);
          BYTE4(v156[1]) = BYTE4(v107);
          BYTE5(v156[1]) = BYTE5(v107);
          sub_100069E2C(v15, v14);
          v109 = v156;
          v110 = v156 + BYTE6(v107);
        }

        sub_10008E434(v109, v110, &v157);
LABEL_181:
        v134 = v157;
        v135 = v158;
        sub_1000752F4(&v159);
        v136 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
        goto LABEL_182;
      }
    }

LABEL_60:
    sub_100069E2C(v162, *(&v162 + 1));
    v14 = sub_1000939AC(v15, v14, 0, 0, 0);
    v49 = *(&v162 + 1);
    v48 = v162;
    sub_100069E2C(v162, *(&v162 + 1));
    a1 = sub_1000939AC(v48, v49, 1, 0, 0);
    a5 = *(&v162 + 1);
    v50 = v162;
    sub_100069E2C(v162, *(&v162 + 1));
    v51 = sub_100090214(v50, a5, 2, 0, 0);
    sub_10006A178(v50, a5);
    a2 = v51 + 4;
    if (v51 > 0x3FCu)
    {

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 134218240;
        *(v80 + 4) = a2;
        *(v80 + 12) = 2048;
        *(v80 + 14) = 1024;

        _os_log_impl(&_mh_execute_header, v78, v79, "Discarding message exceeding max size %ld > %ld", v80, 0x16u);
      }

      else
      {
      }

      goto LABEL_183;
    }

    v7 = *(&v162 + 1);
    v15 = v162;
    v52 = *(&v162 + 1) >> 62;
    if ((*(&v162 + 1) >> 62) > 1)
    {
      v53 = v153;
      if (v52 != 2)
      {
        break;
      }

      v55 = *(v162 + 16);
      v54 = *(v162 + 24);
      v33 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v33)
      {
        goto LABEL_193;
      }

      if (v56 < a2)
      {
        break;
      }

      goto LABEL_71;
    }

    v53 = v153;
    if (!v52)
    {
      if (BYTE14(v162) < a2)
      {
        break;
      }

      goto LABEL_71;
    }

    if (__OFSUB__(DWORD1(v162), v162))
    {
      goto LABEL_192;
    }

    if (DWORD1(v162) - v162 < a2)
    {
      break;
    }

LABEL_71:
    if ((v154 & 1) != 0 && v14 <= 5u && ((1 << v14) & 0x27) != 0)
    {
      v57 = *(v155 + v53);
      v33 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v33)
      {
        goto LABEL_191;
      }

      *(v155 + v53) = v58;
    }

    v59 = v52;
    if (v52)
    {
      if (v52 == 2)
      {
        v60 = *(v15 + 16);
      }

      else
      {
        v60 = v15;
      }
    }

    else
    {
      v60 = 0;
    }

    a5 = v60 + 4;
    if (__OFADD__(v60, 4))
    {
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
      swift_once();
      goto LABEL_2;
    }

    if (v52)
    {
      if (v52 == 2)
      {
        v59 = *(v15 + 16);
      }

      else
      {
        v59 = v15;
      }
    }

    v61 = v59 + 4;
    if (__OFADD__(v59, 4))
    {
      goto LABEL_186;
    }

    if (__OFADD__(v61, v51))
    {
      goto LABEL_187;
    }

    if (v61 + v51 < a5)
    {
      goto LABEL_188;
    }

    sub_100069E2C(v15, v7);
    v62 = Data.subdata(in:)();
    a5 = v63;
    sub_10006A178(v15, v7);
    v64 = v150;
    v65 = *(v150 + 28);
    v66 = type metadata accessor for UUID();
    v7 = v149;
    v67 = &v149[v65];
    v68 = v155;
    (*(*(v66 - 8) + 16))(v67, v155 + v148, v66);
    v69 = *(v68 + v53);
    *v7 = v14;
    *(v7 + 1) = a1;
    *(v7 + 8) = v62;
    *(v7 + 16) = a5;
    *(v7 + *(v64 + 32)) = v69;
    v70 = *(v64 + 36);
    a4 = v68;
    *(v7 + v70) = v68;

    sub_1000A8E24(v7, v151, v152);
    sub_10023BB10(v7);
    v71 = v162;
    sub_100069E2C(v162, *(&v162 + 1));
    sub_100084D68(a2, v71, *(&v71 + 1), &v159);
    v72 = v162;
    v162 = v159;
    sub_10006A178(v72, *(&v72 + 1));
  }

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v73, v74))
  {
    goto LABEL_113;
  }

  v75 = swift_slowAlloc();
  *v75 = 134218240;
  v76 = v162;
  v77 = *(&v162 + 1) >> 62;
  if ((*(&v162 + 1) >> 62) <= 1)
  {
    if (!v77)
    {
      v76 = BYTE14(v162);
      goto LABEL_112;
    }

LABEL_109:
    v33 = __OFSUB__(HIDWORD(v76), v76);
    LODWORD(v76) = HIDWORD(v76) - v76;
    if (!v33)
    {
      v76 = v76;
      goto LABEL_112;
    }

LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
  }

  if (v77 != 2)
  {
    v76 = 0;
    goto LABEL_112;
  }

  v81 = *(v162 + 16);
  v82 = *(v162 + 24);
  v33 = __OFSUB__(v82, v81);
  v76 = v82 - v81;
  if (v33)
  {
    __break(1u);
    goto LABEL_105;
  }

LABEL_112:
  *(v75 + 4) = v76;
  *(v75 + 12) = 2048;
  *(v75 + 14) = a2;
  _os_log_impl(&_mh_execute_header, v73, v74, "Got partial data of size %ld expected %ld", v75, 0x16u);

LABEL_113:

  v14 = *(&v162 + 1);
  v15 = v162;
  if ((v154 & 1) == 0)
  {
LABEL_134:
    v111 = v15;
    v112 = v14;
    return sub_10006A178(v111, v112);
  }

  v160 = &type metadata for Data;
  v161 = &protocol witness table for Data;
  v159 = v162;
  v86 = sub_1000752B0(&v159, &type metadata for Data);
  v87 = *v86;
  v88 = v86[1];
  v89 = v88 >> 62;
  if ((v88 >> 62) > 1)
  {
    if (v89 == 2)
    {
      v92 = *(v87 + 16);
      v93 = *(v87 + 24);
      sub_100069E2C(v15, v14);
      v94 = __DataStorage._bytes.getter();
      if (v94)
      {
        v95 = v94;
        v96 = __DataStorage._offset.getter();
        if (__OFSUB__(v92, v96))
        {
          goto LABEL_205;
        }

        v97 = (v92 - v96 + v95);
      }

      else
      {
        v97 = 0;
      }

      if (__OFSUB__(v93, v92))
      {
        goto LABEL_201;
      }

      v126 = __DataStorage._length.getter();
      if (v126 >= v93 - v92)
      {
        v127 = v93 - v92;
      }

      else
      {
        v127 = v126;
      }

      v128 = &v97[v127];
      if (v97)
      {
        v91 = v128;
      }

      else
      {
        v91 = 0;
      }

      v90 = v97;
    }

    else
    {
      memset(v156, 0, 14);
      sub_100069E2C(v15, v14);
      v90 = v156;
      v91 = v156;
    }

LABEL_153:
    sub_10008E434(v90, v91, &v157);
    v129 = v155;
  }

  else
  {
    if (!v89)
    {
      v156[0] = *v86;
      LOWORD(v156[1]) = v88;
      BYTE2(v156[1]) = BYTE2(v88);
      BYTE3(v156[1]) = BYTE3(v88);
      BYTE4(v156[1]) = BYTE4(v88);
      BYTE5(v156[1]) = BYTE5(v88);
      sub_100069E2C(v15, v14);
      v90 = v156;
      v91 = v156 + BYTE6(v88);
      goto LABEL_153;
    }

    v98 = v87;
    v99 = v87 >> 32;
    v100 = v99 - v98;
    if (v99 < v98)
    {
      goto LABEL_200;
    }

    sub_100069E2C(v15, v14);
    v101 = __DataStorage._bytes.getter();
    if (v101)
    {
      v102 = v101;
      v103 = __DataStorage._offset.getter();
      if (__OFSUB__(v98, v103))
      {
        goto LABEL_206;
      }

      v104 = (v98 - v103 + v102);
    }

    else
    {
      v104 = 0;
    }

    v129 = v155;
    v130 = __DataStorage._length.getter();
    if (v130 >= v100)
    {
      v131 = v100;
    }

    else
    {
      v131 = v130;
    }

    v132 = &v104[v131];
    if (v104)
    {
      v133 = v132;
    }

    else
    {
      v133 = 0;
    }

    sub_10008E434(v104, v133, &v157);
  }

  v134 = v157;
  v135 = v158;
  sub_1000752F4(&v159);
  v136 = (v129 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
LABEL_182:
  v144 = *v136;
  v145 = v136[1];
  *v136 = v134;
  v136[1] = v135;
  sub_10006A2D0(v144, v145);
LABEL_183:
  v112 = *(&v162 + 1);
  v111 = v162;
  return sub_10006A178(v111, v112);
}

uint64_t sub_10023BB10(uint64_t a1)
{
  v2 = type metadata accessor for Alisha.DKMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023BB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023BB88(uint64_t a1, unint64_t a2, int a3, int64_t a4, unint64_t a5, uint64_t a6)
{
  v134 = a6;
  v129[1] = a5;
  v135 = a3;
  v129[0] = a2;
  v130 = a1;
  v133 = type metadata accessor for Alisha.DKMessage(0);
  v9 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v132 = v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_172;
  }

LABEL_2:
  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (v135)
  {
    v19 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
    *&v140 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
    v18 = v140;
    *(&v140 + 1) = v19;
    *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
    sub_10006A2BC(v18, v19);
    sub_10006A2D0(v18, v19);
    if (v19 >> 60 == 15 || (Data.append(_:)(), v19 = *(&v140 + 1), *(&v140 + 1) >> 60 == 15))
    {
      v6 = v130;
      v7 = v129[0];
      sub_100069E2C(v130, v129[0]);
      v20 = v6;
      v21 = v7;
    }

    else
    {
      v20 = v140;
      sub_100069E2C(v140, *(&v140 + 1));
      v21 = v19;
      v7 = v129[0];
      v6 = v130;
    }

    *&v143 = v20;
    *(&v143 + 1) = v21;
    sub_100069E2C(v6, v7);
    v23 = Logger.logObject.getter();
    LOBYTE(v22) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v23, v22))
    {
      sub_10006A178(v6, v7);
LABEL_43:

      sub_10006A2D0(v140, v19);
      goto LABEL_44;
    }

    v24 = swift_slowAlloc();
    v6 = v24;
    *v24 = 134218240;
    v26 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (v26)
      {
        LODWORD(v27) = HIDWORD(v130) - v130;
        if (__OFSUB__(HIDWORD(v130), v130))
        {
          goto LABEL_175;
        }

        v27 = v27;
      }

      else
      {
        v27 = BYTE6(v7);
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  v22 = v129[0];
  *&v143 = v130;
  *(&v143 + 1) = v129[0];
  sub_100069E2C(v130, v129[0]);
  v23 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v19))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    v25 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v25 == 2)
      {
        v29 = *(v130 + 16);
        v28 = *(v130 + 24);
        v30 = __OFSUB__(v28, v29);
        v26 = v28 - v29;
        if (v30)
        {
          __break(1u);
LABEL_22:
          if (v26 != 2)
          {
            v27 = 0;
            goto LABEL_33;
          }

          v32 = *(v130 + 16);
          v31 = *(v130 + 24);
          v30 = __OFSUB__(v31, v32);
          v27 = v31 - v32;
          if (!v30)
          {
LABEL_33:
            *(v6 + 4) = v27;
            sub_10006A178(v130, v7);
            *(v6 + 12) = 2048;
            swift_beginAccess();
            v33 = v143;
            v34 = *(&v143 + 1) >> 62;
            if ((*(&v143 + 1) >> 62) > 1)
            {
              v35 = 0;
              if (v34 != 2)
              {
                goto LABEL_42;
              }

              v33 = *(v143 + 16);
              v36 = *(v143 + 24);
              v30 = __OFSUB__(v36, v33);
              v35 = v36 - v33;
              if (!v30)
              {
                goto LABEL_42;
              }

              __break(1u);
            }

            else if (!v34)
            {
              v35 = BYTE14(v143);
LABEL_42:
              *(v6 + 14) = v35;
              _os_log_impl(&_mh_execute_header, v23, v22, "Processing %ld bytes; %ld bytes including accumulated", v6, 0x16u);

              goto LABEL_43;
            }

            v30 = __OFSUB__(HIDWORD(v33), v33);
            v37 = HIDWORD(v33) - v33;
            if (v30)
            {
              goto LABEL_176;
            }

            v35 = v37;
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      if (v25)
      {
LABEL_26:
        LODWORD(v26) = HIDWORD(v130) - v130;
        if (__OFSUB__(HIDWORD(v130), v130))
        {
          goto LABEL_174;
        }

        v26 = v26;
        goto LABEL_31;
      }

      v26 = BYTE6(v22);
    }

LABEL_31:
    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v23, v19, "Processing %ld bytes", v24, 0xCu);

    goto LABEL_44;
  }

LABEL_44:
  v137 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  v12 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v131 = v12;
  swift_beginAccess();
  v15 = 0;
  while (1)
  {
    v11 = *(&v143 + 1);
    v38 = v143;
    v39 = *(&v143 + 1) >> 62;
    if ((*(&v143 + 1) >> 62) > 1)
    {
      if (v39 != 2)
      {
        goto LABEL_140;
      }

      v40 = *(v143 + 16);
      v41 = *(v143 + 24);
    }

    else
    {
      if (!v39)
      {
        if ((*(&v143 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_140;
        }

        if (BYTE14(v143) < 4uLL)
        {
          goto LABEL_95;
        }

        goto LABEL_60;
      }

      v40 = v143;
      v41 = v143 >> 32;
    }

    if (v40 == v41)
    {
      goto LABEL_140;
    }

    if (v39 == 2)
    {
      v43 = *(v143 + 16);
      v42 = *(v143 + 24);
      v30 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v30)
      {
        goto LABEL_167;
      }

      if (v44 < 4)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (__OFSUB__(DWORD1(v143), v143))
      {
        goto LABEL_168;
      }

      if (DWORD1(v143) - v143 < 4)
      {
LABEL_95:
        v76 = Logger.logObject.getter();
        LOBYTE(v38) = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v76, v38))
        {
          v77 = swift_slowAlloc();
          *v77 = 134217984;
          v78 = v143;
          v79 = *(&v143 + 1) >> 62;
          if ((*(&v143 + 1) >> 62) > 1)
          {
            goto LABEL_109;
          }

          if (v79)
          {
            goto LABEL_132;
          }

          v78 = BYTE14(v143);
LABEL_135:
          *(v77 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v76, v38, "Got partial data of size %ld < header size", v77, 0xCu);
        }

        v11 = *(&v143 + 1);
        v38 = v143;
        if (v135)
        {
          v141 = &type metadata for Data;
          v142 = &protocol witness table for Data;
          v140 = v143;
          v108 = sub_1000752B0(&v140, &type metadata for Data);
          v99 = *v108;
          v100 = v108[1];
          v109 = v100 >> 62;
          if ((v100 >> 62) > 1)
          {
            if (v109 != 2)
            {
              goto LABEL_148;
            }

            v114 = *(v99 + 16);
            v115 = *(v99 + 24);
            sub_100069E2C(v38, v11);
            v11 = v100 & 0x3FFFFFFFFFFFFFFFLL;
            v38 = __DataStorage._bytes.getter();
            if (v38)
            {
              v11 = v100 & 0x3FFFFFFFFFFFFFFFLL;
              v116 = __DataStorage._offset.getter();
              if (__OFSUB__(v114, v116))
              {
                goto LABEL_182;
              }

              v38 += v114 - v116;
            }

            v30 = __OFSUB__(v115, v114);
            v104 = v115 - v114;
            if (v30)
            {
              __break(1u);
              goto LABEL_148;
            }
          }

          else
          {
            if (!v109)
            {
LABEL_139:
              v138[0] = v99;
              LOWORD(v138[1]) = v100;
              BYTE2(v138[1]) = BYTE2(v100);
              BYTE3(v138[1]) = BYTE3(v100);
              BYTE4(v138[1]) = BYTE4(v100);
              BYTE5(v138[1]) = BYTE5(v100);
              sub_100069E2C(v38, v11);
              v110 = v138;
              v111 = v138 + BYTE6(v100);
              goto LABEL_160;
            }

            v117 = v99;
            v118 = v99 >> 32;
            v104 = v118 - v117;
            if (v118 < v117)
            {
              goto LABEL_180;
            }

            sub_100069E2C(v38, v11);
            v38 = __DataStorage._bytes.getter();
            if (v38)
            {
              v119 = __DataStorage._offset.getter();
              v99 = v117 - v119;
              if (__OFSUB__(v117, v119))
              {
                goto LABEL_183;
              }

LABEL_152:
              v38 += v99;
            }
          }

LABEL_153:
          v120 = __DataStorage._length.getter();
          if (v120 >= v104)
          {
            v121 = v104;
          }

          else
          {
            v121 = v120;
          }

          v122 = (v121 + v38);
          if (v38)
          {
            v111 = v122;
          }

          else
          {
            v111 = 0;
          }

          v110 = v38;
          goto LABEL_160;
        }

LABEL_140:
        v112 = v38;
        v113 = v11;
        return sub_10006A178(v112, v113);
      }
    }

LABEL_60:
    sub_100069E2C(v143, *(&v143 + 1));
    v45 = sub_1000939AC(v38, v11, 0, 0, 0);
    if (v15)
    {

      v80 = v130;
      v81 = v129[0];
      sub_100069E2C(v130, v129[0]);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      sub_10006A178(v80, v81);
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v140 = v85;
        *v84 = 136315138;
        v139[0] = sub_100288788(v80, v81);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v86 = BidirectionalCollection<>.joined(separator:)();
        v88 = v87;

        v89 = sub_1002FFA0C(v86, v88, &v140);

        *(v84 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v82, v83, "Invalid DK message header %s", v84, 0xCu);
        sub_1000752F4(v85);
      }

      goto LABEL_161;
    }

    v11 = v45;
    v47 = *(&v143 + 1);
    v46 = v143;
    sub_100069E2C(v143, *(&v143 + 1));
    v48 = sub_1000939AC(v46, v47, 1, 0, 0);
    v50 = *(&v143 + 1);
    v49 = v143;
    sub_100069E2C(v143, *(&v143 + 1));
    v7 = sub_100090214(v49, v50, 2, 0, 0);
    sub_10006A178(v49, v50);
    v51 = v7;
    v6 = v7 + 4;
    if (v7 > 0x3FCu)
    {

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 134218240;
        *(v92 + 4) = v6;
        *(v92 + 12) = 2048;
        *(v92 + 14) = 1024;

        _os_log_impl(&_mh_execute_header, v90, v91, "Discarding message exceeding max size %ld > %ld", v92, 0x16u);
      }

      else
      {
      }

      goto LABEL_161;
    }

    v53 = *(&v143 + 1);
    v52 = v143;
    v54 = *(&v143 + 1) >> 62;
    if ((*(&v143 + 1) >> 62) > 1)
    {
      v55 = v137;
      if (v54 != 2)
      {
        break;
      }

      v57 = *(v143 + 16);
      v56 = *(v143 + 24);
      v30 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v30)
      {
        goto LABEL_171;
      }

      if (v58 < v6)
      {
        break;
      }

      goto LABEL_72;
    }

    v55 = v137;
    if (!v54)
    {
      if (BYTE14(v143) < v6)
      {
        break;
      }

      goto LABEL_72;
    }

    if (__OFSUB__(DWORD1(v143), v143))
    {
      goto LABEL_170;
    }

    if (DWORD1(v143) - v143 < v6)
    {
      break;
    }

LABEL_72:
    if ((v135 & 1) != 0 && v11 <= 5u && ((1 << v11) & 0x27) != 0)
    {
      v59 = *(a4 + v55);
      v30 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v30)
      {
        goto LABEL_169;
      }

      *(a4 + v55) = v60;
    }

    v61 = v54;
    if (v54)
    {
      if (v54 == 2)
      {
        v62 = *(v52 + 16);
      }

      else
      {
        v62 = v52;
      }
    }

    else
    {
      v62 = 0;
    }

    v7 = v62 + 4;
    if (__OFADD__(v62, 4))
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      swift_once();
      goto LABEL_2;
    }

    if (v54)
    {
      if (v54 == 2)
      {
        v61 = *(v52 + 16);
      }

      else
      {
        v61 = v52;
      }
    }

    v63 = v61 + 4;
    if (__OFADD__(v61, 4))
    {
      goto LABEL_164;
    }

    if (__OFADD__(v63, v51))
    {
      goto LABEL_165;
    }

    if (v63 + v51 < v7)
    {
      goto LABEL_166;
    }

    sub_100069E2C(v52, v53);
    v64 = Data.subdata(in:)();
    v66 = v65;
    sub_10006A178(v52, v53);
    v67 = v133;
    v12 = *(v133 + 28);
    v68 = type metadata accessor for UUID();
    v69 = *(*(v68 - 8) + 16);
    v136 = 0;
    v70 = v6;
    v6 = v132;
    v69(&v132[v12], a4 + v131, v68);
    v71 = *(a4 + v137);
    *v6 = v11;
    *(v6 + 1) = v48;
    *(v6 + 8) = v64;
    *(v6 + 16) = v66;
    *(v6 + *(v67 + 32)) = v71;
    *(v6 + *(v67 + 36)) = a4;
    v7 = *(v6 + 8);
    v72 = *(v6 + 16);

    sub_100231354(v11, v48, v7, v72, v6 + v12, v71, a4);
    sub_10023BB10(v6);
    v73 = v143;
    sub_100069E2C(v143, *(&v143 + 1));
    v74 = v70;
    v15 = v136;
    sub_100084D68(v74, v73, *(&v73 + 1), &v140);
    v75 = v143;
    v143 = v140;
    sub_10006A178(v75, *(&v75 + 1));
  }

  v76 = Logger.logObject.getter();
  LOBYTE(v38) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v76, v38))
  {
    goto LABEL_117;
  }

  v77 = swift_slowAlloc();
  *v77 = 134218240;
  v78 = v143;
  v79 = *(&v143 + 1) >> 62;
  if ((*(&v143 + 1) >> 62) <= 1)
  {
    if (!v79)
    {
      v78 = BYTE14(v143);
      goto LABEL_116;
    }

LABEL_113:
    v30 = __OFSUB__(HIDWORD(v78), v78);
    LODWORD(v78) = HIDWORD(v78) - v78;
    if (!v30)
    {
      v78 = v78;
      goto LABEL_116;
    }

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
  }

  if (v79 != 2)
  {
    v78 = 0;
    goto LABEL_116;
  }

  v93 = *(v143 + 16);
  v94 = *(v143 + 24);
  v30 = __OFSUB__(v94, v93);
  v78 = v94 - v93;
  if (v30)
  {
    __break(1u);
LABEL_109:
    if (v79 == 2)
    {
      v97 = v78 + 16;
      v95 = *(v78 + 16);
      v96 = *(v97 + 8);
      v30 = __OFSUB__(v96, v95);
      v78 = v96 - v95;
      if (v30)
      {
        __break(1u);
        goto LABEL_113;
      }
    }

    else
    {
      v78 = 0;
    }

    goto LABEL_135;
  }

LABEL_116:
  *(v77 + 4) = v78;
  *(v77 + 12) = 2048;
  *(v77 + 14) = v6;
  _os_log_impl(&_mh_execute_header, v76, v38, "Got partial data of size %ld expected %ld", v77, 0x16u);

LABEL_117:

  v11 = *(&v143 + 1);
  v38 = v143;
  if ((v135 & 1) == 0)
  {
    goto LABEL_140;
  }

  v141 = &type metadata for Data;
  v142 = &protocol witness table for Data;
  v140 = v143;
  v98 = sub_1000752B0(&v140, &type metadata for Data);
  v99 = *v98;
  v100 = v98[1];
  v101 = v100 >> 62;
  if ((v100 >> 62) > 1)
  {
    goto LABEL_125;
  }

  if (!v101)
  {
    goto LABEL_139;
  }

  v102 = v99;
  v103 = v99 >> 32;
  v104 = v103 - v102;
  if (v103 < v102)
  {
    goto LABEL_178;
  }

  sub_100069E2C(v38, v11);
  v38 = __DataStorage._bytes.getter();
  if (!v38)
  {
    goto LABEL_153;
  }

  v11 = v100 & 0x3FFFFFFFFFFFFFFFLL;
  v105 = __DataStorage._offset.getter();
  v99 = v102 - v105;
  if (!__OFSUB__(v102, v105))
  {
    goto LABEL_152;
  }

  __break(1u);
LABEL_125:
  if (v101 == 2)
  {
    v106 = *(v99 + 16);
    v107 = *(v99 + 24);
    sub_100069E2C(v38, v11);
    v76 = (v100 & 0x3FFFFFFFFFFFFFFFLL);
    v77 = __DataStorage._bytes.getter();
    v38 = v77;
    if (v77)
    {
      v76 = (v100 & 0x3FFFFFFFFFFFFFFFLL);
      v77 = __DataStorage._offset.getter();
      v78 = v106 - v77;
      if (__OFSUB__(v106, v77))
      {
        goto LABEL_181;
      }

      v38 += v78;
    }

    v30 = __OFSUB__(v107, v106);
    v104 = v107 - v106;
    if (!v30)
    {
      goto LABEL_153;
    }

    __break(1u);
LABEL_132:
    v30 = __OFSUB__(HIDWORD(v78), v78);
    LODWORD(v78) = HIDWORD(v78) - v78;
    if (v30)
    {
      goto LABEL_179;
    }

    v78 = v78;
    goto LABEL_135;
  }

LABEL_148:
  memset(v138, 0, 14);
  sub_100069E2C(v38, v11);
  v110 = v138;
  v111 = v138;
LABEL_160:
  sub_10008E434(v110, v111, v139);
  v123 = v139[0];
  v124 = v139[1];
  sub_1000752F4(&v140);
  v125 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v126 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v127 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  *v125 = v123;
  v125[1] = v124;
  sub_10006A2D0(v126, v127);
LABEL_161:
  v113 = *(&v143 + 1);
  v112 = v143;
  return sub_10006A178(v112, v113);
}

uint64_t sub_10023CC0C(uint64_t a1, unint64_t a2, int a3, int64_t a4, unint64_t a5, uint64_t a6)
{
  v125 = a6;
  v127 = a3;
  v124 = type metadata accessor for Alisha.DKMessage(0);
  v11 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v13 = v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_173;
  }

LABEL_2:
  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v21 = &unk_10051B000;
  v122[2] = a5;
  v122[1] = a2;
  v122[0] = a1;
  if (v127)
  {
    v23 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
    *&v130 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
    v22 = v130;
    *(&v130 + 1) = v23;
    *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
    sub_10006A2BC(v22, v23);
    sub_10006A2D0(v22, v23);
    if (v23 >> 60 == 15 || (Data.append(_:)(), v23 = *(&v130 + 1), *(&v130 + 1) >> 60 == 15))
    {
      sub_100069E2C(a1, a2);
      v24 = a1;
      v25 = a2;
    }

    else
    {
      v24 = v130;
      sub_100069E2C(v130, *(&v130 + 1));
      v25 = v23;
    }

    *&v133 = v24;
    *(&v133 + 1) = v25;
    sub_100069E2C(a1, a2);
    v26 = Logger.logObject.getter();
    LOBYTE(v21) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v26, v21))
    {
      sub_10006A178(a1, a2);
LABEL_43:

      sub_10006A2D0(v130, v23);
      goto LABEL_44;
    }

    v27 = swift_slowAlloc();
    v6 = v27;
    *v27 = 134218240;
    v29 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (v29)
      {
        LODWORD(v30) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_176;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(a2);
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  *&v133 = a1;
  *(&v133 + 1) = a2;
  sub_100069E2C(a1, a2);
  v26 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v23))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    v28 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v28 == 2)
      {
        v32 = *(a1 + 16);
        v31 = *(a1 + 24);
        v33 = __OFSUB__(v31, v32);
        v29 = v31 - v32;
        if (v33)
        {
          __break(1u);
LABEL_22:
          if (v29 != 2)
          {
            v30 = 0;
            goto LABEL_33;
          }

          v35 = *(a1 + 16);
          v34 = *(a1 + 24);
          v33 = __OFSUB__(v34, v35);
          v30 = v34 - v35;
          if (!v33)
          {
LABEL_33:
            *(v6 + 4) = v30;
            sub_10006A178(a1, a2);
            *(v6 + 12) = 2048;
            swift_beginAccess();
            v36 = v133;
            v37 = *(&v133 + 1) >> 62;
            if ((*(&v133 + 1) >> 62) > 1)
            {
              v38 = 0;
              if (v37 != 2)
              {
                goto LABEL_42;
              }

              v36 = *(v133 + 16);
              v39 = *(v133 + 24);
              v33 = __OFSUB__(v39, v36);
              v38 = v39 - v36;
              if (!v33)
              {
                goto LABEL_42;
              }

              __break(1u);
            }

            else if (!v37)
            {
              v38 = BYTE14(v133);
LABEL_42:
              *(v6 + 14) = v38;
              _os_log_impl(&_mh_execute_header, v26, v21, "Processing %ld bytes; %ld bytes including accumulated", v6, 0x16u);

              goto LABEL_43;
            }

            v33 = __OFSUB__(HIDWORD(v36), v36);
            v40 = HIDWORD(v36) - v36;
            if (v33)
            {
              goto LABEL_177;
            }

            v38 = v40;
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      if (v28)
      {
LABEL_26:
        LODWORD(v29) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_175;
        }

        v29 = v29;
        goto LABEL_31;
      }

      v29 = BYTE6(a2);
    }

LABEL_31:
    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v26, v23, "Processing %ld bytes", v27, 0xCu);

    goto LABEL_44;
  }

LABEL_44:
  a1 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  v41 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v123 = v41;
  swift_beginAccess();
  v18 = 0;
  v126 = a4;
  while (1)
  {
    v14 = *(&v133 + 1);
    v15 = v133;
    v42 = *(&v133 + 1) >> 62;
    if ((*(&v133 + 1) >> 62) > 1)
    {
      if (v42 != 2 || *(v133 + 16) == *(v133 + 24))
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (!v42)
      {
        if ((*(&v133 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_133;
        }

        if (BYTE14(v133) < 4uLL)
        {
          goto LABEL_94;
        }

        goto LABEL_60;
      }

      if (v133 == v133 >> 32)
      {
        goto LABEL_133;
      }
    }

    if (v42 != 2)
    {
      break;
    }

    v44 = *(v133 + 16);
    v43 = *(v133 + 24);
    v33 = __OFSUB__(v43, v44);
    v45 = v43 - v44;
    if (v33)
    {
      goto LABEL_168;
    }

    if (v45 < 4)
    {
      goto LABEL_94;
    }

LABEL_60:
    sub_100069E2C(v133, *(&v133 + 1));
    v14 = sub_1000939AC(v15, v14, 0, 0, 0);
    v47 = *(&v133 + 1);
    v46 = v133;
    sub_100069E2C(v133, *(&v133 + 1));
    a2 = sub_1000939AC(v46, v47, 1, 0, 0);
    v49 = *(&v133 + 1);
    v48 = v133;
    sub_100069E2C(v133, *(&v133 + 1));
    v50 = sub_100090214(v48, v49, 2, 0, 0);
    sub_10006A178(v48, v49);
    v6 = v50 + 4;
    if (v50 > 0x3FCu)
    {

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 134218240;
        *(v77 + 4) = v6;
        *(v77 + 12) = 2048;
        *(v77 + 14) = 1024;

        _os_log_impl(&_mh_execute_header, v75, v76, "Discarding message exceeding max size %ld > %ld", v77, 0x16u);
      }

      else
      {
      }

      goto LABEL_162;
    }

    a5 = *(&v133 + 1);
    v15 = v133;
    v51 = *(&v133 + 1) >> 62;
    if ((*(&v133 + 1) >> 62) > 1)
    {
      if (v51 != 2)
      {
        goto LABEL_90;
      }

      v53 = *(v133 + 16);
      v52 = *(v133 + 24);
      v33 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v33)
      {
        goto LABEL_172;
      }

      if (v54 < v6)
      {
        goto LABEL_90;
      }
    }

    else if (v51)
    {
      if (__OFSUB__(DWORD1(v133), v133))
      {
        goto LABEL_171;
      }

      if (DWORD1(v133) - v133 < v6)
      {
LABEL_90:
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v70, v71))
        {
          goto LABEL_113;
        }

        v72 = swift_slowAlloc();
        *v72 = 134218240;
        v73 = v133;
        v74 = *(&v133 + 1) >> 62;
        if ((*(&v133 + 1) >> 62) <= 1)
        {
          if (!v74)
          {
            v73 = BYTE14(v133);
            goto LABEL_112;
          }

LABEL_109:
          v33 = __OFSUB__(HIDWORD(v73), v73);
          LODWORD(v73) = HIDWORD(v73) - v73;
          if (!v33)
          {
            v73 = v73;
            goto LABEL_112;
          }

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
        }

        if (v74 != 2)
        {
          v73 = 0;
          goto LABEL_112;
        }

        v78 = *(v133 + 16);
        v79 = *(v133 + 24);
        v33 = __OFSUB__(v79, v78);
        v73 = v79 - v78;
        if (!v33)
        {
LABEL_112:
          *(v72 + 4) = v73;
          *(v72 + 12) = 2048;
          *(v72 + 14) = v6;
          _os_log_impl(&_mh_execute_header, v70, v71, "Got partial data of size %ld expected %ld", v72, 0x16u);

LABEL_113:

          v14 = *(&v133 + 1);
          v15 = v133;
          if (v127)
          {
            v131 = &type metadata for Data;
            v132 = &protocol witness table for Data;
            v130 = v133;
            v83 = sub_1000752B0(&v130, &type metadata for Data);
            v84 = *v83;
            v85 = v83[1];
            v86 = v85 >> 62;
            if ((v85 >> 62) > 1)
            {
              goto LABEL_121;
            }

            if (v86)
            {
              v87 = v84;
              v88 = v84 >> 32;
              a4 = v88 - v87;
              if (v88 < v87)
              {
                goto LABEL_179;
              }

              sub_100069E2C(v15, v14);
              v89 = __DataStorage._bytes.getter();
              if (v89)
              {
                v90 = v89;
                v14 = v85 & 0x3FFFFFFFFFFFFFFFLL;
                v91 = __DataStorage._offset.getter();
                v84 = v87 - v91;
                if (!__OFSUB__(v87, v91))
                {
                  goto LABEL_143;
                }

                __break(1u);
LABEL_121:
                if (v86 == 2)
                {
                  v92 = *(v84 + 16);
                  v93 = *(v84 + 24);
                  sub_100069E2C(v15, v14);
                  v94 = __DataStorage._bytes.getter();
                  if (v94)
                  {
                    v95 = v94;
                    v96 = __DataStorage._offset.getter();
                    if (__OFSUB__(v92, v96))
                    {
                      goto LABEL_183;
                    }

                    v97 = (v92 - v96 + v95);
                  }

                  else
                  {
                    v97 = 0;
                  }

                  v112 = v93 - v92;
                  if (!__OFSUB__(v93, v92))
                  {
LABEL_154:
                    v113 = __DataStorage._length.getter();
                    if (v113 >= v112)
                    {
                      v111 = v112;
                    }

                    else
                    {
                      v111 = v113;
                    }

                    goto LABEL_157;
                  }

                  __break(1u);
LABEL_152:
                  v97 = 0;
                  goto LABEL_153;
                }

                goto LABEL_138;
              }

LABEL_144:
              v97 = 0;
              goto LABEL_145;
            }

LABEL_132:
            v128[0] = v84;
            LOWORD(v128[1]) = v85;
            BYTE2(v128[1]) = BYTE2(v85);
            BYTE3(v128[1]) = BYTE3(v85);
            BYTE4(v128[1]) = BYTE4(v85);
            BYTE5(v128[1]) = BYTE5(v85);
            sub_100069E2C(v15, v14);
            v100 = v128 + BYTE6(v85);
LABEL_139:
            sub_10008E434(v128, v100, v129);
            goto LABEL_161;
          }

LABEL_133:
          v101 = v15;
          v102 = v14;
          return sub_10006A178(v101, v102);
        }

        __break(1u);
LABEL_105:
        if (v74 == 2)
        {
          v82 = v73 + 16;
          v80 = *(v73 + 16);
          v81 = *(v82 + 8);
          v33 = __OFSUB__(v81, v80);
          v73 = v81 - v80;
          if (v33)
          {
            __break(1u);
            goto LABEL_109;
          }
        }

        else
        {
          v73 = 0;
        }

        goto LABEL_128;
      }
    }

    else if (BYTE14(v133) < v6)
    {
      goto LABEL_90;
    }

    if ((v127 & 1) != 0 && v14 <= 5u && ((1 << v14) & 0x27) != 0)
    {
      v55 = *(a4 + a1);
      v33 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v33)
      {
        goto LABEL_170;
      }

      *(a4 + a1) = v56;
    }

    v57 = v51;
    if (v51)
    {
      if (v51 == 2)
      {
        v58 = *(v15 + 16);
      }

      else
      {
        v58 = v15;
      }
    }

    else
    {
      v58 = 0;
    }

    a4 = v58 + 4;
    if (__OFADD__(v58, 4))
    {
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      swift_once();
      goto LABEL_2;
    }

    if (v51)
    {
      if (v51 == 2)
      {
        v57 = *(v15 + 16);
      }

      else
      {
        v57 = v15;
      }
    }

    v59 = v57 + 4;
    if (__OFADD__(v57, 4))
    {
      goto LABEL_165;
    }

    if (__OFADD__(v59, v50))
    {
      goto LABEL_166;
    }

    if (v59 + v50 < a4)
    {
      goto LABEL_167;
    }

    sub_100069E2C(v15, a5);
    v60 = Data.subdata(in:)();
    v62 = v61;
    sub_10006A178(v15, a5);
    a5 = v124;
    v63 = *(v124 + 28);
    v64 = type metadata accessor for UUID();
    v65 = &v13[v63];
    v66 = v126;
    (*(*(v64 - 8) + 16))(v65, v126 + v123, v64);
    v67 = *(v66 + a1);
    *v13 = v14;
    v13[1] = a2;
    *(v13 + 1) = v60;
    *(v13 + 2) = v62;
    a4 = v66;
    *&v13[*(a5 + 32)] = v67;
    *&v13[*(a5 + 36)] = v66;

    sub_100257878(v13, v125);
    sub_10023BB10(v13);
    v68 = v133;
    sub_100069E2C(v133, *(&v133 + 1));
    sub_100084D68(v6, v68, *(&v68 + 1), &v130);
    v69 = v133;
    v133 = v130;
    sub_10006A178(v69, *(&v69 + 1));
  }

  if (__OFSUB__(DWORD1(v133), v133))
  {
    goto LABEL_169;
  }

  if (DWORD1(v133) - v133 >= 4)
  {
    goto LABEL_60;
  }

LABEL_94:
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v70, v71))
  {
    goto LABEL_129;
  }

  v72 = swift_slowAlloc();
  *v72 = 134217984;
  v73 = v133;
  v74 = *(&v133 + 1) >> 62;
  if ((*(&v133 + 1) >> 62) > 1)
  {
    goto LABEL_105;
  }

  if (v74)
  {
    LODWORD(v73) = DWORD1(v133) - v133;
    if (__OFSUB__(DWORD1(v133), v133))
    {
      goto LABEL_180;
    }

    v73 = v73;
  }

  else
  {
    v73 = BYTE14(v133);
  }

LABEL_128:
  *(v72 + 4) = v73;
  _os_log_impl(&_mh_execute_header, v70, v71, "Got partial data of size %ld < header size", v72, 0xCu);

LABEL_129:

  v14 = *(&v133 + 1);
  v15 = v133;
  if ((v127 & 1) == 0)
  {
    goto LABEL_133;
  }

  v131 = &type metadata for Data;
  v132 = &protocol witness table for Data;
  v130 = v133;
  v98 = sub_1000752B0(&v130, &type metadata for Data);
  v84 = *v98;
  v85 = v98[1];
  v99 = v85 >> 62;
  if ((v85 >> 62) > 1)
  {
    if (v99 == 2)
    {
      v92 = *(v84 + 16);
      v93 = *(v84 + 24);
      sub_100069E2C(v15, v14);
      v103 = __DataStorage._bytes.getter();
      if (!v103)
      {
        goto LABEL_152;
      }

      v104 = v103;
      v105 = __DataStorage._offset.getter();
      if (__OFSUB__(v92, v105))
      {
        goto LABEL_184;
      }

      v97 = (v92 - v105 + v104);
LABEL_153:
      v112 = v93 - v92;
      if (__OFSUB__(v93, v92))
      {
        goto LABEL_182;
      }

      goto LABEL_154;
    }

LABEL_138:
    memset(v128, 0, 14);
    sub_100069E2C(v15, v14);
    v100 = v128;
    goto LABEL_139;
  }

  if (!v99)
  {
    goto LABEL_132;
  }

  v106 = v84;
  v107 = v84 >> 32;
  a4 = v107 - v106;
  if (v107 < v106)
  {
    goto LABEL_181;
  }

  sub_100069E2C(v15, v14);
  v108 = __DataStorage._bytes.getter();
  if (!v108)
  {
    goto LABEL_144;
  }

  v90 = v108;
  v109 = __DataStorage._offset.getter();
  v84 = v106 - v109;
  if (__OFSUB__(v106, v109))
  {
    goto LABEL_185;
  }

LABEL_143:
  v97 = (v84 + v90);
LABEL_145:
  v110 = __DataStorage._length.getter();
  if (v110 >= a4)
  {
    v111 = a4;
  }

  else
  {
    v111 = v110;
  }

LABEL_157:
  v114 = &v97[v111];
  if (v97)
  {
    v115 = v114;
  }

  else
  {
    v115 = 0;
  }

  sub_10008E434(v97, v115, v129);
  a4 = v126;
LABEL_161:
  v116 = v129[0];
  v117 = v129[1];
  sub_1000752F4(&v130);
  v118 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v119 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v120 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  *v118 = v116;
  v118[1] = v117;
  sub_10006A2D0(v119, v120);
LABEL_162:
  v102 = *(&v133 + 1);
  v101 = v133;
  return sub_10006A178(v101, v102);
}

uint64_t sub_10023DC24(char a1)
{
  LOBYTE(v1) = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v6, v2);
    if (v7)
    {
      if (qword_100501D78 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v6 = off_10050B110;
    v9 = sub_1000CAAC4();
    v10 = v9 & 0xC000000000000001;
    v34[1] = v9;
    if ((v1 & 1) == 0)
    {
      break;
    }

    if (v10)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_10023E228(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v3 = v37;
      v1 = v38;
      v6 = v39;
      v11 = v40;
      v2 = v41;
    }

    else
    {
      v15 = -1 << *(v9 + 32);
      v1 = v9 + 56;
      v6 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v2 = v17 & *(v9 + 56);
      v11 = 0;
    }

    v34[0] = v6;
    v18 = (v6 + 64) >> 6;
    while (v3 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_49;
      }

      v35 = v22;
      type metadata accessor for Peer();
      swift_dynamicCast();
      v21 = v36;
      if (!v36)
      {
        goto LABEL_49;
      }

LABEL_24:
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      v6 = qword_10051B288;
      v23 = sub_1000E7974(v21);
      if (v23 != 2 && (v23 & 1) == 0)
      {
        if (qword_100501B98 != -1)
        {
          swift_once();
        }

        v6 = qword_10051B5F8;
        sub_100251228(v21);
      }
    }

    v19 = v11;
    v20 = v2;
    if (v2)
    {
LABEL_20:
      v2 = (v20 - 1) & v20;
      v21 = *(*(v3 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v20)))));

      if (!v21)
      {
        goto LABEL_49;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_49;
      }

      v20 = *(v1 + 8 * v11);
      ++v19;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  if (v10)
  {
    swift_unknownObjectRetain();
    v6 = __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_10023E228(&qword_100503F20, type metadata accessor for Peer);
    Set.Iterator.init(_cocoa:)();
    v3 = v37;
    v1 = v38;
    v12 = v39;
    v13 = v40;
    v14 = v41;
  }

  else
  {
    v24 = -1 << *(v9 + 32);
    v1 = v9 + 56;
    v12 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v14 = v26 & *(v9 + 56);
    v13 = 0;
  }

  v34[0] = v12;
  v2 = (v12 + 64) >> 6;
  while (v3 < 0)
  {
    v32 = __CocoaSet.Iterator.next()();
    if (!v32)
    {
      goto LABEL_49;
    }

    v35 = v32;
    type metadata accessor for Peer();
    swift_dynamicCast();
    v31 = v36;
    v29 = v13;
    v30 = v14;
    if (!v36)
    {
      goto LABEL_49;
    }

LABEL_46:
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    v6 = qword_10051B5F8;
    sub_100253124(v31);

    v13 = v29;
    v14 = v30;
  }

  v27 = v13;
  v28 = v14;
  v29 = v13;
  if (v14)
  {
LABEL_42:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v3 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_51;
    }

    if (v29 >= v2)
    {
      break;
    }

    v28 = *(v1 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_42;
    }
  }

LABEL_49:
  sub_100093854();
}

uint64_t sub_10023E228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10023E270(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    v8 = enum case for DispatchPredicate.onQueue(_:);
    v9 = v3[13];
    v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v10 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    v11 = v3[1];
    v11(v6, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_10;
    }

    v64 = v10;
    v65 = v9;
    v66 = v8;
    v12 = [a1 appletIdentifier];
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v17 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
    v18 = v16;
    if (v15 >> 60 == 15)
    {
      if (v16 >> 60 != 15)
      {
        goto LABEL_7;
      }

      v63 = a1;
      sub_10006A2D0(v13, v15);
    }

    else
    {
      if (v16 >> 60 == 15)
      {
LABEL_7:
        sub_10006A2D0(v13, v15);
        return sub_10006A2D0(v17, v18);
      }

      v63 = a1;
      sub_100069E2C(v13, v15);
      sub_10006A2BC(v17, v18);
      a1 = sub_10008FB4C(v13, v15, v17, v18);
      sub_10006A2D0(v17, v18);
      sub_10006A2D0(v17, v18);
      sub_10006A178(v13, v15);
      result = sub_10006A2D0(v13, v15);
      if ((a1 & 1) == 0)
      {
        return result;
      }
    }

    if (qword_1005019E8 != -1)
    {
      goto LABEL_66;
    }

LABEL_10:
    v20 = sub_1000CAA04();
    v21 = v63;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v22 = __CocoaSet.count.getter();

      if (v22)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = *(v20 + 16);

      if (v23)
      {
        goto LABEL_27;
      }
    }

    if (qword_1005018F0 != -1)
    {
      swift_once();
    }

    v25 = v64;
    v24 = v65;
    *v6 = v64;
    v24(v6, v66, v2);
    v26 = v25;
    LOBYTE(v25) = _dispatchPreconditionTest(_:)();
    v11(v6, v2);
    if (v25)
    {
      if (qword_100501DA8 == -1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_18:
    sub_10034682C(0);
    if (qword_100501928 != -1)
    {
      swift_once();
    }

    sub_1000BB4B4(0);
    v27 = sub_1000CAA04();
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = __CocoaSet.count.getter();

      if (v28)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v29 = *(v27 + 16);

      if (v29)
      {
        goto LABEL_27;
      }
    }

    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    sub_100240A9C(0);
LABEL_27:
    v30 = [v21 blePairingRequest];
    if (v30)
    {

      v31 = [v21 bleUUID];
      if (v31)
      {
      }

      else
      {
        if (qword_100501908 != -1)
        {
          swift_once();
        }

        v32 = [v21 publicKeyIdentifier];
        v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        sub_1000A6DB8(v33, v35);
        sub_10006A178(v33, v35);
      }
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v21;
    v37 = qword_100501D78;
    v38 = v21;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = off_10050B110;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_10023EC7C;
    *(v40 + 24) = v36;

    v41 = sub_1000CAAC4();

    v42 = sub_1000CA840(v41);

    if (v42)
    {
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000E67E4(v42);
      if (qword_100501908 != -1)
      {
        swift_once();
      }

      sub_10009C71C((v42 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier));
      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      v43 = qword_10051B5B0;

      v44 = sub_10024F2B4(v43, v42);

      v45 = sub_1000CA828(v44);

      if (v45)
      {
        sub_100246878();
      }

      v67 = v42;
      v47 = v39[3];
      __chkstk_darwin(v46);
      *(&v63 - 2) = &v67;
      *(&v63 - 1) = v39;
      os_unfair_lock_lock((v47 + 32));
      sub_10023EC84((v47 + 16));
      os_unfair_lock_unlock((v47 + 32));
    }

    v48 = sub_1000CAAC4();
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    v6 = qword_10051B5F8;

    v49 = sub_100239364(v48, v6);

    if (qword_100501960 != -1)
    {
      swift_once();
    }

    v50 = sub_10022DA5C(v48);

    v51 = sub_1000E0348(v50);

    v54 = sub_100238B50(v49, v52, v53);

    v55 = (v54 & 0x100) != 0 ? -120 : v54;
    sub_1000F6564(0, v51, v55);

    v56 = [objc_opt_self() sessionManager];
    v57 = [v56 getActiveRKESessions];

    sub_10009393C(0, &qword_100507800, &off_1004BE548);
    v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v58 >> 62)
    {
      break;
    }

    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v59)
    {
      goto LABEL_68;
    }

LABEL_54:
    v2 = 0;
    v3 = (v58 & 0xC000000000000001);
    while (1)
    {
      if (v3)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v60 = *(v58 + 8 * v2 + 32);
      }

      v6 = v60;
      v61 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v62 = [v60 updateAllowlistedVehicles];

      ++v2;
      if (v61 == v59)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  v59 = _CocoaArrayWrapper.endIndex.getter();
  if (v59)
  {
    goto LABEL_54;
  }

LABEL_68:

  return sub_10013E82C();
}

uint64_t sub_10023EC44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023ECBC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_100501B78 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v12 = byte_10051B5B8;
  if ((byte_10051B5B8 & 1) == 0)
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v1 + 16))(v4, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Alisha can't start because UWB is not supported on this device", v15, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v12;
}

unint64_t sub_10023EFC4()
{
  result = qword_100503608;
  if (!qword_100503608)
  {
    sub_10009393C(255, &qword_100503F00, SEEndPoint_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503608);
  }

  return result;
}

uint64_t sub_10023F064()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023F0B0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10023F0F4()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v7 = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    if (qword_100501960 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v7 = swift_once();
LABEL_5:
  v8 = *(qword_10051B288 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (qword_100501D78 != -1)
  {
    v7 = swift_once();
  }

  v9 = *(off_10050B110 + 3);
  __chkstk_darwin(v7);
  *&v19[-16] = sub_100238CE8;
  *&v19[-8] = 0;
  os_unfair_lock_lock(v9 + 8);
  sub_10023F450(&v9[4], &v20);
  os_unfair_lock_unlock(v9 + 8);
  v10 = v20;
  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v11 = *(qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable);
  if (qword_100501A58 != -1)
  {
    swift_once();
  }

  result = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
  if (v13 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = v13;
  v16 = sub_1001C1BA4(result, v13);
  sub_10006A2D0(v14, v15);
  v17 = *(v16 + 24);

  v18 = *(v17 + 16);

  if (v8 == 10 || v8 == 5)
  {
    if (v10)
    {
      result = 3;
      if (v11)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    result = 1;
    if ((v11 & 1) == 0)
    {
LABEL_16:
      result |= 4uLL;
    }
  }

  else if (v10)
  {
    result = 2;
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = 0;
    if (!v11)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  if (v18)
  {
    return result | 8;
  }

  return result;
}

uint64_t sub_10023F450@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F79A8(*(v2 + 16), *(v2 + 24), *(a1 + 8));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10023F488()
{
  v1 = *(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_10023F5BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100256E78(a1, a2, a3, v3[2], v3[3], v3[4], v3 + v8, *v9, v9[8]);
}

uint64_t sub_10023F68C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023F700()
{
  sub_1000752F4((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10023F758()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023F798()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10023F8B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10023F974()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Peer();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10023FAC0(uint64_t a1)
{
  v5 = v1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7)
  {
    v38 = _swiftEmptyArrayStorage;
    v8 = &v38;
    sub_10019F464(0, v7 & ~(v7 >> 63), 0);
    v32 = v38;
    if (v30)
    {
      v9 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      v9 = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v35 = v9;
    v36 = v10;
    v37 = v30 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v29 = v7;
      while (v12 < v7)
      {
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_38;
        }

        v31 = v14;
        v4 = v35;
        isUniquelyReferenced_nonNull_native = v36;
        v3 = v37;
        sub_10008EBB4(v35, v36, v37, a1);
        v8 = v15;
        v34 = v15;
        sub_100245EC8(&v34, v33);
        if (v5)
        {
          goto LABEL_43;
        }

        v16 = v32;
        v17 = v33[0];
        v38 = v32;
        v19 = v32[2];
        v18 = v32[3];
        if (v19 >= v18 >> 1)
        {
          v8 = &v38;
          sub_10019F464((v18 > 1), v19 + 1, 1);
          v16 = v38;
        }

        v16[2] = v19 + 1;
        v16[v19 + 4] = v17;
        v32 = v16;
        if (v30)
        {
          if (!v3)
          {
            goto LABEL_44;
          }

          v5 = 0;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            isUniquelyReferenced_nonNull_native = 1;
          }

          sub_100068FC4(&qword_100507CC8, &unk_1004101A0);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          (v8)(v33, 0);
        }

        else
        {
          if (v3)
          {
            goto LABEL_45;
          }

          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v5 = 0;
          v8 = (1 << *(a1 + 32));
          if (v4 >= v8)
          {
            goto LABEL_39;
          }

          v20 = v4 >> 6;
          v21 = *(a1 + 56 + 8 * (v4 >> 6));
          if (((v21 >> v4) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(a1 + 36) != isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_41;
          }

          v22 = v21 & (-2 << (v4 & 0x3F));
          if (v22)
          {
            v8 = (__clz(__rbit64(v22)) | v4 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (a1 + 64 + 8 * v20);
            while (v24 < (v8 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_1000937D4(v4, isUniquelyReferenced_nonNull_native, 0);
                v8 = (__clz(__rbit64(v26)) + v23);
                goto LABEL_34;
              }
            }

            sub_1000937D4(v4, isUniquelyReferenced_nonNull_native, 0);
          }

LABEL_34:
          v28 = *(a1 + 36);
          v35 = v8;
          v36 = v28;
          v37 = 0;
        }

        v7 = v29;
        v12 = v31;
        if (v31 == v29)
        {
          sub_1000937D4(v35, v36, v37);
          return;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:

    sub_1000937D4(v4, isUniquelyReferenced_nonNull_native, v3);

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void *sub_10023FE3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v28 = *(a1 + 16);
  sub_10019F3C0(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = v28;
  v7 = 0;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    v10 = 1 << v5;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_26;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v5);
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_30;
      }

      v13 = 0xE400000000000000;
      v14 = 1852799308;
    }

    else
    {
      v13 = 0xE600000000000000;
      v14 = 0x616873696C41;
    }

    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = v5;
      sub_10019F3C0((v15 > 1), v16 + 1, 1);
      v6 = v28;
      v11 = v26;
      v5 = v27;
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    v17[4] = v14;
    v17[5] = v13;
    v8 = 1 << *(a1 + 32);
    if (v5 >= v8)
    {
      goto LABEL_27;
    }

    v3 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_28;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v19 = v18 & (-2 << (v5 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1000937D4(v5, v11, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_23;
        }
      }

      sub_1000937D4(v5, v11, 0);
LABEL_23:
      v6 = v28;
    }

    ++v7;
    v5 = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_1002400AC(Swift::UInt a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  v13 = sub_1000D558C(v44, a1);
  swift_endAccess();
  if ((v13 & 1) == 0)
  {
    return;
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45[0] = v17;
    *v16 = 136315138;
    v42 = v12;
    if (!a1)
    {
      v18 = 0xE600000000000000;
      v19 = 0x616873696C41;
LABEL_14:
      v23 = sub_1002FFA0C(v19, v18, v45);

      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "UWB power assertion added for %s", v16, 0xCu);
      sub_1000752F4(v17);

      v12 = v42;
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v18 = 0xE400000000000000;
      v19 = 1852799308;
      goto LABEL_14;
    }

LABEL_22:
    v44[0] = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

LABEL_15:
  sub_10024D320(a2, v45);
  swift_beginAccess();
  sub_1000C54CC(v45, a1);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion;
  if (*(v3 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion))
  {
    return;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Powering on UWB", v27, 2u);
  }

  v28 = type metadata accessor for UWBPrewarmSession();
  v29 = objc_allocWithZone(v28);
  v30 = &v29[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart];
  *v30 = sub_10024F2A8;
  *(v30 + 1) = v3;
  v31 = &v29[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate];
  *v31 = sub_10024F2BC;
  *(v31 + 1) = v3;
  v32 = &v29[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onRangingLimitUpdate];
  *v32 = sub_10024F2C4;
  *(v32 + 1) = v3;
  v33 = &v29[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation];
  *v33 = sub_10024F2C0;
  *(v33 + 1) = v3;
  v34 = objc_allocWithZone(NISession);
  swift_retain_n();
  v35 = [v34 init];
  *&v29[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] = v35;
  [v35 setDelegateQueue:v12];
  v43.receiver = v29;
  v43.super_class = v28;
  v36 = objc_msgSendSuper2(&v43, "init");
  v37 = OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session;
  v38 = *&v36[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session];
  v39 = v36;
  [v38 setDelegate:v39];
  v40 = [objc_allocWithZone(NISystemConfiguration) init];
  [v40 setPrewarmUWB:1];
  [v40 setPrewarmSecureElementChannel:1];
  [*&v36[v37] runWithConfiguration:v40];

  v20 = *(v3 + v24);
  *(v3 + v24) = v36;
LABEL_19:
}

void *sub_100240670(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (*(a1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) == 1)
    {
      v12 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
      swift_beginAccess();
      v13 = *(a1 + v12);

      return a2(v14);
    }

    else
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Not running", v17, 2u);
      }

      return &_swiftEmptySetSingleton;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100240880(uint64_t (*a1)(id))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (*(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) == 1)
    {
      v11 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
      swift_beginAccess();
      v12 = *(v1 + v11);

      return sub_10024CBFC(v13, a1);
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Not running", v16, 2u);
      }

      return &_swiftEmptySetSingleton;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100240A9C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = v5[13];
  v11(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v47 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = v5[1];
  (v12)(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
  {
    v16 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v16, v23, "Not running", v24, 2u);
LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v48 = a1;
  v46 = v12;
  v13 = OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion;
  if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion))
  {
    v12 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
    swift_beginAccess();
    sub_10010D998(v48);
    v15 = v14;
    swift_endAccess();
    if ((v15 & 1) == 0)
    {
      v45 = v13;
      a1 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions;
      swift_beginAccess();
      v25 = *(v2 + a1);
      v26 = sub_10008C9C8(v48);
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }

      v44 = v26;
      v28 = *(v2 + a1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v2 + a1);
      v49 = v30;
      *(v2 + a1) = 0x8000000000000000;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_14:
        sub_1000DD8CC(v44, v30);
        *(v2 + a1) = v30;
LABEL_15:
        swift_endAccess();
        v51 = 0;
        memset(v50, 0, sizeof(v50));
        swift_beginAccess();
        sub_1000C54CC(v50, v48);
        swift_endAccess();
        if (*(*&v12[v2] + 16))
        {
          return;
        }

        v31 = OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded;
        swift_beginAccess();
        v32 = *(v2 + v31);
        *(v2 + v31) = &_swiftEmptySetSingleton;

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Powering off UWB", v35, 2u);
        }

        v36 = v45;
        v37 = *(v2 + v45);
        if (v37)
        {
          v38 = v47;
          *v8 = v47;
          v11(v8, v10, v4);
          v39 = v38;
          v40 = v37;
          v41 = _dispatchPreconditionTest(_:)();
          v46(v8, v4);
          if ((v41 & 1) == 0)
          {
            __break(1u);
            goto LABEL_32;
          }

          [*&v40[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] invalidate];

          v42 = *(v2 + v36);
        }

        else
        {
          v42 = 0;
        }

        *(v2 + v36) = 0;

        return;
      }

LABEL_30:
      sub_1003111C0();
      v30 = v49;
      goto LABEL_14;
    }
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v50[0] = v19;
    *v18 = 136315138;
    v20 = v48;
    if (!v48)
    {
      v21 = 0xE600000000000000;
      v22 = 0x616873696C41;
LABEL_23:
      v43 = sub_1002FFA0C(v22, v21, v50);

      *(v18 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v16, v17, "UWB is not powered on for %s", v18, 0xCu);
      sub_1000752F4(v19);

      goto LABEL_24;
    }

    if (v48 == 1)
    {
      v21 = 0xE400000000000000;
      v22 = 1852799308;
      goto LABEL_23;
    }

LABEL_32:
    v49 = v20;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

LABEL_25:
}

void sub_100240FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v4 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    v17 = *(v4 + OBJC_IVAR____TtC10seserviced10UWBSession_session);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = swift_allocObject();
    v20 = v26;
    *(v19 + 16) = v25;
    *(v19 + 24) = v20;
    aBlock[4] = sub_10024D92C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100247C20;
    aBlock[3] = &unk_1004CCC88;
    v21 = _Block_copy(aBlock);

    [v17 processDCKMessage:isa responseCallback:v21];
    _Block_release(v21);

    return;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v6 + 16))(v9, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v5);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Session is not running", v24, 2u);
  }

  (*(v6 + 8))(v9, v5);
}

void sub_1002413A0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v4;
  LODWORD(v7) = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v14 = qword_10051B7F0;
    *v13 = qword_10051B7F0;
    (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
    v15 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v13, v9);
    if ((v14 & 1) == 0)
    {
      __break(1u);
      return;
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Not running", v20, 2u);
      }

      sub_100079E24();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
      return;
    }

    v52 = a3;
    v53 = v5;
    v59 = a1;
    v57 = v7;
    v16 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
    swift_beginAccess();
    v54 = v3;
    v51[1] = v16;
    v56 = *(v3 + v16);
    if ((v56 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_10024CE0C(&qword_100507D00, v17, type metadata accessor for UWBSession);
      Set.Iterator.init(_cocoa:)();
      v7 = v60[8];
      a3 = v60[9];
      v3 = v60[10];
      v13 = v60[11];
      v5 = v60[12];
    }

    else
    {
      v22 = -1 << *(v56 + 32);
      a3 = v56 + 56;
      v3 = ~v22;
      v23 = -v22;
      v24 = v23 < 64 ? ~(-1 << v23) : -1;
      v5 = v24 & *(v56 + 56);
      v7 = v56;
      swift_bridgeObjectRetain_n();
      v13 = 0;
    }

    v55 = v3;
    v10 = (v3 + 64) >> 6;
    if (v7 < 0)
    {
      break;
    }

LABEL_14:
    v25 = v13;
    v26 = v5;
    v9 = v13;
    if (v5)
    {
LABEL_18:
      a1 = (v26 - 1) & v26;
      v27 = *(*(v7 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v26)))));
      if (v27)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v9 >= v10)
      {
        goto LABEL_25;
      }

      v26 = *(a3 + 8 * v9);
      v25 = (v25 + 1);
      if (v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  while (1)
  {
    v28 = __CocoaSet.Iterator.next()();
    if (!v28)
    {
      break;
    }

    v61 = v28;
    type metadata accessor for UWBSession();
    swift_dynamicCast();
    v27 = v60[0];
    v9 = v13;
    a1 = v5;
    if (!v60[0])
    {
      break;
    }

LABEL_22:
    v58 = v5;
    v3 = *&v27[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

    v29 = static UUID.== infix(_:_:)();

    if (v29)
    {
      sub_100093854();

      type metadata accessor for UWBAlishaSession();
      v42 = v27;
      if (!swift_dynamicCastClass())
      {

        goto LABEL_26;
      }

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v60[0] = v46;
        *v45 = 136315138;
        v47 = UUID.uuidString.getter();
        v49 = sub_1002FFA0C(v47, v48, v60);

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "UWB Alisha session already exists for %s", v45, 0xCu);
        sub_1000752F4(v46);
      }

      sub_100245B84(v57);
      sub_10024CEA4();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();

      return;
    }

    v13 = v9;
    v5 = a1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  sub_100093854();

LABEL_26:

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v60[0] = v33;
    *v32 = 136315394;
    v34 = UUID.uuidString.getter();
    v36 = sub_1002FFA0C(v34, v35, v60);

    *(v32 + 4) = v36;
    *(v32 + 12) = 512;
    v37 = v57;
    *(v32 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v30, v31, "Starting new UWB Alisha session for %s version %hu", v32, 0x10u);
    sub_1000752F4(v33);
  }

  else
  {

    v37 = v57;
  }

  sub_1000BC094(v52, v60);
  v38 = objc_allocWithZone(type metadata accessor for UWBAlishaSession());

  v40 = sub_100246DB8(v39, v37, v60);
  swift_beginAccess();
  v41 = v40;
  sub_1000D6B6C(&v61, v41);
  swift_endAccess();
}

id sub_100241AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v18 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
  if (v3[OBJC_IVAR____TtC10seserviced10UWBSession_state] == 4)
  {
    return [*&v3[OBJC_IVAR____TtC10seserviced10UWBSession_session] suspendAcwgRanging:a1 withSuspendTriggerReason:a2];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v7 + 16))(v10, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v6);
  v20 = v3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    v28[7] = v3[v18];
    v25 = String.init<A>(describing:)();
    v27 = sub_1002FFA0C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "UWB session is in %s, not suspending ranging", v23, 0xCu);
    sub_1000752F4(v24);
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_100241E60()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (*(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state) != 1)
  {

    return;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  (*(v2 + 16))(v5, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v1);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Session is invalidated, not deleting URSK", v15, 2u);
  }

  (*(v2 + 8))(v5, v1);
}

id sub_100242140(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    return [*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_session) processAcwgM1Msg:v21 withSessionTriggerReason:v22];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v4 + 16))(v7, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Session is not running", v18, 2u);
  }

  (*(v4 + 8))(v7, v3);
  sub_100079E24();
  swift_allocError();
  *v19 = 0;
  return swift_willThrow();
}

id sub_100242464(uint64_t a1)
{
  v20 = a1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    return [*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_session) processAcwgM3Msg:v20];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v3 + 16))(v6, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Session is not running", v17, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_100079E24();
  swift_allocError();
  *v18 = 0;
  return swift_willThrow();
}

id sub_10024277C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v29 = type metadata accessor for Logger();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v29);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v13 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
  if (v3[OBJC_IVAR____TtC10seserviced10UWBSession_state] == 4)
  {
    return [*&v3[OBJC_IVAR____TtC10seserviced10UWBSession_session] processAcwgRangingSessionResumeRequestMsg:a1 withResumeTriggerReason:v28];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v17 = v29;
  (*(v5 + 16))(v8, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v29);
  v18 = v3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    v30 = *(v13 + v3);
    v23 = String.init<A>(describing:)();
    v25 = sub_1002FFA0C(v23, v24, &v31);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "UWB session is in %s, not requesting resume ranging", v21, 0xCu);
    sub_1000752F4(v22);
  }

  (*(v5 + 8))(v8, v17);
  sub_100079E24();
  swift_allocError();
  *v26 = 0;
  return swift_willThrow();
}

uint64_t sub_100242B18(void *a1, int a2, uint64_t a3)
{
  v5 = v4;
  v65 = a3;
  v66 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v12 = qword_10051B7F0;
    *v11 = qword_10051B7F0;
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v13 = v12;
    v14 = _dispatchPreconditionTest(_:)();
    result = (*(v8 + 8))(v11, v7);
    if ((v14 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    if (*(v3 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
    {
      break;
    }

    v78 = a1;
    v62[2] = v5;
    v7 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
    swift_beginAccess();
    v64 = v3;
    v62[1] = v7;
    v63 = *(v3 + v7);
    if ((v63 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v7 = __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_10024CE0C(&qword_100507D00, v16, type metadata accessor for UWBSession);
      Set.Iterator.init(_cocoa:)();
      v17 = v73;
      v67 = v74;
      v3 = v75;
      v5 = v76;
      a1 = v77;
    }

    else
    {
      v22 = -1 << *(v63 + 32);
      v23 = *(v63 + 56);
      v67 = v63 + 56;
      v3 = ~v22;
      v24 = -v22;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      a1 = (v25 & v23);
      v17 = v63;
      swift_bridgeObjectRetain_n();
      v5 = 0;
    }

    v62[3] = v3;
    v8 = (v3 + 64) >> 6;
    while (1)
    {
      if (v17 < 0)
      {
        v28 = __CocoaSet.Iterator.next()();
        if (!v28 || (v68[0] = v28, type metadata accessor for UWBSession(), swift_dynamicCast(), v3 = v71[0], v7 = a1, !v71[0]))
        {
LABEL_28:
          sub_100093854();

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v71[0] = v41;
            *v40 = 136315138;
            v42 = UUID.uuidString.getter();
            v44 = sub_1002FFA0C(v42, v43, v71);

            *(v40 + 4) = v44;
            _os_log_impl(&_mh_execute_header, v38, v39, "Starting new UWB Lyon session for %s", v40, 0xCu);
            sub_1000752F4(v41);
          }

          sub_1000BC094(v65, v71);
          v45 = v72;
          v46 = sub_10024CE54(v71, v72);
          v47 = *(*(v45 - 8) + 64);
          __chkstk_darwin(v46);
          v49 = (v62 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v50 + 16))(v49);
          v51 = *v49;
          v69 = type metadata accessor for LyonUWB();
          v70 = &off_1004C6C48;
          v68[0] = v51;
          v52 = objc_allocWithZone(type metadata accessor for UWBLyonSession());
          v53 = v69;
          v54 = sub_10024CE54(v68, v69);
          v55 = *(*(v53 - 8) + 64);
          __chkstk_darwin(v54);
          v57 = (v62 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v58 + 16))(v57);
          v59 = *v57;

          v61 = sub_10024B570(v60, v66, v59, v52);
          sub_1000752F4(v68);
          sub_1000752F4(v71);
          swift_beginAccess();
          v18 = v61;
          sub_1000D6B6C(v68, v18);
          swift_endAccess();

          return v18;
        }

        goto LABEL_24;
      }

      v26 = v5;
      v27 = a1;
      if (!a1)
      {
        break;
      }

LABEL_20:
      v7 = (v27 - 1) & v27;
      v3 = *(*(v17 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v27)))));
      if (!v3)
      {
        goto LABEL_28;
      }

LABEL_24:
      v11 = a1;
      v29 = v17;
      v30 = *(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);

      v31 = static UUID.== infix(_:_:)();

      v17 = v29;
      a1 = v7;

      if (v31)
      {
        sub_100093854();

        v18 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v18, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v71[0] = v34;
          *v33 = 136315138;
          v35 = UUID.uuidString.getter();
          v37 = sub_1002FFA0C(v35, v36, v71);

          *(v33 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v18, v32, "UWB Lyon session for %s already exists", v33, 0xCu);
          sub_1000752F4(v34);
        }

        sub_10024CEA4();
        goto LABEL_9;
      }
    }

    while (1)
    {
      v5 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v5 >= v8)
      {
        goto LABEL_28;
      }

      v27 = *(v67 + 8 * v5);
      ++v26;
      if (v27)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Not running", v20, 2u);
  }

  sub_100079E24();
LABEL_9:
  swift_allocError();
  *v21 = 1;
  swift_willThrow();
  return v18;
}

id sub_1002433B8(uint64_t a1)
{
  v2 = v1;
  v27 = type metadata accessor for Logger();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v15 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
  if (v2[OBJC_IVAR____TtC10seserviced10UWBSession_state] == 4)
  {
    return [*&v2[OBJC_IVAR____TtC10seserviced10UWBSession_session] prefetchAcwgUrsk:a1];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v17 = v27;
  (*(v4 + 16))(v7, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v27);
  v18 = v2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315138;
    v28 = v2[v15];
    v23 = String.init<A>(describing:)();
    v25 = sub_1002FFA0C(v23, v24, &v29);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "UWB session is in %s, cannot prefetch URSK, disconnecting peer", v21, 0xCu);
    sub_1000752F4(v22);
  }

  (*(v4 + 8))(v7, v17);
  sub_100079E24();
  swift_allocError();
  *v26 = 0;
  return swift_willThrow();
}

void sub_10024374C(unsigned __int8 a1, __int16 a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) != 1)
  {
    v20 = [*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_session) acwgEventNotifier];
    [v20 notifyLockStatusChanged:(a1 | (a2 << 8))];

    return;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  (*(v6 + 16))(v9, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v5);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Session is invalidated, not notifying lock status change", v19, 2u);
  }

  (*(v6 + 8))(v9, v5);
}

void sub_100243A54(uint64_t a1, Swift::UInt a2)
{
  v46 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v9 = qword_10051B7F0;
    *v8 = qword_10051B7F0;
    v10 = enum case for DispatchPredicate.onQueue(_:);
    v11 = v5[13];
    v11(v8, enum case for DispatchPredicate.onQueue(_:), v4);
    v45 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    v13 = v5[1];
    ++v5;
    v12 = v13;
    v13(v8, v4);
    if ((v9 & 1) == 0)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Not running", v30, 2u);
        goto LABEL_29;
      }

LABEL_30:

      return;
    }

    v44 = a2;
    v15 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion);
    if (!v15)
    {
      break;
    }

    v16 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
    swift_beginAccess();
    if (!sub_1000C6AD0(v44, *(v2 + v16)))
    {
      break;
    }

    v17 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions;
    swift_beginAccess();
    v43 = v15;
    v18 = *(v2 + v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v2 + v17);
    *(v2 + v17) = 0x8000000000000000;
    v20 = v2;
    sub_100315054(v46, v44, isUniquelyReferenced_nonNull_native);
    v2 = v48;
    *(v20 + v17) = v48;
    swift_endAccess();
    v21 = 0;
    a2 = 0;
    v22 = 1 << *(v2 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v2 + 64);
    for (i = (v22 + 63) >> 6; v24; a2 |= *(*(v2 + 56) + ((v26 << 9) | (8 * v27))))
    {
      v26 = v21;
LABEL_14:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
    }

    while (1)
    {
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v26 >= i)
      {
        v36 = v45;
        *v8 = v45;
        v11(v8, v10, v4);
        v37 = v36;
        LOBYTE(v36) = _dispatchPreconditionTest(_:)();
        v12(v8, v4);
        if ((v36 & 1) == 0)
        {
          goto LABEL_41;
        }

        if (a2)
        {
          if ((a2 & 2) != 0)
          {
            v38 = 6;
          }

          else
          {
            v38 = 2;
          }
        }

        else
        {
          if ((a2 & 2) == 0)
          {
            v38 = 0;
            if ((a2 & 4) == 0)
            {
              goto LABEL_37;
            }

LABEL_36:
            v38 = v38 | 1;
LABEL_37:
            v40 = v43;
            v41 = [*&v43[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] systemEventNotifier];
            [v41 notifyPassiveAccessIntent:v38];

            return;
          }

          v38 = 4;
        }

        if ((a2 & 4) != 0)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v24 = *(v2 + 64 + 8 * v26);
      ++v21;
      if (v24)
      {
        v21 = v26;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v28 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v28, v31))
  {
    goto LABEL_30;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v47 = v33;
  *v32 = 136315138;
  v14 = v44;
  if (!v44)
  {
    v34 = 0xE600000000000000;
    v35 = 0x616873696C41;
    goto LABEL_28;
  }

  if (v44 == 1)
  {
    v34 = 0xE400000000000000;
    v35 = 1852799308;
LABEL_28:
    v39 = sub_1002FFA0C(v35, v34, &v47);

    *(v32 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v31, "UWB is not powered on for %s", v32, 0xCu);
    sub_1000752F4(v33);

LABEL_29:

    goto LABEL_30;
  }

LABEL_42:
  v48 = v14;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t sub_100243F4C()
{
  v0 = type metadata accessor for DSKUWB();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10024401C();
  qword_10051B5B0 = result;
  return result;
}

uint64_t sub_100243FB4(uint64_t a1, SEL *a2, unsigned __int8 *a3)
{
  v4 = [objc_msgSend(objc_opt_self() "deviceCapabilities")];
  result = swift_unknownObjectRelease();
  *a3 = v4;
  return result;
}

uint64_t sub_10024401C()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_delegates) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion) = 0;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_10024CDF0;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CCC38;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1002441B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
  swift_beginAccess();
  v3 = *(v1 + v2);

  sub_10023FAC0(v4);
  v6 = v5;

  v32 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v31 = v6;
  sub_100075D50(&v31, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v30, 0x6553657669746361, 0xEE00736E6F697373, isUniquelyReferenced_nonNull_native);
  v8 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v11 = sub_10023FE3C(v10);

  v12 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v32 = v12;
  *&v31 = v11;
  sub_100075D50(&v31, v30);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v30, 0x7355657669746361, 0xEE00736573614365, v13);
  v14 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable);
  v32 = &type metadata for Bool;
  LOBYTE(v31) = v14;
  sub_100075D50(&v31, v30);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v30, 0x616C696176417369, 0xEB00000000656C62, v15);
  v16 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning);
  v32 = &type metadata for Bool;
  LOBYTE(v31) = v16;
  sub_100075D50(&v31, v30);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v30, 0x6E696E6E75527369, 0xE900000000000067, v17);
  v18 = OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded;
  swift_beginAccess();
  v19 = *(v1 + v18);

  v21 = sub_10023FE3C(v20);

  v32 = v12;
  *&v31 = v21;
  sub_100075D50(&v31, v30);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v30, 0xD000000000000014, 0x8000000100468800, v22);
  if (qword_100501B80 != -1)
  {
    swift_once();
  }

  v32 = &type metadata for Bool;
  LOBYTE(v31) = byte_10051B5B9;
  sub_100075D50(&v31, v30);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v30, 0xD000000000000011, 0x8000000100468A70, v23);
  if (qword_100501B78 != -1)
  {
    swift_once();
  }

  v32 = &type metadata for Bool;
  LOBYTE(v31) = byte_10051B5B8;
  sub_100075D50(&v31, v30);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v30, 0xD000000000000015, 0x8000000100468A90, v24);
  v25 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion) != 0;
  v32 = &type metadata for Bool;
  LOBYTE(v31) = v25;
  sub_100075D50(&v31, v30);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v30, 0xD000000000000011, 0x8000000100468820, v26);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = sub_100015DA0("dskuwb.state", isa);

  return v28;
}

void sub_100244648()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_14;
  }

  v10 = OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning;
  v12 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning);
  v13 = Logger.logObject.getter();
  if (v12)
  {
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "DSKUWB is already running";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v17 = static os_log_type_t.info.getter();
  v1 = &unk_10051B000;
  if (os_log_type_enabled(v13, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109376;
    if (qword_100501B78 != -1)
    {
      v23 = v18;
      swift_once();
      v18 = v23;
    }

    *(v18 + 4) = byte_10051B5B8;
    *(v18 + 8) = 1024;
    if (qword_100501B80 != -1)
    {
      v23 = v18;
      swift_once();
      v18 = v23;
    }

    *(v18 + 10) = byte_10051B5B9;
    _os_log_impl(&_mh_execute_header, v13, v17, "Supports secure ranging %{BOOL}d deep sleep %{BOOL}d", v18, 0xEu);
  }

  if (qword_100501B78 != -1)
  {
    goto LABEL_23;
  }

LABEL_14:
  v19 = v1[1464];
  v13 = Logger.logObject.getter();
  if (v19 != 1)
  {
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "UWB does not support secure ranging";
      goto LABEL_20;
    }

LABEL_21:

    return;
  }

  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v13, v20, "Starting DSKUWB", v21, 2u);
  }

  *(v2 + v10) = 1;
}

void sub_100244A18()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v6, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v9 = OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning;
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning);
    v11 = Logger.logObject.getter();
    if (v10 != 1)
    {
      break;
    }

    v40[0] = v9;
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Stopping DSKUWB", v13, 2u);
    }

    v14 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
    swift_beginAccess();
    v6 = *(v1 + v14);
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v15 = *(v1 + v14);
      }

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_10024CE0C(&qword_100507D00, v16, type metadata accessor for UWBSession);
      Set.Iterator.init(_cocoa:)();
      v18 = v42;
      v17 = v43;
      v2 = v44;
      v19 = v45;
      v3 = v46;
    }

    else
    {
      v22 = -1 << *(v6 + 32);
      v17 = v6 + 56;
      v2 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v3 = v24 & *(v6 + 56);
      swift_bridgeObjectRetain_n();
      v19 = 0;
      v18 = v6;
    }

    v40[1] = v2;
    v25 = (v2 + 64) >> 6;
    if (v18 < 0)
    {
      while (1)
      {
        v30 = __CocoaSet.Iterator.next()();
        if (!v30)
        {
          break;
        }

        v40[2] = v30;
        type metadata accessor for UWBSession();
        swift_dynamicCast();
        v2 = v41;
        v28 = v19;
        v29 = v3;
        if (!v41)
        {
          break;
        }

LABEL_26:
        sub_100246878();

        v19 = v28;
        v3 = v29;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_28:
      sub_100093854();

      v2 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
      swift_beginAccess();
      v6 = *(v1 + v2);
      v31 = 1 << *(v6 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(v6 + 56);
      v3 = (v31 + 63) >> 6;
      v34 = *(v1 + v2);
      swift_bridgeObjectRetain_n();
      v35 = 0;
      while (v33)
      {
        v36 = v35;
LABEL_36:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v2 = v1;
        sub_100240A9C(*(*(v6 + 48) + ((v36 << 9) | (8 * v37))));
      }

      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v36 >= v3)
        {

          v38 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions;
          swift_beginAccess();
          v39 = *(v1 + v38);
          *(v1 + v38) = _swiftEmptyDictionarySingleton;

          *(v1 + v40[0]) = 0;
          return;
        }

        v33 = *(v6 + 56 + 8 * v36);
        ++v35;
        if (v33)
        {
          v35 = v36;
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_18:
    v26 = v19;
    v27 = v3;
    v28 = v19;
    if (v3)
    {
LABEL_22:
      v29 = (v27 - 1) & v27;
      v2 = *(*(v18 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      if (v2)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        goto LABEL_28;
      }

      v27 = *(v17 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v11, v20, "DSKUWB is not running", v21, 2u);
  }
}

void sub_100244F48()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    v8 = enum case for DispatchPredicate.onQueue(_:);
    v9 = v3[13];
    v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v33 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    v11 = v3[1];
    ++v3;
    v10 = v11;
    v11(v6, v2);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v32 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "UWB is powered on", v14, 2u);
    }

    *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) = 1;
    v15 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions;
    swift_beginAccess();
    v16 = 0;
    v17 = 0;
    v18 = *(v1 + v15);
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 64);
    for (i = (v19 + 63) >> 6; v21; v17 |= *(*(v18 + 56) + ((v23 << 9) | (8 * v24))))
    {
      v23 = v16;
LABEL_13:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
    }

    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= i)
      {
        v25 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion);
        if (v25)
        {
          v26 = v33;
          *v6 = v33;
          v9(v6, v8, v2);
          v27 = v26;
          v28 = v25;
          LOBYTE(v26) = _dispatchPreconditionTest(_:)();
          v32(v6, v2);
          if ((v26 & 1) == 0)
          {
            goto LABEL_33;
          }

          if (v17)
          {
            if ((v17 & 2) != 0)
            {
              v29 = 6;
              if ((v17 & 4) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }

            v29 = 2;
            if ((v17 & 4) != 0)
            {
LABEL_27:
              v29 = v29 | 1;
            }
          }

          else
          {
            if ((v17 & 2) == 0)
            {
              v29 = 0;
              if ((v17 & 4) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }

            v29 = 4;
            if ((v17 & 4) != 0)
            {
              goto LABEL_27;
            }
          }

LABEL_28:
          v30 = [*&v28[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] systemEventNotifier];
          [v30 notifyPassiveAccessIntent:v29];
        }

        sub_1003375E0(0xD000000000000037, 0x8000000100468BC0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
        return;
      }

      v21 = *(v18 + 64 + 8 * v23);
      ++v16;
      if (v21)
      {
        v16 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1002452F0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
LABEL_25:
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (*(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion))
    {
      v10 = OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable;
      if (*(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) != 1 || a1 != 0)
      {
        v12 = v1;
        v13 = Logger.logObject.getter();
        v7 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v7))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v32[0] = v15;
          *v14 = 136315138;
          v16 = sub_1002482E8(a1);
          v18 = sub_1002FFA0C(v16, v17, v32);

          *(v14 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v13, v7, "UWB state updated with suspension reasons [%s]", v14, 0xCu);
          sub_1000752F4(v15);
        }

        *(v12 + v10) = a1 == 0;
        v1 = OBJC_IVAR____TtC10seserviced6DSKUWB_delegates;
        swift_beginAccess();
        v3 = *(v1 + v12);
        v4 = v3 + 64;
        v19 = 1 << *(v3 + 32);
        v20 = -1;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        v21 = v20 & *(v3 + 64);
        v22 = (v19 + 63) >> 6;
        v23 = *(v1 + v12);
        swift_bridgeObjectRetain_n();
        v24 = 0;
        if (v21)
        {
          while (1)
          {
            v25 = v24;
LABEL_18:
            v26 = __clz(__rbit64(v21));
            v21 &= v21 - 1;
            sub_1000BC094(*(v3 + 56) + 40 * (v26 | (v25 << 6)), v32);
            v7 = v33;
            v27 = v34;
            v1 = sub_1000752B0(v32, v33);
            (*(v27 + 16))(a1, v7, v27);
            sub_1000752F4(v32);
            if (!v21)
            {
              goto LABEL_14;
            }
          }
        }

        while (1)
        {
LABEL_14:
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            goto LABEL_25;
          }

          if (v25 >= v22)
          {
            break;
          }

          v21 = *(v4 + 8 * v25);
          ++v24;
          if (v21)
          {
            v24 = v25;
            goto LABEL_18;
          }
        }

        if (a1)
        {
          sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1004098F0;
          *(inited + 32) = 0xD000000000000018;
          v29 = inited + 32;
          *(inited + 72) = &type metadata for UInt;
          *(inited + 40) = 0x8000000100468BA0;
          *(inited + 48) = a1;
          v30 = sub_10008FFDC(inited);
          swift_setDeallocating();
          sub_10024D88C(v29);
          sub_1003375E0(0xD000000000000038, 0x8000000100468B60, 0, 0xF000000000000000, 0, 0xF000000000000000, v30);
        }

        else
        {
          sub_1003375E0(0xD000000000000037, 0x8000000100468BC0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100245734(char a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v12 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v10, v6);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v10 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v10 = 136315394;
      if (a1)
      {
        v15 = 0x6465646565637865;
      }

      else
      {
        v15 = 0x6563786520746F6ELL;
      }

      if (a1)
      {
        v16 = 0xE800000000000000;
      }

      else
      {
        v16 = 0xEC00000064656465;
      }

      v17 = sub_1002FFA0C(v15, v16, v28);

      *(v10 + 4) = v17;
      *(v10 + 6) = 2080;
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_32;
        }

        v18 = 0xE400000000000000;
        v19 = 1852799308;
      }

      else
      {
        v18 = 0xE600000000000000;
        v19 = 0x616873696C41;
      }

      v20 = sub_1002FFA0C(v19, v18, v28);

      *(v10 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Ranging limit %s for %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    if (a1)
    {
      sub_1000D558C(v31, a2);
    }

    else
    {
      sub_10010D998(a2);
    }

    swift_endAccess();
    v6 = OBJC_IVAR____TtC10seserviced6DSKUWB_delegates;
    swift_beginAccess();
    v3 = *(v3 + v6);
    v21 = 1 << *(v3 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v3 + 64);
    v7 = (v21 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v24 = 0;
    while (v23)
    {
      v25 = v24;
LABEL_26:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_1000BC094(*(v3 + 56) + 40 * (v26 | (v25 << 6)), v28);
      a2 = v29;
      v10 = v30;
      v6 = sub_1000752B0(v28, v29);
      (*(v10 + 1))(a1 & 1, a2, v10);
      sub_1000752F4(v28);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v7)
      {
      }

      v23 = *(v3 + 64 + 8 * v25);
      ++v24;
      if (v23)
      {
        v24 = v25;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  __break(1u);
LABEL_32:
  v31[0] = a2;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_100245B84(unsigned __int16 a1)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = OBJC_IVAR____TtC10seserviced10UWBSession_configuration;
  v16 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_configuration);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    return;
  }

  v13 = v17;
  v9 = v16;
  if ([v13 protocolVersion] == a1)
  {
    v24 = v1;
    if (qword_100501B70 == -1)
    {
LABEL_7:
      (*(v5 + 16))(v8, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v4);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 33554688;
        *(v20 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v18, v19, "Setting new protocol version %hu", v20, 6u);
      }

      (*(v5 + 8))(v8, v4);
      [v13 setProtocolVersion:a1];
      v21 = *(v24 + v2);
      *(v24 + v2) = v13;
      v22 = v9;

      sub_100246268(1);
      goto LABEL_10;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

LABEL_10:
}

uint64_t sub_100245EC8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001004634B0;
  v5 = *(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);

  v6 = UUID.uuidString.getter();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 64) = 1701869940;
  *(inited + 72) = 0xE400000000000000;
  type metadata accessor for UWBAlishaSession();
  v9 = swift_dynamicCastClass();
  v10 = 1852799308;
  if (v9)
  {
    v10 = 0x616873696C41;
  }

  v11 = 0xE600000000000000;
  if (!v9)
  {
    v11 = 0xE400000000000000;
  }

  *(inited + 80) = v10;
  *(inited + 88) = v11;
  *(inited + 96) = 0x6574617473;
  *(inited + 104) = 0xE500000000000000;
  v15 = *(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_state);
  *(inited + 112) = String.init<A>(describing:)();
  *(inited + 120) = v12;
  v13 = sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100068FC4(&unk_100504020, &qword_100409CC0);
  result = swift_arrayDestroy();
  *a2 = v13;
  return result;
}

uint64_t sub_10024605C()
{
  v1 = OBJC_IVAR____TtC10seserviced6DSKUWB_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeExceptions);

  v4 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions);

  v5 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases);

  v6 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_delegates);

  v7 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DSKUWB()
{
  result = qword_100507928;
  if (!qword_100507928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002461AC()
{
  result = type metadata accessor for Logger();
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

id sub_100246268(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state);
    if (v11 == 6)
    {
      *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = 5;
    }

    else
    {
      if (a1)
      {
        return [*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_session) runWithConfiguration:*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_configuration)];
      }

      if (v11 <= 3 && v11 != 1)
      {
        return [*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_session) runWithConfiguration:*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_configuration)];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002463FC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v9 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
  v10 = *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state);
  if ((v10 - 3) >= 2)
  {
    if (v10 != 5)
    {
      return result;
    }

    v11 = 6;
  }

  else
  {
    result = [*(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_session) pause];
    v11 = 2;
  }

  *(v0 + v9) = v11;
  return result;
}

id sub_100246580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    return [*(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_session) processBluetoothHostTimeSyncWithType:a1 btcClockTicks:a2 eventCounter:v23];
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  (*(v7 + 16))(v10, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v6);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Session is not running", v21, 2u);
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_100246878()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchPredicate();
  v6 = *(v45 - 8);
  v7 = v6[8];
  __chkstk_darwin();
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  v12 = v6 + 13;
  v11 = v6[13];
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v13 = v45;
  v43 = v11;
  v11(v9);
  v42 = v10;
  v14 = _dispatchPreconditionTest(_:)();
  v17 = v6[1];
  v16 = v6 + 1;
  v15 = v17;
  v17(v9, v13);
  if (v14)
  {
    v41 = v12;
    if (qword_100501B70 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v18 = *(v2 + 16);
  v40 = qword_10051B5B0;
  v18(v5, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v1);
  v19 = v2;
  v20 = v0;
  v21 = v5;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = v1;
    v25 = v24;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v25 = 136315138;
    v37 = v21;
    v26 = v15;
    v27 = *&v20[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

    v28 = UUID.uuidString.getter();
    v39 = v16;
    v30 = v29;
    v15 = v26;

    v31 = sub_1002FFA0C(v28, v30, &v46);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalidating session for %s", v25, 0xCu);
    sub_1000752F4(v36);

    (*(v19 + 8))(v37, v38);
  }

  else
  {

    (*(v19 + 8))(v21, v1);
  }

  [*&v20[OBJC_IVAR____TtC10seserviced10UWBSession_session] invalidate];
  v20[OBJC_IVAR____TtC10seserviced10UWBSession_state] = 1;
  *v9 = v42;
  v32 = v45;
  v43(v9, v44, v45);
  v33 = _dispatchPreconditionTest(_:)();
  v15(v9, v32);
  if (v33)
  {
    swift_beginAccess();
    v34 = sub_10010D550(v20);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

id sub_100246CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UWBSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100246DB8(uint64_t a1, unsigned __int16 a2, uint64_t *a3)
{
  v6 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v37 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v39 = a3;
    sub_1000BC094(a3, &v40[OBJC_IVAR____TtC10seserviced16UWBAlishaSession_uwbAlishaSessionDelegate]);
    v38 = a1;
    UUID.uuidString.getter();
    v19 = objc_allocWithZone(NICarKeyConfiguration);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithVehicleIdentifier:v20];

    [v21 setProtocolVersion:a2];
    LOBYTE(v41) = 0;
    v43 = 2;
    UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
    UserDefaultBacked.wrappedValue.getter();
    v22 = *(v7 + 8);
    v22(v10, v6);
    v23 = v41;
    LOBYTE(v41) = 0;
    v43 = 2;
    UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
    UserDefaultBacked.wrappedValue.getter();
    v22(v10, v6);
    v24 = v41;
    if ((v23 & 1) != 0 || v41)
    {
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100409900;
      v41 = 0xD000000000000017;
      v42 = 0x8000000100468C50;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = v23;
      v41 = 0xD000000000000010;
      v42 = 0x8000000100468C70;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = v24;
      sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v21 setDebugOptions:isa];
    }

    v27 = v39;
    v29 = v39[3];
    v28 = v39[4];
    v30 = sub_1000752B0(v39, v29);
    v37[2] = v37;
    v31 = *(v29 - 8);
    v32 = *(v31 + 64);
    __chkstk_darwin(v30);
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
    v34 = *(v31 + 16);
    v35 = v34(v37 - v33);
    v37[1] = v37;
    __chkstk_darwin(v35);
    (v34)(v37 - v33, v37 - v33, v29);
    v36 = sub_10024BE94(v21, v38, v37 - v33, v40, v29, *(v28 + 8));

    (*(v31 + 8))(v37 - v33, v29);
    sub_1000752F4(v27);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002473F0(uint64_t a1, uint64_t *a2)
{
  v76 = a1;
  v4 = type metadata accessor for UUID();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  v6 = __chkstk_darwin(v4);
  v74 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = &v63 - v8;
  v79 = type metadata accessor for Logger();
  v9 = *(v79 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v79);
  v71 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  *v19 = qword_10051B7F0;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v72 = v4;
    v69 = a2;
    if (qword_100501B70 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v70 = v2;
  v22 = v9[2];
  v66 = v9 + 2;
  v67 = qword_10051B5B0;
  v64 = OBJC_IVAR____TtC10seserviced6DSKUWB_logger;
  v65 = v22;
  v23 = v79;
  v22(v14, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v79);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  v68 = v9;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v78 = v28;
    *v27 = 136315138;
    v29 = UUID.uuidString.getter();
    v31 = sub_1002FFA0C(v29, v30, &v78);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Replacing existing peer with %s", v27, 0xCu);
    sub_1000752F4(v28);

    v32 = v9[1];
    v33 = v14;
    v34 = v79;
  }

  else
  {

    v32 = v9[1];
    v33 = v14;
    v34 = v23;
  }

  v63 = v32;
  v32(v33, v34);
  v35 = OBJC_IVAR____TtC10seserviced10UWBSession_peer;
  v36 = *(v77 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
  v37 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v38 = v75;
  v39 = *(v75 + 16);
  v41 = v72;
  v40 = v73;
  v39(v73, v36 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v72);
  v42 = v74;
  v39(v74, v36 + v37, v41);
  LOBYTE(v36) = static UUID.== infix(_:_:)();
  v43 = *(v38 + 8);
  v43(v42, v41);
  v43(v40, v41);
  if (v36)
  {
    v44 = v77;
    v45 = *(v77 + v35);
    *(v77 + v35) = v76;

    v46 = v69;
    v47 = v69[3];
    v48 = v69[4];
    v49 = sub_1000752B0(v69, v47);
    v50 = *(*(v47 - 8) + 64);
    __chkstk_darwin(v49);
    v52 = &v63 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v52);
    v54 = *(v48 + 8);

    sub_10024B4C4(v52, v44, v47, v54);
    v55 = OBJC_IVAR____TtC10seserviced16UWBAlishaSession_uwbAlishaSessionDelegate;
    swift_beginAccess();
    sub_10024D934((v44 + v55), v46);
    return swift_endAccess();
  }

  else
  {
    v57 = v71;
    v58 = v79;
    v65(v71, v67 + v64, v79);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Wrong peer", v61, 2u);
    }

    v63(v57, v58);
    sub_10024CEA4();
    swift_allocError();
    *v62 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_100247AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    return a4(a1, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100247C20(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_10006A2D0(v4, v9);
}

void sub_100247CCC(unsigned __int8 a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
  {
    v15 = [*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_session) carKeyEventNotifier];
    v16 = v15;
    if (a1 <= 2u)
    {
      if (!a1)
      {
        [v15 notifyRangingIntentSentToVehicleWithReason:2];
        goto LABEL_24;
      }

      if (a1 != 1)
      {
        [v15 notifyVehicleSentRangingSuspendedSubEvent];
        goto LABEL_24;
      }

      v20 = "notifyRangingIntentSentToVehicleWithReason:";
    }

    else if (a1 > 4u)
    {
      if (a1 != 5)
      {
        v20 = "notifyVehicleReadyToDriveWithReason:";
        v21 = 0;
        goto LABEL_23;
      }

      v20 = "notifyVehicleUnlockedWithReason:";
    }

    else
    {
      if (a1 == 3)
      {
        [v15 notifyVehicleTerminatedRangingSession];
LABEL_24:

        return;
      }

      v20 = "notifyVehicleLockedWithReason:";
    }

    v21 = 1;
LABEL_23:
    [v15 v20];
    goto LABEL_24;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  (*(v4 + 16))(v7, qword_10051B5B0 + OBJC_IVAR____TtC10seserviced6DSKUWB_logger, v3);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Session is not running", v19, 2u);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_1002482E8(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_10012EA44(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_10012EA44((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000015;
  *(v5 + 5) = 0x8000000100468B40;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_10012EA44((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000012;
    *(v8 + 5) = 0x8000000100468B20;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_10012EA44((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001CLL;
    *(v11 + 5) = 0x8000000100468B00;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_10012EA44((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0xD000000000000014;
  *(v14 + 5) = 0x8000000100468AE0;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_10012EA44((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  strcpy(v17 + 32, "errorHandling");
  *(v17 + 23) = -4864;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_10012EA44((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  strcpy(v20 + 32, "systemNotReady");
  v20[47] = -18;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_10012EA44((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD00000000000001CLL;
  *(v23 + 5) = 0x8000000100468AC0;
  if (a1 < 0)
  {
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10012EA44(0, *(v2 + 2) + 1, 1, v2);
    }

    v25 = *(v2 + 2);
    v24 = *(v2 + 3);
    if (v25 >= v24 >> 1)
    {
      v2 = sub_10012EA44((v24 > 1), v25 + 1, 1, v2);
    }

    *(v2 + 2) = v25 + 1;
    v26 = &v2[16 * v25];
    *(v26 + 4) = 0x6E776F6E6B6E75;
    *(v26 + 5) = 0xE700000000000000;
  }

LABEL_49:
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

uint64_t sub_1002487A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10024BE5C(a1);

  *a2 = v3;
  return result;
}

void sub_100248B18(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  sub_10024E8F0(a4, a5, a6);
}

unint64_t sub_1002491B0()
{
  result = qword_100507C78;
  if (!qword_100507C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C78);
  }

  return result;
}

unint64_t sub_100249208()
{
  result = qword_100507C80;
  if (!qword_100507C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C80);
  }

  return result;
}

unint64_t sub_100249260()
{
  result = qword_100507C88;
  if (!qword_100507C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C88);
  }

  return result;
}

unint64_t sub_1002492B8()
{
  result = qword_100507C90;
  if (!qword_100507C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C90);
  }

  return result;
}

unint64_t sub_100249310()
{
  result = qword_100507C98;
  if (!qword_100507C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507C98);
  }

  return result;
}

unint64_t sub_100249368()
{
  result = qword_100507CA0;
  if (!qword_100507CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507CA0);
  }

  return result;
}

unint64_t sub_1002493C0()
{
  result = qword_100507CA8;
  if (!qword_100507CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507CA8);
  }

  return result;
}

unint64_t sub_100249418()
{
  result = qword_100507CB0;
  if (!qword_100507CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507CB0);
  }

  return result;
}

unint64_t sub_100249470()
{
  result = qword_100507CB8;
  if (!qword_100507CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507CB8);
  }

  return result;
}

Swift::Int sub_1002494C4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1002498B0(a1);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for UWBSession();
    do
    {
      swift_dynamicCast();
      if (*(*&v12[OBJC_IVAR____TtC10seserviced10UWBSession_peer] + OBJC_IVAR____TtC10seserviced4Peer_type) == 3)
      {
        v1 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v1)
        {
          sub_1001095DC(v1 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v3 = &_swiftEmptySetSingleton + 56;
        v4 = -1 << *(&_swiftEmptySetSingleton + 32);
        v5 = result & ~v4;
        v6 = v5 >> 6;
        if (((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7)) != 0)
        {
          v7 = __clz(__rbit64((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7))) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v8 = 0;
          v9 = (63 - v4) >> 6;
          do
          {
            if (++v6 == v9 && (v8 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v10 = v6 == v9;
            if (v6 == v9)
            {
              v6 = 0;
            }

            v8 |= v10;
            v11 = *&v3[8 * v6];
          }

          while (v11 == -1);
          v7 = __clz(__rbit64(~v11)) + (v6 << 6);
        }

        *&v3[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v7) = v12;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1002496BC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100249AEC(a1);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for UWBSession();
    do
    {
      swift_dynamicCast();
      if (*(*&v12[OBJC_IVAR____TtC10seserviced10UWBSession_peer] + OBJC_IVAR____TtC10seserviced4Peer_type))
      {
      }

      else
      {
        v1 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v1)
        {
          sub_1001095DC(v1 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v3 = &_swiftEmptySetSingleton + 56;
        v4 = -1 << *(&_swiftEmptySetSingleton + 32);
        v5 = result & ~v4;
        v6 = v5 >> 6;
        if (((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7)) != 0)
        {
          v7 = __clz(__rbit64((-1 << v5) & ~*(&_swiftEmptySetSingleton + (v5 >> 6) + 7))) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v8 = 0;
          v9 = (63 - v4) >> 6;
          do
          {
            if (++v6 == v9 && (v8 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v10 = v6 == v9;
            if (v6 == v9)
            {
              v6 = 0;
            }

            v8 |= v10;
            v11 = *&v3[8 * v6];
          }

          while (v11 == -1);
          v7 = __clz(__rbit64(~v11)) + (v6 << 6);
        }

        *&v3[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v7) = v12;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1002498B0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    __chkstk_darwin(a1);
    v5 = &v22 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = OBJC_IVAR____TtC10seserviced10UWBSession_peer;
    v13 = OBJC_IVAR____TtC10seserviced4Peer_type;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v7 << 6);
LABEL_12:
      if (*(*(*(*(v1 + 48) + 8 * v15) + v12) + v13) == 3)
      {
        *&v5[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10024A668(v5, v3, v6, v1, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_10024A668(v5, v3, v6, v1, &unk_100503E90, &qword_10040A9E0);
      }

      v17 = *(v1 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v10 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  v21 = sub_100249F24(v20, v3, v1);

  return v21;
}

uint64_t sub_100249AEC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    __chkstk_darwin(a1);
    v5 = &v22 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = OBJC_IVAR____TtC10seserviced10UWBSession_peer;
    v13 = OBJC_IVAR____TtC10seserviced4Peer_type;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v7 << 6);
LABEL_12:
      if (!*(*(*(*(v1 + 48) + 8 * v15) + v12) + v13))
      {
        *&v5[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10024A668(v5, v3, v6, v1, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_10024A668(v5, v3, v6, v1, &unk_100503E90, &qword_10040A9E0);
      }

      v17 = *(v1 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v10 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  v21 = sub_10024A25C(v20, v3, v1);

  return v21;
}

unint64_t *sub_100249D24(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v20 = a2;
    v5 = 1 << *(a3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a3 + 56);
    v8 = (v5 + 63) >> 6;
    result = swift_retain_n();
    v21 = 0;
    v9 = 0;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v13 = v10 | (v9 << 6);
      v14 = *(*(a3 + 48) + 8 * v13);
      v15 = *&v14[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

      v16 = v14;

      v17 = static UUID.== infix(_:_:)();

      if (v17)
      {
        *(v4 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_18:

          v19 = sub_10024A668(v4, v20, v21, a3, &unk_100503E90, &qword_10040A9E0);

          return v19;
        }
      }
    }

    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_18;
      }

      v12 = *(a3 + 56 + 8 * v9);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100249F24(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 56);
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
LABEL_14:
      if (*(*(*(*(a3 + 48) + 8 * v12) + OBJC_IVAR____TtC10seserviced10UWBSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_type) == 3)
      {
        *&result[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10024A668(result, a2, v6, a3, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        return sub_10024A668(result, a2, v6, a3, &unk_100503E90, &qword_10040A9E0);
      }

      v14 = *(a3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_10024A070(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v20 = a2;
    v5 = 1 << *(a3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a3 + 56);
    v8 = (v5 + 63) >> 6;
    result = swift_retain_n();
    v21 = 0;
    v9 = 0;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v13 = v10 | (v9 << 6);
      v14 = *(*(a3 + 48) + 8 * v13);
      v15 = *&v14[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

      v16 = v14;

      v17 = static UUID.== infix(_:_:)();

      if (v17)
      {
        *(v4 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_18:

          v19 = sub_10024A668(v4, v20, v21, a3, &unk_100503E90, &qword_10040A9E0);

          return v19;
        }
      }
    }

    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_18;
      }

      v12 = *(a3 + 56 + 8 * v9);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10024A25C(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 56);
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
LABEL_14:
      if (!*(*(*(*(a3 + 48) + 8 * v12) + OBJC_IVAR____TtC10seserviced10UWBSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_type))
      {
        *&result[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10024A668(result, a2, v6, a3, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        return sub_10024A668(result, a2, v6, a3, &unk_100503E90, &qword_10040A9E0);
      }

      v14 = *(a3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10024A3A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10024C824(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_10024A434(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100068FC4(&unk_100507CF0, &qword_10040B270);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    Hasher.init(_seed:)();
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v9[6] + 8 * v23) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10024A668(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_100068FC4(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10024A854(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100068FC4(&unk_100503F40, &unk_1004101B0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(*(v16 + 16));
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10024AA64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100068FC4(&unk_100507CE0, &unk_10040B260);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v27 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v28 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10024CE0C(&unk_100507480, 255, &type metadata accessor for UUID);

    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v27;
    v10 = v28;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v28 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10024ACE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100068FC4(&unk_100503F30, &unk_10040B2B0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10024CE0C(&unk_100507480, 255, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10024B00C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = &_swiftEmptySetSingleton;
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100068FC4(&unk_100503E80, &unk_10040B250);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v28 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v29 = (v9 - 1) & v9;
LABEL_17:
    v15 = *(*(v4 + 48) + 8 * (v12 | (v10 << 6)));
    v16 = v8[5];
    Hasher.init(_seed:)();
    v17 = *(v15 + 16);
    type metadata accessor for UUID();
    sub_10024CE0C(&unk_100507480, 255, &type metadata accessor for UUID);

    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v18 = -1 << *(v8 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v8[6] + 8 * v21) = v15;
    ++v8[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v9 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v29 = (v14 - 1) & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10024B29C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100068FC4(&unk_100503EF0, &unk_10040B280);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();
    sub_100069E2C(v17, v18);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10024B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  v7 = sub_1000B9634(&v10);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  v8 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
  swift_beginAccess();
  sub_1000752F4((a2 + v8));
  sub_1000BC104(&v10, a2 + v8);
  return swift_endAccess();
}

uint64_t sub_10024B570(uint64_t a1, unsigned __int16 a2, uint64_t a3, _BYTE *a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v34.receiver - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for LyonUWB();
  v37 = v13;
  v38 = &off_1004C6C48;
  v36[0] = a3;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v16)
  {
    sub_1000BC094(v36, &a4[OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate]);
    UUID.uuidString.getter();
    v18 = objc_allocWithZone(NIAcwgConfiguration);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v18 initWithLockIdentifier:v19];

    [v20 setLockBtConnHandle:a2];
    v21 = v37;
    v22 = sub_1000752B0(v36, v37);
    v23 = *(*(v21 - 8) + 64);
    __chkstk_darwin(v22);
    v25 = (&v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v35[3] = v13;
    v35[4] = &off_1004C6C20;
    v35[0] = *v25;
    *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons] = 0;
    *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_configuration] = v20;
    *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_peer] = a1;
    sub_1000BC094(v35, &a4[OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate]);
    a4[OBJC_IVAR____TtC10seserviced10UWBSession_state] = 0;
    v27 = objc_allocWithZone(NISession);
    v28 = v20;

    v29 = [v27 init];
    *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_session] = v29;
    [v29 setDelegateQueue:v15];
    v30 = type metadata accessor for UWBSession();
    v34.receiver = a4;
    v34.super_class = v30;
    v31 = objc_msgSendSuper2(&v34, "init");
    v32 = *&v31[OBJC_IVAR____TtC10seserviced10UWBSession_session];
    v33 = v31;
    [v32 setDelegate:v33];
    sub_100246268(0);

    sub_1000752F4(v35);
    sub_1000752F4(v36);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_10024B93C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = &_swiftEmptySetSingleton;
    swift_retain_n();
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for UWBSession();
      do
      {
        swift_dynamicCast();
        v2 = *&v16[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

        v3 = static UUID.== infix(_:_:)();

        if (v3)
        {
          v4 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v4)
          {
            sub_1001095DC(v4 + 1);
          }

          v1 = &_swiftEmptySetSingleton;
          result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
          v6 = &_swiftEmptySetSingleton + 56;
          v7 = -1 << *(&_swiftEmptySetSingleton + 32);
          v8 = result & ~v7;
          v9 = v8 >> 6;
          if (((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7)) != 0)
          {
            v10 = __clz(__rbit64((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7))) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v11 = 0;
            v12 = (63 - v7) >> 6;
            do
            {
              if (++v9 == v12 && (v11 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v13 = v9 == v12;
              if (v9 == v12)
              {
                v9 = 0;
              }

              v11 |= v13;
              v14 = *&v6[8 * v9];
            }

            while (v14 == -1);
            v10 = __clz(__rbit64(~v14)) + (v9 << 6);
          }

          *&v6[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v10) = v16;
          ++*(&_swiftEmptySetSingleton + 2);
        }

        else
        {
        }
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {

    v1 = sub_10024C2FC(a1);
  }

  return v1;
}

Swift::Int sub_10024BBC0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = &_swiftEmptySetSingleton;
    swift_retain_n();
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for UWBSession();
      do
      {
        swift_dynamicCast();
        v2 = *&v16[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

        v3 = static UUID.== infix(_:_:)();

        if (v3)
        {
          v4 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v4)
          {
            sub_1001095DC(v4 + 1);
          }

          v1 = &_swiftEmptySetSingleton;
          result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
          v6 = &_swiftEmptySetSingleton + 56;
          v7 = -1 << *(&_swiftEmptySetSingleton + 32);
          v8 = result & ~v7;
          v9 = v8 >> 6;
          if (((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7)) != 0)
          {
            v10 = __clz(__rbit64((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7))) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v11 = 0;
            v12 = (63 - v7) >> 6;
            do
            {
              if (++v9 == v12 && (v11 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v13 = v9 == v12;
              if (v9 == v12)
              {
                v9 = 0;
              }

              v11 |= v13;
              v14 = *&v6[8 * v9];
            }

            while (v14 == -1);
            v10 = __clz(__rbit64(~v14)) + (v9 << 6);
          }

          *&v6[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v10) = v16;
          ++*(&_swiftEmptySetSingleton + 2);
        }

        else
        {
        }
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {

    v1 = sub_10024C038(a1);
  }

  return v1;
}

uint64_t sub_10024BE24(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10024BE5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

char *sub_10024BE94(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v22[3] = a5;
  v22[4] = a6;
  v11 = sub_1000B9634(v22);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons] = 0;
  *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_configuration] = a1;
  *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_peer] = a2;
  sub_1000BC094(v22, &a4[OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate]);
  a4[OBJC_IVAR____TtC10seserviced10UWBSession_state] = 0;
  v12 = objc_allocWithZone(NISession);
  v13 = a1;

  v14 = [v12 init];
  *&a4[OBJC_IVAR____TtC10seserviced10UWBSession_session] = v14;
  v15 = qword_100501D90;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setDelegateQueue:qword_10051B7F0];

  v21.receiver = a4;
  v21.super_class = type metadata accessor for UWBSession();
  v17 = objc_msgSendSuper2(&v21, "init");
  v18 = *&v17[OBJC_IVAR____TtC10seserviced10UWBSession_session];
  v19 = v17;
  [v18 setDelegate:v19];
  sub_100246268(0);

  sub_1000752F4(v22);
  return v19;
}

uint64_t sub_10024C038(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = swift_retain_n();
  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v6;
    v27 = v2;
    v25[1] = v25;
    __chkstk_darwin(v8);
    v28 = v25 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v7);
    v29 = 0;
    v30 = v3;
    v6 = 0;
    v10 = *(v3 + 56);
    v3 += 56;
    v9 = v10;
    v11 = 1 << *(v3 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v7 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v2 = v14 | (v6 << 6);
      v17 = *(*(v30 + 48) + 8 * v2);
      v18 = *&v17[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

      v19 = v17;

      v20 = static UUID.== infix(_:_:)();

      if (v20)
      {
        *&v28[(v2 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v2;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_10024A668(v28, v26, v29, v30, &unk_100503E90, &qword_10040A9E0);
          goto LABEL_17;
        }
      }
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        goto LABEL_16;
      }

      v16 = *(v3 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();

  v22 = sub_10024A070(v24, v6, v3);

LABEL_17:

  return v22;
}

uint64_t sub_10024C2FC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = swift_retain_n();
  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v6;
    v27 = v2;
    v25 = &v25;
    __chkstk_darwin(v8);
    v28 = &v25 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v7);
    v29 = 0;
    v6 = 0;
    v31 = v3;
    v10 = *(v3 + 56);
    v3 += 56;
    v9 = v10;
    v11 = 1 << *(v3 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v2 = v12 & v9;
    v30 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v13 = (v11 + 63) >> 6;
    while (v2)
    {
      v14 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
LABEL_12:
      v7 = v14 | (v6 << 6);
      v17 = *(*(v31 + 48) + 8 * v7);
      v18 = *&v17[OBJC_IVAR____TtC10seserviced10UWBSession_peer];

      v19 = v17;

      v20 = static UUID.== infix(_:_:)();

      if (v20)
      {
        *&v28[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_10024A668(v28, v26, v29, v31, &unk_100503E90, &qword_10040A9E0);
          goto LABEL_17;
        }
      }
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        goto LABEL_16;
      }

      v16 = *(v3 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v2 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();

  v22 = sub_100249D24(v24, v6, v3);

LABEL_17:

  return v22;
}