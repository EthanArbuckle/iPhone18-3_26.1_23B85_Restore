void sub_100131D08(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkLastModifiedDate:isa];
}

uint64_t sub_100131E78@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_100131F30(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setMostRecentPublicLinkUpdateRequestDate:isa];
}

void sub_10013206C(NSURL *a1, uint64_t a2)
{
  v212 = a2;
  v3 = sub_1000F5104(&qword_100938BE8, &qword_100795758);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v189 = &v185 - v5;
  v188 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v190 = *(v188 - 8);
  v6 = *(v190 + 64);
  __chkstk_darwin(v188);
  v185 = &v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v187 = &v185 - v9;
  v10 = sub_1000F5104(&qword_100938C00, &unk_100795780);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v195 = &v185 - v12;
  v194 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v196 = *(v194 - 8);
  v13 = *(v196 + 64);
  __chkstk_darwin(v194);
  v191 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v193 = &v185 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v216 = v17;
  v217.super.isa = v18;
  v19 = *(v18 + 8);
  __chkstk_darwin(v17);
  v203 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v21 = *(*(v206 - 8) + 64);
  __chkstk_darwin(v206);
  v207 = &v185 - v22;
  v211 = sub_1000F5104(&qword_100938C20, &qword_1007957A8);
  v23 = *(*(v211 - 8) + 64);
  __chkstk_darwin(v211);
  v25 = &v185 - v24;
  v214 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v26 = *(v214 - 8);
  v27 = v26[8];
  __chkstk_darwin(v214);
  v198 = &v185 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v185 - v30;
  __chkstk_darwin(v32);
  v34 = &v185 - v33;
  __chkstk_darwin(v35);
  v37 = &v185 - v36;
  __chkstk_darwin(v38);
  v40 = &v185 - v39;
  __chkstk_darwin(v41);
  v186 = &v185 - v42;
  __chkstk_darwin(v43);
  v192 = &v185 - v44;
  __chkstk_darwin(v45);
  v197 = &v185 - v46;
  __chkstk_darwin(v47);
  v199 = &v185 - v48;
  __chkstk_darwin(v49);
  v200 = &v185 - v50;
  __chkstk_darwin(v51);
  v201 = &v185 - v52;
  __chkstk_darwin(v53);
  v202 = &v185 - v54;
  __chkstk_darwin(v55);
  v204 = &v185 - v56;
  __chkstk_darwin(v57);
  v208 = &v185 - v58;
  __chkstk_darwin(v59);
  v205 = &v185 - v60;
  __chkstk_darwin(v61);
  v63 = &v185 - v62;
  v64 = sub_1000F5104(&qword_100938BF0, &qword_100795768);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v210 = &v185 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v185 - v68;
  __chkstk_darwin(v70);
  v213 = &v185 - v71;
  v209 = a1;
  v72 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v73)
  {
    v217._clients = 0;
    v217._reserved = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v183._object = 0x80000001007EC120;
    v183._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v183);
    v217._baseURL = v209;
    goto LABEL_164;
  }

  v74 = v72;
  v75 = v73;
  if (v72 == 0x6E6F697461657263 && v73 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v76 = [v215 creationDate];
    if (v76)
    {
      v77 = v76;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v217.super.isa + 7))(v63, 0, 1, v216);
    }

    else
    {
      (*(v217.super.isa + 7))(v63, 1, 1, v216);
    }

LABEL_8:
    v78 = v213;
LABEL_9:
    v79 = v212;
    goto LABEL_10;
  }

  if (v74 == 0xD000000000000010 && 0x80000001007E8D70 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v95 = [v215 lastModifiedDate];
    if (v95)
    {
      v96 = v95;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v217.super.isa + 7))(v40, 0, 1, v216);
    }

    else
    {
      (*(v217.super.isa + 7))(v40, 1, 1, v216);
    }

    v63 = v40;
    goto LABEL_8;
  }

  v78 = v213;
  if (v74 == 0xD000000000000025 && 0x80000001007955E0 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v107 = [v215 mostRecentPublicLinkUpdateRequestDate];
    if (v107)
    {
      v108 = v107;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v217.super.isa + 7))(v37, 0, 1, v216);
    }

    else
    {
      (*(v217.super.isa + 7))(v37, 1, 1, v216);
    }

    v63 = v37;
    goto LABEL_9;
  }

  if (v74 == 0xD00000000000001BLL && 0x80000001007E8DC0 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_66;
  }

  if (v74 == 0xD000000000000016 && 0x8000000100795660 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v117 = [v215 publicLinkCreationDate];
    if (v117)
    {
      v118 = v117;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v217.super.isa + 7))(v34, 0, 1, v216);
    }

    else
    {
      (*(v217.super.isa + 7))(v34, 1, 1, v216);
    }

    v63 = v34;
    goto LABEL_9;
  }

  if (v74 == 0xD000000000000018 && 0x80000001007956F0 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v120 = [v215 publicLinkExpirationDate];
    v79 = v212;
    if (v120)
    {
      v121 = v120;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v217.super.isa + 7))(v31, 0, 1, v216);
    }

    else
    {
      (*(v217.super.isa + 7))(v31, 1, 1, v216);
    }

    v63 = v31;
LABEL_10:
    sub_100031B58(v63, v78, &unk_100938850, qword_100795AE0);
    v80 = v26[7];
    v81 = v214;
    v80(v78, 0, 1, v214);
    sub_100010364(v79, v69, &unk_100938850, qword_100795AE0);
    v80(v69, 0, 1, v81);
    v82 = *(v211 + 48);
    sub_100010364(v78, v25, &qword_100938BF0, &qword_100795768);
    sub_100010364(v69, &v25[v82], &qword_100938BF0, &qword_100795768);
    v83 = v26[6];
    if (v83(v25, 1, v81) == 1)
    {
      sub_1000050A4(v69, &qword_100938BF0, &qword_100795768);
      if (v83(&v25[v82], 1, v81) == 1)
      {
        sub_1000050A4(v78, &qword_100938BF0, &qword_100795768);
        v84 = v25;
LABEL_36:
        sub_1000050A4(v84, &qword_100938BF0, &qword_100795768);
        return;
      }

      goto LABEL_15;
    }

    v85 = v210;
    sub_100010364(v25, v210, &qword_100938BF0, &qword_100795768);
    if (v83(&v25[v82], 1, v81) == 1)
    {
      sub_1000050A4(v69, &qword_100938BF0, &qword_100795768);
      sub_1000050A4(v85, &unk_100938850, qword_100795AE0);
LABEL_15:
      sub_1000050A4(v25, &qword_100938C20, &qword_1007957A8);
      v87 = v216;
      isa = v217.super.isa;
      goto LABEL_16;
    }

    v97 = *(v206 + 48);
    v98 = v85;
    v99 = v207;
    sub_100010364(v98, v207, &unk_100938850, qword_100795AE0);
    sub_100031B58(&v25[v82], v99 + v97, &unk_100938850, qword_100795AE0);
    v87 = v216;
    isa = v217.super.isa;
    v100 = *(v217.super.isa + 6);
    if (v100(v99, 1, v216) == 1)
    {
      sub_1000050A4(v69, &qword_100938BF0, &qword_100795768);
      if (v100(v99 + v97, 1, v87) == 1)
      {
        sub_1000050A4(v99, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v210, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v25, &qword_100938BF0, &qword_100795768);
LABEL_35:
        v84 = v78;
        goto LABEL_36;
      }
    }

    else
    {
      v106 = v205;
      sub_100010364(v99, v205, &unk_100938850, qword_100795AE0);
      if (v100(v99 + v97, 1, v87) != 1)
      {
        v109 = v203;
        (*(isa + 4))(v203, v99 + v97, v87);
        sub_100029F48(&qword_100938DB0, &type metadata accessor for Date);
        v110 = dispatch thunk of static Equatable.== infix(_:_:)();
        v111 = *(isa + 1);
        v111(v109, v87);
        sub_1000050A4(v69, &qword_100938BF0, &qword_100795768);
        v111(v106, v87);
        v79 = v212;
        sub_1000050A4(v99, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v210, &unk_100938850, qword_100795AE0);
        isa = v217.super.isa;
        sub_1000050A4(v25, &qword_100938BF0, &qword_100795768);
        v78 = v213;
        if (v110)
        {
          goto LABEL_35;
        }

LABEL_16:
        v88 = v209;
        v89 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v90)
        {
LABEL_162:
          v217._clients = 0;
          v217._reserved = 0xE000000000000000;
          _StringGuts.grow(_:)(46);
          v182._object = 0x80000001007EC120;
          v182._countAndFlagsBits = 0xD00000000000002CLL;
          String.append(_:)(v182);
          v217._baseURL = v88;
LABEL_164:
          sub_1000F5104(&qword_100938C08, &unk_10079B270);
          while (1)
          {
            _print_unlocked<A, B>(_:_:)();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_166:
            v217._clients = 0;
            v217._reserved = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v184._object = 0x80000001007EC120;
            v184._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v184);
            v217._urlString = &v209->super.isa;
            sub_1000F5104(&qword_100938C08, &unk_10079B270);
          }
        }

        v91 = v89;
        v92 = v90;
        if (v89 == 0x6E6F697461657263 && v90 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v93 = v208;
          sub_100010364(v79, v208, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v93, 1, v87) == 1)
          {
            v94 = 0;
          }

          else
          {
            v94 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v93, v87);
          }

          v101 = v215;
          [v215 setCreationDate:v94];
LABEL_32:

          goto LABEL_33;
        }

        if (v91 == 0xD000000000000010 && 0x80000001007E8D70 == v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v105 = v204;
          sub_100010364(v79, v204, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v105, 1, v87) == 1)
          {
            v94 = 0;
          }

          else
          {
            v94 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v105, v87);
          }

          v101 = v215;
          [v215 setLastModifiedDate:v94];
          goto LABEL_32;
        }

        if (v91 == 0xD000000000000025 && 0x80000001007955E0 == v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v112 = v202;
          sub_100010364(v79, v202, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v112, 1, v87) == 1)
          {
            v94 = 0;
          }

          else
          {
            v94 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v112, v87);
          }

          v101 = v215;
          [v215 setMostRecentPublicLinkUpdateRequestDate:v94];
          goto LABEL_32;
        }

        if (v91 == 0xD00000000000001BLL && 0x80000001007E8DC0 == v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_100010364(v79, v201, &unk_100938850, qword_100795AE0);
          sub_1000F5104(&qword_100938C10, &unk_100795F30);
          if (swift_dynamicCast())
          {
            clients = v217._clients;
            reserved = v217._reserved;
            v101 = v215;
            if (v217._reserved >> 60 == 15)
            {
              v116 = 0;
            }

            else
            {
              sub_100029344(v217._clients, v217._reserved);
              v116 = Data._bridgeToObjectiveC()().super.isa;
              sub_100031A14(clients, reserved);
            }

            [v101 setPublicLinkConfigurationData:v116];

            sub_100031A14(clients, reserved);
          }

          else
          {
            v101 = v215;
          }

LABEL_33:
          v102 = [v101 createResolutionTokenMapIfNecessary];
          dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (v103)
          {
            v104 = String._bridgeToObjectiveC()();

            [v102 updateForKey:v104];

            goto LABEL_35;
          }

          goto LABEL_162;
        }

        if (v91 == 0xD000000000000016 && 0x8000000100795660 == v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v119 = v200;
          sub_100010364(v79, v200, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v119, 1, v87) == 1)
          {
            v94 = 0;
          }

          else
          {
            v94 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v119, v87);
          }

          v101 = v215;
          [v215 setPublicLinkCreationDate:v94];
          goto LABEL_32;
        }

        if (v91 == 0xD000000000000018 && 0x80000001007956F0 == v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v122 = v199;
          sub_100010364(v79, v199, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v122, 1, v87) == 1)
          {
            v94 = 0;
          }

          else
          {
            v94 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v122, v87);
          }

          v101 = v215;
          [v215 setPublicLinkExpirationDate:v94];
          goto LABEL_32;
        }

        if (v91 == 0xD00000000000001ALL && 0x80000001007956A0 == v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v125 = v197;
          sub_100010364(v79, v197, &unk_100938850, qword_100795AE0);
          if ((*(isa + 6))(v125, 1, v87) == 1)
          {
            v126 = 0;
          }

          else
          {
            v126 = Date._bridgeToObjectiveC()().super.isa;
            (*(isa + 1))(v125, v87);
          }

          v101 = v215;
          [v215 setPublicLinkLastModifiedDate:v126];

          goto LABEL_133;
        }

        if (v91 == 0xD000000000000011 && 0x80000001007955B0 == v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_100010364(v212, v192, &unk_100938850, qword_100795AE0);
          v140 = swift_dynamicCast();
          v141 = *(v196 + 56);
          v196 += 56;
          if (v140)
          {
            v142 = v195;
            v141(v195, 0, 1, v194);
            v143 = v142;
            v144 = v193;
            sub_100031B58(v143, v193, &unk_100939D90, "8\n\r");
            v145 = v191;
            sub_100010364(v144, v191, &unk_100939D90, "8\n\r");
            v146 = type metadata accessor for UUID();
            v147 = *(v146 - 8);
            v148 = 0;
            if ((*(v147 + 48))(v145, 1, v146) != 1)
            {
              v149 = v191;
              v148 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v147 + 8))(v149, v146);
            }

            v101 = v215;
            [v215 setPublicLinkURLUUID:v148];

            v150 = &unk_100939D90;
            v151 = "8\n\r";
            p_baseURL = &v218;
LABEL_141:
            sub_1000050A4(*(p_baseURL - 32), v150, v151);
LABEL_133:
            v88 = v209;
            v78 = v213;
            goto LABEL_33;
          }

          v153 = v195;
          v141(v195, 1, 1, v194);
          v154 = &qword_100938C00;
          v155 = &unk_100795780;
        }

        else
        {
          if (v91 == 0x694C656372756F73 && v92 == 0xEF4C525544497473)
          {
          }

          else
          {
            v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v156 & 1) == 0)
            {
              if (qword_100936140 != -1)
              {
                swift_once();
              }

              v168 = type metadata accessor for Logger();
              sub_100006654(v168, qword_100946F50);
              v169 = v215;

              v170 = Logger.logObject.getter();
              v171 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v170, v171))
              {
                v172 = swift_slowAlloc();
                v217._baseURL = swift_slowAlloc();
                *v172 = 136446466;
                v173 = [v169 remObjectID];
                v217._clients = v173;
                sub_1000F5104(&unk_10093AF40, &unk_100795790);
                v174 = Optional.descriptionOrNil.getter();
                v176 = v175;

                v177 = sub_10000668C(v174, v176, &v217._baseURL);

                *(v172 + 4) = v177;
                *(v172 + 12) = 2082;
                v178 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
                if (!v179)
                {
                  goto LABEL_166;
                }

                v180 = sub_10000668C(v178, v179, &v217._baseURL);

                *(v172 + 14) = v180;
                _os_log_impl(&_mh_execute_header, v170, v171, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported propertyKeyPath {objectID: %{public}s, propertyKeyPath: %{public}s}}", v172, 0x16u);
                swift_arrayDestroy();
              }

              v84 = v213;
              goto LABEL_36;
            }
          }

          sub_100010364(v212, v186, &unk_100938850, qword_100795AE0);
          v157 = swift_dynamicCast();
          v158 = *(v190 + 56);
          v190 += 56;
          if (v157)
          {
            v159 = v189;
            v158(v189, 0, 1, v188);
            v160 = v159;
            v161 = v187;
            sub_100031B58(v160, v187, &unk_1009441F0, &qword_100795760);
            v162 = v185;
            sub_100010364(v161, v185, &unk_1009441F0, &qword_100795760);
            v163 = type metadata accessor for URL();
            v164 = *(v163 - 8);
            v165 = 0;
            if ((*(v164 + 48))(v162, 1, v163) != 1)
            {
              v166 = v185;
              URL._bridgeToObjectiveC()(&v217);
              v165 = v167;
              (*(v164 + 8))(v166, v163);
            }

            v101 = v215;
            [v215 setSourceListIDURL:v165];

            v150 = &unk_1009441F0;
            v151 = &qword_100795760;
            p_baseURL = &v217._baseURL;
            goto LABEL_141;
          }

          v153 = v189;
          v158(v189, 1, 1, v188);
          v154 = &qword_100938BE8;
          v155 = &qword_100795758;
        }

        sub_1000050A4(v153, v154, v155);
        v88 = v209;
        v101 = v215;
        v78 = v213;
        goto LABEL_33;
      }

      sub_1000050A4(v69, &qword_100938BF0, &qword_100795768);
      (*(isa + 1))(v106, v87);
      v78 = v213;
    }

    sub_1000050A4(v99, &qword_100938C18, &qword_1007957A0);
    sub_1000050A4(v210, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v25, &qword_100938BF0, &qword_100795768);
    goto LABEL_16;
  }

  v79 = v212;
  if (v74 == 0xD00000000000001ALL && 0x80000001007956A0 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v123 = [v215 publicLinkLastModifiedDate];
    v63 = v198;
    if (v123)
    {
      v124 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v217.super.isa + 7))(v63, 0, 1, v216);
    }

    else
    {
      (*(v217.super.isa + 7))(v198, 1, 1, v216);
    }

    goto LABEL_10;
  }

  if (v74 == 0xD000000000000011 && 0x80000001007955B0 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v74 == 0x694C656372756F73 && v75 == 0xEF4C525544497473)
  {
LABEL_66:

LABEL_67:
    v113 = v215;

    sub_10043A8B0(v113);
    return;
  }

  v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v127)
  {
    goto LABEL_67;
  }

  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v128 = type metadata accessor for Logger();
  sub_100006654(v128, qword_100946F50);
  v129 = v215;

  v217.super.isa = Logger.logObject.getter();
  v130 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v217.super.isa, v130))
  {
    v131 = swift_slowAlloc();
    v217._baseURL = swift_slowAlloc();
    *v131 = 136446466;
    v132 = [v129 remObjectID];
    v217._clients = v132;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v133 = Optional.descriptionOrNil.getter();
    v135 = v134;

    v136 = sub_10000668C(v133, v135, &v217._baseURL);

    *(v131 + 4) = v136;
    *(v131 + 12) = 2082;
    v137 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v138)
    {
      goto LABEL_166;
    }

    v139 = sub_10000668C(v137, v138, &v217._baseURL);

    *(v131 + 14) = v139;
    _os_log_impl(&_mh_execute_header, v217.super.isa, v130, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported key path {objectID: %{public}s, propertyKeyPath: %{public}s}}", v131, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v181 = v217.super.isa;
  }
}

