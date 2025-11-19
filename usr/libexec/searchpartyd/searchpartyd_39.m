uint64_t sub_100411310(uint64_t a1, uint64_t a2)
{
  v197 = a2;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, v204);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v215 = v202[10];
    v216 = v202[11];
    v217 = v202[12];
    v218 = v203;
    v211 = v202[6];
    v212 = v202[7];
    v213 = v202[8];
    v214 = v202[9];
    v207 = v202[2];
    v208 = v202[3];
    v209 = v202[4];
    v210 = v202[5];
    v205 = v202[0];
    v206 = v202[1];
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = sub_1000076D4(v8, qword_10177ACB0);
    sub_1001DA8B8(&v205, v202);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    sub_1001DA914(&v205);
    v12 = os_log_type_enabled(v10, v11);
    v199 = v9;
    v194 = v2;
    v195 = v7;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v202[0] = v14;
      *v13 = 136315138;
      v15 = Data.hexString.getter();
      v17 = sub_1000136BC(v15, v16, v202);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "C1: %s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    sub_1001DA8B8(&v205, v202);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    sub_1001DA914(&v205);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v202[0] = v21;
      *v20 = 136315138;
      v22 = Data.hexString.getter();
      v24 = sub_1000136BC(v22, v23, v202);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "SerialNumber: %s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    sub_1001DA8B8(&v205, v202);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    sub_1001DA914(&v205);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v202[0] = v28;
      *v27 = 136315138;
      v29 = Data.hexString.getter();
      v31 = sub_1000136BC(v29, v30, v202);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "ChipId: %s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    sub_1001DA8B8(&v205, v202);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    sub_1001DA914(&v205);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v202[0] = v35;
      *v34 = 136315138;
      v36 = Data.hexString.getter();
      v38 = sub_1000136BC(v36, v37, v202);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "ECID: %s", v34, 0xCu);
      sub_100007BAC(v35);
    }

    sub_1001DA8B8(&v205, v202);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    sub_1001DA914(&v205);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v202[0] = v42;
      *v41 = 136315138;
      v43 = Data.hexString.getter();
      v45 = sub_1000136BC(v43, v44, v202);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "numberOfBeacons: %s", v41, 0xCu);
      sub_100007BAC(v42);
    }

    sub_1001DA8B8(&v205, v202);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    sub_1001DA914(&v205);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v202[0] = v49;
      *v48 = 136315138;
      v50 = Data.hexString.getter();
      v52 = sub_1000136BC(v50, v51, v202);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "otherSerialNumber: %s", v48, 0xCu);
      sub_100007BAC(v49);
    }

    sub_1001DA8B8(&v205, v202);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    sub_1001DA914(&v205);
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v202[0] = v56;
      *v55 = 136315138;
      v57 = Data.hexString.getter();
      v59 = sub_1000136BC(v57, v58, v202);

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v53, v54, "seedK1: %s", v55, 0xCu);
      sub_100007BAC(v56);
    }

    sub_1001DA8B8(&v205, v202);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v60, v61))
    {
      sub_1001DA914(&v205);
LABEL_37:

      v192 = *(&v212 + 1);
      v193 = v212;
      v196 = Data.chunked(into:)();
      v80 = *(v196 + 16);
      if (v80)
      {
        v81 = (v196 + 40);
        *&v79 = 136315138;
        v198 = v79;
        do
        {
          v89 = *(v81 - 1);
          v88 = *v81;
          sub_100017D5C(v89, *v81);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v82 = swift_slowAlloc();
            v219 = v88;
            v83 = v82;
            v84 = swift_slowAlloc();
            *&v202[0] = v84;
            *v83 = v198;
            v85 = Data.hexString.getter();
            v200 = v89;
            v87 = sub_1000136BC(v85, v86, v202);

            *(v83 + 4) = v87;
            _os_log_impl(&_mh_execute_header, v90, v91, "%s", v83, 0xCu);
            sub_100007BAC(v84);

            sub_100016590(v200, v219);
          }

          else
          {

            sub_100016590(v89, v88);
          }

          v81 += 2;
          --v80;
        }

        while (v80);
      }

      sub_1001DA8B8(&v205, v202);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v92, v93))
      {
        sub_1001DA914(&v205);

        v98 = v197;
LABEL_56:
        sub_1001DA8B8(&v205, v202);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 16777472;
          v107[4] = v217;
          sub_1001DA914(&v205);
          _os_log_impl(&_mh_execute_header, v105, v106, "beaconPartId: %hhu", v107, 5u);
        }

        else
        {
          sub_1001DA914(&v205);
        }

        v108 = *(&v215 + 1);
        v109 = v215;
        sub_100017D5C(v215, *(&v215 + 1));
        sub_100017D5C(v109, v108);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();
        v112 = os_log_type_enabled(v110, v111);
        v200 = v109;
        v219 = v108;
        if (!v112)
        {
          sub_100016590(v109, v108);
LABEL_72:

          sub_1001DA8B8(&v205, v202);
          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v122, v123))
          {
            sub_1001DA914(&v205);

LABEL_85:
            v134 = v205;
            sub_100017D5C(v205, *(&v205 + 1));
            v135 = v194;
            sub_1004A4714(v134, *(&v134 + 1), v202);
            if (v135)
            {

              v136 = xmmword_10138BBF0;
            }

            else
            {
              v136 = v202[0];
            }

            v137 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
            v138 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v136;
            sub_100006654(v137, v138);
            v139 = v209;
            v140 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
            v141 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid) = v209;
            sub_100017D5C(v139, *(&v139 + 1));
            sub_100006654(v140, v141);
            v142 = v207;
            v143 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
            v144 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber) = v207;
            sub_100017D5C(v142, *(&v142 + 1));
            sub_100006654(v143, v144);
            v145 = v210;
            v146 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
            v147 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId) = v210;
            sub_100017D5C(v145, *(&v145 + 1));
            sub_100006654(v146, v147);
            v148 = v213;
            v149 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
            v150 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2) = v213;
            sub_100017D5C(v148, *(&v148 + 1));
            sub_100006654(v149, v150);
            v151 = (v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
            v152 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
            v153 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
            v155 = v192;
            v154 = v193;
            *v151 = v193;
            v151[1] = v155;
            sub_100017D5C(v154, v155);
            sub_100006654(v152, v153);
            v156 = v211;
            v157 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
            v158 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1) = v211;
            sub_100017D5C(v156, *(&v156 + 1));
            sub_100006654(v157, v158);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId) = v217;
            v202[0] = v206;
            sub_1000E0A3C();
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = DataProtocol.intValue.getter();
            v159 = (v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
            v160 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
            v161 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8);
            v162 = v219;
            *v159 = v109;
            v159[1] = v162;
            sub_100017D5C(v109, v162);
            sub_100006654(v160, v161);
            v163 = v214;
            v164 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
            v165 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey) = v214;
            sub_100017D5C(v163, *(&v163 + 1));
            sub_100006654(v164, v165);
            v166 = Data.trimmed.getter();
            v168 = v167;
            static String.Encoding.utf8.getter();
            v169 = String.init(data:encoding:)();
            v171 = v170;
            sub_100016590(v166, v168);
            if (!v171)
            {
              v172 = Data.trimmed.getter();
              v174 = v173;
              v169 = Data.hexString.getter();
              v171 = v175;
              sub_100016590(v172, v174);
            }

            v176 = Logger.logObject.getter();
            v177 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v176, v177))
            {
              v178 = swift_slowAlloc();
              v179 = swift_slowAlloc();
              *&v202[0] = v179;
              *v178 = 136446210;
              *(v178 + 4) = sub_1000136BC(v169, v171, v202);
              _os_log_impl(&_mh_execute_header, v176, v177, "beaconDisplayName: %{public}s", v178, 0xCu);
              sub_100007BAC(v179);
            }

            v180 = v200;
            v181 = v219;
            v182 = (v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
            v183 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName + 8);
            *v182 = v169;
            v182[1] = v171;

            sub_10024C7C4();
            if (v184)
            {
              v185 = Logger.logObject.getter();
              v186 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v185, v186))
              {
                v187 = swift_slowAlloc();
                *v187 = 0;
                _os_log_impl(&_mh_execute_header, v185, v186, "S1 contains session nonce. Hardcoded pairing detected!", v187, 2u);
              }

              v181 = v219;
            }

            v188 = Data.chunked(into:)();
            v189 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers) = v188;

            v190 = sub_1001CE22C();
            sub_100016590(v180, v181);
            sub_1001DA914(&v205);
            v191 = *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);
            *(v98 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = v190;
          }

          v124 = swift_slowAlloc();
          result = swift_slowAlloc();
          v125 = result;
          *&v202[0] = result;
          *v124 = 134218242;
          v126 = v214;
          v127 = *(&v214 + 1) >> 62;
          if ((*(&v214 + 1) >> 62) > 1)
          {
            if (v127 != 2)
            {
              v128 = 0;
              goto LABEL_84;
            }

            v130 = *(v214 + 16);
            v129 = *(v214 + 24);
            v77 = __OFSUB__(v129, v130);
            v128 = v129 - v130;
            if (!v77)
            {
              goto LABEL_84;
            }

            __break(1u);
          }

          else if (!v127)
          {
            v128 = BYTE14(v214);
LABEL_84:
            *(v124 + 4) = v128;
            sub_1001DA914(&v205);
            *(v124 + 12) = 2080;
            v131 = Data.hexString.getter();
            v133 = sub_1000136BC(v131, v132, v202);

            *(v124 + 14) = v133;
            _os_log_impl(&_mh_execute_header, v122, v123, "refKey %ld: %s", v124, 0x16u);
            sub_100007BAC(v125);

            v109 = v200;
            goto LABEL_85;
          }

          LODWORD(v128) = HIDWORD(v126) - v126;
          if (!__OFSUB__(HIDWORD(v126), v126))
          {
            v128 = v128;
            goto LABEL_84;
          }

LABEL_100:
          __break(1u);
          return result;
        }

        v113 = swift_slowAlloc();
        result = swift_slowAlloc();
        v114 = result;
        *&v202[0] = result;
        *v113 = 134218242;
        v115 = v108 >> 62;
        if ((v108 >> 62) > 1)
        {
          if (v115 != 2)
          {
            v116 = 0;
            goto LABEL_71;
          }

          v118 = *(v109 + 16);
          v117 = *(v109 + 24);
          v77 = __OFSUB__(v117, v118);
          v116 = v117 - v118;
          if (!v77)
          {
            goto LABEL_71;
          }

          __break(1u);
        }

        else if (!v115)
        {
          v116 = BYTE6(v108);
LABEL_71:
          *(v113 + 4) = v116;
          sub_100016590(v109, v108);
          *(v113 + 12) = 2080;
          v119 = Data.hexString.getter();
          v121 = sub_1000136BC(v119, v120, v202);

          *(v113 + 14) = v121;
          v109 = v200;
          _os_log_impl(&_mh_execute_header, v110, v111, "sikPub %ld: %s", v113, 0x16u);
          sub_100007BAC(v114);

          goto LABEL_72;
        }

        LODWORD(v116) = HIDWORD(v109) - v109;
        if (!__OFSUB__(HIDWORD(v109), v109))
        {
          v116 = v116;
          goto LABEL_71;
        }

LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v94 = swift_slowAlloc();
      result = swift_slowAlloc();
      v95 = result;
      *&v202[0] = result;
      *v94 = 134218242;
      v96 = v213;
      v97 = *(&v213 + 1) >> 62;
      v98 = v197;
      if ((*(&v213 + 1) >> 62) > 1)
      {
        if (v97 != 2)
        {
          v99 = 0;
          goto LABEL_55;
        }

        v101 = *(v213 + 16);
        v100 = *(v213 + 24);
        v77 = __OFSUB__(v100, v101);
        v99 = v100 - v101;
        if (!v77)
        {
          goto LABEL_55;
        }

        __break(1u);
      }

      else if (!v97)
      {
        v99 = BYTE14(v213);
LABEL_55:
        *(v94 + 4) = v99;
        sub_1001DA914(&v205);
        *(v94 + 12) = 2080;
        v102 = Data.hexString.getter();
        v104 = sub_1000136BC(v102, v103, v202);

        *(v94 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v92, v93, "BAA signature (S2) count %ld: %s", v94, 0x16u);
        sub_100007BAC(v95);

        goto LABEL_56;
      }

      LODWORD(v99) = HIDWORD(v96) - v96;
      if (!__OFSUB__(HIDWORD(v96), v96))
      {
        v99 = v99;
        goto LABEL_55;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v63 = v212;
    v64 = *(&v212 + 1) >> 62;
    if ((*(&v212 + 1) >> 62) > 1)
    {
      if (v64 != 2)
      {
        v63 = 0;
        goto LABEL_36;
      }

      v75 = *(v212 + 16);
      v76 = *(v212 + 24);
      v77 = __OFSUB__(v76, v75);
      v63 = v76 - v75;
      if (!v77)
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v64)
    {
      v63 = BYTE14(v212);
LABEL_36:
      *(result + 4) = v63;
      v78 = result;
      sub_1001DA914(&v205);
      _os_log_impl(&_mh_execute_header, v60, v61, "attestation (S1) count: %ld", v78, 0xCu);

      goto LABEL_37;
    }

    v77 = __OFSUB__(HIDWORD(v63), v63);
    LODWORD(v63) = HIDWORD(v63) - v63;
    if (v77)
    {
      __break(1u);
      goto LABEL_98;
    }

    v63 = v63;
    goto LABEL_36;
  }

  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_1000076D4(v65, qword_10177ACB0);
  sub_10001F280(a1, v202);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v201 = v69;
    *v68 = 136446210;
    sub_10001F280(v202, v204);
    v70 = String.init<A>(describing:)();
    v72 = v71;
    sub_100007BAC(v202);
    v73 = sub_1000136BC(v70, v72, &v201);

    *(v68 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v66, v67, "Invalid sendPairingData payload %{public}s", v68, 0xCu);
    sub_100007BAC(v69);
  }

  else
  {

    sub_100007BAC(v202);
  }

  sub_100413200();
  swift_allocError();
  *v74 = 0;
  return swift_willThrow();
}

void *sub_1004128BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HashAlgorithm();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();
  sub_1000D2A70(a1 + v10, v49, &qword_101697378, &unk_101391940);
  v11 = v50;
  if (v50)
  {
    v47[0] = a2;
    v47[1] = v2;
    v12 = v51;
    v13 = sub_1000035D0(v49, v50);
    v55 = v47;
    v14 = *(v11 - 8);
    v48 = v5;
    v15 = v14;
    v16 = *(v14 + 64);
    __chkstk_darwin(v13);
    v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);
    sub_10000B3A8(v49, &qword_101697378, &unk_101391940);
    v19 = (*(*(*(v12 + 8) + 8) + 40))(v11);
    v21 = v20;
    (*(v15 + 8))(v18, v11);
    v22 = v48;
    (*(v6 + 104))(v9, enum case for HashAlgorithm.sha256(_:), v48);
    v23 = Data.hash(algorithm:)();
    v25 = v24;
    sub_100016590(v19, v21);
    (*(v6 + 8))(v9, v22);
    v26 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
    if (*(v26 + 16) || (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) & 1) != 0)
    {
      v27 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
      v28 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8);
      v29 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);

      sub_10002E98C(v27, v28);
      v30 = v25;
      sub_100F51B04(v23, v25, v26, v27, v28, v52);
      sub_100006654(v27, v28);

      memcpy(v53, v52, sizeof(v53));
      if (sub_100101D88(v53) != 1)
      {
        memcpy(v54, v53, sizeof(v54));
        v43 = v47[0];
        *(v47[0] + 24) = &type metadata for AirPodsLEPairingCheckData;
        v43[4] = sub_1001641BC();
        v44 = swift_allocObject();
        *v43 = v44;
        sub_100016590(v23, v30);
        return memcpy((v44 + 16), v54, 0x160uLL);
      }

      v31 = v25;
      if (qword_1016946B0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000076D4(v32, qword_10177ACB0);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_20;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Failed to generate AirPodsLEPairingCheckData";
    }

    else
    {
      v31 = v25;
      if (qword_1016946B0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177ACB0);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_20;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Failed to generate AirPodsLEPairingCheckData, missing otherSerialNumbersAndPartIds";
    }

    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_20:

    sub_100413200();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();
    return sub_100016590(v23, v31);
  }

  sub_10000B3A8(v49, &qword_101697378, &unk_101391940);
  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177ACB0);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Missing collaborativeKeyC2", v40, 2u);
  }

  sub_100413200();
  swift_allocError();
  *v41 = 8;
  return swift_willThrow();
}

void *sub_100412EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
  v4 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8);
  sub_10002E98C(v3, v4);
  sub_100F514E8(v3, v4, v12);
  sub_100006654(v3, v4);
  if (sub_1001010A8(v12) == 1)
  {
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177ACB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to generate AirPodsLEPairingAckData", v8, 2u);
    }

    sub_100413200();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  else
  {
    a2[3] = &type metadata for AirPodsLEPairingAckData;
    a2[4] = sub_100164118();
    v11 = swift_allocObject();
    *a2 = v11;
    return memcpy((v11 + 16), v12, 0x110uLL);
  }
}

double sub_100413094@<D0>(uint64_t a1@<X8>)
{
  sub_10041338C(v9);
  v2 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v10;
  v3 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v3;
  v4 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v4;
  v5 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v5;
  v6 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v6;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  return result;
}

double sub_100413124@<D0>(uint64_t a1@<X8>)
{
  static Data.random(bytes:)();
  sub_1001DA81C();
  BinaryDecodable.init(data:)();
  if (!v1)
  {
    sub_1004132E4(v10);
    v4 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v4;
    *(a1 + 192) = v10[12];
    *(a1 + 208) = v11;
    v5 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v5;
    v6 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v6;
    v7 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v7;
    v8 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v9;
  }

  return result;
}

unint64_t sub_100413200()
{
  result = qword_10169F680;
  if (!qword_10169F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F680);
  }

  return result;
}

double sub_100413254@<D0>(uint64_t a1@<X8>)
{
  sub_1001DACD4(v9);
  v2 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v10;
  v3 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v3;
  v4 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v4;
  v5 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v5;
  v6 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v6;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  return result;
}

double sub_1004132E4(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  result = -0.0;
  *(a1 + 192) = xmmword_1013A1630;
  *(a1 + 208) = 0x2000000000000000;
  return result;
}

unint64_t sub_100413338()
{
  result = qword_10169F688;
  if (!qword_10169F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F688);
  }

  return result;
}

double sub_10041338C(uint64_t a1)
{
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = -0.0;
  *(a1 + 192) = xmmword_1013A1630;
  *(a1 + 208) = 0x2000000000000000;
  return result;
}

uint64_t sub_100413438()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ItemShareRequestReceivedUserNotification();
  v7 = *(v6 + 36);
  v23 = v0;
  v8 = v0 + v7;
  if (sub_1002FDEB4())
  {
    v9 = (v8 + *(type metadata accessor for BeaconProductInfoRecord() + 44));
    v10 = *v9;
    v11 = v9[1];
    if (*v9 != 0x676154726941 || v11 != 0xE600000000000000)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v10 == 0x676154726961 && v11 == 0xE600000000000000;
      if ((v13 & 1) == 0 && !v15)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = (v23 + *(v6 + 28));
  v19 = *v17;
  v18 = v17[1];
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v18;

  v20 = String.init(format:arguments:)();

  return v20;
}

