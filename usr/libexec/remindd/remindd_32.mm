void sub_100329FAC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, objc_class *a6, NSObject *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v398 = a8;
  v380 = a7;
  v381 = a6;
  v367 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v20 = *(*(v367 - 8) + 64);
  __chkstk_darwin(v367);
  v369 = &v330 - v21;
  v388 = type metadata accessor for Date();
  v376 = *(v388 - 8);
  v22 = *(v376 + 8);
  __chkstk_darwin(v388);
  v368 = &v330 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v330 - v25;
  v27 = sub_1000F5104(&qword_1009420F8, &unk_1007A2508);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v390 = &v330 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v372 = &v330 - v31;
  v395 = type metadata accessor for Logger();
  v375 = *(v395 - 8);
  v32 = *(v375 + 8);
  __chkstk_darwin(v395);
  v370 = &v330 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v391 = &v330 - v35;
  __chkstk_darwin(v36);
  v383 = &v330 - v37;
  v384 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v38 = *(*(v384 - 8) + 64);
  __chkstk_darwin(v384);
  v379 = &v330 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v366 = &v330 - v41;
  __chkstk_darwin(v42);
  v362 = &v330 - v43;
  __chkstk_darwin(v44);
  v364 = &v330 - v45;
  __chkstk_darwin(v46);
  v373 = &v330 - v47;
  __chkstk_darwin(v48);
  v363 = &v330 - v49;
  __chkstk_darwin(v50);
  v378 = &v330 - v51;
  __chkstk_darwin(v52);
  v382 = &v330 - v53;
  __chkstk_darwin(v54);
  v389 = &v330 - v55;
  __chkstk_darwin(v56);
  v392 = &v330 - v57;
  v399 = type metadata accessor for UUID();
  v374 = *(v399 - 8);
  isa = v374[8].isa;
  __chkstk_darwin(v399);
  v365 = &v330 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v361 = &v330 - v61;
  __chkstk_darwin(v62);
  v393 = &v330 - v63;
  __chkstk_darwin(v64);
  v387 = &v330 - v65;
  __chkstk_darwin(v66);
  v396 = &v330 - v67;
  __chkstk_darwin(v68);
  v371 = &v330 - v69;
  __chkstk_darwin(v70);
  v377 = &v330 - v71;
  __chkstk_darwin(v72);
  v385 = &v330 - v73;
  __chkstk_darwin(v74);
  v386 = &v330 - v75;
  __chkstk_darwin(v76);
  v78 = &v330 - v77;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v397 = Strong;
    v80 = *a3;
    v401 = 0;
    v81 = [a2 existingObjectWithID:v80 error:&v401];
    v82 = v401;
    if (v81)
    {
      v394 = v78;
      v359 = a3;
      v83 = v81;
      objc_opt_self();
      v84 = swift_dynamicCastObjCClass();
      v85 = v82;
      if (!v84)
      {

        return;
      }

      v358 = v83;
      v86 = [v84 membershipsOfRemindersInSectionsAsData];
      v355 = v26;
      if (v86)
      {
        v354 = a4;
        v87 = v86;
        v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v14)
        {

          sub_10001BBA0(v88, v90);

          return;
        }

        sub_10001BBA0(v88, v90);
        v92 = v401;
        v15 = 0;
        a4 = v354;
      }

      else
      {
        v92 = 0;
      }

      swift_beginAccess();
      v93 = *(a4 + 16);
      *(a4 + 16) = v92;

      v94 = [v84 remObjectID];
      v95 = sub_100335590(v94, a2);
      if (v15)
      {

        return;
      }

      v96 = v95;

      swift_beginAccess();
      v97 = *(a5 + 16);
      *(a5 + 16) = v96;

      v98 = [v84 autoCategorizationLocalCorrectionsAsData];
      if (v98)
      {
        v99 = v98;
        v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;

        sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        sub_10001BBA0(v100, v102);
        v103 = v401;
      }

      else
      {
        v103 = 0;
      }

      v104 = v381;
      swift_beginAccess();
      v105 = *(v104 + 2);
      *(v104 + 2) = v103;

      if (!v103)
      {

        swift_beginAccess();
        v329 = *(a14 + 16);
        *(a14 + 16) = v380;

        return;
      }

      v106 = v380[2].isa;
      if (v106)
      {
        v334 = 0;
        v332 = a9;
        v331 = a11;
        v340 = a10;
        v346 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog;
        v107 = v380;
        v357 = v103;
        swift_beginAccess();
        swift_beginAccess();
        v347 = a5;
        swift_beginAccess();
        v353 = v374 + 7;
        v351 = v374 + 2;
        v344 = (v375 + 8);
        v345 = (v375 + 16);
        v333 = v374 + 4;
        v341 = (v376 + 8);
        v342 = v374 + 6;
        v108 = v107 + 6;
        *&v109 = 136446978;
        v335 = v109;
        *&v109 = 136447234;
        v330 = v109;
        v354 = a4;
        v356 = a14;
        v360 = &v374[1];
        while (1)
        {
          v380 = v106;
          v111 = v108[-1].isa;
          v112.isa = v108->isa;
          v113 = v108[-2].isa;

          v376 = v113;
          v114 = [(objc_class *)v113 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v401 = v111;
          v402 = v112.isa;
          sub_10013BCF4();
          v381 = v112.isa;

          v115 = StringProtocol.lowercased(with:)();
          v117 = v116;
          v118 = [(objc_class *)v357 memberships];
          sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
          v119 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v119 + 16) || (v120 = sub_100005F4C(v115, v117), (v121 & 1) == 0))
          {
            v135 = v381;

            v136 = v356;
            swift_beginAccess();
            v137 = *(v136 + 16);
            v138 = v376;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v136 + 16) = v137;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v137 = sub_100367C4C(0, *(v137 + 2) + 1, 1, v137);
              *(v136 + 16) = v137;
            }

            v141 = *(v137 + 2);
            v140 = *(v137 + 3);
            if (v141 >= v140 >> 1)
            {
              v137 = sub_100367C4C((v140 > 1), v141 + 1, 1, v137);
            }

            *(v137 + 2) = v141 + 1;
            v142 = &v137[24 * v141];
            *(v142 + 4) = v138;
            *(v142 + 5) = v111;
            *(v142 + 6) = v135;
            *(v136 + 16) = v137;
            swift_endAccess();

            (*v360)(v394, v399);
            goto LABEL_23;
          }

          v349 = v111;
          v122 = *(*(v119 + 56) + 8 * v120);

          v123 = [v122 identifier];
          v124 = v359;
          v375 = v122;
          if (v123)
          {
            v125 = v392;
            v126 = v123;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v352 = v353->isa;
            (v352)(v125, 0, 1, v399);
            sub_1000050A4(v125, &unk_100939D90, "8\n\r");
            v127 = *(v347 + 16);

            v128 = [v122 identifier];
            if (!v128)
            {
              __break(1u);
              return;
            }

            v129 = v128;

            v130 = v381;

            v131 = v386;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v127 + 16))
            {
              sub_100363F20(v131);
              v132 = v131;
              v134 = v133;
            }

            else
            {
              v132 = v131;
              v134 = 0;
            }

            v144 = v399;
            v374 = *v360;
            (v374)(v132, v399);

            if ((v134 & 1) == 0)
            {
              v168 = v383;
              v169 = v395;
              (*v345)(v383, v397 + v346, v395);
              (v351->isa)(v385, v394, v144);
              v170 = v375;
              sub_10033251C(v124, &v401);
              v171 = Logger.logObject.getter();
              v172 = static os_log_type_t.default.getter();
              sub_100332478(v124);

              LODWORD(v350) = v172;
              v173 = os_log_type_enabled(v171, v172);
              v375 = v170;
              if (v173)
              {
                v348 = v171;
                v174 = swift_slowAlloc();
                v175 = swift_slowAlloc();
                v343 = swift_slowAlloc();
                v401 = v343;
                *v174 = v335;
                v400 = type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList();
                sub_1000F5104(&qword_100942138, &qword_1007A25B8);
                v176 = String.init<A>(describing:)();
                v178 = v124;
                v179 = sub_10000668C(v176, v177, &v401);

                *(v174 + 4) = v179;
                *(v174 + 12) = 2114;
                v180 = *(v178 + 8);
                *(v174 + 14) = v180;
                v339 = v175;
                *v175 = v180;
                *(v174 + 22) = 2082;
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
                v181 = v180;
                v182 = v385;
                v183 = dispatch thunk of CustomStringConvertible.description.getter();
                v185 = v184;
                (v374)(v182, v144);
                v186 = sub_10000668C(v183, v185, &v401);

                *(v174 + 24) = v186;
                *(v174 + 32) = 2082;
                v187 = [v170 identifier];
                if (v187)
                {
                  v188 = v379;
                  v189 = v187;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v190 = 0;
                }

                else
                {
                  v190 = 1;
                  v188 = v379;
                }

                v232 = v356;
                v235 = v381;
                v233 = v376;
                v234 = v349;
                (v352)(v188, v190, 1, v399);
                v256 = Optional.descriptionOrNil.getter();
                v257 = v188;
                v259 = v258;
                sub_1000050A4(v257, &unk_100939D90, "8\n\r");
                v260 = sub_10000668C(v256, v259, &v401);

                *(v174 + 34) = v260;
                v261 = v348;
                _os_log_impl(&_mh_execute_header, v348, v350, "%{public}s: The section in local correction does not exist on the device {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s", v174, 0x2Au);
                sub_1000050A4(v339, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                (*v344)(v383, v395);
              }

              else
              {

                (v374)(v385, v144);
                (*v344)(v168, v169);
                v232 = v356;
                v233 = v376;
                v234 = v349;
                v235 = v381;
              }

              swift_beginAccess();
              v262 = *(v232 + 16);
              v263 = v233;

              v264 = swift_isUniquelyReferenced_nonNull_native();
              *(v232 + 16) = v262;
              if ((v264 & 1) == 0)
              {
                v262 = sub_100367C4C(0, *(v262 + 2) + 1, 1, v262);
                *(v232 + 16) = v262;
              }

              v266 = *(v262 + 2);
              v265 = *(v262 + 3);
              if (v266 >= v265 >> 1)
              {
                v262 = sub_100367C4C((v265 > 1), v266 + 1, 1, v262);
              }

              *(v262 + 2) = v266 + 1;
              v267 = &v262[24 * v266];
              *(v267 + 4) = v263;
              *(v267 + 5) = v234;
              *(v267 + 6) = v235;
              *(v232 + 16) = v262;
              swift_endAccess();

              (v374)(v394, v399);
              goto LABEL_23;
            }
          }

          else
          {

            v130 = v381;

            v143 = v392;
            v352 = v353->isa;
            (v352)(v392, 1, 1, v399);
            sub_1000050A4(v143, &unk_100939D90, "8\n\r");
          }

          v145 = *(v354 + 16);
          v146 = v389;
          v147 = v394;
          if (!v145)
          {
            v152 = 0;
            goto LABEL_52;
          }

          v148 = [v145 membershipByMemberIdentifier];
          sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
          sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
          v149 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v149 + 16) || (v150 = sub_100363F20(v147), (v151 & 1) == 0))
          {
            v152 = 0;
            goto LABEL_50;
          }

          v152 = *(*(v149 + 56) + 8 * v150);

          if (!v152)
          {
            goto LABEL_52;
          }

          v153 = *(v347 + 16);

          v154 = v152;
          v155 = [v154 groupIdentifier];
          if (v155)
          {
            v374 = v154;
            v156 = v371;
            v157 = v155;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v158 = v156;
            v159 = v377;
            (v333->isa)(v377, v158, v399);
            if (!*(v153 + 16) || (v160 = sub_100363F20(v159), (v161 & 1) == 0))
            {

              (*v360)(v159, v399);
              v268 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
              v269 = v372;
              (*(*(v268 - 8) + 56))(v372, 1, 1, v268);
              sub_1000050A4(v269, &qword_1009420F8, &unk_1007A2508);
              v147 = v394;
LABEL_50:

LABEL_52:
              v350 = v152;
              v191 = v351->isa;
              v192 = v399;
              (v351->isa)(v396, v147, v399);
              v193 = [v375 identifier];
              v349 = v191;
              if (v193)
              {
                v194 = v193;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v195 = 0;
              }

              else
              {
                v195 = 1;
              }

              v196 = v355;
              (v352)(v146, v195, 1, v192);
              static Date.now.getter();
              v197.super.isa = UUID._bridgeToObjectiveC()().super.isa;
              if ((v342->isa)(v146, 1, v192) == 1)
              {
                v198 = 0;
                v199 = v360;
              }

              else
              {
                v198 = UUID._bridgeToObjectiveC()().super.isa;
                v199 = v360;
                (*v360)(v146, v192);
              }

              v348 = v108;
              v200 = objc_allocWithZone(REMMembership);
              v201 = Date._bridgeToObjectiveC()().super.isa;
              v202 = [v200 initWithMemberIdentifier:v197.super.isa groupIdentifier:v198 isObsolete:0 modifiedOn:v201];

              (*v341)(v196, v388);
              v374 = *v199;
              (v374)(v396, v192);
              v203 = v340;
              swift_beginAccess();
              v204 = v202;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*(v203 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v203 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v328 = *((*(v203 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              v205 = v391;
              v206 = v395;
              (*v345)(v391, v397 + v346, v395);
              v207 = v387;
              v349(v387, v394, v192);
              v208 = v375;
              v209 = v359;
              sub_10033251C(v359, &v401);
              v210 = Logger.logObject.getter();
              v211 = static os_log_type_t.default.getter();
              sub_100332478(v209);
              v343 = v208;

              LODWORD(v349) = v211;
              if (os_log_type_enabled(v210, v211))
              {
                v338 = v210;
                v339 = v204;
                v212 = swift_slowAlloc();
                v213 = swift_slowAlloc();
                v337 = swift_slowAlloc();
                v401 = v337;
                *v212 = v335;
                v400 = type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList();
                sub_1000F5104(&qword_100942138, &qword_1007A25B8);
                v214 = String.init<A>(describing:)();
                v216 = sub_10000668C(v214, v215, &v401);

                *(v212 + 4) = v216;
                *(v212 + 12) = 2114;
                v217 = *(v209 + 8);
                *(v212 + 14) = v217;
                v336 = v213;
                *v213 = v217;
                *(v212 + 22) = 2082;
                sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
                v218 = v217;
                v219 = v399;
                v220 = dispatch thunk of CustomStringConvertible.description.getter();
                v222 = v221;
                v223 = v374;
                (v374)(v207, v219);
                v224 = sub_10000668C(v220, v222, &v401);

                *(v212 + 24) = v224;
                *(v212 + 32) = 2082;
                v225 = [(objc_class *)v343 identifier];
                if (v225)
                {
                  v226 = v382;
                  v227 = v225;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v228 = 0;
                  v229 = v395;
                }

                else
                {
                  v228 = 1;
                  v229 = v395;
                  v226 = v382;
                }

                v231 = v393;
                v108 = v348;
                (v352)(v226, v228, 1, v399);
                v236 = Optional.descriptionOrNil.getter();
                v237 = v226;
                v239 = v238;
                sub_1000050A4(v237, &unk_100939D90, "8\n\r");
                v240 = sub_10000668C(v236, v239, &v401);

                *(v212 + 34) = v240;
                v241 = v338;
                _os_log_impl(&_mh_execute_header, v338, v349, "%{public}s: Auto-categorized reminder based on local corrections {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s}", v212, 0x2Au);
                sub_1000050A4(v336, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                (*v344)(v391, v229);
                v230 = v390;
              }

              else
              {

                v223 = v374;
                (v374)(v207, v399);
                (*v344)(v205, v206);
                v230 = v390;
                v231 = v393;
                v108 = v348;
              }

              goto LABEL_67;
            }

            v162 = v160;
            v163 = *(v153 + 56);
            v348 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
            v343 = v348[-1].isa;
            v164 = v163 + *(v343 + 9) * v162;
            v165 = v372;
            sub_100193AB0(v164, v372);
            v166 = v374;

            v167 = v159;
            v154 = v166;
            (*v360)(v167, v399);
            (*(v343 + 7))(v165, 0, 1, v348);
            sub_1000050A4(v165, &qword_1009420F8, &unk_1007A2508);
          }

          else
          {

            if (v332)
            {
              goto LABEL_52;
            }
          }

          v270 = [v154 groupIdentifier:v330];
          if (v270)
          {
            v271 = v363;
            v272 = v270;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v273 = 0;
            v274 = v369;
          }

          else
          {
            v273 = 1;
            v274 = v369;
            v271 = v363;
          }

          v275 = 1;
          (v352)(v271, v273, 1, v399);
          sub_100031B58(v271, v378, &unk_100939D90, "8\n\r");
          v276 = [v375 identifier];
          if (v276)
          {
            v277 = v373;
            v278 = v276;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v279 = v277;
            v275 = 0;
          }

          else
          {
            v279 = v373;
          }

          v280 = v399;
          (v352)(v279, v275, 1, v399);
          v281 = *(v367 + 48);
          sub_100010364(v378, v274, &unk_100939D90, "8\n\r");
          v374 = v281;
          sub_100010364(v373, v281 + v274, &unk_100939D90, "8\n\r");
          v282 = v342->isa;
          v283 = (v342->isa)(v274, 1, v280);
          v350 = v152;
          v352 = v282;
          if (v283 != 1)
          {
            break;
          }

          sub_1000050A4(v373, &unk_100939D90, "8\n\r");
          v284 = v274;
          if (v282(v374 + v274, 1, v399) != 1)
          {
            goto LABEL_94;
          }

          sub_1000050A4(v274, &unk_100939D90, "8\n\r");
          LODWORD(v352) = 0;
          v285 = v370;
LABEL_100:
          (*v345)(v285, v397 + v346, v395);
          v296 = v365;
          (v351->isa)(v365, v394, v399);
          v297 = v378;
          v298 = v366;
          sub_100010364(v378, v366, &unk_100939D90, "8\n\r");
          v299 = v359;
          sub_10033251C(v359, &v401);
          v300 = Logger.logObject.getter();
          v301 = static os_log_type_t.default.getter();
          sub_100332478(v299);
          v374 = v300;
          if (os_log_type_enabled(v300, v301))
          {
            v302 = v296;
            v303 = swift_slowAlloc();
            v304 = swift_slowAlloc();
            v343 = v304;
            v349 = swift_slowAlloc();
            v401 = v349;
            *v303 = v330;
            v400 = type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList();
            sub_1000F5104(&qword_100942138, &qword_1007A25B8);
            v305 = String.init<A>(describing:)();
            LODWORD(v348) = v301;
            v307 = v298;
            v308 = sub_10000668C(v305, v306, &v401);

            *(v303 + 4) = v308;
            *(v303 + 12) = 2114;
            v309 = *(v299 + 8);
            v403 = v309;
            *(v303 + 14) = v309;
            *v304 = v309;
            *(v303 + 22) = 2082;
            sub_100010364(&v403, &v400, &unk_10093AF40, &unk_100795790);
            sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
            v310 = v302;
            v311 = v399;
            v312 = dispatch thunk of CustomStringConvertible.description.getter();
            v314 = v313;
            v315 = *v360;
            (*v360)(v310, v311);
            v316 = sub_10000668C(v312, v314, &v401);

            *(v303 + 24) = v316;
            *(v303 + 32) = 2082;
            v317 = Optional.descriptionOrNil.getter();
            v319 = v318;
            sub_1000050A4(v307, &unk_100939D90, "8\n\r");
            v320 = sub_10000668C(v317, v319, &v401);

            *(v303 + 34) = v320;
            *(v303 + 42) = 1026;
            *(v303 + 44) = v352;
            v321 = v374;
            _os_log_impl(&_mh_execute_header, v374, v348, "%{public}s: Skipped auto-categorizing reminder {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionIdentifier: %{public}s, shouldUpdateAutoCategorizationLocalCorrections: %{BOOL,public}d}", v303, 0x30u);
            sub_1000050A4(v343, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            (*v344)(v370, v395);
            v322 = v378;
            v223 = v315;
          }

          else
          {

            sub_1000050A4(v298, &unk_100939D90, "8\n\r");
            v223 = *v360;
            (*v360)(v296, v399);
            (*v344)(v285, v395);
            v322 = v297;
          }

          sub_1000050A4(v322, &unk_100939D90, "8\n\r");
          v230 = v390;
          v231 = v393;
LABEL_67:
          v242 = v375;
          v243 = [v375 identifier];
          if (v243)
          {
            v244 = v243;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v245 = v347;
            swift_beginAccess();
            v246 = *(v245 + 16);
            if (*(v246 + 16))
            {
              v247 = sub_100363F20(v231);
              if (v248)
              {
                v249 = v247;
                v374 = v223;
                v250 = v242;
                v251 = *(v246 + 56);
                v252 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
                v253 = *(v252 - 8);
                v254 = v251 + *(v253 + 72) * v249;
                v242 = v250;
                v223 = v374;
                v230 = v390;
                sub_100193AB0(v254, v390);
                (*(v253 + 56))(v230, 0, 1, v252);
              }

              else
              {
                v252 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
                v230 = v390;
                (*(*(v252 - 8) + 56))(v390, 1, 1, v252);
              }
            }

            else
            {
              v252 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
              (*(*(v252 - 8) + 56))(v230, 1, 1, v252);
            }

            _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
            (*(*(v252 - 8) + 48))(v230, 1, v252);
            sub_1000050A4(v230, &qword_1009420F8, &unk_1007A2508);
            swift_endAccess();

            v255 = v399;
            (v223)(v393, v399);
            v110 = v255;
          }

          else
          {

            v110 = v399;
          }

          (v223)(v394, v110);
LABEL_23:
          v108 += 3;
          v106 = (v380 - 1);
          if (v380 == 1)
          {

            return;
          }
        }

        sub_100010364(v274, v364, &unk_100939D90, "8\n\r");
        v284 = v274;
        if (v282(v374 + v274, 1, v399) == 1)
        {
          sub_1000050A4(v373, &unk_100939D90, "8\n\r");
          (*v360)(v364, v399);
LABEL_94:
          sub_1000050A4(v284, &unk_10093A3D0, &qword_100795770);
        }

        else
        {
          v323 = v374 + v274;
          v324 = v361;
          v325 = v399;
          (v333->isa)(v361, v323, v399);
          sub_100334878(&qword_10093A3E0, &type metadata accessor for UUID);
          v326 = v364;
          LODWORD(v374) = dispatch thunk of static Equatable.== infix(_:_:)();
          v327 = *v360;
          (*v360)(v324, v325);
          sub_1000050A4(v373, &unk_100939D90, "8\n\r");
          (v327)(v326, v325);
          v130 = v381;
          sub_1000050A4(v369, &unk_100939D90, "8\n\r");
          if (v374)
          {
            LODWORD(v352) = 0;
LABEL_99:
            v285 = v370;
            goto LABEL_100;
          }
        }

        v401 = v349;
        v402 = v130;
        v286 = StringProtocol.lowercased(with:)();
        v288 = v287;
        v289 = v362;
        sub_100010364(v378, v362, &unk_100939D90, "8\n\r");
        static Date.now.getter();
        v290 = v399;
        if (v352(v289, 1, v399) == 1)
        {
          v291 = 0;
        }

        else
        {
          v291 = UUID._bridgeToObjectiveC()().super.isa;
          (*v360)(v289, v290);
        }

        v292 = objc_allocWithZone(REMTimestampedUUID);
        v293 = v368;
        v294 = Date._bridgeToObjectiveC()().super.isa;
        v295 = [v292 initWithIdentifier:v291 modifiedOn:v294];

        (*v341)(v293, v388);
        swift_beginAccess();
        sub_10031DEEC(v295, v286, v288, sub_1002C8FA0, sub_10037572C);
        swift_endAccess();
        LODWORD(v352) = 1;
        goto LABEL_99;
      }
    }

    else
    {
      v91 = v401;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_10032C528(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10, void (*a11)(NSObject *, Class, uint64_t, NSObject *), void (*a12)(id *, id *), uint64_t *a13, uint64_t (*a14)(void), uint64_t *a15, uint64_t *a16)
{
  v17 = v16;
  v176 = a7;
  v177 = type metadata accessor for Logger();
  v172 = *(v177 - 8);
  v24 = *(v172 + 8);
  __chkstk_darwin(v177);
  v179 = &v140[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = type metadata accessor for Date();
  v26 = *(v175 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v175);
  v178 = &v140[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v174 = &v140[-v31];
  v187 = type metadata accessor for UUID();
  v184 = *(v187 - 8);
  v32 = v184[8];
  __chkstk_darwin(v187);
  v173 = &v140[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v186 = &v140[-v35];
  v183 = sub_1000F5104(&qword_100942120, &qword_1007A2598);
  v36 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v182 = &v140[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v180 = &v140[-v39];
  __chkstk_darwin(v40);
  v181 = &v140[-v41];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v185 = Strong;
    v171 = a3;
    v43 = *a3;
    v189 = 0;
    v44 = [a2 existingObjectWithID:v43 error:&v189];
    v45 = v189;
    if (!v44)
    {
      v49 = v189;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_54:

      return;
    }

    v169 = a8;
    v46 = v44;
    objc_opt_self();
    v170 = swift_dynamicCastObjCClass();
    if (!v170)
    {
      v50 = v45;

      return;
    }

    v167 = v46;
    v47 = *(a4 + 16);
    v164 = a6;
    if (v47)
    {
      v168 = a2;
      v189 = a4;
      v48 = v45;
      sub_1000F5104(&qword_100942128, &unk_1007A25A0);
      sub_10000CB48(&qword_100942130, &qword_100942128, &unk_1007A25A0);
      v189 = Sequence<>.unique()();

      sub_1004C7D34(&v189);
      if (v16)
      {

        __break(1u);
        return;
      }

      a6 = v168;
      v17 = 0;
      a2 = sub_100336A10(v189, v170, a5, v168, a12);
      v148 = 0;
      v147 = a16;
      v146 = a15;
      v145 = a14;

      v162 = a4;
      v53 = a4 + 64;
      v54 = 1 << *(a4 + 32);
      v55 = -1;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      v56 = v55 & *(a4 + 64);
      v154 = *a13;
      v57 = (v54 + 63) >> 6;
      v163 = v184 + 2;
      v158 = v184 + 4;
      v160 = (v184 + 1);
      v153 = (v184 + 7);
      v152 = (v184 + 6);
      v151 = (v26 + 8);
      v150 = v172 + 16;
      v149 = v172 + 8;

      v58 = 0;
      *&v59 = 136446978;
      v144 = v59;
      v60 = a6;
      v52 = v180;
      v161 = a2;
      v157 = a4 + 64;
      v156 = v57;
      while (v56)
      {
        v61 = v58;
LABEL_20:
        v165 = (v56 - 1) & v56;
        v62 = __clz(__rbit64(v56)) | (v61 << 6);
        v63 = v162;
        v64 = v184;
        v65 = *(v162 + 48) + v184[9] * v62;
        v66 = v181;
        v67 = v187;
        v159 = v184[2];
        (v159)(v181, v65, v187);
        v68 = *(v63 + 56) + 16 * v62;
        v69 = *(v68 + 8);
        v166 = *v68;
        v172 = v69;
        v70 = v183;
        v71 = &v52[*(v183 + 48)];
        v72 = v64[4];
        v72(v52, v66, v67);
        *v71 = v166;
        v71[1] = v69;
        v73 = v182;
        sub_100010364(v52, v182, &qword_100942120, &qword_1007A2598);
        v74 = &v73[*(v70 + 48)];
        v17 = *v74;
        v75 = v74[1];
        a6 = v186;
        v72(v186, v73, v67);
        a2 = v161;
        isa = v161[2].isa;

        if (isa)
        {
          v77 = a6;
          v78 = sub_100005F4C(v17, v75);
          v80 = v79;

          if (v80)
          {
            v81 = *(a2[7].isa + v78);
            v189 = 0;
            v82 = v81;
            v83 = [v82 remObjectIDWithError:&v189];
            if (!v83)
            {
              v139 = v189;

              _convertNSErrorToError(_:)();

              swift_willThrow();

              (*v160)(v77, v187);
              sub_1000050A4(v180, &qword_100942120, &qword_1007A2598);
              return;
            }

            v84 = v83;
            v166 = v82;
            v85 = v189;
            v172 = v84;
            v86 = [v84 uuid];
            v87 = v174;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v88 = v187;
            (*v153)(v87, 0, 1, v187);
            static Date.now.getter();
            v89.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            if ((*v152)(v87, 1, v88) == 1)
            {
              v90 = 0;
            }

            else
            {
              v90 = UUID._bridgeToObjectiveC()().super.isa;
              (*v160)(v87, v187);
            }

            v91 = objc_allocWithZone(REMMembership);
            v92 = v178;
            v93 = Date._bridgeToObjectiveC()().super.isa;
            v94 = [v91 initWithMemberIdentifier:v89.super.isa groupIdentifier:v90 isObsolete:0 modifiedOn:v93];

            (*v151)(v92, v175);
            v95 = v164;
            swift_beginAccess();
            v96 = v94;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v95[2].isa & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[2].isa & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v119 = *((v95[2].isa & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            v97 = *v150;
            v155 = v96;
            v17 = v177;
            v97(v179, v185 + v154, v177);
            v98 = v173;
            (v159)(v173, v186, v187);
            v99 = v171;
            sub_10033251C(v171, &v189);
            v100 = v172;
            a6 = Logger.logObject.getter();
            v101 = static os_log_type_t.default.getter();
            sub_100332478(v99);

            v159 = a6;
            if (os_log_type_enabled(a6, v101))
            {
              v102 = v99;
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              v189 = v143;
              *v103 = v144;
              v188 = v145(0);
              sub_1000F5104(v146, v147);
              v105 = String.init<A>(describing:)();
              v141 = v101;
              v107 = sub_10000668C(v105, v106, &v189);

              *(v103 + 4) = v107;
              *(v103 + 12) = 2114;
              v108 = *(v102 + 8);
              v190 = v108;
              *(v103 + 14) = v108;
              *v104 = v108;
              *(v103 + 22) = 2082;
              sub_100010364(&v190, &v188, &unk_10093AF40, &unk_100795790);
              sub_100334878(&qword_10093F2A0, &type metadata accessor for UUID);
              v109 = v187;
              v110 = dispatch thunk of CustomStringConvertible.description.getter();
              v112 = v111;
              v17 = v160;
              v142 = *v160;
              v142(v98, v109);
              v113 = sub_10000668C(v110, v112, &v189);

              *(v103 + 24) = v113;
              *(v103 + 32) = 2114;
              *(v103 + 34) = v100;
              v104[1] = v172;
              v114 = v100;
              v115 = v159;
              _os_log_impl(&_mh_execute_header, v159, v141, "%{public}s: Auto-categorized reminder based on prediction from auto-categorizer {listObjectID: %{public}@, reminderIdentifier: %{public}s, sectionObjectID: %{public}@}", v103, 0x2Au);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              a6 = v143;
              swift_arrayDestroy();

              (*v149)(v179, v177);
              v116 = v109;
              a2 = v161;
              v142(v186, v116);
            }

            else
            {

              v117 = *v160;
              v118 = v187;
              (*v160)(v98, v187);
              (*v149)(v179, v17);
              v117(v186, v118);
            }
          }

          else
          {
            (*v160)(a6, v187);
          }

          v52 = v180;
        }

        else
        {

          (*v160)(a6, v187);
        }

        sub_1000050A4(v52, &qword_100942120, &qword_1007A2598);
        v58 = v61;
        v60 = v168;
        v53 = v157;
        v57 = v156;
        v56 = v165;
      }

      while (1)
      {
        v61 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v61 >= v57)
        {

          v17 = v148;
          a6 = v164;
          v52 = v169;
          a2 = v60;
          goto LABEL_34;
        }

        v56 = *(v53 + 8 * v61);
        ++v58;
        if (v56)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v51 = v45;
      v52 = v169;
LABEL_34:
      swift_beginAccess();
      v120 = a6[2].isa;
      v56 = v170;
      if (!(v120 >> 62))
      {
        v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v122 = a2;
        if (!v121)
        {
          goto LABEL_41;
        }

LABEL_36:
        swift_beginAccess();
        v123 = a6[2].isa;
        v124 = objc_allocWithZone(REMMemberships);
        sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);

        v125 = Array._bridgeToObjectiveC()().super.isa;

        v126 = [v124 initWithMemberships:v125];

        v127 = v176;
        swift_beginAccess();
        v128 = *(v127 + 16);
        if (v128)
        {
          v129 = [v126 mergingWith:v128 mergePolicy:0];

          v126 = v129;
        }

        sub_10032D8D4(v126, 1, sub_10043A70C);
        v52 = v169;
        if (v17)
        {

LABEL_53:
          goto LABEL_54;
        }

        a6 = v164;
LABEL_41:
        swift_beginAccess();
        if (*(*(v52 + 2) + 16))
        {
          swift_beginAccess();
          v130 = *(a9 + 16);
          v131 = objc_allocWithZone(REMTextMemberships);
          sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
          if (v130)
          {
            v132 = v130;

            v133 = Dictionary._bridgeToObjectiveC()().super.isa;

            v134 = [v131 initWithMemberships:v133];

            v135 = [(objc_class *)v132 mergingWith:v134];
          }

          else
          {

            v132 = Dictionary._bridgeToObjectiveC()().super.isa;

            v135 = [v131 initWithMemberships:v132];
          }

          v136 = v135;
          sub_10032DB64(v135, 1);
          a6 = v164;
          if (v17)
          {

            return;
          }
        }

        else if (!v121)
        {
LABEL_51:
          if ([v122 hasChanges])
          {
            swift_beginAccess();
            v137 = a6[2].isa;
            v138 = v122;

            a11(v138, v137, a10, v138);

            return;
          }

          goto LABEL_53;
        }

        [v56 updateChangeCount];
        goto LABEL_51;
      }
    }

    v121 = _CocoaArrayWrapper.endIndex.getter();
    v122 = a2;
    if (!v121)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }
}

void sub_10032D8D4(void *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  if (a1)
  {
    sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
    v8 = a1;
    v9 = REMChecksumRepresentable.rem_checksum.getter();
    if (v4)
    {
LABEL_3:

      return;
    }

    v14 = v10;
    v28 = v9;
    v15 = [v5 membershipsOfRemindersInSectionsChecksum];
    if (!v15)
    {
LABEL_15:
      v22 = REMJSONRepresentable.toJSONData()();
      v23 = a2 & 1;
      v24 = v22;
      v26 = v25;
      a3(v28, v14, v23);

      sub_100029344(v24, v26);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v24, v26);
      [v5 setMembershipsOfRemindersInSectionsAsData:isa];

      sub_10001BBA0(v24, v26);
      goto LABEL_3;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v28 != v17 || v14 != v19)
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {

        goto LABEL_3;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v11 = [v3 membershipsOfRemindersInSectionsChecksum];
    if (v11)
    {

      [v3 setMembershipsOfRemindersInSectionsChecksum:0];
      if (a2)
      {
        v12 = [v3 createResolutionTokenMapIfNecessary];
        v13 = String._bridgeToObjectiveC()();
        [v12 updateForKey:v13];
      }
    }

    [v5 setMembershipsOfRemindersInSectionsAsData:0];
  }
}

void sub_10032DB64(void *a1, char a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
    v7 = a1;
    v8 = REMChecksumRepresentable.rem_checksum.getter();
    if (v3)
    {
LABEL_3:

      return;
    }

    v13 = v9;
    v27 = v8;
    v14 = [v4 autoCategorizationLocalCorrectionsChecksum];
    if (!v14)
    {
LABEL_15:
      v21 = REMJSONRepresentable.toJSONData()();
      v22 = a2 & 1;
      v23 = v21;
      v25 = v24;
      sub_10047D104(v27, v13, v22);

      sub_100029344(v23, v25);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v23, v25);
      [v4 setAutoCategorizationLocalCorrectionsAsData:isa];

      sub_10001BBA0(v23, v25);
      goto LABEL_3;
    }

    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v27 != v16 || v13 != v18)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {

        goto LABEL_3;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = [v2 autoCategorizationLocalCorrectionsChecksum];
    if (v10)
    {

      [v2 setAutoCategorizationLocalCorrectionsChecksum:0];
      if (a2)
      {
        v11 = [v2 createResolutionTokenMapIfNecessary];
        v12 = String._bridgeToObjectiveC()();
        [v11 updateForKey:v12];
      }
    }

    [v4 setAutoCategorizationLocalCorrectionsAsData:0];
  }
}

uint64_t sub_10032DDEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    result = sub_10031EC48(a2);
    if (v6)
    {
      if (*(a1 + 16))
      {
        sub_100005F4C(result, v6);
        v4 = v7;
      }

      else
      {

        v4 = 0;
      }

      return v4 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      v4 = 1;
      return v4 & 1;
    }

    return sub_100333EE8(a1, a2);
  }

  return result;
}

uint64_t sub_10032DE90(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10032DFB8(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_10032E05C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_10032E104(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_1002F1430();
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v26 = v17;
        v18 = a1(&v26);

        if (v4)
        {
          break;
        }

        v5 = v20;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
      }

      while (v26);
    }

LABEL_20:
    sub_10001B860();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_10032E350()
{
  result = [objc_opt_self() intelligentGrocery];
  qword_100941FB0 = result;
  return result;
}

uint64_t sub_10032E38C(void *a1, uint64_t a2)
{
  v5 = sub_1000F5104(&qword_100942158, &qword_1007A2638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1003373C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[15] = 0;
  sub_1000F5104(&qword_10093F598, &qword_1007A2640);
  sub_100337628(&qword_100942168, &qword_100942170);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10032E578()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_10032E5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001007F5240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001007F51A0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10032E698(uint64_t a1)
{
  v2 = sub_1003373C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10032E6D4(uint64_t a1)
{
  v2 = sub_1003373C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10032E710@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100337418(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10032E760(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v2[31] = v9;
  v10 = *(v9 - 8);
  v2[32] = v10;
  v11 = *(v10 + 64) + 15;
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10032E90C, 0, 0);
}

uint64_t sub_10032E90C()
{
  v37 = v0;
  static os_signpost_type_t.begin.getter();
  if (qword_100935ED0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 176);
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v1, v3);
  *(v0 + 272) = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v9 = 136446722;
    *(v0 + 152) = v7;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_10000668C(v11, v12, &v36);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2114;
    v14 = *(v8 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID);
    *(v9 + 14) = v14;
    *v10 = v14;
    *(v9 + 22) = 2082;
    v15 = *(v8 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v16 = v14;
    v17 = Array.description.getter();
    v19 = sub_10000668C(v17, v18, &v36);

    *(v9 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: Start execution {listObjectID: %{public}@, reminderIDs: %{public}s}", v9, 0x20u);
    sub_1000050A4(v10, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 216);
  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  Date.init()();
  v26 = *(v24 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID);
  *(v0 + 280) = v26;
  v27 = swift_allocObject();
  *(v0 + 288) = v27;
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  *(v0 + 76) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v28 = *(v22 + 104);
  *(v0 + 296) = v28;
  *(v0 + 304) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v28(v21);
  v29 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v30 = v26;
  v31 = v25;
  v32 = swift_task_alloc();
  *(v0 + 312) = v32;
  *v32 = v0;
  v32[1] = sub_10032ECBC;
  v33 = *(v0 + 216);
  v34 = *(v0 + 168);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 80, v33, sub_10033245C, v27, &_s9UtilitiesO40REMCDListThreadSafePartialRepresentationVN);
}

uint64_t sub_10032ECBC()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 216);
  v6 = *(*v1 + 200);
  v7 = *(*v1 + 192);
  v11 = *v1;
  v2[40] = v0;

  v8 = *(v6 + 8);
  v2[41] = v8;
  v2[42] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  if (v0)
  {
    v9 = sub_10032F224;
  }

  else
  {
    v9 = sub_10032EE5C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10032EE5C()
{
  v42 = v0;
  v1 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v1;
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 57) = *(v0 + 121);
  if (*(v0 + 49))
  {
    v3 = *(v0 + 296);
    v2 = *(v0 + 304);
    v4 = *(v0 + 76);
    v5 = *(v0 + 208);
    v6 = *(v0 + 192);
    v7 = *(v0 + 168);
    v8 = *(*(v0 + 176) + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs);
    v9 = swift_allocObject();
    *(v0 + 344) = v9;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    *(v9 + 32) = v8;
    *(v9 + 40) = v7;
    v3(v5, v4, v6);
    v10 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v11 = v7;

    v12 = swift_task_alloc();
    *(v0 + 352) = v12;
    v13 = sub_1000F5104(&qword_1009420F0, &qword_1007A24F0);
    *v12 = v0;
    v12[1] = sub_10032F2EC;
    v14 = *(v0 + 208);
    v15 = *(v0 + 168);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 160, v14, sub_1003324CC, v9, v13);
  }

  else
  {
    v16 = *(v0 + 272);
    v17 = *(v0 + 176);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 280);
      v22 = *(v0 + 176);
      v21 = *(v0 + 184);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v23 = 136446722;
      *(v0 + 144) = v21;
      swift_getMetatypeMetadata();
      v25 = String.init<A>(describing:)();
      v27 = sub_10000668C(v25, v26, &v41);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2114;
      *(v23 + 14) = v20;
      *v24 = v20;
      *(v23 + 22) = 2082;
      v28 = *(v22 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v29 = v20;
      v30 = Array.description.getter();
      v32 = sub_10000668C(v30, v31, &v41);

      *(v23 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: Skipped auto-categorizing reminders because list should no longer categorize grocery items {listObjectID: %{public}@, reminderIDs: %{public}s}", v23, 0x20u);
      sub_1000050A4(v24, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    sub_100332478(v0 + 16);
    v33 = *(v0 + 264);
    v35 = *(v0 + 232);
    v34 = *(v0 + 240);
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v38 = *(v0 + 208);
    sub_10032FC34(*(v0 + 176), v34, *(v0 + 184));
    (*(v35 + 8))(v34, v36);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_10032F224()
{
  v1 = v0[40];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  sub_10032FC34(v0[22], v3, v0[23]);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10032F2EC()
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 336);
  v5 = *(*v1 + 328);
  v6 = *(*v1 + 208);
  v7 = *(*v1 + 192);
  v10 = *v1;
  *(*v1 + 360) = v0;

  v5(v6, v7);

  if (v0)
  {
    v8 = sub_10032F61C;
  }

  else
  {
    v8 = sub_10032F488;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10032F488()
{
  v1 = v0[20];
  v0[46] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[22];
    v3 = *(v2 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_isListCategorization);
    v4 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_queuedAt;
    v5 = swift_task_alloc();
    v0[47] = v5;
    *v5 = v0;
    v5[1] = sub_10032F6EC;
    v6 = v0[21];
    v7 = v0[22];

    return sub_10031F1B8(v1, (v0 + 2), v3, v2 + v4, v6);
  }

  else
  {

    sub_100332478((v0 + 2));
    v9 = v0[33];
    v11 = v0[29];
    v10 = v0[30];
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    sub_10032FC34(v0[22], v10, v0[23]);
    (*(v11 + 8))(v10, v12);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10032F61C()
{
  sub_100332478((v0 + 2));
  v1 = v0[45];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  sub_10032FC34(v0[22], v3, v0[23]);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10032F6EC()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_10032FA8C;
  }

  else
  {
    v5 = *(v2 + 368);

    v4 = sub_10032F808;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10032F808()
{
  v1 = *(v0[22] + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdFeedbackProvider);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_10032F8B0;
  v3 = v0[35];
  v4 = v0[21];

  return sub_10012AE18(v3, v4);
}

uint64_t sub_10032F8B0()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_10032FB64;
  }

  else
  {
    v3 = sub_10032F9C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10032F9C4()
{
  sub_100332478((v0 + 2));
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  sub_10032FC34(v0[22], v2, v0[23]);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10032FA8C()
{
  v1 = v0[46];

  sub_100332478((v0 + 2));
  v2 = v0[48];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  sub_10032FC34(v0[22], v4, v0[23]);
  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10032FB64()
{
  sub_100332478((v0 + 2));
  v1 = v0[50];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  sub_10032FC34(v0[22], v3, v0[23]);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10032FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v15, a2, v10, v13);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v17;
    v21 = v20;
    v36 = swift_slowAlloc();
    v39[0] = v36;
    v39[1] = a3;
    *v19 = 136446978;
    swift_getMetatypeMetadata();
    v22 = String.init<A>(describing:)();
    v24 = sub_10000668C(v22, v23, v39);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    v25 = *(a1 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID);
    *(v19 + 14) = v25;
    *v21 = v25;
    *(v19 + 22) = 2082;
    v26 = *(a1 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v27 = v25;
    v28 = Array.description.getter();
    v30 = sub_10000668C(v28, v29, v39);

    *(v19 + 24) = v30;
    *(v19 + 32) = 2050;
    Date.rem_elapsedInMilliseconds.getter();
    v32 = v31;
    (*(v11 + 8))(v15, v10);
    *(v19 + 34) = v32;
    _os_log_impl(&_mh_execute_header, v16, v35, "%{public}s: Finished execution {listObjectID: %{public}@, reminderIDs: %{public}s, elapsedSeconds: %{public}f}", v19, 0x2Au);
    sub_1000050A4(v21, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v6 = v37;
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  static os_signpost_type_t.end.getter();
  if (qword_100935ED0 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v38 + 8))(v9, v6);
}

char *sub_100330038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 56))
  {
    v38 = a2;
    v39 = v2;
    static Locale.current.getter();
    v18 = Locale.identifier.getter();
    v20 = v19;
    (*(v14 + 8))(v17, v13);
    v21 = sub_100365788(0, 1, 1, _swiftEmptyArrayStorage);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_100365788((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[16 * v23];
    *(v24 + 4) = v18;
    *(v24 + 5) = v20;
    v3 = v39;
    a2 = v38;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for REMGroceryDataView();
  v25 = *(a2 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_store);
  v26 = static REMGroceryDataView.fetchSecondaryGroceryLocale(store:modelBaseLocaleConversion:)();
  if (v3)
  {
  }

  else
  {
    v27 = v26;
    v28 = [v26 locale];

    if (v28)
    {
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    (*(v14 + 56))(v9, v29, 1, v13);
    sub_100031B58(v9, v12, &unk_10093F420, &unk_100797AE0);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000050A4(v12, &unk_10093F420, &unk_100797AE0);
    }

    else
    {
      v30 = Locale.identifier.getter();
      v32 = v31;
      (*(v14 + 8))(v12, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100365788(0, *(v21 + 2) + 1, 1, v21);
      }

      v34 = *(v21 + 2);
      v33 = *(v21 + 3);
      if (v34 >= v33 >> 1)
      {
        v21 = sub_100365788((v33 > 1), v34 + 1, 1, v21);
      }

      *(v21 + 2) = v34 + 1;
      v35 = &v21[16 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v32;
    }
  }

  return v21;
}

uint64_t sub_1003303B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v10;
  v8[15] = v11;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  return _swift_task_switch(sub_1003303EC, 0, 0);
}

uint64_t sub_1003303EC()
{
  *(v0 + 24) = *(v0 + 72);
  *(v0 + 32) = _swiftEmptyDictionarySingleton;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = *(v0 + 80);
  v2 = async function pointer to Sequence.asyncReduce<A>(_:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v4 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  v5 = sub_1000F5104(&qword_100942118, &qword_1007A2570);
  v6 = sub_10000CB48(&unk_100945250, &unk_10093B300, &unk_100797780);
  *v3 = v0;
  v3[1] = sub_100330558;

  return Sequence.asyncReduce<A>(_:_:)(v0 + 16, v0 + 32, &unk_1007A2560, v1, v4, v5, v6);
}

uint64_t sub_100330558()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100330B44;
  }

  else
  {
    v4 = sub_100330688;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100330688()
{
  v29 = v0;
  v1 = v0[2];
  v0[19] = v1;
  if (*(v1 + 16) && (v2 = sub_100005F4C(v0[12], v0[13]), (v3 & 1) != 0))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[9];
    v7 = (*(*(v1 + 56) + 8 * v2) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
    v9 = *v7;
    v8 = v7[1];
    v0[20] = v8;
    v0[6] = v4;

    v10 = sub_10038E004(_swiftEmptyArrayStorage);
    v0[21] = v10;
    v0[7] = v10;
    v11 = swift_task_alloc();
    v0[22] = v11;
    v11[2] = v6;
    v11[3] = v5;
    v11[4] = v1;
    v11[5] = v9;
    v11[6] = v8;
    v12 = async function pointer to Sequence.asyncReduce<A>(_:_:)[1];
    v13 = swift_task_alloc();
    v0[23] = v13;
    v14 = sub_1000F5104(&unk_100945240, &qword_1007A0A70);
    v15 = sub_1000F5104(&unk_100945230, &qword_1007A2590);
    v16 = sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70);
    *v13 = v0;
    v13[1] = sub_10033098C;

    return Sequence.asyncReduce<A>(_:_:)(v0 + 5, v0 + 7, &unk_1007A2580, v11, v14, v15, v16);
  }

  else
  {
    v18 = v0[13];
    v17 = v0[14];

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = v0[12];
      v21 = v0[13];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10000668C(v22, v21, &v28);
      _os_log_impl(&_mh_execute_header, v19, v20, "RDGroceryOperationCategorizeRemindersInList: cannot find primary grocery classifier for %s", v23, 0xCu);
      sub_10000607C(v24);
    }

    v25 = v0[8];
    *v25 = sub_10038E004(_swiftEmptyArrayStorage);
    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10033098C()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v7 = sub_100330B5C;
  }

  else
  {
    v7 = sub_100330B20;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100330B74(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  v6 = *a2;
  v4[2] = a1;
  v4[3] = v6;
  v7 = *a3;
  v8 = a3[1];
  v4[4] = *a3;
  v4[5] = v8;

  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100330C94;

  return v12(v7, v8);
}

uint64_t sub_100330C94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = v4[3];

    v9 = sub_100330E7C;
  }

  else
  {
    v4[8] = a1;
    v9 = sub_100330DD0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100330DD0()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002C8FCC(v1, v3, v2, isUniquelyReferenced_nonNull_native);

  *v5 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_100330E94(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a1;
  v8[4] = a4;
  v9 = *a3;
  v10 = a3[1];
  v8[9] = *a2;
  v8[10] = v9;
  v8[11] = v10;
  return _swift_task_switch(sub_100330ECC, 0, 0);
}

void sub_100330ECC()
{
  sub_100124864(*(v0 + 80), *(v0 + 88), *(v0 + 32), (*(v0 + 40) + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_classifierConfiguration), *(v0 + 48));
  *(v0 + 96) = v1;
  v2 = v1[2];
  *(v0 + 104) = v2;
  if (v2)
  {
    *(v0 + 112) = 0;
    if (v1[2])
    {
      v3 = v1[5];
      *(v0 + 120) = v3;
      *(v0 + 16) = v1[4];
      v3;
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v5;
      *(v0 + 128) = v5;
      v7 = swift_task_alloc();
      *(v0 + 136) = v7;
      *(v0 + 224) = 1;
      *v7 = v0;
      v7[1] = sub_1003310D4;
      v9 = *(v0 + 80);
      v8 = *(v0 + 88);

      REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v9, v8, 0x100000000, 1, 0, v4, v6, 0xD000000000000019);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    **(v0 + 24) = *(v0 + 72);
    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t sub_1003310D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  v7 = v3[16];
  if (v1)
  {
    v8 = v4[15];
    v4[26] = v1;
    v4[27] = v8;
    v9 = v4[12];

    v10 = sub_100331B0C;
  }

  else
  {

    v10 = sub_10033122C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10033122C()
{
  v1 = *(v0 + 144);
  if (!*(v1 + 16))
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 104);

    if (v13 + 1 == v14)
    {
      v16 = *(v0 + 96);

LABEL_7:
      **(v0 + 24) = *(v0 + 72);

      goto LABEL_16;
    }

    v22 = *(v0 + 112) + 1;
    *(v0 + 160) = v22;
    v23 = *(v0 + 96);
    if (v22 < *(v23 + 16))
    {
      v24 = v23 + 16 * v22;
      v25 = *(v24 + 40);
      *(v0 + 168) = v25;
      *(v0 + 16) = *(v24 + 32);
      v25;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      *(v0 + 176) = v27;
      v29 = swift_task_alloc();
      *(v0 + 184) = v29;
      *(v0 + 224) = 1;
      *v29 = v0;
      v30 = sub_1003315F0;
      goto LABEL_21;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112) + 1;
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  v11 = *&v3[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale];
  v10 = *&v3[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8];

  if (v5 == v4)
  {
    v12 = *(v0 + 96);

    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_100124E18(v6, v7, v8, v11, v10, *(v0 + 56), *(v0 + 64), v9);
    if (v2)
    {

      v21 = *(v0 + 8);
LABEL_17:

      return v21();
    }

    v31 = v19;
    v32 = v20;
    v34 = *(v0 + 80);
    v33 = *(v0 + 88);
    v35 = *(v0 + 72);
    v36 = *(v0 + 24);

    *v36 = v35;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C72CC(v31, v32, v34, v33, isUniquelyReferenced_nonNull_native);

    *v36 = v35;
LABEL_16:
    v21 = *(v0 + 8);
    goto LABEL_17;
  }

  *(v0 + 112) = v5;
  result = *(v0 + 96);
  if (v5 >= *(result + 16))
  {
    goto LABEL_24;
  }

  v17 = result + 16 * v5;
  v18 = *(v17 + 40);
  *(v0 + 120) = v18;
  if (v8)
  {

    goto LABEL_11;
  }

  *(v0 + 16) = *(v17 + 32);
  v18;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v38;
  *(v0 + 128) = v38;
  v29 = swift_task_alloc();
  *(v0 + 136) = v29;
  *(v0 + 224) = 1;
  *v29 = v0;
  v30 = sub_1003310D4;
LABEL_21:
  v29[1] = v30;
  v40 = *(v0 + 80);
  v39 = *(v0 + 88);

  return REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v40, v39, 0x100000000, 1, 0, v26, v28, 0xD000000000000019);
}

uint64_t sub_1003315F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  v7 = v3[22];
  if (v1)
  {
    v8 = v4[21];
    v4[26] = v1;
    v4[27] = v8;
    v9 = v4[12];

    v10 = sub_100331B0C;
  }

  else
  {

    v10 = sub_100331748;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100331748()
{
  v1 = *(v0 + 192);
  if (!*(v1 + 16))
  {
    v13 = *(v0 + 160);
    v14 = *(v0 + 104);

    if (v13 + 1 == v14)
    {
      v16 = *(v0 + 96);

LABEL_7:
      **(v0 + 24) = *(v0 + 72);

      goto LABEL_16;
    }

    v22 = *(v0 + 160) + 1;
    *(v0 + 160) = v22;
    v23 = *(v0 + 96);
    if (v22 < *(v23 + 16))
    {
      v24 = v23 + 16 * v22;
      v25 = *(v24 + 40);
      *(v0 + 168) = v25;
      *(v0 + 16) = *(v24 + 32);
      v25;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      *(v0 + 176) = v27;
      v29 = swift_task_alloc();
      *(v0 + 184) = v29;
      *(v0 + 224) = 1;
      *v29 = v0;
      v30 = sub_1003315F0;
      goto LABEL_21;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160) + 1;
  v5 = *(v0 + 104);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  v11 = *&v3[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale];
  v10 = *&v3[OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale + 8];

  if (v4 == v5)
  {
    v12 = *(v0 + 96);

    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_100124E18(v6, v7, v8, v11, v10, *(v0 + 56), *(v0 + 64), v9);
    if (v2)
    {

      v21 = *(v0 + 8);
LABEL_17:

      return v21();
    }

    v31 = v19;
    v32 = v20;
    v34 = *(v0 + 80);
    v33 = *(v0 + 88);
    v35 = *(v0 + 72);
    v36 = *(v0 + 24);

    *v36 = v35;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002C72CC(v31, v32, v34, v33, isUniquelyReferenced_nonNull_native);

    *v36 = v35;
LABEL_16:
    v21 = *(v0 + 8);
    goto LABEL_17;
  }

  *(v0 + 112) = v4;
  result = *(v0 + 96);
  if (v4 >= *(result + 16))
  {
    goto LABEL_24;
  }

  v17 = result + 16 * v4;
  v18 = *(v17 + 40);
  *(v0 + 120) = v18;
  if (v8)
  {

    goto LABEL_11;
  }

  *(v0 + 16) = *(v17 + 32);
  v18;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v38;
  *(v0 + 128) = v38;
  v29 = swift_task_alloc();
  *(v0 + 136) = v29;
  *(v0 + 224) = 1;
  *v29 = v0;
  v30 = sub_1003310D4;
LABEL_21:
  v29[1] = v30;
  v40 = *(v0 + 80);
  v39 = *(v0 + 88);

  return REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v40, v39, 0x100000000, 1, 0, v26, v28, 0xD000000000000019);
}

uint64_t sub_100331B0C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100331B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100010364(a3, v24 - v10, &qword_100936FA8, &qword_100791B70);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000050A4(v11, &qword_100936FA8, &qword_100791B70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_1000F5104(&qword_100942110, &unk_1007A2548);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
  sub_1000F5104(&qword_100942110, &unk_1007A2548);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100331E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100010364(a3, v24 - v10, &qword_100936FA8, &qword_100791B70);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000050A4(v11, &qword_100936FA8, &qword_100791B70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1003320F4()
{
  v1 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs);

  v4 = *(v0 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_groceryClassifierProvider + 8);

  v5 = *(v0 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdFeedbackProvider);

  v6 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_queuedAt;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_10000607C((v0 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_classifierConfiguration));
  return v0;
}

uint64_t sub_1003321F8()
{
  sub_1003320F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDGroceryOperationCategorizeRemindersInList()
{
  result = qword_100942020;
  if (!qword_100942020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003322A4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1003323C4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000FCBFC;

  return sub_10032E760(a1);
}

void sub_100332578()
{
  v1 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for Date() - 8);
  sub_10032C528(*(v0 + 16), *(v0 + 24), (v0 + 32), *(v0 + 96), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((*(v5 + 80) + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80)), sub_100195574, sub_100336074, &OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog, type metadata accessor for RDGroceryOperationCategorizeRemindersInList, &qword_100942108, &unk_1007A2520);
}

uint64_t sub_100332708(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1003328B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100332A68(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100332D1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_10001B270(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10001B2CC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100332EC0(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      v21 = *(a2 + 40);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v31)(v8, v4);
      v14 = v19;
      v23 = v22 & v19;
      if (a1 >= v33)
      {
        if (v23 >= v33 && a1 >= v23)
        {
LABEL_15:
          v26 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v26 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v26 < v18 || *(a2 + 56) + v26 >= (*(a2 + 56) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v26 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v33 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

uint64_t sub_1003331C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100333370(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Date() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10033355C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100333718(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1003338A4(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

void sub_100333BC4(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v43);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v44 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v43;
    v6 = v44;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v40 = (v12 + 1) & v11;
    v41 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    v39 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v42;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v41(v42, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_100334878(&qword_10093B410, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v40)
      {
        if (v26 >= v40 && a1 >= v26)
        {
LABEL_15:
          v6 = v44;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v44 + 48) + v18 * a1 >= (*(v44 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v44;
            v17 = v18;
            v14 = v21;
            v8 = v39;
          }

          else
          {
            v8 = v39;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v44;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = v29 + 40 * a1;
          v31 = (v29 + 40 * v10);
          if (a1 != v10 || v30 >= v31 + 40)
          {
            v32 = *v31;
            v33 = v31[1];
            *(v30 + 32) = *(v31 + 4);
            *v30 = v32;
            *(v30 + 16) = v33;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v40 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v39;
      v17 = v18;
      v6 = v44;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v6 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v36;
    ++*(v6 + 36);
  }
}

uint64_t sub_100333EE8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_100335E34(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_100336090(v12, &v16);
    v13 = v16;

    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_100334068(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1003340B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100334108(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(sub_1000F5104(&qword_100936FA8, &qword_100791B70) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100334204, 0, 0);
}

uint64_t sub_100334204()
{
  v1 = v0[12];
  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
  }

  else
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    static Locale.current.getter();
    v2 = Locale.identifier.getter();
    v3 = v7;
    (*(v5 + 8))(v4, v6);
    v1 = v0[12];
  }

  v8 = v0[13];

  v9 = sub_100330038(v1, v8);
  v10 = (v0[13] + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_groceryClassifierProvider);
  v12 = *v10;
  v11 = v10[1];
  v13 = v9;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  v37 = inited;

  sub_100271EA8(v13);
  v15 = sub_1001E12E8(v37);

  v0[8] = v2;
  v0[9] = v3;
  v16 = swift_task_alloc();
  *(v16 + 16) = v0 + 8;
  v17 = sub_100040A74(sub_100040B40, v16, v15);

  if (v17)
  {
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[11];
    static TaskPriority.high.getter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v15;
    v22[5] = v12;
    v22[6] = v11;
    v22[7] = v2;
    v22[8] = v3;
    v22[9] = v19;
    v22[10] = v20;

    v23 = sub_100331B70(0, 0, v18, &unk_1007A2540, v22);
    v0[18] = v23;
    v24 = async function pointer to Task.value.getter[1];
    v25 = swift_task_alloc();
    v0[19] = v25;
    v26 = sub_1000F5104(&qword_100942110, &unk_1007A2548);
    v27 = sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    *v25 = v0;
    v25[1] = sub_10033465C;

    return Task.value.getter(v0 + 10, v23, v26, v27, &protocol self-conformance witness table for Error);
  }

  else
  {
    v28 = v0[13];

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "RDGroceryOperationCategorizeRemindersInList: primary locale is not a grocery locale in this device", v31, 2u);
    }

    v32 = sub_10038E004(_swiftEmptyArrayStorage);
    v33 = v0[17];
    v34 = v0[14];

    v35 = v0[1];

    return v35(v32);
  }
}

uint64_t sub_10033465C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_100334808;
  }

  else
  {
    v6 = sub_100334790;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100334790()
{
  v1 = v0[10];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_100334808()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100334878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003348C0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v87 = a1;
  v89 = a6;
  v90 = a7;
  v94 = a5;
  v95 = a2;
  v84 = a4;
  v8 = sub_1000F5104(&qword_100946C30, &qword_1007A2530);
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = *(v92 + 64);
  __chkstk_darwin(v8);
  v91 = &v81 - v10;
  v11 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  __chkstk_darwin(v11);
  v81 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v81 - v15;
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  v20 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v81 - v25;
  __chkstk_darwin(v27);
  v29 = &v81 - v28;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v85 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v34);
  v37 = &v81 - v36;
  if (!a3)
  {
    (*(v31 + 56))(v29, 1, 1, v30, v35);
LABEL_7:
    sub_1000050A4(v29, &unk_100939D90, "8\n\r");
    v40 = 0x6C6E6F6974636573;
    v88 = 0x6C6E6F6974636573;
    v41 = 0xEB00000000737365;
    goto LABEL_14;
  }

  v38 = [a3 groupIdentifier];
  if (v38)
  {
    v39 = v38;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v31 + 56))(v26, 0, 1, v30);
  }

  else
  {
    (*(v31 + 56))(v26, 1, 1, v30);
  }

  sub_100031B58(v26, v29, &unk_100939D90, "8\n\r");
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    goto LABEL_7;
  }

  v42 = v16;
  (*(v31 + 32))(v37, v29, v30);
  v43 = v84;
  v41 = 0xEB00000000737365;
  if (*(v84 + 16) && (v44 = sub_100363F20(v37), (v45 & 1) != 0))
  {
    sub_100193AB0(*(v43 + 56) + *(v82 + 72) * v44, v42);
    (*(v31 + 8))(v37, v30);
    sub_100193B14(v42, v19);
    v46 = &v19[*(v83 + 20)];
    v47 = *v46;
    v48 = v46[1];

    sub_10033529C(v19);
    if (v48)
    {
      v88 = v47;

      v40 = 0x6C6E6F6974636573;
      goto LABEL_15;
    }
  }

  else
  {
    (*(v31 + 8))(v37, v30);
  }

  v40 = 0x6C6E6F6974636573;
  v88 = 0x6C6E6F6974636573;
LABEL_14:
  v48 = 0xEB00000000737365;
LABEL_15:
  sub_100010364(v94, v23, &unk_100939D90, "8\n\r");
  v49 = (*(v31 + 48))(v23, 1, v30);
  v50 = v85;
  if (v49 == 1)
  {
    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
LABEL_23:
    v59 = v90;
    v58 = v95;
    goto LABEL_24;
  }

  (*(v31 + 32))(v85, v23, v30);
  v51 = v84;
  if (!*(v84 + 16) || (v52 = sub_100363F20(v50), (v53 & 1) == 0))
  {
    (*(v31 + 8))(v50, v30);
    goto LABEL_23;
  }

  v54 = v81;
  sub_100193AB0(*(v51 + 56) + *(v82 + 72) * v52, v81);
  (*(v31 + 8))(v50, v30);
  v55 = (v54 + *(v83 + 20));
  v57 = *v55;
  v56 = v55[1];

  sub_10033529C(v54);
  v58 = v95;
  if (v56)
  {

    v40 = v57;
    v41 = v56;
  }

  v59 = v90;
LABEL_24:
  if (qword_100935E40 != -1)
  {
    swift_once();
  }

  v85 = qword_100974D28;
  v60 = *(v86 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID);
  (*(v92 + 104))(v91, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v93);
  if (qword_100935E38 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_100006654(v61, qword_100940E70);

  v62 = v60;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  v65 = os_log_type_enabled(v63, v64);
  v94 = v40;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v86 = v41;
    v68 = v67;
    v84 = swift_slowAlloc();
    v96 = v84;
    *v66 = 136316162;
    v69 = v87;
    *(v66 + 4) = sub_10000668C(v87, v95, &v96);
    *(v66 + 12) = 2080;
    *(v66 + 14) = sub_10000668C(v88, v48, &v96);
    *(v66 + 22) = 2080;
    *(v66 + 24) = sub_10000668C(v94, v86, &v96);
    *(v66 + 32) = 2080;
    v70 = v48;
    v71 = v90;
    *(v66 + 34) = sub_10000668C(v89, v90, &v96);
    *(v66 + 42) = 2112;
    *(v66 + 44) = v62;
    *v68 = v62;
    v72 = v62;
    _os_log_impl(&_mh_execute_header, v63, v64, "RDGroceryCorrectionCache: Recording {%s: (from: %s, to: %s, locale: %s} in list: %@", v66, 0x34u);
    sub_1000050A4(v68, &unk_100938E70, &unk_100797230);
    v73 = v86;
    v58 = v95;

    swift_arrayDestroy();

    v74 = v94;
  }

  else
  {

    v70 = v48;
    v69 = v87;
    v75 = v41;
    v71 = v59;
    v73 = v75;
    v74 = v40;
  }

  v76 = swift_allocObject();
  v76[2] = v62;
  v76[3] = v69;
  v77 = v88;
  v76[4] = v58;
  v76[5] = v77;
  v76[6] = v70;
  v76[7] = v74;
  v76[8] = v73;
  v76[9] = v89;
  v76[10] = v71;
  v76[11] = v85;
  v76[12] = REMCDList.cleanUpAfterLocalObjectMerge();
  v76[13] = 0;

  v78 = v62;

  v79 = v91;
  dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

  (*(v92 + 8))(v79, v93);
  type metadata accessor for Analytics();
  static Analytics.postBiomeEventForCorrectedGroceryItem(item:originalCategory:destinationCategory:locale:)();
}

uint64_t sub_10033529C(uint64_t a1)
{
  v2 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003352F8(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000FDA74;

  return sub_1003303B8(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1003353EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000FDA74;

  return sub_100330B74(a1, a2, a3, v9);
}

uint64_t sub_1003354B0(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1000FCBFC;

  return sub_100330E94(a1, a2, a3, v8, v9, v10, v11, v12);
}

unint64_t sub_100335590(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v3 = v2;
  v86 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  v84 = *(v86 - 8);
  v6 = *(v84 + 64);
  __chkstk_darwin(v86);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v77 - v10;
  __chkstk_darwin(v11);
  v93 = &v77 - v12;
  v101 = type metadata accessor for UUID();
  v83 = *(v101 - 8);
  v13 = *(v83 + 64);
  __chkstk_darwin(v101);
  v100 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v77 - v16;
  __chkstk_darwin(v17);
  v94 = &v77 - v18;
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  if (!a1)
  {
    return sub_10038FD34(_swiftEmptyArrayStorage);
  }

  v99 = a2;
  v90 = v8;
  v22 = qword_1009365A8;
  v23 = a1;
  if (v22 != -1)
  {
LABEL_44:
    swift_once();
  }

  type metadata accessor for REMCDListSection();
  v24 = sub_100597524();
  v25 = sub_100596AB8(a1, 1u);
  v26 = [objc_allocWithZone(NSFetchRequest) init];
  v27 = [swift_getObjCClassFromMetadata() entity];
  [v26 setEntity:v27];

  [v26 setAffectedStores:0];
  [v26 setPredicate:v25];

  sub_10003450C(v24);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 setPropertiesToFetch:isa];

  [v26 setRelationshipKeyPathsForPrefetching:0];
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v29 = Array._bridgeToObjectiveC()().super.isa;
  [v26 setSortDescriptors:v29];

  v30 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    return v23;
  }

  a1 = v30;
  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = v23;
  v79 = 0;
  if (!v31)
  {
    v23 = _swiftEmptyDictionarySingleton;
LABEL_38:

    return v23;
  }

  v3 = v31;
  v32 = 0;
  v97 = v30 & 0xFFFFFFFFFFFFFF8;
  v98 = v30 & 0xC000000000000001;
  v96 = (v83 + 16);
  v99 = (v83 + 8);
  v82 = (v83 + 32);
  v23 = _swiftEmptyDictionarySingleton;
  v33 = &selRef_hack_willSaveHandled;
  v80 = v31;
  v89 = v21;
  v81 = v30;
  while (1)
  {
    if (v98)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v32 >= *(v97 + 16))
      {
        goto LABEL_41;
      }

      v34 = *(a1 + 8 * v32 + 32);
    }

    v35 = v34;
    v36 = (v32 + 1);
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v37 = [v34 v33[64]];
    if (!v37)
    {

      goto LABEL_11;
    }

    v38 = v37;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = &selRef_hack_willSaveHandled;
    v39 = [v35 identifier];
    if (!v39)
    {

      (*v99)(v21, v101);
      goto LABEL_11;
    }

    v40 = v94;
    v41 = v39;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v92 = *v96;
    v92(v95, v40, v101);
    v42 = [v35 canonicalName];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v45;
      v88 = v44;
    }

    else
    {
      v87 = 0;
      v88 = 0;
    }

    v46 = [v35 displayName];
    v91 = (v32 + 1);
    if (v46)
    {
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v51 = *v99;
    v3 = v101;
    (*v99)(v94, v101);
    v52 = v85;
    (*v82)(v85, v95, v3);
    v53 = v86;
    v54 = &v52[*(v86 + 20)];
    v55 = v87;
    *v54 = v88;
    v54[1] = v55;
    v56 = &v52[*(v53 + 24)];
    *v56 = v48;
    v56[1] = v50;
    v57 = v52;
    a1 = v93;
    sub_100193B14(v57, v93);
    v21 = v100;
    v92(v100, v89, v3);
    sub_100193AB0(a1, v90);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v23;
    v59 = sub_100363F20(v21);
    v61 = v23[2];
    v62 = (v60 & 1) == 0;
    v63 = __OFADD__(v61, v62);
    v64 = v61 + v62;
    if (v63)
    {
      goto LABEL_42;
    }

    v65 = v60;
    if (v23[3] >= v64)
    {
      v21 = v89;
      v36 = v91;
      if (isUniquelyReferenced_nonNull_native)
      {
        v23 = v102;
        if (v60)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v68 = v59;
        sub_1003759CC();
        v36 = v91;
        v59 = v68;
        v23 = v102;
        if (v65)
        {
LABEL_32:
          sub_1003360C8(v90, v23[7] + *(v84 + 72) * v59);

          v67 = v101;
          v51(v100, v101);
          sub_10033529C(v93);
          v51(v21, v67);
          a1 = v81;
          v3 = v80;
          v33 = &selRef_hack_willSaveHandled;
          goto LABEL_11;
        }
      }

      goto LABEL_35;
    }

    sub_10036ED20(v64, isUniquelyReferenced_nonNull_native);
    v59 = sub_100363F20(v100);
    v21 = v89;
    if ((v65 & 1) != (v66 & 1))
    {
      break;
    }

    v36 = v91;
    v23 = v102;
    if (v65)
    {
      goto LABEL_32;
    }

LABEL_35:
    v23[(v59 >> 6) + 8] |= 1 << v59;
    a1 = v59;
    v69 = v23[6] + *(v83 + 72) * v59;
    v70 = v100;
    v3 = v23;
    v71 = v21;
    v21 = v101;
    v92(v69, v100, v101);
    sub_100193B14(v90, v3[7] + *(v84 + 72) * a1);

    v51(v70, v21);
    sub_10033529C(v93);
    v72 = v71;
    v73 = v71;
    v23 = v3;
    v51(v73, v21);
    v74 = v3[2];
    v63 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v63)
    {
      goto LABEL_43;
    }

    v3[2] = v75;
    a1 = v81;
    v3 = v80;
    v33 = &selRef_hack_willSaveHandled;
    v21 = v72;
    v36 = v91;
LABEL_11:
    ++v32;
    if (v36 == v3)
    {
      goto LABEL_38;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100335E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  v36 = a3 + 56;

  v11 = 0;
  v12 = 0;
  v34 = v5;
  v35 = v3;
  v33 = v4;
  while (2)
  {
    v31 = v11;
    if (v8)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v9)
      {
        v30 = 0;
LABEL_31:

        return v30;
      }

      v8 = *(v5 + 8 * v14);
      ++v12;
    }

    while (!v8);
    v12 = v14;
    while (1)
    {
LABEL_13:
      while (1)
      {
        v15 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v16 = (*(v4 + 48) + ((v12 << 10) | (16 * v15)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(v3 + 32);
        v22 = v3;
        v23 = v20 & ~v21;
        v24 = v23 >> 6;
        v25 = 1 << v23;
        if (((1 << v23) & *(v36 + 8 * (v23 >> 6))) != 0)
        {
          break;
        }

LABEL_25:

        v5 = v34;
        v3 = v35;
        if (!v8)
        {
          goto LABEL_9;
        }
      }

      v26 = (*(v22 + 48) + 16 * v23);
      if (*v26 != v18 || v26[1] != v17)
      {
        v28 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v23 = (v23 + 1) & v28;
          v24 = v23 >> 6;
          v25 = 1 << v23;
          if (((1 << v23) & *(v36 + 8 * (v23 >> 6))) == 0)
          {
            v4 = v33;
            goto LABEL_25;
          }

          v29 = (*(v35 + 48) + 16 * v23);
          if (*v29 == v18 && v29[1] == v17)
          {
            break;
          }
        }
      }

      v4 = v33;
      v13 = *(a1 + 8 * v24);
      *(a1 + 8 * v24) = v13 | v25;
      v5 = v34;
      v3 = v35;
      if ((v13 & v25) == 0)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v11 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      if (v11 != *(v35 + 16))
      {
        continue;
      }

      v30 = 1;
      goto LABEL_31;
    }

    break;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_100336090@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100335E34(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1003360C8(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033612C()
{
  v1 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 128) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 56);

  v7 = *(v0 + 80);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 120);

  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3, 1, v12))
  {
    (*(v13 + 8))(v0 + v3, v12);
  }

  v14 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v14 + 8);

  v19 = *(v0 + v15);

  v20 = *(v0 + v16 + 8);

  v21 = *(v0 + v17);

  return _swift_deallocObject(v0, v17 + 8, v2 | 7);
}

uint64_t sub_100336308(uint64_t (*a1)(void, void, void *, void, void, void, void, char *, char, void, void, void, void, void))
{
  v3 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v4 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  return a1(v1[2], v1[3], v1 + 4, v1[12], v1[13], v1[14], v1[15], v1 + v4, v8, *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_100336410()
{
  v1 = *(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8);
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for Date() - 8);
  sub_10032C528(*(v0 + 16), *(v0 + 24), (v0 + 32), *(v0 + 96), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((*(v5 + 80) + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80)), sub_100195574, sub_1003377F8, &OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog, type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList, &qword_100942138, &qword_1007A25B8);
}

id sub_1003365A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Date();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093CC18, REMListSection_ptr);
  v15 = [swift_getObjCClassFromMetadata() newObjectID];
  v33 = v15;
  static Date.now.getter();
  v32 = kREMSupportedVersionUnset;
  type metadata accessor for REMCDListSection();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a4];
  v17 = [v15 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);
  [v16 setIdentifier:isa];

  v19 = [a3 account];
  [v16 setAccount:v19];

  v20 = [v16 createResolutionTokenMapIfNecessary];
  [v16 setList:a3];
  v21 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v21];

  v22 = v16;
  v23 = Date._bridgeToObjectiveC()().super.isa;
  [v22 setCreationDate:v23];

  v24 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v24];

  v25 = String._bridgeToObjectiveC()();
  [v22 setDisplayName:v25];

  v26 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v26];

  v27 = String._bridgeToObjectiveC()();
  [v22 setCanonicalName:v27];

  v28 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v28];

  [v22 setMinimumSupportedVersion:v32];
  v29 = String._bridgeToObjectiveC()();
  [v20 updateForKey:v29];

  [v22 updateChangeCount];
  (*(v11 + 8))(v14, v34);
  [v22 updateChangeCount];
  return v22;
}

void *sub_100336A10(void *a1, id a2, uint64_t a3, unint64_t a4, void (*a5)(id *, id *))
{
  v8 = v5;
  v111 = a3;
  v10 = a2;
  v112[0] = 0;
  v12 = [a2 remObjectIDWithError:v112];
  if (!v12)
  {
    v21 = v112[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v6;
  }

  v13 = v12;
  v106 = a5;
  v109 = a1;
  v14 = qword_1009365A8;
  v15 = v112[0];
  v16 = v13;
  if (v14 != -1)
  {
LABEL_33:
    swift_once();
  }

  v17 = sub_100596AB8(v13, 1u);
  type metadata accessor for REMCDListSection();
  v6 = [objc_allocWithZone(NSFetchRequest) init];
  v18 = [swift_getObjCClassFromMetadata() entity];
  [v6 setEntity:v18];

  [v6 setAffectedStores:0];
  [v6 setPredicate:v17];

  [v6 setPropertiesToFetch:0];
  [v6 setRelationshipKeyPathsForPrefetching:0];
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 setSortDescriptors:isa];

  v20 = v8;
  v8 = NSManagedObjectContext.fetch<A>(_:)();

  if (v20)
  {

    return v6;
  }

  v110 = 0;
  v105 = v16;

  v6 = sub_10038F564(_swiftEmptyArrayStorage);
  if (v8 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v107 = v10;
    v108 = a4;
    if (v16)
    {
LABEL_9:
      v10 = 0;
      a4 = v8 & 0xC000000000000001;
      v23 = &selRef_setPublicLinkLastModifiedDate_;
      while (2)
      {
        v13 = v10;
        while (1)
        {
          if (a4)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v24 = *(v8 + 8 * v13 + 32);
          }

          v25 = v24;
          v10 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v26 = [v24 v23[205]];
          if (v26)
          {
            break;
          }

          ++v13;
          if (v10 == v16)
          {
            goto LABEL_35;
          }
        }

        v27 = v26;
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v103 = v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v6;
        v102 = v29;
        v31 = sub_100005F4C(v104, v29);
        v32 = v6[2];
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_72;
        }

        if (v6[3] >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v47 = v30;
            sub_1003747CC();
            v30 = v47;
          }

          v36 = v102;
          if ((v30 & 1) == 0)
          {
LABEL_23:
            v6 = v112[0];
            v112[0][(v31 >> 6) + 8] |= 1 << v31;
            v39 = (v6[6] + 16 * v31);
            v40 = v103;
            *v39 = v104;
            v39[1] = v36;
            *(v6[7] + 8 * v31) = v40;

            v41 = v6[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_73;
            }

            v6[2] = v43;
LABEL_29:
            v23 = &selRef_setPublicLinkLastModifiedDate_;
            if (v10 != v16)
            {
              continue;
            }

            goto LABEL_35;
          }
        }

        else
        {
          v35 = v30;
          sub_10036CAF8(v34, isUniquelyReferenced_nonNull_native);
          v36 = v102;
          v37 = sub_100005F4C(v104, v102);
          if ((v35 & 1) != (v38 & 1))
          {
LABEL_74:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v31 = v37;
          if ((v35 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        break;
      }

      v6 = v112[0];
      v44 = v112[0][7];
      v45 = *(v44 + 8 * v31);
      v46 = v103;
      *(v44 + 8 * v31) = v103;

      goto LABEL_29;
    }
  }

  else
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v107 = v10;
    v108 = a4;
    if (v16)
    {
      goto LABEL_9;
    }
  }

LABEL_35:
  v48 = v109;

  v50 = sub_1001A5660(v49);

  v52 = sub_10032DDEC(v51, v50);

  if (v52)
  {

    return v6;
  }

  v53 = sub_10038F564(_swiftEmptyArrayStorage);
  __chkstk_darwin(v53);
  v54 = v110;
  v100[2] = v111;
  v56 = sub_10031F090(v55, v106, v100, v8);

  v57 = v48[2];
  if (!v57)
  {
LABEL_66:

    return v6;
  }

  v109 = v56;
  v110 = v54;
  v58 = (v48 + 5);
  while (1)
  {
    v60 = *(v58 - 1);
    v59 = *v58;
    v61 = v6[2];

    if (v61)
    {
      sub_100005F4C(v60, v59);
      if (v62)
      {

        goto LABEL_40;
      }
    }

    v112[0] = v60;
    v112[1] = v59;
    sub_10013BCF4();
    v63 = StringProtocol.lowercased(with:)();
    if (v56[2])
    {
      v65 = sub_100005F4C(v63, v64);
      v67 = v66;

      if (v67)
      {
        v68 = *(v56[7] + 8 * v65);
        v69 = String._bridgeToObjectiveC()();
        [v68 setCanonicalName:v69];

        [v68 updateChangeCount];
        v70 = v68;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v6;
        v72 = sub_100005F4C(v60, v59);
        v74 = v6[2];
        v75 = (v73 & 1) == 0;
        v42 = __OFADD__(v74, v75);
        v76 = v74 + v75;
        if (v42)
        {
          goto LABEL_70;
        }

        v77 = v73;
        if (v6[3] >= v76)
        {
          if ((v71 & 1) == 0)
          {
            v96 = v72;
            sub_1003747CC();
            v72 = v96;
            v56 = v109;
            if (v77)
            {
LABEL_62:
              v92 = v72;

              v6 = v112[0];
              v93 = v112[0][7];
              v94 = *(v93 + 8 * v92);
              *(v93 + 8 * v92) = v70;

              goto LABEL_40;
            }

            goto LABEL_64;
          }
        }

        else
        {
          sub_10036CAF8(v76, v71);
          v72 = sub_100005F4C(v60, v59);
          if ((v77 & 1) != (v78 & 1))
          {
            goto LABEL_74;
          }
        }

        v56 = v109;
        if (v77)
        {
          goto LABEL_62;
        }

LABEL_64:
        v6 = v112[0];
        v112[0][(v72 >> 6) + 8] |= 1 << v72;
        v97 = (v6[6] + 16 * v72);
        *v97 = v60;
        v97[1] = v59;
        *(v6[7] + 8 * v72) = v70;

        v98 = v6[2];
        v42 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v42)
        {
          goto LABEL_71;
        }

        v6[2] = v99;
        goto LABEL_40;
      }
    }

    else
    {
    }

    v79 = v110;
    v80 = sub_1003365A0(v60, v59, v107, v108);
    v110 = v79;
    if (v79)
    {
      break;
    }

    v81 = v80;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v112[0] = v6;
    v83 = sub_100005F4C(v60, v59);
    v85 = v6[2];
    v86 = (v84 & 1) == 0;
    v42 = __OFADD__(v85, v86);
    v87 = v85 + v86;
    if (v42)
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

    v88 = v84;
    if (v6[3] >= v87)
    {
      if ((v82 & 1) == 0)
      {
        v95 = v83;
        sub_1003747CC();
        v83 = v95;
      }
    }

    else
    {
      sub_10036CAF8(v87, v82);
      v83 = sub_100005F4C(v60, v59);
      if ((v88 & 1) != (v89 & 1))
      {
        goto LABEL_74;
      }
    }

    v56 = v109;
    v6 = v112[0];
    if (v88)
    {
      v90 = v112[0][7];
      v91 = *(v90 + 8 * v83);
      *(v90 + 8 * v83) = v81;
    }

    else
    {
      sub_1002CB9B4(v83, v60, v59, v81, v112[0]);
    }

LABEL_40:
    v58 += 2;
    if (!--v57)
    {
      goto LABEL_66;
    }
  }

  return v6;
}

uint64_t *assignWithCopy for RDGroceryOperationCategorizeRemindersInList.Configuration(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for RDGroceryOperationCategorizeRemindersInList.Configuration(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDGroceryOperationCategorizeRemindersInList.Configuration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for RDGroceryOperationCategorizeRemindersInList.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003373C4()
{
  result = qword_100942160;
  if (!qword_100942160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942160);
  }

  return result;
}

uint64_t sub_100337418(uint64_t *a1)
{
  v3 = sub_1000F5104(&qword_100942178, &qword_1007A2648);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_1003373C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000F5104(&qword_10093F598, &qword_1007A2640);
    v10[7] = 0;
    sub_100337628(&qword_100942180, &qword_100942188);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

uint64_t sub_100337628(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093F598, &qword_1007A2640);
    sub_100334878(a2, &type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003376D8()
{
  result = qword_100942190;
  if (!qword_100942190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942190);
  }

  return result;
}

unint64_t sub_100337730()
{
  result = qword_100942198;
  if (!qword_100942198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942198);
  }

  return result;
}

unint64_t sub_100337788()
{
  result = qword_1009421A0;
  if (!qword_1009421A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009421A0);
  }

  return result;
}

void sub_100337838(uint64_t a1, void **a2)
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

  [v8 setActivityDate:isa];
}

void sub_100337974()
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v2 = v0 + *(updated + 24);
  v32 = *v2;
  v34 = *(v2 + 8);

  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  Optional.tryUnwrap(_:file:line:)();

  v3 = v36;
  v31 = [*(v0 + *(updated + 28)) list];
  sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();

  v4 = [v32 sharees];
  if (v4)
  {
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v33 = v5;
  sub_1000F5104(&qword_1009423E8, &qword_1007A29C8);
  Optional.tryUnwrap(_:file:line:)();

  v6 = v35;
  if ((v35 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CDE4(&qword_100939840, &qword_100942E50, off_1008D41E0);
    Set.Iterator.init(_cocoa:)();
    v6 = v35;
    v7 = v36;
    v8 = v37;
    v9 = v38;
    v10 = v39;
  }

  else
  {
    v11 = -1 << *(v35 + 32);
    v7 = v35 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v35 + 56);

    v9 = 0;
  }

  v30 = v8;
  v14 = (v8 + 64) >> 6;
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000060C8(0, &qword_100942E50, off_1008D41E0), swift_dynamicCast(), v19 = v33, v17 = v9, v18 = v10, !v33))
    {
LABEL_28:

      sub_10001B860();

      return;
    }

LABEL_21:
    v20 = v19;
    v21 = [v19 ckIdentifier];
    if (v21)
    {
      v22 = v21;
      v23 = v6;
      v24 = v3;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v25 == v35 && v27 == v24)
      {

LABEL_30:
        sub_10001B860();

        return;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v24;
      v6 = v23;
      if (v29)
      {
        goto LABEL_30;
      }
    }

    v9 = v17;
    v10 = v18;
  }

  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_17:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_28;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_100337E80()
{
  v1 = [*(v0 + *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) + 28)) account];
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  Optional.tryUnwrap(_:file:line:)();
}

uint64_t sub_100337F58()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009421A8);
  v1 = sub_100006654(v0, qword_1009421A8);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100338020()
{
  v1 = [v0 syncActivityNotificationEngine_accountSignInTime];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for Date();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100338094(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for Date();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setSyncActivityNotificationEngine_accountSignInTime:isa];
}

id sub_100338120()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 muteNotificationOptionsForSharedList:v1];

  return v2;
}

Swift::Int sub_100338318()
{
  v1 = v0;
  v2 = *v0;
  Hasher.init(_seed:)();
  v3 = *(v1 + 1);
  v4 = v1[16];
  Hasher._combine(_:)(v2 & 1);
  Hasher._combine(_:)(v3);
  v5 = *(v1 + 3);
  LOBYTE(v1) = v1[32];
  Hasher._combine(_:)(v4 & 1);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

void sub_1003383B0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_10033841C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_1003384B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && ((a1[16] ^ a2[16]) & 1) == 0 && *(a1 + 3) == *(a2 + 3))
  {
    v2 = a2[32] ^ a1[32] ^ 1;
  }

  return v2 & 1;
}

id sub_100338510()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + *(type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0) + 28)) remObjectID];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = UUID.uuidString.getter();
    v11 = v10;
    (*(v2 + 8))(v5, v1);
    v21 = sub_100338734();
    v22 = v12;

    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
  }

  else
  {
    v21 = sub_100338734();
    v22 = v15;

    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);

    v18 = v21;
    v17 = v22;
    UUID.init()();
    v9 = UUID.uuidString.getter();
    v11 = v19;
    (*(v2 + 8))(v5, v1);
    v21 = v18;
    v22 = v17;
  }

  v14._countAndFlagsBits = v9;
  v14._object = v11;
  String.append(_:)(v14);

  return v21;
}

id sub_100338734()
{
  v1 = v0;
  v2 = 0xD000000000000018;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v9 = [*(v0 + *(updated + 28)) list];
  v32._countAndFlagsBits = v9;
  sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();

  v11 = v33;
  v12 = [v33 remObjectID];

  if (v12)
  {
    v13 = [v12 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = UUID.uuidString.getter();
    v16 = v15;
    v17 = *(v4 + 8);
    v17(v7, v3);
    v33 = v14;
    v34 = v16;
    sub_100337974();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 remObjectID];

      if (v20)
      {
        v21 = [v20 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = UUID.uuidString.getter();
        v24 = v23;
        v17(v7, v3);
        v32._countAndFlagsBits = 46;
        v32._object = 0xE100000000000000;
        v25._countAndFlagsBits = v22;
        v25._object = v24;
        String.append(_:)(v25);

        String.append(_:)(v32);
      }
    }

    v26 = *(v1 + *(updated + 20));
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = "notesMayHaveDirtyHashtag";
        goto LABEL_18;
      }

      if (v26 == 4)
      {
        v28 = 0x80000001007F3370;
        v2 = 0xD00000000000001BLL;
        goto LABEL_22;
      }

      if (v26 != 5)
      {
LABEL_19:
        v28 = 0xEF746C7561666564;
        v2 = 0x206E776F6E6B6E75;
        goto LABEL_22;
      }

      v28 = 0xE800000000000000;
      v2 = 0x6574656C706D6F63;
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v28 = 0xE300000000000000;
          v2 = 6579297;
          goto LABEL_22;
        }

        if (v26 == 2)
        {
          v27 = "titleMayHaveDirtyHashtag";
LABEL_18:
          v28 = ((v27 - 32) | 0x8000000000000000);
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      v28 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
    }

LABEL_22:
    v32._countAndFlagsBits = 46;
    v32._object = 0xE100000000000000;
    v29._countAndFlagsBits = v2;
    v29._object = v28;
    String.append(_:)(v29);

    String.append(_:)(v32);

    return v33;
  }

  UUID.init()();
  v10 = UUID.uuidString.getter();
  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t REMSharedEntitySyncActivityType.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return 0xD000000000000018;
      case 4:
        return 0xD00000000000001BLL;
      case 5:
        return 0x6574656C706D6F63;
      default:
        return 0x206E776F6E6B6E75;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000018;
      }

      return 0x206E776F6E6B6E75;
    }

    return 6579297;
  }
}