void sub_10013411C(uint64_t a1, uint64_t a2)
{
  v276 = a2;
  v3 = sub_1000F5104(&qword_100938BE8, &qword_100795758);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v255 = &v225 - v5;
  v254 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v253 = *(v254 - 8);
  v6 = *(v253 + 64);
  __chkstk_darwin(v254);
  v256 = &v225 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v257 = &v225 - v9;
  v10 = sub_1000F5104(&qword_100938BF0, &qword_100795768);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v252 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v249 = &v225 - v14;
  __chkstk_darwin(v15);
  v259 = &v225 - v16;
  __chkstk_darwin(v17);
  v264 = &v225 - v18;
  __chkstk_darwin(v19);
  v268 = &v225 - v20;
  __chkstk_darwin(v21);
  v272 = &v225 - v22;
  v273 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v277 = *(v273 - 8);
  v23 = *(v277 + 64);
  __chkstk_darwin(v273);
  v250 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v251 = &v225 - v26;
  __chkstk_darwin(v27);
  v247 = &v225 - v28;
  __chkstk_darwin(v29);
  v248 = &v225 - v30;
  __chkstk_darwin(v31);
  v245 = &v225 - v32;
  __chkstk_darwin(v33);
  v246 = &v225 - v34;
  __chkstk_darwin(v35);
  v261 = &v225 - v36;
  __chkstk_darwin(v37);
  v263 = &v225 - v38;
  __chkstk_darwin(v39);
  v265 = &v225 - v40;
  __chkstk_darwin(v41);
  v267 = &v225 - v42;
  __chkstk_darwin(v43);
  v269 = &v225 - v44;
  __chkstk_darwin(v45);
  v270 = &v225 - v46;
  v47 = type metadata accessor for UUID();
  v274 = *(v47 - 8);
  v275 = v47;
  v48 = *(v274 + 64);
  __chkstk_darwin(v47);
  v50 = (&v225 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v281 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v278 = *(v281 - 8);
  v51 = v278[8];
  __chkstk_darwin(v281);
  v53 = &v225 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v244 = &v225 - v55;
  __chkstk_darwin(v56);
  v243 = &v225 - v57;
  __chkstk_darwin(v58);
  v242 = &v225 - v59;
  __chkstk_darwin(v60);
  v241 = &v225 - v61;
  __chkstk_darwin(v62);
  v258 = &v225 - v63;
  __chkstk_darwin(v64);
  v260 = &v225 - v65;
  __chkstk_darwin(v66);
  v262 = &v225 - v67;
  __chkstk_darwin(v68);
  v266 = &v225 - v69;
  __chkstk_darwin(v70);
  v271 = &v225 - v71;
  __chkstk_darwin(v72);
  v74 = &v225 - v73;
  v75 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = &v225 - v77;
  v79 = sub_1000F5104(&qword_100938BF8, &qword_100795778);
  v80 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v280 = &v225 - v81;
  v82 = sub_1000F5104(&qword_100938C00, &unk_100795780);
  v83 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82 - 8);
  v85 = &v225 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v88 = &v225 - v87;
  __chkstk_darwin(v89);
  v279 = &v225 - v90;
  v282 = a1;
  v91 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v92)
  {
    goto LABEL_127;
  }

  v93 = v91;
  v94 = v92;
  if (v91 == 0x6E6F697461657263 && v92 == 0xEC00000065746144)
  {
    goto LABEL_23;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD000000000000010 && 0x80000001007E8D70 == v94)
  {
    goto LABEL_23;
  }

  v240 = 0x80000001007E8D70;
  v239 = 0xD000000000000010;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD000000000000025 && 0x80000001007955E0 == v94)
  {
    goto LABEL_23;
  }

  v238 = 0x80000001007955E0;
  v237 = 0xD000000000000025;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD00000000000001BLL && 0x80000001007E8DC0 == v94)
  {
    goto LABEL_23;
  }

  v236 = 0x80000001007E8DC0;
  v235 = 0xD00000000000001BLL;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD000000000000016 && 0x8000000100795660 == v94)
  {
    goto LABEL_23;
  }

  v234 = 0x8000000100795660;
  v233 = 0xD000000000000016;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD000000000000018 && 0x80000001007956F0 == v94)
  {
    goto LABEL_23;
  }

  v232 = 0x80000001007956F0;
  v231 = 0xD000000000000018;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD00000000000001ALL && 0x80000001007956A0 == v94)
  {
    goto LABEL_23;
  }

  v230 = 0x80000001007956A0;
  v229 = 0xD00000000000001ALL;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_23;
  }

  v227 = 0xD000000000000011;
  v226 = 0x80000001007955B0;
  if (v93 == 0xD000000000000011 && 0x80000001007955B0 == v94 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v96 = [v283 publicLinkURLUUID];
    if (v96)
    {
      v97 = v96;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v274 + 56))(v53, 0, 1, v275);
    }

    else
    {
      (*(v274 + 56))(v53, 1, 1, v275);
    }

    v98 = v279;
    sub_100031B58(v53, v279, &unk_100939D90, "8\n\r");
    v99 = v278[7];
    v100 = v98;
    v101 = v281;
    v99(v100, 0, 1, v281);
    sub_100010364(v276, v88, &unk_100939D90, "8\n\r");
    v99(v88, 0, 1, v101);
    v102 = *(v79 + 48);
    v103 = v280;
    sub_100010364(v279, v280, &qword_100938C00, &unk_100795780);
    v228 = v102;
    sub_100010364(v88, v103 + v102, &qword_100938C00, &unk_100795780);
    v104 = v278[6];
    if (v104(v103, 1, v281) == 1)
    {
      sub_1000050A4(v88, &qword_100938C00, &unk_100795780);
      if (v104(v280 + v228, 1, v281) == 1)
      {
        sub_1000050A4(v279, &qword_100938C00, &unk_100795780);
        v105 = v280;
LABEL_66:
        sub_1000050A4(v105, &qword_100938C00, &unk_100795780);
        return;
      }

      goto LABEL_38;
    }

    v106 = v280;
    sub_100010364(v280, v85, &qword_100938C00, &unk_100795780);
    if (v104(v106 + v228, 1, v281) == 1)
    {
      sub_1000050A4(v88, &qword_100938C00, &unk_100795780);
      sub_1000050A4(v85, &unk_100939D90, "8\n\r");
LABEL_38:
      v107 = &qword_100938BF8;
      v108 = &qword_100795778;
LABEL_39:
      sub_1000050A4(v280, v107, v108);
      goto LABEL_40;
    }

    v137 = *(v75 + 48);
    sub_100010364(v85, v78, &unk_100939D90, "8\n\r");
    sub_100031B58(v280 + v228, &v78[v137], &unk_100939D90, "8\n\r");
    v138 = *(v274 + 48);
    if (v138(v78, 1, v275) == 1)
    {
      sub_1000050A4(v88, &qword_100938C00, &unk_100795780);
      if (v138(&v78[v137], 1, v275) == 1)
      {
        sub_1000050A4(v78, &unk_100939D90, "8\n\r");
        sub_1000050A4(v85, &unk_100939D90, "8\n\r");
        sub_1000050A4(v280, &qword_100938C00, &unk_100795780);
        goto LABEL_65;
      }
    }

    else
    {
      sub_100010364(v78, v74, &unk_100939D90, "8\n\r");
      if (v138(&v78[v137], 1, v275) != 1)
      {
        v151 = v274;
        v152 = v275;
        (*(v274 + 32))(v50, &v78[v137], v275);
        sub_100029F48(&qword_10093A3E0, &type metadata accessor for UUID);
        v153 = dispatch thunk of static Equatable.== infix(_:_:)();
        v154 = *(v151 + 8);
        v154(v50, v152);
        v50 = &qword_100938C00;
        sub_1000050A4(v88, &qword_100938C00, &unk_100795780);
        v154(v74, v152);
        sub_1000050A4(v78, &unk_100939D90, "8\n\r");
        sub_1000050A4(v85, &unk_100939D90, "8\n\r");
        sub_1000050A4(v280, &qword_100938C00, &unk_100795780);
        if ((v153 & 1) == 0)
        {
LABEL_40:
          v109 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v110)
          {
            goto LABEL_127;
          }

          v111 = v109;
          v50 = v110;
          if (v109 == 0x6E6F697461657263 && v110 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_100010364(v276, v271, &unk_100939D90, "8\n\r");
            v112 = swift_dynamicCast();
            v113 = *(v277 + 56);
            v277 += 56;
            if (v112)
            {
              v114 = v272;
              v113(v272, 0, 1, v273);
              v115 = v114;
              v116 = v270;
              sub_100031B58(v115, v270, &unk_100938850, qword_100795AE0);
              v117 = v269;
              sub_100010364(v116, v269, &unk_100938850, qword_100795AE0);
              v118 = type metadata accessor for Date();
              v119 = *(v118 - 8);
              isa = 0;
              if ((*(v119 + 48))(v117, 1, v118) != 1)
              {
                v121 = v269;
                isa = Date._bridgeToObjectiveC()().super.isa;
                (*(v119 + 8))(v121, v118);
              }

              [v283 setCreationDate:isa];

              v122 = &unk_100938850;
              v123 = qword_100795AE0;
              v124 = v270;
              goto LABEL_62;
            }

            v139 = v272;
          }

          else if (v111 == v239 && v240 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_100010364(v276, v266, &unk_100939D90, "8\n\r");
            v142 = swift_dynamicCast();
            v113 = *(v277 + 56);
            v277 += 56;
            if (v142)
            {
              v143 = v268;
              v113(v268, 0, 1, v273);
              v144 = v143;
              v145 = v267;
              sub_100031B58(v144, v267, &unk_100938850, qword_100795AE0);
              v146 = v265;
              sub_100010364(v145, v265, &unk_100938850, qword_100795AE0);
              v147 = type metadata accessor for Date();
              v148 = *(v147 - 8);
              v149 = 0;
              if ((*(v148 + 48))(v146, 1, v147) != 1)
              {
                v150 = v265;
                v149 = Date._bridgeToObjectiveC()().super.isa;
                (*(v148 + 8))(v150, v147);
              }

              [v283 setLastModifiedDate:v149];

              v122 = &unk_100938850;
              v123 = qword_100795AE0;
              v124 = v267;
              goto LABEL_62;
            }

            v139 = v268;
          }

          else
          {
            if (v111 == v237 && v238 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              sub_100010364(v276, v262, &unk_100939D90, "8\n\r");
              v156 = swift_dynamicCast();
              v113 = *(v277 + 56);
              v277 += 56;
              p_clients = &v289;
              if (v156)
              {
                v158 = v264;
                v113(v264, 0, 1, v273);
                v159 = v158;
                v160 = v263;
                sub_100031B58(v159, v263, &unk_100938850, qword_100795AE0);
                v161 = v261;
                sub_100010364(v160, v261, &unk_100938850, qword_100795AE0);
                v162 = type metadata accessor for Date();
                v163 = *(v162 - 8);
                v164 = 0;
                if ((*(v163 + 48))(v161, 1, v162) != 1)
                {
                  v165 = v261;
                  v164 = Date._bridgeToObjectiveC()().super.isa;
                  (*(v163 + 8))(v165, v162);
                }

                [v283 setMostRecentPublicLinkUpdateRequestDate:v164];

                v122 = &unk_100938850;
                v123 = qword_100795AE0;
                v124 = v263;
                goto LABEL_62;
              }
            }

            else
            {
              if (v111 == v235 && v236 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                sub_100010364(v276, v260, &unk_100939D90, "8\n\r");
                sub_1000F5104(&qword_100938C10, &unk_100795F30);
                if (swift_dynamicCast())
                {
                  v166 = v286;
                  v167 = v287;
                  if (v287 >> 60 == 15)
                  {
                    v168 = 0;
                  }

                  else
                  {
                    sub_100029344(v286, v287);
                    v168 = Data._bridgeToObjectiveC()().super.isa;
                    sub_100031A14(v166, v167);
                  }

                  [v283 setPublicLinkConfigurationData:v168];

                  sub_100031A14(v166, v167);
                }

                goto LABEL_63;
              }

              if (v111 == v233 && v234 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                sub_100010364(v276, v258, &unk_100939D90, "8\n\r");
                v169 = swift_dynamicCast();
                v113 = *(v277 + 56);
                v277 += 56;
                p_clients = &v288._clients;
                if (v169)
                {
                  v170 = v259;
                  v113(v259, 0, 1, v273);
                  v171 = v170;
                  v172 = v246;
                  sub_100031B58(v171, v246, &unk_100938850, qword_100795AE0);
                  v173 = v245;
                  sub_100010364(v172, v245, &unk_100938850, qword_100795AE0);
                  v174 = type metadata accessor for Date();
                  v175 = *(v174 - 8);
                  v176 = 0;
                  if ((*(v175 + 48))(v173, 1, v174) != 1)
                  {
                    v177 = v245;
                    v176 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v175 + 8))(v177, v174);
                  }

                  [v283 setPublicLinkCreationDate:v176];

                  v122 = &unk_100938850;
                  v123 = qword_100795AE0;
                  v124 = v246;
                  goto LABEL_62;
                }
              }

              else if (v111 == v231 && v232 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                sub_100010364(v276, v241, &unk_100939D90, "8\n\r");
                v178 = swift_dynamicCast();
                v113 = *(v277 + 56);
                v277 += 56;
                p_clients = &v281;
                if (v178)
                {
                  v179 = v249;
                  v113(v249, 0, 1, v273);
                  v180 = v179;
                  v181 = v248;
                  sub_100031B58(v180, v248, &unk_100938850, qword_100795AE0);
                  v182 = v247;
                  sub_100010364(v181, v247, &unk_100938850, qword_100795AE0);
                  v183 = type metadata accessor for Date();
                  v184 = *(v183 - 8);
                  v185 = 0;
                  if ((*(v184 + 48))(v182, 1, v183) != 1)
                  {
                    v186 = v247;
                    v185 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v184 + 8))(v186, v183);
                  }

                  [v283 setPublicLinkExpirationDate:v185];

                  v122 = &unk_100938850;
                  v123 = qword_100795AE0;
                  v124 = v248;
                  goto LABEL_62;
                }
              }

              else
              {
                if ((v111 != v229 || v230 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  if ((v111 != v227 || v226 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_129;
                  }

                  v196 = v243;
                  sub_100010364(v276, v243, &unk_100939D90, "8\n\r");
                  if ((*(v274 + 48))(v196, 1, v275) == 1)
                  {
                    v197 = 0;
                  }

                  else
                  {
                    v198 = v243;
                    v197 = UUID._bridgeToObjectiveC()().super.isa;
                    (*(v274 + 8))(v198, v275);
                  }

                  [v283 setPublicLinkURLUUID:v197];

                  goto LABEL_63;
                }

                sub_100010364(v276, v242, &unk_100939D90, "8\n\r");
                v187 = swift_dynamicCast();
                v113 = *(v277 + 56);
                v277 += 56;
                p_clients = &v284;
                if (v187)
                {
                  v188 = v252;
                  v113(v252, 0, 1, v273);
                  v189 = v188;
                  v190 = v251;
                  sub_100031B58(v189, v251, &unk_100938850, qword_100795AE0);
                  v191 = v250;
                  sub_100010364(v190, v250, &unk_100938850, qword_100795AE0);
                  v192 = type metadata accessor for Date();
                  v193 = *(v192 - 8);
                  v194 = 0;
                  if ((*(v193 + 48))(v191, 1, v192) != 1)
                  {
                    v195 = v250;
                    v194 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v193 + 8))(v195, v192);
                  }

                  [v283 setPublicLinkLastModifiedDate:v194];

                  v122 = &unk_100938850;
                  v123 = qword_100795AE0;
                  v124 = v251;
                  goto LABEL_62;
                }
              }
            }

            v139 = *(p_clients - 32);
          }

          v113(v139, 1, 1, v273);
          v122 = &qword_100938BF0;
          v123 = &qword_100795768;
LABEL_61:
          v124 = v139;
LABEL_62:
          while (1)
          {
            sub_1000050A4(v124, v122, v123);
LABEL_63:
            v50 = [v283 createResolutionTokenMapIfNecessary];
            dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
            if (v140)
            {
              break;
            }

LABEL_127:
            v286 = 0;
            v287 = 0xE000000000000000;
            v111 = &v286;
            _StringGuts.grow(_:)(46);
            v199._object = 0x80000001007EC120;
            v199._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v199);
            v285 = v282;
            sub_1000F5104(&qword_100938C08, &unk_10079B270);
            while (1)
            {
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_129:
              if (v111 == 0x694C656372756F73 && v50 == 0xEF4C525544497473)
              {
                break;
              }

              v200 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v200)
              {
                goto LABEL_133;
              }

              if (qword_100936140 != -1)
              {
                swift_once();
              }

              v212 = type metadata accessor for Logger();
              sub_100006654(v212, qword_100946F50);
              v213 = v283;

              v50 = Logger.logObject.getter();
              v214 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v50, v214))
              {
                goto LABEL_143;
              }

              v215 = swift_slowAlloc();
              v285 = swift_slowAlloc();
              *v215 = 136446466;
              v216 = [v213 remObjectID];
              v286 = v216;
              sub_1000F5104(&unk_10093AF40, &unk_100795790);
              v217 = Optional.descriptionOrNil.getter();
              v219 = v218;

              v220 = sub_10000668C(v217, v219, &v285);

              *(v215 + 4) = v220;
              *(v215 + 12) = 2082;
              v221 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
              if (v222)
              {
                v223 = sub_10000668C(v221, v222, &v285);

                *(v215 + 14) = v223;
                _os_log_impl(&_mh_execute_header, v50, v214, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported propertyKeyPath {objectID: %{public}s, propertyKeyPath: %{public}s}}", v215, 0x16u);
                swift_arrayDestroy();

LABEL_143:

                goto LABEL_65;
              }

LABEL_144:
              v286 = 0;
              v287 = 0xE000000000000000;
              v111 = &v286;
              _StringGuts.grow(_:)(46);
              v224._object = 0x80000001007EC120;
              v224._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v224);
              v284 = v282;
              sub_1000F5104(&qword_100938C08, &unk_10079B270);
            }

LABEL_133:
            sub_100010364(v276, v244, &unk_100939D90, "8\n\r");
            v201 = swift_dynamicCast();
            v202 = *(v253 + 56);
            v253 += 56;
            if ((v201 & 1) == 0)
            {
              v139 = v255;
              v202(v255, 1, 1, v254);
              v122 = &qword_100938BE8;
              v123 = &qword_100795758;
              goto LABEL_61;
            }

            v203 = v255;
            v202(v255, 0, 1, v254);
            v204 = v203;
            v205 = v257;
            sub_100031B58(v204, v257, &unk_1009441F0, &qword_100795760);
            v206 = v256;
            sub_100010364(v205, v256, &unk_1009441F0, &qword_100795760);
            v207 = type metadata accessor for URL();
            v208 = *(v207 - 8);
            v209 = 0;
            if ((*(v208 + 48))(v206, 1, v207) != 1)
            {
              v210 = v256;
              URL._bridgeToObjectiveC()(&v288);
              v209 = v211;
              (*(v208 + 8))(v210, v207);
            }

            [v283 setSourceListIDURL:v209];

            v122 = &unk_1009441F0;
            v123 = &qword_100795760;
            v124 = v257;
          }

          v141 = String._bridgeToObjectiveC()();

          [v50 updateForKey:v141];
        }

LABEL_65:
        v105 = v279;
        goto LABEL_66;
      }

      sub_1000050A4(v88, &qword_100938C00, &unk_100795780);
      (*(v274 + 8))(v74, v275);
    }

    sub_1000050A4(v78, &unk_10093A3D0, &qword_100795770);
    sub_1000050A4(v85, &unk_100939D90, "8\n\r");
    v107 = &qword_100938C00;
    v108 = &unk_100795780;
    goto LABEL_39;
  }

  if (v93 == 0x694C656372756F73 && v94 == 0xEF4C525544497473)
  {
LABEL_23:

LABEL_24:
    v95 = v283;

    sub_10043A8B0(v95);
    return;
  }

  v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v125)
  {
    goto LABEL_24;
  }

  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v126 = type metadata accessor for Logger();
  sub_100006654(v126, qword_100946F50);
  v127 = v283;

  v283 = Logger.logObject.getter();
  v50 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v283, v50))
  {
    v128 = swift_slowAlloc();
    v285 = swift_slowAlloc();
    *v128 = 136446466;
    v129 = [v127 remObjectID];
    v286 = v129;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v130 = Optional.descriptionOrNil.getter();
    v132 = v131;

    v133 = sub_10000668C(v130, v132, &v285);

    *(v128 + 4) = v133;
    *(v128 + 12) = 2082;
    v134 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v135)
    {
      goto LABEL_144;
    }

    v136 = sub_10000668C(v134, v135, &v285);

    *(v128 + 14) = v136;
    _os_log_impl(&_mh_execute_header, v283, v50, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported key path {objectID: %{public}s, propertyKeyPath: %{public}s}}", v128, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v155 = v283;
  }
}