uint64_t sub_1004136CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100413740(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v9 = (v1 + *(a1 + 32));
  v10 = v9[1];
  *(inited + 32) = *v9;
  *(inited + 40) = v10;
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.itemSharing(_:), v3);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v11 = String.init(format:arguments:)();

  return v11;
}

unint64_t sub_1004138FC(uint64_t a1)
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6564496572616873;
  *(inited + 40) = 0xEF7265696669746ELL;
  v4 = v1 + *(a1 + 24);
  v5 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v7;
}

uint64_t type metadata accessor for ItemShareRequestReceivedUserNotification()
{
  result = qword_10169F6F0;
  if (!qword_10169F6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100413A34()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BeaconProductInfoRecord();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100413AF0(void *a1)
{
  v1 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v4 = String.utf8Data.getter();
  v5 = v2;
  sub_10015049C(v6, v6[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v4, v5);
  return sub_100007BAC(v6);
}

uint64_t sub_100413BB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100413CD0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100413BDC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_100413AF0(a1);
}

unint64_t sub_100413BF8(uint64_t a1)
{
  *(a1 + 8) = sub_100413C28();
  result = sub_100413C7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100413C28()
{
  result = qword_10169F738;
  if (!qword_10169F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F738);
  }

  return result;
}

unint64_t sub_100413C7C()
{
  result = qword_10169F740;
  if (!qword_10169F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F740);
  }

  return result;
}

uint64_t sub_100413CD0(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode()();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_1000E0A3C();
    v9 = DataProtocol.nullTerminatedUTF8String.getter();
    if (v10)
    {
      v4 = v9;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v12, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_100413E40(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169F908, &qword_1013A1D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10041B350();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31[15] = 0;
  type metadata accessor for UUID();
  sub_10041B3A4(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for AccessoryUnpairData();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v31[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v31[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v31[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = v21[1];
    v31[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = (v3 + v11[9]);
    v25 = *v24;
    v26 = v24[1];
    v31[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = (v3 + v11[10]);
    v28 = *v27;
    v29 = v27[1];
    v31[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004140F0()
{
  v1 = *v0;
  v2 = 0x6449616E6D66;
  v3 = 0x657261776D726966;
  if (v1 != 5)
  {
    v3 = 0x44746375646F7270;
  }

  v4 = 1684628325;
  if (v1 != 3)
  {
    v4 = 0x644970696863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x754E6C6169726573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004141DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10041A260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100414204(uint64_t a1)
{
  v2 = sub_10041B350();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100414240(uint64_t a1)
{
  v2 = sub_10041B350();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100414294()
{
  result = Data.init(base64Encoded:options:)();
  qword_10169F748 = result;
  qword_10169F750 = v1;
  return result;
}

id sub_1004142D4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(ACAccountStore) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_100414340(_OWORD *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v78 = a3;
  v77 = a2;
  v72 = a1;
  v71 = *v3;
  v73 = sub_1000BC4D4(&qword_10169F848, &qword_1013A17B0);
  v4 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = (v64 - v5);
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v70 = v64 - v8;
  v69 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v66 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v64[1] = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v75 = v64 - v18;
  v19 = type metadata accessor for FMNAccountType();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AccessoryPairingLockCheckEndPoint();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = v64 - v29;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_100008C00();
  *(v31 + 32) = 0xD000000000000036;
  *(v31 + 40) = 0x8000000101354690;
  os_log(_:dso:log:_:_:)();

  v32 = enum case for FMNAccountType.accessory(_:);
  v33 = *(v20 + 104);
  v33(v23, enum case for FMNAccountType.accessory(_:), v19);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v30 = sub_1010B32C8(v23);
  v33(&v30[*(v24 + 20)], v32, v19);
  v34 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = type metadata accessor for FMNMockingPreferences();
  (*(*(v37 - 8) + 56))(v75, 1, 1, v37);
  v38 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v39 = type metadata accessor for ServerInteractionController(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  sub_10041AE74(v30, v28, type metadata accessor for AccessoryPairingLockCheckEndPoint);
  v43 = sub_100621D9C(v28, v38, v42);
  sub_10041AE14(v30, type metadata accessor for AccessoryPairingLockCheckEndPoint);
  v44 = v76;
  v45 = sub_1004142D4();
  v46 = sub_100513CD8();

  if (v46 && (v47 = sub_100513FCC(), v49 = v48, v46, v49))
  {
    sub_1000BC488();
    v75 = v47;
    static DispatchQoS.unspecified.getter();
    v79[0] = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v68 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v69);
    v50 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v51 = type metadata accessor for TaskPriority();
    v52 = v70;
    (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    v54 = v72;
    v55 = v72[7];
    *(v53 + 128) = v72[6];
    *(v53 + 144) = v55;
    v56 = v54[9];
    *(v53 + 160) = v54[8];
    *(v53 + 176) = v56;
    v57 = v54[3];
    *(v53 + 64) = v54[2];
    *(v53 + 80) = v57;
    v58 = v54[5];
    *(v53 + 96) = v54[4];
    *(v53 + 112) = v58;
    v59 = v54[1];
    *(v53 + 32) = *v54;
    *(v53 + 48) = v59;
    *(v53 + 192) = v75;
    *(v53 + 200) = v49;
    *(v53 + 208) = v44;
    *(v53 + 216) = v50;
    v60 = v78;
    *(v53 + 224) = v77;
    *(v53 + 232) = v60;
    v61 = v71;
    *(v53 + 240) = v43;
    *(v53 + 248) = v61;
    sub_10041ACEC(v54, v79);

    sub_10025EDD4(0, 0, v52, &unk_1013A17C0, v53);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPPairingSessionError(0);
    v79[20] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10041B3A4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v63 = v74;
    *v74 = v79[0];
    swift_storeEnumTagMultiPayload();
    v77(v63);

    return sub_10000B3A8(v63, &qword_10169F848, &qword_1013A17B0);
  }
}

uint64_t sub_100414CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 480) = v18;
  *(v8 + 488) = v19;
  *(v8 + 464) = v17;
  *(v8 + 448) = a7;
  *(v8 + 456) = a8;
  *(v8 + 432) = a5;
  *(v8 + 440) = a6;
  *(v8 + 424) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 496) = v9;
  v10 = *(v9 - 8);
  *(v8 + 504) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 520) = v12;
  v13 = *(v12 - 8);
  *(v8 + 528) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();

  return _swift_task_switch(sub_100414DF4, 0, 0);
}

uint64_t sub_100414DF4()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = *(v0[56] + 16);

  sub_10041ACEC(v2, (v0 + 2));
  v4 = swift_task_alloc();
  v0[68] = v4;
  *v4 = v0;
  v4[1] = sub_100414ECC;
  v5 = v0[54];
  v6 = v0[55];
  v7 = v0[53];

  return (sub_1011152C0)(v7, v5, v6, v3);
}

uint64_t sub_100414ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[48] = v3;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = a3;
  v6 = v4[68];
  v8 = *v3;
  v5[69] = a1;

  return _swift_task_switch(sub_100414FD4, 0, 0);
}

uint64_t sub_100414FD4()
{
  v1 = v0[69];
  if (v1)
  {
    v2 = v0[50];
    v3 = v0[51];
    v4 = v0[60];
    v36 = v2;
    v38 = v0[61];
    v6 = v0[58];
    v5 = v0[59];
    v7 = v0[57];
    v34 = v0[56];
    v8 = v0[53];

    sub_100017D5C(v2, v3);
    sub_1004FCFFC(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v6;
    v10 = v6;
    v9[4] = v5;
    v11 = v7;

    Future.addFailure(block:)();

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    *(v12 + 32) = v5;
    *(v12 + 40) = v34;
    v13 = v8[1];
    *(v12 + 48) = *v8;
    *(v12 + 64) = v13;
    v14 = v8[2];
    v15 = v8[3];
    v16 = v8[5];
    *(v12 + 112) = v8[4];
    *(v12 + 128) = v16;
    *(v12 + 80) = v14;
    *(v12 + 96) = v15;
    v17 = v8[6];
    v18 = v8[7];
    v19 = v8[9];
    *(v12 + 176) = v8[8];
    *(v12 + 192) = v19;
    *(v12 + 144) = v17;
    *(v12 + 160) = v18;
    *(v12 + 208) = v38;
    sub_10041ACEC(v8, (v0 + 22));
    v20 = v11;

    Future.addSuccess(block:)();

    sub_100165328(v1, v36, v3);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v21 = v0[67];
    v37 = v0[66];
    v39 = v0[65];
    v23 = v0[63];
    v22 = v0[64];
    v24 = v0[62];
    v25 = v0[58];
    v26 = v0[59];
    v35 = v0[57];
    os_log(_:dso:log:_:_:)();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    v0[46] = sub_10041B540;
    v0[47] = v27;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_100006684;
    v0[45] = &unk_10161C450;
    v28 = _Block_copy(v0 + 42);

    static DispatchQoS.unspecified.getter();
    v0[52] = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v23 + 8))(v22, v24);
    (*(v37 + 8))(v21, v39);
    v29 = v0[47];
  }

  v30 = v0[67];
  v31 = v0[64];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1004153F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v23);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10041B008;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161C680;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v8, v5);
  (*(v9 + 8))(v12, v23);
}

uint64_t sub_1004157A0(void (*a1)(void *), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v14 - v11);
  type metadata accessor for SPPairingSessionError(0);
  v14[0] = a5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10041B3A4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v12 = v14[1];
  swift_storeEnumTagMultiPayload();
  a1(v12);
  return sub_10000B3A8(v12, a3, a4);
}

uint64_t sub_1004158E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v113 = a6;
  v116 = a3;
  v117 = a4;
  v118 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v121 = *(v7 - 8);
  v122 = v7;
  v8 = *(v121 + 64);
  __chkstk_darwin(v7);
  v119 = &v107[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS();
  v123 = *(v10 - 8);
  v11 = *(v123 + 64);
  __chkstk_darwin(v10);
  v120 = &v107[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = type metadata accessor for AccessoryPairingLockCheckResponse();
  v111 = *(v114 - 8);
  v13 = *(v111 + 64);
  v14 = __chkstk_darwin(v114);
  v112 = &v107[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v115 = &v107[-v15];
  v16 = type metadata accessor for String.Encoding();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v107[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v21);
  v26 = &v107[-v25];
  __chkstk_darwin(v24);
  v28 = &v107[-v27];
  v29 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v29 == 409)
  {
    v37 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v38 = qword_10177C410;
    (*(v19 + 16))(v26, a1, v18);
    if (os_log_type_enabled(v38, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 136446210;
      sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v10;
      v44 = v43;
      (*(v19 + 8))(v26, v18);
      v45 = sub_1000136BC(v41, v44, &aBlock);
      v10 = v42;

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v37, "Linked to another Apple ID. %{public}s", v39, 0xCu);
      sub_100007BAC(v40);
    }

    else
    {
      (*(v19 + 8))(v26, v18);
    }

    v70 = swift_allocObject();
    v71 = v117;
    *(v70 + 16) = v116;
    *(v70 + 24) = v71;
    v129 = sub_10041AD84;
    v130 = v70;
    aBlock = _NSConcreteStackBlock;
    v126 = 1107296256;
    v72 = &unk_10161C540;
    goto LABEL_23;
  }

  if (v29 != 200)
  {
    v46 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v47 = qword_10177C410;
    (*(v19 + 16))(v23, a1, v18);
    if (os_log_type_enabled(v47, v46))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock = v49;
      *v48 = 136446210;
      sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v10;
      v53 = v52;
      (*(v19 + 8))(v23, v18);
      v54 = sub_1000136BC(v50, v53, &aBlock);
      v10 = v51;

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v46, "Pairing lock failed: %{public}s", v48, 0xCu);
      sub_100007BAC(v49);
    }

    else
    {
      (*(v19 + 8))(v23, v18);
    }

    v73 = swift_allocObject();
    v74 = v117;
    *(v73 + 16) = v116;
    *(v73 + 24) = v74;
    v129 = sub_10041B540;
    v130 = v73;
    aBlock = _NSConcreteStackBlock;
    v126 = 1107296256;
    v72 = &unk_10161C4F0;
LABEL_23:
    v127 = sub_100006684;
    v128 = v72;
    v75 = _Block_copy(&aBlock);

    v76 = v120;
    static DispatchQoS.unspecified.getter();
    v124 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v77 = v119;
    v78 = v122;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v75);
    (*(v121 + 8))(v77, v78);
    (*(v123 + 8))(v76, v10);
  }

  v110 = v10;
  v30 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v31 = qword_10177C410;
  (*(v19 + 16))(v28, a1, v18);
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    aBlock = p_isa;
    *v32 = 136446210;
    sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v108 = v30;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v19 + 8))(v28, v18);
    v36 = sub_1000136BC(v33, v35, &aBlock);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v31, v108, "Pairing success: %{public}s", v32, 0xCu);
    sub_100007BAC(p_isa);
  }

  else
  {
    (*(v19 + 8))(v28, v18);
  }

  v55 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v57 = v56;
  static String.Encoding.utf8.getter();
  v58 = String.init(data:encoding:)();
  v60 = v59;
  sub_100016590(v55, v57);
  if (v60)
  {
    static os_log_type_t.info.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_101385D80;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_100008C00();
    *(v61 + 32) = v58;
    *(v61 + 40) = v60;
    os_log(_:dso:log:_:_:)();
  }

  p_isa = &v31->isa;
  v62 = type metadata accessor for JSONDecoder();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = JSONDecoder.init()();
  v66 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v68 = v67;
  sub_10041B3A4(&qword_10169F850, type metadata accessor for AccessoryPairingLockCheckResponse);
  v69 = v115;
  v114 = v65;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v66, v68);
  if (qword_1016946E0 != -1)
  {
    swift_once();
  }

  v80 = qword_10169F750;
  if (qword_10169F750 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v81 = swift_allocObject();
    v82 = v117;
    *(v81 + 16) = v116;
    *(v81 + 24) = v82;
    v129 = sub_10041ADE4;
    v130 = v81;
    aBlock = _NSConcreteStackBlock;
    v126 = 1107296256;
    v127 = sub_100006684;
    v128 = &unk_10161C5E0;
    v83 = _Block_copy(&aBlock);

    v84 = v120;
    static DispatchQoS.unspecified.getter();
    v124 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v85 = v119;
    v86 = v122;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v83);
    (*(v121 + 8))(v85, v86);
    (*(v123 + 8))(v84, v110);
  }

  else
  {
    v87 = qword_10169F748;
    sub_10002E98C(qword_10169F748, qword_10169F750);
    v88 = sub_10041A4B8(v113, v69);
    v90 = v89;
    v91 = v69[2];
    v92 = v69[3];
    sub_100017D5C(v91, v92);
    v113 = v87;
    v93 = v87;
    v94 = v90;
    v95 = v88;
    v96 = v80;
    v97 = sub_100A74FAC(v93, v80, v95, v94, v91, v92, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
    sub_100016590(v91, v92);
    static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_101385D80;
    *(v98 + 56) = &type metadata for Bool;
    *(v98 + 64) = &protocol witness table for Bool;
    *(v98 + 32) = v97 & 1;
    os_log(_:dso:log:_:_:)();

    v99 = v112;
    sub_10041AE74(v69, v112, type metadata accessor for AccessoryPairingLockCheckResponse);
    v100 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v101 = swift_allocObject();
    v102 = v117;
    *(v101 + 16) = v116;
    *(v101 + 24) = v102;
    sub_10041AEDC(v99, v101 + v100, type metadata accessor for AccessoryPairingLockCheckResponse);
    v129 = sub_10041AF44;
    v130 = v101;
    aBlock = _NSConcreteStackBlock;
    v126 = 1107296256;
    v127 = sub_100006684;
    v128 = &unk_10161C630;
    v103 = _Block_copy(&aBlock);

    v104 = v120;
    static DispatchQoS.unspecified.getter();
    v124 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v117 = v96;
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v105 = v119;
    v106 = v122;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v103);
    sub_100016590(v95, v94);
    sub_100006654(v113, v117);

    (*(v121 + 8))(v105, v106);
    (*(v123 + 8))(v104, v110);
  }

  sub_10041AE14(v69, type metadata accessor for AccessoryPairingLockCheckResponse);
}

uint64_t sub_100416BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v80 = a3;
  v77 = a2;
  v68 = a1;
  v4 = type metadata accessor for AccessoryUnpairData();
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v4 - 8);
  v75 = v6;
  v78 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v79 = &v66 - v9;
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 64);
  __chkstk_darwin(v10);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v67 = &v66 - v20;
  v21 = type metadata accessor for FMNAccountType();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AccessoryUnpairEndpoint();
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v66 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v66 - v30;
  v32 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v66 - v34;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101385D80;
  sub_100015794(v68, v35);
  v37 = String.init<A>(describing:)();
  v39 = v38;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_100008C00();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  os_log(_:dso:log:_:_:)();

  v40 = enum case for FMNAccountType.accessory(_:);
  v41 = *(v22 + 104);
  v41(v25, enum case for FMNAccountType.accessory(_:), v21);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v31 = sub_1010B32C8(v25);
  v41(&v31[*(v26 + 20)], v40, v21);
  v42 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = type metadata accessor for FMNMockingPreferences();
  (*(*(v45 - 8) + 56))(v67, 1, 1, v45);
  v46 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v47 = type metadata accessor for ServerInteractionController(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  v51 = v66;
  sub_10041AE74(v31, v66, type metadata accessor for AccessoryUnpairEndpoint);
  v52 = sub_100621984(v51, v46, v50);
  sub_10041AE14(v31, type metadata accessor for AccessoryUnpairEndpoint);
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v83 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v73 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v74);
  v53 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v54 = type metadata accessor for TaskPriority();
  v55 = v79;
  (*(*(v54 - 8) + 56))(v79, 1, 1, v54);
  v56 = v78;
  sub_10041AE74(v77, v78, type metadata accessor for AccessoryUnpairData);
  v57 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v58 = (v75 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  sub_10041AEDC(v56, v61 + v57, type metadata accessor for AccessoryUnpairData);
  v62 = v80;
  *(v61 + v58) = v81;
  *(v61 + v59) = v53;
  v63 = (v61 + v60);
  v64 = v82;
  *v63 = v62;
  v63[1] = v64;
  *(v61 + ((v60 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;

  sub_10025EDD4(0, 0, v55, &unk_1013A17A8, v61);
}

uint64_t sub_10041740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v18;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[22] = v12;
  v13 = *(v12 - 8);
  v8[23] = v13;
  v14 = *(v13 + 64) + 15;
  v8[24] = swift_task_alloc();
  v15 = *(*(type metadata accessor for AccessoryUnpairData() - 8) + 64) + 15;
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_100417564, 0, 0);
}

uint64_t sub_100417564()
{
  v1 = v0[14];
  sub_10041AE74(v0[13], v0[25], type metadata accessor for AccessoryUnpairData);
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_100417644;
  v4 = v0[25];

  return sub_100395F7C(v4, v2);
}

uint64_t sub_100417644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[8] = v3;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;
  v6 = v4[26];
  v8 = *v3;
  v5[27] = a1;

  return _swift_task_switch(sub_10041774C, 0, 0);
}