void sub_100338C18()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler);
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

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v13[15] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    sub_100338EC0(v0);
    objc_autoreleasePoolPop(v12);
    return;
  }

  if (qword_100935ED8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_1009421A8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
  }
}

uint64_t sub_100338E4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100338EC0(uint64_t a1)
{
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_1009421A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "📔 RDSyncActivityEngine Starting...", v5, 2u);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v19 = *(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration);
    v20 = *(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 16);
    v21 = *(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32);
    v10 = sub_100338164();
    v12 = sub_10000668C(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "📔 RDSyncActivityEngine: Startup Parameter Summary: {%s}", v8, 0xCu);
    sub_10000607C(v9);
  }

  sub_100339258();
  if (*(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration) & 1) != 0 || (*(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 16))
  {
    sub_100339F4C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22) = 1;

    static Published.subscript.setter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "📔 RDSyncActivityEngine Started", v18, 2u);
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "📔 RDSyncActivityEngine is in manual testing mode. All subscribed hooks are disabled.", v15, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22) = 1;

    static Published.subscript.setter();
  }
}

uint64_t sub_100339258()
{
  v103 = *v0;
  v1 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v102 = &v67 - v3;
  v99 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v105 = *(v99 - 8);
  v4 = *(v105 + 64);
  __chkstk_darwin(v99);
  v6 = &v67 - v5;
  v7 = type metadata accessor for NSNotificationCenter.Publisher();
  v92 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v104 = *(v97 - 8);
  v12 = *(v104 + 64);
  __chkstk_darwin(v97);
  v14 = &v67 - v13;
  v100 = sub_1000F5104(&qword_100942508, &qword_1007A2D48);
  v106 = *(v100 - 8);
  v15 = *(v106 + 64);
  __chkstk_darwin(v100);
  v67 = &v67 - v16;
  v101 = sub_1000F5104(&qword_100942510, &qword_1007A2D50);
  v107 = *(v101 - 8);
  v17 = *(v107 + 64);
  __chkstk_darwin(v101);
  v98 = &v67 - v18;
  v90 = RDSyncActivityNotificationEngineAuthor;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v96 = sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v22 = swift_allocObject();
  v95 = xmmword_100791300;
  *(v22 + 16) = xmmword_100791300;
  *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 40) = v23;
  v94 = objc_opt_self();
  v24 = [v94 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = sub_100440048(v25, v26, v19, v21, v22);

  v28 = *(v8 + 8);
  v91 = v8 + 8;
  v93 = v28;
  v28(v11, v7);
  v108 = v27;
  v89 = sub_1000F5104(&unk_10093D140, qword_1007969F0);
  v88 = sub_1000F5104(&unk_100936F70, &unk_100791B60);
  v87 = sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
  v86 = sub_10054B4EC;
  v79 = v6;
  Publisher.map<A>(_:)();
  v85 = sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
  v84 = sub_100067038;
  v29 = v99;
  Publisher.filter(_:)();

  v30 = *(v105 + 8);
  v105 += 8;
  v83 = v30;
  v30(v6, v29);
  v31 = v82;
  v32 = *(v82 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_accountSignInOrOutSubscriptionTransactionRegistrar);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = 1;
  v81 = sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);

  v34 = v97;
  v35 = v67;
  v71 = v14;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v36 = *(v104 + 8);
  v104 += 8;
  v80 = v36;
  v36(v14, v34);
  v108 = *(v31 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler);
  v37 = v108;
  v77 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v38 = *(v77 - 8);
  v76 = *(v38 + 56);
  v78 = v38 + 56;
  v39 = v102;
  v76(v102, 1, 1, v77);
  v73 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v72 = sub_10000CB48(&qword_100942518, &qword_100942508, &qword_1007A2D48);
  v74 = sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v70 = v37;
  v40 = v98;
  v41 = v100;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v39, &qword_100939980, &unk_10079ADA0);
  v42 = *(v106 + 8);
  v106 += 8;
  v75 = v42;
  v42(v35, v41);
  v43 = swift_allocObject();
  v43[2] = sub_10033D2B8;
  v43[3] = 0;
  v43[4] = v32;
  v69 = sub_10000CB48(&unk_100942520, &qword_100942510, &qword_1007A2D50);

  v44 = v101;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  v45 = *(v107 + 8);
  v107 += 8;
  v68 = v45;
  v45(v40, v44);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = v95;
  *(v49 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v49 + 40) = v50;
  v51 = [v94 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = sub_100440048(v52, v53, v46, v48, v49);

  v93(v11, v92);
  v108 = v54;
  v55 = v79;
  Publisher.map<A>(_:)();
  v56 = v71;
  v57 = v99;
  Publisher.filter(_:)();

  v83(v55, v57);
  v58 = swift_allocObject();
  *(v58 + 16) = v32;
  *(v58 + 24) = 1;

  v59 = v97;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v80(v56, v59);
  v60 = v70;
  v108 = v70;
  v61 = v102;
  v76(v102, 1, 1, v77);
  v62 = v98;
  v63 = v100;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v61, &qword_100939980, &unk_10079ADA0);

  v75(v35, v63);
  v64 = swift_allocObject();
  v64[2] = sub_10033D2D8;
  v64[3] = 0;
  v64[4] = v32;

  v65 = v101;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  v68(v62, v65);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100339F4C()
{
  v1 = v0;
  v154 = *v0;
  v153 = sub_1000F5104(&qword_100942410, &unk_1007A2A38);
  v151 = *(v153 - 8);
  v2 = *(v151 + 64);
  __chkstk_darwin(v153);
  v148 = &v112 - v3;
  v149 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  v147 = *(v149 - 8);
  v4 = *(v147 + 64);
  __chkstk_darwin(v149);
  v145 = (&v112 - v5);
  v138 = sub_1000F5104(&qword_100942418, &qword_1007A2A48);
  v139 = *(v138 - 8);
  v6 = *(v139 + 64);
  __chkstk_darwin(v138);
  v137 = &v112 - v7;
  v141 = sub_1000F5104(&qword_100942420, &qword_1007A2A50);
  v140 = *(v141 - 8);
  v8 = *(v140 + 64);
  __chkstk_darwin(v141);
  v136 = &v112 - v9;
  v144 = sub_1000F5104(&qword_100942428, &qword_1007A2A58);
  v143 = *(v144 - 8);
  v10 = *(v143 + 64);
  __chkstk_darwin(v144);
  v142 = &v112 - v11;
  v152 = sub_1000F5104(&qword_100942430, &qword_1007A2A60);
  v150 = *(v152 - 8);
  v12 = *(v150 + 64);
  __chkstk_darwin(v152);
  v146 = &v112 - v13;
  v134 = sub_1000F5104(&qword_100942438, &qword_1007A2A68);
  v135 = *(v134 - 8);
  v14 = *(v135 + 64);
  __chkstk_darwin(v134);
  v130 = &v112 - v15;
  v124 = sub_1000F5104(&qword_100942440, &qword_1007A2A70);
  v125 = *(v124 - 8);
  v16 = *(v125 + 64);
  __chkstk_darwin(v124);
  v122 = &v112 - v17;
  v128 = sub_1000F5104(&qword_100942448, &qword_1007A2A78);
  v131 = *(v128 - 8);
  v18 = *(v131 + 64);
  __chkstk_darwin(v128);
  v123 = &v112 - v19;
  v132 = sub_1000F5104(&qword_100942450, &qword_1007A2A80);
  v133 = *(v132 - 8);
  v20 = *(v133 + 64);
  __chkstk_darwin(v132);
  v126 = &v112 - v21;
  v22 = sub_1000F5104(&qword_100942458, &qword_1007A2A88);
  v163 = *(v22 - 8);
  v164 = v22;
  v23 = *(v163 + 64);
  v24 = __chkstk_darwin(v22);
  v129 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v162 = &v112 - v26;
  v27 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v161 = &v112 - v29;
  v30 = sub_1000F5104(&qword_10093E718, &qword_10079C980);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v112 - v32;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v114 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v113 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000F5104(&qword_100942460, &qword_1007A2A90);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v112 - v41;
  v116 = sub_1000F5104(&qword_100942468, &qword_1007A2A98);
  v117 = *(v116 - 8);
  v43 = *(v117 + 64);
  __chkstk_darwin(v116);
  v45 = &v112 - v44;
  v120 = sub_1000F5104(&qword_100942470, &qword_1007A2AA0);
  v155 = *(v120 - 1);
  v46 = *(v155 + 64);
  __chkstk_darwin(v120);
  v48 = &v112 - v47;
  v118 = sub_1000F5104(&qword_100942478, &qword_1007A2AA8);
  v119 = *(v118 - 8);
  v49 = *(v119 + 64);
  __chkstk_darwin(v118);
  v115 = &v112 - v50;
  v165 = v1;
  v51 = *&v1[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 16];
  v168 = *&v1[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration];
  v169 = v51;
  v170 = v1[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32];
  v167 = &_swiftEmptySetSingleton;
  v121 = sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  Just.init(_:)();
  v166 = &v168;
  Just.drop(while:)();
  (*(v39 + 8))(v42, v38);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  (*(v35 + 56))(v33, 1, 1, v34);
  v167 = *&v1[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler];
  v52 = v167;
  v53 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v56 = v161;
  v160 = v53;
  v158 = v55;
  v157 = v54 + 56;
  v55(v161, 1, 1);
  v57 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_100942480, &qword_100942468, &qword_1007A2A98);
  v58 = sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v127 = v52;
  v59 = v113;
  v60 = v33;
  v61 = v116;
  v159 = v57;
  v156 = v58;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000050A4(v56, &qword_100939980, &unk_10079ADA0);
  sub_1000050A4(v60, &qword_10093E718, &qword_10079C980);
  (*(v35 + 8))(v59, v114);
  (*(v117 + 8))(v45, v61);
  sub_10000CB48(&qword_100942488, &qword_100942470, &qword_1007A2AA0);
  v62 = v120;
  v63 = v115;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v155 + 8))(v48, v62);
  v120 = &protocol conformance descriptor for Publishers.HandleEvents<A>;
  sub_10000CB48(&qword_100942490, &qword_100942478, &qword_1007A2AA8);
  v64 = v118;
  v155 = Publisher.eraseToAnyPublisher()();
  (*(v119 + 8))(v63, v64);
  v65 = v165;
  v66 = *&v165[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_storeController];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100791340;
  *(v70 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v70 + 40) = v71;
  *(v70 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v70 + 56) = v72;
  v73 = sub_100441DF8(v66, v67, v69, v70);

  v167 = v73;
  v74 = swift_allocObject();
  v75 = v169;
  *(v74 + 16) = v168;
  *(v74 + 32) = v75;
  *(v74 + 48) = v170;
  sub_1000F5104(&unk_10093D170, &unk_100791BC0);
  sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0);
  v76 = v122;
  Publisher.drop(while:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&qword_100942498, &qword_100942440, &qword_1007A2A70);
  v77 = v123;
  v78 = v124;
  Publisher.drop(while:)();

  (*(v125 + 8))(v76, v78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v167 = type metadata accessor for REMCKSharedEntitySyncActivity();
  sub_1000F5104(&unk_10093E750, qword_10079FC30);
  *(inited + 32) = String.init<A>(describing:)();
  *(inited + 40) = v80;
  v81 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  *(swift_allocObject() + 16) = v81;
  v82 = v65;
  sub_10000CB48(&qword_1009424A0, &qword_100942448, &qword_1007A2A78);
  v83 = v130;
  v84 = v128;
  v85 = v77;
  Publisher.map<A>(_:)();

  sub_10000CB48(&qword_1009424A8, &qword_100942438, &qword_1007A2A68);
  v86 = v126;
  v87 = v134;
  Publisher.filter(_:)();
  (*(v135 + 8))(v83, v87);
  (*(v131 + 8))(v85, v84);
  sub_10000CB48(&qword_1009424B0, &qword_100942450, &qword_1007A2A80);
  v88 = v132;
  v89 = v162;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v133 + 8))(v86, v88);
  v167 = v155;
  (*(v163 + 16))(v129, v89, v164);
  v90 = v136;
  sub_10000CB48(&qword_1009424B8, &qword_100942458, &qword_1007A2A88);

  v91 = v137;
  Publishers.Merge.init(_:_:)();
  v92 = *&v82[OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_journalUpdatesSubscriptionTransactionRegistrar];
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = 1;
  sub_10000CB48(&qword_1009424C0, &qword_100942418, &qword_1007A2A48);
  v135 = v92;

  v94 = v138;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v139 + 8))(v91, v94);
  LODWORD(v66) = *(sub_1000F5104(&qword_1009424C8, &qword_1007A2AB0) + 48);
  if (qword_100935EE0 != -1)
  {
    swift_once();
  }

  v95 = qword_1009421C0;
  v96 = v145;
  *v145 = qword_1009421C0;
  v97 = v95;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v98 = v147;
  v99 = v149;
  (*(v147 + 104))(v96, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v149);
  v100 = v161;
  v158(v161, 1, 1, v160);
  sub_10000CB48(&qword_1009424D0, &qword_100942420, &qword_1007A2A50);
  v101 = v148;
  v102 = v141;
  Publisher.collect<A>(_:options:)();
  sub_10000CB48(&qword_1009424D8, &qword_100942410, &unk_1007A2A38);
  v103 = v90;
  v104 = v142;
  v105 = v153;
  Publisher.map<A>(_:)();
  (*(v151 + 8))(v101, v105);
  sub_1000050A4(v100, &qword_100939980, &unk_10079ADA0);
  (*(v98 + 8))(v96, v99);
  (*(v140 + 8))(v103, v102);
  v106 = v127;
  v167 = v127;
  v158(v100, 1, 1, v160);
  sub_10000CB48(&qword_1009424E0, &qword_100942428, &qword_1007A2A58);
  v107 = v146;
  v108 = v144;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v100, &qword_100939980, &unk_10079ADA0);

  (*(v143 + 8))(v104, v108);
  v109 = swift_allocObject();
  v109[2] = v135;
  v109[3] = sub_10033D84C;
  v109[4] = 0;
  sub_10000CB48(&qword_1009424E8, &qword_100942430, &qword_1007A2A60);

  v110 = v152;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v150 + 8))(v107, v110);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return (*(v163 + 8))(v162, v164);
}