void sub_100136640(void *a1, uint64_t a2)
{
  v276 = a2;
  v3 = sub_1000F5104(&qword_100938C00, &unk_100795780);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v257 = &v225 - v5;
  v256 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v255 = *(v256 - 8);
  v6 = *(v255 + 64);
  __chkstk_darwin(v256);
  v258 = &v225 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v259 = &v225 - v9;
  v10 = sub_1000F5104(&qword_100938BF0, &qword_100795768);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v254 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v251 = &v225 - v14;
  __chkstk_darwin(v15);
  v248 = &v225 - v16;
  __chkstk_darwin(v17);
  v264 = &v225 - v18;
  __chkstk_darwin(v19);
  v268 = &v225 - v20;
  __chkstk_darwin(v21);
  v272 = &v225 - v22;
  v273 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v277.super.isa = *(v273 - 8);
  v23 = *(v277.super.isa + 8);
  __chkstk_darwin(v273);
  v252 = &v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v253 = &v225 - v26;
  __chkstk_darwin(v27);
  v249 = &v225 - v28;
  __chkstk_darwin(v29);
  v250 = &v225 - v30;
  __chkstk_darwin(v31);
  v246 = &v225 - v32;
  __chkstk_darwin(v33);
  v247 = &v225 - v34;
  __chkstk_darwin(v35);
  v261 = &v225 - v36;
  __chkstk_darwin(v37);
  v262 = &v225 - v38;
  __chkstk_darwin(v39);
  v265 = &v225 - v40;
  __chkstk_darwin(v41);
  v267 = &v225 - v42;
  __chkstk_darwin(v43);
  v269 = &v225 - v44;
  __chkstk_darwin(v45);
  v271 = &v225 - v46;
  v47 = type metadata accessor for URL();
  v274 = *(v47 - 8);
  v275 = v47;
  v48 = *(v274 + 64);
  __chkstk_darwin(v47);
  v50 = (&v225 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v277._reserved = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v277._urlString = *(v277._reserved - 1);
  v51 = *(v277._urlString + 8);
  __chkstk_darwin(v277._reserved);
  v53 = &v225 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v245 = &v225 - v55;
  __chkstk_darwin(v56);
  v244 = &v225 - v57;
  __chkstk_darwin(v58);
  v243 = &v225 - v59;
  __chkstk_darwin(v60);
  v242 = &v225 - v61;
  __chkstk_darwin(v62);
  v241 = &v225 - v63;
  __chkstk_darwin(v64);
  v260 = &v225 - v65;
  __chkstk_darwin(v66);
  v263 = &v225 - v67;
  __chkstk_darwin(v68);
  v266 = &v225 - v69;
  __chkstk_darwin(v70);
  v270 = &v225 - v71;
  __chkstk_darwin(v72);
  v74 = &v225 - v73;
  v75 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = &v225 - v77;
  v79 = sub_1000F5104(&qword_100938C28, &qword_1007957B8);
  v80 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v277._clients = &v225 - v81;
  v82 = sub_1000F5104(&qword_100938BE8, &qword_100795758);
  v83 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82 - 8);
  v85 = &v225 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v88 = (&v225 - v87);
  __chkstk_darwin(v89);
  v277._baseURL = (&v225 - v90);
  v278 = a1;
  v91 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v92)
  {
    goto LABEL_120;
  }

  v93 = v91;
  v94 = v92;
  if (v91 == 0x6E6F697461657263 && v92 == 0xEC00000065746144)
  {
    goto LABEL_26;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD000000000000010 && 0x80000001007E8D70 == v94)
  {
    goto LABEL_26;
  }

  v240 = 0x80000001007E8D70;
  v239 = 0xD000000000000010;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD000000000000025 && 0x80000001007955E0 == v94)
  {
    goto LABEL_26;
  }

  v238 = 0x80000001007955E0;
  v237 = 0xD000000000000025;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD00000000000001BLL && 0x80000001007E8DC0 == v94)
  {
    goto LABEL_26;
  }

  v236 = 0x80000001007E8DC0;
  v235 = 0xD00000000000001BLL;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD000000000000016 && 0x8000000100795660 == v94)
  {
    goto LABEL_26;
  }

  v234 = 0x8000000100795660;
  v233 = 0xD000000000000016;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v93 == 0xD000000000000018 && 0x80000001007956F0 == v94)
  {
    goto LABEL_26;
  }

  if (v232 = 0x80000001007956F0, v231 = 0xD000000000000018, (_stringCompareWithSmolCheck(_:_:expecting:)()) || v93 == 0xD00000000000001ALL && 0x80000001007956A0 == v94 || (v230 = 0x80000001007956A0, v229 = 0xD00000000000001ALL, (_stringCompareWithSmolCheck(_:_:expecting:)()) || (v228 = 0xD000000000000011, v93 == 0xD000000000000011) && 0x80000001007955B0 == v94 || (v227 = 0x80000001007955B0, (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
LABEL_26:

    v95 = v279[0];

    sub_10043A8B0(v95);
    return;
  }

  if (v93 == 0x694C656372756F73 && v94 == 0xEF4C525544497473)
  {

    goto LABEL_33;
  }

  v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v96)
  {
LABEL_33:
    v97 = [v279[0] sourceListIDURL];
    if (v97)
    {
      v98 = v97;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v274 + 56))(v53, 0, 1, v275);
    }

    else
    {
      (*(v274 + 56))(v53, 1, 1, v275);
    }

    baseURL = v277._baseURL;
    sub_100031B58(v53, v277._baseURL, &unk_1009441F0, &qword_100795760);
    v100 = *(v277._urlString + 7);
    v101 = baseURL;
    reserved = v277._reserved;
    v100(v101, 0, 1, v277._reserved);
    sub_100010364(v276, v88, &unk_1009441F0, &qword_100795760);
    v100(v88, 0, 1, reserved);
    v103 = *(v79 + 48);
    clients = v277._clients;
    sub_100010364(v277._baseURL, v277._clients, &qword_100938BE8, &qword_100795758);
    v226 = v103;
    sub_100010364(v88, &clients[v103], &qword_100938BE8, &qword_100795758);
    v105 = *(v277._urlString + 6);
    if (v105(clients, 1, v277._reserved) == 1)
    {
      sub_1000050A4(v88, &qword_100938BE8, &qword_100795758);
      if (v105(v277._clients + v226, 1, v277._reserved) == 1)
      {
        sub_1000050A4(v277._baseURL, &qword_100938BE8, &qword_100795758);
        v106 = v277._clients;
LABEL_66:
        sub_1000050A4(v106, &qword_100938BE8, &qword_100795758);
        return;
      }

      goto LABEL_41;
    }

    v107 = v277._clients;
    sub_100010364(v277._clients, v85, &qword_100938BE8, &qword_100795758);
    if (v105(&v107[v226], 1, v277._reserved) == 1)
    {
      sub_1000050A4(v88, &qword_100938BE8, &qword_100795758);
      sub_1000050A4(v85, &unk_1009441F0, &qword_100795760);
LABEL_41:
      v108 = &qword_100938C28;
      v109 = &qword_1007957B8;
LABEL_42:
      sub_1000050A4(v277._clients, v108, v109);
      goto LABEL_43;
    }

    v137 = *(v75 + 48);
    sub_100010364(v85, v78, &unk_1009441F0, &qword_100795760);
    sub_100031B58(v277._clients + v226, &v78[v137], &unk_1009441F0, &qword_100795760);
    v138 = *(v274 + 48);
    if (v138(v78, 1, v275) == 1)
    {
      sub_1000050A4(v88, &qword_100938BE8, &qword_100795758);
      if (v138(&v78[v137], 1, v275) == 1)
      {
        sub_1000050A4(v78, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v85, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v277._clients, &qword_100938BE8, &qword_100795758);
        goto LABEL_65;
      }
    }

    else
    {
      sub_100010364(v78, v74, &unk_1009441F0, &qword_100795760);
      if (v138(&v78[v137], 1, v275) != 1)
      {
        v152 = v274;
        v153 = v275;
        (*(v274 + 32))(v50, &v78[v137], v275);
        sub_100029F48(&unk_100944080, &type metadata accessor for URL);
        v154 = dispatch thunk of static Equatable.== infix(_:_:)();
        v155 = *(v152 + 8);
        v155(v50, v153);
        v50 = &qword_100938BE8;
        sub_1000050A4(v88, &qword_100938BE8, &qword_100795758);
        v155(v74, v153);
        sub_1000050A4(v78, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v85, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v277._clients, &qword_100938BE8, &qword_100795758);
        if ((v154 & 1) == 0)
        {
LABEL_43:
          v110 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v111)
          {
            goto LABEL_120;
          }

          v112 = v110;
          v50 = v111;
          if (v110 == 0x6E6F697461657263 && v111 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_100010364(v276, v270, &unk_1009441F0, &qword_100795760);
            v113 = swift_dynamicCast();
            v114 = *(v277.super.isa + 7);
            v277.super.isa = (v277.super.isa + 56);
            if (v113)
            {
              v115 = v272;
              v114(v272, 0, 1, v273);
              v116 = v115;
              v117 = v271;
              sub_100031B58(v116, v271, &unk_100938850, qword_100795AE0);
              v118 = v269;
              sub_100010364(v117, v269, &unk_100938850, qword_100795AE0);
              v119 = type metadata accessor for Date();
              v120 = *(v119 - 8);
              isa = 0;
              if ((*(v120 + 48))(v118, 1, v119) != 1)
              {
                v122 = v269;
                isa = Date._bridgeToObjectiveC()().super.isa;
                (*(v120 + 8))(v122, v119);
              }

              [v279[0] setCreationDate:isa];

              v123 = &unk_100938850;
              v124 = qword_100795AE0;
              v125 = v271;
LABEL_62:
              sub_1000050A4(v125, v123, v124);
LABEL_63:
              while (1)
              {
                v50 = [v279[0] createResolutionTokenMapIfNecessary];
                dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
                if (v140)
                {
                  break;
                }

LABEL_120:
                v281 = 0;
                v282 = 0xE000000000000000;
                v112 = &v281;
                _StringGuts.grow(_:)(46);
                v196._object = 0x80000001007EC120;
                v196._countAndFlagsBits = 0xD00000000000002CLL;
                String.append(_:)(v196);
                v280 = v278;
                sub_1000F5104(&qword_100938C08, &unk_10079B270);
                while (1)
                {
                  _print_unlocked<A, B>(_:_:)();
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_122:
                  if (v112 == v228 && v227 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    sub_100010364(v276, v244, &unk_1009441F0, &qword_100795760);
                    v197 = swift_dynamicCast();
                    v198 = *(v255 + 56);
                    v255 += 56;
                    if ((v197 & 1) == 0)
                    {
                      v139 = v257;
                      v198(v257, 1, 1, v256);
                      v123 = &qword_100938C00;
                      v124 = &unk_100795780;
                      goto LABEL_61;
                    }

                    v199 = v257;
                    v198(v257, 0, 1, v256);
                    v200 = v199;
                    v201 = v259;
                    sub_100031B58(v200, v259, &unk_100939D90, "8\n\r");
                    v202 = v258;
                    sub_100010364(v201, v258, &unk_100939D90, "8\n\r");
                    v203 = type metadata accessor for UUID();
                    v204 = *(v203 - 8);
                    v205 = 0;
                    if ((*(v204 + 48))(v202, 1, v203) != 1)
                    {
                      v206 = v258;
                      v205 = UUID._bridgeToObjectiveC()().super.isa;
                      (*(v204 + 8))(v206, v203);
                    }

                    [v279[0] setPublicLinkURLUUID:v205];

                    v123 = &unk_100939D90;
                    v124 = "8\n\r";
                    v125 = v259;
                    goto LABEL_62;
                  }

                  if (v112 == 0x694C656372756F73 && v50 == 0xEF4C525544497473)
                  {
                    break;
                  }

                  v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v207)
                  {
                    goto LABEL_134;
                  }

                  if (qword_100936140 != -1)
                  {
                    swift_once();
                  }

                  v212 = type metadata accessor for Logger();
                  sub_100006654(v212, qword_100946F50);
                  v213 = v279[0];

                  v50 = Logger.logObject.getter();
                  v214 = static os_log_type_t.fault.getter();

                  if (!os_log_type_enabled(v50, v214))
                  {
                    goto LABEL_143;
                  }

                  v215 = swift_slowAlloc();
                  v280 = swift_slowAlloc();
                  *v215 = 136446466;
                  v216 = [v213 remObjectID];
                  v281 = v216;
                  sub_1000F5104(&unk_10093AF40, &unk_100795790);
                  v217 = Optional.descriptionOrNil.getter();
                  v219 = v218;

                  v220 = sub_10000668C(v217, v219, &v280);

                  *(v215 + 4) = v220;
                  *(v215 + 12) = 2082;
                  v221 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
                  if (v222)
                  {
                    v223 = sub_10000668C(v221, v222, &v280);

                    *(v215 + 14) = v223;
                    _os_log_impl(&_mh_execute_header, v50, v214, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported propertyKeyPath {objectID: %{public}s, propertyKeyPath: %{public}s}}", v215, 0x16u);
                    swift_arrayDestroy();

LABEL_143:

                    goto LABEL_65;
                  }

LABEL_144:
                  v281 = 0;
                  v282 = 0xE000000000000000;
                  v112 = &v281;
                  _StringGuts.grow(_:)(46);
                  v224._object = 0x80000001007EC120;
                  v224._countAndFlagsBits = 0xD00000000000002CLL;
                  String.append(_:)(v224);
                  v279[1] = v278;
                  sub_1000F5104(&qword_100938C08, &unk_10079B270);
                }

LABEL_134:
                v208 = v245;
                sub_100010364(v276, v245, &unk_1009441F0, &qword_100795760);
                if ((*(v274 + 48))(v208, 1, v275) == 1)
                {
                  v209 = 0;
                }

                else
                {
                  v210 = v245;
                  URL._bridgeToObjectiveC()(&v277);
                  v209 = v211;
                  (*(v274 + 8))(v210, v275);
                }

                [v279[0] setSourceListIDURL:v209];
              }

              v141 = String._bridgeToObjectiveC()();

              [v50 updateForKey:v141];

              goto LABEL_65;
            }

            v139 = v272;
          }

          else if (v112 == v239 && v240 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_100010364(v276, v266, &unk_1009441F0, &qword_100795760);
            v143 = swift_dynamicCast();
            v114 = *(v277.super.isa + 7);
            v277.super.isa = (v277.super.isa + 56);
            if (v143)
            {
              v144 = v268;
              v114(v268, 0, 1, v273);
              v145 = v144;
              v146 = v267;
              sub_100031B58(v145, v267, &unk_100938850, qword_100795AE0);
              v147 = v265;
              sub_100010364(v146, v265, &unk_100938850, qword_100795AE0);
              v148 = type metadata accessor for Date();
              v149 = *(v148 - 8);
              v150 = 0;
              if ((*(v149 + 48))(v147, 1, v148) != 1)
              {
                v151 = v265;
                v150 = Date._bridgeToObjectiveC()().super.isa;
                (*(v149 + 8))(v151, v148);
              }

              [v279[0] setLastModifiedDate:v150];

              v123 = &unk_100938850;
              v124 = qword_100795AE0;
              v125 = v267;
              goto LABEL_62;
            }

            v139 = v268;
          }

          else
          {
            if (v112 == v237 && v238 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              sub_100010364(v276, v263, &unk_1009441F0, &qword_100795760);
              v156 = swift_dynamicCast();
              v114 = *(v277.super.isa + 7);
              v277.super.isa = (v277.super.isa + 56);
              p_clients = &v283;
              if (v156)
              {
                v158 = v264;
                v114(v264, 0, 1, v273);
                v159 = v158;
                v160 = v262;
                sub_100031B58(v159, v262, &unk_100938850, qword_100795AE0);
                v161 = v261;
                sub_100010364(v160, v261, &unk_100938850, qword_100795AE0);
                v162 = type metadata accessor for Date();
                v163 = *(v162 - 8);
                v164 = 0;
                if ((*(v163 + 48))(v161, 1, v162) != 1)
                {
                  v165 = v261;
                  v164 = Date._bridgeToObjectiveC()().super.isa;
                  (*(v163 + 8))(v165, v162);
                }

                [v279[0] setMostRecentPublicLinkUpdateRequestDate:v164];

                v123 = &unk_100938850;
                v124 = qword_100795AE0;
                v125 = v262;
                goto LABEL_62;
              }
            }

            else
            {
              if (v112 == v235 && v236 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                sub_100010364(v276, v260, &unk_1009441F0, &qword_100795760);
                sub_1000F5104(&qword_100938C10, &unk_100795F30);
                if (swift_dynamicCast())
                {
                  v166 = v281;
                  v167 = v282;
                  if (v282 >> 60 == 15)
                  {
                    v168 = 0;
                  }

                  else
                  {
                    sub_100029344(v281, v282);
                    v168 = Data._bridgeToObjectiveC()().super.isa;
                    sub_100031A14(v166, v167);
                  }

                  [v279[0] setPublicLinkConfigurationData:v168];

                  sub_100031A14(v166, v167);
                }

                goto LABEL_63;
              }

              if (v112 == v233 && v234 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                sub_100010364(v276, v241, &unk_1009441F0, &qword_100795760);
                v169 = swift_dynamicCast();
                v114 = *(v277.super.isa + 7);
                v277.super.isa = (v277.super.isa + 56);
                p_clients = &v277._clients;
                if (v169)
                {
                  v170 = v248;
                  v114(v248, 0, 1, v273);
                  v171 = v170;
                  v172 = v247;
                  sub_100031B58(v171, v247, &unk_100938850, qword_100795AE0);
                  v173 = v246;
                  sub_100010364(v172, v246, &unk_100938850, qword_100795AE0);
                  v174 = type metadata accessor for Date();
                  v175 = *(v174 - 8);
                  v176 = 0;
                  if ((*(v175 + 48))(v173, 1, v174) != 1)
                  {
                    v177 = v246;
                    v176 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v175 + 8))(v177, v174);
                  }

                  [v279[0] setPublicLinkCreationDate:v176];

                  v123 = &unk_100938850;
                  v124 = qword_100795AE0;
                  v125 = v247;
                  goto LABEL_62;
                }
              }

              else if (v112 == v231 && v232 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                sub_100010364(v276, v242, &unk_1009441F0, &qword_100795760);
                v178 = swift_dynamicCast();
                v114 = *(v277.super.isa + 7);
                v277.super.isa = (v277.super.isa + 56);
                p_clients = v279;
                if (v178)
                {
                  v179 = v251;
                  v114(v251, 0, 1, v273);
                  v180 = v179;
                  v181 = v250;
                  sub_100031B58(v180, v250, &unk_100938850, qword_100795AE0);
                  v182 = v249;
                  sub_100010364(v181, v249, &unk_100938850, qword_100795AE0);
                  v183 = type metadata accessor for Date();
                  v184 = *(v183 - 8);
                  v185 = 0;
                  if ((*(v184 + 48))(v182, 1, v183) != 1)
                  {
                    v186 = v249;
                    v185 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v184 + 8))(v186, v183);
                  }

                  [v279[0] setPublicLinkExpirationDate:v185];

                  v123 = &unk_100938850;
                  v124 = qword_100795AE0;
                  v125 = v250;
                  goto LABEL_62;
                }
              }

              else
              {
                if ((v112 != v229 || v230 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_122;
                }

                sub_100010364(v276, v243, &unk_1009441F0, &qword_100795760);
                v187 = swift_dynamicCast();
                v114 = *(v277.super.isa + 7);
                v277.super.isa = (v277.super.isa + 56);
                p_clients = &v281;
                if (v187)
                {
                  v188 = v254;
                  v114(v254, 0, 1, v273);
                  v189 = v188;
                  v190 = v253;
                  sub_100031B58(v189, v253, &unk_100938850, qword_100795AE0);
                  v191 = v252;
                  sub_100010364(v190, v252, &unk_100938850, qword_100795AE0);
                  v192 = type metadata accessor for Date();
                  v193 = *(v192 - 8);
                  v194 = 0;
                  if ((*(v193 + 48))(v191, 1, v192) != 1)
                  {
                    v195 = v252;
                    v194 = Date._bridgeToObjectiveC()().super.isa;
                    (*(v193 + 8))(v195, v192);
                  }

                  [v279[0] setPublicLinkLastModifiedDate:v194];

                  v123 = &unk_100938850;
                  v124 = qword_100795AE0;
                  v125 = v253;
                  goto LABEL_62;
                }
              }
            }

            v139 = *(p_clients - 32);
          }

          v114(v139, 1, 1, v273);
          v123 = &qword_100938BF0;
          v124 = &qword_100795768;
LABEL_61:
          v125 = v139;
          goto LABEL_62;
        }

LABEL_65:
        v106 = v277._baseURL;
        goto LABEL_66;
      }

      sub_1000050A4(v88, &qword_100938BE8, &qword_100795758);
      (*(v274 + 8))(v74, v275);
    }

    sub_1000050A4(v78, &unk_100944250, &qword_1007957B0);
    sub_1000050A4(v85, &unk_1009441F0, &qword_100795760);
    v108 = &qword_100938BE8;
    v109 = &qword_100795758;
    goto LABEL_42;
  }

  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v126 = type metadata accessor for Logger();
  sub_100006654(v126, qword_100946F50);
  v127 = v279[0];

  v279[0] = Logger.logObject.getter();
  v50 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v279[0], v50))
  {
    v128 = swift_slowAlloc();
    v280 = swift_slowAlloc();
    *v128 = 136446466;
    v129 = [v127 remObjectID];
    v281 = v129;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v130 = Optional.descriptionOrNil.getter();
    v132 = v131;

    v133 = sub_10000668C(v130, v132, &v280);

    *(v128 + 4) = v133;
    *(v128 + 12) = 2082;
    v134 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v135)
    {
      goto LABEL_144;
    }

    v136 = sub_10000668C(v134, v135, &v280);

    *(v128 + 14) = v136;
    _os_log_impl(&_mh_execute_header, v279[0], v50, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with unsupported key path {objectID: %{public}s, propertyKeyPath: %{public}s}}", v128, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v142 = v279[0];
  }
}

uint64_t sub_100138BAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  v10 = sub_1000103CC(&v13);
  (*(*(a5 - 8) + 32))(v10, a2, a5);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_100054B6C(&v13, v11 + 24);
  *(v11 + 64) = a3;
  return v11;
}

void sub_100138C5C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1001308D4(a1, a2 & 1, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100138D40(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100138D4C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_100138D58()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1001312B4(v5, v6, v0 + v2, v7, v8, v9, v10);
}

void sub_100138E04(void *a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v25 - v7;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  v13 = sub_10034AE0C(a1, a2, 0, 0);
  if (!v2)
  {
    v14 = v13;
    v25[1] = 0;
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 56);
    v16(v12, 1, 1, v15);
    KeyPath = swift_getKeyPath();
    sub_10013206C(KeyPath, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_getKeyPath();
    sub_10013411C(v19, v8);

    sub_1000050A4(v8, &unk_100939D90, "8\n\r");
    [v14 setPublicLinkConfigurationData:0];
    v20 = [v14 createResolutionTokenMapIfNecessary];
    v21 = String._bridgeToObjectiveC()();
    [v20 updateForKey:v21];

    v16(v12, 1, 1, v15);
    v22 = swift_getKeyPath();
    sub_10013206C(v22, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v16(v12, 1, 1, v15);
    v23 = swift_getKeyPath();
    sub_10013206C(v23, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v16(v12, 1, 1, v15);
    v24 = swift_getKeyPath();
    sub_10013206C(v24, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    [v14 updateChangeCount];
  }
}

uint64_t sub_1001391AC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938C30);
  v1 = sub_100006654(v0, qword_100938C30);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100139274@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 listTypeRawValue];
  *a2 = result;
  return result;
}

void sub_1001392F8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_100139368(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_1001393D8()
{
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  qword_100974C08 = result;
  return result;
}

id sub_10013942C@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 lastAccessedSinceReferenceDate];
  *a2 = result;
  return result;
}

void sub_1001394A0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v59 = a2;
  v55 = a1;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v53 = &v48 - v11;
  v12 = type metadata accessor for UUID();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  __chkstk_darwin(v12);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v54 = a4;
  v15 = [a5 persistentStoreOfAccountWithAccountID:?];
  if (v15)
  {
    v16 = v15;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1007953F0;
    *(v17 + 32) = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1000398EC(v55, v59, a3, a4);
  v19 = sub_1005363D0(v17, v18);

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100791300;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 32) = 0x696669746E656469;
  *(v20 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v22 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {

    return;
  }

  v23 = v22;
  v49 = v19;
  v24 = v22 >> 62;
  if (v22 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25 < 2)
  {
    goto LABEL_13;
  }

  if (qword_100935AA0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100938C30);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v58[0] = v48;
      *v29 = 136315650;
      v30 = REMManualOrderingListType.description.getter();
      LODWORD(v55) = v28;
      v32 = sub_10000668C(v30, v31, v58);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10000668C(v59, a3, v58);
      *(v29 + 22) = 2080;
      *&v56 = v25;
      sub_10013A058();
      v33 = BinaryInteger.description.getter();
      v35 = sub_10000668C(v33, v34, v58);

      *(v29 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v27, v55, "fetching manual sort hint object ID returned more than one result {listType: %s listID: %s, count: %s}", v29, 0x20u);
      swift_arrayDestroy();
    }

LABEL_13:
    if (v24)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v53;
    if (!v36)
    {

      return;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v37 = *(v23 + 32);
      goto LABEL_20;
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
  v38 = v37;

  *&v56 = 0x696669746E656469;
  *(&v56 + 1) = 0xEA00000000007265;
  v39 = [v38 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v39)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v41 = v51;
  v40 = v52;
  v58[0] = v56;
  v58[1] = v57;
  if (!*(&v57 + 1))
  {

    sub_1000050A4(v58, &qword_100939ED0, &qword_100791B10);
    (*(v41 + 56))(v25, 1, 1, v40);
    goto LABEL_28;
  }

  v42 = swift_dynamicCast();
  (*(v41 + 56))(v25, v42 ^ 1u, 1, v40);
  if ((*(v41 + 48))(v25, 1, v40) == 1)
  {

LABEL_28:
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    return;
  }

  v43 = v50;
  (*(v41 + 32))(v50, v25, v40);
  v44 = v41;
  v45 = objc_opt_self();
  v46 = v40;
  v47 = UUID._bridgeToObjectiveC()().super.isa;
  [v45 objectIDWithUUID:v47];

  (*(v44 + 8))(v43, v46);
}

void *sub_100139BE4(void *a1, void *a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = type metadata accessor for REMManualOrdering.ManualOrderingID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&qword_100938C50, qword_1007957D8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v34 - v16;
  v18 = a1;
  REMManualOrdering.Predefined.init(smartListType:)();
  v19 = type metadata accessor for REMManualOrdering.Predefined();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_1000050A4(v17, &qword_100938C50, qword_1007957D8);
    return 0;
  }

  else
  {
    REMManualOrdering.Predefined.manualOrderingID.getter();
    (*(v20 + 8))(v17, v19);
    v22 = REMManualOrdering.ManualOrderingID.objectID.getter();
    (*(v10 + 8))(v13, v9);
    v23 = type metadata accessor for RDPredefinedObjectKey();
    v24 = objc_allocWithZone(v23);
    v25 = v35;
    *&v24[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v35;
    *&v24[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v22;
    v37.receiver = v24;
    v37.super_class = v23;
    v26 = v22;
    v27 = v25;
    v28 = objc_msgSendSuper2(&v37, "init");
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    (*(v5 + 104))(v8, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v4);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;

    v31 = v28;
    dispatch thunk of REMCache.performReadOnly(_:operations:)();

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    v21 = *(v29 + 16);
    v32 = v21;
  }

  return v21;
}

unint64_t sub_100139FA0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if ((result >> 62) > 1)
  {
    if (result >> 62 == 2)
    {
    }
  }

  else
  {

    return a4;
  }

  return result;
}

unint64_t sub_10013A058()
{
  result = qword_100938C58;
  if (!qword_100938C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C58);
  }

  return result;
}

Class sub_10013A0AC(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v5 = v4;
  v83 = a4;
  v8 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v82 = *(v8 - 8);
  v9 = *(v82 + 64);
  __chkstk_darwin(v8);
  v81 = &v78 - v10;
  v11 = type metadata accessor for REMManualOrdering.ManualOrderingID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMManualOrdering.Predefined.manualOrderingID.getter();
  v16 = sub_10003A1B8();
  if (!v16)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  v17 = v16;
  v80 = a3;
  v85 = v11;
  v18 = type metadata accessor for REMCDManualSortHint();
  v86 = REMManualOrdering.ManualOrderingID.listType.getter();
  v19 = v86;
  v21 = REMManualOrdering.ManualOrderingID.listID.getter();
  v84 = v12;
  v87 = v17;
  v88 = v18;
  v79 = v8;
  v89 = v20;
  if (v19 != 1 || (v22 = v20, , v23._countAndFlagsBits = v21, v23._object = v22, (v24 = REMSmartListType.init(stringValue:)(v23)) == 0))
  {
LABEL_14:
    v34 = v17;
    v35 = [a2 persistentStoreOfAccountWithAccountID:v34];
    if (v35)
    {
      v36 = v35;
      v37 = v5;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1007953F0;
      *(v38 + 32) = v36;
    }

    else
    {
      v37 = v5;
      v38 = 0;
    }

    v39 = sub_1000398EC(v86, v21, v89, v87);
    v40 = [objc_allocWithZone(NSFetchRequest) init];
    v41 = [swift_getObjCClassFromMetadata() entity];
    [v40 setEntity:v41];

    if (v38)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v42.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v42.super.isa = 0;
    }

    [v40 setAffectedStores:v42.super.isa];

    [v40 setPredicate:v39];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1007953F0;
    if (qword_100935AA8 != -1)
    {
      swift_once();
    }

    v44 = qword_100974C08;
    *(v43 + 32) = qword_100974C08;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v45 = v44;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v40 setSortDescriptors:isa];

    v46 = NSManagedObjectContext.fetch<A>(_:)();
    if (v37)
    {
      (*(v84 + 8))(v15, v85);

      return isa;
    }

    if (v46 >> 62)
    {
      v76 = v46;
      v77 = _CocoaArrayWrapper.endIndex.getter();
      v46 = v76;
      if (v77)
      {
        goto LABEL_26;
      }
    }

    else if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      if ((v46 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v47 = *(v46 + 32);
      }

      isa = v47;
      v48 = v86;

      if (v48 == 1 && (v88 = 0, (v49 = [(objc_class *)isa remObjectID]) != 0))
      {
        v50 = v49;
        v51 = [(objc_class *)isa objectID];
        v52 = type metadata accessor for RDPredefinedObjectKey();
        v53 = objc_allocWithZone(v52);
        *&v53[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v34;
        *&v53[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v50;
        v91.receiver = v53;
        v91.super_class = v52;
        v86 = v34;
        v78 = v50;
        v54 = objc_msgSendSuper2(&v91, "init");
        v55 = v81;
        v56 = v82;
        (*(v82 + 104))(v81, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v79);
        v57 = swift_allocObject();
        *(v57 + 16) = v51;
        *(v57 + 24) = v54;
        v58 = v51;
        v59 = v54;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        (*(v56 + 8))(v55, v79);
      }

      else
      {
      }

      goto LABEL_33;
    }

    (*(v84 + 8))(v15, v85);

    return 0;
  }

  v25 = v24;
  v26 = sub_100139BE4(v24, v17, v83);
  if (!v26)
  {

    goto LABEL_14;
  }

  v27 = v26;
  v90 = 0;
  v28 = [a2 existingObjectWithID:v26 error:&v90];
  if (!v28)
  {
    v33 = v90;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v5 = 0;
LABEL_13:
    v17 = v87;
    goto LABEL_14;
  }

  v29 = v28;
  v30 = v90;

  v31 = swift_dynamicCastClass();
  if (!v31)
  {

    goto LABEL_13;
  }

  isa = v31;

LABEL_33:
  v60 = v87;
  if (v80)
  {
    v61 = [objc_opt_self() sharedConfiguration];
    v62 = [v61 manualSortHintLastAccessedUpdatePolicy];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    v67 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v66);

    if (v67 >= 3)
    {
      LOBYTE(v67) = 2;
    }

    v68 = [(objc_class *)isa remObjectID];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 description];

      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;
    }

    else
    {
      v73 = 0xE300000000000000;
      v71 = 7104878;
    }

    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    *(v74 + 24) = v73;
    sub_1002D74D4(1, v67, sub_10013AF94, v74);
  }

  else
  {
  }

  (*(v84 + 8))(v15, v85);
  return isa;
}