uint64_t sub_10041774C()
{
  v1 = v0[27];
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[11];
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[27];

    sub_100017D5C(v2, v3);
    sub_1004FD308(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v5;
    v10 = v6;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v7;
    v11[4] = v5;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v1, v2, v3);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v13 = v0[24];
    v14 = v0[21];
    v28 = v0[23];
    v29 = v0[22];
    v15 = v0[19];
    v16 = v0[20];
    v17 = v0[16];
    v18 = v0[17];
    v27 = v0[15];
    os_log(_:dso:log:_:_:)();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v0[6] = sub_10041AB68;
    v0[7] = v19;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_10161C298;
    v20 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[12] = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v16 + 8))(v14, v15);
    (*(v28 + 8))(v13, v29);
    v21 = v0[7];
  }

  v23 = v0[24];
  v22 = v0[25];
  v24 = v0[21];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100417B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v27 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = v22;
  v17[3] = v18;
  v17[4] = a1;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161C3D8;
  v19 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v8, v5);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_100417EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  static os_log_type_t.default.getter();
  if (v15 == 200)
  {
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v35 = sub_10041ABC0;
    v36 = v16;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100006684;
    v34 = &unk_10161C388;
    v17 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v7 + 8))(v10, v6);
    (*(v28 + 8))(v14, v11);
  }

  else
  {
    v25 = a3;
    v26 = v11;
    v27 = v7;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    aBlock = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = a4;
    v35 = sub_10041ABA0;
    v36 = v22;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100006684;
    v34 = &unk_10161C338;
    v23 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v27 + 8))(v10, v6);
    (*(v28 + 8))(v14, v26);
  }
}

void sub_100418454(void (*a1)())
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10041B3A4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_100418510(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v59 = v54 - v6;
  v58 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v58 - 8);
  v7 = *(v57 + 64);
  __chkstk_darwin(v58);
  v56 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v54[2] = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v54[1] = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v54 - v16;
  v18 = type metadata accessor for FMNAccountType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryPairingLockAckEndpoint();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23);
  v28 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = v54 - v29;
  v31 = enum case for FMNAccountType.accessory(_:);
  v32 = *(v19 + 104);
  v32(v22, enum case for FMNAccountType.accessory(_:), v18);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v30 = sub_1010B32C8(v22);
  v32(&v30[*(v24 + 28)], v31, v18);
  v33 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = type metadata accessor for FMNMockingPreferences();
  (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
  v37 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v38 = type metadata accessor for ServerInteractionController(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  sub_10041AE74(v30, v28, type metadata accessor for AccessoryPairingLockAckEndpoint);
  v42 = sub_1006221B4(v28, v37, v41);
  sub_10041AE14(v30, type metadata accessor for AccessoryPairingLockAckEndpoint);
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v63 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v57 + 104))(v56, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v58);
  v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v44 = type metadata accessor for TaskPriority();
  v45 = v59;
  (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v47 = a1[5];
  *(v46 + 96) = a1[4];
  *(v46 + 112) = v47;
  v48 = a1[7];
  *(v46 + 128) = a1[6];
  *(v46 + 144) = v48;
  v49 = a1[1];
  *(v46 + 32) = *a1;
  *(v46 + 48) = v49;
  v50 = a1[3];
  *(v46 + 64) = a1[2];
  *(v46 + 80) = v50;
  v51 = v61;
  *(v46 + 160) = v60;
  *(v46 + 168) = v43;
  v52 = v62;
  *(v46 + 176) = v51;
  *(v46 + 184) = v52;
  *(v46 + 192) = v42;
  sub_10041A228(a1, &v63);

  sub_10025EDD4(0, 0, v45, &unk_1013A1780, v46);
}

uint64_t sub_100418B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[33] = a8;
  v8[34] = v17;
  v8[31] = a6;
  v8[32] = a7;
  v8[29] = a4;
  v8[30] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[35] = v9;
  v10 = *(v9 - 8);
  v8[36] = v10;
  v11 = *(v10 + 64) + 15;
  v8[37] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[38] = v12;
  v13 = *(v12 - 8);
  v8[39] = v13;
  v14 = *(v13 + 64) + 15;
  v8[40] = swift_task_alloc();

  return _swift_task_switch(sub_100418C7C, 0, 0);
}

uint64_t sub_100418C7C()
{
  v1 = v0[29];
  v2 = *(v0[30] + 16);

  sub_10041A228(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_100418D48;
  v4 = v0[29];

  return (sub_10125C83C)(v4, v2);
}

uint64_t sub_100418D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[24] = v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = a3;
  v6 = v4[41];
  v8 = *v3;
  v5[42] = a1;

  return _swift_task_switch(sub_100418E50, 0, 0);
}

uint64_t sub_100418E50()
{
  v1 = v0[42];
  if (v1)
  {
    v2 = v0[26];
    v3 = v0[27];
    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[31];
    v7 = v0[32];
    v8 = v0[42];

    sub_100017D5C(v2, v3);
    sub_1004FD614(v1, v2, v3, 0, v4);
    sub_100165328(v1, v2, v3);
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v7;
    v9[4] = v5;
    v10 = v6;

    Future.addFailure(block:)();

    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v7;
    v11[4] = v5;
    v12 = v10;

    Future.addSuccess(block:)();

    sub_100165328(v1, v2, v3);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v13 = v0[40];
    v14 = v0[37];
    v27 = v0[39];
    v28 = v0[38];
    v15 = v0[35];
    v16 = v0[36];
    v17 = v0[32];
    v18 = v0[33];
    v26 = v0[31];
    os_log(_:dso:log:_:_:)();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v0[22] = sub_10041A8C8;
    v0[23] = v19;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100006684;
    v0[21] = &unk_10161C090;
    v20 = _Block_copy(v0 + 18);

    static DispatchQoS.unspecified.getter();
    v0[28] = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v16 + 8))(v14, v15);
    (*(v27 + 8))(v13, v28);
    v21 = v0[23];
  }

  v22 = v0[40];
  v23 = v0[37];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100419208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v23);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  aBlock[4] = sub_10041A97C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161C220;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v8, v5);
  (*(v9 + 8))(v12, v23);
}

uint64_t sub_1004195B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v56 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryPairingLockAckResponse();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  static os_log_type_t.default.getter();
  if (v17 == 200)
  {
    v52 = v16;
    v48 = v11;
    v53 = v4;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v18 = qword_10177C410;
    v50 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    v49 = xmmword_101385D80;
    *(v19 + 16) = xmmword_101385D80;
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v51 = v18;
    os_log(_:dso:log:_:_:)();

    v23 = type metadata accessor for JSONDecoder();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v26 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v28 = v27;
    sub_10041B3A4(&qword_10169F838, type metadata accessor for AccessoryPairingLockAckResponse);
    v29 = v52;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v26, v28);
    sub_10041AE74(v29, v14, type metadata accessor for AccessoryPairingLockAckResponse);
    v40 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v41 = swift_allocObject();
    v42 = v55;
    *(v41 + 16) = v54;
    *(v41 + 24) = v42;
    sub_10041AEDC(v14, v41 + v40, type metadata accessor for AccessoryPairingLockAckResponse);
    v67 = sub_10041A940;
    v68 = v41;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100006684;
    v66 = &unk_10161C1D0;
    v43 = _Block_copy(&aBlock);

    v44 = v57;
    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v45 = v58;
    v46 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v61 + 8))(v45, v46);
    (*(v59 + 8))(v44, v60);
    sub_10041AE14(v29, type metadata accessor for AccessoryPairingLockAckResponse);
  }

  else
  {
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    sub_10041B3A4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)();

    v34 = swift_allocObject();
    v35 = v55;
    *(v34 + 16) = v54;
    *(v34 + 24) = v35;
    v67 = sub_10041B53C;
    v68 = v34;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100006684;
    v66 = &unk_10161C130;
    v36 = _Block_copy(&aBlock);

    v37 = v57;
    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_10041B3A4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v38 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);
    (*(v61 + 8))(v38, v4);
    (*(v59 + 8))(v37, v60);
  }
}

uint64_t sub_10041A03C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = sub_1000BC4D4(a4, a5);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_10041AE74(a3, &v16 - v13, a6);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return sub_10000B3A8(v14, a4, a5);
}

uint64_t sub_10041A13C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = v1[21];
  v8 = v1[22];
  v9 = v1[23];
  v10 = v1[24];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_100418B50(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10041A260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616E6D66 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134A130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10041A4B8(uint64_t *a1, uint64_t *a2)
{
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v45 = *(type metadata accessor for AccessoryPairingLockCheckResponse() + 32);
  v5 = UUID.data.getter();
  v7 = v6;
  v8 = Data.hexString.getter();
  v10 = v9;
  sub_100016590(v5, v7);
  *(v4 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v4 + 64) = v11;
  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v14 = a2[6];
  v13 = a2[7];
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = v11;
  *(v12 + 32) = v14;
  *(v12 + 40) = v13;

  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v43 = a1[11];
  v44 = a1[10];
  v16 = Data.hexString.getter();
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = v11;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = *a2;
  v20 = a2[1];
  v21 = Data.hexString.getter();
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v11;
  *(v18 + 32) = v21;
  *(v18 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  v24 = a1[1];
  v42 = *a1;
  v25 = Data.hexString.getter();
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v11;
  *(v23 + 32) = v25;
  *(v23 + 40) = v26;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  v28 = a2[2];
  v29 = a2[3];
  v30 = Data.hexString.getter();
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = v11;
  *(v27 + 32) = v30;
  *(v27 + 40) = v31;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.debug.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  v34 = a1[12];
  v33 = a1[13];
  v35 = Data.hexString.getter();
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = v11;
  *(v32 + 32) = v35;
  *(v32 + 40) = v36;
  os_log(_:dso:log:_:_:)();

  v46 = UUID.data.getter();
  Data.append(_:)();
  v37 = *a2;
  v38 = a2[1];
  Data.append(_:)();
  Data.append(_:)();
  Data.append(_:)();
  v39 = a2[4];
  v40 = a2[5];
  Data.append(_:)();
  return v46;
}

uint64_t type metadata accessor for AccessoryUnpairData()
{
  result = qword_10169F8B0;
  if (!qword_10169F8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041A9F8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for AccessoryUnpairData() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014744;

  return sub_10041740C(a1, v9, v10, v1 + v5, v11, v12, v13, v14);
}

uint64_t sub_10041ABC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_10041ABEC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 192);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  v13 = *(v1 + 224);
  v10 = *(v1 + 240);
  v9 = *(v1 + 248);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_100414CBC(a1, v14, v4, v1 + 32, v5, v6, v7, v8);
}

uint64_t sub_10041AD24()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10041AE14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10041AE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041AEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041B038(uint64_t a1)
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

__n128 sub_10041B060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10041B08C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_10041B0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10041B14C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10041B170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10041B1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10041B250()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000E3404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10041B2FC()
{
  result = qword_10169F900;
  if (!qword_10169F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F900);
  }

  return result;
}

unint64_t sub_10041B350()
{
  result = qword_10169F910;
  if (!qword_10169F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F910);
  }

  return result;
}

uint64_t sub_10041B3A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10041B400()
{
  result = qword_10169F918;
  if (!qword_10169F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F918);
  }

  return result;
}

unint64_t sub_10041B458()
{
  result = qword_10169F920;
  if (!qword_10169F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F920);
  }

  return result;
}

unint64_t sub_10041B4B0()
{
  result = qword_10169F928;
  if (!qword_10169F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F928);
  }

  return result;
}

uint64_t sub_10041B57C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  sub_10015049C(v12, v13);
  sub_100017D5C(a2, a3);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(a2, a3);
  if (!v5)
  {
    sub_10015049C(v12, v13);
    sub_100017D5C(a4, a5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(a4, a5);
  }

  return sub_100007BAC(v12);
}