void sub_10033B750(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  sub_10033BB2C();
  v33 = a1;
  v15 = [a1 stringRepresentation];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  Date.init()();
  (*(v4 + 56))(v14, 0, 1, v3);
  v19 = *(v1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  v18 = *(v1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v21 = (*(v18 + 8))(ObjectType, v18);
  if (!v21)
  {
    v21 = sub_10038FF50(_swiftEmptyArrayStorage);
  }

  v35 = v21;
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
    sub_100369620(v32, v17, v12);

    sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    v22 = v35;
  }

  else
  {
    (*(v4 + 32))(v7, v14, v3);
    v23 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v23;
    sub_1002C8FF8(v7, v32, v17, isUniquelyReferenced_nonNull_native);

    v22 = v34;
  }

  (*(v18 + 16))(v22, ObjectType, v18);
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_1009421A8);
  v26 = v33;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "📔 RDSyncActivityEngine - logged sign in event for {accountID: %{public}@}", v29, 0xCu);
    sub_1000050A4(v30, &unk_100938E70, &unk_100797230);
  }
}

void sub_10033BB2C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_storeController) newBackgroundContextWithAuthor:RDSyncActivityNotificationEngineAuthor];
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
}

void sub_10033BD98(void *a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = [a1 stringRepresentation];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = *(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  v13 = *(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v15 = (*(v13 + 8))(ObjectType, v13);
  if (!v15)
  {
    v15 = sub_10038FF50(_swiftEmptyArrayStorage);
  }

  v24 = v15;
  sub_100369620(v9, v11, v7);

  sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
  (*(v13 + 16))(v24, ObjectType, v13);
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_1009421A8);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "📔 RDSyncActivityEngine - logged sign out event for {accountID: %{public}@}", v20, 0xCu);
    sub_1000050A4(v21, &unk_100938E70, &unk_100797230);
  }

  sub_10033BB2C();
}