void sub_10013A994(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = sub_1000398EC(a1, a2, a3, a4);
  type metadata accessor for REMCDManualSortHint();
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  v21 = [swift_getObjCClassFromMetadata() entity];
  [v20 setEntity:v21];

  [v20 setAffectedStores:0];
  [v20 setPredicate:v19];

  v22 = v70;
  v23 = NSManagedObjectContext.fetch<A>(_:)();
  v59 = v22;
  if (v22)
  {

    return;
  }

  v25 = v23;
  v26 = v69;
  v66 = v18;
  v67 = v15;
  v68 = v11;
  if (!(v23 >> 62))
  {
    v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_5;
    }

LABEL_29:

LABEL_30:

    return;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_29;
  }

LABEL_5:
  v56 = v20;
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = v25 & 0xC000000000000001;
    v62 = (v26 + 48);
    v63 = (v26 + 56);
    v57 = (v26 + 8);
    v58 = (v26 + 16);
    v30 = &selRef_hack_willSaveHandled;
    *&v24 = 33555202;
    v61 = v24;
    v64 = v25 & 0xC000000000000001;
    v65 = v25;
    v60 = v27;
    do
    {
      if (v29)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v25 + 8 * v28 + 32);
      }

      v32 = v31;
      if (([v31 v30[324]] & 1) == 0)
      {
        if (qword_100935AA0 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100006654(v33, qword_100938C30);
        v34 = v32;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          LODWORD(v70) = v36;
          v37 = v8;
          v38 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v71 = v69;
          *v38 = v61;
          *(v38 + 4) = [v34 listTypeRawValue];

          *(v38 + 6) = 2082;
          v39 = [v34 listID];
          if (v39)
          {
            v40 = v39;
            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;
          }

          else
          {
            v43 = 0xE300000000000000;
            v41 = 7104878;
          }

          v8 = v37;
          v44 = sub_10000668C(v41, v43, &v71);

          *(v38 + 8) = v44;
          *(v38 + 16) = 2082;
          v45 = [v34 identifier];
          v46 = v68;
          if (v45)
          {
            v47 = v67;
            v48 = v45;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v49 = 0;
          }

          else
          {
            v49 = 1;
            v47 = v67;
          }

          (*v63)(v47, v49, 1, v8);
          v50 = v66;
          sub_100100FB4(v47, v66);
          if ((*v62)(v50, 1, v8))
          {
            sub_1000050A4(v50, &unk_100939D90, "8\n\r");
            v51 = 0xE300000000000000;
            v52 = 7104878;
          }

          else
          {
            (*v58)(v46, v50, v8);
            sub_1000050A4(v50, &unk_100939D90, "8\n\r");
            v52 = UUID.uuidString.getter();
            v51 = v53;
            (*v57)(v46, v8);
          }

          v27 = v60;
          v54 = sub_10000668C(v52, v51, &v71);

          *(v38 + 18) = v54;
          _os_log_impl(&_mh_execute_header, v35, v70, "DELETE(-soft) manual sort hint (listType: %hd, listID: %{public}s, identifier: %{public}s)", v38, 0x1Au);
          swift_arrayDestroy();

          v29 = v64;
          v25 = v65;
        }

        else
        {
        }

        [v34 markForDeletion];
        [v34 updateChangeCount];
        v30 = &selRef_hack_willSaveHandled;
      }

      ++v28;
    }

    while (v27 != v28);

    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_10013AFA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return REMCacheContext.setObject(_:forKey:)();
}

uint64_t sub_10013AFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v40 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v15 = qword_100974CC8;
  v16 = type metadata accessor for RDDaemonController();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v19 = 0xD000000000000013;
  *(v19 + 1) = 0x80000001007EC180;
  *(v19 + 38) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = 0;
  *&v17[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v43.receiver = v17;
  v43.super_class = v16;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v43, "init");
  v36 = v20;
  v21 = type metadata accessor for RDDataStoreApplicationShortcutListProvider();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v15;

  v25 = sub_10035090C(v24, a3, v20);

  type metadata accessor for RDSpringBoardApplicationShortcutUpdater();
  v26 = swift_allocObject();
  sub_100007F54();
  *(v26 + 24) = static OS_dispatch_queue.main.getter();
  *(v26 + 16) = [objc_allocWithZone(SBSApplicationShortcutService) init];
  v27 = type metadata accessor for RDApplicationShortcutEngine();
  v28 = swift_allocObject();
  v29 = v24;

  v35 = sub_10013B4F0(v29, v25, v26, v28);
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = &off_1008EEC48;
  aBlock[4] = sub_10013B7C4;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E5FC0;
  v31 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v39 + 8))(v10, v7);
  (*(v37 + 8))(v14, v38);

  v32 = v40;
  v40[3] = v27;
  v32[4] = &off_1008F3B58;

  *v32 = v35;
  return result;
}

id RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RDApplicationShortcutAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void *sub_10013B4F0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = &off_1008EEC48;
  a4[5] = a3;
  v19[1] = a3;
  a4[6] = &off_1008E8438;
  *(a2 + 32) = &off_1008F3B48;
  swift_unknownObjectWeakAssign();
  v19[2] = a4[2];
  aBlock[4] = sub_10013B7E8;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E5FE8;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);

  return a4;
}

uint64_t sub_10013B7F8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v58 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10013BCF4();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (v9 == 8738 ? (v14 = v11 == 0xE200000000000000) : (v14 = 0), v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v9 == 45 ? (v15 = v11 == 0xE100000000000000) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v9 == 0x1000000000000017 ? (v16 = 0x80000001007EC1A0 == v11) : (v16 = 0), v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 0x600A22220A606060 && v11 == 0xEA00000000006060 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))))
  {

    sub_10013BD48();
    swift_allocError();
    swift_willThrow();
    return v9;
  }

  else
  {
    v57 = v9;
    v58 = v11;
    v55 = 2108682;
    v56 = 0xE300000000000000;
    v18 = StringProtocol.components<A>(separatedBy:)();
    v19 = *(v18 + 16);
    if (v19)
    {
      v59 = _swiftEmptyArrayStorage;
      v49 = v19;
      sub_100026EF4(0, v19, 0);
      v20 = v59;
      v45 = v18;
      v21 = (v18 + 40);
      do
      {
        v50 = v20;
        v22 = *(v21 - 1);
        v47 = *v21;
        v48 = v21;
        v55 = v22;
        v56 = v47;

        static CharacterSet.whitespacesAndNewlines.getter();
        v23 = StringProtocol.trimmingCharacters(in:)();
        v25 = v24;
        v12(v8, v4);
        v55 = v23;
        v56 = v25;
        v53 = 2108766;
        v54 = 0xE300000000000000;
        v51 = 0;
        v52 = 0xE000000000000000;
        v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v46 = v27;

        v28 = v50;
        v59 = v50;
        v30 = v50[2];
        v29 = v50[3];
        v31 = (v30 + 1);
        if (v30 >= v29 >> 1)
        {
          v47 = v26;
          v50 = (v30 + 1);
          sub_100026EF4((v29 > 1), v30 + 1, 1);
          v31 = v50;
          v26 = v47;
          v28 = v59;
        }

        v28[2] = v31;
        v32 = &v28[2 * v30];
        v33 = v46;
        v32[4] = v26;
        v32[5] = v33;
        --v49;
        v20 = v28;
        v21 = v48 + 2;
      }

      while (v49);

      v34 = v20;
    }

    else
    {

      v34 = _swiftEmptyArrayStorage;
    }

    v35 = 0;
    v36 = v34[2];
    v37 = v34 + 5;
    v9 = _swiftEmptyArrayStorage;
LABEL_32:
    v38 = &v37[2 * v35];
    while (1)
    {
      if (v36 == v35)
      {

        return v9;
      }

      if (v35 >= v34[2])
      {
        break;
      }

      ++v35;
      v40 = *(v38 - 1);
      v39 = *v38;
      v38 += 2;
      v41 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v41 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v50 = v34;

        result = swift_isUniquelyReferenced_nonNull_native();
        v55 = v9;
        v49 = v37;
        if ((result & 1) == 0)
        {
          result = sub_100026EF4(0, *(v9 + 16) + 1, 1);
          v9 = v55;
        }

        v43 = *(v9 + 16);
        v42 = *(v9 + 24);
        v34 = v50;
        if (v43 >= v42 >> 1)
        {
          result = sub_100026EF4((v42 > 1), v43 + 1, 1);
          v34 = v50;
          v9 = v55;
        }

        *(v9 + 16) = v43 + 1;
        v44 = v9 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v39;
        v37 = v49;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10013BCF4()
{
  result = qword_100942590;
  if (!qword_100942590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942590);
  }

  return result;
}

unint64_t sub_10013BD48()
{
  result = qword_100938C88;
  if (!qword_100938C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C88);
  }

  return result;
}

unint64_t sub_10013BDB0()
{
  result = qword_100938C90;
  if (!qword_100938C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C90);
  }

  return result;
}

id sub_10013BE04(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RDPublicTemplate() + 32);
  v5 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithUUID:isa entityName:v7];

  v9 = *v2;
  v10 = v2[1];
  v11 = objc_allocWithZone(REMListStorage);
  v12 = v8;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 initWithObjectID:v12 accountID:a1 name:v13];

  [v14 setColor:v2[2]];
  if (v2[4])
  {
    v15 = v2[3];
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v14 setBadgeEmblem:v16];

  if (v2[6])
  {
    v17 = v2[5];

    v18 = REMSortingStyle.init(stringValue:)();
    if (v18)
    {
      v19 = v18;
      [v14 setSortingStyle:v18];
    }
  }

  [v14 setParentAccountID:a1];
  if (qword_100935AB0 != -1)
  {
    swift_once();
  }

  v20 = qword_100974C10;
  [v14 setMinimumSupportedVersion:qword_100974C10];
  [v14 setEffectiveMinimumSupportedVersion:v20];

  return v14;
}

char *sub_10013C004(void *a1, void *a2, void *a3)
{
  v101 = a3;
  v4 = v3;
  v106 = a2;
  v103 = type metadata accessor for RDSavedURLAttachment();
  v95 = *(v103 - 8);
  v6 = *(v95 + 64);
  __chkstk_darwin(v103);
  v104 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v100 = &v92 - v10;
  v11 = type metadata accessor for UUID();
  ObjCClassFromMetadata = *(v11 - 1);
  v12 = ObjCClassFromMetadata[8];
  __chkstk_darwin(v11);
  v96 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v99 = &v92 - v15;
  __chkstk_darwin(v16);
  v97 = &v92 - v17;
  __chkstk_darwin(v18);
  v20 = &v92 - v19;
  v21 = type metadata accessor for RDSavedReminder();
  v98 = *(v21 - 8);
  v22 = v98[8];
  __chkstk_darwin(v21 - 8);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v105 = &v92 - v27;
  v112 = a1;
  v28 = [a1 entityName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v110 = 0xD00000000000001DLL;
  v111 = 0x80000001007EC4D0;
  v32 = type metadata accessor for RDPublicTemplate();
  v33 = *(v32 + 32);
  sub_100140E2C(&qword_10093F2A0, &type metadata accessor for UUID);
  v108 = v11;
  v109 = v4;
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  if (v29 == v110 && v31 == v111)
  {

    v35 = v112;
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v35 = v112;
    if ((v36 & 1) == 0)
    {
LABEL_11:
      [objc_opt_self() noSuchObjectErrorWithObjectID:v35];
      swift_willThrow();
      return v24;
    }
  }

  v37 = &v109[*(v32 + 40)];
  v38 = *(v37 + 2);
  v39 = [v35 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v38 + 16) || (v40 = sub_100363F20(v20), (v41 & 1) == 0))
  {
    (ObjCClassFromMetadata[1])(v20, v108);
    goto LABEL_11;
  }

  sub_10013FED4(*(v38 + 56) + v98[9] * v40, v24, type metadata accessor for RDSavedReminder);
  v42 = ObjCClassFromMetadata[1];
  v43 = v20;
  v94 = (ObjCClassFromMetadata + 1);
  v44 = v42;
  v42(v43, v108);
  sub_10013FE70(v24, v105);
  v45 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v47 = String._bridgeToObjectiveC()();
  v98 = [v45 initWithUUID:isa entityName:v47];

  v48 = *(v37 + 7);
  v49 = [v35 uuid];
  v24 = v99;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v48 + 16))
  {
    v56 = 1;
    v51 = v106;
    v55 = v108;
    v52 = v100;
LABEL_15:
    v54 = ObjCClassFromMetadata;
    goto LABEL_16;
  }

  v50 = sub_100363F20(v24);
  v51 = v106;
  v52 = v100;
  if ((v53 & 1) == 0)
  {
    v56 = 1;
    v55 = v108;
    goto LABEL_15;
  }

  v54 = ObjCClassFromMetadata;
  v55 = v108;
  (ObjCClassFromMetadata[2])(v100, *(v48 + 56) + ObjCClassFromMetadata[9] * v50, v108);
  v56 = 0;
LABEL_16:
  v44(v24, v55);
  (v54[7])(v52, v56, 1, v55);
  v58 = (v54[6])(v52, 1, v55);
  v93 = v44;
  if (v58 == 1)
  {
    sub_1000050A4(v52, &unk_100939D90, "8\n\r");
    v109 = 0;
  }

  else
  {
    v24 = v97;
    (v54[4])(v97, v52, v55);
    v59 = sub_10013CA40();
    v44(v24, v55);
    v109 = v59;
    v60 = v59;
  }

  type metadata accessor for REMSavedReminderStorageCDIngestor();
  inited = swift_initStackObject();
  v62 = v101;
  *(inited + 16) = v101;
  v63 = qword_100935AB0;
  v108 = v62;
  v64 = v105;
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = v98;
  v66 = v109;
  v67 = v102;
  v68 = sub_10050DD78(v64, v112, v98, v51, v109, qword_100974C10, qword_100974C10, 0, 0xF000000000000000);
  if (v67)
  {

    sub_10013FF3C(v64, type metadata accessor for RDSavedReminder);
  }

  else
  {
    v24 = v68;

    v69 = *(v37 + 3);
    if (v69)
    {
      v70 = [v112 uuid];
      v71 = v96;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v69 + 16) && (v72 = sub_100363F20(v71), (v73 & 1) != 0))
      {
        v74 = *(*(v69 + 56) + 8 * v72);

        v93(v71, v55);
        v75 = *(v74 + 16);
        if (v75)
        {
          v110 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          type metadata accessor for REMCDSavedAttachment();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v76 = *(v95 + 80);
          v102 = v74;
          v77 = v74 + ((v76 + 32) & ~v76);
          v78 = *(v95 + 72);
          v79 = v104;
          do
          {
            sub_10013FED4(v77, v79, type metadata accessor for RDSavedURLAttachment);
            v83 = v79;
            v84 = [ObjCClassFromMetadata newObjectID];
            v85 = (v83 + *(v103 + 20));
            v86 = v85->super.isa;
            urlString = v85->_urlString;
            URL._bridgeToObjectiveC()(v85);
            v89 = v88;
            if (urlString >> 60 == 15)
            {
              v80.super.isa = 0;
            }

            else
            {
              v80.super.isa = Data._bridgeToObjectiveC()().super.isa;
            }

            v81 = objc_allocWithZone(REMURLAttachment);
            [v81 initWithObjectID:v84 accountID:v106 reminderID:v112 url:v89 metadata:v80.super.isa];

            v79 = v104;
            sub_10013FF3C(v104, type metadata accessor for RDSavedURLAttachment);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v82 = v110[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v77 += v78;
            --v75;
          }

          while (v75);

          v64 = v105;
        }

        else
        {
        }

        v90 = v98;
        sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
        v91 = Array._bridgeToObjectiveC()().super.isa;

        [v24 setAttachments:v91];
      }

      else
      {

        v93(v71, v55);
      }

      sub_10013FF3C(v64, type metadata accessor for RDSavedReminder);
    }

    else
    {

      sub_10013FF3C(v64, type metadata accessor for RDSavedReminder);
    }
  }

  return v24;
}

id sub_10013CA40()
{
  v0 = *(type metadata accessor for RDPublicTemplate() + 32);
  type metadata accessor for UUID();
  sub_100140E2C(&qword_10093F2A0, &type metadata accessor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithUUID:isa entityName:{v4, 0xD00000000000001DLL, 0x80000001007EC4D0}];

  return v5;
}

uint64_t sub_10013CB64()
{
  v95 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v94 = *(v95 - 8);
  v1 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v96 = *(v97 - 8);
  v3 = *(v96 + 64);
  __chkstk_darwin(v97);
  v5 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v85 = &v81 - v7;
  v109 = type metadata accessor for UUID();
  v100 = *(v109 - 8);
  v8 = *(v100 + 64);
  __chkstk_darwin(v109);
  v99 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v81 - v11;
  __chkstk_darwin(v13);
  v101 = &v81 - v14;
  v15 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v111 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v92 = &v81 - v20;
  __chkstk_darwin(v21);
  v23 = &v81 - v22;
  v24 = (v0 + *(type metadata accessor for RDPublicTemplate() + 40));
  v25 = *v24;
  v114 = v0;
  v26 = sub_10024CF9C(sub_10013FF9C, v113, v25);
  v27 = v24[4];
  if (!v27 || (v98 = v24[5]) == 0 || (v28 = v24[6]) == 0)
  {
    (*(v94 + 104))(v93, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v95);
    REMRemindersListDataView.SectionLite.init(type:reminders:)();
    v0 = sub_100365A4C(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = v0[2];
    v32 = v0[3];
    v29 = v28 + 1;
    if (v28 >= v32 >> 1)
    {
LABEL_43:
      v0 = sub_100365A4C(v32 > 1, v29, 1, v0);
    }

    v73 = v97;
    v74 = v96;
    v0[2] = v29;
    (*(v74 + 32))(v0 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v28, v5, v73);
    return v0;
  }

  v82 = v27;
  v83 = 0;
  v5 = _swiftEmptyArrayStorage;
  v86 = sub_10038E87C(_swiftEmptyArrayStorage);
  v116 = v86;
  v107 = *(v26 + 16);
  if (!v107)
  {
    v87 = 0;
LABEL_37:

    v75 = v98;

    v0 = sub_10013F7E8(v82, v75, &v116);

    (*(v94 + 104))(v93, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v95);
    v54 = v85;
    REMRemindersListDataView.SectionLite.init(type:reminders:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_45:
      v0 = sub_100365A4C(0, v0[2] + 1, 1, v0);
    }

    v76 = v96;
    v77 = v87;
    v79 = v0[2];
    v78 = v0[3];
    if (v79 >= v78 >> 1)
    {
      v0 = sub_100365A4C(v78 > 1, v79 + 1, 1, v0);
    }

    v0[2] = v79 + 1;
    (*(v76 + 32))(v0 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v79, v54);

    sub_10003E114(v77);
    return v0;
  }

  v87 = 0;
  v29 = 0;
  v104 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v106 = v26 + v104;
  v112 = v16 + 16;
  v91 = v100 + 16;
  v108 = (v100 + 8);
  v90 = v100 + 32;
  v102 = (v16 + 32);
  v103 = (v16 + 8);
  v89 = v12;
  v88 = v16;
  v105 = v26;
  while (1)
  {
    v32 = *(v26 + 16);
    if (v29 >= v32)
    {
      __break(1u);
      goto LABEL_43;
    }

    v110 = *(v16 + 72);
    v33 = *(v16 + 16);
    v33(v23, v106 + v110 * v29, v15);
    v34 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v35 = v28;
    v36 = [v34 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v35;
    if (!*(v35 + 16) || (v37 = sub_100363F20(v12), (v38 & 1) == 0))
    {
      (*v108)(v12, v109);
LABEL_19:
      v33(v111, v23, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100365A24(0, v5[2] + 1, 1, v5);
      }

      v63 = v5[2];
      v62 = v5[3];
      v0 = (v63 + 1);
      if (v63 >= v62 >> 1)
      {
        v5 = sub_100365A24(v62 > 1, v63 + 1, 1, v5);
      }

      (*v103)(v23, v15);
      v30 = v5;
      v31 = v111;
      goto LABEL_7;
    }

    v40 = v99;
    v39 = v100;
    v41 = v109;
    (*(v100 + 16))(v99, *(v35 + 56) + *(v100 + 72) * v37, v109);
    v42 = v12;
    v43 = *(v39 + 8);
    v43(v42, v41);
    v44 = *(v39 + 32);
    v45 = v101;
    v44(v101, v40, v41);
    v46 = v98;
    if (!*(v98 + 16) || (v47 = sub_100363F20(v45), (v48 & 1) == 0))
    {
      v43(v45, v109);
      v12 = v89;
      v16 = v88;
      v28 = v35;
      goto LABEL_19;
    }

    v84 = v43;
    v49 = *(v46 + 56) + 16 * v47;
    v50 = *v49;
    v51 = *(v49 + 8);
    v33(v92, v23, v15);

    sub_10003E114(v87);
    v0 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = v0;
    v87 = v50;
    v54 = sub_100364198(v50, v51);
    v55 = v0[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      __break(1u);
      goto LABEL_45;
    }

    v58 = v53;
    if (v0[3] >= v57)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100373E1C();
        v0 = v115;
      }
    }

    else
    {
      sub_10036B824(v57, isUniquelyReferenced_nonNull_native);
      v59 = v115;
      v60 = sub_100364198(v87, v51);
      if ((v58 & 1) != (v61 & 1))
      {
        goto LABEL_47;
      }

      v54 = v60;
      v0 = v59;
    }

    v116 = v0;
    v86 = v0;
    if ((v58 & 1) == 0)
    {
      break;
    }

    v64 = v86;
LABEL_29:
    v69 = *(v64 + 56);
    v70 = *(v69 + 8 * v54);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *(v69 + 8 * v54) = v70;
    if ((v71 & 1) == 0)
    {
      v70 = sub_100365A24(0, v70[2] + 1, 1, v70);
      *(v69 + 8 * v54) = v70;
    }

    v63 = v70[2];
    v72 = v70[3];
    v0 = (v63 + 1);
    if (v63 >= v72 >> 1)
    {
      *(v69 + 8 * v54) = sub_100365A24(v72 > 1, v63 + 1, 1, v70);
    }

    v84(v101, v109);
    (*v103)(v23, v15);
    v30 = *(v69 + 8 * v54);
    v87 = sub_100066ED8;
    v31 = v92;
    v12 = v89;
    v16 = v88;
    v28 = v35;
LABEL_7:
    ++v29;
    v30[2] = v0;
    (*v102)(v30 + v104 + v63 * v110, v31, v15);
    v26 = v105;
    if (v107 == v29)
    {
      goto LABEL_37;
    }
  }

  v0[(v54 >> 6) + 8] |= 1 << v54;
  v64 = v86;
  v65 = (*(v86 + 48) + 16 * v54);
  *v65 = v87;
  v65[1] = v51;
  *(*(v64 + 56) + 8 * v54) = _swiftEmptyArrayStorage;
  v66 = *(v64 + 16);
  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (!v67)
  {
    *(v64 + 16) = v68;
    goto LABEL_29;
  }

  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10013D660(uint64_t a1, uint64_t a2)
{
  v4 = sub_10013CA40();
  v5 = *(a2 + *(type metadata accessor for RDPublicTemplate() + 40) + 8);
  if (*(v5 + 16))
  {
    v6 = sub_100363F20(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      __chkstk_darwin(v6);
      v9[2] = a2;

      sub_10024CF9C(sub_10013FFBC, v9, v8);
    }
  }

  REMObjectID.codable.getter();
  REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)();
}