uint64_t sub_10041B6A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10041BF30(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int sub_10041B718()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1013A22C6[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10041B7A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1013A22C6[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10041B7EC@<X0>(__int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10041C064(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10041B8E0()
{
  v1 = 0x737365636375732ELL;
  *v0;
  if (*v0)
  {
    v1 = 0x64696C61766E692ELL;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0x64696C61766E692ELL;
  }
}

uint64_t sub_10041BB24(void *a1, int a2)
{
  v3 = BYTE2(a2);
  v5 = sub_1000BC4D4(&qword_10169F960, &qword_1013A21A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10041C6D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12[14] = v3;
    v12[13] = 1;
    sub_10041C778();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10041BCA0()
{
  if (*v0)
  {
    result = 0x7574617453776172;
  }

  else
  {
    result = 0x65646F63706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_10041BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F63706FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7574617453776172 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10041BDBC(uint64_t a1)
{
  v2 = sub_10041C6D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10041BDF8(uint64_t a1)
{
  v2 = sub_10041C6D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10041BE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10041C510(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

uint64_t sub_10041BE8C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v5 = v5;
  }

LABEL_10:
  if (v5 != 2)
  {
    goto LABEL_24;
  }

  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v10) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v10 = v10;
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v9 != 2)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v8 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v8)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v10 != 2)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_10041BF30(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v12, v13);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v12, v13);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v4 = sub_10041BE8C(v7, v8, v9, v11);
  }

  sub_100007BAC(v12);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_10041C064(__int16 a1)
{
  if ((a1 + 1) >= 6u)
  {
    return 6;
  }

  else
  {
    return (0x40302010005uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_10041C094(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Endianness();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_100017D5C(a1, a2);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v15 == 1)
  {
    sub_100016590(a3, a4);
    sub_100016590(a1, a2);
    return 393216;
  }

  else
  {
    static Endianness.current.getter();
    FixedWidthInteger.init(data:ofEndianness:)();
    sub_100016590(a1, a2);
    if (v13 == 1)
    {
      return 393216;
    }

    else
    {
      v11 = sub_10041C064(v12);
      if (v11 == 6)
      {
        return 393216;
      }

      else
      {
        return v14 | (v11 << 16);
      }
    }
  }
}

uint64_t sub_10041C20C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10041C260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10041C2C4()
{
  result = qword_10169F930;
  if (!qword_10169F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F930);
  }

  return result;
}

unint64_t sub_10041C318(uint64_t a1)
{
  *(a1 + 8) = sub_10041C348();
  result = sub_10030FDD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10041C348()
{
  result = qword_10169F938;
  if (!qword_10169F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F938);
  }

  return result;
}

unint64_t sub_10041C39C()
{
  result = qword_10169F940;
  if (!qword_10169F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F940);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessoryCommandResponse(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryCommandResponse(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB)
  {
    if ((a2 + 33554181) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 6;
  v6 = v4 - 6;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryCommandResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554181) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFA)
  {
    v3 = 0;
  }

  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    *(result + 2) = (a2 - 251) >> 16;
    if (v3)
    {
      v4 = ((a2 - 251) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 5;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_10041C510(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_10169F948, &qword_1013A21A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10041C6D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v12[15] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[13] = 1;
  sub_10041C724();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v10 = v12[14];
  sub_100007BAC(a1);
  return v9 | (v10 << 16);
}

unint64_t sub_10041C6D0()
{
  result = qword_10169F950;
  if (!qword_10169F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F950);
  }

  return result;
}

unint64_t sub_10041C724()
{
  result = qword_10169F958;
  if (!qword_10169F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F958);
  }

  return result;
}

unint64_t sub_10041C778()
{
  result = qword_10169F968;
  if (!qword_10169F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F968);
  }

  return result;
}

unint64_t sub_10041C7E0()
{
  result = qword_10169F970;
  if (!qword_10169F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F970);
  }

  return result;
}

unint64_t sub_10041C838()
{
  result = qword_10169F978;
  if (!qword_10169F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F978);
  }

  return result;
}

unint64_t sub_10041C890()
{
  result = qword_10169F980;
  if (!qword_10169F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169F980);
  }

  return result;
}

uint64_t sub_10041C8E4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177ACF0);
  v1 = sub_1000076D4(v0, qword_10177ACF0);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AE28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10041C9C8()
{
  if (qword_1016946E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177ACF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LeaderCheckService - inside startup() function", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10041CAE0()
{
  v1[6] = v0;
  v2 = type metadata accessor for DeviceVersion();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for DeviceVersion.Platform();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = type metadata accessor for LeaderDevice();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v1[34] = v11;
  v12 = *(v11 - 8);
  v1[35] = v12;
  v13 = *(v12 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v14 = type metadata accessor for OwnedBeaconRecord();
  v1[41] = v14;
  v15 = *(v14 - 8);
  v1[42] = v15;
  v16 = *(v15 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v1[49] = v18;
  *v18 = v1;
  v18[1] = sub_10041CE84;

  return daemon.getter();
}

uint64_t sub_10041CE84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 392);
  v12 = *v1;
  v3[50] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[51] = v6;
  v7 = type metadata accessor for Daemon();
  v3[52] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1004215B0(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[53] = v9;
  v10 = sub_1004215B0(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_10041D078;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10041D078(uint64_t a1)
{
  v3 = *(*v2 + 408);
  v4 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  if (v1)
  {
    v5 = v4[6];

    return _swift_task_switch(sub_10041F700, v5, 0);
  }

  else
  {
    v6 = v4[50];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[56] = v8;
    *v8 = v4;
    v8[1] = sub_10041D1EC;

    return daemon.getter();
  }
}

uint64_t sub_10041D1EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 448);
  v5 = *v1;
  v3[57] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[58] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1004215B0(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_10041D3A4;
  v10 = v3[53];
  v11 = v3[52];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10041D3A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *v2;
  v4[59] = a1;
  v4[60] = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = sub_10041F900;
  }

  else
  {
    v9 = v4[57];

    v8 = sub_10041D4DC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10041D4DC()
{
  v1 = v0[59];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[61] = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v0[62] = v4;
  *v3 = v0;
  v3[1] = sub_10041D5CC;
  v5 = v0[59];

  return unsafeBlocking<A>(context:_:)(v0 + 4, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_10041D5CC()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 472);
  v4 = *v0;

  return _swift_task_switch(sub_10041D6E4, v2, 0);
}

uint64_t sub_10041D6E4()
{
  v1 = v0[6];
  v0[63] = v0[4];
  return _swift_task_switch(sub_10041D708, v1, 0);
}

unint64_t sub_10041D708()
{
  result = v0[63];
  v41 = *(result + 16);
  if (v41)
  {
    v2 = 0;
    v3 = v0[35];
    v38 = *(v0[41] + 20);
    v39 = v0[42];
    v40 = v0[48];
    v37 = result + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v42 = (v3 + 16);
    v33 = v3;
    v36 = (v3 + 8);
    v4 = &_swiftEmptyDictionarySingleton;
    v35 = v0[63];
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v6 = v0[47];
      v5 = v0[48];
      v7 = v0[40];
      v8 = v0[34];
      v9 = *(v39 + 72);
      sub_1004215F8(v37 + v9 * v2, v5, type metadata accessor for OwnedBeaconRecord);
      v10 = *v42;
      (*v42)(v7, v40 + v38, v8);
      sub_1004215F8(v5, v6, type metadata accessor for OwnedBeaconRecord);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1000210EC(v7);
      v13 = v4[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_26;
      }

      v17 = v12;
      if (v4[3] >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v9;
        }

        else
        {
          v21 = v9;
          v28 = result;
          sub_101004C74();
          result = v28;
        }

        v19 = v4;
      }

      else
      {
        v18 = v0[40];
        sub_100FE5D40(v16, isUniquelyReferenced_nonNull_native);
        v19 = v4;
        result = sub_1000210EC(v18);
        if ((v17 & 1) != (v20 & 1))
        {
          v32 = v0[34];

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v21 = v9;
      }

      v22 = v0[47];
      v43 = v0[48];
      v23 = v0[40];
      v24 = v0[34];
      if (v17)
      {
        sub_10042171C(v22, v19[7] + result * v21);

        (*v36)(v23, v24);
        sub_100421660(v43, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v19[(result >> 6) + 8] |= 1 << result;
        v25 = result;
        v10(v19[6] + *(v33 + 72) * result, v23, v24);
        sub_10002AA3C(v22, v19[7] + v25 * v21, type metadata accessor for OwnedBeaconRecord);

        (*(v33 + 8))(v23, v24);
        result = sub_100421660(v43, type metadata accessor for OwnedBeaconRecord);
        v26 = v19[2];
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_27;
        }

        v19[2] = v27;
      }

      ++v2;
      v4 = v19;
      v0 = v34;
      result = v35;
      if (v41 == v2)
      {
        v29 = v34[63];
        goto LABEL_19;
      }
    }
  }

  v19 = &_swiftEmptyDictionarySingleton;
LABEL_19:
  v0[64] = v19;

  v30 = swift_task_alloc();
  v0[65] = v30;
  *v30 = v0;
  v30[1] = sub_10041DAD8;
  v31 = v0[54];

  return sub_1010CD178(90.0);
}

uint64_t sub_10041DAD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  *(v4 + 528) = a1;
  *(v4 + 536) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_10041FB0C;
  }

  else
  {
    v8 = sub_10041DC10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10041DC10()
{
  v98 = v0;
  if (qword_101694778 != -1)
  {
LABEL_35:
    swift_once();
  }

  v1 = *(v0 + 528);
  v2 = type metadata accessor for Logger();
  *(v0 + 544) = sub_1000076D4(v2, qword_10177AE28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 528);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Found %ld nearby beacons", v7, 0xCu);
  }

  else
  {
    v8 = *(v0 + 528);
  }

  v9 = *(v0 + 528);
  v96 = *(v0 + 512);
  v88 = *(v0 + 336);
  v89 = *(v0 + 328);
  v81 = *(v0 + 160);
  v82 = *(v0 + 168);
  v10 = *(v0 + 104);
  v11 = *(v0 + 64);
  v12 = v9 + 56;
  v13 = -1;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v9 + 56);
  v16 = (63 - v14) >> 6;
  v93 = *(v0 + 280);
  v95 = (v93 + 8);
  v87 = enum case for DeviceVersion.Platform.iOS(_:);
  *(v0 + 584) = enum case for DeviceVersion.Platform.iOS(_:);
  v85 = (v10 + 104);
  v83 = enum case for DeviceVersion.Platform.macOS(_:);
  *(v0 + 588) = enum case for DeviceVersion.Platform.macOS(_:);
  v84 = (v10 + 16);
  v86 = (v10 + 8);
  v80 = (v11 + 32);
  v17 = *(v0 + 536);
  v94 = v9;

  v18 = 0;
  v90 = _swiftEmptyArrayStorage;
LABEL_8:
  *(v0 + 560) = v90;
  *(v0 + 552) = v17;
  while (v15)
  {
LABEL_15:
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = *(v0 + 272);
    v23 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v91 = *(v93 + 16);
    v91(v20, *(v94 + 48) + *(v93 + 72) * (v23 | (v18 << 6)), v22);
    (*(v93 + 32))(v21, v20, v22);
    if (*(v96 + 16))
    {
      v24 = *(v0 + 512);
      v25 = sub_1000210EC(*(v0 + 304));
      if (v26)
      {
        v28 = *(v0 + 360);
        v27 = *(v0 + 368);
        sub_1004215F8(*(v96 + 56) + *(v88 + 72) * v25, v27, type metadata accessor for OwnedBeaconRecord);
        sub_1004215F8(v27, v28, type metadata accessor for OwnedBeaconRecord);
        v29 = (v28 + v89[14]);
        v30 = *v29;
        v31 = v29[1];

        v32 = sub_1008383D8();

        if (v17)
        {
          v41 = *(v0 + 296);
          v40 = *(v0 + 304);
          v42 = *(v0 + 272);
          sub_100421660(*(v0 + 360), type metadata accessor for OwnedBeaconRecord);
          v91(v41, v40, v42);
          swift_errorRetain();
          v43 = Logger.logObject.getter();
          LOBYTE(v40) = static os_log_type_t.error.getter();

          v77 = v40;
          v44 = os_log_type_enabled(v43, v40);
          v92 = *(v0 + 368);
          v45 = *(v0 + 296);
          v46 = *(v0 + 304);
          v47 = *(v0 + 272);
          if (v44)
          {
            v74 = *(v0 + 304);
            v48 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v97 = v71;
            *v48 = 141558531;
            *(v48 + 4) = 1752392040;
            *(v48 + 12) = 2081;
            sub_1004215B0(&qword_101696930, 255, &type metadata accessor for UUID);
            v69 = v43;
            v49 = dispatch thunk of CustomStringConvertible.description.getter();
            v50 = v47;
            v72 = v47;
            v52 = v51;
            v53 = *v95;
            (*v95)(v45, v50);
            v54 = sub_1000136BC(v49, v52, &v97);

            *(v48 + 14) = v54;
            *(v48 + 22) = 2114;
            swift_errorRetain();
            v55 = _swift_stdlib_bridgeErrorToNSError();
            *(v48 + 24) = v55;
            *v70 = v55;
            _os_log_impl(&_mh_execute_header, v69, v77, "Cannot convert to leader device %{private,mask.hash}s, %{public}@", v48, 0x20u);
            sub_100288C6C(v70);

            sub_100007BAC(v71);

            sub_100421660(v92, type metadata accessor for OwnedBeaconRecord);
            v53(v74, v72);
          }

          else
          {

            v56 = *v95;
            (*v95)(v45, v47);
            sub_100421660(v92, type metadata accessor for OwnedBeaconRecord);
            v56(v46, v47);
          }

          v17 = 0;
        }

        else
        {
          v33 = v87;
          if (v32)
          {
            v33 = v83;
            if (v32 != 1)
            {
              v33 = v87;
            }
          }

          v34 = *(v0 + 360);
          v36 = *(v0 + 144);
          v35 = *(v0 + 152);
          v37 = *(v0 + 96);
          (*v85)(v35, v33, v37);
          v38 = (v34 + v89[15]);
          v39 = v38[1];
          v76 = *v38;
          (*v84)(v36, v35, v37);

          DeviceVersion.init(systemVersion:platform:)();
          v57 = *(v0 + 360);
          v73 = *(v0 + 272);
          v75 = *(v0 + 264);
          v58 = *(v0 + 256);
          v78 = *(v0 + 248);
          v59 = *(v0 + 88);
          v60 = *(v0 + 56);
          (*v86)(*(v0 + 152), *(v0 + 96));
          (*v80)(v58, v59, v60);
          v91(v58 + *(v81 + 20), v57 + v89[5], v73);
          sub_100421660(v57, type metadata accessor for OwnedBeaconRecord);
          sub_10002AA3C(v58, v75, type metadata accessor for LeaderDevice);
          sub_1004215F8(v75, v78, type metadata accessor for LeaderDevice);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_100A5B670(0, v90[2] + 1, 1, v90);
          }

          v62 = v90[2];
          v61 = v90[3];
          if (v62 >= v61 >> 1)
          {
            v90 = sub_100A5B670(v61 > 1, v62 + 1, 1, v90);
          }

          v63 = *(v0 + 368);
          v64 = *(v0 + 304);
          v65 = *(v0 + 272);
          v79 = *(v0 + 248);
          sub_100421660(*(v0 + 264), type metadata accessor for LeaderDevice);
          sub_100421660(v63, type metadata accessor for OwnedBeaconRecord);
          (*v95)(v64, v65);
          v90[2] = v62 + 1;
          sub_10002AA3C(v79, v90 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v62, type metadata accessor for LeaderDevice);
          v17 = 0;
        }

        goto LABEL_8;
      }
    }

    (*v95)(*(v0 + 304), *(v0 + 272));
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_15;
    }
  }

  v66 = *(v0 + 528);
  v67 = *(v0 + 472);

  return _swift_task_switch(sub_10041E514, v67, 0);
}

uint64_t sub_10041E514()
{
  v1 = v0[59];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  v3[1] = sub_10041E5EC;
  v4 = v0[62];
  v5 = v0[59];

  return unsafeBlocking<A>(context:_:)(v0 + 5, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v5, v4);
}

uint64_t sub_10041E5EC()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 472);
  v4 = *v0;

  return _swift_task_switch(sub_10041E704, v2, 0);
}

uint64_t sub_10041E704()
{
  v1 = v0[6];
  v0[72] = v0[5];
  return _swift_task_switch(sub_10041E724, v1, 0);
}

id sub_10041E724()
{
  v208 = v0;
  v1 = v0[72];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v18 = v0[36];

    sub_100EF9784();
    v19 = String.utf8Data.getter();
    v21 = v20;

    v0[2] = v19;
    v0[3] = v21;
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100016590(v19, v21);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v23 = result;
    v24 = MobileGestalt_copy_productType_obj();

    if (v24)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v38 = v0[69];
    v39 = sub_1008383D8();
    if (v38)
    {
      v40 = v0[70];
      v41 = v0[66];
      v42 = v0[64];
      v43 = v0[59];
      v44 = v0[54];
      v46 = v0[35];
      v45 = v0[36];
      v47 = v0[34];

      (*(v46 + 8))(v45, v47);
      goto LABEL_10;
    }

    v60 = v39;
    v61 = v0[13];

    (*(v61 + 104))(v0[15], *(v0 + qword_1013A24C0[v60]), v0[12]);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_39:
      __break(1u);
      return result;
    }

    v62 = result;
    v63 = MobileGestalt_copy_buildVersion_obj();

    if (v63)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v73 = v0[9];
    (*(v0[13] + 16))(v0[14], v0[15], v0[12]);
    DeviceVersion.init(systemVersion:platform:)();
    v75 = v0[35];
    v74 = v0[36];
    v76 = v0[34];
    v77 = v0[30];
    v78 = v0[20];
    v80 = v0[8];
    v79 = v0[9];
    v81 = v0[7];
    (*(v0[13] + 8))(v0[15], v0[12]);
    (*(v80 + 32))(v77, v79, v81);
    (*(v75 + 32))(v77 + *(v78 + 20), v74, v76);
LABEL_19:
    v82 = v0[70];
    sub_1004215F8(v0[30], v0[29], type metadata accessor for LeaderDevice);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v0[70];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v84 = sub_100A5B670(0, v84[2] + 1, 1, v84);
    }

    v86 = v84[2];
    v85 = v84[3];
    if (v86 >= v85 >> 1)
    {
      v84 = sub_100A5B670(v85 > 1, v86 + 1, 1, v84);
    }

    v87 = v0[29];
    v88 = v0[21];
    v84[2] = v86 + 1;
    v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v90 = *(v88 + 72);
    sub_10002AA3C(v87, v84 + v89 + v90 * v86, type metadata accessor for LeaderDevice);
    v207[0] = v84;

    sub_100420188(v207);
    v91 = v207[0];
    v205 = v207[0][2];
    if (!v205)
    {
      v137 = v0[66];
      v138 = v0[64];
      v139 = v0[59];
      v140 = v0[54];
      v141 = v0[30];

      sub_1004216C8();
      swift_allocError();
      swift_willThrow();

      sub_100421660(v141, type metadata accessor for LeaderDevice);
      goto LABEL_11;
    }

    v92 = 0;
    v84 = (v207[0] + v89);
    v188 = v207[0] + v89;
    v200 = v90;
    v203 = v207[0];
    do
    {
      if (v92 >= v91[2])
      {
        __break(1u);
        goto LABEL_36;
      }

      v95 = v0[68];
      v96 = v0[28];
      v98 = v0[24];
      v97 = v0[25];
      sub_1004215F8(v84, v96, type metadata accessor for LeaderDevice);
      sub_1004215F8(v96, v97, type metadata accessor for LeaderDevice);
      sub_1004215F8(v96, v98, type metadata accessor for LeaderDevice);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = v0[34];
        v102 = v0[25];
        v195 = v0[24];
        v103 = v0[20];
        v104 = swift_slowAlloc();
        v207[0] = swift_slowAlloc();
        *v104 = 141558531;
        *(v104 + 4) = 1752392040;
        *(v104 + 12) = 2081;
        v105 = *(v103 + 20);
        sub_1004215B0(&qword_101696930, 255, &type metadata accessor for UUID);
        v106 = dispatch thunk of CustomStringConvertible.description.getter();
        v108 = v107;
        sub_100421660(v102, type metadata accessor for LeaderDevice);
        v109 = sub_1000136BC(v106, v108, v207);

        *(v104 + 14) = v109;
        *(v104 + 22) = 2080;
        v110 = DeviceVersion.debugDescription.getter();
        v112 = v111;
        sub_100421660(v195, type metadata accessor for LeaderDevice);
        v113 = sub_1000136BC(v110, v112, v207);

        *(v104 + 24) = v113;
        _os_log_impl(&_mh_execute_header, v99, v100, "Sorted candidates: %{private,mask.hash}s, %s)", v104, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v93 = v0[24];
        v94 = v0[25];

        sub_100421660(v93, type metadata accessor for LeaderDevice);
        sub_100421660(v94, type metadata accessor for LeaderDevice);
      }

      ++v92;
      sub_100421660(v0[28], type metadata accessor for LeaderDevice);
      v84 = (v84 + v200);
      v91 = v203;
    }

    while (v205 != v92);
    v114 = v0[66];
    v115 = v0[64];

    if (v203[2])
    {
      v116 = v0[68];
      v118 = v0[26];
      v117 = v0[27];
      v120 = v0[22];
      v119 = v0[23];
      sub_1004215F8(v188, v118, type metadata accessor for LeaderDevice);

      sub_10002AA3C(v118, v117, type metadata accessor for LeaderDevice);
      sub_1004215F8(v117, v119, type metadata accessor for LeaderDevice);
      sub_1004215F8(v117, v120, type metadata accessor for LeaderDevice);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = v0[34];
        v124 = v0[22];
        v125 = v0[23];
        v126 = v0[20];
        v127 = swift_slowAlloc();
        v207[0] = swift_slowAlloc();
        *v127 = 136315394;
        v128 = *(v126 + 20);
        sub_1004215B0(&qword_101696930, 255, &type metadata accessor for UUID);
        v129 = dispatch thunk of CustomStringConvertible.description.getter();
        v131 = v130;
        sub_100421660(v125, type metadata accessor for LeaderDevice);
        v132 = sub_1000136BC(v129, v131, v207);

        *(v127 + 4) = v132;
        *(v127 + 12) = 2080;
        v133 = DeviceVersion.debugDescription.getter();
        v135 = v134;
        sub_100421660(v124, type metadata accessor for LeaderDevice);
        v136 = sub_1000136BC(v133, v135, v207);

        *(v127 + 14) = v136;
        _os_log_impl(&_mh_execute_header, v121, v122, "Beacon identifier %s elected as the leader. Model : %s.", v127, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v143 = v0[22];
        v142 = v0[23];

        sub_100421660(v143, type metadata accessor for LeaderDevice);
        sub_100421660(v142, type metadata accessor for LeaderDevice);
      }

      v144 = v0[59];
      v145 = v0[54];
      v146 = v0[47];
      v147 = v0[48];
      v148 = v0[45];
      v149 = v0[46];
      v150 = v0[44];
      v154 = v0[43];
      v155 = v0[40];
      v156 = v0[39];
      v158 = v0[38];
      v160 = v0[37];
      v162 = v0[36];
      v164 = v0[33];
      v166 = v0[32];
      v151 = v0[30];
      v168 = v0[31];
      v170 = v0[29];
      v152 = v0[27];
      v172 = v0[28];
      v174 = v0[26];
      v176 = v0[25];
      v178 = v0[24];
      v180 = v0[23];
      v182 = v0[22];
      v184 = v0[19];
      v186 = v0[18];
      v191 = v0[17];
      v196 = v0[16];
      v153 = *(v0[20] + 20);
      v189 = v0[15];
      v193 = v0[14];
      v198 = v0[11];
      v201 = v0[10];
      v204 = v0[9];
      v206 = static UUID.== infix(_:_:)();

      sub_100421660(v152, type metadata accessor for LeaderDevice);
      sub_100421660(v151, type metadata accessor for LeaderDevice);

      v58 = v0[1];
      v59 = v206 & 1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_38;
  }

  v3 = v0[69];
  v4 = v0[43];
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[72];
  sub_1004215F8(v1 + ((*(v0[42] + 80) + 32) & ~*(v0[42] + 80)) + *(v0[42] + 72) * (v2 - 1), v4, type metadata accessor for OwnedBeaconRecord);

  sub_10002AA3C(v4, v5, type metadata accessor for OwnedBeaconRecord);
  v8 = (v5 + *(v6 + 56));
  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1008383D8();
  if (!v3)
  {
    v25 = v11;
    v26 = v0[13];

    v27 = *(v0 + qword_1013A24C0[v25]);
    v28 = v0[44];
    v29 = v0[41];
    v30 = v0[16];
    v31 = v0[17];
    v33 = v0[12];
    v32 = v0[13];
    v34 = v0[10];
    (*(v26 + 104))(v31, v27, v33);
    v35 = (v28 + *(v29 + 60));
    v36 = *v35;
    v37 = v35[1];
    (*(v32 + 16))(v30, v31, v33);

    DeviceVersion.init(systemVersion:platform:)();
    v64 = v0[44];
    v65 = v0[41];
    v66 = v0[34];
    v67 = v0[35];
    v68 = v0[30];
    v69 = v0[20];
    v70 = v0[10];
    v71 = v0[7];
    v72 = v0[8];
    (*(v0[13] + 8))(v0[17], v0[12]);
    (*(v72 + 32))(v68, v70, v71);
    (*(v67 + 16))(v68 + *(v69 + 20), v64 + *(v65 + 20), v66);
    sub_100421660(v64, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_19;
  }

  v12 = v0[70];
  v13 = v0[66];
  v14 = v0[64];
  v15 = v0[59];
  v16 = v0[54];
  v17 = v0[44];

  sub_100421660(v17, type metadata accessor for OwnedBeaconRecord);
LABEL_10:

LABEL_11:
  v49 = v0[47];
  v48 = v0[48];
  v51 = v0[45];
  v50 = v0[46];
  v52 = v0[43];
  v53 = v0[44];
  v55 = v0[39];
  v54 = v0[40];
  v57 = v0[37];
  v56 = v0[38];
  v157 = v0[36];
  v159 = v0[33];
  v161 = v0[32];
  v163 = v0[31];
  v165 = v0[30];
  v167 = v0[29];
  v169 = v0[28];
  v171 = v0[27];
  v173 = v0[26];
  v175 = v0[25];
  v177 = v0[24];
  v179 = v0[23];
  v181 = v0[22];
  v183 = v0[19];
  v185 = v0[18];
  v187 = v0[17];
  v190 = v0[16];
  v192 = v0[15];
  v194 = v0[14];
  v197 = v0[11];
  v199 = v0[10];
  v202 = v0[9];

  v58 = v0[1];
  v59 = 0;
LABEL_12:

  return v58(v59);
}