uint64_t sub_10033C054()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10033C0C0()
{
  v2 = v1;
  v3 = v0;
  sub_1000F5104(&qword_100937018, &unk_100791C00);
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (!v1)
  {
    v2 = v9;
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_1009421A8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = *(v9 + 16);

      _os_log_impl(&_mh_execute_header, v5, v6, "📔 RDSyncActivityEngine: Fetch Success - Consumed entries: %{public}ld", v7, 0xCu);
    }

    else
    {
    }

    if (*(v3 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
    }
  }

  return v2;
}

void *sub_10033C29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v37 = sub_100006654(v14, qword_1009421A8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v38 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "📔 RDSyncActivityEngine: Deleting journal entries", v18, 2u);
    v3 = v2;
    a2 = v38;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    v36 = v3;
    v39 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    do
    {
      sub_100010364(v21, v13, &qword_1009424F0, &qword_1007A2AB8);
      sub_100342B28(v13, v11);
      v23 = *v11;
      sub_100342C48(v11 + *(v6 + 48), type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = v39[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 = specialized ContiguousArray._endMutation()();
      v21 += v22;
      --v20;
    }

    while (v20);
    v25 = v39;
    v3 = v36;
    a2 = v38;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v40 = _swiftEmptyArrayStorage;
  if (v25 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
LABEL_12:
      __chkstk_darwin(v19);
      v35[-4] = v25;
      v35[-3] = a2;
      v35[-2] = &v40;
      NSManagedObjectContext.rem_performAndWait<A>(_:)();

      if (v3)
      {
      }

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        swift_beginAccess();
        if (v40 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v29 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v27, v28, "📔 RDSyncActivityEngine: Deleted journal entries: %ld", v29, 0xCu);
      }

      if (*(v35[1] + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32) == 1)
      {
        swift_beginAccess();
        v31 = v40;
        swift_getKeyPath();
        swift_getKeyPath();
        v39 = v31;

        static Published.subscript.setter();
      }

      swift_beginAccess();
      return v40;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "📔 RDSyncActivityEngine: Up-to-date! No journal entries to delete", v34, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10033C7C8()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v15);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v14[1] = "list.remObjectID";
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.utility(_:), v8);
  v14[0] = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000D410(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1009421C0 = result;
  return result;
}