void sub_10013D76C()
{
  v0 = sub_10013CA40();
  REMObjectID.codable.getter();
  REMRemindersListDataView.ReminderLite.init(objectID:isCompleted:subtasks:)();
}

double sub_10013D7C4@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v95 = a2;
  v97 = type metadata accessor for URL();
  v98 = *(v97 - 8);
  v3 = *(v98 + 64);
  v4 = __chkstk_darwin(v97);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v99 = &v85 - v7;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v85 - v10;
  v12 = type metadata accessor for Date();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 64);
  __chkstk_darwin(v12);
  v100 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v85 - v17;
  v113 = type metadata accessor for UUID();
  v104 = *(v113 - 8);
  v19 = *(v104 + 64);
  __chkstk_darwin(v113);
  v103 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x655463696C627550 && v21 == 0xEE006574616C706DLL)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      v28 = objc_opt_self();
      *&v109 = 0;
      *(&v109 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(117);
      v29._countAndFlagsBits = 0xD000000000000058;
      v29._object = 0x80000001007EC1C0;
      String.append(_:)(v29);
      v30._countAndFlagsBits = 0x655463696C627550;
      v30._object = 0xEE006574616C706DLL;
      String.append(_:)(v30);
      v31._object = 0x80000001007EC220;
      v31._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v31);
      v32._countAndFlagsBits = CKRecord.recordType.getter();
      String.append(_:)(v32);

      v33._countAndFlagsBits = 125;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v34 = String._bridgeToObjectiveC()();

      [v28 invalidParameterErrorWithDescription:v34];

      goto LABEL_11;
    }
  }

  v23 = CKRecord.subscript.getter();
  if (!v23 || (*&v105 = v23, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    v26 = objc_opt_self();
    v27 = String._bridgeToObjectiveC()();
    [v26 invalidParameterErrorWithDescription:v27];

LABEL_11:
    swift_willThrow();

    return result;
  }

  UUID.init(uuidString:)();

  v24 = v104;
  v25 = v113;
  if ((*(v104 + 48))(v18, 1, v113) == 1)
  {
    sub_1000050A4(v18, &unk_100939D90, "8\n\r");
    goto LABEL_9;
  }

  v36 = *(v24 + 32);
  v36(v103, v18, v25);
  v37 = CKRecord.subscript.getter();
  if (v37)
  {
    *&v109 = v37;
    v38 = v102;
    v39 = swift_dynamicCast();
    v40 = v101;
    v94 = *(v101 + 56);
    v94(v11, v39 ^ 1u, 1, v38);
    if ((*(v40 + 48))(v11, 1, v38) != 1)
    {
      v42 = *(v40 + 32);
      v41 = v40 + 32;
      v93 = v42;
      v42(v100, v11, v38);
      v43 = CKRecord.subscript.getter();
      if (!v43 || (*&v105 = v43, (swift_dynamicCast() & 1) == 0))
      {
        v50 = objc_opt_self();
        v51 = String._bridgeToObjectiveC()();
        [v50 invalidParameterErrorWithDescription:v51];

        swift_willThrow();
LABEL_50:
        (*(v101 + 8))(v100, v102);
        goto LABEL_51;
      }

      v89 = v41;
      v90 = v36;
      v91 = *(&v109 + 1);
      v88 = v109;
      v44 = CKRecord.subscript.getter();
      if (v44)
      {
        *&v105 = v44;
        v45 = swift_dynamicCast();
        v46 = v98;
        v47 = v99;
        if (v45)
        {
          v92 = sub_10013E670(v109, *(&v109 + 1), &qword_100938CA0, REMColor_ptr, sub_10050D7A0, &qword_100938CA8, &unk_100795B00);
        }

        else
        {
          v92 = 0;
        }
      }

      else
      {
        v92 = 0;
        v46 = v98;
        v47 = v99;
      }

      v52 = CKRecord.subscript.getter();
      if (v52)
      {
        *&v105 = v52;
        v53 = swift_dynamicCast();
        v54 = v109;
        if (!v53)
        {
          v54 = 0;
        }

        v87 = v54;
        if (v53)
        {
          v55 = *(&v109 + 1);
        }

        else
        {
          v55 = 0;
        }

        v98 = v55;
      }

      else
      {
        v87 = 0;
        v98 = 0;
      }

      v56 = CKRecord.subscript.getter();
      if (v56)
      {
        *&v105 = v56;
        v57 = swift_dynamicCast();
        v58 = v109;
        if (!v57)
        {
          v58 = 0;
        }

        v86 = v58;
        if (v57)
        {
          v59 = *(&v109 + 1);
        }

        else
        {
          v59 = 0;
        }
      }

      else
      {
        v86 = 0;
        v59 = 0;
      }

      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v60 = swift_dynamicCastObjCClass();
        if (v60)
        {
          v61 = [v60 fileURL];
          if (v61)
          {
            v62 = v61;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v63 = v97;
            (*(v46 + 32))(v47, v6, v97);
            v64 = v96;
            v65 = Data.init(contentsOf:options:)();
            if (!v64)
            {
              v96 = v65;
              v71 = v66;
              v72 = type metadata accessor for JSONDecoder();
              v73 = *(v72 + 48);
              v74 = *(v72 + 52);
              swift_allocObject();
              JSONDecoder.init()();
              sub_10013F2DC();
              v85 = v71;
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();
              (*(v46 + 8))(v99, v97);
              swift_unknownObjectRelease();
              sub_10001BBA0(v96, v85);

              v105 = v109;
              v106 = v110;
              v107 = v111;
              v108 = v112;
              v75 = type metadata accessor for RDPublicTemplate();
              v76 = v95;
              v90(&v95[v75[8]], v103, v113);
              v77 = v75[9];
              v78 = v102;
              v93(&v76[v77], v100, v102);
              v94(&v76[v77], 0, 1, v78);
              v79 = v91;
              *v76 = v88;
              *(v76 + 1) = v79;
              v80 = v87;
              *(v76 + 2) = v92;
              *(v76 + 3) = v80;
              v81 = v86;
              *(v76 + 4) = v98;
              *(v76 + 5) = v81;
              *(v76 + 6) = v59;
              v82 = &v76[v75[10]];
              v83 = v106;
              *v82 = v105;
              *(v82 + 1) = v83;
              result = *&v107;
              v84 = v108;
              *(v82 + 2) = v107;
              *(v82 + 3) = v84;
              return result;
            }

            swift_unknownObjectRelease();

            (*(v46 + 8))(v47, v63);
            goto LABEL_50;
          }

          v69 = objc_opt_self();
          v70 = String._bridgeToObjectiveC()();
          [v69 invalidParameterErrorWithDescription:v70];

          swift_willThrow();
          swift_unknownObjectRelease();
          goto LABEL_47;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v67 = objc_opt_self();
      v68 = String._bridgeToObjectiveC()();
      [v67 invalidParameterErrorWithDescription:v68];

      swift_willThrow();
LABEL_47:

      goto LABEL_50;
    }
  }

  else
  {
    (*(v101 + 56))(v11, 1, 1, v102);
  }

  sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
  v48 = objc_opt_self();
  v49 = String._bridgeToObjectiveC()();
  [v48 invalidParameterErrorWithDescription:v49];

  swift_willThrow();
LABEL_51:
  (*(v104 + 8))(v103, v113);
  return result;
}

uint64_t sub_10013E558(uint64_t a1, uint64_t a2)
{

  return sub_10013E670(a1, a2, &qword_100938CA0, REMColor_ptr, sub_10050D7A0, &qword_100938CA8, &unk_100795B00);
}

uint64_t sub_10013E5E4(uint64_t a1, uint64_t a2)
{

  return sub_10013E670(a1, a2, &unk_10093C970, REMContactRepresentation_ptr, sub_10023D6FC, &qword_100938CF0, &unk_100795B10);
}

uint64_t sub_10013E670(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(void *), uint64_t *a6, uint64_t *a7)
{
  v55 = a7;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000060C8(0, a3, a4);
  static String.Encoding.utf8.getter();
  v17 = String.data(using:allowLossyConversion:)();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  if (v19 >> 60 == 15)
  {
    if (qword_100935BE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093CAE0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v58[0] = v24;
      *v23 = 136315138;
      v57[0] = v16;
      sub_1000F5104(a6, v55);
      v25 = String.init<A>(describing:)();
      v27 = sub_10000668C(v25, v26, v58);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "RDJSONDecoding can't encode input string as utf8 data {class: %s}", v23, 0xCu);
      sub_10000607C(v24);
    }
  }

  else
  {
    v28 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v57[0] = 0;
    v30 = [v28 JSONObjectWithData:isa options:0 error:v57];

    v31 = v57[0];
    if (v30)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005EF0(v58, v57);
      sub_1000F5104(&unk_100938CB0, &unk_100796A70);
      if (swift_dynamicCast())
      {
        v32 = a5(v56);
        sub_100031A14(v17, v19);

        sub_10000607C(v58);
        return v32;
      }

      if (qword_100935BE8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100006654(v45, qword_10093CAE0);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v57[0] = v49;
        *v48 = 136315138;
        v56 = v16;
        sub_1000F5104(a6, v55);
        v50 = String.init<A>(describing:)();
        v52 = sub_10000668C(v50, v51, v57);

        *(v48 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v46, v47, "Invalid JSONSerialization.jsonObject return value {class: %s}", v48, 0xCu);
        sub_10000607C(v49);
      }

      sub_100031A14(v17, v19);

      sub_10000607C(v58);
    }

    else
    {
      v34 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935BE8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100006654(v35, qword_10093CAE0);
      swift_errorRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58[0] = v54;
        *v38 = 136315394;
        v57[0] = v16;
        sub_1000F5104(a6, v55);
        v39 = String.init<A>(describing:)();
        v41 = sub_10000668C(v39, v40, v58);

        *(v38 + 4) = v41;
        *(v38 + 12) = 2080;
        swift_getErrorValue();
        v42 = Error.localizedDescription.getter();
        v44 = sub_10000668C(v42, v43, v58);

        *(v38 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v36, v37, "RDJSONDecoding can't decode JSON {class: %s, error: %s}", v38, 0x16u);
        swift_arrayDestroy();

        sub_100031A14(v17, v19);
      }

      else
      {
        sub_100031A14(v17, v19);
      }
    }
  }

  return 0;
}

Class sub_10013ECF4()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v8 = type metadata accessor for RDPublicTemplate();
  v60 = v8[8];
  v9 = sub_10013FBFC();
  v10._countAndFlagsBits = 0x655463696C627550;
  v10._object = 0xEE006574616C706DLL;
  v11.super.isa = CKRecord.init(recordType:recordID:)(v10, v9).super.isa;
  v12 = 0;
  v47 = " {ckRecord.recordType: ";
  v46 = " a non-nil String";
  v45 = v0;
  v44 = v8;
  while (1)
  {
    v15 = *(&off_1008DD548 + v12 + 32);
    if (v15 <= 2)
    {
      if (*(&off_1008DD548 + v12 + 32))
      {
        if (v15 == 1)
        {
          if (v3[2] && (v18 = sub_1001E1818(), v19))
          {
            *(&v57 + 1) = &type metadata for String;
            *&v58 = &protocol witness table for String;
            *&v56 = v18;
            *(&v56 + 1) = v19;
          }

          else
          {
            *&v58 = 0;
            v56 = 0u;
            v57 = 0u;
          }
        }

        else
        {
          v14 = *v3;
          v13 = v3[1];
          *(&v57 + 1) = &type metadata for String;
          *&v58 = &protocol witness table for String;
          *&v56 = v14;
          *(&v56 + 1) = v13;
        }

        goto LABEL_3;
      }

      v36 = v3[4];
      if (v36)
      {
        v37 = v3[3];
        *(&v57 + 1) = &type metadata for String;
        *&v58 = &protocol witness table for String;
        *&v56 = v37;
        *(&v56 + 1) = v36;
      }

      else
      {
        *&v58 = 0;
        v56 = 0u;
        v57 = 0u;
      }

      goto LABEL_26;
    }

    if (*(&off_1008DD548 + v12 + 32) <= 4u)
    {
      if (v15 == 3)
      {
        sub_10012F78C(v3 + v8[9], v7);
        v16 = type metadata accessor for Date();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v7, 1, v16) == 1)
        {
          sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
          v56 = 0u;
          v57 = 0u;
          *&v58 = 0;
        }

        else
        {
          *(&v57 + 1) = v16;
          *&v58 = &protocol witness table for Date;
          v42 = sub_1000103CC(&v56);
          (*(v17 + 32))(v42, v7, v16);
        }
      }

      else
      {
        v38 = UUID.uuidString.getter();
        *(&v57 + 1) = &type metadata for String;
        *&v58 = &protocol witness table for String;
        *&v56 = v38;
        *(&v56 + 1) = v39;
      }

      goto LABEL_3;
    }

    if (v15 == 5)
    {
      break;
    }

    v40 = v3[6];
    if (v40)
    {
      v41 = v3[5];
      *(&v57 + 1) = &type metadata for String;
      *&v58 = &protocol witness table for String;
      *&v56 = v41;
      *(&v56 + 1) = v40;
    }

    else
    {
      *&v58 = 0;
      v56 = 0u;
      v57 = 0u;
    }

LABEL_26:

LABEL_3:
    CKRecordKeyValueSetting.subscript.setter();
LABEL_4:
    if (++v12 == 7)
    {
      return v11.super.isa;
    }
  }

  v20 = type metadata accessor for JSONEncoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v23 = (v3 + v8[10]);
  v24 = v23[1];
  v25 = v23[3];
  v58 = v23[2];
  v59 = v25;
  v26 = v23[1];
  v56 = *v23;
  v57 = v26;
  v52 = v56;
  v53 = v24;
  v27 = v23[3];
  v54 = v58;
  v55 = v27;
  sub_10013FD6C(&v56, &v48);
  sub_10013FDC8();
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    v30 = v28;
    v31 = v29;
    v48 = v52;
    v49 = v53;
    v50 = v54;
    v51 = v55;
    sub_10013FE1C(&v48);

    v32 = objc_opt_self();
    v33 = v7;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v35 = [v32 assetForData:isa];

    v7 = v33;
    v2 = 0;
    v3 = v45;
    CKRecord.subscript.setter();
    sub_10001BBA0(v30, v31);
    v8 = v44;
    goto LABEL_4;
  }

  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  sub_10013FE1C(&v48);

  return v11.super.isa;
}

unint64_t sub_10013F2DC()
{
  result = qword_100938C98;
  if (!qword_100938C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C98);
  }

  return result;
}

uint64_t type metadata accessor for RDPublicTemplate()
{
  result = qword_100938D50;
  if (!qword_100938D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013F37C(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v42 - v11;
  v13 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v17 = a1[2];
  v18 = a2[2];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_30;
    }

    v43 = v5;
    sub_1000060C8(0, &qword_100938CA0, REMColor_ptr);
    v19 = v18;
    v20 = v17;
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v43 = v5;
    if (v18)
    {
      goto LABEL_30;
    }
  }

  v22 = a1[4];
  v23 = a2[4];
  if (v22)
  {
    if (!v23 || (a1[3] != a2[3] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v23)
  {
    goto LABEL_30;
  }

  v24 = a1[6];
  v25 = a2[6];
  if (v24)
  {
    if (!v25 || (a1[5] != a2[5] || v24 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v25)
  {
    goto LABEL_30;
  }

  v26 = type metadata accessor for RDPublicTemplate();
  v27 = v26[8];
  if (static UUID.== infix(_:_:)())
  {
    v28 = v26[9];
    v29 = *(v13 + 48);
    sub_10012F78C(a1 + v28, v16);
    sub_10012F78C(a2 + v28, &v16[v29]);
    v30 = *(v43 + 48);
    if (v30(v16, 1, v4) == 1)
    {
      if (v30(&v16[v29], 1, v4) == 1)
      {
        sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
LABEL_33:
        v36 = (a1 + v26[10]);
        v37 = v36[3];
        v44[2] = v36[2];
        v44[3] = v37;
        v38 = v36[1];
        v44[0] = *v36;
        v44[1] = v38;
        v39 = (a2 + v26[10]);
        v40 = v39[3];
        v45[2] = v39[2];
        v45[3] = v40;
        v41 = v39[1];
        v45[0] = *v39;
        v45[1] = v41;
        v31 = sub_1004F9098(v44, v45);
        return v31 & 1;
      }

      goto LABEL_29;
    }

    sub_10012F78C(v16, v12);
    if (v30(&v16[v29], 1, v4) == 1)
    {
      (*(v43 + 8))(v12, v4);
LABEL_29:
      sub_1000050A4(v16, &qword_100938C18, &qword_1007957A0);
      goto LABEL_30;
    }

    v33 = v43;
    (*(v43 + 32))(v8, &v16[v29], v4);
    sub_100140E2C(&qword_100938DB0, &type metadata accessor for Date);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *(v33 + 8);
    v35(v8, v4);
    v35(v12, v4);
    sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
    if (v34)
    {
      goto LABEL_33;
    }
  }

LABEL_30:
  v31 = 0;
  return v31 & 1;
}

void *sub_10013F7E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v43 = a3;
  v51 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v51);
  v42 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v47 = v38 - v10;
  v50 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v50);
  v52 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v38[1] = v3;
    v53 = _swiftEmptyArrayStorage;
    sub_1002532DC(0, v14, 0);
    v15 = v53;
    v16 = *(type metadata accessor for UUID() - 8);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v40 = "or saved reminders is nil";
    v39 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v18 = (v6 + 104);
    v46 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v49 = v11 + 32;
    v48 = *(v16 + 72);
    v41 = a2;
    do
    {
      if (*(a2 + 16) && (v19 = sub_100363F20(v17), (v20 & 1) != 0))
      {
        v21 = (*(a2 + 56) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = *v43;
        v25 = *(*v43 + 16);

        v45 = v22;
        if (v25 && (v26 = sub_100364198(v22, v23), (v27 & 1) != 0))
        {
          v44 = *(*(v24 + 56) + 8 * v26);
        }

        else
        {
          v44 = _swiftEmptyArrayStorage;
        }

        v28 = objc_allocWithZone(type metadata accessor for REMObjectID_Codable());
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v30 = String._bridgeToObjectiveC()();
        v31 = [v28 initWithUUID:isa entityName:v30];

        v32 = v45;
        if (!v23)
        {
          v32 = 0;
        }

        v33 = 0xE000000000000000;
        if (v23)
        {
          v33 = v23;
        }

        v34 = v42;
        *v42 = v31;
        v34[1] = v32;
        v34[3] = 0;
        v34[4] = 0;
        v34[2] = v33;
        (*v18)(v34, v39, v51);
        REMRemindersListDataView.SectionLite.init(type:reminders:)();
        a2 = v41;
      }

      else
      {
        (*v18)(v47, v46, v51);
        REMRemindersListDataView.SectionLite.init(type:reminders:)();
      }

      v53 = v15;
      v36 = v15[2];
      v35 = v15[3];
      if (v36 >= v35 >> 1)
      {
        sub_1002532DC(v35 > 1, v36 + 1, 1);
        v15 = v53;
      }

      v15[2] = v36 + 1;
      (*(v11 + 32))(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v36, v52, v50);
      v17 += v48;
      --v14;
    }

    while (v14);
  }

  return v15;
}

Class sub_10013FBFC()
{
  v0._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v0);

  sub_1000060C8(0, &qword_100938CC8, CKRecordZoneID_ptr);
  v1 = static CKRecordZoneID.default.getter();
  v2 = [v1 zoneName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = [v1 ownerName];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [objc_allocWithZone(CKRecordZoneID) initWithZoneName:v2 ownerName:v3 databaseScope:1];

  sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
  v5._countAndFlagsBits = 0x655463696C627550;
  v5._object = 0xEF2F6574616C706DLL;
  isa = CKRecordID.init(recordName:zoneID:)(v5, v4).super.isa;

  return isa;
}

unint64_t sub_10013FDC8()
{
  result = qword_100938CC0;
  if (!qword_100938CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938CC0);
  }

  return result;
}

uint64_t sub_10013FE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedReminder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013FED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013FF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10013FFDC(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *v4 = *a2;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v9 = *(a2 + 2);
    v8 = *(a2 + 3);
    *(a1 + 2) = v9;
    *(a1 + 3) = v8;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    *(a1 + 6) = *(a2 + 6);
    v11 = a3[8];
    v12 = type metadata accessor for UUID();
    v27 = *(*(v12 - 8) + 16);

    v13 = v9;

    v27(&v4[v11], &a2[v11], v12);
    v14 = a3[9];
    v15 = type metadata accessor for Date();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(&a2[v14], 1, v15))
    {
      v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(&v4[v14], &a2[v14], *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&v4[v14], &a2[v14], v15);
      (*(v16 + 56))(&v4[v14], 0, 1, v15);
    }

    v19 = a3[10];
    v20 = &v4[v19];
    v21 = &a2[v19];
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v22;
    v23 = *(v21 + 3);
    *(v20 + 2) = *(v21 + 2);
    *(v20 + 3) = v23;
    v24 = *(v21 + 5);
    *(v20 + 4) = *(v21 + 4);
    *(v20 + 5) = v24;
    v25 = *(v21 + 7);
    *(v20 + 6) = *(v21 + 6);
    *(v20 + 7) = v25;
  }

  return v4;
}