uint64_t sub_10041F700()
{
  v1 = v0[50];

  v36 = v0[55];
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v9 = v0[39];
  v8 = v0[40];
  v11 = v0[37];
  v10 = v0[38];
  v14 = v0[36];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[24];
  v25 = v0[23];
  v26 = v0[22];
  v27 = v0[19];
  v28 = v0[18];
  v29 = v0[17];
  v30 = v0[16];
  v31 = v0[15];
  v32 = v0[14];
  v33 = v0[11];
  v34 = v0[10];
  v35 = v0[9];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_10041F900()
{
  v1 = v0[57];
  v2 = v0[54];

  v37 = v0[60];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[39];
  v9 = v0[40];
  v12 = v0[37];
  v11 = v0[38];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];
  v28 = v0[19];
  v29 = v0[18];
  v30 = v0[17];
  v31 = v0[16];
  v32 = v0[15];
  v33 = v0[14];
  v34 = v0[11];
  v35 = v0[10];
  v36 = v0[9];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_10041FB0C()
{
  v1 = v0[64];
  v2 = v0[59];
  v3 = v0[54];

  v38 = v0[67];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[43];
  v8 = v0[44];
  v11 = v0[39];
  v10 = v0[40];
  v13 = v0[37];
  v12 = v0[38];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[30];
  v21 = v0[29];
  v22 = v0[28];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[25];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[22];
  v29 = v0[19];
  v30 = v0[18];
  v31 = v0[17];
  v32 = v0[16];
  v33 = v0[15];
  v34 = v0[14];
  v35 = v0[11];
  v36 = v0[10];
  v37 = v0[9];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_10041FD48(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LeaderCheckService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10041FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LeaderCheckService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10041FEB4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LeaderCheckService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10041FF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10041C9AC();
}

uint64_t sub_10041FFE8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LeaderCheckService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100420090()
{
  v1 = *v0;
  type metadata accessor for LeaderCheckService();
  sub_1004215B0(&unk_1016969D0, v2, type metadata accessor for LeaderCheckService);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_100420188(void **a1)
{
  v2 = *(type metadata accessor for LeaderDevice() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B31FA8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100420230(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100420230(uint64_t *a1)
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
        type metadata accessor for LeaderDevice();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for LeaderDevice() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004205D4(v8, v9, a1, v4);
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
    return sub_10042035C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10042035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for LeaderDevice();
  v8 = *(*(v37 - 8) + 64);
  v9 = __chkstk_darwin(v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1004215F8(v24, v18, type metadata accessor for LeaderDevice);
      sub_1004215F8(v21, v14, type metadata accessor for LeaderDevice);
      if (static DeviceVersion.== infix(_:_:)())
      {
        v25 = *(v37 + 20);
        v26 = static UUID.< infix(_:_:)();
      }

      else
      {
        v26 = static DeviceVersion.< infix(_:_:)();
      }

      v27 = v26;
      sub_100421660(v14, type metadata accessor for LeaderDevice);
      result = sub_100421660(v18, type metadata accessor for LeaderDevice);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_10002AA3C(v24, v11, type metadata accessor for LeaderDevice);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002AA3C(v11, v21, type metadata accessor for LeaderDevice);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004205D4(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v129 = a1;
  v140 = type metadata accessor for LeaderDevice();
  v133 = *(v140 - 8);
  v8 = *(v133 + 64);
  v9 = __chkstk_darwin(v140);
  v130 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v139 = &v120 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v120 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v120 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v120 - v20;
  v22 = __chkstk_darwin(v19);
  v23 = __chkstk_darwin(v22);
  v123 = &v120 - v24;
  result = __chkstk_darwin(v23);
  v28 = &v120 - v26;
  v29 = *(a3 + 8);
  if (v29 < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_102:
    v21 = *v129;
    if (!*v129)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_134:
      result = sub_100B31E68(v31);
      v31 = result;
    }

    v141 = v31;
    v115 = *(v31 + 16);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = v31;
        v31 = *(v31 + 16 * v115);
        v117 = v116;
        v118 = *&v116[16 * v115 + 24];
        sub_100421038(*a3 + *(v133 + 72) * v31, *a3 + *(v133 + 72) * *&v116[16 * v115 + 16], *a3 + *(v133 + 72) * v118, v21);
        if (v5)
        {
        }

        if (v118 < v31)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_100B31E68(v117);
        }

        if (v115 - 2 >= *(v117 + 2))
        {
          goto LABEL_128;
        }

        v119 = &v117[16 * v115];
        *v119 = v31;
        v119[1] = v118;
        v141 = v117;
        result = sub_100B31DDC(v115 - 1);
        v31 = v141;
        v115 = *(v141 + 16);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_138;
    }
  }

  v121 = a4;
  v122 = v27;
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v134 = a3;
  v124 = &v120 - v26;
  v125 = v21;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    if (v30 + 1 >= v29)
    {
      goto LABEL_31;
    }

    v131 = v29;
    v126 = v31;
    v31 = *a3;
    v34 = *(v133 + 72);
    v138 = v30 + 1;
    sub_1004215F8(v31 + v34 * v33, v28, type metadata accessor for LeaderDevice);
    v135 = v34;
    v35 = v123;
    sub_1004215F8(v31 + v34 * v32, v123, type metadata accessor for LeaderDevice);
    v36 = static DeviceVersion.== infix(_:_:)();
    v127 = v5;
    if (v36)
    {
      v37 = *(v140 + 20);
      v38 = static UUID.< infix(_:_:)();
    }

    else
    {
      v38 = static DeviceVersion.< infix(_:_:)();
    }

    LODWORD(v132) = v38;
    sub_100421660(v35, type metadata accessor for LeaderDevice);
    result = sub_100421660(v28, type metadata accessor for LeaderDevice);
    v128 = v32;
    v39 = v32 + 2;
    v40 = v135 * (v32 + 2);
    v41 = v31 + v40;
    v42 = v138;
    v43 = (v135 * v138);
    a3 = v31 + v135 * v138;
    v5 = v122;
    do
    {
      v46 = v39;
      v48 = v42;
      v49 = v43;
      v47 = v40;
      v138 = v39;
      if (v39 >= v131)
      {
        break;
      }

      v136 = v42;
      v137 = v40;
      sub_1004215F8(v41, v5, type metadata accessor for LeaderDevice);
      sub_1004215F8(a3, v21, type metadata accessor for LeaderDevice);
      if (static DeviceVersion.== infix(_:_:)())
      {
        v50 = *(v140 + 20);
        v44 = static UUID.< infix(_:_:)();
      }

      else
      {
        v44 = static DeviceVersion.< infix(_:_:)();
      }

      v45 = v44;
      v31 = v21;
      sub_100421660(v21, type metadata accessor for LeaderDevice);
      result = sub_100421660(v5, type metadata accessor for LeaderDevice);
      v47 = v137;
      v46 = v138;
      v39 = v138 + 1;
      v48 = v136;
      v41 += v135;
      a3 += v135;
      v42 = v136 + 1;
      v43 = &v135[v49];
      v40 = &v135[v137];
    }

    while ((v132 & 1) == (v45 & 1));
    if (v132)
    {
      v51 = v128;
      if (v46 < v128)
      {
        goto LABEL_131;
      }

      if (v128 >= v46)
      {
        v33 = v46;
        v31 = v126;
        v5 = v127;
        a3 = v134;
        v32 = v128;
        goto LABEL_31;
      }

      v52 = v128 * v135;
      do
      {
        if (v51 != v48)
        {
          v54 = *v134;
          if (!*v134)
          {
            goto LABEL_137;
          }

          v55 = v48;
          v56 = v47;
          v21 = (v54 + v52);
          sub_10002AA3C(v54 + v52, v130, type metadata accessor for LeaderDevice);
          if (v52 < v49 || v21 >= v54 + v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_10002AA3C(v130, &v49[v54], type metadata accessor for LeaderDevice);
          v47 = v56;
          v48 = v55;
        }

        ++v51;
        v49 -= v135;
        v47 -= v135;
        v52 += v135;
      }

      while (v51 < v48--);
      v33 = v138;
    }

    else
    {
      v33 = v46;
    }

    v31 = v126;
    v5 = v127;
    a3 = v134;
    v32 = v128;
LABEL_31:
    v57 = *(a3 + 8);
    if (v33 < v57)
    {
      if (__OFSUB__(v33, v32))
      {
        goto LABEL_130;
      }

      if (v33 - v32 < v121)
      {
        v58 = v32 + v121;
        if (__OFADD__(v32, v121))
        {
          goto LABEL_132;
        }

        if (v58 >= v57)
        {
          v58 = *(a3 + 8);
        }

        if (v58 < v32)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v33 != v58)
        {
          break;
        }
      }
    }

LABEL_51:
    if (v33 < v32)
    {
      goto LABEL_129;
    }

    v138 = v33;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v31 + 16) + 1, 1, v31);
      v31 = result;
    }

    v70 = *(v31 + 16);
    v69 = *(v31 + 24);
    v71 = v70 + 1;
    v30 = v138;
    if (v70 >= v69 >> 1)
    {
      result = sub_100A5B430((v69 > 1), v70 + 1, 1, v31);
      v30 = v138;
      v31 = result;
    }

    *(v31 + 16) = v71;
    v72 = v31 + 16 * v70;
    *(v72 + 32) = v32;
    *(v72 + 40) = v30;
    v21 = *v129;
    if (!*v129)
    {
      goto LABEL_139;
    }

    if (v70)
    {
      while (1)
      {
        a3 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v73 = *(v31 + 32);
          v74 = *(v31 + 40);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_71:
          if (v76)
          {
            goto LABEL_118;
          }

          v89 = (v31 + 16 * v71);
          v91 = *v89;
          v90 = v89[1];
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_121;
          }

          v95 = (v31 + 32 + 16 * a3);
          v97 = *v95;
          v96 = v95[1];
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_125;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              a3 = v71 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v99 = (v31 + 16 * v71);
        v101 = *v99;
        v100 = v99[1];
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_85:
        if (v94)
        {
          goto LABEL_120;
        }

        v102 = v31 + 16 * a3;
        v104 = *(v102 + 32);
        v103 = *(v102 + 40);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_123;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_92:
        v110 = a3 - 1;
        if (a3 - 1 >= v71)
        {
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
          goto LABEL_133;
        }

        if (!*v134)
        {
          goto LABEL_136;
        }

        v111 = v31;
        v112 = v31 + 32;
        v31 = *(v31 + 32 + 16 * v110);
        v113 = *(v112 + 16 * a3 + 8);
        sub_100421038(*v134 + *(v133 + 72) * v31, *v134 + *(v133 + 72) * *(v112 + 16 * a3), *v134 + *(v133 + 72) * v113, v21);
        if (v5)
        {
        }

        if (v113 < v31)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_100B31E68(v111);
        }

        if (v110 >= *(v111 + 2))
        {
          goto LABEL_115;
        }

        v114 = &v111[16 * v110];
        *(v114 + 4) = v31;
        *(v114 + 5) = v113;
        v141 = v111;
        result = sub_100B31DDC(a3);
        v31 = v141;
        v71 = *(v141 + 16);
        v30 = v138;
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = v31 + 32 + 16 * v71;
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_116;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_117;
      }

      v84 = (v31 + 16 * v71);
      v86 = *v84;
      v85 = v84[1];
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_119;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_122;
      }

      if (v88 >= v80)
      {
        v106 = (v31 + 32 + 16 * a3);
        v108 = *v106;
        v107 = v106[1];
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_126;
        }

        if (v75 < v109)
        {
          a3 = v71 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    a3 = v134;
    v29 = v134[1];
    v28 = v124;
    v21 = v125;
    if (v30 >= v29)
    {
      goto LABEL_102;
    }
  }

  v126 = v31;
  v127 = v5;
  v59 = *a3;
  v60 = *(v133 + 72);
  v61 = *a3 + v60 * (v33 - 1);
  v62 = v32;
  v63 = -v60;
  v128 = v62;
  v64 = v62 - v33;
  v131 = v60;
  v132 = v58;
  v21 = (v59 + v33 * v60);
LABEL_41:
  v137 = v61;
  v138 = v33;
  v135 = v21;
  v136 = v64;
  while (1)
  {
    sub_1004215F8(v21, v18, type metadata accessor for LeaderDevice);
    sub_1004215F8(v61, v15, type metadata accessor for LeaderDevice);
    if (static DeviceVersion.== infix(_:_:)())
    {
      v65 = *(v140 + 20);
      v66 = static UUID.< infix(_:_:)();
    }

    else
    {
      v66 = static DeviceVersion.< infix(_:_:)();
    }

    v67 = v66;
    a3 = type metadata accessor for LeaderDevice;
    sub_100421660(v15, type metadata accessor for LeaderDevice);
    result = sub_100421660(v18, type metadata accessor for LeaderDevice);
    if ((v67 & 1) == 0)
    {
LABEL_40:
      v33 = v138 + 1;
      v61 = v137 + v131;
      v64 = v136 - 1;
      v21 = &v135[v131];
      if (v138 + 1 != v132)
      {
        goto LABEL_41;
      }

      v33 = v132;
      v31 = v126;
      v5 = v127;
      v32 = v128;
      goto LABEL_51;
    }

    if (!v59)
    {
      break;
    }

    a3 = v139;
    sub_10002AA3C(v21, v139, type metadata accessor for LeaderDevice);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002AA3C(a3, v61, type metadata accessor for LeaderDevice);
    v61 += v63;
    v21 += v63;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_40;
    }
  }

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
  return result;
}

uint64_t sub_100421038(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for LeaderDevice();
  v8 = *(*(v56 - 8) + 64);
  v9 = __chkstk_darwin(v56);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v53 = &v48 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v48 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_67;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v22 = (a2 - a1) / v20;
  v59 = a1;
  v58 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = a4 + v24;
      v51 = a4;
      v55 = v33;
      while (2)
      {
        while (1)
        {
          v49 = v32;
          v35 = a2 + v33;
          v52 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v59 = a2;
              v57 = v49;
              goto LABEL_65;
            }

            v38 = a3;
            v50 = v32;
            v39 = v34 + v33;
            v40 = v53;
            sub_1004215F8(v39, v53, type metadata accessor for LeaderDevice);
            v41 = v35;
            v42 = v35;
            v43 = v54;
            sub_1004215F8(v42, v54, type metadata accessor for LeaderDevice);
            if (static DeviceVersion.== infix(_:_:)())
            {
              v44 = *(v56 + 20);
              v45 = static UUID.< infix(_:_:)();
            }

            else
            {
              v45 = static DeviceVersion.< infix(_:_:)();
            }

            v46 = v45;
            a3 += v55;
            sub_100421660(v43, type metadata accessor for LeaderDevice);
            sub_100421660(v40, type metadata accessor for LeaderDevice);
            if (v46)
            {
              break;
            }

            v32 = v39;
            v35 = v41;
            if (v38 < v34 || a3 >= v34)
            {
              swift_arrayInitWithTakeFrontToBack();
              v36 = v51;
            }

            else
            {
              v36 = v51;
              if (v38 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v39;
            v37 = v39 > v36;
            v33 = v55;
            a2 = v52;
            if (!v37)
            {
              goto LABEL_63;
            }
          }

          a2 = v41;
          if (v38 < v52 || a3 >= v52)
          {
            break;
          }

          v32 = v50;
          v47 = v51;
          v33 = v55;
          if (v38 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v47)
          {
            goto LABEL_63;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v32 = v50;
        v33 = v55;
        if (v34 > v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_63:
    v59 = a2;
    v57 = v32;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v23;
    v57 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v55 = v20;
      do
      {
        sub_1004215F8(a2, v18, type metadata accessor for LeaderDevice);
        sub_1004215F8(a4, v15, type metadata accessor for LeaderDevice);
        if (static DeviceVersion.== infix(_:_:)())
        {
          v27 = *(v56 + 20);
          v28 = static UUID.< infix(_:_:)();
        }

        else
        {
          v28 = static DeviceVersion.< infix(_:_:)();
        }

        v29 = v28;
        sub_100421660(v15, type metadata accessor for LeaderDevice);
        sub_100421660(v18, type metadata accessor for LeaderDevice);
        if (v29)
        {
          v30 = v55;
          if (a1 < a2 || a1 >= a2 + v55)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v30;
        }

        else
        {
          v30 = v55;
          v31 = a4 + v55;
          if (a1 < a4 || a1 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v31;
          a4 += v30;
        }

        a1 += v30;
        v59 = a1;
      }

      while (a4 < v25 && a2 < a3);
    }
  }

LABEL_65:
  sub_10060AA6C(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_1004215B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1004215F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100421660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1004216C8()
{
  result = qword_10169FA50;
  if (!qword_10169FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA50);
  }

  return result;
}

uint64_t sub_10042171C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100421794()
{
  result = qword_10169FA58;
  if (!qword_10169FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA58);
  }

  return result;
}

uint64_t sub_1004217E8(void *a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for Endianness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  if (a3 == 2)
  {
    if (a2)
    {
      v13 = 19;
    }

    else
    {
      v13 = 8;
    }
  }

  else if (a3 == 1)
  {
    v13 = 40;
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.convert(to:)();
  (*(v8 + 8))(v11, v7);
  v20 = v17[0];
  sub_10015049C(v18, v19);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v3)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v17[0] = a2;
        sub_10015049C(v18, v19);
        sub_100422224();
      }

      else
      {
        v14 = sub_10030FF74();
        v17[3] = &type metadata for AccessoryGenericPayload;
        v17[4] = v14;
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          sub_100422128();
          swift_allocError();
          *v16 = 0;
          swift_willThrow();
          return sub_100007BAC(v18);
        }

        sub_10015049C(v18, v19);
        sub_10030FB84();
      }
    }

    else
    {
      LOBYTE(v17[0]) = a2;
      sub_10015049C(v18, v19);
      sub_100422278();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v18);
}

char *sub_100421AB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100421E64(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100421B08(unsigned __int8 a1)
{
  if (a1 > 0x12u)
  {
    if (a1 != 19)
    {
      if (a1 == 40)
      {
        return 1;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1)
    {
      if (a1 == 8)
      {
        return 2;
      }

      return 4;
    }

    return 0;
  }
}

uint64_t sub_100421B58(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for OwnedBeaconGroup.Version(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100421B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100421BD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100421C14(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100421C3C(unsigned __int8 a1, uint64_t *a2)
{
  if (a1 > 1u)
  {
    sub_10030FF74();
    v4 = &type metadata for AccessoryGenericPayload;
  }

  else if (a1)
  {
    sub_10042217C();
    v4 = &type metadata for AirTagSoundStartPayload;
  }

  else
  {
    sub_1004221D0();
    v4 = &type metadata for AirTagCommandAckPayload;
  }

  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v4 == result)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        sub_10001F280(a2, v7);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          return 0;
        }
      }

      else
      {
        sub_10001F280(a2, v7);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          return 1;
        }
      }
    }

    else if (a1)
    {
      sub_10001F280(a2, v7);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        return v8;
      }
    }

    else
    {
      sub_10001F280(a2, v7);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        return v8;
      }
    }

    sub_100422128();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    return sub_100007BAC(a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100421E64(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v9 = sub_10015049C(v20, v20[3]);
  sub_1000198E8();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v1)
  {
    goto LABEL_15;
  }

  v21 = v18[0];
  static Endianness.current.getter();
  v9 = &v21;
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v7, v3);
  if (LOBYTE(v19[0]) > 0x12u)
  {
    if (LOBYTE(v19[0]) == 19)
    {
      v10 = &type metadata for AccessoryGenericPayload;
      v11 = 3;
      goto LABEL_12;
    }

    if (LOBYTE(v19[0]) == 40)
    {
      v10 = &type metadata for AirTagSoundStartPayload;
      v11 = 1;
      v12 = sub_10042217C();
LABEL_13:
      v14 = v12;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (LOBYTE(v19[0]))
  {
    if (LOBYTE(v19[0]) == 8)
    {
      v10 = &type metadata for AccessoryGenericPayload;
      v11 = 2;
LABEL_12:
      v12 = sub_10030FF74();
      goto LABEL_13;
    }

LABEL_9:
    sub_100422128();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
LABEL_15:
    sub_100007BAC(v20);
    sub_100007BAC(a1);
    return v9;
  }

  v10 = &type metadata for AirTagCommandAckPayload;
  v14 = sub_1004221D0();
  v11 = 0;
LABEL_14:
  sub_10001F280(a1, v18);
  v19[3] = v10;
  v19[4] = v14;
  sub_1000280DC(v19);
  v15 = *(v14 + 8);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v19, v18);
  v9 = sub_100421C3C(v11, v18);
  sub_100007BAC(v19);
  sub_100007BAC(v20);
  sub_100007BAC(a1);
  return v9;
}