uint64_t sub_10033CB0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10033CB8C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10033CC00(uint64_t a1, uint64_t a2, int a3)
{
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v56 - v9;
  v68 = 258;
  v69 = a1;
  sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v3)
  {
    return;
  }

  sub_10000CB48(&qword_10093A580, &qword_10093A578, &qword_1007A1E10);
  v11 = Sequence.mapToSet<A>(_:)();
  v58 = 0;

  v13 = *(a2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  v12 = *(a2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v15 = *(v12 + 8);
  v60 = v13;
  v66 = ObjectType;
  v67 = v12;
  v62 = v15;
  v63 = v12 + 8;
  v16 = v15(ObjectType, v12);
  if (!v16)
  {
    v16 = sub_10038FF50(_swiftEmptyArrayStorage);
  }

  v17 = sub_1001A6DC0(v16);
  v18 = *(v11 + 16);
  v19 = v17[2];
  v57 = a3;
  if (v18 <= v19 >> 3)
  {
    v70 = v17;
    sub_10019BAF4(v11);

    v20 = v70;
  }

  else
  {
    v20 = sub_10019C4D4(v11, v17);
  }

  v21 = v20 + 7;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20[7];
  v25 = (v22 + 63) >> 6;
  v61 = v67 + 16;

  v26 = 0;
  v64 = v10;
  v59 = v20;
  while (v24)
  {
LABEL_17:
    v30 = (v20[6] + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
    v31 = v20;
    v33 = *v30;
    v32 = v30[1];

    v34 = v62(v66, v67);
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = &_swiftEmptyDictionarySingleton;
    }

    v65 = v32;
    v36 = sub_100005F4C(v33, v32);
    if (v37)
    {
      v38 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v35;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100375A1C();
        v35 = v70;
      }

      v40 = *(v35[6] + 16 * v38 + 8);

      v41 = v35[7];
      v42 = type metadata accessor for Date();
      v43 = *(v42 - 8);
      v44 = v41 + *(v43 + 72) * v38;
      v28 = v64;
      (*(v43 + 32))(v64, v44, v42);
      sub_100333370(v38, v35);
      (*(v43 + 56))(v28, 0, 1, v42);
      v20 = v59;
    }

    else
    {
      v27 = type metadata accessor for Date();
      v28 = v64;
      (*(*(v27 - 8) + 56))(v64, 1, 1, v27);
      v20 = v31;
    }

    v24 &= v24 - 1;
    sub_1000050A4(v28, &unk_100938850, qword_100795AE0);
    (*(v67 + 16))(v35, v66);
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_26;
    }

    if (v29 >= v25)
    {
      break;
    }

    v24 = v21[v29];
    ++v26;
    if (v24)
    {
      v26 = v29;
      goto LABEL_17;
    }
  }

  if (!v20[2])
  {

    return;
  }

  if (qword_100935ED8 != -1)
  {
    goto LABEL_39;
  }