uint64_t sub_100140240(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 32);

  v6 = *(a1 + 48);

  v7 = a2[8];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a2[9];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1 + v9, 1, v10))
  {
    (*(v11 + 8))(a1 + v9, v10);
  }

  v12 = (a1 + a2[10]);
  v13 = *v12;

  v14 = v12[1];

  v15 = v12[2];

  v16 = v12[3];

  v17 = v12[4];

  v18 = v12[5];

  v19 = v12[6];

  v20 = v12[7];
}

char *sub_100140398(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;
  v8 = *(a2 + 5);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = v8;
  *(a1 + 6) = *(a2 + 6);
  v9 = a3[8];
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 16);

  v12 = v7;

  v11(&a1[v9], &a2[v9], v10);
  v13 = a3[9];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 1, v14))
  {
    v16 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v17 = a3[10];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  v21 = *(v19 + 3);
  *(v18 + 2) = *(v19 + 2);
  *(v18 + 3) = v21;
  v22 = *(v19 + 5);
  *(v18 + 4) = *(v19 + 4);
  *(v18 + 5) = v22;
  v23 = *(v19 + 7);
  *(v18 + 6) = *(v19 + 6);
  *(v18 + 7) = v23;

  return a1;
}

char *sub_1001405AC(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(a1 + 2);
  v8 = *(a2 + 2);
  *(a1 + 2) = v8;
  v9 = v8;

  *(a1 + 3) = *(a2 + 3);
  v10 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);

  *(a1 + 5) = *(a2 + 5);
  v11 = *(a1 + 6);
  *(a1 + 6) = *(a2 + 6);

  v12 = a3[8];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 24))(&a1[v12], &a2[v12], v13);
  v14 = a3[9];
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(&a1[v14], 1, v15);
  v19 = v17(&a2[v14], 1, v15);
  if (!v18)
  {
    if (!v19)
    {
      (*(v16 + 24))(&a1[v14], &a2[v14], v15);
      goto LABEL_7;
    }

    (*(v16 + 8))(&a1[v14], v15);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  (*(v16 + 16))(&a1[v14], &a2[v14], v15);
  (*(v16 + 56))(&a1[v14], 0, 1, v15);
LABEL_7:
  v21 = a3[10];
  v22 = &a1[v21];
  v23 = &a2[v21];
  v24 = *&a2[v21];
  v25 = *&a1[v21];
  *&a1[v21] = v24;

  v26 = *(v22 + 1);
  *(v22 + 1) = *(v23 + 1);

  v27 = *(v22 + 2);
  *(v22 + 2) = *(v23 + 2);

  v28 = *(v22 + 3);
  *(v22 + 3) = *(v23 + 3);

  v29 = *(v22 + 4);
  *(v22 + 4) = *(v23 + 4);

  v30 = *(v22 + 5);
  *(v22 + 5) = *(v23 + 5);

  v31 = *(v22 + 6);
  *(v22 + 6) = *(v23 + 6);

  v32 = *(v22 + 7);
  *(v22 + 7) = *(v23 + 7);

  return a1;
}

uint64_t sub_1001408A8(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = a3[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[9];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  v12 = a3[10];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;
  v16 = v14[3];
  v13[2] = v14[2];
  v13[3] = v16;
  return a1;
}

char *sub_100140A34(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v9 = *(a2 + 4);
  v10 = *(a1 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v9;

  v11 = *(a2 + 6);
  v12 = *(a1 + 6);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = v11;

  v13 = a3[8];
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  v15 = a3[9];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 1, v16);
  v20 = v18(&a2[v15], 1, v16);
  if (!v19)
  {
    if (!v20)
    {
      (*(v17 + 40))(&a1[v15], &a2[v15], v16);
      goto LABEL_7;
    }

    (*(v17 + 8))(&a1[v15], v16);
    goto LABEL_6;
  }

  if (v20)
  {
LABEL_6:
    v21 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  (*(v17 + 32))(&a1[v15], &a2[v15], v16);
  (*(v17 + 56))(&a1[v15], 0, 1, v16);
LABEL_7:
  v22 = a3[10];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = *&a1[v22];
  *&a1[v22] = *v24;

  v26 = *(v23 + 1);
  *(v23 + 1) = *(v24 + 1);

  v27 = *(v23 + 2);
  *(v23 + 2) = *(v24 + 2);

  v28 = *(v23 + 3);
  *(v23 + 3) = *(v24 + 3);

  v29 = *(v23 + 4);
  *(v23 + 4) = *(v24 + 4);

  v30 = *(v23 + 5);
  *(v23 + 5) = *(v24 + 5);

  v31 = *(v23 + 6);
  *(v23 + 6) = *(v24 + 6);

  v32 = *(v23 + 7);
  *(v23 + 7) = *(v24 + 7);

  return a1;
}

void sub_100140CE4()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100140DD4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_100140DD4()
{
  if (!qword_100938D60)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100938D60);
    }
  }
}

uint64_t sub_100140E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100140E74()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938DC0);
  v1 = sub_100006654(v0, qword_100938DC0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  if (qword_100935AB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100938DC0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas: migrating if needed", v7, 2u);
  }

  *&v12 = 0xD000000000000035;
  *(&v12 + 1) = 0x8000000100795BA0;
  v8 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1000050A4(v14, &qword_100939ED0, &qword_100791B10);
LABEL_13:
    sub_100141210(_.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v14[0] = 0xD000000000000035;
    *(&v14[0] + 1) = 0x8000000100795BA0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = [v11 integerValue];

  if (v9 < 1)
  {
    goto LABEL_13;
  }
}

void sub_100141210(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_100935AB8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100938DC0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = ObjectType;
    *v9 = 136315394;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_10000668C(v10, v11, &v24);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = sub_1003533B0();
    v15 = sub_10000668C(v13, v14, &v24);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: BEGIN {store: %{public}s}", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v17 = [v6 persistentStoreCoordinator];
  [v16 setPersistentStoreCoordinator:v17];

  [v16 setTransactionAuthor:RDStoreControllerRemoveObsoleteDueDateDeltasMigrationAuthor];
  [v16 setUndoManager:0];
  [v16 setRetainsRegisteredObjects:1];
  if (sub_10014294C())
  {
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v2;
    v18[4] = ObjectType;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100142C54;
    *(v19 + 24) = v18;
    aBlock[4] = sub_1000529DC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F160;
    aBlock[3] = &unk_1008E6118;
    v20 = _Block_copy(aBlock);
    v21 = v16;
    v22 = v2;

    [v21 performBlockAndWait:v20];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_1001415C4(v6, ObjectType);
    }
  }

  else
  {

    sub_1001415C4(v6, ObjectType);
  }
}

void sub_1001415C4(void *a1, uint64_t a2)
{
  if (qword_100935AB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100938DC0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    v15[1] = a2;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10000668C(v8, v9, v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = sub_1003533B0();
    v13 = sub_10000668C(v11, v12, v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "%s: END {store: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100141790(void *a1, uint64_t a2, char *a3)
{
  v108 = a3;
  v4 = type metadata accessor for UUID();
  v112 = *(v4 - 8);
  v5 = *(v112 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v107 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v107 - v13;
  __chkstk_darwin(v12);
  v16 = &v107 - v15;
  v17 = sub_100142C60();
  type metadata accessor for REMCDDueDateDeltaAlert();
  v18 = NSManagedObjectContext.fetch<A>(_:)();
  v29 = v112;
  v114 = v16;
  v115 = v4;
  v117 = v18;
  v118 = v11;
  v116 = v8;

  v30 = v117;
  if (v117 >> 62)
  {
    v91 = _CocoaArrayWrapper.endIndex.getter();
    v30 = v117;
    v31 = v91;
    v32 = v29;
    if (v91)
    {
      goto LABEL_9;
    }

LABEL_59:

    return;
  }

  v31 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v29;
  if (!v31)
  {
    goto LABEL_59;
  }

LABEL_9:
  v107 = 0;
  v33 = 0;
  v34 = 0;
  v112 = v30 & 0xC000000000000001;
  v109 = v30 & 0xFFFFFFFFFFFFFF8;
  v110 = (v32 + 16);
  v35 = _swiftEmptyDictionarySingleton;
  v111 = (v32 + 8);
  v113 = a1;
  while (1)
  {
    if (v112)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v40 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      goto LABEL_18;
    }

    if (v33 >= *(v109 + 16))
    {
      goto LABEL_57;
    }

    v39 = *(v30 + 8 * v33 + 32);
    v40 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

LABEL_18:
    v41 = v31;
    v42 = [v39 reminderIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = [v39 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10003E114(v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v35;
    v46 = sub_100363F20(v14);
    v47 = *(v35 + 2);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_56;
    }

    v50 = v45;
    if (*(v35 + 3) >= v49)
    {
      v53 = v116;
      if (isUniquelyReferenced_nonNull_native)
      {
        v54 = v115;
        if (v45)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_100374248();
        v53 = v116;
        v35 = v120;
        v54 = v115;
        if (v50)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_10036C304(v49, isUniquelyReferenced_nonNull_native);
      v35 = v120;
      v51 = sub_100363F20(v14);
      if ((v50 & 1) != (v52 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v46 = v51;
      v54 = v115;
      v53 = v116;
      if (v50)
      {
        goto LABEL_11;
      }
    }

    (*v110)(v53, v14, v54);
    sub_1002CB9B0(v46, v53, _swiftEmptySetSingleton, v35);
LABEL_11:
    v36 = *(v35 + 7) + 8 * v46;
    v37 = v114;
    sub_1003794C4(v114, v118);
    v38 = *v111;
    (*v111)(v14, v54);
    v38(v37, v54);
    [v113 deleteObject:v39];

    ++v33;
    v34 = sub_1001424E8;
    v31 = v41;
    v30 = v117;
    if (v40 == v41)
    {

      v55 = v108;
      if (qword_100935E28 != -1)
      {
        swift_once();
      }

      v56 = qword_100974D20;
      v57 = v107;
      if (!*(qword_100974D20 + 16) || (v58 = sub_100005F4C(0xD000000000000016, 0x80000001007E8FD0), (v59 & 1) == 0))
      {

        if (qword_100935AB8 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_100006654(v74, qword_100938DC0);
        v20 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v119 = v77;
          v120 = v55;
          *v76 = 136315138;
          swift_getMetatypeMetadata();
          v78 = String.init<A>(describing:)();
          v80 = sub_10000668C(v78, v79, &v119);

          *(v76 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v20, v75, "%s: Error getting dueDateDeltaCDValueKey", v76, 0xCu);
          sub_10000607C(v77);
        }

        goto LABEL_5;
      }

      v60 = (*(v56 + 56) + 16 * v58);
      v62 = *v60;
      v61 = v60[1];

      v63 = sub_100142DC4(v35);

      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v64 = NSManagedObjectContext.fetch<A>(_:)();
      if (v57)
      {

        if (qword_100935AB8 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_100006654(v65, qword_100938DC0);
        swift_errorRetain();
        v20 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v20, v66))
        {

          return;
        }

        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v119 = v69;
        v120 = v55;
        *v67 = 136315394;
        swift_getMetatypeMetadata();
        v70 = String.init<A>(describing:)();
        v72 = sub_10000668C(v70, v71, &v119);

        *(v67 + 4) = v72;
        *(v67 + 12) = 2112;
        swift_errorRetain();
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 14) = v73;
        *v68 = v73;
        _os_log_impl(&_mh_execute_header, v20, v66, "%s: Error fetching REMCDReminders: %@", v67, 0x16u);
        sub_1000050A4(v68, &unk_100938E70, &unk_100797230);

        sub_10000607C(v69);

LABEL_4:

LABEL_5:

        return;
      }

      v81 = v64;

      if (v81 >> 62)
      {
        v82 = _CocoaArrayWrapper.endIndex.getter();
        if (!v82)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v82)
        {
          goto LABEL_63;
        }
      }

      if (v82 < 1)
      {
        __break(1u);
        goto LABEL_73;
      }

      for (i = 0; i != v82; ++i)
      {
        if ((v81 & 0xC000000000000001) != 0)
        {
          v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v84 = *(v81 + 8 * i + 32);
        }

        v85 = v84;
        [v84 setDueDateDeltaAlertsData:0];
        v86 = v85;
        [v86 updateChangeCount];
        v87 = [v86 resolutionTokenMap];
        if (v87)
        {
          v88 = v87;
          v89 = String._bridgeToObjectiveC()();
          [v88 updateForKey:v89];

          v90 = v88;
          [v86 setResolutionTokenMap:v90];
        }
      }

LABEL_63:

      v92 = v113;
      if (([v113 hasChanges] & 1) == 0)
      {
        return;
      }

      v120 = 0;
      v93 = [v92 save:&v120];
      v94 = v120;
      if (v93)
      {

        v95 = v94;
        return;
      }

      v118 = v120;
      v96 = v120;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935AB8 == -1)
      {
LABEL_69:
        v97 = type metadata accessor for Logger();
        sub_100006654(v97, qword_100938DC0);
        swift_errorRetain();
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v120 = v102;
          *v100 = 136315394;
          v103 = sub_1001424F8();
          v105 = sub_10000668C(v103, v104, &v120);

          *(v100 + 4) = v105;
          *(v100 + 12) = 2112;
          swift_errorRetain();
          v106 = _swift_stdlib_bridgeErrorToNSError();
          *(v100 + 14) = v106;
          *v101 = v106;
          _os_log_impl(&_mh_execute_header, v98, v99, "%s: Error saving: %@", v100, 0x16u);
          sub_1000050A4(v101, &unk_100938E70, &unk_100797230);

          sub_10000607C(v102);
        }

        else
        {
        }

        return;
      }

LABEL_73:
      swift_once();
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  swift_once();
  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100938DC0);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v119 = v24;
    *v22 = 136315394;
    v120 = v108;
    swift_getMetatypeMetadata();
    v25 = String.init<A>(describing:)();
    v27 = sub_10000668C(v25, v26, &v119);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2112;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v28;
    *v23 = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: Error fetching REMCDDueDateDeltaAlerts: %@", v22, 0x16u);
    sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

    sub_10000607C(v24);

    goto LABEL_4;
  }
}

uint64_t sub_100142528(uint64_t a1)
{
  v47 = type metadata accessor for UUID();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v47);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v40 = &v38 - v7;
  __chkstk_darwin(v6);
  v39 = &v38 - v8;
  v9 = *(a1 + 16);
  v50 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v10 = *(a1 + 64);
  v42 = a1 + 64;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & v10;
  v41 = (63 - v12) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v9;
  if (v9)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v14 = 0;
    v15 = 0;
    while (v13)
    {
      v16 = v15;
LABEL_6:
      ++v14;
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v49;
      v20 = v46;
      v19 = v47;
      (*(v49 + 16))(v46, *(v48 + 48) + *(v49 + 72) * (v17 | (v16 << 6)), v47);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v23 = [ObjCClassFromMetadata objectIDWithUUID:isa];

      (*(v18 + 8))(v20, v19);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = v50[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v14 == v45)
      {
        goto LABEL_13;
      }
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v41)
      {
        goto LABEL_24;
      }

      v13 = *(v42 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_13:
    v46 = (v49 + 32);
    v26 = v41;
    v25 = v42;
    if (!v13)
    {
      goto LABEL_15;
    }

    do
    {
      v27 = v16;
LABEL_19:
      v28 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v29 = v49;
      v30 = v40;
      v31 = v47;
      (*(v49 + 16))(v40, *(v48 + 48) + *(v49 + 72) * (v28 | (v27 << 6)), v47);
      v32 = v39;
      (*(v29 + 32))(v39, v30, v31);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v33 = swift_getObjCClassFromMetadata();
      v34 = UUID._bridgeToObjectiveC()().super.isa;
      v35 = [v33 objectIDWithUUID:v34];

      (*(v29 + 8))(v32, v31);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = v50[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v26 = v41;
      v25 = v42;
    }

    while (v13);
LABEL_15:
    while (1)
    {
      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        return v50;
      }

      v13 = *(v25 + 8 * v27);
      ++v16;
      if (v13)
      {
        v16 = v27;
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_10014294C()
{
  swift_getObjectType();
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  return v1;
}

id RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100142C60()
{
  v0 = sub_10000C2B0(_swiftEmptyArrayStorage);
  type metadata accessor for REMCDDueDateDeltaAlert();
  v1 = [objc_allocWithZone(NSFetchRequest) init];
  v2 = [swift_getObjCClassFromMetadata() entity];
  [v1 setEntity:v2];

  [v1 setAffectedStores:0];
  [v1 setPredicate:v0];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791300;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000001007EA710;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setPropertiesToFetch:isa];

  [v1 setFetchBatchSize:50];
  return v1;
}

id sub_100142DC4(uint64_t a1)
{
  v2 = _s10PredicatesOMa(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = sub_100142528(a1);
  v5[8] = 1;
  swift_storeEnumTagMultiPayload();
  v6 = sub_100043AA8();
  sub_1000513B4(v5);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007912F0;
  *(v9 + 32) = 0x696669746E656469;
  *(v9 + 40) = 0xEA00000000007265;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = 0xD000000000000016;
  *(v9 + 72) = 0x80000001007E8FD0;
  *(v9 + 88) = &type metadata for String;
  strcpy((v9 + 96), "ckCloudState");
  *(v9 + 109) = 0;
  *(v9 + 110) = -5120;
  *(v9 + 120) = &type metadata for String;
  strcpy((v9 + 128), "ckIdentifier");
  *(v9 + 141) = 0;
  *(v9 + 142) = -5120;
  *(v9 + 152) = &type metadata for String;
  strcpy((v9 + 160), "ckDirtyFlags");
  *(v9 + 173) = 0;
  *(v9 + 174) = -5120;
  *(v9 + 216) = &type metadata for String;
  *(v9 + 184) = &type metadata for String;
  *(v9 + 192) = 0xD00000000000001ELL;
  *(v9 + 200) = 0x80000001007EC560;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setPropertiesToFetch:isa];

  [v7 setFetchBatchSize:50];
  return v7;
}

void *sub_100143064(uint64_t a1)
{
  v1 = a1;
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaDictionary.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v31 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaDictionary.startIndex.getter();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v31 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(v1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(v1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  v24 = v2;
  v25 = v1;
  while (v7 < v2)
  {
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v15 = v28;
    v16 = v29;
    v17 = v30;
    sub_10014ABEC(v27, v28, v29, v30, v1, &unk_10093F5F0, REMAssignment_ptr, sub_1003643F8);
    v19 = v18;
    v20 = v27[0];
    v21 = [v27[0] objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v22 = v31[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v26)
    {
      v1 = v25;
      if (!v17)
      {
        goto LABEL_21;
      }

      if (__CocoaDictionary.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v24;
      v14 = v7 + 1;
      sub_1000F5104(&qword_100939238, &unk_100795D20);
      v23 = Dictionary.Index._asCocoa.modify();
      __CocoaDictionary.formIndex(after:isUnique:)();
      result = v23(v27, 0);
    }

    else
    {
      v1 = v25;
      sub_10014AA28(v15, v16, v17, v25, &unk_10093F5F0, REMAssignment_ptr, sub_1003643F8);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_100010E34(v15, v16, v17);
      v28 = v9;
      v29 = v11;
      v30 = v13 & 1;
      v2 = v24;
      v14 = v7 + 1;
    }

    ++v7;
    if (v14 == v2)
    {
      sub_100010E34(v28, v29, v30);
      return v31;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100143354()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938E90);
  v1 = sub_100006654(v0, qword_100938E90);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001435F4()
{
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100791340;
  v3 = *(v0 + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription);
  v2 = *(v0 + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription + 8);
  *(v1 + 56) = &type metadata for String;
  v4 = sub_100006600();
  v5 = 7104878;
  if (v2)
  {
    v5 = v3;
  }

  v6 = 0xE300000000000000;
  if (v2)
  {
    v6 = v2;
  }

  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID);
  v8 = *(v0 + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID + 8);
  *(v1 + 96) = &type metadata for String;
  *(v1 + 104) = v4;
  *(v1 + 64) = v4;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;

  return String.init(format:_:)();
}

id sub_1001438C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDAssignmentNotificationEngine.BabysitTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001438F4()
{
  v0 = objc_autoreleasePoolPush();
  sub_10014394C();

  objc_autoreleasePoolPop(v0);
}

void sub_10014394C()
{
  v0 = [objc_opt_self() sharedBabysitter];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    [v1 giveAccountWithIDAnotherChance:v2];

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100938E90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136446210;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v8 = Optional.descriptionOrNil.getter();
      v10 = sub_10000668C(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDAssignmentNotificationEngine: Reset babysitter upon enabled/disabled CloudKit account(s) for {waiterID: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }
  }

  sub_100146580();

  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100938E90);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RDAssignmentNotificationEngine: (Re-)initialized changeTrackingHelpers upon enabled/disabled CloudKit account(s).", v14, 2u);
  }
}

uint64_t sub_100143BF0()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25[-v4];
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_storeControllerObservationToken;
  swift_beginAccess();
  sub_10014D7CC(v1 + v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000050A4(v5, &qword_100942CA0, &qword_1007A3810);
LABEL_5:
    v17 = *(v1 + 24);

    v18 = *(v1 + 40);

    v19 = *(v1 + 56);

    v20 = *(v1 + 80);
    swift_unknownObjectRelease();
    v21 = *(v1 + 96);

    sub_1000050A4(v1 + v11, &qword_100942CA0, &qword_1007A3810);
    v22 = *(v1 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_cloudKitAccountsDidChangeSubscriptions);

    v23 = *(v1 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_currentUserShareParticipantIDsOverrideByListID);

    return v1;
  }

  sub_10014D83C(v5, v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v12 = *(v1 + 96);
  v13 = *(v12 + 40);

  os_unfair_lock_lock(v13);
  __chkstk_darwin(v14);
  *&v25[-16] = v10;
  swift_beginAccess();
  v15 = sub_1002601AC(sub_10014D8A4, &v25[-32]);
  v16 = *(*(v12 + 48) + 16);
  if (v16 >= v15)
  {
    sub_100260C60(v15, v16);
    swift_endAccess();
    os_unfair_lock_unlock(v13);

    sub_10014D8C4(v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    goto LABEL_5;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100143EDC()
{
  sub_100143BF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAssignmentNotificationEngine()
{
  result = qword_100938F90;
  if (!qword_100938F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100143F88()
{
  sub_1001490E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100144068()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 72);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if ((*(v0 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_started) & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    sub_100144258(v0);
    objc_autoreleasePoolPop(v12);
    return;
  }

  if (qword_100935AC0 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100938E90);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDAssignmentNotificationEngine.start() must be called exactly once", v11, 2u);
  }
}

uint64_t sub_100144258(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v81 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  v6 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchTimeInterval();
  v77 = *(v78 - 8);
  v8 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = (v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v86 = v10;
  v87 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v75 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = v69 - v15;
  v16 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v73 = *(v16 - 1);
  v17 = *(v73 + 64);
  v18 = __chkstk_darwin(v16);
  v83 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v69 - v20;
  v22 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v84 = v69 - v24;
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v74 = sub_100006654(v25, qword_100938E90);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Starting RDAssignmentNotificationEngine", v28, 2u);
  }

  v29 = sub_100146580();
  *(a1 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_started) = 1;
  if (*(a1 + 120))
  {
  }

  v70 = v29;
  v71 = v3;
  v72 = v2;
  v31 = *(a1 + 96);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v33 = [objc_opt_self() cdEntityName];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(inited + 32) = v34;
  *(inited + 40) = v36;
  v37 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v38 = *(a1 + 72);
  v39 = swift_allocObject();
  swift_weakInit();

  v40 = v84;
  UUID.init()();
  sub_100026CD8(v40, v21, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *&v21[v16[5]] = v37;
  *&v21[v16[6]] = v38;
  v41 = &v21[v16[7]];
  *v41 = sub_10014D738;
  v41[1] = v39;
  v42 = *(v31 + 40);

  v69[1] = v38;

  os_unfair_lock_lock(v42);
  sub_100026CD8(v21, v83, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v43 = *(v31 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 48) = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_100365714(0, v43[2] + 1, 1, v43);
    *(v31 + 48) = v43;
  }

  v46 = v43[2];
  v45 = v43[3];
  if (v46 >= v45 >> 1)
  {
    v43 = sub_100365714(v45 > 1, v46 + 1, 1, v43);
  }

  v43[2] = v46 + 1;
  sub_10014D83C(v83, v43 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v46, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(v31 + 48) = v43;
  swift_endAccess();
  os_unfair_lock_unlock(v42);

  sub_10014D8C4(v21, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  v47 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v48 = v84;
  (*(*(v47 - 8) + 56))(v84, 0, 1, v47);
  v49 = OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_storeControllerObservationToken;
  swift_beginAccess();
  sub_10014D740(v48, a1 + v49);
  swift_endAccess();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "os_transaction INIT {name: com.apple.remindd.assignmentNotificationEngine.start}", v52, 2u);
  }

  v53 = os_transaction_create();
  v54 = v75;
  static DispatchTime.now()();
  v55 = v76;
  *v76 = 5;
  v56 = v77;
  v57 = v78;
  (*(v77 + 104))(v55, enum case for DispatchTimeInterval.seconds(_:), v78);
  + infix(_:_:)();
  (*(v56 + 8))(v55, v57);
  v58 = *(v87 + 8);
  v87 += 8;
  v58(v54, v86);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = 5;
    _os_log_impl(&_mh_execute_header, v59, v60, "RDAssignmentNotificationEngine: dispatch to call refreshFromLastConsumedOnLaunchIfNeeded {after: %ld}", v61, 0xCu);
  }

  v62 = swift_allocObject();
  v63 = v70;
  v62[2] = a1;
  v62[3] = v63;
  v62[4] = v53;
  aBlock[4] = sub_10014D7B0;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E6290;
  v64 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v65 = v79;
  static DispatchQoS.unspecified.getter();
  aBlock[14] = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v66 = v81;
  v67 = v72;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v68 = v85;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v64);
  swift_unknownObjectRelease();
  (*(v71 + 8))(v66, v67);
  (*(v80 + 8))(v65, v82);
  v58(v68, v86);
}

void sub_100144CDC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = objc_autoreleasePoolPush();
    sub_100144E0C();
    objc_autoreleasePoolPop(v0);
  }

  else
  {
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100938E90);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Received storeController changed notification after RDAssignmentNotificationEngine was deallocated", v4, 2u);
    }
  }
}

uint64_t sub_100144E0C()
{
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100938E90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "os_transaction INIT {name: com.apple.remindd.assignmentNotificationEngine.storeControllerChange}", v3, 2u);
  }

  v4 = os_transaction_create();
  v5 = sub_100146580();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  swift_unknownObjectRetain();
  sub_1001456C8(v5, 0, sub_10014D7C4, v6);
  swift_unknownObjectRelease();
}

void sub_100144F74()
{
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100938E90);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.assignmentNotificationEngine.storeControllerChange}", v2, 2u);
  }
}

void sub_10014505C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  swift_unknownObjectRetain();
  sub_1001452D4(a2, sub_10014D7BC, v6);

  objc_autoreleasePoolPop(v5);
}

void sub_100145100()
{
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100938E90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    sub_1000F5104(&qword_100939340, &qword_1007A3950);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000668C(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "RDAssignmentNotificationEngine: refreshFromLastConsumedOnLaunchIfNeeded completed {refreshed: %s}", v3, 0xCu);
    sub_10000607C(v4);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction RELEASE {name: com.apple.remindd.assignmentNotificationEngine.start}", v10, 2u);
  }
}

void sub_1001452D4(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    LOBYTE(v6) = 0;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v30 = i;
    v31 = v3;
    v32 = v3 & 0xC000000000000001;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {

        if (v11 == i)
        {
          goto LABEL_23;
        }

        LOBYTE(v6) = 1;
        ++v5;
      }

      else
      {
        v12 = [objc_msgSend(v9 "account")];
        swift_unknownObjectRelease();
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v34 = 0;
        v35 = 0;
        if ([v10 compareCurrentChangeTokenToLastConsumedWithResult:&v35 error:&v34])
        {
          v16 = v35;
          v17 = v34;

          v6 = v16 == 4;
        }

        else
        {
          v18 = v34;
          v19 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_100935AC0 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          sub_100006654(v20, qword_100938E90);

          swift_errorRetain();
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *v23 = 136446466;
            v24 = sub_10000668C(v13, v15, &v35);

            *(v23 + 4) = v24;
            *(v23 + 12) = 2080;
            v34 = v19;
            swift_errorRetain();
            sub_1000F5104(&unk_1009399E0, &qword_100795D00);
            v25 = String.init<A>(describing:)();
            v27 = sub_10000668C(v25, v26, &v35);

            *(v23 + 14) = v27;
            _os_log_impl(&_mh_execute_header, v21, v22, "RDAssignmentNotificationEngine: Failed to compareCurrentChangeTokenToLastConsumed {account: %{public}s, error: %s}", v23, 0x16u);
            swift_arrayDestroy();
            v3 = v31;

            i = v30;
          }

          else
          {
          }

          v6 = 0;
          v7 = v32;
        }

        v8 = v33;
        if (v11 == i)
        {
          if (!v6)
          {
            goto LABEL_27;
          }

LABEL_23:
          sub_1001456C8(v3, 1, a2, a3);
          return;
        }

        ++v5;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  if (a2)
  {

    a2(0);
    sub_10003E114(a2);
  }
}

void sub_1001456C8(unint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v100 = a4;
  v101 = a3;
  LOBYTE(v6) = a2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v5[9];
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_77;
  }

  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    while (1)
    {
      v18 = 2;
      if (v6)
      {
        v18 = 4;
      }

      v19 = 3;
      if (v6)
      {
        v19 = 5;
      }

      v20 = v5[v18];
      v21 = v5[v19];

      v22 = [objc_opt_self() sharedBabysitter];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v24 = v5[8];
      v25 = String._bridgeToObjectiveC()();

      v26 = [v23 tokenByRegisteringAccount:v24 forOperationWithName:v25];

      if (!v26)
      {
        goto LABEL_13;
      }

      v94 = v26;
      v27 = [objc_opt_self() daemonUserDefaults];
      LODWORD(v102) = [v27 enableAssignmentNotifications];

      v28 = [objc_allocWithZone(REMStore) initWithDaemonController:v5[13]];
      v103 = &_swiftEmptyDictionarySingleton;
      if (v15)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v6)
      {
        v49 = v5;
        v50 = 0;
        v15 = a1 & 0xC000000000000001;
        v5 = (a1 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v15)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v50 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v51 = *(a1 + 8 * v50 + 32);
          }

          v52 = v51;
          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          v105 = v51;
          sub_100146C68(&v105, v102 ^ 1, v28, v49, &v103);

          ++v50;
          if (v53 == v6)
          {
            v54 = v103;
            v5 = v49;
            goto LABEL_39;
          }
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      else
      {
        v54 = &_swiftEmptyDictionarySingleton;
LABEL_39:

        if ((v102 & 1) == 0)
        {
          v71 = v101;
          if (qword_100935AC0 != -1)
          {
            swift_once();
          }

          v72 = type metadata accessor for Logger();
          sub_100006654(v72, qword_100938E90);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            v76 = "RDAssignmentNotificationEngine: User has disabled assignment notifications.";
LABEL_68:
            _os_log_impl(&_mh_execute_header, v73, v74, v76, v75, 2u);
LABEL_69:
          }

LABEL_71:

          v84 = swift_allocObject();
          v85 = v94;
          v84[2] = v94;
          v84[3] = v71;
          v84[4] = v100;
          v86 = v85;
          sub_10003E124(v71);
          sub_100148C58(v54, sub_10014D704, v84);

          return;
        }

        v93 = v5;
        a1 = (v54 + 64);
        v55 = 1 << v54[32];
        v56 = -1;
        if (v55 < 64)
        {
          v56 = ~(-1 << v55);
        }

        v15 = v56 & *(v54 + 8);
        v5 = ((v55 + 63) >> 6);
        v96 = "d.assignmentNotificationEngine";

        v57 = 0;
        v102 = 0;
        v58 = 0xE000000000000000;
        v95 = xmmword_100791340;
        v97 = v54;
        while (v15)
        {
          v99 = v58;
LABEL_51:
          v65 = (v57 << 9) | (8 * __clz(__rbit64(v15)));
          v66 = *(*(v54 + 6) + v65);
          v67 = *(*(v54 + 7) + v65);
          sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
          v68 = swift_allocObject();
          *(v68 + 16) = v95;
          v69 = v66;

          v98 = v69;
          v70 = [v69 objectID];
          *(v68 + 56) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          *(v68 + 64) = sub_10000CDE4(&qword_100939278, &qword_1009391E0, REMObjectID_ptr);
          *(v68 + 32) = v70;
          v6 = v102;
          if ((v67 & 0xC000000000000001) != 0)
          {
            v59 = __CocoaDictionary.count.getter();
          }

          else
          {
            v59 = *(v67 + 16);
          }

          v15 &= v15 - 1;
          *(v68 + 96) = &type metadata for Int;
          *(v68 + 104) = &protocol witness table for Int;
          *(v68 + 72) = v59;
          v60 = String.init(format:_:)();
          v62 = v61;
          v103 = v6;
          LOBYTE(v6) = v99;
          v104 = v99;

          v63._countAndFlagsBits = v60;
          v63._object = v62;
          String.append(_:)(v63);

          v58 = v104;
          v102 = v103;
          v54 = v97;
        }

        while (1)
        {
          v64 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v64 >= v5)
          {

            v77 = HIBYTE(v58) & 0xF;
            if ((v58 & 0x2000000000000000) == 0)
            {
              v77 = v102 & 0xFFFFFFFFFFFFLL;
            }

            if (v77)
            {
              v71 = v101;
              if (qword_100935AC0 != -1)
              {
                swift_once();
              }

              v78 = type metadata accessor for Logger();
              sub_100006654(v78, qword_100938E90);

              v73 = Logger.logObject.getter();
              v79 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v73, v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                v103 = v81;
                *v80 = 136446210;
                v82 = sub_10000668C(v102, v58, &v103);

                *(v80 + 4) = v82;
                _os_log_impl(&_mh_execute_header, v73, v79, "RDAssignmentNotificationEngine: Assignments to notify in this change set {stats: %{public}s}", v80, 0xCu);
                sub_10000607C(v81);

                goto LABEL_69;
              }
            }

            else
            {

              v71 = v101;
              if (qword_100935AC0 != -1)
              {
                swift_once();
              }

              v83 = type metadata accessor for Logger();
              sub_100006654(v83, qword_100938E90);
              v73 = Logger.logObject.getter();
              v74 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v73, v74))
              {
                v75 = swift_slowAlloc();
                *v75 = 0;
                v76 = "RDAssignmentNotificationEngine: No assignment to notify in this change set";
                goto LABEL_68;
              }
            }

            goto LABEL_71;
          }

          v15 = *(a1 + 8 * v64);
          ++v57;
          if (v15)
          {
            v99 = v58;
            v57 = v64;
            goto LABEL_51;
          }
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (!v17)
      {
        goto LABEL_79;
      }
    }