unint64_t sub_100422128()
{
  result = qword_10169FA60;
  if (!qword_10169FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA60);
  }

  return result;
}

unint64_t sub_10042217C()
{
  result = qword_10169FA68;
  if (!qword_10169FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA68);
  }

  return result;
}

unint64_t sub_1004221D0()
{
  result = qword_10169FA70;
  if (!qword_10169FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA70);
  }

  return result;
}

unint64_t sub_100422224()
{
  result = qword_10169FA78;
  if (!qword_10169FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA78);
  }

  return result;
}

unint64_t sub_100422278()
{
  result = qword_10169FA80;
  if (!qword_10169FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA80);
  }

  return result;
}

unint64_t sub_1004222E0()
{
  result = qword_10169FA88;
  if (!qword_10169FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FA88);
  }

  return result;
}

void *sub_100422334(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = sub_1000BC488();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100422FB4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = 0;
  v11 = sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v1[5] = PassthroughSubject.init()();
  v14 = *(v11 + 48);
  v15 = *(v11 + 52);
  swift_allocObject();
  v1[6] = PassthroughSubject.init()();
  v1[7] = &_swiftEmptySetSingleton;
  v1[3] = v18;
  v19 = v1[5];
  sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880);
  v1[8] = Publisher.eraseToAnyPublisher()();
  return v1;
}

uint64_t sub_10042264C(uint64_t a1)
{
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - v5;
  v35 = &v34 - v5;
  v40 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v45 = *(v40 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v40);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_10169FBC8, &qword_1013A2748);
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v38 = &v34 - v13;
  v14 = sub_1000BC4D4(&qword_10169FBD0, &unk_1013A2750);
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v39 = &v34 - v17;
  v18 = v1[4];
  v1[4] = a1;

  v19 = v1[6];
  v37 = v1;
  v46 = v19;

  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  v47 = v1[2];
  v20 = v47;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  v36 = v20;
  sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  v34 = sub_1000BC488();
  sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880);
  sub_100422FB4(&qword_1016AF9C0, sub_1000BC488);
  v22 = v38;
  v23 = v35;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100422F3C(v23);
  v24 = *(v45 + 8);
  v45 += 8;
  v25 = v40;
  v24(v9, v40);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v26 = v36;
  v46 = v36;
  sub_1000041A4(&qword_10169FBD8, &qword_10169FBC8, &qword_1013A2748);
  v27 = v39;
  v28 = v41;
  Publisher.throttle<A>(for:scheduler:latest:)();

  v24(v9, v25);
  (*(v42 + 8))(v22, v28);
  v29 = swift_allocObject();
  v30 = v37;
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_100422FA4;
  *(v31 + 24) = v29;
  sub_1000041A4(&qword_10169FBE0, &qword_10169FBD0, &unk_1013A2750);
  v32 = v43;
  Publisher<>.sink(receiveValue:)();

  (*(v44 + 8))(v27, v32);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v46 = *(v30[3] + 24);
  swift_allocObject();
  swift_weakInit();

  sub_1000BC4D4(&qword_10169FBE8, &unk_1013A2760);
  sub_1000041A4(&qword_10169FBF0, &qword_10169FBE8, &unk_1013A2760);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100422C7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32))
    {
      v1 = *(result + 32);

      sub_10052F588();
    }
  }

  return result;
}

uint64_t sub_100422E28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100422E94()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  return v0;
}

uint64_t sub_100422EE4()
{
  sub_100422E94();

  return swift_deallocClassInstance();
}

uint64_t sub_100422F3C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100422FB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100422FFC(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v15 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v15, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v6, *(&v6 + 1));
    v14 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v14, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v13 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v13, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v12 = v1[4];
    v6 = v1[4];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v12, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v11 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = v1[5];
    v6 = v1[5];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[6];
    v6 = v1[6];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v6, *(&v6 + 1));
  return sub_100007BAC(v7);
}

__n128 sub_10042330C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100423A10(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_100423378@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v81 = result;
  v89 = a5;
  v90 = a6;
  v18 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_10;
    }

    v21 = *(a5 + 16);
    v20 = *(a5 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(a6);
    goto LABEL_10;
  }

  LODWORD(v19) = HIDWORD(a5) - a5;
  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v19 = v19;
LABEL_10:
  v23 = 60 - v19;
  if (__OFSUB__(60, v19))
  {
    __break(1u);
    goto LABEL_103;
  }

  sub_100017D5C(a5, a6);
  v87 = sub_100845C88(v23);
  v88 = v24;
  sub_100776394(&v87, 0);
  v25 = v87;
  v26 = v88;
  Data.append(_:)();
  result = sub_100016590(v25, v26);
  v87 = a7;
  v88 = a8;
  v27 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(a8);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_21;
  }

  v30 = *(a7 + 16);
  v29 = *(a7 + 24);
  v22 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v22)
  {
    __break(1u);
LABEL_18:
    LODWORD(v28) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v28 = v28;
  }

LABEL_21:
  v31 = 100 - v28;
  if (__OFSUB__(100, v28))
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_100017D5C(a7, a8);
  v85 = sub_100845C88(v31);
  v86 = v32;
  sub_100776394(&v85, 0);
  v33 = v85;
  v34 = v86;
  Data.append(_:)();
  result = sub_100016590(v33, v34);
  v36 = v89;
  v35 = v90;
  v37 = v88;
  v84 = v87;
  if (v27 <= 1)
  {
    if (!v27)
    {
      v38 = BYTE6(a8);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v27 != 2)
  {
    v38 = 0;
    goto LABEL_32;
  }

  v40 = *(a7 + 16);
  v39 = *(a7 + 24);
  v22 = __OFSUB__(v39, v40);
  v38 = v39 - v40;
  if (v22)
  {
    __break(1u);
LABEL_29:
    LODWORD(v38) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v38 = v38;
  }

LABEL_32:
  v85 = v38;
  sub_100017D5C(v36, v35);
  v41 = v37;
  sub_100017D5C(v84, v37);
  sub_1000C3258();
  v42 = FixedWidthInteger.data.getter();
  v44 = v43;
  v80 = Data.trimmed.getter();
  v82 = v45;
  sub_100016590(a7, a8);
  sub_100016590(a5, a6);
  result = sub_100016590(v42, v44);
  v46 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v47 = a3;
    if (v46 != 2)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v51 = *(v81 + 16);
    v50 = *(v81 + 24);
    v22 = __OFSUB__(v50, v51);
    v49 = v50 - v51;
    if (!v22)
    {
      v48 = v41;
      goto LABEL_40;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v47 = a3;
  v48 = v41;
  if (!v46)
  {
    v49 = BYTE6(a2);
    goto LABEL_40;
  }

  LODWORD(v49) = HIDWORD(v81) - v81;
  if (__OFSUB__(HIDWORD(v81), v81))
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v49 = v49;
LABEL_40:
  if (v49 != 114)
  {
    goto LABEL_115;
  }

  v52 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v52)
    {
      v53 = BYTE6(a4);
      goto LABEL_50;
    }

LABEL_48:
    LODWORD(v53) = HIDWORD(v47) - v47;
    if (!__OFSUB__(HIDWORD(v47), v47))
    {
      v53 = v53;
      goto LABEL_50;
    }

LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v52 != 2)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v55 = *(v47 + 16);
  v54 = *(v47 + 24);
  v22 = __OFSUB__(v54, v55);
  v53 = v54 - v55;
  if (v22)
  {
    __break(1u);
    goto LABEL_48;
  }

LABEL_50:
  if (v53 != 32)
  {
    goto LABEL_116;
  }

  v56 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (!v56)
    {
      v57 = BYTE6(v48);
      goto LABEL_60;
    }

LABEL_58:
    LODWORD(v57) = HIDWORD(v84) - v84;
    if (!__OFSUB__(HIDWORD(v84), v84))
    {
      v57 = v57;
      goto LABEL_60;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v56 != 2)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v59 = *(v84 + 16);
  v58 = *(v84 + 24);
  v22 = __OFSUB__(v58, v59);
  v57 = v58 - v59;
  if (v22)
  {
    __break(1u);
    goto LABEL_58;
  }

LABEL_60:
  if (v57 != 100)
  {
    goto LABEL_117;
  }

  v60 = v82 >> 62;
  if ((v82 >> 62) <= 1)
  {
    if (!v60)
    {
      v61 = BYTE6(v82);
      goto LABEL_70;
    }

LABEL_68:
    LODWORD(v61) = HIDWORD(v80) - v80;
    if (!__OFSUB__(HIDWORD(v80), v80))
    {
      v61 = v61;
      goto LABEL_70;
    }

LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v60 != 2)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v63 = *(v80 + 16);
  v62 = *(v80 + 24);
  v22 = __OFSUB__(v62, v63);
  v61 = v62 - v63;
  if (v22)
  {
    __break(1u);
    goto LABEL_68;
  }

LABEL_70:
  if (v61 != 1)
  {
    goto LABEL_118;
  }

  v64 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v64)
    {
      v65 = BYTE6(v35);
      goto LABEL_80;
    }

LABEL_78:
    LODWORD(v65) = HIDWORD(v36) - v36;
    if (!__OFSUB__(HIDWORD(v36), v36))
    {
      v65 = v65;
      goto LABEL_80;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (v64 != 2)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v67 = *(v36 + 16);
  v66 = *(v36 + 24);
  v22 = __OFSUB__(v66, v67);
  v65 = v66 - v67;
  if (v22)
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_80:
  if (v65 != 60)
  {
    goto LABEL_119;
  }

  v68 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v68)
    {
      v69 = BYTE6(a11);
      goto LABEL_90;
    }

LABEL_88:
    LODWORD(v69) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      v69 = v69;
      goto LABEL_90;
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v68 != 2)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v71 = *(a10 + 16);
  v70 = *(a10 + 24);
  v22 = __OFSUB__(v70, v71);
  v69 = v70 - v71;
  if (v22)
  {
    __break(1u);
    goto LABEL_88;
  }

LABEL_90:
  if (v69 != 8)
  {
    goto LABEL_120;
  }

  v72 = a13 >> 62;
  if ((a13 >> 62) <= 1)
  {
    if (!v72)
    {
      v73 = BYTE6(a13);
      goto LABEL_100;
    }

LABEL_98:
    LODWORD(v73) = HIDWORD(a12) - a12;
    if (!__OFSUB__(HIDWORD(a12), a12))
    {
      v73 = v73;
      goto LABEL_100;
    }

    goto LABEL_111;
  }

  if (v72 != 2)
  {
    goto LABEL_121;
  }

  v75 = *(a12 + 16);
  v74 = *(a12 + 24);
  v22 = __OFSUB__(v74, v75);
  v73 = v74 - v75;
  if (v22)
  {
    __break(1u);
    goto LABEL_98;
  }

LABEL_100:
  if (v73 == 24)
  {
    sub_100016590(v84, v41);
    result = sub_100016590(v36, v35);
    *a9 = v81;
    *(a9 + 8) = a2;
    *&v76 = v36;
    *(&v76 + 1) = v35;
    *(a9 + 16) = v47;
    *(a9 + 24) = a4;
    *&v77 = v84;
    *(&v77 + 1) = v41;
    *(a9 + 32) = v76;
    *(a9 + 48) = v77;
    *(a9 + 64) = v80;
    *(a9 + 72) = v82;
    *(a9 + 80) = a10;
    *(a9 + 88) = a11;
    *(a9 + 96) = a12;
    *(a9 + 104) = a13;
    return result;
  }

LABEL_121:
  __break(1u);
  return result;
}

uint64_t sub_1004238BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 112))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100423910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10042398C(uint64_t a1)
{
  *(a1 + 8) = sub_1004239BC();
  result = sub_1003929A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1004239BC()
{
  result = qword_10169FBF8;
  if (!qword_10169FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FBF8);
  }

  return result;
}

uint64_t sub_100423A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v77, v78);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v77);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v77, v78);
  v74 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v79 = v10;
  sub_10015049C(v77, v78);
  v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v73 = v12;
  sub_10015049C(v77, v78);
  v13 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v71 = v14;
  v72 = v13;
  sub_100017D5C(v11, v73);
  sub_1000E0A3C();
  v15 = DataProtocol.intValue.getter();
  sub_10002EA98(v15, v11, v73, v76);
  v69 = v76[0];
  v70 = v76[1];
  sub_10015049C(v77, v78);
  v67 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v68 = v16;
  sub_10015049C(v77, v78);
  v65 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v66 = v17;
  sub_10015049C(v77, v78);
  v19 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v21 = v20;
  result = sub_100016590(v11, v73);
  v22 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    v23 = v79;
    v24 = v72;
    v25 = v67;
    v26 = v68;
    v27 = v66;
    if (!v22)
    {
      v28 = BYTE6(v9);
LABEL_14:
      v30 = v74;
      v32 = v70;
      v31 = v71;
      v33 = v69;
      goto LABEL_15;
    }

LABEL_12:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
      goto LABEL_78;
    }

    v28 = HIDWORD(v8) - v8;
    goto LABEL_14;
  }

  v29 = v22 == 2;
  v23 = v79;
  v30 = v74;
  v31 = v71;
  v24 = v72;
  v25 = v67;
  v26 = v68;
  v33 = v69;
  v32 = v70;
  v27 = v66;
  if (!v29)
  {
    goto LABEL_84;
  }

  v35 = *(v8 + 16);
  v34 = *(v8 + 24);
  v36 = __OFSUB__(v34, v35);
  v28 = v34 - v35;
  if (v36)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  if (v28 != 114)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v37 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v37)
    {
      v38 = BYTE6(v23);
      goto LABEL_25;
    }

LABEL_23:
    LODWORD(v38) = HIDWORD(v30) - v30;
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v38 = v38;
      goto LABEL_25;
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v37 != 2)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v40 = *(v30 + 16);
  v39 = *(v30 + 24);
  v36 = __OFSUB__(v39, v40);
  v38 = v39 - v40;
  if (v36)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  if (v38 != 32)
  {
    goto LABEL_85;
  }

  v41 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v41)
    {
      v42 = BYTE6(v32);
      goto LABEL_35;
    }

LABEL_33:
    LODWORD(v42) = HIDWORD(v33) - v33;
    if (!__OFSUB__(HIDWORD(v33), v33))
    {
      v42 = v42;
      goto LABEL_35;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v41 != 2)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v44 = *(v33 + 16);
  v43 = *(v33 + 24);
  v36 = __OFSUB__(v43, v44);
  v42 = v43 - v44;
  if (v36)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  if (v42 != 100)
  {
    goto LABEL_86;
  }

  v45 = v31 >> 62;
  if ((v31 >> 62) <= 1)
  {
    if (!v45)
    {
      v46 = BYTE6(v31);
      goto LABEL_45;
    }

LABEL_43:
    LODWORD(v46) = HIDWORD(v24) - v24;
    if (!__OFSUB__(HIDWORD(v24), v24))
    {
      v46 = v46;
      goto LABEL_45;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v45 != 2)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v48 = *(v24 + 16);
  v47 = *(v24 + 24);
  v36 = __OFSUB__(v47, v48);
  v46 = v47 - v48;
  if (v36)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_45:
  if (v46 != 1)
  {
    goto LABEL_87;
  }

  v49 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v49)
    {
      v50 = BYTE6(v26);
      goto LABEL_55;
    }

LABEL_53:
    LODWORD(v50) = HIDWORD(v25) - v25;
    if (!__OFSUB__(HIDWORD(v25), v25))
    {
      v50 = v50;
      goto LABEL_55;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v49 != 2)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v52 = *(v25 + 16);
  v51 = *(v25 + 24);
  v36 = __OFSUB__(v51, v52);
  v50 = v51 - v52;
  if (v36)
  {
    __break(1u);
    goto LABEL_53;
  }

LABEL_55:
  if (v50 != 60)
  {
    goto LABEL_88;
  }

  v53 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v53)
    {
      v54 = BYTE6(v27);
      goto LABEL_65;
    }

LABEL_63:
    LODWORD(v54) = HIDWORD(v65) - v65;
    if (!__OFSUB__(HIDWORD(v65), v65))
    {
      v54 = v54;
      goto LABEL_65;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v53 != 2)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v56 = *(v65 + 16);
  v55 = *(v65 + 24);
  v36 = __OFSUB__(v55, v56);
  v54 = v55 - v56;
  if (v36)
  {
    __break(1u);
    goto LABEL_63;
  }

LABEL_65:
  if (v54 != 8)
  {
    goto LABEL_89;
  }

  v57 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v57)
    {
      v58 = BYTE6(v21);
      goto LABEL_75;
    }

LABEL_73:
    LODWORD(v58) = HIDWORD(v19) - v19;
    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      v58 = v58;
      goto LABEL_75;
    }

    goto LABEL_83;
  }

  if (v57 != 2)
  {
    goto LABEL_90;
  }

  v60 = *(v19 + 16);
  v59 = *(v19 + 24);
  v36 = __OFSUB__(v59, v60);
  v58 = v59 - v60;
  if (v36)
  {
    __break(1u);
    goto LABEL_73;
  }

LABEL_75:
  if (v58 == 24)
  {
    v79 = v21;
    v61 = v30;
    v62 = v25;
    v75 = v19;
    v63 = v23;
    sub_100007BAC(v77);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v61;
    a2[3] = v63;
    a2[4] = v62;
    a2[5] = v26;
    a2[6] = v69;
    a2[7] = v70;
    a2[8] = v72;
    a2[9] = v71;
    a2[10] = v65;
    a2[11] = v66;
    v64 = v79;
    a2[12] = v75;
    a2[13] = v64;
    return result;
  }

LABEL_90:
  __break(1u);
  return result;
}

void sub_100423F90()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100424014();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100424014()
{
  if (!qword_10169FC68)
  {
    type metadata accessor for UUID();
    sub_100424078();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10169FC68);
    }
  }
}

unint64_t sub_100424078()
{
  result = qword_1016967B0;
  if (!qword_1016967B0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016967B0);
  }

  return result;
}

uint64_t sub_1004240DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 960) = a8;
  *(v8 + 952) = a7;
  *(v8 + 944) = a6;
  *(v8 + 1008) = a5;
  *(v8 + 936) = a4;
  *(v8 + 928) = a3;
  *(v8 + 920) = a2;
  *(v8 + 912) = a1;
  return _swift_task_switch(sub_100424118, 0, 0);
}

uint64_t sub_100424118()
{
  v1 = *(v0 + 928);
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B810);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Missing primary root key!", v6, 2u);
    }

    sub_100429B28();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