LABEL_26:
  v45 = type metadata accessor for Logger();
  sub_100006654(v45, qword_1009421A8);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v48 = 136446466;
    if (v57)
    {
      v49 = 0x4574754F6E676973;
    }

    else
    {
      v49 = 0x76456E496E676973;
    }

    if (v57)
    {
      v50 = 0xEC000000746E6576;
    }

    else
    {
      v50 = 0xEB00000000746E65;
    }

    v51 = sub_10000668C(v49, v50, &v70);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2082;
    v52 = Set.description.getter();
    v54 = v53;

    v55 = sub_10000668C(v52, v54, &v70);

    *(v48 + 14) = v55;
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10033D250(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 stringRepresentation];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_10033D2F8(uint64_t a1, uint64_t *a2, const char *a3, void (*a4)(void))
{
  v54 = a4;
  v49 = a3;
  v47 = type metadata accessor for Date();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v47);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v43 = objc_autoreleasePoolPush();
  v10 = v9 + 56;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 56);
  v14 = (v11 + 63) >> 6;
  v45 = (v6 + 8);
  v55 = v9;

  v15 = 0;
  *&v16 = 138543618;
  v44 = v16;
  v48 = a1;
  while (v13)
  {
LABEL_11:
    v19 = *(v55 + 48) + 24 * (__clz(__rbit64(v13)) | (v15 << 6));
    v20 = *(v19 + 16);
    v21 = qword_100935ED8;
    v22 = *(v19 + 8);
    v23 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_1009421A8);
    v25 = v22;
    v26 = v23;
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      v53 = swift_slowAlloc();
      v56 = v53;
      *v30 = v44;
      *(v30 + 4) = v26;
      *v31 = v26;
      *(v30 + 12) = 2082;
      v32 = v26;
      v51 = v29;
      v33 = v46;
      Date.init()();
      v34 = Date.description.getter();
      v50 = v28;
      v35 = v27;
      v36 = v34;
      v38 = v37;
      (*v45)(v33, v47);
      v39 = v36;
      v27 = v35;
      v40 = sub_10000668C(v39, v38, &v56);

      *(v30 + 14) = v40;
      v41 = v50;
      _os_log_impl(&_mh_execute_header, v50, v51, v49, v30, 0x16u);
      sub_1000050A4(v52, &unk_100938E70, &unk_100797230);

      sub_10000607C(v53);
    }

    else
    {
    }

    v13 &= v13 - 1;
    v17 = v26;
    v54();
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      objc_autoreleasePoolPop(v43);
      return;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10033D69C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v0 = v2 ^ 1;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