LABEL_13:
    v29 = objc_opt_self();
    v30 = v5[2];
    v31 = v5[3];

    v32 = String._bridgeToObjectiveC()();

    v33 = [v29 babySatErrorWithOperationName:v32];

    sub_1000F5104(&unk_10093D030, &unk_10079C950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v35 = v5;
    v36 = v5[2];
    v37 = v5[3];

    v38 = String._bridgeToObjectiveC()();

    *(inited + 48) = v38;
    v39 = sub_10038D9FC(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
    type metadata accessor for Analytics();
    v40 = v35[6];
    v5 = v35[7];

    sub_1004646CC(v39);

    v41 = v33;
    static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_100938E90);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v103 = v46;
      *v45 = 136446210;
      *(v45 + 4) = sub_10000668C(0xD000000000000039, 0x80000001007EC880, &v103);
      _os_log_impl(&_mh_execute_header, v43, v44, "Babysitting RDAssignmentNotificationEngine because it failed too many times {waiterID: %{public}s}.", v45, 0xCu);
      sub_10000607C(v46);
    }

    v6 = 0;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v47 = *(a1 + 8 * v6 + 32);
      }

      v48 = v47;
      v5 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v103 = v47;
      sub_100146330(&v103);

      ++v6;
    }

    while (v5 != v17);
    if (v101)
    {
      v101(0);
    }
  }

  else
  {
LABEL_79:
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100006654(v87, qword_100938E90);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v101;
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "RDAssignmentNotificationEngine: No account eligible for assignment change tracking, no assignment to notify.", v92, 2u);
    }

    if (v91)
    {
      v91(0);
    }
  }
}

void sub_100146330(id *a1)
{
  v1 = *a1;
  v2 = [objc_msgSend(*a1 "account")];
  swift_unknownObjectRelease();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  [v1 markChangesConsumed:1];
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100938E90);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = sub_10000668C(v3, v5, &v15);

    *(v10 + 4) = v11;
    *(v10 + 12) = 2082;
    [v7 upToToken];
    sub_1000F5104(&unk_100939330, qword_100795D90);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000668C(v12, v13, &v15);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDAssignmentNotificationEngine: Mark to current token as consumed due to Babysitting {account: %{public}s, token: %{public}s}", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void *sub_100146580()
{
  v68 = type metadata accessor for UUID();
  v1 = *(v68 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v68);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v0 + 104)];
  v70 = 0;
  v69 = v5;
  v6 = [v5 fetchActiveCloudKitAccountObjectIDsWithFetchOption:2 error:&v70];
  v7 = v70;
  if (!v6)
  {
    v48 = v70;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_100938E90);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70 = v53;
      *v52 = 136446210;
      swift_getErrorValue();
      v54 = Error.rem_errorDescription.getter();
      v56 = sub_10000668C(v54, v55, &v70);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "RDAssignmentNotificationEngine: Failed to fetch CloudKit accounts. Not tracking changes. {error: %{public}s}", v52, 0xCu);
      sub_10000607C(v53);
    }

    return _swiftEmptyArrayStorage;
  }

  v8 = v6;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v7;

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      v70 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_20:

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006654(v58, qword_100938E90);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "RDAssignmentNotificationEngine: Not tracking changes since there is no logged in or enabled CloudKit account.", v61, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v57 = _CocoaArrayWrapper.endIndex.getter();
  if (!v57)
  {

    return _swiftEmptyArrayStorage;
  }

  v11 = v57;
  v70 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_5:
  v66 = v11;
  v12 = objc_opt_self();
  v13 = 0;
  v64 = v9 & 0xC000000000000001;
  v65 = v12;
  v63 = "ent and 1 originator.";
  v14 = (v1 + 8);
  v62 = xmmword_100791300;
  v67 = v9;
  do
  {
    if (v64)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v9 + 8 * v13 + 32);
    }

    v16 = v15;
    ++v13;
    v17 = [objc_allocWithZone(type metadata accessor for ChangeTrackingAccountProvider()) init];
    v18 = [v16 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = UUID.uuidString.getter();
    v21 = v20;
    v22 = *v14;
    v23 = v68;
    (*v14)(v4, v68);
    v24 = &v17[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID];
    v25 = *&v17[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID + 8];
    *v24 = v19;
    v24[1] = v21;

    v26 = *&v17[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID];
    *&v17[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID] = v16;
    v27 = v16;

    v28 = [v27 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = UUID.uuidString.getter();
    v31 = v30;
    v22(v4, v23);
    v32 = &v17[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription];
    v33 = *&v17[OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription + 8];
    *v32 = v29;
    v32[1] = v31;

    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v34 = swift_allocObject();
    *(v34 + 16) = v62;
    v35 = v17;
    v36 = v69;
    v37 = [v65 cdEntityName];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v34 + 32) = v38;
    *(v34 + 40) = v40;
    v41 = objc_allocWithZone(REMDAChangeTrackingHelper);
    v42 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v44 = [v41 initWithREMDAAccount:v35 clientName:v42 withREMStore:v36 entityNames:isa];

    v45 = [v44 fetchAndInitializeChangeTrackingStateIfNeeded];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v46 = v70[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v9 = v67;
  }

  while (v66 != v13);

  return v70;
}

void sub_100146C68(id *a1, char a2, void *a3, uint64_t a4, id *a5)
{
  v8 = *a1;
  v9 = [objc_msgSend(*a1 "account")];
  swift_unknownObjectRelease();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = v11;

  v12 = [v8 sinceToken];
  if (!v12)
  {
    if (qword_100935AC0 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_9;
  }

  v13 = v12;
  v14 = [v8 upToToken];
  if (v14)
  {
    v15 = v14;
    v117 = v8;
    v126 = v10;
    if (a2)
    {
      if (qword_100935AC0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100938E90);

      v17 = v13;
      v18 = v15;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v112 = v13;
        v21 = swift_slowAlloc();
        v110 = v15;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v132 = v23;
        *v21 = 136446722;
        v24 = sub_10000668C(v10, v121, &v132);

        *(v21 + 4) = v24;
        v8 = v117;
        *(v21 + 12) = 2114;
        *(v21 + 14) = v17;
        *(v21 + 22) = 2114;
        *(v21 + 24) = v18;
        *v22 = v112;
        v22[1] = v110;
        v25 = v17;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "RDAssignmentNotificationEngine: User opts to not posting assignment notifications, mark change set as consumed right away {account: %{public}s, since: %{public}@, upTo: %{public}@}", v21, 0x20u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        sub_10000607C(v23);
      }

      else
      {
      }

      [v8 markChangesConsumed];
      return;
    }

    v108 = a5;
    v109 = a4;
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_100938E90);
    v10 = v121;

    v42 = v13;
    v43 = v13;
    v44 = v15;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    v116 = v43;
    v119 = v44;
    v114 = v42;
    v111 = v15;
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v132 = v124;
      *v47 = 136446722;
      *(v47 + 4) = sub_10000668C(v126, v121, &v132);
      *(v47 + 12) = 2114;
      *(v47 + 14) = v43;
      *(v47 + 22) = 2114;
      *(v47 + 24) = v119;
      *v48 = v42;
      v48[1] = v15;
      v49 = v43;
      v50 = v119;
      _os_log_impl(&_mh_execute_header, v45, v46, "RDAssignmentNotificationEngine: Processing change set {account: %{public}s, since: %{public}@, upTo: %{public}@}", v47, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v124);
      v44 = v119;
    }

    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    v51 = [v8 changedModelObjectsOfModelClass:swift_getObjCClassFromMetadata() ofChangeType:0];
    if (v51)
    {
      v52 = v51;
      sub_1000F5104(&qword_1009392E0, &qword_100795D60);
      v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v132 = &_swiftEmptyDictionarySingleton;
      if (v53 >> 62)
      {
        v54 = _CocoaArrayWrapper.endIndex.getter();
        v28 = v43;
        if (v54)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v28 = v43;
        if (v54)
        {
LABEL_22:
          v55 = 0;
          v125 = v53 & 0xFFFFFFFFFFFFFF8;
          v127 = v53 & 0xC000000000000001;
          v120 = v53;
          v123 = v54;
          do
          {
            if (v127)
            {
              v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v10 = v55 + 1;
              if (__OFADD__(v55, 1))
              {
LABEL_34:
                __break(1u);
                goto LABEL_37;
              }
            }

            else
            {
              if (v55 >= *(v125 + 16))
              {
                __break(1u);
LABEL_43:
                swift_once();
LABEL_9:
                v27 = type metadata accessor for Logger();
                sub_100006654(v27, qword_100938E90);

                v28 = Logger.logObject.getter();
                v29 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v28, v29))
                {
                  v30 = swift_slowAlloc();
                  v31 = swift_slowAlloc();
                  v132 = v31;
                  *v30 = 136446210;
                  v32 = sub_10000668C(v10, v121, &v132);

                  *(v30 + 4) = v32;
                  _os_log_impl(&_mh_execute_header, v28, v29, "RDAssignmentNotificationEngine: No since-token from change tracking {account: %{public}s}", v30, 0xCu);
                  sub_10000607C(v31);

                  goto LABEL_38;
                }

LABEL_37:

LABEL_38:

                return;
              }

              v56 = *(v53 + 8 * v55 + 32);
              swift_unknownObjectRetain();
              v10 = v55 + 1;
              if (__OFADD__(v55, 1))
              {
                goto LABEL_34;
              }
            }

            objc_opt_self();
            v57 = swift_dynamicCastObjCClass();
            if (v57)
            {
              v131 = v57;
              v58 = v57;
              swift_unknownObjectRetain();
              v129 = [v58 reminderID];
              sub_1000F5104(&qword_1009392E8, &qword_100795D68);
              sub_10000CB48(&unk_1009392F0, &unk_10094F4A0, &qword_100795D70);
              v53 = v120;
              Dictionary<>.append(_:toCollectionUnderKey:)();
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRetain();
              v59 = Logger.logObject.getter();
              v60 = static os_log_type_t.fault.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v115 = swift_slowAlloc();
                v131 = v115;
                *v61 = 136315138;
                v62 = [v56 description];
                v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v64;

                v8 = v117;
                v66 = sub_10000668C(v63, v65, &v131);
                v44 = v119;

                *(v61 + 4) = v66;
                v28 = v116;
                _os_log_impl(&_mh_execute_header, v59, v60, "RDAssignmentNotificationEngine: Tracked insertion is not an REMAssignment, huh? {inserted: %s}", v61, 0xCu);
                sub_10000607C(v115);

                v53 = v120;
              }

              swift_unknownObjectRelease();
            }

            ++v55;
          }

          while (v10 != v123);
        }
      }

      v67 = v132;
      if (*(v132 + 2))
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        sub_1000F5104(&qword_100939300, &qword_100795D78);
        sub_10000CB48(&qword_100939308, &qword_100939300, &qword_100795D78);
        Sequence.elements<A>(ofType:)();
        isa = Array._bridgeToObjectiveC()().super.isa;

        v132 = 0;
        v69 = [a3 fetchRemindersWithObjectIDs:isa error:&v132];

        v70 = v132;
        if (v69)
        {
          sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
          sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
          v71 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v70;

          v132 = &_swiftEmptyDictionarySingleton;
          v122 = v67;
          if ((v71 & 0xC000000000000001) != 0)
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
          }

          else
          {
            v93 = -1 << *(v71 + 32);
            v74 = ~v93;
            v73 = v71 + 64;
            v94 = -v93;
            if (v94 < 64)
            {
              v95 = ~(-1 << v94);
            }

            else
            {
              v95 = -1;
            }

            v75 = v95 & *(v71 + 64);
            v76 = v71;
          }

          v96 = 0;
          v128 = v76;
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }

          while (1)
          {
            v97 = v96;
            v98 = v75;
            v99 = v96;
            if (!v75)
            {
              break;
            }

LABEL_64:
            v100 = (v98 - 1) & v98;
            v101 = (v99 << 9) | (8 * __clz(__rbit64(v98)));
            v102 = *(*(v76 + 48) + v101);
            v103 = *(*(v76 + 56) + v101);
            v104 = v102;
            v105 = v103;
            if (!v104)
            {
              goto LABEL_70;
            }

            while (1)
            {
              v131 = v105;
              v106 = v105;
              v130 = [v106 list];
              sub_1000F5104(&qword_100939310, &unk_100795D80);
              sub_10000CB48(&qword_100939318, &unk_100939320, &qword_1007AEAE0);
              v44 = v119;
              Dictionary<>.append(_:toCollectionUnderKey:)();

              v96 = v99;
              v75 = v100;
              v76 = v128;
              if ((v128 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_66:
              if (__CocoaDictionary.Iterator.next()())
              {
                swift_dynamicCast();
                v104 = v131;
                swift_dynamicCast();
                v105 = v131;
                v99 = v96;
                v100 = v75;
                if (v104)
                {
                  continue;
                }
              }

              goto LABEL_70;
            }
          }

          while (1)
          {
            v99 = v97 + 1;
            if (__OFADD__(v97, 1))
            {
              __break(1u);
            }

            if (v99 >= ((v74 + 64) >> 6))
            {
              break;
            }

            v98 = *(v73 + 8 * v99);
            ++v97;
            if (v98)
            {
              goto LABEL_64;
            }
          }

LABEL_70:
          sub_10001B860();

          v107 = v132;
          v8 = v117;
          v67 = v122;
        }

        else
        {
          v85 = v132;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_errorRetain();
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v132 = v89;
            *v88 = 136315138;
            swift_getErrorValue();
            v90 = Error.localizedDescription.getter();
            v92 = sub_10000668C(v90, v91, &v132);

            *(v88 + 4) = v92;
            v8 = v117;
            _os_log_impl(&_mh_execute_header, v86, v87, "RDAssignmentNotificationEngine: Error ocurred when fetching inserted assignments' reminders {error: %s}", v88, 0xCu);
            sub_10000607C(v89);
          }

          else
          {
          }

          v107 = &_swiftEmptyDictionarySingleton;
          v44 = v119;
        }

        sub_10014B0D0(v107, v109, v67, v108);

        swift_bridgeObjectRelease_n();
        [v8 markChangesConsumed];

        return;
      }
    }

    else
    {

      v28 = v43;
    }

    v77 = v28;
    v78 = v44;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138543618;
      *(v81 + 4) = v77;
      *(v81 + 12) = 2114;
      *(v81 + 14) = v78;
      *v82 = v114;
      v82[1] = v111;
      v83 = v77;
      v84 = v78;
      _os_log_impl(&_mh_execute_header, v79, v80, "RDAssignmentNotificationEngine: No inserted assignments found in change {since: %{public}@, upTo: %{public}@}", v81, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    [v8 markChangesConsumed];
    return;
  }

  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100006654(v33, qword_100938E90);

  v34 = v13;
  v28 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v28, v35))
  {

    goto LABEL_37;
  }

  v36 = swift_slowAlloc();
  v113 = v13;
  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v132 = v38;
  *v36 = 136446466;
  v39 = sub_10000668C(v10, v121, &v132);

  *(v36 + 4) = v39;
  *(v36 + 12) = 2114;
  *(v36 + 14) = v34;
  *v37 = v113;
  v40 = v34;
  _os_log_impl(&_mh_execute_header, v28, v35, "RDAssignmentNotificationEngine: No updated change token from change tracking (no changes) {account: %{public}s, since: %{public}@}", v36, 0x16u);
  sub_1000050A4(v37, &unk_100938E70, &unk_100797230);

  sub_10000607C(v38);
}