LABEL_8:
    v19 = *(v0 + 8);

    return v19();
  }

  v8 = *v1;
  v9 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v11 = v1[5];
  v13 = *(v0 + 952);
  v14 = *(v0 + 944);
  v15 = *(v0 + 920);
  sub_100429B7C(v1, v0 + 808);
  v16 = sub_1009C475C(v15, v14, v13);
  *(v0 + 968) = v16;
  *(v0 + 976) = v17;
  *(v0 + 984) = v18;
  v21 = v16;
  v22 = v18;
  v53 = v10;
  v23 = v17;
  v52 = v11;
  v55 = v12;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v57 = v8;
  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177B810);
  v25 = v22;
  sub_100429BEC(v21, v23, v22);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v58 = v23;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v28;
    *v28 = 134217984;
    if (v25 >> 60 == 15)
    {
      v30 = 0;
    }

    else
    {
      v30 = v21;
    }

    *(v28 + 4) = v30;
    sub_100429C08(v21, v23, v25);
    _os_log_impl(&_mh_execute_header, v26, v27, "Found keyGenerationHint %llu", v29, 0xCu);
  }

  else
  {
    sub_100429C08(v21, v23, v25);
  }

  v31 = *(v0 + 1008);

  if (v31)
  {
    v32 = *(v0 + 936);
    v33 = v32[1];
    if (v33 >> 60 == 15)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Missing secondary root key!", v36, 2u);
      }

      v37 = *(v0 + 928);

      sub_100429B28();
      swift_allocError();
      *v38 = 4;
      swift_willThrow();
      sub_100429C08(v21, v58, v25);
      sub_10000B3A8(v37, &qword_10169FCA8, &qword_1013A2B88);
      goto LABEL_8;
    }

    v56 = *(v0 + 944);
    v40 = v32[4];
    v54 = v32[5];
    v41 = v32[2];
    v42 = v32[3];
    v43 = *v32;
    sub_100429BEC(v21, v58, v25);
    sub_100429B7C(v32, v0 + 856);
    sub_100017D5C(v41, v42);
    sub_100017D5C(v43, v33);
    sub_100017D5C(v40, v54);
    sub_10099B5CC(v41, v42, v43, v33, v40, v54, v21, v58, v0 + 16, v25, v56);
    sub_10000B3A8(*(v0 + 936), &qword_10169FCA8, &qword_1013A2B88);
    v39 = v0 + 16;
  }

  else
  {
    v39 = v0 + 88;
    v51 = *(v0 + 944);
    sub_100429BEC(v21, v23, v25);
    sub_100017D5C(v9, v53);
    sub_100017D5C(v57, v2);
    sub_100017D5C(v55, v52);
    sub_10099B5CC(v9, v53, v57, v2, v55, v52, v21, v23, v0 + 88, v25, v51);
  }

  v44 = *(v39 + 64);
  v45 = *(v39 + 16);
  v46 = *(v39 + 32);
  v47 = *(v39 + 48);
  *(v0 + 160) = *v39;
  *(v0 + 176) = v45;
  *(v0 + 192) = v46;
  *(v0 + 208) = v47;
  *(v0 + 224) = v44;
  *(v0 + 296) = v44;
  v48 = *(v0 + 192);
  *(v0 + 248) = *(v0 + 176);
  v49 = *(v0 + 208);
  *(v0 + 264) = v48;
  *(v0 + 280) = v49;
  *(v0 + 232) = *(v0 + 160);
  sub_100429C24(v0 + 160, v0 + 376);
  v50 = swift_task_alloc();
  *(v0 + 992) = v50;
  *v50 = v0;
  v50[1] = sub_1004247B0;

  return sub_100864B9C(v0 + 304, 0);
}

uint64_t sub_1004247B0()
{
  v2 = *(*v1 + 992);
  v4 = *v1;
  *(*v1 + 1000) = v0;

  if (!v0)
  {

    return _swift_task_switch(sub_1004248C4, 0, 0);
  }

  return result;
}

void sub_1004248C4()
{
  v1 = v0 + 160;
  v2 = (v0 + 232);
  v3 = *(v0 + 320);
  *(v0 + 448) = *(v0 + 304);
  *(v0 + 464) = v3;
  v4 = *(v0 + 352);
  *(v0 + 480) = *(v0 + 336);
  *(v0 + 496) = v4;
  v5 = *(v0 + 368);
  *(v0 + 512) = v5;
  v6 = *(v0 + 464);
  if (v6 >> 60 == 15)
  {
    v7 = *(v0 + 984);
    v8 = *(v0 + 976);
    v9 = *(v0 + 968);
    v10 = *(v0 + 928);
    v11 = *(v0 + 280);
    *(v0 + 552) = *(v0 + 264);
    *(v0 + 568) = v11;
    *(v0 + 584) = *(v0 + 296);
    v12 = *(v0 + 248);
    *(v0 + 520) = *v2;
    *(v0 + 536) = v12;
    sub_100429C80(v0 + 520);
    sub_100429C08(v9, v8, v7);
    sub_10000B3A8(v10, &qword_10169FCA8, &qword_1013A2B88);
    sub_100429C80(v0 + 160);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = 0;
    v17 = 0xF000000000000000;
LABEL_14:
    v38 = *(v0 + 912);
    *v38 = v13;
    v38[1] = v14;
    v38[2] = v15;
    v38[3] = v17;
    v38[4] = v16;
    v38[5] = v5;
    v30 = *(v0 + 8);
    goto LABEL_15;
  }

  v18 = *(v0 + 448);
  v19 = *(v0 + 984);
  v20 = *(v0 + 968);
  if (v19 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v0 + 968);
  }

  v22 = v18 >= v21;
  v23 = v18 - v21;
  if (!v22)
  {
    __break(1u);
    return;
  }

  v45 = *(v0 + 480);
  v46 = *(v0 + 472);
  v17 = *(v0 + 496);
  v43 = *(v0 + 504);
  v44 = *(v0 + 488);
  if (v23 <= *(v0 + 960))
  {
    v31 = *(v0 + 976);
    v32 = *(v0 + 928);
    v33 = *(v0 + 280);
    *(v0 + 624) = *(v0 + 264);
    *(v0 + 640) = v33;
    *(v0 + 656) = *(v0 + 296);
    v34 = *(v0 + 248);
    *(v0 + 592) = *v2;
    *(v0 + 608) = v34;
    sub_100429C80(v0 + 592);
    sub_10000B3A8(v32, &qword_10169FCA8, &qword_1013A2B88);
    sub_100429C08(v20, v31, v19);
LABEL_13:
    sub_100429C80(v1);
    v14 = v45;
    v13 = v46;
    sub_10002E98C(v46, v45);
    v15 = v44;
    sub_100017D5C(v44, v17);
    v16 = v43;
    sub_10002E98C(v43, v5);
    sub_10000B3A8(v0 + 448, &qword_10169FCB0, &qword_1013A2B90);
    goto LABEL_14;
  }

  v24 = *(v0 + 456);
  v41 = *(v0 + 952);
  v42 = *(v0 + 1000);
  v40 = *(v0 + 1008);
  v39 = *(v0 + 920);
  sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  *(v25 + 32) = v18;
  v26 = v25 + 32;
  *(v25 + 40) = v24;
  *(v25 + 48) = v6;
  sub_100017D5C(v24, v6);
  sub_1009BF638(v39, v40 & 1, v25, v41);
  if (!v42)
  {
    v35 = *(v0 + 928);
    sub_100429C08(*(v0 + 968), *(v0 + 976), *(v0 + 984));
    sub_100429C80(v0 + 160);
    swift_setDeallocating();
    sub_100429CD4(v26);
    swift_deallocClassInstance();
    sub_10000B3A8(v35, &qword_10169FCA8, &qword_1013A2B88);
    v36 = *(v0 + 280);
    *(v0 + 768) = *(v0 + 264);
    *(v0 + 784) = v36;
    *(v0 + 800) = *(v0 + 296);
    v37 = *(v0 + 248);
    *(v0 + 736) = *v2;
    *(v0 + 752) = v37;
    v1 = v0 + 736;
    goto LABEL_13;
  }

  v27 = *(v0 + 928);
  sub_100429C08(*(v0 + 968), *(v0 + 976), *(v0 + 984));
  sub_100429C80(v0 + 160);
  swift_setDeallocating();
  sub_100429CD4(v26);
  swift_deallocClassInstance();
  sub_10000B3A8(v0 + 448, &qword_10169FCB0, &qword_1013A2B90);
  sub_10000B3A8(v27, &qword_10169FCA8, &qword_1013A2B88);
  v28 = *(v0 + 280);
  *(v0 + 696) = *(v0 + 264);
  *(v0 + 712) = v28;
  *(v0 + 728) = *(v0 + 296);
  v29 = *(v0 + 248);
  *(v0 + 664) = *v2;
  *(v0 + 680) = v29;
  sub_100429C80(v0 + 664);
  v30 = *(v0 + 8);
LABEL_15:

  v30();
}

uint64_t sub_100424C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a2;
  *(v8 + 128) = a6;
  *(v8 + 168) = a5;
  *(v8 + 112) = a1;
  v16 = type metadata accessor for BeaconIdentifier();
  *(v8 + 136) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v8 + 160) = v18;
  *v18 = v8;
  v18[1] = sub_100424DA8;

  return sub_1004240DC(v8 + 64, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_100424DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
    v6 = *(v2 + 144);
    v5 = *(v2 + 152);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100424EFC, 0, 0);
  }
}

uint64_t sub_100424EFC()
{
  v75 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 72);
  if (v3 >> 60 == 15)
  {
    sub_10000B3A8(v0 + 64, &qword_10169FCA0, &unk_1013B32F0);
LABEL_4:
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B810);
    sub_100429A68(v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    if (v9)
    {
      v11 = *(v0 + 136);
      v12 = *(v0 + 168);
      v13 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v13 = 136446723;
      if (v12)
      {
        v14 = 0x61646E6F6365732ELL;
      }

      else
      {
        v14 = 0x7972616D6972702ELL;
      }

      if (v12)
      {
        v15 = 0xEA00000000007972;
      }

      else
      {
        v15 = 0xE800000000000000;
      }

      v16 = sub_1000136BC(v14, v15, &v72);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v17;
      v18._countAndFlagsBits = 47;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = v10 + *(v11 + 20);
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v21 = v73;
      v22 = v74;
      sub_100429ACC(v10);
      v23 = sub_1000136BC(v21, v22, &v72);

      *(v13 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to generate %{public}s key for %{private,mask.hash}s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100429ACC(v10);
    }

    sub_100429B28();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);

    v27 = *(v0 + 8);
    goto LABEL_22;
  }

  v28 = *(v0 + 80);
  v29 = *(v0 + 128);
  v30 = *(v0 + 168) & 1;
  sub_100017D5C(*(v0 + 64), *(v0 + 72));
  v31 = PublicKey.advertisement.getter(v28, v2);
  sub_10002EA98(6, v31, v32, &v73);
  v33 = v73;
  v34 = v74;
  v71 = v1;
  v35 = sub_100497AF4(v1, v3);
  v37 = v36;
  *(v0 + 16) = v30;
  *(v0 + 24) = v29;
  *(v0 + 32) = v33;
  v38 = v33;
  *(v0 + 40) = v34;
  *(v0 + 48) = v35;
  *(v0 + 56) = v36;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 152);
  v40 = *(v0 + 120);
  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177B810);
  sub_100429A68(v40, v39);
  sub_100017D5C(v38, v34);
  sub_100017D5C(v35, v37);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  sub_100016590(v38, v34);
  sub_100016590(v35, v37);
  v44 = os_log_type_enabled(v42, v43);
  v70 = *(v0 + 152);
  if (v44)
  {
    log = v42;
    v66 = *(v0 + 136);
    v67 = v43;
    v45 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v45 = 136315394;
    sub_100017D5C(v38, v34);
    sub_100017D5C(v35, v37);
    v46 = sub_101108448();
    v47 = v38;
    v68 = v38;
    v49 = v48;
    sub_100016590(v47, v34);
    sub_100016590(v35, v37);
    v50 = sub_1000136BC(v46, v49, &v72);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v51;
    v52._countAndFlagsBits = 47;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    v53 = v70 + *(v66 + 20);
    v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v54);

    v55 = v73;
    v56 = v74;
    sub_100429ACC(v70);
    v57 = sub_1000136BC(v55, v56, &v72);

    *(v45 + 14) = v57;
    _os_log_impl(&_mh_execute_header, log, v67, "managedKey %s for beacon %s", v45, 0x16u);
    swift_arrayDestroy();

    v58 = v3;
    v59 = v68;
    sub_100006654(v71, v58);

    sub_10000B3A8(v0 + 64, &qword_10169FCA0, &unk_1013B32F0);
  }

  else
  {
    sub_10000B3A8(v0 + 64, &qword_10169FCA0, &unk_1013B32F0);
    sub_100006654(v71, v3);

    sub_100429ACC(v70);
    v59 = v38;
  }

  v61 = *(v0 + 144);
  v60 = *(v0 + 152);
  v62 = *(v0 + 128);
  v63 = *(v0 + 112);
  v64 = *(v0 + 168) & 1;

  *v63 = v64;
  *(v63 + 8) = v62;
  *(v63 + 16) = v59;
  *(v63 + 24) = v34;
  *(v63 + 32) = v35;
  *(v63 + 40) = v37;
  v27 = *(v0 + 8);
LABEL_22:

  return v27();
}

uint64_t sub_100425600(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 840) = a7;
  *(v7 + 832) = a6;
  *(v7 + 1254) = a5;
  *(v7 + 824) = a4;
  *(v7 + 1253) = a3;
  *(v7 + 816) = a2;
  *(v7 + 808) = a1;
  v8 = a2[1];
  *(v7 + 848) = *a2;
  *(v7 + 864) = v8;
  *(v7 + 880) = a2[2];
  v9 = type metadata accessor for BeaconIdentifier();
  *(v7 + 896) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 904) = swift_task_alloc();
  *(v7 + 912) = swift_task_alloc();
  v11 = type metadata accessor for Connection.TransactionMode();
  *(v7 + 920) = v11;
  v12 = *(v11 - 8);
  *(v7 + 928) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 936) = swift_task_alloc();

  return _swift_task_switch(sub_100425724, 0, 0);
}

uint64_t sub_100425724()
{
  v1 = *(v0 + 856);
  if (v1 >> 60 == 15)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177B810);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing primary root key!", v5, 2u);
    }

    sub_100429B28();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
LABEL_22:
    v34 = *(v0 + 936);
    v35 = *(v0 + 912);
    v36 = *(v0 + 904);

    v37 = *(v0 + 8);

    return v37();
  }

  v7 = *(v0 + 824);
  if (*(v0 + 1253))
  {
    if (!v7)
    {
      v24 = *(v0 + 888);
      v25 = *(v0 + 880);
      v26 = *(v0 + 872);
      v27 = *(v0 + 864);
      sub_100017D5C(*(v0 + 848), v1);
      sub_100017D5C(v27, v26);
      sub_100017D5C(v25, v24);
      if (qword_101694B98 == -1)
      {
LABEL_19:
        v28 = type metadata accessor for Logger();
        sub_1000076D4(v28, qword_10177B810);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Secondary index should never be 0!", v31, 2u);
        }

        v32 = *(v0 + 816);

        sub_100429B28();
        swift_allocError();
        *v33 = 2;
        swift_willThrow();
        sub_10000B3A8(v32, &qword_10169FCA8, &qword_1013A2B88);
        goto LABEL_22;
      }

LABEL_33:
      swift_once();
      goto LABEL_19;
    }

    if (is_mul_ok(v7, 0x60uLL))
    {
      v8 = 96 * v7 - 96;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      if (96 * v7 - 1 >= v8)
      {
        v9 = v7 + 1;
        if (is_mul_ok(v7 + 1, 0x60uLL))
        {
          v10 = 96 * v9;
          v11 = 96 * v9 - 1;
          if (v11 >= v10 - 96)
          {
            v7 = v8;
            goto LABEL_17;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = v7 + 96;
  if (v7 >= 0xFFFFFFFFFFFFFFA0)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_17:
  *(v0 + 944) = v11;
  v12 = *(v0 + 832);
  v13 = *(v0 + 808);
  sub_100429B7C(*(v0 + 816), v0 + 576);
  v14 = sub_1009C475C(v13, v7, v12);
  *(v0 + 952) = v14;
  *(v0 + 960) = v15;
  *(v0 + 968) = v16;
  v17 = v14;
  v18 = v15;
  v19 = v16;
  v20 = *(v0 + 888);
  v21 = *(v0 + 880);
  v41 = *(v0 + 864);
  v42 = *(v0 + 872);
  v22 = *(v0 + 856);
  v23 = *(v0 + 848);
  sub_100017D5C(v41, v42);
  sub_100017D5C(v23, v22);
  sub_100017D5C(v21, v20);
  sub_100429BEC(v17, v18, v19);
  sub_10099B5CC(v41, v42, v23, v22, v21, v20, v17, v18, v0 + 16, v19, v7);
  *(v0 + 976) = 0;
  v39 = *(v0 + 32);
  *(v0 + 984) = *(v0 + 16);
  *(v0 + 1000) = v39;
  v40 = *(v0 + 64);
  *(v0 + 624) = *(v0 + 48);
  *(v0 + 1016) = v40;
  *(v0 + 1032) = *(v0 + 80);
  sub_100429C24(v0 + 16, v0 + 88);

  return _swift_task_switch(sub_100425BE4, 0, 0);
}

uint64_t sub_100425BE4()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1016);
    *(v0 + 1200) = *(v0 + 1024);
    *(v0 + 1192) = v1;
    *(v0 + 1184) = _swiftEmptyArrayStorage;
    v2 = sub_100427B68;
  }

  else
  {
    if (*(v0 + 968) >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(v0 + 952);
    }

    *(v0 + 1248) = enum case for Connection.TransactionMode.deferred(_:);
    v4 = *(v0 + 1032);
    v5 = *(v0 + 1024);
    v6 = *(v0 + 1016);
    v7 = *(v0 + 976);
    *(v0 + 1040) = _swiftEmptyArrayStorage;
    *(v0 + 1072) = v6;
    *(v0 + 1064) = v5;
    *(v0 + 1056) = v4;
    *(v0 + 1048) = v3;
    v8 = *(v0 + 1000);
    *(v0 + 160) = *(v0 + 984);
    *(v0 + 176) = v8;
    *(v0 + 192) = *(v0 + 624);
    *(v0 + 208) = v6;
    *(v0 + 216) = v5;
    *(v0 + 224) = v4;
    sub_100429C24(v0 + 160, v0 + 232);
    sub_100017D5C(v5, v4);
    sub_100017D5C(v5, v4);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 640) = 0x7365547265646E75;
    *(v0 + 648) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v9 = sub_100A7563C(v5, v4, 1);
    *(v0 + 1080) = v9;
    *(v0 + 1088) = v10;
    if (v7)
    {
      sub_100016590(v5, v4);
      sub_100016590(v5, v4);
      sub_100429C80(v0 + 160);
      *(v0 + 1176) = v4;
      *(v0 + 1168) = v5;
      *(v0 + 1160) = v6;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_101385D80;
      v25 = _convertErrorToNSError(_:)();
      *(v24 + 56) = sub_1003289A8();
      *(v24 + 64) = sub_100429D28(&qword_1016BC310, sub_1003289A8);
      *(v24 + 32) = v25;
      os_log(_:dso:log:_:_:)();

      v2 = sub_1004274B8;
    }

    else
    {
      v11 = v9;
      v12 = v10;
      v13 = String.utf8Data.getter();
      v15 = v14;
      v16 = sub_100A79CBC(v11, v12, v13, v14, 72);
      sub_100495DF4(v16, v17, (v0 + 656));
      v61 = *(v0 + 992);
      sub_100016590(v13, v15);
      v66 = *(v0 + 664);
      v65 = *(v0 + 656);
      if (v61 >> 60 == 15)
      {
        v18 = *(v0 + 1008);
        v19 = *(v0 + 1000);
        sub_100017D5C(*(v0 + 656), v66);
        v20 = sub_100A7A194(v19, v18);
        v63 = sub_100A7A73C(v20, 0, v65, v66);
        CCECCryptorRelease();
        sub_100016590(v65, v66);
        v28 = sub_100A7829C(v63, 0);
        v30 = v29;
        sub_100017D5C(v28, v29);
        v31 = sub_10049C0AC(v28, v30);
        v55 = v34;
        v56 = v31;
        CCECCryptorRelease();
        v35 = sub_100016590(v28, v30);
        v38 = *(v0 + 992);
        v39 = *(v0 + 984);
      }

      else
      {
        v62 = *(v0 + 992);
        v21 = *(v0 + 984);
        v22 = *(v0 + 656);
        sub_10002E98C(v21, v62);
        sub_100017D5C(v22, v66);
        v23 = sub_100A7A194(v21, v62);
        v26 = sub_100A7A73C(v23, 1, v65, v66);
        CCECCryptorRelease();
        sub_100016590(v65, v66);
        v27 = sub_100A7829C(v26, 1);
        v33 = v32;
        v64 = v27;
        v53 = sub_100A7829C(v26, 0);
        v54 = v45;
        sub_100017D5C(v64, v33);
        v58 = sub_10049BD68(v64, v33);
        v60 = v46;
        sub_100017D5C(v53, v54);
        v47 = sub_10049C0AC(v53, v54);
        v55 = v48;
        v56 = v47;
        v49 = *(v0 + 984);
        v51 = v49;
        v52 = *(v0 + 992);
        CCECCryptorRelease();
        sub_100016590(v53, v54);
        sub_100016590(v64, v33);
        v35 = sub_100006654(v51, v52);
        v39 = v58;
        v38 = v60;
      }

      v57 = v39;
      v59 = v38;
      *(v0 + 1104) = v38;
      *(v0 + 1096) = v39;
      *(v0 + 1112) = v55;
      *(v0 + 1120) = v56;
      *(v0 + 1128) = v6 + 1;
      if (v6 == -1)
      {
        __break(1u);
        return _swift_task_switch(v35, v36, v37);
      }

      sub_100017D5C(v11, v12);
      sub_100016590(v5, v4);
      v40 = String.utf8Data.getter();
      v42 = v41;
      v43 = sub_100A79CBC(v11, v12, v40, v41, 32);
      sub_1004A4714(v43, v44, (v0 + 672));
      *(v0 + 1136) = 0;
      sub_100016590(v40, v42);
      *(v0 + 1144) = *(v0 + 672);
      sub_100017D5C(v56, v55);
      sub_10002E98C(v57, v59);
      sub_100006654(v57, v59);
      sub_100016590(v56, v55);
      sub_100016590(v11, v12);
      sub_100016590(v65, v66);
      sub_100429C80(v0 + 160);
      sub_100016590(v5, v4);
      v2 = sub_100426428;
    }
  }

  v35 = v2;
  v36 = 0;
  v37 = 0;

  return _swift_task_switch(v35, v36, v37);
}