void sub_10033D75C(uint64_t a1, const char *a2)
{
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_1009421A8);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

void sub_10033D84C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_10033D8A4(a1);

  objc_autoreleasePoolPop(v2);
}

void sub_10033D8A4(uint64_t a1)
{
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_1009421A8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "📔 RDSyncActivityEngine - Starting journal consumption", v6, 2u);
  }

  v7 = [*(a1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_storeController) newBackgroundContextWithAuthor:RDSyncActivityNotificationEngineAuthor];
  __chkstk_darwin(v7);
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v1)
  {

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446210;
      swift_getErrorValue();
      v12 = Error.rem_errorDescription.getter();
      v14 = sub_10000668C(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "📔 RDSyncActivityEngine - Unable to consume journal updates {error: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    else
    {
    }
  }

  else
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "📔 RDSyncActivityEngine - Finished journal consumption", v17, 2u);
    }
  }
}

void sub_10033DBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10033C0C0();
  if (!v2)
  {
    if (*(v4 + 16))
    {
      v5 = v4;
      v6 = sub_10033DD20(v4);
      sub_10033E04C(v6, sub_10033DF64, 0);

      sub_10033C29C(v5, a2);
    }

    else
    {

      if (qword_100935ED8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_1009421A8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "📔 RDSyncActivityEngine: Skipping journal entry processing, no changes to process", v10, 2u);
      }
    }
  }
}

void *sub_10033DD20(uint64_t a1)
{
  v2 = v1;
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_1009421A8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "📔 RDSyncActivityEngine: Processing entries - %ld", v7, 0xCu);
  }

  else
  {
  }

  v8 = 0;
  v13 = &_swiftEmptyDictionarySingleton;
  v9 = *(a1 + 16);
  while (v9 != v8)
  {
    v10 = *(sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8) - 8);
    sub_10033FBAC(&v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++);
  }

  v11 = v13;
  if (*(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_appliedEngineConfiguration + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v11;

    static Published.subscript.setter();
  }

  return v11;
}

void sub_10033DF64()
{
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009421A8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "📔 RDSyncActivityEngine: Notifications posted successfully", v2, 2u);
  }
}

uint64_t sub_10033E04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v59 = a2;
  v72 = type metadata accessor for UUID();
  v4 = *(v72 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v72);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v62 = *(v63 - 8);
  v9 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch_group_create();
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v70 = OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userNotificationCenter;
  v16 = (v13 + 63) >> 6;
  v69 = 0x80000001007F5450;
  v68 = (v4 + 8);
  v67 = v81;
  v77 = a1;

  v18 = 0;
  v78 = 0;
  v75 = v11;
  v76 = a1 + 64;
  while (v15)
  {
LABEL_11:
    v42 = __clz(__rbit64(v15)) | (v18 << 6);
    v43 = (*(v77 + 48) + 16 * v42);
    v44 = *v43;
    v45 = v43[1];
    sub_10000A87C(*(v77 + 56) + 40 * v42, v84);
    v82 = v44;
    v83 = v45;

    dispatch_group_enter(v11);
    v46 = v85;
    v47 = v86;
    sub_10000F61C(v84, v85);
    v48 = v78;
    v49 = (*(v47 + 16))(v46, v47);
    if (v48)
    {
      dispatch_group_leave(v11);

      v78 = 0;
    }

    else
    {
      v78 = 0;
      aBlock = 0xD000000000000031;
      v80 = v69;
      v19 = v49;
      v20._countAndFlagsBits = v44;
      v20._object = v45;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 46;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);

      v23 = aBlock;
      v22 = v80;
      v24 = v71;
      UUID.init()();
      v25 = UUID.uuidString.getter();
      v27 = v26;
      (*v68)(v24, v72);
      aBlock = v23;
      v80 = v22;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      v30 = aBlock;
      v29 = v80;
      v31 = *(v74 + v70);
      v32 = swift_allocObject();
      v32[2] = v30;
      v32[3] = v29;
      v33 = v75;
      v32[4] = v19;
      v32[5] = v33;
      v34 = swift_allocObject();
      v34[2] = v31;
      v34[3] = sub_100342BB8;
      v34[4] = v32;
      v34[5] = v30;
      v34[6] = v29;
      v34[7] = v19;
      v73 = *(v31 + OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter);
      v35 = swift_allocObject();
      v35[2] = v31;
      v35[3] = sub_100342BC4;
      v35[4] = v34;
      v81[2] = sub_100342BD4;
      v81[3] = v35;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81[0] = sub_1004CB24C;
      v81[1] = &unk_1008EE718;
      v36 = _Block_copy(&aBlock);
      v37 = v19;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      v38 = v37;
      v11 = v75;
      v39 = v38;
      v40 = v75;

      [v73 getNotificationSettingsWithCompletionHandler:v36];
      _Block_release(v36);
    }

    v12 = v76;
    v15 &= v15 - 1;
    result = sub_1000050A4(&v82, &qword_1009424F8, &unk_1007A2B08);
  }

  while (1)
  {
    v41 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v41 >= v16)
    {

      v50 = *(v74 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_scheduler);
      v51 = swift_allocObject();
      v52 = v59;
      v53 = v60;
      *(v51 + 16) = v59;
      *(v51 + 24) = v53;
      v84[2] = sub_100342BE0;
      v85 = v51;
      v82 = _NSConcreteStackBlock;
      v83 = 1107296256;
      v84[0] = sub_100019200;
      v84[1] = &unk_1008EE768;
      v54 = _Block_copy(&v82);
      sub_10014D92C(v52);
      v55 = v61;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10000D410(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
      v56 = v64;
      v57 = v66;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();

      _Block_release(v54);
      (*(v65 + 8))(v56, v57);
      (*(v62 + 8))(v55, v63);
    }

    v15 = *(v12 + 8 * v41);
    ++v18;
    if (v15)
    {
      v18 = v41;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_10033E804(char *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v92 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v88 = (&v75 - v12);
  __chkstk_darwin(v11);
  v91 = (&v75 - v13);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v14 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v90 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935ED8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_1009421A8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "📔 RDSyncActivityEngine: Starting Fetch", v19, 2u);
    }

    v20 = sub_100342024();
    type metadata accessor for REMCKSharedEntitySyncActivity();
    v21 = NSManagedObjectContext.fetch<A>(_:)();
    if (v3)
    {
      break;
    }

    v22 = v21;
    v95 = &_swiftEmptyDictionarySingleton;
    if (v21 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = a2;
    v84 = v20;
    v81 = v7;
    v82 = v6;
    if (v23)
    {
      a2 = 0;
      v7 = v22 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v24 = *(v22 + 8 * a2 + 32);
        }

        v6 = v24;
        v25 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v94 = v24;
        sub_10033F044(&v95, &v94);

        ++a2;
      }

      while (v25 != v23);
      v26 = v95;
    }

    else
    {
      v26 = &_swiftEmptyDictionarySingleton;
    }

    v28 = sub_100278794(v27);

    __chkstk_darwin(v29);
    *(&v75 - 2) = v28;
    *(&v75 - 1) = a1;
    sub_1000F5104(&qword_100942500, qword_1007A2BB0);
    NSManagedObjectContext.rem_performAndWait<A>(_:)();

    v89 = v95;
    if ((v26 & 0xC000000000000001) != 0)
    {
      a1 = 0;
      v30 = 0;
      v31 = 0;
      a2 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v32 = -1 << *(v26 + 32);
      v30 = ~v32;
      a1 = (v26 + 64);
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v31 = v34 & *(v26 + 64);
      a2 = v26;
    }

    v79 = v26;

    v7 = 0;
    v78 = v30;
    v6 = ((v30 + 64) >> 6);
    v80 = _swiftEmptyArrayStorage;
    v85 = a2;
    v86 = a1;
LABEL_25:
    v35 = v7;
    v36 = v31;
    while ((a2 & 0x8000000000000000) != 0)
    {
      v43 = __CocoaDictionary.Iterator.next()();
      if (!v43)
      {
        goto LABEL_44;
      }

      v45 = v44;
      v94 = v43;
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      swift_dynamicCast();
      v41 = v95;
      v94 = v45;
      sub_1000060C8(0, &qword_100939DB0, REMSharedEntitySyncActivity_ptr);
      swift_dynamicCast();
      v42 = v95;
      v7 = v35;
      v93 = v36;
      if (!v41)
      {
LABEL_44:

        sub_10001B860();

        *v83 = v80;
        return;
      }

LABEL_37:
      v46 = v41;
      v47 = v42;
      v48 = [v47 ckIdentifier];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      if (v89[2])
      {
        v52 = sub_100005F4C(v49, v51);
        v54 = v53;

        if (v54)
        {
          v77 = *(v89[7] + 8 * v52);
          v55 = [v47 activityDate];
          v56 = v90;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v76 = [v47 activityType];
          v57 = [v47 authorUserRecordIDString];
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v61 = updated;
          *(v56 + *(updated + 20)) = v76;
          v62 = (v56 + *(v61 + 24));
          *v62 = v58;
          v62[1] = v60;
          *(v56 + *(v61 + 28)) = v77;
          v63 = v82;
          v64 = *(v82 + 12);
          v65 = v91;
          *v91 = v46;
          sub_1002CDE74(v56, v65 + v64);
          v66 = v65;
          v67 = v88;
          sub_100010364(v66, v88, &qword_1009424F0, &qword_1007A2AB8);
          v68 = *(v63 + 12);
          v69 = v92;
          *v92 = *v67;
          sub_1002CDF8C(v67 + v68, v69 + v68);
          v70 = v80;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v86;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v70 = sub_100367D6C(0, v70[2] + 1, 1, v70);
          }

          v73 = v70[2];
          v72 = v70[3];
          if (v73 >= v72 >> 1)
          {
            v70 = sub_100367D6C(v72 > 1, v73 + 1, 1, v70);
          }

          sub_1000050A4(v91, &qword_1009424F0, &qword_1007A2AB8);
          sub_100342C48(v90, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
          v70[2] = v73 + 1;
          v74 = (*(v81 + 80) + 32) & ~*(v81 + 80);
          v80 = v70;
          sub_100342B28(v92, v70 + v74 + *(v81 + 72) * v73);
          a2 = v85;
          v31 = v93;
          goto LABEL_25;
        }
      }

      else
      {
      }

      v35 = v7;
      v36 = v93;
      a2 = v85;
      a1 = v86;
    }

    v37 = v35;
    v38 = v36;
    v7 = v35;
    if (v36)
    {
LABEL_33:
      v93 = (v38 - 1) & v38;
      v39 = (v7 << 9) | (8 * __clz(__rbit64(v38)));
      v40 = *(*(a2 + 56) + v39);
      v41 = *(*(a2 + 48) + v39);
      v42 = v40;
      if (!v41)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    }

    while (1)
    {
      v7 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v7 >= v6)
      {
        goto LABEL_44;
      }

      v38 = *&a1[8 * v7];
      ++v37;
      if (v38)
      {
        goto LABEL_33;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }
}