void sub_100147DA0(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a2 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_currentUserShareParticipantIDsOverrideByListID);
  if (v7)
  {
    v8 = *(a2 + OBJC_IVAR____TtC7remindd30RDAssignmentNotificationEngine_currentUserShareParticipantIDsOverrideByListID);

    v9 = v6;

    v10 = [v9 objectID];
    v11 = v10;
    if (*(v7 + 16))
    {
      v12 = sub_10002B924(v10);
      if (v13)
      {
        v14 = (*(v7 + 56) + 16 * v12);
        v15 = *v14;
        v37 = v14[1];

        goto LABEL_9;
      }
    }
  }

  else
  {
    v16 = v6;
  }

  v17 = [v6 currentUserShareParticipantID];
  if (!v17)
  {

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100938E90);
    v27 = v6;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = [v27 objectID];
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "RDAssignmentNotificationEngine: Current user is not participating the list of this inserted assignment {list: %{public}@}", v30, 0xCu);
      sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
    }

    else
    {
    }

    return;
  }

  v18 = v17;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v19;

LABEL_9:
  v40 = &_swiftEmptyDictionarySingleton;
  if (v5 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v36 = v6;

    if (!i)
    {
      break;
    }

    v35 = a4;
    v21 = 0;
    a4 = (v5 & 0xC000000000000001);
    v22 = v5;
    v5 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (a4)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v5 + 16))
        {
          goto LABEL_32;
        }

        v23 = *(v22 + 8 * v21 + 32);
      }

      v24 = v23;
      v6 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v39 = v23;
      sub_1001481A0(&v39, a3, v15, v37, v36, &v40);

      ++v21;
      if (v6 == i)
      {
        v25 = v40;
        a4 = v35;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v25 = &_swiftEmptyDictionarySingleton;
LABEL_25:

  swift_bridgeObjectRelease_n();

  if ((v25 & 0xC000000000000001) != 0)
  {
    if (__CocoaDictionary.count.getter())
    {
LABEL_27:

      v33 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *a4;
      *a4 = 0x8000000000000000;
      sub_1002C7B54(v25, v36, isUniquelyReferenced_nonNull_native);

      *a4 = v39;

      return;
    }
  }

  else if (*(v25 + 16))
  {
    goto LABEL_27;
  }
}

void sub_1001481A0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v8 = v6;
  v13 = *a1;
  if ([*a1 isCompleted])
  {
    if (qword_100935AC0 == -1)
    {
LABEL_3:
      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_100938E90);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v16, v17))
      {
LABEL_25:

        return;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = [v15 objectID];
      *(v18 + 4) = v20;
      *v19 = v20;
      v21 = "RDAssignmentNotificationEngine: Reminder is already completed, skipping from showing assignment notification {reminder: %{public}@}";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v16, v17, v21, v18, 0xCu);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);

      goto LABEL_25;
    }

LABEL_29:
    swift_once();
    goto LABEL_3;
  }

  v22 = [v13 objectID];
  v23 = v22;
  if (!*(a2 + 16) || (v24 = sub_10002B924(v22), (v25 & 1) == 0))
  {

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100938E90);
    v35 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_25;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    v36 = [v35 objectID];
    *(v18 + 4) = v36;
    *v19 = v36;
    v21 = "RDAssignmentNotificationEngine: Can't find the correspinding inserted assignments from the reminderID, how come? {reminder: %{public}@}";
    goto LABEL_24;
  }

  v26 = *(*(a2 + 56) + 8 * v24);

  v71 = _swiftEmptyArrayStorage;
  if (v26 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
    v67 = v26;
    if (v66)
    {
LABEL_9:
      v63 = a5;
      v64 = a6;
      v27 = 0;
      v68 = v26 & 0xC000000000000001;
      v28 = v26 & 0xFFFFFFFFFFFFFF8;
      v29 = v66;
      while (1)
      {
        if (v68)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v28 + 16))
          {
            goto LABEL_28;
          }

          v30 = *(v26 + 8 * v27 + 32);
        }

        v7 = v30;
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v70 = v30;
        v32 = sub_100148938(&v70, a3, a4, v13);
        if (v8)
        {
          goto LABEL_61;
        }

        if (v32)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v33 = v71[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v8 = 0;
          v29 = v66;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v26 = v67;
        }

        else
        {
        }

        ++v27;
        if (v31 == v29)
        {
          v37 = v71;
          a5 = v63;
          a6 = v64;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v66 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = v26;
    if (v66)
    {
      goto LABEL_9;
    }
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_32:

  if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 1)
    {
      goto LABEL_35;
    }

    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *(v37 + 16);
    if (v38 > 1)
    {
LABEL_35:

      if (qword_100935AC0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100938E90);
      v40 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_25;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v41 = [v40 objectID];
      *(v18 + 4) = v41;
      *v19 = v41;
      v21 = "RDAssignmentNotificationEngine: Should have selected only the ONE most recent current assignment, not multiple {reminder: %{public}@}";
      goto LABEL_24;
    }
  }

  if (!v38)
  {

    return;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    v42 = a5;
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v37 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v42 = a5;
    v43 = *(v37 + 32);
  }

  v44 = v43;

  v45 = v13;
  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_100938E90);
  v47 = v42;
  v7 = v45;
  v48 = v44;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v65 = a6;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138543874;
    v53 = [v47 objectID];
    *(v51 + 4) = v53;
    *v52 = v53;
    *(v51 + 12) = 2114;
    v54 = [v7 objectID];
    *(v51 + 14) = v54;
    v52[1] = v54;
    *(v51 + 22) = 2114;
    v55 = [v48 objectID];
    *(v51 + 24) = v55;
    v52[2] = v55;
    _os_log_impl(&_mh_execute_header, v49, v50, "RDAssignmentNotificationEngine: This is an inserted assignment we want to notify {list: %{public}@, reminder: %{public}@, assignment: %{public}@}", v51, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    a6 = v65;
  }

  v56 = *a6;
  if ((*a6 & 0xC000000000000001) == 0)
  {
    v60 = *a6;
    v61 = v7;
    goto LABEL_57;
  }

  if (v56 < 0)
  {
    v57 = *a6;
  }

  else
  {
    v57 = v56 & 0xFFFFFFFFFFFFFF8;
  }

  v58 = v7;
  v59 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v59, 1))
  {
    *a6 = sub_10021CB70(v57, v59 + 1);
LABEL_57:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *a6;
    sub_1002C7CD0(v7, v48, isUniquelyReferenced_nonNull_native);
    *a6 = v71;

    return;
  }

LABEL_60:
  __break(1u);
LABEL_61:

  __break(1u);
}

BOOL sub_100148938(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [*a1 assigneeID];
  v14 = [v13 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v18 = *(v8 + 8);
  v39 = v7;
  v19 = v7;
  v20 = v18;
  v18(v11, v19);
  v44 = v15;
  v45 = v17;
  v40 = a2;
  v41 = a3;
  v42 = a2;
  v43 = a3;
  sub_10013BCF4();
  v21 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (v21)
  {
    return 0;
  }

  v37 = v12;
  v23 = [v12 originatorID];
  v24 = [v23 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v20(v11, v39);
  v44 = v25;
  v45 = v27;
  v42 = v40;
  v43 = v41;
  v28 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v28)
  {
    return 0;
  }

  v29 = [v38 assignmentContext];
  if (v29 && (v30 = v29, v31 = [v29 currentAssignment], v30, v31))
  {
    v32 = [v31 objectID];
  }

  else
  {
    v32 = 0;
  }

  v33 = [v37 objectID];
  v34 = v33;
  if (!v32)
  {
    if (!v33)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if (!v33)
  {
    v34 = v32;
LABEL_16:

    return 0;
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v35 = static NSObject.== infix(_:_:)();

  return (v35 & 1) != 0;
}

void sub_100148C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 72);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v41 = v18;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    v38 = v10;
    v39 = v7;
    v40 = v6;
    v20 = dispatch_group_create();
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    while (v23)
    {
      v26 = v25;
LABEL_10:
      v27 = (v26 << 9) | (8 * __clz(__rbit64(v23)));
      v28 = *(*(a1 + 56) + v27);
      v23 &= v23 - 1;
      aBlock = *(*(a1 + 48) + v27);
      v49 = v28;
      v29 = aBlock;

      sub_10014915C(&aBlock, v4, v20);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v30 = swift_allocObject();
        v32 = v42;
        v31 = v43;
        *(v30 + 16) = v42;
        *(v30 + 24) = v31;
        v52 = sub_10014D6C4;
        v53 = v30;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_100019200;
        v51 = &unk_1008E61C8;
        v33 = _Block_copy(&aBlock);
        sub_10003E124(v32);
        v34 = v44;
        static DispatchQoS.unspecified.getter();
        v47 = _swiftEmptyArrayStorage;
        sub_10000AB38();
        sub_1000F5104(&unk_100939E50, &unk_100791AD0);
        sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
        v35 = v46;
        v36 = v40;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();

        _Block_release(v33);
        (*(v39 + 8))(v35, v36);
        (*(v45 + 8))(v34, v38);

        return;
      }

      v23 = *(a1 + 64 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1001490E0()
{
  if (!qword_100938FA0)
  {
    type metadata accessor for RDStoreControllerNotificationCenter.Token(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100938FA0);
    }
  }
}

void sub_10014915C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RDUserNotificationType();
  v155 = *(v12 - 8);
  v156 = v12;
  v13 = *(v155 + 64);
  __chkstk_darwin(v12);
  v154 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  v16 = *a1;

  v17 = [v16 shareeContext];
  if (!v17)
  {

    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100938E90);
    v29 = v16;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      v34 = [v29 objectID];
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "RDAssignmentNotificationEngine: List has no sharee, huh? {listID: %{public}@}", v32, 0xCu);
      sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
    }

    else
    {
    }

    return;
  }

  v149 = v11;
  v150 = v8;
  v18 = v17;
  v19 = [v17 sharees];

  sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) == 0)
  {
    v22 = *(v15 + 16);
    if (v22)
    {
      goto LABEL_4;
    }

LABEL_13:

    return;
  }

  v22 = __CocoaDictionary.count.getter();
  if (!v22)
  {
    goto LABEL_13;
  }

LABEL_4:
  v153 = v22;
  v147 = a2;
  v151 = a3;

  sub_10014B514(v15, v20);
  v24 = v23;
  v157 = v3;

  swift_bridgeObjectRelease_n();
  v159 = v24;
  sub_1000F5104(&qword_100939210, &qword_100795D18);
  sub_10000CB48(&qword_100939218, &qword_100939210, &qword_100795D18);
  sub_10000CDE4(&unk_100939220, &unk_10094F0F0, REMSharee_ptr);
  v25 = Sequence<>.unique()();

  if (!(v25 >> 62))
  {
    v144 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  while (1)
  {
    v144 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    v146 = v7;
    v152 = v16;

    if (v21)
    {
      v7 = 0;
      v26 = 0;
      v16 = 0;
      v27 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v35 = -1 << *(v15 + 32);
      v26 = ~v35;
      v7 = v15 + 64;
      v36 = -v35;
      v37 = v36 < 64 ? ~(-1 << v36) : -1;
      v16 = (v37 & *(v15 + 64));
      v27 = v15;
    }

    v38 = 0;
    v148 = v26;
    v21 = (v26 + 64) >> 6;
    v158 = v15;
    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    while (1)
    {
      v46 = v38;
      v47 = v16;
      v44 = v38;
      if (!v16)
      {
        break;
      }

LABEL_27:
      v45 = (v47 - 1) & v47;
      v48 = (v44 << 9) | (8 * __clz(__rbit64(v47)));
      v49 = *(*(v27 + 56) + v48);
      v42 = *(*(v27 + 48) + v48);
      v43 = v49;
      if (!v42)
      {
        goto LABEL_43;
      }

LABEL_28:
      if (([v42 isOriginatorNullified] & 1) == 0)
      {
        sub_10001B860();
        v88 = qword_100935AC0;
        v89 = v42;
        v90 = v43;
        if (v88 != -1)
        {
          swift_once();
        }

        v91 = type metadata accessor for Logger();
        sub_100006654(v91, qword_100938E90);
        v92 = v152;
        v93 = v89;
        v94 = v90;
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.info.getter();
        v145 = v94;

        v97 = os_log_type_enabled(v95, v96);
        v74 = v154;
        v78 = v144;
        v148 = v93;
        if (v97)
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v142 = v99;
          v143 = swift_slowAlloc();
          v159 = v143;
          *v98 = 138544130;
          v100 = [v92 objectID];
          *(v98 + 4) = v100;
          *v99 = v100;
          *(v98 + 12) = 2048;
          *(v98 + 14) = v153;
          *(v98 + 22) = 2048;
          *(v98 + 24) = v78;
          *(v98 + 32) = 2082;
          v101 = [v93 description];
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;

          v78 = v144;
          v105 = sub_10000668C(v102, v104, &v159);

          *(v98 + 34) = v105;
          _os_log_impl(&_mh_execute_header, v95, v96, "RDAssignmentNotificationEngine: Populating assignment notification content {listID: %{public}@, assignedCount: %ld, originatorCount: %ld, selected: %{public}s}", v98, 0x2Au);
          sub_1000050A4(v142, &unk_100938E70, &unk_100797230);

          sub_10000607C(v143);
        }

        v73 = v149;
        v106 = v157;
        v75 = v92;
        v77 = sub_100143064(v158);
        v157 = v106;

        *v74 = v77;
        goto LABEL_49;
      }

      v38 = v44;
      v16 = v45;
      v15 = v158;
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v44 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v44 >= v21)
      {
        goto LABEL_31;
      }

      v47 = *(v7 + 8 * v44);
      ++v46;
      if (v47)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

LABEL_20:
  v39 = __CocoaDictionary.Iterator.next()();
  if (v39)
  {
    v41 = v40;
    v161 = v39;
    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    swift_dynamicCast();
    v42 = v159;
    v161 = v41;
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    swift_dynamicCast();
    v43 = v159;
    v44 = v38;
    v45 = v16;
    if (v42)
    {
      goto LABEL_28;
    }

LABEL_43:
    v15 = v158;
  }

LABEL_31:
  sub_10001B860();
  v50 = sub_10031E8F4(v15);
  if (v50)
  {
    v52 = v51;
    v53 = qword_100935AC0;
    v54 = v50;
    v55 = v52;
    v56 = v152;
    if (v53 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100006654(v57, qword_100938E90);
    v58 = v56;
    v59 = v54;
    v60 = v55;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    v145 = v60;

    v63 = os_log_type_enabled(v61, v62);
    v148 = v59;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v159 = v66;
      *v64 = 138543874;
      v67 = [v58 objectID];
      *(v64 + 4) = v67;
      *v65 = v67;
      *(v64 + 12) = 2048;
      *(v64 + 14) = v153;
      *(v64 + 22) = 2082;
      v68 = [v59 description];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v15 = v158;
      v72 = sub_10000668C(v69, v71, &v159);

      *(v64 + 24) = v72;
      _os_log_impl(&_mh_execute_header, v61, v62, "RDAssignmentNotificationEngine: Populating assignment notification content with all nullified originators {listID: %{public}@, assignedCount: %ld, selected: %{public}s}", v64, 0x20u);
      sub_1000050A4(v65, &unk_100938E70, &unk_100797230);

      sub_10000607C(v66);
    }

    v73 = v149;
    v74 = v154;
    v75 = v58;
    v76 = v157;
    v77 = sub_100143064(v15);
    v157 = v76;

    *v74 = v77;
    v78 = 1;
LABEL_49:
    v108 = v155;
    v107 = v156;
    (*(v155 + 104))(v74, enum case for RDUserNotificationType.assignmentNotification(_:), v156);
    v109 = v75;
    v110 = v75;

    v111 = sub_1002D833C(0, v109, v77);

    v112 = v148;
    v113 = v145;
    v158 = v111;
    sub_10014C4B8(v158, v112, v113, v153, v78);

    (*(v108 + 8))(v74, v107);
    dispatch_group_enter(v151);
    v114 = v152;
    v115 = [v152 objectID];
    v116 = [v115 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = UUID.uuidString.getter();
    v119 = v118;
    v120 = *(v150 + 8);
    v121 = v146;
    v120(v73, v146);
    v159 = 0xD000000000000029;
    v160 = 0x80000001007EC8C0;
    v122._countAndFlagsBits = v117;
    v122._object = v119;
    String.append(_:)(v122);

    v123._countAndFlagsBits = 46;
    v123._object = 0xE100000000000000;
    String.append(_:)(v123);

    v124 = v73;
    v126 = v159;
    v125 = v160;
    UUID.init()();
    v127 = UUID.uuidString.getter();
    v129 = v128;
    v120(v124, v121);
    v159 = v126;
    v160 = v125;

    v130._countAndFlagsBits = v127;
    v130._object = v129;
    String.append(_:)(v130);

    v131 = v159;
    v132 = v160;
    v133 = v147;
    v134 = *(v147 + 80);
    v135 = swift_allocObject();
    v135[2] = v133;
    v135[3] = v114;
    v136 = v151;
    v135[4] = v153;
    v135[5] = v136;
    v137 = v114;

    v138 = v136;
    v139 = v131;
    v140 = v158;
    sub_10052554C(v139, v132, v158, sub_10014D6F8, v135);
  }

  else
  {
    if (qword_100935AC0 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_100006654(v79, qword_100938E90);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v159 = v83;
      *v82 = 136315138;
      sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
      sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
      sub_10000CDE4(&qword_100939230, &unk_10093F5F0, REMAssignment_ptr);
      v84 = Dictionary.description.getter();
      v86 = v85;

      v87 = sub_10000668C(v84, v86, &v159);

      *(v82 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v80, v81, "RDAssignmentNotificationEngine: Can't find any item to populate, this is not expected {map: %s}", v82, 0xCu);
      sub_10000607C(v83);
    }

    else
    {
    }
  }
}

void sub_10014A058(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + 72);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_4:
    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100938E90);
    swift_errorRetain();
    v18 = a3;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = a5;
      v24 = v23;
      v39 = v23;
      *v21 = 136315650;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_10000668C(v25, v26, &v39);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2114;
      v28 = [v18 objectID];
      *(v21 + 14) = v28;
      *v22 = v28;
      *(v21 + 22) = 2048;
      *(v21 + 24) = a4;
      _os_log_impl(&_mh_execute_header, v19, v20, "RDAssignmentNotificationEngine: Unable to post Assignment notification {error: %s, listID: %{public}@, count: %ld}", v21, 0x20u);
      sub_1000050A4(v22, &unk_100938E70, &unk_100797230);

      sub_10000607C(v24);
      a5 = v38;
    }

    else
    {
    }

    goto LABEL_12;
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_100935AC0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (qword_100935AC0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_100938E90);
  v30 = a3;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138543618;
    v35 = [v30 objectID];
    *(v33 + 4) = v35;
    *v34 = v35;
    *(v33 + 12) = 2048;
    *(v33 + 14) = a4;
    _os_log_impl(&_mh_execute_header, v31, v32, "RDAssignmentNotificationEngine: Posted Assignment notification {listID: %{public}@, count: %ld}", v33, 0x16u);
    sub_1000050A4(v34, &unk_100938E70, &unk_100797230);
  }

  type metadata accessor for Analytics();
  sub_1000F5104(&unk_100939240, &unk_100798990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  *(inited + 48) = NSString.init(stringLiteral:)();
  sub_10038D880(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100939250, &unk_100795D30);
  static Analytics.postEvent(_:payload:duration:)();

LABEL_12:
  dispatch_group_leave(a5);
}