uint64_t sub_100426428()
{
  v185 = v0;
  v2 = (v0 + 984);
  v3 = *(v0 + 1072);
  if (v3 >= *(v0 + 944))
  {
    v25 = *(v0 + 1152);
    v26 = *(v0 + 1144);
    v27 = *(v0 + 1128);
    v28 = *(v0 + 1120);
    v29 = *(v0 + 1112);
    v30 = *(v0 + 1104);
    v31 = *(v0 + 1096);
    v32 = *(v0 + 1064);
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1008);
    *(v0 + 376) = *(v0 + 984);
    *(v0 + 384) = *(v0 + 992);
    *(v0 + 400) = v34;
    *(v0 + 408) = *(v0 + 624);
    *(v0 + 424) = v27;
    *(v0 + 432) = *(v0 + 1080);
    sub_100429C80(v0 + 376);
    sub_100016590(v32, v33);
    sub_100006654(v26, v25);
    sub_100016590(v28, v29);
    sub_100006654(v31, v30);
    v1 = *(v0 + 1040);
    p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
    if (!*(v1 + 16))
    {
      v36 = *(v0 + 1254);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_101385D80;
      *(v37 + 56) = &type metadata for UInt8;
      *(v37 + 64) = &protocol witness table for UInt8;
      *(v37 + 32) = v36;
      v38 = String.init(format:_:)();
      v40 = v39;
      if (qword_101694B98 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 912);
      v42 = *(v0 + 808);
      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177B810);
      sub_100429A68(v42, v41);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 912);
      if (v46)
      {
        v171 = *(v0 + 896);
        v48 = v38;
        v49 = *(v0 + 824);
        v50 = *(v0 + 1253);
        v178 = v1;
        v51 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *v51 = 136316163;
        if (v50)
        {
          v52 = 0x61646E6F6365732ELL;
        }

        else
        {
          v52 = 0x7972616D6972702ELL;
        }

        if (v50)
        {
          v53 = 0xEA00000000007972;
        }

        else
        {
          v53 = 0xE800000000000000;
        }

        v54 = sub_1000136BC(v52, v53, &v182);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2048;
        *(v51 + 14) = v49;
        *(v51 + 22) = 2080;
        v55 = sub_1000136BC(v48, v40, &v182);

        *(v51 + 24) = v55;
        *(v51 + 32) = 2160;
        *(v51 + 34) = 1752392040;
        *(v51 + 42) = 2081;
        type metadata accessor for UUID();
        sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
        v183 = dispatch thunk of CustomStringConvertible.description.getter();
        v184 = v56;
        v57._countAndFlagsBits = 47;
        v57._object = 0xE100000000000000;
        String.append(_:)(v57);
        v58 = v47 + *(v171 + 20);
        v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v59);

        v61 = v183;
        v60 = v184;
        sub_100429ACC(v47);
        v62 = sub_1000136BC(v61, v60, &v182);

        *(v51 + 44) = v62;
        _os_log_impl(&_mh_execute_header, v44, v45, "No match for sequence %s index %llu hint %s %{private,mask.hash}s", v51, 0x34u);
        swift_arrayDestroy();
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        v1 = v178;
      }

      else
      {

        sub_100429ACC(v47);
      }
    }

    if (p_weak_ivar_lyt[371] == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

  v4 = *(v0 + 1048);
  if (v3 < v4)
  {
    __break(1u);
LABEL_48:
    swift_once();
LABEL_25:
    v74 = *(v0 + 904);
    v75 = *(v0 + 808);
    v76 = type metadata accessor for Logger();
    sub_1000076D4(v76, qword_10177B810);
    sub_100429A68(v75, v74);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v0 + 968);
    v81 = *(v0 + 960);
    v82 = *(v0 + 952);
    v83 = *(v0 + 904);
    if (v79)
    {
      v163 = *(v0 + 896);
      v179 = *(v0 + 816);
      v84 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *v84 = 136315394;

      v166 = v82;
      v172 = v80;
      v85 = Array.description.getter();
      v87 = v86;

      v88 = sub_1000136BC(v85, v87, &v182);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
      v183 = dispatch thunk of CustomStringConvertible.description.getter();
      v184 = v89;
      v90._countAndFlagsBits = 47;
      v90._object = 0xE100000000000000;
      String.append(_:)(v90);
      v91 = v83 + *(v163 + 20);
      v92._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v92);

      v93 = v183;
      v94 = v184;
      sub_100429ACC(v83);
      v95 = sub_1000136BC(v93, v94, &v182);

      *(v84 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v77, v78, "primaryKeys: %s for beacon %s", v84, 0x16u);
      swift_arrayDestroy();

      sub_100429C08(v166, v81, v172);
      sub_100429C80(v0 + 16);

      sub_10000B3A8(v179, &qword_10169FCA8, &qword_1013A2B88);
    }

    else
    {
      sub_10000B3A8(*(v0 + 816), &qword_10169FCA8, &qword_1013A2B88);
      sub_100429C08(v82, v81, v80);
      sub_100429C80(v0 + 16);

      sub_100429ACC(v83);
    }

    v96 = *(v0 + 936);
    v97 = *(v0 + 912);
    v98 = *(v0 + 904);

    v99 = *(v0 + 8);

    return v99(v1);
  }

  if (v3 - v4 <= *(v0 + 840))
  {
    v18 = *(v0 + 1136);
  }

  else
  {
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1056);
    v7 = *(v0 + 832);
    sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    *(inited + 48) = v6;
    sub_100017D5C(v5, v6);
    v9 = sub_100027FA4();
    if (!v9)
    {
      v100 = *(v0 + 1152);
      v101 = *(v0 + 1144);
      v154 = *(v0 + 1112);
      v157 = *(v0 + 1120);
      v102 = *(v0 + 1064);
      v103 = *(v0 + 1056);
      v176 = *(v0 + 960);
      v180 = *(v0 + 968);
      v167 = *(v0 + 1104);
      v173 = *(v0 + 952);
      v160 = *(v0 + 1096);
      v164 = *(v0 + 816);
      swift_setDeallocating();
      sub_100429CD4(inited + 32);
      sub_10020223C();
      swift_allocError();
      *v104 = 2;
      *(v104 + 4) = 1;
      swift_willThrow();
      sub_100016590(v102, v103);
      sub_100006654(v101, v100);
      sub_100016590(v157, v154);
      sub_100006654(v160, v167);
      sub_10000B3A8(v164, &qword_10169FCA8, &qword_1013A2B88);
      sub_100429C80(v0 + 16);
      sub_100429C08(v173, v176, v180);
      goto LABEL_32;
    }

    v174 = *(v0 + 1136);
    v169 = *(v0 + 1248);
    v10 = *(v0 + 936);
    v11 = *(v0 + 928);
    v12 = *(v0 + 920);
    v13 = v9;
    v14 = *(v0 + 832);
    v15 = *(v0 + 808);
    v16 = *(v0 + 1253) & 1;
    v17 = swift_task_alloc();
    *(v17 + 16) = inited;
    *(v17 + 24) = v14;
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;
    *(v17 + 48) = v13;
    (*(v11 + 104))(v10, v169, v12);
    v18 = v174;
    Connection.transaction(_:block:)();
    if (v174)
    {
      v19 = *(v0 + 1152);
      v20 = *(v0 + 1144);
      v153 = *(v0 + 1112);
      v156 = *(v0 + 1120);
      v159 = *(v0 + 1096);
      v162 = *(v0 + 1104);
      v21 = *(v0 + 1064);
      v22 = *(v0 + 1056);
      v23 = *(v0 + 968);
      v170 = *(v0 + 952);
      v175 = *(v0 + 960);
      v152 = *(v0 + 816);
      (*(*(v0 + 928) + 8))(*(v0 + 936), *(v0 + 920));
      sub_100016590(v21, v22);
      sub_100006654(v20, v19);
      sub_100016590(v156, v153);
      sub_100006654(v159, v162);
      sub_10000B3A8(v152, &qword_10169FCA8, &qword_1013A2B88);
      sub_100429C80(v0 + 16);
      sub_100429C08(v170, v175, v23);
      swift_setDeallocating();
      v24 = *(inited + 16);
      swift_arrayDestroy();

      v2 = (v0 + 984);
LABEL_32:
      v105 = *(v0 + 1128);
      v106 = *(v0 + 1088);
      v107 = *(v0 + 1080);
      v108 = *(v0 + 1040);
      v109 = v2[1];
      *(v0 + 448) = *v2;
      *(v0 + 464) = v109;
      *(v0 + 480) = *(v0 + 624);
      *(v0 + 496) = v105;
      *(v0 + 504) = v107;
      *(v0 + 512) = v106;
      sub_100429C80(v0 + 448);

      v110 = *(v0 + 936);
      v111 = *(v0 + 912);
      v112 = *(v0 + 904);

      v113 = *(v0 + 8);

      return v113();
    }

    (*(*(v0 + 928) + 8))(*(v0 + 936), *(v0 + 920));
    swift_setDeallocating();
    v114 = *(inited + 16);
    swift_arrayDestroy();

    v4 = *(v0 + 1072);
  }

  *(v0 + 1216) = v4;
  v63 = sub_100A7A194(*(v0 + 1120), *(v0 + 1112));
  if (v18)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_101385D80;
    *(v0 + 784) = v18;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v65 = String.init<A>(describing:)();
    v67 = v66;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = sub_100008C00();
    *(v64 + 32) = v65;
    *(v64 + 40) = v67;
    os_log(_:dso:log:_:_:)();

    sub_1001BAF88();
    v68 = swift_allocError();
    *v69 = 0;
    swift_willThrow();

    v183 = 0;
    v184 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    *(v0 + 704) = 0;
    *(v0 + 712) = 0xE000000000000000;
    v70._object = 0x800000010134CB30;
    v70._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v70);
    *(v0 + 792) = v68;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    v71 = *(v0 + 704);
    v72 = *(v0 + 712);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v115 = sub_100A7829C(v63, 0);
    v117 = v116;
    CCECCryptorRelease();
    sub_100018000(v115, v117, (v0 + 688));
    *(v0 + 1224) = 0;
    v118 = *(v0 + 1254);
    v119 = *(v0 + 688);
    v120 = *(v0 + 696);
    sub_100017D5C(v119, v120);
    v121 = static MACAddress.length.getter();
    sub_10002EA98(v121, v119, v120, (v0 + 720));
    v122 = *(v0 + 720);
    v123 = *(v0 + 728);
    v124 = Data._Representation.subscript.getter();
    sub_100016590(v122, v123);
    sub_100016590(v119, v120);
    v125 = *(v0 + 1152);
    v126 = *(v0 + 1144);
    v127 = *(v0 + 1120);
    v128 = *(v0 + 1112);
    if (v118 == v124)
    {
      sub_100017D5C(*(v0 + 1144), *(v0 + 1152));
      v129 = PublicKey.advertisement.getter(v127, v128);
      sub_10002EA98(6, v129, v130, (v0 + 736));
      v131 = *(v0 + 736);
      v132 = *(v0 + 744);
      v133 = String.utf8Data.getter();
      v135 = v134;
      v136 = sub_100A79CBC(v126, v125, v133, v134, 32);
      sub_1004A4714(v136, v137, (v0 + 752));
      *(v0 + 1232) = 0;
      v141 = *(v0 + 1040);
      sub_100016590(v133, v135);
      v177 = *(v0 + 760);
      v181 = *(v0 + 752);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = *(v0 + 1040);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v143 = sub_100A5CBA0(0, *(v143 + 2) + 1, 1, *(v0 + 1040));
      }

      v145 = *(v143 + 2);
      v144 = *(v143 + 3);
      if (v145 >= v144 >> 1)
      {
        v143 = sub_100A5CBA0((v144 > 1), v145 + 1, 1, v143);
      }

      *(v0 + 1240) = v143;
      v146 = *(v0 + 1152);
      v147 = *(v0 + 1144);
      v148 = *(v0 + 1112);
      v161 = *(v0 + 1104);
      v155 = *(v0 + 1120);
      v158 = *(v0 + 1096);
      v168 = *(v0 + 1072);
      v149 = *(v0 + 1064);
      v165 = *(v0 + 1253) & 1;
      v150 = *(v0 + 1056);
      sub_100016590(v147, v146);
      sub_100016590(v149, v150);
      sub_100006654(v147, v146);
      sub_100016590(v155, v148);
      sub_100006654(v158, v161);
      *(v143 + 2) = v145 + 1;
      v151 = &v143[48 * v145];
      v151[32] = v165;
      *(v151 + 5) = v168;
      *(v151 + 6) = v131;
      *(v151 + 7) = v132;
      *(v151 + 8) = v181;
      *(v151 + 9) = v177;
      v140 = sub_100428218;
    }

    else
    {
      v138 = *(v0 + 1104);
      v139 = *(v0 + 1096);
      sub_100016590(*(v0 + 1064), *(v0 + 1056));
      sub_100006654(v126, v125);
      sub_100016590(v127, v128);
      sub_100006654(v139, v138);
      v140 = sub_100428A3C;
    }

    return _swift_task_switch(v140, 0, 0);
  }
}

uint64_t sub_1004274B8()
{
  v69 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1000);
  *(v0 + 304) = *(v0 + 984);
  *(v0 + 320) = v3;
  v4 = *(v0 + 1160);
  *(v0 + 336) = *(v0 + 624);
  *(v0 + 352) = v4;
  *(v0 + 368) = v1;
  sub_100429C80(v0 + 304);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (!*(v2 + 16))
  {
    v6 = *(v0 + 1254);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    *(v7 + 56) = &type metadata for UInt8;
    *(v7 + 64) = &protocol witness table for UInt8;
    *(v7 + 32) = v6;
    v8 = String.init(format:_:)();
    v10 = v9;
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 912);
    v12 = *(v0 + 808);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177B810);
    sub_100429A68(v12, v11);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 912);
    if (v16)
    {
      v62 = *(v0 + 896);
      v18 = v8;
      v19 = *(v0 + 824);
      v20 = *(v0 + 1253);
      v64 = v2;
      v21 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v21 = 136316163;
      if (v20)
      {
        v22 = 0x61646E6F6365732ELL;
      }

      else
      {
        v22 = 0x7972616D6972702ELL;
      }

      if (v20)
      {
        v23 = 0xEA00000000007972;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      v24 = sub_1000136BC(v22, v23, &v66);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v19;
      *(v21 + 22) = 2080;
      v25 = sub_1000136BC(v18, v10, &v66);

      *(v21 + 24) = v25;
      *(v21 + 32) = 2160;
      *(v21 + 34) = 1752392040;
      *(v21 + 42) = 2081;
      type metadata accessor for UUID();
      sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v26;
      v27._countAndFlagsBits = 47;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28 = v17 + *(v62 + 20);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v31 = v67;
      v30 = v68;
      sub_100429ACC(v17);
      v32 = sub_1000136BC(v31, v30, &v66);

      *(v21 + 44) = v32;
      _os_log_impl(&_mh_execute_header, v14, v15, "No match for sequence %s index %llu hint %s %{private,mask.hash}s", v21, 0x34u);
      swift_arrayDestroy();
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);

      v2 = v64;
    }

    else
    {

      sub_100429ACC(v17);
    }
  }

  if (p_weak_ivar_lyt[371] != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 904);
  v34 = *(v0 + 808);
  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177B810);
  sub_100429A68(v34, v33);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 968);
  v40 = *(v0 + 960);
  v41 = *(v0 + 952);
  v42 = *(v0 + 904);
  if (v38)
  {
    v60 = *(v0 + 896);
    v65 = *(v0 + 816);
    v43 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v43 = 136315394;

    v61 = v41;
    v63 = v39;
    v44 = Array.description.getter();
    v46 = v45;

    v47 = sub_1000136BC(v44, v46, &v66);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100429D28(&qword_101696930, &type metadata accessor for UUID);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v48;
    v49._countAndFlagsBits = 47;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    v50 = v42 + *(v60 + 20);
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    v52 = v67;
    v53 = v68;
    sub_100429ACC(v42);
    v54 = sub_1000136BC(v52, v53, &v66);

    *(v43 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v36, v37, "primaryKeys: %s for beacon %s", v43, 0x16u);
    swift_arrayDestroy();

    sub_100429C08(v61, v40, v63);
    sub_100429C80(v0 + 16);

    sub_10000B3A8(v65, &qword_10169FCA8, &qword_1013A2B88);
  }

  else
  {
    sub_10000B3A8(*(v0 + 816), &qword_10169FCA8, &qword_1013A2B88);
    sub_100429C08(v41, v40, v39);
    sub_100429C80(v0 + 16);

    sub_100429ACC(v42);
  }

  v55 = *(v0 + 936);
  v56 = *(v0 + 912);
  v57 = *(v0 + 904);

  v58 = *(v0 + 8);

  return v58(v2);
}