void sub_10033F044(uint64_t *a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = *a2;
  v9 = sub_10029EE80();
  if (v9)
  {
    v10 = v9;
    v11 = [v8 objectID];
    v12 = *a1;
    if ((*a1 & 0xC000000000000001) == 0)
    {
      v23 = *a1;
      v7 = v10;
      goto LABEL_13;
    }

    if (v12 < 0)
    {
      v8 = *a1;
    }

    else
    {
      v8 = (v12 & 0xFFFFFFFFFFFFFF8);
    }

    v7 = v10;
    v13 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v13, 1))
    {
      *a1 = sub_10021DBB0(v8, v13 + 1);
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *a1;
      sub_1002C9178(v7, v11, isUniquelyReferenced_nonNull_native);

      *a1 = v31;
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_100935ED8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_1009421A8);
  v15 = v8;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136446210;
    v20 = [v15 uuidForChangeTracking];
    if (v20)
    {
      v21 = v20;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    }

    else
    {
      v25 = type metadata accessor for UUID();
      (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    }

    v26 = Optional.descriptionOrNil.getter();
    v28 = v27;
    sub_1000050A4(v7, &unk_100939D90, "8\n\r");
    v29 = sub_10000668C(v26, v28, &v31);

    *(v18 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "📔 RDSyncActivityEngine: Unable to make activity object for journal entry {identifier: %{public}s}", v18, 0xCu);
    sub_10000607C(v19);
  }
}

void sub_10033F37C(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = v3;
  v76 = a3;
  v9 = _s10PredicatesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v77 = (v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
LABEL_50:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = _swiftEmptyArrayStorage;
  v83 = a2;
  v84 = v6;
  if (v12)
  {
    v85 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v82 = v9;
    v14 = 0;
    v13 = v85;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 ckIdentifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v85 = v13;
      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        sub_100026EF4((v21 > 1), v22 + 1, 1);
        v13 = v85;
      }

      ++v14;
      v13[2] = v22 + 1;
      v23 = &v13[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
    }

    while (v12 != v14);
  }

  KeyPath = swift_getKeyPath();
  v25 = sub_100270804(v13);

  v26 = sub_1003EAE38(KeyPath, v25);

  v27 = v77;
  *v77 = v26;
  *(v27 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v5 = v26;
  v28 = sub_100043AA8();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  a1 = &unk_1007A2C00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1007953F0;
  *(v30 + 32) = swift_getKeyPath();
  v31 = sub_100050654(inited, v30, 0, v28);

  swift_setDeallocating();
  v32 = *(v30 + 16);
  v33 = v31;
  swift_arrayDestroy();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100796900;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v34 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  *(v34 + 40) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 setSortDescriptors:isa];

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v3 = v84;
  v36 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_100342C48(v27, _s10PredicatesOMa);

    return;
  }

  v12 = v36;
  v74 = v33;
  v4 = v36 & 0xFFFFFFFFFFFFFF8;
  if (!(v36 >> 62))
  {
    a2 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_52:
  a2 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
  v73[1] = v3;
  if (!a2)
  {
    v75 = &_swiftEmptyDictionarySingleton;
LABEL_47:

    sub_100342C48(v77, _s10PredicatesOMa);
    *v76 = v75;
    return;
  }

  v6 = 0;
  v83 = v12 & 0xC000000000000001;
  v75 = &_swiftEmptyDictionarySingleton;
  *&v37 = 136446210;
  v78 = v37;
  v80 = v12;
  v81 = v5;
  v79 = v4;
  v82 = a2;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      if (v83)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_49;
        }

        v38 = *(v12 + 8 * v9 + 32);
      }

      v39 = v38;
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v40 = [v38 ckIdentifier];
      v84 = v9 + 1;
      if (v40)
      {
        break;
      }

      if (qword_100935ED8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      v6 = sub_100006654(v41, qword_1009421A8);
      a1 = v39;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v6 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v85 = v44;
        *v6 = v78;
        v45 = [a1 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;
        }

        else
        {
          v50 = 0xE300000000000000;
          v48 = 7104878;
        }

        v51 = sub_10000668C(v48, v50, &v85);

        *(v6 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v42, v43, "📔 RDSyncActivityEngine: Unable to get ckIdentifier for reminder {identifier: %{public}s}", v6, 0xCu);
        sub_10000607C(v44);

        v12 = v80;
        v5 = v81;
        v4 = v79;
        a2 = v82;
      }

      else
      {
      }

      ++v9;
      if (v84 == a2)
      {
        goto LABEL_47;
      }
    }

    v52 = v40;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = v54;

    v55 = v39;
    v56 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v56;
    v58 = sub_100005F4C(v53, a1);
    v60 = *(v56 + 16);
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      __break(1u);
    }

    else
    {
      v64 = v59;
      if (*(v56 + 24) >= v63)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = v58;
          sub_1003731D4();
          v58 = v72;
        }
      }

      else
      {
        sub_10036A224(v63, isUniquelyReferenced_nonNull_native);
        v58 = sub_100005F4C(v53, a1);
        if ((v64 & 1) != (v65 & 1))
        {
          goto LABEL_55;
        }
      }

      v66 = v85;
      v75 = v85;
      if (v64)
      {
        v67 = v85[7];
        v68 = *(v67 + 8 * v58);
        *(v67 + 8 * v58) = v55;

        v55 = v68;
        goto LABEL_44;
      }

      v85[(v58 >> 6) + 8] |= 1 << v58;
      v69 = (v66[6] + 16 * v58);
      *v69 = v53;
      v69[1] = a1;
      *(v66[7] + 8 * v58) = v55;
      v70 = v66[2];
      v62 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (!v62)
      {
        v66[2] = v71;
LABEL_44:
        a2 = v82;
        v6 = v84;

        if (v6 != a2)
        {
          continue;
        }

        goto LABEL_47;
      }
    }

    break;
  }

  __break(1u);
LABEL_55:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10033FBAC(uint64_t *a1, uint64_t a2)
{
  v103 = a1;
  v3 = sub_1000F5104(&qword_1009424F0, &qword_1007A2AB8);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = (&v101 - v6);
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v104 = *(updated - 8);
  v9 = *(v104 + 64);
  v10 = __chkstk_darwin(updated);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v102 = &v101 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v101 - v16;
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  sub_100010364(a2, v7, &qword_1009424F0, &qword_1007A2AB8);

  sub_1002CDF8C(v7 + *(v4 + 56), v19);
  if ((sub_100340778(v19) & 1) == 0)
  {
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_1009421A8);
    sub_1002CDE74(v19, v12);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v106[0] = v42;
      *v41 = 136446210;
      v43 = sub_100338510();
      v44 = v19;
      v46 = v45;
      sub_100342C48(v12, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
      v47 = sub_10000668C(v43, v46, v106);

      *(v41 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "📔 RDSyncActivityEngine: Entry is not eligible for notifications {%{public}s}", v41, 0xCu);
      sub_10000607C(v42);

      v48 = v44;
      return sub_100342C48(v48, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
    }

    v49 = v12;
    goto LABEL_27;
  }

  v20 = *&v19[*(updated + 20)];
  v21 = updated;
  if (v20 <= 1)
  {
    v22 = v17;
    if (!v20)
    {
      goto LABEL_18;
    }

    if (v20 != 1)
    {
      goto LABEL_28;
    }

    v50 = sub_100338734();
    v52 = *v103;
    if (*(*v103 + 16))
    {
      v53 = sub_100005F4C(v50, v51);
      v55 = v54;

      if (v55)
      {
        sub_10000A87C(*(v52 + 56) + 40 * v53, v105);
        sub_10027DC60(v105, v106);
        v56 = v107;
        v57 = v108;
        sub_10000F61C(v106, v107);
        v58 = (v57[1])(v56, v57);
        sub_1000F5104(&qword_100944170, &qword_10079D660);
        v59 = *(v104 + 72);
        v60 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_100791300;
        sub_1002CDE74(v19, v61 + v60);
        *&v105[0] = v58;
        sub_100272548(v61);
        v35 = sub_1002CDCD0(*&v105[0]);
        v37 = v62;
        sub_10000607C(v106);
LABEL_43:
        v88 = sub_100338734();
        v90 = v89;
        v91 = &type metadata for RDAddedReminderNotificationContent;
        v92 = &off_1008ED1F0;
LABEL_47:
        v107 = v91;
        v108 = v92;
        v106[0] = v35;
        v106[1] = v37;
        sub_10031DFF4(v106, v88, v90);
        return sub_100342C48(v19, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
      }
    }

    else
    {
    }

    sub_1000F5104(&qword_100944170, &qword_10079D660);
    v84 = *(v104 + 72);
    v85 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_100791300;
    sub_1002CDE74(v19, v86 + v85);
    v35 = sub_1002CDCD0(v86);
    v37 = v87;
    goto LABEL_43;
  }

  v22 = v17;
  if ((v20 - 2) < 3)
  {
LABEL_18:
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_1009421A8);
    sub_1002CDE74(v19, v22);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v19;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v106[0] = v68;
      *v67 = 136446210;
      v69 = *(v22 + *(v21 + 20));
      if (v69 > 2)
      {
        if (v69 == 3)
        {
          v70 = 0xD000000000000018;
          v71 = "notesMayHaveDirtyHashtag";
          goto LABEL_50;
        }

        if (v69 == 4)
        {
          v83 = 0x80000001007F3370;
          v70 = 0xD00000000000001BLL;
          goto LABEL_54;
        }

        if (v69 != 5)
        {
LABEL_51:
          v70 = 0x206E776F6E6B6E75;
          v83 = 0xEF746C7561666564;
          goto LABEL_54;
        }

        v83 = 0xE800000000000000;
        v70 = 0x6574656C706D6F63;
      }

      else
      {
        if (v69)
        {
          if (v69 == 1)
          {
            v83 = 0xE300000000000000;
            v70 = 6579297;
            goto LABEL_54;
          }

          if (v69 == 2)
          {
            v70 = 0xD000000000000018;
            v71 = "titleMayHaveDirtyHashtag";
LABEL_50:
            v83 = (v71 - 32) | 0x8000000000000000;
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        v70 = 0x6E776F6E6B6E75;
        v83 = 0xE700000000000000;
      }

LABEL_54:
      sub_100342C48(v22, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
      v99 = sub_10000668C(v70, v83, v106);

      *(v67 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v64, v65, "📔 RDSyncActivityEngine: Received a journal entry with an unsupported activity type {type: %{public}s}", v67, 0xCu);
      sub_10000607C(v68);

      v48 = v66;
      return sub_100342C48(v48, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
    }

    v49 = v22;
LABEL_27:
    sub_100342C48(v49, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
    v48 = v19;
    return sub_100342C48(v48, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
  }

  if (v20 == 5)
  {
    v23 = sub_100338734();
    v25 = *v103;
    if (*(*v103 + 16))
    {
      v26 = sub_100005F4C(v23, v24);
      v28 = v27;

      if (v28)
      {
        sub_10000A87C(*(v25 + 56) + 40 * v26, v105);
        sub_10027DC60(v105, v106);
        v29 = v107;
        v30 = v108;
        sub_10000F61C(v106, v107);
        v31 = (v30[1])(v29, v30);
        sub_1000F5104(&qword_100944170, &qword_10079D660);
        v32 = *(v104 + 72);
        v33 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_100791300;
        sub_1002CDE74(v19, v34 + v33);
        *&v105[0] = v31;
        sub_100272548(v34);
        v35 = sub_100349E00(*&v105[0]);
        v37 = v36;
        sub_10000607C(v106);
LABEL_46:
        v88 = sub_100338734();
        v90 = v97;
        v91 = &type metadata for RDCompletedReminderNotificationContent;
        v92 = &off_1008EEBD0;
        goto LABEL_47;
      }
    }

    else
    {
    }

    sub_1000F5104(&qword_100944170, &qword_10079D660);
    v93 = *(v104 + 72);
    v94 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_100791300;
    sub_1002CDE74(v19, v95 + v94);
    v35 = sub_100349E00(v95);
    v37 = v96;
    goto LABEL_46;
  }

LABEL_28:
  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_100006654(v72, qword_1009421A8);
  v73 = v102;
  sub_1002CDE74(v19, v102);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v74, v75))
  {

    v49 = v73;
    goto LABEL_27;
  }

  v76 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v106[0] = v77;
  *v76 = 136446210;
  v78 = *(v73 + *(v21 + 20));
  v79 = v73;
  if (v78 > 2)
  {
    switch(v78)
    {
      case 3:
        v80 = v19;
        v81 = 0xD000000000000018;
        v82 = 0x80000001007F3400;
        goto LABEL_65;
      case 4:
        v80 = v19;
        v82 = 0x80000001007F3370;
        v81 = 0xD00000000000001BLL;
        goto LABEL_65;
      case 5:
        v80 = v19;
        v82 = 0xE800000000000000;
        v81 = 0x6574656C706D6F63;
        goto LABEL_65;
    }

LABEL_62:
    v80 = v19;
    v81 = 0x206E776F6E6B6E75;
    v82 = 0xEF746C7561666564;
    goto LABEL_65;
  }

  if (!v78)
  {
    v80 = v19;
    v81 = 0x6E776F6E6B6E75;
    v82 = 0xE700000000000000;
    goto LABEL_65;
  }

  if (v78 == 1)
  {
    v80 = v19;
    v82 = 0xE300000000000000;
    v81 = 6579297;
    goto LABEL_65;
  }

  if (v78 != 2)
  {
    goto LABEL_62;
  }

  v80 = v19;
  v81 = 0xD000000000000018;
  v82 = 0x80000001007F3420;
LABEL_65:
  sub_100342C48(v79, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
  v100 = sub_10000668C(v81, v82, v106);

  *(v76 + 4) = v100;
  _os_log_impl(&_mh_execute_header, v74, v75, "📔 RDSyncActivityEngine: Received a journal entry with an unknown activity type {type: %{public}s}", v76, 0xCu);
  sub_10000607C(v77);

  return sub_100342C48(v80, type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem);
}

uint64_t sub_100340778(uint64_t a1)
{
  updated = type metadata accessor for RDSharedListActivityNotificationsEngine.JournalEntryUpdateItem(0);
  v7 = [*(a1 + *(updated + 28)) list];
  sub_1000F5104(&unk_100943240, &qword_10079A3B8);
  Optional.tryUnwrap(_:file:line:)();

  v3 = [v8 remObjectID];
  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  Optional.tryUnwrap(_:file:line:)();

  v5 = sub_100340928(v9, *(a1 + *(updated + 20)));
  if (v5)
  {

    v6 = 0;
  }

  else
  {
    v6 = sub_100340AD8();
  }

  return v6 & 1;
}

uint64_t sub_100340928(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  v6 = *(v2 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  ObjectType = swift_getObjectType();
  v8 = [a1 stringRepresentation];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (*(v5 + 32))(v9, v11, ObjectType, v5);

  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      return v12 & 1;
    }
  }

  else if ((a2 - 2) >= 3 && a2 == 5)
  {
    return (v12 >> 1) & 1;
  }

  if (qword_100935ED8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_1009421A8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v15, v16, "📔 RDSyncActivityEngine: Unsupported notification type: %{public}ld", v17, 0xCu);
  }

  return 1;
}

uint64_t sub_100340AD8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  sub_100337E80();
  v11 = v10;
  v12 = [v10 remObjectID];

  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = [v12 stringRepresentation];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = *(v1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults);
  v18 = *(v1 + OBJC_IVAR____TtC7remindd39RDSharedListActivityNotificationsEngine_userDefaults + 8);
  ObjectType = swift_getObjectType();
  v20 = (*(v18 + 8))(ObjectType, v18);
  if (!v20)
  {
    v20 = sub_10038FF50(_swiftEmptyArrayStorage);
  }

  v21 = v20;
  if (!*(v20 + 16))
  {

    goto LABEL_8;
  }

  v22 = sub_100005F4C(v14, v16);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v25 = 1;
    return v25 & 1;
  }

  (*(v3 + 16))(v7, *(v21 + 56) + *(v3 + 72) * v22, v2);

  (*(v3 + 32))(v9, v7, v2);
  v25 = static Date.< infix(_:_:)();

  (*(v3 + 8))(v9, v2);
  return v25 & 1;
}

id sub_100340D38(unint64_t a1, id a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  v7 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [a2 objectWithID:{v8, v14}];
    [a2 deleteObject:v10];
    v11 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v7;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v6 != v7);
LABEL_13:
  v15 = 0;
  if ([a2 save:{&v15, v14}])
  {
    return v15;
  }

  v13 = v15;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_100340F1C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, NSObject *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_1009421A8);
    swift_errorRetain();

    v10 = a4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v13 = 136315650;
      swift_getErrorValue();
      v14 = Error.rem_errorDescription.getter();
      v16 = sub_10000668C(v14, v15, &v33);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_10000668C(a2, a3, &v33);
      *(v13 + 22) = 2082;
      v17 = [v10 body];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_10000668C(v18, v20, &v33);

      *(v13 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "📔 RDSyncActivityEngine: Unable to post Shared List Activity notification {error: %s, identifier: %{public}s, body: %{public}s}", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935ED8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_1009421A8);

    v23 = a4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v26 = 136446466;
      *(v26 + 4) = sub_10000668C(a2, a3, &v33);
      *(v26 + 12) = 2082;
      v27 = [v23 body];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_10000668C(v28, v30, &v33);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "📔 RDSyncActivityEngine: Posted Shared List Activity notification {identifier: %{public}s, body: %{public}s}", v26, 0x16u);
      swift_arrayDestroy();
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
  }

  dispatch_group_leave(a5);
}